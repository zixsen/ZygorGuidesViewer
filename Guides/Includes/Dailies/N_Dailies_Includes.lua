local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------
----- The Anglers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Anglers_Dailies",[[
	step
		You must have fishing in order to accept dailies from this faction
		confirm
	step
	label "dailies"
		There will only be three dailies available from the following questgivers
		|tip It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
		confirm
	step
		talk Fisherman Haito##59584
		accept Shocking!##30584 |goto Krasarang Wilds 67.9,45.2 |or
		accept Jagged Abalone##30586 |goto Krasarang Wilds 67.9,45.2  |or
		If these quests are unavailable today, click here |confirm
	step
		talk Angler Shen##59586
		accept Snapclaw##30700 |goto 67.5,43.5 |or
		accept Fishing for a Bruising##30588 |goto 67.5,43.5 |or
		If these quests are unavailable today, click here |confirm
	step
		talk John "Big Hook" Marsock##60674
		accept Bright Bait##30754 |goto 68.3,43.5 |or
		accept Jumping the Shark##30753 |goto 68.3,43.5 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Trawler Yotimo##60135
		accept Armored Carp##30613 |goto 67.6,42.5 |or
		accept Huff & Puff##30658 |goto 67.6,42.5 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Elder Fisherman Rassan##60673
		accept What Lurks Below##30585 |goto 68.4,42.1 |or
		accept Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Fo Fook##60675
		accept Piranha!##30763 |goto 67.2,41.2 |or
		accept Viseclaw Soup##30701 |goto 67.2,41.2 |or
		If these quests are unavailable today, click here |confirm
	step
		talk Fiznix##60136
		accept Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6 |or
		accept Scavenger Hunt##30698 |goto 67.5,44.6 |or
		If this quest is unavailable today, click here |confirm
	step
		click Goblin Fishing Raft##211596
		Ride a Goblin Fishing Raft |goto 67.5,44.8 |havebuff 534592 --Inv_boot_leather_raiddruid_k_01
		only if havequest(30698)
	step
		Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris
		collect 15 Rusty Shipwreck Debris##80830 |q 30698/1 |goto 64.3,50.7
		You can find more Debris at [64.3,50.6]
		only if havequest(30698)
	step
		clicknpc Frenzied Reef Shark##60408
		Ride the shark |goto 68.4,43.1 |invehicle |c
		only if havequest(30753)
	step
		Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero
		kill Frenzied Reef Shark##60408 |q 30753/1
		only if havequest(30753)
	step
		click Jagged Abalone##211118
		collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto 69.1,37.9
		only if havequest(30586)
	step
		Enter the underwater cave here |goto 71.3,38.5 < 5
		kill Snapclaw##60401
		collect Snapclaw's Claw##80831 |q 30700/1 |goto 73.9,38.4
		only if havequest(30700)
	step
		Use your fishing skill to fish up 7 Dojani Eel |cast Fishing##131474
		collect 7 Dojani Eel##80260 |q 30584/1 |goto 65.6,30.5
		only if havequest(30584)
	step
		kill 8 Riverblade Raider##59714+ |q 30588/1 |goto 62.4,40.9
		only if havequest(30588)
	step
		kill Viseclaw Fry##61090+, Viseclaw Fisher##58880+
		collect 16 Viseclaw Fisher Eye##80832+ |q 30701/1 |goto 55.1,45.7
		only if havequest(30701)
	step
		click Suncrawler##211474
		collect 7 Suncrawler##81116 |q 30754/1 |goto 59.8,38.8
		only if havequest(30754)
	step
		Use your Goblin Fishing Bomb to kill Sting Rays |use Goblin Fishing Bomb##80599
		|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
		kill Sting Ray##60278+
		collect 3 Stinger##80600+ |q 30678/1 |goto 59.3,46.3
		only if havequest(30678)
	step
		Use your fishing skill to fish up 5 Wolf Piranha. |cast Fishing##7620
		collect 5 Wolf Piranha##81122 |q 30763/1 |goto 36.8,43.3
		only if havequest(30763)
	step
		Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears.
		|tip When Narjon spawns, make sure to equip your weapon quickly. |cast Fishing##131474
		|tip It's a small swirling pool of water at this location
		kill Narjon the Gulper##59689 |q 30585/1 |goto 34.4,31.4
		collect Beloved Ring##80262 |q 30585/2 |goto 34.4,31.4
		only if havequest(30585)
	step
		Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403
		|tip The closer you are the easier it is to hit the fish.
		kill Prickly Puffer##60037
		collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto 51.4,62.2
		only if havequest(30658)
	step
		click Pristine Crane Egg##211160
		collect Pristine Crane Egg##80303 |q 30598/1 |goto 65.2,47.5
		only if havequest(30598)
	step
		Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403
		|tip The closer you are the easier it is to hit the fish.
		kill Armored Carp##59936+
		collect 5 Armored Carp##80437 |q 30613/1 |goto 70.1,51.2
		only if havequest(30613)
	step
		Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
		Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
		collect Silver Goby##80310 |q 30598/2 |goto 68.2,42.7
		only if havequest(30598)
	step
		talk Elder Fisherman Rassan##60673
		turnin What Lurks Below##30585 |goto 68.4,42.1
		turnin Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1
	step
		talk Fiznix##60136
		turnin Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6
		turnin Scavenger Hunt##30698 |goto 67.5,44.6
	step
		talk Angler Shen##59586
		turnin Snapclaw##30700 |goto 67.5,43.5
		turnin Fishing for a Bruising##30588 |goto 67.5,43.5
	step
		talk Trawler Yotimo##60135
		turnin Armored Carp##30613 |goto 67.6,42.5
		turnin Huff & Puff##30658 |goto 67.6,42.5
	step
		talk Fisherman Haito##59584
		turnin Shocking!##30584 |goto 67.9,45.2
		turnin Jagged Abalone##30586 |goto 67.9,45.2
	step
		talk John "Big Hook" Marsock##60674
		turnin Bright Bait##30754 |goto 68.3,43.5
		turnin Jumping the Shark##30753 |goto 68.3,43.5
	step
		talk Fo Fook##60675
		turnin Piranha!##30763 |goto 67.2,41.2
		turnin Viseclaw Soup##30701 |goto 67.2,41.2
	step
		talk Nat Pagle##63721
		buy 1 Grand Commendation of the Anglers##93225 |n
		Use the Commendation of the Anglers you just purchased |goto 68.4,43.4 |condition ZGV:GetReputation("The Anglers").hasBonus |use Grand Commendation of the Anglers##93225
		only if rep("The Anglers")>=Revered
	step
		You have reached the end of this guide
		Click here to go back to the dailies |confirm |next "dailies"
]])

-----------------------------
----- Argent Tournament -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("ArgentT_Quests",[[
	step
		talk Commander Falstaav##28059
		accept Parachutes for the Argent Crusade##12740 |goto Zul'Drak/0 39.42,66.96
	step
		click Argent Shieldman##28028+, Argent Crusader##28029+
		Use your Crusader Parachute |use Crusader Parachute##39615
		|tip It won't work on all of them.
		Equip #10# Argent forces with a parachute |q 12740/1 |goto 38.4,67.1
	step
		talk Commander Falstaav##28059
		turnin Parachutes for the Argent Crusade##12740 |goto 39.42,66.96
	step
		talk Commander Kunz##28039
		accept Pa'Troll##12596 |goto 40.27,66.62
	step
		Follow the path |goto Zul'Drak/0 40.27,61.44 < 30 |only if walking
		Follow the path |goto 39.25,58.68 < 30 |only if walking
		Follow the path |goto 37.29,54.63 < 30 |only if walking
		Enter the building |goto 35.78,52.23 < 7 |walk
		talk Alchemist Finklestein##28205
		accept Lab Work##12557 |goto 35.02,52.10
	step
		Go into the 2 rooms next to you:
		click Muddy Mire Maggot
		|tip Muddy Mire Maggots are contained in bags on the ground.
		_These are items on shelves that you can click_
		collect Muddy Mire Maggot##38386 |q 12557/1 |goto Zul'Drak/0 34.97,53.50
		click Withered Batwing##190473
		collect Withered Batwing##38339 |q 12557/2 |goto 35.09,53.43
		|tip Withered Batwings looks like bone wings.
		click Chilled Serpent Mucus##190462
		collect Chilled Serpent Mucus##38346 |q 12557/4 |goto 35.09,53.42
		|tip Chilled Serpent Mucus looks like a skinny green vial.
		click Amberseed##190459
		collect Amberseed##38340 |q 12557/3 |goto 34.97,51.57
		|tip Amberseeds look like spiked potatoes.
	step
		talk Alchemist Finklestein##28205
		turnin Lab Work##12557
		Complete Alchemist Finklestein's task |q 12596/4 |goto 35.02,52.10
	step
		Leave the building |goto Zul'Drak/0 35.84,52.25 < 7 |walk
		Follow the path |goto 37.23,54.57 < 30 |only if walking
		Follow the path |goto 39.24,58.71 < 30 |only if walking
		Follow the path |goto 40.10,61.34 < 30 |only if walking
		Follow the path |goto 43.58,62.18 < 30 |only if walking
		Follow the path |goto 46.28,64.52 < 20 |only if walking
		Enter the building |goto 47.95,63.59 < 10 |walk
		talk Captain Grondel##28043
		accept Creature Comforts##12599 |goto 48.15,63.89
	step
		click Dead Thornwood+
		|tip They look like curved thorny roots coming out of the water around this area.
		collect 20 Dead Thornwood##38563 |q 12599/1 |goto 46.9,61.4
	step
		Enter the building |goto 47.95,63.59 < 10 |walk
		talk Captain Grondel##28043
		turnin Creature Comforts##12599 |goto 48.15,63.89
		Complete Captain Grondel's Task |q 12596/3 |goto 48.15,63.89
	step
		Leave the building |goto Zul'Drak/0 47.93,63.57 < 7 |walk
		Follow the path |goto 45.92,66.37 < 30 |only if walking
		Go up the stairs |goto 46.48,67.38 < 15 |only if walking
		Go down the stairs |goto 49.77,72.23 < 15 |only if walking
		Follow the path |goto 50.03,75.00 < 30 |only if walking
		Go up the stairs |goto 49.33,77.85 < 20 |only if walking
		talk Captain Brandon##28042
		accept Something for the Pain##12597 |goto 48.77,78.87
	step
		Follow the path |goto Zul'Drak/0 47.27,79.47 < 20 |only if walking
		Click the Mature Water-Poppy plants
		|tip They look like tall white-leaved plants with purple bulbs at the top.
		collect 5 Mature Water-Poppy##38552 |q 12597/1 |goto 44.9,79.5
	step
		Follow the path |goto Zul'Drak/0 47.27,79.47 < 20 |only if walking
		talk Captain Brandon##28042
		turnin Something for the Pain##12597
		Complete Captain Brandon's Task |q 12596/1 |goto 48.77,78.87
	step
		Go down the stairs |goto Zul'Drak/0 49.56,77.54 < 15 |only if walking
		Follow the path |goto 52.26,76.13 < 30 |only if walking
		Go up the stairs |goto 55.45,75.87 < 20 |only if walking
		talk Captain Rupert##28044
		accept Throwing Down##12598 |goto 58.07,72.43
	step
		Go up the stairs |goto Zul'Drak/0 55.78,71.80 < 20 |only if walking
		Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574
		Seal #5# Nerubian Tunnels |q 12598/1 |goto 53.4,68.7
		|tip They look like squarish pyramid dirt mounds around this area.
		|tip They can also be found inside the building.
	step
		Go down the stairs |goto Zul'Drak/0 56.04,72.21 < 15 |only if walking
		talk Captain Rupert##28044
		turnin Throwing Down##12598
		Complete Captain Rupert's Task |q 12596/2 |goto 58.1,72.4
	step
		Go down the stairs |goto 54.69,73.00 < 15 |only if walking
		Follow the path |goto 51.51,72.66 < 20 |only if walking
		Go up the stairs |goto 49.56,71.89 < 15 |only if walking
		Follow the path |goto 47.93,70.14 < 30 |only if walking
		Follow the path |goto 44.61,73.88 < 30 |only if walking
		talk Commander Kunz##28039
		turnin Pa'Troll##12596 |goto 40.27,66.62
]])

---------------------------
----- Cooking Dailies -----
---------------------------

ZygorGuidesViewer:RegisterInclude("MoP_Cooking_Dailies",[[
		Proceeding to Cooking School Bell |only if completedq(31521)
		Proceeding to Cooking Dailies |only if not completedq(31521) |next "dailies"
	step
		use Cooking School Bell##86425
		If you do not have this yet, you can buy it from Nam Ironpaw here: [Valley of the Four Winds 53.6,51.2]
		talk Nomi##64337
		accept Lesson 1: Sliced Peaches##31332
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31332/1 |goto Valley of the Four Winds 53.6,51.2
	step
		use Cooking School Bell##86425
		talk Nomi##64337
		turnin Lesson 1: Sliced Peaches##31332
	step
	label "dailies"
		talk Jian Ironpaw##58716
		accept The Truffle Shuffle##30330 |goto Valley of the Four Winds 53.4,51.6
		Click here if this quest is not available today |confirm
	step
		talk Kol Ironpaw##58712
		accept Fatty Goatsteak##30332 |goto 53.0,51.3
		Click here if this quest is not available today |confirm
	step
		talk Yan Ironpaw##58715
		accept The Thousand-Year Dumpling##30328 |goto 52.5,51.7
		Click here if this quest is not available today |confirm
	step
		talk Anthea Ironpaw##58713
		accept Cindergut Peppers##30329 |goto 52.8,51.8
		Click here if this quest is not available today |confirm
	step
		talk Mei Mei Ironpaw##58714
		accept The Mile-High Grub##30331 |goto 52.6,51.6
		Click here if this quest is not available today |confirm
	step
		use Master's Pot##79895
		|tip Use the Master's Pot next to the bonfire.
		Create #20# Mushan Tail Stew |q 30331/1 |goto 32.5,23.9
		only if havequest(30331)
	step
		kill Kunzen Hunter##59121+, Kunzen Herdskeeper##59122+, Kunzen Ritualist##+59123, Kunzen Rockflinger##59120+,Kunzen Collector##59124+
		collect 4 Cindergut Pepper##79864 |q 30329/1 |goto 31.2,36.0
		only if havequest(30329)
	step
		Enter the cave here |goto 44.0,22.2 < 5 |walk
		click Preserved Vegetable##11054+
		collect 7 Preserved Vegetables##80133 |q 30328/1
		only if havequest(30328)
	step
		click Shadelight Truffle##210812
		|tip You can find these aruond the trees here
		collect 8 Shadelight Truffle##79833 |q 30330/2 |goto 28.5,33.3
		only if havequest(30330)
	step
		use Shadelight Truffle Spores##80127
		Plant #8# Shadelight Spores |q 30330/1 |goto 28.5,33.3
		only if havequest(30330)
	step
		kill Stout Shaghorn##59139+
		collect 4 Fatty Goatsteak##79867 |q 30332/1 |goto Valley of the Four Winds 29.7,41.4
		only if havequest(30332)
	step
		talk Anthea Ironpaw##58713
		turnin Cindergut Peppers##30329 |goto Valley of the Four Winds 52.8,51.8
	step
		talk Jian Ironpaw##58716
		turnin The Truffle Shuffle##30330 |goto Valley of the Four Winds 53.4,51.6
	step
		talk Yan Ironpaw##58715
		turnin The Thousand-Year Dumpling##30328 |goto 52.5,51.7
	step
		talk Kol Ironpaw##58712
		turnin Fatty Goatsteak##30332 |goto 53.0,51.3
	step
		talk Mei Mei Ironpaw##58714
		turnin The Mile-High Grub##30331 |goto 52.6,51.6
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the Pandaria Cooking Dailies |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterInclude("Nomi_Dailies",[[
	step
	label "nomistart"
		use Cooking School Bell##86425
		talk Nomi##64337
		|tip She's standing next to you if you use the Cooking School Bell.
		accept Lesson 1: Sliced Peaches##31332 |or |next "peach"
		accept Lesson 2: Instant Noodles##31333 |or |next "noodles"
		accept Lesson 3: Toasted Fish Jerky##31334 |or |next "carp"
		accept Lesson 4: Dried Needle Mushrooms##31335 |or |next "mushrooms"
		accept Lesson 5: Pounded Rice Cake##31336 |or |next "rice"
	step
	label "peach"
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##31332 |q 31332/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "noodles"
		talk Sungshin Ironpaw##64231
		buy 5 Instant Noodles##74854 |q 31333/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "carp"
		talk Sungshin Ironpaw##64231
		buy 5 Golden Carp##74866 |q 31334/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "mushrooms"
		talk Sungshin Ironpaw##64231
		buy 5 Needle Mushrooms##85583 |q 31335/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "rice"
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31336/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "nomiTurnin"
		talk Nomi##64337
		|tip She's standing next to you if you use the Cooking School Bell.
		use Cooking School Bell##86425
		turnin Lesson 1: Sliced Peaches##31332 |or
		turnin Lesson 2: Instant Noodles##31333 |or
		turnin Lesson 3: Toasted Fish Jerky##31334 |or
		turnin Lesson 4: Dried Needle Mushrooms##31335 |or
		turnin Lesson 5: Pounded Rice Cake##31336 |or
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the Nomi Cooking Dailies |confirm |next "nomistart"
]])

----------------------------
----- The Golden Lotus -----
----------------------------

ZygorGuidesViewer:RegisterInclude("Golden_Lotus",[[
	step
	label "dailies"
		talk Kun Autumnlight##58920
		accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
		accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
		noquest
	step
		talk Anji Autumnlight##58919
		accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
		accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
		noquest
	step
		talk Hai-Me Heavyhands##58962
		|tip He walks around the Trainees in this area.
		accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
	step
		talk Yumi Goldenpaw##58743
		accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.6
		accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.6
		noquest
	step
		talk Kelari Featherfoot##58704
		accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
	step
		talk Kelari Featherfoot##58704
		Tell him: _"Let's roll."_ |q 30261/1 |goto Vale of Eternal Blossoms/0 18.1,63.5
		only if havequest(30261)
	step
		Hold down your right mouse button to help you maneuver through the course.
		|tip Grab as many speed boosts as you can to make it go quicker.
		Complete the Serpent's Spine Roll Course. |q 30261/2
		only if havequest(30261)
	step
		talk Kelari Featherfoot##58704
		turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
		only if havequest(30261)
	step
		kill Shado-Pan Trainee##58992+
		Defeat 20 Shado-Pan Trainees. |q 30306/1 |goto Vale of Eternal Blossoms 19.7,74.2
		only if havequest(30306)
	step
		Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
		Live through the Survival Ring for 90 seconds |q 30242/1 |goto Vale of Eternal Blossoms 19.2,67.5
		only if havequest(30242)
	step
		Stay within the circle and avoid getting hit by the fireworks.
		Live through the Survival Ring for 90 seconds |q 30240/1 |goto 19.2,67.5
		only if havequest(30240)
	step
		clicknpc Setting Sun Turret##64336 |goto Vale of Eternal Blossoms 5.4,72.3
		Mount a turret |invehicle |c
		|tip It's on the upper level of the tower here.
		only if havequest(30266)
	step
		kill 30 Krik'thik Swarmer##63973+ |q 30266/1
		only if havequest(30266)
	step
		Click the Leave Vehicle button |outvehicle
		only if havequest(30266)
	step
		clicknpc Hot Oil Cauldron##64369
		Use the abilities on your hotbar to kill 80 Krik'thik Hivelings |q 30243/1 |goto Vale of Eternal Blossoms 3.9,51.7
		|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch.
	step
		Traverse the following rooms by only stepping on the _green_ or _red_ tiles, other tiles will harm you. The safe tile changes every day but will be one of the two. |goto Vale of Eternal Blossoms 22.4,26.9
		confirm
		only if havequest(30280) or havequest(30277)
	step
		kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/18 53.9,68.3
		|tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
		only if havequest(30280)
	step
		click Deactivate Final Spirit Wall##214477
		Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/18 42.1,27.2
		only if havequest(30277)
	step
		click Ancient Guo-Lai Artifact##214394
		collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto 49.4,30.6
		only if havequest(30277)
	step
		talk Yumi Goldenpaw##58743
		turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.5
		turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.5
	step
		talk Hai-Me Heavyhands##58962
		|tip He walks around the Trainees in this area.
		turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
	step
		talk Anji Autumnlight##58919
		turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
		turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
	step
		talk Kun Autumnlight##58920
		turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
		turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
	step
	label "end"
		You have reached the end of the guide for today
		Click here to go back to the beginning of the dailies |confirm |next "dailies"
]])

------------------------------
----- Isle of Quel'Danas -----
------------------------------

ZygorGuidesViewer:RegisterInclude("SSO_PreQuest_Dailies",[[
		talk Exarch Nasuun##24932
		accept Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.1,42.5
	step
		talk Lord Torvos##25140
		accept Sunfury Attack Plans##11877 |goto 62.8,36.0
	step
		talk Emissary Mordin##19202
		accept Gaining the Advantage##11875 |goto 62.8,35.6
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		talk Harbinger Haronem##19475
		accept The Multiphase Survey##11880 |goto Shattrath City 61.7,52.1
	step
		kill Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
		Skin their corpses in order to collect the Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand 50.3,40.4
		only if skill("Skinning")>=300
	step
		Mine inside the cave and collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto 40.8,31.6
		You can check [Nagrand,50.0,56.6] for more Mining Nodes.
		only if skill("Mining")>=300
	step
		Click the Multiphase Spectographic Goggles to wear them. |use Multiphase Spectrographic Goggles##35233 |goto Nagrand 38.3,65.3
		Get the Multiphase Goggles buff |havebuff 135994 --Spell_magic_lesserinvisibility
		|tip You have to be in the Nagrand zone to correctly get the buff.
		only if havequest(11880)
	step
		All around Nagrand:
		Gather _Felweed_ and _Dreaming Glory_ to collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1
		only if skill("Herbalism")>=300
	step
		Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
		Use your Multiphase Spectrographic Goggles on the Orbs |use Multiphase Spectrographic Goggles##35233
		goal 6 Multiphase Readings Taken |q 11880/1 |goto Nagrand 38.3,65.3
	step
		kill Unbound Ethereal##22244+, Bash'ir Raider##22241+, Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+
		collect 1 Bash'ir Phasing Device##34248 |n
		Use the Bash'ir Phasing Device |use Bash'ir Phasing Device##34248
		Become Out of Phase |havebuff 132220 --Ability_mage_invisibility
		click Smuggled Mana Cell##187039
		Collect 10 Smuggled Mana Cell |q 11514/1 |goto Blade's Edge Mountains 54.0,18.1
	step
		kill Sunfury Bloodwarder##18853+, Sunfury Captain##19453+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643
		collect Sunfury Attack Plans##35231 |q 11877/1 |goto Netherstorm 25.9,66.8
	step
		talk Lord Torvos##25140
		turnin Sunfury Attack Plans##11877 |goto Shattrath City 62.8,36.0
	step
		talk Emissary Mordin##19202
		turnin Gaining the Advantage##11875 |goto 62.8,35.6
	step
		talk Harbinger Haronem##19475
		turnin The Multiphas Survey##11880 |goto 61.6,52.2
	step
		talk Exarch Nasuun##24932
		turnin Maintaining the Sunwell Portal##11514 |goto 49.1,42.5
	step
		talk Astromancer Darnarian##25133
		accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas 47.5,35.4
	step
		talk Battlemage Arynna##25057
		accept The Air Strikes Must Continue##11533 |goto 47.5,35.1
	step
		talk Harbinger Inuuro##25061
		accept The Battle Must Go On##11537 |goto 47.6,35.1
	step
		talk Anchorite Ayuri##25112
		accept Your Continued Support##11548 |goto 48.8,37.2
		This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		turnin Your Continued Support##11548 |goto 48.8,37.2
	step
		talk Vindicator Kaalan##25108
		accept Keeping the Enemy at Bay##11543 |goto 50.6,39.0
	step
		talk Magister Ilastar##25069
		accept Crush the Dawnblade##11540 |goto 49.3,40.4
	step
		talk Smith Hauthaa##25046
		accept Don't Stop Now....##11536 |goto 50.6,40.8
		accept Ata'mal Armaments##11544 |goto 50.6,40.8
	step
		talk Mar'nah##24975
		accept Rediscovering Your Roots##11521 |goto 51.5,32.5
		accept Open for Business##11546 |goto 51.5,32.5
	step
		talk Captain Valindria##25088
		accept Disrupt the Greengill Coast##11541 |goto 53.8,34.3
	step
		talk Captain Theris Dawnhearth##24967
		accept Arm the Wards!##11523 |goto 47.5,30.5
		accept The Missing Magistrix##11526 |goto 47.5,30.5
	step
		talk Vindicator Xayann##24965
		accept Further Conversions##11525 |goto 47.1,30.7
	step
		kill Wretched Fiend##24966+
		collect 4 Mana Remnants##34338 |q 11523 |c
		kill Erratic Sentry##24972+ |n
		Use Attuned Crystal Cores on the Erratic Sentries corpse |use Attuned Crystal Cores##34368
		goal 5 Converted Sentry Deployed |q 11525/1 |goto Isle of Quel'Danas 44.3,28.5
		click Bloodberry Bush##187333
		collect 5 Bloodberry##34502 |q 11546/1 |goto Isle of Quel'Danas 44.3,28.5
		|tip They can be found all around this area on the ground.
	step
		kill 6 Dawnblade Summoner |q 11540/1 |goto Isle of Quel'Danas 42.1,35.7
		kill 6 Dawnblade Blood Knight |q 11540/2 |goto Isle of Quel'Danas 42.1,35.7
		kill 3 Dawnblade Marksman |q 11540/3 |goto Isle of Quel'Danas 42.1,35.7
		Use your Astromancer's Crystal to sample the Bloodcrystal's density |use Astromancer's Crystal##34533
		Bloodcrystal Reading Taken |q 11547/3 |goto Isle of Quel'Danas 42.1,35.7
	step
		Use the Mana Remnants to Energize the Crystal Ward |use Mana Remnants##34338
		Energize a Crystal Ward |q 11523/1 |goto Isle of Quel'Danas 46.5,35.5
	step
		talk Ayren Cloudbreaker##25059
		Tell him you Need to Intercept the Dawnblade Reinforcements.
		Use your Flaming Oil to set fire to the ships sails as you fly around |use Flaming Oil##34489
		Sin'loren sails burned |q 11543/1 |goto 48.5,25.2
		Bloodoath sails burned |q 11543/2 |goto 48.5,25.2
		Dawnchaser sails burned |q 11543/3 |goto 48.5,25.2
	step
		kill 6 Dawnblade Reservist##25087+ |q 11543/4 |goto Isle of Quel'Danas 51.1,9.7
		Another spot for them is at [Isle of Quel'Danas 55.2,11.8]
	step
		talk Unrestrained Dragonhawk##25236 |goto Isle of Quel'Danas,52.4,17.4
		Ride the dragonhawk to Sun's Reach |goto Isle of Quel'Danas 48.4,25.3 |noway |c
	step
		talk Ayren Cloudbreaker##25059
		Tell him you've been ordered to undertake an airstrike.
		Use your Arcane Charges on mobs once you get to the Dead Scar |use Arcane Charges##34475
		kill 2 Pit Overlord##25031+ |q 11533/1 |goto Isle of Quel'Danas 48.5,25.2
		kill 3 Eredar Sorcerer##25033+ |q 11533/2 |goto Isle of Quel'Danas 48.5,25.2
		kill 12 Wrath Enforcer##25030+ |q 11533/3 |goto Isle of Quel'Danas 48.5,25.2
	step
		kill Emissary of Hate##25003 |n
		Use your Shattered Sun Banner on his corpse |use Shattered Sun Banner##34414
		Impale the Emissary of Hate |q 11537/1 |goto Isle of Quel'Danas,48.5,43.7
		kill 6 Burning Legion Demon |q 11537/2 |goto Isle of Quel'Danas,48.5,43.7
		Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
		Portal Reading Taken |q 11547/1 |goto Isle of Quel'Danas 48.5,43.7
	step
		Take this path back to the shoreside |goto Isle of Quel'Danas 57.3,38.6 < 10 |only if walking
		kill Darkspine Myrmidon##25060+
		collect Darkspine Chest Key##34477 |n
		kill Darkspine Siren##25073+
		collect Orb of Murloc Control##34483 |n
		Use your Orbs of Murloc Control on Greengill Slaves along the shore |use Orb of Murloc Control##34483
		Free 10 Greengill Slaves |q 11541/1 |goto Isle of Quel'Danas 64.1,49.9
		Use your Darkspine Chest Keys on the Darkspine Ore Chest
		collect 3 Darkspine Iron Ore##34479 |q 11536/1 |goto Isle of Quel'Danas 64.1,49.9
	step
		Use your Astromancer's Crystal to sample the Shrine's density |use Astromancer's Crystal##34533
		Shrine Reading Taken |q 11547/2 |goto Isle of Quel'Danas 61.1,62.0
	step
		talk Mar'nah##24975
		turnin Open for Business##11546 |goto 51.5,32.5
	step
		talk Captain Valindria##25088
		turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas 53.8,34.3
	step
		talk Smith Hauthaa##25046
		turnin Don't Stop Now....##11536 |goto 50.6,40.7
	step
		talk Vindicator Kaalan##25108
		turnin Keeping the Enemy at Bay##11543 |goto 50.6,39.0
	step
		talk Magister Ilastar##25069
		turnin Crush the Dawnblade##11540 |goto 49.3,40.4
	step
		talk Astromancer Darnarian##25133
		turnin Know Your Ley Lines##11547 |goto 47.5,35.3
	step
		talk Battlemage Arynna##25057
		turnin The Air Strikes Must Continue##11533 |goto 47.5,35.1
	step
		talk Harbinger Inuuro##25061
		turnin The Battle Must Go On##11537 |goto 47.6,35.1
	step
		talk Captain Theris Dawnhearth##24967
		turnin Arm the Wards!##11523 |goto 47.5,30.5
	step
		talk Vindicator Xayann##24965
		turnin Further Conversions##11525 |goto 47.1,30.7
	step
		|use Captured Legion Scroll##34420 |goto Isle of Quel'Danas 48.5,44.7
		Teleport to Hellfire Peninsula |goto Hellfire Peninsula 58.6,18.7 < 10 |noway |c
	step
		talk Magistrix Seyla##24937
		turnin The Missing Magistrix##11526 |goto Hellfire Peninsula 58.2,17.6
		accept Blood for Blood##11515 |goto Hellfire Peninsula 58.2,17.6
		accept Blast the Gateway##11516 |goto Hellfire Peninsula 58.2,17.6
	stickystart "emaciatedfelblood"
	step
		kill Wrath Herald##24919+
		collect 4 Demonic Blood##34259
		use the Sizzling Embers to summon a Living Flare |use Sizzling Embers##34253
		kill Incandescent Fel Spark##22323+ |n
		Once you see a message that says _"Living Flare becomes unstable with brimming energy!"_ take it to [Hellfire Peninsula 58.6,18.7]
		Legion Gateway Destroyed |q 11516/1 |goto Hellfire Peninsula 66.4,20.1
	step
	label "emaciatedfelblood"
		Use your Fel Siphon on Felblood Initiates |use Fel Siphon##34257
		kill 4 Emaciated Felblood##24918 |q 11515/1 |goto 59.9,21.0
	step
		talk Magistrix Seyla##24937
		turnin Blast the Gateway##11516 |goto Hellfire Peninsula 58.2,17.6
		turnin Blood for Blood##11515 |goto Hellfire Peninsula 58.2,17.6
	step
		kill Razorthorn Flayer##24920+
		collect Razorthorn Flayer Gland##34255 |q 11521 |n
		Use your Razorthorn Flayer Gland on Razorthorn Ravagers |use Razorthorn Flayer Gland##34255
		Use your pets Expose Razorthorn Root ability on mounds of dirt around the area |cast Expose Razorthorn Root##44935
		collect 5 Razorthorn Root##34254 |q 11521/1 |goto Terokkar Forest 59.7,10.3
	step
		kill Shadowmoon Chosen##22084+, Shadowmoon Slayer##22082+, Shadowmoon Darkweaver##22081+
		collect 5 Ata'mal Armament##34500 |q 11544 |goto Shadowmoon Valley 68.5,37.5
	step
		talk Mar'nah##24975
		turnin Rediscovering Your Roots##11521 |goto Isle of Quel'Danas 51.5,32.5
	step
		Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil |use Ata'mal Armament##34500
		Cleanse 5 Ata'mal Metals |q 11544/1 |goto 50.6,40.7
	step
		talk Smith Hauthaa##25046
		turnin Ata'mal Armaments##11544 |goto 50.6,40.7
]])

----------------------
----- The Klaxxi -----
----------------------

ZygorGuidesViewer:RegisterInclude("Klaxxi_Dailies",[[
	step
		This guide requires that you have completed all of the quests in the Dread Wastes
		The following questlines are required to access all of the possible dailies for the Klaxxi
		A Cry From Darkness |achieve 6540/1
		Falling to Pieces |achieve 6540/2
		Blood of Ancients |achieve 6540/3
		Mazu's Bounty |achieve 6540/4
		Please refer to Zygor's Leveling and Loremaster guides for assistance in completing these questlines
		Click here to go to Zygor's Leveling and Loremaster guides for assistance in completing these questlines |confirm |next "Zygor's Leveling Guides\\Pandaria (80-90)\\Dread Wastes (84-90)"
		confirm
	step
	label "klaxxi start"
		talk Kil'ruk the Wind-Reaver##62538
		accept Dreadspinner Extermination##31231 |goto Dread Wastes 55.0,35.9 |or 2
		accept Nope Nope Nope##31235 |goto Dread Wastes 55.0,35.9 |or 2
		accept Culling the Swarm##31109 |goto Dread Wastes 55.0,35.9 |or 2
		accept Mistblade Destruction##31267 |goto Dread Wastes 55.0,35.9 |or 2
		accept Eradicating the Zan'thik##31111 |goto Dread Wastes 55.0,35.9 |or 2
		accept Vess-Guard Duty##31505 |goto Dread Wastes 55.0,35.9 |or 2
		noquest
	step
		talk Korven the Prime##62180
		accept An Ancient Empire##31232 |goto 54.3,36.1 |or 2
		accept Sap Tapping##31233 |goto 54.3,36.1 |or 2
		accept Sampling the Empire's Finest##31496 |goto 54.3,36.1 |or 2
		accept The Fight Against Fear##31270 |goto 54.3,36.1 |or 2
		accept The Scale-Lord##31269 |goto 54.3,36.1 |or 2
		accept Meltdown##31507 |goto 54.3,36.1 |or 2
		noquest
	step
		talk Rik'kal the Dissector##65253
		accept Bad Genes##31271 |goto 54.3,35.9 |or 2
		accept Wing Clip##31502 |goto 54.3,35.9 |or 2
		accept Shortcut to Ruin##31503 |goto 54.3,35.9 |or 2
		accept Putting An Eye Out##31234 |goto 54.3,35.9 |or 2
		accept Specimen Request##31508 |goto 54.3,35.9 |or 2
		accept Fear Takes Root##31509 |goto 54.3,35.9 |or 2
		noquest
		only if completedq(31606)
	step
		talk Kaz'tik the Manipulator##63758
		accept Brain Food##31238 |goto 54.3,35.8 |or 2
		accept Sonic Disruption##31487 |goto 54.3,35.8 |or 2
		accept Free From Her Clutches##31494 |goto 54.3,35.8 |or 2
		accept A Little Brain Work##31268 |goto 54.3,35.8 |or 2
		accept Kunchong Treats##31024 |goto 54.3,35.8  |or 2
		accept Rampage Against the Machine##31808 |goto 54.3,35.8 |or 2
		accept Shackles of Manipulation##31506 |goto 54.3,35.8 |or 2
		noquest
	step
		talk Xaril the Poisoned Mind##62151
		accept Dark Skies##31216 |goto 54.9,36.2
		noquest
		only if completedq(31211)
	step
		talk Hisek the Swarmkeeper##63785
		accept Debugging the Terrace##31237 |goto 54.8,36.2 |or
		accept Quiet Now##31510 |goto 54.8,36.2 |or
		accept Infection##31272 |goto 54.8,36.2 |or
		accept Ordnance Disposal##31504 |goto 54.8,36.2 |or
		noquest
		only if completedq(31439)
	step
		talk Malik the Unscathed##62774
		accept The Empress' Gambit##31959 |goto 55.0,35.4
		only if rep("The Klaxxi")>=Exalted
	//terrace of gurthan
	step
		talk Kil'ruk the Wind-Reaver##62538
		Tell him _"<Please Fly me to the Terrace of Gurthan.>"_ |invehicle |goto 55.1,35.9
		only if havequest(31237) or havequest(31231)
	step
		Kill creatures until you get the buff:
		Pheremone Tracking |havebuff 132284 --Ability_Rogue_BloodyEye
		Locate and kill Eye's of the Empress
		|tip Start looking for red mist on the groud first.
		kill 6 Eye of the Empress##63783+ |q 31237/1 |goto 67.9,24.3
		only if havequest(31237)
	step
		In order to do the 'hidden' quest for this area, you must have at least one other person to help you
		confirm |future |q 31677
		only if havequest(31237) or havequest(31231)
	step
		Around this location you should be able to see a _green rune_ and a _red rune_
		One person will need to _/lay_ on the _green rune_, while the other must _/kneel_ at the _red rune_
		This will cause a level 90 Elite to spawn
		This daily is active for everyone in the area, so you should find some help easily
		kill Warlord Gurthan##65502
		collect Ashes of Warlord Gurthan##88715 |future |q 31677 |goto 66.2,31.8
		only if havequest(31237)
	step
		Click the _Ashes of Warlord Gurthan_ in your bags |use Ashes of Warlord Gurthan##88715
		accept The Warlord's Ashes##31677
		only if havequest(31237) or havequest(31677)
	step
		talk Xaril the Poisoned Mind##62151
		Tell him _"I am ready to fly, Xaril."_ |q 31216/1 |goto 54.9,36.2
		Ride Xaril the Poisoned Mind |invehicle |only if havequest(31216)
		only if havequest(31216)
	step
		Use the _Venom Bomb_ to kill the small enemies
		Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies
		kill 200 Mantid |q 31216/2
		kill 3 Kunchong |q 31216/3
		only if havequest(31216)
	step
		Click the Return to Klaxxi'vess button on your action bar |outvehicle
		only if havequest(31216)
	step
		talk Kil'ruk the Wind-Reaver##62538
		Ask him to fly you to the Clutches of Shek'zeer |invehicle |goto 55.0,35.9
		only if havequest(31109)
	step
		Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 38.3,30.3
		|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
		only if havequest(31109)
	step
		Enter this building |goto 37.0,28.1 < 10
		click Central Feeder##215762
		Sample the Central Feeder |q 31496/1 |goto 37.4,29.3
		only if havequest(31496)
	step
		Enter this building. |goto 39.3,29.3 < 10
		click Northeast Feeder##215700
		Sample the Northeast Feeder |q 31496/4 |goto 39.1,30.5
		only if havequest(31496)
	step
		kill Vess-Guard Na'kal##64890 |q 31503/1 |goto 39.3,30.9
		only if havequest(31503)
	step
		Enter this building |goto 38.3,32.0 < 10 |walk
		click East Feeder##215761
		Sample the East Feeder |q 31496/2 |goto 37.9,33.1
		only if havequest(31496)
	step
		Enter this building |goto 36.3,32.3 < 10 |walk
		click North Feeder##215703
		Sample the North Feeder |q 31496/3 |goto 37.0,32.8
		only if havequest(31496)
	step
		kill Shek'zeer Needler##64714+
		collect 24 Needler Wings##87401 |q 31502/1 |goto 35.2,31.3
		only if havequest(31502)
	step
		kill Greatback Mushan##62029
		collect 6 Mushan Tongue##85665 |q 31238/1 |goto 66.0,19.3
		You can find more Mushan around here |goto 56.9,23.4
		only if havequest(31238)
	step
		Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if havequest(31235)
		Destroy 20 Dreadspinner Eggs |q 31235/1 |only if havequest(31235) |goto 73.2,22.5
		kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if havequest(31231) |goto 73.2,22.5
		only if havequest(31235) or havequest(31231)
	step
		click Gurthani Tablet##213314
		collect 8 Gurthani Tablet##85634 |q 31232/1 |goto 68.1,30.0
		only if havequest(31232)
	step
		kill Mire Beast##63731+
		collect 1 Pristine Mire Beast Eye## |q 31234/1 |goto 67.7,37.1
		only if havequest(31234)
	step
		clicknpc Amber Tap##63740
		|tip These are located on trees. Look for Sapfly packs to find these easier.
		click Amber Pot##213319
		collect 6 Amber Sap##85664 |q 31233/1 |goto 66.6,43.8
		only if havequest(31233)
	step
		click Pheromone Mine##214964
		Disable 8 Pheromone Mines |q 31504/1 |goto 42.0,33.7
		You can find more mines here |goto 48.1,31.4
		only if havequest(31504)
	step
		Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if havequest(31487)
		kill 4 Dread Kunchong##64717 |q 31487/1 |only if havequest(31487) |goto 44.9,35.6
		kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if havequest(31487) |goto 44.9,35.6
		click Kunchong Cage##214292 |only if havequest(31494) |goto 44.9,35.6
		Free 8 Kunchong Hatchlings |q 31494/1 |only if havequest(31494) |goto 44.9,35.6
		only if havequest(31487) or havequest(31494)
	step
		kill Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
		Kill 40 Shek'zeer Mantid |q 31109/1 |goto 44.4,43.0
		|tip It's by far fastest to kill the tiny Shek'zeer Swarmborn by the dozen.
		only if havequest(31109)
	step
		kill Karanosh##64724 |tip She wanders around this area, so you may have to search for her.
		collect Enormous Kunchong Mandibles##87878
		Click the Enormous Kunchong Mandibles in your bags |use Enormous Kunchong Mandibles##87878
		accept The Matriarch's Maw##31599 |goto 41.4,33.2
		only if havequest(31109)
	step
		kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto 58.6,51.1 |only if havequest(31270)
		kill Chillwater Turtle##62160+ |only if havequest(31024)
		collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto 58.6,51.1 |only if havequest(31024)
		only if havequest(31270) or havequest(31024)
	stickystart "amberencrusted"
	stickystart "infectedwildlife"
	step
		kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto 62.0,65.8
		kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto 62.0,65.8
		only if havequest(31271)
	step
	label "amberencrusted"
		Use the Sonic Emitter in your bags on Ik'thik Amberstingers |use Sonic Emitter##85884
		kill Ik'thik Amberstinger##63728+
		collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto 61.4,70.3
		only if havequest(31268)
	step
	label "infectedwildlife"
		kill Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725+
		|tip Make sure that they have the Infected buff before you attack them. Only wildlife with that buff will count for this quest.
		kill 6 Infected wildlife |q 31272/1 |goto 60.7,67.7
		only if havequest(31272)
	step
		Enter the tunnel here |goto 66.8,63.8 < 10 |walk
		kill Mistblade Scale-Lord##63179 |q 31269/1 |goto 66.5,66.0
		only if havequest(31269)
	step
		Leave the tunnel |goto 66.8,63.8 < 10 |only if havequest(31269) |walk
		kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto 67.2,59.3
		only if havequest(31267)
	step
		talk Kil'ruk the Wind-Reaver##62538
		Ask him to fly you to Zan'vess |invehicle |goto 55.1,35.9
		only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
	step
		Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 31,70
		only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
	step
		As you complete quests in this area:
		clicknpc Dreadspore Bulbs##69093
		Destroy 15 Dreadspore Bulbs |q 31509/1 |n
		confirm
		only if havequest(31509)
	step
		kill Kypari Crawler##65231+ |only if havequest(31508)
		collect 6 Kyparite Shards##87874 |q 31508/1 |goto 31.5,69.6 |only if havequest(31508)
		kill Thought-Bound Miner##64970+ |only if havequest(31506)
		collect 6 Zan'thik Shackles##87813 |q 31506/1 |goto 31.5,69.6 |only if havequest(31506)
		kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto 31.5,69.6 |only if havequest(31111)
		kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto 31.5,69.6 |only if havequest(31111)
		only if havequest(31506) or havequest(31111) or havequest(31508)
	step
		kill Kypa'rak##65229
		collect 1 Massive Kyparite Core##87871 |n
		Click the Massive Kyparite Core in your bags |use Massive Kyparite Core##87871
		accept Kypa'rak's Core##31598 |goto 33.4,61.0
		only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
	step
		kill Vess-Guard Vik'az##64979+ |q 31505/1 |goto 29.1,74.7
		only if havequest(31505)
	step
		kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto 23.0,77.3
		only if havequest(31507)
	step
		All around this area
		clicknpc Dreadspore Bulbs##69093
		Destroy 15 Dreadspore Bulbs |q 31509/1
		only if havequest(31509)
	step
		click Zan'thik Resonating Crystal##214455
		kill Adjunct Sek'ot##64995 |q 31510/1 |goto 24.2,86.2
		only if havequest(31510)
	step
		clicknpc Kovok##63765
		Locate Kovok |q 31808/1 |goto 50.8,41.3
		only if havequest(31808)
	step
		Use the abilities on your hotbar to complete your task.
		kill Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
		Kill 200 Mantid |q 31808/2
		only if havequest(31808)
	step
		talk Kil'ruk the Wind-Reaver##62538
		turnin Dreadspinner Extermination##31231 |goto 55.0,35.9
		turnin Nope Nope Nope##31235 |goto 55.0,35.9
		turnin Culling the Swarm##31109 |goto 55.0,35.9
		turnin Mistblade Destruction##31267 |goto 55.0,35.9
		turnin Eradicating the Zan'thik##31111 |goto 55.0,35.9
		turnin Vess-Guard Duty##31505 |goto 55.0,35.9
		turnin The Warlord's Ashes##31677 |goto 55.0,35.9
	step
		talk Xaril the Poisoned Mind##62151
		turnin Dark Skies##31216 |goto 54.9,36.2
	step
		talk Hisek the Swarmkeeper##63785
		turnin Debugging the Terrace##31237 |goto 54.8,36.2
		turnin Quiet Now##31510 |goto 54.8,36.2
		turnin Infection##31272 |goto 54.8,36.2
		turnin Ordnance Disposal##31504 |goto 54.8,36.2
	step
		talk Korven the Prime##62180
		turnin An Ancient Empire##31232 |goto 54.3,36.1
		turnin Sap Tapping##31233 |goto 54.3,36.1
		turnin Sampling the Empire's Finest##31496 |goto 54.3,36.1
		turnin The Fight Against Fear##31270 |goto 54.3,36.1
		turnin The Scale-Lord##31269 |goto 54.3,36.1
		turnin Meltdown##31507 |goto 54.3,36.1
	step
		talk Ambersmith Zikk##64599
		turnin Kypa'rak's Core##31598 |goto 55.0,35.4
		turnin The Matriarch's Maw##31599 |goto 55.0,35.4
		only if havequest(31598) or havequest(31599)
	step
		talk Rik'kal the Dissector##65253
		turnin Bad Genes##31271 |goto 54.3,35.9
		turnin Wing Clip##31502 |goto 54.3,35.9
		turnin Shortcut to Ruin##31503 |goto 54.3,35.9
		turnin Putting An Eye Out##31234 |goto 54.3,35.9
		turnin Specimen Request##31508 |goto 54.3,35.9
		turnin Fear Takes Root##31509 |goto 54.3,35.9
	step
		talk Kaz'tik the Manipulator##63758
		turnin Brain Food##31238 |goto 54.3,35.8
		turnin Sonic Disruption##31487 |goto 54.3,35.8
		turnin Free From Her Clutches##31494 |goto 54.3,35.8
		turnin A Little Brain Work##31268 |goto 54.3,35.8
		turnin Kunchong Treats##31024 |goto 54.3,35.8
		turnin Rampage Against the Machine##31808 |goto 54.3,35.8
		turnin Shackles of Manipulation##31506 |goto 54.3,35.8
		|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
		|next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
		|next "end" |only if default
	step
		talk Ambersmith Zikk##64599
		buy 1 Grand Commendation of the Klaxxi##92522 |n
		Use the Commendation of the Klaxxi you just purchased. |condition ZGV:GetReputation("The Klaxxi").hasBonus |use Grand Commendation of the Klaxxi##92522 |goto 55.0,35.6
		only if rep("The Klaxxi")>=Revered
	step
		talk Kil'ruk the Wind-Reaver##62538
		accept Beneath The Heart Of Fear##31018 |goto 55.1,35.9
	step
		Enter this tunnel |goto 29.0,42.4 < 10 |walk
		kill Adjunct Ek'vem##62073+ |q 31018/1 |goto 30.7,40.3
	step
		kill Adjunct Ikkess##62074+ |q 31018/2 |goto 33.4,40.2
	step
		kill Adjunct Suruz##62075+ |q 31018/3 |goto 33.4,44.3
	step
		kill Adjunct Tzikzi##62076+ |q 31018/4 |goto 30.7,44.4
	step
		click Ancient Amber Chunk##212980
		Wake Xaril the Poisoned Mind |q 31018/5 |goto 31.9,42.5
	step
		_Exit_ the tunnel here |goto 29.0,42.4 < 10 |walk
		talk Xaril the Poisoned Mind##62151
		turnin Beneath The Heart Of Fear##31018 |goto 28.6,42.1
		accept Venomous Intent##31208 |goto 28.6,42.1
		accept Dark Wings, Dark Things##31209 |goto 28.6,42.1
		accept A Shade of Dread##31210 |goto 28.6,42.1
	step
		kill Ruby Venomtail##63588+, Dread Scarab##63587+
		collect 150 Scarab Wing##85572 |q 31209/1 |goto 24.7,41.8
		collect 8 Venomous Stinger##85571 |q 31208/1 |goto 24.7,41.8
		click Dreadshade##213267
		collect 8 Dreadshade##85573 |q 31210/1 |goto 24.7,41.8
		You can find more here |goto 26.4,36.4
		As well as here |goto 26.2,30.8
	step
		talk Xaril the Poisoned Mind##62151
		turnin Venomous Intent##31208 |goto 28.6,42.1
		turnin Dark Wings, Dark Things##31209 |goto 28.6,42.1
		turnin A Shade of Dread##31210 |goto 28.6,42.1
	step
		talk Xaril the Poisoned Mind##62151
		accept The Poisoned Mind##31211 |goto 28.6,42.1
	step
		talk Xaril the Poisoned Mind##62151
		Tell him _"I am ready to fly, Xaril."_ |invehicle |q 31211 |goto 28.6,42.1
	step
		Use the _Venom Syrum_ to kill the small enemies
		Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies
		Speak to Xaril the Poisoned Mind |q 31211/1
		kill 200 Mantid |q 31211/2
		kill 3 Kunchong |q 31211/3
		kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+,
	step
		talk Xaril the Poisoned Mind##62151
		turnin The Poisoned Mind##31211 |goto 54.9,36.2
	step
		talk Kor'ik##64815
		accept Dropping Our Signal##31439 |goto 54.8,34.1
	step
		Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
		Awaken Hisek the Swarmkeeper |q 31439/1 |goto 56.3,58.2
	step
		talk Hisek the Swarmkeeper##64672
		turnin Dropping Our Signal##31439 |goto 56.3,58.2
		accept Corruption Runs Deep##31441 |goto 56.3,58.2
	step
		kill Kor'ik##64583+ |q 31441/1 |goto 56.2,57.6
	step
		talk Hisek the Swarmkeeper##64705
		turnin Corruption Runs Deep##31441 |goto 56.3,57.6
		accept Damage Control##31458 |goto 56.3,57.6
		accept Extracting Answers##31465 |goto 56.3,57.6
	stickystart "venomcoatdmandible"
	step
		click Kypari Ik Beacon##214281
		Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto 55.6,47.1
	step
	label "venomcoatdmandible"
		kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto 50.5,45.8
		kill Ik'thik Swarmborn##64831+
		collect 6 Venom-Coated Mandible##87263 |q 31465/1 |goto 50.5,45.8
	step
		talk Hisek the Swarmkeeper##63785
		turnin Damage Control##31458 |goto 54.8,36.2
		turnin Extracting Answers##31465 |goto 54.8,36.2
		|next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
		|next "end" |only if default
	step
	label "exalted"
		talk Malik the Unscathed##66776
		Report to Malik the Unscathed |q 31959/1 |goto 40.4,34.4
	step
		Click the Auto complete quest box that appears below your minimap:
		turnin The Empress' Gambit##31959
		accept The Wrath of Shek'zeer##31609
	step
		While you are completing this quest, you will need to assist your Mantid Swarm in defeating 25 Mantid Subjugates.
		confirm
	stickystart "mantidsubs"
	step
		kill Akkolon##66783 |q 31609/1 |goto 44.6,35.2
		|tip You will have Paragons waiting in thie area to help you. If Akkolon is not in this location, you will have to wait to allow him to respawn.
	step
		kill Shox'tik##66784 |q 31609/2 |goto 41.6,39.8
		|tip You will have Paragons waiting in thie area to help you. If Shox'tik is not in this location, you will have to wait to allow him to respawn.
	step
		kill Manifestation of Terror##66785 |q 31609/3 |goto 43.8,29.6
		|tip You will have Paragons waiting in thie area to help you. If the Manifestation of Terror is not in this location, you will have to wait to allow it to respawn.
	step
	label "mantidsubs"
		kill 25 Mantid Subjugates |q 31609/4 |goto 43.4,33.0
	step
		talk Kil'ruk the Wind-Reaver##62538
		turnin The Wrath of Shek'zeer##31609 |goto 55.0,35.9
		accept Shadow of the Empire##31612 |goto 55.0,35.9
	step
		Follow Kil'ruk the Wind-Rever into the chamber
		Walk with Kil'ruk |q 31612/1
	step
		Next to you:
		talk Kil'ruk the Wind-Reaver##66800
		turnin Shadow of the Empire##31612
		|next "end"
	step
	label "end"
		This is the end of this guide.
		Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])

-------------------
----- Oracles -----
-------------------

ZygorGuidesViewer:RegisterInclude("Oracles_PreQuests",[[
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q The Part-time Hunter##12654/1 |goto Sholazar Basin 50.5,77.3
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto Sholazar Basin 50.5,76.6
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto Sholazar Basin 55,69.1
		accept The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
	step
		Talk to Goregek the Gorilla Hunter who is following you
		accept Tormenting the Softknuckles##12530
	stickystart "hardmatriarch"
	step
		kill 8 Hardknuckle Forager##28098 |q The Ape Hunter's Slave##12529/1 |goto Sholazar Basin 57.5,73.3
	step
		kill 6 Hardknuckle Charger##28096 |q The Ape Hunter's Slave##12529/2 |goto Sholazar Basin 61.1,71.7
	step
	label "hardmatriarch"
		Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
		|tip Softknuckles are baby gorillas.
		A Hardknuckle Matriarch will spawn eventually
		kill Hardknuckle Matriarch |q Tormenting the Softknuckles##12530/1 |goto Sholazar Basin 66.9,73.2
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
		turnin Tormenting the Softknuckles##12530 |goto Sholazar Basin 55,69.1
		accept The Wasp Hunter's Apprentice##12533 |goto Sholazar Basin 55,69.1
	step
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto Sholazar Basin 55.5,69.7
	step
		kill 6 Sapphire Hive Wasp##28086 |q The Wasp Hunter's Apprentice##12533/1 |goto Sholazar Basin 59.6,75.8
		kill 9 Sapphire Hive Drone##28085 |q The Wasp Hunter's Apprentice##12533/2 |goto Sholazar Basin 59.6,75.8
	step
		Enter the Sapphire Hive |goto Sholazar Basin 59.4,79.1 < 15
		Follow the path down to here |goto Sholazar Basin 57.1,79.3 < 10
		kill Sapphire Hive Queen##28087
		collect Stinger of the Sapphire Queen##38477 |q The Sapphire Queen##12534/1 |goto 57.1,79.4
	step
		Exit the hive |goto Sholazar Basin 55.0,69.1
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533
		turnin The Sapphire Queen##12534
	step
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
	step
		clicknpc Chicken Escapee##28161
		|tip They are all around the village.
		collect 12 Captured Chicken##38483 |q Flown the Coop!##12532/1
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
		accept The Underground Menace##12531 |goto Sholazar Basin 55.5,69.7
	step
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
	step
		click Skyreach Crystal Formation##190500
		collect 8 Skyreach Crystal Cluster##38504 |q Mischief in the Making##12535/1 |goto Sholazar Basin 56.6,84.6
	step
		kill Serfex the Reaver##28083
		collect Claw of Serfex##38473 |q The Underground Menace##12531/1 |goto Sholazar Basin 49.8,85
	step
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto Sholazar Basin 55,69.1
		turnin Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
		accept A Rough Ride##12536 |goto Sholazar Basin 55,69.1
	step
		talk Captive Crocolisk##28298
		Tell him "_Let's do this_".
		Travel to Mistwhisper Refuge |q A Rough Ride##12536/1 |goto Sholazar Basin 57.3,68.4
	step
		When you jump off the crocodile:
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	stickystart "mistgorlocs"
	step
		Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
		|tip It's a tall rectangle stone monument.
		click Arranged Crystal Formation##190502
		Sabotage the Mistwhisper Weather Shrine |q Lightning Definitely Strikes Twice##12537/1 |goto Sholazar Basin 45.4,37.2
	step
	label "mistgorlocs"
		kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		Kill #12# Mistwhisper Gorlocs |q The Mist Isn't Listening##12538/1 |goto Sholazar Basin 45.5,39.8
	step
		Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
		talk Zepik the Gorloc Hunter##28216
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto Sholazar Basin 55,69.1
		accept Just Following Orders##12540 |goto Sholazar Basin 55,69.1
	step
		talk Injured Rainspeaker Oracle##28217
		Pull it to its feet
		Kill the crocodile that spawns
		Locate the Injured Rainspeaker Oracle |q Just Following Orders##12540/1 |goto Sholazar Basin 55.7,64.9
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540
		accept Fortunate Misunderstandings##12570
		Tell him "_I am ready to travel to your village now_".
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q Fortunate Misunderstandings##12570/1 |goto Sholazar Basin 55.7,64.9
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto Sholazar Basin 54.6,56.3
		accept Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		talk Lafoo##28120
		accept Gods like Shiny Things##12572
	stickystart "shinycobra"
	step
		kill Venomtip##28358 |q Make the Bad Snake Go Away##12571/2 |goto Sholazar Basin 57.5,52.4
		|tip He walks back and forth on this small path near the waterfall.
	step
	label "shinycobra"
		Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q Gods like Shiny Things##12572/1 |goto Sholazar Basin 52.4,53.2
		kill 10 Emperor Cobra##28011 |q Make the Bad Snake Go Away##12571/1 |goto Sholazar Basin 52.4,53.2
	step
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
		accept Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		turnin Gods like Shiny Things##12572 |goto Sholazar Basin 54.6,56.3
	step
		talk Shaman Vekjik##28315
		Tell him "_I've brought an offering_".
		Extend the Peace Offering to Shaman Vekjik |q Making Peace##12573/1 |goto Sholazar Basin 51.3,64.6
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		accept Back So Soon?##12574 |goto Sholazar Basin 54.6,56.3
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto Sholazar Basin 42.1,38.6
		accept The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		accept Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
	stickystart "frenzyspear"
	step
		kill Warlord Tartek##28105 |q The Lost Mistwhisper Treasure##12575/1 |goto Sholazar Basin 41.3,19.8
		|tip He comes walking up on a red dragon.
	step
		click Mistwhisper Treasure##190578
		|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q The Lost Mistwhisper Treasure##12575/2 |goto Sholazar Basin 41.6,19.5
	step
	label "frenzyspear"
		kill 8 Frenzyheart Spearbearer##28080 |q Forced Hand##12576/1 |goto Sholazar Basin 40.4,26.4
		kill 6 Frenzyheart Scavenger##28081 |q Forced Hand##12576/2 |goto Sholazar Basin 40.4,26.4
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		turnin Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
		accept Home Time!##12577 |goto Sholazar Basin 42.1,38.6
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto Sholazar Basin 54.6,56.3
		accept The Angry Gorloc##12578 |goto Sholazar Basin 54.6,56.3
	step
		Travel to Mosswalker Village |q The Angry Gorloc##12578/1 |goto Sholazar Basin 75.3,54.1
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step
		talk Mosswalker Victim##28113
		Rescue #6# Mosswalker Victims |q The Mosswalker Savior##12580/1 |goto Sholazar Basin 75.4,52.4
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Mosswalker Savior##12580
	step
		click Lifeblood Shard##190702
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q Lifeblood of the Mosswalker Shrine##12579/1 |goto Sholazar Basin 68.9,54.6
	step
		You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin Lifeblood of the Mosswalker Shrine##12579 |goto Sholazar Basin 54.5,56.6
		accept A Hero's Burden##12581 |goto Sholazar Basin 54.5,56.6
	step
		During this next part you will fight a boss
		If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle Tribe quest and vice versa
		NOTE** _You must kill Artuis Slowly if you are high level_
		This will decrease your Reputation with the Frenzyheart Tribe to Hated
		kill Zepik the Gorloc Hunter##28668
		confirm
	step
		Enter the cave and follow the path |goto 72.2,57.3 < 10
		kill Artruis the Heartless##28659 |q  A Hero's Burden##12581/1 |goto Sholazar Basin 70.8,58.7
		click Artruis' Phylactery##190777
		|tip This will spawn after the fight.
		turnin A Hero's Burden##12581
]])

ZygorGuidesViewer:RegisterInclude("Oracles_Dailies",[[
		talk Jaloot##28667
		accept Hand of the Oracles##12689
		accept Return of the Friendly Dryskin##12695
	step
		talk High-Oracle Soo-say##28027
		turnin Return of the Friendly Dryskin##12695 |goto Sholazar Basin 54.6,56.4
	step
		talk High-Oracle Soo-say##28027
		accept Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.6,56.4
		Tell him, "_I need to find Lafoo_".
		collect Lafoo's Bug Bag##38622 |goto Sholazar Basin 54.6,56.4
	step
		talk Oracle Soo-nee##29006
		You will only be able to accept and turn in 1 of these 4 daily quests per day
		accept A Cleansing Song##12735 |or |goto Sholazar Basin 53.3,56.5
		accept Song of Fecundity##12737 |or |goto Sholazar Basin 53.3,56.5
		accept Song of Reflection##12736 |or |goto Sholazar Basin 53.3,56.5
		accept Song of Wind and Water##12726 |or |goto Sholazar Basin 53.3,56.5
	step
		talk Oracle Soo-dow##29149
		You will only be able to accept and turn in 1 of these 3 daily quests per day
		accept Mastery of the Crystals##12761 |or |goto Sholazar Basin 54.2,53.8
		accept Power of the Great Ones##12762 |or |goto Sholazar Basin 54.2,53.8
		accept Will of the Titans##12705 |or |goto Sholazar Basin 54.2,53.8
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q Appeasing the Great Rain Stone##12704/1 |goto Sholazar Basin 52.4,53.2
		only if havequest(12704)
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Atha##29033 |q A Cleansing Song##12735/1 |goto Sholazar Basin 42.7,42.8
		only if havequest(12735)
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Ha-Khalan##29018 |q A Cleansing Song##12735/2 |goto Sholazar Basin 49.4,62.7
		only if havequest(12735)
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Koosu##29034 |q A Cleansing Song##12735/3 |goto Sholazar Basin 48.8,70.5
		only if havequest(12735)
	step
		Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
		Play the Song of Fecundity #8# Times |q Song of Fecundity##12737/1 |goto Sholazar Basin 26.2,37.1
		only if havequest(12737)
	step
		Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Glimmering Pillar |q Song of Reflection##12736/1 |goto Sholazar Basin 50.0,37.4
		only if havequest(12736)
	step
		Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Suntouched Pillar |q Song of Reflection##12736/4 |goto Sholazar Basin 33.6,52.3
		only if havequest(12736)
	step
		Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Mosslight Pillar |q Song of Reflection##12736/2 |goto Sholazar Basin 36.4,74.7
		only if havequest(12736)
	step
		Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Skyreach Pillar |q Song of Reflection##12736/3 |goto Sholazar Basin 53.3,79.4
		only if havequest(12736)
	step
		Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
		Haiphoon has 2 forms: Water and Air
		|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area. When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them. When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area. When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them. After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate. Keep repeating this process.
		Devour #3# Aqueous Spirits |q Song of Wind and Water##12726/1 |goto Sholazar Basin 26.2,37.1
		Devour #3# Storm Revenants |q Song of Wind and Water##12726/2 |goto Sholazar Basin 26.2,37.1
		only if havequest(12726)
	step
		click Sparktouched Crystal Defenses##191209
		collect 1 Crystal of the Violent Storm##39694 |condition itemcount(39694)>=1 |q 12761 |goto Sholazar Basin 33.0,75.7
		collect 1 Crystal of Unstable Energy##39693 |condition itemcount(39693)>=1 |q 12761 |goto Sholazar Basin 33.0,75.7
		collect 1 Crystal of the Frozen Grip##39689 |condition itemcount(39689)>=1 |q 12761 |goto Sholazar Basin 33.0,75.7
		only if havequest(12761)
	step
		Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
		Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
		Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
		Use your crystals near Frenzyheart mobs around this area
		Kill #50# Frenzyheart Attackers |q Mastery of the Crystals##12761/1 |goto Sholazar Basin 22.2,78.0
		only if havequest(12761)
	step
		Use your Dormant Polished Crystal at the top of the Lifeblood Pillar next to the big red crystal |use Dormant Polished Crystal##39747
		collect Energized Polished Crystal##39748 |q Power of the Great Ones##12762/2 |goto Sholazar Basin 65.5,60.2
		only if havequest(12762)
	step
		Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
		Kill #30# Frenzyheart Attackers |q Power of the Great Ones##12762/1 |goto Sholazar Basin 22.2,78.0
		only if havequest(12762)
	step
		kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
		collect 1 Tainted Crystal##39266 |c |goto Sholazar Basin 22.9,76.0
		Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266 |goto Sholazar Basin 33.7,75.0<5
		Use Soo-holu's abilities to kill Frenzyheart mobs around this area
		Kill #30# Frenzyheart Attackers |q Will of the Titans##12705/1 |goto Sholazar Basin 22.2,78.0
		only if havequest(12705)
	step
		talk Lightningcaller Soo-met##28107
		turnin Mastery of the Crystals##12761 |goto Sholazar Basin 33.5,74.8 |only if havequest(12761)
		turnin Power of the Great Ones##12762 |goto Sholazar Basin 33.5,74.8 |only if havequest(12762)
		turnin Will of the Titans##12705 |goto Sholazar Basin 33.5,74.8 |only if havequest(12705)
	step
		talk Oracle Soo-nee##29006
		turnin A Cleansing Song##12735 |goto Sholazar Basin 53.3,56.5 |only if havequest(12735)
		turnin Song of Fecundity##12737 |goto Sholazar Basin 53.3,56.5 |only if havequest(12737)
		turnin Song of Reflection##12736 |goto Sholazar Basin 53.3,56.5 |only if havequest(12736)
		turnin Song of Wind and Water##12726 |goto Sholazar Basin 53.3,56.5 |only if havequest(12726)
	step
		talk High-Oracle Soo-say##28027
		turnin Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.6,56.4 |only if havequest(12704)
]])

--------------------------------------
----- Order of the Cloud Serpent -----
--------------------------------------

ZygorGuidesViewer:RegisterInclude("CS_PreQuests",[[
		talk Elder Anli##58564
		accept Wild Things##30134 |goto The Jade Forest/0 57.7,45.0
	step
		talk Instructor Tong##58225
		turnin Wild Things##30134 |goto 65.3,31.7
		accept Beating the Odds##30135 |goto 65.3,31.7
		accept Empty Nests##30136 |goto 65.3,31.7
		accept Egg Collection##30137 |goto 65.3,31.7
	stickystart "serpentegg"
	step
		Use the Silken Rope in your bags on Windward Hatchlings |use Silken Rope##78947
		Get 6 Hatchlings and bring them to this location |goto 65.8,31.2
		Return 6 Windward Hatchlings to their nests. |q 30136/1 |goto 64.4,31.1
	step
	label "serpentegg"
		kill Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+
		Kill 8 Slitherscale saurok |q 30135/1 |goto 68.1,31.2
		click Serpent Egg##215392
		collect 6 Serpent Egg##78959 |q 30137/1 |goto 68.1,31.2
	step
		talk Instructor Tong##58225
		turnin Beating the Odds##30135 |goto 65.3,31.7
		turnin Empty Nests##30136 |goto 65.3,31.7
		turnin Egg Collection##30137 |goto 65.3,31.7
		accept Choosing the One##30138 |goto 65.3,31.7
		turnin Choosing the One##30138 |goto 65.3,31.7
	step
		talk Instructor Tong##58225
		|tip You will only accept one of the following quests.
		accept The Rider's Journey##30139 |goto 65.3,31.7 |or
		accept The Rider's Journey##30140 |goto 65.3,31.7 |or
		accept The Rider's Journey##30141 |goto 65.3,31.7 |or
	step
		talk Instructor Skythorn##58228
		|tip You will only turn in one of the following quests.
		turnin The Rider's Journey##30139 |goto 57.6,45.1
		turnin The Rider's Journey##30140 |goto 57.6,45.1
		turnin The Rider's Journey##30141 |goto 57.6,45.1
		accept It's A...##30142 |goto 57.6,45.1
	step
		Watch the scene and see your egg hatch
		Egg Hatched |q 30142/1
	step
		talk Instructor Skythorn##58228
		turnin It's A...##30142 |goto 57.6,45.1
]])

ZygorGuidesViewer:RegisterInclude("CS_Dailies",[[
	step
	label "start"
		Proceeding to Order of the Cloud Serpent Dailies |condition completedq(30142) |next "dailies" |only if completedq(30142)
		Moving to the Order of the Cloud Serpent prequests. |next |condition not completedq(30142) |only if not completedq(30142)
	step
		#include "CS_PreQuests"
	step
	label "dailies"
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		accept Catch!##30151 |goto The Jade Forest 57.5,45.3 |or 2
		accept Pooped##31704 |goto The Jade Forest 57.5,45.3 |or 2
		accept Feeding Time##30156 |goto The Jade Forest 57.5,45.3 |or 2
		accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.5,45.3 |or 2
		accept Sweet as Honey##30150 |goto The Jade Forest 57.5,45.3 |or 2
		Make sure Your Hatchling offers no more quests and click here |confirm
		only if not completedq(30143)
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		accept Catch!##30151 |goto 57.5,45.3 |or 2
		accept Pooped##31704 |goto 57.5,45.3 |or 2
		accept Pooped##31716 |goto 57.5,45.3 |or 2
		accept Feeding Time##30156 |or 2
		accept The Easiest Way To A Serpent's Heart##30154 |goto 57.5,45.3 |or 2
		accept Sweet as Honey##30150 |goto 57.5,45.3 |or 2
		Make sure Your Hatchling offers no more quests and click here. |confirm
		only if completedq(30143)
	step
		talk Instructor Skythorn##58228
		accept Restoring the Balance##30155 |goto 57.6,45.1 |or 2
		accept Disarming the Enemy##30158 |goto 57.6,45.1 |or 2
		accept Thinning The Pack##31698 |goto 57.6,45.1 |or 2
		accept Weeping Widows##31706 |goto 57.6,45.1 |or 2
		accept A Tangled Web##31707 |goto 57.6,45.1 |or 2
		accept Monkey Mischief##31712 |goto 57.6,45.1 |or 2
		noquest
	step
		talk Jenova Longeye##58413
		|tip NOTE: You will be able to accept Fragments of the Past at any level Archaeology, but won't be able to do the quest unless your skill in Archaeology is 525 or more.
		accept Just a Flesh Wound##30148 |goto 57.5,44.7 |only if skill("First Aid")>=525
		accept A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
		accept Fragments of the Past##30147 |goto 57.5,44.7 |only if skill("Archaeology")>=525
		accept Snack Time##30146 |goto 57.5,44.7 |only if skill("Fishing")>=1
		She can also be found inside of the following building |goto The Jade Forest/0 57.3,45.7
	step
		talk Elder Anli##58564
		accept Slitherscale Suppression##31194 |goto 57.6,44.9 |or 2
		accept Madcap Mayhem##31703 |goto 57.6,44.9 |or 2
		accept Dark Huntress##31701 |goto 57.6,44.9 |or 2
		accept On The Prowl##31702 |goto 57.6,44.9 |or 2
		accept The Seed of Doubt##31711 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9 |or 2
		accept The Big Kah-Oona##31715 |goto 57.6,44.9 |or 2
		noquest
	step
		talk Ningna Darkwheel##58509
		accept Sprite Fright##31699 |goto 58.3,45.0 |or
		accept The Shoe Is On The Other Foot##31700 |goto 58.3,45.0 |or
		noquest
	step
		talk Suchi the Sweet##58510
		accept Preservation##30159 |goto 58.5,44.7 |or
		accept Emptier Nests##30157 |goto 58.5,44.7 |or
		noquest
	step
		talk Big Bao##58508
		accept Lingering Doubt##31709 |goto 57.5,44.0
		noquest
	step
		talk Qua-Ro Whitebrow##58511
		accept Serpent's Scale##31708 |goto 57.3,43.5
		accept Saving the Serpents##31714 |goto 57.3,43.5
		noquest
	step
		talk Instructor Windblade##58420
		accept The Sky Race##30152 |goto The Jade Forest 58.6,43.7
		noquest
	step
		talk Ace Longpaw##58506
		accept The Big Brew-haha##31713 |goto 58.0,43.7
		noquest
	step
		talk Instructor Windblade##58420
		Tell her you are ready to start the Sky Race.
		Ride your Dragon! |invehicle |goto 58.6,43.7
		only if havequest(30152)
	step
		map The Jade Forest/0
		path loop on; follow strict; dist 40
		path	60.6,39.4	59.7,31.5	61.3,25.2
		path	66.3,36.0	66.2,42.4	66.8,51.4
		path	64.0,51.0	60.4,52.9	61.8,54.5
		path	58.7,46.8	58.4,46.4	58.1,46.0
		Follow this path and collect the checked flags hanging off of the Checkpoint balloons
		As you fly, gain speed by flying through cloud rings
		Pass 10 Checkpoints |q 30152/1
		Pass underneath the Finish Line |q 30152/2
		only if havequest(30152)
	step
		talk Qua-Ro Whitebrow##58511
		Challenge him to a duel!
		Defeat Qua-Ro Whitebrow |q 31721/1 |goto 57.3,43.5
		only if havequest(31721)
	step
		talk Ace Longpaw##58506
		Challenge him to a duel!
		Defeat Ace Longpaw |q 31717/1 |goto 58.0,43.7
		only if havequest(31717)
	step
		talk Big Bao##58508
		Challnge him to a duel!
		Defeat Big Bao |q 31718/1 |goto 57.5,44.0
		only if havequest(31718)
	step
		talk Suchi the Sweet##58510
		Challenge her to a duel!
		Defeat Suchi the Sweet |q 31720/1 |goto 58.5,44.7
		only if havequest(31720)
	stickystart "slitherharpoon"
	stickystart "saltback"
	step
		kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto 69.8,31.3
		only if havequest(31194)
	step
	label "slitherharpoon"
		kill 8 Slitherscale saurok Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |q 30155/1 |goto 68.1,31.2 |only if havequest(30155)
		click Slitherscale Weapons##210277 |only if havequest(30158)
		collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto 68.1,31.2 |only if havequest(30158)
		click Serpent Egg##215392 |only if havequest(30159)
		collect 8 Stolen Egg##79067 |q 30159/1 |goto 68.1,31.2 |only if havequest(30159)
	step
	label "saltback"
		kill Saltback Turtle##58218+, Saltback Yearling##58219+
		collect 15 Saltback Meat Scrap##79028 |n
		Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
		collect 3 Saltback Meat##79027 |n
		Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1 |goto 64.6,33.3
		only if havequest(30156)
	step
		Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
		Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
		Catch the Ball #8# times |q 30151/1 |goto 57.2,45.2
		only if havequest(30151)
	step
		click Hatchling Poop##214863
		|tip It is all around this area.
		collect 5 Tiny Bag of Poop##89052 |q 31704/1 |goto 55.1,46.5
		only if havequest(31704)
	step
		click Hatchling Poop##214863
		|tip It is all around this area.
		collect 5 Big Bag of Poop##89053 |q 31716/1 |goto 55.1,46.5
		only if havequest(31716)
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Pooped##31704 |goto 57.5,45.4
		only if havequest(31704)
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Pooped##31716 |goto 57.5,45.4
		only if havequest(31716)
	stickystart "stolenboots"
	step
		kill Shadowfae Madcap##65613 |q 31703/1 |goto 62.7,27.4
		only if havequest(31703)
	step
		_Enter_ the cave |goto The Jade Forest/0 64.4,25.8 < 10 |walk
		kill Windward Huntress##63538 |q 31701/1 |goto 64.7,25.7
		only if havequest(31701)
	step
		kill Windward Saber##65612 |q 31702/1 |goto 63.8,22.3
		only if havequest(31702)
	step
	label "stolenboots"
		kill Windward Tiger##63537 |only if havequest(30154)
		collect 5 Tiger Flank##85282 |q 30154/1 |goto 62.8,24.7 |only if havequest(30154)
		kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto 62.8,24.7 |only if havequest(31699)
		kill 8 Windward Alpha+, Windward Tiger##63537+ |q 31698/1 |goto 62.8,24.7 |only if havequest(31698)
		click Stolen Boots##214868 |only if havequest(31700)
		collect 14 Stolen Boots##89054 |q 31700/1 |goto 62.8,24.7 |only if havequest(31700)
	stickystart "widowspawn"
	step
		_Enter_ the cave |goto 58.0,31.7 < 10 |walk
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.7,25.7
		only if havequest(31709)
	step
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.0,31.9
		only if havequest(31709)
	step
		_Enter_ the cave |goto 58.0,31.7 < 10 |walk
		kill Seed of Doubt |q 31711/1 |goto The Jade Forest/15 35.7,40.2
		only if havequest(31711)
	step
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.0,74.1
		only if havequest(31709)
	step
	label "widowspawn"
		_Enter_ the cave |goto 58.0,31.7 < 10
		kill Widowspawn##65658 |only if havequest(31710)
		collect 100 Tiny Spider Eye##88907 |q 31710/1 |only if havequest(31710)
		kill 7 Weeping Widow##65653+ |q 31706/1 |only if havequest(31706)
		click Serpent's Scale##214844 |only if havequest(31708)
		collect 25 Serpent's Scale##88895 |q 31708/1 |only if havequest(31708)
		kill Widow's Web##65634+ |only if havequest(31707)
		Free #5# Sri-La Villagers |q 31707/1 |only if havequest(31707)
		only if havequest(31706) or havequest(31707) or havequest(31708) or havequest(31710)
	stickystart "rescueserp"
	stickystart "oonabrew"
	stickystart "oonagoon"
	step
		_Leave_ the cave |goto The Jade Forest/15 75.8,19.0 < 10 |only if havequest(31708) or havequest(31710) or havequest(31706) or havequest(31711) or havequest(31709) or havequest(31707) |walk
		_Enter_ the Oona Kagu cave |goto The Jade Forest/0 57.7,27.7 < 10 |only if havequest(31715) |walk
		kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.8,77.8
		only if havequest(31715)
	step
	label "rescueserp"
		clicknpc Serpent##128767
		collect 10 Rescued Serpent##88894 |q 31714/1 |goto 55.2,28.4
		only if havequest(31714)
	step
	label "oonabrew"
		kill Oona Brewchugger##65624
		click Stolen Sri-La Keg##214986
		collect 100 Sri-La Stout##88855 |q 31713/1 |goto 55.2,28.4
		only if havequest(31713)
	step
	label "oonagoon"
		kill 13 Oona Goon##65621+, Oona Brewchugger##65624+, Oona Tuna-Catcher##65623+ |q 31712/1 |goto 55.2,28.0
		only if havequest(31712)
	step
		Use your Silken Rope on _Windward Hatchlings_ |use Silken Rope##78947
		Bring the Windward Hatchlings to the nest at |goto 63.4,31.4
		Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest 64.5,31.1
		only if havequest(30157)
	step
		Use your First Aid skill to create 8 _Windwool Bandages_ or _Heavy Windwool Bandages_
		You can also ask other players to sell you some bandages
		create 8 Heavy Windwool Bandage##102698,First Aid,8 total |only if skill("First Aid")>=550 and skill("First Aid")<600
		collect 8 Windwool Bandage##72985 |only if skill("First Aid")<550
		or
		create 8 Heavy Windwool Bandage##102699,First Aid,8 total  |only if skill("First Aid")>=600
		collect 8 Heavy Windwool Bandage##72986 |only if skill("First Aid")<550
		only if havequest(30148)
	step
		Use your Windwool Bandages on Injured Hatchlings |use Windwool Bandage##72985
		Heavy Windwool Bandages work, too |use Heavy Windwool Bandage##72986
		Bandage #8# Injured Hatchlings |q 30148/1 |goto 63.9,31.1
		only if havequest(30148)
	step
		Use your Fishing skill to fish in the water here |cast Fishing##7620
		|tip You will have to fish from Pools if you have low Fishing Skill.
		collect 10 Sugar Minnow##79046 |q 30146/1 |goto 57.0,43.0 |only if havequest(30146)
		collect 10 Golden Carp##74866 |only if havequest(30149)
		You can find more pools of fish here |goto The Jade Forest/0 54.8,51.5
		only if havequest(30146) or havequest(30149)
	step
		Use your Cooking skill to create 5 Fish Cakes
		create 5 Fish Cake##104297,Cooking,5 total |q 30149/1 |or
		buy 5 Fish Cake##74641 |or
		You can ask other players to sell you some, if they happen to have leftovers
		only if havequest(30149)
	step
		kill Honeykeeper##58363+
		collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest 55.1,47.2
		only if havequest(30150)
	step
		talk Ace Longpaw##58506
		turnin The Big Brew-haha##31713 |goto 58.0,43.7
		only if havequest(31713)
	step
		talk Elder Anli##58564
		|tip You will only have a couple of these quests.
		turnin Slitherscale Suppression##31194 |goto 57.6,44.9
		turnin Dark Huntress##31701 |goto 57.6,44.9
		turnin On The Prowl##31702 |goto 57.6,44.9
		turnin Restoring the Balance##30155 |goto 57.6,44.9
		turnin Disarming the Enemy##30158 |goto 57.6,44.9
		turnin Madcap Mayhem##31703 |goto 57.6,44.9
		turnin The Easiest Way To A Serpent's Heart##30154 |goto 57.6,44.9
		turnin Sprite Fright##31699 |goto 57.6,44.9
		turnin Thinning The Pack##31698 |goto 57.6,44.9
		turnin The Shoe Is On The Other Foot##31700 |goto 57.6,44.9
		turnin Weeping Widows##31706 |goto 57.6,44.9
		turnin The Seed of Doubt##31711 |goto 57.6,44.9
		turnin A Tangled Web##31707 |goto 57.6,44.9
		turnin The Sky Race##30152 |goto 57.6,44.9
		turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9
		turnin The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9
		turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9
		turnin The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9
		turnin Preservation##30159 |goto 57.6,44.9
		turnin Lingering Doubt##31709 |goto 57.6,44.9
		turnin Emptier Nests##30157 |goto 57.6,44.9
		turnin Monkey Mischief##31712 |goto 57.6,44.9
		turnin The Big Kah-Oona##31715 |goto 57.6,44.9
		turnin Saving the Serpents##31714 |goto 57.6,44.9
	step
		Talk to Your Hatchling
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Tiny Treats##31710 |goto 57.5,45.3 |only if havequest(31710)
		turnin Sweet as Honey##30150 |goto 57.5,45.3 |only if havequest(30150)
		turnin Feeding Time##30156 |goto 57.5,45.3 |only if havequest(30156)
		turnin Pooped##31704 |goto 57.5,45.3 |only if havequest(31704)
		turnin The Easiest Way To A Serpent's Heart##30154 |only if havequest(30154)
		only if havequest(31710) or havequest(30150) or havequest(30156) or havequest(31704) or havequest(30154)
	step
		Talk to Your Hatchling |goto 57.5,45.3
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		confirm
		only if not completedq(30143)
	step
		Talk to Your Hatchling |goto 57.5,45.3
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		confirm
		only if completedq(30143)
	step
		Open your world map, find dig sites in Pandaria, then go to them
		|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
		Use your Survey ability inside the dig site area |cast Survey##80451
		A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
		Click the Archaeology Fragments that spawn on the ground
		collect 6 Serpentrider Relic## |q 30147/1
		only if havequest(30147)
	step
		talk Jenova Longeye##58413
		turnin Just a Flesh Wound##30148 |goto 57.5,44.7 |only if skill("First Aid")>=525
		turnin A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
		turnin Fragments of the Past##30147 |goto 57.5,44.7
		turnin Snack Time##30146 |goto 57.5,44.7
	step
		Talk to Your Hatchling |goto 57.5,45.4
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		turnin Sweet as Honey##30150
		only if havequest(30150)
	step
		talk Elder Anli##58564
		turnin Catch!##30151 |goto 57.6,44.9
		only if havequest(30151)
	step
		talk Elder Anli##58564
		accept Needle Me Not##31705 |goto 57.6,44.9
		only if completedq(30151)
	step
		Use the Golden Honey in your bags |use Golden Honey##89113
		kill Orchard Needler |q 31705/1 |goto 57.0,41.2
		only if havequest(31705)
	step
		talk Elder Anli##58564
		turnin Needle Me Not##31705 |goto 57.6,44.9
		|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
		|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
		|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
	step
	label "revered"
		talk San Redscale##58414
		buy 1 Grand Commendation of the Order of the Cloud Serpent##93229 |n
		Use the Commendation of the Order of the Cloud Serpent you just purchased |goto The Jade Forest 56.6,44.4 |condition ZGV:GetReputation("Order of the Cloud Serpent").hasBonus |use Grand Commendation of the Order of the Cloud Serpent##93229
		only if rep("Order of the Cloud Serpent")>=Revered
	step
		talk Elder Anli##58564
		accept They Grow Like Weeds##30143 |goto 57.6,44.9
	step
		talk Instructor Windblade##58420
		Ask Instructor Windbalde how your serpent is doing
		Speak to Instructor Windblade |q 30143/1 |goto 58.6,43.7
	step
		talk Instructor Windblade##58420
		turnin They Grow Like Weeds##30143 |goto 58.6,43.7
		accept Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if havequest(30144)
	step
		Fly your Cloud Serpent through the rings made from clouds
		Fly through #6# Cloud Rings |q 30144/1
	step
		Click the Leave Vehicle button |outvehicle |c |goto 58.6,43.7
	step
		talk Instructor Windblade##58420
		turnin Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
		accept Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if havequest(30145)
	step
		Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide
		If you move too slowly or get too far away from the guide, the course will restart
		Finish the course |q 30145/1
	step
		talk Instructor Windblade##58420
		turnin Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
		accept Flight Training: In Due Course##30187 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if havequest(30187)
	step
		map The Jade Forest/0
		path loop on; follow strict; dist 40
		path	60.6,39.4	59.7,31.5	61.3,25.2
		path	66.3,36.0	66.2,42.4	66.8,51.4
		path	64.0,51.0	60.4,52.9	61.8,54.5
		path	58.7,46.8	58.4,46.4
		Follow this path and collect the checked flags hanging off of the Checkpoint balloons
		As you fly, gain speed by flying through cloud rings
		Pass 10 Checkpoints |q 30187/1
	step
		talk Instructor Windblade##58420
		turnin Flight Training: In Due Course##30187 |goto 58.6,43.7
		|next "end"
	step
	label "exalted"
		talk Elder Anli##58564
		accept Riding the Skies##31811 |goto 57.6,45.0
	step
		Watch the cinematic
		Join the Order of the Cloud Serpent |q 31811/1
	step
		talk Elder Anli##58564
		turnin Riding the Skies##31811 |goto 57.6,45.0
	step
		Proceeding to the next step |next "end" |only if default
		Proceeding to Riding the Skies Quest |next "exalted" |only if rep('Order of the Cloud Serpent')==Exalted
	step
	label "exalted"
		talk Elder Anli##58564
		accept Riding the Skies##31810 |goto 57.7,44.9
	step
		talk Elder Anli##58564
		turnin Riding the Skies##31810 |goto 57.7,44.9
	step
	label "end"
		This the end of our daily guide
		Click here to go back to the beginning |confirm |next "start"
]])

---------------------
----- Shado Pan -----
---------------------

ZygorGuidesViewer:RegisterInclude("Shado_Pan_Dailies",[[
	step
	label "shado_dailies"
		Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes 49.5,70.6
		Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto 49.0,70.5 |next "bearheart"
		Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto 49.0,71.3 |next "ling"
	step
		talk Master Snowdrift##63009
		accept The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
		only if not completedq(31127)
		only if rep('Shado-Pan')>=Honored
	step
		talk Master Snowdrift##63009
		accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.4,70.6
		only if rep('Shado-Pan')>=Revered
	step
		talk Lao-Chin the Iron Belly##62978
		I'm here to challenge you! |q 31128/1 |goto 49.3,72.0
		only if havequest(31128)
	step
		talk Lao-Chin the Iron Belly##63135
		Tell him: _"All right, let's do this!"_
		Defeat Lao-Chin the Iron Belly |q 31128/2 |goto 50.6,67.8
		only if havequest(31128)
	step
		talk Master Snowdrift##63009
		turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.6,70.5
		only if havequest(31128)
	step
		talk Chao the Voice##62550
		Tell her you're here to challenge her! |q 31127/1 |goto 49.7,70.5
		only if havequest(31127)
	step
		talk Chao the Voice##63125
		Let's do this.
		Defeat Chao the Voice |q 31127/2 |goto 50.1,68.3
		only if havequest(31127)
	step
		talk Master Snowdrift##63009
		turnin The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
		only if havequest(31127)
	step
		talk Master Snowdrift##63009
		|tip You will only be able to accept 4 of the following dailies.
		accept Assault Fire Camp Gai-Cho##31113 |goto 49.4,70.6 |or 4
		accept Assault Deadtalker's Plateau##31114 |goto 49.4,70.6 |or 4
		accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto 49.4,70.6 |or 4
		accept Spirit Dust##31116 |goto 49.4,70.6 |or 4
		accept The Deadtalker Cipher##31118 |goto 49.4,70.6 |or 4
	step
		Talk to Chao the Voice or Protector Yi and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		|tip Yi patrols so you may need to search for him.
		talk Chao the Voice##62550 |goto 49.7,70.5
		talk Protector Yi##62546 |goto 49.3,71.3
		confirm
		only if not completedq(31128)
	step
		Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		|tip Yi patrols so you may need to search for him.
		talk Chao the Voice##62550 |goto 49.7,70.5
		talk Protector Yi##62546 |goto 49.3,71.3
		talk Lao-Chin the Iron Belly##62978 |goto 49.3,71.9
		confirm
		only if completedq(31128)
	step
		kill Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if havequest(31113)
		Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |goto 63.4,43.3 |only if havequest(31113)
		click Highly Explosive Yaungol Oil Barrel##212877 |only if havequest(31119)
		collect Highly Explosive Yaungol Oil##84762 |n |goto 63.4,43.3
		|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if havequest(31119)
	step
		Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
		kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
		Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto 60.2,48.6
		If you run out of oil, you can find more around this area |goto 63.4,43.3
		only if havequest(31119)
	stickystart "spiritremains"
	step
		kill Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+
		collect Ciphered Scroll##84759 |q 31118/1  |goto 51.1,51.8
		only if havequest(31118)
	step
	label "spiritremains"
		kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto 51.1,51.8 |only if havequest(31114)
		kill Deadtalker Crusher##62844 |q 31114/2 |goto 51.1,51.8
		|tip He is elite but with your companion you should be able to defeat him. |only if havequest(31114)
		kill Defiled Spirit##62679 |only if havequest(31116)
		collect Ancient Spirit Dust##84727 |n |only if havequest(31116)
		click Defiled Yaungol Remains##212779 |only if havequest(31116)
		Return 8 Spirits to Their Remains |q 31116/1 |goto 51.1,51.8 |only if havequest(31116)
	step
		Next to you will either be Chao the Voice or Protector Yi:
		Talk to Chao the Voice
		Talk to Protector Yi
		turnin Assault Fire Camp Gai-Cho##31113
		turnin Assault Deadtalker's Plateau##31114
		turnin The Enemy of My Enemy... Is Still My Enemy!##31119
		turnin Spirit Dust##31116
		turnin The Deadtalker Cipher##31118
		only if not completedq(31128)
	step
		Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
		Talk to Chao the Voice
		Talk to Protector Yi
		Talk to Lao-Chin the Iron Belly
		turnin Assault Fire Camp Gai-Cho##31113
		turnin Assault Deadtalker's Plateau##31114
		turnin The Enemy of My Enemy... Is Still My Enemy!##31119
		turnin Spirit Dust##31116
		turnin The Deadtalker Cipher##31118
		only if completedq(31128)
	step
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Uruk!##31117 |or
		accept Cheng Bo!##31120 |or
	step
		kill Uruk##62613 |q 31117/1 |goto 50.4,48.9
	step
		kill Cheng Bo##62554 |q 31120/1 |goto 60.7,42.1
	step
		talk Master Snowdrift##63009
		turnin Uruk!##31117 |goto 49.6,70.5 |or
		turnin Cheng Bo!##31120 |goto 49.6,70.5 |or
		|next "end"
	///New questgiver today?
	step
	label "bearheart"
		talk Ban Bearheart##62304
		accept The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
		only if not completedq(31038)
		only if rep('Shado-Pan')>=Honored
	step
		talk Ban Bearheart##62304
		accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
		only if rep('Shado-Pan')>=Revered
	step
		talk Snow Blossom##62380
		Ask her to meet in the Challenger's Ring. |q 31038/1 |goto 48.9,70.1
		only if havequest(31038)
	step
		talk Snow Blossom##62834
		I challenge you!
		Defeat Snow Blossom |q 31038/2 |goto 50.2,67.9
		only if havequest(31038)
	step
		talk Ban Bearheart##62304
		turnin The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
		only if havequest(31038)
	step
		talk Yalia Sagewhisper##62303
		Ask her to meet you in the Challenger's Ring |q 31104/1 |goto 48.9,70.0
		only if havequest(31104)
	step
		talk Yalia Sagewhisper##62850
		I challenge you!
		Defeat Yalia Sagewhisper |q 31104/2 |goto 50.4,67.7
		only if havequest(31104)
	step
		talk Ban Bearheart##62304
		turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
		only if havequest(31104)
	step
		talk Ban Bearheart##62304
		accept Born Free##31047 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31105 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31106 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31039 |goto 49.0,70.4 |or 4
		accept Bronze Claws##31044 |goto 49.0,70.4 |or 4
		accept Illusions Of The Past##31045 |goto 49.0,70.4 |or 4
		accept Grave Consequences##31048 |goto 49.0,70.4 |or 4
		accept Dark Arts##31043 |goto 49.0,70.4 |or 4
		accept Onyx Hearts##31042 |goto 49.0,70.4 |or 4
		accept Spiteful Sprites##31040 |goto 49.0,70.4 |or 4
		accept Egg Rescue!##31041 |goto 49.0,70.4 |or 4
		accept Little Hatchlings##31046 |goto 49.0,70.4 |or 4
	step
		Talk to Snow Blossom or Fei Li and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Snow Blossom##62380 |goto 48.9,70.1
		talk Fei Li##62354 |goto 48.8,70.2
		confirm
		only if not completedq(31104)
	step
		Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Snow Blossom##62380 |goto 48.9,70.1
		talk Fei Li##62354 |goto 48.8,70.2
		talk Yalia Sagewhisper##62303 |goto 48.8,70.0
		confirm
		only if completedq(31104)
	step
		talk Moshu the Arcane##62810
		accept Through the Portal##31110 |goto 28.8,22.4
		only if not completedq(31110)
	step
		clicknpc Ball and Chain##62539 |only if havequest(31047)
		Free 6 Wild Cloudriders |q 31047/1 |goto 32.8,25.1 |only if havequest(31047)
		click Shan'ze Cage##215573 |goto 32.8,25.1 |only if havequest(31046)
		Free 20 Cloudrider Hatchlings. |q 31046/1 |goto 32.8,25.1 |only if havequest(31046)
		click Shiny Egg##214481 |only if havequest(31041)
		collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto 32.8,25.1 |only if havequest(31041)
		only if havequest(31041) or havequest(31046) or havequest(31047)
	stickystart "bronzeclaw"
	stickystart "darkwoodscharmer"
	stickystart "arcanepowder"
	step
		kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto 24.4,15.2 |only if havequest(31045)
		click Shan'ze Tablet##212319 |only if havequest(31043)
		collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto 24.4,15.2 |only if havequest(31043)
		click Mogu Burial Urn##212324 |only if havequest(31048)
		kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto 24.4,15.2 |only if havequest(31048)
		kill Onyx Stormclaw##62448 |only if havequest(31042)
		collect 4 Onyx Heart##83138 |q 31042/1 |goto 24.4,15.2 |only if havequest(31042)
	step
	label "bronzeclaw"
		kill Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if havequest(31105) or havequest(31106) or havequest (31039)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |goto 28.5,18.5 |only if havequest(31105)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |goto 28.5,18.5 |only if havequest(31106)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |goto 28.5,18.5 |only if havequest(31039)
		kill Bronze Quilen##62266+ |only if havequest(31044)
		collect 20 Bronze Claw##83153+ |q 31044/1 |goto 28.5,18.5 |only if havequest(31044)
	step
	label "darkwoodscharmer"
		kill Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
		Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1 |goto 23.0,19.5
		only if havequest(31040)
	step
	label "arcanepowder"
		kill Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
		collect 1000 Ancient Arcane Powder##84102+ |q 31110/1
		only if havequest(31110)
	step
		Next to you will either be Fei Li or Snow Blossom
		talk Fei Li##62354
		talk Snow Blossom##62380
		turnin The Mogu Menace##31105
		turnin The Mogu Menace##31106
		turnin The Mogu Menace##31039
		turnin Bronze Claws##31044
		turnin Illusions Of The Past##31045
		turnin Grave Consequences##31048
		turnin Dark Arts##31043
		turnin Onyx Hearts##31042
		turnin Born Free##31047
		turnin Spiteful Sprites##31040
		turnin Egg Rescue!##31041
		turnin Little Hatchlings##31046
		accept When The Dead Speak##31062 |or
		accept Riding the Storm##31061 |or
		accept In Sprite Of Everything##31049 |or
		only if not completedq(31104)
	step
		Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
		talk Fei Li##62354
		talk Snow Blossom##62380
		talk Yalia Sagewhisper##62303
		turnin The Mogu Menace##31105
		turnin The Mogu Menace##31106
		turnin The Mogu Menace##31039
		turnin Bronze Claws##31044
		turnin Illusions Of The Past##31045
		turnin Grave Consequences##31048
		turnin Dark Arts##31043
		turnin Onyx Hearts##31042
		turnin Born Free##31047
		turnin Spiteful Sprites##31040
		turnin Egg Rescue!##31041
		turnin Little Hatchlings##31046
		accept When The Dead Speak##31062 |or
		accept Riding the Storm##31061 |or
		accept In Sprite Of Everything##31049 |or
		only if completedq(31104)
	step
		Use the Bronze Claws on the Cloudrunners around this area |use Bronze Claws##83134
		kill Shan'ze Cloudrunner##62584
		Free 8 Shan'ze Cloudriders |q 31061/1 |goto 30.9,12.6
		only if havequest(31061)
	step
		Click the Leave Vehicle button |outvehicle
		only if havequest(31061)
	step
		_Enter_ the tunnel |goto 20.3,15.8 < 15
		kill Darkwoods Faerie##62522 |q 31049/1 |goto 19.5,13.8
		only if havequest(31049)
	step
		_Leave_ the tunnel |goto 20.3,15.8 < 15
		kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto 32.3,9.5
		|tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
		only if havequest(31062)
	step
		talk Moshu the Arcane##62810
		turnin Through the Portal##31110 |goto 28.8,22.4
		only if havequest(31110)
	step
		talk Ban Bearheart##62304
		turnin When The Dead Speak##31062 |goto 49.0,70.4
		turnin Riding the Storm##31061 |goto 49.0,70.4
		turnin In Sprite Of Everything##31049 |goto 49.0,70.4
		|next "end"
	/// New Questigver today
	step
	label "ling"
		talk Ling of the Six Pools##63614
		accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
		only if not completedq(31220)
		only if rep('Shado-Pan')>=Honored
	step
		talk Ling of the Six Pools##63614
		accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
		only if rep('Shado-Pan')>=Revered
	step
		talk Tenwu of the Red Smoke##63616
		Ask him to meet you in the Challenger's Ring |q 31221/1 |goto 48.9,71.2
		only if havequest(31221)
	step
		talk Tenwu of the Red Smoke##64471
		Let's see if you can back that talk up
		Defeat Temwu of the Red Smoke |q 31221/2 |goto 50.6,68.5
		only if havequest(31221)
	step
		talk Ling of the Six Pools##63614
		turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
		only if havequest(31221)
	step
		talk Hawkmaster Nurong##63618
		Ask him to meet you in the Challenger's Ring |q 31220/1 |goto 49.0,70.9
		only if havequest(31220)
	step
		talk Hawkmaster Nurong##64470
		Let's go!
		Defeat Hawkmaster Nurong |q 31220/2 |goto 50.7,68.2
		only if havequest(31220)
	step
		talk Ling of the Six Pools##63614
		turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
		only if havequest(31220)
	step
		talk Ling of the Six Pools##63614
		accept Sra'vess Wetwork##31196 |goto 49.0,71.3 |or 4
		accept The Bigger They Come...##31197 |goto 49.0,71.3 |or 4
		accept A Morale Victory##31198 |goto 49.0,71.3 |or 4
		accept Destroy the Siege Weapons!##31199 |goto 49.0,71.3 |or 4
		accept Fumigation##31200 |goto 49.0,71.3 |or 4
		accept Friends, Not Food!##31201 |goto 49.0,71.3 |or 4
	step
		Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Hawkmaster Nurong##63618 |goto 48.7,71.2
		talk Taoshi##63617 |goto 48.7,71.0
		confirm
		only if not completedq(31221)
	step
		Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you.
		|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Hawkmaster Nurong##63618 |goto 48.7,71.2
		talk Taoshi##63617 |goto 48.7,71.0
		talk Tenwu of the Red Smoke##63616 |goto 48.9,71.2
		confirm
		only if completedq(31221)
	step
		talk Ku-Mo##65341
		accept Seeking Father##30933 |goto 48.7,71.1
		If this quest is unavailable, click here. |confirm
		only if not completedq(30933)
	stickystart "lessergreatermantid"
	step
		click Sra'thik Siege Weapon##213311
		Small Southern Siege Weapon destroyed |q 31199/2 |goto 27.5,54.6
		only if havequest(31199)
	step
		click Sra'thik Siege Weapon##213311
		Large Southern Siege Weapon destroyed |q 31199/1 |goto 25.8,53.8
		only if havequest(31199)
	step
		click Sra'thik Idol##213309
		Southern Idol destroyed |q 31198/1 |goto 23.5,55.5
		only if havequest(31198)
	step
		click Sra'thik Idol##213309
		Central Idol destroyed |q 31198/3 |goto 21.5,49.2
		only if havequest(31198)
	step
		click Sra'thik Siege Weapon##213311
		Large Northern Siege Weapon destroyed |q 31199/3 |goto 27.2,41.2
		only if havequest(31199)
	step
		click Sra'thik Siege Weapon##213311
		Small Northern Siege Weapon destroyed |q 31199/4 |goto 26.2,39.8
		only if havequest(31199)
	step
		click Sra'thik Idol##213309
		Eastern Idol destroyed |q 31198/4 |goto 27.8,41.9
		only if havequest(31198)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Egg Chamber bombed |q 31200/3 |goto 23.6,44.7
		only if havequest(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Torture Cell bombed |q 31200/4 |goto 22.0,41.6
		only if havequest(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Slaughtering Pit bombed |q 31200/5 |goto 21.2,43.2
		only if havequest(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Amber Vault bombed |q 31200/1 |goto 21.0,45.9
		only if havequest(31200)
	step
		click Sra'thik Idol##213309
		Western Idol destroyed |q 31198/2 |goto 16.2,45.8
		only if havequest(31198)
	step
		talk Shado-Pan Trainee##64459
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/3 |goto 17.6,58.0
		only if havequest(31201)
	step
		talk Shado-Pan Trainee##64460
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/2 |goto 17.4,57.0
		only if havequest(31201)
	step
		talk Sentinel Ku-Yao##61694
		Tell him his son has been looking for him
		Search for Sentinel Ku-Yao. |q 30933/1 |goto 17.4,57.0
		only if havequest(30933)
	step
		talk Shado-Pan Trainee##64461
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/1 |goto 18.0,53.5
		only if havequest(31201)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Nutriment Cell bombed |q 31200/2 |goto 23.9,47.3
		only if havequest(31200)
	step
	label "lessergreatermantid"
		kill Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if havequest(31196)
		Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if havequest(31196)
		kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if havequest(31197)
		Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if havequest(31197)
	step
		Next to you is either Hawkmaster Nurong or Taoshi
		talk Taoshi##63617
		talk Hawkmaster Nurong##63618
		turnin Sra'vess Wetwork##31196
		turnin The Bigger They Come...##31197
		turnin A Morale Victory##31198
		turnin Destroy the Siege Weapons!##31199
		turnin Fumigation##31200
		turnin Friends, Not Food!##31201
		only if not completedq(31221)
	step
		Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
		Talk to Taoshi
		Talk to Hawkmaster Nurong
		Talk to Tenwu of the Red Smoke
		turnin Sra'vess Wetwork##31196
		turnin The Bigger They Come...##31197
		turnin A Morale Victory##31198
		turnin Destroy the Siege Weapons!##31199
		turnin Fumigation##31200
		turnin Friends, Not Food!##31201
		only if completedq(31221)
	step
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Target of Opportunity: Sra'thik Hivelord##31204 |or
		accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
	step
		kill Sra'thik Swarmlord##63693 |q 31203/1 |goto 16.4,40.9
		only if havequest(31203)
	step
		_Enter_ the building |goto 27.1,44.1 < 15
		kill Sra'thik Hivelord##63694 |q 31204/1 |goto 24.3,44.0
		only if havequest(31204)
	step
		_Leave_ the building |goto 27.1,44.1 < 15
		talk Ku-Mo##65341
		turnin Seeking Father##30933 |goto 48.7,71.1
		only if havequest(30933)
	step
		talk Ling of the Six Pools##63614
		turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto 49.0,71.4 |or
		turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto 49.0,71.4 |or
		|next "end"
	/// Exalted Reputation
	step
	label "end"
		talk Rushi the Fox##64595 |goto 48.8,70.6
		buy 1 Grand Commendation of the Shado-Pan##93220 |n
		Use the Commendation of the Shado-Pan you just purchased |condition ZGV:GetReputation("Shado-Pan").hasBonus |use Grand Commendation of the Shado-Pan##93220
		only if rep("Shado-Pan")>=Revered
	step
		talk Master Snowdrift##63009
		accept Mogu Incursions##31266 |goto 49.4,70.6
		only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		kill Shan'ze Spymaster##63888 |q 31266/1 |goto 48.8,58.6
		only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		talk Master Snowdrift##63009
		turnin Mogu Incursions##31266 |goto 49.4,70.6
		accept Surprise Attack!##31277 |goto 49.4,70.6
		only if rep('Shado-Pan')==Exalted and not completedq(31277)
	step
		talk Ban Bearheart##63908
		Tell him "Let's go".
		Join the battle of Niuzao Temple |q 31277/1 |goto 42.6,63.9
		only if havequest(31277)
	step
		Wait for the dialogue to end and fight off the invasion.
		kill Shan'ze Brutalizer##63933+, Hei Feng##63920
		|tip When he casts Deep Breath step behind him.
		Defeat the Mogu Invasion |q 31277/2 |goto 41.3,60.0
		only if havequest(31277)
	step
		talk Ban Bearheart##62304
		turnin Surprise Attack!##31277 |goto 49.2,71.0
		only if havequest(31277)
	step
		You have reached the end of this daily guide
		Click here to return to the start of the dailies |next "shado_dailies" |confirm
]])

---------------------
----- Therazane -----
---------------------

ZygorGuidesViewer:RegisterInclude("Therazane_Dailies", [[
	step
	label "dailies"
		talk Felsen the Enduring##43805
		accept Fear of Boring##27046 |goto Deepholm 56.1,14.4
		accept Motes##27047 |goto Deepholm 56.1,14.4
		accept Beneath the Surface##28488 |goto Deepholm 56.1,14.4
		|tip This quest can be offered at random and may not be offered everyday.
	step
		talk Terrath the Steady##43806
		accept The Restless Brood##28391 |goto 56.6,14.1
		|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However, the quest may not be offered everyday.
		only if rep ('Therazane') >= Revered
	step
		talk Pyrite Stonetender##44945
		accept Lost In The Deeps##26710 |goto 55.4,14.2
		|tip This quest can be offered at random and may not be offered everyday.
	step
		talk Gorsik the Tumultuous##43804
		accept Soft Rock##27049 |goto 57.3,12.5
		accept Fungal Fury##27050 |goto 57.3,12.5
	step
		talk Ruberick##44973
		accept Through Persistence##27051 |goto 59.6,14.0
		accept Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered |goto 59.6,14.0
		|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However, the quest may not be offered everyday.
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
		|tip It's a huge green crystal sitting on the ground.
		Strike the Pale Resonating Crystal |q 28391/1 |goto 32.7,24.3
		kill Aeosera##43641
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera. When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		Defeat Aeosera |q 28391/2
		only if rep ('Therazane') >= Revered
	step
		talk Terrath the Steady##43806
		turnin The Restless Brood##28391 |goto 56.6,14.1
		only if rep ('Therazane') >= Revered
	stickystart "painitemote"
	step
		Enter the cave |goto 58.3,25.6 < 10 |walk
		talk Ricket##44968
		accept Underground Economy##27048 |goto 61.3,26.2
		|tip This quest can be offered at random and may not be offered everyday.
	step
		Follow the path inside the cave
		Click the Ruby Gemstone Cluster
		|tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
		kill Enormous Gyreworm##48533
		collect Ruby Crystal Cluster##64404 |q 28488/1 |goto 66.1,28.1
	step
		Use Ricket's Tickers next to Deep Alabaster Crystals |use Ricket's Tickers##65514
		|tip They look like huge white rocks around this area.
		collect 3 Deep Alabaster Crystal##65504 |q 27048/1 |goto 63.6,23.0
	step
		Follow this path |goto 62.6,23.9 < 10 |only if walking
		Use Ricket's Tickers next to Deep Celestite Crystals |use Ricket's Tickers##65514
		|tip They look like huge blue rocks around this area.
		collect 3 Deep Celestite Crystal##65507 |q 27048/2 |goto 61.8,19.7
	step
		Follow this path |goto 62.0,18.0 < 10 |only if walking
		Use Ricket's Tickers next to Deep Amethyst Crystals |use Ricket's Tickers##65514
		|tip They look like huge purple rocks around this area.
		collect 3 Deep Amethyst Crystal##65508 |q 27048/3 |goto 64.4,18.6
	step
		Follow this path |goto 65.3,18.4 < 10 |only if walking
		Use Ricket's Tickers next to Deep Garnet Crystals |use Ricket's Tickers##65514
		|tip They look like huge red rocks around this area.
		collect 3 Deep Garnet Crystal##65510 |q 27048/4 |goto 66.4,20.2
	step
	label "painitemote"
		All around inside this cave:
		kill Gorged Gyreworm##42766+, Gyreworm##44257+
		kill 10 Gyreworm |q 27046/1 |goto 63.6,23.9
		Click Painite Shards
		|tip They look like small green glowing crystals sitting on the ground all around inside this cave.
		collect 10 Painite Mote##60791 |q 27047/1 |goto 63.6,23.9
	step
		talk Pebble##49956 |goto 63.1,20.8
		Tell him to follow you
	step
		Follow this path |goto 64.2,17.6 < 10 |only if walking
		talk Ricket##44968
		turnin Underground Economy##27048 |goto 61.3,26.2
	step
		Leave the cave |goto 58.3,25.6 < 10 |walk
		Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
		Bring Pebble to safety |q 26710/1 |goto 58.3,25.6
	step
		kill 8 Fungal Behemoth |q 27049/1 |goto 74.0,41.2
		kill Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
		collect Bag of Verlok Miracle-Grow##60767 |q 27051/1 |goto 74.0,41.2
		Click Sprouting Crimson Mushrooms
		|tip They look like tiny mushrooms on the ground around this area. Try to only click the solid blue, solid red or white-brown ones. The blue ones with red spots will explode and hurt you.
		Destroy 10 Freshly Sprouted Mushrooms |q 27050/1 |goto 74.0,41.2
	step
		Enter the cave |goto 68.6,29.1 < 10 |walk
		talk Earthmender Norsala##43503
		Tell her you're ready when she is
		kill Fungalmancer Glop |q 28390/1 |goto 69.8,31.9
		|tip Follow him each time he runs away. Avoid the mushrooms as you walk, they will give you a debuff. While fighting Fungalmancer Glop, kill the Boomshrooms he creates. Don't let them grow too big, they will explode and deal a lot of damage.
	step
		Follow the path up |goto 70.2,33.8 < 10 |only if walking
		Leave the cave |goto 68.6,29.1 < 10 |walk
		talk Felsen the Enduring##43805
		turnin Fear of Boring##27046 |goto Deepholm 56.1,14.4
		turnin Motes##27047 |goto Deepholm 56.1,14.4
		turnin Beneath the Surface##28488 |goto Deepholm 56.1,14.4
	step
		talk Pyrite Stonetender##44945
		turnin Lost In The Deeps##26710 |goto 55.4,14.2
	step
		talk Gorsik the Tumultuous##43804
		turnin Soft Rock##27049 |goto 57.3,12.5
		turnin Fungal Fury##27050 |goto 57.3,12.5
	step
		talk Ruberick##44973
		turnin Through Persistence##27051 |goto 59.6,14.0
		turnin Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered |goto 59.6,14.0
	step
		You have reached the end of the dailies for today.
		Click here to be taken back to the beginning of the dailies |confirm |next "dailies"
]])

-----------------------
----- The Tillers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Tillers_Quests",[[
		talk Tang Ironhoe##64036 |only Alliance
		accept The Tillers##31372 |goto Valley of the Four Winds 87.0,60.8 |only Alliance
		talk Farmhand Dooka##64011 |only Horde
		accept The Tillers##31374 |goto Vale of Eternal Blossoms 60.2,22.9 |only Horde
	step
		talk Farmer Yoon##58721
		turnin The Tillers##31372 |goto Valley of the Four Winds 52.0,48.0 |only Alliance
		turnin The Tillers##31374 |goto Valley of the Four Winds 52.0,48.0 |only Horde
		accept A Helping Hand##30252 |goto Valley of the Four Winds 52.0,48.0
	step
		clicknpc Unbudging Rock##58719
		Clear 8 Unbudging Rocks |q 30252/1 |goto 51.8,48.8
	step
		talk Farmer Yoon##58646
		turnin A Helping Hand##30252 |goto 52.8,47.9
	step
		talk Farmer Yoon##58646
		accept Learn and Grow I: Seeds##30535 |goto 52.3,48.8
	step
		talk Merchant Greenfield##58718
		Tell him you're there to pick up seeds
		Get a Packet of Green Cabbage Seeds |q 30535/1 |goto 52.9,52.2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow I: Seeds##30535 |goto 52.3,48.8
		accept Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
	step
		clicknpc Untilled Soil##59985+
		Till 2 patches of Soil |q 30254/1 |goto 52.0,48.3
		Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil |use EZ-Gro Green Cabbage Seeds##80302
		Plant seeds in 2 patches of Tilled Soil |q 30254/2 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
		accept Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
	step
		Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
		Water 2 parched Ez-Gro Green Cabbage |q 30255/1 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
		accept Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
		accept Learn and Grow V: Halfhill Market##30257 |goto 52.3,48.8
	step
		click Dark Soil##210582
		collect Marsh Lily##79268 |q 30257/1 |goto 52.8,48.0
	step
		talk Gina Mudclaw##58706
		turnin Learn and Grow V: Halfhill Market##30257 |goto 53.1,51.8
		accept Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |q 31945 |goto 52.9,52.2
	step
		clicknpc Untilled Soil##58562
		Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		Plant Scallion Seeds |q 31945/1 |goto 52.0,48.4
	step
	label "info"
		Click here for information on Bursting Crops |next "bursting" |confirm
		Click here for information on Parched Crops |next "parched" |confirm
		Click here for information on Infested Crops |next "infested" |confirm
		Click here for information on Wiggling Crops |next "wiggling" |confirm
		Click here for information on Alluring Crops |next "alluring" |confirm
		Click here for information on Smothered Crops |next "smothered" |confirm
		Click here for information on Wild Crops |next "wild" |confirm
		Click here for information on Runty Crops |next "runty" |confirm
		Click here for information on Tangled Crops |next "tangled" |confirm
	step
	label "bursting"
		Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops
		Click here if you are ready to harvest your crops |confirm
	step
		clicknpc Bursting Scallions##63160
		clicknpc Ripe Scallions##63165
		Harvest Ripe Scallions |q 31945/2 |goto 52.0,48.4
		collect 5 Scallion##74843 |q 31945/3 |goto 52.0,48.4
		|next "exit"
	step
	label "runty"
		clicknpc Runty Scallions##63166
		Press your Space Bar and jump |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "wiggling"
		clicknpc Wiggling Scallions##63169
		kill Voracious Virmen##60039 |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "infested"
		click Vintage Bug Sprayer##211331
		collect Vintage Bug Sprayer##80513 |n
		Use your Vintage Bug Sprayer on the Infested Scallions |goto 52.2,48.3 |use Vintage Bug Sprayer##80513
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "alluring"
		clicknpc Alluring Scallions##63159
		kill Swooping Plainshawk##60072 |goto 52.2,48.3
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "wild"
		clicknpc Wild Scallions##63170
		Ride the Scallion |invehicle |c |goto 52.0,48.4
	step
		Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability
		Build 50 stacks on Dominance |outvehicle |c
	step
		Click here to return to the information page. |next "info" |confirm
		Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label "tangled"
		clicknpc Tangled Scallions##63168 |goto 51.7,48.9 < 5
		confirm
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "parched"
		Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104
		Click here to return to the information page |next "info" |confirm |goto 52.0,48.4
		Click here when you are have tilled your crops |next "bursting" |confirm |goto 52.0,48.4
	step
	label "smothered"
		clicknpc Encroaching Weed##60185 |goto 52.0,48.4
		Ride the Weed |invehicle |c
	step
		Spam the Pull ability on your new hotbar
		Pull the Weed |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "exit"
		talk Gina Mudclaw##58706
		turnin Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
]])