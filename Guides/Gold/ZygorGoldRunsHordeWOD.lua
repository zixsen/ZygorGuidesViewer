local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"


-- DAILIES RUNS

if UnitFactionGroup("player")=="Horde" then

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Anglers Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=34,time=15,icon="Interface\\ICONS\\Achievement_Faction_Anglers"},
	description="This guide will take you through The Anglers dailies",
},[[
			#include "Anglers_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The August Celestials Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=57,time=5,icon="Interface\\ICONS\\Achievement_Faction_Celestials"},
	description="This guide will take you through The August Celestials dailies",
},[[
			#include "August_Celestials"
		step
		label "end"
			This is the end of the current guide. Click here to go back to the beginning. |confirm |next "startaug"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Order of the Cloud Serpent Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=46,time=6,icon="Interface\\ICONS\\Achievement_Faction_SerpentRiders"},
	description="This guide will take you through the Order of the Cloud Serpent dailies",
},[[
			#include "CS_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Shado-Pan Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=65,time=5,icon="Interface\\ICONS\\Achievement_Faction_ShadoPan"},
	description="This guide will take you through the Shado-Pan dailies",
},[[
			#include "Shado_Pan_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Tillers Dailies Run",{
	startlevel=90,
	meta={goldtype="daily",levelreq=90,gold=49,time=5,icon="Interface\\ICONS\\Achievement_Faction_Tillers"},
	description="This guide will take you through The Tillers dailies",
},[[
		step
			#include "Tillers_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Golden Lotus Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=109,time=11,icon="Interface\\ICONS\\Achievement_Faction_GoldenLotus"},
	description="This guide will take you through The Golden Lotus dailies",
},[[
		step
			Routing to proper section |next "prequests" |only if not completedq(31511)
			Routing to proper section |next "dailies" |only if completedq(31511)
		step
		label "prequests"
			#include "Golden_Lotus_PreQuests"
			#include "Golden_Lotus"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\The Klaxxi Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=68,time=5,icon="Interface\\ICONS\\Achievement_Faction_Klaxxi"},
	description="This guide will take you through The Klaxxi dailies",
},[[
			#include "Klaxxi_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Dominance Offensive Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=61,time=8,icon="Interface\\ICONS\\Achievement_General_HordeSlayer"},
	description="This guide will take you through The Dominance Offensive dailies",
},[[
			#include "Dominance_Offensive"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Sunreaver Onslaught Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=288,time=75,icon="Interface\\ICONS\\Achievement_Faction_SunreaverOnslaught"},
	description="This guide will take you through the Sunreaver Onslaught Dailies.",
},[[
		step
			#include "Sunreavers_dailies"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Kalimdor Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=5,gold=238,time=45,icon="Interface\\ICONS\\PetJournalPortrait"},
	description="This guide will take you through the Battle Pet Dailies in Kalimdor.",
	maps={"Northern Barrens","Thousand Needles","Felwood","Desolace","Southern Barrens","Winterspring","Feralas","Moonglade","Dustwallow Marsh","Stonetalon Mountains","Ashenvale","Durotar"},
},[[
		step
			talk Zunta##66126
			accept Zunta##31818 |goto Durotar 43.86,28.86
		step
			talk Zunta##66126
			Tell him _"Let's fight!"_
			Defeat Zunta |q 31818/1 |goto Durotar 43.86,28.86
		step
			talk Zunta##66126
			turnin Zunta##31818 |goto Durotar 43.86,28.86
		step
			talk Dagra the Fierce##66135
			accept Dagra the Fierce##31819 |goto Northern Barrens 58.6,53.0
		step
			talk Dagra the Fierce##66135
			Tell her _"Let's fight!"_
			Defeat Dagra the Fierce |q 31819/1 |goto Northern Barrens 58.6,53.0
		step
			talk Dagra the Fierce##66135
			turnin Dagra the Fierce##31819 |goto Northern Barrens 58.6,53.0
		step
			talk Stone Cold Trixxy##66466
			accept Grand Master Trixxy##31909 |goto Winterspring 65.63,64.52
		step
			talk Stone Cold Trixxy##66466
			Tell her _"Let's rumble!"_
			She uses level 19 Flying, Beast and Dragonkin pets.
			Defeat Stone Cold Trixxy |q 31909/1 |goto Winterspring 65.63,64.52
		step
			talk Stone Cold Trixxy##66466
			turnin Grand Master Trixxy##31909 |goto Winterspring 65.63,64.52
		step
			talk Elena Flutterfly##66412
			accept Elena Flutterfly##31908 |goto Moonglade 46.1,60.3
		step
			talk Elena Flutterfly##66412
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Elena if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Elena Flutterfly |q 31908/1 |goto Moonglade 46.1,60.3
		step
			talk Elena Flutterfly##66412
			turnin Elena Flutterfly##31908 |goto Moonglade 46.1,60.3
		step
			talk Zoltan##66442
			accept Zoltan##31907 |goto Felwood 40.0,56.6
		step
			talk Zoltan##66442
			Tell him _"Let's do it!"_ 
			|tip You will not be able to challenge Zoltan if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Zoltan |q 31907/1 |goto Felwood 40.0,56.6
		step
			talk Zoltan##66442
			turnin Zoltan##31907 |goto Felwood 40.0,56.6
		step
			talk Analynn##66136
			accept Analynn##31854 |goto Ashenvale 20.2,29.5
		step
			talk Analynn##66136
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Analynn if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Analynn |q 31854/1 |goto Ashenvale 20.2,29.5
		step
			talk Analynn##66136
			turnin Analynn##31854 |goto Ashenvale 20.2,29.5
		step
			talk Zonya the Sadist##66137
			accept Zonya the Sadist##31862 |goto Stonetalon Mountains 59.66,71.59
		step
			talk Zonya the Sadist##66137
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Zonya if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Zonya the Sadist |q 31862/1 |goto Stonetalon Mountains 59.66,71.59
		step
			talk Zonya the Sadist##66137
			turnin Zonya the Sadist##31862 |goto Stonetalon Mountains 59.66,71.59
		step
			talk Merda Stronghoof##66372
			accept Merda Stronghoof##31872 |goto Desolace 57.1,45.7
		step
			talk Merda Stronghoof##66372
			Tell her _"Let's fight!"_
			Defeat Merda Stronghoof |q 31872/1 |goto Desolace 57.1,45.7
		step
			talk Merda Stronghoof##66372
			turnin Merda Stronghoof##31872 |goto Desolace 57.1,45.7
		step
			talk Traitor Gluk##66352
			accept Traitor Gluk##31871 |goto Feralas 59.7,49.6
		step
			talk Traitor Gluk##66352
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Traitor Gluk if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Traitor Gluk |q 31871/1 |goto Feralas 59.7,49.6
		step
			talk Traitor Gluk##66352
			turnin Traitor Gluk##31871 |goto Feralas 59.7,49.6
		step
			talk Kela Grimtotem##66452
			accept Kela Grimtotem##31906 |goto Thousand Needles 31.9,33.0
		step
			talk Kela Grimtotem##66452
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Kela Grimtotem if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Kela Grimtotem |q 31906/1 |goto Thousand Needles 31.9,33.0 
		step
			talk Kela Grimtotem##66452
			turnin Kela Grimtotem##31906 |goto Thousand Needles 31.9,33.0
		step
			talk Cassandra Kaboom##66422
			accept Cassandra Kaboom##31904 |goto Southern Barrens 39.6,79.1
		step
			talk Cassandra Kaboom##66422
			Tell her _"Let's fight!"_
			Defeat Cassandra Kaboom |q 31904/1 |goto Southern Barrens 39.6,79.1
		step
			talk Cassandra Kaboom##66422
			turnin Cassandra Kaboom##31904 |goto Southern Barrens 39.6,79.1
		step
			talk Grazzle the Great##66436
			accept Grazzle the Great##31905 |goto Dustwallow Marsh 53.9,74.8
		step
			talk Grazzle the Great##66436
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Grazzle the Great if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Grazzle the Great |q 31905/1 |goto Dustwallow Marsh 53.9,74.8
		step
			talk Grazzle the Great##66436
			turnin Grazzle the Great##31905 |goto Dustwallow Marsh 53.9,74.8
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Outland Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=58,gold=99,time=15,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31920)",
	description="This guide will take you through the Battle Pet Dailies in Outland.",
	maps={"Zangarmarsh","Nagrand","Shadowmoon Valley","Hellfire Peninsula","Shattrath City"},
},[[
		step
			talk Nicki Tinytech##66550
			accept Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		step
			talk Nicki Tinytech##66550
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off. 
			Defeat Nicki Tinytech |q 31922/1 |goto Hellfire Peninsula 64.3,49.3 
			|tip Nicki has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
		step
			talk Nicki Tinytech##66550
			turnin Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		step
			talk Ras'an##66551
			accept Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		step
			talk Ras'an##66551
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Ras'an |q 31923/1 |goto Zangarmarsh 17.2,50.5 
			|tip Ras'an has a Flying Pet, a Humanoid Pet, and a Magic Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
		step
			talk Ras'an##66551
			turnin Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		step
			talk Narrok##66552
			accept Narrok##31924 |goto Nagrand 61.0,49.4
		step
			talk Narrok##66552
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off. 
			Defeat Narrok |q 31924/1 |goto Nagrand 61.0,49.4 
			|tip Narrok has an Aquatic Pet, a Beast Pet, and a Critter Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
		step
			talk Narrok##66552
			turnin Narrok##31924 |goto Nagrand 61.0,49.4
		step
			talk Morulu The Elder##66553
			accept Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		step
			talk Morulu The Elder##66553
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off. 
			Defeat Morulu The Elder |q 31925/1 |goto Shattrath City 58.8,70.1 
			|tip Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets. His pets are all around level 23.
		step
			talk Morulu The Elder##66553
			turnin Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		step
			talk Bloodknight Antari##66557
			accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		step
			talk Bloodknight Antari##66557
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off. 
			Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.6,42.0 
			|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should all be around level 24.
		step
			talk Bloodknight Antari##66557
			turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Northrend Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=68,gold=99,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31928)",
	description="This guide will take you through the Battle Pet Dailies in Northrend.",
	maps={"Howling Fjord","Crystalsong Forest","Dragonblight","Zul'Drak","Icecrown"},
},[[
		step	
			talk Beegle Blastfuse##66635
			accept Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		step
			talk Beegle Blastfuse##66635
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off. 
			Defeat Beegle Blastfuse |q 31931/1 |goto Howling Fjord 28.6,33.9 
			|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets. Your pets should all be around level 25 before fighting Beegle.
		step
			talk Beegle Blastfuse##66635
			turnin Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		step
			talk Okrut Dragonwaste##66638
			accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		step
			talk Okrut Dragonwaste##66638
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off. 
			Defeat Okrut Dragonwaste |q 31933/1 |goto Dragonblight 59.0,77.0 
			|tip Okrut Dragonwaste has a Dragonkin Pet and 2 Undead Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead. Your pets should all be level 25 before fighting Okrut.
		step
			talk Okrut Dragonwaste##66638
			turnin Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		step
			talk Nearly Headless Jacob##66636
			accept Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		step
			talk Nearly Headless Jacob##66636
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off. 	
			Defeat Nearly Headless Jacob |q 31932/1 |goto Crystalsong Forest 50.1,59.0 
			|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25.
		step
			talk Nearly Headless Jacob##66636
			turnin Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		step
			talk Major Payne##66675
			accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		step
			talk Major Payne##66675
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off. 	
			Defeat Major Payne |q 31935/1 |goto Icecrown 77.4,19.6 
			|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
		step
			talk Major Payne##66675
			turnin Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		step
			talk Gutretch##66639
			accept Gutretch##31934 |goto Zul'Drak 13.2,66.8
		step
			talk Gutretch##66639
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off. 	
			Defeat Gutretch |q 31934/1 |goto Zul'Drak 13.2,66.8 
			|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25 for this fight.
		step
			talk Gutretch##66639
			turnin Gutretch##31934 |goto Zul'Drak 13.2,66.8
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Cataclysm Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=80,gold=79,time=15,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31970)",
	description="This guide will take you through the Battle Pet Dailies in the Cataclysm Expansion.",
	maps={"Uldum","Deepholm","Twilight Highlands","Mount Hyjal"},
},[[
		step
			talk Brok##66819
			accept Brok##31972 |goto Mount Hyjal 61.4,32.7
		step
			talk Brok##66819
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off. 	
			Defeat Brok |q 31972/1 |goto Mount Hyjal 61.4,32.7 
			|tip Brok has a Beast Pet, a Critter Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		step
			talk Brok##66819
			turnin Brok##31972 |goto Mount Hyjal 61.4,32.7
		step
			talk Bordin Steadyfist##66815
			accept Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		step
			talk Bordin Steadyfist##66815
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off. 	
			Defeat Bordin Steadyfist |q 31973/1 |goto Deepholm 49.9,57.0 
			|tip Bordin Steadyfist has a Critter Pet and 2 Elemental Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals. Your pets should all be level 25.
		step
			talk Bordin Steadyfist##66815
			turnin Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		step
			talk Goz Banefury##66822
			accept Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		step
			talk Goz Banefury##66822
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off. 	
			Defeat Goz Banefury |q 31974/1 |goto Twilight Highlands 56.6,56.8 
			|tip Goz Banefury has a Beast Pet, an Elemental Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		step
			talk Goz Banefury##66822
			turnin Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		step
			talk Obalis##66824
			accept Grand Master Obalis##31971 |goto Uldum 56.5,42.0
		step
			talk Obalis##66824
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off. 	
			Defeat Obalis |q 31971/1 |goto Uldum 56.5,42.0 
			|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
		step
			talk Obalis##66824
			turnin Grand Master Obalis##31971 |goto Uldum 56.5,42.0
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Pandaria Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=85,gold=139,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(31970)",
	description="This guide will take you through the Battle Pet Dailies in Pandaria.",
	maps={"The Jade Forest","Vale of Eternal Blossoms","Townlong Steppes","Valley of the Four Winds","Krasarang Wilds","Kun-Lai Summit","Dread Wastes"},
},[[
		step
			talk Hyuna of the Shrines##66730
			accept Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		step
			talk Hyuna of the Shrines##66730
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2 
			|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
		step	
			talk Hyuna of the Shrines##66730
			turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		step
			talk Aki the Chosen##66741
			accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		step
			talk Aki the Chosen##66741
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.2,74.0 
			|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
		step
			talk Aki the Chosen##66741
			turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		step
			talk Courageous Yon##66738
			accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8 
		step	
			talk Courageous Yon##66738
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.8,73.8 
			|tip Courageous Yon has a Flying Pet, and two Critter Pets. Use Beast type attacks on his Critters, and Magic type attacks on his Flying. Your pets should all be level 25.
			He can also be found around this area |goto 44.7,52.4
		step
			talk Courageous Yon##66738
			turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8 
		step
			talk Seeker Zusshi##66918
			accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		step
			talk Seeker Zusshi##66918
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Seeker Zusshi |q 31991/5 |goto Townlong Steppes 36.3,52.2 
			|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
		step
			talk Seeker Zusshi##66918
			turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		step	
			talk Wastewalker Shu##66739
			accept Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		step
			talk Wastewalker Shu##66739
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6  
			|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
		step
			talk Wastewalker Shu##66739
			turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		step	
			talk Mo'ruk##66733
			accept Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		step
			talk Mo'ruk##66733
			Tell him _"Let's fight!"_ 
			|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.2,45.9 			
			|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
		step
			talk Mo'ruk##66733
			turnin Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		step
			talk Farmer Nishi##66734
			accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		step
			talk Farmer Nishi##66734
			Tell her _"Let's fight!"_ 
			|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
			Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7 			
			|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
		step
			talk Farmer Nishi##66734
			turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Pandaren Spirits Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=79,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(32428)",
	description="This guide will take you through the Pandaren Spirits Battle Pet Dailies.",
	maps={"Townlong Steppes","The Jade Forest","Kun-Lai Summit","Dread Wastes"},
},[[
		step
			talk Whispering Pandaren Spirit##68464
			accept Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.8,36.0
		step
			talk Whispering Pandaren Spirit##68464
			Challenge him to a pet battle and defeat him. |q 32440/1 |goto The Jade Forest 28.8,36.0
		step
			talk Whispering Pandaren Spirit##68464
			turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.8,36.0
		step
			talk Thundering Pandaren Spirit##68465
			accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.0,93.9
		step
			talk Thundering Pandaren Spirit##68465
			Challenge him to a pet battle and defeat him. |q 32441/1 |goto Kun-Lai Summit/0 65.0,93.9
		step
			talk Thundering Pandaren Spirit##68465
			turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.0,93.9
		step
			talk Burning Pandaren Spirit##68463
			accept Burning Pandaren Spirit##32434	|goto Townlong Steppes 57.0,42.2
		step
			talk Burning Pandaren Spirit##68463
			Challenge him to a pet battle and defeat him. |q 32434/1 |goto Townlong Steppes 57.0,42.2
		step
			talk Burning Pandaren Spirit##68463
			turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.0,42.2
		step
			talk Flowing Pandaren Spirit##68462
			accept Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.2,87.6
		step
			talk Flowing Pandaren Spirit##68462
			Challenge him to a pet battle and defeat him. |q 32439/1 |goto Dread Wastes 61.2,87.6
		step
			talk Flowing Pandaren Spirit##68462
			turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.2,87.6
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Beasts of Fable Battle Pet Dailies Run",{
	meta={goldtype="daily",levelreq=90,gold=59,time=30,icon="Interface\\ICONS\\PetJournalPortrait"},
	condition_valid="completedq(32428)",
	description="This guide will take you through the Beasts of Fable Pet Dailies.",
	maps={"The Jade Forest","Vale of Eternal Blossoms","Townlong Steppes","Valley of the Four Winds","Krasarang Wilds","Kun-Lai Summit","Dread Wastes"},
},[[
		step
			talk Gentle San##64582
			accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
			accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
			accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
		step	
			_No-No_
			This enemy is aquatic.
			It is strong against undead and weak to flying attacks.
			I would suggest that you use flying pets against this enemy.
			No-No defeated |q 32869/2 |goto Vale of Eternal Blossoms 11.0,70.9
		step
			_Lucky Yi_
			This enemy is a critter.
			Is is strong against Elementals and weak to beast attacks.
			I would suggest using beast pets against this enemy.
			Lucky Yi defeated |q 32868/2 |goto Valley of the Four Winds 40.5,43.7
		step
			_Greyhoof_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Greyhoof defeated |q 32868/1 |goto Valley of the Four Winds 25.3,78.5
		step
			_Skitterer Xi'a_
			This enemy is aquatic.
			It is strong against undead and weak to flying pets.
			I would suggest using flying pets against this enemy.
			Xi'a defeated |q 32868/3 |goto Krasarang Wilds 36.3,37.3
		step
			_Gorespine_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Gorespine defeated |q 32869/1 |goto Dread Wastes 26.1,50.2
		step
			_Ti'un the Wanderer_
			This enemy is aquatic.
			It is strong against undead and weak to flying pets.
			I would suggest using flying pets against this enemy.
			Ti'un the Wanderer defeated |q 32869/3 |goto Townlong Steppes 72.3,79.8
		step
			_Kafi_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Kafi defeated |q 32604/2 |goto Kun-Lai Summit 35.2,56.2
		step
			_Dos-Ryga_
			This enemy is aquatic.
			It is strong against undead and weak to flying pets.
			I would suggest using flying pets against this enemy.
			Dos-Ryga defeated |q 32604/3 |goto Kun-Lai Summit 67.9,84.7
		step
			_Ka'wi the Gorger_
			This enemy is a beast.
			It is strong against humanoids and weak against mechanical pets.
			I would suggest using a team of mechanical pets against this enemy.
			Ka'wi the Gorger defeated |q 32604/1 |goto The Jade Forest 48.4,71.0
		step
			_Nitun_
			This enemy is a critter.
			Is is strong against Elementals and weak to beast attacks.
			I would suggest using beast pets against this enemy.
			Nitun defeated |q 32604/4 |goto The Jade Forest 57.0,29.1
		step
			talk Gentle San##64582
			turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
			turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
			turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Nagrand Soup Bones",{
	meta={goldtype="daily",levelreq=100,gold=73,time=15,icon="Interface\\ICONS\\inv_misc_bone_01"},
	description="This guide will walk you through farming soup bones for gold.",
	maps={"Nagrand D","Spires of Arak","Frostwall"},
},[[
		step
			talk Shadow-Sage Iskar##80153
			accept News from Nagrand##36602 |goto Spires of Arak 46.58,46.55
		step
			talk Rokhan##78487
			turnin News from Nagrand##36607 |goto Frostwall/0 45.90,42.82
			turnin News from Nagrand##36607 |goto 45.93,42.88
			accept Taking the Fight to Nagrand##34794 |goto 45.79,43.12
		step
			talk Bron Skyhorn##79407
			Tell him _"I need a flight to the border of Nagrand."_ |goto Frostwall/0 45.8,50.8 < 5
			_Go up_ the hill |goto Nagrand D/0 89.4,70.5
			talk Stone Guard Brox##80001
			turnin Taking the Fight to Nagrand##34794 |goto Nagrand D/0 86.37,66.18
			accept The Might of the Warsong##34795 |goto 86.37,66.19
		step
			_Follow_ the path |goto Nagrand D/0 84.8,66.0 < 20 |only if walking
			_Continue_ along the cobblestone path |goto Nagrand D/0 80.9,56.5 < 20 |only if walking
			_Go straight_ through the crossroads |goto 81.9,53.3 < 20 |only if walking
			talk Thrall##80003
			turnin The Might of the Warsong##34795 |goto 82.84,45.07
			accept More Lazy Peons##34808 |goto 82.84,45.07
		step
			talk Tal##82346
			fpath Wor'var |goto Nagrand D/0 83.3,44.7
		step
			talk Elathriel Sunstriker##82345
			home Wor'var |goto Nagrand D/0 82.6,45.4
		step
			clicknpc Lazy Peon##79906
			Motivate 8 Lazy Peons |q More Lazy Peons##34808/1 |goto 82.65,45.31 
			|tip They are all around the town
		step
			talk Foreman Thazz'ril##80140
			turnin More Lazy Peons##34808 |goto 82.93,44.14
			accept They Call Him Lantresor of the Blade##34818 |goto 82.93,44.14
		step
			talk Thrall##80003
			accept The Friend of My Enemy##34826 |goto 82.85,45.07
		stickystart "ST1"
		step
			_Swim over_ the lake and run up the hill |goto Nagrand D/0 85.1,45.0 < 20 |only if walking
			accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not havequest(35379)
			kill Lupe##82205 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/2 |goto Nagrand D/0 87.6,45.6
			kill Loup##82209 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/3 |goto Nagrand D/0 87.6,45.6
		step
			accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not havequest(35379)
			kill Big Pete##123 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/4 |goto Nagrand D/0 88.7,43.9
		step
	label "ST1"
			accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not havequest(35379)
			kill 15 Nagrand Prowler##81902 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/1 |goto 87.13,49.16
		step
			_Travel up_ the dirt road and through the gate |goto Nagrand D/0 87.0,52.6 < 20 |only if walking
			talk Lantresor of the Blade##80161
			turnin They Call Him Lantresor of the Blade##34818 |goto 85.42,54.59
			accept The Blade Itself##34849 |goto 85.42,54.59
			accept Not Without My Honor##34850 |goto 85.42,54.59

		stickystart "ST2"
		step
			kill Instructor Luhk##80236 
			collect Lantresor's Blade##111938 |q The Blade Itself##34849/1 |goto 86.09,53.90
		step
			The banner is located randomly inside one of the chests in the buildings below:
			click Burning Blade Locker##233815 
			|tip You may need to check inside a couple lockers before you find the banner. //ID NA
			There should be one chest in this building |goto Nagrand D/0 84.8,55.5 < 20
			Check the Chests in this building, there should be 2 |goto Nagrand D/0 85.8,56.9 < 20
			There should be a single chest in here |goto Nagrand D/0 85.5,53.0 < 20
			collect Blademaster's Banner##113508 |q Not Without My Honor##34850/1 |goto 85.73,56.95
		step
	label "ST2"
			kill 15 Burning Flameseer##80197, Blademaster Trainee##80191, Hallvalor Villager##80205 |q The Friend of My Enemy##34826/1 |goto 87.23,53.63
		step
			_Enter_ the building |goto Nagrand D/0 85.5,55.0 < 10 |walk
			talk Lantresor of the Blade##80161
			turnin The Blade Itself##34849 |goto 85.42,54.59
			turnin Not Without My Honor##34850 |goto 85.42,54.59
			accept Meet Me in the Cavern##34866 |goto 85.42,54.59
		step
			_Enter_ the cave |goto Nagrand D/0 88.0,55.5 < 20 |walk
			talk Lantresor of the Blade##80319
			turnin Meet Me in the Cavern##34866 |goto Nagrand D/10 44.9,19.8
			accept Challenge of the Masters##34868 |goto Nagrand D/10 44.9,19.8
		step
			click Burning Blade Sword##231088 
			|tip The sword in the center of the steel circle. //ID NA
			Pull the blade |q Challenge of the Masters##34868/1 |goto 53.01,68.47
		step
			kill Packleader Dran'ruk##80326, Sesk##80325, Gorn##80324, Warlord Dharl of the Thrice-Bloodied Bla##80327
			Survive the Challenge |q Challenge of the Masters##34868/2 |goto 52.53,67.97
		step
			click Garrison Blueprints##230946 
			collect Garrison Blueprints##112020 |q Challenge of the Masters##34868/3 |goto 52.88,68.41
		step
			_Leave_ the cave |goto Nagrand D/10 30.5,15.7 < 15 |walk
			_Pass_ through the gates |goto Nagrand D/0 87.0,52.5 < 20 |only if walking
			_Continue_ traveling between the cliffs |goto Nagrand D/0 86.0,51.5 < 20 |only if walking
			_Follow_ the path |goto 84.3,49.3 < 15 |only if walking
			talk Thrall##80003
			turnin The Friend of My Enemy##34826 |goto 82.85,45.08
		step
			talk Foreman Thazz'ril##80140
			turnin Challenge of the Masters##34868 |goto 82.93,44.14
			accept A Choice to Make##34899 |goto 82.93,44.14
		step
			clicknpc Drafting Table##79177
			Choose between Corral & Tankworks |q A Choice to Make##34899/1 |goto Nagrand D 83.0,44.1
		step
			talk Shadow Hunter Taz##82078
			accept That Pounding Sound##35374 |goto 82.53,43.96
		step
			talk Stalker Ogka##82080
			accept Shooting the Breeze##35376 |goto 82.60,43.95
		step
			talk Thrall##80003
			turnin A Choice to Make##34899 |goto 82.85,45.07
		step
		label "mhm"
			map Nagrand D/0
			path loop on; follow smart; dist 40
			path	79.6,44.0	80.7,42.9	79.8,40.5
			path	79.5,37.6	77.6,36.1	75.4,37.5
			path	74.7,41.0	72.7,42.2	73.2,48.4
			path	73.7,52.1	75.1,54.3	78.0,55.4
			path	80.9,52.8	80.9,49.6	81.0,46.1
			kill Breezestrider Colt##78277+, Windroc##79398+, Leatherhide Clefthoof##78575+, Tenderhoof Meadowstomper##78459+
			collect Sumptuous Fur##111557 |n
			collect Soup Bone##113578 |n 
			|tip You will need 20 Soup Bones for 1 turnin
			confirm
			--15 minutes 27 furs, 200 hearty soup bones 73G first run
		step
			talk Meatgut##82727
			accept Meatgut Needs Bones##35928 |instant |repeatable |goto Nagrand D/0 78.3,52.4
			It is important to note that the amount of gold you can farm from this guide is dependant on how fast you can kill the enemies.
			Click here to go back to farming |confirm always |next "mhm"
]])

end

-- VENDOR RUNS

--[=[
if UnitFactionGroup("player")=="Horde" then
ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Vendor Runs\\Eastern Kingdoms Vendor Run",{
	meta={goldtype="vendor",levelreq=90,gold=34,time=45,icon="Interface\\ICONS\\Achievement_Zone_EasternKingdoms_01"},
	description="This guide will take you through The Anglers dailies",
	maps={"Silverpine Forest","Undercity","Arathi Highlands","Badlands","Silvermoon City","Tirisfal Glades","Eastern Plaguelands","Ghostlands","Swamp of Sorrows","Northern Stranglethorn","Hillsbrad Foothills","The Hinterlands","Dun Morogh","Duskwood","The Cape of Stranglethorn"},
},[[
		step
			talk Melaris##16641
			buy 1 Recipe: Transmute Primal Might##23574 |goto Silvermoon City 67.0,19.2
			buy 1 Recipe: Elixir of Camouflage##22900 |goto Silvermoon City 67.0,19.2
			buy 1 Liferoot##3357 |goto Silvermoon City 67.0,19.2
			buy 1 Kingsblood##3356 |goto Silvermoon City 67.0,19.2
			buy 1 Wild Steelbloom##3355 |goto Silvermoon City 67.0,19.2
			buy 2 Bruiseweed##2453 |goto Silvermoon City 67.0,19.2
			buy 3 Earthroot##2449 |goto Silvermoon City 67.0,19.2
			buy 2 Mageroyal##785 |goto Silvermoon City 67.0,19.2
			buy 2 Peacebloom##2447 |goto Silvermoon City 67.0,19.2
			buy 3 Silverleaf##765 |goto Silvermoon City 67.0,19.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Lyna##16635
			buy 1 Formula: Superior Wizard Oil##22563 |goto Silvermoon City 70.0,24.6
			buy 1 Formula: Large Prismatic Shard##22565 |goto Silvermoon City 70.0,24.6
			buy 1 Formula: Superior Mana Oil##22562 |goto Silvermoon City 70.0,24.6
			buy 2 Lesser Magic Essence##10938 |goto Silvermoon City 70.0,24.6
			buy 4 Strange Dust##10940 |goto Silvermoon City 70.0,24.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Yatheon##16782
			buy 1 Schematic: Adamantite Rifle##23799 |goto Silvermoon City 75.8,40.6
			buy 1 Schematic: White Smoke Flare##23811 |goto Silvermoon City 75.8,40.6
			buy 1 Schematic: Fel Iron Toolbox##23816 |goto Silvermoon City 75.8,40.6
			buy 1 Gyrochronatom##4389 |goto Silvermoon City 75.8,40.6
			buy 1 Bronze Framework##4382 |goto Silvermoon City 75.8,40.6
			buy 2 Bronze Tube##4371 |goto Silvermoon City 75.8,40.6
			buy 3 Silver Contact##4404 |goto Silvermoon City 75.8,40.6
			buy 4 Coarse Blasting Powder##4364 |goto Silvermoon City 75.8,40.6
			buy 4 Rough Blasting Powder##4357 |goto Silvermoon City 75.8,40.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Eriden##16670
			buy 1 Plans: Adamantite Rapier##23593 |goto Silvermoon City 80.6,37.0
			buy 1 Plans: Adamantite Dagger##23592 |goto Silvermoon City 80.6,37.0
			buy 1 Plans: Adamantite Cleaver##23591 |goto Silvermoon City 80.6,37.0
			buy 1 Plans: Adamantite Maul##23590 |goto Silvermoon City 80.6,37.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gelanthis##16624
			buy 1 Design: Opal Necklace of Impact##21948 |goto Silvermoon City 90.8,73.6
			buy 1 Design: The Jade Eye##20975 |goto Silvermoon City 90.8,73.6
			buy 1 Design: Heavy Golden Necklace of Battle##20856 |goto Silvermoon City 90.8,73.6
			buy 1 Design: Amulet of the Moon##20854 |goto Silvermoon City 90.8,73.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zaralda##16689
			buy 1 Pattern: Comfortable Insoles##25726 |goto Silvermoon City 84.6,79.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Andra##16631
			buy 2 Mageweave Cloth##4338 |goto Silvermoon City 65.6,47.8
			buy 2 Bolt of Silk Cloth##4305 |goto Silvermoon City 65.6,47.8
			buy 4 Silk Cloth##4306 |goto Silvermoon City 65.6,47.8
			buy 2 Bolt of Woolen Cloth##2997 |goto Silvermoon City 65.6,47.8
			buy 9 Wool Cloth##2592 |goto Silvermoon City 65.6,47.8
			buy 2 Bolt of Linen Cloth##2996 |goto Silvermoon City 65.6,47.8
			buy 5 Linen Cloth##2589 |goto Silvermoon City 65.6,47.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Deynna##16638 |goto Silvermoon City 55.8,51.0
			buy 1 Pattern: Bolt of Soulcloth##21894 |goto Silvermoon City 55.8,51.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rathis Tomber##16224
			buy 2 Bruiseweed##2453 |goto Ghostlands 47.2,28.6
			buy 3 Tin Ore##2771 |goto Ghostlands 47.2,28.6
			buy 1 Pattern: Red Linen Bag##5771 |goto Ghostlands 47.2,28.6
			buy 1 Silver Ore##2775 |goto Ghostlands 47.2,28.6
			buy 5 Copper Ore##2770 |goto Ghostlands 47.2,28.6
			buy 3 Earthroot##2449 |goto Ghostlands 47.2,28.6
			buy 2 Mageroyal##785 |goto Ghostlands 47.2,28.6
			buy 2 Peacebloom##2447 |goto Ghostlands 47.2,28.6
			buy 3 Silverleaf##765 |goto Ghostlands 47.2,28.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jase Farlane##12941
			buy 1 Design: Ring of Bitter Shadows##21954 |goto Eastern Plaguelands 74.2,51.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Werg Thickblade##12943
			buy 1 Pattern: Stormshroud Pants##15741 |goto Tirisfal Glades 83.2,69.4
			buy 1 Pattern: Wicked Leather Gauntlets##15725 |goto Tirisfal Glades 83.2,69.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Selina Weston##3548
			buy 2 Bruiseweed##2453 |goto Tirisfal Glades 59.6,52.2
			buy 2 Mageroyal##785 |goto Tirisfal Glades 59.6,52.2
			buy 2 Peacebloom##2447 |goto Tirisfal Glades 59.6,52.2
			buy 2 Silverleaf##765 |goto Tirisfal Glades 59.6,52.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Constance Brisboise##3522
			buy 1 Pattern: Blue Linen Vest##6270 |goto Tirisfal Glades 52.6,55.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Felicia Doan##4775
			buy 1 Design: The Jade Eye##20975 |goto Undercity 64.8,49.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Daniel Bartlett##4561
			buy 1 Design: Amulet of the Moon##20854 |goto Undercity 64.8,38.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Millie Gregorian##4577
			buy 1 Pattern: Tuxedo Jacket##10326 |goto Undercity 70.8,29.6
			buy 1 Pattern: Tuxedo Pants##10323 |goto Undercity 70.8,29.6
			buy 1 Pattern: Tuxedo Shirt##10321 |goto Undercity 70.8,29.6
			buy 1 Pattern: Red Woolen Bag##5772 |goto Undercity 70.8,29.6
			buy 1 Pattern: Greater Adept's Robe##6275 |goto Undercity 70.8,29.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Joseph Moore##4589
			buy 1 Pattern: Green Whelp Bracers##7451 |goto Undercity 70.6,59.6
			buy 1 Pattern: Barbaric Bracers##18949 |goto Undercity 70.6,59.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Andrew Hilbert##3556
			buy 1 Pattern: Blue Linen Robe##6272 |goto Silverpine Forest 43.2,40.6
			buy 1 Pattern: Murloc Scale Breastplate##5787 |goto Silverpine Forest 43.2,40.6
			buy 1 Pattern: Murloc Scale Belt##5786 |goto Silverpine Forest 43.2,40.6
			buy 1 Pattern: Red Linen Bag##5771 |goto Silverpine Forest 43.2,40.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Lilly##5757
			buy 1 Formula: Enchant Chest - Lesser Mana##6346 |goto Silverpine Forest 46.8,40.6
			buy 2 Lesser Magic Essence##10938 |goto Silverpine Forest 46.8,40.6
			buy 4 Strange Dust##10940 |goto Silverpine Forest 46.8,40.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Leo Sarn##5758
			buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |goto Silverpine Forest 53.8,82.2
			buy 1 Lesser Magic Essence##10938 |goto Silverpine Forest 53.8,82.2
			buy 3 Strange Dust##10940 |goto Silverpine Forest 53.8,82.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Bro'kin##2480
			buy 1 Recipe: Frost Oil##14634 |goto Hillsbrad Foothills 44.0,21.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Christoph Jeffcoat##2393
			buy 1 Recipe: Shadow Protection Potion##6054 |goto Hillsbrad Foothills 57.4,47.6
			buy 1 Pattern: Thick Murloc Armor##5788 |goto Hillsbrad Foothills 57.4,47.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mallen Swain##2394
			buy 1 Pattern: Dark Silk Shirt##6401 |goto Hillsbrad Foothills 58.0,47.8
			buy 1 Pattern: Blue Overalls##6274 |goto Hillsbrad Foothills 58.0,47.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zixil##3537 
			|tip He patrols between Tarren Mill and Southshore, but makes a stop here. You may need to search for him a bit.
			buy 1 Schematic: Goblin Jumper Cables##7561 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Strength of Will##4837 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Dreamer's Belt##4829 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Fireproof Orb##4836 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Wizard's Belt##4827 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Nightwind Belt##4828 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Orb of Power##4838 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Pattern: Earthen Leather Shoulders##7362 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Formula: Enchant Boots - Minor Agility##6377 |goto Hillsbrad Foothills 52.6,56.2
			buy 1 Pattern: Red Woolen Bag##5772 |goto Hillsbrad Foothills 52.6,56.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zan Shivsproket##6777
			buy 1 Schematic: Gnomish Cloaking Device##7742 |goto Hillsbrad Foothills 71.2,45.2
			buy 1 Gyrochronatom##4389 |goto Hillsbrad Foothills 71.2,45.2
			buy 1 Bronze Framework##4382 |goto Hillsbrad Foothills 71.2,45.2
			buy 2 Bronze Tube##4371 |goto Hillsbrad Foothills 71.2,45.2
			buy 3 Silver Contact##4404 |goto Hillsbrad Foothills 71.2,45.2
			buy 4 Coarse Blasting Powder##4364 |goto Hillsbrad Foothills 71.2,45.2
			buy 4 Rough Blasting Powder##4357 |goto Hillsbrad Foothills 71.2,45.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk George Candarte##2698
			buy 1 Pattern: Green Leather Armor##7613 |goto Hillsbrad Foothills 76.6,58.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gigget Zipcoil##12958
			buy 1 Pattern: Ironfeather Shoulders##15735 |goto The Hinterlands 34.6,38.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Ruppo Zipcoil##2688
			buy 1 Schematic: Mithril Mechanical Dragonling##10609 |goto The Hinterlands 34.2,37.8
			buy 1 Gyrochronatom##4389 |goto The Hinterlands 34.2,37.8
			buy 1 Bronze Framework##4382 |goto The Hinterlands 34.2,37.8
			buy 2 Bronze Tube##4371 |goto The Hinterlands 34.2,37.8
			buy 3 Silver Contact##4404 |goto The Hinterlands 34.2,37.8
			buy 4 Coarse Blasting Powder##4364 |goto The Hinterlands 34.2,37.8
			buy 4 Rough Blasting Powder##4357 |goto The Hinterlands 34.2,37.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Keena##2821
			buy 1 Design: Ruby Crown of Restoration##21942 |goto Arathi Highlands 69.2,33.6
			buy 1 Pattern: Barbaric Leggings##5973 |goto Arathi Highlands 69.2,33.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Tunkk##2819
			buy 1 Pattern: Raptor Hide Harness##13287 |goto Arathi Highlands 70.0,35.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jun'ha##6574
			buy 1 Pattern: Azure Silk Cloak##7089 |goto Arathi Highlands 68.0,37.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk High Admiral Shelly Jorrik##26081
			buy 1 Plans: Solid Iron Maul##10858 |goto Dun Morogh 17.8,74.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk "Chef" Overheat##48060
			buy 3 Recipe: Undermine Clam Chowder##16767 |goto Badlands 65.0,38.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Buckslappy##49918
			buy 1 Schematic: EZ-Thro Dynamite II##18650 |goto Badlands 91.0,38.4
			buy 1 Schematic: Green Firework##18648 |goto Badlands 91.0,38.4
			buy 1 Red Firework##18647 |goto Badlands 91.0,38.4
			buy 1 Blue Firework##18649 |goto Badlands 91.0,38.4
			buy 1 Gyrochronatom##4389 |goto Badlands 91.0,38.4
			buy 1 Bronze Framework##4382 |goto Badlands 91.0,38.4
			buy 2 Bronze Tube##4371 |goto Badlands 91.0,38.4
			buy 3 Silver Contact##4404 |goto Badlands 91.0,38.4
			buy 4 Coarse Blasting Powder##4364 |goto Badlands 91.0,38.4
			buy 3 Rough Blasting Powder##4357 |goto Badlands 91.0,38.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gharash##8176
			buy 1 Plans: Mithril Scale Bracers##7995 |goto Swamp of Sorrows 47.2,52.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rartar##8177
			buy 1 Recipe: Elixir of Demonslaying##9300 |goto Swamp of Sorrows 47.2,57.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Banalash##989
			buy 1 Formula: Enchant Bracer - Dodge##11223 |goto Swamp of Sorrows 46.6,57.0
			buy 1 Design: Black Pearl Panther##21941 |goto Swamp of Sorrows 46.6,57.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kzixx##3134
			buy 1 Schematic: Goblin Jumper Cables##7561 |goto Duskwood 81.8,19.8
			buy 1 Recipe: Holy Protection Potion##6053 |goto Duskwood 81.8,19.8
			buy 1 Strength of Will##4837 |goto Duskwood 81.8,19.8
			buy 1 Dreamer's Belt##4829 |goto Duskwood 81.8,19.8
			buy 1 Fireproof Orb##4836 |goto Duskwood 81.8,19.8
			buy 1 Wizard's Belt##4827 |goto Duskwood 81.8,19.8
			buy 1 Nightwind Belt##4828 |goto Duskwood 81.8,19.8
			buy 1 Orb of Power##4838 |goto Duskwood 81.8,19.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jaquilina Dramet##2483
			buy 1 Plans: Massive Iron Axe##12164 |goto Northern Stranglethorn 43.6,23.0
			buy 1 Midnight Axe##12250 |goto Northern Stranglethorn 43.6,23.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Nerrist##1148
			buy 1 Design: Truesilver Crab##21943 |goto Northern Stranglethorn 39.2,51.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step			
			talk Vharr##1146
			buy 1 Daring Dirk##12248 |goto Northern Stranglethorn 38.6,49.0
			buy 1 Plans: Massive Iron Axe##12164 |goto Northern Stranglethorn 38.6,49.0
			buy 1 Midnight Axe##12250 |goto Northern Stranglethorn 38.6,49.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step			
			talk Knaz Blunderflame##8679
			buy 1 Schematic: Deadly Scope##10602 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Gyrochronatom##4389 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Bronze Framework##4382 |goto Northern Stranglethorn 67.6,61.0
			buy 2 Bronze Tube##4371 |goto Northern Stranglethorn 67.6,61.0
			buy 3 Silver Contact##4404 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Coarse Blasting Powder##4364 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Rough Blasting Powder##4357 |goto Northern Stranglethorn 67.6,61.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gnaz Blunderflame##2687
			buy 1 Schematic: Deadly Scope##13311 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Gyrochronatom##4389 |goto Northern Stranglethorn 67.6,61.0
			buy 1 Bronze Framework##4382 |goto Northern Stranglethorn 67.6,61.0
			buy 2 Bronze Tube##4371 |goto Northern Stranglethorn 67.6,61.0
			buy 3 Silver Contact##4404 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Coarse Blasting Powder##4364 |goto Northern Stranglethorn 67.6,61.0
			buy 4 Rough Blasting Powder##4357 |goto Northern Stranglethorn 67.6,61.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Narkk##2663
			buy 1 Pattern: Black Swashbuckler's Shirt##10728 |goto The Cape of Stranglethorn 42.6,69.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zarena Cromwind##2482
			buy 1 Plans: Moonsteel Broadsword##12163 |goto The Cape of Stranglethorn 43.0,70.6
			buy 1 Big Stick##12251 |goto The Cape of Stranglethorn 43.0,70.6
			buy 1 Staff of Protection##12252 |goto The Cape of Stranglethorn 43.0,70.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rikqiz##2699
			buy 1 Pattern: Shadowskin Gloves##18239 |goto The Cape of Stranglethorn 43.2,71.6
			buy 1 Pattern: Gem-Studded Leather Belt##14635 |goto The Cape of Stranglethorn 43.2,71.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Xizk Goodstitch##2670
			buy 1 Pattern: Enchanter's Cowl##14630 |goto The Cape of Stranglethorn 43.6,73.0
			buy 1 Pattern: Crimson Silk Cloak##7087 |goto The Cape of Stranglethorn 43.6,73.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Crazk Sparks##2838
			buy 1 Schematic: Green Firework##18648 |goto The Cape of Stranglethorn 43.0,72.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Glyx Brewright##2848
			buy 1 Recipe: Frost Protection Potion##6056 |goto The Cape of Stranglethorn 42.6,74.8
			buy 1 Recipe: Nature Protection Potion##6057 |goto The Cape of Stranglethorn 42.6,74.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mrs. Gant##54232
			buy 1 Recipe: Undermine Clam Chowder##16767 |goto The Cape of Stranglethorn 42.6,72.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Blixrez Goodstitch##2846
			buy 1 Pattern: Murloc Scale Bracers##5789 |goto The Cape of Stranglethorn 42.8,74.0
			buy 1 Pattern: Thick Murloc Armor##5788 |goto The Cape of Stranglethorn 42.8,74.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step	
			talk Jutak##2843
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto The Cape of Stranglethorn 41.6,74.0
			buy 1 Daring Dirk##12248 |goto The Cape of Stranglethorn 41.6,74.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Cowardly Crosby##2672
			buy 1 Pattern: Admiral's Hat##10318 |goto The Cape of Stranglethorn 40.8,82.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Daily Runs\\Silver-Thread Set",{
	meta={goldtype="xmog",levelreq=100,gold=100,time=15},
	description="This guide will put you on the path to obtaining the Jade Plate Set",
},[[
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Vendor Runs\\Kalimdor Vendor Run",{
	meta={goldtype="vendor",time=30,icon="Interface\\ICONS\\Achievement_Zone_Kalimdor_01"},
	maps={"Un'Goro Crater","Tanaris","Northern Barrens","Thunder Bluff","Orgrimmar","Desolace","Silithus","Southern Barrens","Winterspring","Feralas","Moonglade","Dustwallow Marsh","Stonetalon Mountains"},
},[[
		step
			talk Lorelae Wintersong##12022
			buy 1 Formula: Enchant Cloak - Superior Defense##16224 |goto Moonglade 48.6,40.2
			buy 1 Pattern: Felcloth Pants##14483 |goto Moonglade 48.6,40.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Qia##11189
			buy 1 Design: Necklace of the Diamond Tower##21957 |goto Winterspring 59.6,49.2
			buy 1 Pattern: Frostsaber Boots##15740 |goto Winterspring 59.6,49.2
			buy 1 Formula: Enchant Chest - Major Health##16221 |goto Winterspring 59.6,49.2
			buy 1 Pattern: Runecloth Bag##14468 |goto Winterspring 59.6,49.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Xizzer Fizzbolt##11185
			buy 1 Schematic: Delicate Arcanite Converter##16050 |goto Winterspring 59.2,50.8
			buy 1 Schematic: Powerful Seaforium Charge##18656 |goto Winterspring 59.2,50.8
			buy 1 Schematic: Masterwork Target Dummy##16046 |goto Winterspring 59.2,50.8
			buy 1 Schematic: Gyrofreeze Ice Reflector##18652 |goto Winterspring 59.2,50.8
			buy 1 Gyrochronatom##4389 |goto Winterspring 59.2,50.8
			buy 1 Bronze Framework##4382 |goto Winterspring 59.2,50.8
			buy 2 Bronze Tube##4371 |goto Winterspring 59.2,50.8
			buy 3 Silver Contact##4404 |goto Winterspring 59.2,50.8
			buy 4 Coarse Blasting Powder##4364 |goto Winterspring 59.2,50.8
			buy 4 Rough Blasting Powder##4357 |goto Winterspring 59.2,50.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Daleohm##50129
			buy 1 Plans: Frostguard##12836 |goto Winterspring 58.0,63.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step	
			talk Vi'el##16015
			buy 2 Felcloth##14256 |goto Winterspring 61.6,87.6
			buy 4 Gromsblood##8846 |goto Winterspring 61.6,87.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Sumi##3356
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto Orgrimmar 75.8,35.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kor'geld##3348
			buy 1 Recipe: Elixir of Superior Defense##13478 |goto Orgrimmar 55.6,46.4
			buy 1 Recipe: Free Action Potion##5642 |goto Orgrimmar 55.6,46.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kithas##3346
			buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |goto Orgrimmar 53.2,48.8
			buy 1 Formula: Enchant Chest - Lesser Mana##6346 |goto Orgrimmar 53.2,48.8
			buy 2 Lesser Magic Essence##10938 |goto Orgrimmar 53.2,48.8
			buy 4 Strange Dust##10940 |goto Orgrimmar 53.2,48.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Sovik##3413
			buy 1 Red Firework##18647 |goto Orgrimmar 56.0,56.0
			buy 1 Gyrochronatom##4389 |goto Orgrimmar 56.0,56.0
			buy 1 Bronze Framework##4382 |goto Orgrimmar 56.0,56.0
			buy 2 Bronze Tube##4371 |goto Orgrimmar 56.0,56.0
			buy 3 Silver Contact##4404 |goto Orgrimmar 56.0,56.0
			buy 4 Coarse Blasting Powder##4364 |goto Orgrimmar 56.0,56.0
			buy 4 Rough Blasting Powder##4357 |goto Orgrimmar 56.0,56.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Borya##3364
			buy 1 Pattern: Red Woolen Bag##5772 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Pink Mageweave Shirt##10317 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Lavender Mageweave Shirt##10314 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Blue Overalls##6274 |goto Orgrimmar 60.6,58.6
			buy 1 Pattern: Blue Linen Vest##6270 |goto Orgrimmar 60.6,58.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Hagrus##3335
			buy 2 Recipe: Great Rage Potion##5643 |goto Orgrimmar/2 44.5,36.5
			buy 2 Recipe: Rage Potion##5640 |goto Orgrimmar/2 44.5,36.5
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Punra##46359
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto Orgrimmar 45.0,77.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Lizna Goldweaver##45558
			buy 1 Pattern: Red Woolen Bag##5772 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Pink Mageweave Shirt##10317 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Lavender Mageweave Shirt##10314 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Blue Overalls##6274 |goto Orgrimmar 41.0,79.8
			buy 1 Pattern: Blue Linen Vest##6270 |goto Orgrimmar 41.0,79.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zido Helmbreaker##45549
			buy 1 Plans: Hardened Iron Shortsword##12162 |goto Orgrimmar 36.2,83.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Vizna Bangwrench##45546
			buy 1 Red Firework##18647 |goto Orgrimmar 36.6,86.8
			buy 1 Gyrochronatom##4389 |goto Orgrimmar 36.6,86.8
			buy 1 Bronze Framework##4382 |goto Orgrimmar 36.6,86.8
			buy 2 Bronze Tube##4371 |goto Orgrimmar 36.6,86.8
			buy 3 Silver Contact##4404 |goto Orgrimmar 36.6,86.8
			buy 4 Coarse Blasting Powder##4364 |goto Orgrimmar 36.6,86.8
			buy 4 Rough Blasting Powder##4357 |goto Orgrimmar 36.6,86.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Gagsprocket##3495
			buy 1 Schematic: Minor Recombobulator##14639 |goto Northern Barrens 68.4,69.2
			buy 1 Schematic: Green Firework##18648 |goto Northern Barrens 68.4,69.2
			buy 1 Gyrochronatom##4389 |goto Northern Barrens 68.4,69.2
			buy 1 Bronze Framework##4382 |goto Northern Barrens 68.4,69.2
			buy 2 Bronze Tube##4371 |goto Northern Barrens 68.4,69.2
			buy 3 Silver Contact##4404 |goto Northern Barrens 68.4,69.2
			buy 4 Coarse Blasting Powder##4364 |goto Northern Barrens 68.4,69.2
			buy 4 Rough Blasting Powder##4357 |goto Northern Barrens 68.4,69.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step	
			talk Ranik##3499
			buy 1 Design: Wicked Moonstone Ring##20855 |goto Northern Barrens 67.0,73.4
			buy 1 Pattern: Great Adept's Robe##6275 |goto Northern Barrens 67.0,73.4
			buy 2 Recipe: Rage Potion##5640 |goto Northern Barrens 67.0,73.4
			buy 1 Pattern: Blue Linen Robe##6272 |goto Northern Barrens 67.0,73.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Wrahk##3485
			buy 1 Pattern: Blue Linen Robe##6272 |goto Northern Barrens 50.0,61.0
			buy 1 Pattern: Blue Linen Vest##6270 |goto Northern Barrens 50.0,61.0
			buy 1 Pattern: Red Woolen Bag##5772 |goto Northern Barrens 50.0,61.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Hula'mahi##3490
			buy 1 Recipe: Holy Protection Potion##6053 |goto Northern Barrens 48.6,58.4
			buy 1 Bruiseweed##2453 |goto Northern Barrens 48.6,58.4
			buy 2 Earthroot##2449 |goto Northern Barrens 48.6,58.4
			buy 2 Mageroyal##785 |goto Northern Barrens 48.6,58.4
			buy 3 Peacebloom##2447 |goto Northern Barrens 48.6,58.4
			buy 2 Silverleaf##765 |goto Northern Barrens 48.6,58.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jeeda##4083
			buy 1 Recipe: Fire Protection Potion##6055 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Liferoot##3357 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Kingsblood##3356 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Wild Steelbloom##3355 |goto Stonetalon Mountains 50.4,63.6
			buy 2 Bruiseweed##2453 |goto Stonetalon Mountains 50.4,63.6
			buy 1 Mageroyal##785 |goto Stonetalon Mountains 50.4,63.6
			buy 3 Earthroot##2449 |goto Stonetalon Mountains 50.4,63.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kulwia##12043
			buy 1 Formula: Enchant Bracer - Lesser Strength##11101 |goto Stonetalon Mountains 48.6,61.6
			buy 1 Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains 48.6,61.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Kireena##9636
			buy 1 Pattern: Azure Silk Gloves##7114 |goto Desolace 51.0,53.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Muuran##8878
			buy 1 Plans: Solid Iron Maul##10858 |goto Desolace 55.8,56.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Nata Dawnstrider##3012
			buy 1 Formula: Enchant Boots - Minor Agility##6377 |goto Thunder Bluff 45.0,38.6
			buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |goto Thunder Bluff 45.0,38.6
			buy 2 Lesser Magic Essence##10938 |goto Thunder Bluff 45.0,38.6
			buy 4 Strange Dust##10940 |goto Thunder Bluff 45.0,38.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mahu##3005
			buy 1 Pattern: White Wedding Dress##10325 |goto Thunder Bluff 43.8,44.6
			buy 1 Pattern: Red Woolen Bag##5772 |goto Thunder Bluff 43.8,44.6
			buy 1 Pattern: Red Linen Bag##5771 |goto Thunder Bluff 43.8,44.6
			buy 1 Pattern: Orange Martial Shirt##10311 |goto Thunder Bluff 43.8,44.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Palehoof's Big Bag of Parts##52655
			buy 1 Red Firework##18647 |goto Thunder Bluff 36.8,59.4
			buy 1 Gyrochronatom##4389 |goto Thunder Bluff 36.8,59.4
			buy 1 Bronze Framework##4382 |goto Thunder Bluff 36.8,59.4
			buy 2 Bronze Tube##4371 |goto Thunder Bluff 36.8,59.4
			buy 3 Silver Contact##4404 |goto Thunder Bluff 36.8,59.4
			buy 4 Coarse Blasting Powder##4364 |goto Thunder Bluff 36.8,59.4
			buy 4 Rough Blasting Powder##4357 |goto Thunder Bluff 36.8,59.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Shadi Mistrunner##8363
			buy 1 Design: Opal Necklace of Impact##21948 |goto Thunder Bluff 40.6,62.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Murhane##44286
			buy 2 Heavy Leather##4234 |goto Southern Barrens 44.0,33.8
			buy 1 Medium Hide##4232 |goto Southern Barrens 44.0,33.8
			buy 5 Medium Leather##2319 |goto Southern Barrens 44.0,33.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Ghok'kah##6567
			buy 1 Pattern: Icy Cloak##4355 |goto Dustwallow Marsh 35.2,30.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Alchemist Pestlezugg##5594
			buy 1 Recipe: Nature Protection Potion##6057 |goto Tanaris 50.8,28.0
			buy 1 Recipe: Transmute Mithril to Truesilver##9305 |goto Tanaris 50.8,28.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Blizrik Buckshot##8131
			buy 1 Schematic: EZ-Thro Dynamite II##18650 |goto Tanaris 50.6,28.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step			
			talk Haughty Modiste##40572
			buy 1 Pattern: Dress Shoes##37915 |goto Tanaris 50.6,28.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Krinkle Goodsteel##5411
			buy 1 Plans: Golden Scale Coif##6047 |goto Tanaris 51.2,30.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Nergal##12959
			buy 1 Pattern: Devilsaur Leggings##15772 |goto Un'Goro Crater 54.8,62.6
			buy 1 Pattern: Devilsaur Gauntlets##15758 |goto Un'Goro Crater 54.8,62.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zannok Hidepiercer##12956
			buy 1 Pattern: Heavy Scorpid Helm##15762 |goto Silithus 81.2,18.6
			buy 1 Heavy Scorpid Bracers##15724 |goto Silithus 81.2,18.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Calandrath##15174
			buy 1 Recipe: Greater Nature Protection Potion##13496 |goto Silithus 55.4,36.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mishta##15179
			buy 1 Design: Emerald Crown of Destruction##21952 |goto Silithus 53.8,34.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Bronk##8158
			buy 1 Recipe: Ghost Dye##9302 |goto Feralas 76.0,43.4
			buy 1 Recipe: Nature Protection Potion##6057 |goto Feralas 76.0,43.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Jangdor Swiftstrider##7854
			buy 1 Pattern: Living Shoulders##15734 |goto Feralas 52.8,47.0
			buy 1 Pattern: Nightscape Shoulders##8409 |goto Feralas 52.8,47.0
			buy 1 Pattern: Turtle Scale Gloves##8385 |goto Feralas 52.8,47.0
			buy 1 Pattern: Green Whelp Bracers##7451 |goto Feralas 52.8,47.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Horde Vendor Runs\\Outland/Northrend Vendor Run",{
	meta={goldtype="vendor",time=30,icon="Interface\\ICONS\\ExpansionIcon_MistsOfPandaria"},
	maps={"Dalaran","Terokkar Forest","Blade's Edge Mountains","Nagrand","Netherstorm","Zangarmarsh","Hellfire Peninsula","Shadowmoon Valley","Shattrath City","Icecrown"},
},[[
		step
		label "start"
			talk Kul Inkspiller##30735
			buy 2 Technique: Glyph of Counterspell##50166 |goto Hellfire Peninsula 52.4,36.0
			buy 3 Scribe's Satchel##39489 |goto Hellfire Peninsula 52.4,36.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Rohok##16583
			buy 1 Plans: Lesser Ward of Shielding##23638 |goto Hellfire Peninsula 53.2,38.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Arrond##19521
			buy 1 Pattern: Imbued Netherweave Tunic##21901 |goto Shadowmoon Valley 55.8,58.2
			buy 1 Pattern: Imbued Netherweave Robe##21900 |goto Shadowmoon Valley 55.8,58.2
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Krek Cragcrush##19342
			buy 1 Plans: Adamantite Breastplate##23596 |goto Shadowmoon Valley 29.2,31.0
			buy 1 Plans: Adamantite Plate Bracers##23564 |goto Shadowmoon Valley 29.2,31.0
			buy 1 Plans: Adamantite Plate Gloves##23595 |goto Shadowmoon Valley 29.2,31.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step	
			talk Dealer Tariq##20986
			buy 3 Mote of Life##22575 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Air##22572 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Earth##22573 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Fire##22574 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Mana##22576 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Shadow##22577 |goto Terokkar Forest 39.4,70.0
			buy 3 Mote of Water##22578 |goto Terokkar Forest 39.4,70.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Aaron Hollman##19662
			buy 1 Plans: Adamantite Rapier##23593 |goto Shattrath City 64.0,71.8
			buy 1 Plans: Adamantite Dagger##23592 |goto Shattrath City 64.0,71.8
			buy 1 Plans: Adamantite Cleaver##23591 |goto Shattrath City 64.0,71.8
			buy 1 Plans: Adamantite Maul##23590 |goto Shattrath City 64.0,71.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Madame Ruby##19663
			buy 1 Formula: Superior Wizard Oil##22563 |goto Shattrath City 63.6,70.0
			buy 1 Formula: Large Prismatic Shard##22565 |goto Shattrath City 63.6,70.0
			buy 1 Formula: Enchant Shield - Major Stamina##28282 |goto Shattrath City 63.6,70.0
			buy 1 Formula: Superior Mana Oil##22562 |goto Shattrath City 63.6,70.0
			buy 2 Lesser Magic Essence##10938 |goto Shattrath City 63.6,70.0
			buy 4 Strange Dust##10940 |goto Shattrath City 63.6,70.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Viggz Shinesparked##19661
			buy 1 Schematic: Adamantite Rifle##23799 |goto Shattrath City 64.8,69.6
			buy 2 Elemental Blasting Powder##23781 |goto Shattrath City 64.8,69.6
			buy 2 Handful of Fel Iron Bolts##23783 |goto Shattrath City 64.8,69.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Wind Trader Lathrai##18484
			buy 1 Schematic: White Smoke Flare##23811 |goto Shattrath City 72.6,31.6
			buy 1 Schematic: Fel Iron Toolbox##23816 |goto Shattrath City 72.6,31.6
			buy 1 Gyrochronatom##4389 |goto Shattrath City 72.6,31.6
			buy 1 Bronze Framework##4382 |goto Shattrath City 72.6,31.6
			buy 2 Bronze Tube##4371 |goto Shattrath City 72.6,31.6
			buy 3 Silver Contact##4404 |goto Shattrath City 72.6,31.6
			buy 4 Coarse Blasting Powder##4364 |goto Shattrath City 72.6,31.6
			buy 4 Rough Blasting Powder##4357 |goto Shattrath City 72.6,31.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Skreah##19074
			buy 1 Recipe: Transmute Primal Might##23574 |goto Shattrath City 45.8,20.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Mathar G'ochar##19015
			buy 1 Pattern: Soulcloth Gloves##21902 |goto Nagrand 56.8,38.4
			buy 1 Pattern: Bolt of Soulcloth##21894 |goto Nagrand 56.8,38.4
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Seer Janidi##18017
			buy 1 Recipe: Elixir of Major Frost Power##22902 |goto Zangarmarsh 32.4,51.8
			buy 1 Recipe: Sneaking Potion##22901 |goto Zangarmarsh 32.4,51.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Captured Gnome##19383
			buy 1 Schematic: Ultra-Spectropic Detection Goggles##23805 |goto Zangarmarsh 32.4,48.0
			buy 2 Schematic: White Smoke Flare##23811 |goto Zangarmarsh 32.4,48.0
			buy 2 Gyrochronatom##4389 |goto Zangarmarsh 32.4,48.0
			buy 2 Bronze Framework##4382 |goto Zangarmarsh 32.4,48.0
			buy 4 Bronze Tube##4371 |goto Zangarmarsh 32.4,48.0
			buy 6 Silver Contact##4404 |goto Zangarmarsh 32.4,48.0
			buy 8 Coarse Blasting Powder##4364 |goto Zangarmarsh 32.4,48.0
			buy 8 Rough Blasting Powder##4357 |goto Zangarmarsh 32.4,48.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Zurai##18011
			buy 1 Pattern: Imbued Netherweave Boots##21899 |goto Zangarmarsh 85.2,54.6
			buy 1 Pattern: Imbued Netherweave Pants##21898 |goto Zangarmarsh 85.2,54.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Daga Ramba##19837
			buy 1 Recipe: Major Dreamless Sleep Potion##22911 |goto Blade's Edge Mountains 51.0,57.8
			buy 1 Recipe: Elixir of Major Defense##22909 |goto Blade's Edge Mountains 51.0,57.8
			buy 1 Recipe Super Mana Potion##22907 |goto Blade's Edge Mountains 51.0,57.8
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Qiff##19575
			buy 1 Felsteel Stabalizer##23787 |goto Netherstorm 32.6,66.6
			buy 1 Khorium Power Core##23786 |goto Netherstorm 32.6,66.6
			buy 1 Adamantite Frame##23784 |goto Netherstorm 32.6,66.6
			buy 4 Handful of Fel Iron Bolts##23783 |goto Netherstorm 32.6,66.6
			buy 1 Fel Iron Casing##23782 |goto Netherstorm 32.6,66.6
			buy 4 Elemental Blasting Powder##23781 |goto Netherstorm 32.6,66.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Dealer Najeeb##20981
			buy 1 Hardened Adamantite Tube##23785 |goto Netherstorm 44.8,36.6
			buy 5 Mote of Air##22572 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Water##22578 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Shadow##22577 |goto Netherstorm 44.8,36.6
			buy 3 Adamantite Frame##23784 |goto Netherstorm 44.8,36.6
			buy 5 Mote of Mana##22576 |goto Netherstorm 44.8,36.6
			buy 4 Mote of Life##22575 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Fire##22574 |goto Netherstorm 44.8,36.6
			buy 6 Mote of Earth##22573 |goto Netherstorm 44.8,36.6
			buy 8 Handful of Fel Iron Bolts##23783 |goto Netherstorm 44.8,36.6
			buy 8 Elemental Blasting Powder##23781 |goto Netherstorm 44.8,36.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Dealer Sadaqat##20989
			buy 1 Mana Thistle##22793 |goto Netherstorm 43.2,35.0
			buy 3 Netherbloom##22791 |goto Netherstorm 43.2,35.0
			buy 2 Dreaming Glory##22786 |goto Netherstorm 43.2,35.0
			buy 3 Felweed##22785 |goto Netherstorm 43.2,35.0
			buy 3 Icecap##13467 |goto Netherstorm 43.2,35.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Larana Drome##28723
			buy 6 Technique: Glyph of Everlasting Affliction##50168 |goto Dalaran 42.4,37.6
			buy 7 Technique: Glyph of Counterspell##50166 |goto Dalaran 42.4,37.6
			buy 6 Scribe's Satchel##39489 |goto Dalaran 42.4,37.6
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Bryan Landers##28722
			buy 5 Schematic: Titanium Toolbox##23817 |goto Dalaran 39.0,26.0
			buy 3 Gyrochronatom##4389 |goto Dalaran 39.0,26.0
			buy 3 Bronze Framework##4382 |goto Dalaran 39.0,26.0
			buy 6 Bronze Tube##4371 |goto Dalaran 39.0,26.0
			buy 9 Silver Contact##4404 |goto Dalaran 39.0,26.0
			buy 12 Coarse Blasting Powder##4364 |goto Dalaran 39.0,26.0
			buy 12 Rough Blasting Powder##4357 |goto Dalaran 39.0,26.0
			If these items are not available, or you have purchased everything you can at the moment, click here to continue. |confirm
		step
			talk Fizzix Blastbolt##33594
			buy 10 Schematic: Titanium Toolbox##23817 |goto Icecrown 72.2,20.8
			buy 4 Gyrochronatom##4389 |goto Icecrown 72.2,20.8
			buy 4 Bronze Framework##4382 |goto Icecrown 72.2,20.8
			buy 8 Bronze Tube##4371 |goto Icecrown 72.2,20.8
			buy 12 Silver Contact##4404 |goto Icecrown 72.2,20.8
			buy 16 Coarse Blasting Powder##4364 |goto Icecrown 72.2,20.8
			buy 16 Rough Blasting Powder##4357 |goto Icecrown 72.2,20.8
			This is the last step of the guide:
			If these items are not available, click here to be routed back to the start of the guide. |confirm |next "start"
]])
end
--]=]

-- FARM VARIOUS
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Cocoa Beans (Horde)",{
	condition_valid='raceclass("Horde")',
},[[
		#include "Org_Cooking_Dailies"
		earn 1 Epicurean's Reward##81
	step
		talk Shazdar##49737
		buy Imported Supplies##68689 |goto Orgrimmar 56.8,62.6
	step
		Use the Imported Supplies in your bags. |use Imported Supplies##68689
		goldcollect Cocoa Beans##62786
		goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

