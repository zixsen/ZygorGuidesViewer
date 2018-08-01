-- Scan.record_unique_links
-- Scan.FoundInScan[self.queried_by_name][link]

if not ZGV then return end

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local Appraiser = ZGV.Gold.Appraiser 

local OUTDATED_TIME = 60*3

Appraiser.ShoppingModes = {
	GOLD = 1,
	MANUAL = 2,
	GUIDE = 3,
	QUICK = 4,
	}

local Scan=ZGVG.Scan
local Proxy=Scan.Proxy


function Appraiser.sort_buy(a,b)
	if not a or not b then return false end
	if not a.name or not b.name then return false end
	a,b=a.name,b.name
	return a<b
end

function Appraiser.sort_shoppingAuctions(a,b)
	--if not a.unit_price or not b.unit_price then return false end

	if a.unit_price == b.unit_price then
		if a.stack_size == b.stack_size then
			return a.itemlink < b.itemlink
		else
			return a.stack_size < b.stack_size
		end
	else
		return a.unit_price < b.unit_price
	end
end

function Appraiser.sort_shoppingAddAuctions(a,b)
	if not a.name or not b.name then return false end

	if a.name == b.name then
		return (a.quality or 0) > (b.quality or 0)
	else
		return a.name < b.name
	end
end

function Appraiser:GetShoppingAuctions()
	local ex_selected = 	Appraiser.SelectedBuyAuction
	if Appraiser.SelectedShoppingItem and Appraiser.RawDataTable[Appraiser.SelectedShoppingItem.itemid] then
		Appraiser.ShoppingAuctions = {}
		for i,v in pairs(Appraiser.RawDataTable[Appraiser.SelectedShoppingItem.itemid]) do
			if v[5]~="" then Appraiser:AddEntryToShoppingAuctions(i,v) end
		end
	end

	-- save the selection: find its new incarnation.
	Appraiser.SelectedBuyAuction = nil
	if ex_selected then
		for i,auc in ipairs(self.ShoppingAuctions) do
			if auc.stack_size==ex_selected.stack_size and auc.stack_price==ex_selected.stack_price then
				Appraiser.SelectedBuyAuction=auc
				break
			end
		end
	end
end

function Appraiser:AddEntryToShoppingAuctions(index,data)
	local stack_size = tonumber(data[1])
	local stack_price = tonumber(data[2])
	local unit_price = tonumber(data[3])
	local own_auction = tonumber(data[4])
	local itemlink = data[5]
	local icon = select(10,ZGV:GetItemInfo(itemlink))

	local IA = Appraiser.ShoppingAuctions

	local exists = false

	local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	if BattlePetId then
		_, icon = C_PetJournal.GetPetInfoBySpeciesID(BattlePetId)
		local petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
		if result=="OK" then 
			breedid,breedname = ZGV.PetBattle:GetPetBreedByLink(itemlink)
			BattlePetName = BattlePetName.." (lvl "..BattlePetLevel.." "..breedname..")"
		end
	end

	for i,v in pairs(IA) do
		if v.unit_price == unit_price and v.stack_size == stack_size and v.own_auction == own_auction and v.itemlink == itemlink then
			IA[i].count = IA[i].count + 1
			exists = true
			break
		end
	end
	if not exists then
		local newitem = {
			itemid=Appraiser.SelectedShoppingItem.itemid,
			count=1, -- amount of auctions found
			stack_size=stack_size,
			stack_price=stack_price,
			unit_price=unit_price,
			own_auction=own_auction,
			itemlink=itemlink,
			icon=icon,
			buyoutindex=index,
			BattlePetName=BattlePetName,
			item=Appraiser.SelectedShoppingItem -- only shown when ASI is active, so link to ASI
			}
		table.insert(IA,newitem)
	end
end

function Appraiser:AddGuideItemsToBuy()
	self.GuideBuyItems = {}

	for i=1,#ZGV.CurrentStep.goals do
		local goal = ZGV.CurrentStep.goals[i]
		if goal.action == "buy" and goal.status == "incomplete" then
			local itemid = goal.targetid
			local count = goal.count - GetItemCount(itemid)

			Appraiser:AddItemToBuy(itemid,count,Appraiser.ShoppingModes.GUIDE,nil,nil,nil)
		end
	end
	self.needToUpdate = true
end

function Appraiser:AddItemToBuy(itemid,count,source,priceMax,itemlink,sourcemode)
	if not itemid and not itemlink then return end
	if self:IsInCurrentDeals(itemid) and source==Appraiser.ShoppingModes.GOLD then return end

	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemid)
	
	if not itemid and string.match(itemlink,"battlepet:") then itemid = ZGV.PetBattle:GetPetFakeIdByLink(itemlink) end

	if itemid and not itemlink then
		name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemid)
	end

	if itemid == 82800 or classID==2 or classID==4 then
		-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
		single_locked=true
		maxStack=1
	end

	if itemid>1000000000 then 
		petItem_id = tonumber(string.sub(tostring(itemid),2,5))
		quality = tonumber(string.sub(tostring(itemid),8,8))
		name, icon = C_PetJournal.GetPetInfoBySpeciesID(petItem_id)
	end

	local unit_price = ZGV.Gold.Scan:GetPrice(itemid)

	local statusIcon, statusText, statusId, statusText,statusIcon,isStagnant,statusColor
	local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemid,unit_price)
	statusId = priceStatus.statusId
	statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.buysuggestion)
	statusIcon = priceStatus.buyicon or priceStatus.icon -- coords
	isStagnant = priceStatus.stagnant
	statusColor = isStagnant and priceStatus.stagcolor or priceStatus.buycolor

	local existing_count = 0
	local existing_index

	local targetTable

	if source==Appraiser.ShoppingModes.GOLD then  -- item from gold guide
		targetTable = ZGV.db.char.GGbuyitems
	elseif source==Appraiser.ShoppingModes.MANUAL then  -- item added by player
		targetTable = self.ManualBuyItems
	elseif source==Appraiser.ShoppingModes.GUIDE then  -- item added from guide
		targetTable = self.GuideBuyItems
	end

	for index,item in pairs(targetTable) do
		if item.itemid == itemid then
			existing_index = index
			existing_count = item.count
		end
	end

	if existing_index then
		if source==Appraiser.ShoppingModes.GOLD then -- if from gold guide, set to new count
			targetTable[existing_index].count = count
		else -- otherwise add more to existing stuff
			if targetTable[existing_index].count and count then
				targetTable[existing_index].count = targetTable[existing_index].count+count
			end
		end
	else
		local newitem = {
			itemid=itemid or petItem_id,
			name=name,
			displayName=displayName,
			--link=link,
			icon=icon,
			count=count, 
			price=unit_price,
			source=source, --guide/gold/manual
			priceMax=priceMax, -- function parameter
			statusText=statusText,
			statusIcon=statusIcon,
			statusId=statusId,
			statusColor=statusColor,
			isStagnant=isStagnant,
			quality=quality,
			sourcemode=sourcemode,
			itemlink=itemlink,
			classID=classID,
			single_locked=single_locked
		}
		table.insert(targetTable,newitem)
	end

	if name then
		ZGV.NotificationCenter.AddButton(
		    "",
		   "Shopping list",
		    (count or "").." "..name..((count and count>1) and "s" or ""),
		    ZGV.DIR.."\\Skins\\guideicons-big",
		    {0, 0.25, 0.25, 0.50},
		    nil,
		    nil,
		    1,
		    poptime,        -- nil atm
		    removetime,        -- nil atm
		    nil,            -- nil atm
		    nil,            -- nil atm
		    "gold")
	end

	-- deactivate current row and remove item from buyout clipboard
	-- prevents wrong row from being highlighted

	if Appraiser.MainFrame then
		for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do
			r.active = false
		end
	end
	
	Appraiser.SelectedShoppingItem = nil
	self.needToUpdate = true
	ZGV.Goldguide:Update()
end

function Appraiser:IsDeal(item,price)
	if price==0 then return false end

	local trendprice = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[item] and ZGV.Gold.servertrends.items[item].p_md
	if not trendprice then
		return false
	end

	if price and price ~= "__orderedIndex" and price<trendprice then
		return true
	else
		return false
	end
end

function Appraiser:GetShoppingItemStatus(invItem)
	local count,price,each,status = Appraiser:GetBuyoutPrice(invItem)
		
	local alpha = 1
	local tooltip = nil

	if invItem.pending then
		return "...",1,"Fetching auctions..."
	end

	if price > 0 then
		text = ZGV.GetMoneyString(price,3)
	else
		text = "No results"
	end

	if status=="ok" then
		text = count.." for "..ZGV.GetMoneyString(price,3)
		alpha = 1
		tooltip = "Buy "..count.." for "..ZGV.GetMoneyString(price,3)
		if tonumber(count)>1 then	tooltip = tooltip.." ("..ZGV.GetMoneyString(each,3).." ea)" end

	elseif status=="noresults" then
		text = "No results"
		alpha = 1
	elseif status=="nodeals" then
		text = "No deals"
		alpha = 1
		tooltip = "No deals were found for this item\nDeal threshold: "..ZGV.GetMoneyString(price,3).. " ea"
	end

	if not invItem.updated or (invItem.updated and time()-invItem.updated>self.OutdatedTime) or status=="old" then
		alpha = 0.2
		tooltip = "Click to update price"
		text = (each>0 and ZGV.GetMoneyString(each,3,true).." ea" or text)
		if invItem.active and time()-invItem.updated>10 then
			invItem.active = false
			self:DeactivateBuyItem()
			ZGV:Debug("Reset search frame, WHY?")
		end
	end

	return text,alpha,tooltip
end

function Appraiser:DeactivateBuyItem()
	self.SelectedBuyAuction = nil
	self.ShoppingAuctions = {}
	self.SelectedShoppingItem = nil
	self:WipeBuyoutLabels()
	self:WipeBuyoutHistoricalLabels()
	self:ShowSearchFrame(true)
	self.Buy_Frame.containerSearch.searchname:ClearFocus() -- undo auto focus here
end

function Appraiser:ActivateBuyItem(item)
	-- do not switch items while any scan is running
	if ZGV.Gold.Scan.state~="SS_IDLE" then return end

	if Appraiser.ActiveSearch then return end
	if Appraiser.ActiveSearchName then return end
	if Appraiser.GoToPage then return end
	if Appraiser.manualBuyScanning then return end

	Appraiser.SelectedBuyAuction = nil

	Appraiser:WipeBuyoutLabels()
	Appraiser:WipeBuyoutHistoricalLabels()
	Appraiser.ShoppingAuctions = {}

	currentIndex = 0
	for i,v in pairs(Appraiser.ShoppingItems) do if v~="separator" then 
		if v==item then currentIndex=i end
		v.active = false 
	end end

	--if not Appraiser.SelectedShoppingItem or (item and item.itemid ~= Appraiser.SelectedShoppingItem.itemid) then
		Appraiser.ActiveSearch = item.itemid
		Appraiser.ActiveSearchName = item.name
		Appraiser.SelectedShoppingItem = item

		Appraiser.Buy_Frame.activeIcon:SetTexture(item.icon)
		Appraiser.Buy_Frame.activeName:SetText(item.name)
		Appraiser.Buy_Frame.auctionslabel:SetText("Auctions for: "..item.name)
		Appraiser.Buy_Frame.buyoutlabel:Show()

		item.active = true

		local nextitem = Appraiser.ShoppingItems[1]  -- which item to skip to if the current item is gone?
		if Appraiser.ShoppingItems[currentIndex+1] then
			if Appraiser.ShoppingItems[currentIndex+1] ~= "separator" then
				nextitem = Appraiser.ShoppingItems[currentIndex+1]
			else
				nextitem = Appraiser.ShoppingItems[currentIndex+2]
			end
		end
		if nextitem then
			Appraiser.NextBuyingItemID = nextitem.itemid
		end
		ZGV:Debug("ActivateBuyItem: %s, next %s##%d",self.SelectedShoppingItem.name,nextitem.name,Appraiser.NextBuyingItemID or -1)


		Appraiser:SetBuyoutHistoricalLabels()
		Appraiser:SetBuyoutLabels()

		Appraiser:TryToSearchForItem(item)

		Appraiser:ShowSearchFrame(false)
	--[[
	else
		Appraiser.SelectedShoppingItem = nil
		Appraiser:ShowSearchFrame(true)
	end
	--]]
	Appraiser:Update()
end

function Appraiser:SearchForBuyItem(item)
	local options = nil
	if ZGVG.Scan:CanScanByName() then
		Appraiser.PendingScanTimer = nil
		Appraiser.ScanIsRunning = true
		if item.single_locked or item.sourcemode == 1 or item.sourcemode == 4 then options="forceFullname" end -- equipment and pets
		local result = ZGVG.Scan:ScanByName(item.name,item.itemid,options)
		item.updated = time()
		item.pending = true
		return result
	else
		item.updated = time()
		if Appraiser.PendingScanTimer then ZGV:CancelTimer(Appraiser.PendingScanTimer) end
		Appraiser.PendingScanTimer = ZGV:ScheduleTimer(function() 
			Appraiser:SearchForBuyItem(item,options)
		end, 0.5)
		return "delay"
	end
end

function Appraiser:TryToSearchForItem(object)
	if Appraiser.TryToSearchForItemTimer then ZGV:CancelTimer(Appraiser.TryToSearchForItemTimer) end
	local result = Appraiser:SearchForBuyItem(object)

	if result then return end

	Appraiser.TryToSearchForItemTimer = ZGV:ScheduleTimer(function() 
		Appraiser:TryToSearchForItem(object)
	end, 0.5)
end

function Appraiser:ExecuteBuyout()
	if Appraiser.Buy_Frame.buybutton.soft_disabled then return end


	local item = Appraiser.SelectedShoppingItem

	function try_to_buy(index)
		local itemid = item.itemid
		local expected = Appraiser.RawDataTable[itemid][index]
		
		if not expected then
			ZGV:Debug("Buying out: ... I don't even know what. Fail!")
			return false,"fail"
		end

		local buyoutindex = index-(50*Proxy:GetCurrentPage())
		local itempage = math.floor((buyoutindex-1)/NUM_AUCTION_ITEMS_PER_PAGE)
		if itempage~=Proxy:GetCurrentPage() then
			ZGV:Debug("We're on the wrong page! Item index %d is on %d, we're on %d",index,itempage+1,Proxy:GetCurrentPage()+1)
			return false,"fail"
		end
		local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_,_,aId  = GetAuctionItemInfo("list",buyoutindex)
		if aName=="" then aName=nil end
		local genericName = ZGV:GetItemInfo(aId)

		--[[
		if not aName or aName=="" then
			ZGV:Debug("Buying out: Row %d has unnamed item! Didn't we verify this!?",buyoutindex)
			Scan:DumpAuctionItems(buyoutindex)
			ZGV:Debug("Let's try matching by GetItemInfo = '%s'",genericName)
			--return false,"fail"
		end
		--]]

		if (aId==itemid or aName==item.name or (genericName and genericName==item.name)) -- name match
		and tonumber(expected[1])==tonumber(aStack) -- stack size match
		and tonumber(expected[2])==tonumber(aBuyout) -- price match
		and APPRAISER_PLAYER_NAME~=aOwner -- not own
		then
			--- yes, this is what we were hoping to find, buy it
			ZGV:Print(("Buying out: %d x '%s' at %s ea. (%s per stack)"):format(aStack,aName or genericName,GetMoneyString(expected[3]),GetMoneyString(aBuyout)))
			ZGV:Debug("Buying out: row %d on page %d",buyoutindex,itempage+1)
			Appraiser.AttemptingToBuyout = true
			Appraiser.SelectedShoppingItem.expectedName = aName or genericName
			Appraiser.BuyoutTimestamp = GetTime()
			
			Scan.queried_by_name=aName or genericName
			table.wipe(Scan.rawdata)
			Scan:SetState("SS_BUYING")  -- TODO

			PlaceAuctionBid("list", buyoutindex, aBuyout) -- causes a requery!
			return true
		else
			ZGV:Debug("Failed buyout: %s##%d in row %d on page %d, expected price %d stack %d, found %s price %d stack %d.",item.name or "?",itemid,buyoutindex,itempage+1, expected[2],expected[1], genericName,aBuyout,aStack)

			return false
		end
	end

	-- 0. Are we even on the right page?
	local item_page = math.floor((item.buyoutindex-1)/50)
	local current_page = Proxy:GetCurrentPage()
	if item_page~=current_page then
		-- go to correct page!
		ZGV:Debug("ExecuteBuyout: item is at index %d, that's page %d, moving there and retrying.",item.buyoutindex,item_page+1)
		Appraiser.GoToPage=item_page
		Appraiser.ActiveSearchName=item.name
		Appraiser.RetryBuyoutAfterPage=true
		return false
	end

	-- 1. Try to buy the auction by number.

	local success,fail = try_to_buy(item.buyoutindex)
	if success then return end  -- first-chance success? good.

	-- 2. Try all the other auctions, maybe it moved.

	if not fail then
		for i=1,50 do  -- try all the other auctions
			local index = 50*current_page + i
			if index~=item.buyoutindex then
				success,fail = try_to_buy(index)
				if success then return end
				if fail then break end
			end
		end
	end

	-- 3. Are we even on the right item?

	local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_,_,aId  = GetAuctionItemInfo("list",item.buyoutindex)
	
	if aName==item.name or ZGV:GetItemInfo(aId)==item.name then
		-- at least it's the right item
		if not item.rescanned and GetNumAuctionItems("list")>NUM_AUCTION_ITEMS_PER_PAGE then
			-- first time this auction is not found, so it may have been pushed from outside of current
			-- page, so we requery only this page
			ZGV:Print("Auction not found! Refreshing one page of auction results. Please retry.")
			item.rescanned = true
			Proxy:GoToPage(item_page)
			Scan.queried_by_name = Proxy.lastQuery:Get("name")
			Appraiser.ActiveSearch = item.itemid
			Appraiser.ActiveSearchName = item.name
			Appraiser:Update()
		else
			-- we already did a quick rescan of current page, and item is still not here.
			-- so, do a full rescan
			ZGV:Print("Auction not found! Refreshing auction results. Please retry.")
			--ZGV:Debug("&goldbuy Expected auction still not found, rescanning full results of item %s (found '%s'!?)",item.name,aName)
			Appraiser:SearchForItem(item)
			Appraiser.ActiveSearch = item.itemid
			Appraiser.ActiveSearchName = item.name
			Appraiser:Update()
			item.rescanned = nil
		end
	else
		-- we already did a quick rescan of current page, and item is still not here.
		-- so, do a full rescan
		ZGV:Debug("&goldbuy Found auctions of another item, rescanning full results of ".. item.name)
		Appraiser:SearchForItem(item)
		Appraiser.ActiveSearch = item.itemid
		Appraiser.ActiveSearchName = item.name
		Appraiser:Update()
		item.rescanned = nil
	end
end

function Appraiser:SetBuyoutHistoricalLabels()
	if not Appraiser.SelectedShoppingItem then return end
	local itemid = Appraiser.SelectedShoppingItem.itemid
	local countForSellCalc = 1

	local selling_price, unit_price, empty = ZGVG:GetSellPrice(itemid,countForSellCalc)
	local priceStatus = ZGVG:GetPriceStatus(itemid,empty and 0 or unit_price)
	local statusColor = ZGV.ArrayToStringColor(priceStatus.stagnant and priceStatus.stagcolor or priceStatus.buycolor)
	local statusText = priceStatus.name..(priceStatus.stagnant and ", item stagnant" or "")
	if priceStatus.stagnant then
		Appraiser.Buy_Frame.activeStatus:SetFont(FONT,11)
	else
		Appraiser.Buy_Frame.activeStatus:SetFont(FONT,12)
	end
	Appraiser.Buy_Frame.activeStatus:SetText(statusColor..statusText)

	
	local trend = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemid]
	if trend then
		histlow = ZGV.GetMoneyString(trend.p_lo*countForSellCalc,3) or "unknown"
		histmed = ZGV.GetMoneyString(trend.p_md*countForSellCalc,3) or "unknown"
		histhigh = ZGV.GetMoneyString(trend.p_hi*countForSellCalc,3) or "unknown"
		estval = ZGV.GetMoneyString(selling_price) or "unknown"
	else
		p_lo,p_md,p_hi,demand,sell = "unknown","unknown","unknown","unknown","unknown"
	end

	Appraiser.Buy_Frame.estval:SetText(estval)
	Appraiser.Buy_Frame.histhigh:SetText(histhigh)
	Appraiser.Buy_Frame.histlow:SetText(histlow)
	Appraiser.Buy_Frame.histmed:SetText(histmed)
end

function Appraiser:WipeBuyoutHistoricalLabels()
	Appraiser.Buy_Frame.estval:SetText("n/a")
	Appraiser.Buy_Frame.histhigh:SetText("n/a")
	Appraiser.Buy_Frame.histlow:SetText("n/a")
	Appraiser.Buy_Frame.histmed:SetText("n/a")

	Appraiser.Buy_Frame.activeStatus:SetText("")
	Appraiser.Buy_Frame.auctionslabel:SetText("")
	Appraiser.Buy_Frame.buyoutlabel:Hide()
	Appraiser.Buy_Frame.activeStatus:SetText("")

	--for i,v in pairs(Appraiser.Buy_Frame.ShoppingAuctionList.rows) do if v.item then v.item.active = false end end
end

function Appraiser:SetBuyoutLabels() 
	if not Appraiser.SelectedShoppingItem then 
		Appraiser.Buy_Frame.nextbuyout:SetText("n/a")
		return 
	end
	local itemid = Appraiser.SelectedShoppingItem.itemid
	local count = Appraiser.SelectedShoppingItem.count
	local priceMax = Appraiser.SelectedShoppingItem.priceMax
	--local dealPrice = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[itemid].p_md

	if count then
		Appraiser.Buy_Frame.amountbuyout:SetText("Amount left to buy: "..count)
	else
		local bought = Appraiser.SelectedShoppingItem.bought or 0
		Appraiser.Buy_Frame.amountbuyout:SetText("Amount bought: "..bought)
	end

	if priceMax then
		Appraiser.Buy_Frame.extrainfolabel:Show()
		Appraiser.Buy_Frame.extrainfolabel:SetText("Defined max price: "..ZGV.GetMoneyString(tonumber(priceMax),3))
	--elseif dealPrice then
	--	Appraiser.Buy_Frame.extrainfolabel:Show()
	--	Appraiser.Buy_Frame.extrainfolabel:SetText("Deal max price: "..ZGV.GetMoneyString(tonumber(dealPrice),3))
	else
		Appraiser.Buy_Frame.extrainfolabel:Hide()
	end

	if not Appraiser.RawDataTable[itemid] then 
		Appraiser.Buy_Frame.nextbuyout:SetText("no data")
		return 
	end
	local itemBuy = Appraiser.RawDataTable[itemid][Appraiser.SelectedShoppingItem.buyoutindex]
	if itemBuy then
		Appraiser.Buy_Frame.nextbuyout:SetText(itemBuy[1].." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3))
	else
		Appraiser.Buy_Frame.nextbuyout:SetText("No deals found")
	end
end

function Appraiser:SaveSearchItem(item)
	local g = tonumber(Appraiser.Buy_Frame.containerSearch.pricegold:GetText())
	local s = tonumber(Appraiser.Buy_Frame.containerSearch.pricesilver:GetText())
	local c = tonumber(Appraiser.Buy_Frame.containerSearch.pricecopper:GetText())
	local priceMax = (c+s*100+g*100*100)
	if priceMax==0 then priceMax = nil end

	local count = tonumber(Appraiser.Buy_Frame.containerSearch.maxcount:GetText())
	if count==0 then count = nil end

	Appraiser:AddItemToBuy(ZGV.ItemLink.GetItemID(item.itemlink),count,Appraiser.ShoppingModes.MANUAL,priceMax,item.itemlink,nil)
end

function Appraiser:WipeBuyoutLabels() 
	Appraiser.Buy_Frame.nextbuyout:SetText("n/a")
	Appraiser.Buy_Frame.amountbuyout:SetText("")
end

function Appraiser:GetScannedItems()
	if Appraiser.ActiveShoppingAddItem and ZGV.Gold.Scan.FoundInScan and ZGV.Gold.Scan.FoundInScan[Appraiser.ActiveShoppingAddItem] then
		Appraiser.ShoppingAddAuctions = {}
		for _,itemlink in pairs(ZGV.Gold.Scan.FoundInScan[Appraiser.ActiveShoppingAddItem]) do
			local name, link, quality, _, _, _, _, _, _, icon = ZGV:GetItemInfo(itemlink)

			local BattlePetId,BattlePetLevel,BattlePetRarity = itemlink:match(".*battlepet:(%d+):(%d+):(%d+):.*")
			if BattlePetId then
				name, icon = C_PetJournal.GetPetInfoBySpeciesID(BattlePetId)
				quality = BattlePetRarity
			end

			table.insert(Appraiser.ShoppingAddAuctions,{itemlink=itemlink,name=name,quality=tonumber(quality),icon=icon})
		end
		Appraiser.ActiveShoppingAddItem = nil
		Appraiser:Update()
	end	
end

function Appraiser:FindMatchingAuctions()
	if Scan.state~="SS_IDLE" or self.manualBuyScanning then return end
	ZGV.Gold.Scan.record_unique_links = true
	local name = Appraiser.Buy_Frame.containerSearch.searchname:GetText()
	Appraiser.Buy_Frame.containerSearch.searchname:ClearFocus()

	if name:match("item:(%d+)") then
		-- we got itemlink
		ZGV.Gold.Scan:ScanByLink(name)
		Appraiser.ActiveShoppingAddItem=name
	elseif name~="" then
		ZGV.Gold.Scan:ScanByPartialName(name)
		Appraiser.ActiveShoppingAddItem=name
	end
end

function Appraiser:InsertSearchLink(text)
	if not Appraiser.Buy_Frame then return end

	local editbox = Appraiser.Buy_Frame.containerSearch.searchname
	if editbox and editbox:IsVisible() then
		local name = text:match("%[(.*)%]")
		local id = text:match("item:(%d+)")
		editbox:SetText(name)
		Appraiser:FindMatchingAuctions()
		return true
	end
	return false
end

function Appraiser:SetBuyoutToAuction(row)   -- == row:OnClick
	if not row.auction then return end

	--for i,auc in pairs(self.ShoppingAuctions) do auc.active = false end
	--row.auction.active = true

	--Appraiser.SelectedBuyAuction = {}
	--for i,v in pairs(row.item) do Appraiser.SelectedBuyAuction[i]=v end

	self:SetBuyoutToAuctionByIndex(row.auction.buyoutindex)

	Appraiser:SetBuyoutLabels()
	Appraiser:Update()
	--Appraiser:FindNextBuyout(row.auction.item,true)
end

function Appraiser:ResetBuyoutToAuction() 
	Appraiser.SelectedBuyAuction = nil
	--for i,aucItem in ipairs(self.ShoppingAuctions) do aucItem.active=false end
	Appraiser:FindNextBuyout(Appraiser.SelectedShoppingItem)
	Appraiser:SetBuyoutLabels()
	Appraiser.needToUpdate = true
end

function Appraiser:RemoveItemFromBuy(row)  -- == row rightclick, menu Remove
	local targetTable
	if row.item.source==Appraiser.ShoppingModes.GOLD then  -- item from gold guide
		targetTable = ZGV.db.char.GGbuyitems
	elseif row.item.source==Appraiser.ShoppingModes.MANUAL then  -- item added by player
		targetTable = self.ManualBuyItems
	elseif row.item.source==Appraiser.ShoppingModes.GUIDE then  -- item added from guide
		targetTable = self.GuideBuyItems
	end

	local itemid = row.item.itemid
	local count = row.item.count	

	for i,v in pairs(targetTable) do
		if v.itemid == itemid then
			table.remove(targetTable,i)
		end
	end

	for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do  r.active = false  end
	ZGV.Goldguide:Update()
end

function Appraiser:RemoveAllItemsFromBuy()
	table.wipe(ZGV.db.char.GGbuyitems)
	table.wipe(self.ManualBuyItems)
	table.wipe(self.GuideBuyItems)
	self.SelectedShoppingItem=nil
	self.SelectedBuyAuction=nil
	ZGV.Goldguide:Update()
	ZGV.Gold.Appraiser:ShowSearchFrame(true)
end

function Appraiser:UpdateBuyPrices()
	if self.manualBuyScanning then return end
	self.ScanBuyItems = {}
	self.manualBuyScanningTotal = #self.ShoppingItems
	self.manualBuyScanningDone = 1
	for index = #self.ShoppingItems,1,-1 do
		if self.ShoppingItems[index].itemid then -- skip separators
			table.insert(self.ScanBuyItems,self.ShoppingItems[index])
		end
	end
	self.manualBuyScanning = true
	Appraiser.manualScanNextItem=true
	
	self:DeactivateBuyItem()
end

function Appraiser:ClearShoppingItemDetails()
	Appraiser.ActiveSearch = nil
	Appraiser.ActiveSearchName = nil
	Appraiser.SelectedShoppingItem = nil
	Appraiser.WaitingForAuctionData = false
	Appraiser.ShoppingAuctions = {}
	--Appraiser.AbortEverything = true

	Appraiser:WipeBuyoutLabels()
	Appraiser:WipeBuyoutHistoricalLabels()

	for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do  r.active = false  end
end

function Appraiser:GetBuyoutPrice(invItem)
	local itemid = invItem.itemid
	if self.SelectedShoppingItem == invItem and self.SelectedBuyAuction and self.RawDataTable[itemid][self.SelectedBuyAuction.buyoutindex] then
		local auction = self.RawDataTable[itemid][self.SelectedBuyAuction.buyoutindex]
		return auction[1],tonumber(auction[2]),tonumber(auction[3]),"ok"
	else
		return self:FindNextBuyout(invItem)
	end
end

function Appraiser:SetBuyoutToAuctionByIndex(index)
	if not self.SelectedShoppingItem then return end
	for i,auc in ipairs(self.ShoppingAuctions) do
		if auc.buyoutindex==index and auc.stack_price>0 then
			self.SelectedBuyAuction=auc
			self.SelectedShoppingItem.buyoutindex = index
			ZGV:Debug("&gold Selecting auction: %s##%d x%d for %s, index %d",auc.item.name or "?",auc.itemid or -1,auc.stack_size,GetMoneyString(auc.stack_price),auc.buyoutindex)

			local focus=Appraiser:FocusOnSelectedAuction("clear")
			if focus=="FOC_FOCUSED" then
				ZGV:Debug("Focused nicely on the auction, data matched.")
			elseif focus=="FOC_NOFOCUS" then
				ZGV:Debug("Can't focus. Need to rescan.")
				self:ActivateBuyItem(self.SelectedShoppingItem)
			end

			--[[
			local expected = Appraiser.RawDataTable[auc.itemid][auc.buyoutindex]
			if not expected then
				ZGV:Debug("What the..? Selected auction's row is missing from data! Fail!")
				return false,"fail"
			end

			local page=math.floor((auc.buyoutindex-1)/NUM_AUCTION_ITEMS_PER_PAGE)
			if page==Proxy:GetCurrentPage() then
				local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_,_,aId  = GetAuctionItemInfo("list",auc.buyoutindex-NUM_AUCTION_ITEMS_PER_PAGE*Proxy:GetCurrentPage())
				if aId then
					if aStack==auc.stack_size and aBuyout==auc.stack_price then
						ZGV:Debug("Made sure the item's row (%d, page %d) has complete and correct data.",auc.buyoutindex,Proxy:GetCurrentPage()+1)
					else
						ZGV:Debug("Making sure the item's row (%d, page %d) correct data... WHOA! INCORRECT!" ,auc.buyoutindex,Proxy:GetCurrentPage()+1)
						Scan:DumpAuctionItems(auc.buyoutindex-50*page)
						ZGV:Debug("Need to rescan the item.")
						if Scan:CanScanByName() then
							self:SearchForItem(self.SelectedShoppingItem)
						else
							ZGV:Debug("Can't rescan now!")
						end
					end
				else
					ZGV:Debug("Selected auction's row has incomplete data! Fetching. Hope that helps.")
				end
			else
				ZGV:Debug("&gold Item is on page %d, moving there.",page+1)
				Proxy:GoToPage(page)
			end
			--]]

			break
		end
	end
	Appraiser.needToUpdate = true
	return true
end

function Appraiser:IsAuctionMatch (index, id,stack,price)
	local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_,_,aId  = GetAuctionItemInfo("list",index)
	return  aId==id and aStack==stack and aBuyout==price
end

function Appraiser:IndexShort (index)
	return index-NUM_AUCTION_ITEMS_PER_PAGE*Proxy:GetCurrentPage()
end
function Appraiser:IndexPage (index)
	return floor((index-1)/NUM_AUCTION_ITEMS_PER_PAGE)
end

local focuser_tag = "&focuser |cffaa66ff "
function Appraiser:FocusOnSelectedAuction(clear)
	if clear then self.FocuserState="FOC_NONE" end

	if not self.SelectedBuyAuction then
		self.FocuserState="FOC_NOTSELECTED"
		return self.FocuserState
	end
	local id,stack,price,index = self.SelectedBuyAuction.item.itemid,self.SelectedBuyAuction.stack_size,self.SelectedBuyAuction.stack_price,self.SelectedBuyAuction.buyoutindex
	local page=self:IndexPage(index)

	-- get on same page
	if Proxy:GetCurrentPage()~=page then
		if Scan:CanScanByName() then
			ZGV:Debug(focuser_tag.."need index %d, going to page %d.",index,page+1)
			Proxy:GoToPage(page)
			self.FocuserState="FOC_FLIPPINGPAGE"
			return self.FocuserState
		else
			self.FocuserState="FOC_WAITING"
			return self.FocuserState
		end
	end

	if self:IsAuctionMatch(self:IndexShort(index), id,stack,price) then
		if self.FocuserState~="FOC_FOCUSED" then
			ZGV:Debug(focuser_tag.."focused on row %d of page %d.",self:IndexShort(index),page+1)
		end
		self.FocuserState="FOC_FOCUSED"
		return self.FocuserState  -- SUCCESS!
	end

	for row=1,50 do  -- try all the other auctions
		if row~=self:IndexShort(index) then
			if self:IsAuctionMatch(row, id,stack,price) then
				self.SelectedBuyAuction.buyoutindex = Proxy:GetCurrentPage()*NUM_AUCTION_ITEMS_PER_PAGE + row
				ZGV:Debug(focuser_tag.."moved from row %d to %d, to find ##%d x%d for %s",self:IndexShort(index),row, id,stack,GetMoneyString(price))
				self.FocuserState="FOC_FOCUSED"
				return self.FocuserState
			end
		end
	end

	self.FocuserState="FOC_NOFOCUS"
	return self.FocuserState
end

function Appraiser:FindNextBuyout(invItem)
	--if Appraiser.AbortEverything then return 0,priceMax or trendprice or 0,0,"nodeals" end	
	local itemid = invItem.itemid

	if not Appraiser.RawDataTable[itemid] then
		if Appraiser.SelectedShoppingItem == invItem then Appraiser.SelectedShoppingItem.buyoutindex = nil end
		invItem.buyoutindex = nil
		return 0,ZGVG.Scan:GetPrice(itemid) or 0,0,"old"
	end

	if not next(Appraiser.RawDataTable[itemid]) then
		if Appraiser.SelectedShoppingItem == invItem then Appraiser.SelectedShoppingItem.buyoutindex = nil end
		invItem.buyoutindex = nil
		return 0,0,0,"noresults"
	end

	local minprice = nil
	local minindex = nil
	local priceMax = invItem.priceMax or nil

	if false and Appraiser.SelectedShoppingItem and Appraiser.SelectedBuyAuction and invItem.itemid==Appraiser.SelectedShoppingItem.itemid then
		--[[
		setdata = true
		for i=1,#Appraiser.RawDataTable[itemid] do
			local row=Appraiser.RawDataTable[itemid][i]
			if row[3]>0 and row[4]=="0" then -- has buyout and is not our own auction
				if tonumber(Appraiser.SelectedBuyAuction.stack_size) == tonumber(row[1]) and tonumber(Appraiser.SelectedBuyAuction.stack_price) == tonumber(row[2]) then
					minindex = i
				end
			end
		end
		--]]
	else
		for i=1,#Appraiser.RawDataTable[itemid] do
			local row=Appraiser.RawDataTable[itemid][i]
			if row[3]>0 and row[4]=="0" then -- has buyout and is not our own auction
				if (priceMax and math.floor(row[3])<=priceMax) or (not priceMax and Appraiser:IsDeal(itemid,math.floor(row[3]))) then
					if not minprice or math.floor(row[3])<minprice then
						minprice = math.floor(row[3])
						minindex = i
					end
				end
			end
		end
	end

	if minindex then
		invItem.buyoutindex = minindex

		if Appraiser.SelectedShoppingItem == invItem and (not Appraiser.SelectedBuyAuction or Appraiser.SelectedBuyAuction.buyoutindex~=minindex) then
			self:SetBuyoutToAuctionByIndex(minindex)
		end

		local preindex = minindex
		local newpage = math.floor((minindex-1)/50)

		if newpage~=Proxy:GetCurrentPage() and Appraiser.SelectedShoppingItem and Appraiser.SelectedShoppingItem.itemid==itemid then
		-- only switch pages if this is the item in active buyout
			if ZGVG.Scan:CanScanByName() then
				Appraiser.page=newpage
				local name = Appraiser.SelectedShoppingItem.name
				Appraiser.WaitingForAuctionData = true
				ZGV:Debug("&gold FindNextBuyout moving to %s page %d",name,newpage+1)
				--Proxy:PerformQuery(name, nil, nil, Appraiser.page, 0, 0, false, true)
				Proxy:GoToPage(newpage)
				self.findnextbuyout_wait_msg=false
			else
				if not self.findnextbuyout_wait_msg then ZGV:Debug("&gold FindNextBuyout waiting to scan...") end
				self.findnextbuyout_wait_msg=true
				Appraiser.DelayedFindNextBuyout = invItem
				Appraiser.WaitingForAuctionData = true
			end
		end

		return Appraiser.RawDataTable[itemid][minindex][1],tonumber(Appraiser.RawDataTable[itemid][minindex][2]),tonumber(Appraiser.RawDataTable[itemid][minindex][3]),"ok"
	else
		local trendprice = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[itemid] and ZGV.Gold.servertrends.items[itemid].p_md
		if Appraiser.SelectedShoppingItem == invItem then Appraiser.SelectedShoppingItem.buyoutindex = nil end
		invItem.buyoutindex = nil

		return 0,priceMax or trendprice or 0,0,"nodeals"
	end
end

function Appraiser:ShowSearchFrame(state)
	if state==nil then state = not Appraiser.Buy_Frame.containerSearch:IsVisible() end
	if not Appraiser.SelectedShoppingItem then state=true end

	if state then
		Appraiser.Buy_Frame.containerDetails:Hide()
		Appraiser.Buy_Frame.containerSearch:Show()
		Appraiser.Buy_Frame.containerSearch.searchname:SetFocus()
	else
		Appraiser.Buy_Frame.containerDetails:Show()
		Appraiser.Buy_Frame.containerSearch:Hide()
	end
end

function Appraiser:ShoppingRowMenu(row)
	if not row.item then return end

	if not Appraiser.Buy_Frame.ShoppingMenu then Appraiser.Buy_Frame.ShoppingMenu = CreateFrame("FRAME","AT_Shopping_Menu",Appraiser.Buy_Frame,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(Appraiser.Buy_Frame.ShoppingMenu, 0, 0, "TOP", row, "BOTTOM")
	local menu = {}

	tinsert(menu,{
			text = "Remove this item",
			tooltipText = "Remove selected item from this list",
			tooltipOnButton=1,
			func = function() 
				Appraiser:RemoveItemFromBuy(row)
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	tinsert(menu,{
			text = "Remove all items",
			tooltipText = "Remove all items from this list",
			tooltipOnButton=1,
			func = function() 
				Appraiser:RemoveAllItemsFromBuy(row)
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	
	EasyFork(menu,Appraiser.Buy_Frame.ShoppingMenu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(Appraiser.Buy_Frame.ShoppingMenu, 300)
end

function Appraiser:ClearSearchLabels()
	Appraiser.ShoppingAddAuctions = {}
	Appraiser.Buy_Frame.containerSearch.searchname:SetText("")
	Appraiser.Buy_Frame.containerSearch.pricegold :SetText("0")
	Appraiser.Buy_Frame.containerSearch.pricesilver :SetText("0")
	Appraiser.Buy_Frame.containerSearch.pricecopper :SetText("0")
	Appraiser.Buy_Frame.containerSearch.maxcount :SetText("")
	Appraiser:Update()
end

function Appraiser:ShowSearchItem(item)
	if Appraiser.ActiveSearch then return end
	if Appraiser.ActiveSearchName then return end
	if Appraiser.GoToPage then return end


	local newitem = {
		itemid=ZGV.ItemLink.GetItemID(item.itemlink),
		name=item.name,
		displayName=item.name,
		link=item.itemlink,
		icon=item.icon,
		source=Appraiser.ShoppingModes.QUICK, --guide/gold/manual
		quality=item.quality
	}



	Appraiser:WipeBuyoutLabels()
	Appraiser:WipeBuyoutHistoricalLabels()
	Appraiser.ShoppingAuctions = {}

	for i,v in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do if v.item then v.item.active = false end end

	Appraiser.ActiveSearch = newitem.itemid
	Appraiser.ActiveSearchName = newitem.name
	Appraiser.SelectedShoppingItem = newitem

	Appraiser.Buy_Frame.activeIcon:SetTexture(newitem.icon)
	Appraiser.Buy_Frame.activeName:SetText(newitem.name)
	Appraiser.Buy_Frame.auctionslabel:SetText("Auctions for: "..newitem.name)
	Appraiser.Buy_Frame.buyoutlabel:Show()

	Appraiser:SetBuyoutHistoricalLabels()
	Appraiser:SetBuyoutLabels()
	Appraiser:SearchForItem(newitem)
	Appraiser:ShowSearchFrame(false)
	Appraiser:Update()
end

function Appraiser:SelectNextShoppingItem()
	local index,nextindex,previndex = nil,nil,nil
	local refresh = false -- click new row only when we are switching to new item

	if self.NextBuyingItemID == (self.SelectedShoppingItem and self.SelectedShoppingItem.itemid)  then
		ZGV:Debug("SelectNextBuyoutRow: same item.")
		return
	end
	for i,item in pairs(self.ShoppingItems) do 
		if item.itemid == self.NextBuyingItemID and (item.count or 0)>0 and not FORCE_NEXT_BUY then
			ZGV:Debug("SelectNextBuyoutRow: index %d, id %s (%s)",i,item.itemid,item.name)
			self:ActivateBuyItem(item,true)
			return
		end
	end
	ZGV:Debug("SelectNextBuyoutRow: nope.")
end
