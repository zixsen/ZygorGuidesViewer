local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"

------   SEARCH FOR "--" TO FIND IMPROVEMENTS TO MAKE ONCE FUNCTIONALITY IS IMPLEMENTED


-- show poi table with names visible: /run for k,v in ipairs(ZGV.Poi.Guide.steps) do v.tostring=function(s) return s.poi_treasure end end  ;  Spoo(nil,nil,ZGV.Poi.Guide.steps)

ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Treasures",{
	hidden=true,
	poi=true,
	poitype="treasure",
},[[
--//Shadowmoon Valley\\--
step
	|poi_treasure Alchemist's Satchel
	|poilvl 90
	|poispot Shadowmoon Valley D 54.92,45.01
	|poiquest 35581
	|poiitem 109124
	click Alchemist's Satchel##224756 |q 35581 |future |goto Shadowmoon Valley D 54.92,45.01
	|tip The Alchemist's Satchel is a small brown bag sitting on a small island in the lake.
step
	|poi_treasure Ancestral Greataxe
	|poilvl 90
	|poispot Shadowmoon Valley D 52.83,48.37
	|poiquest 35584
	|poiitem 113560
	_Go up_ the path here |goto Shadowmoon Valley D/0 51.0,47.9
	_Turn left_ at the top of the path |goto Shadowmoon Valley D/0 49.9,47.5
	_Continue_ along the path |goto Shadowmoon Valley D/0 51.9,49.5
	_Go to_ the small collection of stones |goto Shadowmoon Valley D 52.83,48.37
	click Ancestral Greataxe##232596 |q 35584 |future |goto Shadowmoon Valley D 52.83,48.37
	|tip It's an axe embedded in the ground at the base of the stones.
step
	|poi_treasure Armored Elekk Tusk
	|poilvl 90
	|poispot Shadowmoon Valley D 41.42,27.98
	|poiquest 33869
	|poiitem 108902
	_Go to_ the remains of the dead elekk |goto Shadowmoon Valley D 41.42,27.98
	click Armored Elekk Tusk##226854 |q 33869 |future |goto Shadowmoon Valley D 41.42,27.98
	|tip It is a large bone sticking up from the ground.
step
	|poi_treasure Ashes of A'kumbo
	|poilvl 90
	|poispot Shadowmoon Valley D 37.78,44.35
	|poiquest 33584
	|poiitem 113531
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed_ through the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 37.5,43.2
	_Go to_ the right alcove on the back wall |goto Shadowmoon Valley D 37.78,44.35
	click Ashes of A'kumbo##232582 |q 33584 |future |goto Shadowmoon Valley D 37.78,44.35
	|tip It is a vase located behind the stone in the alcove.
step
	|poi_treasure Astrologer's Box
	|poilvl 90
	|poispot Shadowmoon Valley D 49.31,37.60
	|poiquest 33867
	|poiitem 109739
	_Cross_ the bridge |goto Shadowmoon Valley D/0 51.9,38.5 < 8
	_Go to_ the road |goto Shadowmoon Valley D/0 50.5,39.5 < 12
	_Enter_ the pavillion |goto Shadowmoon Valley D/0 49.2,38.1 < 10
	_Go up_ the winding ramp |goto Shadowmoon Valley D/0 49.9,37.0 < 10
	_Reach the top_ of the ramp |goto Shadowmoon Valley D/0 49.1,36.6 < 10
	_Open_ the Astrologer's Box |goto Shadowmoon Valley D/0 49.4,37.6
	click Astrologer's Box##226831 |q 33867 |future |goto Shadowmoon Valley D/0 49.4,37.6
	|tip It is a small brown chest in front of the bookcase at the top of a winding ramp.
step
	|poi_treasure Beloved's Offering
	|poilvl 90
	|poispot Shadowmoon Valley D 36.77,41.42
	|poiquest 33046
	|poiitem 113547
	|poicurrency GL
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 37.1,41.6
	_Go to_ the first alcove on the left |goto Shadowmoon Valley D 36.77,41.42
	click Beloved's Offering##232591 |q 33046 |future |goto Shadowmoon Valley D 36.77,41.42
	|tip It's a bundle of flowers next to the stone in the alcove.
step
	|poi_treasure Bubbling Cauldron
	|poilvl 90
	|poispot Shadowmoon Valley D 37.18,23.13
	|poiquest 33613
	|poiitem 108945
	_Enter_ the cave here |goto Shadowmoon Valley D/0 37.8,22.3 < 5
	_Go left_ inside the cave |goto Shadowmoon Valley D/0 37.2,22.5
	_Go to_ the far cave wall |goto Shadowmoon Valley D 37.18,23.13
	click Bubbling Cauldron##2076 |q 33613 |future |goto Shadowmoon Valley D 37.18,23.13
	|tip It is a small dark cauldron.
step
	|poi_treasure Cargo of the Raven Queen
	|poilvl 90
	|poispot Shadowmoon Valley D 84.56,44.78
	|poiquest 33885
	|poicurrency GR
	map Shadowmoon Valley D/0
	path follow loose; loop off; ants curved; dist 15
	path	62.5,46.5	69.7,46.5	69.7,42.6
	path	70.3,40.0	72.1,37.5	74.8,39.9
	path	77.0,41.3	77.5,42.4	78.0,42.9
	path	78.3,44.3	78.1,45.4	79.4,45.3
	path	79.9,44.6	80.7,44.9	81.7,43.7
	path	82.4,42.6	83.8,42.8	84.56,44.78
	_Follow_ the path to the Raven Queen's cargo
	|tip Running through this area may flag you for PvP
	click Cargo of the Raven Queen##226865 |q 33885 |future
	|tip It is a medium sized brown chest.
step
	|poi_treasure Carved Drinking Horn
	|poilvl 90
	|poispot Shadowmoon Valley D 33.45,39.61
	|poiquest 33569
	|poiitem 113545
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go inside_ the room and to the first alcove on the left |goto Shadowmoon Valley D 33.45,39.61
	click Carved Drinking Horn##232583 |q 33569 |future |goto Shadowmoon Valley D 33.45,39.61
	|tip It looks like a giant tooth.
step
	|poi_treasure The Crystal Blade of Torvath
	|poilvl 90
	|poispot Shadowmoon Valley D 61.70,67.90
	|poiquest 34743
	|poiitem 111636
	|poicurrency GR
	_Follow_ this path |goto Shadowmoon Valley D/0 58.3,60.5
	_Continue along_ the path |goto Shadowmoon Valley D/0 58.8,63.9
	_Enter_ the clearing |goto Shadowmoon Valley D/0 60.7,67.1
	_Go to_ the boulder |goto Shadowmoon Valley D 61.70,67.90
	click The Crystal Blade of Torvath##230663 |q 34743 |future |goto Shadowmoon Valley D 61.70,67.90
	kill Silverleaf Ancient##79694
	|tip When you click the Blade, you will have to fight the three Ancients (one at a time).
step
	|poi_treasure Demonic Cache
	|poilvl 90
	|poispot Shadowmoon Valley D 20.38,30.65
	|poiquest 33575
	|poiitem 108904
	_Enter_ Gul'var |goto Shadowmoon Valley D/0 22.1,30.7
	_Go up_ this path and take the first left |goto Shadowmoon Valley D/0 20.4,29.2
	_Enter_ the hut |goto Shadowmoon Valley D 20.38,30.65
	click Demonic Cache##224785 |q 33575 |future |goto Shadowmoon Valley D 20.38,30.65
	|tip It is an ornate chest located directly in front of the stone pillar.
step
	|poi_treasure Dusty Lockbox
	|poilvl 90
	|poispot Shadowmoon Valley D 29.85,37.48
	|poiquest 36879
	|poiitem 3 RANDOM
	|poicurrency GL
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Go up_ this path |goto Shadowmoon Valley D/0 28.2,38.6
	_Jump onto_ the stone pillar here |goto Shadowmoon Valley D/0 27.9,40.5
	_Follow_ the pillar tops left towards the guard towers until you reach the treasure |goto Shadowmoon Valley D 29.85,37.48
	click Dusty Lockbox##236755 |q 36879 |future |goto Shadowmoon Valley D 29.85,37.48
	|tip It's a small chest on top of a stone pillar.
step
	|poi_treasure False-Bottomed Jar
	|poilvl 90
	|poispot Shadowmoon Valley D 51.75,35.49
	|poiquest 33037
	|poicurrency GL
	_Follow_ the road |goto Shadowmoon Valley D/0 49.1,32.2
	_Turn right_ here |goto Shadowmoon Valley D/0 52.1,33.9
	click False-Bottomed Jar##224783 |q 33037 |future |goto Shadowmoon Valley D 51.75,35.49
	|tip It's a large jar near several smaller ones.
step
	|poi_treasure Fantastic Fish
	|poilvl 90
	|poispot Shadowmoon Valley D 26.53,05.68
	|poiquest 34174
	|poicurrency GR
	_Follow_ the road |goto Shadowmoon Valley D/0 24.9,9.7
	_Enter_ the village |goto Shadowmoon Valley D/0 25.4,6.3
	_Go to_ the small island |goto Shadowmoon Valley D 26.53,05.68
	click Fantastic Fish##227743 |q 34174 |future |goto Shadowmoon Valley D 26.53,05.68
	|tip The fish is on top of the small barrel.
step
	|poi_treasure Giant Moonwillow Cone
	|poilvl 90
	|poispot Shadowmoon Valley D 34.39,46.23
	|poiquest 33891
	|poiitem 108901
	_Follow_ the path up the hill |goto Shadowmoon Valley D/0 39.5,53.6
	_Continue right_ along the path |goto Shadowmoon Valley D/0 37.7,54.9
	_Cross_ both bridges |goto Shadowmoon Valley D/0 36.1,50.6
	_Go around_ the right side of the tree |goto Shadowmoon Valley D/0 35.6,47.6
	_Cross_ the water to the shore and continue to the giant cone |goto Shadowmoon Valley D/0 34.4,46.2
	click Giant Moonwillow Cone##226862 |q 33891 |future |goto Shadowmoon Valley D/0 34.4,46.2
	|tip It's a giant cone on the ground.
step
	|poi_treasure Glowing Cave Mushroom
	|poilvl 90
	|poispot Shadowmoon Valley D 48.72,47.53
	|poiquest 35798
	|poiitem 109127
	_Enter_ the cave |goto Shadowmoon Valley D/0 46.4,45.0
	_Go right_ at the fork |goto Shadowmoon Valley D/0 48.2,46.6
	_Stand on_ this rock to loot the mushroom above you |goto Shadowmoon Valley D/0 48.74,47.44
	click Glowing Cave Mushroom##233241 |q 35798 |future |goto Shadowmoon Valley D/0 48.74,47.44
	|tip It's a blue-white mushroom with a concave top.
step
	|poi_treasure Greka's Urn
	|poilvl 90
	|poispot Shadowmoon Valley D 38.48,43.08
	|poiquest 33614
	|poiitem 113408
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 38.1,42.3
	_Go to_ the second alcove on the right |goto Shadowmoon Valley D 38.48,43.08
	click Greka's Urn##232588 |q 33614 |future
	|tip It's a small urn behind the stone in the alcove.
step
	|poi_treasure Hanging Satchel
	|poilvl 90
	|poispot Shadowmoon Valley D 47.15,46.03
	|poiquest 33564
	|poiitem 108900
	|poiitem 107640
	|poicurrency GL
	_Cross_ the water and climb the rock |goto Shadowmoon Valley D/0 53.5,47.7
	_Go up_ this path |goto Shadowmoon Valley D/0 50.9,48.0
	_Turn right_ at the top |goto Shadowmoon Valley D/0 49.3,47.3
	_Scale_ the rocks to reach the upper plateau |goto Shadowmoon Valley D/0 48.9,45.5
	_Scale_ the rocks to reach to highest plateau |goto Shadowmoon Valley D/0 48.4,46.5
	_Drop down_ |goto Shadowmoon Valley D/0 47.5,45.4
	|tip Be careful not to fall in the hole.
	Carefully _walk onto_ the branch |goto Shadowmoon Valley D 47.15,46.03
	click Hanging Satchel##224750 |q 33564 |future |goto Shadowmoon Valley D 47.15,46.03
	|tip It's a brown bag hanging from a branch over the cave.
step
	|poi_treasure Iron Horde Cargo Shipment
	|poilvl 90
	|poispot Shadowmoon Valley D 42.10,61.30
	|poiquest 33041
	|poicurrency GR
	_Go to_ the rear of the wagon |goto Shadowmoon Valley D 42.10,61.30
	click Iron Horde Cargo Shipment##227134 |q 33041 |future |goto Shadowmoon Valley D 42.10,61.30
	|tip It's a metal-bound chest in the back of the Iron Horde wagon.
step
	|poi_treasure Iron Horde Tribute
	|poilvl 90
	|poispot Shadowmoon Valley D 37.51,59.25
	|poiquest 33567
	|poiitem 108903
	_Go up_ the path |goto Shadowmoon Valley D/0 38.9,58.4
	_Turn right_ at the top of the trail |goto Shadowmoon Valley D/0 38.2,60.6
	_Enter_ this hut |goto Shadowmoon Valley D/0 37.1,59.6
	_Go to_ the rear of the hut |goto Shadowmoon Valley D 37.51,59.25
	click Iron Horde Tribute##224755 |q 33567 |future |goto Shadowmoon Valley D 37.51,59.25
	|tip It's a large padlocked chest.
step
	|poi_treasure Kaliri Egg
	|poilvl 90
	|poispot Shadowmoon Valley D 57.92,45.31
	|poiquest 33568
	|poiitem 113271
	_Go to_ the Kaliri nest behind the tree |goto Shadowmoon Valley D 57.92,45.31
	click Kaliri Egg##232579 |q 33568 |future |goto Shadowmoon Valley D 57.92,45.31
	|tip It's a large white egg in the center of a nest.
step
	|poi_treasure Mikkal's Chest
	|poilvl 90
	|poispot Shadowmoon Valley D 58.88,21.93
	|poiquest 35603
	|poiitem 113215
	_WARNING_: You will need to carefully avoid Alliance guards
	_Go to_ the top of the waterfall in Elodor |goto Shadowmoon Valley D/0 59.7,24.3
	_Cross_ the water and go to the top of the hill |goto Shadowmoon Valley D 58.88,21.93
	click Mikkal's Chest##232624 |q 35603 |future |goto Shadowmoon Valley D 58.88,21.93
	|tip It's a small brown chest located next to Painter Mikkal.
step
	|poi_treasure Mushroom-Covered Chest
	|poilvl 90
	|poispot Shadowmoon Valley D 52.88,24.86
	|poiquest 37254
	|poicurrency GR
	_Go to_ the Umbrafen Lake |goto Shadowmoon Valley D/0 52.2,26.1
	_Swim under_ the mushrooms to the very bottom of the lake |goto Shadowmoon Valley D 52.88,24.86
	click Mushroom-Covered Chest##232494 |q 37254 |future |goto Shadowmoon Valley D 52.88,24.86
	|tip It's a large brown chest.
step
	|poi_treasure Orc Skeleton
	|poilvl 90
	|poispot Shadowmoon Valley D 66.96,33.49
	|poiquest 36507
	|poiitem 116875
	_Go to_ the Moonlit Shore |goto Shadowmoon Valley D 66.96,33.49
	click Orc Skeleton##235860 |q 36507 |future |goto Shadowmoon Valley D 66.96,33.49
	|tip It's a tiny half-buried chest next to the Draenei Children.
step
	|poi_treasure Peaceful Offering 1
	|poilvl 90
	|poispot Shadowmoon Valley D 43.75,60.62
	|poiquest 33611
	|poiitem 107650
	_Go to_ the Western Pillar |goto Shadowmoon Valley D 43.75,60.62
	click Peaceful Offering 1##225503 |q 33611 |future |goto Shadowmoon Valley D 43.75,60.62
	|tip It's a small wicker chest at the base of the pillar.
step
	|poi_treasure Peaceful Offering 2
	|poilvl 90
	|poispot Shadowmoon Valley D 45.22,60.49
	|poiquest 33610
	|poiitem 107650
	_Go to_ the Eastern Pillar |goto Shadowmoon Valley D 45.22,60.49
	click Peaceful Offering 2##225503 |q 33610 |future |goto Shadowmoon Valley D 45.22,60.49
	|tip It's a small wicker chest at the base of the pillar.
step
	|poi_treasure Peaceful Offering 3
	|poilvl 90
	|poispot Shadowmoon Valley D 44.48,63.57
	|poiquest 33384
	|poiitem 107650
	_Go to_ the Southern Pillar |goto Shadowmoon Valley D 44.48,63.57
	click Peaceful Offering 3##225503 |q 33384 |future |goto Shadowmoon Valley D 44.48,63.57
	|tip It's a small wicker chest at the base of the pillar.
step
	|poi_treasure Peaceful Offering 4
	|poilvl 90
	|poispot Shadowmoon Valley D 44.49,59.14
	|poiquest 33612
	|poiitem 107650
	_Go to_ the Northern Pillar |goto Shadowmoon Valley D 44.49,59.14
	click Peaceful Offering 4##225503 |q 33612 |future |goto Shadowmoon Valley D 44.49,59.14
	|tip It's a small wicker chest at the base of the pillar.
step
	|poi_treasure Ronokk's Belongings
	|poilvl 90
	|poispot Shadowmoon Valley D 31.22,39.05
	|poiquest 33886
	|poiitem 109081
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go right_ |goto Shadowmoon Valley D/0 32.7,39.2
	_Enter_ this room |goto Shadowmoon Valley D/0 31.8,40.1
	_Go to_ the right alcove on the far wall |goto Shadowmoon Valley D 31.22,39.05
	click Ronokk's Belongings##226861 |q 33886 |future |goto Shadowmoon Valley D 31.22,39.05
	|tip It's a small chest in the alcove.
step
	|poi_treasure Rotting Basket
	|poilvl 90
	|poispot Shadowmoon Valley D/15 56.2,49.2
	|poiquest 33572
	|poiitem 113373
	_Take the path_ through Bloodthorn Hill |goto Shadowmoon Valley D/0 25.8,32.6
	_Enter_ Bloodthorn Cave |goto Shadowmoon Valley D/15 73.8,31.9
	_Go through_ the side entrance |goto Shadowmoon Valley D/15 54.9,37.8
	_Drop down_ and turn to the left |goto Shadowmoon Valley D/15 56.2,49.3
	click Rotting Basket##224781 |q 33572 |future |goto Shadowmoon Valley D/15 56.2,49.3
	|tip It's a small wicker chest located in front of the pile of bones.
step
	|poi_treasure Rovo's Dagger
	|poilvl 90
	|poispot Shadowmoon Valley D 36.68,44.55
	|poiquest 33573
	|poiitem 113378
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ the room |goto Shadowmoon Valley D/0 36.5,43.4
	_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 36.68,44.55
	click Rovo's Dagger##232586 |q 33573 |future
	|tip It's a dagger leaning against a stone in the alcove.
step
	|poi_treasure Scaly Rylak Egg
	|poilvl 90
	|poispot Shadowmoon Valley D 67.05,84.18
	|poiquest 33565
	|poiitem 44722
	modelnpc 85568
	_Warning_: This treasure is protected by Avalanche, a level 100 rare elemental
	_Cross_ the water to the Island here |goto Shadowmoon Valley D/0 64.3,84.8
	_Follow_ this path around |goto Shadowmoon Valley D/0 66.1,84.4
	_Enter_ the cave here |goto Shadowmoon Valley D/0 66.9,86.5
	_Go to_ the back-left of the cave |goto Shadowmoon Valley D 67.05,84.18
	click Scaly Rylak Egg##224753 |q 33565 |future |goto Shadowmoon Valley D 67.05,84.18
	|tip It's a stone-like egg in a nest.
step
	|poi_treasure Shadowmoon Exile Treasure
	|poilvl 90
	|poispot Shadowmoon Valley D 45.82,24.58
	|poiquest 33570
	|poiitem 113388
	_Enter_ the cave at the base of Exile's Rise |goto Shadowmoon Valley D/0 46.2,27.0
	_Swim to_ the rock inside the cave |goto Shadowmoon Valley D 45.82,24.58
	click Shadowmoon Exile Treasure##224770 |q 33570 |future |goto Shadowmoon Valley D 45.82,24.58
	|tip It's a brown chest half-covered with water next to the rock.
step
	|poi_treasure Shadowmoon Sacrificial Dagger
	|poilvl 90
	|poispot Shadowmoon Valley D 29.99,45.36
	|poiquest 35919
	|poiitem 113563
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Go up_ this path |goto Shadowmoon Valley D/0 29.4,41.4
	_Continue_ to the stairs |goto Shadowmoon Valley D/0 30.6,44.4
	_Go up_ the stairs |goto Shadowmoon Valley D 29.99,45.36
	click Shadowmoon Sacrificial Dagger##224780 |q 35919 |future |goto Shadowmoon Valley D 29.99,45.36
	|tip It's a small dagger impaled in the skeleton on the ground.
step
	|poi_treasure Shadowmoon Treasure
	|poilvl 90
	|poispot Shadowmoon Valley D 28.23,39.24
	|poiquest 33883
	|poicurrency GR
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Enter_ the hut |goto Shadowmoon Valley D/0 28.8,39.5
	_Go to_ the back room |goto Shadowmoon Valley D 28.23,39.24
	click Shadowmoon Treasure##233126 |q 33883 |future |goto Shadowmoon Valley D 28.23,39.24
	|tip It's a medium metal chest.
step
	|poi_treasure Stolen Treasure
	|poilvl 90
	|poispot Shadowmoon Valley D 27.05,02.48
	|poiquest 35280
	|poicurrency GR
	_Cross_ the water |goto Shadowmoon Valley D/0 27.4,5.8
	_Enter_ the cave |goto Shadowmoon Valley D/0 27.7,4.3
	_Go to_ the back of the cave |goto Shadowmoon Valley D 27.05,02.48
	click Stolen Treasure##232067 |q 35280 |future |goto Shadowmoon Valley D 27.05,02.48
	|tip It's a large brown chest.
step
	|poi_treasure Strange Spore
	|poilvl 90
	|poispot Shadowmoon Valley D 55.82,19.97
	|poiquest 35600
	|poiitem 118104
	_WARNING_: You will need to carefully avoid Alliance guards
	_Go to_ the steps |goto Shadowmoon Valley D/0 60.0,26.6 < 30
	_Climb_ the three flights of stairs |goto Shadowmoon Valley D/0 62.0,26.2 < 30
	_Go up_ the next set of stairs |goto Shadowmoon Valley D/0 63.7,25.0 < 30
	_Follow_ the path to the top of Exarch's Rise |goto Shadowmoon Valley D/0 60.5,20.6 < 20
	Use this rock to _jump up_ |goto Shadowmoon Valley D/0 59.8,18.9 < 10
	_Run up_ the hill here |goto Shadowmoon Valley D/0 59.9,17.6 < 5
	_Continue up_ and onto the hill |goto Shadowmoon Valley D/0 59.3,17.9 < 20
	_Continue around_ to the small grove of trees |goto Shadowmoon Valley D/0 56.5,17.9 < 20
	_Jump onto_ the giant mushroom top |goto Shadowmoon Valley D 55.82,19.97
	click Strange Spore##232621 |q 35600 |future
	|tip It looks like a giant orange and brown spore.
step
	|poi_treasure Sunken Fishing Boat
	|poilvl 90
	|poispot Shadowmoon Valley D 37.19,26.01
	|poiquest 35677
	|poiitem 118414
	_Go to_ the bottom of the pond |goto Shadowmoon Valley D 37.19,26.01
	click Sunken Fishing boat##233101 |q 35677 |future |goto Shadowmoon Valley D 37.19,26.01
	|tip It looks like the wooden frame of a partial boat.
step
	|poi_treasure Sunken Treasure
	|poilvl 90
	|poispot Shadowmoon Valley D 28.82,07.20
	|poiquest 35279
	|poicurrency GR
	_Follow_ the side of the boat |goto Shadowmoon Valley D/0 27.3,8.1
	click Sunken Treasure##220832 |q 35279 |future |goto Shadowmoon Valley D 28.82,07.20
	|tip It's an iron-bound chest at the bottom of the water.
step
	|poi_treasure Swamplighter Hive
	|poilvl 90
	|poispot Shadowmoon Valley D 55.29,74.87
	|poiquest 35580
	|poiitem 117550
	_Go to_ the river |goto Shadowmoon Valley D/0 52.0,69.0
	_Continue_ following the river southeast |goto Shadowmoon Valley D/0 53.5,73.0
	_Go to_ the base of the tree |goto Shadowmoon Valley D 55.29,74.87
	click Swamplighter Hive##232592 |q 35580 |future |goto Shadowmoon Valley D 55.29,74.87
	|tip It's a yellow beehive located up in the tree. All of the wasps will attack you when you click it.
step
	|poi_treasure Uzko's Knickknacks
	|poilvl 90
	|poispot Shadowmoon Valley D 35.85,40.87
	|poiquest 33540
	|poiitem 113546
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 36.1,41.9
	_Go to_ the second alcove on left |goto Shadowmoon Valley D 35.85,40.87
	click Uzko's Knickknacks##232587 |q 33540 |future |goto Shadowmoon Valley D 35.85,40.87
	|tip It's a brown chest inside the alcove.
step
	|poi_treasure Veema's Herb Bag
	|poilvl 90
	|poispot Shadowmoon Valley D 34.21,43.53
	|poiquest 33866
	|poiitem 109124
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go left_ |goto Shadowmoon Valley D/0 34.1,41.4
	_Enter_ this room |goto Shadowmoon Valley D/0 33.5,42.6
	_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 34.21,43.53
	click Veema's Herb Bag##232589 |q 33866 |future |goto Shadowmoon Valley D 34.21,43.53
	|tip It's a small brown satchel.
step
	|poi_treasure Vindicator's Cache
	|poilvl 90
	|poispot Shadowmoon Valley D 51.14,79.12
	|poiquest 33574
	|poiitem 113375
	_Go to_ the pond |goto Shadowmoon Valley D/0 50.4,78.9
	_Swim down_ to the bottom |goto Shadowmoon Valley D 51.14,79.12
	click Vindicator's Cache##224784 |q 33574 |future |goto Shadowmoon Valley D 51.14,79.12
	|tip It's a small half-buried chest under the water.
step
	|poi_treasure Waterlogged Chest
	|poilvl 90
	|poispot Shadowmoon Valley D 39.20,83.91
	|poiquest 33566
	|poiitem 113372
	|poicurrency GL
	_Travel to_ the Forgotten Shore |goto Shadowmoon Valley D/0 40.5,75.5
	_Go to_ the Isle of Shadows |goto Shadowmoon Valley D/0 39.9,79.8
	_Go to_ the far shore |goto Shadowmoon Valley D 39.20,83.91
	click Waterlogged Chest##224754 |q 33566 |future |goto Shadowmoon Valley D 39.20,83.91
	|tip It's a medium metal chest on the beach.
--//Frostfire Ridge\\--
step
	|poi_treasure Arena Master's War Horn
	|poilvl 90
	|poispot Frostfire Ridge 23.17,24.95
	|poiquest 33916
	|poiitem 108735
	_Enter_ the building here |goto Frostfire Ridge/0 23.3,24.1
	click Arena Master's War Horn##226955 |q 33916 |future |goto Frostfire Ridge 23.17,24.95
	|tip It's on the seat of the throne.
step
	|poi_treasure Spectator's Chest
	|poilvl 90
	|poispot Frostfire Ridge 24.24,27.12
	|poiquest 33501
	|poiitem 117442
	|poiitem 117439
	|poicurrency GL
	_Enter the tower_ here |goto Frostfire Ridge/0 24.5,29.4
	_Go up_ the ramp to the top of the tower |goto Frostfire Ridge/0 24.5,28.3
	_Mount up_ and _Jump down_ to the stone with the spectator's chair on it |goto Frostfire Ridge 24.24,27.12
	click Spectator's Chest##224613 |q 33501 |future
step
	|poi_treasure Borrok the Devourer
	|poilvl 90
	|poispot Frostfire Ridge 61.90,42.54
	|poiquest 33511
	|poiitem 112110
	|poicurrency GR
	kill Grimfrost Drudge##75010
	|tip Kill the Drudges and click them to pick them up. Walk them in front of Borrok to feed him until he is satisfied and spits out the boulder.
	click Devourer's Gutstone##224686 |q 33511 |future |goto Frostfire Ridge 61.90,42.54
step
	|poi_treasure Burning Pearl
	|poilvl 90
	|poispot Frostfire Ridge 42.16,19.30
	|poiquest 34520
	|poiitem 120341
	|poicurrency GL
	_Go to_ the lava |goto Frostfire Ridge/0 42.8,19.3
	_Move quickly_ and jump over the lava to the treasure |goto Frostfire Ridge 42.16,19.30
	click Burning Pearl##230252 |q 34520 |future |goto Frostfire Ridge 42.16,19.30
step
	|poi_treasure Clumsy Cragmaul Brute
	|poilvl 90
	|poispot Frostfire Ridge 50.16,18.70
	|poiquest 33531
	|poiitem 112096
	_Follow_ the narrow path to the Clumsy Brute corpse |goto Frostfire Ridge/0 50.8,20.0
	clicknpc Clumsy Cragmaul Brute##75120 |q 33531 |future |goto Frostfire Ridge 50.16,18.70
step
	|poi_treasure Crag-Leaper's Cache
	|poilvl 90
	|poispot Frostfire Ridge 42.66,31.75
	|poiquest 33940
	|poiitem 112187
	_Go to_ this spot |goto Frostfire Ridge/0 43.0,31.2
	Use the spears stuck in the stone as steps to _climb up_ |goto Frostfire Ridge 42.66,31.75
	click Crag-Leaper's Cache##226983 |q 33940 |future |goto Frostfire Ridge 42.66,31.75
step
	|poi_treasure Envoy's Satchel
	|poilvl 90
	|poispot Frostfire Ridge 40.90,20.10
	|poiquest 34473
	|poiitem 110536
	click Envoy's Satchel##229328 |q 34473 |future |goto Frostfire Ridge 40.90,20.10
step
	|poi_treasure Forgotten Supplies
	|poilvl 90
	|poispot Frostfire Ridge 43.66,55.62
	|poiquest 34841
	|poicurrency GR
	_Go up_ the hill |goto Frostfire Ridge/0 44.2,58.7
	_Go up_ the ramp into the _small tower_ |goto Frostfire Ridge 43.66,55.62
	click Forgotten Supplies##230909 |q 34841 |future |goto Frostfire Ridge 43.66,55.62
	|tip It looks like a rolled up blanket.
step
	|poi_treasure Frozen Frostwolf Axe
	|poilvl 90
	|poispot Frostfire Ridge 24.18,48.60
	|poiquest 34507
	|poiitem 110689
	_Enter_ the cave here |goto Frostfire Ridge/0 25.3,51.4
	click Frozen Frostwolf Axe##229640 |q 34507 |future |goto Frostfire Ridge 24.18,48.60
	|tip It's in the back left portion of the cave, clutched by an orc frozen in ice.
step
	|poi_treasure Frozen Orc Skeleton
	|poilvl 90
	|poispot Frostfire Ridge 57.17,52.16
	|poiquest 34476
	|poiitem 111554
	kill Frozen Fury##78631+
	|tip Kill the Frozen Fury mobs around the block of ice to reveal the skeleton.
	click Frozen Orc Skeleton##229367 |q 34476 |future |goto Frostfire Ridge 57.17,52.16
step
	|poi_treasure Gnawed Bone
	|poilvl 90
	|poispot Frostfire Ridge 25.52,20.50
	|poiquest 34648
	|poiitem 111415
	click Gnawed Bone##230425 |q 34648 |future |goto Frostfire Ridge 25.52,20.50
	|tip It's a very small bone sticking out of the side.
step
	|poi_treasure Goren Leftovers
	|poilvl 90
	|poispot Frostfire Ridge 66.71,26.40
	|poiquest 33948
	|poiitem 111543
	_Enter_ Magnarok |goto Frostfire Ridge/0 68.0,32.4
	_Go to_ the canyon |goto Frostfire Ridge/0 69.7,23.1
	_Start up_ the path |goto Frostfire Ridge/0 68.7,23.7
	_Turn left_ when you go through the arch |goto Frostfire Ridge/0 65.8,23.2
	_Continue up_ the path and enter the cave here |goto Frostfire Ridge/0 67.0,25.1
	click Goren Leftovers##226996 |q 33948 |future |goto Frostfire Ridge 66.71,26.40
	|tip It's in the back left section of the cave.
step
	|poi_treasure Grimfrost Treasure
	|poilvl 90
	|poispot Frostfire Ridge 68.12,45.86
	|poiquest 33947
	|poicurrency GR
	_Enter_ the building |goto Frostfire Ridge/0 67.9,46.0
	click Grimfrost Treasure##226994 |q 33947 |future |goto Frostfire Ridge 68.1,45.9
	|tip It's at the top of the tower.
step
	|poi_treasure Iron Horde Munitions
	|poilvl 90
	|poispot Frostfire Ridge 56.72,71.86
	|poiquest 36863
	|poicurrency GR
	click Iron Horde Munitions##236693 |q 36863 |future |goto Frostfire Ridge 56.72,71.86
	|tip It's a rectangular box on the ground between a siege cannon and ammunition.
step
	|poi_treasure Iron Horde Supplies
	|poilvl 90
	|poispot Frostfire Ridge 68.90,69.10
	|poiquest 33017
	|poicurrency GR
	click Iron Horde Supplies##224633 |q 33017 |future |goto Frostfire Ridge 68.90,69.10
	|tip The supplies are in the back of the wagon.
step
	|poi_treasure Lagoon Pool
	|poilvl 90
	|poispot Frostfire Ridge 21.89,09.63
	|poiquest 33926
	|poiitem 108739
	_Go through_ the narrow pass |goto Frostfire Ridge/0 23.0,9.3
	_Fish_ from the Lagoon Pool |cast Fishing##131474
	Fish up the _Giant Draenor Clam_ |q 33926 |future |goto Frostfire Ridge 21.89,09.63
	|tip Try zooming your camera in if you have issues with clicking your bobber.
	use Giant Draenor Clam##108738 |only if itemcount(108738) > 0
	use Pretty Draenor Pearl##108739 |only if itemcount(108739) > 0
step
	|poi_treasure Lucky Coin
	|poilvl 90
	|poispot Frostfire Ridge 19.21,12.02
	|poiquest 34642
	|poiitem 111408
	_Go through_ the narrow pass |goto Frostfire Ridge 20.0,12.9 < 10
	click Lucky Coin##230402 |q 34642 |future |goto Frostfire Ridge 19.21,12.02
	|tip A tiny coin is laying on the ground just past the well.
step
	|poi_treasure Obsidian Petroglyph
	|poilvl 90
	|poispot Frostfire Ridge 38.30,37.82
	|poiquest 33502
	|poiitem 112087
	_Enter_ the canyon |goto Frostfire Ridge/0 39.1,41.2 < 10
	_Follow_ the ramp up |goto Frostfire Ridge/0 39.1,38.2 < 10
	click Obsidian Petroglyph##224616 |q 33502 |future |goto Frostfire Ridge 38.30,37.82
step
	|poi_treasure Pale Loot Sack
	|poilvl 90
	|poispot Frostfire Ridge 21.68,50.76
	|poiquest 34931
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 19.5,50.6
	|tip Be careful, there are stealthed mobs throughout the cave.
	_Continue around_ to the right and to the back of the cave |goto Frostfire Ridge/0 20.7,49.0
	_Go up_ the ramp |goto Frostfire Ridge/0 21.1,50.4
	click Pale Loot Sack##230611 |q 34931 |future |goto Frostfire Ridge 21.68,50.76
	|tip The sack is at the end of the spine.
step
	|poi_treasure Raided Loot
	|poilvl 90
	|poispot Frostfire Ridge 37.26,59.14
	|poiquest 34967
	|poicurrency GR
	_Enter_ the tower |goto Frostfire Ridge/0 37.5,59.8 < 10
	_Follow the ramp_ to the top of the tower | goto Frostfire Ridge 37.1,59.9 < 10
	click Raided Loot##231103 |q 34967 |future |goto Frostfire Ridge 37.2,59.2
	|tip It's up the ramp at the top of the tower.
step
	|poi_treasure Sealed Jug
	|poilvl 90
	|poispot Frostfire Ridge 09.83,45.33
	|poiquest 34641
	|poiitem 111407
	_Go down_ the path along the water's edge |goto Frostfire Ridge/0 10.8,48.5
	click Sealed Jug##230401 |q 34641 |future |goto Frostfire Ridge 09.83,45.33
step
	|poi_treasure Slave's Stash
	|poilvl 90
	|poispot Frostfire Ridge 27.65,42.80
	|poiquest 33500
	|poiitem 43696
	_Jump onto_ the small building here |goto Frostfire Ridge/0 27.4,42.4
	_Walk across_ the small wood plank and jump onto the far small building |goto Frostfire Ridge 27.65,42.80
	click Slave's Stash##224392 |q 33500 |future |goto Frostfire Ridge 27.65,42.80
	|tip The stash is on the corner of the awning.
step
	|poi_treasure Snow-Covered Strongbox
	|poilvl 90
	|poispot Frostfire Ridge 23.97,12.91
	|poiquest 34647
	|poicurrency GL --25
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 23.4,12.0
	click Snow-Covered Strongbox##230424 |q 34647 |future |goto Frostfire Ridge 23.97,12.91
	|tip It's in the left side of the cave, half buried in a snow mound.
step
	|poi_treasure Supply Dump
	|poilvl 90
	|poispot Frostfire Ridge 16.12,49.72
	|poiquest 33942
	|poicurrency GR
	_Climb_ on this rock and use it to jump to the next one |goto Frostfire Ridge/0 15.2,50.7
	click Supply Dump##226990 |q 33942 |future |goto Frostfire Ridge 16.12,49.72
step
	|poi_treasure Survivalist's Cache
	|poilvl 90
	|poispot Frostfire Ridge 64.72,25.73
	|poiquest 33946
	|poicurrency GR
	_Go up_ the hill next to the cave entrance |goto Frostfire Ridge/0 64.1,31.2
	_Go to_ this spot |goto Frostfire Ridge/0 65.0,31.3
	_Follow_ the narrow path higher up the mountain |goto Frostfire Ridge/0 64.3,28.7
	_Continue around_ the rocks |goto Frostfire Ridge/0 64.4,26.5
	_Drop down_ and collect the treasure |goto Frostfire Ridge 64.72,25.73
	click Survivalist's Cache##226993 |q 33946 |future |goto Frostfire Ridge 64.72,25.73
	|tip It's a small chest surrounded by loose rocks.
step
	|poi_treasure Thunderlord Cache
	|poilvl 90
	|poispot Frostfire Ridge 34.19,23.48
	|poiquest 32803
	|poiitem 107658
	_Jump onto_ the rocks |goto Frostfire Ridge/0 35.4,24.3
	_Jump to_ the higher ridge on the rocks |goto Frostfire Ridge/0 35.1,24.0
	_Cross_ the rock "bridge" and proceed to the treasure |goto Frostfire Ridge 34.19,23.48
	click Thunderlord Cache##220641 |q 32803 |future |goto Frostfire Ridge 34.19,23.48
step
	|poi_treasure Wiggling Egg
	|poilvl 90
	|poispot Frostfire Ridge 64.40,65.86
	|poiquest 33505
	|poiitem 112107
	_Go up_ the snowy hill, starting here |goto Frostfire Ridge/0 65.9,62.8
	_Go to_ the peak between these two bones |goto Frostfire Ridge/0 65.0,65.7
	_Jump down_ onto the snow-covered roof |goto Frostfire Ridge/0 64.5,65.6
	click Wiggling Egg##224623 |q 33505 |future |goto Frostfire Ridge 64.40,65.86
	|tip Jump down to the floor from the roof. It's inside of the building.
step
	|poi_treasure Young Orc Traveler
	|poilvl 90
	|poispot Frostfire Ridge 54.84,35.45
	|poiquest 33525
	|poiitem 112206
	_Please Note_: The Snow Hare's Foot aquired from the Orc Traveler is only half of the treasure. Be sure not to destroy it
	clicknpc Young Orc Traveler##75072 |goto Frostfire Ridge 54.84,35.45
	Select: "_Take the scroll_" |only if itemcount(107270) < 1 and itemcount(107273) < 1
	use Bound Traveler's Scroll##107270 |only if itemcount(107270) > 0
	collect 1 Snow Hare's Foot##107273 |only if not completedq(33525)
	Assemble the treasure |q 33525 |future |goto Frostfire Ridge 54.84,35.45 |use Frostwolf First-Fang##107272 |only if itemcount(107272) > 0 and itemcount(107273) > 0
step
	|poi_treasure Young Orc Woman
	|poilvl 90
	|poispot Frostfire Ridge 63.40,14.70
	|poiquest 33525
	|poiitem 112206
	_Please Note_: The Frostwolf First-Fang aquired from the Young Orc Woman is only half of the treasure. Be sure not to destroy it
	_Follow_ the path up the hill |goto Frostfire Ridge/0 63.3,16.0
	clicknpc Young Orc Woman##75081 |goto Frostfire Ridge 63.40,14.70
	Select: "_Take the letter_" |only if itemcount(107271) < 1 and itemcount(107272) < 1
	use Frozen Envelope##107271 |only if itemcount(107271) > 0
	collect 1 Frostwolf First-Fang##107272 |only if not completedq(33525)
	Assemble the treasure |q 33525 |future |goto Frostfire Ridge 63.40,14.70 |use Snow Hare's Foot##107273 |only if itemcount(107272) > 0 and itemcount(107273) > 0
step
	|poi_treasure Cragmaul Cache
	|poilvl 90
	|poispot Frostfire Ridge 39.66,17.18
	|poiquest 33532
	|poiitem 120945
	|poicurrency AC
	_Enter_ this building |goto Frostfire Ridge/0 40.0,18.1
	_Go to_ the Cragmaul Cache underneath the ramp |goto Frostfire Ridge 39.66,17.18
	click Cragmaul Cache##224713 |q 33532 |future |goto Frostfire Ridge 39.66,17.18
step
	|poi_treasure Grizzled Frostwolf Veteran
	|poiaccess Completionist
	|poilvl 90
	|poispot Frostfire Ridge 45.4,50.8
	|poiquest 33011
	|poiitem 106899
	|poicurrency GR
	_Go up_ the hill |goto Frostfire Ridge/0 47.2,52.4
	_Turn right_ at the top |goto Frostfire Ridge/0 46.2,51.9
	_Turn left_ and go between the stones |goto Frostfire Ridge 45.36,50.34
	talk Grizzled Frostwolf Veteran##74585
	Tell him: "_Stand and fight! Victory or death!_"
	Defend against the waves of enemies that attack
	kill Thunderlord Crag-Leaper##72378+
	|tip These will spawn in 3 waves of 3.
	click Dusty Chest##224217 |q 33011 |future |goto Frostfire Ridge 45.4,50.8
	|tip The chest is a medium sized wood crate in the back of the hut.
step
	|poi_treasure Doorog's Secret Stash
	|poilvl 90
	|poispot Frostfire Ridge/2 37.1,69.8
	|poiquest 35370
	|poiitem 113189
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
	_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
	click Doorog's Secret Stash##232218 |q 35370 |future |goto Frostfire Ridge/2 37.1,69.8
	|tip The stash is past the lava pit and boulders, hidden behind the supplies on the ground.
	only if completedq(33527)
step
	|poi_treasure Gorr'thogg's Personal Reserve
	|poilvl 90
	|poispot Frostfire Ridge/3 31.3,66.6
	|poiquest 35367
	|poiitem 113108
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure |only if Alliance
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
	_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
	_Enter_ the citadel here |goto Frostfire Ridge/2 45.9,59.7
	_Go up_ the ramp just inside on the left |goto Frostfire Ridge/2 36.2,46.8
	_Follow_ the ramp all the way around and up into the Bladespire Throne |goto Frostfire Ridge/3 67.4,56.5
	click Gorr'thogg's Personal Reserve##232215 |q 35367 |future |goto Frostfire Ridge/3 31.3,66.6
	|tip It's located to the left of the giant throne.
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 36.4,28.8
	|poiquest 35347
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 38.2,30.8 < 12
	click Ogre Booty##232214 |q 35347 |future |goto Frostfire Ridge/2 36.4,28.8
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 53.2,28.3
	|poiquest 35368
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go left_ around the bonfire and enter this room |goto Frostfire Ridge/1 51.2,29.9
	click Ogre Booty##232214 |q 35368 |future |goto Frostfire Ridge/1 53.2,28.3
	|tip The treasure is hanging from a wooden beam above you. Climb the crates to reach it.
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 48.6,67.1
	|poiquest 35369
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
	click Ogre Booty##232214 |q 35369 |future |goto Frostfire Ridge/1 48.6,67.1
	|tip Climb up the pile of crates and sacks to reach the chest on top of the scaffolding.
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 46.2,15.6
	|poiquest 35371
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 46.4,19.9 < 12
	click Ogre Booty##232214 |q 35371 |future |goto Frostfire Ridge/2 46.2,15.6
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 52.1,52.0
	|poiquest 35373
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 52.0,48.8 < 12
	click Ogre Booty##232214 |q 35373 |future |goto Frostfire Ridge/2 52.6,52.9
	|tip Jump onto the crates. The treasure is hanging from a beam.
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 51.3,17.9
	|poiquest 35567
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 49.8,21.3 < 12
	click Ogre Booty##232214 |q 35567 |future |goto Frostfire Ridge/2 51.3,17.9
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 76.7,62.1
	|poiquest 35568
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
	_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
	click Ogre Booty##232214 |q 35568 |future |goto Frostfire Ridge/2 76.7,62.1
	|tip It's located behind a pile of supplies.
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 70.5,67.7
	|poiquest 35569
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
	_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
	click Ogre Booty##232214 |q 35569 |future |goto Frostfire Ridge/2 70.5,67.7
	|tip It's located behind a pile of supplies.
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 45.5,67.2
	|poiquest 35570
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
	click Ogre Booty##232214 |q 35570 |future |goto Frostfire Ridge/1 45.5,67.2
	|tip It's located on a stack of crates inside the room on the right.
	only if completedq(33527)
step
	|poi_treasure Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 45.5,67.2
	|poiquest 35570
	|poicurrency GR
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
	click Ogre Booty##232214 |q 35570 |future |goto Frostfire Ridge/1 45.5,67.2
	|tip It's located on a stack of crates inside the room on the right.
--//Gorgrond\\--
step
	|poi_treasure Brokor's Sack
	|poilvl 92
	|poispot Gorgrond 41.73,52.97
	|poiquest 36506
	|poiitem 118702
	|poicurrency GL
	_Go through_ the two stone pillars and turn right |goto Gorgrond/0 41.7,53.5
	click Brokor's Sack##235859 |q 36506 |future |goto Gorgrond/0 41.73,52.97
	|tip It's a small sack by the stones.
step
	|poi_treasure Discarded Pack
	|poilvl 92
	|poispot Gorgrond 42.36,83.41
	|poiquest 36625
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6
	_Go right_, following the path |goto Gorgrond/0 42.6,81.7
	_Go up_ the hill to the left of the hut |goto Gorgrond/0 42.5,83.4
	click Discarded Pack##236141 |q 36625 |future |goto Gorgrond/0 42.36,83.41
	|tip It's behind the roots just underneath the hut.
step
	|poi_treasure Evermorn Supply Cache
	|poilvl 92
	|poispot Gorgrond 41.82,78.02
	|poiquest 36658
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6
	_Follow_ the path around to the right |goto Gorgrond/0 42.3,78.8
	_Enter_ the hut and jump through the small opening on the right |goto Gorgrond/0 41.7,78.5 < 8
	click Evermorn Supply Cache##236178 |q 36658 |future |goto Gorgrond 41.82,78.02
step
	|poi_treasure Explorer Canister
	|poilvl 92
	|poispot Gorgrond 40.36,76.60
	|poiquest 36621
	|poiitem 118710
	|poicurrency GR
	_Cross_ The Fertile Ground |goto Gorgrond/0 42.2,75.7
	click Explorer Canister##236139 |q 36621 |future |goto Gorgrond 40.36,76.60
	|tip It's at the bottom of the pond in the middle of the rocks in the center.
step
	|poi_treasure Femur of Improbability
	|poilvl 92
	|poispot Gorgrond 40.04,72.23
	|poiquest 36170
	|poiitem 118715
	_Enter_ Deadgrin |goto Gorgrond/0 38.8,73.5
	_Go to_ the right |goto Gorgrond/0 39.9,72.2
	click Femur of Improbability##233917 |q 36170 |future |goto Gorgrond 40.04,72.23
step
	|poi_treasure Harvestable Precious Crystal
	|poilvl 92
	|poispot Gorgrond 46.10,49.99
	|poiquest 36651
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 44.7,50.7
	click Harvestable Precious Crystal##236169 |q 36651 |future |goto Gorgrond/0 46.1,50.0
	|tip It's a big purple-white crystal on the left side of the cave.
step
	|poi_treasure Horned Skull
	|poilvl 92
	|poispot Gorgrond 42.58,46.85
	|poiquest 35056
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.4,47.9
	_Follow_ the spiraling path and jump down at this spot |goto Gorgrond/19 62.3,62.9
	click Horned Skull##231644 |q 35056 |future |goto Gorgrond/19 47.4,67.6
step
	|poi_treasure Iron Supply Chest
	|poilvl 92
	|poispot Gorgrond 43.69,42.48
	|poiquest 36618
	|poicurrency GR
	|poicurrency GL
	_Enter_ the cave |goto Gorgrond/0 42.8,44.4
	click Iron Supply Chest##236138 |q 36618 |future |goto Gorgrond/0 43.69,42.48
	|tip It's by the crates in the southeastern part of the cave.
step
	|poi_treasure Laughing Skull Cache
	|poilvl 92
	|poispot Gorgrond 44.20,74.27
	|poiquest 35709
	|poicurrency GR
	_Climb up_ on the tree trunk |goto Gorgrond/0 44.3,73.6 < 8
	click Laughing Skull Cache##233149 |q 35709 |future |goto Gorgrond 44.20,74.27
step
	|poi_treasure Ockbar's Pack
	|poilvl 92
	|poispot Gorgrond 43.10,92.90
	|poiquest 34241
	|poiitem 118227
	click Ockbar's Pack##227998 |q 34241 |future |goto Gorgrond/0 43.1,92.9
	|tip It's a small bag behind Ockbar's right hoof.
step
	|poi_treasure Odd Skull
	|poilvl 92
	|poispot Gorgrond 52.51,66.96
	|poiquest 36509
	|poiitem 118717
	|poicurrency GL
	click Odd Skull##236715 |q 36509 |future |goto Gorgrond/0 52.5,67.0
	|tip It's on the rock just behind the pile of bones.
step
	|poi_treasure Petrified Rylak Egg
	|poilvl 92
	|poispot Gorgrond 46.24,42.95
	|poiquest 36521
	|poiitem 118707
	|poicurrency GL
	_Jump up_ on this plateau |goto Gorgrond/0 48.2,40.7
	_Cross_ the plateau |goto Gorgrond/0 46.6,42.1
	click Petrified Rylak Egg##235881 |q 36521 |future |goto Gorgrond 46.24,42.95
	|tip It's sitting on the ground between the two smallest nests.
step
	|poi_treasure Pile of Rubble
	|poilvl 92
	|poispot Gorgrond 43.95,70.55
	|poiquest 36118
	|poiitem RANDOM
	|poicurrency GL
	_Get up_ on the small hill |goto Gorgrond/0 44.0,71.1
	click Pile of Rubble##233792 |q 36118 |future |goto Gorgrond 43.95,70.55
	|tip It's located between the stones and the ogre statue head.
step
	|poi_treasure Remains of Balik Orecrusher
	|poilvl 92
	|poispot Gorgrond 53.12,74.49
	|poiquest 36654
	|poiitem 118714
	_Enter_ the cave |goto Gorgrond/0 51.5,74.4
	click Remains of Balik Orecrusher##236170 |q 36654 |future |goto Gorgrond 53.12,74.49
	|tip The remains are behind the left steaming geyser vent.
step
	|poi_treasure Remains of Balldir Deeprock
	|poilvl 92
	|poispot Gorgrond 57.84,55.97
	|poiquest 36605
	|poiitem 118703
	click Remains of Balldir Deeprock##236096 |q 36605 |future |goto Gorgrond 57.84,55.97
	|tip They're in the middle of the pond at the bottom.
step
	|poi_treasure Sasha's Secret Stash
	|poilvl 92
	|poispot Gorgrond 39.03,68.05
	|poiquest 36631
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the tower |goto Gorgrond/0 39.0,68.0
	_Go to_ the top of the spiraling ramp |goto Gorgrond/0 39.0,68.9
	Carefully drop off the edge and land on the wood sticking out of the tower |goto Gorgrond 39.03,68.05
	click Sasha's Secret Stash##236149 |q 36631 |future |goto Gorgrond 39.03,68.05
	|tip It's a bag hanging from the end of the wooden beam.
step
	|poi_treasure Sniper's Crossbow
	|poilvl 92
	|poispot Gorgrond 44.95,42.62
	|poiquest 36634
	|poiitem 118713
	_Climb up_ the hill here |goto Gorgrond/0 44.6,42.3 < 10
	click Sniper's Crossbow##236158 |q 36634 |future |goto Gorgrond 44.95,42.62
	|tip It's a purple crossbow propped up against a telescope.
step
	|poi_treasure Stashed Emergency Rucksack
	|poiaccess Completionist
	|poilvl 92
	|poispot Gorgrond 48.12,93.37
	|poiquest 36604
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the digsite |goto Gorgrond/0 47.7,93.4 < 15
	_Go left_ and jump onto this stone |goto Gorgrond/0 48.0,93.3 < 5
	_Jump onto_ this stone |goto Gorgrond/0 48.0,93.4 < 5
	_Jump over_ to the platform |goto Gorgrond/0 48.1,93.4 < 5
	click Stashed Emergency Rucksack##236092 |q 36604 |future |goto Gorgrond 48.12,93.37
	|tip It's hanging on the cable to the crane.
step
	|poi_treasure Strange Looking Dagger
	|poilvl 92
	|poispot Gorgrond 52.97,79.95
	|poiquest 34940
	|poiitem 118718
	|poicurrency GL
	_Enter_ the cave |goto Gorgrond/0 51.3,77.6 < 15
	_Go right_ at the intersection |goto Gorgrond/0 51.7,79.4 < 15
	_Continue right_ along the wall |goto Gorgrond/0 52.4,80.4 < 15
	_Follow_ right to the room with steam vents |goto Gorgrond/0 52.9,80.6 < 15
	click Strange Looking Dagger##231069 |q 34940 |future |goto Gorgrond/0 52.97,79.95
step
	|poi_treasure Strange Spore
	|poilvl 92
	|poispot Gorgrond 57.08,65.30
	|poiquest 37249
	|poiitem 118106
	_Go up_ this hill towards the mushroom caps |goto Gorgrond/0 57.6,64.7 < 10
	_Climb up_ onto this mushroom |goto Gorgrond/0 57.3,65.4 < 5
	_Jump over_ to the mushroom with the strange spore |goto Gorgrond 57.08,65.30 < 5
	click Strange Spore##232621 |q 37249 |future |goto Gorgrond 57.08,65.30
	|tip It is a purple and orange sack growing on top of the mushrooom.
step
	|poi_treasure Suntouched Spear
	|poilvl 92
	|poispot Gorgrond 45.69,49.72
	|poiquest 36610
	|poiitem 118708
	click Suntouched Spear##236099 |q 36610 |future |goto Gorgrond 45.69,49.72
	|tip It's sticking out of the narrow ridge.
step
	|poi_treasure Vindicator's Hammer
	|poiaccess Completionist
	|poilvl 92
	|poispot Gorgrond 59.4,63.7
	|poiquest 36628
	|poiitem 118712
	Use your Mechashredder ability to reach the top of the mushroom |cast Summon Mechashredder 5000##164050 |only if garrisonability("LumberMill")
	Use your rocket boost ability to reach the top of the mushroom |cast Rocket Boost##165445 |only if garrisonability("LumberMill")
	Use Aviana's Feather to reach the top of the mushroom |use Aviana's Feather##119093 |only if itemcount(119093) > 0
	click Vindicator's Hammer##236147 |q 36628 |future |goto Gorgrond 59.4,63.7
	|tip You cannot reach this treasure without a temporary flying ability such as Aviana's Feather or the Shredder from the War Mill outpost garrison ability |only if itemcount(119093) < 1 and not garrisonability("LumberMill")
step
	|poi_treasure Warm Goren Egg
	|poilvl 92
	|poispot Gorgrond 48.94,47.31
	|poiquest 36203
	|poiitem 118705
	|poicurrency GL
	_Enter_ the cave |goto Gorgrond/0 48.6,47.2 < 15
	click Warm Goren Egg##234054 |q 36203 |future |goto Gorgrond 48.94,47.31
	|tip It's a glowing red egg sitting against the wall on the back side of the cave.
step
	|poi_treasure Weapons Cache
	|poilvl 92
	|poispot Gorgrond 49.28,43.63
	|poiquest 36596
	|poiitem 107645
	|poicurrency GL
	click Weapons Cache##235869 |q 36596 |future |goto Gorgrond 49.28,43.63
	|tip It's located to the left of the War Machine on the platform.
--//Saw Blade (Gorgrond)-----------------------------------------------------------------------------------------------
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 42.34,54.77
	|poiquest 36003
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36003 |future |goto Gorgrond 42.34,54.77
	only if garrisonability("LumberMill")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 47.51,43.63
	|poiquest 36717
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36717 |future |goto Gorgrond 47.51,43.63
	only if garrisonability("LumberMill")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 53.35,46.79
	|poiquest 35701
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 35701 |future |goto Gorgrond 53.35,46.79
	only if garrisonability("LumberMill")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 50.15,53.76
	|poiquest 35984
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 49.5,53.4
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 35984 |future |goto Gorgrond 50.15,53.76
	only if garrisonability("LumberMill")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond/19 36.8,50.5
	|poiquest 36720
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.3,47.8
	_Go down_ to the bottom |goto Gorgrond/18 41.1,64.2
	_Go around_ and enter the left chamber |goto Gorgrond/19 48.0,37.9
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36720 |future |goto Gorgrond/19 37.1,51.5
	only if garrisonability("LumberMill")
step
	|poi_treasure Botani Essence Seed
	|poilvl 92
	|poispot Gorgrond 41.98,81.55
	|poiquest 35982
	|poicurrency GR
	_Enter_ the Evermoon Springs |goto Gorgrond/0 44.1,79.5
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Botani Essence Seed##233525 |q 35982 |future |goto Gorgrond 41.98,81.55
	only if garrisonability("LumberMill")
step
	|poi_treasure Forgotten Ogre Cache
	|poilvl 92
	|poispot Gorgrond 49.65,78.83
	|poiquest 35968
	|poicurrency GR
	_Enter_ the ruins |goto Gorgrond/0 49.6,80.5
	_Cross_ the pond |goto Gorgrond/0 50.1,79.2
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Ogre Cache##233507 |q 35968 |future |goto Gorgrond 49.65,78.83
	only if garrisonability("LumberMill")
step
	|poi_treasure Forgotten Skull Cache
	|poilvl 92
	|poispot Gorgrond 47.01,69.05
	|poiquest 35971
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Skull Cache##233513 |q 35971 |future |goto Gorgrond 47.01,69.05
	|tip It's located behind the tree at the top of the hill.
	only if garrisonability("LumberMill")
step
	|poi_treasure Forgotten Skull Cache
	|poilvl 92
	|poispot Gorgrond 45.80,89.31
	|poiquest 36019
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Skull Cache##233513 |q 36019 |future |goto Gorgrond 45.80,89.31
	|tip Against the wall behind the tree.
	only if garrisonability("LumberMill")
step
	|poi_treasure Forgotten Skull Cache
	|poilvl 92
	|poispot Gorgrond 39.33,56.27
	|poiquest 36716
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Skull Cache##233513 |q 36716 |future |goto Gorgrond 39.33,56.27
	only if garrisonability("LumberMill")
step
	|poi_treasure Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 56.74,57.27
	|poiquest 35965
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 35965 |future |goto Gorgrond 56.74,57.27
	only if garrisonability("LumberMill")
step
	|poi_treasure Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 41.14,77.26
	|poiquest 35980
	|poicurrency GR
	_Follow_ the outside wall of Evermorn Springs |goto Gorgrond/0 42.6,76.7
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 35980 |future |goto Gorgrond 41.14,77.26
	|tip It is located around the tree next to the pond.
	only if garrisonability("LumberMill")
step
	|poi_treasure Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 60.50,72.76
	|poiquest 36015
	|poicurrency GR
	_Enter_ Tangleheart |goto Gorgrond/0 56.3,71.8
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36015 |future |goto Gorgrond 60.50,72.76
	|tip Against the bramble wall.
	only if garrisonability("LumberMill")
step
	|poi_treasure Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 63.28,57.19
	|poiquest 36430
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36430 |future |goto Gorgrond 63.28,57.19
	|tip Southeast of the pond against the rock wall.
	only if garrisonability("LumberMill")
step
	|poi_treasure Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 47.64,76.79
	|poiquest 36714
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36714 |future |goto Gorgrond 47.64,76.79
	only if garrisonability("LumberMill")
step
	|poi_treasure Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 51.75,69.09
	|poiquest 36715
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36715 |future |goto Gorgrond 51.75,69.09
	|tip Next to the rubble and sapling tree.
	only if garrisonability("LumberMill")
step
	|poi_treasure Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 40.95,67.32
	|poiquest 35979
	|poicurrency GR
	_Enter_ the Stonemaul Arena |goto Gorgrond/0 41.9,65.3
	_Go left_ at the fork |goto Gorgrond/0 40.3,66.4
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 35979 |future |goto Gorgrond 40.95,67.32
	only if garrisonability("LumberMill")
step
	|poi_treasure Remains of Explorer Engineer Toldirk Ashlamp
	|poilvl 92
	|poispot Gorgrond 45.96,93.57
	|poiquest 35975
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Remains of Explorer Engineer Toldirk Ashlamp##233520 |q 35975 |future |goto Gorgrond 45.96,93.57
	only if garrisonability("LumberMill")
step
	|poi_treasure Remains of Grimnir Ashpick
	|poilvl 92
	|poispot Gorgrond 51.80,61.48
	|poiquest 35966
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Remains of Grimnir Ashpick##233504 |q 35966 |future |goto Gorgrond 51.80,61.48
	|tip At the edge of the pond.
	only if garrisonability("LumberMill")
step
	|poi_treasure Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 51.64,72.26
	|poiquest 35967
	|poicurrency GR
	_Enter_ Overlook Ruins |goto Gorgrond/0 50.4,73.0
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 35967 |future |goto Gorgrond 51.64,72.26
	|tip It's just behind the root by the small hill.
	only if garrisonability("LumberMill")
step
	|poi_treasure Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 45.31,81.95
	|poiquest 35981
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 35981 |future |goto Gorgrond 45.31,81.95
	|tip Between the two tree roots.
	only if garrisonability("LumberMill")
step
	|poi_treasure Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 42.91,43.50
	|poiquest 36001
	|poicurrency GR
	_Ascend_ the hill |goto Gorgrond/0 43.9,43.9
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 36001 |future |goto Gorgrond 42.91,43.50
	only if garrisonability("LumberMill")
step
	|poi_treasure Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 53.00,79.06
	|poiquest 36713
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 51.4,77.6 < 10
	_Go left_ down the side passage |goto Gorgrond/0 52.0,78.6 < 10
	_Continue down_ the passage |goto Gorgrond/0 52.8,78.5 < 10
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 36713 |future |goto Gorgrond/0 53.00,79.06
	|tip It's between the two pillars on the right, next to the water.
	only if garrisonability("LumberMill")
step
	|poi_treasure Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 47.24,51.80
	|poiquest 36718
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 36718 |future |goto Gorgrond 47.24,51.80
	|tip It's behind a small outcropping of stones near the edge of the plateau.
	only if garrisonability("LumberMill")
--//Champion's Bond (Gorgrond)----------------------------------------------------------------------------------------
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 45.63,49.31
	|poiquest 36722
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36722 |future |goto Gorgrond 45.63,49.31
	|tip It's the behind the pillar of stacked stones.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond/19 60.5,43.1
	|poiquest 36723
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.5,48.0 < 15
	_Go down_ the spiraling ramp to the bottom |goto Gorgrond/19 61.4,77.1 < 15
	_Continue clockwise_ around the outside |goto Gorgrond/19 45.9,48.1 < 15
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36723 |future |goto Gorgrond/19 60.5,43.1
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 41.76,45.27
	|poiquest 36726
	|poicurrency GR
	_Go up_ the road |goto Gorgrond/0 41.6,46.9
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36726 |future |goto Gorgrond 41.76,45.27
	|tip Up the small hill in front of the pile of stones.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 48.11,55.16
	|poiquest 36730
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36730 |future |goto Gorgrond 48.11,55.16
	|tip Behind the pile of stones next to the stone pillar.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 51.33,40.55
	|poiquest 36734
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 50.9,41.1 < 20
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36734 |future |goto Gorgrond 51.33,40.55
	|tip It's in the crevice between the two peaks.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 46.05,63.05
	|poiquest 36736
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36736 |future |goto Gorgrond 46.05,63.05 
	|tip Next to the mountain.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 58.12,51.46
	|poiquest 36739
	|poicurrency GR
	_Go up_ the hill and hug the wall |goto Gorgrond/0 57.8,52.3
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36739 |future |goto Gorgrond 58.12,51.46
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 59.56,72.75
	|poiquest 36781
	|poicurrency GR
	_Enter_ Tangleheart |goto Gorgrond/0 56.6,72.0
	_Go right_ |goto Gorgrond/0 59.4,71.8
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36781 |future |goto Gorgrond 59.56,72.75
	|tip It's behind the tree root.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 45.74,88.21
	|poiquest 36784
	|poicurrency GR
	_Go up_ here |goto Gorgrond/0 46.3,88.3
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36784 |future |goto Gorgrond 45.74,88.21
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 45.54,42.98
	|poiquest 36733
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 45.4,44.2 < 20
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36733 |future |goto Gorgrond 45.54,42.98
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 45.07,69.93
	|poiquest 36737
	|poicurrency GR
	_Walk across_ the stone |goto Gorgrond/0 44.7,70.3
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36737 |future |goto Gorgrond 45.07,69.93
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 61.55,58.55
	|poiquest 36740
	|poicurrency GR
	_Follow_ the uppper ridge |goto Gorgrond/0 61.2,56.5
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36740 |future |goto Gorgrond 61.55,58.55
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 54.25,73.13
	|poiquest 36782
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 54.4,71.2
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36782 |future |goto Gorgrond 54.25,73.13
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 42.17,93.08
	|poiquest 36787
	|poicurrency GR
	_Go up_ the trail |goto Gorgrond/0 42.5,91.0
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36787 |future |goto Gorgrond 42.17,93.08
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 41.52,86.52
	|poiquest 36789
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36789 |future |goto Gorgrond 41.52,86.52
	|tip It's next to the big tree.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 49.42,50.84
	|poiquest 36710
	|poicurrency GR
	_Go up_ the trail |goto Gorgrond/0 50.3,49.8 < 10
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36710 |future |goto Gorgrond 49.42,50.84
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 42.19,52.03
	|poiquest 36727
	|poicurrency GR
	_Follow_ the road |goto Gorgrond/0 42.6,53.6
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36727 |future |goto Gorgrond 42.19,52.03
	|tip In the pile of rubble.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 43.36,51.69
	|poiquest 36731
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36731 |future |goto Gorgrond 43.36,51.69
	|tip Next to the stacked stone pillar.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 47.92,39.98
	|poiquest 36735
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36735 |future |goto Gorgrond 47.92,39.98
	|tip Next to the big boulder.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 50.32,66.58
	|poiquest 36738
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36738 |future |goto Gorgrond 50.32,66.58
	only if garrisonability("TrainingPit")
step
	|poi_treasure Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 49.12,82.48
	|poiquest 36783
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36783 |future |goto Gorgrond 49.12,82.48
	only if garrisonability("TrainingPit")
step
	|poi_treasure Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 48.11,46.38
	|poiquest 36721
	|poicurrency GR
	_Follow_ the top ridge |goto Gorgrond/0 48.8,48.1
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36721 |future |goto Gorgrond 48.11,46.38
	only if garrisonability("TrainingPit")
step
	|poi_treasure Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 41.85,58.89
	|poiquest 36728
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36728 |future |goto Gorgrond 41.85,58.89
	|tip It's in the pile of stones.
	only if garrisonability("TrainingPit")
step
	|poi_treasure Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 42.05,64.29
	|poiquest 36729
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36729 |future |goto Gorgrond 42.05,64.29
	only if garrisonability("TrainingPit")
step
	|poi_treasure Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 44.18,46.65
	|poiquest 36732
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36732 |future |goto Gorgrond 44.18,46.65
	only if garrisonability("TrainingPit")
-----------------------------------------------------------------------
--//Talador\\--
step
	|poi_treasure Aarko's Family Treasure
	|poilvl 94
	|poispot Talador 36.53,95.98
	|poiquest 34182
	|poiitem 117567
	|poicurrency GR
	_Follow_ the road |goto Talador/0 36.5,96.0
	talk Aarko##77664
	Ask him: "_Do you need help?_"
	from Shadow Raider##77673+, Shadow Pillager##88039+, Shadow Felcaster##88040+
	kill Surok Darkstorm##77677
	click Aarko's Family Treasure##227793 |q 34182 |future |goto Talador 36.53,95.98
	|tip It's a purple chest that spawns next to Aarko after defeating the waves of enemies.
step
	|poi_treasure Amethyl Crystal
	|poilvl 94
	|poispot Talador 62.08,32.38
	|poiquest 34236
	|poiitem 116131
	|poicurrency GR, GL
	click Amethyl Crystal##227955 |q 34236 |future |goto Talador 62.08,32.38
	|tip It's a pink crystal at the bottom of the water.
step
	|poi_treasure Aruuna Mining Cart
	|poilvl 94
	|poispot Talador 81.84,34.94
	|poiquest 34260
	|poiitem 109118
	_Enter_ the mine |goto Talador/0 78.5,35.5
	_Continue right_ into the mine |goto Talador/0 80.4,34.8
	_Go left_ in the main cave |goto Talador/0 81.2,35.4
	_Drop down_ here |goto Talador/0 81.8,35.6
	click Aruuna Mining Cart##228024 |q 34260 |future |goto Talador 81.84,34.94
	|tip It's a wooden cart full of purple crystals.
step
	|poi_treasure Barrel of Fish
	|poilvl 94
	|poispot Talador 62.41,47.97
	|poiquest 34252
	|poicurrency GR
	click Barrel of Fish##228016 |q 34252 |future |goto Talador 62.41,47.97
	|tip On the dock with two small boats.
step
	|poi_treasure Bonechewer Remnants
	|poilvl 94
	|poispot Talador 33.29,76.80
	|poiquest 34259
	|poicurrency GL
	_Enter_ the hut |goto Talador/0 33.6,76.2
	click Bonechewer Remnants##228023 |q 34259 |future |goto Talador 33.29,76.80
	|tip It's a small brown chest found inside the back of the hut.
step
	|poi_treasure Bonechewer Spear
	|poilvl 94
	|poispot Talador 37.60,74.90
	|poiquest 34148
	|poiitem 112371
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 36.8,75.3
	kill Viperlash##77564
	click Bonechewer Spear##227654 |q 34148 |future |goto Talador 37.60,74.90
	|tip The spear will drop after Viperlash dies. Viperlash is a 95 elite.
step
	|poi_treasure Bright Coin
	|poilvl 94
	|poispot Talador 73.52,51.37
	|poiquest 34471
	|poiitem 116127
	|poicurrency GL
	click Bright Coin##229354 |q 34471 |future |goto Talador 73.52,51.37
	|tip It's underwater beneath the bridge.
step
	|poi_treasure Burning Blade Cache
	|poiaccess Completionist
	|poilvl 94
	|poispot Talador 70.10,07.00
	|poiquest 36937
	|poiitem 120945
	|poicurrency AC
	_Enter_ Bladefury's Command |goto Talador/0 68.3,5.6
	_Follow_ the road right |goto Talador/0 69.5,4.5
	_Enter_ the building |goto Talador/0 69.9,6.5
	click Burning Blade Cache##236935 |q 36937 |future |goto Talador 70.10,07.00
	|tip It's a locked brown chest sitting against the wall.
step
	|poi_treasure Charred Sword
	|poilvl 94
	|poispot Talador 77.04,49.96
	|poiquest 34248
	|poiitem 116116
	click Charred Sword##228012 |q 34248 |future |goto Talador 77.04,49.96
	|tip It's a large sword stuck in the ground.
step
	|poi_treasure Curious Deathweb Egg
	|poilvl 94
	|poispot Talador 66.50,86.94
	|poiquest 34239
	|poiitem 117569
	_Enter_ the cave |goto Talador/0 61.3,84.2
	_Go to_ the main cavern |goto Talador/0 65.4,86.2
	click Curious Deathweb Egg##227996 |q 34239 |future |goto Talador 66.50,86.94
	|tip It is a purple, motionless egg sack found behind the large crystal formation towards the back of the cave.
step
	|poi_treasure Deceptia's Smoldering Boots
	|poilvl 94
	|poispot Talador 58.90,12.00
	|poiquest 33933
	|poiitem 108743
	click Deceptia's Smoldering Boots##226976 |q 33933 |future |goto Talador 58.90,12.00
	|tip A small pair of boots in the ruined camp.
step
	|poi_treasure Draenei Weapons
	|poilvl 94
	|poispot Talador 55.25,66.71
	|poiquest 34253
	|poiitem 116118
	|poicurrency GL
	click Draenei Weapons##228017 |q 34253 |future |goto Talador 55.25,66.71
	|tip It's the weapon rack near the anvil.
step
	|poi_treasure Farmer's Bounty
	|poilvl 94
	|poispot Talador 35.41,96.56
	|poiquest 34249
	|poicurrency GL
	_Follow_ the road |goto Talador/0 37.8,95.9
	_Go around_ the building |goto Talador/0 35.9,96.8
	click Farmer's Bounty##228013 |q 34249 |future |goto Talador 35.41,96.56
	|tip It's the barrel at the end of the pier.
step
	|poi_treasure Foreman's Lunchbox
	|poilvl 94
	|poispot Talador 57.36,28.66
	|poiquest 34238
	|poiitem 116120
	_Enter_ Archenon Siegeyard |goto Talador/0 57.2,29.7
	_Jump up_ onto this scaffolding |goto Talador/0 57.6,28.2 < 3
	_Jump up_ onto the right board and then the back of the scaffold, then over to the first pillar |goto Talador/0 57.6,28.4 < 2
	_Jump to_ the second pillar |goto Talador/0 57.5,28.5 < 2
	_Jump onto_ the last scaffold |goto Talador 57.36,28.66 < 3
	click Foreman's Lunchbox##227956 |q 34238 |future |goto Talador 57.36,28.66
	|tip It's a small brown box found sitting on the upper level of a group of scaffolding.
step
	|poi_treasure Iron Box
	|poilvl 94
	|poispot Talador 64.58,79.20
	|poiquest 34251
	|poiitem 117571
	|poicurrency GL
	_Enter_ the building |goto Talador/0 65.2,79.1
	click Iron Box##228015 |q 34251 |future |goto Talador 64.58,79.20
	|tip It's a small gray lockbox found against the wall.
step
	|poi_treasure Iron Scout
	|poilvl 94
	|poispot Talador 75.00,36.00
	|poiquest 33649
	|poicurrency GR
	clicknpc Iron Scout##75644
	Choose: "_Search the body._" |q 33649 |future |goto Talador 75.00,36.00
	|tip It's an orc corpse laying on the ground.
step
	|poi_treasure Isaari's Cache
	|poilvl 94
	|poispot Talador 57.20,75.40
	|poiquest 34134
	|poiitem 117563
	|poicurrency GR
	Collecting this Treasure may flag you for PvP
	click Isaari's Cache##239198 |q 34134 |future |goto Talador 57.20,75.40
	|tip It's a purple chest sitting at the foot of a bench.
step
	|poi_treasure Jug of Aged Ironwine
	|poilvl 94
	|poispot Talador 65.47,11.37
	|poiquest 34233
	|poiitem 117568
	_Drop down_ at the waterfall |goto Talador/0 65.47,11.37 < 15
	_Drop down_ and enter the cave |goto Talador/0 64.8,9.3 < 10
	click Jug of Aged Ironwine##227953 |q 34233 |future |goto Talador 65.47,11.37
	|tip It's a light-brown jug sitting in shallow water at the back of the cave.
step
	|poi_treasure Keluu's Belongings
	|poilvl 94
	|poispot Talador 75.68,41.40
	|poiquest 34261
	|poicurrency GL
	click Keluu's Belongings##228025 |q 34261 |future |goto Talador 75.68,41.40
	|tip It's under the bridge next to the stream.
step
	|poi_treasure Ketya's Stash
	|poilvl 94
	|poispot Talador 53.97,27.69
	|poiquest 34290
	|poiitem 116402
	|poiitem 116121
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 53.3,26.1
	Avoid the beams of light and totem circles
	click Ketya's Stash##228570 |q 34290 |future |goto Talador 53.97,27.69
	|tip It's a large silver chest found on a platform at the back of the cave.
step
	|poi_treasure Light of the Sea
	|poiaccess Completionist
	|poilvl 94
	|poispot Talador 38.19,12.42
	|poiquest 34258
	|poicurrency GL
	_Follow_ the pier |goto Talador/0 35.4,17.1
	click Light of the Sea##228022 |q 34258 |future |goto Talador 38.19,12.42
	|tip It's a bright white sphere.
step
	|poi_treasure Lightbearer
	|poilvl 94
	|poispot Talador 68.80,56.20
	|poiquest 34101
	|poiitem 109192
	click Lightbearer##227527 |q 34101 |future |goto Talador 68.80,56.20
	|tip It's by the tree next to the wall.
step
	|poi_treasure Luminous Shell
	|poilvl 94
	|poispot Talador 52.56,29.54
	|poiquest 34235
	|poiitem 116132
	|poicurrency GL
	click Luminous Shell##227954 |q 34235 |future |goto Talador 52.56,29.54
	|tip On the far shore across the small stream.
step
	|poi_treasure Pure Crystal Dust
	|poilvl 94
	|poispot Talador 78.21,14.71
	|poiquest 34263
	|poiitem 117572
	|poicurrency GL
	_Enter_ the cave |goto Talador/0 75.6,22.0
	_Go up_ the ramp |goto Talador/0 77.9,18.7
	_Continue up and around_ the top level |goto Talador/0 79.3,16.0
	click Pure Crystal Dust##228026 |q 34263 |future |goto Talador 78.21,14.71
	|tip It's a purple pile next to the broken cart.
step
	|poi_treasure Relic of Aruuna
	|poilvl 94
	|poispot Talador 75.78,44.72
	|poiquest 34250
	|poiitem 116128
	|poicurrency GL
	_Enter_ the building |goto Talador/0 76.1,44.4 < 10
	click Relic of Aruuna##228014 |q 34250 |future |goto Talador 75.78,44.72
	|tip It's a small chest found on the upper platform of the building.
step
	|poi_treasure Relic of Telmor
	|poilvl 94
	|poispot Talador 46.96,91.74
	|poiquest 34256
	|poiitem 116128
	|poicurrency GL
	_Enter_ the building |goto Talador/0 47.9,90.7 < 20
	click Relic of Telmor##228020 |q 34256 |future |goto Talador 46.96,91.74
	|tip It's a purple chest sitting on the ground inside the building.
step
	|poi_treasure Rook's Tacklebox
	|poilvl 94
	|poispot Talador 64.90,13.30
	|poiquest 34232
	|poiitem 116117
	|poicurrency GL
	_Cross_ the waterfall |goto Talador/0 65.6,14.3 < 15
	click Rook's Tacklebox##227951 |q 34232 |future |goto Talador 64.90,13.30
	|tip It's an open brown box with lures and bobbers found near the water.
step
	|poi_treasure Rusted Lockbox
	|poilvl 94
	|poispot Talador 65.96,85.13
	|poiquest 34276
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the cave |goto Talador/0 61.4,84.2 < 15
	_Enter_ the main cavern |goto Talador/0 63.6,84.8 < 15
	_Swim down_ until you see the treasure |goto Talador 65.96,85.13 < 20
	click Rusted Lockbox##228483 |q 34276 |future |goto Talador 65.96,85.13
	|tip It's all the way at the bottom.
step
	|poi_treasure Soulbinder's Reliquary
	|poilvl 94
	|poispot Talador/14 28.2,34.9
	|poiquest 34254
	|poiitem 117570
	|poicurrency GL
	_Enter_ the crypt |goto Talador/14 47.4,86.7 < 15
	_Go left_ into the room |goto Talador/14 38.7,51.6 < 15
	click Soulbinder's Reliquary##228018 |q 34254 |future |goto Talador/14 28.2,34.9
	|tip It's a stone chest with symbols written on it.
step
	|poi_treasure Teroclaw Nest 1
	|poilvl 94
	|poispot Talador 74.60,29.30
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 1##230643 |q 35162 |future |goto Talador 74.60,29.30
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 10
	|poilvl 94
	|poispot Talador 39.30,77.70
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 10##230643 |q 35162 |future |goto Talador 39.30,77.70
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 2
	|poilvl 94
	|poispot Talador 73.50,30.70
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 2##230643 |q 35162 |future |goto Talador 73.50,30.70
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 3
	|poilvl 94
	|poispot Talador 74.30,34.00
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 3##230643 |q 35162 |future |goto Talador 74.30,34.00
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 4
	|poilvl 94
	|poispot Talador 72.80,35.60
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 4##230643 |q 35162 |future |goto Talador 72.80,35.60
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 5
	|poilvl 94
	|poispot Talador 72.40,37.00
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 5##230643 |q 35162 |future |goto Talador 72.40,37.00
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 6
	|poilvl 94
	|poispot Talador 70.90,35.50
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 6##230643 |q 35162 |future |goto Talador 70.90,35.50
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 7
	|poilvl 94
	|poispot Talador 70.80,32.00
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 7##230643 |q 35162 |future |goto Talador 70.80,32.00
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 8
	|poilvl 94
	|poispot Talador 54.10,56.30
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 8##230643 |q 35162 |future |goto Talador 54.10,56.30
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Teroclaw Nest 9
	|poilvl 94
	|poispot Talador 39.80,76.70
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 9##230643 |q 35162 |future |goto Talador 39.80,76.70
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poi_treasure Treasure of Ango'rosh
	|poilvl 94
	|poispot Talador 38.33,84.50
	|poiquest 34257
	|poiitem 116119
	_Go to_ the ruins |goto Talador/0 38.8,83.6
	click Treasure of Ango'rosh##228021 |q 34257 |future |goto Talador 38.33,84.50
	|tip It is a small gold chest sitting atop a rock.
step
	|poi_treasure Webbed Sac
	|poilvl 94
	|poispot Talador 65.44,88.60
	|poiquest 34255
	|poicurrency GL
	_Enter_ the cave |goto Talador/0 61.3,84.2 < 15
	_Go up_ the ramp |goto Talador/0 64.5,86.9 < 15
	click Webbed Sac##228019 |q 34255 |future |goto Talador 65.44,88.60
	|tip It's hanging from a crystal suspended by webbing.
step
	|poi_treasure Yuuri's Gift
	|poilvl 94
	|poispot Talador 40.60,89.50
	|poiquest 34140
	|poicurrency GR
	click Yuuri's Gift##227587 |q 34140 |future |goto Talador 40.60,89.50
	|tip In the back of the small wagon.
	only if completedq(33530)
step
	|poi_treasure Gift of the Ancients
	|poilvl 94
	|poispot Talador 28.39,74.19
	|poiquest 36829
	|poiitem 118686
	_Go up_ the trail |goto Talador/0 27.3,75.9 < 20
	_Enter_ the cave |goto Talador/0 27.9,75.4 < 15
	clicknpc Statue##86486
	click Gift of the Ancients##236483 |q 36829 |future |goto Talador 28.39,74.19
	|tip Click the statues to make all three face inward.
step
	|poi_treasure Sparkling Pool
	|poilvl 94
	|poispot Talador 39.30,41.72
	|poiquest 34207
	|poiitem 112623
	|poicurrency GR
	Fish from the Sparkling Pool |q 34207 |future |goto Talador 39.30,41.72 |cast Fishing##131474
step
	|poi_treasure Norana's Cache
	|poiaccess Completionist
	|poilvl 94
	|poispot Talador 61.10,71.70
	|poiquest 34116
	|poiitem 117563
	|poicurrency GR
	Norana's Cache treasure requires you to save 4 people from Cocoons. Once saved, you must go back to Sunsworn Camp to loot the treasure, even though it will be marked as completed
	The treasure can be found _here_ at [61.1,71.7]
	confirm |q 34116 |future
step
	Open Cocoons and Save 4 Friends |goto Talador 61.2,84.4
	|tip As you find friendly NPC's, they will tell you how many more of their friends you need to save from the cocoons.
	click Norana's Cache##239194 |q 34116 |future |goto Talador 61.10,71.70
	|tip It's a brown and silver chest found after saving 4 NPC's from cocoons.
	Don't forget to loot the treasure _found here_ |goto Talador 61.10,71.70
--//Spires of Arak\\--
step
	|poi_treasure Abandoned Mining Pick
	|poilvl 96
	|poispot Spires of Arak 40.59,54.97
	|poiquest 36458
	|poiitem 116913
	_Go up_ the hidden path |goto Spires of Arak/0 40.2,55.9
	click Abandoned Mining Pick##235313 |q 36458 |future |goto Spires of Arak 40.59,54.97
	|tip It's a pickaxe wedged between a rock and the mountain.
step
	|poi_treasure Admiral Taylor's Coffer
	|poilvl 96
	|poispot Spires of Arak 36.19,54.46
	|poiquest 36462
	|poicurrency GR
	click An Old Key##235366 |goto Spires of Arak 37.70,56.40 |only if itemcount(116020) < 1
	Get An Old Key |condition itemcount(116020) > 0 |only if itemcount(116020) < 1 and not completedq(36462)
	|tip It's on the rock behind the tree. |only if itemcount(116020) < 1
	_Enter_ the Town Hall |goto Spires of Arak/0 36.4,53.6 < 10
	click Admiral Taylor's Coffer##235365 |q 36462 |future |goto Spires of Arak 36.19,54.46
	|tip It's found inside the Town Hall after looting the Old Key.
step
	|poi_treasure Assassin's Spear
	|poilvl 96
	|poispot Spires of Arak 49.20,37.21
	|poiquest 36445
	|poiitem 116835
	_Go up_ the path |goto Spires of Arak 49.2,38.2
	click Assassin's Spear##235143 |q 36445 |future |goto Spires of Arak 49.20,37.21
	|tip It's a large spear sticking out of a corpse on the ground.
step
	|poi_treasure Campaign Contributions
	|poilvl 96
	|poispot Spires of Arak 55.53,90.86
	|poiquest 36367
	|poicurrency GL
	_Go up_ the hill |goto Spires of Arak 56.9,90.9
	_Enter_ the building |goto Spires of Arak/0 55.7,91.0 < 15
	_Go up_ the steps |goto Spires of Arak/0 55.4,91.0 < 10
	click Campaign Contributions##234473 |q 36367 |future |goto Spires of Arak 55.53,90.86
	|tip You must jump onto the headboard of the bed, then onto the shelves. The treasure is above the doorway.
step
	|poi_treasure Coinbender's Payment
	|poilvl 96
	|poispot Spires of Arak 68.42,88.98
	|poiquest 36453
	|poicurrency GL
	click Coinbender's Payment##235299 |q 36453 |future |goto Spires of Arak 68.42,88.98
	|tip After you swim out to the spot, swim down to the ocean floor and claim your treasure.
step
	|poi_treasure Ephial's Dark Grimoire
	|poilvl 96
	|poispot Spires of Arak 36.58,57.91
	|poiquest 36418
	|poiitem 116914
	_Enter_ the house |goto Spires of Arak/0 36.6,57.6 < 10
	click Ephial's Dark Grimoire##235097 |q 36418 |future |goto Spires of Arak/0 36.4,57.8
	|tip It is on a small crate on the right side of the house.
step
	|poi_treasure Fractured Sunstone
	|poilvl 96
	|poispot Spires of Arak 50.50,22.10
	|poiquest 36246
	|poiitem 116919
	click Fractured Sunstone##234157 |q 36246 |future |goto Spires of Arak 50.50,22.10
	|tip It's a tiny crystal at the base of the stone on the water side.
step
	|poi_treasure Garrison Supplies
	|poilvl 96
	|poispot Spires of Arak 37.15,47.50
	|poiquest 36420
	|poicurrency GR
	_Enter_ the small canyon |goto Spires of Arak/0 38.1,46.7
	click Garrison Supplies##235103 |q 36420 |future |goto Spires of Arak 37.15,47.50
	|tip It's in a little wagon in the canyon.
step
	|poi_treasure Garrison Workman's Hammer
	|poilvl 96
	|poispot Spires of Arak 41.85,50.42
	|poiquest 36451
	|poiitem 116918
	click Garrison Workman's Hammer##235289 |q 36451 |future |goto Spires of Arak 41.85,50.42
	|tip It's in the wagon on the side of the road.
step
	|poi_treasure Elixir of Shadow Sight 1
	|poilvl 96
	|poispot Spires of Arak 43.90,15.00
	|poiquest 36395
	|poiitem 115463
	click Elixir of Shadow Sight 1##234703 |q 36395 |future |goto Spires of Arak 43.90,15.00
	|tip Inside the little hanging basket.
step
	|poi_treasure Elixir of Shadow Sight 2
	|poilvl 96
	|poispot Spires of Arak 43.83,24.64
	|poiquest 36397
	|poiitem 115463
	_Enter_ the burning hut |goto Spires of Arak/0 43.8,25.1 < 8
	click Elixir of Shadow Sight 2##234704 |q 36397 |future |goto Spires of Arak 43.83,24.64
	|tip Inside a little basket in the upper-right corner.
step
	|poi_treasure Elixir of Shadow Sight 3
	|poilvl 96
	|poispot Spires of Arak 69.20,43.30
	|poiquest 36398
	|poiitem 115463
	_Go up_ the wall and drop down |goto Spires of Arak/0 68.9,43.4 < 10
	click Elixir of Shadow Sight 3##234705 |q 36398 |future |goto Spires of Arak 69.20,43.30
	|tip It's in the corner of the tree and the wall.
step
	|poi_treasure Elixir of Shadow Sight 4
	|poilvl 96
	|poispot Spires of Arak 49.0,62.6
	|poiquest 36399
	|poiitem 115463
	_Enter_ the hovel |goto Spires of Arak/0 48.8,62.0 < 10
	click Elixir of Shadow Sight 4##234734 |q 36399 |future |goto Spires of Arak 49.0,62.6
	|tip It's at the edge of the straw on the ground.
step
	|poi_treasure Elixir of Shadow Sight 5
	|poilvl 96
	|poispot Spires of Arak 55.60,22.00
	|poiquest 36400
	|poiitem 115463
	_Go around_ the small hills towards the tree |goto Spires of Arak/0 55.4,21.7 < 10
	click Elixir of Shadow Sight 5##234735 |q 36400 |future |goto Spires of Arak 55.60,22.00
	|tip It's near the hand of the dead arakkoa.
step
	|poi_treasure Elixir of Shadow Sight 6
	|poilvl 96
	|poispot Spires of Arak 53.10,84.50
	|poiquest 36401
	|poiitem 115463
	_Go to_ the edge of the water |goto Spires of Arak/0 53.6,84.1 < 20
	_Swim to_ the end of the sunken wall |goto Spires of Arak 53.10,84.50 < 10
	click Elixir of Shadow Sight 6##234735 |q 36401 |future |goto Spires of Arak 53.10,84.50
step
	|poi_treasure Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 48.60,44.50
	|poiquest 36386
	|poiitem 118237
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36386 |future |goto Spires of Arak 48.60,44.50 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poi_treasure Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 57.00,79.00
	|poiquest 36390
	|poiitem 118241
	Take the _side path_ to the altar |goto Spires of Arak/0 57.5,77.6 < 20 |only if itemcount(115463) > 0
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36390 |future |goto Spires of Arak 57.00,79.00 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poi_treasure Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 46.95,40.44
	|poiquest 36389
	|poiitem 118238
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36389 |future |goto Spires of Arak 46.95,40.44 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poi_treasure Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 52.03,19.58
	|poiquest 36392
	|poiitem 118239
	_Go up_ the hill |goto Spires of Arak/0 51.2,20.7 < 15 |only if itemcount(115463) > 0
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36392 |future |goto Spires of Arak 52.03,19.58 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poi_treasure Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 42.40,26.70
	|poiquest 36388
	|poiitem 118242
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36388 |future |goto Spires of Arak 42.40,26.70 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poi_treasure Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 61.10,55.37
	|poiquest 36381
	|poiitem 118240
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36381 |future |goto Spires of Arak 61.10,55.37 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poi_treasure Iron Horde Explosives
	|poilvl 96
	|poispot Spires of Arak 50.33,25.79
	|poiquest 36444
	|poiitem 118691
	|poicurrency GR
	_Go up_ between these ridges |goto Spires of Arak/0 50.3,24.4 < 10
	_Go right_ and follow the ridge |goto Spires of Arak/0 50.6,25.1 < 10
	kill Shattered Hand Lookout##85428
	click Iron Horde Explosives##225731 |q 36444 |future |goto Spires of Arak 50.33,25.79
	|tip It helps to drag the lookout away from the explosives so they are easier to loot.
step
	|poi_treasure Lost Herb Satchel
	|poilvl 96
	|poispot Spires of Arak 50.78,28.74
	|poiquest 36247
	|poiitem 109124
	|poiitem 109126
	|poiitem 109128
	|poiitem 109129
	|poiitem 109125
	|poiitem 109127
	click Lost Herb Satchel##234159 |q 36247 |future |goto Spires of Arak 50.78,28.74
	|tip Underneath the bridge.
step
	|poi_treasure Lost Ring
	|poilvl 96
	|poispot Spires of Arak 47.77,36.12
	|poiquest 36411
	|poiitem 116911
	_Follow_ the path |goto Spires of Arak/0 47.1,37.8
	click Lost Ring##235091 |q 36411 |future |goto Spires of Arak 47.77,36.12
	|tip It's a tiny ring in the middle of the water.
step
	|poi_treasure Misplaced Scroll
	|poilvl 96
	|poispot Spires of Arak 52.47,42.80
	|poiquest 36416
	|poicurrency AA --Arakkoa Archaeology Fragments
	|tip This treasure grants +1-4 to Archaeology skill level.
	_Go up_ the ridge |goto Spires of Arak/0 54.0,47.8 < 5
	_Continue up_ the path |goto Spires of Arak/0 53.8,43.9 < 5
	click Misplaced Scroll##235095 |q 36416 |future |goto Spires of Arak 52.47,42.80
	|tip The scroll is on the left side of the path up against the peak.
	only if skill("Archaeology") >= 1
step
	|poi_treasure Misplaced Scrolls
	|poilvl 96
	|poispot Spires of Arak 42.69,18.32
	|poiquest 36244
	|poicurrency AA --Arakkoa Archaeology Fragments
	|tip This treasure grants +1-4 to Archaeology skill level.
	_Go up_ the path |goto Spires of Arak/0 41.6,21.2
	click Misplaced Scrolls##234154 |q 36244 |future |goto Spires of Arak 42.69,18.32
	|tip It's behind the small broken wall.
	only if skill("Archaeology") >= 1
step
	|poi_treasure Mysterious Mushrooms
	|poilvl 96
	|poispot Spires of Arak 63.58,67.37
	|poiquest 36454
	|poiitem 109127
	_Go between_ these two ridges and continue up |goto Spires of Arak/0 63.2,66.5
	click Mysterious Mushrooms##235300 |q 36454 |future |goto Spires of Arak 63.58,67.37
step
	|poi_treasure Nizzix's Chest
	|poilvl 96
	|poispot Spires of Arak 60.80,87.80
	|poiquest 35481
	|poicurrency GR
	click Escape Pod##232403 |goto Spires of Arak/0 60.9,88.0 < 8
	click Nizzix's Chest##232458 |q 35481 |future |goto Spires of Arak 60.80,87.80
	|tip The pod is at the edge of the water. This will free Nizzix who will walk ashore and drop the chest.
step
	|poi_treasure Offering to the Raven Mother 1
	|poilvl 96
	|poispot Spires of Arak 53.31,55.52
	|poiquest 36403
	|poiitem 118267
	_Go through_ the small opening |goto Spires of Arak/0 52.7,55.4 < 10
	_Go up_ the hill |goto Spires of Arak/0 53.3,55.7 < 5
	click Offering to the Raven Mother 1##234744 |q 36403 |future |goto Spires of Arak 53.31,55.52
	|tip It's in a nest in the tree on the left of the hill.
step
	|poi_treasure Offering to the Raven Mother 2
	|poilvl 96
	|poispot Spires of Arak 48.35,52.61
	|poiquest 36405
	|poiitem 118267
	_Go up_ the hill past Stonescale |goto Spires of Arak/0 49.1,52.3 < 15
	click Offering to the Raven Mother 2##234746 |q 36405 |future |goto Spires of Arak 48.35,52.61
	|tip It's being held by a Cultist Statue.
step
	|poi_treasure Offering to the Raven Mother 3
	|poilvl 96
	|poispot Spires of Arak 48.90,54.70
	|poiquest 36406
	|poiitem 118267
	_Go up_ the path here |goto Spires of Arak/0 48.9,55.9 < 15
	click Offering to the Raven Mother 3##234748 |q 36406 |future |goto Spires of Arak 48.90,54.70
	|tip It's in the nest.
step
	|poi_treasure Offering to the Raven Mother 4
	|poilvl 96
	|poispot Spires of Arak 51.88,64.65
	|poiquest 36407
	|poiitem 118267
	_Go up_ the hidden path |goto Spires of Arak/0 51.5,63.8 < 10
	click Offering to the Raven Mother 4##235073 |q 36407 |future |goto Spires of Arak 51.88,64.65
step
	|poi_treasure Offering to the Raven Mother 5
	|poilvl 96
	|poispot Spires of Arak 60.97,63.87
	|poiquest 36410
	|poiitem 118267
	_Go up_ the hidden path |goto Spires of Arak/0 61.9,64.0 < 10
	click Offering to the Raven Mother 5##235090 |q 36410 |future |goto Spires of Arak 60.97,63.87
step
	|poi_treasure Ogron Plunder
	|poilvl 96
	|poispot Spires of Arak 58.70,60.24
	|poiquest 36340
	|poiitem 116921
	|poiitem 116922
	click Ogron Plunder##234432 |q 36340 |future |goto Spires of Arak 58.70,60.24
	|tip Bort, Wullim, and Toom will aggro when clicking the chest.
step
	|poi_treasure Orcish Signaling Horn
	|poilvl 96
	|poispot Spires of Arak 36.28,39.34
	|poiquest 36402
	|poiitem 120337
	click Orcish Signaling Horn##234740 |q 36402 |future |goto Spires of Arak 36.28,39.34
	|tip It's next to the broken cart.
step
	|poi_treasure Outcast's Belongings 1
	|poilvl 96
	|poispot Spires of Arak 36.82,17.16
	|poiquest 36243
	|poiitem RANDOM
	|poicurrency GL
	_Climb up_ the crevice |goto Spires of Arak/0 36.4,17.6
	click Outcast's Belongings 1##234147 |q 36243 |future |goto Spires of Arak 36.82,17.16
step
	|poi_treasure Outcast's Belongings 2
	|poilvl 96
	|poispot Spires of Arak 42.17,21.68
	|poiquest 36447
	|poiitem RANDOM
	|poicurrency GL
	_Go up_ the ravine |goto Spires of Arak/0 41.6,22.1
	click Outcast's Belongings 2##235172 |q 36447 |future |goto Spires of Arak 42.17,21.68
step
	|poi_treasure Outcast's Pouch
	|poilvl 96
	|poispot Spires of Arak 46.90,34.06
	|poiquest 36446
	|poiitem RANDOM
	|poicurrency GL
	_Climb up_ onto the chain and walk across to the tree |goto Spires of Arak/0 47.2,33.9
	click Outcast's Pouch##235168 |q 36446 |future |goto Spires of Arak 46.90,34.06
	|tip It's on the captive outcast's belt.
step
	|poi_treasure Relics of the Outcasts 1
	|poilvl 96
	|poispot Spires of Arak 42.96,16.37
	|poiquest 36245
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the wall from this point |goto Spires of Arak/0 43.4,15.3 < 8
	_Drop down_ onto the rope and carefully walk to the far wall |goto Spires of Arak/0 43.4,15.8 < 5
	click Relics of the Outcasts 1##234454 |q 36245 |future |goto Spires of Arak 42.96,16.37
	only if skill("Archaeology") >= 1
step
	|poi_treasure Relics of the Outcasts 2
	|poilvl 96
	|poispot Spires of Arak 45.96,44.15
	|poiquest 36354
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump_ from this point on the rock to the rope tethered to the tree |goto Spires of Arak/0 46.9,43.6 < 7
	_Walk across_ the rope to the treasure |goto Spires of Arak/0 46.4,43.8 < 8
	click Relics of the Outcasts 2##234454 |q 36354 |future |goto Spires of Arak 45.96,44.15
	only if skill("Archaeology") >= 1
step
	|poi_treasure Relics of the Outcasts 3
	|poilvl 96
	|poispot Spires of Arak 43.16,27.26
	|poiquest 36355
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the stump and walk the rope around to the treasure |goto Spires of Arak/0 44.6,27.6 < 10
	click Relics of the Outcasts 3##234454 |q 36355 |future |goto Spires of Arak 43.16,27.26
	|tip At the end of the rope, it's on the tree trunk to your right.
	only if skill("Archaeology") >= 1
step
	|poi_treasure Relics of the Outcasts 4
	|poilvl 96
	|poispot Spires of Arak 67.37,39.83
	|poiquest 36356
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Mount up_ and jump from this point onto the wall |goto Spires of Arak/0 68.0,39.6 < 5
	_Follow_ the wall to the treasure |goto Spires of Arak/0 67.8,40.0 < 3
	click Relics of the Outcasts 4##234454 |q 36356 |future |goto Spires of Arak 67.37,39.83
	only if skill("Archaeology") >= 1
step
	|poi_treasure Relics of the Outcasts 5
	|poilvl 96
	|poispot Spires of Arak 60.21,53.91
	|poiquest 36359
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the rope |goto Spires of Arak/0 60.2,53.2
	click Relics of the Outcasts 5##234454 |q 36359 |future |goto Spires of Arak 60.21,53.91
	|tip If you keep falling off, try jumping up the rope.
	only if skill("Archaeology") >= 1
step
	|poi_treasure Relics of the Outcasts 6
	|poilvl 96
	|poispot Spires of Arak 51.89,48.92
	|poiquest 36360
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the wall here |goto Spires of Arak/0 52.1,49.0 < 5
	_Jump down_ onto the rope from this point |goto Spires of Arak/0 52.4,49.4 < 5
	_Jump onto_ the wall at the end of the rope |goto Spires of Arak/0 51.6,49.1 < 5
	click Relics of the Outcasts 6##234454 |q 36360 |future |goto Spires of Arak 51.89,48.92
	only if skill("Archaeology") >= 1
step
	|poi_treasure Rooby's Roo
	|poilvl 96
	|poispot Spires of Arak 37.37,50.56
	|poiquest 36657
	|poiitem 116887
	_Enter_ the inn |goto Spires of Arak/0 37.6,51.2 < 5 |only if itemcount(114835) < 3 and not completedq(36657)
	_Go downstairs_ |goto Spires of Arak/0 37.4,50.7 < 5 |only if itemcount(114835) < 3 and not completedq(36657)
	talk Miril Dumonde##82432 |only if itemcount(114835) < 3 and not completedq(36657)
	buy 3 Rooby Treat##114835 |goto Spires of Arak/0 37.6,50.9 < 10 |only if itemcount(114835) < 1 and not completedq(36657)
	clicknpc Rooby Roo##84332 |goto Spires of Arak/0 37.5,50.8 < 10 |use Rooby Treat##114835 |only if itemcount(114835) > 0
	click Rooby's Roo##233975 |q 36657 |future |goto Spires of Arak 37.37,50.56 < 7
	|tip You must feed Rooby treats and follow her to the treasure. It's in a big surprise! |only if itemcount(114835) > 0
step
	|poi_treasure Rukhmar's Image
	|poilvl 96
	|poispot Spires of Arak 44.33,12.04
	|poiquest 36377
	|poiitem 118693
	_Enter_ the hovel |goto Spires of Arak/0 44.4,12.3
	clicknpc Rukhmar's Image##85206 |q 36377 |future |goto Spires of Arak 44.33,12.04
step
	|poi_treasure Sailor Zazzuk's 180-Proof Rum
	|poilvl 96
	|poispot Spires of Arak 59.17,90.64
	|poiquest 36366
	|poiitem 116917
	_Enter_ the little shack |goto Spires of Arak/0 59.1,90.6 < 5
	click Sailor Zazzuk's 180-Proof Rum##234472 |q 36366 |future |goto Spires of Arak 59.17,90.64
	|tip It's on the console.
step
	|poi_treasure Sethekk Idol
	|poilvl 96
	|poispot Spires of Arak 68.33,38.93
	|poiquest 36375
	|poiitem 118692
	_Go up_ the path |goto Spires of Arak/0 67.3,38.6
	clicknpc Sethekk Idol##85190 |q 36375 |future |goto Spires of Arak 68.33,38.93
	|tip It's a skeletal serpent on the altar.
step
	|poi_treasure Sethekk Ritual Brew
	|poilvl 96
	|poispot Spires of Arak 71.64,48.59
	|poiquest 36450
	|poiitem 109223
	|poiitem 117437
	_Go up_ the path |goto Spires of Arak/0 71.2,48.9
	click Sethekk Ritual Brew##235282 |q 36450 |future |goto Spires of Arak 71.64,48.59
step
	|poi_treasure Shattered Hand Cache
	|poilvl 96
	|poispot Spires of Arak 56.23,28.81
	|poiquest 36362
	|poicurrency GR
	_Enter_ the hut |goto Spires of Arak/0 56.1,28.7 < 10
	click Shattered Hand Cache##234458 |q 36362 |future |goto Spires of Arak 56.23,28.81
	|tip It's behind the barrels and crates.
step
	|poi_treasure Shattered Hand Lockbox
	|poilvl 96
	|poispot Spires of Arak 47.92,30.65
	|poiquest 36361
	|poiitem 116920
	click Shattered Hand Lockbox##234456 |q 36361 |future |goto Spires of Arak 47.92,30.65
step
	|poi_treasure Shredder Parts
	|poilvl 96
	|poispot Spires of Arak 60.86,84.61
	|poiquest 36456
	|poicurrency GR
	click Shredder Parts##235310 |q 36456 |future |goto Spires of Arak 60.86,84.61
	|tip In the back of the wagon on the open crate.
step
	|poi_treasure Smuggled Apexis Artifacts
	|poilvl 96
	|poispot Spires of Arak 56.29,45.31
	|poiquest 36433
	|poicurrency AA --Arakkoa Archaeology Fragments
	click Smuggled Apexis Artifacts##235135 |q 36433 |future |goto Spires of Arak 56.29,45.31
	|tip Jump up the mushrooms growing out of the tree to reach it. You need at least 600 Archaelogy to be able to get this treasure.
	only if skill("Archaeology") >= 1
step
	|poi_treasure Spray-O-Matic 5000 XT
	|poilvl 96
	|poispot Spires of Arak 59.63,81.34
	|poiquest 36365
	|poicurrency GR
	click Spray-O-Matic 5000 XT##234471 |q 36365 |future |goto Spires of Arak 59.63,81.34
	|tip In the wrecked hull of the boat.
step
	|poi_treasure Sun-Touched Cache 1
	|poilvl 96
	|poispot Spires of Arak 34.14,27.51
	|poiquest 36421
	|poicurrency AA --Arakkoa Archaeology Fragments
	|poicurrency GL
	_Jump up_ here to get on the scaffolding |goto Spires of Arak/0 33.9,27.2 
	click Sun-Touched Cache 1##235105 |q 36421 |future |goto Spires of Arak 34.14,27.51
	only if skill("Archaeology") >= 1
step
	|poi_treasure Sun-Touched Cache 2
	|poilvl 96
	|poispot Spires of Arak 33.29,27.27
	|poiquest 36422
	|poicurrency AA --Arakkoa Archaeology Fragments
	|poicurrency GL
	_Jump up_ here to get on the scaffolding |goto Spires of Arak/0 33.4,27.6
	click Sun-Touched Cache 2##235105 |q 36422 |future |goto Spires of Arak 33.29,27.27
	|tip You can loot it from the middle.
	only if skill("Archaeology") >= 1
step
	|poi_treasure Toxicfang Venom
	|poilvl 96
	|poispot Spires of Arak 54.35,32.55
	|poiquest 36364
	|poiitem 118695
	click Toxicfang Venom##234461 |q 36364 |future |goto Spires of Arak 54.35,32.55
	|tip It's a green vial behind the barrel that is laying on its side.
step
	|poi_treasure Waterlogged Satchel
	|poilvl 96
	|poispot Spires of Arak 66.47,56.53
	|poiquest 36455
	|poiitem RANDOM
	|poicurrency GL
	_Swim through_ the channel |goto Spires of Arak/0 66.1,58.1
	click Waterlogged Satchel##235307 |q 36455 |future |goto Spires of Arak 66.47,56.53
	|tip It's at the bottom of the water.
step
	|poi_treasure Statue of Anzu
	|poilvl 96
	|poispot Spires of Arak 57.80,22.20
	|poiquest 36374
	|poiitem 118694
	_Go up_ the narrow trail |goto Spires of Arak/0 56.8,25.4
	_Continue_ going up |goto Spires of Arak/0 58.6,23.9
	clicknpc Statue of Anzu##85165 |q 36374 |future |goto Spires of Arak/0 58.0,22.3
--//Nagrand\\--
step
	|poi_treasure A Pile of Dirt
	|poilvl 98
	|poispot Nagrand D 73.07,10.80
	|poiquest 35951
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 74.9,8.7
	Very carefully, _drop down_ |goto Nagrand D/0 73.0,10.6 < 3
	click A Pile of Dirt##233452 |q 35951 |future |goto Nagrand D 73.07,10.80
step
	|poi_treasure Abandoned Cargo
	|poilvl 98
	|poispot Nagrand D 67.65,59.71
	|poiquest 35759
	|poiitem 3 RANDOM
	click Abandoned Cargo##233206 |q 35759 |future |goto Nagrand D 67.65,59.71
	|tip Among the broken wagon rubble.
step
	|poi_treasure Abu'Gar's Favorite Lure
	|poilvl 98
	|poispot Nagrand D 38.40,49.40
	|poiquest 36711
	|poiitem 114245
	click Abu'Gar's Favorite Lure##233642 |q 36072 |future |or |goto Nagrand D 38.40,49.40
	'| click Abu'Gar's Favorite Lure##233642 |condition itemcount(114245)>0 |or --Temporary fix, quest ID's on wowhead are still not working
	|tip It's next to the small bridge by the weeds.
	|only if not completedq(36711)
step
	|poi_treasure Abu'gar's Missing Reel
	|poilvl 98
	|poispot Nagrand D 85.40,38.70
	|poiquest 36711
	|poiitem 114243
	click Abu'gar's Missing Reel##233506 |q 36089 |future |or |goto Nagrand D 85.40,38.70
	'| click Abu'gar's Missing Reel##233506 |condition itemcount(114243)>0 |or --Temporary fix, quest ID's on wowhead are still not working
	|tip Next to a little box at the edge of the water by the tree.
	|only if not completedq(36711)
step
	|poi_treasure Abu'gar's Vitality
	|poilvl 98
	|poispot Nagrand D 65.83,61.14
	|poiquest 35711
	|poiitem 114242
	_Enter_ the warsong area |goto Nagrand D/0 69.0,64.3 < 20
	_Continue_ through |goto Nagrand D/0 66.7,63.5 < 10
	_Drop down_ carefully onto the lower ledge |goto Nagrand D/0 65.9,61.5 < 15
	click Abu'gar's Vitality##233157 |q 35711 |or |future |goto Nagrand D 65.83,61.14
	'| click Abu'gar's Vitality##233157 |condition itemcount(114242)>0 |or --Temporary fix, quest ID's on wowhead are still not working
	|tip By the tackle box.
	|only if not completedq(36711)
step
	|poi_treasure Adventurer's Mace
	|poilvl 98
	|poispot Nagrand D 75.81,62.03
	|poiquest 36077
	|poiitem 1 RANDOM
	|poicurrency GL
	_Cross_ the tree bridge |goto Nagrand D/0 74.0,62.2 < 20
	_Follow_ the path around |goto Nagrand D/0 74.0,62.8 < 10
	_Climb_ up the rocks |goto Nagrand D/0 75.0,62.2 < 10
	click Adventurer's Mace##233650 |q 36077 |future |goto Nagrand D 75.81,62.03
	|tip It's on a bloody corpse underneath the planks.
step
	|poi_treasure Adventurer's Pack 1
	|poilvl 98
	|poispot Nagrand D 82.27,56.60
	|poiquest 35765
	|poiitem 1 RANDOM
	|poicurrency GL
	click Adventurer's Pack##233218 |q 35765 |future |goto Nagrand D 82.27,56.60
	|tip Next to the rock underneath the body impaled to the tree.
step
	|poi_treasure Adventurer's Pack 2
	|poilvl 98
	|poispot Nagrand D 45.63,52.00
	|poiquest 35969
	|poiitem 1 RANDOM
	|poicurrency GL
	click Adventurer's Pack##233218 |q 35969 |future |goto Nagrand D 45.63,52.00
	|tip It's in the remains of the bloody corpse at the base of the tree.
step
	|poi_treasure Adventurer's Pack 3
	|poilvl 98
	|poispot Nagrand D 69.95,52.44
	|poiquest 35597
	|poiitem 1 RANDOM
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 69.2,50.4 < 20
	Carefully, _climb onto_ the tree and walk out on the limb |goto Nagrand D/0 69.7,52.2 < 5
	click Adventurer's Pack##233218 |q 35597 |future |goto Nagrand D 69.95,52.44
	|tip Toggling run/walk to the walk setting helps.
step
	|poi_treasure Adventurer's Pouch
	|poilvl 98
	|poispot Nagrand D 56.56,72.94
	|poiquest 36050
	|poiitem 1 RANDOM
	|poicurrency GL
	_Cross_ the field |goto Nagrand D/0 59.1,74.6
	_Drop down_ |goto Nagrand D/0 57.0,73.3 < 8
	click Adventurer's Pouch##233623 |q 36050 |future |goto Nagrand D 56.56,72.94
	|tip It's waist-level with the bloody corpse.
step
	|poi_treasure Adventurer's Sack
	|poilvl 98
	|poispot Nagrand D 73.93,14.05
	|poiquest 35955
	|poiitem 1 RANDOM
	|poicurrency GL
	_Swim to_ the waterfall |goto Nagrand D/0 73.5,14.4
	click Adventurer's Sack##233499 |q 35955 |future |goto Nagrand D 73.93,14.05
	|tip Swim underwater to claim the treasure.
step
	|poi_treasure Adventurer's Staff
	|poilvl 98
	|poispot Nagrand D 81.46,13.07
	|poiquest 35953
	|poiitem 116640
	|poicurrency GL
	_Drop down_ carefully here |goto Nagrand D/0 81.5,13.6 < 5
	click Adventurer's Staff##233457 |q 35953 |future |goto Nagrand D 81.46,13.07
step
	|poi_treasure Appropriated Warsong Supplies
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 73.05,75.54
	|poiquest 35673
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 20
	click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 76.1,73.0 < 5
	click Appropriated Warsong Supplies##233079 |q 35673 |future |goto Nagrand D 73.05,75.54
	|tip Use the glider to fly to the treasure.
step
	|poi_treasure Bag of Herbs
	|poilvl 98
	|poispot Nagrand D 62.54,67.08
	|poiquest 36116
	|poiitem 109124
	|poiitem 109128
	|poiitem 109129
	|poiitem 109127
	|poiitem 109126
	|poiitem 109125
	_Go up_ the hill |goto Nagrand D/0 61.4,65.8 < 20
	Hug the mountain and _jump over_ the tree |goto Nagrand D/0 62.1,66.8 < 10
	click Bag of Herbs##233773 |q 36116 |future |goto Nagrand D 62.54,67.08
step
	|poi_treasure Bone-Carved Dagger
	|poilvl 98
	|poispot Nagrand D 77.31,28.07
	|poiquest 35986
	|poiitem 116760
	_Go to_ the earthen bridge |goto Nagrand D/0 78.8,26.4 < 20
	_Cross_ the bridge and drop down here |goto Nagrand D/0 77.6,29.3 < 15
	click Bone-Carved Dagger##233532 |q 35986 |future |goto Nagrand D 77.31,28.07
	|tip It's up against the unidentifiable remains.
step
	|poi_treasure Bounty of the Elements
	|poilvl 98
	|poispot Nagrand D 77.08,16.62
	|poiquest 36174
	|poicurrency GR
	_Go up_ the narrow trail carefully |goto Nagrand D/0 75.9,15.2 < 5
	_Enter_ the cave |goto Nagrand D/0 77.1,17.2 < 10
	click Bounty of the Elements##233973 |q 36174 |future |goto Nagrand D 77.08,16.62
	|tip Click the air totem first, then earth, then water, then fire. Finally, click the chest.
step
	|poi_treasure Brilliant Dreampetal
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 81.08,37.25
	|poiquest 35661
	|poiitem 118262
	_Follow the path_ up |goto Nagrand D/0 83.4,33.1 < 10
	_Continue up_ the mountain |goto 85.0,34.7 < 10
	Proceed _along the mountain_ |goto 87.1,38.6 < 10
	Continue _around_ |goto 88.4,36.7 < 10
	Use the glider to reach the treasure |goto Nagrand D/0 83.7,33.7 < 5
	click Brilliant Dreampetal##233048 |q 35661 |future |goto Nagrand D 81.08,37.25
	|tip Immediately turn left towards the treasure to clear the distance.
step
	|poi_treasure Burning Blade Cache
	|poilvl 98
	|poispot Nagrand D 85.41,53.47
	|poiquest 35696
	|poiitem 1 RANDOM
	_Go up_ the hill |goto Nagrand D/0 83.1,52.5 < 10
	_Cross_ the bridge |goto Nagrand D/0 84.0,52.1 < 10
	_Jump over_ to the top of the building from here |goto Nagrand D/0 84.9,53.1 < 5
	click Burning Blade Cache##233137 |q 35696 |future |goto Nagrand D/0 85.4,53.5
	|tip You will need to be mounted for this jump.
step
	|poi_treasure Elemental Offering
	|poilvl 98
	|poispot Nagrand D 66.96,19.49
	|poiquest 35954
	|poiitem 118234
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 66.4,16.3 < 10
	_Drop down_ carefully to the ledge below |goto Nagrand D 66.96,19.49 < 7
	click Elemental Offering##233492 |q 35954 |future |goto Nagrand D 66.96,19.49
step
	|poi_treasure Elemental Shackles
	|poilvl 98
	|poispot Nagrand D 78.90,15.56
	|poiquest 36036
	|poiitem 118251
	_Go up_ the hill |goto Nagrand D/0 77.4,12.0 < 10
	_Jump from_ this spot to the next rock |goto Nagrand D/0 78.2,14.2 < 10
	click Elemental Shackles##233598 |q 36036 |future |goto Nagrand D 78.90,15.56
step
	|poi_treasure Fragment of Oshu'gun
	|poilvl 98
	|poispot Nagrand D 45.86,66.29
	|poiquest 36020
	|poiitem 117981
	click Fragment of Oshu'gun##233560 |q 36020 |future |goto Nagrand D 45.86,66.29
	|tip It's a small white crystal next to the large Oshu'gun crystal.
step
	|poi_treasure Freshwater Clam
	|poilvl 98
	|poispot Nagrand D 73.05,21.53
	|poiquest 35692
	|poiitem 118233
	click Freshwater Clam##233132 |q 35692 |future |goto Nagrand D 73.05,21.53
	|tip Under the water next to Throne of the Elements.
step
	|poi_treasure Fungus-Covered Chest
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 88.90,18.24
	|poiquest 35660
	|poicurrency GR
	_Follow_ the path around towards the glider |goto Nagrand D/0 88.3,37.9 < 15
	_Continue_ towards the glider |goto Nagrand D/0 86.5,34.5 < 15
	Click the Steamwheedle Exploration Glider |goto Nagrand D/0 83.7,33.7 < 5
	click Fungus-Covered Chest##233044 |q 35660 |future |goto Nagrand D 88.90,18.24
	|tip Hang a right immediately after clicking the glider to clear the distance to the treasure.
step
	|poi_treasure Gambler's Purse
	|poilvl 98
	|poispot Nagrand D 75.37,47.11
	|poiquest 36074
	|poiitem 118236
	click Gambler's Purse##233649 |q 36074 |future |goto Nagrand D 75.37,47.11
	|tip It's hidden in the weeds.
step
	|poi_treasure Genedar Debris 1
	|poilvl 98
	|poispot Nagrand D 43.22,57.55
	|poiquest 35987
	|poicurrency GR
	click Genedar Debris##233539 |q 35987 |future |goto Nagrand D 43.22,57.55
	|tip It's a purple object in the middle of the trees.
step
	|poi_treasure Genedar Debris 2
	|poilvl 98
	|poispot Nagrand D 48.06,60.11
	|poiquest 35999
	|poicurrency GR
	click Genedar Debris##233539 |q 35999 |future |goto Nagrand D 48.06,60.11
	|tip It's on the side of the hill. Look for the little blue gem.
step
	|poi_treasure Genedar Debris 3
	|poilvl 98
	|poispot Nagrand D 48.58,72.79
	|poiquest 36008
	|poicurrency GR
	click Genedar Debris##233539 |q 36008 |future |goto Nagrand D 48.58,72.79
	|tip It's wedged between the tree and rock.
step
	|poi_treasure Genedar Debris 4
	|poilvl 98
	|poispot Nagrand D 44.69,67.57
	|poiquest 36002
	|poicurrency GR
	click Genedar Debris##233539 |q 36002 |future |goto Nagrand D 44.69,67.57
	|tip It's pink-purple and hidden just under the tree foliage.
step
	|poi_treasure Genedar Debris 5
	|poilvl 98
	|poispot Nagrand D 55.35,68.28
	|poiquest 36011
	|poicurrency GR
	click Genedar Debris##233539 |q 36011 |future |goto Nagrand D 55.35,68.28
	|tip It's a purple object in the middle of the small grove of trees.
step
	|poi_treasure Goblin Pack 1
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 72.97,62.12
	|poiquest 35590
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2
	_Click_ the Steamwheedle Exploration Glider and use it to reach the treasure |goto Nagrand D/0 75.7,64.5
	click Goblin Pack##232571 |q 35590 |future |goto Nagrand D 72.97,62.12
	|tip The pack is on the side of the stone pillar. It's on a small ledge.
step
	|poi_treasure Goblin Pack 2
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 47.20,74.25
	|poiquest 35576
	|poicurrency GR
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Goblin Pack##232571 |q 35576 |future |goto Nagrand D 47.20,74.25
	|tip You will need to pay close attention and land on the horizontal section of the tree trunk.
step
	|poi_treasure Golden Kaliri Egg
	|poilvl 98
	|poispot Nagrand D 58.28,52.49
	|poiquest 35694
	|poiitem 118266
	_Jump from_ the rock onto the tree |goto Nagrand D/0 57.7,52.8 < 8
	click Golden Kaliri Egg##233134 |q 35694 |future |goto Nagrand D 58.28,52.49
step
	|poi_treasure Goldtoe's Plunder
	|poilvl 98
	|poispot Nagrand D 38.34,58.72
	|poiquest 36109
	|poicurrency GL
	_Climb over_ the rocks and wait here for the parrot |goto Nagrand D/0 38.5,58.8 < 10
	clicknpc Rusty Keys##84068
	click Goldtoe's Plunder##233715 |q 36109 |future |goto Nagrand D 38.34,58.72
	|tip Click the keys in the green and yellow parrot's mouth.
step
	|poi_treasure Grizzlemaw's Bonepile
	|poilvl 98
	|poispot Nagrand D 87.10,72.88
	|poiquest 36051
	|poiitem 118054
	_Go up_ the hill |goto Nagrand D/0 83.5,68.8 < 8
	_Follow_ the ridge and cross the waterfall |goto Nagrand D/0 85.2,70.1 < 5
	click Grizzlemaw's Bonepile##233626 |q 36051 |future |goto Nagrand D 87.10,72.88
	|tip It's behind the tree on the ground.
step
	|poi_treasure Hidden Stash
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 87.62,44.98
	|poiquest 35622
	|poicurrency GR
	_Cross_ the gap |goto Nagrand D/0 87.0,38.7 < 10
	_Go up_ the hill |goto Nagrand D/0 86.3,41.3 < 10
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 5
	click Hidden Stash##232986 |q 35622 |future |goto Nagrand D 87.62,44.98
	|tip The stash is hidden in a tree. You will need to land on it carefully.
step
	|poi_treasure Highmaul Sledge
	|poilvl 98
	|poispot Nagrand D 67.38,49.06
	|poiquest 36039
	|poiitem 118252
	_Follow_ the canyon wall |goto Nagrand D/0 67.7,47.9
	click Highmaul Sledge##233611 |q 36039 |future |goto Nagrand D 67.38,49.06
	|tip It's just past the tree on a hill.
step
	|poi_treasure Important Exploration Supplies
	|poilvl 98
	|poispot Nagrand D 75.23,65.63
	|poiquest 36099
	|poiitem 61986
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 15
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 15
	_Drop down_ to the cave below |goto Nagrand D/0 75.1,65.8 < 10
	click Important Exploration Supplies##233696 |q 36099 |future |goto Nagrand D 75.23,65.63
step
	|poi_treasure Lost Pendant
	|poilvl 98
	|poispot Nagrand D 61.76,57.47
	|poiquest 36082
	|poiitem 116687
	click Lost Pendant##233651 |q 36082 |future |goto Nagrand D 61.76,57.47
	|tip It's hanging from a branch overhead.
step
	|poi_treasure Mountain Climber's Pack
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 70.53,13.85
	|poiquest 35643
	|poicurrency GR
	_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
	_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
	_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
	click Mountain Climber's Pack##233032 |q 35643 |future |goto Nagrand D 70.53,13.85
	|tip The pack is on the little skeleton.
step
	|poi_treasure Ogre Beads
	|poilvl 98
	|poispot Nagrand D 80.96,79.79
	|poiquest 36049
	|poiitem 118255
	_Go up_ the hill |goto Nagrand D/0 81.7,79.9 < 15
	_Jump over_ onto the wall from here |goto Nagrand D/0 80.9,80.3 < 10
	click Ogre Beads##233618 |q 36049 |future |goto Nagrand D 80.96,79.79
step
	|poi_treasure Pale Elixir
	|poilvl 98
	|poispot Nagrand D 57.79,62.05
	|poiquest 36115
	|poiitem 118278
	_Jump across_ the gap |goto Nagrand D/0 58.9,60.0 < 15
	_Jump across_ the second gap |goto Nagrand D/0 58.3,60.9 < 15
	_Jump down_ to the lower platform |goto Nagrand D/0 57.7,62.1 < 15
	click Pale Elixir##233768 |q 36115 |future |goto Nagrand D 57.79,62.05
	|tip It's on a small rock cradled in the tree trunk.
step
	|poi_treasure Pokkar's Thirteenth Axe
	|poilvl 98
	|poispot Nagrand D 58.29,59.31
	|poiquest 36021
	|poiitem 116688
	_Go to_ this platform |goto Nagrand D/0 58.0,57.8 < 10
	_Jump down_ onto the tree below |goto Nagrand D/0 58.1,59.2 < 5
	click Pokkar's Thirteenth Axe##233561 |q 36021 |future |goto Nagrand D 58.29,59.31
	|tip The axe is on a small tree limb just below the trunk.
step
	|poi_treasure Polished Saberon Skull
	|poilvl 98
	|poispot Nagrand D 72.71,60.92
	|poiquest 36035
	|poiitem 118254
	_Climb over_ the rocks |goto Nagrand D/0 77.0,61.4 < 15
	_Follow_ the ridge |goto Nagrand D/0 75.2,63.0 < 10
	_Go out_ onto the outcropping |goto Nagrand D/0 73.5,63.2 < 10
	click Polished Saberon Skull##233593 |q 36035 |future |goto Nagrand D 72.71,60.92
step
	|poi_treasure Saberon Stash
	|poilvl 98
	|poispot Nagrand D 75.18,64.94
	|poiquest 36102
	|poiitem 1 RANDOM
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 10
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 10
	_Drop down_ carefully by jumping and moving forward while in the air |goto Nagrand D/0 75.3,65.0 < 8
	click Saberon Stash##232311 |q 36102 |future |goto Nagrand D 75.18,64.94
	|tip It's between the wall and rock.
step
	|poi_treasure Smuggler's Cache
	|poilvl 98
	|poispot Nagrand D 89.07,33.13
	|poiquest 36857
	|poicurrency GR, GL
	_Go down_ the hill |goto Nagrand D/0 88.5,33.4 < 20
	_Enter_ the cave |goto Nagrand D/0 89.0,32.5 < 10
	click Smuggler's Cache##236633 |q 36857 |future |goto Nagrand D 89.07,33.13
	|tip Avoid the tripwires at the entrance of the cave. They are hooked to a gun that will shoot you out of the cave.
step
	|poi_treasure Spirit Coffer
	|poilvl 98
	|poispot Nagrand D 40.34,68.64
	|poiquest 37435
	|poicurrency GR
	_Enter_ the cave |goto Nagrand D/0 41.8,68.2 < 10
	click Spirit Coffer##237946 |q 37435 |future |goto Nagrand D 40.34,68.64
step
	|poi_treasure Steamwheedle Supplies 1
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 50.12,82.28
	|poiquest 35577
	|poicurrency GR
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Steamwheedle Supplies##232584 |q 35577 |future |goto Nagrand D 50.12,82.28
step
	|poi_treasure Steamwheedle Supplies 2
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 52.67,80.08
	|poiquest 35583
	|poicurrency GR
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Steamwheedle Supplies##232584 |q 35583 |future |goto Nagrand D 52.67,80.08
step
	|poi_treasure Steamwheedle Supplies 3
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 77.83,51.95
	|poiquest 35591
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 10
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 10
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 75.7,64.5 < 10
	click Steamwheedle Supplies##232584 |q 35591 |future |goto Nagrand D 77.83,51.95
	|tip You will need to land on the watchtower.
step
	|poi_treasure Steamwheedle Supplies 4
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 64.59,17.62
	|poiquest 35648
	|poicurrency GR
	_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
	_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
	_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
	click Steamwheedle Supplies##232584 |q 35648 |future |goto Nagrand D 64.59,17.62
step
	|poi_treasure Steamwheedle Supplies 5
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 70.60,18.60
	|poiquest 35646
	|poicurrency GR
	_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
	_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
	_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
	click Steamwheedle Supplies##232584 |q 35646 |future |goto Nagrand D 70.60,18.60
	|tip You need to land on top of the stone pillar with the purple flag waiving.
step
	|poi_treasure Steamwheedle Supplies 6
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 87.60,20.28
	|poiquest 35662
	|poicurrency GR
	_Follow_ the path around towards the glider |goto Nagrand D/0 88.3,37.9 < 20
	_Continue_ towards the glider |goto Nagrand D/0 86.5,34.5 < 20
	Click the Steamwheedle Exploration Glider |goto Nagrand D/0 83.7,33.7 < 10
	click Steamwheedle Supplies##232584 |q 35662 |future |goto Nagrand D 87.60,20.28
	|tip You need to land on the smaller mushroom just under the huge one.
step
	|poi_treasure Steamwheedle Supplies 7
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 88.27,42.62
	|poiquest 35616
	|poicurrency GR
	_Cross_ the bridge |goto Nagrand D/0 87.1,39.4 < 10
	_Go up_ the hill |goto Nagrand D/0 86.3,41.3 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 10
	click Steamwheedle Supplies##232584 |q 35616 |future |goto Nagrand D 88.27,42.62
step
	|poi_treasure Telaar Defender Shield
	|poilvl 98
	|poispot Nagrand D 64.71,65.83
	|poiquest 36046
	|poiitem 118253
	_Cross_ the waterfall here |goto Nagrand D/0 64.4,67.5 < 15
	click Telaar Defender Shield##233613 |q 36046 |future |goto Nagrand D 64.71,65.83
step
	|poi_treasure Treasure of Kull'krosh
	|poilvl 98
	|poispot Nagrand D 37.71,70.65
	|poiquest 34760
	|poicurrency GR, GL
	_Go up_ the ramp |goto Nagrand D/0 38.8,72.1 < 20
	_Enter_ the building |goto Nagrand D/0 37.8,70.8 < 10
	_Go towards_ the steps |goto Nagrand D/0 37.7,69.8 < 8
	_Go down_ the steps |goto Nagrand D/0 37.2,70.0 < 8
	_Enter_ the vault |goto Nagrand D/0 37.6,70.1 < 10
	click Treasure of Kull'krosh##230725 |q 34760 |future |goto Nagrand D 37.71,70.65
step
	|poi_treasure Void-Infused Crystal
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 49.97,66.51
	|poiquest 35579
	|poiitem 118264
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Void-Infused Crystal##232590 |q 35579 |future |goto Nagrand D 49.97,66.51
step
	|poi_treasure Warsong Cache
	|poilvl 98
	|poispot Nagrand D 51.72,60.29
	|poiquest 35695
	|poicurrency GR
	click Warsong Cache##233135 |q 35695 |future |goto Nagrand D 51.72,60.29
	|tip Inside the hut on the right.
step
	|poi_treasure Warsong Helm
	|poilvl 98
	|poispot Nagrand D 52.41,44.38
	|poiquest 36073
	|poiitem 118250
	click Warsong Helm##233645 |q 36073 |future |goto Nagrand D 52.41,44.38
	|tip On the left side of the waterfall against the rocks.
step
	|poi_treasure Warsong Lockbox
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 73.04,70.36
	|poiquest 35678
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 10
	click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 76.1,73.0 < 5
	click Warsong Lockbox##233103 |q 35678 |future |goto Nagrand D 73.04,70.36
	|tip You need to fly under the canopy of the watchtower.
step
	|poi_treasure Warsong Spear
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 76.06,69.90
	|poiquest 35682
	|poiitem 118678
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 10
	click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 76.1,73.0 < 5
	click Warsong Spear##233113 |q 35682 |future |goto Nagrand D 76.06,69.90
	|tip Fly right and under the long earthen bridge. There is a skeleton hanting from the rock, you need to land on the rock just below it.
step
	|poi_treasure Warsong Spoils
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 80.65,60.54
	|poiquest 35593
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 20
	_Go over_ the hills |goto Nagrand D/0 76.4,71.3 < 15
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.4 < 15
	click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 75.7,64.5 < 5
	click Warsong Spoils##232599 |q 35593 |future |goto Nagrand D 80.65,60.54
	|tip You need to land under the canopy of the watchtower.
step
	|poi_treasure Warsong Supplies
	|poilvl 98
	|poispot Nagrand D 89.40,65.88
	|poiquest 35976
	|poicurrency GR
	_Go up_ the hidden path |goto Nagrand D/0 88.9,65.8 < 10
	kill Lazy Warsong Scout##83791
	click Warsong Supplies##233521 |q 35976 |future |goto Nagrand D 89.40,65.88
step
	|poi_treasure Watertight Bag
	|poilvl 98
	|poispot Nagrand D 64.76,35.73
	|poiquest 36071
	|poiitem 118235
	click Watertight Bag##233641 |q 36071 |future |goto Nagrand D 64.76,35.73
	|tip It's next to a skeleton under the south side of the bridge.
step
	|poi_treasure Adventurer's Pouch
	|poilvl 98
	|poispot Nagrand D/12 66.0,57.5
	|poiquest 36088
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the Underpale cave |goto Nagrand D/12 93.5,34.2 < 10
	_Go to_ the bottom of the tunnel |goto Nagrand D/12 72.3,46.1 < 10
	_Go up_ the ramp |goto Nagrand D/12 62.0,39.8 < 10
	click Adventurer's Pouch##233623 |q 36088 |future |goto Nagrand D/12 66.0,57.5
	|tip It's the small pouch on the belt of the impaled adventurer.
step
	|poi_treasure Spirit's Gift
	|poilvl 98
	|poispot Nagrand D 35.47,57.25
	|poiquest 36846
	|poicurrency GR
	_Go up_ the path beneath the skull |goto Nagrand D/0 36.7,55.7 < 10
	click Forgotten Brazier##236604
	click Spirit's Gift##236610 |q 36846 |future |goto Nagrand D 35.47,57.25
	|tip After lighting the Baziers, the treasure will appear.
--//Garrison/Misc\\--
step
	|poi_treasure Lady Sena's Other Materials Stash
	|poilvl 90
	|poispot Frostwall/0 74.50,56.20
	|poiquest 34937
	|poicurrency GR
	click Lady Sena's Other Materials Stash##231064 |q 34937 |future |goto Frostwall/0 74.7,56.8
--//Tanaan Jungle\\--
step
	|poi_treasure Axe of Weeping Wolf
	|poilvl 100
	|poispot Tanaan Jungle 15.00,54.40
	|poiquest 38754
	|poiitem 127325
	_Enter_ the building |goto Tanaan Jungle/0 15.4,54.9 < 10
	click Axe of Weeping Wolf##241692 |quest 38754 |goto Tanaan Jungle 15.00,54.40 |future
	|tip The axe is hanging from a dead orc under the steps.
step
	|poi_treasure The Eye of Grannok
	|poilvl 100
	|poispot Tanaan Jungle 15.90,59.30
	|poiquest 38757
	|poiitem 128220
	_Enter_ the building |goto Tanaan Jungle/0 16.4,58.6 < 10
	_Go up_ the first flight of steps |goto Tanaan Jungle 15.90,59.30
	click The Eye of Grannok##241713 |quest 38757 |goto Tanaan Jungle 15.90,59.30 |future
	|tip It's located next to the second flight of steps.
step
	|poi_treasure Spoils of War
	|poilvl 100
	|poispot Tanaan Jungle 17.30,56.90
	|poiquest 38755
	|poicurrency 250 GR
	click Spoils of War##241699 |quest 38755 |goto Tanaan Jungle 17.30,56.90 |future
	|tip The chest is inside the small hut.
step
	|poi_treasure Stolen Captain's Chest
	|poilvl 100
	|poispot Tanaan Jungle 17.00,53.00
	|poiquest 38283
	|poiitem 128219
	|poicurrency GL
	click Stolen Captain's Chest##240543 |quest 38283 |goto Tanaan Jungle 17.00,53.00 |future
	|tip The chest is left of the Felsworn Deserter corpse by the big tree.
step
	|poi_treasure Weathered Axe
	|poilvl 100
	|poispot Tanaan Jungle 15.90,49.80
	|poiquest 38208
	|poiitem 127324
	_Enter_ the cave |goto Tanaan Jungle/0 17.1,50.6 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 16.4,48.8 < 8
	click Weathered Axe##240289 |quest 38208 |goto Tanaan Jungle 15.90,49.80 |future
step
	|poi_treasure Borrowed Enchanted Spyglass
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 25.30,50.20
	|poiquest 38735
	|poiitem 128222
	_Go up_ the path |goto Tanaan Jungle/0 26.4,48.0 < 15
	_Go around_ the tree stump |goto Tanaan Jungle/0 24.8,49.3 < 8
	click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 24.7,49.8 < 5
	click Borrowed Enchanted Spyglass##241664 |quest 38735 |goto Tanaan Jungle 25.30,50.20 |future
	|tip It's at the top of the watchtower.
step
	|poi_treasure Bleeding Hollow Warchest
	|poilvl 100
	|poispot Tanaan Jungle 22.00,47.80
	|poiquest 38678
	|poicurrency 50 GR
	_Go up_ the path |goto Tanaan Jungle/0 26.4,48.0 < 15
	_Go to_ the crossroads |goto Tanaan Jungle/0 23.3,48.7 < 15
	_Enter_ the hut |goto Tanaan Jungle/0 22.1,48.4 < 8
	click Bleeding Hollow Warchest##241560 |quest 38678 |goto Tanaan Jungle 22.00,47.80 |future
step
	|poi_treasure Looted Bleeding Hollow Treasure
	|poilvl 100
	|poispot Tanaan Jungle 26.80,44.10
	|poiquest 38683
	|poiitem 127709
	_Go up_ the path |goto Tanaan Jungle/0 27.6,47.4
	_Follow_ the right path to the fork |goto Tanaan Jungle/0 27.6,44.7
	click Looted Bleeding Hollow Treasure##241565 |quest 38683 |goto Tanaan Jungle 26.80,44.10 |future
	only if havequest(38453) or havequest(38560)
step
	|poi_treasure The Blade of Kra'nak
	|poilvl 100
	|poispot Tanaan Jungle 19.30,40.90
	|poiquest 38320
	|poiitem 127338
	_Enter_ the Ruins of Kra'nak |goto Tanaan Jungle/0 24.9,39.8 < 8
	_Go through_ the left passage |goto Tanaan Jungle/0 22.0,40.5 < 8
	_Go to_ the water's edge |goto Tanaan Jungle/0 19.8,40.8
	click The Blade of Kra'nak##240577 |quest 38320 |goto Tanaan Jungle 19.30,40.90 |future
	|tip It's underwater in the pond.
step
	|poi_treasure Jeweled Arakkoa Effigy
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 31.40,31.10
	|poiquest 38732
	|poiitem 127413
	_Go up_ the hill |goto Tanaan Jungle/0 26.0,33.8 < 8
	_Cross_ the platform |goto Tanaan Jungle/0 28.7,32.7 < 15
	_Jump_ from this point to the first small ledge on the side of the mountain |goto Tanaan Jungle/0 30.2,32.1 < 5
	_Jump again_ to the next point |goto Tanaan Jungle/0 30.6,31.8 < 5
	_Climb_ the small hill |goto Tanaan Jungle/0 30.9,31.3 < 10
	click Jeweled Arakkoa Effigy##241657 |quest 38732 |goto Tanaan Jungle 31.40,31.10 |future
	|tip It's on an altar.
step
	|poi_treasure Partially Mined Apexis Crystal
	|poilvl 100
	|poispot Tanaan Jungle 28.80,34.60
	|poiquest 38863
	|poicurrency 150 AC
	_Enter_ the cave |goto Tanaan Jungle/0 29.2,31.1 < 8
	click Partially Mined Apexis Crystal##242249 |quest 38863 |goto Tanaan Jungle 28.80,34.60 |future
	|tip Climb the rocks to access the treasure on the side of the cave.
step
	|poi_treasure Skull of the Mad Chief
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.70,34.60
	|poiquest 38742
	|poiitem 127669
	_Enter_ the cave |goto Tanaan Jungle/0 32.5,37.3 < 8
	_Go down_ the spiraling path and into the cave |goto Tanaan Jungle/0 32.1,37.3 < 8
	_Continue along_ the path |goto Tanaan Jungle/0 32.5,38.4 < 10
	_Follow_ the path down to the next level |goto Tanaan Jungle/0 32.7,37.3 < 8
	_Go through_ the side passage |goto Tanaan Jungle/0 33.8,36.3 < 10
	click Skull of the Mad Chief##241674 |quest 38742 |goto Tanaan Jungle 34.70,34.60 |future
step
	|poi_treasure Looted Bleeding Hollow Treasure
	|poilvl 100
	|poispot Tanaan Jungle 26.50,63.00
	|poiquest 38741
	|poicurrency 150 AC, GR
	_Follow_ the path towards the tower |goto Tanaan Jungle/0 25.9,60.6 < 20
	click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 26.4,62.0 < 5
	click Looted Bleeding Hollow Treasure##241565 |quest 38741 |goto Tanaan Jungle 26.50,63.00 |future
step
	|poi_treasure Tome of Secrets
	|poilvl 100
	|poispot Tanaan Jungle 32.40,70.40
	|poiquest 38426
	|poiitem 127670
	_Go up_ the steps |goto Tanaan Jungle/0 30.6,71.0 < 8
	_Enter_ the small building |goto Tanaan Jungle/0 32.1,70.8 < 5
	click Tome of Secrets##240855 |quest 38426 |goto Tanaan Jungle 32.40,70.40 |future
step
	|poi_treasure Polished Crystal
	|poilvl 100
	|poispot Tanaan Jungle 30.40,72.00
	|poiquest 38629
	|poiitem 127390
	|poiitem 127389
	_Go up_ the steps |goto Tanaan Jungle/0 30.6,71.0 < 8
	click Polished Crystal##225774 |quest 38629 |goto Tanaan Jungle 30.40,72.00 |future
step
	|poi_treasure Pale Removal Equipment
	|poilvl 100
	|poispot Tanaan Jungle 37.05,46.30
	|poiquest 38640
	|poicurrency 75 GR
	_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 38.7,44.2 < 15
	_Go between_ the crates |goto Tanaan Jungle/0 37.2,46.0 < 10
	click Pale Removal Equipment##241524 |quest 38640 |goto Tanaan Jungle 37.05,46.30 |future
step
	|poi_treasure Strange Sapphire
	|poilvl 100
	|poispot Tanaan Jungle 36.30,43.50
	|poiquest 37956
	|poiitem 127397
	_Go through_ the barricade |goto Tanaan Jungle/0 38.4,39.5 < 15
	_Go up_ the little hill |goto Tanaan Jungle/0 36.6,43.1 < 10
	click Strange Sapphire##240003 |quest 37956 |goto Tanaan Jungle 36.30,43.50 |future
	|tip It's in the far right cage.
step
	|poi_treasure The Commander's Shield
	|poilvl 100
	|poispot Tanaan Jungle 43.20,38.30
	|poiquest 38821
	|poiitem 127348
	_Enter_ the building |goto Tanaan Jungle/0 42.5,37.8 < 5
	click The Commander's Shield##241847 |quest 38821 |goto Tanaan Jungle 43.20,38.30 |future
	|tip It's on the back wall next to the right side torch.
step
	|poi_treasure Dazzling Rod
	|poilvl 100
	|poispot Tanaan Jungle 42.80,35.40
	|poiquest 38822
	|poiitem 127859
	_Enter_ the building |goto Tanaan Jungle/0 43.0,35.8 < 10
	_Take the stairs_ all the way up |goto Tanaan Jungle/0 42.9,35.0 < 5
	click Dazzling Rod##241848 |quest 38822 |goto Tanaan Jungle 42.80,35.40 |future
	|tip It is found at the very top of the tower.
step
	|poi_treasure Sacrificial Blade
	|poilvl 100
	|poispot Tanaan Jungle/0 46.9,42.2
	|poiquest 38776
	|poiitem 127328
	click Sacrificial Blade##241760 |quest 38776 |goto Tanaan Jungle/0 46.9,42.2 |future
	|tip It's on the right-hand side of the fel pool.
step
	|poi_treasure Fel-Drenched Satchel
	|poilvl 100
	|poispot Tanaan Jungle 46.90,44.40
	|poiquest 38773
	|poiitem 128218
	click Fel-Drenched Satchel##241745 |quest 38773 |goto Tanaan Jungle 46.90,44.40 |future
	|tip It's in the back of the partially submerged broken wagon.
step
	|poi_treasure Book of Zyzzix
	|poilvl 100
	|poispot Tanaan Jungle 46.90,36.60
	|poiquest 38771
	|poiitem 127347
	_Go up_ the path |goto Tanaan Jungle/0 46.9,42.2 < 15
	click Book of Zyzzix##241742 |quest 38771 |goto Tanaan Jungle 46.90,36.60 |future
step
	|poi_treasure Overgrown Relic
	|poilvl 100
	|poispot Tanaan Jungle 50.80,64.90
	|poiquest 38731
	|poiitem 127412
	click Overgrown Relic##241656 |quest 38731 |goto Tanaan Jungle 50.80,64.90 |future
	|tip It's on the little island in the thicket.
step
	|poi_treasure Lodged Hunting Spear
	|poilvl 100
	|poispot Tanaan Jungle 54.80,69.30
	|poiquest 38593
	|poiitem 127334
	_Climb up_ onto the rocks |goto Tanaan Jungle/0 55.0,67.1 < 8
	_Cross_ the tree and drop down to the spear |goto Tanaan Jungle/0 55.0,69.1 < 5
	click Lodged Hunting Spear##241434 |quest 38593 |goto Tanaan Jungle 54.80,69.30 |future
step
	|poi_treasure Crystalized Essence of Elements
	|poilvl 100
	|poispot Tanaan Jungle 47.90,70.40
	|poiquest 38705
	|poiitem 127329
	_Go up_ the path and onto the big rock |goto Tanaan Jungle/0 47.8,70.8 < 10
	click Crystalized Essence of Elements##241605 |quest 38705 |goto Tanaan Jungle 47.90,70.40 |future
step
	|poi_treasure Forgotten Sack
	|poilvl 100
	|poispot Tanaan Jungle 57.00,65.00
	|poiquest 38591
	|poiitem 127408
	|poiitem 110609
	_Follow_ the mountain |goto Tanaan Jungle/0 56.6,63.9
	_Go under_ the canopy of vines |goto Tanaan Jungle/0 56.7,65.9 < 15
	click Forgotten Sack##241433 |quest 38591 |goto Tanaan Jungle 57.00,65.00 |future
step
	|poi_treasure Mysterious Corrupted Obelisk
	|poilvl 100
	|poispot Tanaan Jungle 46.20,72.80
	|poiquest 38739
	|poiitem 128320
	_Enter_ the cave |goto Tanaan Jungle/0 47.3,70.6 < 10 |walk
	click Mysterious Corrupted Obelisk##241666 |quest 38739 |goto Tanaan Jungle 46.20,72.80 |future
	only if completedq(38463) or completedq(39394)
step
	|poi_treasure Forgotten Champion's Blade
	|poilvl 100
	|poispot Tanaan Jungle 41.60,73.30
	|poiquest 38657
	|poiitem 127339
	click Forgotten Champion's Blade##241533 |quest 38657 |goto Tanaan Jungle 41.60,73.30 |future
	|tip It's sticking out of the dead tree.
step
	|poi_treasure The Perfect Blossom
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 40.80,75.50
	|poiquest 38639
	|poiitem 127766
	Get the Pollen Protection buff |havebuff 136074 |only if not completedq(38639) --Spell_Nature_ProtectionformNature
	|tip Click Mysterious Fruit around the area until you receive the buff.
	click The Perfect Blossom##241522 |quest 38639 |goto Tanaan Jungle 40.80,75.50 |future
	|tip It's hidden under the giant tree.
step
	|poi_treasure Snake Charmer's Flute
	|poilvl 100
	|poispot Tanaan Jungle 40.60,79.80
	|poiquest 38638
	|poiitem 127333
	click Snake Charmer's Flute##241521 |quest 38638 |goto Tanaan Jungle 40.60,79.80 |future
	|tip It's located next to the skeleton and baskets at the edge of the cliff.
step
	|poi_treasure Stashed Iron Sea Booty #3
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.40,78.30
	|poiquest 38762
	|poicurrency 25 GR, GL
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
	_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
	_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
	click Stashed Iron Sea Booty #3##241716 |quest 38762 |goto Tanaan Jungle 34.40,78.30 |future
step
	|poi_treasure Stashed Iron Sea Booty #2
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 35.00,77.30
	|poiquest 38761
	|poicurrency 25 GR, GL
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
	_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
	_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
	_Jump across_ to the small boulder |goto Tanaan Jungle/0 34.8,77.5 < 5
	click Stashed Iron Sea Booty #2##241715 |quest 38761 |goto Tanaan Jungle 35.00,77.30 |future
step
	|poi_treasure Stashed Iron Sea Booty #1
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 33.90,78.10
	|poiquest 38760
	|poicurrency 25 GR, GL
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
	_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
	_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
	click Stashed Iron Sea Booty #1##241714 |quest 38760 |goto Tanaan Jungle 33.90,78.10 |future
step
	|poi_treasure Ironbeard's Treasure
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 35.90,78.60
	|poiquest 38758
	|poicurrency GL, 100 GR
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the right passage |goto Tanaan Jungle/0 35.4,76.4 < 10
	_Jump into_ the water |goto Tanaan Jungle/0 34.8,77.0 < 12
	_Swim underwater_ to the barrels |goto Tanaan Jungle/0 35.1,78.4 < 12
	_Jump up_ the rocks |goto Tanaan Jungle/0 35.4,78.4 < 5
	_Jump onto_ the broken stairs |goto Tanaan Jungle/0 35.9,78.9 < 5
	click Ironbeard's Treasure##241712 |quest 38758 |goto Tanaan Jungle 35.90,78.60 |future
step
	|poi_treasure Brazier of Awakening
	|poilvl 100
	|poispot Tanaan Jungle 37.70,80.70
	|poiquest 38788
	|poiitem 127770
	_Go down_ the short path |goto Tanaan Jungle/0 38.6,79.6 < 12
	click Brazier of Awakening##241775 |quest 38788 |goto Tanaan Jungle 37.70,80.70 |future
	|tip It's inside the hut.
step
	|poi_treasure Looted Mystical Staff
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 48.50,75.20
	|poiquest 38814
	|poiitem 127337
	_Enter_ the cave |goto Tanaan Jungle/0 44.6,77.6 < 5
	_Follow_ the tunnel |goto Tanaan Jungle/0 46.8,76.3 < 5
	_Go up_ the ramp on the right |goto Tanaan Jungle/0 49.1,78.8 < 8
	_Go down_ the passage and jump onto the rocks |goto Tanaan Jungle/0 51.0,75.7 < 5
	Carefully _walk across_ the first vine |goto Tanaan Jungle/0 50.2,75.7 < 5
	_Walk across_ the second vine |goto Tanaan Jungle/0 49.5,74.9 < 5
	_Jump over_ the gap to the platform |goto Tanaan Jungle/0 49.1,75.2 < 5
	click Looted Mystical Staff##241841 |quest 38814 |goto Tanaan Jungle 48.50,75.20 |future
step
	|poi_treasure Bleeding Hollow Mushroom Stash
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 49.90,76.80
	|poiquest 38809
	|poiitem 128223
	_Enter_ the cavern |goto Tanaan Jungle/0 44.6,77.5 < 8
	_Follow_ the tunnel |goto Tanaan Jungle/0 46.8,76.3 < 8
	_Go up_ the vine |goto Tanaan Jungle/0 49.3,77.1 < 5
	_Jump down_ to the platform with the barrel |goto Tanaan Jungle/0 50.0,77.2 < 5
	click Bleeding Hollow Mushroom Stash##241835 |quest 38809 |goto Tanaan Jungle 49.90,76.80 |future
step
	|poi_treasure Crystallized Fel Spike
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 62.10,70.70
	|poiquest 38602
	|poiitem 128217
	_Follow_ the shore |goto Tanaan Jungle/0 59.9,74.0 < 8
	_Go to_ the fel pool |goto Tanaan Jungle/0 61.9,72.2 < 8
	_Stand on_ this rock |goto Tanaan Jungle/0 62.0,70.8 < 5
	click Crystallized Fel Spike##241450 |quest 38602 |goto Tanaan Jungle 62.10,70.70 |future
	|tip This treasure is surrounded by level 100 elites.
step
	|poi_treasure Blackfang Island Cache
	|poilvl 100
	|poispot Tanaan Jungle 61.20,75.80
	|poiquest 38601
	|poicurrency GR
	click Blackfang Island Cache##241449 |quest 38601 |goto Tanaan Jungle 61.20,75.80 |future
step
	|poi_treasure Scout's Belongings
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 49.90,79.60
	|poiquest 38703
	|poiitem 127354
	_Go up_ the hill |goto Tanaan Jungle/0 51.5,79.4 < 8
	_Go up_ the hidden path |goto Tanaan Jungle/0 50.8,81.3 < 8
	click Scout's Belongings##241601 |quest 38703 |goto Tanaan Jungle 49.90,79.60 |future
step
	|poi_treasure Discarded Helm
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 49.90,81.20
	|poiquest 38702
	|poiitem 127312
	_Enter_ the cave |goto Tanaan Jungle/0 51.2,79.6 < 8
	click Discarded Helm##241600 |quest 38702 |goto Tanaan Jungle 49.90,81.20 |future
step
	|poi_treasure Strange Fruit
	|poilvl 100
	|poispot Tanaan Jungle 64.6,42.1
	|poiquest 38701
	|poiitem 127396
	click Loose Soil##241606 |goto Tanaan Jungle 64.70,42.80 < 8
	click Strange Fruit##241599 |quest 38701 |goto Tanaan Jungle 64.6,42.1 |future
	|tip Clicking the loose soil will cause a vine to throw you up into the tree. The fruit is on the branch you land on.
step
	|poi_treasure Rune Etched Femur
	|poilvl 100
	|poispot Tanaan Jungle 51.70,24.30
	|poiquest 38686
	|poiitem 127341
	click Rune Etched Femur##241566 |quest 38686 |goto Tanaan Jungle 51.70,24.30 |future
step
	|poi_treasure Jewel of the Fallen Star
	|poilvl 100
	|poispot Tanaan Jungle 58.50,25.20
	|poiquest 38679
	|poiitem 115808
	|poiitem 115803
	|poiitem 115806
	|poiitem 115807
	|poiitem 115804
	|poiitem 115805
	click Jewel of the Fallen Star##241561 |quest 38679 |goto Tanaan Jungle 58.50,25.20 |future
step
	|poi_treasure Censer of Torment
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 62.60,20.50
	|poiquest 38682
	|poiitem 127401
	_Go up_ the path |goto Tanaan Jungle/0 61.3,22.8 < 12
	click Censer of Torment##241563 |quest 38682 |goto Tanaan Jungle 62.60,20.50 |future
	|tip It's on an altar surrounded by torches.
step
	|poi_treasure Fel-Tainted Apexis Formation
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 51.60,32.70
	|poiquest 39075
	|poicurrency 500 AC
	_Follow_ the fel river |goto Tanaan Jungle/0 53.2,28.8 < 12
	_Scale_ the rocks on the left side of the river |goto Tanaan Jungle/0 52.2,30.4 < 10
	_Jump down_ carefully at the first waterfall towards the end |goto Tanaan Jungle/0 51.6,31.2 < 5
	click Fel-Tainted Apexis Formation##242649 |quest 39075 |goto Tanaan Jungle 51.60,32.70 |future
step
	|poi_treasure Jewel of Hellfire
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 28.70,23.30
	|poiquest 38334
	|poiitem 127668
	click Jewel of Hellfire##240580 |quest 38334 |goto Tanaan Jungle 28.70,23.30 |future
	|tip This treasure is on the shore. You will need to swim from Ironhold Harbor to reach it.
step
	|poi_treasure Forgotten Shard of the Cipher
	|poilvl 100
	|poispot Tanaan Jungle 63.40,28.10
	|poiquest 38740
	|poiitem 128309
	click Forgotten Shard of the Cipher##241671 |quest 38740 |goto Tanaan Jungle 63.40,28.10 |future
	only if havequest(39394) or havequest(38463) or completedq(39394) or completedq(38463)
step
	|poi_treasure Dead Man's Chest
	|poilvl 100
	|poispot Tanaan Jungle 54.90,90.70
	|poiquest 39470
	|poicurrency 100 GR
	_Go through_ the narrow pass |goto Tanaan Jungle/0 54.6,83.2 < 8
	_Drop down_ over the rocks |goto Tanaan Jungle/0 54.6,88.3 < 15
	click Dead Man's Chest##243693 |quest 39470 |goto Tanaan Jungle 54.90,90.70 |future
	|tip If the chest isn't there try logging out and back in. It's found on the far side of the tree next to a bush and skeleton.
step
	|poi_treasure Bejeweled Egg
	|poilvl 100
	|poispot Tanaan Jungle 65.90,85.00
	|poiquest 39469
	|poiitem 128386
	_Go through_ the narrow pass |goto Tanaan Jungle/0 54.6,83.2 < 8
	_Drop down_ over the rocks |goto Tanaan Jungle/0 54.6,88.3 < 15
	_Follow_ the shore |goto Tanaan Jungle/0 62.2,87.9
	click Bejeweled Egg##243690 |quest 39469 |goto Tanaan Jungle 65.90,85.00 |future
step
	|poi_treasure Forgotten Iron Horde Supplies
	|poilvl 100
	|poispot Tanaan Jungle 69.70,56.00
	|poiquest 38704
	|poicurrency 25 GR
	_Go through_ the gates |goto Tanaan Jungle/0 69.3,53.4 < 8
	_Enter_ the hut |goto Tanaan Jungle/0 69.9,55.9 < 5
	click Forgotten Iron Horde Supplies##241602 |quest 38704 |goto Tanaan Jungle 69.70,56.00 |future
step
	|poi_treasure Stashed Bleeding Hollow Loot
	|poilvl 100
	|poispot Tanaan Jungle 73.60,43.20
	|poiquest 38779
	|poiitem 27729
	|poicurrency GL
	_Cross_ the Bleeding Hollow grounds |goto Tanaan Jungle/0 70.8,53.6
	_Climb up_ the rocks |goto Tanaan Jungle/0 73.4,43.8 < 10
	click Stashed Bleeding Hollow Loot##241764 |goto Tanaan Jungle 73.60,43.20 |quest 38779 |future
]])
