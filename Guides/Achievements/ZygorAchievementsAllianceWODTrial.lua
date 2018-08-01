local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Draenor\\Jungle Treasure Hunter/Master",{
condition_end=function() return achieved(10262) end,
achieveid={10261, 10262,10262},
description="This guide will walk you through discovering all of the treasures in Tanaan Jungle.",
},[[
step
label "tanaan_treasure_start"
_Follow_ the path |goto Tanaan Jungle/0 55.0,64.3 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 56.6,66.5 < 20 |only if walking
click Forgotten Sack##241433 |quest 38591 |goto Tanaan Jungle 57.0,65.1 |future
|tip It looks like a tan sack sitting on the ground in the middle of a bunch of bones.
step
_Follow_ the path |goto Tanaan Jungle/0 54.8,64.6 < 20 |only if walking
_Run up_ the path behind the big rock |goto Tanaan Jungle/0 54.4,70.3 < 20 |only if walking
Run on the _green log_ |goto Tanaan Jungle/0 55.3,70.0 < 20 |only if walking
_Carefully jump down_ to the green vine _from this spot_ |goto Tanaan Jungle/0 55.1,69.6 < 10 |only if walking
click Lodged Hunting Spear##241434 |quest 38593 |goto Tanaan Jungle/0 54.8,69.3 |future
|tip It looks like a brown wooden pole sticking out of this huge green thorny vine.
step
_Follow_ the path |goto Tanaan Jungle/0 54.0,70.8 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 54.9,77.8 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 52.4,78.9 < 20 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 51.2,79.6 < 20 |walk
click Discarded Helm##241600 |quest 38702 |goto Tanaan Jungle/0 49.9,81.2 |future
|tip It looks like a small horned helmet on a skeleton sitting on the ground in the back of the cave.
|tip You will likely need to get a group to help you get to this treasure.
step
_Leave_ the cave |goto Tanaan Jungle/0 51.2,79.6 < 20 |walk
_Run up_ the path |goto Tanaan Jungle/0 51.5,80.5 < 20 |only if walking
_Follow_ the path on the ledge |goto Tanaan Jungle/0 51.5,81.7 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 50.3,80.8 < 20 |only if walking
click Scout's Belongings##241601 |quest 38703 |goto Tanaan Jungle/0 50.0,79.6 |future
|tip It looks like a small brown backpack sitting on a wooden crate.
|tip You will likely need to get a group to help you get to this treasure.
step
_Run on_ the dirt path |goto Tanaan Jungle/0 55.5,78.6 < 30 |only if walking
click Blackfang Island Cache##241449 |quest 38601 |goto Tanaan Jungle/0 61.2,75.8 |future
|tip It looks like a big leather covered object sitting on the ground on this small island, between a bunch of trees.
|tip You will likely need to get a group to help you get to this treasure.
step
_Jump onto_ the flat stone |goto Tanaan Jungle/0 62.1,71.8 < 20 |only if walking
_Jump on_ the stones to this spot |goto Tanaan Jungle/0 62.0,70.8 < 20 |only if walking
click Crystallized Fel Spike##241450 |quest 38602 |goto Tanaan Jungle/0 62.0,70.8 |future
|tip It's a big spikey green crystal sticking out of the side of the wall. Carefully walk to the edge of the stone in order to reach it.
|tip You will likely need to get a group to help you get to this treasure.
step
_Swim out_ to the small island |goto Tanaan Jungle/0 61.2,75.8 < 40 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.3,79.0 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 54.3,85.0 < 30 |only if walking
click Dead Man's Chest##243693 |quest 39470 |goto Tanaan Jungle/0 54.9,90.7 |future
|tip It looks like a brown treasure chest sitting on the ground next to some trees, halfway hidden in a leafy bush.
|tip You will likely need to get a group to help you get to this treasure.
step
_Follow_ the path |goto Tanaan Jungle/0 59.2,90.8 < 40 |only if walking
_Run up_ the rock here |goto Tanaan Jungle/0 65.9,84.8 < 10 |only if walking
click Bejeweled Egg##243690 |quest 39469 |goto Tanaan Jungle/0 65.9,85.0 |future
|tip It looks like a diamond encrusted egg sitting in a yellow straw bird nest up on this rocky cliffside.
|tip You will likely need to get a group to help you get to this treasure.
step
_Enter_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 20 |walk
|tip If the fire is blocking your way into the cave, you must wait and complete the Garrison Campaign quest "The Warlock", which only has a chance to be available each week. Use "The Warlock" Garrison Campaign guide to accomplish this.
click Mysterious Corrupted Obelisk##241666 |quest 38739 |goto Tanaan Jungle 46.20,72.80 |future
|tip It looks like a stone pillar, overgrown with vines, with a glowing orb of light at the top of it, near the wall in the back of the cave.
step
_Leave_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 20 |walk
_Run up_ the path |goto Tanaan Jungle/0 47.7,70.6 < 20 |only if walking
_Walk onto_ the flat rock |goto Tanaan Jungle/0 48.5,70.5 < 30 |only if walking
click Crystalized Essence of the Elements##241605 |quest 38705 |goto Tanaan Jungle/0 47.9,70.4 |future
|tip It looks like a small cluster of big blue crystals on the ground on top of this huge rock.
step
click Overgrown Relic##241656 |quest 38731 |goto Tanaan Jungle/0 50.8,65.0 |future
|tip It looks like a stone pillar, overgrown with vines, with a glowing orb of light at the top of it, in the middle of a bunch of trees on this small island.
step
_Follow_ the path |goto Tanaan Jungle/0 48.2,66.5 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 46.4,66.2 < 30 |only if walking
click Forgotten Champion's Blade##241533 |quest 38657 |goto Tanaan Jungle/0 41.6,73.3 |future
|tip It looks like a sword stuck in the ground in the swamp water next to a big tree branch.
step
click The Perfect Blossom##241522 |quest 38639 |goto Tanaan Jungle/0 40.8,75.6 |future
|tip It looks like a plant with two white petals, in the hollow beneath a huge tree, surrounded by purple fog on the ground. Try to stand on the perimeter of the fog, or else you won't be able to loot it.
step
_Follow_ the path |goto Tanaan Jungle/0 41.5,75.6 < 30 |only if walking
click Snake Charmer's Flute##241521 |quest 38638 |goto Tanaan Jungle/0 40.6,79.8 |future
|tip It looks like a small wooden stick laying on the ground next to a skeleton, on a rock hill next to a waterfall.
step
_Follow_ the path |goto Tanaan Jungle/0 42.4,77.8 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 44.6,77.5 < 30 |walk
_Go through_ the tunnel opening |goto Tanaan Jungle/0 46.7,76.3 < 20 |walk
_Run up_ the path |goto Tanaan Jungle/0 48.0,77.3 < 20 |only if walking
_Follow_ the path around |goto Tanaan Jungle/0 49.4,79.0 < 20 |only if walking
_Run up_ here |goto Tanaan Jungle/0 51.1,75.9 < 20 |only if walking
_Carefully_ walk onto the vine here |goto Tanaan Jungle/0 50.7,76.3 < 10 |only if walking
_Carefully_ drop down onto the vine here |goto Tanaan Jungle/0 50.1,75.7 < 10 |only if walking
_Jump down_ to the lower level carefully here |goto Tanaan Jungle/0 49.3,74.9 < 10 |only if walking
_Jump up_ here |goto Tanaan Jungle/0 48.9,75.3 < 20 |only if walking
click Looted Mystical Staff##241841 |quest 38814 |goto Tanaan Jungle/0 48.6,75.2 |future
|tip It looks like a huge purple electrified shaman staff leaning up against the wall.
step
_Jump on_ the rocks here |goto Tanaan Jungle/0 49.3,76.7 < 20 |only if walking
_Run up_ the green vine |goto Tanaan Jungle/0 49.4,77.1 < 10 |only if walking
_Jump up_ the rocks |goto Tanaan Jungle/0 49.8,77.5 < 10 |only if walking
_Carefully_ jump down to the _lower platform_ |goto Tanaan Jungle/0 50.0,77.2 < 10 |only if walking
click Bleeding Hollow Mushroom Stash##241835 |quest 38809 |goto Tanaan Jungle/0 50.0,76.8 |future
|tip It looks like a wooden barrel filled with bright green mushrooms, up on the stone pillar formation.
step
_Go through_ the tunnel opening |goto Tanaan Jungle/0 46.7,76.3 < 20 |walk
_Leave_ the cave |goto Tanaan Jungle/0 44.6,77.5 < 30 |walk
_Follow_ the path down |goto Tanaan Jungle/0 38.5,79.8 < 30 |only if walking
click Brazier of Awakening##241775 |quest 38788 |goto Tanaan Jungle/0 37.7,80.8 |future
|tip It's a small bowl with purple fire in it, inside this smaller hut building on the beach.
step
_Follow_ the path up |goto Tanaan Jungle/0 38.5,80.1 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 35.3,76.3 < 30 |walk
_Jump over_ to the rock here |goto Tanaan Jungle/0 35.0,77.0 < 10 |walk
click Stashed Iron Sea Booty##241715 |quest 38761 |goto Tanaan Jungle/0 35.0,77.3 |future
|tip It looks like a wooden chest sitting up on a rock platform in the water inside the cave.
step
_Jump over_ to the big log here |goto Tanaan Jungle/0 34.9,77.4 < 10 |only if walking
click Stashed Iron Sea Booty##241716 |quest 38762 |goto Tanaan Jungle/0 34.4,78.3 |future
|tip It looks like a small wooden chest sitting up on a rock platform in the water inside the cave, behind a rock.
step
_Jump over_ to the rock platform here |goto Tanaan Jungle/0 34.3,77.8 < 10 |only if walking
_Jump up and over_ to the rock path here |goto Tanaan Jungle/0 33.9,77.7 < 10 |only if walking
click Stashed Iron Sea Booty##241714 |quest 38760 |goto Tanaan Jungle/0 33.9,78.1 |future
|tip It looks like a small wooden chest, sitting up on a rock platform on the wall inside the cave.
step
_Jump down_ and _swim underwater_ through here |goto Tanaan Jungle/0 35.1,78.3 < 20 |only if walking
_Jump onto_ the rock here |goto Tanaan Jungle/0 35.4,78.3 < 10 |only if walking
_Jump over_ to the rock platform |goto Tanaan Jungle/0 35.7,78.5 < 10 |only if walking
_Jump up onto_ the splintered board |goto Tanaan Jungle/0 35.7,78.8 < 10 |only if walking
click Ironbeard's Treasure##241712 |quest 38758 |goto Tanaan Jungle/0 35.9,78.6 |future
|tip It looks like a big metal chest sitting up on this rock platform inside the cave.
step
_Follow_ the path up |goto Tanaan Jungle/0 31.0,63.3 < 30 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 28.8,66.8 < 30 |only if walking
_Continue_ up the stairs |goto Tanaan Jungle/0 29.2,68.4 < 30 |only if walking
_Follow_ the stairs up |goto Tanaan Jungle/0 30.3,70.3 < 30 |only if walking
click Polished Crystal##225774 |quest 38629 |goto Tanaan Jungle/0 30.4,72.0 |future
|tip It looks like a small dark blue crystal sitting in an opened chest on a wooden table.
step
_Enter_ the building |goto Tanaan Jungle/0 32.0,70.8 < 20 |only if walking
click Tome of Secrets##240855 |quest 38426 |goto Tanaan Jungle/0 32.4,70.4 |future
|tip It looks like a big open book laying on a pedastal inside this small building.
step
_Run down_ the stairs |goto Tanaan Jungle/0 30.7,71.2 < 30 |only if walking
_Continue_ down the stairs |goto Tanaan Jungle/0 29.5,68.7 < 30 |only if walking
_Follow_ the stairs down |goto Tanaan Jungle/0 28.7,67.3 < 30 |only if walking
_Follow_ the road |goto Tanaan Jungle/0 29.6,61.6 < 30 |only if walking
_Run on_ the dirt path |goto Tanaan Jungle/0 28.3,60.8 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 25.9,61.4 < 20 |only if walking
cick Grappling Hook and Rope##230950 |goto Tanaan Jungle/0 26.4,62.0 < 10
|tip It looks like a coiled up rope on the ground.
click Looted Bleeding Hollow Treasure##241565 |quest 38741 |goto Tanaan Jungle/0 26.5,62.9 |future
|tip It looks like a metal and wooden treasure chest, sitting on the ground at the top of this tower.
step
_Follow_ the road |goto Tanaan Jungle/0 24.2,59.8 < 30 |only if walking
_Enter_ the tower |goto Tanaan Jungle/0 16.4,58.6 < 20 |walk
click The Eye of Grannok##241713 |quest 38757 |goto Tanaan Jungle/0 16.0,59.4 |future
|tip It looks like a white orb sitting in a spiked pedastal on the middle level of this tower.
step
_Leave_ the tower |goto Tanaan Jungle/0 16.4,58.5 < 20 |walk
click Spoils of War##241699 |quest 38755 |goto Tanaan Jungle/0 17.4,56.9 |future
|tip It looks like a big wooden chest sitting on the ground inside this small hut.
step
_Enter_ the tower |goto Tanaan Jungle/0 15.3,54.7 < 20 |walk
click Axe of the Weeping Wolf##241692 |quest 38754 |goto Tanaan Jungle/0 15.0,54.4 |future
|tip It looks like a big axe, hanging in the hand of a dead orc hanging from a chain, under the stairs on the bottom level of this tower.
step
_Leave_ the tower |goto Tanaan Jungle/0 15.4,55.0 < 20 |walk
click Stolen Captain's Chest##240543 |quest 38283 |goto Tanaan Jungle/0 17.0,52.9 |future
|tip It looks like a small wooden chest sitting on the ground next to a dead orc at the base of this big tree.
step
_Enter_ the cave |goto Tanaan Jungle/0 17.0,50.3 < 20 |walk
_Follow_ the path left | goto Tanaan Jungle/0 16.4,48.7 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 15.9,49.2 < 20 |only if walking
click Weathered Axe##240289 |quest 38208 |goto Tanaan Jungle/0 15.9,49.7 |future
|tip It looks like an axe lodged into the head of a tombstone, behind a dirt grave in this cave.
step
_Leave_ the cave |goto Tanaan Jungle/0 17.0,50.3 < 30 |walk
_Run up_ the path |goto Tanaan Jungle/0 19.4,52.4 < 30 |only if walking
_Continue_ following the path up |goto Tanaan Jungle/0 21.3,49.5 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 22.0,48.1 < 20 |walk
click Bleeding Hollow Warchest##241560 |quest 38678 |goto Tanaan Jungle/0 22.0,47.8 |future
|tip It looks like a large wooden chest inside this small building.
step
_Follow_ the path |goto Tanaan Jungle/0 23.5,49.7 < 30 |only if walking
click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 24.7,49.8 < 10 |only if walking
|tip It looks like a coiled up rope on the ground. |only if walking
click Borrowed Enchanted Spyglass##241664 |quest 38735 |goto Tanaan Jungle/0 25.3,50.2 |future
|tip It looks like a big metal telescope mounted on a wooden tripod at the top of this tower.
step
_Follow_ the path |goto Tanaan Jungle/0 24.4,48.5 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 27.6,47.2 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 27.8,44.2 < 30 |only if walking
_Follow_ the dirt road |goto Tanaan Jungle/0 30.4,43.0 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 30.7,39.7 < 30 |only if walking
_Go down_ the spiral path into the cave |goto Tanaan Jungle/0 32.6,37.2 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 32.3,37.0 < 20 |only if walking
_Continue_ through the tunnel |goto Tanaan Jungle/0 32.1,38.6 < 30 |only if walking
_Jump down_ here |goto Tanaan Jungle/0 32.6,37.4 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 33.0,36.8 < 20 |only if walking
click Skull of the Mad Chief##241674 |quest 38742 |goto Tanaan Jungle 34.70,34.60 |future
|tip It looks like a big skull with a glowing eye stuck in the wall in the very bottom room of this cave.
step
_Follow_ the path up and out of the cave |goto Tanaan Jungle/0 32.3,37.9 < 20 |only if walking
_Run up_ the green log |goto Tanaan Jungle/0 31.7,39.4 < 20 |only if walking
_Follow_ the dirt path up |goto Tanaan Jungle/0 29.1,40.2 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 27.4,40.8 < 30 |only if walking
_Keep following_ the path |goto Tanaan Jungle/0 24.2,39.7 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 21.9,40.6 < 30 |only if walking
click The Blade of Kra'nak##240577 |quest 38320 |goto Tanaan Jungle/0 19.3,40.9 |future
|tip it looks like a large dagger in the hand of a stone statue underwater.
step
_Follow_ the path up |goto Tanaan Jungle/0 20.1,40.9 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 22.0,40.5 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 23.8,36.9 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 25.0,33.8 < 30 |only if walking
_Jump across_ to the ledge while mounted |goto Tanaan Jungle/0 30.2,32.1 < 20 |only if walking
_Jump across_ again while mounted |goto Tanaan Jungle/0 30.6,31.8 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 30.9,31.3 < 30 |only if walking
click Jeweled Arakkoa Effigy##241657 |quest 38732 |goto Tanaan Jungle/0 31.4,31.1 |future
|tip It looks like a stone bird statue sittion on a small round table up on this cliff ledge.
step
_Enter_ the cave |goto Tanaan Jungle/0 29.2,31.3 < 20 |walk
_Jump up_ on the rocks |goto Tanaan Jungle/0 28.9,34.4 < 20 |only if walking
click Partially Mined Apexis Crystal##242249 |quest 38863 |goto Tanaan Jungle/0 28.9,34.6 |future
|tip It looks like a big dark yellow crystal sticking out of the wall in the back of this cave.
step
_Leave_ the cave |goto Tanaan Jungle/0 29.2,31.3 < 30 |walk
_Carefully_ jump down the cliff |goto Tanaan Jungle/0 28.6,27.1 < 30 |only if walking
click Jewel of Hellfire##240580 |quest 38334 |goto Tanaan Jungle/0 28.7,23.3 |future
|tip It looks like a red crystal lodged into the skull of this skeleton laying on the ground in the middle of a bunch of trees on the beach.
step
_Follow_ the path |goto Tanaan Jungle/0 41.3,43.3 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 38.0,44.7 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 37.4,44.4 < 20 |only if walking
click Pale Removal Equipment##241524 |quest 38640 |goto Tanaan Jungle/0 37.1,46.2 |future
|tip It looks like a wooden chest sitting on the ground next to the wall and some dead orcs.
step
_Follow_ the road |goto Tanaan Jungle/0 41.7,42.6 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 38.6,39.4 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 38.8,42.1 < 30 |only if walking
_Run up_ the ladder |goto Tanaan Jungle/0 37.8,43.5 < 20 |only if walking
click Strange Sapphire##240003 |quest 37956 |goto Tanaan Jungle/0 36.4,43.4 |future
|tip It looks like a big floating blue heart shaped gem inside a cage up on a hill.
step
_Follow_ the path |goto Tanaan Jungle/0 38.5,39.4 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 40.9,37.7 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 42.5,37.8 < 20 |walk
click The Commander's Shield##241847 |quest 38821 |goto Tanaan Jungle/0 43.2,38.3 |future
|tip It looks like a round metal shield leaning on the wall inside this building.
step
_Leave_ the building |goto Tanaan Jungle/0 42.5,37.8 < 20 |walk
_Enter_ the tower |goto Tanaan Jungle/0 43.0,35.8 < 20 |walk
click Dazzling Rod##241848 |quest 38822 |goto Tanaan Jungle/0 42.9,35.4 |future
|tip It looks like a staff with a purple glowing crystal at the top of it, leaning on a pillar at the top of this tower.
step
_Follow_ the path |goto Tanaan Jungle/0 43.6,37.7 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 44.1,41.9 < 30 |only if walking
click Fel-Drenched Satchel##241745 |quest 38773 |goto Tanaan Jungle/0 46.9,44.4 |future
|tip It looks like a tan leather box sitting in the huge half-submerged wooden wagon in a stream of green liquid.
step
_Follow_ the path |goto Tanaan Jungle/0 47.9,43.9 < 30 |only if walking
click Sacrificial Blade##241760 |quest 38776 |goto Tanaan Jungle/0 46.8,42.2 |future
|tip It looks like a dagger stabbed into a stone next to a pool of green liquid.
step
_Follow_ the path up |goto Tanaan Jungle/0 47.3,42.8 < 30 |only if walking
_Follow_ the path left |goto Tanaan Jungle/0 47.5,37.2 < 30 |only if walking
click Book of Zyzzix##241742 |quest 38771 |goto Tanaan Jungle/0 46.9,36.7 |future
|tip It looks like a big open book, floating above a small table.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Turn left_ and _follow_ the green liquid river |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
_Jump across_ onto the rocks here |goto Tanaan Jungle/0 53.5,27.2 < 20 |only if walking
_Jump across_ the green river from here |goto Tanaan Jungle/0 52.5,28.9 < 10 |only if walking
_Jump_ to the other big rock here |goto Tanaan Jungle/0 52.4,30.0 < 20 |only if walking
_Jump down_ carefully to the flat ledge below here |goto Tanaan Jungle/0 51.7,31.1 < 20 |only if walking
click Fel-Tainted Apexis Formation##242649 |quest 39075 |goto Tanaan Jungle/0 51.6,32.6 |future
|tip It looks like a dark colored crystal growing out of the side of the edge of this ledge.
|tip You may need a group to help you get to this spot.
step
_Run up_ the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
click Rune Etched Femur##241566 |quest 38686 |goto Tanaan Jungle/0 51.7,24.3 |future
|tip It looks like a bone sticking out of a small pool of green liquid.
|tip You may need a group to help you get to this spot.
step
_Follow_ the path |goto Tanaan Jungle/0 56.2,25.5 < 30 |only if walking
click Jewel of the Fallen Star##241561 |quest 38679 |goto Tanaan Jungle/0 58.5,25.3 |future
|tip It looks like a huge blue and green crystal sitting on the ground.
|tip You may need a group to help you get to this spot.
step
_Follow_ the path |goto Tanaan Jungle/0 59.1,25.1 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 60.3,23.3 < 30 |only if walking
_Run up_ here |goto Tanaan Jungle/0 63.2,20.9 < 20 |only if walking
click Censer of Torment##241563 |quest 38682 |goto Tanaan Jungle/0 62.6,20.5 |future
|tip It's a large skull sitting on a stone blod-stained table.
|tip You may need a group to help you get to this spot.
step
_Follow_ the path down |goto Tanaan Jungle/0 62.2,22.7 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 59.3,24.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.5,25.5 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 55.5,27.2 < 30 |only if walking
_Jump down_ here |goto Tanaan Jungle/0 55.5,28.4 < 20 |only if walking
_Carefully_ jump down here |goto Tanaan Jungle/0 55.5,31.0 < 20 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 58.5,31.3 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 59.2,35.6 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 62.4,32.9 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 62.2,30.3 < 30 |only if walking
|tip If the green fire is blocking your way into the cave, you must wait and complete the Garrison Campaign quest "The Warlock", which only has a chance to be available each week. Use "The Warlock" Garrison Campaign guide to accomplish this.
click Forgotten Shard of the Cipher##241671 |quest 38740 |goto Tanaan Jungle 63.3,28.1 |future
|tip It looks like a small white object on the ground next to a huge vertical bone.
step
_Follow_ the path |goto Tanaan Jungle/0 62.2,30.3 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 62.9,38.1 < 30 |only if walking
click Loose Soil##241606
|tip It looks like a pile of dirt on the ground. You will get thrown up into a nearby tree.
click Strange Fruit##241599 |quest 38701 |goto Tanaan Jungle/0 64.6,42.1 |future
|tip It looks like a huge roundish yellow fruit sitting at the end of a branch. Walk carefully on the branch to get to it.
step
_Follow_ the path |goto Tanaan Jungle/0 59.4,42.0 < 30 |only if walking
_Run on_ the road |goto Tanaan Jungle/0 58.5,52.6 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 69.5,53.4 < 30 |only if walking
click Forgotten Iron Horde Supplies##241602 |quest 38704 |goto Tanaan Jungle/0 69.8,56.0 |future
|tip It looks like a wooden crate sitting on a table inside this small hut.
step
_Follow_ the path |goto Tanaan Jungle/0 71.5,49.3 < 30 |only if walking
_Run up_ the rocks here |goto Tanaan Jungle/0 73.0,44.1 < 20 |only if walking
click Stashed Bleeding Hollow Loot##241764 |goto Tanaan Jungle/0 73.6,43.2 |quest 38779 |future
|tip It looks like a wooden chest sitting on the ground next to the building at the top of these rocks.
step
You still need more treasures: |only if not achieved(10262)
Click to restart this guide |confirm |next "tanaan_treasure_start" |only if not achieved(10262)
|tip This will help you go back and get any treasures you missed. |only if not achieved(10262)
Congratulations! You earned the: |only if achieved(10262)
_Jungle Treasure Hunter_ Achievement |only if achieved(10262)
_Jungle Treasure Master_ Achievement |only if achieved(10262)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Draenor\\Mean and Green",{
achieveid={9654},
description="Reach 10 stacks of Mutagen in the Everbloom Wilds.",
},[[
step
_Fly_ to Everbloom Outlook |goto Gorgrond/0 68.8,28.8 < 5 |only if walking
_Head South_ through the forest |goto Gorgrond/0 70.6,33.5 < 20 |only if walking
_Continue South_ through the marsh |goto Gorgrond/0 71.7,38.2 < 20 |only if walking
_Gain_ the Mutagen debuff from killing mobs in the Everbloom Wilds
_Stand_ in the green pool that will appear under their corpse to gain 1 stack of Mutagen
|tip Leaving Everbloom Wilds will remove all stacks.
kill Twisted Guardian##88279+, Enthralled Mutant##88394+
_Gain_ 10 stacks of Mutagen
|achieve 9654 |goto Gorgrond/0 71.6,41.8
step
Congratulations, you have _earned_ the Mean and Green Achievement!
]])
