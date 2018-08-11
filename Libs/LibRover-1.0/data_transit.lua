local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.transit = {



--------------------------------------------------
-- ALLIANCE TRAVEL BETWEEN KUL TIRAS & ZULDAZAR --
--			BFA			--
--------------------------------------------------

	-- Boralus to Zuldazar (Boat)
		"Boralus/0 67.95,26.69 -to- Zuldazar/0 80.22,55.23 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth, tell her \"Set sail for Zuldazar.\"} {cond:PlayerCompletedQuest(51308)}",

	-- Zuldazar to Boralus
		"Zuldazar/0 40.46,71.03 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Daria Smithson, tell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51418)}",

	-- Boralus to Nazmir (Boat)
		"Boralus/0 67.95,26.69 -to- Nazmir/0 61.95,39.92 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth, tell her \"Set sail for Nazmir.\"} {cond:PlayerCompletedQuest(51571)}",
	
	-- Nazmir to Boralus
		"Nazmir/0 62.06,40.08 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Desha Stormwallow, tell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51571)}",

	-- Boralus to Vol'dun (Boat)
		"Boralus/0 67.95,26.69 -to- Vol'dun/0 35.60,33.17 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth, tell her \"Set sail for Vol'dun.\"} {cond:PlayerCompletedQuest(51572)}",

	-- Boralus to Vol'dun (Boat)
		"Vol'dun/0 34.91,33.76 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth, tell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51229)}",

	-- Boralus to Vol'dun (Flight Master)
		"Vol'dun/0 36.69,34.28 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Barnard \"The Smasher\" Baysworth, tell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51229)}",






-----------------------------------------------
-- HORDE TRAVEL BETWEEN KUL TIRAS & ZULDAZAR --
--			BFA		     --
-----------------------------------------------
	
	-- Zuldazar to Stormsong Valley (Boat)
		"Zuldazar/0 58.46,62.99 -to- Drustvar/0 20.61,43.69 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail, tell her \"Set sail for Drustvar.\"} {cond:PlayerCompletedQuest(51801)}",
	
	-- Drustvar to Zuldazar (Boat)
		"Drustvar/0 20.60,43.34 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Swellthrasher, tell him \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51340)}",	
	
	-- Zuldazar to Stormsong Valley (Boat)
		"Zuldazar/0 58.46,62.99 -to- Stormsong Valley/0 51.98,24.49 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail, tell her \"Set sail for Stormsong Valley.\"} {cond:PlayerCompletedQuest(51802)}",

	-- Stormsong Valley to Zuldazar (Boat)
		"Stormsong Valley/0 51.95,24.46 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Grok Seahandler, tell him \"Take me back to Zuldazar.\"} {cond:PlayerCompletedQuest(51532)}",
	
	-- Stormsong Valley to Zuldazar (Flight Master)
		"Stormsong Valley/0 51.43,33.75 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Muka Stormbreaker, tell her \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51696)}",

	-- Zuldazar to Tiragarde Sound (Boat)
		"Zuldazar/0 58.46,62.99 -to- Tiragarde Sound/0 88.20,51.16 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail, tell her \"Set sail for Tiragarde Sound.\"} {cond:PlayerCompletedQuest(51800)}",

	-- Tiragarde Sound to Zuldazar (Boat)
		"Tiragarde Sound/0 87.85,51.18 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Erul Dawnbrook, tell him \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51421)}",






---------------------------------
-- ZULDAZAR WAVESIGNER FERRIES --
---------------------------------
	"Zuldazar##862 78.66,12.62 -x- Zuldazar##862 82.43,46.85 {mode:SHIP} {fac:H} {cost:50} {title_atob:Take canoe to Atal'Gral}           {title_btoa:Take canoe to Zeb'Hari}",
	"@+ -x- Zuldazar##862 69.50,67.00                        {mode:SHIP} {fac:H} {cost:45} {title_atob:Take canoe to Dreadpearl Shallows} {title_btoa:Take canoe to Atal'Gral}",
	"@+ -x- Dazar'alor##1165 52.83,95.78                     {mode:SHIP} {fac:H} {cost:50} {title_atob:Take canoe to Zuldazar Harbor}     {title_btoa:Take canoe to Dreadpearl Shallows}",
	"@+ -x- Zuldazar##862 53.68,61.56                        {mode:SHIP} {fac:H} {cost:30} {title_atob:Take canoe to Zuldazar Arena}      {title_btoa:Take canoe to Zuldazar Harbor}",
	"@+ -x- Zuldazar##862 47.93,70.48                        {mode:SHIP} {fac:H} {cost:30} {title_atob:Take canoe to Xibala}              {title_btoa:Take canoe to Zuldazar Arena}",










---------------
-- ZEPPELINS --
---------------

	-- Orgrimmar - Durotar, Kalimdor -x- Thunder Bluff - Mulgore, Kalimdor --
	"Orgrimmar/1 43.00,64.99 -x- Thunder Bluff/0 15.28,25.70 {fac:H} {mode:ZEPPELIN}",

	-- Orgrimmar - Durotar, Kalimdor -x- Grom'gol - Northern Stranglethorn, Eastern Kingdoms --
	"Orgrimmar/1 52.52,53.15 -x- Northern Stranglethorn/0 37.17,52.49 {fac:H} {mode:ZEPPELIN}",

	-- Orgrimmar - Durotar, Kalimdor -x- Undercity - Tirisfal Glades, Kalimdor --
	--"Orgrimmar/1 50.79,55.89 -x- Tirisfal Glades/0 60.71,58.78 {fac:H} {mode:ZEPPELIN}",

	-- Orgrimmar - Durotar, Kalimdor -x- Warsong Hold - Borean Tundra, Northrend --
	"Orgrimmar/1 44.75,62.30 -x- Borean Tundra/0 41.38,53.61 {fac:H} {mode:ZEPPELIN}",

	-- Undercity - Tirisfal Glades, Kalimdor -x- Vengeance Landing - Howling Fjord, Northrend --
	--"Tirisfal Glades/0 59.05,58.93 <port:Undercity> -x- Howling Fjord/0 77.71,28.26 {fac:H} {mode:ZEPPELIN}",

	-- Undercity - Tirisfal Glades, Kalimdor -x- Grom'gol - Northern Stranglethorn, Eastern Kingdoms --
	--"Tirisfal Glades/0 61.86,59.07 <port:Undercity> -x- Northern Stranglethorn/0 37.49,50.92 {fac:H} {mode:ZEPPELIN}",

-----------
-- SHIPS --
-----------

	-- Stormwind - Elwyyn Forest, Eastern Kingdoms -x- Valiance Keep - Borian Tundra, Northrend --
	"Stormwind City/0 18.02,25.84 -x- Borean Tundra/0 59.68,69.41 {fac:A} {mode:SHIP} {cost:177}  {cond:not ZGV.IsLegionBoatLock()}", -- ship turnaround = 275, ~40s waiting; 275/2+40 = 177.5

	-- Stormwind - Elwyyn Forest, Eastern Kingdoms -x- Darnassus - Teldrassil, Kalimdor --
	--"Stormwind City/0 22.42,55.91 -x- Teldrassil/0 55.01,93.72 <port:Darnassus> {fac:A} {mode:SHIP}  {cond:not ZGV.IsLegionBoatLock()}",

	-- Menethil Harbor - Wetlands, Eastern Kingdoms -x- Theramore - Dustwallow Marsh, Kalimdor --
	"Wetlands/0 6.37,62.24 <port:Menethil Harbor> -x- Dustwallow Marsh/0 71.51,56.34 {fac:A} {mode:SHIP}",

	-- Menethil Harbor - Wetlands, Eastern Kingdoms -x- Valgarde - Howling Fjord, Northrend --
	"Wetlands/0 5.10,55.72 <port:Menethil Harbor> -x- Howling Fjord/0 61.33,62.60 <port:Valgarde> {fac:A} {mode:SHIP}", --cost=300, --ship turnaround is 450, but takes forever to depart/arrive

	-- Booty Bay - The Cape of Stranglethorn, Eastern Kingdoms -x- Rachet - Northern Barrens, Kalimdor --
	"The Cape of Stranglethorn/0 39.02,67.01 <port:Booty Bay> -x- Northern Barrens/0 70.16,73.27 <port:Ratchet> {mode:SHIP}",

	-- Darnassus - Teldrassil, Kalimdor -x- Azuremyst Isle, Kalimdor --
	--"Teldrassil/0 52.28,89.47 <port:Darnassus> -x- Azuremyst Isle/0 21.35,54.04 {fac:A} {mode:SHIP}  {cond:not ZGV.IsLegionBoatLock()}",

	-- Unu'pe - Borean Tundra, Northrend -x- Moa'ki Harbor - Dragonblight, Northrend --
	"Borean Tundra/0 78.92,53.65 <port:Unu'pe> -x- Dragonblight/0 47.94,78.76 <port:Moa'ki Harbor> {mode:SHIP} {template:turtle}",

	-- Moa'ki Harbor - Dragonblight, Northrend -x- Kamagua - Howling Fjord, Northrend --
	"Dragonblight/0 49.64,78.43 -x- Howling Fjord/0 23.46,57.75 <port:Kamagua> {mode:SHIP} {template:turtle}",

	-- Stormwind - Elwyyn Forest, Eastern Kingdoms -x- Tradewinds Market - Tiragarde Sound, Kul Tiras --
	"Stormwind City/0 22.43,55.93 -x- Boralus/0 77.62,26.15 {fac:A} {mode:SHIP} {cond:ZGV.InPhase('bfa')}",

	-- Port of Zandalar - Zuldazar, Zandalar -x- Echo Isles - Durotar, Kalimdor --
	"Zuldazar/0 58.02,65.07 -x- Echo Isles/0 70.90,38.23 {fac:H} {mode:SHIP} {cond:ZGV.InPhase('bfa')}",

------------------
-- DEEPRUN TRAM --
------------------

	"@deeprun_sw -x- @deeprun_if {mode:TRAM} {cost:30} {dontsetborder:1}", -- TRAM

	-- Stormwind - Elwyyn Forest, Eastern Kingdoms --
	"Stormwind City 69.44,31.29 -x- Deeprun Tram/1 42.8,19.5 @deeprun_sw {mode:PORTAL} {title_atob:Enter Stormwind Deeprun Tram portal\nTake tram to Ironforge}"..
		"{title_btoa:Exit Stormwind Deeprun Tram through portal}",

	-- Ironforge - Dun Morogh, Eastern Kingdoms --
	"Ironforge 76.43,51.08 -x- Deeprun Tram/1 98,45 @deeprun_if {mode:PORTAL} {title_atob:Enter Ironforge Deeprun Tram portal\nTake tram to Stormwind}"..
		"{title_btoa:Take tram to Ironforge\nExit Ironforge Deeprun Tram through portal}",

----------------------
-- TELEPORT TARGETS --
----------------------
	--------------
	-- ALLIANCE --
	--------------

	-- Stormwind - Elwynn Forest, Eastern Kingdoms --
	"Stormwind City/0 49.59,86.53 @sw_tp_dst",

	-- Ironforge - Dun Morogh, Eastern Kingdoms --
	"Ironforge/0 25.51,8.43 @if_tb_dst",

	-- Darnassus - Teldrassil, Kalimdor --
	"Darnassus/0 43.47,78.68 @darn_tb_dst",

	-- Exodar - Azuremyst Isle, Kalimdor --
	"The Exodar/0 47.62,59.82 @exo_tb_dst",

	-- The Stair of Destiny - Hellfire Peninsula, Outland --
	"Hellfire Peninsula/0 89.16,50.86 @hfpA_tb_dst",

	-- Shrine of Seven Stars - Vale of Eternal Blossoms, Pandaria --
	"Vale of Eternal Blossoms/0 62.50,21.82 @sss_tb_dst",

	-----------
	-- HORDE --
	-----------

	-- Ogrimmar - Durotar, Kalimdor --
	"Orgrimmar/2 48.28,64.53 <region:cleftofshadow> @org_tp_dst",

	-- Undercity - Tirisfal Glades, Kalimdor --
	"Undercity/0 84.59,16.33 @uc_tb_dst",

	-- Thunder Bluff - Mulgore, Kalimdor --
	"Thunder Bluff/0 22.21,16.87 @tb_tb_dst",

	-- Silvermoon City - Eversong Woods, Kalimdor --
	"Silvermoon City/0 58.26,19.24 @smc_tb_dst",

	-- The Stair of Destiny - Hellfire Peninsula, Outland --
	"Hellfire Peninsula/0 89.16,49.56 @hfpH_tb_dst",

	-- Shrine of Two Moons - Vale of Eternal Blossoms, Pandaria --
	"Vale of Eternal Blossoms/0 62.50,21.82 @stm_tb_dst",

	-------------
	-- NEUTRAL --
	-------------

	-- Dalaran - Crystalsong Forest, Northrend --
	"Dalaran/1 55.92,46.78 @dala_tp_dst",

	-- Dalaran - Broken Shore, Broken Isles --
	"Dalaran L/10 60.92,44.72 @dalL_tp_dst",

---------------
--- PORTALS ---
---------------

	--------------
	-- KALIMDOR --
	--------------

	-- Orgrimmar - Durotar, Kalimdor -to- Kelp'thar Forest - Vashj'ir, Eastern Kingdoms --
	"Orgrimmar/1 49.23,36.52 -to- Kelp'thar Forest/0 45.14,23.33 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25924) and not PlayerCompletedQuest(25222)}",

	-- Orgrimmar - Durotar, Kalimdor -to- Shimmering Expanse - Vashj'ir, Eastern Kingdoms --
	"Orgrimmar/1 49.23,36.52 -to- Shimmering Expanse 49.5,40.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(26784)}",--Check dest

	-- Orgrimmar - Durotar, Kalimdor -to- Abyssal Depths - Vashj'ir, Eastern Kingdoms --
	"Orgrimmar/1 49.23,36.52 -to- Abyssal Depths 51.4,61.0 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) or UnitLevel('player')>=80}",--Check dest

	-- Orgrimmar - Durotar, Kalimdor -to- Ramkaehen - Uldum, Kalimdor --
	"Orgrimmar/1 48.87,38.55 -to- Uldum/0 54.90,34.25 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or UnitLevel('player')>=83}",

	-- Orgrimmar - Durotar, Kalimdor -to- Temple of Earth - Deepholm, The Maelstrom --
	"Orgrimmar/1 50.84,36.29 -to- Deepholm/0 50.59,52.94 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",

	-- Orgrimmar - Durotar, Kalimdor -to- Temple of Earth - Deepholm, The Maelstrom --
	"Orgrimmar/1 50.84,36.29 -to- Deepholm/0 50.59,52.94 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(27123) and UnitLevel('player')<82}"..
		"{title:You can't get to Deepholm yet.\nPlease complete quests to unlock this portal.}",

	-- Orgrimmar - Durotar, Kalimdor -to- Nordrassil - Mount Hyjal, Kalimdor --
	"Orgrimmar/1 51.11,38.28 -to- Mount Hyjal/0 63.49,23.37 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player')>=80}",

	-- Orgrimmar - Durotar, Kalimdor -to- Hellscream's Grasp - Tol Barad Peninsula, Eastern Kingdoms --
	"Orgrimmar/1 47.40,39.27 -to- Tol Barad Peninsula/0 55.78,80.06 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",

	-- Orgrimmar - Durotar, Kalimdor -to- Dragonmaw Point - Twilight Highlands, Eastern Kingdoms --
	"Orgrimmar/1 50.22,39.44 -to- Twilight Highlands/0 73.63,53.39 <subtype:cityportal> {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) or UnitLevel('player')>=84}",--------

	-- Orgrimmar - Durotar, Kalimdor -x- Brawl'gar Arena - Orgrimmar, Kalimdor --
	"Orgrimmar/1 70.57,30.92 -x- Brawl'gar Arena/1 55.53,14.28 {fac:H} {mode:PORTAL} {template:pinkportal}",

	-- Nordrassil - Mount Hyjal, Kalimdor -x- Orgrimmar - Durotar, Kalimdor --
	"Mount Hyjal/0 63.48,24.43 -to- Orgrimmar/1 50.04,37.73 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player')>=80}",

	-- Nordrassil - Mount Hyjal, Kalimdor -x- Stormwind - Elwynn Forest, Eastern Kingdoms --
	"Mount Hyjal/0 62.62,23.13 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player')>=80}",

	-- Northern Stranglethorn Vale, Kalimdor -to- Undercity - Tirisfal Glades, Eastern Kingdoms --
	"Northern Stranglethorn/0 37.54,51.00 <subtype:cityportal> -to- Undercity/0 84.58,16.33 {fac:H} {mode:PORTAL}",

	-- Orgrimmar - Durotar, Kalimdor -to- Undercity - Tirisfal Glades, Eastern Kingdoms --
	"Orgrimmar/1 50.74,55.57 <subtype:cityportal> -to- Undercity/0 84.58,16.33 {fac:H} {mode:PORTAL}",

	-- Rut'theran Village - Darnassus, Kalimdor -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
	"Teldrassil/0 55.03,93.71 <subtype:cityportal> -to- Stormwind City/0 49.59,86.53 {fac:A} {mode:PORTAL}",

	-- Rut'theran Village - Darnassus, Kalimdor -to- The Exodar - Azuremyst Isle, Kalimdor --
	"Teldrassil/0 52.28,89.47 <subtype:cityportal> -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL}",

	-- The Exodar - Azuremyst Isle, Kalimdor -to- Temple of the Moon - Darnassus, Kalimdor --
	"Kalimdor/0 29.34,28.25 <subtype:cityportal> -to- Darnassus/0 43.47,78.67 {fac:A} {mode:PORTAL}",

	----------------------
	-- EASTERN KINGDOMS --
	----------------------

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Kelp'thar Forest - Vashj'ir, Eastern Kingdoms --
	"Stormwind City/0 73.30,16.87 -to- Kelp'thar Forest/0 45.14,23.33 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482) and not PlayerCompletedQuest(25222)}",

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Shimmering Expanse - Vashj'ir, Eastern Kingdoms --
	"Stormwind City/0 73.30,16.87 -to- Shimmering Expanse 47.2,57.5 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(14482)}",--Check dest

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Abyssal Depths - Vashj'ir, Eastern Kingdoms --
	"Stormwind City/0 73.30,16.87 -to- Abyssal Depths 55.7,72.8 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482) or UnitLevel('player')>=80}",--Check dest

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Ramkaehen - Uldum, Kalimdor --
	"Stormwind City/0 75.24,20.50 -to- Uldum/0 54.90,34.25 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or UnitLevel('player')>=82}",

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Temple of Earth - Deepholm, The Maelstrom --
	"Stormwind City/0 73.19,19.65 -to- Deepholm/0 48.73,53.56 @deepholm_tp_dst {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -x- Nordrassil - Mount Hyjal, Kalimdor --
	"Stormwind City/0 76.20,18.69 -to- Mount Hyjal/0 63.49,23.37 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player')>=80}",

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -x- Baradin Base Camp - Tol Barad Peninsula, Eastern Kingdoms --
	"Stormwind City/0 73.20,18.37 -to- Tol Barad Peninsula/0 73.68,60.92 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=85}",

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -x- Highbank - Twilight Highlands, Eastern Kingdoms --
	"Stormwind City/0 75.34,16.43 -to- Twilight Highlands/0 79.48,77.79 <subtype:cityportal> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27537) or UnitLevel('player')>=84}",

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -x- Boralus Harbor, Tiragarde Sound --
	"Stormwind City/0 48.92,86.44 <subtype:cityportal> -to- Boralus/0 69.80,15.75 {fac:A} {mode:PORTAL} {title:Click the Portal to Boralus} {cond:ZGV.InPhase('bfa')}",

	-- Highbank - Twilight Highlands, Eastern Kingdoms -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
	"Twilight Highlands/0 79.47,77.80 <subtype:cityportal> -to- Stormwind City/0 75.17,16.81 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27537)}",

	-- Dragonmaw Port - Twilight Highlands, Eastern Kingdoms -to- Orgrimmar - Durotar, Kalimdor --
	"Twilight Highlands/0 73.71,53.90 <subtype:cityportal> -to- Orgrimmar/1 50.14,37.89 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)}",

	-- Tirisfal Glades, Eastern Kingdoms -to- Northern Stranglethorn Vale, Kalimdor --
	"Tirisfal Glades/0 61.88,59.01 -to- Northern Stranglethorn/0 37.23,50.48 {fac:H} {mode:PORTAL} {title:Click the Portal to Grom'gol}",

	-- Tirisfal Glades, Eastern Kingdoms -to- Orgrimmar - Durotar, Kalimdor --
	"Tirisfal Glades/0 60.74,58.67 <subtype:cityportal> -to- Orgrimmar/2 48.28,64.53 {fac:H} {mode:PORTAL}",

	-- Tirisfal Glades, Eastern Kingdoms -to- Vengeance Landing - Howling Fjord, Northrend --
	"Tirisfal Glades/0 59.09,58.91 -to- Howling Fjord/0 79.00,28.92 {fac:H} {mode:PORTAL} {title:Click the Portal to Howling Fjord}",

	-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Temple of the Moon - Darnassus, Kalimdor --
	"Stormwind City/0 23.86,56.10 <subtype:cityportal> -to- Darnassus/0 43.47,78.67 {fac:A} {mode:PORTAL}",

	-------------------
	-- THE MAELSTROM --
	-------------------

	-- Temple of Earth - Deepholm, The Maelstrom -x- Orgrimmar - Durotar, Kalimdor --
	"Deepholm/0 50.93,53.10 -to- Orgrimmar/1 50.04,37.73 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",

	-- Temple of Earth - Deepholm, The Maelstrom -x- Stormwind - Elwynn Forest, Eastern Kingdoms --
	"Deepholm/0 48.53,53.84 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",

	-- Hellscream's Grasp - Tol Barad Peninsula, Eastern Kingdoms -x- Orgrimmar - Durotar, Kalimdor --
	"Tol Barad Peninsula/0 56.30,79.66 -to- Orgrimmar/1 47.65,39.14 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",

	-- Baradin Base Camp - Tol Barad Peninsula, Eastern Kingdoms -x- Stormwind - Elwynn Forest, Eastern Kingdoms --
	"Tol Barad Peninsula/0 75.23,58.86 -to- Stormwind City/0 73.39,18.28 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=85}",

	------------------
	-- BROKEN ISLES --
	------------------

	-- The Violet Hold Entrance - Dalaran, Broken Isles --
	"Dalaran L/10 67.76,70.29 -to- Violet Hold/1 50.95,69.90 {mode:PORTAL} {title:Click the Violet Hold Gate and Walk into the Swirling Portal to the Violet Hold}"..
		"{cond:ZGV.IsLegionOn()}",

	-- The Violet Hold Exit - Dalaran, Broken Isles --
	"Violet Hold/1 50.98,83.81 -to- Dalaran L/10 65.57,67.39 {mode:PORTAL} {title:Walk into the Swirling Portal to Dalaran} {cond:ZGV.IsLegionOn()}",

	-- Chamber of the Guardian - Dalaran, Broken Isles -to- Caverns of Time - Tanaris, Kalimdor --
	"Dalaran L/12 38.67,79.72 -to- Tanaris/17 54.60,28.30 {mode:PORTAL} {title:Click the Portal to Caverns of Time} {cond:ZGV.IsLegionOn()}",
		
	-- Chamber of the Guardian - Dalaran, Broken Isles -to- Shattrath City - Terokkar Forest, Outland --
	"Dalaran L/12 35.57,85.44 -to- Shattrath City/0 54.97,40.23 {mode:PORTAL} {title:Click the Portal to Shattrath} {cond:ZGV.IsLegionOn()}",

	-- Chamber of the Guardian - Dalaran, Broken Isles -to- Wyrmrest Temple - Dragonblight, Northrend --
	"Dalaran L/12 30.71,84.32 -to- Dragonblight/0 59.72,52.87 {mode:PORTAL} {title:Click the Portal to Wyrmrest Temple} {cond:ZGV.IsLegionOn()}",

	-- Chamber of the Guardian - Dalaran, Broken Isles -to- Dalaran Crater - Hillsbrad Foothils, Eastern Kingdoms --
	"Dalaran L/12 28.73,77.36 -to- Hillsbrad Foothills/0 30.91,36.34 {mode:PORTAL} {title:Click the Portal to Dalaran Crater} {cond:ZGV.IsLegionOn()}",

	-- Chamber of the Guardian - Dalaran, Broken Isles -to- Karazhan - Deadwind Pass, Eastern Kingdoms --
	"Dalaran L/12 31.98,71.53 -to- Deadwind Pass/0 47.24,75.40 {mode:PORTAL} {title:Click the Portal to Karazhan} {cond:ZGV.IsLegionOn()}",

	-- Margoss's Retreat - Dalran, Broken Isles -to- Dalaran, Broken Isles --
	"Dalaran L/10 23.10,-11.40 <region:dalaran_margosss_retreat> -to- Dalaran L/10 60.92,44.72 {mode:PORTAL}"..
		"{title:Talk to |cffaaffaaConjurer Margoss|r\n\nTell him |cfff0e081\"Please teleport me back to Dalaran.\"|r} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
	"Dalaran L/10 39.55,63.22 -to- Stormwind City/0 49.59,86.53 {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Orgrimmar - Durotar, Kalimdor --
	"Dalaran L/10 55.25,23.93 -to- Orgrimmar/2 48.28,64.53 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Ironforge - Dun Morogh, Eastern Kingdoms --
	"Dalaran L/10 38.91,64.42 -to- Ironforge/0 25.51,8.43 {fac:A} {mode:PORTAL} {title:Click the Portal to Ironforge inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Thunder Bluff - Mulgore, Kalimdor --
	"Dalaran L/10 56.90,21.95 -to- Thunder Bluff/0 22.21,16.87 {fac:H} {mode:PORTAL} {title:Click the Portal to Thunder Bluff inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Darnassus - Teldrassil, Kalimdor --
	"Dalaran L/10 38.29,65.57 -to- Darnassus/0 43.47,78.68 {fac:A} {mode:PORTAL} {title:Click the Portal to Darnassus inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Undercity - Tirisfal Glades, Eastern Kingdoms --
	"Dalaran L/10 55.92,22.71 -to- Undercity/0 84.59,16.33 {fac:H} {mode:PORTAL} {title:Click the Portal to Undercity inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- The Exodar - Azuremyst Isle, Kalimdor --
	"Dalaran L/10 37.63,66.79 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {title:Click the Portal to Exodar inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Silvermoon City - Eversong Woods, Eastern Kingdoms --
	"Dalaran L/10 57.94,21.73 -to- Silvermoon City/0 58.26,19.24 {fac:H} {mode:PORTAL} {title:Click the Portal to Silvermoon inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Shrine of Seven Stars - Vale of Eternal Blossoms, Pandaria --
	"Dalaran L/10 36.53,67.04 -to- Vale of Eternal Blossoms/0 86.30,61.06 {fac:A} {mode:PORTAL} {title:Click the Portal to Vale of Eternal Blossoms inside Greyfang Enclave}"..
		"{cond:ZGV.IsLegionOn()}",

	-- Dalaran, Broken Isles -to- Shrine of Two Moons - Vale of Eternal Blossoms, Pandaria --
	"Dalaran L/10 54.98,25.59 -to- Vale of Eternal Blossoms/0 62.50,21.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Vale of Eternal Blossoms inside Windrunner's Sanctuary}"..
		"{cond:ZGV.IsLegionOn()}",

	-----------------
	-- ORDER HALLS --
	-----------------

	-- DEATH KNIGHT --
		-- Acherus: The Ebon Hold, Broken Isles -to- Dalaran, Broken Isles --
		"Broken Shore/2 24.78,33.70 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39757)}",

	-- MAGE --
		-- Hall of the Guardian - Dalaran, Broken Isles -to- Dalaran, Broken Isles --
		"Hall of the Guardian/1 57.32,90.51 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(41036)}",

	-- WARRIOR --
		-- Dalaran, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Dalaran L/10 75.23,47.22 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability}"..
			"{cond:PlayerCompletedQuest(42815) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Stormheim, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Stormheim/0 60.18,52.23 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability}"..
			"{cond:PlayerCompletedQuest(39803) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Azsuna, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Azsuna/0 47.58,28.08 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability}"..
			"{cond:PlayerCompletedQuest(38443) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Val'sharah, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Val'sharah/0 54.71,74.89 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability}"..
			"{cond:PlayerCompletedQuest(38384) and select(2,UnitClass('player'))=='WARRIOR'}",
			
		-- Highmountain, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Thunder Totem/0 39.73,42.11 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability}"..
			"{cond:PlayerCompletedQuest(38907) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Suramar, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Suramar/0 33.08,48.20 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability}"..
			"{cond:PlayerCompletedQuest(42229) and select(2,UnitClass('player'))=='WARRIOR'}",	
		
		-- Skyhold - Stormheim, Broken Isles -to- Dalaran, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Dalaran L/10 72.42,46.00 {mode:PORTAL} {title:Talk to Aerylia and Choose Dalaran}"..
			"{cond:PlayerCompletedQuest(42815) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Skyhold - Stormheim, Broken Isles -to- Stormheim, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Stormheim/0 60.42,51.05 {mode:PORTAL} {title:Talk to Aerylia and Choose Stormheim}"..
			"{cond:PlayerCompletedQuest(39803) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Skyhold - Stormheim, Broken Isles -to- Azsuna, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Azsuna/0 47.55,27.87 {mode:PORTAL} {title:Talk to Aerylia and Choose Azsuna}"..
			"{cond:PlayerCompletedQuest(38443) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Skyhold - Stormheim, Broken Isles -to- Val'sharah, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Val'sharah/0 55.01,72.49 {mode:PORTAL} {title:Talk to Aerylia and Choose Val'sharah}"..
			"{cond:PlayerCompletedQuest(38384) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Skyhold - Stormheim, Broken Isles -to- Highmountain, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Thunder Totem/0 41.57,44.02 {mode:PORTAL} {title:Talk to Aerylia and Choose Highmountain}"..
			"{cond:PlayerCompletedQuest(38907) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- Skyhold - Stormheim, Broken Isles -to- Suramar, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Suramar/0 33.82,49.38 {mode:PORTAL} {title:Talk to Aerylia and Choose Suramar}"..
			"{cond:PlayerCompletedQuest(42229) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- SHAMAN --
		-- Dalaran, Broken Isles -to- The Heart of Azeroth, The Maelstrom --
		"Dalaran L/10 67.03,48.18 -to- The Maelstrom L/0 30.75,53.07 {mode:PORTAL} {title:Click the Portal to the Maelstrom} {cond:PlayerCompletedQuest(39746)}",

		-- The Heart of Azeroth, The Maelstrom -to- Dalaran, Broken Isles --
		"The Maelstrom L/0 29.78,51.98 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39746)}",

		-- The Heart of Azeroth, The Maelstrom -to- Vortex Pinnacle - Uldum, Kalimdor --
		"The Maelstrom L/0 26.71,41.32 -to- The Vortex Pinnacle L/1 54.14,16.85 {mode:PORTAL} {title:Click the Vortex Pinnacle Portal} {cond:PlayerCompletedQuest(43002)}",

		-- Vortex Pinnacle - Uldum, Kalimdor -to- The Heart of Azeroth, The Maelstrom --
		"The Vortex Pinnacle L/1 53.59,16.00 -to- The Maelstrom L/0 26.79,41.48 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(43002)}",

		-- The Heart of Azeroth, The Maelstrom -to- Firelands - Mount Hyjal, Kalimdor --
		"The Maelstrom L/0 31.08,61.02 -to- Firelands L/0 25.79,89.25 {mode:PORTAL} {title:Click the Firelands Portal} {cond:PlayerCompletedQuest(42208)}",

		-- Firelands - Mount Hyjal, Kalimdor -to- The Heart of Azeroth, The Maelstrom --
		"Firelands L/0 25.02,92.64 -to- The Maelstrom L/0 30.54,59.78 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(42208)}",

	-- HUNTER --
		-- Dalaran, Broken Isles -to- Trueshot Lodge - Highmountain, Broken Isles --
		"Dalaran L/10 72.85,41.21 -to- Trueshot Lodge/0 33.25,49.43 {mode:PORTAL} {title:Talk to Talua and Fly to Trueshot Lodge} {cond:PlayerCompletedQuest(40953)}",

		-- Trueshot Lodge - Highmountain, Broken Isles -to- Dalaran, Broken Isles --
		"Trueshot Lodge/0 48.63,43.50 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran Upstairs Inside the Building} {cond:PlayerCompletedQuest(40953)}",

	-- WARLOCK --
		-- Dalaran, Broken Isles -to- Dreadscar Rift, Twisting Nether --
		"Dalaran L/11 27.85,44.50 -to- Dreadscar Rift/0 72.52,37.47 {mode:PORTAL} {title:Click the Portal to Dreadscar Rift} {cond:PlayerCompletedQuest(40729)}",

		-- Dreadscar Rift, Twisting Nether -to- Dalaran, Broken Isles --
		"Dreadscar Rift/0 74.16,38.35 -to- Dalaran L/11 29.20,43.97 {mode:PORTAL} {title:Walk into the Portal to Dalaran} {cond:PlayerCompletedQuest(40729)}",

	-- PALADIN --
		-- Dalaran, Broken Isles -to- Sanctum of Light (Alliance) - Eastern Plaguelands, Eastern Kingdoms --
		"Dalaran L/10 32.59,69.96 -to- Eastern Plaguelands/20 39.42,61.46 {fac:A} {mode:PORTAL} {title:Click the Portal to Sanctum of Light inside Greyfang Enclave}"..
			"{cond:PlayerCompletedQuest(38566)}",

		-- Dalaran, Broken Isles -to- Sanctum of Light (Horde) - Eastern Plaguelands, Eastern Kingdoms --
		"Dalaran L/10 61.92,13.49 -to- Eastern Plaguelands/20 39.42,61.46 {fac:H} {mode:PORTAL} {title:Click the Portal to Sanctum of Light inside Windrunner's Sanctuary}"..
			"{cond:PlayerCompletedQuest(38566)}",

		-- Sanctum of Light (Alliance) - Eastern Plaguelands, Eastern Kingdoms -to- Dalaran, Broken Isles --
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 33.69,68.01 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",

		-- Sanctum of Light (Horde) - Eastern Plaguelands, Eastern Kingdoms -to- Dalaran, Broken Isles --
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 61.27,14.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",

	-- DEMON HUNTER --
		-- Dalaran, Broken Isles -to- Fel Hammer - Mardum, Twisting Nether --
		"Dalaran L/10 98.02,69.27 -to- Mardum, the Shattered Abyss/2 59.18,85.75 {mode:PORTAL} {title:Glide to the Floating Island and Click the Illidari Gateway}"..
			"{cond:PlayerCompletedQuest(42872)}",

		-- Fel Hammer - Mardum, Twisting Nether -to- Dalaran, Broken Isles --
		"Mardum, the Shattered Abyss/2 59.23,91.93 -to- Dalaran L/10 77.11,49.61 {mode:PORTAL} {title:Click the Illidari Gateway} {cond:PlayerCompletedQuest(42872)}",

	-- ROGUE --
		-- Hall of Shadows - The Underbelly, Dalaran -to- Dalaran, Broken Isles --
		"Dalaran L/4 39.67,21.52 -to- Dalaran L/10 54.20,32.68 {mode:PORTAL} {title:Click the Knocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",

		-- Hall of Shadows - The Underbelly, Dalaran -to- Dalaran, Broken Isles --
		"Dalaran L/4 29.48,22.02 -to- Dalaran L/10 46.44,26.01 {mode:PORTAL} {title:Click the Knocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",

	-- PRIEST --
		-- Dalaran, Broken Isles -to- Netherlight Temple (Alliance), Twisting Nether --
		"Dalaran L/10 39.61,57.24 -to- Netherlight Temple/1 49.64,75.50 {fac:A} {mode:PORTAL} {title:Click the Portal to Netherlight Temple upstairs inside Greyfang Enclave}"..
			"{cond:PlayerCompletedQuest(40938)}",

		-- Dalaran, Broken Isles -to- Netherlight Temple (Horde), Twisting Nether --
		"Dalaran L/10 63.00,17.70 -to- Netherlight Temple/1 49.64,75.50 {fac:H} {mode:PORTAL} {title:Click the Portal to Netherlight Temple inside Windrunner's Sanctuary}"..
			"{cond:PlayerCompletedQuest(40938)}",			

		-- Netherlight Temple (Alliance), Twisting Nether -to- Dalaran, Broken Isles --
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 38.73,57.39 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",

		-- Netherlight Temple (Horde), Twisting Nether -to- Dalaran, Broken Isles --
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 61.65,17.39 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",

	-- MONK --
		-- Wandering Isle, The Great Sea -to- Peak of Serenity - Kun-Lai Summit, Pandaria --
		"The Wandering Isle L/0 50.05,54.41 -to- Kun-Lai Summit/0 48.69,43.12 {mode:PORTAL} {title:Click the Portal to Peak of Serenity} {cond:PlayerCompletedQuest(40236)}",

		-- Wandering Isle, The Great Sea -to- Dalaran, Broken Isles --
		"The Wandering Isle L/0 52.39,57.15 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40236)}",

	-- DRUID --
		-- The Dreamgrove - Val'sharah, Broken Isles -to- Dalran, Broken Isles --
		"The Dreamgrove/0 56.51,43.10 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40645)}",

		-- The Dreamgrove - Val'sharah, Broken Isles -to- Emerald Dreamway, Emerald Dream --
		"The Dreamgrove/0 55.66,22.09 -to- Emerald Dreamway/0 45.10,26.49 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- Emerald Dreamway, Emerald Dream -to- The Dreamgrove - Val'sharah, Broken Isles --
		"Emerald Dreamway/0 45.68,23.52 -to- The Dreamgrove/0 54.30,24.97 {mode:PORTAL} {title:Walk into the Swirling Portal to The Dreamgrove} {cond:PlayerCompletedQuest(40645)}",

		-- Emerald Dreamway, Emerald Dream -to- Mount Hyjal, Kalimdor --
		"Emerald Dreamway/0 53.87,53.17 -to- Mount Hyjal/0 59.29,25.83 {mode:PORTAL} {title:Walk into the Swirling Portal to Mount Hyjal} {cond:PlayerCompletedQuest(40645)}",

		-- Mount Hyjal, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Mount Hyjal/0 59.09,26.09 -to- Emerald Dreamway/0 51.59,51.89 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- Emerald Dreamway, Emerald Dream -to- The Hinterlands, Eastern Kingdoms --
		"Emerald Dreamway/0 50.91,66.51 -to- The Hinterlands/0 62.49,23.50 {mode:PORTAL} {title:Walk into the Swirling Portal to the Hinterlands} {cond:PlayerCompletedQuest(40645)}",

		-- The Hinterlands, Eastern Kingdoms -to- Emerald Dreamway, Emerald Dream --
		"The Hinterlands/0 62.30,22.62 -to- Emerald Dreamway/0 49.42,62.50 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- Emerald Dreamway, Emerald Dream -to- Duskwood, Eastern Kingdoms --
		"Emerald Dreamway/0 40.02,70.02 -to- Duskwood/0 46.59,37.06 {mode:PORTAL} {title:Walk into the Swirling Portal to Duskwood} {cond:PlayerCompletedQuest(40645)}",

		-- Duskwood, Eastern Kingdoms -to- Emerald Dreamway, Emerald Dream --
		"Duskwood/0 46.57,35.64 -to- Emerald Dreamway/0 38.85,65.99 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- Emerald Dreamway, Emerald Dream -to- Moonglade, Kalimdor --
		"Emerald Dreamway/0 25.71,80.55 -to- Moonglade/0 67.59,60.19 {mode:PORTAL} {title:Walk into the Swirling Portal to Moonglade} {cond:PlayerCompletedQuest(40645)}",

		-- Moonglade, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Moonglade/0 68.14,60.28 -to- Emerald Dreamway/0 26.31,77.76 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- Emerald Dreamway, Emerald Dream -to- Feralas, Kalimdor --
		"Emerald Dreamway/0 22.73,38.50 -to- Feralas/0 51.20,11.03 {mode:PORTAL} {title:Walk into the Swirling Portal to Feralas} {cond:PlayerCompletedQuest(40645)}",

		-- Feralas, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Feralas/0 51.34,10.59 -to- Emerald Dreamway/0 27.64,40.69 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- Emerald Dreamway, Emerald Dream -to- Grizzly Hills, Northrend --
		"Emerald Dreamway/0 31.60,25.91 -to- Grizzly Hills/0 50.43,29.75 {mode:PORTAL} {title:Walk into the Swirling Portal to Grizzly Hills} {cond:PlayerCompletedQuest(40645)}",

		-- Grizzly Hills, Northrend -to- Emerald Dreamway, Emerald Dream --
		"Grizzly Hills/0 50.32,29.18 -to- Emerald Dreamway/0 32.40,29.53 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

	---------------
	-- KUL TIRAS --
	---------------

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Tiragarde Sound/0 74.31,23.84 <subtype:cityportal> -to- Stormwind City/0 49.59,86.53 {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind} {cond:ZGV.InPhase('bfa')}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Ironforge - Dun Morogh, Eastern Kingdoms --
		"Tiragarde Sound/0 74.49,23.50 <subtype:cityportal> -to- Ironforge/0 25.51,8.43 {fac:A} {mode:PORTAL} {title:Click the Portal to Ironforge} {cond:ZGV.InPhase('bfa')}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- The Exodar - Azuremyst Isle, Kalimdor --
		"Tiragarde Sound/0 74.38,23.41 <subtype:cityportal> -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {title:Click the Portal to Exodar} {cond:ZGV.InPhase('bfa')}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Magni's Encampment - Silithus, Kalimdor --
		"Tiragarde Sound/0 73.83,25.31 -to- Silithus/0 41.41,45.19 {fac:A} {mode:PORTAL} {title:Click the Portal to Silithus} {cond:ZGV.InPhase('bfa')}",

		-- Magni's Encampment - Silithus, Kalimdor -to- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound --
		"Silithus/0 41.49,44.85 -to- Tiragarde Sound/0 73.78,25.29 <subtype:cityportal> {fac:A} {mode:PORTAL} {title:Click the Portal to Tiragarde} {cond:ZGV.InPhase('bfa')}",

	--------------
	-- ZANDALAR --
	--------------

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Silvermoon City, Eversong Woods --
		"Dazar'alor/1 73.99,62.22 <subtype:cityportal> -to- Silvermoon City/0 58.26,19.24 {fac:H} {mode:PORTAL} {title:Click the Portal to Silvermoon City} {cond:ZGV.InPhase('bfa')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Orgrimmar - Durotar, Kalimdor --
		"Dazar'alor/1 74.04,69.94 <subtype:cityportal> -to- Orgrimmar/2 48.28,64.53 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar} {cond:ZGV.InPhase('bfa')}",

		-- Orgrimmar - Durotar, Kalimdor - Zuldazar, Zandalar -to- Hall of Ancient Paths --
		"Orgrimmar/2 47.47,60.05 <subtype:cityportal> -to- Dazar'alor/1 68.28,64.58 {fac:H} {mode:PORTAL} {title:Click the Portal to Zuldazar} {cond:ZGV.InPhase('bfa')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Thunder Bluff - Mulgore, Kalimdor --
		"Dazar'alor/1 73.60,77.38 <subtype:cityportal> -to- Thunder Bluff/0 22.21,16.87 {fac:H} {mode:PORTAL} {title:Click the Portal to Thunder Bluff} {cond:ZGV.InPhase('bfa')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Silithus, Kalimdor --
		"Dazar'alor/1 73.81,85.40 -to- Silithus/0 41.41,45.19 {fac:H} {mode:PORTAL} {title:Click the Portal to Silithus} {cond:ZGV.InPhase('bfa')}",

		-- Silithus, Kalimdor -to- Hall of Ancient Paths - Zuldazar, Zandalar --
		"Silithus/0 41.61,45.20 <subtype:cityportal> -to- Dazar'alor/1 68.28,64.58 {fac:H} {mode:PORTAL} {title:Click the Portal to Zuldazar} {cond:ZGV.InPhase('bfa')}",






















-----------------
---  Suramar  ---
-----------------
	-- Suramar, Broken Isles -x- Shal'Aran Cave - Suramar, Broken Isles --
	"Suramar/0 34.93,47.82 -x- Suramar/0 36.19,47.09 <region:suramar_shalaran> {template:atob} {title_atob:Follow the corridor into the cave} {title_btoa:Follow the corridor out of the cave}",

		-- Portal from Shal'Aran to Felsoul Hold
			"Suramar/0 36.10,45.75 <region:suramar_shalaran> -to- Suramar/23 52.35,36.75 {mode:PORTAL}"..
				"{title:Click the Portal to Felsoul Hold\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(41575)} {cost:13}",

		-- Portal from Felsoul Hold to Shal'Aran
			"Suramar/23 53.60,36.80 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(41575)} {cost:13}",

		-- Portal from Shal'Aran to Falanaar
			"Suramar/0 35.89,45.56 <region:suramar_shalaran> -to- Suramar/32 41.38,15.05 {mode:PORTAL}"..
				"{title:Click the Portal to Falanaar\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42230)} {cost:30}",

		-- Portal from Falanaar to Shal'Aran
			"Suramar/32 40.91,13.70 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(42230)} {cost:30}",

		-- Portal from Shal'Aran to Moon Guard Stronghold
			"Suramar/0 36.01,45.25 <region:suramar_shalaran> -to- Suramar/0 30.79,10.87 {mode:PORTAL}"..
				"{title:Click the Portal to Moon Guard Stronghold\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(43808)}",

		-- Portal from Moon Guard Stronghold to Shal'Aran
			"Suramar/0 30.83,11.02 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(43808)}",

		-- Portal from Shal'Aran to Lunastre Estate
			"Suramar/0 36.17,45.02 <region:suramar_shalaran> -to- Suramar/0 43.61,79.10 {mode:PORTAL}"..
				"{title:Click the Portal to Lunastre Estate\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(43811)}",

		-- Portal from Lunastre Estate to Shal'Aran
			"Suramar/0 43.68,79.25 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(43811)}",

		-- Portal from Shal'Aran to Ruins of Elune'eth
			"Suramar/0 36.34,44.91 <region:suramar_shalaran> -to- Suramar/0 36.31,46.89 <region:suramar_eluneeth> {mode:PORTAL}"..
				"{title:Click the Portal to Ruins of Elune'eth\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(40956)} {cost:2}",

		-- Portal from Ruins of Elune'eth to Shal'Aran
			"Suramar/0 36.10,47.23 <region:suramar_eluneeth> -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(40956)} {cost:2}",

		-- Ruins of Elune'eth Road Connection #1
			"Suramar/0 37.35,46.38 -x- Suramar/0 38.19,47.63 <region:suramar_eluneeth> {title:Follow the road}",

		-- Ruins of Elune'eth Road Connection #2
			"Suramar/0 35.86,44.39 -x- Suramar/0 36.51,45.27 <region:suramar_eluneeth> {title:Follow the road}",

		-- Ruins of Elune'eth Road Connection #3
			"Suramar/0 37.04,45.27 <region:suramar_eluneeth> -x- Suramar/0 37.69,45.22 {template:atob} {title_atob:Follow the path up} {title_btoa:Follow the path down}",

		-- Portal from Shal'Aran to Sanctum of Order
			"Suramar/0 36.70,44.64 <region:suramar_shalaran> -to- Suramar/0 43.40,60.72 <region:suramar_sanctum_of_order> {mode:PORTAL}"..
				"{title:Click the Portal to Sanctum of Order\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(43813)}",

		-- Portal from Sanctum of Order to Shal'Aran
			"Suramar/0 43.41,60.56 <region:suramar_sanctum_of_order> -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran\nDownstairs in the Sanctum of Order} {cond:PlayerCompletedQuest(43813)}",

		-- Portal from Shal'Aran to Tel'anor
			"Suramar/0 36.92,44.66 <region:suramar_shalaran> -to- Suramar/0 42.17,35.38 {mode:PORTAL}"..
				"{title:Click the Portal to Tel'anor\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(43809)}",

		-- Portal from Tel'anor to Shal'Aran
			"Suramar/0 42.03,35.24 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(43809)}",

		-- Portal from Shal'Aran to Twilight Vineyards
			"Suramar/0 36.95,45.00 <region:suramar_shalaran> -to- Suramar/0 64.09,60.80 {mode:PORTAL}"..
				"{title:Click the Portal to Twilight Vineyards\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(44084)}",

		-- Portal from Twilight Vineyards to Shal'Aran
			"Suramar/0 64.00,60.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(44084)}",

		-- Portal from Shal'Aran to The Waning Crescent
			"Suramar/0 36.48,44.75 <region:suramar_shalaran> -to- Suramar/0 47.45,81.97 {mode:PORTAL}"..
				"{title:Click the Portal to The Waning Crescent\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)}",

		-- Portal from The Waning Crescent to Shal'Aran
			"Suramar/0 47.73,81.38 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)}",

		-- Portal from Shal'Aran to Evermoon Terrace
			"Suramar/0 36.49,44.75 <region:suramar_shalaran> -to- Suramar/0 52.04,78.87 {mode:PORTAL}"..
				"{title:Click the Portal to Evermoon Terrace\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42889)}",

		-- Portal from Evermoon Terrace to Shal'Aran
			"Suramar/0 51.98,78.75 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran\nat the Top of the Tower} {cond:PlayerCompletedQuest(42889)}",

		-- Portal from Shal'Aran to Astravar Harbor
			"Suramar/0 36.77,45.04 <region:suramar_shalaran> -to- Suramar/0 54.41,69.53 {mode:PORTAL}"..
				"{title:Click the Portal to Astravar Harbor\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(45317)}",

		-- Portal from Evermoon Terrace to Shal'Aran
			"Suramar/0 54.48,69.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran\nupstairs inside the building} {cond:PlayerCompletedQuest(45317)}",

		-- Sanctum of Order (region) to Sactum Depths (region)
			"Suramar/0 42.06,60.85 <region:suramar_sanctum_depths> -x- Suramar/0 42.72,61.13 <region:suramar_sanctum_of_order> {title:Follow the path}",









    -------------------
    ---  Stormheim  ---
    -------------------
		-- NEUTRAL
		-- Portal from Stormheim to Helheim
			"Stormheim/0 73.70,39.29 -to- Helheim/0 66.25,47.63 {fac:A} {mode:PORTAL}"..
				"{title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- Portal from Helheim to Stormheim
			"Helheim/0 66.83,48.14 -to- Stormheim/0 73.54,39.51 {fac:A} {mode:PORTAL}"..
				"{title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- ALLIANCE
		-- Vethir Flight to Top of Galebroken Path
			"Stormheim/0 37.48,64.23 -to- Stormheim/0 44.83,77.39 {fac:A} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Thorim's Peak Outside the Thorignir Refuge
			"Stormheim/0 37.48,64.23 -to- Stormheim/0 42.79,82.67 {fac:A} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Top of Thorim's Peak
			"Stormheim/0 37.48,64.23 -to- Stormheim/0 41.30,80.10 {fac:A} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- HORDE
		-- Vethir Flight to Top of Galebroken Path
			"Stormheim/0 44.66,59.51 -to- Stormheim/0 44.83,77.39 {fac:H} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Thorim's Peak Outside the Thorignir Refuge
			"Stormheim/0 44.66,59.51 -to- Stormheim/0 42.79,82.67 {fac:H} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Top of Thorim's Peak
			"Stormheim/0 44.66,59.51 -to- Stormheim/0 41.30,80.10 {fac:H} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

    ---------------
    ---  Argus  ---
    ---------------

		-- The Vindicaar (Krokuun)
			"Krokuun/2 43.32,25.27 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran.} {cond:LibRover:IsVindicaarIn('Krokuun')}",
			"Dalaran L/10 74.22,49.26 -to- Krokuun/1 61.15,81.36 {mode:PORTAL} {title_atob:Click the Lightforged Beacon.}",

		-- The Vindicaar (Mac'Aree)
			"Mac'Aree/4 49.33,25.38 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran.} {cond:LibRover:IsVindicaarIn('Mac\\'Aree')}",

		-- The Vindicaar (Antoran)
			"Antoran Wastes/6 33.83,55.94 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran.} {cond:LibRover:IsVindicaarIn('Antoran Wastes')}",

    ----------------------
    ---  ALLIED RACES  ---
    ----------------------
    		-- Void Elf
			"Telogrus Rift/0 28.00,21.49 -to- Stormwind City/0 54.00,14.75 {mode:PORTAL} {title_atob:Click the Rift to Stormwind.} {cond:ZGV:RaceClassMatch('VOIDELF')}",
			"Stormwind City/0 54.50,15.37 -to- Telogrus Rift/0 28.68,23.01 {mode:PORTAL} {title_atob:Click the Rift to Telogrus.} {cond:ZGV:RaceClassMatch('VOIDELF')}",

    		-- Lightforged Draenei
			"Vindicaar Scenario/1 43.22,25.02 -to- Stormwind City/0 54.00,14.75 {mode:PORTAL} {title_atob:Click the Portal to Stormwind downstairs.} {cond:ZGV:RaceClassMatch('LFDRAENEI')}",
			"Stormwind City/0 54.44,14.44 -to- Vindicaar Scenario/1 49.97,46.22 {mode:PORTAL} {title_atob:Click the Lightforged Beacon.} {cond:ZGV:RaceClassMatch('LFDRAENEI')}",

    		-- Highmountain Tauren
			"Thunder Totem/6 46.02,63.74 -to- Orgrimmar/1 39.84,77.25 {mode:PORTAL} {title_atob:Click the Portal to Orgrimmar.} {cond:ZGV:RaceClassMatch('HMTAUREN')}",
			"Orgrimmar/1 40.09,76.83 -to- Thunder Totem/6 44.17,64.06 {mode:PORTAL} {title_atob:Click the Portal to Thunder Totem.} {cond:ZGV:RaceClassMatch('HMTAUREN')}",

			"Thunder Totem/6 46.02,63.74 -to- Orgrimmar/1 39.84,77.25 {mode:PORTAL} {title_atob:Click the Portal to Orgrimmar.} {cond:ZGV:RaceClassMatch('HMTAUREN')}",
			"Orgrimmar/1 40.09,76.83 -to- Thunder Totem/6 44.17,64.06 {mode:PORTAL} {title_atob:Click the Portal to Thunder Totem.} {cond:ZGV:RaceClassMatch('HMTAUREN')}",

    		-- Nightborne Elf 
			"Suramar/0 58.18,87.33 -to- Orgrimmar/1 39.84,77.25 {mode:PORTAL} {title_atob:Click the Portal to Orgrimmar.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",
			"Orgrimmar/1 40.09,76.84 -to- Suramar/0 59.55,85.29 {mode:PORTAL} {title_atob:Click the Portal to The Nighthold.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

			"Suramar/0 57.99,86.60 -to- Suramar/0 36.79,45.21 {mode:PORTAL} {title_atob:Click the Portal to Shal'Aran.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",
			"Suramar/0 36.77,45.04 -to- Suramar/0 59.55,85.29 {mode:PORTAL} {title_atob:Click the Portal to The Nighthold.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

		
    -------------------------		
    ---  DALARAN (WOTLK)  ---
    -------------------------
		"Dalaran 55.4,25.4 -to- Orgrimmar/2 <region:cleftofshadow> 48.3,64.5 {fac:H} {mode:PORTAL}",
		"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",
		"Dalaran 58.1,25.8 -to- Wintergrasp 50.0,16.7 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",
		"Dalaran 56.0,46.8 -x- Crystalsong Forest 15.8,42.5 {mode:PORTAL}",

		"Dalaran 25.5,51.4 -to- Tanaris/17 54.6,28.3 <title:Caverns of Time> @cot_from_dala {mode:PORTAL} {cond:LibRover.cfg.use_cot or (ZGV and ZGV:GetReputation('Keepers of Time').standing>=5)}",
		--"Dalaran/1 25.9,44.2 -x- Dalaran/1 22.3,39.7 {fac:A} {mode:PORTAL}", --portal to upper level in Dalaran. The Purple Parlor
		"Dalaran 40.1,62.8 -to- @sw_tp_dst {fac:A} {mode:PORTAL}", --COORDS BAD

		--"Dalaran/1 25.9,44.2 -x- Dalaran/1 22.3,39.7 {fac:A} {mode:PORTAL}", --portal to upper level in Dalaran. The Purple Parlor
	-- DALARAN - ENDS		

	
	-- STORMWIND CITY - STARTS
		"Stormwind City/0 80.26,34.85 -to- Dalaran L/10 60.92,44.72 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran\ninside Stormwind Keep} {cond:ZGV.IsLegionOn()}",
	-- STORMWIND CITY - ENDS
	
	-- WHISPERS OF A FRIGHTENED WORLD SCENARIO TO DALARAN/BACK
		"Hall of Communion/1 49.78,8.80 -to- Dalaran L/10 39.65,50.54 {mode:PORTAL} {title:Click the Teleportation Pad} {cond:PlayerIsOnQuest(47330) or PlayerIsOnQuest(46206)}",
		"Sholazar Basin/0 88.43,53.00 -to- Hall of Communion/1 43.69,82.00 {mode:PORTAL} {title:Click the Power Conduit} {cond:PlayerIsOnQuest(47330) or PlayerIsOnQuest(46206)}",
	
	-- MYSTERIOUS MISSIVE ARCATRAZ
		"Krokuun/1 43.42,23.19 -to- Arcatraz L/1 41.20,74.29 {mode:PORTAL} {title:Talk to |cffaaffaaGrand Artificer Romuul|r\n\nTell him |cfff0e081\"I am ready to go\nto the Arcatraz.\"|r} {cond:PlayerIsOnQuest(47134)}",
		"Arcatraz L/2 22.13,75.91 -to- Krokuun/1 45.36,24.20 {mode:PORTAL} {title:Click the portal} {cond:PlayerIsOnQuest(47134)}",




	-- DRAENOR
		"Stormshield/0 36.4,41.1 -to- Tanaan Jungle/0 57.5,60.3 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38445)}",
		"Tanaan Jungle/0 57.4,60.5 -to- Stormshield/0 31.7,52.5 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38445)}",
		
		"Tanaan Jungle/0 61.0,47.3 -to- Warspear/0 44.4,35.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(37935)}",
		"Warspear/0 53.2,43.9 -to- Tanaan Jungle/0 60.9,47.3 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(37935)}",
		
		
		"Warspear/0 60.7,51.6 -to- Orgrimmar/2 48.3,64.5 <region:cleftofshadow> {fac:H} {mode:PORTAL}",
		"Warspear/0 50.0,24.4 -to- Thunder Bluff/0 22.2,16.9 {fac:H} {mode:PORTAL}",
		"Warspear/0 63.2,24.1 -to- Undercity/0 84.6,16.3 {fac:H} {mode:PORTAL}",

		"Stormshield/0 60.8,37.8 -to- @sw_tp_dst {fac:A} {mode:PORTAL}",
		"Stormshield/0 51.5,50.8 -to- Ironforge/0 25.5,8.4 {fac:A} {mode:PORTAL}",

		--"Stormwind City 75.2,18.8 -to- Shadowmoon Valley D 27.0,8.0 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(34575)}",
		--"Orgrimmar 51.1,36.8 -to- Frostfire Ridge 40.6,67.2 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}",

		"Talador 80.6,26.1 -x-  Talador 83.6,31.0 {mode:PORTAL} {title:Use Khadgar's portal} {cond:UnitLevel('player')>=98}", -- legendary ring questline portal

		"Tanaan Jungle/0 57.7,58.7 <title:Gnomish Flying Machine> <noskip:1> -to- Tanaan Jungle/0 55.5,27.3 {fac:A} {mode:_} {cond:PlayerCompletedQuest(38603)} {title:Take the Gnomish Flying Machine\nto Throne of Kil'Jaeden} {cost:30}",
		"Tanaan Jungle/0 60.0,47.4 <title:B-2 Personnel Relocator> <noskip:1> -to- Tanaan Jungle/0 55.6,27.2 {fac:H} {mode:_} {cond:PlayerCompletedQuest(38599)} {title:Take the B-2 Personnel Relocator\nto Throne of Kil'Jaeden} {cost:23}",

	-- PANDARIA
		"Stormwind City 68.8,17.1 -x- The Jade Forest 46.23,85.17 <title:Paw'don Village> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(29548)}",
		"Eastern Kingdoms/0 41.47,70.19 <title:Skyfire Airship> -to- The Jade Forest 46.23,85.17   {fac:A} {mode:PORTAL}	{cond:UnitLevel('player')>=85 and not PlayerCompletedQuest(29548)}", -- airship for the initial quest
		"Eastern Kingdoms/0 41.47,70.19 <title:The Skyfire Airship> <override_text:You must be at least 85 to enter Pandaria.> <override_icon:error> -to- The Jade Forest 46.23,85.17   {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<85} {cost:999}", -- airship for the initial quest
		"Orgrimmar 68.7,40.7 -x-  The Jade Forest 28.5,14.0  <title:Honeydew Village> {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(31769)}",
		"Durotar 66,1 <title:Hellscream's Fist Airship> -to- The Jade Forest 28.5,14.0   {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85 and not PlayerCompletedQuest(31769)}", -- airship		for the initial quest
		"Durotar 66,1 <title:Hellscream's Fist Airship> <override_text:You must be at least 85 to enter Pandaria.> <override_icon:error> -to- The Jade Forest 28.5,14.0   {fac:H} {mode:PORTAL}		{cond:UnitLevel('player')<85} {cost:999}", -- airship for the initial quest

		"Vale of Eternal Blossoms/4 61.6,39.6 -to- Dalaran 55.86,46.81 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 68.5,52.8 -to- Shattrath City 54.97,40.23 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 70.8,30.6 -to- The Exodar 47.62,59.82 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 77.2,43.5 -to- Darnassus 43.47,78.67 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 74.0,40.8 -to- Ironforge 25.51,08.43 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 71.6,35.8 -to- @sw_tp_dst {fac:A} {mode:PORTAL}",

		"Shrine of Two Moons/2 73.5,42.8 -to- Orgrimmar/2 48.3,64.5 <region:cleftofshadow> {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 75.6,52.6 -to- Silvermoon City 58.3,19.2 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 73.5,36.5 -to- Thunder Bluff 22.2,16.9 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 74.0,48.1 -to- Undercity 84.6,16.3 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 63.5,57.3 -to- Shattrath City 53.0,49.2 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 61.5,36.5 -to- Dalaran 55.86,46.81 {fac:H} {mode:PORTAL}",

		"Townlong Steppes 49.7,68.7 -x- Isle of Thunder/0 35.3,90.6 <title:Portal to Shado-Pan Garrison> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)} {template:portal}",
		--{{"Townlong Steppes 49.7,68.7",faction="A",type="portal"},{"Isle of Thunder/0 64.7,73.5",faction="A",type="portal",actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Click Portal to Shado-Pan Garrison" end end,cond=function() PlayerCompletedQuest(32644) end}},
		"Townlong Steppes 49.7,68.7 -x- Isle of Thunder/0 64.7,73.5 <title:Portal to Shado-Pan Garrison> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32644)} {template:portal}",
		"Isle of Thunder/0 34.84,89.48 -to- Isle of Thunder/0 31.7,83.6 {fac:A} {mode:PORTAL} {cond:not PlayerCompletedQuest(32644)} {template:portal}",
		"Isle of Thunder/0 31.7,83.6 -to- Isle of Thunder/0 34.8,89.5 {fac:A} {mode:PORTAL} {cond:not PlayerCompletedQuest(32644) and (ZGV:GetThunderStage()==1 or ZGV:GetThunderStage()==6)} {template:portal}",
		"Isle of Thunder/0 52.02,45.04 -x- Isle of Thunder/0 62.86,32.36 {mode:PORTAL}",

		"Townlong Steppes 50.66,73.41 <title:Shado-Pan Garrison> -x- Isle of Thunder/0 28.4,53.0 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32680) and not PlayerCompletedQuest(32212)} {template:portal}",
		"Townlong Steppes 50.66,73.41 <title:Shado-Pan Garrison> -x- Isle of Thunder/0 33.2,32.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32212)} {template:portal}",

		"Isle of Thunder/0 28.6,52.8 -to- Isle of Thunder/0 33.1,52.8 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(32212)} {template:portal}",
		"Isle of Thunder/0 28.5,51.7 -to- Isle of Thunder/0 33.1,52.8 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(32212)} {template:portal}",
		"Isle of Thunder/0 33.1,52.8 -to- Isle of Thunder/0 28.5,51.5 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(32212) and (ZGV:GetThunderStage()==1 or ZGV:GetThunderStage()==6)} {template:portal}",

		--There are portals here... No idea when/how they appear...
		-- They're purchased from Proveditor Grantley ##2345 at Krasarang Wilds /0 89.52,33.47 using 5 Domination Point Commission ##91877 each.
		-- They can lead to SW, the Skyfire airship, or to Shrine of Seven Stars.
		--"Krasarang Wilds 89.0,33.9 -to- Stormwind City 74.2,92.2 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32109)}",
		--"Krasarang Wilds 89.2,33.9 -x- Krasarang Wilds 18.1,79.6 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32109)}", --To the ship

		--"Krasarang Wilds 9.9,54.9 -to- Durotar 45.6,13.2 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32108)}", --To orgrim
		--"Krasarang Wilds 10.2,54.8 -x- Krasarang Wilds 76.1,34.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32108)}",
		--"Krasarang Wilds 76.2,34.0 -x- Krasarang Wilds/3 37.4,46.4 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32108)}",

		"Townlong Steppes, 29.0,22.1 <title:Portal to Shado-Pan Garrison> -x- Townlong Steppes, 48.5,69.9 {mode:PORTAL} {cond:PlayerCompletedQuest(31110)}",
		"Dread Wastes 75.09,21.25 -x- Vale of Eternal Blossoms 14.21,76.79 <region:topofthewallVEB> {mode:PORTAL} {template:pandarope}", -- (click the Climbing Rope to either climb up or jump down the cliff)
		"Krasarang Wilds 48.6,27.1 -x- Valley of the Four Winds 51.2,77.5 {mode:PORTAL} {template:pandarope}", -- (click the Climbing Rope to either climb up or jump down the cliff). Might need quest



	-- GARRISON PORTALS
		"Frostwall 75.1,48.7 -to- Warspear 44.4,35.5 {fac:H} {mode:PORTAL} {title:Click the portal to Ashran} {cond:C_Garrison.GetGarrisonInfo("..(LE_GARRISON_TYPE_6_0 or 2)..")==3}", -- Horde Garrison 3 to Ashran
		"Lunarfall 70.2,27.5 -to- Stormshield 31.7,52.5 {fac:A} {mode:PORTAL} {title:Click the portal to Ashran}  {cond:C_Garrison.GetGarrisonInfo("..(LE_GARRISON_TYPE_6_0 or 2)..")==3}", -- Ally Garrison 3 to Ashran

	-- Capital portals
		"The Exodar 47.6,62.2 -x- Darnassus 44.3,78.7 {fac:A} {mode:PORTAL}",
		"Darnassus 37.3,50.5 -x- Teldrassil 55.1,88.4 <port:Rut'theran Village> {mode:PORTAL} {template:pinkportal}",  -- Teldrassil 55.1,88.4  NO  Teldrassil 38.1,47.5
		"Silvermoon City 49.4,14.8 -x- Tirisfal Glades 59.4,67.5 <region:undercitycourt> {fac:H} {mode:PORTAL} {title:Click the Orb of Translocation}",

	-- portals -to- Blasted Lands
		"Hellfire Peninsula 89.2,49.6 @hfp_port_dst",
		"Hellfire Peninsula 89.2,49.6 @hfp_port_dst_h",
		"Hellfire Peninsula 89.2,50.9 @hfp_port_dst_a",

		"Orgrimmar/2 44.7,68.0 <region:cleftofshadow> -x- Blasted Lands  72.7,49.4 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}", -- it seems the portal was changed to only show for 90+ chars, not 58
		"Stormwind City 48.96,87.32 -to- Blasted Lands 53.9,46.1 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=90}"..
			"{title:Click the Portal to Blasted Lands\ninside the Mage Tower}",

	-- 6.0.2 portals to and from Outland
		-- "Blasted Lands 55.0,54.2 -x- Hellfire Peninsula 89.4,50.2 {mode:PORTAL} {cond:UnitLevel('player')>=58} {template:darkportal}", -- Dark Portal to Outlands removed in 6.0.2
		-- Horde
		"Orgrimmar/2 30.49,58.18 <region:cleftofshadow> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Orgrimmar/2 30.49,58.18 <region:cleftofshadow> <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Silvermoon City 58.4,20.9 -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Silvermoon City 58.4,20.9 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		-- "Undercity 85.2,17.1 -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}", -- Portal removed in WoD
		"Thunder Bluff 23.2,13.5 -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Thunder Bluff 23.2,13.5 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Hellfire Peninsula 89.2,49.5 -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Hellfire Peninsula 89.2,49.5 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Blasted Lands 55.0,54.2 -to- Warspear 44,35 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90} {template:darkportal}", -- Dark Portal now leads to Ashran
		"Blasted Lands 55.0,54.2 <override_text:You must be at least 90 to enter Draenor.> <override_icon:error> -to- Warspear 44,35 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<90} {template:darkportal} {cost:999}", -- Dark Portal now leads to Ashran

		-- Ally
		-- "Stormwind City 49.94,87.03 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58} {template:atob}"..
		--	"{title_atob:Click the Portal to Hellfire Peninsula\nupstairs inside the Mage Tower}", -- This doesn't exist.

		"Stormwind City 49.94,87.03 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Ironforge 27.2,7.0 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Ironforge 27.2,7.0 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"The Exodar 48.2,63.0 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"The Exodar 48.2,63.0 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Darnassus 44.1,78.2 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Darnassus 44.1,78.2 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Hellfire Peninsula 89.2,51.0 -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Hellfire Peninsula 89.2,51.0 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Blasted Lands 55.0,54.2 -to- Stormshield 31,52 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=90} {template:darkportal}", -- Dark Portal now leads to Ashran
		"Blasted Lands 55.0,54.2 <override_text:You must be at least 90 to enter Draenor.> <override_icon:error> -to- Stormshield 31,52 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<90} {template:darkportal} {cost:999}", -- Dark Portal now leads to Ashran




	-- DARKMOON ISLAND
		--Interesting tidbit. Alliance can enter the horde portal and horde the alliance, but when you portal back, it will spit you
		--back out at your faction portal. aka
		-- Gnome -> Mulgore portal -> Darkmoon portal -> Elwynn
		-- Orc -> Mulgore portal -> Darkmoon portal -> Mulgore

		--You can enter anywhere, but only exit at one place
		"Elwynn Forest 41.8,69.5 -to- Darkmoon Island/0 51.2,23.1 <title:Darkmoon Faire> {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')}",
		"Mulgore 36.9,35.9 -to- Darkmoon Island/0 51.2,23.2 <title:Darkmoon Faire> {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')}",

		"Darkmoon Island/0 51.2,23.1 -to- Elwynn Forest 41.8,69.5 {fac:A} {mode:PORTAL}",
		"Darkmoon Island/0 50.6,90.6 -to- Elwynn Forest 41.8,69.5 {fac:A} {mode:PORTAL}",

		"Darkmoon Island/0 51.2,23.1 -to- Mulgore 36.9,35.9 {fac:H} {mode:PORTAL}",
		"Darkmoon Island/0 50.6,90.6 -to- Mulgore 36.9,35.9 {fac:H} {mode:PORTAL}",

	-- Iron Horde event portals
		"Blasted Lands 72.7,49.5 -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}",
		"Blasted Lands 66.4,28.0 -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=90}",





	-- SHATTRATH PORTALS:
		"Shattrath City 57.2,48.3 -to- @sw_tp_dst {fac:A} {mode:PORTAL} {cost:15}", -- stormwind mage tower sucks
		"Shattrath City 56.8,48.9 -to- @org_tp_dst {fac:H} {mode:PORTAL}",
		"Shattrath City 48.6,42.0 -to- Isle of Quel'Danas 48.3,34.5 {mode:PORTAL}",

	-- Firelands portal
		"Mount Hyjal 27.5,56.3 -x- Molten Front 52.9,83.9 {mode:PORTAL}",


	-- ITEM TELEPORTS (disabled)

		--[[ Random Locations from Inscription scrolls when using a low level one.
			Undercity 69.1,11.3
			Swamp of Sorrows 85.9,52.7
		]]
		--"RANDOM				<item:64457> <cooldown:43200>", -- The Last Relic of Argus
			--[[ I have used this item 186 times with these results.
				"Silithus 28.7, 57.6 <item:46874>",
				"Duskwood 18.7, 24.8 <item:46874>",
				"Wetlands 69.6, 87.8 <item:46874>",
				"Desolace 32.3, 22.7 <item:46874>",
				"Ungoro 33.2, 56.2 <item:46874>",
				"Badlands 51.9, 34.2 <item:46874>",
				"Western Plaguelands 42.3, 15.0 <item:46874>",
				"Tanaris 64.5, 20.0 <item:46874>",
				"Badlands 89.9, 36.3 <item:46874>",
				"Hellfire Peninsula 97.5, 47.1 <item:46874>",
				"Northern Barrens 78.0, 91.6 <item:46874>",
				"Tanaris 69.7, 47.9 <item:46874>",
				"Felwod 53.4, 31.2 <item:46874>",
				"Moonglade 45.7, 47.0 <item:46874>",
				"Western Plaguelands 50.9, 36.4 <item:46874>",
				"Northern Stranglethorn 45.1, 68.4 <item:46874>",
				"Badlands 23.9, 56.4 <item:46874>",
				"Arathi Highlands 48.9, 43.8 <item:46874>",
				"Blasted Lands 33.6, 51.3 <item:46874>",
				"The Cape of Stranglethorn 35.4, 63.7 <item:46874>",
				"The Northern Barrens 52.3, 54.9 <item:46874>",
				"Searing Gorge 39.4, 67.0 <item:46874>",
				"Wetlands 23.0, 65.8 <item:46874>",
				"Blasted Lands 64.7, 55.1 <item:46874>",
				"Diremaul 62.5, 28.0 <item:46874>",
			--]]

		--"Northrend				<item:48933> <cooldown:14400>", -- Wormhole Generator:Northrend Engineering >=415
			--Borean Tundra 51.8,45.0--51.8.. High above water.. Really high -- 20.5,62.8
			--Howling Fjord 58.5,48.6 -- Tested, The coords available were wrong... ->79.7,79.8
			--Sholazar Basin 49.2,39.6--25.0,37.7
			--Icecrown 62.9,26.9 --43.5,19.4
			--Storm Peaks 43.9,25.8-- 59.1, 13.7
			--Dalaran xx,yy --UNDERGROUND. Need another port to get out.


		--"Pandaria				<item:87215> <cooldown:900>", -- Wormhole Generator:Pandaria  Engineering >=500
			--[[
			Dread Wastes (Coords 29, 81)
			Dread Wastes (Coords 37, 21)
			Jade Forest (Coords 50, 27)
			Krasarang Wilds (Coords 71, 44)
			Kun-lai Summit (Coords 42, 84)
			Kun-lai Summit (Coords 73, 11)
			Townlong Steppes (Coords 16, 38)
			Vale of Eternal Blossoms (Coords 43, 43)
			Valley of the Four Winds (Coords 42, 37)
			--]]

	-- Experiments (disabled)

		-- Ironforge
			--[[
			 "Ironforge 53,82 @if01 <costmod:0.7>",
			 "Ironforge 60,70 @ifmw01 -x- Ironforge 50,58 @ifmw02",
			 "Ironforge 69,59 @iftt01 -x- Ironforge 71,39 @iftt02",
			 "Ironforge 61,27 @ifhe01 -x- Ironforge 56,34 @ifhe02",
			 "Ironforge 58,12 @iffc01 -x- Ironforge 39,11 @iffc02",
			 "Ironforge 33,23 @ifyw01 -x- Ironforge 38,38 @ifyw02",
			 "Ironforge 25,28 @if02 <costmod:0.7>",
			 "Ironforge 28,55 @ift11 -x- Ironforge 39,46 @ift12",
			 "Ironforge 38,72 @ift21 -x- Ironforge 44,58 @ift22",
			 "@ifmw02 -x- @iftt02",
			 "@iftt02 -x- @ifhe02",
			 "@ifhe02 -x- @iffc02",
			 "@iffc02 -x- @ifmw02",
			 "@ifyw02 -x- @ifyw02",
			 "@ifyw02 -x- @ifyw02",
			 "@ifyw02 -x- @ifmw02",
			--]]

		--"Ironforge 50,50 @honeypot <costmod:0.7>",

		--"Blackrock Spire 50,50 <costmod:0.7>",



	-- CLASS TELEPORTS:


		-- Okay, new rule, since these are becoming numerous. Alas, ONE SPELL PER NODE. New spell = new node.  ~sinus 2013-02-05
		-- Also, NO reusing @old @nodes here. We're defining NEW nodes, with spell and faction. Modifying of existing nodes isn't allowed here.  ~sinus 2014-12-17
		-- (Creating of new named nodes is discouraged too, to avoid confusion.)

		-- MAGES
		"Dalaran 55.86,46.81 <spell:53140>  <faction:B>",

		"Shattrath City 54.97,40.23				<spell:33690>  <faction:A>",
		"The Exodar 47.62,59.82					<spell:32271>  <faction:A>",
		"Dustwallow Marsh 66.00,49.00				<spell:49359>  <faction:A>",
		"Darnassus 43.47,78.67					<spell:3565>   <faction:A>",
		"Ironforge 25.51,08.43					<spell:3562>   <faction:A>",
		"Stormwind City 49.6,86.5				<spell:3561>   <faction:A>",
		"Tol Barad Peninsula 73.7,60.9				<spell:88342>  <faction:A>",
		"Vale of Eternal Blossoms/0 86.30,61.05			<spell:132621> <faction:A>",
		"Stormshield/0 58.8,51.4				<spell:176248>  <faction:A>",

		"Orgrimmar/2 48.3,64.7 <region:cleftofshadow>		<spell:3567>   <faction:H>",
		"Silvermoon City 58.3,19.2				<spell:32272>  <faction:H>",
		"Swamp of Sorrows 49.8,55.8				<spell:49358>  <faction:H>", --stonard
		"Thunder Bluff 22.2,16.9				<spell:3566>   <faction:H>",
		"Shattrath City 53.0,49.2				<spell:35715>  <faction:H>",
		"Undercity 84.6,16.3					<spell:3563>   <faction:H>",
		"Tol Barad Peninsula 55.8,80.1				<spell:88344>  <faction:H>",
		"Vale of Eternal Blossoms/0 62.21,21.54			<spell:132627> <faction:H>",
		"Warspear/0 58.8,51.4					<spell:176242>  <faction:H>",

		--[[ Note: node cond functions work only for teleport spells --]]
		-- DRUIDS
		"Moonglade  56.3,32.4					<spell:18960>",  --Teleport Moonglade
		-- DK (DEATHGATE)
		"Eastern Plaguelands 83.72,50.03			<spell:50977> <cond:not (PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740))>", --Class based!
		-- MONKS (Zen Pilgrimage)
		"Kun-Lai Summit 48.64,42.94				<spell:126892> <region:peak_of_serenity> <cond:not PlayerCompletedQuest(40236)>", --Class based!

		
		
		-- LEGION:

		-- MAGE
			"Hall of the Guardian/1 57.63,86.14 <spell:193759>",

		-- DRUID
			"Emerald Dreamway/0 35.33,53.15 <spell:193753> <cond:ZGV.CurrentMapID~=1048>",

		-- DEATHKNIGHT
			"Broken Shore/2 27.43,30.43 <spell:50977> <cond:(PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740))> <zone:1021>",

		-- MONK
			"The Wandering Isle L/0 51.45,48.65 <spell:126892> <cond:PlayerCompletedQuest(40236)> <zone:1044>",






	"Eastern Plaguelands/0 54.38,8.77 <subtype:darkportal> -x- Ghostlands/0 52.22,97.43 <subtype:darkportal> {mode:PORTAL}", --Done



	-- WoD ground travel aids
	"Talador 65.4,48.0 -x- Talador 67.6,45.3 {cost:0}",
	"Talador 60.0,41.1 -x- Talador 59.3,44.9 {cost:0}",
	"Talador 64.5,41.1 -x- Talador 66.7,42.0 {cost:0}",



	-- Chamber of the Guardian Entrance - Dalaran, Broken Isles --
	"Dalaran L/10 49.26,47.62 -to- Dalaran L/12 63.38,23.87 {mode:PORTAL} {title:Step on the glowing pad} {cond:ZGV.IsLegionOn()}",--

	-- Chamber of the Guardian Exit - Dalaran, Broken Isles --
	"Dalaran L/12 64.88,21.12 -to- Dalaran L/10 49.04,48.04 {mode:PORTAL} {title:Step on the glowing pad} {cond:ZGV.IsLegionOn()}",--

		--"Stormwind City 75.2,18.8 -to- Shadowmoon Valley D 27.0,8.0 {fac:A} {mode:PORTAL} {cond:IsQuestFlaggedCompleted(34575)}",
		--"Orgrimmar 51.1,36.8 -to- Frostfire Ridge 40.6,67.2 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}",

	-- DRAENOR
		"Stormshield/0 36.4,41.1 -to- Tanaan Jungle/0 57.5,60.3 {fac:A} {mode:PORTAL} {cond:IsQuestFlaggedCompleted(38445)}",
		"Tanaan Jungle/0 57.4,60.5 -to- Stormshield/0 31.7,52.5 {fac:A} {mode:PORTAL} {cond:IsQuestFlaggedCompleted(38445)}",

	-- Teleport pads moved to FloorCrossings
}
