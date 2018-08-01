local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L

local Mailtools = ZGV.Mailtools

local Mailtools_player_name = UnitName("player")

function Mailtools.sort_sender(a,b)
	return (a.displayName or a.name) < (b.displayName or b.name)
end


function Mailtools:GetListOfInventory()
	Mailtools.InventoryItems = {}
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag) do
			self:AddItemToInventory(bag,slot)
		end
	end
end

function Mailtools:AddItemToInventory(bag,slot)
	local itemid=GetContainerItemID(bag,slot)
	local CachedPetCages = CachedPetCages or {}
	local itemlink = GetContainerItemLink(bag, slot) 

	if itemid then
		if ZGV.db.char.MThiddenitems[itemid] then return end

		local bop,boa = ZGV.IsItemBound(bag,slot) 
		
		if bop and not boa then return false end

		local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = ZGV:GetItemInfo(itemlink)
		local texture, itemCount, locked, quality, readable = GetContainerItemInfo(bag, slot)
		local displayName = nil

		--if isbop or isboa or isbound then return false end
		if isbop or isbound then return false end

		local statusIcon, statusText, statusId
		local petItem_id = nil
		local petItemFallback_id = nil
		local BattlePetName,BattlePetId
		local breedid,breedname

		if itemid == 82800 then -- Caged pet
			local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

			local result
			petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
			if result~="OK" then return end

			breedid,breedname = ZGV.PetBattle:GetPetBreedBySlot(bag,slot)

			name = BattlePetName
			displayName = BattlePetName.." (lvl "..BattlePetLevel.." "..breedname..")"
			--[[
			return
			--]]
		end

		if not (petItem_id or itemid) or not name then
			ZGV:Debug("Unable to add item %d to mailtools.",itemid)
			return
		end

		local exists = false
		for i,v in pairs(self.InventoryItems) do
			if v.link==itemlink and not exists then
				exists = exists or true
				table.insert(self.InventoryItems[i].position,{bag=bag,slot=slot})
				self.InventoryItems[i].count = self.InventoryItems[i].count + itemCount
			end
		end
		if not exists then
			local newitem = {
				itemid=petItem_id or itemid,
				name=name,
				displayName=displayName,
				link=itemlink,
				icon=texture,
				count=itemCount,
				quality=quality,
				position= {},
				BattlePetId=BattlePetId,
				BattlePetName=BattlePetName
				}
			table.insert(newitem.position,{bag=bag,slot=slot})
			table.insert(self.InventoryItems,newitem)
		end
	end
end

function Mailtools:ToggleAllInventory(isChecked)
	for ii,invItem in ipairs(Mailtools.InventoryItems) do 
		invItem.selected = isChecked
	end
	ZGV.Mailtools.needToUpdate = true
end


function Mailtools:SendSelected()
	Mailtools.ItemsToSend = {}

	for ii,invItem in ipairs(self.InventoryItems) do 
		if invItem.selected then
			
			for _,location in pairs(invItem.position) do
				location.link=invItem.link
				table.insert(Mailtools.ItemsToSend,location)
			end
		end
	end

	local sendgold = ZM_Sender_Frame.sendgold:GetText()
	local sendsilver = ZM_Sender_Frame.sendsilver:GetText()
	local sendcopper = ZM_Sender_Frame.sendcopper:GetText()

	local sendmoney = (tonumber(sendgold) or 0)*100*100 + (tonumber(sendsilver) or 0)*100 + (tonumber(sendcopper) or 0)

	Mailtools.TotalMailsToSend = math.ceil(#Mailtools.ItemsToSend / 12)
	Mailtools.CurrentMailToSend = 0

	if sendmoney>0 and Mailtools.TotalMailsToSend==0 then
		Mailtools.TotalMailsToSend = 1
	end

	Mailtools.RunningSend = true
	Mailtools:SendNextBatch()
end

function Mailtools:SendNextBatch()
	if not Mailtools.RunningSend then return end

	ZGV:ScheduleTimer(function()
		local target = ZM_Sender_Frame.recipentSuggest:GetText()

		if not target or target == "" then return end
		ClearSendMail()

		SendMailNameEditBox:SetText(target)

		local added = 0
		Mailtools.CurrentBatch = {}
		for index,item in pairs(Mailtools.ItemsToSend) do
			if item.link == GetContainerItemLink(item.bag,item.slot) then
				PickupContainerItem(item.bag,item.slot)
				ClickSendMailItemButton()
				added = added + 1
				Mailtools.CurrentBatch[index] = item
				if added == 12 then
					break
				end
			end
		end

		local sendgold = ZM_Sender_Frame.sendgold:GetText()
		local sendsilver = ZM_Sender_Frame.sendsilver:GetText()
		local sendcopper = ZM_Sender_Frame.sendcopper:GetText()

		local sendmoney = (tonumber(sendgold) or 0)*100*100 + (tonumber(sendsilver) or 0)*100 + (tonumber(sendcopper) or 0)

		local success = false
		if sendmoney>0 then
			success = SetSendMailMoney(sendmoney)
		end
			
		if added == 0 and (not success or sendmoney==0) then
			Mailtools.RunningSend = false
			Mailtools.CurrentMailToSend = 0
			Mailtools.TotalMailsToSend = 0
			Mailtools.needToUpdate = true
			return
		else
			local subject = (ZM_Sender_Frame.subject:GetText()=="" and "Zygor Package") or ZM_Sender_Frame.subject:GetText()
			Mailtools.CurrentMailToSend = Mailtools.CurrentMailToSend + 1

			if sendmoney~=0 and Mailtools.TotalMailsToSend==0 then
				Mailtools.TotalMailsToSend = 1
			end

			SendMail(target,subject)
			ZM_Sender_Frame.sendgold:SetText("0")
			ZM_Sender_Frame.sendsilver:SetText("0")
			ZM_Sender_Frame.sendcopper:SetText("0")
		end
	end, 0)
end

function Mailtools:FillSenderList(prefix)
	frame = self.MainFrame.Sender_Frame

	ZGV.db.profile.Mail = ZGV.db.profile.Mail or {}

	ZGV.db.profile.Mail.altNames = ZGV.db.profile.Mail.altNames or {}
	ZGV.db.profile.Mail.altNames = ZGV.db.profile.Mail.altNames or {}

	Mailtools.SenderNamesList = {}
	prefix = prefix or ""

	local name
	
	-- Previous mail targets
	for _, name in pairs(ZGV.db.profile.Mail.previousNames or {}) do
		if name ~= Mailtools_player_name then
			if prefix==string.sub(name, 1, string.len(prefix)) then
				Mailtools.SenderNamesList[name] = name
			end
		end
	end

	-- Known player alts
	for _, name in pairs(ZGV.db.factionrealm.altNames or {}) do
		if name ~= Mailtools_player_name then
			if prefix==string.sub(name, 1, string.len(prefix)) then
				Mailtools.SenderNamesList[name] = name
			end
		end
	end

	-- Friends
	local numFriends, onlineFriends = GetNumFriends()
	for index=1,numFriends do
		name = GetFriendInfo(index)
			if prefix==string.sub(name, 1, string.len(prefix)) then
				Mailtools.SenderNamesList[name] = name
			end
	end

	local recipentSuggest = self.MainFrame.Sender_Frame.recipentSuggest

	for _, name in pairs(Mailtools.SenderNamesList) do
		recipentSuggest:AddSuggestItem(name,name)
	end
end

function Mailtools:SenderRowMenu(row)
	if not row.item then return end

	if not Mailtools.MainFrame.Sender_Frame.SenderMenu then Mailtools.MainFrame.Sender_Frame.SenderMenu = CreateFrame("FRAME","MT_Sender_Menu",Mailtools.MainFrame.Sender_Frame,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(Mailtools.MainFrame.Sender_Frame.SenderMenu, 0, 0, "TOP", row, "BOTTOM")
	local menu = {}

	tinsert(menu,{
			text = "Hide this item",
			tooltipText = "No longer show this item in Sender list",
			tooltipOnButton=1,
			func = function() 
				ZGV.db.char.MThiddenitems[row.item.itemid]=true
				Mailtools:GetListOfInventory()
				Mailtools:Update()
			end,
			notCheckable=0,
		})
	
	EasyFork(menu,Mailtools.MainFrame.Sender_Frame.SenderMenu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(Mailtools.MainFrame.Sender_Frame.SenderMenu, 300)
end

function Mailtools:GetPostalFee()
	local cost = 0
	for _,item in pairs(Mailtools.InventoryItems) do
		if item.selected then
			cost = cost + #item.position
		end
	end
	cost = cost * 30 -- each slot used costs 30c

	local sendgold = ZM_Sender_Frame.sendgold:GetText()
	local sendsilver = ZM_Sender_Frame.sendsilver:GetText()
	local sendcopper = ZM_Sender_Frame.sendcopper:GetText()

	local sendmoney = (tonumber(sendgold) or 0)*100*100 + (tonumber(sendsilver) or 0)*100 + (tonumber(sendcopper) or 0)

	if sendmoney>0 then
		cost = cost + 30 -- sending gold costs 30c
	end


	Mailtools.MainFrame.Sender_Frame.costlabel:SetText("Cost: "..ZGV.GetMoneyString(cost))
end

