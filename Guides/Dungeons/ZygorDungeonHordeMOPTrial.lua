local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DungeonHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Classic Dungeons\\Deadmines",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Deadmines dungeon. This dungeon is located in Westfall on the continent of Eastern Kingdoms and is home to the Defias Brotherhood, led by Edwin VanCleef. This dungeon ranges from level 15 to 16.",
mapid=291,
achieveid={628},
condition_suggested=function() return level>=15 and level<=60 end,
keywords={"Westfall, Defias, DM"},
},[[
step
label "start"
Press _I_ and queue for Deadmines or enter the dungeon with your group |goto The Deadmines/1 26.5,13.4 |c
step
talk Kagtha##46889
accept Only the Beginning##27842 |goto The Deadmines/1 29.3,27.2
only if not completedq(27842)
step
talk Slinky Sharpshiv##46906
accept Traitors!!!##27844 |goto 28.84,27.33
only if not completedq(27844)
step
talk Miss Mayhem##46902
accept Not Quite There##27847 |goto 29.63,24.72
only if not completedq(27847)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	27.8,24.6	24.8,35.0	29.6,43.3
path	28.7,53.3	34.0,59.8
Follow the path |goto The Deadmines/1 34.0,59.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Glubtok##47162 |n |goto 37.7,61.2
kill 1 Glubtok##47162 |q Only the Beginning##27842/1 |goto 37.7,61.2 |only if havequest(27842)
_Phase 1:_
|tip Glubtok will occasionally use Fists of Flame and Fists of Frost during this phase, avoid standing near the tank
|tip Tank: Glubtok will periodically Blink to a random location
|tip Blink will reset threat, pick up Glubtok quickly. |only if heroic_dung()
_Phase 2:_
|tip At 50% health, Glubtok will cast beams of fire and frost to his sides. Stand in front or behind him
|tip Glubtok will throw Fire Blossoms and Frost Blossoms at random locations, avoid standing in the impact area
|tip Blossoms summon weak elementals. Kill these quickly |only if heroic_dung()
|tip Glubtok will cast a wall of fire that rotates around the room, avoid contact |only if heroic_dung()
Defeat Glubtok |scenariogoal 24941 |goto 37.7,61.2
step
Click the Quest Completion Box that pops up.
turnin Only the Beginning##27842
accept Good Intentions...Poor Execution##27848
only if not completedq(27848)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	41.7,60.0	47.4,61.3	46.5,67.7
path	43.9,72.7	43.8,79.7
Follow the path |goto The Deadmines/1 43.8,79.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Heavy Door##400
Open the door and walk inside |goto 43.7,81.6 < 5
confirm
step
kill 1 Helix Gearbreaker##47296 |n |goto 49.0,87.4
kill 1 Helix Gearbreaker##47296 |q Traitors!!!##27844/1 |goto 49.0,87.4 |only if havequest(27844)
_Phase 1:_
|tip Sticky Bombs will explode if players are within 1 yard of them
|tip The Lumbering Oaf will use Oaf Smash, picking up a random player and running into the wall. |only if not heroic_dung()
|tip The Lumbering Oaf will use Oaf Smash, picking up a random player and running into the wall dealing 100% of their maximum health as physical damage |only if heroic_dung()
|tip Helix will jump on a random player. This player will take normal melee damage for 10 seconds
|tip When Helix jumps to a new target, he leaves a Chest Bomb behind. Position yourself below the log in the room so you don't fly up in the air and die from fall damage |only if heroic_dung()
_Phase 2:_
|tip Helix will _Leap_ onto a player and melee attack them
|tip Helix will continue to attach _Chest Bomb_ to targets |only if heroic_dung()
Defeat Helix Gearbreaker |scenariogoal 24942 |goto 49.0,87.4
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	53.7,87.3	59.1,87.9	63.5,91.5
path	64.8,85.9	61.0,80.6
Follow the path |goto 61.0,80.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Heavy Door##400
Open the door and walk inside |goto 61.0,73.6 < 5
confirm
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	59.6,71.4	56.5,65.1	58.5,59.1
path	63.5,58.6	66.2,64.7	The Deadmines/2 14.6,89.8
Follow the winding ramp down |goto The Deadmines/2 14.6,89.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Foe Reaper 5000##43778 |n |goto The Deadmines/2 10.4,82.8
kill 1 Foe Reaper 5000##43778 |q Not Quite There##27847/1 |goto The Deadmines/2 10.4,82.8 |only if havequest(27847)
If you're the _Prototype Reaper_ pilot, click here. |confirm |next "Proto_Reap" |only if heroic_dung()
|tip Foe Reaper 5000 will use Reaper Strike, cleaving anyone in front of it
|tip When Overdrive is cast, run away and keep moving until it ends
|tip Occasionally a party member will be targeted with Harvest. Avoid being in front of the Foe Reaper as he moves to the target
_TANK:_ |only if heroic_dung() |grouprole TANK
|tip Pull the Foe Reaper to the top of the ramp |only if heroic_dung() |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Be prepared for party members to take damage during Overdrive |grouprole HEALER
Defeat the Foe Reaper 5000 |scenariogoal 24944 |goto The Deadmines/2 10.4,82.8
|next "canon_blast"
step
label "Proto_Reap"
You will spend your time at the bottom of the ramp, waiting for _Molten Slag_ to spawn
You will have 2 abilities to use to control the adds
Use _Reaper Strike_ twice in a row, then use _Reaper Charge_ to stun them
Repeat this until the Molten Slag dies
Defeat the Foe Reaper 5000 |scenariogoal 24944 |goto The Deadmines/2 10.4,82.8
step
label "canon_blast"
click Defias Cannon##16398
map The Deadmines/2
path follow loose; loop off; ants curved
path	12.6,70.3	13.1,60.4	22.9,58.0
path	28.0,52.5	33.4,48.9
Use the cannon to blow open the door and walk inside |goto The Deadmines/2 33.4,48.9 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	34.3,48.8	41.1,47.8	41.7,30.3
path	50.5,18.1	56.6,27.5	53.1,40.1
path	54.9,55.5
Proceed along the docks avoiding the cannonballs that are being shot at the ground. |goto 54.9,55.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	54.2,54.7	51.9,45.7	53.6,46.4
path	55.6,50.9	57.3,49.2	54.8,39.8
path	56.3,32.2
Follow the ramp up to the top of the ship. |goto 56.3,32.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Admiral Ripsnarl##47626 |n |goto 63.9,39.5
kill 1 Admiral Ripsnarl##47626 |q Good Intentions...Poor Execution##27848/1 |goto 63.9,39.5 |only if havequest(27848)
|tip Ripsnarl will use Swipe, cleaving in a frontal cone. Avoid standing in front of him
|tip Ripsnarl will gain Thirst for Blood, moving faster and gaining attack speed each time he hits (stacking up to 20 times)
|tip At 75%, 50% and 25% He will summon a fog
|tip During the fog, he will Summon Vapors which need to be killed as soon as possible. They will grow larger before they explode, potentially killing anyone nearby
|tip He will use Go For the Throat through the entire fight. It damages then stuns targets for 2 seconds. |only if heroic_dung()
|tip When the fog ends, Ripsnarl will randomly target someone with Go for the Throat, stunning them and dealing damage
_HEALER:_ |only if heroic_dung() |grouprole HEALER
|tip Ripsnarl will use Go for the Throat through the entire encounter. Prepare to heal accordingly |only if heroic_dung() |grouprole HEALER
Defeat Admiral Ripsnarl |scenariogoal 24943 |goto 63.9,39.5
step
Click the Quest Completion Box that pops up.
turnin Good Intentions...Poor Execution##27848 |only if havequest(27848)
accept The Defias Kingpin##27850
only if not completedq(27850)
step
kill 1 "Captain" Cookie##47739 |goto 63.9,39.5 |only if completedq(27850)
kill 1 "Captain" Cookie##47739 |q The Defias Kingpin##27850/1 |goto 63.9,39.5 |only if not completedq(27850)
|tip Cookie will throw regular food and rotten food on the ground. Rotten food will deal damage to anyone standing nearby
|tip Eating good food will remove a stack of bad food and grant a stacking haste buff
|tip Your group must balance eating bad food and good food to keep the deck clear
Defeat "Captain" Cookie |scenariogoal 34437 |goto 60.6,44.5
step
A note will appear on the ground
|tip Don't click it until your group is ready, it will start the Vanessa VanCleef event.
|tip Once you click it, Vanessa will come out and poison you.
Click the note and select _"Continue reading..."_ |goto The Deadmines/2 59.9,40.9 <8 |c
only if heroic_dung()
step
Click the 4 _Steam Valves_ to avoid being lowered into the Lava. There will be green arrows indicating where the levers are
Escape the lava |goto The Deadmines/1 57.9,70.3 |c |noway
|only if heroic_dung()
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	57.9,70.3	55.7,65.6	57.6,61.8
path	58.2,57.7	61.7,56.8	65.2,60.1
path	64.8,64.0
Jump down at the end of the ramp, avoiding the fire and blizzard areas |goto The Deadmines/2 15.2,81.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	14.0,89.9	10.9,89.9	6.9,81.1
path	9.9,77.6
Follow the path, avoiding the fire and blizzard areas |goto The Deadmines/2 9.9,77.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill 1 Glubtok##47162
|tip After you defeat Glubtok, Helix Gearbreaker  will appear at the door
|tip The group needs to collapse at the door, as spiders will spawn and fill the room
|tip Avoid aggroing the spiders if possible
kill 1 Helix Gearbreaker##47296
Defeat Glubtok and Helix |goto 12.6,68.4 < 5 |c
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	12.0,60.7	23.3,57.5	26.5,51.3
Follow the path |goto 26.5,51.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Foe Reaper 5000##43778
Defeat the Foe Reaper |goto 30.8,49.7 < 5 |c
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	34.3,48.8	41.1,47.8	41.7,30.3
path	50.5,18.1	56.6,27.5	53.1,40.1
path	54.9,55.5
Follow the deck onto the ship
|tip You will need to save Emma Harrington, Erik Harrington and Calissa Harrington from the worgen
|tip Kill any packs of Worgen that you see
Proceed along the docks, avoiding the sparks |goto 54.9,55.5 <8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	54.2,54.7	51.9,45.7	53.6,46.4
path	55.6,50.9	57.3,49.2	54.8,39.8
path	56.3,32.2
You will need to save _Emma Harrington_, _Erik Harrington_ and _Calissa Harrington_ from the worgen.
|tip Kill any packs of Worgen that you see.
|tip Once you're at Calissa Harrington, burn down Admiral Ripsnarl fast.
Follow the ramp up to the top of the ship. |goto 56.3,32.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|only if heroic_dung()
step
kill 1 Vanessa VanCleef##49541
|tip VanCleef will use Deflection, which deflects all ranged, melee and spell attacks for 10 seconds. She will use the ability when her health is higher than 25%
|tip She will use Deadly Blades, randomly attack party members
|tip She will use Backslash dealing 9k to 10k damage
|tip At 50%, she will use Fiery Blaze which deals 46k to 53k fire damage every second. When this happens, ropes will appear at the end of the deck. Click them to avoid the damage
_TANK:_ |grouprole TANK
|tip VanCleef will summon Defias Shadowguard and Defias Blood Wizards. These need to be picked up quickly |grouprole TANK
|tip When Vanessa is at 1% of her total health, she will use Powder Explosion, Move as far away from her as possible to avoid death |grouprole TANK
Defeat Vanessa VanCleef |scenariogoal 24945
only if heroic_dung()
step
talk Slinky Sharpshiv##46906
turnin Traitors!!!##27844 |goto 57.58,39.71
only if not completedq(27844)
step
talk Miss Mayhem##46902
turnin Not Quite There##27847 |goto 61.77,37.72
only if not completedq(27847)
step
talk Kagtha##46889
turnin The Defias Kingpin##27850 |goto 64.32,39.99
only if not completedq(27850)
step
Congratulations, you have completed The Deadmines! |only if not heroic_dung()
Congratulations, you have completed The Deadmines (Heroic)! |only if heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Classic Dungeons\\Wailing Caverns",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Wailing Caverns dungeon. This dungeon is located in the Northern Barrens on the continent of Kalimdor and is home to the Druids of the Fang. This dungeon ranges from level 17 to 20.",
mapid=279,
achieveid={630},
condition_suggested=function() return level>=15 and level<=60 end,
keywords={"WC, Barrens, Deviate"},
},[[
step
label "start"
Press _I_ and queue for Wailing Caverns or enter the dungeon with your group |goto Wailing Caverns/1 45.9,59.7 |c
step
talk Ebru##5768
accept Cleansing the Caverns##26870 |goto Wailing Caverns/1 46.6,59.2
only if not completedq(26870)
step
talk Nalpak##5767
accept Deviate Hides##26872 |goto 46.6,58.4
accept Preemptive Methods##26873 |goto 46.6,58.4
only if not completedq(26872)
stickystart "Quests"
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	45.6,53.0	41.4,51.6	35.0,51.5
path	35.5,49.1	37.8,44.2	36.9,39.8
path	32.9,40.3
Follow the path |goto 32.9,40.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lady Anacondra##3671 |only if default
kill 1 Lady Anacondra##3671 |q Cleansing the Caverns##26870/2 |only if havequest(26870)
|tip Lady Anacondra will cast Lightning Bolt on her current target
|tip She will also put random players to sleep using Druid's Slumber
|tip Anacondra will periodically attempt to heal herself or an ally with Healing Touch
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lady Anacondra |scenariogoal 24764 |goto 30.5,43.2
step
Jump down here |goto 30.3,40.1 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	28.2,40.1	25.1,46.3	20.5,45.3
path	14.4,43.6	8.9,33.6	11.4,29.3
path	12.1,32.4	12.9,33.5	14.7,34.3
path	15.8,39.0
Jump in the water and follow this path |goto 15.8,39.0 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Pythas##3670 |only if default
kill 1 Lord Pythas##3670 |q Cleansing the Caverns##26870/3 |only if havequest(26870)
|tip Lord Pythas will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Pythas will periodically attempt to heal himself or an ally with Healing Touch
|tip Players within 10 yards will occasionally take nature damage and suffer reduced attack speed from Thunder Clap
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Pythas |scenariogoal 24769 |goto Wailing Caverns/1 20.1,41.6
step
map Wailing Caverns
path follow loose; loop off; ants curved
path	18.6,35.6	17.3,27.2	16.1,24.4
path	11.9,24.9	5.6,30.2	7.6,38.2
path	8.3,44.3	12.7,52.4	15.7,53.7
Follow the path |goto 15.7,53.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Cobrahn##3669 |only if default
kill 1 Lord Cobrahn##3669 |q Cleansing the Caverns##26870/1 |only if havequest(26870)
|tip Lord Cobrahn will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Cobrahn will periodically attempt to heal himself or an ally with Healing Touch
|tip At 45% health, Cobrahn will gain Serpent Form. He will begin using Poison on players. Dispel this when possible
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Cobrahn |scenariogoal 24770 |goto Wailing Caverns/1 15.6,58.5
step
Jump down here |goto 15.8,51.8 |n
|tip You will take some fall damage |goto 16.1,49.2 <5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	17.9,46.2	22.0,45.6	24.7,46.6
path	27.3,40.8	31.8,36.8	37.7,35.3
path	44.9,37.5	50.3,43.1	52.8,49.0
path	51.8,54.9	52.5,58.0	55.2,64.0
path	58.5,67.0
kill Kresh##3653
If you haven't already killed Kresh, then you will find him walking in this little river.
Defeat Kresh |scenariogoal 24772
Follow the path |goto 58.5,67.0 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Skum##3674 |goto 60.7,72.1
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	60.5,78.8	57.2,88.6	54.3,87.5
path	54.0,84.5	54.9,81.8	56.6,79.0
path	55.5,75.0	54.9,70.3	52.9,67.0
path	52.4,66.9	50.4,62.4	52.0,60.0
path	55.9,56.8	64.4,59.7	68.6,62.2
path	71.6,64.7	73.2,69.2	72.4,76.5
path	68.2,84.2	62.5,82.8
Follow this path |goto 62.5,82.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go to the ledge |goto 60.4,81.2
Jump across the gap |goto 59.2,79.8 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	56.7,78.0	54.4,76.5	53.6,69.9
path	53.0,63.8	54.4,60.6	58.4,56.7
Follow the path |goto 58.4,56.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Serpentis##3673 |only if default
kill Lord Serpentis##3673 |q 26870/4 |only if havequest(26870)
|tip Lord Serpentis will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Serpentis will periodically attempt to heal himself or an ally with Healing Touch
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Serpentis |scenariogoal 1/24771 |goto 62.6,53.3
step
kill 1 Verdan the Everliving##5775 |goto 56.4,47.5
|tip Verdan the Everliving has one ability, Grasping Vines
_Grasping Vines_
|tip This will periodically knock down players within 10 yards and immobilize them for 5 seconds
_TANK:_ |grouprole TANK
|tip Make use of defenisive cooldowns, especially during Grasping Vines |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Be prepared, Verdan the Everliving may deal significant damage to undergeared tanks |grouprole HEALER
confirm
step
Walk to the edge of the pit |goto 55.3,42.8 |n
Jump down this hole |goto 54.5,39.5 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	54.1,43.4	50.5,43.1	44.6,38.7
path	41.0,37.8	38.1,38.3	37.6,44.9
path	35.5,48.5	35.4,50.9	37.8,51.7
path	44.2,52.5
Follow the path |goto 44.2,52.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Quests"
clicknpc Serpentbloom##13891
Kill Deviate mobs for Deviate Hides
Collect Deviate Hides |q Deviate Hides##26872/1
Collect Serpent Bloom |q Preemptive Methods##26873/1
step
talk Ebru##5768
turnin Cleansing the Caverns##26870 |goto Wailing Caverns/1 46.6,59.2
only if not completedq(26870)
step
talk Nalpak##5767
turnin Deviate Hides##26872 |goto 46.6,58.4
turnin Preemptive Methods##26873 |goto 46.6,58.4
only if not completedq(26872) or not completedq(26873)
step
talk Muyoh##3678 |goto 46.5,56.0
Tell him _"Let the event begin!"_ and start following |goto 45.3,53.3 < 8
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	44.2,52.4	38.9,51.6	35.0,51.1
path	35.0,51.1	36.2,47.2	37.8,44.2
path	37.6,39.9	34.5,39.5	30.4,43.0
path	28.1,41.8	26.6,39.4	27.9,34.0
path	32.6,29.4	37.7,24.8	37.6,21.6
path	34.5,15.9
There will be 2 waves of mobs that attack him, then the boss will appear.
Escort and Protect Muyoh until you get to the boss |scenariogoal 2/24776 |goto 34.5,15.9 <5 |noway
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
kill 1 Mutanus the Devourer##3654
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Naralex's Nightmare. This will put players to sleep for 8 seconds |grouprole TANK or DAMAGE
|tip Mutanus will Terrify random players. Dispel this if possible |grouprole TANK or DAMAGE
|tip Occasionally, Mutanus will use Thundercrack, dealing damage to all players within 10 yards and stunning them |grouprole TANK or DAMAGE
Defeat Mutanus the Devourer |scenariogoal 2/18524 |goto 34.0,15.6
step
Congratulations, you have completed Wailing Caverns!
]])
