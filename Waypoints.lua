local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local BZL,BZR = ZGV.BZL,ZGV.BZR

local tinsert=tinsert

function ZGV:getXY(id)
	self:Debug("getXY "..id)
	return (id % 10001)/10000, math.floor(id / 10001)/10000
end

ZGV.Waypoints = {}
local Waypoints = ZGV.Waypoints

local addonnames = {"none","internal","cart2","carbonite","tomtom"}
local addonnum = {}
for i=1,#addonnames do addonnum[addonnames[i]]=i end


function ZGV:ConnectWaypointAddon(addon)
	if not addon then addon=self.db.profile.waypointaddon end
end

function ZGV:AutodetectWaypointAddon()
	self.autodetectingwaypointaddon = true
	self:Print(L["waypointaddon_detecting"])

	local checks = {"cart2","carbonite","tomtom","internal"}
	for i=1,#checks do
		if self:IsWaypointAddonReady(checks[i]) then
			return checks[i]
		end
	end

	-- else
	self:Print(L["waypointaddon_notdetected"])
end

function ZGV:GetWaypointAddon()
	return addonnum[self.db.profile.waypointaddon] or 0
end

function ZGV:SetWaypointAddon(info,addon)
	if not addon then addon=info end
	if type(addon)=="number" then addon=addonnames[addon] end
	if not addon then
		-- try to autodetect
		addon = self:AutodetectWaypointAddon()
		if not addon then addon="none" end
	end
	addon=addon:gsub("[0-9]-_","")

	self:Debug("Setting waypoint addon: "..addon)
	if addon~="none" and not self:IsWaypointAddonReady(addon) then
		self:Print(L["waypointaddon_fail"]:format(L["opt_group_addons_"..addon]))
		return
	end

	-- disconnect the current addon
	--if (addon~=self.db.profile.waypointaddon) then
	self:UnsetWaypointAddon()
	--end

	self.db.profile.waypointaddon = addon
	--self.iconsregistered = false
	--self.iconregistryretries = 0
	self.ConnectedWaypointer = self.WaypointFunctions[addon]

	if not ZGV.loading then  self:Print(L["waypointaddon_set"]:format(L["opt_group_addons_"..addon]))  end

	self:ShowWaypoints()
--[[
	if (self.db.profile.waypointaddon=="none") then
		self.optionsmap.args.minicons.disabled = true
	else
		self.optionsmap.args.minicons.disabled = false
	end
	LibStub("AceConfigRegistry-3.0"):NotifyChange("ZygorGuidesViewer")
]]--
end

-- Some small utilities which may be useful to several waypointing backends
-- Moved 'em out of Internal waypointer so that TomTom, for example,
-- may equally enjoy the pleasures of nettles^W path-based navigation ~aprotas



-- Waypoint functions by addon

ZGV.WaypointFunctions = {}
--=========================================== TOMTOM =============================================
ZGV.WaypointFunctions['tomtom'] = {
	isready = function()
		-- make SURE we have TomTom and not Carbonite emulating it
		return not not (TomTom and IsAddOnLoaded("TomTom"))
	end,
	showwaypoints = function (self,command)
		local waypath=self.CurrentStep and self.CurrentStep.waypath or nil
		if not (waypath and #waypath.coords>1) then
			self:ClearTomTomWaypoints()
		end

		if command=="clear" then return end

		do ZGV:Print("TomTom support is temporarily down. Please use the Zygor internal waypointer.") return end

		if y then
			self:CreateTomTomWaypointXY(goalnumORx,y,title,true)
		else
			local waypath=self.CurrentStep and self.CurrentStep.waypath or nil
			if waypath then
				-- Copied from Internal one not to break things with scopes etc
				local antpoints
				if waypath.ants=="straight" or #waypath.coords<3 then
					antpoints = ZGV.Pointer.spawn_straight_ants(waypath.coords,waypath.loop,ZGV.Pointer.antphase)
				else
					antpoints = ZGV.Pointer.spawn_curve_ants(waypath.coords,waypath.loop,ZGV.Pointer.antphase)
				end

				--calc_angles(antpoints,waypath.loop)
				if antpoints then
					self.Pointer:ClearWaypoints("ant")
					self.Pointer:SetAntSpacing(self.db.profile.antspacing)

					for k,point in ipairs(antpoints) do
						ZGV.Pointer:SetWaypoint_ant (point.map,point.x,point.y, k, point.icon)
					end
				end
				-- Cut here
				self:CreateTomTomWaypath(waypath)
			else
				self:CreateTomTomWaypoints(goalnumORx)
			end
		end
	end,
	addmapnote = function (self,map,flr,x,y,data)
		self:CreateTomTomWaypointMFXY(map,flr,x,y,data.title,false)
	end,
	disconnect = function(self)
		-- TomTom can ask for clearing all waypoints; Carbonite should not.
		if StaticPopupDialogs["TOMTOM_REMOVE_ALL_CONFIRM"] then StaticPopupDialogs["TOMTOM_REMOVE_ALL_CONFIRM"]:OnAccept() end

		-- Carbonite doesn't do this, either
		if TomTomCrazyArrow then TomTomCrazyArrow:Hide() end
	end
}

do --=========================================== CARBONITE =============================================

	-- mapid_to_cz removed

	local lastwaypath -- Optimization trick, last waypath we were asked to display

	local function ClearCarboniteWaypoints()
		local map=Nx.Map:GetMap(1)
		if map then wipe(map.Targets) end
	end

	-- Finds an optimal travel route.
	local function FindTravelPathCarbonite(mid,x,y,data)
		--if not way then return end
		--if way.pathnode and way.pathnode.player then return end -- no pointing to self
		--self:ShowArrow(way)
		--if way.type=="route" then return end
		ZGV:Debug("&pointer FindTravelPathCarbonite")
		--Nx.ZygorTravelDestination = way
		LibRover:FindPath(0,0,0,mid,x,y, ZGV.WaypointFunctions.carbonite.PathFoundHandler, {title=data.title})
	end

	local function CreateCarboniteWaypointMXY(mapid,x,y,title,keep,pathfind)
		local map=Nx.Map:GetMap(1) if not map then return end
		local mid=Nx.AIdToId[mapid] -- AIdToId → AreaID to Carbonite ID ~ aprotas
		if mid then
			-- TODO should we need to ever give floor id?
			map:SetTargetXY(mid,x,y,title,keep)
			if pathfind and ZGV.db.profile.pathfinding then FindTravelPathCarbonite(mapid,x,y,{title=title}) end
			--map:ChangeTargetOrder(-1,1) -- TODO I have neither ability nor desire to find out what it does, but I'm just mimicking Nx.TTST behaviour here ~aprotas
		else
			self:Debug("Carbonite does not have an ID for map "..mapid.." please report")
		end
	end

	local function RecycleRouteCarbonite()
		-- WARNING we are being of evil by overriding user addon settings
		-- we could possibly restore it back but do we really have to?
		local map=Nx.Map:GetMap(1)
		if map then
			if not map.GOpts["RouteRecycle"] then
				ZGV:Debug("Forcing Carbonite setting: RouteRecycle")
				map.GOpts["RouteRecycle"]=true
			end
		end
	end

	local function OptimizeRouteCarbonite()
		-- TODO make sure this does not reverse the direction when it's NOT needed
		-- TODO testing on multipoint "regular" waypoints
		-- TODO testing on acyclic waypaths
		local map=Nx.Map:GetMap(1)
		if map then
			map:RouteTargets()
		end
	end

	-- Makes the waypoints set clear out at long (60 yard) radius
	local function LongClearanceCarbonite()
		local map=Nx.Map:GetMap(1)
		if map and map.Targets then
			-- Setting the distances
			local DIST=60 -- WARNING: hardcoded value
			local sqrt=math.sqrt
			for k,v in ipairs(map.Targets) do
				v.Rad=DIST
				if #map.Targets>1 then -- Making sure we're giving enough space not to overlap the previous point
					local u=map.Targets[k==1 and #map.Targets or k-1]
					local dist=sqrt((v.TargetMX-u.TargetMX)^2+(v.TargetMY-u.TargetMY)^2)	-- Distance between the points
					-- Correcting the waypath distance to the next waypoint
					if v.Radius>=dist and dist>0 then
						v.Radius=dist/2-1
						if v.Radius<1 then v.Radius=1 end
						ZGV:Debug("Waypoints ["..k.."→"..(k==1 and #map.Targets or k-1).."] are too packed, correcting clear distance to "..v.Radius)
					end
				end
			end
		end
	end

	-- Makes the waypoints not clear at all
	local function NoClearanceCarbonite()
		local map=Nx.Map:GetMap(1)
		if map and map.Targets then
			for k,v in ipairs(map.Targets) do
				v.Radius=-1 -- Carbonite must be -very- astonished
			end
		end
	end

	ZGV.WaypointFunctions['carbonite'] = {
		isready = function()
			return not not (Nx and Nx.Map)
		end,
		showwaypoints = function (self,command)
			local map=Nx.Map:GetMap(1)

			local waypath=self.CurrentStep and self.CurrentStep.waypath or nil

			if not (waypath and #waypath.coords>1) then
				ClearCarboniteWaypoints() -- There may be a need to preserve current waypath points
			end

			if command=="clear" then
				-- clear! TODO
				return
			end

			do ZGV:Print("Carbonite support is temporarily down. Please use the Zygor internal waypointer.") return end

			if y then
				CreateCarboniteWaypointMXY(ZGV.GetCurrentMapID(),goalnumORx,y,title,not "keep","pathfind")
				--map:SetTargetAtStr("%.2f %.2f",goalnumORx,y)
				return
			end

			if not self.CurrentStep or not self.CurrentStep.goals then return end
			--	if self.CurrentStep.mapnote then

			local x,y,zone
			local waypointscount

			if waypath and #waypath.coords>1 then
				if waypath~=lastwaypath then
					ClearCarboniteWaypoints() -- Postponed wiping action, saving the waypath setting
					local cordcount=#waypath.coords
					lastwaypath=waypath -- Remembering the waypath not to update it every time
					-- TODO please optimize this ~aprotas

					self:Debug("New waypath available, installing the points")

					waypointscount=0
					-- Carbonite has a noice ant system by itself, let's make use of it
					for i=1,cordcount do -- TODO reverse iterator, cmon, there should be one
						v=waypath.coords[cordcount-i+1]
						CreateCarboniteWaypointMXY(v.map,v.x*100,v.y*100,k,i>1,not "pathfind") -- TODO Where's the title?
						waypointscount=waypointscount+1
					end

					RecycleRouteCarbonite()
				end
			else
				lastwaypath=nil -- No waypath in this step, good
				-- "Simply" setting the waypoint
				for i=#self.CurrentStep.goals,1,-1 do
					local goal = self.CurrentStep.goals[i]
					local first=true
					if goal.map and goal.x and not goal.force_noway then
						self:Debug("Placing Carbonite waypoint")
						CreateCarboniteWaypointMXY(goal.map,goal.x*100,goal.y*100,goal.title or self.CurrentStep.title or goal.autotitle or self.CurrentStep:GetWayTitle() or "Step "..self.CurrentStepNum,not first, first and "pathfind")
						first=false
						waypointscount=(waypointscount or 0)+1
					end
				end
			end

			-- Making use of Carbonite waypoint organizer whereas possible
			if waypointscount then
				if waypointscount>1 then
					OptimizeRouteCarbonite()
					LongClearanceCarbonite()
				else
					NoClearanceCarbonite()
				end
			end

		end,
		clearmapnotes = function (self)
			local folders = Nx.Fav:FiF("Notes")
			for i,fol in ipairs(folders) do
				for j=1,#fol do
					if fol[j] and fol[j]:match("~#~.*%(ZG%)~") then
						tremove(fol,j)
						j=j-1
					end
				end
			end
			Nx.Fav:Upd()
		end,
		addmapnote = function (self,map,flr,x,y,data)  -- UNUSED
			--[[
			local folder=Nx.Fav:FiF("Zygor Guides")
			if not folder then
				folder=Nx.Fav:AdF1("Zygor Guides")
			end
			local fav = Nx.Fav:FiF1("Gold Guide","Name",folder)
			if not fav then
				fav=Nx.Fav:AdF2("Gold Guide",folder)
				fav["ID"]=maI
				sort(fav,function(a,b) return a["Name"]<-b["Name"] end)
			end

			local carbZone = map  --Nx.MNTI1[map] --zone IDs
			local fav = Nx.Fav:GNF(carbZone)
			local s=Nx.Fav:CrI("N",0,(data and data.title or "Gold Spot") .. " (ZG)",3,carbZone,x,y)
			Nx.Fav:AdI1(fav,nil,s)
			-- ...
			Nx.Fav:Upd()

			--]]
			--Nx:TTSTCZXY(contid,zoneid,x,y,data and data.title,false,true,true,nil)  -- cont,zone,x,y,name,persist,minimap,world,data
		end,
		disconnect = function(self)
			ClearCarboniteWaypoints()
		end,
		PathFoundHandler = function(state,path,ext)
			--if ZGV.Pointer.corpsearrow then return end

			if ext and ext.token and ext.token~=Nx.ZygorTravelDestination then ZGV:Debug("Found wrong path!") return end

			local map=Nx.Map:GetMap(1)

			if state=="success" then
				ClearCarboniteWaypoints() --Pointer:ClearSet("route")
				--local future_waypoints = {follow="pathfind",loop=false,ants="straight",coords={}}

				local first=true
				for i,node in ipairs(path) do while 1 do
					local icon
					if node.player then break end
					--and node.type~="end" then icon=Pointer.Icons.arrow else icon=Pointer.Icons.none end  -- start and end nodes are HIDDEN.
					
					CreateCarboniteWaypointMXY(node.m,node.x*100,node.y*100,node.maplabel,not first and "keep",not "pathfind")
					first = false
					do break end

					--[[

					local wayp = {map=node.m,floor=node.f,x=node.x,y=node.y, title=node.maplabel, arrowtitle=node.text,player=node.player, type="route", icon=icon, pathnode=node}
					-- force_noway=node.player, 

					if node.t=="end" then wayp.noskip = true end

					-- set up skipping

					wayp.radius = node.radius or ZGV.Pointer:GetDefaultStepDist() -- will account for flying
					if node.type=="taxi" then
						-- source taxi: never complete waypoint
						-- destination taxi: early complete waypoint, let LibRover wait for touchdown
						if node.link.mode~="taxi" then
							--start
							wayp.radius = 5
							wayp.noskip = true
						end
					elseif node.type=="portal" then
						if node.link.mode~="portal" then
							wayp.radius = 5
							wayp.noskip = true
						end
					elseif node.type=="ship" or node.type=="zeppelin" then
						if node.link.mode~="ship" and node.link.mode~="zeppelin" then
							wayp.radius = 5
							wayp.noskip = true
						else
							wayp.radius = 100
						end
					end
					--]]

					-- set up ant colors
					-- NOT in Carbonite.

				break end end

				--[[
				if ZGV.Pointer.CurrentPathTarget then
					local w = ZGV.Pointer.CurrentPathTarget
					tinsert(ZGV.Pointer.TempWaypath.coords, {map=w.m,floor=w.f,x=w.x,y=w.y,title=w.title,force_noway=true})
				end
				--]]

				--Pointer.ArrowFrame.waypoint = nil -- clear arrow, so that it updates around line 804 this file. We :SetWaypoint right under here.
				--FAILED_PATH = nil
				--Pointer:ShowSet(future_waypoints,"route") -- clear none, just refresh

				--Pointer:ShowArrow(Pointer.pointsets.route.points[2])  -- point 1 is player

			elseif state=="failure" then
				--Pointer:ClearSet("route")
				ZGV:Debug("Path Not Found!")
				--FAILED_PATH = ZGV.Pointer.DestinationWaypoint

				--Pointer:ShowArrow(ZGV.Pointer.DestinationWaypoint)

				--ZGV:ShowWaypoints(nil,nil,nil,"path",{dontcleartemp=true}) -- clear none, just refresh

			-- Causing the Lovely arrow problems ~Errc
			-- Well let's cure, not amputate ;) ~sin
			elseif state=="arrival" then
				--Pointer:ClearSet("route")
				ZGV:Debug("Waypoints: Arrived at destination!")
				--FAILED_PATH = ZGV.Pointer.CurrentPathTarget
				--Pointer:ShowArrow(ZGV.Pointer.DestinationWaypoint)

				--Pointer:ResetFollowing()
			elseif state=="progress" then
				-- DON'T clear anything.
				--Pointer:ShowWaiting(ext and ext.progress or 0)
			end
			--ZGV:ShowWaypoints() -- clear none, just refresh
		end
	}
end

ZGV.WaypointFunctions['cart2'] = {
	isready = function()
		return not not (Cartographer_Notes and Cartographer_Notes:IsActive() and Cartographer_Notes.externalDBs)
	end,

	clearmapnotes = function (self)
	end,
	addmapnote = function (self,map,flr,x,y,data)
	end,

	showwaypoints = function (self,command)
		self:Debug("Setting cart2 waypoint")
		--self:Debug(self.CurrentStep.mapnote)
	--[[
		if self.oldnote then
			Cartographer_Notes:DeleteNote(self.oldzone,self.oldnote)
		end
	--]]

		do ZGV:Print("Cartographer 2 support is temporarily down. Please use the Zygor internal waypointer.") return end

		self:UpdateCartographerExport()
		self:ClearCartographerWaypoints()
		if goalnumORx==false then return end

		if y then
			self:CreateCartographerWaypointXY(goalnumORx,y,title)
		else
			self:CreateCartographerWaypoints(goalnumORx)
		end

		--[[
		local queue = Cartographer_Waypoints.Queue
		for i,v in ipairs(queue) do
			if v and v.Db=="ZygorGuides" then
				table.remove(queue,i)
			end
		end
		--]]

		--local note = Cartographer_Notes:SetNote(zone,x/100,y/100,"Circle","ZygorGuidesViewer",'manual',true,'title',)
	--		if mapnote and mapzone and Cartographer_Notes.externalDBs then
	--			Cartographer_Waypoints:SetNoteAsWaypoint(mapzone,mapnote)
	--		end
	--		self.oldzone = zone
	end,
	disconnect = function(self)
		self:ClearCartographerWaypoints()
		--if Cartographer_Notes and Cartographer_Notes.externalDBs and Cartographer_Notes.externalDBs["ZygorGuidesViewer"] then
		Cartographer_Notes:UnregisterNotesDatabase("ZygorGuidesViewer")
	end
}

ZGV.WaypointFunctions['cart3'] = {
	isready = function()
		return not not (Cartographer3 and Cartographer3.db)
	end,
	disconnect = function(self)
		--[[
		if Cartographer3 and Cartographer3.db then
			self:Print("Cartographer3 disconnected.")
		else
			self:Print("Cartographer3 not connected.")
		end
		--]]
	end
}

ZGV.WaypointFunctions['metamap'] = {
	isready = function()
		return false
	end
}

--============================================= internal =============================================

local farmPathEvent=CreateFrame("Frame")
farmPathEvent:RegisterEvent("ZONE_CHANGED_NEW_AREA")
farmPathEvent:RegisterEvent("PLAYER_CONTROL_GAINED")
local inZone

local setwaypoint_data={persistent=true,overworld=true}
ZGV.WaypointFunctions['internal'] = {
	isready = function(self)
		return not not self.Pointer.ready
	end,
	showwaypoints = function (self,command)  local t1=debugprofilestop()  repeat

		--if only_type~="ant" then print("|cff8000ff ShowWaypoints "..(only_type or "?")) end
		
		if ZGV.Pointer.corpsearrow_shown then
			self:Debug("&waypoints Corpse arrow shown; bailing out of ShowWaypoints.")
			return
		end

		self:Debug("&waypoints &_PUSH ShowWaypoints called as '%s' by %s",tostring(command or "nil"),debugstack(3):match("(\\.- in function .-)\n"))

		-- save this, because we WANT it to survive a total armegeddon of waypoints.

		local saved_arrow_waypoint = ZGV.Pointer.DestinationWaypoint
		--[[
		local saved_arrow_survived = false
		local function try_to_save_waypoint(goal)
			if saved_arrow_waypoint
			and goal.x
			and goal.x==saved_arrow_waypoint.x
			and goal.y==saved_arrow_waypoint.y
			and goal.map==saved_arrow_waypoint.m
			then saved_arrow_survived=true end
		end
		--]]


		self.Pointer:ClearWaypoints("way")
		--self.Pointer:ClearWaypoints("poigoto")
		self.Pointer:ClearSet("route")
		self.Pointer:ClearSet("farm")
		self.Pointer:ClearSet("path")

		-- clear: JUST CLEAR.
		if command=="clear" then
			ZGV:Debug("&waypoints ShowWaypoints: just clearing.")
			break
		end

		local step = ZGV.GetFocusedStep and ZGV:GetFocusedStep() or ZGV.CurrentStep		if not step then ZGV:Debug("&waypoints No step.") break end


		---------------- NORMAL FUNCTION -------------

		--if goal then  ZGV:Debug("&waypoints Pointing to goal %d",goal.num)  end

		ZGV:Debug("&waypoints Pointing to step %d (%s), %d goals, waypath %s.",step.num,step.is_poi and "poi" or "guide",#step.goals,step.waypath and "present" or "absent")


		local arrowpoint,pathpoint,farmpoint


		-- SHOW FARM PATH.

		local waypath = step and step.waypath
		
		local goals_converted_to_path=false
		--[[  -- DISABLED temporarily. TODO!!!  Or not; one can now "use goto" in paths to import gotos.
		if not waypath then  -- improvise waypath from gotos. If this succeeds, DON'T show goto waypoints separately.
			waypath = {coords={},loop=false,ants="straight",follow="strict" }  --,markers="none",follow="none",inline_travel=true
			for gi,goal in ipairs(step.goals) do
				if goal:IsInlineTravel() and goal:IsVisible() then
					tinsert(waypath.coords,goal)
				end
			end
			if #waypath.coords<2 then waypath=nil end
			step.waypath=waypath
			goals_converted_to_path = not not waypath
		end
		--]]

		if waypath then
			local pathtype = waypath.loop and "farm" or "path"
			ZGV:Debug("&waypoints Waypath present in step, showing %d points as '%s':",#waypath.coords,pathtype)
			local pointset = ZGV.Pointer:ShowSet(waypath,waypath.loop and "farm" or "path")
			--if not waypath.loop then  arrowpoint = pointset.points[1]  end  -- Pointer defaults to points[1] in GetNextInPath anyway.  Miiight not play nice with Travel, but this is a band-aid...
		end

		--[[ -- POIs aren't special anymore
			local poistep = ZGV.Poi.ActivePoiStepSet and ZGV.Poi.ActivePoiStep
			local waypath_poi = poistep and poistep.waypath

			if not waypath_poi and poistep then  -- improvise waypath from gotos. This will be mighty odd.
				waypath_poi = {coords={},loop=false,ants="straight",markers="none",follow="smart3",inline_travel=true}
				for gi,goal in ipairs(step.goals) do
					if goal:IsInlineTravel() and goal:IsVisible() then
						tinsert(waypath_poi.coords,goal)
					end
				end
				if #waypath_poi.coords<2 then waypath_poi=nil end
				poistep.waypath=waypath_poi
			end

			if waypath_poi then
				local pathtype = waypath_poi.loop and "farm" or "path"
				ZGV:Debug("&waypoints Waypath POI present in step, showing %d points as '%s':",#waypath_poi.coords,pathtype)
				local pointset = ZGV.Pointer:ShowSet(waypath_poi,waypath_poi.loop and "farm" or "path")
				--if not waypath.loop then  arrowpoint = pointset.points[1]  end  -- Pointer defaults to points[1] in GetNextInPath anyway.  Miiight not play nice with Travel, but this is a band-aid...
			end
		--]]

		-- SHOW STEP WAYPOINTS.

		local pointed = false

		local points = {}  -- fill this with correct source material.

		if step.goals and not only_type then
			if goal then
				if not goal.force_noway then
					points={goal}
					ZGV.CurrentStep.current_waypoint_goal_num = goal.num
				end
				--print("goal: "..goal:GetText())
			else
				local canhidetravel=false
				--if not self.db.profile.showinlinetravel then for i,goal in ipairs(step.goals) do if not goal:IsInlineTravel() then canhidetravel=true break end end end
				for i,goal in ipairs(step.goals) do
					if goal.x and goal:IsVisible() and not goal.force_noway and not (canhidetravel and goal:IsInlineTravel()) then
						if goal.parentStep.is_poi then
							goal.waypoint_icon = ZGV.Pointer.Icons.graydot
						end
						tinsert(points,goal)
					end
					if goal.ways then
						for j,way in ipairs(goal.ways) do
							tinsert(points,way)
						end
					end
				end
			end
		end

		if points and #points>0 then
			ZGV:Debug("&waypoints Showing %s: (#points=%d, waypath %s, Pointer.DestinationWaypoint=%s)", goal and "goal" or "step goals",  #points, waypath and "PRESENT" or "absent", tostring(ZGV.Pointer.DestinationWaypoint))
			arrowpoint,farmpoint = ZGV.Pointer.set_waypoints(points,35,30,"way")
		else
			ZGV:Debug("&waypoints No step points to show.")
		end


		local function onChangeZone()
			if not UnitIsDeadOrGhost("player") and (waypath and waypath.coords) or (waypath_poi and waypath_poi.coords) then
				self:Debug("&waypoints Zone changed, setting to waypath")
				ZGV:ShowWaypoints()
				--[[
					if ZGV.GetCurrentMapID()==waypath.coords[1].map then

						self:Debug("&waypoints We're in farm path zone! Clearing travel, just follow the route.")

						ZGV.Pointer.TempWaypath=nil
						ZGV.Pointer:RemoveWaypoint(farmpoint)
						ZGV:ShowWaypoints()
						ZGV.Pointer:ShowSet(waypath)
						LibRover:Abort()

					else

						local way=farmpoint

						if way.num~=1 then
							LibRover:FindLastPath()
						else
							if way.map and not way.m then
								LibRover:FindPath(0,0,0,way.map,way.x,way.y, ZGV.Pointer.PathFoundHandler, {title=way.title, is_indoors=way.is_indoors, waypoint=way })
							else
								LibRover:FindPath(0,0,0,way.m,way.x,way.y, ZGV.Pointer.PathFoundHandler, {title=way.title, waypoint=way})
							end
						end

						LibRover:UpdateNow()
					end
				--]]
			else
				self:Debug("&waypoints Zone changed, no farm path here")
			end
		end
		farmPathEvent:SetScript("OnEvent", onChangeZone)




		--[[ -- POIs are regular steps now.
			if ZGV.Poi.ActivePoiStepSet
			--and not ZGV.Poi.ActivePoiStepDisplayed
			then
				local poipoints = {}
				for i,goal in ipairs(ZGV.Poi.ActivePoiStep.goals) do
					if goal.x and goal:IsVisible() and not goal.force_noway then
						goal.waypoint_icon = ZGV.Pointer.Icons.graydot
						goal.waypoint_type = "poigoto"
						tinsert(poipoints,goal)
					end
				end
				ZGV:Debug("&waypoints We have a POI step (#%d, \"%s\"), showing its %d map dots.",ZGV.Poi.ActivePoiStep.num,ZGV.Poi.ActivePoiStep.poiname,#poipoints)
				arrowpoint,farmpoint = ZGV.Pointer.set_waypoints(poipoints,35,30,"way")
			else
				ZGV:Debug("&waypoints No POI step shown.")
			end
		--]]

		-- Waypoints are set.

		--if goalnumORx=="sticky" then arrowpoint=nil end

		-- NOW, POINT THE ARROW / PLOT THE PATH.

		-- Wait. If player is dead, point there instead.
		if self.Pointer.corpsearrow or self.Pointer:IsCorpseArrowNeeded() then
			self:Debug("&waypoints ShowWaypoints: we have a corpse!.")
			ZGV.Pointer:FindCorpseArrow(true)
			break --------------------------------------------------------------------------------
		end

		
		ZGV:Debug("&waypoints Point the arrow! arrowpoint %s, farmpoint %s, waypath %s",ZGV.Pointer.waypoint_tostring(arrowpoint),ZGV.Pointer.waypoint_tostring(farmpoint),waypath and (#waypath.coords>0) and (#waypath.coords.." points") or "empty")


		if ZGV.db.profile.pathfinding then
			if ZGV.Pointer.nummanual>0 then
				-- leave it the hell alone.
				ZGV:Debug("&waypoints There are manual points, finding path to Pointer.DestinationWaypoint")
				ZGV.Pointer:FindTravelPath(ZGV.Pointer.DestinationWaypoint)
			elseif arrowpoint then
				ZGV:Debug("&waypoints Finding path to arrowpoint")
				ZGV.Pointer:FindTravelPath(arrowpoint)
			elseif (waypath or waypath_poi) and not pointed and ZGV.Pointer.nummanual==0 then
				ZGV:Debug("&waypoints Finding path to farmpath")
				-- TRY TO POINT TO A FARM PATH.
				-- find center of farm path and point there
				-- BAD.
				if waypath then
					if waypath.loop then
						-- EXPERIMENTAL: travel to path's general area.
						local _,_,currentmapid,currentmapfloor=LibRover:GetPlayerPosition()
						if currentmapid ~= waypath.coords[1].map or currentmapfloor ~= waypath.coords[1].floor then
							self:Debug("&waypoints Pointing to a looped path! We're not in the farm path's zone, let's travel.")
							ZGV.Pointer:FindTravelPath("farm")
						else
							self:Debug("&waypoints Pointing to a looped path! We're in the farm path's zone. Clearing travel, just follow the route.")
							LibRover:Abort()
							ZGV.Pointer:ClearSet("route")
							ZGV.Pointer:PointToNextInPath("farm")  -- it's looped, so it's a farm, OK
						end
						break -------------------------------------------------------------------------------
					end

					local firstcoord = waypath.coords[1]
					local _,_,currentmapid=LibRover:GetPlayerPosition()
					if currentmapid~=firstcoord.map then
						self:Debug("&waypoints Pointing to a path! We're not in the path's zone, let's travel to the first point.")
						local x,y=0,0
						for i,coord in ipairs(waypath.coords) do x=x+coord.x y=y+coord.y end
						x=x/#waypath.coords
						y=y/#waypath.coords

						local way = ZGV.Pointer:SetWaypoint(firstcoord.map,x,y,{icon=ZGV.Pointer.Icons.none})
						
						if way then ZGV.Pointer:FindTravelPath(way) end
					else
						self:Debug("&waypoints Pointing to a path! We're in the path's zone. Clearing travel, just follow the route.")
						LibRover:Abort()
						ZGV.Pointer:ClearSet("route")
						ZGV.Pointer:PointToNextInPath("path")  -- it's not looped, handle it somehow.
					end
				end

				--[[ -- No special POI pathing.
					-- same thing, for poistep
					if waypath_poi then
						if waypath_poi.loop then
							-- EXPERIMENTAL: travel to path's general area.
							local currentmapid = Astrolabe:GetCurrentPlayerPosition()
							if currentmapid ~= waypath_poi.coords[1].map then
								self:Debug("&waypoints Pointing to a looped path! We're not in the farm path's zone, let's travel.")
								ZGV.Pointer:FindTravelPath("farm")
							else
								self:Debug("&waypoints Pointing to a looped path! We're in the farm path's zone. Clearing travel, just follow the route.")
								LibRover:Abort()
								ZGV.Pointer:ClearSet("route")
								ZGV.Pointer:PointToNextInPath("farm")  -- it's looped, so it's a farm, OK
							end
							break -------------------------------------------------------------------------------
						end

						local firstcoord = waypath_poi.coords[1]
						local currentmapid = Astrolabe:GetCurrentPlayerPosition()
						if currentmapid~=firstcoord.map then
							self:Debug("&waypoints Pointing to a path! We're not in the path's zone, let's travel to the first point.")
							local x,y=0,0
							for i,coord in ipairs(waypath_poi.coords) do x=x+coord.x y=y+coord.y end
							x=x/#waypath_poi.coords
							y=y/#waypath_poi.coords

							local way = ZGV.Pointer:SetWaypoint(firstcoord.map,firstcoord.floor,x,y,{icon=ZGV.Pointer.Icons.none})
							
							if way then ZGV.Pointer:FindTravelPath(way) end
						else
							self:Debug("&waypoints Pointing to a path! We're in the path's zone. Clearing travel, just follow the route.")
							LibRover:Abort()
							ZGV.Pointer:ClearSet("route")
							ZGV.Pointer:PointToNextInPath("path")  -- it's not looped, handle it somehow.
						end
					end
				--]]
			elseif not step:IsDynamic() then   -- goalnumORx~="sticky" and 
				ZGV:Debug("&waypoints Aborting, because reasons")
				LibRover:Abort()
				ZGV.Pointer.PathFoundHandler("failure")
			end
		else
			self.Pointer:FindTravelPath (arrowpoint)
		end



		if arrowpoint and not UnitIsDeadOrGhost("player")
		and not self.Pointer.ArrowFrame.waypoint
		then
			-- don't overwrite the stinking arrow
			self:Debug("&waypoints Pointing to arrowpoint... again?")
			self.Pointer:ShowArrow (arrowpoint)
		end

		-- And perhaps initiate a search for a path.

		
		

			
		--[[
			oldpathtarget="dupa" -- ah fuck, waypoints are REUSED!    foo=way ; way = ZGV.Pointer:SetWaypoint(...) ; assert(foo==way)
			local way = ZGV.Pointer.CurrentPathTarget
			if self.db.profile.pathfinding then

				if way~=oldpathtarget and only_type~="path" then

					--oldpathtarget = way
					if way and not farmpath then
					--and way~=FAILED_PATH
						if way.map and not way.m then
							LibRover:FindPath(0,0,0,way.map,way.x,way.y, ZGV.Pointer.PathFoundHandler, {title=way.title, is_indoors=way.is_indoors, waypoint=way })
						else
							LibRover:FindPath(0,0,0,way.m,way.x,way.y, ZGV.Pointer.PathFoundHandler, {title=way.title, waypoint=way})
						end

					elseif farmpath and farmpoint then
						way=farmpoint

						if way.map and not way.m then
							if way.map~=ZGV.GetCurrentMapID() then
								LibRover:FindPath(0,0,0,way.map,way.x,way.y, ZGV.Pointer.PathFoundHandler, {title=way.title, is_indoors=way.is_indoors, waypoint=way })
							end
						else
							if way.m~=ZGV.GetCurrentMapID() then
								LibRover:FindPath(0,0,0,way.m,way.x,way.y, ZGV.Pointer.PathFoundHandler, {title=way.title, waypoint=way})
							end
						end
					end
				end
			else
				LibRover:Abort()
			end
		--]]

	until true
	self:Debug("&waypoints &_POP ShowWaypoints ends [%.2f ms]",debugprofilestop()-t1)
	end,

	addmapnote = function (self,map,flr,x,y,data)
		local way = self.Pointer:SetWaypoint (map,x,y,{title=data.title or ("%s %d,%d"):format(zone,x*100,y*100),persistent=true,overworld=true})
	end,
	disconnect = function(self)
		self.Pointer:ClearWaypoints()
	end
}

ZGV.WaypointFunctions['none'] = {
	isready = function()
		return true
	end,
	showwaypoints = function (self)
		self:Debug("No waypointing addon connected.")
	end
}

-- call empty funcs under missing indices
local nilfuncs = {__index=function() end}
for k,v in pairs(ZGV.WaypointFunctions) do setmetatable (v,nilfuncs) end


function ZGV:ShowWaypoints(...)
	if not self.ConnectedWaypointer then return end
	if ...~=false and self.db.profile.hidearrowwithguide and not ZGV.Frame:IsShown() then return end
	if not self:IsWaypointAddonReady() then
		self:Print("Waypoint addon '"..self.db.profile.waypointaddon.."' failed.")
		return
	end
	self.ConnectedWaypointer.showwaypoints(self,...)
end

function ZGV:UnsetWaypointAddon()
	if not self.ConnectedWaypointer then return end
	local addon = self.db.profile.waypointaddon
	if not addon or addon=="none" then return end

	if not self:IsWaypointAddonEnabled() then
		self:Debug("Not enabled, out.")
		return
	end --nothing to do here, move along

	if not self:IsWaypointAddonReady() then return end

	self.ConnectedWaypointer.disconnect(self)
	self.ConnectedWaypointer = nil

	self:Print(L["waypointaddon_disconnected"]:format(L["opt_group_addons_"..addon]))
end

function ZGV:IsWaypointAddonReady(addon)
	if not addon then addon = self.db.profile.waypointaddon end
	return self.WaypointFunctions[addon].isready(self)
end

function ZGV:IsWaypointAddonEnabled(addon)
	if not addon then addon = self.db.profile.waypointaddon end
	return self.db.profile.waypointaddon==addon and self:IsWaypointAddonReady(addon) -- and self.iconsregistered
end




-- icon handlers:

function ZGV:GetNoteScaling(zone,id,data)
	return self.db.profile.iconScale
end

function ZGV:IsNoteHidden(zone,id,data)
	return self.db.profile.filternotes and (not self.CurrentStep or not self.CurrentStep.mapnote or (id~=self.CurrentStep.mapnote) or (zone~=self.CurrentStep.mapzone))
end

function ZGV:IsMiniNoteHidden(zone,id,data)
	return not self.db.profile.minicons or (self.db.profile.filternotes and ((id~=self.CurrentStep.mapnote) or (zone~=self.CurrentStep.mapzone)))
end

function ZGV:GetNoteTransparency(zone,id,data)
	return self.db.profile.iconAlpha
end

function ZGV:GetNoteIcon(zone,id,data)
--	return (not self.db.profile.filternotes and self.CurrentStep and (id==self.CurrentStep.mapnote) and (zone==self.CurrentStep.mapzone)) and "hilite" or data.icon
	return (self.CurrentStep and (id==self.CurrentStep.mapnote) and (zone==self.CurrentStep.mapzone)) and (data.icon=="Square" and "hilitesquare" or "hilite") or data.icon
end



-------------------------- Cartographer stuff

function ZGV:ClearCartographerWaypoints()
	if Cartographer_Waypoints then
		for i,v in ipairs(Cartographer_Waypoints.Queue) do
			v:Cancel()
			Cartographer_Waypoints.Queue[i]=nil
		end
	end
	if Cartographer_Notes and Cartographer_Notes.externalDBs["ZygorGuidesViewer"] then
		Cartographer_Notes:UnregisterNotesDatabase("ZygorGuidesViewer")
	end
end

function ZGV:CreateCartographerWaypoints(goalnum)
	if not self.CurrentStep or not self.CurrentStep.goals then return end

	local x,y,zone

	local db = {version=3}

	local waypoints = {}

	-- set mapnotes for all the coordinates found in step lines
	-- REVERSE direction to create proper waypoint queue
	for i=#self.CurrentStep.goals,1,-1 do
		local g = self.CurrentStep.goals[i]
		if g.x and not g.force_noway then
			zone = g.map
			if zone then
				if self.BZR[zone] then zone = self.BZR[zone] end
				local note = Cartographer_Notes.getID(g.x,g.y)
				if not db[zone] then db[zone]={} end
				db[zone][note]={icon="Circle",title=g.title or self.CurrentStep.title or g.autotitle or self.CurrentStep:GetWayTitle() or L['waypoint_step']:format(self.CurrentStepNum)}

				if (i==goalnum) or not goalnum then
					table.insert(waypoints,{zone=zone,note=note})
				end
			end
		end
	end

	Cartographer_Notes:RegisterNotesDatabase("ZygorGuidesViewer",db)

	for i,way in ipairs(waypoints) do
		Cartographer_Waypoints:SetNoteAsWaypoint(way.zone,way.note)
	end

	Cartographer_Notes:MINIMAP_UPDATE_ZOOM()
end

function ZGV:CreateCartographerWaypointXY(x,y,title)
	local zone = select(GetCurrentMapZone(), GetMapZones(GetCurrentMapContinent())) -- likely fails in Scarlet Enclave
	Cartographer_Waypoints:AddWaypoint(NotePoint:new(zone, x, y, title or "Waypoint"))
end


function ZGV:UpdateCartographerExport()
	if ((self.db.profile.waypointaddon~="cart2") and (self.db.profile.waypointaddon~="cart3")) then return end  -- or (not self.iconsregistered)

	Cartographer_Notes:MINIMAP_UPDATE_ZOOM()
	Cartographer_Notes:UpdateMinimapIcons()
	Cartographer_Notes:RefreshMap()
end



-------------------------- TomTom stuff

do
	local lastwaypath 		-- Optimization: don't reset the path each time

	function ZGV:ClearTomTomWaypoints()
		--self:Debug("Clearing TomTom waypoints:")
		for i,p in ipairs(self.TomTomWaypoints) do
			--self:Debug(p)
			TomTom:RemoveWaypoint(p)
		end
		self.TomTomWaypoints = {}
		lastwaypath=nil
		self.Pointer:ClearWaypoints("ant") -- if anything
	end

	function ZGV:CreateTomTomWaypath(waypath)
		if waypath and #waypath.coords>1 and waypath~=lastwaypath then
			self:ClearTomTomWaypoints()
			lastwaypath=waypath
			self:Debug("New waypath available, installing the points")
			-- Table containing the next element in path for each point
			local waypathnavigation={}
			local firstuid,prevuid,currentcrazy -- WARNING if the user manually adds a point, we're DOOOMED

			for k,v in ipairs(waypath.coords) do
				-- Creating waypoint, remembering its uid
				local uid=self:CreateTomTomWaypointMFXY(v.map,v.floor or 0,v.x,v.y,"Path("..k..")",--[[TODO this should be localized perhaps]]
				false,function(event,uid)
					if uid and uid==currentcrazy then
						if waypathnavigation and waypathnavigation[uid] then
							-- Strangely enough I see no way to ask TomTom which waypoint the Crazy Arrow is looking at
							-- hence this ugly hack. We should probably conctact him, because it's plainly silly. ~aprotas
							currentcrazy=waypathnavigation[uid]
							TomTom:SetCrazyArrow(waypathnavigation[uid], -- I guess I've learned lexical closure, Obi-Wan. ~aprotas
								TomTom.profile.arrow.arrival,waypathnavigation[uid].title)
						end
					end
				end
				)

				-- Setting the linkage
				if firstuid then -- "if we're not the first waypoint"
					waypathnavigation[prevuid]=uid
				end

				-- Remembering the uid
				prevuid=uid if not firstuid then firstuid = uid end
			end
			-- Connecting the last and the first
			-- TODO what about acyclic waypaths?
			waypathnavigation[prevuid]=firstuid

			-- CopyPasted from TomTom.lua, otherwise we'd be writing it either way
			local m,f,x,y = TomTom:GetCurrentPlayerPosition()
			local closest_waypoint = nil
			local closest_dist = nil
			if self.TomTomWaypoints then
				for key, waypoint in pairs(self.TomTomWaypoints) do -- Only iterating through OUR waypoints unlike the original
					local dist, x, y = TomTom:GetDistanceToWaypoint(waypoint)
					if (dist and closest_dist == nil) or (dist and dist < closest_dist) then
						closest_dist = dist
						closest_waypoint = waypoint
					end
				end
			end
			-- Important: we can't track CrazyArrow, so let's just remember
			currentcrazy=closest_waypoint
			TomTom:SetCrazyArrow(closest_waypoint,TomTom.profile.arrow.arrival,closest_waypoint.title)
		else
-- 			ZGV:CreateTomTomWaypointMFXY( TODO
		end
	end     -- TODO unify the logic with Carbonite and Internal waypointer
end

function ZGV:CreateTomTomWaypoints(goalnum)
	lastwaypath=nil -- Just in case

	--if not Astrolabe.ContinentList[101] then Astrolabe.ContinentList[101] = {[1]="ScarletEnclave"} end
	if not self.CurrentStep or not self.CurrentStep.goals then return end

	if (TomTom.profile and TomTom.profile.persistence) then
		TomTom.profile.persistence.cleardistance = 0
	end

--	if self.CurrentStep.mapnote then

	local x,y,zone

	for i=#self.CurrentStep.goals,1,-1 do
		local goal = self.CurrentStep.goals[i]
		if goal.x and not goal.force_noway then
			if goal.map then
				-- TODO should we need to ever give floor id?
				self:CreateTomTomWaypointMFXY(
					goal.map, goal.floor or 0,
					goal.x, goal.y,
					goal.title or self.CurrentStep.title or goal.autotitle or self.CurrentStep:GetWayTitle() or "Step "..self.CurrentStepNum,
					(i==goalnum or not goalnum)
				)

				--self:Debug("added to TomTom as:"..(way or 'nil'))
				if way then table.insert(self.TomTomWaypoints, way) end
			end
		end

	end

end

function ZGV:CreateTomTomWaypointXY(x,y,title,arrow,func)
	return self:CreateTomTomWaypointMFXY(ZGV.GetCurrentMapID(),ZGV.GetCurrentMapDungeonLevel(),x/100,y/100,title,arrow,func)
end

function ZGV:CreateTomTomWaypointMXY(m,x,y,title,arrow,func)
	return self:CreateTomTomWaypointMFXY(m,0,x,y,title,arrow,func)
end

function ZGV:CreateTomTomWaypointMFXY(m,f,x,y,title,arrow,func)
	-- Sanity, sanity everywhere
	if ZGV and ZGV.Pointer and ZGV.Pointer:IsEnvironmentPhased(m) then
		ZGV:Debug("The player and the target are in the same phased environment, putting a marker on the current map instead.")
		local _,_,m,f=LibRover:GetPlayerPosition()
	end

	self:Debug("Setting TomTom waypoint: "..m..' '..f..' '..x..' '..y)
	-- Okay, if we accidently set the callback to arrivaldistance set in TomTom, he's gonna mercilessly overwrite us
	-- Let's pick some other number
	local procdistance=(max(TomTom.profile.arrow.arrival,TomTom.profile.arrow.arrival) or 15)*2 -- 30 if the option is nil for some reason

	-- This is an internal TomTom's function so it uses different syntax, table is correct here
	local way = TomTom:AddMFWaypoint(
		m, f,
		x, y,
		{
			title = title,
			persistent = false,
			minimap = true,
			world = true,
			callbacks = func and { distance = { [procdistance] = func} } or nil,
			silent = true,
			crazy = arrow,
		})

	if way then table.insert(self.TomTomWaypoints, way) end
	return way
end