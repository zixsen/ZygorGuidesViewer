local ZGV = ZygorGuidesViewer
if not ZGV then return end

local ZGVG=ZGV.Gold

local L = ZGV.L
local CHAIN = ZGV.ChainCall

if not ZGV.Gold.Appraiser then ZGV.Gold.Appraiser = {} end
local Appraiser = ZGV.Gold.Appraiser
LibStub("AceHook-3.0"):Embed(Appraiser)


local GOLD_FORMAT_TYPE=3
local APPRAISER_PLAYER_NAME = UnitName("player")

local BUYOUT_TIMEOUT = 5

Appraiser.RawDataTable = {}

Appraiser.FlatSellItems = {}

Appraiser.OutdatedTime = 60*3

local lastUpdate
local old_currow
function Appraiser:Update()
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end
	if lastUpdate==GetTime() then return end  -- not twice per frame, please.
	lastUpdate=GetTime()

	local InventoryList = Appraiser.Inventory_Frame.InventoryList
	local InventoryAuctionList = Appraiser.Inventory_Frame.InventoryAuctionList
	local ShoppingList = Appraiser.Buy_Frame.ShoppingList
	local ShoppingAuctionList = Appraiser.Buy_Frame.ShoppingAuctionList
	local SearchResultList = Appraiser.Buy_Frame.containerSearch.SearchResultList

	self.lastUpdated = debugprofilestop()

	if Appraiser.MainFrame.hideTooltip then
		GameTooltip:Hide()
		Appraiser.MainFrame.hideTooltip = false
	end

	local rowoff=0

	table.wipe(self.FlatSellItems)
	self.SellItems = self.SellItems or {}
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	-- Initialise
	if self.ActiveTab == "Inventory" then
		
		Appraiser:GetInventoryItems()

		-- Auctions are added when item in inventory list is clicked
		self.InventoryAuctions = self.InventoryAuctions or {}

		for ii,invItem in ipairs(self.InventoryItems) do
			if invItem.count <= 0 or ZGV.db.char.AThiddenitems[invItem.itemid] then 
				table.remove(self.InventoryItems,ii)
			else
				Appraiser:UpdateItemInInventory(invItem)
			end
		end
	elseif self.ActiveTab == "Buy" then
		-- Adding items from guide moved to guide step entry

		-- Remove items that were bought out
		for indexBuy,v in pairs(ZGV.db.char.GGbuyitems) do
			if ZGV.db.char.GGbuyitems[indexBuy].count <= 0 then
				table.remove(ZGV.db.char.GGbuyitems,indexBuy)
				if v==Appraiser.SelectedShoppingItem then
					ZGV:Debug("Removed GG item: %s, selecting something else.",v.name)
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				end
			end
		end
		for indexGuide,v in pairs(self.GuideBuyItems) do
			if self.GuideBuyItems[indexGuide].count <= 0 then
				table.remove(self.GuideBuyItems,indexGuide)
				if v==Appraiser.SelectedShoppingItem then
					ZGV:Debug("Removed guide item: %s, selecting something else.",v.name)
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				end
			end
		end
		for indexManual,v in pairs(self.ManualBuyItems) do
			if self.ManualBuyItems[indexManual].count and self.ManualBuyItems[indexManual].count <= 0 then
				table.remove(self.ManualBuyItems,indexManual)
				if v==Appraiser.SelectedShoppingItem then
					ZGV:Debug("Removed manual item: %s, selecting something else.",v.name)
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				end
			end
		end
		
		self.ShoppingAuctions = self.ShoppingAuctions or {}

		-- Merge into single table, maintaining order in which items were added
		self.ShoppingItems = {}
		local indexMerged = 1
		for indexBuy = 1,#ZGV.db.char.GGbuyitems do
			self.ShoppingItems[indexMerged] = ZGV.db.char.GGbuyitems[indexBuy]
			local tempitem = self.ShoppingItems[indexMerged]
			if not (tempitem.displayName or tempitem.name) then 
				tempitem.name, _, _, _, _, _, _, _, _, tempitem.icon = ZGV:GetItemInfo(tempitem.itemid)
			end
			indexMerged = indexMerged + 1
		end

		if #ZGV.db.char.GGbuyitems>0 and (#self.ManualBuyItems>0 or #self.GuideBuyItems>0) then
			self.ShoppingItems[indexMerged] = "separator"
			indexMerged = indexMerged + 1
		end

		for indexGuide,v in pairs(self.GuideBuyItems) do
			self.ShoppingItems[indexMerged] = self.GuideBuyItems[indexGuide]
			local tempitem = self.ShoppingItems[indexMerged]
			if not (tempitem.displayName or tempitem.name) then 
				tempitem.name, _, _, _, _, _, _, _, _, tempitem.icon = ZGV:GetItemInfo(tempitem.itemid)
			end
			indexMerged = indexMerged + 1
		end

		if #self.ManualBuyItems>0 and #self.GuideBuyItems>0 then
			self.ShoppingItems[indexMerged] = "separator"
			indexMerged = indexMerged + 1
		end

		for itemlink,itemdata in pairs(self.ManualBuyItems) do
			self.ShoppingItems[indexMerged] = itemdata
			local unit_price = ZGV.Gold.Scan:GetPrice(itemdata.itemid)
			local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemdata.itemid,unit_price)
			itemdata.statusId = priceStatus.statusId
			itemdata.statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.buysuggestion)
			itemdata.statusIcon = priceStatus.buyicon or priceStatus.icon -- coords
			itemdata.isStagnant = priceStatus.stagnant
			itemdata.statusColor = isStagnant and priceStatus.stagcolor or priceStatus.buycolor
			indexMerged = indexMerged + 1
		end

		self.ShoppingAddAuctions = self.ShoppingAddAuctions or {}
	end

	-- Sort
	if self.ActiveTab == "Inventory" then
		if not Appraiser.SellingInProgress then 
			sort(self.InventoryItems,Appraiser.sort_inventory)
		end
		sort(self.InventoryAuctions,Appraiser.sort_inventoryAuctions)
		local currow = self:GetSellingItemIndex(self.ActiveSellingItem)
		if old_currow~=currow then
			old_currow=currow
			ZGV:ScheduleTimer(function() Appraiser:ScrollToSellingItem() end,0)
		end
		ZGV:Debug("Update about to RefreshSelling")
		Appraiser:RefreshSellingItem()
	elseif self.ActiveTab == "Buy" then
		sort(self.ShoppingAuctions,Appraiser.sort_shoppingAuctions)
		sort(self.ShoppingAddAuctions,Appraiser.sort_shoppingAddAuctions)
	end

	-- Display
	if self.ActiveTab == "Inventory" then
		local IL_RowNum=0
		local IA_RowNum=0

		local INVENTORY_ROW_COUNT = InventoryList:CountRows()
		local INVENTORY_AUCTION_ROW_COUNT = InventoryAuctionList:CountRows()

		Appraiser.InventoryOffset = max(0,min(Appraiser.InventoryOffset,#self.InventoryItems-INVENTORY_ROW_COUNT))
		IL_RowOff=Appraiser.InventoryOffset
		for ii,invItem in ipairs(self.InventoryItems) do 
			IL_RowNum = ii-IL_RowOff
			if IL_RowNum>0 and IL_RowNum<INVENTORY_ROW_COUNT+1 then 
				local row = InventoryList.rows[IL_RowNum]
				row.icon:SetTexture(invItem.icon)
				color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end
				row.name:SetText(invItem.count.." "..color..(invItem.displayName or invItem.name or "..."))
				row.status:SetTexCoord(unpack(invItem.statusIcon))
				row.status:SetVertexColor(unpack(invItem.statusColor))

				if invItem.count > 0 then
					if ZGV.db.profile.aucmode == "unit" then
						row.price:SetText(ZGV.GetMoneyString(invItem.price/invItem.count or 0))
					else
						row.price:SetText(ZGV.GetMoneyString(invItem.price or 0))
					end
				end
				if invItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = invItem
				row:Show()
			end
		end
		InventoryList.scrollbar:TotalValue(#self.InventoryItems)
		InventoryList.scrollbar:SetValue(IL_RowOff)

		Appraiser.InventoryAuctionOffset = max(0,min(Appraiser.InventoryAuctionOffset,#self.InventoryAuctions-INVENTORY_AUCTION_ROW_COUNT))
		IA_RowOff=Appraiser.InventoryAuctionOffset
		for ii,aucItem in ipairs(self.InventoryAuctions) do 
			IA_RowNum = ii-IA_RowOff
			if IA_RowNum>0 and IA_RowNum<INVENTORY_AUCTION_ROW_COUNT+1 then 
				local row, color, own, desc, unitcolor, stackcolor, unitcolormode, stackcolormode
				row = InventoryAuctionList.rows[IA_RowNum]
				color = ZGV.ArrayToStringColor(aucItem.stack_price > 0 and ZGVG:GetPriceStatus(aucItem.itemid,aucItem.unit_price).sellcolor or ZGVG:GetPriceStatus(aucItem.itemid,aucItem.unit_price).stagcolor)
				unitcolor,unitcolormode = (ZGV.db.profile.aucmode == "stack" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "stack" and 5 -- mode for GetMoneyString
				stackcolor,stackcolormode = (ZGV.db.profile.aucmode == "unit" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "unit" and 5 -- mode for GetMoneyString
				own = (aucItem.own_auction==1 and "your ") or ""
				row.icon:SetTexture(aucItem.icon)
				row.name:SetText(own.. color.. aucItem.count.." stack"..(aucItem.count>1 and "s" or "").." of ".. aucItem.stack_size)
				row.sprice:SetText(stackcolor..(aucItem.stack_price > 0 and ZGV.GetMoneyString(aucItem.stack_price,stackcolormode) or "no buyout"))
				row.uprice:SetText(unitcolor..(aucItem.unit_price > 0 and ZGV.GetMoneyString(aucItem.unit_price,unitcolormode) or "no buyout"))
				if aucItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = aucItem
				row:Show()
			end
		end

		InventoryAuctionList.scrollbar:TotalValue(#self.InventoryAuctions)
		InventoryAuctionList.scrollbar:SetValue(IA_RowOff)
	
		for r=IL_RowNum+1,INVENTORY_ROW_COUNT do InventoryList.rows[r]:Hide() InventoryList.rows[r].item=nil end
		for r=IA_RowNum+1,INVENTORY_AUCTION_ROW_COUNT do InventoryAuctionList.rows[r]:Hide() InventoryAuctionList.rows[r].item=nil end
	
	elseif self.ActiveTab == "Buy" then
		local SL_RowNum=0
		local SA_RowNum=0
		local SR_RowNum=0

		local SHOPPING_ROW_COUNT = ShoppingList:CountRows()
		local SHOPPING_AUCTION_ROW_COUNT = ShoppingAuctionList:CountRows()
		local SHOPPING_SEARCH_ROW_COUNT = SearchResultList:CountRows()

		--- Shopping section ---------------------------------------------------------------------------------
		Appraiser.ShoppingOffset = max(0,min(Appraiser.ShoppingOffset,#self.ShoppingItems-SHOPPING_ROW_COUNT))
		IL_RowOff=Appraiser.ShoppingOffset
		for ii,invItem in ipairs(self.ShoppingItems) do 
			SL_RowNum = ii-IL_RowOff
			if SL_RowNum>0 and SL_RowNum<SHOPPING_ROW_COUNT+1 then 
				local row = ShoppingList.rows[SL_RowNum]
				if invItem=="separator" then
					row.icon:SetTexture()
					row.name:SetText()
					row.price:SetText()
					row.tooltip = nil
					row:SetNormalBackdropColor(0,0,0,0)
					row:SetBackdropBorderColor(0,0,0,0)
					row.back:SetTexture(ZGV.DIR.."\\Skins\\separator")
					row.status:Hide()
					row:Disable()
					--row.remove:Hide()
				else
					row.back:SetTexture()
					row.status:Show()
					--row.remove:Show()

					row.icon:SetTexture(invItem.icon)
					color = ""
					if invItem.quality then
						local _,_,_, hex = GetItemQualityColor(invItem.quality);
						color="|c"..hex
					end
					local pricetext,pricealpha,tooltip = Appraiser:GetShoppingItemStatus(invItem)
					row.price:SetText(pricetext)
					row.price:SetAlpha(pricealpha)
					row.tooltip = tooltip
					
					row.name:SetText((invItem.count or "").." "..color..(invItem.displayName or invItem.name or "..."))
					row.status:SetTexCoord(unpack(invItem.statusIcon))
					row.status:SetVertexColor(unpack(invItem.statusColor))

					if invItem.active then
						row:SetNormalBackdropColor(0.3,0.3,0.3,1)
					else
						row:SetNormalBackdropColor(0,0,0,0)
					end
					row:Enable()

					row.item = invItem
				end
				row:Show()
			end
		end
		ShoppingList.scrollbar:TotalValue(#self.ShoppingItems)
		ShoppingList.scrollbar:SetValue(IL_RowOff)

		Appraiser.ShoppingAuctionOffset = max(0,min(Appraiser.ShoppingAuctionOffset,#self.ShoppingAuctions-SHOPPING_AUCTION_ROW_COUNT))
		IA_RowOff=Appraiser.ShoppingAuctionOffset
		for ii,auction in ipairs(self.ShoppingAuctions) do 
			SA_RowNum = ii-IA_RowOff
			if SA_RowNum>0 and SA_RowNum<SHOPPING_AUCTION_ROW_COUNT+1 then 
				local row, color, own, desc, unitcolor, stackcolor, unitcolormode, stackcolormode
				row = ShoppingAuctionList.rows[SA_RowNum]
				color = ZGV.ArrayToStringColor(auction.stack_price > 0 and ZGVG:GetPriceStatus(auction.itemid,auction.unit_price).buycolor or ZGVG:GetPriceStatus(auction.itemid,auction.unit_price).stagcolor)
				unitcolor,unitcolormode = (ZGV.db.profile.aucmode == "stack" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "stack" and 5
				stackcolor,stackcolormode = (ZGV.db.profile.aucmode == "unit" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "unit" and 5
				own = (auction.own_auction==1 and "your ") or ""
				row.icon:SetTexture(auction.icon)
				row.name:SetText(own..color..auction.count.." stacks of "..auction.stack_size)
				row.sprice:SetText(stackcolor..(auction.stack_price > 0 and ZGV.GetMoneyString(auction.stack_price,stackcolormode) or "no buyout"))
				row.uprice:SetText(unitcolor..(auction.unit_price > 0 and ZGV.GetMoneyString(auction.unit_price,unitcolormode) or "no buyout"))

				-- does this row's data match any selected auction? It could match many; don't assume it's the first.
				local foundByIndex=false
				for index,aucraw in ipairs(self.RawDataTable[auction.itemid]) do
					if tonumber(aucraw[1])==auction.stack_size and tonumber(aucraw[2])==auction.stack_price then
						--if self.SelectedBuyAuction and self.SelectedBuyAuction.buyoutindex==index then foundByIndex=true break end
						if self.SelectedShoppingItem and self.SelectedShoppingItem.buyoutindex==index then foundByIndex=true break end
					end
				end

				if --[[auction.active or--]] foundByIndex then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.auction = auction
				row:Show()
				row:Enable()
			end
		end

		ShoppingAuctionList.scrollbar:TotalValue(#self.ShoppingAuctions)
		ShoppingAuctionList.scrollbar:SetValue(IA_RowOff)

	
		--- Search section ---------------------------------------------------------------------------------
		Appraiser.SearchResultsOffset = max(0,min(Appraiser.SearchResultsOffset,#self.ShoppingAddAuctions-SHOPPING_SEARCH_ROW_COUNT))
		SR_RowOff=Appraiser.SearchResultsOffset
		for ii,addItem in ipairs(self.ShoppingAddAuctions) do 
			SR_RowNum = ii-SR_RowOff
			if SR_RowNum>0 and SR_RowNum<SHOPPING_SEARCH_ROW_COUNT+1 then 
				local row, color, own, desc, unitcolor, stackcolor, unitcolormode, stackcolormode
				row = SearchResultList.rows[SR_RowNum]
				row.icon:SetTexture(addItem.icon)
				row.name:SetText(addItem.itemlink)
				if addItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = addItem
				row:Show()
				row:Enable()
			end
		end

		SearchResultList.scrollbar:TotalValue(#self.ShoppingAddAuctions)
		SearchResultList.scrollbar:SetValue(SR_RowOff)

		for r=SL_RowNum+1,SHOPPING_ROW_COUNT do ShoppingList.rows[r]:Hide() end
		for r=SA_RowNum+1,SHOPPING_AUCTION_ROW_COUNT do ShoppingAuctionList.rows[r]:Hide() end
		for r=SR_RowNum+1,SHOPPING_SEARCH_ROW_COUNT do SearchResultList.rows[r]:Hide() end
	end

	self.needToUpdate = false
end

function Appraiser:IsInCurrentDeals(id)
	for indexBuy,v in pairs(ZGV.db.char.GGbuyitems) do
		if v.itemid==id then return true end
	end
	for indexManual,v in pairs(self.ManualBuyItems) do
		if v.itemid==id then return true end
	end
	return false
end

function Appraiser:Scan(mode)
	if ZGVG.Scan.state~="SS_IDLE" then return end
	Appraiser.SellingInProgress = false
	Appraiser.InventoryItems = Appraiser.InventoryItems or {}

	if (mode=="scanfast" or not mode) and ZGVG.Scan:CanScanFast() then
		ZGVG.Scan:ScanFast()
		Appraiser:UpdateScannedList()
		Appraiser.DoneDeals = {}
		self:UpdateProgressBar()
	elseif mode=="scannew" and ZGVG.Scan:CanScanByName() then 
		Appraiser:GetInventoryItems()
		Appraiser:StartNewItemScan()
	else
		ZGV:Print("Unable to start scanning.")
	end
	self:Update()
end

function Appraiser:StartManualScan()
	if ZGVG.Scan.state~="SS_IDLE" then return end

	ZGV:Debug("&gold Running Manual Scan.")
	Appraiser.SellingInProgress = false

	if self.manualScanning then return end
	self.ScanItems = {}
	self.manualScanning = true
	self.manualScanningTotal = #self.InventoryItems
	self.manualScanningDone = 1
	for i,v in pairs(self.InventoryItems) do
		table.insert(self.ScanItems,v)
	end
	Appraiser:UpdateScannedList()
	Appraiser.manualScanNextItem=true
end

function Appraiser:StartNewItemScan()
	if self.manualScanning then return end
	ZGV:Debug("&gold Running New Item Scan:")
	self.ScanItems = {}
	self.manualScanning = true
	self.manualScanningTotal = 0
	self.manualScanningDone = 1
	for i,v in pairs(self.InventoryItems) do
		if not Appraiser.ScannedItems[v.itemid] then
			table.insert(self.ScanItems,v)
			self.manualScanningTotal = self.manualScanningTotal + 1
			ZGV:Debug("&gold + %s",v.name)
		end
	end
	Appraiser:UpdateScannedList()
	Appraiser.manualScanNextItem=true
end

function Appraiser:ScanNextItem()
	if Appraiser.manualScanning then
		if ZGVG.Scan:CanScanByName() and ZGVG.Scan.state=="SS_IDLE" then
			ZGV:Debug("&gold ScanNextItem manual")
			local item = tremove(Appraiser.ScanItems)
			local options=nil
			if item then
				ZGV:Debug("&gold ScanNextItem for "..item.name)
				Appraiser.manualScanningDone = Appraiser.manualScanningTotal - #Appraiser.ScanItems
				Appraiser.manualScanningName = item.name
				if item.single_locked then options="forcePartial" end -- equipment and pets
				Appraiser.manualScanNextItem=false
				ZGVG.Scan:ScanByName(item.name,item.itemid,options)
				item.pending=true
			else
				ZGV:Debug("&gold ScanNextItem no more.")
				Appraiser.manualScanning = false
				Appraiser.manualScanningName = false
				Appraiser.manualScanningTotal = false
				Appraiser.manualScanningDone = false
				Appraiser.manualScanNextItem=false
			end
			self.scannextitem_msg=false
		else
			if not self.scannextitem_msg then ZGV:Debug("&gold ScanNextItem manual: waiting to scan... (can scan=%s; state=%s)",tostring(ZGVG.Scan:CanScanByName()),ZGVG.Scan.state) end
			self.scannextitem_msg=true
		end
		self:Update()
	elseif Appraiser.manualBuyScanning then
		if ZGVG.Scan:CanScanByName() and ZGVG.Scan.state=="SS_IDLE" then
			ZGV:Debug("&gold ScanNextItem manualbuy")
			local item = tremove(Appraiser.ScanBuyItems)
			local options = nil
			if item then
				Appraiser.manualBuyScanningDone = Appraiser.manualBuyScanningTotal - #Appraiser.ScanBuyItems
				Appraiser.manualBuyScanning = item.name
				Appraiser.ActiveSearch = item.itemid
				Appraiser.ActiveSearchName = item.name
				if item.single_locked or item.sourcemode == 1 or item.sourcemode == 4 then options="forceFullname" end -- equipment and pets
				Appraiser.manualScanNextItem=false
				ZGV:Debug("&gold ScanNextItem for "..item.name..", done=".. Appraiser.manualBuyScanningDone)
				ZGVG.Scan:ScanByName(item.name,item.itemid,options)
				item.pending=true
				item.updated = time()
			else
				ZGV:Debug("&gold ScanNextItem no more.")
				Appraiser.manualBuyScanning = false
				Appraiser.manualBuyScanningTotal = false
				Appraiser.manualBuyScanningDone = false
				Appraiser.ActiveSearch = nil
				Appraiser.ActiveSearchName = nil
				Appraiser.manualScanNextItem=false
			end
			self.scannextitem_msg=false
		else
			if not self.scannextitem_msg then ZGV:Debug("&gold ScanNextItem manualbuy: waiting to scan... (can scan=%s; state=%s)",tostring(ZGVG.Scan:CanScanByName()),ZGVG.Scan.state) end
			self.scannextitem_msg = true
		end
		self:Update()
	else
		Appraiser.manualScanNextItem=false
	end
end

function Appraiser:AbortManualScan()
	Appraiser.ScanBuyItems = {}
	Appraiser.manualBuyScanning = false
	Appraiser.ScanItems = {}
	Appraiser.manualScanning = false
	Appraiser.manualScanNextItem=false
	Appraiser.WaitingForAuctionData=false
	Appraiser.ActiveSearch=nil
	Appraiser.ActiveSearchName=nil
	Appraiser.GoToPage=nil
	Appraiser.AttemptingToBuyout=nil

	ZGV:Debug("&gold EVERYTHING ABORTED.")

	Appraiser:Update()
end

function Appraiser:UpdateScannedList()
	self.ScannedItems = {}
	for i,v in pairs(self.InventoryItems) do
		self.ScannedItems[v.itemid] = v.itemid
	end
end

function Appraiser:SaveScanTable()
	local itemid = Appraiser.ActiveSearch

	if not itemid then return end

	Appraiser.RawDataTable[itemid] = {}
	for i,rawline in pairs(ZGV.Gold.Scan.rawdata) do
		local page,row,itemId,count,buyoutPrice,link,is_own = strsplit("^",rawline)
		Appraiser.RawDataTable[itemid][i] = {count,buyoutPrice,buyoutPrice/count,is_own,link}
	end

	Appraiser.ActiveSearch = nil
	Appraiser.ActiveSearchName = nil

	Appraiser:GetShoppingAuctions()
	Appraiser:Update()
end

function Appraiser:SearchForItem(item)
	local options = nil
	if ZGVG.Scan:CanScanByName() then
		ZGV:Debug("SearchForItem running, from %s",debugstack(2,1,0))
		Appraiser.PendingScanTimer = nil
		Appraiser.ScanIsRunning = true
		BrowseName:SetText(item.name)
		if item.single_locked or item.sourcemode == 1 or item.sourcemode == 4 then options="forcePartial" end -- equipment and pets
		local result = ZGVG.Scan:ScanByName(item.name,item.itemid,options)
		ZGVG.Scan.ResultCallback = function()
			Appraiser:SetSellHistoricalLabels()
			Appraiser:SetSellFields()
		end
		item.updated = time()
		return result
	else
		item.updated = time()
		ZGV:Debug("SearchForItem delayed, from %s",debugstack(2,1,0))
		if Appraiser.PendingScanTimer then ZGV:CancelTimer(Appraiser.PendingScanTimer) end
		Appraiser.PendingScanTimer = ZGV:ScheduleTimer(function() 
			Appraiser:SearchForItem(item,options)
		end, 0.1)
		return "delay"
	end
end

local function Appraiser_SetTooltipData(tooltip, itemLink)
	local name,link=GameTooltip:GetItem()
	itemLink = itemLink or link
	if not itemLink then return end -- blizz is no longer guaranteed to provide itemlinks on time

	local function OldColor(timestamp,red,yellow)
		local age=time()-timestamp
		if age>red then
			return "ffff0000"
		elseif age>yellow then
			return "ffffee00"
		else
			return "ffffffff"
		end
	end


	-- Decide what detail level we're showing.

		if not ZGV.db.profile.gold_tooltips_show then return end
		
		local tooltip_context = "out"
		if AuctionFrame and AuctionFrame:IsShown() then tooltip_context="ah" end
		
		local tooltip_detail = ZGV.db.profile['gold_tooltips_' .. tooltip_context]   -- gold_tooltips_ah or gold_tooltips_out
		if not tooltip_detail or tooltip_detail==0 then return end
		if IsShiftKeyDown() and ZGV.db.profile.gold_tooltips_shift then tooltip_detail=3 end
	--


	if not Appraiser.TooltipPatched then
		local _
		if not itemLink then _,itemLink = tooltip:GetItem() end

		if not itemLink then
			Appraiser.TooltipPatched  = true
			return
		end


		local itemId = tonumber(itemLink:match("item:(%d+)"))

		if not itemId or itemId==0 or itemId==82800 then -- no item, or caged pet
			Appraiser.TooltipPatched  = true
			return 
		end

		local tooltipnamestring = tooltip:GetName()

		local isboundable = false
		for i=1,tooltip:NumLines() do
			local line=_G[tooltipnamestring.."TextLeft"..i]:GetText()
			if line then
				isboundable = isboundable or line==ITEM_SOULBOUND
				isboundable = isboundable or line==ITEM_BIND_ON_PICKUP
				isboundable = isboundable or line==ITEM_BIND_TO_BNETACCOUNT
				isboundable = isboundable or line==ITEM_BNETACCOUNTBOUND
				isboundable = isboundable or line==ITEM_BIND_QUEST
				isboundable = isboundable or line==ITEM_CONJURED

				-- if we found use clause, we are past possible points of binding, stop looking
				if strfind(line, USE_COLON) then break end 
			end
		end

		local p_lo, p_md, p_hi, demand
		local trends_known
		
		local trend = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemId]
		if trend then
			p_lo = ZGV.GetMoneyString(trend.p_lo,3) or "unknown"
			p_md = ZGV.GetMoneyString(trend.p_md,3) or "unknown"
			p_hi = ZGV.GetMoneyString(trend.p_hi,3) or "unknown"
			demand = trend.sold or trend.q_md or (trend.q_lo + trend.q_hi)/2
			
			trends_known = true
		else 
			trends_known = false
		end

		local globaltrend = not trends_known and ZGVG.servertrends_global and ZGVG.servertrends_global.items and ZGVG.servertrends_global.items[itemId]

		
		tooltip:AddLine("|cffffffff |r")
		tooltip:AddLine("|cfffe6100Zygor Gold Data:|r")
		if isboundable then
			tooltip:AddLine("  |cffeeeeeeItem is soulbound|r ")
			tooltip:Show()
			return
		end

		local price,_,empty = ZGVG:GetSellPrice(itemId)
		local price_g = (price>0 and ZGV.GetMoneyString(price,3)) or "n/a"
		local minprice = ZGVG.Scan:GetPrice(itemId) or 0
		local minprice_g = (minprice>0 and ZGV.GetMoneyString(minprice,3)) or "n/a"

		local priceStatus = ZGVG:GetPriceStatus(itemId,empty and 0 or price)
		local statusName = priceStatus.statusName
		local statusText = priceStatus.name.." "..priceStatus.sellsuggestion
		local statusIcon = priceStatus.sellicon or priceStatus.icon -- coords
		local statusColor = priceStatus.sellcolor -- array
		
		tooltip:AddDoubleLine("  |cffeeeeeeCurrent lowest price:|r ",minprice_g)

		if ZGV.db.profile.debug_display  then
			tooltip:AddDoubleLine("  STATUSNAME:",statusName)
			tooltip:AddDoubleLine("  STAG:",(priceStatus.stagnant and "yes" or "no"))
		end

		tooltip:AddDoubleLine("  |cffeeeeeeSuggested sell price:|r ",price_g)

		if tooltip_detail==2 then -- dynamic
			
			local undercut = ZGV.db.profile.appraiser_undercut
			if undercut>10000 then undercut = ZGV.GetMoneyString(undercut-10000)  else undercut=undercut.."%" end
			local overpricemargin_perc = floor(ZGVG.OVERPRICE*100-100).."%"
			local gouged_perc = trends_known and floor((minprice-trend.p_hi)/trend.p_hi - 1) * 100 .. "%"

			if statusName=="PRICESTATUS_EMPTY" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeGouging by:|r",overpricemargin_perc)
			elseif statusName=="PRICESTATUS_GOUGED" or statusName=="PRICESTATUS_UP" or statusName=="PRICESTATUS_RISING" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeGouge setting:|r",overpricemargin_perc)
			elseif statusName=="PRICESTATUS_DOWN" or statusName=="PRICESTATUS_FALLING" or statusName=="PRICESTATUS_DUMPED" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)
				tooltip:AddDoubleLine("    |cffeeeeeeUndercut setting:|r",undercut)
			elseif statusName=="PRICESTATUS_NORMAL" then
				if minprice<trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)  end
				if minprice>=trend.p_lo and minprice<=trend.p_hi then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical median:|r ",p_md)  end
				if minprice>trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)  end
				tooltip:AddDoubleLine("    |cffeeeeeeUndercut setting:|r",undercut)
			elseif statusName=="PRICESTATUS_NODATA" then
				tooltip:AddDoubleLine("    |cffeeeeeeGlobal median:|r ",globaltrend and ZGV.GetMoneyString(globaltrend.p_md) or "n/a")
			end
		end

		if tooltip_detail==3 then -- full
			if trends_known then
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical low:|r ",p_lo)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical median:|r ",p_md)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical high:|r ",p_hi)
			end
			if globaltrend then
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal low:|r ",ZGV.GetMoneyString(globaltrend.p_lo))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal median:|r ",ZGV.GetMoneyString(globaltrend.p_md))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal high:|r ",ZGV.GetMoneyString(globaltrend.p_hi))
			end
		end

		tooltip:AddDoubleLine("  |cffeeeeeeDemand (est. sold):|r ",trends_known and demand or "n/a")

		tooltip:AddDoubleLine("  |cffeeeeeeStatus:|r ",ZGV.ArrayToStringColor(statusColor)..statusText)

		if ZGV.Gold.Scan and ZGV.db.realm.LastScan then
			tooltip:AddDoubleLine("  |cffeeeeeeLast updated:|r ",("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,3600*2,60*10), ZGV.UI.GetTimeStamp(ZGV.db.realm.LastScan)))
		end
		tooltip:AddLine("|cffffffff |r")
		tooltip:Show()
		
		Appraiser.TooltipPatched  = true
	end
end

local function Appraiser_ClearTooltipData(tooltip, ...)
	Appraiser.TooltipPatched = false
end

function Appraiser.EventHandler(frame, event, ...)
	self=Appraiser
	if not ZGV.db.profile.auction_enable then return end
	if event=="AUCTION_HOUSE_SHOW" then
		AuctionFrameTab_OnClick(AuctionFrameTab3)
		AuctionFrameTab_OnClick(AuctionFrameTab1)
		Appraiser.InventoryAuctions = nil
		Appraiser.AttemptingToBuyout = false
		Appraiser.ActiveSearch = nil
		Appraiser.ActiveSearchName = nil
		Appraiser.ActiveSellingItem = nil
		Appraiser.SelectedShoppingItem = nil
		Appraiser.SellingInProgress  = false
		Appraiser.InventoryOffset = 0
		Appraiser.LastSellingItem = nil
		Appraiser.SelectedBuyAuction = nil
		Appraiser.Autoscanned = false
		Appraiser:ShowWindow()
		Appraiser:GetInventoryItems("clearcache")
		Appraiser:WipeSellHistoricalLabels()
		Appraiser:WipeSellPricingLabels()
	end
	if not Appraiser.MainFrame or not Appraiser.MainFrame:IsVisible() then return end

	if event=="AUCTION_HOUSE_CLOSED" then
		Appraiser:HideWindow()
		if ZGV.Gold.HelpPopup then
			ZGV.Gold.HelpPopup:Hide()
		end
	elseif event=="AUCTION_ITEM_LIST_UPDATE" then  --AILU
		Appraiser.WaitingForAuctionData = nil
	elseif event=="BAG_UPDATE_DELAYED" then
		Appraiser:GetInventoryItems("clearcache")
		Appraiser.needToSelectNextSellingItem=true
		Appraiser.needToUpdate = true
	elseif event=="AUCTION_MULTISELL_START" then
		self.SellingInProgress = true
		self.SellingInBatch=true
	elseif event=="AUCTION_MULTISELL_UPDATE" then
		if select(1,...)==select(2,...) then  -- end of posting
			self.SellingInProgress = false
			self.SellingInBatch=false
		end
	elseif event=="AUCTION_MULTISELL_FAILURE" then
		self.SellingInProgress = false
		self.SellingInBatch=false
	elseif event=="AUCTION_OWNED_LIST_UPDATE" then
		Appraiser:GetInventoryItems("clearcache")
		Appraiser.needToUpdate = true
		if not self.SellingInBatch then
			--Appraiser.InventoryAuctions = {}
			--Appraiser.ActiveSellingItem = nil
			--Appraiser:WipeSellHistoricalData()
			--Appraiser:WipeSellPricingData()
			Appraiser.needToSelectNextSellingItem=true
			Appraiser.SellingInProgress = false
		end
	elseif event=="ZGV_AFTER_SINGLE_AILU" then
		if self.ActiveTab=="Buy" then
			Appraiser:FocusOnSelectedAuction()
			Appraiser.needToUpdate = true
		end
	elseif event=="ZGV_CSAQNAME_CHANGED" and select(1,...)==true then
		if self.ActiveTab=="Buy" then
			Appraiser:FocusOnSelectedAuction()
			Appraiser.needToUpdate = true
		end

	--[[
		if event=="ZGV_SS_STATE_CHANGE" then
			--if ...~="SS_IDLE" and Appraiser.ActiveTab == "Inventory" then
			if ...~="SS_IDLE"  and ...~="SS_BUYING" then
			end
		end
	--]]

	elseif event=="ZGV_GOLD_SCANNED" then
		ZGV:Debug("GOLD_SCANNED")
		--[[
		if not (Appraiser.ScanItems and next(Appraiser.ScanItems)) then
			Appraiser.MainFrame.progressFrame:Hide()
		end
		--]]
		if self.ActiveTab=="Buy" then
			-- remove pendings from all items
			if Appraiser.ShoppingItems then  for i,item in ipairs(Appraiser.ShoppingItems) do  if type(item)=="table" then item.pending=false  end end  end
		end

		Appraiser.ScanIsRunning = false
		Appraiser:SaveScanTable()  -- also calls :GetShoppingAuctions and :Update

		if Appraiser.ActiveSellingItem and self.ActiveTab=="Inventory" then
			Appraiser:SelectNextSellingItem()
			Appraiser:GetInventoryAuctions()
			Appraiser:SetSellFields()
		end

		if self.ActiveTab=="Buy" then
			if Appraiser.SelectedShoppingItem then
				--Appraiser:GetShoppingAuctions()
				if not Appraiser.SelectedBuyAuction then Appraiser:FindNextBuyout(Appraiser.SelectedShoppingItem) end
				Appraiser:SetBuyoutLabels()
				Appraiser:Update()
			end

			if Appraiser.ActiveShoppingAddItem then
				Appraiser:GetScannedItems()
				ZGV.Gold.Scan.record_unique_links = false
			end
		end
		Appraiser.manualScanNextItem=true
		Appraiser.needToUpdate = true


	elseif event=="CHAT_MSG_SYSTEM" then
		if Appraiser.AttemptingToBuyout and Appraiser.SelectedShoppingItem then
			local name = Appraiser.SelectedShoppingItem.expectedName
			if select(1,...) == ERR_AUCTION_WON_S:format(name) then
				Appraiser.AttemptingToBuyout = false
				Appraiser.BuyoutTimestamp = nil

				local itemid = Appraiser.SelectedShoppingItem.itemid
				local buyitem = Appraiser.SelectedShoppingItem
				local buyindex = Appraiser.SelectedShoppingItem.buyoutindex
				local buyauction = table.remove(Appraiser.RawDataTable[buyitem.itemid],buyindex)

				if Appraiser.SelectedBuyAuction then  -- clear it if there are no more stacks like that
					local found=false
					for i,auc in ipairs(Appraiser.ShoppingAuctions) do
						if auc.stack_size==tonumber(buyauction[1]) and auc.stack_price==tonumber(buyauction[2]) then found=true break end
					end
					if not found then Appraiser.SelectedBuyAuction=nil Appraiser.SelectedShoppingItem.buyoutindex=nil end
				end

				if buyitem.count then
					buyitem.count = buyitem.count - buyauction[1]
				else
					buyitem.bought = (buyitem.bought or 0) + buyauction[1]
				end

				if buyitem.count and buyitem.count <= 0 then
					ZGV.Gold.Appraiser.DoneDeals[itemid]=true -- hide this item from gold guide, until next fullscan is completed
					Appraiser:ClearShoppingItemDetails()
					Appraiser:ShowSearchFrame(true)
					--Appraiser.Buy_Frame.activeName:SetText("No item selected")
					--Appraiser.Buy_Frame.activeIcon:SetTexture()
					--Appraiser:SelectBuyoutRow()
					ZGV:Debug("Quota purchased, selecting something else.")
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				else
					Appraiser:GetBuyoutPrice(Appraiser.SelectedShoppingItem) -- refresh, but leave SelectedBuyAuction alone if it's set.
					Appraiser:GetShoppingAuctions()
					Appraiser:SetBuyoutLabels()
					Appraiser:Update()
				end
			end
		end
	
	elseif event=="UI_ERROR_MESSAGE" then
		local num,err = ...
		ZGV:Debug("UI_ERROR_MESSAGE: %d %s",num,err)
		if num == 27 or --ERR_ITEM_NOT_FOUND
			num == 42 or --ERR_NOT_ENOUGH_MONEY
			num == 437 or --ERR_AUCTION_BID_OWN
			num == 439 or --ERR_AUCTION_HIGHER_BID
			err == ERR_ITEM_MAX_COUNT then
				if self.ActiveTab=="Buy" then
					Appraiser:GetShoppingAuctions()
					Appraiser:SetBuyoutLabels()
					Appraiser.AttemptingToBuyout=false
					Appraiser:Update()
				end
		end
	end
end

local delay,interval=0,0.05
local last_delay, last_canscan, last_delay2, last_canscan2, last_state
local last_work

function Appraiser.GetTrueItemCount(itemid,itemlink)
	if itemid > 1000000000 then -- battle pet, need spoonfeeding since GetItemCount(link) does not work for pets
		truecount = 0
		for bag=0, NUM_BAG_SLOTS do
			for slot=1, GetContainerNumSlots(bag) do
				local _, count, _, _, _, _, baglink = GetContainerItemInfo(bag, slot)
				if itemlink == baglink then
					truecount = truecount + count
				end
			end
		end
		return truecount
	else
		return GetItemCount(itemlink or itemid)
	end
end

local function UpdateHandler(frame, elapsed)
	local self=Appraiser
	delay=delay+elapsed  if delay>interval then delay=0 else return end
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end

	self.MainFrame:SetFrameLevel(AuctionFrame:GetFrameLevel()+1)

	if self.manualScanNextItem then 
		self:ScanNextItem() 
	end

	local now = debugprofilestop()
	local refreshRate = (self.SellingInProgress and 100 or 5000)
	if self.needToUpdate or now-self.lastUpdated>refreshRate then
		self:Update()
	end
	
	self:UpdateTimeStamp()
	self:UpdateProgressBar()

	if self.Inventory_Frame:IsVisible() then
		if self.Inventory_Frame.durationdropdown:GetCurrentSelectedItemValue()~=self.LastAuctionTime then
			self:UpdateAuctionCost()
		end
	end

	if self.AttemptingToBuyout and self.BuyoutTimestamp and GetTime()-self.BuyoutTimestamp>BUYOUT_TIMEOUT then
		self:AbortManualScan()
	end


	local buttonScan = self.Inventory_Frame.InventoryScanButton
	local buttonAppr = self.Inventory_Frame.InventoryAppraiseButton
	local buttonPost = self.Inventory_Frame.postbutton
	local buttonBuy = self.Buy_Frame.buybutton
	local buttonBuyApp = self.Buy_Frame.ShoppingAppraiseButton
	local buttonSearch = self.Buy_Frame.containerSearch.searchbutton

	local buttonAbortScan = self.Inventory_Frame.InventoryScanAbortButton
	local buttonAbortAppr = self.Inventory_Frame.InventoryAppraiseAbortButton
	local buttonAbortBuyApp = self.Buy_Frame.ShoppingAppraiseAbortButton

	--local buttonReAp = self.AHUpdateButton

	local canscan,delay = ZGVG.Scan:CanScanByName()
	delay = delay and math.ceil(delay)
	local canscan2,delay2 = ZGVG.Scan:CanScanFast()
	delay2 = delay2 and math.ceil(delay2)

	if canscan and not self.manualScanning and not self.manualBuyScanning then
		buttonAppr:SetText("|cFFFFFFFFAppraise all")
		buttonAppr.soft_disabled=false
		buttonAppr.tooltip = "Update prices of inventory items."

		buttonPost:SetEnabled(true)

		buttonBuyApp:SetText("|cFFFFFFFFAppraise all")
		buttonBuyApp.soft_disabled=false
		buttonBuyApp.tooltip = "Update prices of shopping list items."

		buttonSearch:SetEnabled(true)
	else
		buttonAppr:SetText("|c88888888Appraise all")
		buttonAppr.soft_disabled=true
		if ZGV.Gold.Scan.state~="SS_IDLE" then
			buttonAppr.tooltip = ("|cffaaff66Auction scan in progress.")
		elseif delay and delay>0 then
			buttonAppr.tooltip = ("|cffff0000Auction scan not possible now, please wait ca. %d minutes."):format(delay)
		else
			buttonAppr.tooltip = ("|cffff0000Auction scan not possible now, please wait a while.")
		end

		buttonBuyApp:SetText("|c88888888Appraise all")
		buttonBuyApp.soft_disabled=true
		if ZGV.Gold.Scan.state~="SS_IDLE" then
			buttonBuyApp.tooltip = ("|cffaaff66Auction scan in progress.")
		elseif delay and delay>0 then
			buttonBuyApp.tooltip = ("|cffff0000Auction scan not possible now, please wait ca. %d minutes."):format(delay)
		else
			buttonBuyApp.tooltip = ("|cffff0000Auction scan not possible now, please wait a while.")
		end

		buttonPost:SetEnabled(false)

		buttonSearch:SetEnabled(false)
	end

	if self.ActiveTab=="Inventory" and Appraiser.ActiveSellingItem and buttonPost:IsEnabled() then
		local stack_size, stack_count = Appraiser:GetUserSellStack(Appraiser.ActiveSellingItem)
		local link = select(2,ZGV:GetItemInfo(Appraiser.ActiveSellingItem.itemid))
		if Appraiser.ActiveSellingItem.itemid>1000000000 then link = Appraiser.ActiveSellingItem.link end

		if self.SellingInProgress then
			buttonPost.soft_disabled=true
			buttonPost.tooltip = nil
		elseif stack_count*stack_size>Appraiser.GetTrueItemCount(Appraiser.ActiveSellingItem.itemid,Appraiser.ActiveSellingItem.link) then
			buttonPost.soft_disabled=true
			buttonPost.tooltip = ("|cffffaa00Warning:|r Unable to post |cffffffff%d|r stack%s of |cffffffff%d|r %s.|nThat's |cffffffff%d|r total, and you only have |cffffffff%d|r."):format(stack_count,stack_count>1 and "s" or "",stack_size,link or "???",stack_count*stack_size,GetItemCount(Appraiser.ActiveSellingItem.itemid))
		else
			buttonPost.soft_disabled=false
			if stack_count*stack_size==1 then
				buttonPost.tooltip = ("Post |cffffffff1|cffffcc00 auction of |cffffee66%s|r."):format(link or "???")
			elseif stack_size==1 or stack_count==1 then
				buttonPost.tooltip = ("Post |cffffffff%d|r stack%s of |cffffffff%d %s."):format(stack_count,stack_count>1 and "s" or "",stack_size,link or "???")
			else
				buttonPost.tooltip = ("Post |cffffffff%d|r stacks of |cffffffff%d %s, a total of |cffffffff%d|cffffdd00."):format(stack_count,stack_size,link or "???",stack_count*stack_size)
			end
		end
	else
		buttonPost.tooltip = nil
	end

	if buttonPost:IsEnabled() and not buttonPost.soft_disabled then
		buttonPost:SetNormalBackdropColor(unpack(ZGV.UI.SkinData("ButtonColor2")))
		buttonPost:SetHighlightBackdropColor(unpack(ZGV.UI.SkinData("ButtonHighlightColor2")))
	else
		buttonPost:SetNormalBackdropColor(0.43,0.43,0.43,1)
		buttonPost:SetHighlightBackdropColor(0.53,0.53,0.53,1)
	end

	--== Scan/AppraiseAll/BuyApp(?)
		if self.manualScanning or self.manualBuyScanning then
			buttonScan:Hide()
			buttonAppr:Hide()
			buttonBuyApp:Hide()

			buttonAbortScan:Show()
			buttonAbortAppr:Show()
			buttonAbortBuyApp:Show()
		else
			buttonScan:Show()
			buttonAppr:Show()
			buttonBuyApp:Show()

			buttonAbortScan:Hide()
			buttonAbortAppr:Hide()
			buttonAbortBuyApp:Hide()
		end
	--==


	--[[
		if canscan then
			local name, texture, count, quality, canUse, price, pricePerUnit, stackCount, totalCount = GetAuctionSellItemInfo();
			if name then
				buttonReAp:SetText("|cFFFFFFFFAppraise")
				buttonReAp.soft_disabled=false
				buttonReAp.tooltip = "Update price of listed item."
			else
				buttonReAp:SetText("|c88888888Appraise")
				buttonReAp.soft_disabled=true
				buttonReAp.tooltip = "|cffff0000No item listed."
			end
		else
			buttonReAp:SetText("|c88888888Appraise")
			buttonReAp.soft_disabled=true
			buttonReAp.tooltip = ("|cffff0000Auction scan not possible now, please wait ~%d minutes."):format(delay)
		end
	--]]


	--== set buttonScan state
		if canscan2 and ZGV.Gold.Scan.state=="SS_IDLE" and not self.manualScanning then
			local scanwarning = ZGV.db.profile.quickscan and "\n"..ZGV.L["opt_quickscan_warning"] or ""
			buttonScan.tooltip = "Run a fast auction scan."..scanwarning
			buttonScan:SetText("|cFFFFFFFFScan")
			buttonScan.soft_disabled=false
			buttonScan.action="scanfast"
		else
			local newitems = false
			for i,v in pairs(self.InventoryItems) do
				if not self.ScannedItems[v.itemid] then
					newitems = true
					break
				end
			end


			if canscan and newitems then
				buttonScan.tooltip = "Run a regular auction scan to update new items in inventory."
				buttonScan:SetText("|cFFFFFFFFScan new")
				buttonScan.action="scannew"
				buttonScan.soft_disabled=false
			else
				buttonScan:SetText("|c88888888Scan")
				buttonScan.soft_disabled=true
				if ZGV.Gold.Scan.state~="SS_IDLE" then
					buttonScan.tooltip = ("|cffaaff66Auction scan in progress.")
				elseif delay2 and delay2>0 then
					buttonScan.tooltip = ("|cffff0000Auction scan not possible now, please wait ca. %d minutes."):format(delay2)
				else
					buttonScan.tooltip = ("|cffff0000Auction scan not possible now, please wait a while.")
				end
			end
		end
	--==

	--== set buttonBuy state
		if not self.SelectedShoppingItem then
			buttonBuy:SetText("Buy")
			buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
			buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
			buttonBuy.soft_disabled=true
			buttonBuy.tooltip = ("|cffff0000No item selected for buying out.")
		else
			local itemid = self.SelectedShoppingItem.itemid
			if self.AttemptingToBuyout then
				local itemBuy = self.RawDataTable[itemid] and self.RawDataTable[itemid][self.SelectedShoppingItem.buyoutindex]
				if itemBuy then 
					buttonBuy:SetText("Buying")
					buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
					buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
					buttonBuy.soft_disabled=true
					buttonBuy.tooltip = "Buying "..itemBuy[1].." "..self.SelectedShoppingItem.name.." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3).." ("..ZGV.GetMoneyString(tonumber(itemBuy[3]),3).." ea)"
				end
			elseif not self.SelectedShoppingItem.buyoutindex and not self.WaitingForAuctionData then
				buttonBuy:SetText("Buy")
				buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
				buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
				buttonBuy.soft_disabled=true
				buttonBuy.tooltip = ("|cffff0000No recomended buyouts for selected item.\n|rPlease select an auction to buy from the list above.")
			elseif not self.RawDataTable[itemid] or self.WaitingForAuctionData or not canscan then
				buttonBuy:SetText("Buy")
				buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
				buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
				buttonBuy.soft_disabled=true
				buttonBuy.tooltip = ("|cffff0000Updating auction data for selected item.")
			else
				local itemBuy = self.RawDataTable[itemid][self.SelectedShoppingItem.buyoutindex]
				if itemBuy then
					buttonBuy:SetText("Buy")
					buttonBuy:SetNormalBackdropColor(unpack(ZGV.UI.SkinData("ButtonColor2")))
					buttonBuy:SetHighlightBackdropColor(unpack(ZGV.UI.SkinData("ButtonHighlightColor2")))
					buttonBuy.soft_disabled=false
					buttonBuy.tooltip = "Buy "..itemBuy[1].." "..self.SelectedShoppingItem.name.." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3).." ("..ZGV.GetMoneyString(tonumber(itemBuy[3]),3).." ea)"
				end
			end
		end
	--==

	local function retooltip(button)
		if button:IsMouseOver() and button:IsVisible() then GameTooltip:Hide() button:GetScript("OnEnter")(button) end
	end
				
	if (delay~=last_delay or canscan~=last_canscan or delay2~=last_delay2 or canscan2~=last_canscan2 or ZGV.Gold.State~=last_state or self.needToRetooltip) then
		retooltip(buttonScan)
		retooltip(buttonAppr)
		retooltip(buttonBuyApp)
		retooltip(buttonBuy)
		retooltip(buttonPost)
		self.needToRetooltip=nil
	end
	last_state=ZGV.Gold.Scan.state
	last_delay=delay
	last_canscan=canscan
	last_delay2=delay2
	last_canscan2=canscan2


	self.Buy_Frame.playergold:SetText("Player gold: "..ZGV.GetMoneyString(GetMoney()))

	-- Now do some real work!
	self:Work()

end
Appraiser.UpdateHandler = UpdateHandler   -- for forcing an update

function Appraiser:UpdateNow()
	self.needToUpdate=true
	Appraiser.UpdateHandler(nil,999)
end

local lastwork
function Appraiser:Work()
	if lastwork==GetTime() then return end
	lastwork=GetTime()

	local canscan,delay = ZGVG.Scan:CanScanByName()
	if Appraiser.DelayedFindNextBuyout then 
		-- we tried to switch pages when looking for cheapest buyout, but could not. 
		-- waiting for scan to be possible to retry
		if canscan then
			local dfnb = Appraiser.DelayedFindNextBuyout
			Appraiser.DelayedFindNextBuyout = nil
			Appraiser:FindNextBuyout(dfnb)
		end
	end

	if Appraiser.RetryBuyout and canscan then
		Appraiser.RetryBuyout=false
		ZGV:Debug("Retrying buyout.")
		Appraiser:ExecuteBuyout()
	end

	if Appraiser.GoToPage and not Appraiser.manualBuyScanning and canscan then
		-- a page flip was requested
		ZGV:Debug("Moving to '%s' page %d (querying).",Appraiser.ActiveSearchName,Appraiser.GoToPage+1)
		ZGV.Gold.Scan.Proxy:GoToPage(Appraiser.GoToPage)
		Appraiser.ActiveSearch = nil
		Appraiser.ActiveSearchName = nil
		Appraiser.GoToPage = nil
		Appraiser.RetryBuyout = Appraiser.RetryBuyoutAfterPage
		Appraiser.RetryBuyoutAfterPage = nil
	end


	if Appraiser.SelectedShoppingItem and Appraiser.SelectedShoppingItem.updated and time()-Appraiser.SelectedShoppingItem.updated>self.OutdatedTime then
		Appraiser.SelectedShoppingItem = nil
	end

	if self.needToSelectNextSellingItem then
		self:SelectNextSellingItem()
	end
end

function Appraiser:CreateTrackerFrame()
	-- Separate frame for events because Appraiser's own frame doesn't exist until it's first shown.
	Appraiser.Events = CreateFrame("Frame")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_SHOW")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_CLOSED")
	Appraiser.Events:RegisterEvent("AUCTION_ITEM_LIST_UPDATE")
	Appraiser.Events:RegisterEvent("AUCTION_OWNED_LIST_UPDATE")
	Appraiser.Events:RegisterEvent("NEW_AUCTION_UPDATE")
	Appraiser.Events:RegisterEvent("BAG_UPDATE_DELAYED")
	Appraiser.Events:RegisterEvent("CHAT_MSG_SYSTEM")
	Appraiser.Events:RegisterEvent("UI_ERROR_MESSAGE")
	Appraiser.Events:RegisterEvent("AUCTION_MULTISELL_START")
	Appraiser.Events:RegisterEvent("AUCTION_MULTISELL_UPDATE")
	Appraiser.Events:RegisterEvent("AUCTION_MULTISELL_FAILURE")
	ZGV:AddMessageHandler("ZGV_GOLD_SCANNED",Appraiser.EventHandler)
	ZGV:AddMessageHandler("ZGV_SS_STATE_CHANGE",Appraiser.EventHandler)
	Appraiser.Events:SetScript("OnEvent",Appraiser.EventHandler)
	Appraiser.Events:SetScript("OnUpdate",UpdateHandler)

	hooksecurefunc (GameTooltip, "SetMerchantItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetBuybackItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetBagItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetAuctionItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetLootRollItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetInventoryItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetGuildBankItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetTradePlayerItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetTradeTargetItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetQuestItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetQuestLogItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetInboxItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetItemByID",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetAuctionSellItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (ItemRefTooltip, "SetHyperlink",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetHyperlink",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetLootItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetSendMailItem",		function(tip) Appraiser_SetTooltipData(tip) end)


	-- LEGION TEMP FIX, SetTradeSkillItem no longer exists
	-- possible replacements: SetRecipeResultItem / SetRecipeReagentItem

	GameTooltip:HookScript("OnTooltipCleared", Appraiser_ClearTooltipData)

	hooksecurefunc("ChatEdit_InsertLink", function(...) return Appraiser:InsertSearchLink(...) end)
end

tinsert(ZGV.startups,{"Auctiontools core",function(self)
	Appraiser:CreateTrackerFrame()
	Appraiser.ScannedItems = {}
	ZGV.Gold.Appraiser.DoneDeals = {}
	ZGV.db.char.AThiddenitems = ZGV.db.char.AThiddenitems or {}
	ZGV.db.char.ATsearchitems = ZGV.db.char.ATsearchitems or {}
	Appraiser.GuideBuyItems = Appraiser.GuideBuyItems or {}
	Appraiser.ManualBuyItems = ZGV.db.char.ATsearchitems or {}
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}
	Appraiser.Loaded = true	
	ZGV.db.profile.aucmode = ZGV.db.profile.aucmode or "unit"
end})
