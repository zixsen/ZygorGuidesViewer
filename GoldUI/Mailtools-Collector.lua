local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L

local Mailtools = ZGV.Mailtools

local Mailtools_player_name = UnitName("player")

local AUCTION_HOUSE_MAIL = BUTTON_LAG_AUCTIONHOUSE -- only entry in global strings that uses just Auction House
local AUCTION_EXPIRED_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_EXPIRED_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_REMOVED_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_REMOVED_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_WON_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_WON_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_SOLD_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_SOLD_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_OUTBID_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_OUTBID_MAIL_SUBJECT,"%%s","(.*)")
local GOLD_AMOUNT_ICON = string.gsub(GOLD_AMOUNT_TEXTURE,"%%d","")
local AH_SOLD_ICON = "Interface\\Icons\\INV_Misc_Coin_01"


function Mailtools.sort_collector(a,b)
	if not a or not b then return false end

	if a.gold == b.gold then
		return (a.name or "") < (b.name or "")
	else
		return (a.gold or 0) > (b.gold or 0)
	end
end


function Mailtools:GetListOfInbox()
	self.InboxItems = {}
	local numItems, totalItems = GetInboxNumItems()
	if not Mailtools.RunningMassCollect then
		if numItems<50 and numItems<totalItems then
			Mailtools.StartRefreshingInbox = true
		else
			Mailtools.StartRefreshingInbox = false
		end
	end
	for mi_mail=1,numItems do
		local mi_name, mi_slot, mi_id, mi_count, mi_icon, mi_gold, mi_cod, mi_quality
		local mi_icon, _, sender, subject, mi_gold, mi_cod, _, mi_count, _, _, _, _, isGM, itemQuantity = GetInboxHeaderInfo(mi_mail)

		local mi_source = sender
		local mi_player=true 
		mi_color = {1,1,1,1}
		
		if mi_source == "" or not mi_source then
			Mailtools.ForceInboxRefresh = true
			return
		end

		if string.find(subject, AUCTION_EXPIRED_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH expired" 
			mi_player=false 
			mi_color = {1,1,1,0.4}
		end
		if string.find(subject, AUCTION_REMOVED_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH cancelled"  
			mi_player=false 
			mi_color = {1,1,1,0.4}
		end
		if string.find(subject, AUCTION_WON_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH bought"  
			mi_player=false 
			mi_color = {1,1,1,0.8}
		end

		if string.find(subject, AUCTION_OUTBID_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH outbid"
			mi_player=false 
			_,_,mi_name = string.find(subject, AUCTION_OUTBID_MAIL_SUBJECT_FILTER)
			mi_source = "Outbid "..mi_name
			mi_color = {1,1,1,0.4}
		end


		if string.find(subject, AUCTION_SOLD_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH sold"
			mi_player=false 
			_,_,mi_name = string.find(subject, AUCTION_SOLD_MAIL_SUBJECT_FILTER)
			mi_source = "Sold "..mi_name
			mi_color = {1,1,1,0.8}
		end

		if mi_source == AUCTION_HOUSE_MAIL then
			Mailtools.ForceInboxRefresh = true
			return
		end

		for mi_slot=1, ATTACHMENTS_MAX_RECEIVE do
			local itemlink = GetInboxItemLink(mi_mail,mi_slot)
			if itemlink then
				local mi_id = tonumber(itemlink:match("item:(%d+)"))
				local mi_name,mi_itemID,mi_icon, mi_count, quality, canUse = GetInboxItem(mi_mail,mi_slot)

				if mi_name == "" or not mi_name then
					Mailtools.ForceInboxRefresh = true
					return
				end

				if (mi_quality == -1) then -- Mailbox sometimes does not return proper quality
					_,_,mi_quality = ZGV:GetItemInfo(itemlink);
				end

				if mi_id == 82800 then -- Caged pet
					BattlePetId = ZGV.PetBattle.IdByName[mi_name]
					if not BattlePetId then
						mi_name = "Unknown battlepet"
						BattlePetId = 0
						mi_icon = ""
						mi_quality = 0
					end
						
					mi_id = 1000000000+((BattlePetId or 0)*100000)
				end					
				
				Mailtools:AddItemToIncoming(mi_mail,mi_slot,mi_id,mi_name,mi_icon,mi_count,0,mi_source,mi_player,mi_cod,mi_quality,mi_color,Mailtools.InitialSelectAll)
			end
		end

		if mi_gold > 0 then
			Mailtools:AddItemToIncoming(mi_mail,0,-1,mi_name,AH_SOLD_ICON,0,mi_gold,mi_source,mi_player,mi_cod,mi_quality,mi_color,Mailtools.InitialSelectAll)
		end
	end

	Mailtools.checksum = Mailtools:GetInboxChecksum()
end

function Mailtools:GetInboxChecksum()
	local checksum = 0
	local numItems, totalItems = GetInboxNumItems()
	
	local needToUpdate=false

	for mi_mail=1,numItems do
		local mi_name, mi_slot, mi_id, mi_count, mi_icon, mi_gold, mi_cod
		local mi_icon, _, sender, subject, mi_gold, mi_cod, _, mi_count, _, _, _, _, isGM, itemQuantity = GetInboxHeaderInfo(mi_mail)
		
		if not mi_count then needToUpdate=true end

		for mi_slot=1, ATTACHMENTS_MAX_RECEIVE do
			local itemlink = GetInboxItemLink(mi_mail,mi_slot)
			if itemlink then
				local mi_id = tonumber(itemlink:match("item:(%d+)"))
				local mi_name,mi_icon,mi_count = GetInboxItem(mi_mail,mi_slot)				
				if not mi_id then needToUpdate=true end
				checksum = checksum + (mi_id or 0)*mi_slot*mi_mail*(mi_count or 0)*(mi_cod+1)
			end
		end

		if mi_gold > 0 then
			checksum = checksum + mi_gold*mi_mail
		end
	end

	if needToUpdate then Mailtools.needToUpdate=true end

	return checksum
end

function Mailtools:AddItemToIncoming(mi_mail,mi_slot,mi_id,mi_name,mi_icon,mi_count,mi_gold,mi_source,mi_player,mi_cod,mi_quality,mi_color,selected)
	local existing = nil

	if mi_gold>0 then -- we are adding gold
		for i,v in pairs(self.InboxItems) do
			if v.source == mi_source and v.gold>0 and v.name==mi_name then
				existing = i
			end
		end
	else -- we are adding item
		for i,v in pairs(self.InboxItems) do
			if v.id == mi_id then
				existing = i
			end
		end
	end

	if not existing then
		local newslot  = #self.InboxItems + 1
		self.InboxItems[newslot] = {
			position = {},
			id = mi_id,
			name = mi_name,
			icon = mi_icon,
			count = mi_count or 0,
			gold = mi_gold,
			source = mi_source,
			selected = selected,
			player = mi_player,
			cod = mi_cod,
			position = {},
			quality = mi_quality,
			color = mi_color
		}
		self.InboxItems[newslot].position[mi_mail] = {}
		self.InboxItems[newslot].position[mi_mail][mi_slot] = mi_count or 0
		self.InboxItems[newslot].count = mi_count or 0
	else
		self.InboxItems[existing].count = self.InboxItems[existing].count + (mi_count or 0)
		self.InboxItems[existing].gold = self.InboxItems[existing].gold + mi_gold
		self.InboxItems[existing].position[mi_mail] = self.InboxItems[existing].position[mi_mail] or {}
		self.InboxItems[existing].position[mi_mail][mi_slot] = (mi_count or 0)
	end
end

function Mailtools:StartCollecting()
	if ZGV.db.profile.collectall then
		Mailtools.InitialSelectAll = true
		Mailtools.RunningMassCollect = true
		Mailtools:CollectEverything()
	else
		Mailtools.InitialSelectAll = ZGV.Mailtools.MainFrame.Collector_Frame.maillist.col_toggle:IsChecked()
		Mailtools:CollectSelected()
	end
end

function Mailtools:CollectSelected()
	Mailtools.ItemsToCollect = {}
	local ItemsToCollect = {}
	local GoldToCollect = {}

	local numItems, totalItems = GetInboxNumItems()

	for ii,invItem in ipairs(self.InboxItems) do 
		if invItem.selected then
			for mail,attachments in pairs(invItem.position) do
				for slot,count in pairs(attachments) do
					if invItem.gold == 0 then
						table.insert(ItemsToCollect,{count = count, item = invItem, mail=mail, slot=slot, name=invItem.name})
					else
						table.insert(GoldToCollect,{count = invItem.gold, item = invItem,mail=mail, slot=slot, name="Gold"})
					end
				end
			end
		end
	end

	sort(GoldToCollect,function(a,b) return a.mail > b.mail end)

	for i,v in pairs(GoldToCollect) do table.insert(Mailtools.ItemsToCollect,v) end
	for i,v in pairs(ItemsToCollect) do table.insert(Mailtools.ItemsToCollect,v) end

	Mailtools.RunningCollect = true
	Mailtools:CollectNextSelected()
end

function Mailtools:CollectNextSelected()
	local currentmail = table.remove(Mailtools.ItemsToCollect,1)

	if currentmail then
		local mail = currentmail.mail
		local slot = currentmail.slot
		local item = currentmail.item
		local _, _, _, subject, money, _, _, itemCount, _, _, _, _, _, _= GetInboxHeaderInfo(mail)
		local _, _, isTakeable, _ = GetInboxText(mail)

		local reindex = ((money>0 and 1 or 0) + (itemCount or 0) + (isTakeable and 1 or 0))==1

		Mailtools.IgnoreNextMail_Success = reindex

		if item.gold == 0  then
			TakeInboxItem(mail, slot)
			item.count = item.count - currentmail.count
		else
			TakeInboxMoney(mail)
			ZGV:Print(("Collected: %s from |cffffee88%s|r"):format(ZGV.GetMoneyString(money or 0),subject or "?"))
			Mailtools.NextGoldAmount = money
			item.gold = item.gold - money
		end

		if reindex then
			for _,maildata in pairs(Mailtools.ItemsToCollect) do
				if maildata.mail > mail then
					maildata.mail = maildata.mail - 1
				end
			end
		end

		ZGV.Mailtools.needToUpdate = true
	else
		Mailtools.RunningCollect = false
		Mailtools.ItemsToCollect = {}
		Mailtools.IgnoreNextMail_Success = false
		Mailtools.needToUpdate = true
		ZGV.Mailtools:GetListOfInbox()
	end
end

function Mailtools:CollectEverything()
	if not ZGV.db.profile.collectall then return end

	local mi_icon, mi_texture, sender, subject, mi_gold, mi_cod, _, mi_count, _, _, _, _, isGM, itemQuantity = GetInboxHeaderInfo(1)


	if mi_icon or mi_texture then
		Mailtools.StartRefreshingInbox = false
		if mi_cod==0 then
			Mailtools.NextGoldAmount = mi_gold
			AutoLootMailItem(1)
			if mi_gold>0 then ZGV:Print(("Collected: %s from |cffffee88%s|r"):format(ZGV.GetMoneyString(mi_gold),subject or "?")) end
		else
			Mailtools.RunningMassCollect = false
		end
	else
		local numItems, totalItems = GetInboxNumItems()
		if totalItems>0 then
			if not Mailtools.StartRefreshingInbox then
				Mailtools.StartRefreshingInbox = true
			end
		else	
			Mailtools.RunningMassCollect = false
			Mailtools.StartRefreshingInbox = false
		end
	end
	ZGV.Mailtools.needToUpdate = true
end

function Mailtools:ToggleAllInbox(isChecked)
	for ii,invItem in ipairs(Mailtools.InboxItems) do 
		invItem.selected = isChecked
	end
	ZGV.Mailtools.needToUpdate = true
end