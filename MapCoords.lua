assert (ZygorGuidesViewer,"Zygor Guides Viewer not loaded properly!")

local ZGV=ZygorGuidesViewer

function ZGV.GetPlayerPosition()
	local map = C_Map.GetBestMapForUnit("player")
	if not map then return 0,0,0 end
	local coords = C_Map.GetPlayerMapPosition(map,"player")
	if not coords then return 0,0,map end
	return coords.x,coords.y,map
end

function ZGV.GetCurrentMapContinent()
	local map = C_Map.GetBestMapForUnit("player")
	--if WorldMapFrame:IsVisible() then map=WorldMapFrame:GetMapID() end
	--if FlightMapFrame:IsVisible() then map=FlightMapFrame:GetMapID() end -- maps in FMF have different parents than those in worldmap

	return ZGV.GetMapContinent(map)
end

local Enum_Continent = Enum.UIMapType.Continent
local Enum_Dungeon = Enum.UIMapType.Dungeon
local Enum_Orphan = Enum.UIMapType.Orphan

local force_maptype={
	[427]=3,[582]=3,[590]=3,[622]=3,[624]=3,[750]=3,[747]=3, -- these zones have mapType==6, let's correct it to zone
	[626]=5,[627]=5,[628]=5,[629]=5, -- Dalaran L is a micro, not a dungeon
	[125]=5,[126]=5, -- Dalaran is a micro, not a dungeon
	[499]=5,[500]=5, -- Deeprun Tram 
	[86]=5, -- Cleft of Shadow is a micro, not a dungeon.
	[179]=6, -- Gilneas is an orphan (its submaps: 202,180,181,182,275 will obey)
	[1183]=5, -- Thornheart is a micro, not a dungeon.
	[1167]=5, [1166]=5, -- Zanchul in Dazar'alor are micro maps, not dungeon.
}
local ZGV_mapcache = {}
function ZGV.GetMapInfo(mapid)
	if not mapid then return end
	local mapdata = ZGV_mapcache[mapid]
	if mapdata then return mapdata end
	ZGV_mapcache[mapid] = C_Map.GetMapInfo(mapid)
	
	local forced_type=force_maptype[mapid]
	if forced_type then ZGV_mapcache[mapid].mapType=forced_type end
	
	return ZGV_mapcache[mapid]
end

function ZGV.GetMapContinent(mapID)
	local mapInfo = ZGV.GetMapInfo(mapID);
	while mapInfo do
		if mapInfo.mapType == Enum_Dungeon then
			return mapID,"dungeon"
		elseif mapInfo.mapType == Enum_Orphan then
			return mapID,"orphan"
		elseif mapInfo.mapType == Enum_Continent then
			return mapInfo.mapID,mapInfo.name;
		end
		mapInfo = ZGV.GetMapInfo(mapInfo.parentMapID);
	end
	return mapID,"Unknown continent"
end

function ZGV.GetCurrentMapID() 
	local currentmap = C_Map.GetBestMapForUnit("player")
	if not currentmap then return 0 end
	local mapInfo = ZGV.GetMapInfo(currentmap);
	return mapInfo and mapInfo.mapID or 0;
end

function ZGV.GetMapNameByID(id,floor)
	if type(id) == "string" then id,floor = LibRover:GetMapByNameFloor(id,floor) end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	return mapInfo and mapInfo.name or "nil"
end

function ZGV.GetMapGroupID(id,floor)
	if type(id) == "string" then id,floor = LibRover:GetMapByNameFloor(id,floor) end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	if mapInfo and mapInfo.groupID==nil then
		mapInfo.groupID = C_Map.GetMapGroupID(id)
		if not mapInfo.groupID then mapInfo.groupID=false end  -- but not nil!
	end
	return mapInfo and mapInfo.groupID or nil
end

function ZGV.GetMapFloorNameByID(id,floor)
	if type(id) == "string" then id,floor = LibRover:GetMapByNameFloor(id,floor) end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	if mapInfo and not mapInfo.floorname then repeat
		local groupID = C_Map.GetMapGroupID(id)   if not groupID then break end
		local groupInfo = C_Map.GetMapGroupMembersInfo(groupID)  if not groupInfo then break end
		for i,floor in ipairs(groupInfo) do
			if floor.mapID==id then mapInfo.floorname=floor.name break end
		end
	until true end
	return mapInfo and mapInfo.floorname or mapInfo.name or "nil"
end

function ZGV.GetCurrentMapDungeonLevel()
	return LibRover:GetFloorByMapID(C_Map.GetBestMapForUnit("player"))
end



local cache={}  -- makes the lookup 50% faster (1mil runs on random maps: 2000ms without cache, 1300 with cache)

-- subfloors in Dazar'Alor should be grouped, really. Link 1165 to others - others themselves will be fine.
cache["1163_1164"]=true
cache["1163_1165"]=true
cache["1164_1165"]=true
cache["1165_1166"]=true
cache["1165_1167"]=true

function ZGV.MapsOnDifferentFloors(m1,m2)
	if m1==m2 then return false end
	if m1>m2 then m1,m2=m2,m1 end
	if cache[m1]==false then return false end
	if cache[m2]==false then return false end
	local c=cache[m1.."_"..m2]
	if c~=nil then return c end
	local group_w = ZGV.GetMapGroupID(m1)
	if not group_w then cache[m1]=false return false end
	local group_c = ZGV.GetMapGroupID(m2 or m1)
	if not group_c then cache[m2]=false return false end
	c=(group_w==group_c)
	cache[m1.."_"..m2]=c
	return c
end

function ZGV.Benchmark(f,n)
	local t1=debugprofilestop()
	for i=1,n do f() end
	local t2=debugprofilestop()
	print(("Time taken for %d runs: %.3f ms, %.3f ms avg"):format(n,t2-t1,(t2-t1)/n))
end




local GWP=C_Map.GetWorldPosFromMapPos

function EQ(a,b) return abs(a-b)<0.1 end
function NE(a,b) return not EQ(a,b) end

MAPDATA={}

local MAPDATA=MAPDATA

function GetMAPDATAFromGWP()
	for i=1,2000 do repeat
		local _,d1=GWP(i,{x=0,y=0})
		local _,d2=GWP(i,{x=1,y=1})
		if not d1 then break end
		MAPDATA[i]={_,d1.y,d1.x,d1.y-d2.y,d1.x-d2.x} -- WTF? Does GWPFMP mix its x and y !?
	until true end
end
function GetMAPDATAFromHBD()
	for i=1,2000 do repeat
		local d=ZGV.HBD.mapData[i]
		if not d then break end
		MAPDATA[i]={d.instance,d[3],d[4],d[1],d[2]}
	until true end
end
GetMAPDATAFromHBD()

function HBDmaptest(n)
	for i=n or 1,n or 2000 do repeat
		_,d1=GWP(i,{x=0,y=0})
	 	dh=ZGV.HBD.originaldb2[i]
	 	local inf = C_Map.GetMapInfo(i)
		if d1 and not dh then print(i,"missing from HBD: ",inf.name,inf.mapType)
		elseif d1 and (NE(MAPDATA[i][2],dh[5]) or NE(MAPDATA[i][3],dh[4])) then
			print(("%4d %s\n C_M: %5d %5d\n HBD: %5d %5d"):format(i, C_Map.GetMapInfo(i).name, MAPDATA[i][2],MAPDATA[i][3], dh[3],dh[4]))
		end
	until true end
end
function HBDuse(id)
	local dh=ZGV.HBD.db2MapData[id]
	if not dh then print("No",id,"in HBD") end
	MAPDATA[id]={dh.instance,dh[4],dh[3],dh[1],dh[2]}
end

local sqrt=math.sqrt
function Mdist(map1,x1,y1,map2,x2,y2)
	local dx,dy
	local dm1=MAPDATA[map1]
	if map1==map2 then  -- same map
		dx = ((x1-x2)*dm1[4]) -- should be x2-x1, of course, but world coords are inane.
		dy = ((y1-y2)*dm1[5])
	else
		local dm2=MAPDATA[map2]
		if dm1[1]~=dm2[1] then return nil end  -- diff continent
		local gx1 = dm1[2]-dm1[4]*x1
		local gy1 = dm1[3]-dm1[5]*y1
		local gx2 = dm2[2]-dm2[4]*x2
		local gy2 = dm2[3]-dm2[5]*y2
		dx = gx2-gx1
		dy = gy2-gy1
	end
	return sqrt(dx*dx+dy*dy),dx,dy
end

local cosmicMapData = {}
COSMICMAPDATA=cosmicMapData

-- data for the azeroth world map
--cosmicMapData[0] = { 96000, 60000, 82000, 37000 } -- Eastern : too wide, though proportional
cosmicMapData[0] = { 96000, 60000, 82000, 37000 } -- Eastern
--cosmicMapData[1] = { 97000, 71000, 65000, 47000 } -- Kalimdor : too wide, though proportional
cosmicMapData[1] = { 160000, 71000, 112000, 47000 } -- Kalimdor

cosmicMapData[571] = { 110000, 220000, 86000, 108000 } -- Northrend
cosmicMapData[870] = { 250000, 210000, 195000, 165000 } -- Pandaria
cosmicMapData[1220] = { 3000000, 2000000, 2420000, 1050000 } -- Broken Isles
cosmicMapData[1642] = { 3000000, 2000000, 2400000, 1120000 } -- Zandalar
cosmicMapData[1643] = { 3000000, 2000000, 2440000, 1080000 } -- Kul Tiras

cosmicMapData[648] = { 250000, 210000, 195000, 165000 } -- The Lost Isles
cosmicMapData[648] = { 250000, 210000, 195000, 165000 } -- The Maelstrom

-- draenor
cosmicMapData[1116] = { 70000, 50000, 34000, 25000 }
-- outland
cosmicMapData[530] = { 65000, 46000, 21000, 31000 }

local function GetCosmicWorldMapCoordinatesFromWorld(x,y,instance,allowOutOfBounds)
    local data = cosmicMapData[instance]
    if not data or data[1] == 0 or data[2] == 0 then return nil, nil end
    if not x or not y then return nil, nil end

    local width, height, left, top = data[1], data[2], data[3], data[4]
    x, y = (left - x) / width, (top - y) / height

    -- verify the coordinates fall into the zone
    if not allowOutOfBounds and (x < 0 or x > 1 or y < 0 or y > 1) then return nil, nil end

    return x, y
end

MAPDATA_XLT = {}
local MXLT=MAPDATA_XLT
local abs,unpack=abs,unpack
function Mxlt(map1,x,y,map2,oob_ok)
	if map1==map2 then return x,y end

	if map2==947 --[[AZEROTH--]] then
		return ZGV.HBD:GetAzerothWorldMapCoordinatesFromWorld(ZGV.HBD:GetWorldCoordinatesFromZone(x,y,map1))
	elseif map2==946 --[[COSMIC--]] then
		return GetCosmicWorldMapCoordinatesFromWorld(ZGV.HBD:GetWorldCoordinatesFromZone(x,y,map1))
	end

	-- ((o1+w1*x)-o2)/w2  =  (o1 + w1*x - o2) / w2  =  (o1-o2)/w2 + (w1/w2)*x
	-- o12 = (o1-o2)/w2
	-- s12 = w1/w2

	local ox,sx,oy,sy,overlap
	local XM1,XM12
	XM1 = MXLT[map1]
	local need
	if XM1 then
		XM12 = XM1[map2]
	else
		XM1={} MXLT[map1]=XM1
	end
	if XM12==false then
		return false
	elseif XM12 then
		ox,sx,oy,sy,overlap=unpack(XM12)
		if not oob_ok and not overlap then return false end
	else
		local dm1=MAPDATA[map1]
		local dm2=MAPDATA[map2]
		if not dm1 or not dm2 then return false end
		if dm1[1]~=dm2[1] then XM1[map2]=false return false end  -- diff continent
		ox = (dm2[2]-dm1[2])/dm2[4]
		sx = dm1[4]/dm2[4]
		oy = (dm2[3]-dm1[3])/dm2[5]
		sy = dm1[5]/dm2[5]
		overlap = max( abs(dm1[2]-dm2[2]+dm2[4]), abs(dm2[2]-dm1[2]+dm1[4])) < abs(dm1[4])+abs(dm2[4])
		      and max( abs(dm1[3]-dm2[3]+dm2[5]), abs(dm2[3]-dm1[3]+dm1[5])) < abs(dm1[5])+abs(dm2[5])
		XM1[map2]={ox,sx,oy,sy,overlap}
	end

	local x2=sx*x+ox
	local y2=sy*y+oy

	if x2<0 or x2>1 or y2<0 or y2>1 and not oob_ok then return false end
	return x2,y2
end

function Mxlt_test()
	-- 1000000 times:
	--  debugprofilestop() = 140
	--  nop() = 130
	--  local T={}  function F(i) return T[i] end

	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 in-bounds map translations")
		for i=1,1000000 do Mxlt(85,0.2,0.2,86,true) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.1)

	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 bad-cont map translations")
		for i=1,1000000 do Mxlt(85,0.2,0.2,101,true) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.2)

	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 oob map translations")
		for i=1,1000000 do Mxlt(85,0.2,0.2,65,false) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.3)

	local HBD=ZGV.HBD
	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 HBD:TZC")
		for i=1,1000000 do HBD:TranslateZoneCoordinates(0.2,0.2,85,65,false) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.3)
end




function FIXMAPZOOM()
	local MapCanvasScrollControllerMixin = {}

	function MapCanvasScrollControllerMixin:CreateZoomLevels()
		local layers = C_Map.GetMapArtLayers(self.mapID);
		local widthScale = self:GetWidth() / layers[1].layerWidth;
		local heightScale = self:GetHeight() / layers[1].layerHeight;
		self.baseScale = math.min(widthScale, heightScale);

		local currentScale = 0;
		local MIN_SCALE_DELTA = 0.01;  -- zoomLevels must have increasing scales
		self.zoomLevels = { };
		for layerIndex, layerInfo in ipairs(layers) do
			local zoomDeltaPerStep, numZoomLevels;

			layerInfo.maxScale = layerInfo.maxScale * 2000
			layerInfo.additionalZoomSteps = layerInfo.additionalZoomSteps + 10

			local zoomDelta = layerInfo.maxScale / layerInfo.minScale;
			if zoomDelta > 0 then
				-- make multiple zoom levels
				numZoomLevels = 2 + layerInfo.additionalZoomSteps;
				zoomDeltaPerStep = zoomDelta ^ ( 1 / (numZoomLevels - 1) );  --sinus
			else
				numZoomLevels = 1;
				zoomDeltaPerStep = 1;
			end

			for zoomLevelIndex = 0, numZoomLevels - 1 do
				currentScale = math.max(layerInfo.minScale * zoomDeltaPerStep^zoomLevelIndex, currentScale + MIN_SCALE_DELTA);  --sinus
				table.insert(self.zoomLevels, { scale = currentScale * self.baseScale, layerIndex = layerIndex })
			end
		end
	end

	WorldMapFrame:GetCanvasContainer().CreateZoomLevels = MapCanvasScrollControllerMixin.CreateZoomLevels

	WorldMapFrame:GetCanvasContainer():CreateZoomLevels()
end

--WorldMapFrame:GetCanvasContainer():SetMouseWheelZoomMode(MAP_CANVAS_MOUSE_WHEEL_ZOOM_BEHAVIOR_SMOOTH)
