local ZGV=ZygorGuidesViewer

local Sync={}
ZGV.Sync = Sync

local PREFIX="zygor7sync"

local PACKETTYPE_GUIDESTATUS = "GS"

--[[

"MAGNETIC" SYNC:

Everyone synced progresses only when:
 - they're on the same step, and
 - the steps are all completed.

Each step change is announced to other party members.

Packet GS (GuideState):
  "GS""
  "##GU=" <guide title>
  "##ST=" <step number> "," <status> (0=incomplete/1=complete)
  "##GO=" <goal status> "," <goal status...> (0=incomplete/1=complete)

	Receiving of GS packet stores party member's guide state indefinitely, until further GS data,
	disconnection or leaving the party.

	Step progress is halted as long as there are party members' statuses stored, indicating
	current step being current and incomplete.
--]]

function Sync:CreatePacket_GuideStatus()
	local guide_title=ZGV.CurrentGuide.title
	local step_num=ZGV.CurrentStep.num
	local step_status=ZGV.CurrentStep:IsComplete() and 1 or 0
	local goals={}
	for gi,goal in ipairs(ZGV.CurrentStep.goals) do
		goals[gi]=goal:IsComplete() and  1 or 0
	end
	return ("%s##GU=%s##ST=%d,%d##GO=%s"):format(PACKETTYPE_GUIDESTATUS, guide_title, step_num,step_status, table.concat(goals,","))
end

function Sync:OnChatReceived(prefix,msg,channel,sender,target,zoneChannelID,localID,name,instanceID)
	if prefix~=PREFIX then return end
	local packettype,data = msg:match("(..)##(.*)")
	if not packettype then print("Bad packet received: ",msg) end
	local databits={("##"):split(data)}
	local packet={['type']=packettype,['sender']=sender,['recv_time']=GetTime()}
	for i,bit in ipairs(databits) do
		local k,v = bit:match("(..)=(.+)")
		if k then packet[k]=v elseif #bit==2 then packet[k]=true end
	end
	self:Unpack(packet)
	self:HandleReceivedPacket(packet)
end

function Sync:Unpack(packet)
	if packet.type==PACKETTYPE_GUIDESTATUS then
		packet.guide = packet.GU
		local step,complete = packet.ST:match("(.*),(.*)")
		packet.step = tonumber(step)
		packet.is_complete = complete=="1"
		if packet.GO then
			local goals = {(","):split(packet.GO)}
			packet.goals={}
			for i,g in ipairs(goals) do packet.goals[i]=(g=="1") end
		end
	end
	DevTools_Dump(packet)
end

function Sync:HandleReceivedPacket(packet)
	if packet.type==PACKETTYPE_GUIDESTATUS then
		print("Player",packet.sender,"is on guide",packet.guide,"step",packet.step,"which is",packet.is_complete and "complete" or "incomplete")
		self.PartyStatus[packet.sender]=packet
	end
end

function Sync:IsEveryoneCompleteOrElsewhere()
	for name,status in pairs(self.PartyStatus) do
		if status.step == ZGV.CurrentStep.num and not status.is_complete then
			return false
		end
	end
	return true
end

function Sync:AnnounceStatus()
	self:Send(self:CreatePacket_GuideStatus())
end

function Sync:Init()
	if not C_ChatInfo.IsAddonMessagePrefixRegistered(PREFIX) then
		C_ChatInfo.RegisterAddonMessagePrefix(PREFIX)
		self.rcvframe = ZGV.ChainCall(CreateFrame("Frame"))
			:RegisterEvent("CHAT_MSG_ADDON")
			:RegisterEvent("PARTY_MEMBERS_CHANGED")
			:SetScript("OnEvent", function(frame,event,...)
				if event=="CHAT_MSG_ADDON" then
					self:OnChatReceived(...)
				elseif event=="PARTY_MEMBERS_CHANGED" then
					self:PurgePartyStatus()
					self:AnnounceStatus()
				end
			end)
			.__END
	end
	ZGV:AddMessageHandler("ZGV_GOAL_COMPLETED",{self,"AnnounceStatus"})
	ZGV:AddMessageHandler("ZGV_STEP_CHANGED",{self,"AnnounceStatus"})
	self:PurgePartyStatus()
end

function Sync:PurgePartyStatus()
	self.PartyStatus = {}
	-- enumerate party; remove from PartyStatus
end

function Sync:Send(message)
	print ("sending",C_ChatInfo.SendAddonMessage(PREFIX,message,"PARTY"))
end

function Sync:SendSelf(message)
	print ("sending",C_ChatInfo.SendAddonMessage(PREFIX,message,"WHISPER",UnitName("player")))
end

tinsert(ZGV.startups,{"Sync startup",function(self)
	-- create globals for blizzard keybind menu
	if ZGV.db.profile.sync_enabled then Sync:Init() end
end})
