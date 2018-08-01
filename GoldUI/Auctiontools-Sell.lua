if not ZGV then return end

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local ACTIVE_ICON_WIDTH = 20

local Appraiser = ZGV.Gold.Appraiser 

function Appraiser.sort_inventory(a,b)
	if not a.price or not b.price then return false end

	local a_statusId = a.statusId + (a.isStagnant and 50 or 0)
	local b_statusId = b.statusId + (b.isStagnant and 50 or 0)

	if ZGV.db.profile.aucmode=="unit" then
		a_price = a.price / a.count
		b_price = b.price / b.count
	else
		a_price = a.price
		b_price = b.price
	end

	if a_statusId == b_statusId then
		if a_price == b_price then
			return a.name<b.name
		else
			return a_price > b_price
		end
	else
		return a_statusId < b_statusId
	end
end

function Appraiser.sort_inventoryAuctions(a,b)
	if a.unit_price == b.unit_price then
		return a.stack_size < b.stack_size
	else
		return a.unit_price < b.unit_price
	end
end

Appraiser.InventoryItems = {}
local BagSlot_LinkCache = {}
Appraiser.BagSlot_LinkCache=BagSlot_LinkCache
for bag=0, NUM_BAG_SLOTS do BagSlot_LinkCache[bag] = {} end

function Appraiser:GetInventoryItems(refresh)
	if Appraiser.SellingInProgress then return end
	if refresh then
		for bag=0, NUM_BAG_SLOTS do
			table.wipe(BagSlot_LinkCache[bag])
		end
	end

	table.wipe(Appraiser.InventoryItems)
	--ZGV:Debug("AHT-Sell GetInventoryItems from "..debugstack(2,1,0))
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag) do
			self:AddItemToInventory(bag,slot)
		end
	end
end

function Appraiser:GetInventoryAuctions()
	if Appraiser.ActiveSellingItem and Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid] then
		Appraiser.InventoryAuctions = {}
		for i,v in pairs(Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid]) do
			Appraiser:AddItemToInventoryAuctions(v)
		end
		Appraiser:Update()
	end	
end

local inventory_cache = {}

local function cached_GetContainerItemLink(bag, slot) 
	local itemid=GetContainerItemID(bag, slot)
	if not itemid then
		-- item is missing, clear this single entry
		BagSlot_LinkCache[bag][slot]=nil
		return nil
	end

	if BagSlot_LinkCache[bag][slot] then return BagSlot_LinkCache[bag][slot] end
	local itemlink = GetContainerItemLink(bag, slot)
	if itemlink then BagSlot_LinkCache[bag][slot] = itemlink end
	return BagSlot_LinkCache[bag][slot]
end

function Appraiser:AddItemToInventory(bag,slot)
	local itemid=GetContainerItemID(bag,slot)

	if ZGV.db.char.AThiddenitems[itemid] then return end -- item was hidden by player

	local itemlink = cached_GetContainerItemLink(bag, slot) 

	if not itemid then return end

	if not itemlink then -- we did not get the link for this item yet, abort and retry
		Appraiser.needToUpdate = true
		return false
	end

	
	if ZGV.IsItemBound(bag,slot) then return false end

	local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemlink)
	local texture, itemCount, locked, quality, readable = GetContainerItemInfo(bag, slot)
	local displayName = nil

	local petItem_id = nil
	local petItemFallback_id = nil

	local BattlePetId,BattlePetName = nil,nil

	if itemid == 82800 then -- Caged pet
		local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

		local result
		petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
		if result~="OK" then return end

		breedid,breedname = ZGV.PetBattle:GetPetBreedBySlot(bag,slot)

		name = BattlePetName
		displayName = BattlePetName.." (lvl "..BattlePetLevel.." "..breedname..")"

	end

	local single_locked = false
	if itemid == 82800 or classID==2 or classID==4 then
		-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
		single_locked=true
		maxStack=1
	end
		

	if not name or not texture then return false end

	local statusIcon, statusText, statusId, statusText,statusIcon,isStagnant,statusColor

	local price,unit_price,empty = ZGVG:GetSellPrice(petItem_id or itemid,itemCount)

	local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
	statusId = priceStatus.statusId
	statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.sellsuggestion)
	statusIcon = priceStatus.sellicon or priceStatus.icon -- coords
	isStagnant = priceStatus.stagnant
	statusColor = isStagnant and priceStatus.stagcolor or priceStatus.sellcolor

	if not (petItem_id or itemid) or not name or not price then
		ZGV:Print("Unable to add item",itemid,"to auctiontools.")
		return
	end

	local active = false
	if Appraiser.ActiveSellingItem and Appraiser.ActiveSellingItem.itemid == (petItem_id or itemid) then active = true end

	local exists = false
	local stripped_link = itemlink
	if not petItem_id then -- strip extra data, including uniqueID
		stripped_link = ZGV.ItemLink.StripBlizzExtras(itemlink)
	end
	for i,v in pairs(self.InventoryItems) do
		--if (petItem_id and v.itemid==petItem_id) or (not petItem_id and v.itemid == itemid) and not exists then
		if v.link==stripped_link and not exists then
			exists = exists or true
			self.InventoryItems[i].count = self.InventoryItems[i].count + itemCount
			self.InventoryItems[i].price = self.InventoryItems[i].price + price
		end
	end
	if not exists then
		local cache_id = petItem_id or itemid
		local stored_stack_count,stored_stack_size

		local invcached = inventory_cache[stripped_link]
		if not invcached then
			invcached = {}
			inventory_cache[stripped_link] = invcached
		else
			stored_stack_count = invcached.stackcount
			stored_stack_size = invcached.stacksize
			customprice_unit_bid = invcached.customprice_unit_bid
			customprice_unit_buy = invcached.customprice_unit_buy
			customprice = invcached.customprice
			auction = invcached.auction
			table.wipe(invcached)
		end

		invcached.itemid=cache_id
		invcached.name=name
		invcached.displayName=displayName
		invcached.link=stripped_link
		invcached.icon=texture
		invcached.count=itemCount
		invcached.price=price
		invcached.bag=bag
		invcached.slot=slot
		invcached.statusText=statusText
		invcached.statusIcon=statusIcon
		invcached.statusId=statusId
		invcached.statusColor=statusColor
		invcached.isStagnant=isStagnant
		invcached.quality=quality
		invcached.active=active
		invcached.maxStack=maxStack
		invcached.single_locked=single_locked

		invcached.stackcount=stored_stack_count
		invcached.stacksize=stored_stack_size
		invcached.customprice_unit_bid=customprice_unit_bid
		invcached.customprice_unit_buy=customprice_unit_buy
		invcached.customprice=customprice
		invcached.auction=auction

		table.insert(self.InventoryItems,invcached)
	end

end

function Appraiser:UpdateItemInInventory(item)
	local truecount = GetItemCount(item.link)
	if item.itemid > 1000000000 then -- battle pet, need spoonfeeding since GetItemCount(link) does not work for pets
		truecount = 0
		for bag=0, NUM_BAG_SLOTS do
			for slot=1, GetContainerNumSlots(bag) do
				local _, count, _, _, _, _, baglink = GetContainerItemInfo(bag, slot)
				if item.link == baglink then
					truecount = truecount + count
				end
			end
		end
	end

	item.count = truecount

	
	local price,unit_price,empty = ZGVG:GetSellPrice(item.itemid,item.count)
	item.price = price

	local priceStatus = ZGVG:GetPriceStatus(item.itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
	item.statusId = priceStatus.statusId
	item.statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.sellsuggestion)
	item.statusIcon = priceStatus.sellicon or priceStatus.icon -- coords
	item.isStagnant = priceStatus.stagnant
	item.statusColor = priceStatus.stagnant and priceStatus.stagcolor or priceStatus.sellcolor
end

function Appraiser:RefreshSellingItem()
	local found = false

	for ii,item in ipairs(self.InventoryItems) do 
		if item.link == self.LastSellingItem then
			item.active = true
			local truecount = GetItemCount(item.link)
			if item.itemid > 1000000000 then -- battle pet, need spoonfeeding since GetItemCount(link) does not work for pets
				truecount = 0
				for bag=0, NUM_BAG_SLOTS do
					for slot=1, GetContainerNumSlots(bag) do
						local _, count, _, _, _, _, baglink = GetContainerItemInfo(bag, slot)
						if item.link == baglink then
							truecount = truecount + count
						end
					end
				end
			end
			if Appraiser.ActiveSellingItem and truecount ~= Appraiser.ActiveSellingItem.count then
				item.count = truecount
				Appraiser.ActiveSellingItem.count = truecount
				Appraiser:SetSellFields()
				Appraiser:SetSellHistoricalLabels()
			end
			found = true
			break
		end
	end
	--ZGV:Debug("&gold RefreshSellingItem LastSelling %s? %s found",self.LastSellingItem,found and "YES" or "NOT")
	if not found and not Appraiser.SellManualUnselect then
		Appraiser.ActiveSellingItem = nil
		Appraiser:SelectNextSellingItem()
	end
end

function Appraiser:AddItemToInventoryAuctions(data)
	local stack_size = tonumber(data[1])
	local stack_price = tonumber(data[2])
	local unit_price = tonumber(data[3])
	local own_auction = tonumber(data[4])
	local itemlink = ZGV.ItemLink.StripBlizzExtras(data[5],true)
	if Appraiser.ActiveSellingItem.itemid > 1000000000 then itemlink = data[5] end

	local icon = select(10,ZGV:GetItemInfo(itemlink))

	local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

	if BattlePetId then
		_, icon = C_PetJournal.GetPetInfoBySpeciesID(BattlePetId)
		local petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
		if result=="OK" then 
			breedid,breedname = ZGV.PetBattle:GetPetBreedByLink(itemlink)
			local r, g, b, hex = GetItemQualityColor(BattlePetRarity);
			BattlePetName = "|c"..hex..BattlePetName.." (".." lvl "..BattlePetLevel.." "..breedname..")"
		end
	end

	local IA = Appraiser.InventoryAuctions

	local exists = false

	for i,v in pairs(IA) do
		if v.unit_price == unit_price and v.stack_size == stack_size and v.own_auction == own_auction and v.itemlink == itemlink then
			IA[i].count = IA[i].count + 1
			exists = true
			break
		end
	end
	if not exists then
		local newitem = {
			itemid=Appraiser.ActiveSellingItem.itemid,
			count=1,
			stack_size=stack_size,
			stack_price=stack_price,
			unit_price=unit_price,
			own_auction=own_auction, 
			itemlink=itemlink, 
			icon=icon,
			BattlePetName=BattlePetName
			}
		table.insert(IA,newitem)
	end
end

local lastitem,lasttime
function Appraiser:ActivateSellItem(item,automatic)
	if lastitem==item and lasttime==GetTime() then return end
	lastitem,lasttime=item,GetTime()

	ZGV:Debug("&gold Activating sell item: %s (%s) because %s",item and item.name, item and item.link, debugstack(2,1,0))

	if not automatic then
		-- do not switch items while any scan is running
		if ZGV.Gold.Scan.state~="SS_IDLE" then ZGV:Debug("Not activating: not idle") return end

		self.SellingInProgress = false
		if self.ActiveSearch then ZGV:Debug("Not activating: activesearch") return end
		if self.ActiveSearchName then ZGV:Debug("Not activating: activesearchname") return end
		if self.GoToFirstPage then ZGV:Debug("Not activating: gotofirstpage") return end
	end

	self:WipeSellHistoricalLabels()
	self:WipeSellPricingLabels()
	if not item then 
		self.ActiveSellingItem = nil
		self:ShowStackPanel(true)
		ZGV:Debug("Not activating: no item") 
		return 
	end

	self.InventoryAuctions = {}
	self.Inventory_Frame.aucpostfee:SetText("Deposit: "..ZGV.GetMoneyString(0))

	currentIndex = 0
	for i,v in pairs(self.InventoryItems) do 
		if v==item then currentIndex=i end
		v.active = false 
	end

	self:ShowStackPanel(item and not item.single_locked)

	--[[
	if automatic then -- or (not self.ActiveSellingItem or item.itemid ~= self.ActiveSellingItem.itemid) then
	--]]
		self.SellManualUnselect = false

		PickupContainerItem(item.bag, item.slot)
		ClickAuctionSellItemButton()
		ClearCursor()

		self.ActiveSearch = item.itemid
		self.ActiveSearchName = item.name
		self.ActiveSellingItem = item

		self.LastSellingItem = item.link
		self.NextSellingItemID = nil
		if self.InventoryItems[currentIndex+1] then
			self.NextSellingItemID = self.InventoryItems[currentIndex+1].itemid
		elseif self.InventoryItems[1] then
			self.NextSellingItemID = self.InventoryItems[1].itemid
		end
		ZGV:Debug("ACTIVATED %s, NEXT %s",self.LastSellingItem,self.NextSellingItemID)

		self.Inventory_Frame.activeIcon:SetTexture(item.icon)
		self.Inventory_Frame.activeName:SetText(item.name)
		self.Inventory_Frame.activeIcon:SetWidth(20)
		self.Inventory_Frame.activeName:SetWidth(220)
		self.Inventory_Frame.activeName:SetPoint("TOPLEFT",self.Inventory_Frame.activeIcon,"TOPRIGHT",8,-2)

		self.Inventory_Frame.auctionslabel:SetText("Auctions for: "..item.name)
		self.Inventory_Frame.undercutlabel:Show()

		item.active = true
		self:SetSellHistoricalLabels()
		self:SetSellFields()
		self:SearchForItem(item)
	--[[
	else
		ClickAuctionSellItemButton()
		ClearCursor()
		self.LastSellingItem = nil
		self.LastSoldItemData = nil

		self.ActiveSellingItem = nil
		self.SellManualUnselect = true

		item.active = false
	end
	--]]
	self:Update()
end

function Appraiser:ShowStackPanel(enable)
	local inv=Appraiser.Inventory_Frame
	local edit_alpha,button_alpha,text_alpha,text_color
	if enable then
		edit_alpha = 1
		button_alpha = 1
		text_alpha = 1
		text_color = 1
		inv.stacksize:Enable()
		inv.stacksizebutton:Enable()
		inv.stackcount:Enable()
		inv.stackcountbutton:Enable()
	else
		edit_alpha = 0.5
		button_alpha = 0.3
		text_alpha = 0.8
		text_color = 0.5
		inv.stacksize:Disable()
		inv.stacksizebutton:Disable()
		inv.stackcount:Disable()
		inv.stackcountbutton:Disable()
	end


	inv.stacksize:SetBackdropBorderColor(0.5,0.5,0.5,edit_alpha)
	inv.stacksize:SetTextColor(text_color,text_color,text_color,text_alpha)
	inv.stacksizebutton:SetBackdropBorderColor(0.5,0.5,0.5,button_alpha)
	inv.stacksizebutton:SetTextColor(text_color,text_color,text_color,text_alpha)
	inv.stackcount:SetBackdropBorderColor(0.5,0.5,0.5,edit_alpha)
	inv.stackcount:SetTextColor(text_color,text_color,text_color,text_alpha)
	inv.stackcountbutton:SetBackdropBorderColor(0.5,0.5,0.5,button_alpha)
	inv.stackcountbutton:SetTextColor(text_color,text_color,text_color,text_alpha)
end

function Appraiser:SetManualSellPrice()
	if not Appraiser.ActiveSellingItem then return end

	Appraiser.ActiveSellingItem.customprice = true 
	local countForSellCalc = 1
	if ZGV.db.profile.aucmode == "stack" then
		countForSellCalc = Appraiser.ActiveSellingItem.stacksize
	end
	local g = tonumber(Appraiser.Inventory_Frame.bidgold:GetText()) or 0
	local s = tonumber(Appraiser.Inventory_Frame.bidsilver:GetText()) or 0
	local c = tonumber(Appraiser.Inventory_Frame.bidcopper:GetText()) or 0
	Appraiser.ActiveSellingItem.customprice_unit_bid = (c+s*100+g*100*100)/countForSellCalc

	local g = tonumber(Appraiser.Inventory_Frame.buyoutgold:GetText()) or 0
	local s = tonumber(Appraiser.Inventory_Frame.buyoutsilver:GetText()) or 0
	local c = tonumber(Appraiser.Inventory_Frame.buyoutcopper:GetText()) or 0
	Appraiser.ActiveSellingItem.customprice_unit_buy = (c+s*100+g*100*100)/countForSellCalc

	if Appraiser.ActiveSellingItem.customprice_unit_bid>Appraiser.ActiveSellingItem.customprice_unit_buy then
		Appraiser.ActiveSellingItem.customprice_unit_buy = Appraiser.ActiveSellingItem.customprice_unit_bid
	end

	Appraiser:UpdateSellPriceFields()
end

function Appraiser:SetUndercutToAuction(row)
	if not row.item then return end
	Appraiser.ActiveSellingItem.auction = row.item
	Appraiser.ActiveSellingItem.customprice = nil
	Appraiser:UpdateSellPriceFields()
	for i,v in pairs(Appraiser.Inventory_Frame.InventoryAuctionList.rows) do if v.item then v.item.active = false end end
	row.item.active = true
	Appraiser:Update()
end

function Appraiser:UpdateStackFields()
	self.Inventory_Frame.stacksize:SetText(self.ActiveSellingItem.stacksize)
	self.Inventory_Frame.stackcount:SetText(self.ActiveSellingItem.stackcount)
	self.needToRetooltip=true
end

function Appraiser:UpdateStackCountsFromFields()
	Appraiser.ActiveSellingItem.stacksize = tonumber(Appraiser.Inventory_Frame.stacksize:GetText()) or 1
	Appraiser.ActiveSellingItem.stackcount = tonumber(Appraiser.Inventory_Frame.stackcount:GetText()) or 1
	self.needToRetooltip=true
	Appraiser:UpdateSellPriceFields()
end

function Appraiser:UpdateStackSize__()
	if Appraiser.Inventory_Frame.stacksize:HasFocus() and Appraiser.Inventory_Frame.stacksize:GetText()=="" then return end
	local _,_,maxcount = Appraiser:GetMaxSellStack(Appraiser.ActiveSellingItem)
	local old_stacksize = min(Appraiser.ActiveSellingItem.stacksize,maxcount)
	local old_stackcount = min(Appraiser.ActiveSellingItem.stackcount,maxcount)
	local new_stacksize = max(1,size or tonumber(Appraiser.Inventory_Frame.stacksize:GetText()) or 1)
	local new_stacksize_orig = new_stacksize
	while old_stacksize*old_stackcount>maxcount and old_stackcount>0 do
		old_stackcount=old_stackcount-1
		Appraiser.ActiveSellingItem.stackcount=old_stackcount
		self.Inventory_Frame.stackcount:SetText(self.ActiveSellingItem.stackcount)
	end  -- reduce count if it's already too high

	new_stacksize = math.min(new_stacksize,Appraiser.ActiveSellingItem.maxStack or 9999,math.floor(maxcount/old_stackcount)) -- make sure they are not trying to sell more than they own
	Appraiser.ActiveSellingItem.stacksize = new_stacksize

	if new_stacksize_orig==new_stacksize then
		ZGV:Debug("&gold UpdateStackSize: %d x |cffffddff%d|r x %s.",old_stackcount,new_stacksize,Appraiser.ActiveSellingItem.name)
	else
		ZGV:Debug("&gold UpdateStackSize: %d x |cffffddff%d|r x %s? max is %d x |cffffddff%d|r (only %d in bags)", old_stackcount,new_stacksize_orig,Appraiser.ActiveSellingItem.name, old_stackcount,new_stacksize,maxcount)
	end

	self:UpdateStackFields()
	self:UpdateAuctionCost()
	self:UpdateSellPriceFields()
end

function Appraiser:UpdateStackCount__(count)
	if Appraiser.Inventory_Frame.stackcount:HasFocus() and Appraiser.Inventory_Frame.stackcount:GetText()=="" and not count then return end
	local _,_,maxcount = Appraiser:GetMaxSellStack(Appraiser.ActiveSellingItem)
	local old_stacksize = min(Appraiser.ActiveSellingItem.stacksize,maxcount)
	local old_stackcount = min(Appraiser.ActiveSellingItem.stackcount,maxcount)
	local new_stackcount = max(1,count or tonumber(Appraiser.Inventory_Frame.stackcount:GetText()) or 1)
	local new_stackcount_orig = new_stackcount
	while old_stacksize*old_stackcount>maxcount and old_stacksize>0 do old_stacksize=old_stacksize-1 end  -- reduce size if it's already too high

	new_stackcount = math.min(new_stackcount,Appraiser.ActiveSellingItem.maxStack or 9999,math.floor(maxcount/old_stacksize)) -- make sure they are not trying to sell more than they own
	Appraiser.ActiveSellingItem.stackcount = new_stackcount

	if new_stackcount_orig==new_stackcount then
		ZGV:Debug("&gold UpdateStackCount: |cffffddff%d|r x %d x %s.",new_stackcount,old_stacksize,Appraiser.ActiveSellingItem.name)
	else
		ZGV:Debug("&gold UpdateStackCount: |cffffddff%d|r x %d x %s? max is |cffffddff%d|r x %d (only %d in bags)",new_stackcount_orig,old_stacksize,Appraiser.ActiveSellingItem.name, new_stackcount,old_stacksize, maxcount)
	end

	self:UpdateStackFields()
	self:UpdateAuctionCost()
	self:UpdateSellPriceFields()
end

function Appraiser:SetMaxStackSize()
	local item = Appraiser.ActiveSellingItem
	if not item then return end
	local _,_,maxstack = Appraiser:GetMaxSellStack(item)
	local invcount = GetItemCount(item.itemid)
	if IsShiftKeyDown() then
		if item.stacksize==maxstack then
			item.stacksize=invcount
		else
			item.stacksize=maxstack
		end
		item.stackcount=1
	else
		item.stacksize=max(1,min(maxstack,floor(invcount/item.stackcount)))
	end
	self:UpdateStackFields()
	self:UpdateSellPriceFields()
	self:UpdateNow()
end

function Appraiser:SetMaxStackCount()
	local item = Appraiser.ActiveSellingItem
	if not item then return end
	local invcount = GetItemCount(item.itemid)
	item.stackcount=max(1,floor(invcount/item.stacksize))
	if item.stackcount==1 and item.stacksize>invcount then self:SetMaxStackSize() end
	self:UpdateStackFields()
	self:UpdateSellPriceFields()
	self:UpdateNow()
end

function Appraiser:SetSellAucMode()
	ZGV.db.profile.aucmode = self.Inventory_Frame.aucmodelgroup:GetValue()
	self.Inventory_Frame.bidlabel:SetText("Bid / "..ZGV.db.profile.aucmode)
	self.Inventory_Frame.buyoutlabel:SetText("Buyout / "..ZGV.db.profile.aucmode)
	if ZGV.db.profile.aucmode=="unit" then
		self.Inventory_Frame.InventoryAuctionList.col_uprice:SetTextColor(1,1,1,1)
		self.Inventory_Frame.InventoryAuctionList.col_sprice:SetTextColor(0.5,0.5,0.5,1)
	else
		self.Inventory_Frame.InventoryAuctionList.col_uprice:SetTextColor(0.5,0.5,0.5,1)
		self.Inventory_Frame.InventoryAuctionList.col_sprice:SetTextColor(1,1,1,1)
	end
	self:UpdateSellPriceFields()
	self:SetSellHistoricalLabels()
	self.needToUpdate = true
end

function Appraiser:GetMaxSellStack(item)
	if not item.maxStack then
		local _, _, _, _, _, class, subclass, maxStack, _, _, _ = ZGV:GetItemInfo(item.itemid)
		item.maxStack = maxStack
	end

	local itemCountTotal = item.count

	-- post in quarter-maxstacks
	stacksize = max(1,min(ceil((item.maxStack or 1)/4),itemCountTotal))
	stackcount = max(1,floor(itemCountTotal/stacksize))

	if item.single_locked then
		-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
		stacksize=1
		stackcount=1
		itemCountTotal=1
		item.maxStack=1
	end

	--ZGV:Debug("&gold GetSellStack: %dx%d of %d",stackcount,stacksize,itemCountTotal)

	return stacksize, stackcount, itemCountTotal
end

function Appraiser:GetUserSellStack(item)
	local size,count = item.stacksize,item.stackcount
	if not size then size,count = self:GetMaxSellStack(item) end
	return size,count
end


function Appraiser:WipeSellHistoricalLabels()
	Appraiser.Inventory_Frame.demand:SetText("n/a")
	Appraiser.Inventory_Frame.estval:SetText("n/a")
	Appraiser.Inventory_Frame.histhigh:SetText("n/a")
	Appraiser.Inventory_Frame.histlow:SetText("n/a")
	Appraiser.Inventory_Frame.histmed:SetText("n/a")

	Appraiser.Inventory_Frame.activeStatus:SetText("")
	Appraiser.Inventory_Frame.auctionslabel:SetText("")
	Appraiser.Inventory_Frame.undercutlabel:Hide()
	Appraiser.Inventory_Frame.activeStatus:SetText("")

	for i,v in pairs(Appraiser.Inventory_Frame.InventoryAuctionList.rows) do if v.item then v.item.active = false end end
end

function Appraiser:SetSellHistoricalLabels()
	if not Appraiser.ActiveSellingItem then return end
	local itemid = Appraiser.ActiveSellingItem.itemid
	local countForSellCalc = 1
	if ZGV.db.profile.aucmode == "stack" then
		countForSellCalc = Appraiser.ActiveSellingItem.stacksize or 1
		if countForSellCalc == 0 then
			countForSellCalc = Appraiser:GetMaxSellStack(Appraiser.ActiveSellingItem) or 1
		end
	end

	local selling_price, unit_price, empty = ZGVG:GetSellPrice(itemid,countForSellCalc)
	local priceStatus = ZGVG:GetPriceStatus(itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
	local statusColor = ZGV.ArrayToStringColor(priceStatus.stagnant and priceStatus.stagcolor or priceStatus.sellcolor)
	local statusText = priceStatus.name..(priceStatus.stagnant and ", item stagnant" or "")
	if priceStatus.stagnant then
		Appraiser.Inventory_Frame.activeStatus:SetFont(FONT,11)
	else
		Appraiser.Inventory_Frame.activeStatus:SetFont(FONT,12)
	end
	Appraiser.Inventory_Frame.activeStatus:SetText(statusColor..statusText)

	local trend,histlow,histmed,histhigh,demand,estval,p_lo,p_md,p_hi,sell

	trend = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemid]
	if trend then
		histlow = ZGV.GetMoneyString(trend.p_lo*countForSellCalc,3) or "unknown"
		histmed = ZGV.GetMoneyString(trend.p_md*countForSellCalc,3) or "unknown"
		histhigh = ZGV.GetMoneyString(trend.p_hi*countForSellCalc,3) or "unknown"
		demand = trend.sold or trend.q_md or (trend.q_lo + trend.q_hi)/2
		estval = ZGV.GetMoneyString(selling_price) or "unknown"
	else
		p_lo,p_md,p_hi,demand,sell = "unknown","unknown","unknown","unknown","unknown"
	end

	Appraiser.Inventory_Frame.demand:SetText(demand.." / day")
	Appraiser.Inventory_Frame.estval:SetText(estval)
	Appraiser.Inventory_Frame.histhigh:SetText(histhigh)
	Appraiser.Inventory_Frame.histlow:SetText(histlow)
	Appraiser.Inventory_Frame.histmed:SetText(histmed)
end

function Appraiser:WipeSellPricingLabels()
	Appraiser.Inventory_Frame.bidgold:SetText(0)
	Appraiser.Inventory_Frame.bidsilver:SetText(0)
	Appraiser.Inventory_Frame.bidcopper:SetText(0)

	Appraiser.Inventory_Frame.buyoutgold:SetText(0)
	Appraiser.Inventory_Frame.buyoutsilver:SetText(0)
	Appraiser.Inventory_Frame.buyoutcopper:SetText(0)

	Appraiser.Inventory_Frame.stacksize:SetText(0)
	Appraiser.Inventory_Frame.stackcount:SetText(0)

	Appraiser.Inventory_Frame.activeIcon:SetTexture("")
	Appraiser.Inventory_Frame.activeName:SetText("No item selected")
	Appraiser.Inventory_Frame.activeIcon:SetWidth(0)
	Appraiser.Inventory_Frame.activeName:SetWidth(240)
	Appraiser.Inventory_Frame.activeName:SetPoint("TOPLEFT",Appraiser.Inventory_Frame,"TOPLEFT",385,-10)
end


function Appraiser:SetSellFields()
	if not Appraiser.ActiveSellingItem then return end

	local itemid = self.ActiveSellingItem.itemid
	local stacksize, stackcount 

	stacksize, stackcount = Appraiser:GetUserSellStack(Appraiser.ActiveSellingItem)
	Appraiser.Inventory_Frame.stacksize:SetText(stacksize)
	Appraiser.Inventory_Frame.stackcount:SetText(stackcount)
	Appraiser.ActiveSellingItem.stacksize = stacksize
	Appraiser.ActiveSellingItem.stackcount = stackcount

	Appraiser:UpdateSellPriceFields()
	Appraiser:UpdateAuctionCost(stacksize,stackcount)
end

function Appraiser:ResetSellFields()
	Appraiser.ActiveSellingItem.customprice=nil 
	Appraiser.ActiveSellingItem.auction=nil
	Appraiser:SetSellFields()
end


function Appraiser:UpdateSellPriceFields()
	if not Appraiser.ActiveSellingItem then return end

	local bid_price_gold,bid_price_silver,bid_price_copper,selling_price_bid
	local buy_price_gold,buy_price_silver,buy_price_copper,selling_price_buy

	
	selling_price_buy,selling_price_bid = Appraiser:GetSellPriceForStacksize(ZGV.db.profile.aucmode)

	bid_price_gold =   ("%d"):format(tostring(selling_price_bid):sub(0, -5) or 0)
	bid_price_silver = ("%d"):format(tostring(selling_price_bid):sub(-4, -3) or 0)
	bid_price_copper = ("%d"):format(tostring(selling_price_bid):sub(-2, -1) or 0)

	buy_price_gold =   ("%d"):format(tostring(selling_price_buy):sub(0, -5) or 0)
	buy_price_silver = ("%d"):format(tostring(selling_price_buy):sub(-4, -3) or 0)
	buy_price_copper = ("%d"):format(tostring(selling_price_buy):sub(-2, -1) or 0)

	Appraiser.Inventory_Frame.bidgold:SetText(bid_price_gold)
	Appraiser.Inventory_Frame.bidsilver:SetText(bid_price_silver)
	Appraiser.Inventory_Frame.bidcopper:SetText(bid_price_copper)

	Appraiser.Inventory_Frame.buyoutgold:SetText(buy_price_gold)
	Appraiser.Inventory_Frame.buyoutsilver:SetText(buy_price_silver)
	Appraiser.Inventory_Frame.buyoutcopper:SetText(buy_price_copper)
end

function Appraiser:GetSellPriceForStacksize(mode)
	local item = Appraiser.ActiveSellingItem

	local countForSellCalc, selling_price, auction_price, selling_price_buy, selling_price_bid
	local stacksize, _ = Appraiser:GetUserSellStack(Appraiser.ActiveSellingItem)


	countForSellCalc = (mode=="stack") and stacksize or 1

	if item.customprice then
		selling_price_bid = item.customprice_unit_bid
		selling_price_buy = item.customprice_unit_buy
	elseif item.auction then
		auction_price = item.auction.unit_price

		if item.auction.own_auction==1 then -- don't undercut own auctions
			selling_price_buy = auction_price
			selling_price_bid = auction_price
		else
			if ZGV.db.profile.appraiser_undercut == 0 then
				selling_price = (auction_price or 0)
			elseif ZGV.db.profile.appraiser_undercut > 10000 then  -- gold value
				selling_price = max(1,(auction_price or 0) - (ZGV.db.profile.appraiser_undercut-10000))
			else -- percent
				selling_price = (auction_price or 0) * (1-(ZGV.db.profile.appraiser_undercut/100))
			end
			selling_price_buy = math.floor(selling_price)
			selling_price_bid = selling_price_buy
		end
	else
		selling_price_buy = math.floor(ZGVG:GetSellPrice(item.itemid,1))
		selling_price_bid = selling_price_buy
	end

	selling_price_buy = math.floor(selling_price_buy)*countForSellCalc
	selling_price_bid = math.floor(selling_price_bid)*countForSellCalc

	return selling_price_buy,selling_price_bid
end

function Appraiser:StartAuction()
	-- do not switch items while any scan is running
	if ZGV.Gold.Scan.state~="SS_IDLE" then return end

	if not Appraiser.ActiveSellingItem then return end

	local stack_size, stack_count = Appraiser:GetUserSellStack(Appraiser.ActiveSellingItem)
	if stack_size*stack_count>Appraiser.GetTrueItemCount(Appraiser.ActiveSellingItem.itemid,Appraiser.ActiveSellingItem.link) then  ZGV:Print(("You don't have %d of %s in your bags."):format(stack_size*stack_count,Appraiser.ActiveSellingItem.name))  return  end  -- this should never be reached, actually.
	Appraiser.SellingInProgress = true

	local selling_price_buy,selling_price_bid = Appraiser:GetSellPriceForStacksize("stack")
	local auction_time = Appraiser.Inventory_Frame.durationdropdown:GetCurrentSelectedItemValue()

	ZGV:Print("Auction Posting: "..stack_count.." x "..stack_size.." x "..Appraiser.ActiveSellingItem.name.." for "..ZGV.GetMoneyString(selling_price_buy).." per stack.")
	StartAuction(selling_price_bid, selling_price_buy, auction_time, stack_size, stack_count)

	ZGV.Gold.Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid] = ZGV.Gold.Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid] or {}

	for count=1, (stack_count or 0) do
		table.insert(ZGV.Gold.Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid],{stack_size,selling_price_buy,selling_price_buy/stack_size,"1",Appraiser.ActiveSellingItem.link})
	end
	ZGV.Gold.Appraiser:GetInventoryAuctions()
end

function Appraiser:InventoryRowMenu(row)
	if not row.item then return end

	Appraiser.ActiveSearch = row.item.itemid

	if not Appraiser.Inventory_Frame.InventoryMenu then Appraiser.Inventory_Frame.InventoryMenu = CreateFrame("FRAME","AT_Inventory_Menu",Appraiser.Inventory_Frame,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(Appraiser.Inventory_Frame.InventoryMenu, 0, 0, "TOP", row, "BOTTOM")
	local menu = {}

	tinsert(menu,{
			text = "Hide this item",
			tooltipText = "No longer show this item in Selling lists",
			tooltipOnButton=1,
			func = function() 
				ZGV.db.char.AThiddenitems[row.item.itemid]=true
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	
	EasyFork(menu,Appraiser.Inventory_Frame.InventoryMenu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(Appraiser.Inventory_Frame.InventoryMenu, 300)
end

function Appraiser:UpdateAuctionCost(stacksize,stackcount)
	if not Appraiser.ActiveSellingItem then return end

	if not stacksize then stacksize = tonumber(Appraiser.Inventory_Frame.stacksize:GetText()) end
	if not stackcount then stackcount = tonumber(Appraiser.Inventory_Frame.stackcount:GetText()) end
	local auction_time = Appraiser.Inventory_Frame.durationdropdown:GetCurrentSelectedItemValue()

	AuctionsStackSizeEntry:SetText(stacksize or 0)
	AuctionsNumStacksEntry:SetText(stackcount or 0)

	local deposit = CalculateAuctionDeposit(auction_time)
	Appraiser.Inventory_Frame.aucpostfee:SetText("Deposit: "..ZGV.GetMoneyString(deposit or 0))

	Appraiser.LastAuctionTime = auction_time
end

function Appraiser:SelectNextSellingItem()
	if not ZGVG.Scan:CanScanByName() then return false end
	local index,nextindex,previndex = nil,nil,nil
	local refresh = false -- click new row only when we are switching to new item

	ZGV:Debug("SelectNextSellingItem, lastselling=%s, called by %s",self.LastSellingItem, debugstack(2,1,0))

	if not self.LastSellingItem then
		index = 1
		refresh = true
	else
		for i,item in pairs(Appraiser.InventoryItems) do 
			if item.link == self.LastSellingItem and item.count>0 then index = i end
			if Appraiser.NextSellingItemID and item.itemid == Appraiser.NextSellingItemID then nextindex = i end
		end

		if not index then
			if nextindex then 
				index=nextindex 
			else
				index=1
			end
			refresh = true
		end
	end

	if not refresh and not GetAuctionSellItemInfo() then
		local itemid=GetContainerItemID(Appraiser.InventoryItems[index].bag, Appraiser.InventoryItems[index].slot)

		if not itemid then
			-- sigh, item is not there, most likely pet that we had more than one of, and one got sold.
			-- find where the other one is
			for bag=0, NUM_BAG_SLOTS do
				for slot=1, GetContainerNumSlots(bag) do
					local itemlink = cached_GetContainerItemLink(bag, slot) 
					if itemlink and itemlink==self.LastSellingItem then
						Appraiser.InventoryItems[index].bag=bag
						Appraiser.InventoryItems[index].slot=slot
						break
					end
				end
			end
		end

		PickupContainerItem(Appraiser.InventoryItems[index].bag, Appraiser.InventoryItems[index].slot)
		ClickAuctionSellItemButton()
		ClearCursor()
	end

	if refresh then
		Appraiser.SellingInProgress = false
		Appraiser:ActivateSellItem(Appraiser.InventoryItems[index],true)
	end
	Appraiser:SetSellFields()
	self.needToSelectNextSellingItem = nil
end

