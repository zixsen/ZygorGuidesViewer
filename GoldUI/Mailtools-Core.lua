local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local CHAIN = ZGV.ChainCall

if not ZGV.Mailtools then ZGV.Mailtools = {} end
local Mailtools = ZGV.Mailtools
LibStub("AceHook-3.0"):Embed(Mailtools)

local ROWCOUNT=12
local GOLD_FORMAT_TYPE=3


function Mailtools:Update()
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end

	self.needToUpdate = false
	self.lastUpdated = time()

	local rownum=0
	local rowoff=0

	-- Initialise
	if self.ActiveTab == "Collector" then
		for indexMail,dataMail in pairs(self.InboxItems) do
			if dataMail.count <= 0 and dataMail.gold <=0 then
				table.remove(self.InboxItems,indexMail)
			end
		end
	end
	if self.ActiveTab == "Sender" then
	end

	-- Sort
	if self.ActiveTab == "Collector" then
		sort(self.InboxItems,Mailtools.sort_collector)
	elseif self.ActiveTab == "Sender" then
		sort(self.InventoryItems,Mailtools.sort_sender)
	end

	-- Display
	if self.ActiveTab == "Collector" then
		page = self.MainFrame.Collector_Frame.maillist
		local COLLECTOR_ROWCOUNT = page:CountRows()
		self.collectoroffset = max(0,min(self.collectoroffset,#self.InboxItems-COLLECTOR_ROWCOUNT))
		rowoff=self.collectoroffset
		for ii,invItem in ipairs(self.InboxItems) do 
			rownum = ii-rowoff
			if rownum>0 and rownum<COLLECTOR_ROWCOUNT+1 then 
				local row = page.rows[rownum]
				row.item = invItem
				local color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end
			
				if invItem.id < 0 then -- money
					row.name:SetText(ZGV.GetMoneyString(invItem.gold or 0))
					row.icon:SetTexture(invItem.icon)
				else -- item -- item
					row.name:SetText((invItem.cod>0 and "[COD] " or "")..invItem.count.." "..(color..(invItem.displayName or invItem.name or "...")))
					row.icon:SetTexture(invItem.icon)
				end
				row.price:SetText(invItem.source)
				row.price:SetTextColor(unpack(invItem.color))

				if invItem.cod>0 then
					invItem.selected = false
					row.toggle:SetToggle(false,true)
					row.toggle:Hide()
				else
					row.toggle:SetToggle(not not invItem.selected,true)
					row.toggle:Show()
				end
								
				row:Show()
			end
		end
		
		page.scrollbar:TotalValue(#self.InboxItems)
		page.scrollbar:SetValue(rowoff)

		for r=rownum+1,COLLECTOR_ROWCOUNT do page.rows[r]:Hide() end

	elseif self.ActiveTab == "Sender" then
		page = self.MainFrame.Sender_Frame.itemlist
		local SENDER_ROWCOUNT = page:CountRows()
		self.senderoffset = max(0,min(self.senderoffset,#self.InventoryItems-SENDER_ROWCOUNT))
		rowoff=self.senderoffset
		for ii,invItem in ipairs(self.InventoryItems) do 
			rownum = ii-rowoff
			if rownum>0 and rownum<SENDER_ROWCOUNT+1 then 
				local row = page.rows[rownum]
				row.item = invItem
				row.icon:SetTexture(invItem.icon)
				local color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end

				row.name:SetText(invItem.count.." "..(color..(invItem.displayName or invItem.name or "...")))
				row.toggle:SetToggle(not not invItem.selected,true)
				row:Show()
			end
		end

		page.scrollbar:TotalValue(#self.InventoryItems)
		page.scrollbar:SetValue(rowoff)

		for r=rownum+1,SENDER_ROWCOUNT do page.rows[r]:Hide() end	
	end
end


function Mailtools:IsEverythingSelected(array)
	for ii,invItem in ipairs(array) do 
		if not invItem.selected then
			return false
		end
	end
	return true
end

function Mailtools:Initialise()
	Mailtools.InboxItems = {}
	Mailtools.BagItems = {}
	Mailtools.CollectedGold = 0
	Mailtools:ShowWindow()
	Mailtools.checksum = Mailtools:GetInboxChecksum()
	Mailtools:GetListOfInbox()
	Mailtools.RunningCollect = false
	Mailtools.RunningMassCollect = false
	Mailtools.IgnoreNextMail_Success = false
	Mailtools.StartRefreshingInbox = false
	Mailtools.LastInboxRefresh = time()
	Mailtools:GetListOfInventory()
	Mailtools:FillSenderList()
	Mailtools.altNames = ZGV.db.factionrealm.altNames
	Mailtools.InitialSelectAll = true
	
	Mailtools.MainFrame.Sender_Frame.recipentSuggest:SetAllTrigger(ZGV.db.char.last_mail_target)

	for i=1, MailFrame.numTabs do
		 -- click on every tab. we need to click on blizzard send tab at least once for sender to work
		_G["MailFrameTab"..i]:Click()
		if (_G["MailFrameTab"..i].target or "")=="Collector" then
			-- we want to end with our collector tab open
			break
		end
	end
end

local function EventHandler(self, event, ...)
	if not ZGV.db.profile.mail_enable then return end

	args = {...}
	if event=="MAIL_SHOW" then
		Mailtools:Initialise()
	end
	if event=="MAIL_CLOSED" then
		Mailtools:HideWindow()
		Mailtools.InboxItems = {}
		Mailtools.InitialSelectAll = true
		Mailtools.ItemsToCollect = {}
		Mailtools.RunningCollect = false
	end

	if not MailFrame then return end
	if not MailFrame:IsVisible() then return end
	if not Mailtools.MainFrame then return end

	if event=="UI_ERROR_MESSAGE" then
		Mailtools.RunningSend = false
		Mailtools.RunningCollect = false
		Mailtools.RunningMassCollect = false
		Mailtools.IgnoreNextMail_Success = false
		Mailtools.needToUpdate = true
		Mailtools.CurrentBatch = {}
		Mailtools:GetListOfInbox()
		return
	end

	if event=="MAIL_FAILED" then
		Mailtools.RunningCollect = false
		Mailtools.RunningMassCollect = false
		Mailtools.IgnoreNextMail_Success = false
	end
	if event=="MAIL_INBOX_UPDATE" then
		if not Mailtools.RunningCollect then
			local checksum = ZGV.Mailtools:GetInboxChecksum()
			if Mailtools.checksum ~= checksum then
				Mailtools:GetListOfInbox()
			end
		end
		local numItems, totalItems = GetInboxNumItems()
		if totalItems == 0 then
			MiniMapMailFrame:Hide() -- Hide mail icon
		end
	end
	if event=="MAIL_SUCCESS" then
		if Mailtools.RunningSend then
			SendMailFrame_Reset()
			ZGV.db.char.last_mail_target = ZM_Sender_Frame.recipentSuggest:GetText()
			ZGV.db.profile.Mail.previousNames[ZM_Sender_Frame.recipentSuggest:GetText()] = ZM_Sender_Frame.recipentSuggest:GetText()

			Mailtools.MainFrame.Sender_Frame.recipentSuggest:SetAllTrigger(ZGV.db.char.last_mail_target)

			for index,item in pairs(Mailtools.CurrentBatch) do
				Mailtools.ItemsToSend[index] = nil
			end

			ZGV:ScheduleTimer(function() Mailtools:SendNextBatch() end, 0)
			
		end

		if Mailtools.RunningMassCollect then
			if Mailtools.NextGoldAmount then
				Mailtools.CollectedGold = Mailtools.CollectedGold + Mailtools.NextGoldAmount
				Mailtools.NextGoldAmount = false
			end
			Mailtools:CollectEverything()
		end

		if Mailtools.IgnoreNextMail_Success then
			Mailtools.IgnoreNextMail_Success = false
		else
			if Mailtools.RunningCollect then
				if Mailtools.NextGoldAmount then
					Mailtools.CollectedGold = Mailtools.CollectedGold + Mailtools.NextGoldAmount
					Mailtools.NextGoldAmount = false
				end
				ZGV:ScheduleTimer(function() Mailtools:CollectNextSelected() end, 0)
			end
		end
	end

	if event=="BAG_UPDATE_DELAYED" or event=="BAG_UPDATE_DELAYED" or event=="UNIT_INVENTORY_CHANGED" then
		Mailtools:GetListOfInventory()
	end

	Mailtools.needToUpdate = true
end

local function UpdateHandler(self, event)
	if not Mailtools.MainFrame then return end
	if not Mailtools.MainFrame:IsVisible() then return end
	if not MailFrame:IsVisible() then Mailtools:HideWindow() return end

	MailFrame:SetFrameLevel(1)

	if Mailtools.ForceInboxRefresh then
		Mailtools.ForceInboxRefresh = false
		Mailtools.checksum = Mailtools:GetInboxChecksum()
		Mailtools:GetListOfInbox()
	end

	if Mailtools.StartRefreshingInbox then -- keep the dots ticking
		Mailtools:UpdateStatus()
	end

	if Mailtools.StartRefreshingInbox then
		if time()-Mailtools.LastInboxRefresh > 10 then
			CheckInbox()
			Mailtools.LastInboxRefresh = time()
			if Mailtools.RunningMassCollect then
				Mailtools:CollectEverything()
			end
		end
	end

	local numItems, totalItems = GetInboxNumItems()
	local collectall = Mailtools.MainFrame.Collector_Frame.CollectAllToggle:IsChecked()
	local buttonCollect = ZM_Collector_Frame.CollectButton
	local buttonSend = ZM_Sender_Frame.SendButton
	if totalItems > 0 then
		if collectall then
			buttonCollect.tooltip = "Collect everything from "..totalItems.." mails."
		else
			buttonCollect.tooltip = "Collect selected items."
		end
	else
			buttonCollect.tooltip = "Nothing to collect."
	end

	buttonSend.tooltip = "Send selected items."

	if Mailtools.needToUpdate then
		Mailtools.needToUpdate = false
		Mailtools:Update()
		Mailtools:UpdateStatus()
		Mailtools:GetPostalFee()

		local IsEverythingSelectedInbox = Mailtools:IsEverythingSelected(Mailtools.InboxItems)
		local IsEverythingSelectedInventory = Mailtools:IsEverythingSelected(Mailtools.InventoryItems)

		if not IsEverythingSelectedInbox then
			Mailtools.MainFrame.Collector_Frame.CollectAllToggle:SetToggle(false)
			ZGV.db.profile.collectall = false
		end
		Mailtools.MainFrame.Collector_Frame.maillist.col_toggle:SetToggle(IsEverythingSelectedInbox, true)
		Mailtools.MainFrame.Sender_Frame.itemlist.col_toggle:SetToggle(IsEverythingSelectedInventory, true)
	end

end

function Mailtools:UpdateStatus()
	local numItems, totalItems = GetInboxNumItems()
	local statustitle, statusdesc = "",""

	local local_time = debugprofilestop()
	local progress_dots = ""

	if (math.floor(local_time%1500) < 500) then
		progress_dots = "."
	elseif local_time%1500 < 1000 then
		progress_dots = ".."
	else
		progress_dots = "..."
	end

	if Mailtools.StartRefreshingInbox then
		statustitle = "COLLECTING: "
		statusdesc = "Waiting for additional mails"..progress_dots
	elseif Mailtools.RunningCollect then
		statustitle = "COLLECTING: "
		statusdesc = "Collecting mails"..progress_dots
	elseif Mailtools.RunningMassCollect then
		statustitle = "COLLECTING: "
		statusdesc = numItems.."/"..totalItems.." mails remaining"..progress_dots
	elseif Mailtools.RunningSend then
		statustitle = "SENDING: "
		statusdesc = "Mail "..Mailtools.CurrentMailToSend.." of "..Mailtools.TotalMailsToSend
	end

	if self.MainFrame.Collector_Frame:IsVisible() then
		local goldstring = ZGV.Mailtools.CollectedGold
		for ii,invItem in ipairs(self.InboxItems) do 
			goldstring = goldstring + invItem.gold
		end

		goldstring = ZGV.GetMoneyString(goldstring)
		self.MainFrame.Collector_Frame.goldlabel:SetText("Total gold: "..goldstring)

		local pagecount = math.max(1,math.ceil(totalItems/50))
		if totalItems>numItems then
			self.MainFrame.Collector_Frame.header.pagecountlabel:SetText("Page: 1/"..pagecount)
			self.MainFrame.Collector_Frame.header.mailcountlabel:SetText("Mails: "..numItems.."/"..totalItems)
		else
			self.MainFrame.Collector_Frame.header.pagecountlabel:SetText("Page: 1")
			self.MainFrame.Collector_Frame.header.mailcountlabel:SetText("Mails: "..numItems)
		end
	end

	self.MainFrame.FooterStatus:SetText(statustitle)
	self.MainFrame.FooterStatusDetails:SetText(statusdesc)

end


function Mailtools:CreateTrackerFrame()
	-- Separate frame for events because Mailtools's own frame doesn't exist until it's first shown.
	Mailtools.Events = CreateFrame("Frame")
	Mailtools.Events:RegisterEvent("MAIL_CLOSED")
	Mailtools.Events:RegisterEvent("MAIL_FAILED")
	Mailtools.Events:RegisterEvent("MAIL_INBOX_UPDATE")
	Mailtools.Events:RegisterEvent("MAIL_SUCCESS")
	Mailtools.Events:RegisterEvent("UNIT_INVENTORY_CHANGED")
	Mailtools.Events:RegisterEvent("MAIL_SHOW")
	Mailtools.Events:RegisterEvent("BAG_UPDATE")
	Mailtools.Events:RegisterEvent("BAG_UPDATE_DELAYED")
	Mailtools.Events:RegisterEvent("UI_ERROR_MESSAGE")

	Mailtools.Events:SetScript("OnEvent",EventHandler)
	Mailtools.Events:SetScript("OnUpdate",UpdateHandler)
end

tinsert(ZGV.startups,{"Mailtools core",function(self)
	Mailtools:CreateTrackerFrame()
	ZGV.db.profile.Mail = ZGV.db.profile.Mail or {}
	ZGV.db.profile.Mail.previousNames = ZGV.db.profile.Mail.previousNames or {}
	ZGV.db.factionrealm.altNames = ZGV.db.factionrealm.altNames or {}
	ZGV.db.factionrealm.altNames[UnitName("player")]=UnitName("player")
	ZGV.db.char.MThiddenitems = ZGV.db.char.MThiddenitems or {}
end})