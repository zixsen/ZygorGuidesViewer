local ZGV = ZygorGuidesViewer
if not ZGV then return end

tinsert(ZGV.startups,{"QuestTracking setup",function(self)
	self:AddEventHandler("CHAT_MSG_SYSTEM","CHAT_MSG_SYSTEM_QuestTracking")
	self:AddEventHandler("QUEST_LOG_UPDATE","QUEST_LOG_UPDATE_QuestTracking")
	self:AddEventHandler("QUEST_COMPLETE","QUEST_COMPLETE_QuestTracking")

	hooksecurefunc("SetAbandonQuest",self.QuestTracking_hook_SetAbandonQuest)
	hooksecurefunc("AbandonQuest",self.QuestTracking_hook_AbandonQuest)

	self:QUEST_LOG_UPDATE_QuestTracking()  
	-- No. Let the log update when it's ready, don't force it. ~~sinus 2014-10-14
	-- We have to force it, otherwise quests we have accepted are unknown in viewer. ~~ Shooter, 2014-10-21
end})

local L = ZGV.L

ZGV.dailyQuests = {}
ZGV.instantQuests = {}
ZGV.completedQuests = {}
-- ZGV.completedQuestTitles = {}  -- let's not use this anymore, with GetQuestID available
setmetatable(ZGV.completedQuests,{__index=function(tab,id) return IsQuestFlaggedCompleted(tonumber(id) or 0) end })


-- These functions help un-format (or: parse) strings formatted using known indexed formatters, like, "%2$d / %1$d"
local function GetCaptures(s)
	local indices={}
	local function match_index(s)
		local index,format = s:match("%%(%d+)%$([sdf])")
		indices[#indices+1]=tonumber(index)
		if format=="d" then return "(%d+)"
		elseif format=="s" then return "(.-)"
		else return "(.-)" end
	end
	return "^" .. s:gsub("%%%d%$.",match_index), indices
end
ZGV.Quest_GetCaptures = GetCaptures

                     -- /dump ZGV.Quest_GetCaptures(QUEST_MONSTERS_KILLED)
local function Reorganize(indices,...)
	local newdata={}
	for i,v in ipairs(indices) do newdata[v]=select(i,...) end
	return unpack(newdata)
end
ZGV.Quest_Reorganize = Reorganize

local function ParseLeaderBoard(leaderboard,type)
	local formatter

	--[[
	if type=="monster" then		formatter = QUEST_MONSTERS_KILLED
	elseif type=="item" then	formatter = QUEST_ITEMS_NEEDED
	elseif type=="faction" then	formatter = QUEST_FACTION_NEEDED
	else				formatter = QUEST_OBJECTS_FOUND
	end
	
	local unformat,indices = GetCaptures(formatter)
	local item,num,numneeded = Reorganize(indices,leaderboard:match(unformat)) --, "(.*)%s*:%s*([%d]+)%s*/%s*([%d]+)")
	
	if type=="monster" and not item then
		formatter = QUEST_ITEMS_NEEDED
		unformat,indices = GetCaptures(formatter)
		item,num,numneeded = Reorganize(indices,leaderboard:match(unformat)) --, "(.*)%s*:%s*([%d]+)%s*/%s*([%d]+)")
		-- some quests have objective type 'monster' yet are displayed using the ITEMS formatting. Go figure.
	end

	-- May reinstate this later. For now, just make it work... all dry code below... ~sinus 2014-08-26 23:24:33
	--]]

	local item,num,numneeded 
	num, numneeded = leaderboard:match("(%d+)%s*/%s*(%d+)")  -- find 1/4
	if numneeded then
		item = leaderboard:gsub("(%d+)%s*/%s*(%d+)",""):gsub("^[%s:]*",""):gsub("[%s:]*$","")  -- trim out 1/4, and leading/trailing colons and whitespace. What remains should be the target/objective.
		item = item:gsub(" slain$","")
	end


	-- 

	if (item) then
		if type=="faction" then
			return item,num,numneeded  -- not really nums
		else
			return item,tonumber(num),tonumber(numneeded)
		end
	else
		return leaderboard
	end
end
ZGV.Quest_ParseLeaderBoard = ParseLeaderBoard

function ZGV:GetQuestLeaderBoards(questindex,questID)
	local numgoals = tonumber(GetNumQuestLeaderBoards(questindex))
	local goals = {}
	for g=1,numgoals do
		local leaderboard,type,complete = GetQuestLogLeaderBoard(g,questindex)
		if leaderboard then
			local item,num,needed = ParseLeaderBoard(leaderboard,type)
			-- fix bad leaderboards
			if not needed then needed=1 end
			if not num then num=complete and needed or 0 end
			if type=="progressbar" then 
				num = GetQuestProgressBarPercent(questID)
				needed = 100
			end
			goals[g] = { item=item, num=num, needed=needed, type=type, complete=complete, leaderboard=leaderboard }
		else
			ZGV:Debug("Quest "..select(8,GetQuestLogTitle(questindex)).." claims "..numgoals.." goals but leaderboard ("..g..") says nil,"..tostring(type)..","..tostring(complete))
			goals[g] = { item=type or "?", num=0, needed=1, type=type or "?", complete=complete, leaderboard=type or "?" }
		end
	end
	return goals
end

function ZGV:GetQuest(indexortitle)
	local link,title
	if (type(indexortitle)=="number") then
		local title,_,_,_,_,_,freq,id = GetQuestLogTitle(indexortitle)
		return id,title,freq
	else
		for i = 1, 50, 1 do
			local title,_,_,_,_,_,freq,id = GetQuestLogTitle(i)
			if title == indexortitle then
				ZGV:Debug(("GetQuest: id of quest '%s' = %d"):format(indexortitle,id))
				return id,title,freq
			end
		end
		ZGV:Debug(("GetQuest: id of quest '%s' unknown!"):format(indexortitle))
	end
end

function ZGV:QuestTracking_CacheQuestLog(from)
	-- TODO: Check why this triggers too often

	if not self.loading_screen_disabled then return end
	--self:Debug('CacheQuestLog')
	--if not zone or zone=='' then return nil end

	--if 1 then self:Debug('**BREAK**'); return end
	--[[
	local time = GetTime()
	if time - self.QuestCacheTime < 1 then
		self.QuestCacheUndertimeRepeats = self.QuestCacheUndertimeRepeats + 1
		if self.QuestCacheUndertimeRepeats > 10 then return end
	else
		-- overtime; everything in order.
		self.QuestCacheUndertimeRepeats = 0
		self.QuestCacheTime = time
	end
	--]]

	--self:Debug("CacheQuestLog starts --> (after ".. (time - self.QuestCacheTime)..")")

	--local iNumEntries, iNumQuests = GetNumQuestLogEntries() -- this SUCKS. Entries can be muddled by collapsing the quest log, and NumQuests is useless anyway.

	local oldquests=self.quests
	self.quests = {}

	--local selected = GetQuestLogSelection()

	local newquests = {}

	local logbyid = {}

	local nc=0

	local numEntries, numQuests = GetNumQuestLogEntries();
	for i = 1,numEntries do
		local sQuestLogTitleText, iQuestLevel, iSuggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID, startEvent, displayQuestID, isOnMap, hasLocalPOI, isTask, isBounty, isStory = GetQuestLogTitle(i)

		if not isHeader and sQuestLogTitleText and questID then
			sQuestLogTitleText = sQuestLogTitleText:gsub(" ?\[[0-9D\+]+\] ?","") -- fix for [12] level display
			
			local quest = self.questsbyid[questID] or {}

			quest.title = sQuestLogTitleText
			quest.text,quest.summary = GetQuestLogQuestText(i)
			quest.level = iQuestLevel
			quest.tagnum = GetQuestLogQuestType(i) --will return a number.[0] = "", [1] = "Group", [41] = "PvP",[62] = "Raid", [81] = "Dungeon", [83] = "Legendary",[ 85] = "Heroic",[98] = "Scenario", [102] = "Account",
			--quest.objective = obj
			--quest.description = desc
			quest.complete = (isComplete==1)
			quest.failed = (isComplete==-1)
			quest.daily = (frequency==LE_QUEST_FREQUENCY_DAILY)
			quest.weekly = (frequency==LE_QUEST_FREQUENCY_WEEKLY)
			quest.bounty = isBounty
			quest.goals = self:GetQuestLeaderBoards(i,questID)
			quest.id = questID
			quest.index = tonumber(i)
			local was_in_log = quest.inlog  -- could be true, if taken from questsbyid
			quest.inlog = true

			tinsert(self.quests,quest)
			logbyid[questID]=quest

			if (not self.questsbyid[questID] or not was_in_log) and not self.recentlyAcceptedQuests[questID] then
				table.insert(newquests,quest)
				self.questsbyid[questID]=quest
			end

			nc=nc+1

		end
	end

	--table.wipe(self.questsbyid)
	for qid,q in pairs(self.questsbyid) do
		q.inlog = not not logbyid[qid]
	end

	--[[
	for qi,q in pairs(self.quests) do
		if q.id then
			self.questsbyid[q.id]=q
		else
			self:Print("Quest '"..q.title.."' has no ID! What the hell?")
		end
	end
	--]]

	--self:Debug("&quest cacheQuestLog "..(from and "from "..from.." " or "").."cached "..nc.." quests ("..#oldquests.." old, "..#newquests.." new)")

	-- any abandoned?
	if #oldquests>0 then
		for qi,q in pairs(oldquests) do
			if not self.questsbyid[q.id] and not self.completedQuests[q.id] then
				self.recentlyAcceptedQuests[q.id]=nil
				self.recentlyAcceptedQuests[q.title]=nil

				self:LostQuestEvent(q.title,q.id,q.complete)

				if q.id==self.recentAbandonedQuestID then
					self:AbandonedQuestEvent(q.title,q.id,q.daily)
				end
				if q.id==self.recentCompletedQuestID --[[and q.title==self.recentCompletedQuestTitle--]] then  --maybe not needed...
					self:CompletedQuestEvent(q.title,q.id,q.daily)
				end

				-- keep the lost in a 3-second temporary buffer; if the CHAT_MSG_SYSTEM announcing completion happens AFTER the quest is announced lost from the log, its handler below will need the quest's to properly register the quest's completion.
				self.recentlyLostQuests[q.title]=q.id
				self:ScheduleTimer(function() ZGV.recentlyLostQuests[q.title]=nil end, 3.0)
			end
			--[[
			if self.recentlyCompletedQuests[q.title] then
				self.db.char.completedQuests[q.title]=true
			end
			-- chat parsing already fired CompletedQuestEvent, sorry
			if q.id and self.recentlyCompletedQuests[q.id] then
				self.db.char.completedQuests[q.id]=true
				if q.daily then
					self.db.char.completedDailies[q.id]=time()
				end
			end
			--]]

			-- NOT to rely on .complete - a quest could be complete AND get abandoned, which would result in false-completion.
		end
		--self.recentlyCompletedQuests = {}
	end

	self.recentAbandonedQuestID = nil

	-- Now, handle the news.
	for i,q in ipairs(newquests) do
		self:NewQuestEvent(q.title,q.id)
	end

	return self.quests
end

-- not needed anymore? oh ffs. Removing from scheduler, keeping the code.
--[=[
local lastQuestResetTime=90000  -- >24h
function ZGV:QuestTracking_ResetDailies(force)
	if not self.CurrentGuide or not self.CurrentGuide.daily then return end
	--[[
	for id,title in pairs(self.db.global.instantDailies) do
		if not self.completedQuests[id] and self.completedQuestTitles[title] then
			self.completedQuestTitles[title]=nil
			self:Debug("Resetting instant daily "..title)
		end
	end
	--]] --how about NONE of that crap?

	-- reset dailies!
	--[[
	local QuestResetTime=GetQuestResetTime()
	if force or QuestResetTime>lastQuestResetTime then
		self:Debug("Resetting dailies, reset time = "..QuestResetTime)
		local starttime = (time()+QuestResetTime)-86400
		--for qid,qtime in pairs(self.db.char.completedDailies) do
		for qid in pairs(self.dailyQuests) do
			--if self.completedQuests[qid] then
				local qtime = self.db.char.completedDailies[qid]
				if not qtime or (qtime < starttime) then
					self.db.char.completedQuests[qid]=nil

					-- if it's an instant daily, find it and wipe its title completion as well!
					local instant_title = self.db.global.instantDailies[qid]
					if instant_title then self.db.char.completedQuests[instant_title]=nil end

					self:Debug("Marking daily "..qid.." as NOT completed anymore (last completed: "..(qtime and date(qtime) or "never")..")")
				end
			--end
		end
	end
	lastQuestResetTime=QuestResetTime
	--]]
end
--]=]

--- Use these for instant-type quests. Bad workaround, but hey.
--[[
function ZGV:QuestTracking_ResetDailyByTitle(title)
	if not self.db.char.completedQuests[title] then return end
	local QuestResetTime=GetQuestResetTime()
	self:Debug("Resetting one daily? reset time = "..QuestResetTime)
	local starttime = (time()+QuestResetTime)-86400
	--for qid,qtime in pairs(self.db.char.completedDailies) do

	local qtime = self.db.char.completedDailies[title]
	if not qtime or (qtime < starttime) then
		self.db.char.completedQuests[title]=nil
		self:Debug("Marking daily-by-title "..title.." as NOT completed anymore (last completed: "..(qtime and date(qtime) or "never")..")")
	end
end
--]]

--[[
Instant-daily process: Congratulations!##12604

Parsing:
- ZGV.DailyQuests[12604]=true

Completion:
- chat: XXX completed
 - ZGV:CHAT_MSG_SYSTEM_QuestTracking fires
  - ZGV:CompletedQuestEvent("Congratulations!",nil,nil)   -- impossible (?) to know a quest is Daily just by its title (or is it?)
   - ZGV.db.char.completedQuests["Congratulations!"] = true
   * ZGV.db.char.completedDailies is NOT touched; quest is NOT known to be a daily by title only.

Now suppose the quest list gets updated:
- ZGV:QUEST_QUERY_COMPLETE_QuestTracking() fires
 - self.db.char.completedQuests[12604] = true
 - QuestTracking_ResetDailies(true)
  - ZGV.db.char.completedDailies[12604] is not set, so
   - ZGV.db.char.completedQuests[12604] = nil   -- but that doesn't remove the ["Congratulations!"] entry.

--]]


function ZGV:IsQuestPossible(questid)
	local possible=true
	if self.completedQuests[questid] then
		--self:Debug("Quest "..questid.." possible as complete.")
		return true
	end

	--if self:IsQuestExclusived(questid) then return nil end

	if self.db.profile.trackchains and self.Chains then
		local questreqs = self.Chains[questid]
		if questreqs then
			local operAND=false
			local start=1
			if type(questreqs)=="table" then
				local oper = questreqs[1]
				if oper=="OR" then
					start=2
				elseif oper=="AND" then
					operAND=true
					start=2
				end

				-- these extra mentionedQuests checks ensure that non-mentioned quests (possibly other faction, or just omitted) are totally ignored.
				if operAND then
					possible=true
					for i=start,#questreqs do
						if not self.completedQuests[questreqs[i]] and self.mentionedQuests[questreqs[i]] then  possible=false  break  end
					end
				else
					possible=false
					local nonepresent=true
					for i=start,#questreqs do
						if self.mentionedQuests[questreqs[i]] then  nonepresent=nil  end
						if self.completedQuests[questreqs[i]] then  possible=true  break  end
					end
					if nonepresent then possible=true end
				end
			else
				-- single
				if not self.completedQuests[questreqs] and self.mentionedQuests[questreqs] then  possible=false  end
			end
		end
	end
	--self:Debug("Quest "..questid.." possible? "..(possible and "TRUE" or "FALSE"))
	return possible
end

function ZGV:QUEST_LOG_UPDATE_QuestTracking(event,arg1)
	--self:Debug('QUEST_LOG_UPDATE: '..tostring(arg1))
	--if 1 then self:Debug('**BREAK**'); return end
	self:QuestTracking_CacheQuestLog(event)

	self:TryToCompleteStep(true)
	--self:UpdateFrame()
	--self:Debug('QUEST_LOG_UPDATE done.')
end

--local detection_accepted=ERR_QUEST_ACCEPTED_S:gsub("%%[sd]","(.*)")
local detection_complete=ERR_QUEST_COMPLETE_S:gsub("%%[sd]","(.*)")
function ZGV:CHAT_MSG_SYSTEM_QuestTracking(event,text)
	text = tostring(text)
	--local quest = string.match(text,L["detection_accepted"])
	--if quest then self:NewQuestEvent(quest,self:QuestTracking_GetQuestId(quest)) end

	-- now, OF COURSE it would be better to rely on quest disappearance. But some quests just complete immediately.
	local questtitle = string.match(text,detection_complete)
	if questtitle then
		self:Debug("CHAT_MSG_SYSTEM: completed "..tostring(questtitle))
		local id,_,daily = self:GetQuest(questtitle)
		--if not q.id then
			-- re-query completed quests; nasty, but the only way to fetch this sucker.
			--if QueryQuestsCompleted then QueryQuestsCompleted() end
		--end
		self:CompletedQuestEvent(questtitle,id,daily)
	end
end


function ZGV:NewQuestEvent(questTitle,id)
	--self:Debug("New Quest: "..(questTitle or "?").." id "..(id or "?"))
	if not id or not questTitle then return end

	self.recentlyAcceptedQuests[questTitle]=true
	self.recentlyAcceptedQuests[id]=true

	if self.Writer then self.Writer:NotifyQuest("NEW",id,questTitle) end
end

-- Called from chat line "'Abababa Qeqeqeqe' completed." detection
function ZGV:CompletedQuestEvent(questTitle,id,daily)
	--[[
	--DISABLING this check. Let a quest complete twice, if it wants to, fuck it.
	if self.completedQuests[id] then   -- or self.completedQuestTitles[questTitle] then  -- let's not use this anymore, with GetQuestID available
		self:Debug("Already completed quest: "..tostring(questTitle).."##"..tostring(id))
		return
	end
	--]]

	local oldid=id

	--[[
	if not id then
		for qid,title in pairs(self.db.global.instantDailies) do
			if title==questTitle then id=qid daily=true end
		end
	end
	--]]

	self.completingQuest = nil

	id = id or self.recentlyLostQuests[questTitle] or (self.recentCompletedQuestTitle==questTitle and self.recentCompletedQuestID)

	if id==oldid then
		self:Debug("Completed Quest: "..tostring(questTitle).."##"..tostring(id))
	else
		self:Debug("Completed Quest: "..tostring(questTitle).."##"..tostring(id).." (recentCompletedQuestID or recentlyLostQuests[])")
	end

	if id then
		self.completedQuests[id]=true
		self.recentlyCompletedQuests[id]=true
		--if daily then self.db.char.completedDailies[id]=time() end

		--if self.CurrentGuide and self.CurrentGuide.daily and daily then self.db.char.permaCompletedDailies[id]=true end  -- deprecating this, let's see if this works.
	else
		-- self.completedQuestTitles[questTitle]=true
		self:Debug("Quest "..questTitle.." had no id!")
		self.recentlyCompletedQuests[questTitle]=true
		--if daily then self.db.char.completedDailies[questTitle]=time() end
	end

	if self.Writer then self.Writer:NotifyQuest("COMPLETED",id,questTitle) end
end
function ZGV:AbandonedQuestEvent(questTitle,id,daily)
	self:Debug("Abandoned Quest: "..tostring(questTitle).."##"..tostring(id))
end

function ZGV:LostQuestEvent(questTitle,id,surelyComplete)
	self:Debug("Lost Quest: "..tostring(questTitle)..", id: "..tostring(id)..", complete: "..tostring(surelyComplete))

	if self.Writer then self.Writer:NotifyQuest("LOST",id,questTitle) end
end

function ZGV:QUEST_COMPLETE_QuestTracking()
	self.recentCompletedQuestID=GetQuestID()
	self.recentCompletedQuestTitle=GetTitleText()
	if self.recentAbandonedQuestID==self.recentCompletedQuestID then self.recentAbandonedQuestID=nil self.recentCompletedQuestTitle=nil end
	self:Debug("QUEST_COMPLETE "..tostring(self.recentCompletedQuestTitle).."##"..tostring(self.recentCompletedQuestID))
end

function ZGV.QuestTracking_hook_SetAbandonQuest()
	local index = GetQuestLogSelection()
	--print(index)
	if index>0 then
		for i,q in ipairs(ZGV.quests) do  if q.index==index then
			local id = q.id
			ZGV.recentAbandonedQuestID_proto = id
			--print('='..id)
		end  end
	end
end
function ZGV.QuestTracking_hook_AbandonQuest()
	ZGV.recentAbandonedQuestID=ZGV.recentAbandonedQuestID_proto
	--print('! '..ZGV.recentAbandonedQuestID)
end


---- chainage

--[=[
function ZGV:GetQuestRemainingInChain(questid)
	local pre = self.Chains[questid]
	if pre and self:IsQuestPossible(questid) then
		-- chain started
		local foll=self:GetMentionedFollowups(questid)
		local incomp=#foll
		for i=1,#foll do
			if self.completedQuests[foll[i][1]] then incomp=incomp-1 end
		end
		return incomp
	else
		return nil
	end

end

function ZGV:IsQuestExclusived(questid)
	for i,excl in ipairs(self.ChainExclusives) do
		local done=0
		local present
		for j,qid in ipairs(excl) do
			if qid==questid then
				present=true
			elseif self.completedQuests[qid] or self.questsbyid[qid] then
				done=done+1
			end
		end
		return present and done>0
	end
end
--]=]

---- abandoning

function ZGV:MarkUselessQuests()
	local guidequests = self.CurrentGuide:GetQuests()
	local strings = ""
	for qi,quest in ipairs(self.quests) do
		quest.useless = not guidequests[quest.id] and not quest.daily and not quest.weekly and not quest.bounty and not (quest.tagnum==102) and not (quest.tagnum==83) and not (quest.tagnum==89)
		if quest.useless then strings = strings .. quest.title .. "\n" end
		--print(quest.title,quest.useless)
	end
	return strings
end

function ZGV:AbandonUselessQuests()
	for qi,quest in ipairs(self.quests) do
		if quest.useless then
			SelectQuestLogEntry(quest.index)
			SetAbandonQuest()
			AbandonQuest()
		end
	end
end

function ZGV:ShowQuestCleanup(automated)
	if not self.CurrentGuide then return end

	local quests = self:MarkUselessQuests()

	if not self.CleanupPopup then
		self.CleanupPopup = ZGV.PopupHandler:NewPopup("ZygorSyncInitiate","default")

		self.CleanupPopup.acceptbutton:SetText(L['static_abandonquests_butabandon'])
		self.CleanupPopup.declinebutton:SetText(L['static_abandonquests_butignore'])
		self.CleanupPopup.OnAccept = function(self) ZGV:AbandonUselessQuests() end
	end

	if #quests>0 then
		self.CleanupPopup:SetText((L['static_abandonquests']):format(quests))
	else
		self.CleanupPopup:SetText(L['static_abandonquests_none'])
	end
	self.CleanupPopup:Show()
end