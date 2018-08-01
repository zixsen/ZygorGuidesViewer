-- Cloth Farming
ZygorGuidesViewer.GuideMenuTier = "WOD"

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Linen Cloth/Wool Cloth",{
	meta={goldtype="route",levelreq={24,25},itemtype="cloth"},
	items={{2592,450},{2589,628}},
	maps={"Shadowfang Keep","Wetlands","Silverpine Forest"},
},[[
	step
		Linen and Wool Cloth is _most abundant_ in Wetlands and Shadowfang Keep. Please select where you would like to farm.
		_Click here_ to farm in Shadowfang Keep |confirm |next "sfk1"
		_Click here_ to farm in Wetlands |confirm |next
	step
		kill Dragonmaw Whelpstealer##42041+ |goto Wetlands/0 67.3,47.3
		kill Ebon Slavehunter##42043+
		goldcollect 450 Wool Cloth##2592
		goldcollect 628 Linen Cloth##2589
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sfk1"
		map Shadowfang Keep/1
		path loop off; follow loose; distance 10
		path	72.2,49.9	62.0,44.8	60.5,57.0
		path	63.7,71.0	56.5,66.6	37.8,39.2
		path	Shadowfang Keep/2 56.3,13.7	Shadowfang Keep/2 44.7,38.2	Shadowfang Keep/2 34.4,74.6
		path	Shadowfang Keep/2 26.8,89.5	Shadowfang Keep/1 21.0,91.1	Shadowfang Keep/1 28.0,61.4
		path	Shadowfang Keep/1 34.7,69.8	Shadowfang Keep/7 24.3,75.2	Shadowfang Keep/7 51.4,83.1
		path	Shadowfang Keep/7 56.6,95.0	Shadowfang Keep/7 59.0,82.7
		Follow the path killing and looting any mobs you see |goto Shadowfang Keep/7 59.0,82.7 < 10 |noway |c |next "sfkpt2"
		goldcollect 450 Wool Cloth##2592 |n
		goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sfkpt2"
		map Shadowfang Keep/7
		path loop off; follow loose; distance 10
		path	66.8,88.3	73.6,62.3	46.2,47.6
		path	47.4,32.3	45.9,18.7	43.8,29.0
		path	Shadowfang Keep/3 44.8,62.1	Shadowfang Keep/3 58.7,11.2
		Follow the path killing and looting any mobs you see |goto Shadowfang Keep/3 58.7,11.2 < 10 |noway |c |next "sfkpt3"
		goldcollect 450 Wool Cloth##2592 |n
		goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sfkpt3"
		map Shadowfang Keep/3
		path loop off; follow loose; distance 10
		path	62.7,15.1	65.3,35.2	54.9,74.4
		path	47.6,96.2	Shadowfang Keep/4 50.7,68.9	Shadowfang Keep/4 60.9,30.8
		path	Shadowfang Keep/4 38.4,36.9	Shadowfang Keep/4 37.0,64.0
		Follow the path killing and looting any mobs you see |goto Shadowfang Keep/4 37.0,64.0 < 10 |noway |c |next "sfkpt4"
		goldcollect 450 Wool Cloth##2592 |n
		goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sfkpt4"
		map Shadowfang Keep/5
		path loop off; follow loose; distance 10
		path	37.9,66.5	48.0,77.5	64.0,61.1
		path	61.0,30.9	35.1,54.7
		Follow the path killing and looting any mobs you see |goto Shadowfang Keep/5 35.1,54.7 < 10 |noway |c |next "sfkpt5"
		goldcollect 450 Wool Cloth##2592 |n
		goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sfkpt5"
		map Shadowfang Keep/6
		path	49.5,87.3	58.7,53.3	62.8,20.8
		path loop off; follow loose; distance 10
		Follow the path killing and looting any mobs you see |goto Shadowfang Keep/6 62.8,20.8 < 10 |noway |c |next "reset"
		goldcollect 450 Wool Cloth##2592 |n
		goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "reset"
		Make your way out of the dungeon |goto Silverpine Forest/0 44.8,67.8
		You can now reset the dungeon if you wish to continue farming
		Right-click your player's unit frame and select "_Reset all instances_"
		Click here to _continue farming_ |confirm |next "sfk1"
		_
		_Click here_ to sell items instead |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Silk Cloth",{
	meta={goldtype="route",levelreq={39,40},itemtype="cloth"},
	items={{4306,500},{2592,8,'crap'},{4338,36,'crap'}},
	maps={"Dustwallow Marsh","Eastern Plaguelands"},
},[[
	step
		Silk Cloth is _most abundant_ in Dustwallow Marsh and Eastern Plaguelands. Please select where you would like to farm.
		_Click here_ to farm in Eastern Plaguelands |confirm |next "epl"
		_Click here_ to farm in Dustwallow Marsh |confirm |next
	step
		map Dustwallow Marsh
		path follow loose; loop on; ants curved
		path	42.0,11.0	42.6,12.8	44.8,16.4
		path	54.6,20.8	55.8,20.6	57.6,20.2
		path	59.0,23.6	58.6,26.2	57.2,30.2
		path	53.4,28.0	52.2,26.0	44.8,17.6
		path	40.8,13.2	40.8,12.2
		kill Grimtotem Breaker##23592+, Risen Spirit##23554+, Risen Husk##23555+
		goldcollect 500 Silk Cloth##4306
		|meta crap_items_follow=1
		goldcollect 8 Wool Cloth##2592
		goldcollect 36 Mageweave Cloth##4338
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "epl"
		map Eastern Plaguelands
		path	follow smart; loop on; ants curved
		path	16.0,78.0	16.9,79.4	19.0,82.0
		path	19.4,77.5	18.6,76.3
		kill Death's Step Putrifier##45443+, Death's Step Miscreation##45444+
		goldcollect 500 Silk Cloth##4306
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Runecloth",{
	meta={goldtype="route",levelreq={54,55},itemtype="cloth"},
	items={{14047,372},{20404,120,'crap'}},
	maps={"Hellfire Ramparts","Silithus"},
},[[
	step
		Runecloth is _most abundant_ in Silithus and Hellfire Ramparts. Please select where you would like to farm.
		_Click here_ to farm in Hellfire Ramparts |confirm |next "ramparts"
		_Click here_ to farm in Silithus |confirm |next
	step
		map Silithus
		path follow smart; loop on; ants curved
		path	44.5,38.0	46.5,40.4	44.9,44.7
		path	42.9,41.4	34.2,33.7	31.6,32.1
		path	32.9,30.1	35.2,29.9
		kill Twilight Avenger##11880+, Twilight Geolord##11881+ 
		avoid Twilight Stonecaller##11882+
		goldcollect 372 Runecloth##14047
		|meta crap_items_follow=1
		goldcollect 120 Encrypted Twilight Text##20404
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "ramparts"
		map Hellfire Ramparts/1
		path follow smart; loop off; ants curved; dist 1
		path	46.9,64.1	45.9,55.0	53.1,48.8
		path	66.6,54.9	76.1,36.6	70.8,32.5
		path	65.4,39.3	65.2,44.4	57.0,50.9
		path	50.6,61.8
		Follow the instance and kill any humanoid mobs you see
		Run out and reset the instance to continue farming
		goldcollect 372 Runecloth##14047
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Felcloth",{
	meta={goldtype="route",levelreq={58,59},itemtype="cloth"},
	items={{14256,12}},
	maps={"Blasted Lands"},
},[[
	step
		talk Zidormi##88206
		Tell her: "_Show me the Blasted Lands before the Invasion._" |havebuff 609811 |goto Blasted Lands 48.2,7.3 --spell_mage_altertime
	step
		map Blasted Lands
		path follow smart; loop on; ants curved
		path	40.8,66.0	38.8,65.7
		path	35.6,65.6	32.8,64.3	31.0,68.0
		path	34.3,70.7	35.9,70.0	36.6,72.4
		path	32.7,75.0	36.5,75.4	39.8,75.3
		path	40.7,71.0
		kill Doomguard Destroyer##41470+, Dreadlord Defiler##41471+
		avoid Corrupted Darkwood Treant##45119+, Felspore Bog Lord##45125+
		goldcollect 12 Felcloth##14256
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Righteous Orb, Mageweave Cloth",{
	meta={goldtype="route",levelreq={45,46},elitemobs=1,itemtype="cloth"},
	items={{14047,32},{4338,845},{12811,5,'crap'}},
	maps={"Stratholme"},
},[[
	step
		kill Risen Guardsman##10418+, Risen Initiate##10420+, Risen Defender##10421+, Risen Sorcerer##10422+, Willey Hopebreaker##10997+, Risen Gallant##10424+, Risen Inquisitor##10426+, Risen Monk##11043+, Instructor Galford##10811+ |goto Stratholme/1 33.4,33.0
		goldcollect 32 Runecloth##14047
		goldcollect 845 Mageweave Cloth##4338
		|meta crap_items_follow=1
		goldcollect 5 Righteous Orb##12811
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mageweave Cloth",{
	meta={goldtype="route",levelreq={45,46},elitemobs=1,itemtype="cloth"},
	items={{4338,448}},
	maps={"Tanaris","Badlands"},
},[[
	step
		Mageweave Cloth is _most abundant_ in Badlands and Tanaris. Please select where you would like to farm.
		_Click here_ to farm in Tanaris |confirm |next "tanaris"
		_Click here_ to farm in Badlands |confirm |next
	step
		map Badlands
		path follow smart; loop on; ants curved; dist 15
		path	12.3,45.1	14.8,47.2	17.0,47.5
		path	19.0,49.2	20.5,50.0	22.6,48.5
		path	23.2,46.0	21.1,43.9	18.8,45.7
		path	17.1,46.2	15.7,46.2	14.5,45.9
		path	13.2,44.5
		kill Darkflight Flameblade##46917+, Darkflight Shadowspeaker##46918
		goldcollect 448 Mageweave Cloth##4338
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "tanaris"
		kill Sandfury Firecaller##5647+, Sandfury Axe Thrower##5646+, Sandfury Hideskinner##5645+ |goto Tanaris/0 33.8,7.1
		goldcollect 448 Mageweave Cloth##4338
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Netherweave Cloth",{
	meta={goldtype="route",levelreq={68,70},itemtype="cloth"},
	items={{21877,928},{30810,392,'crap'},{29739,24,'crap'},{30809,220,'crap'},{29740,24,'crap'}},
	maps={"Shadowmoon Valley"},
},[[
	step
		Netherweave Cloth is _most abundant_ in Shadowmoon Valley. Please select where you would like to farm.
		_Click here_ to farm in Legion Hold |confirm |next "smv2" |tip Also a good location to farm Aldor rep items.
		_Click here_ to farm in Eclipse Point |confirm |next |tip Also a good location to farm Scryer rep items.
	step
		map Shadowmoon Valley
		path follow smart; loop on; ants curved; dist 20
		path	51.1,58.8	53.0,59.3	53.2,60.5
		path	52.8,63.2	52.8,65.4	52.9,69.0
		path	52.5,71.8	47.3,71.1	45.8,71.3
		path	45.2,69.2	45.6,66.1	48.0,67.2
		kill Illidari Watcher##22093+, Eclipsion Cavalier##22018+,Eclipsion Soldier##22016+,Eclipsion Spellbinder##22017+,Eclipsion Blood Knight##19795+,Eclipsion Bloodwarder##19806+,Eclipsion Archmage##19796+,Eclipsion Centurion##19792+, Val'zareq the Conqueror##21979+
		goldcollect 928 Netherweave Cloth##21877
		|meta crap_items_follow=1
		goldcollect 392 Sunfury Signet##30810 |n
		goldcollect 24 Arcane Tome##29739 |n
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "smv2"
		map Shadowmoon Valley
		path follow smart; loop on; ants curved; dist 20
		path	23.9,41.3	22.6,40.1	22.3,38.4
		path	22.1,37.1	20.7,38.0	20.8,36.2
		path	21.8,34.2	22.7,31.2	23.7,31.1
		path	24.9,32.3	26.0,33.3	25.1,34.6
		path	26.2,36.1	25.1,38.1	24.9,39.8
		kill Terrormaster##21314+, Shadow Council Warlock##21302+, Wrathwalker##19740+, Mo'arg Weaponsmith##19755+
		goldcollect 928 Netherweave Cloth##21877
		|meta crap_items_follow=1
		goldcollect 220 Mark of Sargeras##30809 |n
		goldcollect 24 Fel Armament##29740 |n
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Frostweave Cloth",{
	meta={goldtype="route",levelreq=80,itemtype="cloth"},
	items={{33470,428}},
	maps={"Icecrown"},
},[[
	step
		Frostweave Cloth is _most abundant_ in Icecrown. Please select where you would like to farm.
		_Click here_ to farm in Argent Tournament Grounds |confirm |next "argent"
		_Click here_ to farm in Corp'Rethar |confirm |next
	step
		kill Chosen Zealot##32175+ |goto Icecrown 43.3,78.4 |tip These have a slightly increased respawn rate. However, they are the best for farming frostweave as they have a high drop rate and 24 spawn at once.
		goldcollect 428 Frostweave Cloth##33470
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "argent"
		map Icecrown
		path follow smart; loop on; ants curved; dist 20
		path	65.6,22.2	64.6,22.6	63.0,21.6
		path	60.8,23.0	60.8,20.6	61.4,20.0
		path	64.0,21.2	64.6,21.0
		kill Dark Zealot##34728+, Dark Ritualist##34734+
		goldcollect 428 Frostweave Cloth##33470
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Embersilk Cloth",{
	meta={goldtype="route",levelreq=83,itemtype="cloth"},
	items={{53010,248}},
	maps={"Tol Barad Peninsula","Deepholm"},
},[[
	step
		Embersilk Cloth is _most abundant_ in Tol Borad and Deepholm. Please select where you would like to farm.
		_Click here_ to farm in Tol Borad |confirm |next "borad"
		_Click here_ to farm in Deepholm |confirm |next
		tip Your efforts will be further rewarded here with the Tailoring "scavenger" trait
	step
		map Deepholm
		path follow smart; loop on; ants curved
		path	68.2,25.6	67.2,32.0	68.6,35.8
		path	69.0,42.6	73.0,45.0	77.2,42.8
		path	76.8,35.6	74.6,32.8	74.8,28.4
		path	72.2,26.6
		kill Verlok Shroomtender##43368+, Verlok Grubthumper##43367+ |tip Up above on the platforms
		goldcollect 248 Embersilk Cloth##53010
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "borad"
		map Tol Barad Peninsula
		path follow smart; loop on; ants curved; dist 10
		path	48.0,71.6	47.4,69.8	45.6,67.0
		path	45.6,62.0	44.6,59.4	42.6,59.0
		path	41.8,57.4	38.6,58.2	36.6,59.4
		path	36.0,60.6	37.8,62.6	40.4,62.0
		path	41.6,62.6	44.4,64.8	45.6,68.6
		kill Restless Infantry##46823+, Restless Soldier##46825+
		goldcollect 248 Embersilk Cloth##53010
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Windwool Cloth",{
	meta={goldtype="route",levelreq=87,itemtype="cloth"},
	items={{72988,308}},
	maps={"Townlong Steppes"},
},[[
	step
		map Townlong Steppes
		path follow loose; loop on; ants curved; dist 20
		path	25.8,55.3	23.7,55.5	22.1,56.6
		path	21.0,57.7	20.8,55.9	20.7,54.4
		path	19.8,52.3	18.4,51.0	17.8,50.0
		path	19.1,48.9	19.7,47.8	21.0,50.3
		path	22.3,50.9	23.6,49.9	24.6,52.1
		path	25.8,53.5
		kill Sra'thik Regenerator##63681+, Sra'thik Mutilator##63678+, Sra'thik Drone##63677+, Sra'thik Swiftwing##63683+, Sra'thik Cacophyte##63680+, Sra'thik Will-Breaker##63684+
		goldcollect 308 Windwool Cloth##72988
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Iceweb Spider Silk",{
	meta={goldtype="route",levelreq={75,76},itemtype="cloth"},
	items={{42253,84}},
	maps={"Zul'Drak"},
},[[
	step
		map Zul'Drak
		path follow smart; loop on; ants curved
		path	36.2,57.9	35.8,50.8	35.1,47.9
		path	36.4,47.6	38.2,53.6	38.9,57.8
		kill Trapdoor Crawler##28221+
		goldcollect 84 Iceweb Spider Silk##42253
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Sumptuous Fur",{
	meta={goldtype="route",levelreq={75,76},itemtype="cloth"},
	items={{111557,364}},
	maps={"Gorgrond"},
},[[
	step
		map Gorgrond
		path follow loose; loop on; ants curved; dist 20
		path	46.8,89.8	46.4,91.4	45.3,93.0
		path	43.2,91.8	42.8,89.4	44.5,90.7
		path	44.6,89.2
		kill Tailthrasher Stalker##85718+, Tailthrasher Brute##85724+, Tailthrasher Ambusher##85703+, Tailthrasher Vinebender##85725+
		goldcollect 364 Sumptuous Fur##111557
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])
-- Enchant Farming
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Strange Dust",{
	meta={goldtype="route",levelreq=17,skillreq={enchanting=25}},
	items={{10940,92},{10938,18,'crap'},{10939,2,'crap'},{10998,1,'crap'},{11082,1,'crap'},{2589,108,'crap'},{2592,60,'crap'}},
	maps={"Northern Barrens"},
},[[
	step
		Strange Dust is found by _disenchanting Uncommon items_ (green quality) with an item level of 1 to 25
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate instances on a high level main
		The 5-man instance _Wailing Caverns_ offers the _best yield of Strange Dust_ per run
		_Enter_ the Wailing Caverns |goto Northern Barrens/20 55.0,66.0
		goldcollect 92 Strange Dust##10940
		|meta crap_items_follow=1
		goldcollect 18 Lesser Magic Essence##10938
		goldcollect 2 Greater Magic Essence##10939
		goldcollect 1 Lesser Astral Essence##10998
		goldcollect 1 Greater Astral Essence##11082
		goldcollect 108 Linen Cloth##2589
		goldcollect 60 Wool Cloth##2592
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Soul Dust",{
	meta={goldtype="route",levelreq=32,skillreq={enchanting=75}},
	items={{11083,85},{2592,80,'crap'},{4306,130,'crap'}},
	maps={"Southern Barrens"},
},[[
	step
		Soul Dust is found by _disenchanting Uncommon Items_ (green quality) with an item levels of 26 to 35
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate instances on a high level main
		The 5-man instance _Razorfen Kraul_ offers the _best yield of Soul Dust_ per run
		_Enter_ the Razorfen Kraul |goto Southern Barrens/0 40.7,94.5
		goldcollect 85 Soul Dust##11083
		|meta crap_items_follow=1
		goldcollect 80 Wool Cloth##2592
		goldcollect 130 Silk Cloth##4306
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Vision Dust",{
	meta={goldtype="route",levelreq=37,skillreq={enchanting=125}},
	items={{11137,20},{11134,3,'crap'},{11135,1,'crap'},{4306,15,'crap'},{4338,21,'crap'}},
	maps={"Badlands"},
},[[
	step
		Vision Dust is found by _disenchanting Uncommon Items_ (green quality) with an item levels of 36 to 45
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate instances on a high level main
		The 5-man instance _Uldaman_ offers the _best yield of Vision Dust_ per run
		_Enter_ Uldaman |goto Badlands/0 58.6,37.0
		goldcollect 20 Vision Dust##11137
		|meta crap_items_follow=1
		goldcollect 3 Lesser Mystic Essence##11134
		goldcollect 1 Greater Mystic Essence##11135
		goldcollect 15 Silk Cloth##4306
		goldcollect 21 Mageweave Cloth##4338
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Dream Dust",{
	meta={goldtype="route",levelreq=42,skillreq={enchanting=175}},
	items={{11176,44},{16204,2,'crap'},{11174,6,'crap'},{11175,2,'crap'},{16202,1,'crap'},{16203,1,'crap'},{11754,22,'crap'},{14047,620,'crap'}},
	maps={"Searing Gorge"},
},[[
	step
		Dream Dust is found by _disenchanting Uncommon items_ (green quality) with an item level of 46 to 55
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate instances on a high level main
		The 5-man instance _Blackrock Depths_ offers the _best yield of Dream Dust_ per run
		_Enter_ Blackrock Depths |goto Burning Steppes/16 38.9,18.1
		goldcollect 44 Dream Dust##11176
		|meta crap_items_follow=1
		goldcollect 2 Illusion Dust##16204
		goldcollect 6 Lesser Nether Essence##11174
		goldcollect 2 Greater Nether Essence##11175
		goldcollect 1 Lesser Eternal Essence##16202
		goldcollect 1 Greater Eternal Essence##16203
		goldcollect 22 Black Diamond##11754
		goldcollect 620 Runecloth##14047
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Illusion Dust",{
	meta={goldtype="route",levelreq=48,skillreq={enchanting=225}},
	items={{16204,33},{16202,15,'crap'},{16203,10,'crap'},{14047,630,'crap'}},
	maps={"Burning Steppes"},
},[[
	step
		Illusion Dust is found by _disenchanting Uncommon Items_ (green quality) with an items level of 56 to 65
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate instances on a high level main
		The 5-man instance _Lower Blackrock Spire_ offers the _best yield of Illusion Dust_ per run
		_Enter_ Lower Blackrock Spire |goto Burning Steppes/14 80.3,40.7
		goldcollect 33 Illusion Dust##16204
		|meta crap_items_follow=1
		goldcollect 15 Lesser Eternal Essence##16202
		goldcollect 10 Greater Eternal Essence##16203
		goldcollect 630 Runecloth##14047
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Arcane Dust",{
	meta={goldtype="route",levelreq=68,skillreq={enchanting=275}},
	items={{22445,68},{22447,12,'crap'},{22446,4,'crap'},{21877,1424,'crap'}},
	maps={"Shadowmoon Valley"},
},[[
	step
		Arcane Dust is found by _disenchanting Uncommon Items_ (green quality) with an items level of 79 to 120
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate areas on a high level main
		Killing Blood Elf currently offers the _best yield of Arcane Dust_ per hour
		map Shadowmoon Valley
		path follow loose; loop on; ants curved
		path	51.1,58.8	53.0,59.3	53.2,60.5
		path	52.8,63.2	52.8,65.4	52.9,69.0
		path	52.5,71.8	47.3,71.1	45.8,71.3
		path	45.2,69.2	45.6,66.1	48.0,67.2
		kill Illidari Watcher##22093+, Eclipsion Cavalier##22018+,Eclipsion Soldier##22016+,Eclipsion Spellbinder##22017+,Eclipsion Blood Knight##19795+,Eclipsion Bloodwarder##19806+,Eclipsion Archmage##19796+,Eclipsion Centurion##19792+, Val'zareq the Conqueror##21979+
		goldcollect 68 Arcane Dust##22445
		|meta crap_items_follow=1
		goldcollect 12 Lesser Planar Essence##22447
		goldcollect 4 Greater Planar Essence##22446
		goldcollect 1424 Netherweave Cloth##21877
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Infinite Dust",{
	meta={goldtype="route",levelreq=79,skillreq={enchanting=350}},
	items={{34054,92},{33470,180,'crap'},{34056,6,'crap'},{34055,2,'crap'}},
	maps={"Icecrown"},
},[[
	step
		Infinite Dust is found by _disenchanting Uncommon Items_ (green quality) with an item levels of 130 to 200
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate areas on a high level main
		Killing Mjordin Combatants currently offers the _best yield of Infinite Dust_ per hour
		kill Mjordin Combatant##30037+ |goto Icecrown 37.6,22.8
		goldcollect 92 Infinite Dust##34054
		|meta crap_items_follow=1
		goldcollect 180 Frostweave Cloth##33470
		goldcollect 6 Lesser Cosmic Essence##34056
		goldcollect 2 Greater Cosmic Essence##34055
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Hypnotic Dust",{
	meta={goldtype="route",levelreq=82,skillreq={enchanting=475}},
	items={{52555,27},{52718,6,'crap'},{52719,5,'crap'},{53010,232,'crap'}},
	maps={"Deepholm"},
},[[
	step
		Hypnotic Dust is found by _disenchanting Uncommon Items_ (green quality) with an item levels of 272 to 333
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate instances on a high level main
		Killing Troggs currently offers the _best yield of Hypnotic Dust_ per hour
		map Deepholm
		path follow loose; loop on; ants curved; dist 20
		path	68.2,25.6	67.2,32.0	68.6,35.8
		path	69.0,42.6	73.0,45.0	77.2,42.8
		path	76.8,35.6	74.6,32.8	74.8,28.4
		path	72.2,26.6
		kill Verlok Shroomtender##43368+, Verlok Grubthumper##43367+ |tip Up above on the platforms
		goldcollect 27 Hypnotic Dust##52555
		|meta crap_items_follow=1
		goldcollect 6 Lesser Celestial Essence##52718
		goldcollect 5 Greater Celestial Essence##52719
		goldcollect 232 Embersilk Cloth##53010
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Spirit Dust",{
	meta={goldtype="route",levelreq=90,skillreq={enchanting=475}},
	items={{74249,126},{72988,308,'crap'},{89112,64,'crap'}},
	maps={"Townlong Steppes"},
},[[
	step
		Spirit Dust is found by _disenchanting Uncommon Items_ (green quality) with an item levels of 364 to 437
		Items in this level range can be _crafted_ by many professions or simply _farmed_ from level appropriate instances on a high level main
		Killing Sra'thik trash currently offers the _best yield of Spirit Dust_ per hour
		map Townlong Steppes
		path follow loose; loop on; ants curved; dist 20
		path	25.8,55.3	23.7,55.5	22.1,56.6
		path	21.0,57.7	20.8,55.9	20.7,54.4
		path	19.8,52.3	18.4,51.0	17.8,50.0
		path	19.1,48.9	19.7,47.8	21.0,50.3
		path	22.3,50.9	23.6,49.9	24.6,52.1
		path	25.8,53.5
		kill Sra'thik Regenerator##63681+, Sra'thik Mutilator##63678+, Sra'thik Drone##63677+, Sra'thik Swiftwing##63683+, Sra'thik Cacophyte##63680+, Sra'thik Will-Breaker##63684+
		goldcollect 126 Spirit Dust##74249
		|meta crap_items_follow=1
		goldcollect 308 Windwool Cloth##72988
		goldcollect 64 Mote of Harmony##89112 |n
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Draenic Dust",{
	meta={goldtype="route",levelreq=93,skillreq={enchanting=475}},
	items={{109693,105},{111557,364}},
	maps={"Gorgrond"},
},[[
	step
		Draenic Dust is found by _disenchanting_ Uncommon Items (green quality) or Rare items (blue quality) with an items level of 494 to 630
		Items in this level range can be crafted by many professions, farmed from level appropriate areas, completing missions, trading post, salvage cratss, or WoD dungeons
		Killing Tailthrasher trash currently offers the _best yield of Spirit Dust_ per hour
		map Gorgrond
		path follow loose; loop on; ants curved; dist 20
		path	46.8,89.8	46.4,91.4	45.3,93.0
		path	43.2,91.8	42.8,89.4	44.5,90.7
		path	44.6,89.2
		kill Tailthrasher Stalker##85718+, Tailthrasher Brute##85724+, Tailthrasher Ambusher##85703+, Tailthrasher Vinebender##85725+
		goldcollect 105 Draenic Dust##109693
		goldcollect 364 Sumptuous Fur##111557 |n
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])
-- Cooking Farming
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Buzzard Meat",{
	meta={goldtype="route",levelreq={64},itemtype="food"},
	items={{27671,176}},
	maps={"Terokkar Forest"},
},[[
	step
		map Terokkar Forest
		path follow loose; loop on; ants curved
		path	33.6,51.6	34.8,56.4	39.6,53.0
		path	45.0,56.6	47.2,62.6	47.4,70.0
		path	49.4,64.4	46.8,53.2	42.8,49.4
		path	39.0,48.8
		kill Bonelasher##18470+
		goldcollect 176 Buzzard Meat##27671 //used to cook Kibler's Bits - vanity food to increase hunter pet size - only long duration pet size food available
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Viseclaw Meat, Raw Crab Meat",{
	meta={goldtype="route",levelreq={86,87},itemtype="food"},
	items={{85506,116},{74838,164},{89112,56,'crap'}},
	maps={"Krasarang Wilds"},
},[[
	step
		map Krasarang Wilds
		path follow smart; loop on; ants curved
		path	52.3,47.5	56.4,49.8	57.4,43.9
		path	60.1,40.7	54.3,44.5
		from Flesh-Eating Sandsnapper##65823+, Viseclaw Scuttler##58881+, Viseclaw Fisher##58880+
		goldcollect 116 Viseclaw Meat##85506
		goldcollect 164 Raw Crab Meat##74838
		|meta crap_items_follow=1
		goldcollect 56 Mote of Harmony##89112
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Zesty Clam Meat, Black Pearl, Iridescent Pearl, Golden Pearl",{
	meta={goldtype="route",levelreq={56,57},itemtype="misc"},
	items={{7974,324},{7971,4},{5500,8},{13926,4},{14047,552,'crap'}},
	maps={"Blasted Lands"},
},[[
	step
		talk Zidormi##88206
		Tell her: "_Show me the Blasted Lands before the Invasion._" |havebuff 609811 |goto Blasted Lands 48.2,7.3 --spell_mage_altertime
	step
		map Blasted Lands
		path follow smart; loop on; ants curved
		path	72.9,61.3	71.3,63.2	70.1,71.3
		path	67.5,75.2	63.2,75.9	60.3,77.9
		path	58.5,76.6	59.0,73.2	60.4,70.0
		path	61.4,63.2	65.7,69.0	68.6,63.2
		path	70.9,60.6
		kill Bloodwash Enchantress##41387+, Bloodwash Barbarian##41386+, Bloodwash Gambler##41404+, Bloodwash Idolater##41405+
		goldcollect 324 Zesty Clam Meat##7974
		goldcollect 4 Black Pearl##7971
		goldcollect 8 Iridescent Pearl##5500
		goldcollect 4 Golden Pearl##13926
		|meta crap_items_follow=1
		goldcollect 552 Runecloth##14047
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Small Egg",{
	meta={goldtype="route",levelreq={12,13},itemtype="food"},
	items={{6889,272}},
	maps={"Westfall"},
},[[
	step
		kill Greater Fleshripper##154+ |goto Westfall 26.9,42.5
		goldcollect 272 Small Egg##6889
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Stringy Wolf Meat",{
	meta={goldtype="route",levelreq={9,10},itemtype="food"},
	items={{2672,404}},
	maps={"Tirisfal Glades"},
},[[
	step
		map Tirisfal Glades
		path follow smart; loop on; ants curved
		path	86.0,39.2	88.2,41.8	88.0,46.2
		path	87.6,47.6	82.8,51.0	81.4,51.6
		path	82.0,48.6	80.6,42.8	83.2,40.8
		kill Ravenous Darkhound##1549
		goldcollect 404 Stringy Wolf Meat##2672
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Chunk Of Boar Meat",{
	meta={goldtype="route",levelreq={10,13},itemtype="food"},
	items={{769,296}},
	maps={"Westfall"},
},[[
	step
		map Westfall
		path follow smart; loop on; ants curved
		path	60.8,36.6	59.2,31.4	53.8,25.6
		path	47.6,30.8	46.8,27.4	46.8,19.2
		path	49.0,16.6	53.0,17.8	55.6,16.2
		path	58.8,13.6	59.8,17.6	63.0,24.6
		path	61.6,27.6	61.0,32.6
		kill Young Goretusk##454+, Goretusk##157+
		goldcollect 296 Chunk of Boar Meat##769
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Tiger Steak",{
	meta={goldtype="route",levelreq=90,itemtype="food"},
	items={{74833,220},{89112,20,'crap'}},
	maps={"The Jade Forest"},
},[[
	step
		map The Jade Forest
		path follow smart; loop on; ants curved
		path	61.8,21.0	63.0,24.0	64.4,27.6
		path	61.2,26.6	60.8,26.0	61.6,23.2
		kill Windward Tiger##63537+, Windward Alpha##67085+
		goldcollect 220 Raw Tiger Steak##74833
		|meta crap_items_follow=1
		goldcollect 20 Mote of Harmony##89112
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mushan Ribs",{
	meta={goldtype="route",levelreq=90,itemtype="food"},
	items={{74834,132},{89112,16,'crap'}},
	maps={"Dread Wastes"},
},[[
	step
		map Dread Wastes
		path follow smart; loop on; ants curved
		path	48.8,21.4	46.8,20.4	48.4,18.6
		path	49.6,16.6	51.6,14.8	54.0,16.0
		path	51.2,16.8
		kill Frightened Mushan##62760+
		goldcollect 132 Mushan Ribs##74834
		|meta crap_items_follow=1
		goldcollect 16 Mote of Harmony##89112
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Turtle Meat",{
	meta={goldtype="route",levelreq={87,90},itemtype="food"},
	items={{74837,176},{89112,20,'crap'}},
	maps={"The Jade Forest"},
},[[
	step
		map The Jade Forest
		path follow smart; loop on; ants curved
		path	65.4,34.2	65.7,28.1	66.8,27.0
		path	69.3,26.4	69.3,30.7	68.4,32.5
		kill Saltback Turtle##58218+, Saltback Yearling##58219+
		goldcollect 176 Raw Turtle Meat##74837
		|meta crap_items_follow=1
		goldcollect 20 Mote of Harmony##89112
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Wildfowl Breast",{
	meta={goldtype="route",levelreq=87,itemtype="food"},
	items={{74839,304},{89112,16,'crap'}},
	maps={"Valley of the Four Winds"},
},[[
	step
		kill Whitefisher Crane##56752+ |goto Valley of the Four Winds 25.4,43.8
		goldcollect 304 Wildfowl Breast##74839
		|meta crap_items_follow=1
		goldcollect 16 Mote of Harmony##89112
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Crocolisk Belly",{
	meta={goldtype="route",levelreq=90,itemtype="food"},
	items={{75014,128},{89112,4,'crap'}},
	maps={"Dread Wastes"},
},[[
	step
		kill Coldbite Crocolisk##62023+ |goto Dread Wastes 64.7,59.0
		goldcollect 128 Raw Crocolisk Belly##75014
		|meta crap_items_follow=1
		goldcollect 4 Mote of Harmony##89112
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Jaggal Clam Meat, Jaggal Pearl, Shadow Pearl",{
	meta={goldtype="route",levelreq={68,70},itemtype="food"},
	items={{24477,88},{24479,8},{24478,12}},
	maps={"Shadowmoon Valley"},
},[[
	step
		_Clear the Naga outside_ then enter the cave
		from Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+, Keeper of the Cistern##20795+, Coilskar Muckwatcher##19788+ |goto Shadowmoon Valley 52.9,26.1
		use Jaggal Clam##24476
		goldcollect 88 Jaggal Clam Meat##24477
		goldcollect 8 Shadow Pearl##24479
		goldcollect 12 Jaggal Pearl##24478
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Siren's Tear, Northsea Pearl",{
	meta={goldtype="route",levelreq={69,70},itemtype="gem"},
	items={{36784,4},{36783,8}},
	maps={"Borean Tundra"},
},[[
	step
		map Borean Tundra
		path follow smart; loop on; ants curved
		path	41.5,18.7	41.0,16.1	39.1,15.4
		path	37.3,15.5	38.4,17.0	40.0,19.6
		from Winterfin Warrior##25217+, Winterfin Shorestriker##25215+, Winterfin Oracle##25216+
		goldcollect 4 Siren's Tear##36784
		goldcollect 8 Northsea Pearl##36783
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raptor Egg, Raptor Hide, Raptor Flesh, Large Fang",{
	meta={goldtype="route",levelreq={28,29},itemtype="food"},
	items={{3685,284},{4461,108},{12184,248},{5637,8}},
	maps={"Arathi Highlands"},
},[[
	step
		map Arathi Highlands
		path follow smart; loop on; ants curved
		path	42.8,83.6	40.2,82.2	37.6,75.1
		path	45.4,66.2	48.8,66.8	49.6,67.8
		path	48.6,69.6	42.0,76.2	
		kill Highland Fleshstalker##2561+
		goldcollect 284 Raptor Egg##3685
		goldcollect 108 Raptor Hide##4461
		goldcollect 248 Raptor Flesh##12184
		goldcollect 8 Large Fang##5637
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Boar Meat, Rylak Egg",{
	meta={goldtype="route",levelreq=91,itemtype="food"},
	items={{109136,104},{109133,52},{111557,272,'crap'}},
	maps={"Frostfire Ridge"},
},[[
	step
		map Frostfire Ridge
		path follow smart; loop on; ants curved; dist 20
		path	50.6,55.0	48.2,56.3	47.6,59.6
		path	40.6,63.4	36.7,56.6	41.0,58.6
		path	42.9,57.0	45.6,59.2	47.6,54.0
		kill Coldsnout Boar##75416+, Coldsnout Sow##79756+, Pack Boar##80174+, Glacial Icemaw##78314+
		goldcollect 104 Raw Boar Meat##109136
		goldcollect 52 Rylak Egg##109133
		|meta crap_items_follow=1
		goldcollect 272 Sumptuous Fur##111557
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Talbuk Meat",{
	meta={goldtype="route",levelreq=100,itemtype="food"},
	items={{109132,132},{111557,156,'crap'}},
	maps={"Nagrand D"},
},[[
	step
		Proceeding
	step
		map Nagrand D
		path follow smart; loop on; ants curved; dist 30
		path	62.2,37.4	53.8,37.6	59.8,28.4
		path	63.6,20.0	63.6,32.6	69.6,35.2
		path	74.8,40.2	79.8,40.6	83.2,48.4
		path	82.0,54.6	72.8,57.2	66.6,58.0
		path	60.6,50.6	66.6,45.8
		kill Thorncoat Talbuk##86727+, Breezestrider Talbuk##78278+, Breezestrider Stallion##78279+, Breezestrider Colt##78277+
		goldcollect 132 Raw Talbuk Meat##109132
		|meta crap_items_follow=1
		goldcollect 156 Sumptuous Fur##111557 |n
		collect 150 Hearty Soup Bone##113578 |n
		goldtracker
		_Click here_ to sell items |confirm
	step
	label "bone"
		Sell all your soup bones before going to the Auctioneer
		talk Meatgut##82727
		accept Meatgut Needs Bones##35928 |goto 78.34,52.45 |instant |repeatable
		only if itemcount(113578) >= 20
	step
		Proceedint to Bone turn in |next "bone" |only if itemcount(113578) >= 20
		Proceeding to Auctioneer |next |only if default
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Riverbeast Meat",{
	meta={goldtype="route",levelreq=96,itemtype="food"},
	items={{109135,76}},
	maps={"Talador"},
},[[
	step
		map Talador
		path follow smart; loop on; ants curved
		path	67.4,49.2	64.6,46.8	61.8,49.6
		path	64.0,55.2	64.8,61.4	69.6,64.6
		path	68.4,60.0
		kill Young Riverwallow##86848+, Riverwallower##79577+
		goldcollect 76 Raw Riverbeast Meat##109135
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Clefthoof Meat",{
	meta={goldtype="route",levelreq=99,itemtype="food"},
	items={{109131,168},{111557,328,'crap'}},
	maps={"Nagrand D"},
},[[
	step
		kill Tamed Clefthoof##79034+ |goto Nagrand D 79.6,72.8
		goldcollect 168 Raw Clefthoof Meat##109131
		|meta crap_items_follow=1
		goldcollect 328 Sumptuous Fur##111557
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])
-- Elemental Farming
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Frozen Orb, Chaos Orb",{
	meta={goldtype="route",levelreq=80,elitemobs=1,itemtype="gem"},
	items={{43102,1},{52078,1}},
	maps={"Dalaran","Borean Tundra","Deepholm","Tanaris","Vashj'ir","Dragonblight","Twilight Highlands","The Storm Peaks","Zul'Drak","Uldum","Ghostlands","Northern Stranglethorn","Howling Fjord","Grizzly Hills","Burning Steppes","Icecrown"},
},[[
	step
		Frozen orbs come from the _last boss of Heroic Wrath of the Lich King_ instances
		_Click_ the one you want to complete if you need help locating it
		Ahn'Kahet _Average_ of 10 min|goto Dragonblight/0 28.4,51.7
		Azjol-Nerub _Average_ of 5 min|goto Dragonblight/0 26.0,50.8
		Culling of Stratholme _Average_ of 10 min|goto Tanaris/18 57.5,82.7
		Drak'Tharon Keep _Average_ of 8 min|goto Grizzly Hills/0 17.4,21.2
		Forge of Souls _Average_ of 5 min|goto Icecrown/0 54.9,89.8
		Gundrak _Average_ of 8 min|goto Zul'Drak/0 81.2,28.9
		Halls of Lightning _Average_ 8 min|goto The Storm Peaks/0 45.4,21.4
		Halls of Reflection _Average_ of 15 min|goto Icecrown/0 55.3,90.8
		Halls of Stone _Average_ 10 min|goto The Storm Peaks/0 39.6,26.9
		Nexus _Average_ of 10 min|goto Borean Tundra/0 27.5,26.1
		Oculus _Average_ 10 min|goto Borean Tundra/0 27.5,26.8
		Pit of Saron _Average_ of 10 min|goto Icecrown/0 54.8,91.7
		Trial of the Champion _Average_ of 10 min|goto Icecrown/0 74.2,20.5
		Utgarde Keep _Average_ 7 min|goto Howling Fjord/0 57.3,46.8
		Utgarde Pinnacle _Average_ 8 min|goto Howling Fjord/0 57.3,46.6
		Violet Hold _Average_ 11 min|goto Dalaran/1 68.3,70.0
		goldcollect 1 Frozen Orb##43102
		goldtracker
		_Click here_ to continue to Chaos Orbs |confirm
	step
		Chaos orbs come from the _last boss of Heroic Cataclysm_ instances
		_Click_ the one you want to complete if you need help locating it
		Blackrock Caverns _Average_ of 10 min|goto Burning Steppes/15 70.6,53.6
		End Time _Average_ of 10 min|goto Tanaris/18 57.3,29.5
		Grim Batol _Average_ of 12 min|goto Twilight Highlands/0 19.2,54.1
		Hall of Origination _Average_ of 15 min|goto Uldum/0 69.1,52.9
		Hour of Twilight _Average_ of 15 min|goto Tanaris/18 67.1,29.3
		Lost City of the Tol'vir _Average_ of 10 min|goto Uldum/0 60.5,64.2
		Stonecore _Average_ of 10 min|goto Deepholm/0 47.6,52.0
		Throne of the Tides _Average_ of 10 min|goto Vashj'ir 71.0,29.0
		Vortex Pinnacle _Average_ of 10 min|goto Uldum/0 76.7,84.4
		Well of Eternity _Average_ of 12 min|goto Tanaris/18 22.4,64.3
		Zul'Aman _Average_ of 15 min|goto Ghostlands/0 82.1,64.3
		Zul'Gurub _Average_ of 15 min|goto Northern Stranglethorn/0 72.1,32.9
		goldcollect 1 Chaos Orb##52078
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Essence Of Undeath",{
	meta={goldtype="route",levelreq={51,52},itemtype="elemental"},
	items={{12808,12},{4338,188,'crap'},{4306,128,'crap'}},
	maps={"Winterspring"},
},[[
	step
		map Winterspring
		path follow smart; loop on; ants curved
		path	48.6,53.4	52.6,52.6	54.4,54.6
		path	53.8,57.6	50.8,57.2	48.6,57.8
		path	46.8,53.8
		kill Anguished Highborne##7524+, Suffering Highborne##7523+, Wretched Spectre##48665+, Betrayed Ranger##48670+, Wretched Spirit##48664+ 
		|tip Enter the buildings and kill the mobs inside as well
		goldcollect 12 Essence of Undeath##12808
		|meta crap_items_follow=1
		goldcollect 188 Mageweave Cloth##4338
		goldcollect 128 Runecloth##4306
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Ichor Of Undeath",{
	meta={goldtype="route",levelreq={41,42},elitemobs=1,itemtype="elemental"},
	items={{7972,6},{4338,324,'crap'},{4306,150,'crap'}},
	maps={"Scholomance"},
},[[
	step	
		kill Risen Guard##58822+, Reanimated Corpse##59501+ |goto Scholomance/2 59.6,19.1
		goldcollect 6 Ichor of Undeath##7972
		|meta crap_items_follow=1
		goldcollect 324 Mageweave Cloth##4338
		goldcollect 150 Silk Cloth##4306
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Fire",{
	meta={goldtype="route",levelreq=85,itemtype="elemental"},
	items={{52325,140}},
	maps={"Mount Hyjal"},
},[[
	step
		map Mount Hyjal
		path follow loose; loop on; ants curved
		path	15.9,46.2	18.0,55.5	20.5,59.4
		path	23.3,59.9	24.8,60.5
		path	32.5,63.6	32.6,58.7	34.7,57.0
		path	39.7,53.2	38.1,51.0	35.9,51.7
		kill Raging Firestorm##39939+, Fiery Tormentor##41396+
		goldcollect 140 Volatile Fire##52325
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Water",{
	meta={goldtype="route",levelreq=84,itemtype="elemental"},
	items={{52326,88}},
	maps={"Twilight Highlands"},
},[[
	step
		map Twilight Highlands
		path follow loose; loop on; ants curved
		path	70.9,50.3	69.8,47.8	67.7,44.7
		path	65.2,41.5	63.1,41.5	63.5,44.1
		path	65.8,46.9	67.1,51.2
		kill Muddied Water Elemental##44011+
		goldcollect 88 Volatile Water##52326
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Air",{
	meta={goldtype="route",levelreq=83,itemtype="elemental"},
	items={{52328,76}},
	maps={"Uldum"},
},[[
	step
		map Uldum
		path follow smart; loop on; ants curved
		path	39.6,36.2	44.4,36.8	42.8,42.2
		path	38.6,47.0	37.0,43.2
		kill Scion of Al'Akir##45755+
		goldcollect 76 Volatile Air##52328
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Earth",{
	meta={goldtype="route",levelreq=84,itemtype="elemental"},
	items={{52327,92}},
	maps={"Twilight Highlands"},
},[[
	step
		map Twilight Highlands
		path follow smart; loop on; ants curved
		path	61.4,31.0	60.6,34.6	57.4,33.6
		path	54.8,30.6	55.8,27.4	58.6,28.2
		path	59.6,29.4
		kill Obsidian Stoneslave##47226+
		goldcollect 92 Volatile Earth##52327
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Air, Crystallized Air",{
	meta={goldtype="route",levelreq={70,71},itemtype="elemental"},
	items={{37700,180}},
	maps={"Borean Tundra"},
},[[
	step
		map Borean Tundra
		path follow smart; loop on; ants curved
		path	45.4,6.8	46.0,7.4	46.0,10.6
		path	44.4,11.6	42.8,10.6	42.2,9.4
		path	44.4,8.0
		kill Enraged Tempest##25415+
		goldcollect 180 Crystallized Air##37700
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Earth, Crystallized Earth",{
	meta={goldtype="route",levelreq=76,itemtype="elemental"},
	items={{37701,164}},
	maps={"Sholazar Basin"},
},[[
	step
		map Sholazar Basin
		path follow smart; loop on; ants curved
		path	68.6,54.0	71.2,55.0	73.4,55.0
		path	75.0,56.0	73.6,59.8	71.4,61.2
		path	66.6,63.6	64.8,59.8
		kill Lifeblood Elemental##29124+
		goldcollect 164 Crystallized Earth##37701
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Fire, Crystallized Fire",{
	meta={goldtype="route",levelreq={79,80},itemtype="elemental"},
	items={{37702,124}},
	maps={"The Storm Peaks"},
},[[
	step
		map The Storm Peaks
		path follow loose; loop on; ants curved
		path	76.0,63.4	72.3,64.4
		path	68.2,63.4	69.2,58.0	71.0,56.0
		kill Seething Revenant##29504+
		goldcollect 124 Crystallized Fire##37702
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Life, Crystallized Life",{
	meta={goldtype="route",levelreq=80,itemtype="elemental"},
	items={{37704,164}},
	maps={"Wintergrasp"},
},[[
	step
		map Wintergrasp
		path follow smart; loop on; ants curved
		path	11.6,60.0	13.1,63.7	10.4,64.7
		path	6.3,65.0	5.2,59.0	6.9,57.9
		kill Living Lasher##30845+, Mature Lasher##34300+
		goldcollect 164 Crystallized Life##37704
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Shadow, Crystallized Shadow",{
	meta={goldtype="route",levelreq={72,73},itemtype="elemental"},
	items={{37703,256}},
	maps={"Dragonblight"},
},[[
	step
		_Enter_ the cave |goto Dragonblight/0 74.3,23.6 < 20
		kill Deathbringer Revenant##27382+ |goto Dragonblight/0 75.0,20.8
		goldcollect 256 Crystallized Shadow##37703
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Water, Crystallized Water",{
	meta={goldtype="route",levelreq={72,73},itemtype="elemental"},
	items={{37705,112}},
	maps={"Dragonblight"},
},[[
	step
		map Dragonblight
		path follow smart; loop on; ants curved
		path	68.6,50.8	68.6,52.0	67.8,55.8
		path	66.4,55.0	66.2,53.0	66.6,51.4
		kill Ice Revenant##26283+
		goldcollect 112 Crystallized Water##37705
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Air",{
	meta={goldtype="route",levelreq={69,70},itemtype="elemental"},
	items={{22572,36}},
	maps={"Shadowmoon Valley"},
},[[
	step
		map Shadowmoon Valley
		path follow loose; loop on; ants curved
		path	58.8,59.8	60.8,59.8	63.0,61.0
		path	64.8,61.6	66.0,63.6	62.2,64.2
		path	61.2,67.6	59.6,71.6	57.0,73.6
		path	55.4,72.0	58.2,70.6	59.2,65.4
		path	62.0,61.8
		kill Enraged Air Spirit##21060+
		goldcollect 36 Mote of Air##22572
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Earth",{
	meta={goldtype="route",levelreq={66,67},itemtype="elemental"},
	items={{22573,64}},
	maps={"Nagrand"},
},[[
	step
		map Nagrand
		path follow loose; loop on; ants curved
		path	25.3,71.8	27.4,77.0	28.4,81.6
		path	31.8,81.9	36.4,83.4	41.0,84.7
		path	38.1,80.9	30.5,74.9
		kill Shattered Rumbler##17157+
		goldcollect 64 Mote of Earth##22573
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Fire",{
	meta={goldtype="route",levelreq={70,71},itemtype="elemental"},
	items={{22574,108}},
	maps={"Hellfire Peninsula"},
},[[
	step
		map Hellfire Peninsula
		path follow loose; loop on; ants curved
		path	57.8,17.8	60.8,18.8	63.6,18.2
		path	66.2,17.6	67.0,17.8	67.8,20.2
		path	65.6,19.8	63.2,20.6	60.6,23.4
		path	57.4,22.8	58.2,19.6
		kill Incandescent Fel Spark##22323+
		goldcollect 108 Mote of Fire##22574
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Mana",{
	meta={goldtype="route",levelreq={68,69},itemtype="elemental"},
	items={{22576,168}},
	maps={"Netherstorm"},
},[[
	step
		map Netherstorm
		path follow loose; loop on; ants curved
		path	54.7,88.0	56.8,85.6	57.4,87.1
		path	55.3,89.7	54.5,90.2
		kill Mageslayer##18866+, Mana Seeker##18867+
		goldcollect 168 Mote of Mana##22576
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Life",{
	meta={goldtype="route",levelreq={61,62},itemtype="elemental"},
	items={{22575,160}},
	maps={"Zangarmarsh"},
},[[
	step
		map Zangarmarsh
		path follow loose; loop on; ants curved
		path	85.4,38.2	85.1,41.0	83.2,44.1
		path	81.0,43.4	79.3,41.1	78.7,38.3
		path	79.4,33.7	82.0,32.3
		kill Withered Giant##18124+, Withered Bog Lord##19402+
		goldcollect 160 Mote of Life##22575
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Shadow",{
	meta={goldtype="route",levelreq={65,66},itemtype="elemental"},
	items={{22577,124},{21877,412,'crap'}},
	maps={"Nagrand"},
},[[
	step
		map Nagrand
		path follow loose; loop on; ants curved
		path	43.6,69.6	43.2,71.4	41.2,75.0
		path	38.2,79.0	35.6,77.6	31.6,77.4
		path	30.8,74.0	31.2,69.4	29.6,67.6
		path	31.0,65.8	34.0,66.6	36.6,65.4
		path	38.8,62.2	41.6,62.2	42.0,66.6
		kill Voidspawn##17981+
		goldcollect 124 Mote of Shadow##22577
		|meta crap_items_follow=1
		goldcollect 412 Netherweave Cloth##21877
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Water",{
	meta={goldtype="route",levelreq={64,66},itemtype="elemental"},
	items={{22578,92}},
	maps={"Nagrand"},
},[[
	step
		map Nagrand
		path follow loose; loop on; ants curved
		path	44.5,46.5	40.6,46.1	41.6,40.4
		path	43.3,40.4	44.4,42.3
		kill Muck Spawn##17154
		goldcollect 92 Mote of Water##22578
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Globe Of Water, Essence Of Water, Elemental Water",{
	meta={goldtype="route",levelreq={54,55},itemtype="elemental"},
	items={{7079,24},{7080,16},{7070,40}},
	maps={"Swamp of Sorrows"},
},[[
	step
		map Swamp of Sorrows
		path follow loose; loop on; ants curved
		path	17.2,55.7	16.7,60.5	16.5,66.1
		path	20.0,65.8	21.0,59.3	21.0,55.1
		kill Purespring Elemental##46953+
		goldcollect 24 Globe of Water##7079
		goldcollect 16 Essence of Water##7080
		goldcollect 40 Elemental Water##7070
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Breath Of Wind, Essence Of Air, Elemental Air",{
	meta={goldtype="route",levelreq={54,55},itemtype="elemental"},
	items={{7069,40},{7081,32},{7082,24}},
	maps={"Silithus"},
},[[
	step
		map Silithus
		path follow loose; loop on; ants curved
		path	40.8,14.0	38.6,17.6	35.6,22.8
		path	31.6,26.6	29.6,28.6	28.0,30.8
		path	26.4,29.0	25.2,27.0	26.6,24.4
		path	28.2,18.4	29.6,21.6	34.8,19.0
		path	36.4,15.2	39.6,14.0
		kill Dust Stormer##11744+
		goldcollect 40 Elemental Air##7069
		goldcollect 32 Breath of Wind##7081
		goldcollect 24 Essence of Air##7082
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Core Of Earth, Essence Of Earth, Elemental Earth",{
	meta={goldtype="route",levelreq={51,52},itemtype="elemental"},
	items={{7075,40},{7067,16},{7076,8}},
	maps={"Winterspring"},
},[[
	step
		map Winterspring
		path follow loose; loop on; ants curved
		path	57.8,56.2	60.6,56.6	61.6,58.6
		path	60.4,60.2	58.8,60.0	57.6,58.4
		kill Frostshard Rumbler##48960+
		goldcollect 40 Core of Earth##7075
		goldcollect 16 Elemental Earth##7067
		goldcollect 8 Essence of Earth##7076
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Essence Of Fire, Elemental Fire, Heart of Fire",{
	meta={goldtype="route",levelreq={52,53},itemtype="elemental"},
	items={{7078,24},{7068,48},{7077,16}},
	maps={"Un'Goro Crater"},
},[[
	step
		map Un'Goro Crater
		path follow loose; loop on; ants curved
		path	54.4,56.2	53.4,51.0	55.1,48.7
		path	54.5,44.0	52.7,42.5	52.2,45.5
		path	49.3,48.4	48.6,43.9	46.3,46.5
		path	45.5,51.3	47.5,53.6	50.2,54.3
		kill Living Blaze##6521+, Blazerunner##9376+
		goldcollect 24 Essence of Fire##7078
		goldcollect 48 Elemental Fire##7068
		goldcollect 16 Heart of Fire##7077
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])
-- Gem Farming
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tigerseye, Malachite",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=20},levelreq=10},
	items={{2770,1},{2835,1},{774,96},{818,72},{1210,76}},
	maps={"Durotar","Darkshore"},
},[[
	step
		Copper ore is _most abundant_ in Durotar and Darkshore. Please select where you would like to farm. 
		|tip While they yield the same spawn locations for ore Darkshore seems to yield more based on a much smaller local player population.
		_Click here_ to farm in Durotar |confirm |next "durotar"
		_Click here_ to farm in Darkshore |confirm |next
	step
		map Darkshore
		path follow smart; loop on; ants curved; dist 20
		path	56.3,17.4	59.4,9.3	65.6,4.4
		path	63.3,16.2	60.2,25.3	54.4,33.6
		path	50.6,27.7	48.9,38.7	47.3,50.9
		path	45.5,59.2	46.2,71.4	46.6,79.1
		path	40.0,86.4	35.3,88.9	32.5,83.5
		path	36.8,72.4	40.1,59.0	39.7,44.8
		path	37.9,32.4	42.7,31.9	44.6,20.0
		path	54.7,20.7
		_Mine Copper Veins_ along the path
		goldcollect Copper Ore##2770 |n //748
		goldcollect Rough Stone##2835 |n //732
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 96 Malachite##774
		goldcollect 72 Tigerseye##818
		goldcollect 76 Shadowgem##1210 |n
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "durotar"
		map Durotar
		path follow smart; loop on; ants curved; dist 20
		path	55.1,10.2	53.8,18.5	56.3,24.6
		path	52.7,29.3	54.0,39.8	58.7,41.5
		path	59.5,54.3	55.7,56.0	56.1,69.4
		path	50.8,74.2	52.3,66.7	49.8,49.2
		path	39.4,51.8	37.9,30.4	39.6,17.6
		path	42.8,19.7	44.6,24.6	48.0,36.6
		path	49.6,32.1	50.5,27.3	50.0,22.6
		path	49.8,16.8
		_Mine Copper Veins_ along the path
		goldcollect Copper Ore##2770 |n //528
		goldcollect Rough Stone##2835 |n //492
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 80 Malachite##774
		goldcollect 56 Tigerseye##818
		goldcollect 36 Shadowgem##1210 |n
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shadowgem, Moss Agate, Lesser Moonstone, Jade",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=50},levelreq=25},
	items={{2771,1},{2836,1},{1210,36},{1206,28},{1705,48},{1529,4},{3864,4},{7909,4},{2775,40}},
	maps={"Northern Stranglethorn","Ashenvale"},
},[[
	step
		Tin ore is _most abundant_ in Ashenvale and Northern Stranglethorn. Please select where you would like to farm. 
		|tip While they yield about the same spawn locations for ore Ashenvale's trees are not as dense so flying around searching for veins is much easier.
		_Click here_ to farm in Northern Stranglethorn |confirm |next "northern"
		_Click here_ to farm in Ashenvale |confirm |next
	step
		map Ashenvale
		path follow loose; loop on; ants curved
		path	41.8,40.3	41.6,32.5	31.3,38.3
		path	33.7,21.5	24.9,30.0	26.0,18.0
		path	15.0,14.1	17.3,28.2	20.9,42.2
		path	20.9,55.5	29.7,50.8	33.7,69.8
		path	42.3,62.6	45.3,71.6	59.6,77.8
		path	56.5,64.8	67.0,69.1	76.7,73.7
		path	87.5,79.7	79.5,47.1	66.0,56.5
		path	61.9,42.6	54.3,36.7	50.9,54.5
		_Mine Tin Veins_ along the path
		goldcollect Tin Ore##2771 |n // 476
		goldcollect Coarse Stone##2836 |n // 636
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 36 Shadowgem##1210
		goldcollect 28 Moss Agate##1206
		goldcollect 48 Lesser Moonstone##1705
		goldcollect 4 Jade##1529
		goldcollect 4 Citrine##3864
		goldcollect 4 Aquamarine##7909
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "northern"
		map Northern Stranglethorn
		path follow loose; loop on; ants curved
		path	40.4,45.0	36.3,44.1	34.0,38.8
		path	31.1,34.1	27.0,31.8	21.4,25.2
		path	21.8,18.7	26.6,21.9	31.1,22.4
		path	34.6,20.9	33.8,17.2	38.5,17.9
		path	46.3,19.1	52.5,20.5	58.6,16.8
		path	63.5,17.5	63.2,22.1	60.3,24.3
		path	57.2,28.2	60.8,34.6	66.1,40.9
		path	62.9,47.1	56.2,50.4	48.0,55.2
		path	44.3,55.5	48.7,47.2	47.7,39.2
		path	50.2,28.6	44.6,28.2	42.9,34.7
		path	41.4,41.2
		_Mine Tin Veins_ along the path 
		|tip Silver cannot be prospected but can generate additional income
		goldcollect 40 Silver Ore##2775
		goldcollect Tin Ore##2771 |n // 540
		goldcollect Coarse Stone##2836 |n // 684
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 40 Shadowgem##1210
		goldcollect 36 Moss Agate##1206
		goldcollect 60 Lesser Moonstone##1705
		goldcollect 4 Jade##1529
		goldcollect 4 Citrine##3864
		goldcollect 4 Aquamarine##7909
		goldtracker
		_Click here_ to sell items |confirm
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Citrine, Aquamarine",{
	meta={goldtype="route",skillreq={mining=150,jewelcrafting=175},levelreq={44,48}},
	items={{7911,52},{3858,1},{2776,1},{7912,1},{7909,84},{3864,64},{7910,72},{12361,12},{12799,8}},
	maps={"Burning Steppes","Badlands"},
},[[
	step
		Mithril ore is _most abundant_ in Badlands and Burning Steppes. Please select where you would like to farm.
		_Click here_ to farm in Badlands |confirm |next "badlands"
		_Click here_ to farm in Burning Steppes |confirm |next
	step
		map Burning Steppes
		path follow loose; loop on; ants curved	
		path	31.3,59.8	21.5,62.0	15.6,62.1
		path	7.8,56.4	9.3,45.8	21.6,47.0
		path	31.2,43.6	39.2,33.4	46.4,28.1
		path	52.8,29.0	50.3,44.6	59.2,38.8
		path	59.9,27.5	68.2,25.2	74.6,27.1
		path	81.6,30.4	71.2,36.0	65.5,42.1
		path	66.9,49.5	72.2,50.1	73.7,43.5
		path	80.1,41.0	81.7,54.6	81.6,62.6
		path	76.2,58.4	72.6,67.5	68.6,61.9
		path	61.5,60.5	56.2,49.0	51.5,60.0
		path	44.2,65.5	37.5,60.0
		_Mine_ Mithril Deposit along the path 
		|tip Truesilver and Gold cannot be prospected but can generate additional income
		goldcollect 52 Truesilver Ore##7911
		goldcollect Mithril Ore##3858 |n //680
		goldcollect Gold Ore##2776 |n //32
		goldcollect Solid Stone##7912 |n //828
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 84 Aquamarine##7909
		goldcollect 64 Citrine##3864
		goldcollect 72 Star Ruby##7910
		goldcollect 12 Blue Sapphire##12361
		goldcollect 8 Large Opal##12799
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "badlands"
		map Badlands
		path follow smart; loop on; ants curved
		path	70.2,28.8	72.0,25.6	73.5,31.0
		path	72.6,38.1	73.7,43.2	75.0,48.5
		path	69.5,53.7	66.5,57.2	62.5,46.5
		path	59.0,42.5	56.5,47.2	57.5,59.8
		path	50.1,65.3	44.6,57.2	41.2,66.6
		path	32.7,62.6	26.3,63.6	14.0,69.9
		path	13.6,77.3	11.4,78.5	12.7,58.2
		path	11.7,49.4	10.7,38.7	15.2,35.9
		path	25.0,38.6	35.9,32.2	45.0,24.5
		path	50.0,12.2	52.8,21.8	59.8,29.7
		_Mine Mithril Deposits_ along the path 
		|tip Truesilver and Gold cannot be prospected but can generate additional income
		goldcollect 36 Truesilver Ore##7911
		goldcollect Mithril Ore##3858 |n //210
		goldcollect Gold Ore##2776 |n //72
		goldcollect Solid Stone##7912 |n //300
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 56 Aquamarine##7909
		goldcollect 48 Citrine##3864
		goldcollect 52 Star Ruby##7910
		goldcollect 8 Blue Sapphire##12361
		goldcollect 4 Large Opal##12799
		goldtracker
		_Click here_ to sell items |confirm
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Huge Emerald, Large Opal, Azerothian Diamond, Blue Sapphire, Star Ruby",{
	meta={goldtype="route",skillreq={jewelcrafting=250,mining=200},levelreq={50,55}},
	items={{7911,28},{10620,1},{12365,1},{12363,16},{12800,24},{7910,24},{12364,32},{12799,60},{12361,56},{7909,8},{3864,4}},
	maps={"Winterspring","Silithus"},
},[[
	step
		Thorium ore is _most abundant_ in Winterspring and Silithus. Please select where you would like to farm.
		_Click here_ to farm in Winterspring |confirm |next "winterspring"
		_Click here_ to farm in Silithus |confirm |next
	step
		map Silithus
		path follow loose; loop on; ants curved	
		path	47.9,18.4	58.6,11.1	67.5,15.4
		path	68.7,23.6	71.9,28.5	72.5,39.5
		path	66.7,44.7	62.3,35.4	53.4,45.0
		path	66.9,54.1	67.3,63.0	68.9,71.5
		path	66.3,83.0	56.4,83.0	48.5,79.1
		path	40.5,80.9	24.5,78.8	28.3,68.0
		path	34.0,65.1	25.6,57.1	27.8,43.5
		path	27.2,32.6	28.5,16.2	28.8,10.2
		path	35.0,12.0	35.5,24.0	43.9,15.2
		_Mine_ Thorium Veins along the path 
		|tip Truesilver cannot be prospected but can generate additional income
		goldcollect 28 Truesilver Ore##7911
		goldcollect Thorium Ore##10620 |n //556
		goldcollect Dense Stone##12365 |n //780
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 16 Arcane Crystal##12363
		goldcollect 24 Azerothian Diamond##12800
		goldcollect 24 Star Ruby##7910
		goldcollect 32 Huge Emerald##12364
		goldcollect 60 Large Opal##12799
		goldcollect 56 Blue Sapphire##12361
		goldcollect 8 Aquamarine##7909
		goldcollect 4 Citrine##3864
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "winterspring"
		map Winterspring
		path follow smart; loop on; ants curved
		path	58.1,44.2	60.1,36.2	59.6,28.5
		path	58.8,19.8	54.5,21.2	49.9,18.3
		path	44.9,14.0	46.0,24.6	48.3,37.1
		path	49.8,44.5	42.0,48.3	33.5,47.2
		path	29.1,52.2	23.5,46.1	22.3,62.4
		path	28.0,58.4	37.1,58.4	45.3,57.4
		path	48.9,60.7	53.7,63.6	55.6,74.4
		path	56.6,80.1	62.6,80.9	63.2,72.1
		path	67.5,62.3	60.5,61.5	
		_Mine Thorium Veins_ along the path 
		|tip Truesilver cannot be prospected but can generate additional income
		goldcollect 56 Truesilver Ore##7911
		goldcollect Thorium Ore##10620 |n //644
		goldcollect Dense Stone##12365 |n //836
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 20 Arcane Crystal##12363
		goldcollect 28 Azerothian Diamond##12800
		goldcollect 24 Star Ruby##7910
		goldcollect 40 Huge Emerald##12364
		goldcollect 64 Large Opal##12799
		goldcollect 68 Blue Sapphire##12361
		goldcollect 8 Aquamarine##7909
		goldcollect 4 Citrine##3864
		goldtracker
		_Click here_ to sell items |confirm
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Golden Draenite, Azure Moonstone, Blood Garnet, Deep Peridot, Flame Spessarite, Shadow Draenite",{
	meta={goldtype="route",skillreq={jewelcrafting=275,mining=275},levelreq={58,63}},
	items={{23427,16},{23424,1},{23425,1},{22573,1},{22574,1},{23112,12},{23077,4},{23079,8},{23117,28},{21929,16},{23107,12}},
	maps={"Zangarmarsh","Hellfire Peninsula"},
},[[
	step
		Fel Iron ore is _most abundant_ in Hellfire Peninsula and Zangarmarsh. Please select where you would like to farm.
		_Click here_ to farm in Hellfire Peninsula |confirm |next "hellfire"
		_Click here_ to farm in Zangarmarsh |confirm |next
	step
		map Zangarmarsh
		path follow loose; loop on; ants curved
		path	49.5,66.9	58.8,70.5	66.6,74.9
		path	69.1,87.0	72.2,87.3	74.8,91.8
		path	86.3,90.7	85.7,79.0	82.2,69.5
		path	81.8,62.0	83.5,58.9	87.4,55.7
		path	87.0,46.2	88.5,36.9	86.3,27.8
		path	77.6,29.5	72.1,32.7	70.2,36.5
		path	63.9,33.1	54.7,32.8	46.2,29.5
		path	41.0,30.2	34.6,14.8	31.5,20.9
		path	20.7,16.6	20.2,8.9	20.8,4.0
		path	16.5,5.8	16.2,14.7
		path	14.8,30.6	10.0,44.8	7.1,49.8
		path	10.5,63.9	15.9,64.4	17.6,70.0
		path	25.5,69.1	27.7,60.2	36.8,67.0
		_Mine_ Fel Iron and Adamantite Deposits along the path 
		|tip Eternium cannot be prospected but can generate additional income
		goldcollect 16 Eternium Ore##23427
		goldcollect Fel Iron Ore##23424 |n //208
		goldcollect Adamantite Ore##23425 |n //52
		goldcollect Mote of Earth##22573 |n //60
		goldcollect Mote of Fire##22574 //24
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 12 Golden Draenite##23112
		goldcollect 4 Blood Garnet##23077
		goldcollect 8 Deep Peridot##23079
		goldcollect 28 Azure Moonstone##23117
		goldcollect 16 Flame Spessarite##21929
		goldcollect 12 Shadow Draenite##23107
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "hellfire"
		map Hellfire Peninsula
		path follow smart; loop on; ants curved; dist 20
		path	69.3,47.5	74.5,38.7	68.2,37.7
		path	62.0,31.0	58.0,32.8	54.0,26.7
		path	46.0,29.3	34.1,29.1	32.0,34.5
		path	38.5,38.2	35.7,40.7	33.4,49.8
		path	30.3,48.6	32.5,43.3	28.5,39.3
		path	26.5,45.5	22.6,45.1	18.0,38.3
		path	12.5,36.1	17.9,46.3	11.8,41.9
		path	12.0,47.0	06.2,49.5	15.4,62.4
		path	20.3,52.9	24.0,61.1	21.2,62.7
		path	28.1,80.8	27.7,69.5	30.5,72.8
		path	30.3,59.9	34.8,66.6	37.7,53.3
		path	46.9,46.3	49.3,49.5	60.3,48.6
		path	60.8,52.8	52.1,52.7	47.2,57.7
		path	45.9,75.5	33.5,89.6	33.1,92.6
		path	49.1,77.5	44.6,86.2	55.5,82.8
		path	58.7,78.8	56.5,72.3	65.8,63.6
		path	67.1,71.7	63.0,73.3	65.8,77.9
		path	68.7,77.6	71.0,71.7	70.1,68.6
		path	65.0,59.8	65.6,56.0	75.0,63.9
		path	78.4,80.2	80.7,77.5	77.3,63.7
		path	72.7,60.2	71.5,53.1	68.3,52.0
		_Mine Fel Iron Deposits_ along the path 
		|tip Eternium cannot be prospected but can generate additional income
		goldcollect 16 Eternium Ore##23427
		goldcollect Fel Iron Ore##23424 |n //272
		goldcollect Mote of Earth##22573 |n //76
		goldcollect Mote of Fire##22574 //48
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 8 Golden Draenite##23112
		goldcollect 12 Blood Garnet##23077
		goldcollect 4 Deep Peridot##23079
		goldcollect 32 Azure Moonstone##23117
		goldcollect 12 Flame Spessarite##21929
		goldcollect 20 Shadow Draenite##23107
		goldtracker
		_Click here_ to sell items |confirm
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Adamantite Powder, Living Ruby, Talasite, Nightseye, Star Of Elune, Dawnstone, Noble Topaz",{
	meta={goldtype="route",skillreq={jewelcrafting=325,mining=325},levelreq={64,67}},
	items={{23426,12},{23427,64},{23424,1},{23425,1},{22573,1},{22574,1},{24243,88},{23436,8},{23441,4},{23437,4},{23438,12},{23440,12},{23439,4}},
	maps={"Nagrand"},
},[[
	step
		map Nagrand
		path follow smart; loop on; ants curved; dist(20)
		path	44.5,66.0	43.5,78.5	38.5,83.3
		path	31.9,81.9	27.8,76.5	28.3,71.7
		path	25.2,61.1	32.2,60.3	34.1,44.3
		path	24.3,48.5	18.2,39.3	10.5,43.7
		path	7.1,39.9	17.7,31.7	25.6,39.5
		path 	26.8,23.6	25.7,16.5	38.8,37.0
		path	39.1,27.5	42.8,19.5	49.3,24.1
		path	57.0,24.5	60.5,31.6	67.5,35.5
		path	73.5,44.8	66.1,51.9	76.3,62.2	
		path	69.8,72.5	70.1,83.3	63.0,73.1
		path	59.8,62.0	56.0,54.7	48.0,57.5
		_Mine Fel Iron_ and _Adamantite Deposits_ along the path 
		|tip Eternium and Khorium cannot be prospected but can generate additional income
		goldcollect 12 Khorium Ore##23426
		goldcollect 64 Eternium Ore##23427
		goldcollect Fel Iron Ore##23424 |n //92
		goldcollect Adamantite Ore##23425 |n //440
		goldcollect Mote of Earth##22573 |n //192
		goldcollect Mote of Fire##22574 |n //12
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 88 Adamantite Powder##24243
		goldcollect 8 Living Ruby##23436
		goldcollect 4 Nightseye##23441
		goldcollect 4 Talasite##23437
		goldcollect 12 Star of Elune##23438
		goldcollect 12 Dawnstone##23440
		goldcollect 4 Noble Topaz##23439
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Huge Citrine, Shadow Crystal, Chalcedony, Bloodstone, Sun Crystal, Dark Jade",{
	meta={goldtype="route",skillreq={jewelcrafting=350,mining=350},levelreq={68,72}},
	items={{36909,1},{36912,1},{37701,28},{37705,32},{36929,12},{36926,4},{36923,12},{36917,8},{36920,8},{36932,24}},
	maps={"Zul'Drak"},
},[[
	step
		map Zul'Drak
		path follow smart; loop on; ants curved; dist(20)
		path	31.2,76.2	20.0,76.5
		path	11.6,78.1	14.0,68.3	23.7,69.5
		path	25.2,63.2	16.1,57.6	20.9,47.5
		path	24.3,54.8	36.0,62.4	34.3,55.0
		path	35.7,46.2	31.9,39.2	41.5,41.6
		path	44.0,51.6	47.6,40.1	54.0,33.0
		path	53.5,50.5	69.2,32.7	70.7,24.6
		path	78.9,22.5	78.5,41.9	75.0,50.9
		path	69.9,49.1	61.5,58.8	78.8,70.6
		path	74.1,73.9	60.1,84.3	55.1,72.5
		path	49.1,66.9	44.5,75.4	45.0,84.9
		path	37.2,84.2
		_Mine Cobalt_ and _Saronite Deposits_ along the path
		goldcollect Cobalt Ore##36909 |n //264
		goldcollect Saronite Ore##36912 |n //24
		goldcollect 28 Crystallized Earth##37701
		goldcollect 32 Crystallized Water##37705
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 12 Huge Citrine##36929
		goldcollect 4 Shadow Crystal##36926
		goldcollect 12 Chalcedony##36923
		goldcollect 8 Bloodstone##36917
		goldcollect 8 Sun Crystal##36920
		goldcollect 24 Dark Jade##36932
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Hessonite, Alicite, Carnelian, Nightstone, Jasper, Zephyrite",{
	meta={goldtype="route",skillreq={jewelcrafting=425,mining=425},levelreq={82,83}},
	items={{53038,1},{52327,12},{52181,8},{52179,4},{52177,12},{52180,16},{52182,4},{52178,8},{52185,1},{52326,4}},
	maps={"Deepholm ","Mount Hyjal"},
},[[
	step
		Deepholm has the _highest yield_ of Obsidian required for prospecting. If you don't have access to Deepholm an _alternate route_ has been provided through the Mount Hyjal.
		_Click here_ to farm in Deepholm |confirm |next "deepholm"
		_Click here_ to farm in Mount Hyjal |confirm |next
	step
		map Mount Hyjal
		path follow loose; loop on; ants curved
		path	57.8,14.5	50.5,17.0	44.9,25.5
		path	40.5,33.6	33.5,23.7	27.8,38.6
		path	13.9,34.8	15.5,52.5	25.4,60.7
		path	36.0,51.0	38.5,61.6	32.9,66.0
		path	31.5,82.3	36.6,95.5	51.5,80.5
		path	60.6,82.5	56.7,66.5	50.5,56.5
		path	59.7,56.3	72.7,65.0	84.3,64.9
		path	85.9,48.5	76.8,57.5	67.5,50.6
		path	65.5,32.5	65.7,18.5
		_Mine Obsidium Deposits_ along the path
		goldcollect Obsidium Ore##53038 |n //252
		goldcollect 12 Volatile Earth##52327
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 8 Hessonite##52181
		goldcollect 4 Alicite##52179
		goldcollect 12 Carnelian##52177
		goldcollect 16 Nightstone##52180
		goldcollect 4 Jasper##52182
		goldcollect 8 Zephyrite##52178
		goldtracker
		_Click here_ to sell items |confirm |next "sell"
	step
	label "deepholm"
		map Deepholm //CONTENT check for other map (players who can't get to this area)
		path follow loose; loop on; ants curved
		path	54.7,53.6	57.9,40.5	59.8,31.5
		path	62.5,23.7	64.3,17.1	68.1,27.5
		path	65.2,36.1	69.7,35.3	77.1,37.2
		path	78.6,49.8	63.3,46.1	61.0,56.3
		path	64.6,61.6	69.9,55.6	74.7,60.7
		path	75.3,68.4	65.6,65.0	61.3,72.4
		path	70.9,71.8	67.7,79.6	62.0,85.5
		path	53.2,75.1	53.3,85.7	47.9,89.8
		path	37.5,87.4	30.1,81.5	33.1,74.6
		path	25.2,73.1	20.8,62.0	19.6,49.1
		path	24.5,38.3	26.0,28.8	31.3,27.8
		path	28.9,20.5	36.6,14.8	46.5,10.5
		path	44.1,23.2	50.0,20.1	47.7,32.9
		path	39.9,38.9	34.6,32.5	30.2,44.6
		path	29.7,57.4	34.4,64.3	37.8,54.7
		path	43.5,67.4	36.5,69.2	40.6,74.9
		path	42.4,80.8	47.1,71.5	48.7,68.8
		path	47.7,62.0	
		_Mine Obsidium_ and _Elementium Deposits_ along the path
		goldcollect Obsidium Ore##53038 |n //324
		goldcollect Elementium Ore##52185 |n //96
		goldcollect 16 Volatile Earth##52327
		goldcollect 4 Volatile Water##52326
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 8 Hessonite##52181
		goldcollect 4 Alicite##52179
		goldcollect 12 Carnelian##52177
		goldcollect 24 Nightstone##52180
		goldcollect 8 Jasper##52182
		goldcollect 12 Zephyrite##52178
		goldtracker
		_Click here_ to sell items |confirm
	step
	label "sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Alexandrite, Sparkling Shard, Pandarian Garnet, Roguestone, Sunstone, Lapis Lazuli, Tiger Opal, Imperial Amethyst, Primordial Ruby, River's Heart, Wild Jade, Sun's Raidance, Vermilion Onyx",{
	meta={goldtype="route",skillreq={mining=500,jewelcrafting=500,miningcrapuntil=550},levelreq={85,86}},
	items={{72092,1},{90407,160},{76137,32},{76136,36},{76135,36},{76134,40},{76133,32},{76130,32},{76141,4},{76131,8},{76138,4},{76139,4},{76142,8},{76140,12}},
	maps={"The Jade Forest"},
},[[
	step
		map The Jade Forest
		path follow smart; loop on; ants curved
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		_Mine Ghost Iron Deposits_ along the path
		goldcollect Ghost Iron Ore##72092 |n //692
		_Use_ the prospect ability on the ore in your bags to get these items |cast Prospecting##31252
		goldcollect 160 Sparkling Shard##90407
		goldcollect 32 Alexandrite##76137
		goldcollect 36 Pandarian Garnet##76136
		goldcollect 36 Roguestone##76135
		goldcollect 40 Sunstone##76134
		goldcollect 32 Lapis Lazuli##76133
		goldcollect 32 Tiger Opal##76130
		goldcollect 4 Imperial Amethyst##76141
		goldcollect 8 Primordial Ruby##76131
		goldcollect 4 River's Heart##76138
		goldcollect 4 Wild Jade##76139
		goldcollect 8 Sun's Radiance##76142
		goldcollect 12 Vermilion Onyx##76140
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])