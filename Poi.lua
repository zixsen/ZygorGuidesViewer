local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT = ZGV.Font
local CHAIN = ZGV.ChainCall
local L=ZGV.L

local Poi = {}
ZGV.Poi = Poi
ZGV.Poi.Guide = nil
ZGV.Poi.ActivePoiStepNum = nil

local ITEM_LEVEL_FILTER = string.gsub(ITEM_LEVEL,"%%d","(.*)")
local ITEM_MIN_LEVEL_FILTER = string.gsub(ITEM_MIN_LEVEL,"%%d","(.*)")
local ITEM_SLOTS_ARRAY = {INVTYPE_2HWEAPON, INVTYPE_AMMO, INVTYPE_BAG, INVTYPE_BODY, INVTYPE_CHEST, INVTYPE_CLOAK, INVTYPE_FEET, INVTYPE_FINGER, INVTYPE_HAND, INVTYPE_HEAD, INVTYPE_HOLDABLE, INVTYPE_LEGS, INVTYPE_NECK, INVTYPE_QUIVER, INVTYPE_RANGED, INVTYPE_RANGEDRIGHT, INVTYPE_RELIC, INVTYPE_ROBE, INVTYPE_SHIELD, INVTYPE_SHOULDER, INVTYPE_TABARD, INVTYPE_THROWN, INVTYPE_TRINKET, INVTYPE_WAIST, INVTYPE_WEAPON, INVTYPE_WEAPONMAINHAND, INVTYPE_WEAPONMAINHAND_PET, INVTYPE_WEAPONOFFHAND, INVTYPE_WRIST}

-- dev\depreceated\poi.lua: removed unsued poi types

local POI_TYPES = {
	[1] = {keyword="rare",display="Rares"},
	[2] = {keyword="treasure",display="Treasures"},
	}

Poi.OwnedTypes = {}

function Poi:RegisterPoiGuide()
	if not ZGV.db.profile.poienabled then return end

	Poi.Guides = {}

	for i,guide in pairs(ZGV.registeredguides) do
		if guide.poi then
			if not guide.fully_parsed then
				guide:Parse(true)
			end
			table.insert(Poi.Guides,guide)
			if coroutine.running() then coroutine.yield() end
		end
	end

	ZGV:SendMessage("ZGV_POI_REGISTERED_GUIDE", "done")
end

function Poi:CheckValidity(poistep,register)
	if ZGV.db.profile.hideguide[poistep.poitype] then
		return false -- poi type hidden
	end

	if ZGV.db.profile.poitype==1 and poistep.poiaccess then return false end -- quick mode, and point has access completionist

	if poistep.poitype=="treasure" or poistep.poitype=="rare" then
		return not IsQuestFlaggedCompleted(poistep.poiquest)
	else
		return true
	end
end

function Poi:RegisterPoints()
	Poi.Points = {}

	local previndex=1

	for j,guide in pairs(Poi.Guides) do
		for i,step in pairs(guide.steps) do
			if step.poiname then
				local valid_poi = Poi:CheckValidity(step,true)
				if not step:AreRequirementsMet() then valid_poi = false end

				Poi.OwnedTypes[step.poitype]=true
				
				if valid_poi then
					step.is_poi = true

					step.stepstart = i
					step.stepend = i
					step.ident = j.."_"..i

					step.poiicon = ZGV.Pointer.Icons[step.poitype]
					step.poiicon_on = ZGV.Pointer.Icons[step.poitype.."_on"]


					Poi.Points[j.."_"..i] = step

					previndex = j.."_"..i
				else
					ZGV.db.char.ActivatedPois[i] = nil
					previndex = false
				end
			else
				if previndex and Poi.Points[previndex] then
				-- next step of multistep poi, tie it to parent
					Poi.Points[previndex].stepend = i
					step.ident = Poi.Points[previndex].ident
					step.is_poi = true
				end
			end
		end
	end
	ZGV:SendMessage("ZGV_POI_REGISTERED_POINTS", "done")
end

local function addline(text,icon,indent)
	if text then WorldMapTooltip:AddLine(text,1,1,1,1,1) end
	if icon then WorldMapTooltip:AddTexture(icon) end
	if indent then WorldMapTooltip:AddTexture(ZGV.DIR .. "\\Skins\\blank") end
end

local function get_tooltip_data(pin)
	local poi = pin.waypoint.storedData
	if not poi then return end

	WorldMapTooltip:SetOwner(pin,"ANCHOR_TOP")
	WorldMapTooltip:ClearLines()

	if poi.poitype=="treasure" then	
		addline("|cffffffffTreasure: "..poi.poiname)
	end
	if poi.poitype=="rare" then 
		addline("|cffffffffRare: "..poi.poiname)
		if poi.poilvl-UnitLevel("player")>3 then
			addline("|cffee0000Warning: This NPC will be hard to solo at your level") 
		end
	end

	if poi.poicomment then 
		addline("|cffffaa00"..poi.poicomment) 
	end

	if ZGV.db.char.ActivatedPois[poi.ident] then
		addline("|cffffaa00Click to remove from Guide Viewer|r") 
	else
		addline("|cffffaa00Click to send to Guide Viewer|r") 
	end

	if poi.poicurrencydata and #poi.poicurrencydata>0 and (poi.poitype=="treasure" or poi.poitype=="rare") then
		addline("|cffffffff|r")
		addline("|cffffffffCurrency:")
		for _,currency in pairs(poi.poicurrencydata) do
			addline("|cffffffff".."|T"..currency.icon..":0|t "..currency.type)
		end
	end

	if poi.poiitemid then
		addline("|cffffffff|r")
		addline("|cffffffffReward:")
		for _,itemdata in pairs(poi.poiitemdata) do
			if itemdata.item == "RANDOM" then
				local _,_,_,color = GetItemQualityColor(2)

				addline(((itemdata.value and itemdata.value.." ") or "")..("|c"..(color or "ffffffff")).."Random green"..(tonumber(itemdata.value or 1) > 1 and "s" or ""),ZGV.DIR.."\\Skins\\poirandomgreen")
			else
				EmbeddedItemTooltip_SetItemByID(WorldMapTooltip.ItemTooltip,itemdata.item)
			end
		end
	end

	WorldMapTooltip:Show()
end

local function poi_waypoint_click(way,button)
	if UnitAffectingCombat("player") then return end

	local poi = way.waypoint.storedData

	if button=="LeftButton" then
		-- deactive all current pois
		table.wipe(ZGV.db.char.ActivatedPois)

		local currentState = way.waypoint.isActivated
		for i,point in pairs(ZGV.Pointer.pointsets["zgv_poi_"..Poi.DisplayedPoiSet].points) do
			point.isActivated = false
		end
		way.waypoint.isActivated = not currentState

		ZGV.db.char.ActivatedPois[way.waypoint.poiNum]=way.waypoint.isActivated 
		if way.waypoint.isActivated then
			ZGV:SetStepFocus(way.waypoint.storedData)
			way.waypoint:SetIcon(poi.poiicon_on)
		else
			ZGV.Poi.Points[way.waypoint.poiNum].is_expanded = false
			way.waypoint:SetIcon(poi.poiicon)
			ZGV:SetStepFocus(ZGV.CurrentStep)
		end

		get_tooltip_data(way)
		Poi.DataProvider:RefreshAllData()
		ZGV:UpdateFrame(true)
	end
end

function Poi:RegisterWaypoints()
	Poi.Waypoints = {}
	local collectedt = 0
	local collectedr = 0
	Poi.DoneLoadingPoints = false

	for i,poi in pairs(Poi.Points) do  repeat
		if Poi:CheckValidity(poi) then -- we do not care about pois that are already completed
			local newway = {}
			newway.map = poi.starts_m
			newway.floor = poi.starts_f or 0
			newway.x = poi.starts_x
			newway.y = poi.starts_y
			if not ZGV.softassert(newway.map and newway.x and newway.y,"No map/x/y in POI #"..i.." "..(poi.name or "unnamed")) then break end  --continue

			newway.title = poi.name


			if ZGV.db.char.ActivatedPois[i] then
				newway.icon = poi.poiicon_on
			else
				newway.icon = poi.poiicon
			end

			newway.OnClick = poi_waypoint_click
			newway.tooltipfunc = get_tooltip_data

			newway.onminimap = "zone"
			newway.onworldmap = "zone"
			newway.storedData = poi

			newway.poiNum = i
			
			Poi.Waypoints[newway.map] = Poi.Waypoints[newway.map] or {}
			table.insert(Poi.Waypoints[newway.map],newway)
			--Poi.Waypoints[i] = newway
		end --/validity
	until true  end

	Poi.DoneLoadingPoints = true
	ZGV:SendMessage("ZGV_POI_REGISTERED_WAYS", "done")
end

-- TODO Refactor, low priority. Maintains leftover code from early version where more than one poi could be selected, and where nearby pois were autoadded to viewer
Poi.NearPois = {}
Poi.CachedCombatPoi = {}
function Poi:GetNearPois()
	table.wipe(Poi.NearPois)
	if not ZGV.db.profile.poienabled then return Poi.NearPois end
	if UnitIsGhost("player") then return Poi.NearPois end

	local ActivePoiNum = nil

	for i,v in pairs(ZGV.db.char.ActivatedPois) do
		if v and Poi.Points[i] then
			if not Poi:CheckValidity(Poi.Points[i]) then
				i=nil
			else
				ActivePoiNum = i
			end
		end
	end

	-- if player is in combar, Keep active poi visible no matter what.
	if UnitAffectingCombat("player") then
		if ActivePoiNum then 
			if not Poi.CachedCombatPoi[ActivePoiNum] then
				Poi.CachedCombatPoi[ActivePoiNum] = Poi.Points[ActivePoiNum]
			end
		end
		return Poi.CachedCombatPoi
	else
		table.wipe(Poi.CachedCombatPoi)
	end

	if not ActivePoiNum then return Poi.NearPois end
	if not Poi:CheckValidity(Poi.Points[ActivePoiNum]) then return Poi.NearPois end

	table.insert(Poi.NearPois,Poi.Points[ActivePoiNum])

	return Poi.NearPois
end


-- TODO Refactor, low priority. Maintains leftover code from early version where more than one poi could be selected, and where nearby pois were autoadded to viewer
local poisteps={}
function Poi:GetListOfPois()
	table.wipe(poisteps)

	if not ZGV.db.profile.poienabled then return poisteps end
	if not Poi.DoneLoadingPoints then return poisteps end


	local nearpois = Poi:GetNearPois()
	local poiindex = 1

	for nearpoisindex,poi in pairs(nearpois) do
		local announce_index = poi.stepstart
		local announce_ident = poi.ident
		local announce_guide = poi.parentGuide

		for index=poi.stepstart,poi.stepend do -- find first not completed poi step
			local check_step = announce_guide.steps[index]
			if not check_step.was_poi_complete and check_step:IsComplete() then
				check_step.was_poi_complete = true
			end

			if not check_step.was_poi_complete then
				announce_index = index
				break
			end
		end

		Poi.Points[announce_ident].is_expanded = true
		poisteps[poiindex] = announce_guide.steps[announce_index]

		-- if we are on next step of multistep poi, keep it focused
		if announce_index~=poi.stepstart then poisteps[poiindex].isFocused=true end

		poiindex = poiindex + 1
	end

	local prevPoint = Poi.ActivePoiStepNum
	Poi.ActivePoiStepSet = false
	Poi.ActivePoiStepNum = nil
	--ZGV:Debug("&poi Cleared ActivePoiStepSet")


	for _,poi in ipairs(poisteps) do
		if Poi.Points[poi.ident].is_expanded then
			--ZGV:Debug("&poi Setting ActivePoiStepSet (#%d, \"%s\")",poi.num,poi.poiname)
			Poi.ActivePoiStepSet = true
			Poi.ActivePoiStep = poi
			Poi.ActivePoiStepNum = poi.ident
		end
	end

	if Poi.ActivePoiStepSet and prevPoint ~= Poi.ActivePoiStep.ident then 
	-- we have a new active poi, show its goto dots, hide old ones
		ZGV:Debug("&poi We have a new active poi, show its goto dots, hide old ones.")
		--ZGV.Pointer:ClearWaypoints("poigoto") -- sinus: Waypoints:ShowWaypoints now does this.
		--Poi.ActivePoiStepDisplayed = false
		ZGV:ShowWaypoints()
	end
	if Poi.ActivePoiStepSet and prevPoint == Poi.ActivePoiStep.ident and not Poi.ActivePoiStepDisplayed then 
	-- prevent setwaypoint called from step focus from readding existing dots
		ZGV:Debug("&poi Poi step displayed.")
		Poi.ActivePoiStepDisplayed = true
	end
		
	if not Poi.ActivePoiStepSet and prevPoint then
	-- no active poi, hide goto dots and reset waypoint to default
		ZGV:Debug("&poi no active poi, hide goto dots and reset waypoint to default.")
		ZGV.Pointer:ClearWaypoints("poigoto")
		ZGV:ScheduleTimer(function() ZGV:ShowWaypoints() end,0)
	end

	if not Poi.ActivePoiStepSet and (ZGV.CurrentStep and not ZGV.CurrentStep.isFocused) then
	-- no active poi, return focus to main step
		ZGV:SetStepFocus(ZGV.CurrentStep)
	end

	Poi.CurrentPoiSteps = poisteps
	return poisteps
end

function Poi:ChangeState(enable)
	--if not ZGV.DEV then enable=false end  --devwall

	if ZGV.Poi.ActivePoiStep and ZGV.Poi.ActivePoiStep.isFocused then
		ZGV.Poi.ActivePoiWasFocused=true
	end

	if enable then 
		Poi:Thread_RegisterPoiGuide() 
	else
		ZGV.Pointer:ClearSet("zgv_poi_"..Poi.DisplayedPoiSet)
		Poi.Points = {}
	end
end

function Poi:ShowMapButtons()
	if not WorldMapFrame then return end
	if Poi.MapButtonFrame then return end

	--if not ZGV.DEV then return end  --devwall

	Poi.MapButtonFrame = CHAIN(CreateFrame("FRAME","ZygorPoiMapButtonFrame",WorldMapFrame.BorderFrame))
		:SetPoint("BOTTOMLEFT",WorldMapFrame.BorderFrame,"BOTTOMLEFT",5,-20)
		:SetSize(50,50)
		:SetBackdrop({bgFile="Interface\\Minimap\\MiniMap-TrackingBorder"})--,tile=true, tileSize=50})
		:SetFrameLevel(610)
		:Show()
	.__END

	Poi.MapButton = CHAIN(CreateFrame("Button", "ZygorPoiMapButton" , Poi.MapButtonFrame))
		:SetSize(20,20)
		:SetPoint("TOPLEFT", Poi.MapButtonFrame, "TOPLEFT", 5, -5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\zglogo-back"})
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zglogo")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() Poi:ShowMapMenu() end)
		:Show()
	.__END
	Poi.MapButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)
end

function Poi:ShowMapMenu()
	--if not ZGV.DEV then return end  --devwall

	local self=ZGV.Poi.MapButtonFrame 
	if not self.menu then self.menu = CreateFrame("FRAME",self:GetName().."Menu",self,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(self.menu, 0, 0, "BOTTOMLEFT", self, "BOTTOMRIGHT")
	local menu = {}

	if ZGV.db.profile.poienabled then 
		tinsert(menu,{
				text = L['opt_poidisable'],
				tooltipTitle = L['opt_poidisable'],
				tooltipText = L['opt_poidisable_desc'],
				tooltipOnButton=1,
				func = function() ZGV:SetOption("Poi","poienabled off") ZGV.Poi:ChangeState(false) end,
				notCheckable=0,
			})
	--[[
		tinsert(menu,{
				text = L['opt_poirange'],
				tooltipTitle = L['opt_poirange'],
				tooltipText = L['opt_poirange_desc'],
				hasArrow = true,
				menuList = {
					{ text = L['opt_poirange_50'], checked = function() return (ZGV.db.profile.poirange==50) end, func = function() ZGV.db.profile.poirange=50 end },
					{ text = L['opt_poirange_100'], checked = function() return (ZGV.db.profile.poirange==100) end, func = function() ZGV.db.profile.poirange=100 end },
					{ text = L['opt_poirange_150'], checked = function() return (ZGV.db.profile.poirange==150) end, func = function() ZGV.db.profile.poirange=150 end },
					{ text = L['opt_poirange_200'], checked = function() return (ZGV.db.profile.poirange==200) end, func = function() ZGV.db.profile.poirange=200 end },
					{ text = L['opt_poirange_250'], checked = function() return (ZGV.db.profile.poirange==250) end, func = function() ZGV.db.profile.poirange=250 end },
					{ text = L['opt_poirange_300'], checked = function() return (ZGV.db.profile.poirange==300) end, func = function() ZGV.db.profile.poirange=300 end },
				},
				notCheckable=1,
			})
	--]]

		local poiTypeList = {}
		for i=1,#POI_TYPES do
			local keyword,display = POI_TYPES[i].keyword,POI_TYPES[i].display
			if Poi.OwnedTypes[keyword] then
				tinsert(poiTypeList,
						{ text = display,
						keepShownOnClick=true, 
						checked = function() return not ZGV.db.profile.hideguide[keyword] end, 
						func = function() 
							if ZGV.db.profile.hideguide[keyword] then
								ZGV.db.profile.hideguide[keyword] = nil
							else
								ZGV.db.profile.hideguide[keyword] = true
							end
							ZGV.Poi:ChangeState(true) 
							UIDropDownFork_Refresh(self.menu) 
						end }
				)
			end
		end

		tinsert(menu,{
				text = L['opt_poishow'],
				tooltipTitle = L['optpoishow_'],
				tooltipText = L['opt_poishow__desc'],
				hasArrow = true,
				menuList = poiTypeList,
				notCheckable=1,
			})


		tinsert(menu,{
				text = L['opt_poitype'],
				tooltipTitle = L['opt_poitype'],
				tooltipText = L['opt_poitype_desc'],
				hasArrow = true,
				menuList = {
					{ text = L['opt_poitype_quick'], 
					keepShownOnClick=true, 
					checked = function() return (ZGV.db.profile.poitype==1) end, 
					func = function() 
						ZGV.db.profile.poitype=1 
						ZGV.Poi:ChangeState(true) 
						UIDropDownFork_Refresh(self.menu) 
					end },
					{ text = L['opt_poitype_complete'], 
					keepShownOnClick=true, 
					checked = function() return (ZGV.db.profile.poitype==2) end, 
					func = function() 
						ZGV.db.profile.poitype=2 
						ZGV.Poi:ChangeState(true) 
						UIDropDownFork_Refresh(self.menu) 
					end },
				},
				notCheckable=1,
			})
		tinsert(menu,{
				text = L['opt_poioptions'],
				tooltipTitle = L['opt_poioptions'],
				tooltipText = L['opt_poioptions_desc'],
				tooltipOnButton=1,
				func = function() ZGV:OpenOptions("poi") end,
				notCheckable=0,
			})
	
	else
		tinsert(menu,{
				text = L['opt_poienabled'],
				tooltipTitle = L['opt_poienabled'],
				tooltipText = L['opt_poienabled_desc'],
				tooltipOnButton=1,
				func = function() ZGV:SetOption("Poi","poienabled on") ZGV.Poi:ChangeState(true) end,
				notCheckable=0,
			})
		tinsert(menu,{
				text = L['opt_poioptions'],
				tooltipTitle = L['opt_poioptions'],
				tooltipText = L['opt_poioptions_desc'],
				tooltipOnButton=1,
				func = function() ZGV:OpenOptions("poi") end,
				notCheckable=0,
			})
	end
	
	EasyFork(menu,self.menu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(self.menu, 300)
end

function Poi:Thread_RegisterPoiGuide()
	local thread = coroutine.create(function() Poi:RegisterPoiGuide() end)
	Poi.registration_timer = ZGV:ScheduleRepeatingTimer(function()
		if coroutine.status(thread)=="dead" then ZGV:CancelTimer(Poi.registration_timer) return end
		local t1=debugprofilestop()
		local ok,msg = coroutine.resume(thread)
		t1=debugprofilestop()-t1
		if ok then
			ZGV:Debug(("Registering POIs in thread: %s, %dms"):format(msg or "-",t1))
		else error(msg) end
		ZGV:Debug("POI: %s",msg)
		if coroutine.status(thread)=="dead" then ZGV:CancelTimer(Poi.registration_timer) end
	end,
	0.05)
end

local function EventHandler(self, event, ...)
	if event=="ZGV_GUIDES_PARSED" then Poi:Thread_RegisterPoiGuide() end
	if event=="ZGV_POI_REGISTERED_GUIDE" then Poi:RegisterPoints() end
	if event=="ZGV_POI_REGISTERED_POINTS" then Poi:RegisterWaypoints() end
	if event=="ZGV_POI_REGISTERED_WAYS" then Poi.DataProvider:RefreshAllData() end

	if event=="QUEST_LOG_UPDATE" 
	or event=="LOOT_READY" 
	or event=="LOOT_SLOT_CLEARED" 
	or event=="LOOT_CLOSED" 
	or event=="ENCOUNTER_LOOT_RECEIVED" 
	or event=="CHAT_MSG_CURRENCY" then 
		ZGV:ScheduleTimer(function() 
			Poi:GetListOfPois()
			ZGV:UpdateFrame(true)
			Poi.DataProvider:RefreshAllData()
		end,0)
		ZGV:ScheduleTimer(function() 
			Poi:GetListOfPois()
			ZGV:UpdateFrame(true)
			Poi.DataProvider:RefreshAllData()
		end,0.5)
	end
end

tinsert(ZGV.startups,{"POI hooks",function(self)
	ZGV.db.char.ActivatedPois = ZGV.db.char.ActivatedPois or {}
	ZGV.db.profile.hideguide = ZGV.db.profile.hideguide or {}
	ZGV:AddMessageHandler("ZGV_GUIDES_PARSED",EventHandler)
	ZGV:AddMessageHandler("ZGV_POI_REGISTERED_GUIDE",EventHandler)
	ZGV:AddMessageHandler("ZGV_POI_REGISTERED_POINTS",EventHandler)
	ZGV:AddMessageHandler("ZGV_POI_REGISTERED_WAYS",EventHandler)
	CreateFrame( "GameTooltip", "MyScanningTooltip", nil, "GameTooltipTemplate" )
	Poi.Events = CreateFrame("Frame")
	Poi.Events:RegisterEvent("QUEST_LOG_UPDATE")
	Poi.Events:RegisterEvent("LOOT_READY")
	Poi.Events:RegisterEvent("LOOT_CLOSED")
	Poi.Events:RegisterEvent("CHAT_MSG_CURRENCY")
	Poi.Events:RegisterEvent("ENCOUNTER_LOOT_RECEIVED")
	--Poi.Events:RegisterEvent("WORLD_MAP_UPDATE")
	Poi.Events:SetScript("OnEvent",EventHandler)
	Poi:ShowMapButtons()

	Poi.DisplayedPoiSet=0

end})

Poi.DataProvider	= CreateFromMixins(MapCanvasDataProviderMixin)
local DataProvider	= Poi.DataProvider

function DataProvider:RemoveAllData()
	ZGV.Pointer:ClearSet("zgv_poi_"..Poi.DisplayedPoiSet)
end

function DataProvider:RefreshAllData(fromOnShow)
	if not Poi.DoneLoadingPoints then return end

	if not ZGV.db.profile.poienabled then return end
	if not ZGV.Poi.Waypoints then return end

	local selfmap = self and self.GetMap and self:GetMap()
	if not selfmap then return end

	local mapid = selfmap.GetMapID and selfmap:GetMapID()
	if not mapid then return end

	local cdb = ZGV.db.char
	for i,point in pairs(ZGV.Pointer.waypoints) do
		if point.poiNum and point.storedData then
			local active = cdb.ActivatedPois[point.poiNum]
			point:SetIcon(active and point.storedData.poiicon_on or point.storedData.poiicon)

			if not Poi:CheckValidity(point.storedData) then
				cdb.ActivatedPois[point.poiNum] = nil
				ZGV.Pointer:RemoveWaypoint(point)
			end
		end
	end

	if not Poi.Waypoints[mapid] and not forceRefresh then return end

	if Poi.DisplayedPoiSet~=mapid or forceRefresh then
		ZGV.Pointer:ClearSet("zgv_poi_"..Poi.DisplayedPoiSet)

		Poi.DisplayedPoiSet = mapid
		ZGV.Pointer:Thread_ShowSet(
			{
				coords=ZGV.Poi.Waypoints[Poi.DisplayedPoiSet],
				type="poi",
				ants=nil
			},
			"zgv_poi_"..Poi.DisplayedPoiSet
		)
		Poi.DoneLoadingPoints = true
	end
end
