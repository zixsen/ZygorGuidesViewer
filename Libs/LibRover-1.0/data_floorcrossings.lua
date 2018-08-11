local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.FloorCrossings = {
		
	-- BATTLE FOR AZEROTH
		["Tiragarde Sound"] = {

			-- Gol Thovas, Cave Entrance
				"Tiragarde Sound/0 62.88,27.37 -x- Tiragarde Sound/1 44.28,88.13 {template:cave}",
	
			-- Gol Thovas, Indoor Floor Cross
				"Tiragarde Sound/1 50.95,47.91 -x- Tiragarde Sound/2 36.75,55.63 {title_atob:Follow the path up} {title_btoa:Follow the path down}",
		},
		
		["Stormsong Valley"] = {
			-- Abyssal Melody Ship Entrance #1
				"Stormsong Valley/0 67.83,43.21 -x- Stormsong Valley/1 67.85,43.20 {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
			
			-- Abyssal Melody Ship Entrance #2		
				"Stormsong Valley/0 67.05,43.36 -x- Stormsong Valley/1 37.78,49.32 {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
			
			-- Abyssal Melody Ship Interior Floor Crossing			
				"Stormsong Valley/1 67.81,49.94 -x- Stormsong Valley/2 66.94,39.70 {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
		
			-- Thornheart Cave
				"Stormsong Valley/0 45.94,74.29 -x- Stormsong Valley/3 86.74,28.13 {template:cave}",

			-- Saltstone Mine
				"Stormsong Valley/0 46.68,36.29 -x- Stormsong Valley/4 76.24,41.60 {template:mine}",
		},

		["Dazar'Alor"] = {
			-- Bottom Floor Entrance to The Great Seal
				"Dazar'alor/0 49.94,41.85 <radius:5> -x- Dazar'alor/1 48.51,28.89 <radius:5> {fac:H} {template:building}",

			-- Top Floor Entrance to The Great Seal #1
				"Dazar'alor/0 51.21,44.97 <radius:3> -x- Dazar'alor/2 74.92,71.79 <radius:5> {fac:H} {title_atob:Enter the Building and Take the Elevator Down} {title_btoa:Take the Elevator Up and Leave the Building}",

			-- Top Floor Entrance to The Great Seal #2
				"Dazar'alor/0 48.71,44.91 <radius:3> -x- Dazar'alor/2 22.81,72.00 <radius:5> {fac:H} {title_atob:Enter the Building and Take the Elevator Down} {title_btoa:Take the Elevator Up and Leave the Building}",

			-- The Great Seal Bottom Floor Stairs #1
				"Dazar'alor/2 40.24,82.53 <radius:5> -x- Dazar'alor/1 46.81,82.42 <radius:5> {fac:H} {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",

			-- The Great Seal Bottom Floor Stairs #2
				"Dazar'alor/2 40.93,58.74 <radius:5> -x- Dazar'alor/1 42.35,44.97 <radius:5> {fac:H} {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",

			-- The Great Seal Bottom Floor Stairs #3
				"Dazar'alor/2 57.14,82.80 <radius:5> -x- Dazar'alor/1 51.13,82.32 <radius:5> {fac:H} {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",

			-- The Great Seal Bottom Floor Stairs #4
				"Dazar'alor/2 56.45,58.97 <radius:5> -x- Dazar'alor/1 55.37,45.04 <radius:5> {fac:H} {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",

			-- The Great Seal Bottom Floor Stairs #5
				"Dazar'alor/2 76.24,42.63 <radius:5> -x- Dazar'alor/1 76.67,30.58 <radius:5> {fac:H} {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",

			-- The Great Seal Bottom Floor Stairs #6
				"Dazar'alor/2 20.85,41.86 <radius:5> -x- Dazar'alor/1 21.00,30.58 <radius:5> {fac:H} {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
				
			-- Zanchul Bottom Floor Entrance
				"Dazar'alor/0 40.95,11.28 <radius:5> -x- Dazar'alor/4 39.25,58.20 <radius:5> {fac:H} {template:building}",

			-- Zanchul Bottom to Top Floor Crossing
				"Dazar'alor/4 45.42,16.87 <radius:5> -x- Dazar'alor/3 39.13,27.80 <radius:5> {fac:H} {title_atob:Run Up the Stairs} {title_btoa:Run Down the Stairs}",

			-- Zanchul Upstairs Exit
				"Dazar'alor/0 45.29,13.26 -x- Dazar'alor/3 79.42,84.04 {fac:H} {template:building}",
		},

		["Zuldazar"] = {
			-- Top Floor to Middle Floor Crossing of Ship Off Coast Near Zeb'Ahari
				"Zuldazar/0 81.21,20.16 <radius:3> -x- Zuldazar/1 53.24,27.22 <radius:3> {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
			
			-- Middle Floor to Bottom Floor Crossing of Ship Off Coast Near Zeb'Ahari
				"Zuldazar/1 45.02,75.68 <radius:3> -x- Zuldazar/2 44.00,80.88 <radius:3> {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",

			-- Breath of Pa'ku Ship Top Floor to Middle Floor
				"Zuldazar/0 51.86,87.10 <radius:3> -x- Zuldazar/3 27.45,32.86 <radius:3> {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",

			-- Breath of Pa'ku Ship Middle Floor to Bottom Floor
				"Zuldazar/3 68.32,64.03 <radius:3> -x- Zuldazar/4 71.98,67.55 <radius:3> {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
		},

		["Vol'dun"] = {
			-- Atul'Aman Cave Entrance
				"Vol'dun/0 43.07,68.05 <radius:5> -x- Vol'dun/1 31.10,81.42 <radius:3> {template:cave}",
		},

	-- Old Dalaran
		["Dalaran"] = {
			 --Underbelly, a few entries. Cost to adjust which gets used for each part of the city.
			"Dalaran/1 35.0,45.3 <radius:5> -x- Dalaran/2 34.4,43.4 <region:underbelly> <radius:5> {template:tunnel}",
			"@+ -x- Dalaran/1 38.8,45.1 <region:underbelly> ",
			"@+ -x- Dalaran/2 34.3,43.3",
			"Dalaran/1 60.2,47.7 <radius:5> -x- Dalaran/2 64.3,48.6 <region:underbelly> <radius:5> {template:tunnel} {cost:4}",
			"@+ -x- Dalaran/1 38.8,45.1 <region:underbelly> ",
			"@+ -x- Dalaran/2  64.4,48.6",
			"Dalaran/1 48.1,32.7 <radius:2> <title:Dalaran Well> -to- Dalaran/2 44.3,25.2 {cost:8}",

			--[[
			"Dalaran/1 34.89,45.42 <title:Western sewer entrance> -x- Dalaran/1 31.59,45.56 <onlyhardwire_qq:1> <title:Western sewer entrance midpoint> <region:underbelly> {cost:0}",
			"@+ -x- Dalaran/2 34.28,43.57 <title:Western sewer exit> {cost:0}",
			"Dalaran/1 60.28,47.77 <title:Eastern sewer entrance> -x- Dalaran/1 62.68,51.37 <onlyhardwire_qq:1> <title:Eastern sewer entrance midpoint> <region:underbelly> {cost:0}",
			"@+ -x- Dalaran/2 64.16,48.00 <title:Eastern sewer exit> {cost:0}",
			--]]
		},

		[762] = { -- Scarlet Monastery - has to stay numeric! - this is funny, yes, it should be empty: floors are wings, inaccessible from each other. Rely on normal entrance/exit paths.
		},

	-- Kalimdor

		["Azuremyst Isle"] = {
			"Azuremyst Isle/0 26.9,76.3 -x- Azuremyst Isle/2 59.5,88.1 {template:cave}", -- Tides' Hollow
			"Azuremyst Isle/0 45.3,19.4 -x- Azuremyst Isle/3 21.2,94.6 {template:cave}", -- Stillpine Hold
		},
		["Desolace"] = {
			"Desolace/0  28.9,62.6 -x- Desolace/21 24.6,43.5 {template:building}", -- Wicked Grotto **Only Way to Get To Felspore Cavern**
			"Desolace/21 29.5,62.5 -x- Desolace/22 47.4,88.1 {template:cave}", -- Felspore Cavern
			"Desolace/21 27.7,33.7 -x- Desolace/22 45.5,78.2 {template:cave}", -- Felspore Cavern
		},
		["Durotar"] = {
			"Durotar/0 83.2,53.6 -x- Durotar/12 54.9,9.5 {template:cave}", -- Skull Rock
			"Valley of Trials/0 53.0,21.3 -x- Durotar/8 72.2,89.7 {template:cave}", -- Burning Blade Coven
			"Durotar/0 59.0,58.3 -x- Durotar/10 37.4,68.0 {template:building}", -- Tiragarde Keep
			"Durotar/10 60.3,50.7 -x- Durotar/11 33.5,33.5 {title_atob:Go upstairs} {title_btoa:Go downstairs}", -- Tiragarde Keep, Great Hall (upstairs)
			"Durotar/0 52.8,28.6 -x- Durotar/19 50.3,90.5 {template:cave}", -- Dustwind Cave
		},
		["Echo Isles"] = {
			"Echo Isles/0 59.3,21.8 -x- Echo Isles/9 53.9,80.5 {template:cave}",
		},
		["Mulgore"] = {
			"Mulgore/0 34.8,61.3 -x- Mulgore/6 76.9,56.3 {template:cave}", -- Palemane Rock
			"Mulgore/0 60.8,47.4 -x- Mulgore/7 39.6,90.7 {template:mine}", -- The Venture Co. Mine
			"Mulgore/0 59.3,36.6 -x- Mulgore/7 30.4,14.6 {template:mine}", -- The Venture Co. Mine
			"Mulgore/0 59.2,44.0 -x- Mulgore/7 28.6,65.2 {template:mine}", -- The Venture Co. Mine
		},
		["Northern Barrens"] = {
			"Northern Barrens/0 38.9,69.2 -x- Northern Barrens/20 22.5,88.6 {template:cave}", -- Wailing Caverns Cave Entrance
		},
		["Orgrimmar"] = {
			-- The middle of Cleft is a region with one point in it so that that point will be only way into the region.
			-- The points connected to the point into the region are all dark points so that the tunnel path must be followed to enter/exit.
			-- Data could be condensed but seems more clear this way than jammed into a few lines.
			-- Region is needed because the Portal and dungeon entrances are within the region and should not be beelined to.

			-- 3-way west tunnel
			"Orgrimmar/1 46.2,66.9 @cleft_sw_en <title:Cleft of Shadow entrance>",
			"Orgrimmar/2 35.1,91.6 @cleft_sw_ex <title:Cleft of Shadow exit> <radius:10> <dark:1> <onlyhardwire:1>",

			"Orgrimmar/1 41.8,60.9 @cleft_nw_en <title:Cleft of Shadow entrance>",
			"Orgrimmar/2 22.7,69.5 @cleft_nw_ex <title:Cleft of Shadow exit> <radius:10> <dark:1> <onlyhardwire:1>",

			"Orgrimmar/2 37.1,78.1 @cleft_w_tun <title:Cleft of Shadow tunnel> <radius:10> <dark:1> <onlyhardwire:1>",

			"@cleft_sw_en",
			"@+ -x- @cleft_sw_ex",
			"@+ -x- @cleft_w_tun",
			"@+ -x- Orgrimmar/2 41.8,66.1 <radius:25> <region:cleftofshadow>",

			"@cleft_nw_en",
			"@+ -x- @cleft_nw_ex",
			"@+ -x- @cleft_w_tun",


			-- Exit to the right
			"Orgrimmar/1 54.98,51.28 @cleft_e_en <title:Cleft of Shadow entrance>",
			"Orgrimmar/2 80.5,16.3 @cleft_e_ex <title:Cleft of Shadow exit> <radius:10> <dark:1> <onlyhardwire:1>",
			"Orgrimmar/2 72.6,15.7 @cleft_e_tun <title:Cleft of Shadow tunnel> <radius:10> <dark:1> <onlyhardwire:1>",

			"@cleft_e_en",
			"@+ -x- @cleft_e_ex",
			"@+ -x- @cleft_e_tun",
			"@+ -x- Orgrimmar/2 65.61,37.98 <radius:25> <region:cleftofshadow>",
		},
		["Silithus"] = {
			"Silithus/0 70.4,15.9 -x- Silithus/13 15.1,70.0 {template:cave}", -- Twilight's Run
		},
		["Tanaris"] = {
			"Tanaris/0 35.3,42.6 -x- Tanaris/15 55.9,36.4 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 34.8,41.6 -x- Tanaris/15 50.4,25.1 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 34.5,42.4 -x- Tanaris/15 47.5,33.6 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 54.5,69.8 -x- Tanaris/16 42.2,39.4 {template:tunnel}", -- The Gaping Chasm
			"Tanaris/0 55.5,68.2 -x- Tanaris/16 51.5,24.3 {template:tunnel}", -- The Gaping Chasm
			{ {"Tanaris/0 64.9,50.0",radius=20,actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Enter Caverns of Time" else return "Exit Caverns of Time" end end},
			   {"Tanaris/17 53.3,29.4",actiontitle=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "Go up the spiral tunnel" end end, actionicon=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "upstairs" end end} }, -- Caverns of Time2
			{ {"Tanaris/17 36.8,75.0",radius=20,actiontitle=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "Go down the spiral tunnel" end end, actionicon=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "downstairs" end end} ,
			"Tanaris/18 61.8,52.4" }, -- Caverns of Time2
			--[[  Detailed waypoints through the CoT tunnel. Obsolete, kindish.
			"Tanaris/17 56,27 -x- Tanaris/17 59,28 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 66,29 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 68,18 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 49,20 {title:Traverse the Timeless Tunnel}",
			"@+ -x- @cot_tunnel_17to18 {title:Traverse the Timeless Tunnel}",
			--]]
		},
		["Teldrassil"] = {
			"Teldrassil/0 45.6,50.6 @teldrbanethila0 -x- Teldrassil/4 52.6,15.5 @teldrbanethila4 {template:barrow}", -- Banethil Barrow Den (Upper Den)
			"Teldrassil/4 24.6,86.0 @teldrbanethilb4 -x- Teldrassil/5 29.9,76.4 @teldrbanethilb5 {title_atob:Descend into Lower Den} {title_btoa:Ascend to Upper Den}", -- Banethil Barrow Den (Lower Den)
			"Teldrassil/4 54.2,36.5 @teldrbanethilc4 -x- Teldrassil/5 46.7,39.7 @teldrbanethilc5 {title_atob:Descend into Lower Den} {title_btoa:Ascend to Upper Den}", -- Banethil Barrow Den (Lower Den)
			"@teldrbanethila4 -x- @teldrbanethilb4 {replace:1}",
			"@teldrbanethilb4 -x- @teldrbanethilc4 {replace:1}",
			"@teldrbanethilc4 -x- @teldrbanethila4 {replace:1}",
			"Teldrassil/4 25.9,34.2 @teldrbanethil4up <onlyhardwire:1>",
			"Teldrassil/4 38.8,56.8 @teldrbanethil4x <onlyhardwire:1>",
			"@teldrbanethil4up -x- @teldrbanethila4 {dontsetborder:1}",
			"@teldrbanethil4up -x- @teldrbanethil4x {dontsetborder:1}",
			"@teldrbanethil4x -x- @teldrbanethilb4 {dontsetborder:1}",
			"@teldrbanethil4x -x- @teldrbanethilc4 {dontsetborder:1}",

			"Teldrassil/0 54.5,46.3 -x- Teldrassil/3 77.6,81.7 {template:cave}", -- Fel Rock
			"Shadowglen/0 39.3,30.4 -x- Teldrassil/2 45.4,90.3 {template:cave}", -- Shadowthread Cave
		},

	-- Eastern Kingdoms

		["Badlands"] = {
			"Badlands/0 41.6,11.6 -x- Badlands/18 75.6,36.5 {template:cave}", --Uldaman Entrance
		},
		["Burning Steppes"] = {
			"Burning Steppes/0 21.0,38.0 -x- Burning Steppes/14 49.50,88.66", -- Blackrock Spire south entrance
			"Burning Steppes/14 72.0,43.2 -x- Burning Steppes/15 60.5,27.8", -- Blackrock Caverns foyer
			"Burning Steppes/14 66.8,60.7 -x- Burning Steppes/15 41.7,79.6", -- Blackrock Caverns foyer north
			"Burning Steppes/14 46.8,50.8 -x- Burning Steppes/16 58.2,88.5", -- Blackrock Depths chain
		},
		["Coldridge Valley"] = {
			"Coldridge Valley/0 51.3,82.5 -x- Coldridge Valley/9 14.4,50.1  {template:cave}", -- Frostmane Hovel
		},
		["Deathknell"] = {
			"Deathknell/0 29.7,30.7 -x- Deathknell/12 87.3,52.0 {template:building}", -- Night's Web Hollow
		},
		["Dun Morogh"] = {
			"Dun Morogh/0 48.9,52.6 -x- Dun Morogh/7 60.4,77.0 {template:cave}",  -- Grizzled Den
			"Dun Morogh/0 42.7,64.1 -x- Dun Morogh/6 60.6,11.0",  -- Coldridge Pass
			"Dun Morogh/0 41.1,70.0 -x- Dun Morogh/6 38.0,91.1", -- Coldridge Pass
			"Dun Morogh/10 79.5,84.2 -x- New Tinkertown/0 32.6,37.0", --Gnome Starter
			"Dun Morogh/0 77.8,55.1 -x- Dun Morogh/11 39.6,84.2 {template:cave}", -- Gol'Bolar Quarry Mine
		},
		["Eastern Plaguelands"] = {
			"Eastern Plaguelands/0 75.37,52.73 -x- Eastern Plaguelands/20 40.60,91.63 {template:building}", -- Light's Hope Chapel
		},
		["Elwynn Forest"] = {
			"Elwynn Forest/0 61.7,53.7 -x- Elwynn Forest/19 48.9,90.1 {template:mine}", --Jasperload Mine
			"Elwynn Forest/0 38.9,82.3 -x- Elwynn Forest/1 39.9,88.0 {template:mine}", --Fargodeep Mine
			"Elwynn Forest/1 55.4,36.3 -x- Elwynn Forest/2 56.3,26.0", --Fargodeep Mine Lower
			"Elwynn Forest/0 38.5,81.5 -x- Elwynn Forest/2 35.2,68.4 {template:mine}", --Fargodeep Mine Lower
		},
		["Ghostlands"] = {
			"Ghostlands/0 66.4,28.5 -x- Ghostlands/1 94.0,35.6 {template:tunnel}", -- Amani Catacombs
			"Ghostlands/0 58.3,27.5 -x- Ghostlands/1 10.0,26.0 {template:tunnel}", -- Amani Catacombs
		},
		["Gilneas 2"] = {
			"Gilneas 2/0 29.03,51.66 -x- Gilneas 2/2 66.89,58.26 {template:building}", -- Greymane Manor Main Floor
			"Gilneas 2/2 61.0,47.5 -x- Gilneas 2/3 56.7,47.5 {title_atob:Run up the stairs} {title_btoa:Run down the stairs}", -- Greymane Manor Upper Floor
			"Gilneas 2/0 76.08,31.63 -x- Gilneas 2/1 28.33,69.82 {template:mine}", -- Emberstone Mine
		},
		["New Tinkertown"] = {
			"New Tinkertown/0 33.3,66.4 -x- New Tinkertown/8 94.6,58.1 {template:cave}", -- Frostmane Hold
		},
		["Searing Gorge"] = {
			"Searing Gorge/0 34.8,85.6 -x- Burning Steppes/14 46.47,18.25", -- Blackrock Spire north entrance
			--"Searing Gorge/0 34.8,85.2 -x- Searing Gorge/14 48.0,15.8", -- Blackrock Spire north entrance
			--"Searing Gorge/14 48.0,15.8 -x- Burning Steppes/14 46.3,18.3", --
			"Burning Steppes/14 46.8,50.8 -x- Burning Steppes/16 58.2,88.5", -- Blackrock Depths chain again - silly two-zone clone dungeon
			"Burning Steppes/16 40.2,57.9 -x- Burning Steppes/16 46.2,62.9",
		},
		["Tirisfal Glades"] = {
			"Tirisfal Glades/0 82.6,33.5 -x- Tirisfal Glades/13 17.3,82.9 {template:building}", -- Scarlet Monastery Entrance
			"Tirisfal Glades/0 82.3,32.6 -x- Tirisfal Glades/13 14.5,73.1 {template:building}", -- Scarlet Monastery Entrance
			"Deathknell/0 44.56,82.68 -x- Tirisfal Glades/0 30.33,72.86 {title_atob:Enter the crypt} {title_btoa:Leave the crypt}", -- Deathknell Crypt
		},
		["Westfall"] = {
			"Westfall/0 42.5,71.8 -x- Westfall/17 69.3,23.7 {template:building}", -- Deadmines Cave Entrance (Moonbrook)
			"Westfall/0 44.5,24.7 -x- Westfall/5 41.1,94.1 {template:mine}", -- Jangolode Mine
		},

	-- Outland

	-- Northrend

	-- Cataclysm areas

		["Kezan"] = {
			"Kezan/0 65.6,86.7 -x- Kezan/7 64.0,19.6 {template:mine}", -- Kaja'Mine Copper
			"Kezan/0 74.3,83.3 -x- Kezan/6 32.9,31.0 {template:mine}", -- Kaja'Mine Silver
			"Kezan/0 70.9,76.5 -x- Kezan/5 41.0,75.5 {template:mine}", -- Kaja'Mine Gold
		},
		["The Lost Isles"] = {
			"The Lost Isles/0 31.2,78.6 -x- The Lost Isles/1 48.1,90.0 {template:cave}", -- Kaja'mite Cavern
			"The Lost Isles/0 70.0,48.0 -x- The Lost Isles/2 50.0,10.8 {template:cave}", -- Volcanoth's Lair
		},
		["Gilneas 3"] = {
			"Gilneas 3/0 76.6,31.1 -x- Gilneas 3/1 28.5,70.0 <indoors:Emberstone Mine> {template:mine}", -- Emberstone Mine
		},

	-- Pandaria

		["The Jade Forest"] = {
			"The Jade Forest/0 45.9,28.9 -x- The Jade Forest/6 75.7,24.7 {template:mine}", -- Greenstone Quarry (Outside --> Upper Quarry)
			"The Jade Forest/6 39.8,38.0 -x- The Jade Forest/7 51.2,51.0 {title_atob:Go to the Lower Quarry} {title_btoa:Go to the Upper Quarry}", -- Greenstone Quarry (Upper Quarry --> Lower Quarry)
			"The Jade Forest/0 57.7,31.7 -x- The Jade Forest/15 76.8,20.0 {template:cave}", -- The Widow's Wail (Outside of Cave --> Inside Cave)
			"The Jade Forest/0 57.5,27.7 -x- The Jade Forest/16 82.4,47.7 {template:cave}", -- Oona Kagu (Outside of Cave --> Inside Cave)
		},
		["Krasarang Wilds"] = {
			"Krasarang Wilds/0 80.3,17.8 -x- Krasarang Wilds/1 33.3,24.4 {template:building}",
			"Krasarang Wilds/1 61.6,51.8 -x- Krasarang Wilds/2 59.5,36.7",
			"Krasarang Wilds/2 62.7,39.6 -x- Krasarang Wilds/3 82.3,36.0",
		},
		["Kun-Lai Summit"] = {
			"Kun-Lai Summit/0  52.9,71.3 -x- Kun-Lai Summit/11 56.5,15.9 {template:cave}", --The Deeper
			"Kun-Lai Summit/11 52.4,65.5 -x- Kun-Lai Summit/12 51.6,55.9 {title_atob:Go downstairs} {title_btoa:Go upstairs}", --The Deeper2
			"Kun-Lai Summit/0  50.3,61.7 -x- Kun-Lai Summit/10 74.9,91.5 {template:cave}", -- Knucklethump Hole
			"Kun-Lai Summit/0  73.2,73.5 -x- Kun-Lai Summit/9  11.5,30.0 {template:cave}", -- Pranksters' Hollow
			"Kun-Lai Summit/0  59.1,52.5 -x- Kun-Lai Summit/8  66.9,82.3 {template:cave}", -- Howlingwind Cavern
			"Kun-Lai Summit/0  53.0,46.5 -x- Kun-Lai Summit/17 88.3,54.8 {template:building}", -- Tomb of Conquerors
			"Kun-Lai Summit/0  33.1,26.6 -x- Kun-Lai Summit/20 52.2,11.6 {template:building}", -- Ruins of Korune
			"Kun-Lai Summit/20 30.9,75.9 <radius:15> -x- Kun-Lai Summit/21 34.3,76.1 {title_atob:Go downstairs} {title_btoa:Go upstairs}", -- Crypt of Korune
		},
		["Townlong Steppes"] = {
			"Townlong Steppes/0 33.02,61.24 -x- Townlong Steppes/13 20.15,68.46 {template:cave}", -- Niuzao Catacombs
		},
		["Vale of Eternal Blossoms"] = {
			"Vale of Eternal Blossoms/0 22.2,26.3 -x- Vale of Eternal Blossoms/18 54.0,88.2 {template:building}", -- Guo-Lai Halls

			"Vale of Eternal Blossoms/3 38.6,28.4 <nofly:1> -x- Vale of Eternal Blossoms 86.8,64.3 {B:WALK}",  -- main door
			"Vale of Eternal Blossoms/3 25.5,55.8 <nofly:1> -x- Vale of Eternal Blossoms 85.6,67.4 {B:WALK}",  -- west door
			"Vale of Eternal Blossoms/3 60.3,18.0 <nofly:1> -x- Vale of Eternal Blossoms 89.1,63.5 {B:WALK}",  -- east door

			"Vale of Eternal Blossoms/3 33.6,78.3 <radius:5> -x- Vale of Eternal Blossoms/4 32.3,75.5 <radius:5>", -- west staircase
			"Vale of Eternal Blossoms/3 70.4,33.5 <radius:5> -x- Vale of Eternal Blossoms/4 61.7,18.4 <radius:5>", -- east staircase

			"Vale of Eternal Blossoms/3 52.4,78.9 <radius:10> -x- Vale of Eternal Blossoms/4 56.1,75.7 <radius:10>", -- west hall
			"Vale of Eternal Blossoms/3 66.4,63.3 <radius:10> -x- Vale of Eternal Blossoms/4 68.4,63.3 <radius:10>", -- east hall

			"Vale of Eternal Blossoms/4 43.3,44.3 <radius:5> -to- Vale of Eternal Blossoms/3 44.9,47.6 <radius:5>", -- west balcony jump
			"Vale of Eternal Blossoms/4 52.6,33.7 <radius:5> -to- Vale of Eternal Blossoms/3 46.4,44.8 <radius:5>", -- east balcony jump

			"Vale of Eternal Blossoms/3 38.6,28.4 <nofly:1> -x- Vale of Eternal Blossoms 86.8,64.3",  -- main door
			"Vale of Eternal Blossoms/3 25.5,55.8 <nofly:1> -x- Vale of Eternal Blossoms 85.6,67.4",  -- west door
			"Vale of Eternal Blossoms/3 60.3,18.0 <nofly:1> -x- Vale of Eternal Blossoms 89.1,63.5",  -- east door
		},
		["The Veiled Stair"] = {
			"Kun-Lai Summit/0 73.2,94.6 -x- The Veiled Stair/5 25.1,12.5", -- The Ancient Passage
			"The Veiled Stair/0 50.6,40.4 -x- The Veiled Stair/5 63.1,86.4", -- The Ancient Passage
			"The Veiled Stair/0 57.3,13.6 -x- The Veiled Stair/5 77.6,36.7", -- The Ancient Passage
		},
		["Shrine of Two Moons"] = {
			"Shrine of Two Moons/1 22.1,54.4 <radius:5> -x- Shrine of Two Moons/2 27.8,80.6 <radius:5>", -- west staircase
			"Shrine of Two Moons/1 77.5,42.6 <radius:5> -x- Shrine of Two Moons/2 74.4,70.3 <radius:5>", -- east staircase

			"Shrine of Two Moons/1 36.6,21.7 <radius:10> -x- Shrine of Two Moons/2 38.3,36.6 <radius:10>", -- west hall
			"Shrine of Two Moons/1 58.0,18.5 <radius:10> -x- Shrine of Two Moons/2 55.8,30.0 <radius:10>", -- east hall

			"Shrine of Two Moons/2 47.0,77.0 <radius:5> -to- Shrine of Two Moons/1 48.6,64.5 <radius:5>", -- west balcony jump
			"Shrine of Two Moons/2 55.4,73.1 <radius:5> -to- Shrine of Two Moons/1 49.4,42.2 <radius:5>", -- east balcony jump

			"Shrine of Two Moons/1 53.8,87.0 <nofly:1> -x- Vale of Eternal Blossoms 61.5,18.8",  -- main door
			"Shrine of Two Moons/1 26.8,80.7 <nofly:1> -x- Vale of Eternal Blossoms 59.1,17.9",  -- west door
			"Shrine of Two Moons/1 77.4,69.0 <nofly:1> -x- Vale of Eternal Blossoms 63.5,17.0",  -- east door
		},
		["Isle of Thunder"] = {
			"Isle of Thunder/0 54.6,29.1 -x- Isle of Thunder/1 73.1,51.3 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 49.3,25.5 -x- Isle of Thunder/1 38.8,27.1 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 49.2,32.2 -x- Isle of Thunder/1 31.7,81.7 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 62.4,40.3 -x- Isle of Thunder/2 66.1,77.9 {template:tunnel}", --The Swollen Vault
		},
		["Isle of Thunder Scenario"] = { -- Isle of Thunder scenario  clone
			"Isle of Thunder Scenario/0 54.6,29.1 -x- Isle of Thunder Scenario/1 73.1,51.3 {template:cave}",
			"Isle of Thunder Scenario/0 49.3,25.5 -x- Isle of Thunder Scenario/1 38.8,27.1 {template:cave}",
			"Isle of Thunder Scenario/0 49.2,33.0 -x- Isle of Thunder Scenario/1 31.5,82.0 {template:cave}",
			"Isle of Thunder Scenario/0 62.4,40.3 -x- Isle of Thunder Scenario/2 66.1,77.9 {template:tunnel}",
		},
		["Timeless Isle"] = {
			"Timeless Isle/0 43.3,40.8 -x- Timeless Isle/22 44.4,81.0 {template:cave}", --Cavern of Lost Spirits
		},

	-- Draenor

		["Frostfire Ridge"] = {
			-- "Frostfire Ridge/1 35.1,45.9 -x- Frostfire Ridge/1 35.2,45.9 {template:building}", --Bladespire Citadel
			"Frostfire Ridge/1 55.3,25.8 -x- Frostfire Ridge/2 55.7,18.7 {template:building}", --Bladespire Citadel
			
			"Frostfire Ridge/0 24.3,36.4 -x- Frostfire Ridge/1 20.69,38.83 {template:pathup}", --Bladespire Fortress west ramp
			"Frostfire Ridge/0 21.0,42.3 -x- Frostfire Ridge/1 -7.8,86.5 {title_atob:Enter the bridge} {title_btoa:Get off the bridge}", --Gormaul Tower - Bladespire Fortress bridge
			
			--[[ too detailed ramp, too zealous.
			"Frostfire Ridge/0 24.3,36.4 -x- Frostfire Ridge/1 21.14,25.23 <radius:5> {template:pathup} {cost:-0.001} {dark:1}", --Bladespire Fortress
			"@+ -x- Frostfire Ridge/1 23.6,20.6 <radius:5> {template:pathup} {cost:-0.001} {dark:1}", --Bladespire Fortress
			"@+ -x- Frostfire Ridge/1 26.70,19.3 <radius:5> {template:pathup} {cost:-0.001} {dark:1}", --Bladespire Fortress
			"@+ -x- Frostfire Ridge/1 25.53,25.59 <radius:5> {template:pathup} {cost:-0.001} {dark:1}", --Bladespire Fortress
			"@+ -x- Frostfire Ridge/1 20.69,38.83 {template:pathup} {cost:-0.001} {dark:1}", --Bladespire Fortress
			--]]


			"Frostfire Ridge/1 24.3,36.4 -x- Frostfire Ridge/1 23.6,20.6 {template:pathup}", --Bladespire Fortress
			"Frostfire Ridge/0 29.7,41.5 -x- Frostfire Ridge/4 65.4,72.5 {template:mine}", --Sootstained Mines
			"Frostfire Ridge/0 65.4,17.5 -x- Frostfire Ridge/9 27.6,19.3 {template:cave}", --Snowfall Alcove
			"Frostfire Ridge/0 46.0,33.4 -x- Frostfire Ridge/7 33.2,51.5 {template:cave}", --Grulloc's Grotto
			"Frostfire Ridge/7 41.9,32.8 -x- Frostfire Ridge/8 42.0,32.9 {template:cave}", --Grulloc's Lair
			"Frostfire Ridge/0 63.1,65.6 <radius:20> -x- Frostfire Ridge/6 31.1,57.4 <radius:20> {template:building}", --The Hunter's Hall
			"Frostfire Ridge/0 27.9,24.8 -x- Frostfire Ridge/0 28.0,24.6 <indoors:Circle of Blood> {template:cave}", --Circle of Blood Cave
			--"Frostfire Ridge/0 18.3,56.0 -x- Frostfire Ridge/0 18.1,55.8 <indoors:Pool of Visions> {template:cave}", --Pool of Visions
		},
		["Frostwall"] = {
			"Frostwall/0 63.4,72.8 -x- Frostwall/26 65.4,55.0 {template:mine}", --Frostwall Mine
		},
		["Gorgrond"] = {
			--"Gorgrond/0 43.4,47.9 <radius:20> -x- Gorgrond/0 62.5,79.5 <radius:20> {template:cave}", --Fissure of Fury
			"Gorgrond/0 43.7,48.3 <radius:20> -x- Gorgrond/0 43.5,48.1 <dark:1> <radius:20> {template:cave}", --Fissure of Fury
			"@+ -x- Gorgrond/0 43.4,47.9 <dark:1> <radius:20> {template:cave}", --Fissure of Fury
			"@+ -x- Gorgrond/18 64.2,82.9 <dark:1> <radius:20> {template:cave}", --Fissure of Fury
			"@+ -x- Gorgrond/18 57.0,78.6 <radius:20> {template:cave}", --Fissure of Fury
			"Gorgrond/18 67.4,46.5 <radius:30> -x- Gorgrond/19 63.3,66.7 <radius:30> {title_atob:Continue walking down into the cave} {title_btoa:Run up the ramp to leave the cave}", --Heart of Fury
			"Gorgrond/0 54.0,55.7 <dist:20> -x- Gorgrond/20 69,73 <dist:20> {template:cave}", --Fissure of Fury
			"Gorgrond/20 70,51 <dist:30> -x- Gorgrond/21 65,56 <dist:30> {title_atob:Continue walking down into the cave} {title_btoa:Run up the ramp to leave the cave}", --Heart of Fury
		},
		["Lunarfall"] = {
			"Lunarfall/0 66.6,42.0 -x- Lunarfall/23 70.4,70.1 {template:mine}", --Lunarfall Excavation
		},
		["Nagrand D"] = {
			"Nagrand D/0 67.0,49.6 -x- Nagrand D/11 11.8,77.1 {template:cave}", --Vault of the Titan
			"Nagrand D/0 56.5,61.9 -x- Nagrand D/12 77.7,39.3 {template:cave}", --The Underpale
			"Nagrand D/12 10.3,62.0 -to- Nagrand D/0 47.2,64.3 {title:Walk through the tunnel}", -- The Underpale 2 (exit only)
			"Nagrand D/0 88.0,55.4 -x- Nagrand D/10 27.4,15.4 {template:cave}", -- The Master's Cavern
		},
		["Shadowmoon Valley D"] = {
			"Shadowmoon Valley D/0 24.4,33.3 -x- Shadowmoon Valley D/15 77.4,33.8 {template:cave}", --Bloodthorn Cave
		},
		["Spires of Arak"] = {
		},
		["Talador"] = {
			"Talador/0 41.4,60.1 -x- Talador/14 49.6,90.4 {template:cave}", --Tomb of Souls
			"Talador/0 58.7,64.9 -x- Talador/13 35.1,29.1 {template:cave}", --Tomb of Lights
		},

		["Assault on the Dark Portal"] = {
			"Assault on the Dark Portal 68.0,20.6 -x- Assault on the Dark Portal 93.7,50.2 {template:cave}", --Gul'var
		},
		["Dark Heart of Pandaria"] = {
			"Dark Heart of Pandaria/0 43.6,70.6 -x- Dark Heart of Pandaria/1 74.4,14.0 {template:mine}",
		},

		["Deeprun Tram"] = {
			"Deeprun Tram/1 52.24,46.9 -x- Deeprun Tram/2 72.3,16.2", -- brawlpub entry
		},
		["Dagger in the Dark"] = {
			"Dagger in the Dark/0 50.3,39.5 -x- Dagger in the Dark/1 61.3,82.9",
			"Dagger in the Dark/1 77.0,37.9 -x- Dagger in the Dark/0 57.9,13.2",
			"Dagger in the Dark/1 25.9,13.8 -x- Dagger in the Dark/0 31.1,1.1",
		},
	
	-- LEGION

		-----------------
		---  DALARAN  ---
		-----------------
		["Dalaran L"] = {
			-- Underbelly Entrance for Warlock Order Hall Portal
				"Dalaran L/10 34.33,45.60 <radius:10> -x- Dalaran L/11 19.18,57.14 <radius:10>"..
					"{title_atob:Enter the Underbelly and run down the stairs}"..
					"{title_btoa:Run up the stairs and leave the Underbelly} {cond:ZGV.IsLegionOn()}",

			-- Underbelly Main Entrance
				"Dalaran L/10 59.85,47.89 <radius:10> -x- Dalaran L/11 76.26,68.47 <radius:10>"..
					"{title_atob:Enter the Underbelly and run down the stairs}"..
					"{title_btoa:Run up the stairs and leave the Underbelly} {cond:ZGV.IsLegionOn()}",

			-- Rogue Order Hall Entrance
				"Dalaran L/10 52.83,70.29 <radius:10> -x- Dalaran L/4 87.05,76.65 <radius:10> {template:atob}"..
					"{title_atob:Talk to \"Red\" Jack Findle and Show Him Your Insignia, Enter the Doorway, and Run Down the Stairs}"..
					"{title_btoa:Run Up the Stairs, Click the Torch, and Leave the Doorway} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",
		},


		----------------
		---  AZSUNA  ---
		----------------
		["Azsuna"] = {
			-- Oceanus Cove Entrance #1
				"Azsuna/0 50.72,59.10 <radius:25> -x- Azsuna/18 72.80,85.82 <radius:15>"..
					"{template:cave} {cond:ZGV.IsLegionOn()}",

			-- Oceanus Cove Entrance #2
				"Azsuna/0 45.77,55.53 <radius:30> -x- Azsuna/18 27.77,49.64 <radius:25>"..
					"{template:cave} {cond:ZGV.IsLegionOn()}",
				
			-- Oceanus Cove Entrance #3
				"Azsuna/0 48.18,50.58 <radius:30> -x- Azsuna/18 42.58,18.32 <radius:25>"..
					"{template:cave} {cond:ZGV.IsLegionOn()}",

			-- Temple of a Thousand Lights
				"Azsuna/0 56.03,68.69 <radius:10> -x- Azsuna/19 65.95,19.19 <radius:10>"..
					"{title_atob:Enter the building and run down the stairs}"..
					"{title_btoa:Run up the stairs and leave the building} {cond:ZGV.IsLegionOn()}",

			-- Nar'thalas Academy
				"Azsuna/0 53.78,40.40 <radius:15> -x- Azsuna/17 62.40,84.94 <radius:15>"..
					"{template:building}"..
					"{cond:ZGV.IsLegionOn()}",
		},



		--------------------
		---  VAL'SHARAH  ---
		--------------------
		["Val'sharah"] = {
			-- Darkpens Entrance
				"Val'sharah/0 40.53,44.88 <radius:10> -x- Val'sharah/13 38.13,87.90 <radius:10>"..
					"{title_atob:Run down the stairs} {title_btoa:Run up the stairs}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Sleeper's Barrow Entrance from Val'sharah
				"Val'sharah/0 50.01,85.60 <radius:10> -x- Val'sharah/14 67.04,26.85 <radius:10>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Sleeper's Barrow Floor #2
				"Val'sharah/14 34.54,60.30 <radius:15> -x- Val'sharah/15 25.56,59.75 <radius:15>"..
					"{title_atob:Follow the path up} {title_btoa:Follow the path down}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Sleeper's Barrow Floor #2 Jump Down to Floor #1
				"Val'sharah/15 76.80,56.89 <radius:10> -to- Val'sharah/14 62.07,48.22 <radius:20>"..
					"{title:Jump down here} {cond:ZGV.IsLegionOn()}",	
					
			-- The Dreamgrove Ground Entrance (Druid Only)
				"Val'sharah/0 45.48,34.51 <radius:20> -x- The Dreamgrove/0 44.82,32.76 <radius:20>"..
					"{title:Follow the path}"..
					"{cond:select(2,UnitClass('player'))=='DRUID' and ZGV.IsLegionOn()}",
		},



		----------------------
		---  HIGHMOUNTAIN  ---
		----------------------
		["Highmountain"] = {
			-- Neltharion's Vault Exit to Obsidian Overlook
				"Highmountain/0 47.53,84.32 <radius:15> -x- Highmountain/30 41.80,90.71 <radius:15>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Neltharion's Vault Floor #1 to Floor #2 Border
				"Highmountain/30 46.83,18.83 <radius:20> -x- Highmountain/29 50.18,86.90 <radius:20>"..
					"{title_atob:Follow the path up} {title_btoa:Follow the path down}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Highmountain to Neltharion's Vault Main Entrance
				"Highmountain/0 44.68,72.33 <radius:20> -x- Highmountain/29 24.22,41.41 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Mucksnout Den Entrance #1
				"Highmountain/0 41.50,46.77 <radius:20> -x- Highmountain/16 52.09,86.28 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Mucksnout Den Entrance #2
				"Highmountain/0 38.46,42.64 <radius:20> -x- Highmountain/16 33.48,64.11 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Lifespring Cavern Entrance
				"Highmountain/0 38.37,61.30 <radius:15> -x- Highmountain/20 72.57,74.94 <radius:15>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Lifespring Cavern Floor #1 to Floor #2 Main Border
				"Highmountain/20 41.25,59.40 <radius:10> -x- Highmountain/21 37.30,78.71 <radius:10>"..
					"{title_atob:Follow the path up} {title_btoa:Follow the path down}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Lifespring Cavern Upper Floor to Lower Floor Wooden Bridge
				"Highmountain/21 72.41,54.76 <radius:10> -to- Highmountain/20 56.39,17.40 <radius:15>"..
					"{title_atob:Follow the path down} {cond:ZGV.IsLegionOn()}",

			-- Bitestone Enclave Entrance
				"Highmountain/0 41.36,72.50 <radius:20> -x- Highmountain/5 19.31,28.75 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Cave of the Blood Trial Entrance
				"Highmountain/0 37.61,33.46 <radius:20> -x- Highmountain/8 51.91,19.27 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Stonedark Grotto Entrance
				"Highmountain/0 42.59,25.28 <radius:20> -x- Highmountain/31 21.78,75.61 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",
			
			
			
				-- Trueshot Lodge Ground Entrance (Hunter Only)
				"Highmountain/0 36.13,44.71 <radius:20> -x- Trueshot Lodge/0 42.72,9.98 <radius:20>"..
					"{title_atob:Follow the path up} {title_btoa:Follow the path down}"..
					"{cond:select(2,UnitClass('player'))=='HUNTER' and ZGV.IsLegionOn()}",
		},

		["Thunder Totem"] = {
			-- Thunder Totem Elevator #1
				"Thunder Totem/0 49.27,46.09 <region:thunder_totem_circle_platform> <radius:10> -x- "..
					"Thunder Totem/6 68.48,49.94 <radius:10>"..
					"{title_atob:Ride the elevator down} {title_btoa:Ride the elevator up}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Elevator #2
				"Thunder Totem/0 45.85,59.02 <region:thunder_totem_circle_platform> <radius:10> -x- "..
					"Thunder Totem/6 58.69,87.00 <radius:10>"..
					"{title_atob:Ride the elevator down} {title_btoa:Ride the elevator up}"..
					"{cond:ZGV.IsLegionOn()}",
			
			

			-- Thunder Totem Platform Path #1
				"Thunder Totem/0 51.28,39.13 <region:thunder_totem_circle_platform> <radius:15> -x- "..
					"Thunder Totem/0 56.28,26.58 <radius:15>"..
					"{title:Cross the bridge}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Platform Path #2
				"Thunder Totem/0 53.97,56.44 <region:thunder_totem_circle_platform> <radius:30> -x- "..
					"Thunder Totem/0 60.02,64.38 <radius:20>"..
					"{title_atob:Follow the path up} {title_btoa:Follow the path down}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Platform Path #3
				"Thunder Totem/0 42.08,64.11 <region:thunder_totem_circle_platform> <radius:15> -x- "..
					"Thunder Totem/0 40.08,74.39 <radius:15>"..
					"{title:Cross the bridge}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Platform Path #4
				"Thunder Totem/0 54.50,55.07 <region:thunder_totem_circle_platform> <radius:20> -x- "..
					"Thunder Totem/0 58.23,50.98 <radius:20>"..
					"{title_atob:Follow the path down} {title_btoa:Follow the path up}"..
					"{cond:ZGV.IsLegionOn()}",


			
			-- Thunder Totem Tunnel #1
				"Thunder Totem/0 33.91,56.80 <radius:10> -x- Thunder Totem/6 30.94,77.72 <radius:10>"..
					"{title_atob:Enter the tunnel} {title_btoa:Leave the tunnel}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Tunnel #2
				"Thunder Totem/0 34.95,44.20 <radius:10> -x- Thunder Totem/6 32.75,49.71 <radius:10>"..
					"{title_atob:Enter the tunnel} {title_btoa:Leave the tunnel}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Tunnel #3
				"Thunder Totem/0 42.19,33.04 <radius:10> -x- Thunder Totem/6 50.75,22.57 <radius:10>"..
					"{title_atob:Enter the tunnel} {title_btoa:Leave the tunnel}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Main Entrance #1
				"Highmountain/0 48.98,55.41 <radius:15> -x- Thunder Totem/0 58.97,14.56 <radius:15>"..
					"{title:Cross the bridge}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Main Entrance #2
				"Highmountain/0 50.66,64.01 <radius:30> -x- Thunder Totem/0 61.69,64.75 <radius:20>"..
					"{title_atob:Follow the path down} {title_btoa:Follow the path up}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Main Entrance #3
				"Highmountain/0 44.93,65.57 <radius:20> -x- Thunder Totem/0 34.01,78.12 <radius:20>"..
					"{title:Follow the path}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Western Entrance #1
				"Highmountain/0 42.02,66.57 <radius:30> -x- Thunder Totem/0 20.18,63.51 <radius:20>"..
					"{title:Follow the path}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Western Entrance #2
				"Highmountain/0 43.91,59.37 <radius:20> -x- Thunder Totem/0 28.59,38.84 <radius:20>"..
					"{title:Follow the path}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thunder Totem Western Entrance #3
				"Highmountain/0 45.54,56.31 <radius:30> -x- Thunder Totem/0 40.42,26.89 <radius:20>"..
					"{title:Follow the path}"..
					"{cond:ZGV.IsLegionOn()}",			
			
		},

		-------------------
		---  STORMHEIM  ---
		-------------------
		["Stormheim"] = {
			-- Stormscale Cavern Entrance #1
				"Stormheim/0 31.46,56.91 <radius:15> -x- Stormheim/9 77.42,45.57 <radius:15>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Stormscale Cavern Entrance #2
				"Stormheim/0 29.95,54.94 <radius:20> -x- Stormheim/9 59.68,20.31 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thorignir Refuge Entrance
				"Stormheim/0 42.76,81.83 <radius:20> -x- Stormheim/25 67.71,65.07 <radius:20>"..
					"{template:cave}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Thorignir Refuge Floor #1 to Floor #2 Crossing
				"Stormheim/25 37.27,58.42 <radius:15> -x- Stormheim/26 48.42,40.65 <radius:15>"..
					"{title_atob:Follow the path down} {title_btoa:Follow the path up}"..
					"{cond:ZGV.IsLegionOn()}",

			-- Aggramar's Vault Entrance
				"Stormheim/0 47.63,44.82 <radius:20> -x- Stormheim/27 28.51,71.34 <radius:20>"..
					"{template:building}"..
					"{cond:ZGV.IsLegionOn()}",
		},		
				
		
		
		-----------------
		---  SURAMAR  ---
		-----------------
		["Suramar"] = {
			-- Ley Station Anora Entrance
				"Suramar/0 41.59,38.99 <radius:15> -x- Suramar/36 23.91,32.34 <radius:15>"..
					"{template:cave}",

			-- Jump Down into Falanaar Tunnels
				"Suramar/0 21.19,42.96 <radius:15> -to- Suramar/33 46.85,43.76 <radius:40>"..
					"{title:Jump down into the water}",

			-- Falanaar Tunnels Floor #1 to Floor #2
				"Suramar/33 50.97,16.02 <radius:15> -x- Suramar/32 30.64,69.23 <radius:15>"..
					"{title_atob:Follow the path up} {title_btoa:Follow the path down}",

			-- Falanaar Tunnels Main Entrance
				"Suramar/32 50.35,62.73 <radius:15> -x- Suramar/0 22.86,35.76 <radius:15>"..
					"{title_atob:Leave the building} {title_btoa:Enter the building}",

			-- Ley Station Moonfall Entrance
				"Suramar/0 35.70,24.30 <radius:15> -x- Suramar/37 49.28,88.09 <radius:15>"..
					"{template:cave}",

			-- Ley Station Aethenar Entrance
				"Suramar/0 24.35,19.43 <radius:15> -x- Suramar/38 63.53,87.13 <radius:15>"..
					"{template:cave}",

			-- Ley Station Kel'balor Entrance
				"Suramar/0 59.37,43.03 <radius:15> -x- Suramar/35 53.98,85.53 <radius:15>"..
					"{template:cave}",

			-- Elor'shan Entrance
				"Suramar/0 65.95,42.06 <radius:15> -x- Suramar/34 56.37,86.81 <radius:15>"..
					"{template:cave}",

			-- The Arcway Entrance
				"Suramar/0 35.68,82.23 <radius:20> -x- Suramar/23 27.03,89.23 <radius:20>"..
					"{template:cave}",

			-- The Arcway Vaults Entrance
				"Suramar/0 34.54,84.24 <radius:20> -x- Suramar/24 41.94,25.50 <radius:20>"..
					"{template:cave}",
					
			-- Sanctum of Order - Bottom Floor Entrance
				"Suramar/0 45.95,64.59 -x- Suramar/0 45.77,64.41 <region:suramar_sanctum_of_order> {template:atob}"..
					"{title_atob:Enter the Sanctum of Order (Bottom Floor)}"..
					"{title_btoa:Leave the Sanctum of Order (Bottom Floor)}",
			
			-- Sanctum of Order - Top Floor Entrance
				"Suramar/0 42.80,61.84 -x- Suramar/0 43.57,62.50 <region:suramar_sanctum_of_order> {template:atob}"..
					"{title_atob:Enter the Sanctum of Order (Top Floor)}"..
					"{title_btoa:Leave the Sanctum of Order (Top Floor)}",

			-- Teloth'aran Entrance
				"Suramar/0 54.65,46.32 <radius:20> -x- Suramar/22 39.41,83.43 <radius:20>"..
					"{template:cave}",
		},

		
		
		-------------------------
		---  MAGE ORDER HALL  ---
		-------------------------
		["Hall of the Guardian"] = {
			"Hall of the Guardian/1 59.64,60.14 <radius:15> -x- Hall of the Guardian/2 58.32,65.16 <radius:15>"..
			"{title_atob:Run up the stairs} {title_btoa:Run down the stairs} {cond:PlayerCompletedQuest(41036)}",
		},



		---------------------------------
		---  DEMON HUNTER ORDER HALL  ---
		---------------------------------
		["Mardum, the Shattered Abyss"] = {
			"Mardum, the Shattered Abyss/2 68.66,67.24 <radius:10> -x- Mardum, the Shattered Abyss/3 65.39,53.64 <radius:15>"..
			"{title_atob:Follow the path down} {title_btoa:Follow the path up} {cond:PlayerCompletedQuest(42872)}",
		},		



		---------------------------------
		---  DEATH KNIGHT ORDER HALL  ---
		---------------------------------
		["Broken Shore"] = {
			-- Bottom Floor to Top Floor
				"Broken Shore/2 35.41,37.52 -to- Broken Shore/1 36.25,38.55 {mode:PORTAL} {title:Walk onto the Teleport Pad to go Upstairs} {cond:PlayerCompletedQuest(39757)}",

			-- Top Floor to Bottom Floor
				"Broken Shore/1 33.96,36.30 -to- Broken Shore/2 37.77,39.76 {mode:PORTAL} {title:Walk onto the Teleport Pad to go Downstairs} {cond:PlayerCompletedQuest(39757)}",
		},



		-----------------
		---  KROKUUN  ---
		-----------------
		["Krokuun"] = {
			-- Nath'raxas Spire
			"Krokuun/0 50.22,17.12 <radius:10> -x- Krokuun/7 66.91,86.27 <radius:10>"..
			"{title_atob:Enter Nath'raxas Spire}"..
			"{title_btoa:Leave Nath'raxas Spire}",
			--"{cond:ZGV.IsLegionOn()}",

			-- Vindicaar Floors
			"Krokuun/1 41.19,50.95 <radius:10> -x- Krokuun/2 43.80,56.08 <radius:10>"..
			"{title_btoa:Follow the stairs up}"..
			"{title_atob:Follow the stairs down}",

			"Krokuun/1 58.17,40.22 <radius:10> -x- Krokuun/2 59.05,43.88 <radius:10>"..
			"{title_btoa:Follow the stairs up}"..
			"{title_atob:Follow the stairs down}",
		},

		["Mac'Aree"] = {
			-- Vindicaar Floors
			"Mac'Aree/3 46.31,52.16 -x- Mac'Aree/4 48.54,55.42"..
			"{title_btoa:Follow the stairs up}"..
			"{title_atob:Follow the stairs down}",

			"Mac'Aree/3 60.70,45.73 -x- Mac'Aree/4 59.93,49.21"..
			"{title_btoa:Follow the stairs up}"..
			"{title_atob:Follow the stairs down}",
		},

		["Antoran Wastes"] = {
			-- Vindicaar Floors
			"Antoran Wastes/5 50.82,61.14 -x- Antoran Wastes/6 54.08,57.46"..
			"{title_btoa:Follow the stairs up}"..
			"{title_atob:Follow the stairs down}",

			"Antoran Wastes/5 47.01,38.46 -x- Antoran Wastes/6 50.88,39.32"..
			"{title_btoa:Follow the stairs up}"..
			"{title_atob:Follow the stairs down}",
		},

		--------------------
		---  ARCATRAZ L  ---
		--------------------
		["Arcatraz L"] = {
			"Arcatraz L/1 53.41,25.31 <radius:5> -x- Arcatraz L/2 69.29,38.36 <radius:5>"..
			"{title_atob:Enter Stasis Block: Trion}"..
			"{title_btoa:Leave Stasis Block: Trion}",
		},
}


--[[
-- translate the flooring zone-folders from names to numbers
	local TEMP={}
	for zone,zonedata in pairs(data.basenodes.FloorCrossings) do
		if type(zone)~="number" then
			local id=data.MapIDsByName[zone]
			if type(id)=="table" then id=id[1] end
			if not id then error("Map "..zone.." has no ID!") end
			zone=id
		end
		TEMP[zone]=zonedata
	end
	data.basenodes.FloorCrossings=TEMP
--]]