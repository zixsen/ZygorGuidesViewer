local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Darkshore World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Darkshore.",
condition_suggested=function() return level>=110 and completedq(52279) end,
condition_valid=function() return level>=110 and completedq(52279) end,
condition_valid_msg="You have not unlocked Darkshore world quests!\n"..
"Complete the quest \"A Looming Threat\" in \"The Burning of Teldrassil\" event guide.",
startlevel=110.0,
worldquestzone=62,
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-52895
accept Arboria##52895 |goto Darkshore/0 44.03,75.29
|tip You will accept this quest automatically.
step
kill Monstrous Shredder##143562 |q 52895/1 |goto 44.03,75.29
|next "Tortollan_Seekers_WQ"
step
label quest-52207
accept The Azerite Stuff##52207 |goto Darkshore/0 32.48,84.44
|tip You will accept this quest automatically.
step
click Small Azerite Deposit##297605+
|tip They look like multicolored mining viens on the ground around this area.
Kill enemies around this area
collect 100 Azerite Crystal##164382 |q 52207/1 |goto 44.03,75.29
|next "Tortollan_Seekers_WQ"
step
label quest-52506
accept Blunt the Spikes##52506 |goto Darkshore/0 39.11,42.36
|tip You will accept this quest automatically.
stickystart "Kill_Darkshore_Invaders"
step
Enter the building |goto 38.87,41.91 < 5 |walk
kill Lieutenant Oogra##141352
|tip Inside the building.
|tip He walks around the area.
Slay Lieutenant Oogra |q 52506/2 |goto 38.62,42.20
step
label "Kill_Darkshore_Invaders"
kill 8 Darkshore Invader##143909 |q 52506/1 |goto 39.11,42.36
|next "Tortollan_Seekers_WQ"
step
label quest-53497
accept Break Free##53497 |goto Darkshore/0 50.45,19.62
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Occupiers"
step
clicknpc Darnassian Archer##143976+
|tip They look like wounded elves on the ground around this area.
Heal #8# Darnassian Archers |q 53497/1 |goto 50.45,19.62
step
label "Slay_Horde_Occupiers"
Kill enemies around this area
Slay #12# Horde Occupiers |q 53497/2 |goto 50.45,19.62
|next "Tortollan_Seekers_WQ"
step
label quest-53520
accept Detonate!##53520 |goto Darkshore/0 39.90,25.71
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Occupiers"
step
clicknpc Keg of Azerite Powder##144023+
|tip They look like wooden barrels underwater around this area.
Detonate #8# Azerite Powder Kegs |q 53520/1 |goto 39.90,25.71
step
label "Slay_Horde_Occupiers"
Kill enemies around this area
|tip On the ships and underwater around this area.
Slay #10# Horde Occupiers |q 53520/2 |goto 39.90,25.71
|next "Tortollan_Seekers_WQ"
step
label quest-52983
accept I Want It All##52983 |goto Darkshore/0 32.92,84.05
|tip You will accept this quest automatically.
step
kill Azerite Fury##142387 |q 52983/1 |goto 32.92,84.05
|next "Tortollan_Seekers_WQ"
step
label quest-53010
accept No Turning Back##53010 |goto Darkshore/0 62.36,9.58
|tip You will accept this quest automatically.
step
Kill Horde enemies around this area
click Horde War Supplies
|tip They look like brown wooden crates on the ground around this area.
click Wooden Cage##270999+
|tip They look like wooden cages holding night elf prisoners around this area.
Assault the War Camp |q 53010/1 |goto 62.36,9.58
|next "Tortollan_Seekers_WQ"
step
label quest-52893
accept One Vision##52893 |goto Darkshore/0 41.97,78.16
|tip You will accept this quest automatically.
stickystart "Slay_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##143938
|tip You can find them near trees around this area
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52893/1 |goto 41.97,78.16
step
label "Slay_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686+ |q 52893/2 |goto 41.97,78.16
|next "Tortollan_Seekers_WQ"
step
label quest-53319
accept Our Sacred Forest##53319 |goto Darkshore/0 60.82,18.17
|tip You will accept this quest automatically.
step
click Wood Pile##297480+
|tip They look like bundles of wood on the ground around this area.
kill Horde Combatant##143456+
Protect the Ruins of Mathystra |q 53319/1 |goto 59.12,16.69
|next "Tortollan_Seekers_WQ"
step
label quest-52307
accept Spiritual Aid##52307 |goto Darkshore/0 44.01,58.96
|tip You will accept this quest automatically.
stickystart "Calm_Frenzied_Wisps"
stickystart "Kill_Possessing_Spirits"
step
clicknpc Entranced Sentinel##143930+
|tip They look like charmed Night Elves around this area.
Rescue #5# Entranced Sentinels |q 52307/2 |goto 44.01,58.96
step
label "Calm_Frenzied_Wisps"
clicknpc Frenzied Wisp##140956+
|tip They look like floating blue balls around this area.
Calm #6# Frenzied Wisps |q 52307/3 |goto 44.01,58.96
step
label "Kill_Possessing_Spirits"
kill 10 Possessing Spirit##140715 |q 52307/1 |goto 44.01,58.96
|next "Tortollan_Seekers_WQ"
step
label quest-52504
accept So We Meat Again##52504 |goto Darkshore/0 39.31,51.93
|tip You will accept this quest automatically.
stickystart "Kill_Horde_Poachers"
step
Kill enemies around this area
|tip Beasts will count for this objective.
collect 10 Haunch of Meat##162013 |q 52504/1 |goto 39.31,51.93
step
label "Kill_Horde_Poachers"
kill 8 Horde Poacher##142673 |q 52504/2 |goto 39.31,51.93
|next "Tortollan_Seekers_WQ"
step
label quest-52244
accept Stop the Drilling##52244 |goto Darkshore/0 40.53,62.56
|tip You will accept this quest automatically.
stickystart "Slay_Bilgewater_Forces"
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 40.44,64.16 |count 1
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 39.15,64.09 |count 2
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 40.75,59.20 |count 3
step
label "Slay_Bilgewater_Forces"
Kill Bilgewater enemies around this area
Slay #7# Bilgewater Forces |q 52244/1 |goto Darkshore/0 40.53,62.56
|next "Tortollan_Seekers_WQ"
step
label quest-52897
accept We Will "Rock" You##52897 |goto Darkshore/0 42.09,66.86
|tip You will accept this quest automatically.
step
clicknpc Tree of Life##144413
Speak with the Tree of Life |q 52897/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52897/2 |goto 42.88,68.16
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking world quests in Kul Tiras and Zandalar.\n\n"..
"To accomplish this, you will need to earn \"Friendly\" reputation with the follwing factions:\n\n"..
"Order of Embers\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n",
condition_suggested=function() return level >= 120 and not completedq(51918) end,
condition_valid=function() return level >= 120 end,
condition_valid_msg="You must be level 120 to unlock world quests in Battle for Azeroth!",
condition_end=function() return completedq(51918) end,
startlevel=120.0,
},[[
step
accept Uniting Kul Tiras##51918 |goto Boralus/0 69.26,26.99
|tip You will accept this quest automatically upon reaching level 120.
step
Earn "Friendly" Reputation with the Order of Embers |condition rep("Order of Embers") >= Friendly
step
Earn "Friendly" Reputation with the Proudmoore Admiralty |condition rep("Proudmoore Admiralty") >= Friendly
step
Earn "Friendly" Reputation with Storm's Wake |condition rep("Storm's Wake") >= Friendly
step
Jump down here |goto Boralus/0 70.34,17.57 < 7 |only if walking
Enter the building |goto 68.88,21.13 < 3 |only if walking
Follow the path |goto Tiragarde Sound/0 73.69,24.77 < 5 |only if walking
Leave the building |goto Boralus/0 67.08,23.39 < 5 |only if walking
Run up the ramp |goto 67.39,25.18 < 5 |only if walking
Run down the ramp |goto 69.27,25.59 < 5 |only if walking
talk Halford Wyrmbane##135612
turnin Uniting Kul Tiras##51918 |goto Boralus/0 69.26,26.99
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Drustvar World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Drustvar, Kul Tiras.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=896,
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-51576
Cross the bridge |goto Drustvar/0 19.91,44.69 < 7 |only if walking
Follow the road up |goto 20.74,46.28 < 7 |only if walking
Continue following the road |goto 20.28,47.10 < 7 |only if walking
Continue following the road |goto 20.60,47.45 < 5 |only if walking
Continue following the road |goto 21.77,45.81 < 7 |only if walking
Continue following the road |goto 22.98,46.56 < 10 |only if walking
Continue following the road |goto 24.12,50.68 < 10 |only if walking
accept Any Witch Way But Dead##51576 |goto Drustvar/0 24.09,50.74
|tip You will accept this quest automatically.
stickystart "Slay_Witch_Forces"
step
click Cage##182094+
|tip They look like cages made of branches on the ground around this area.
Free #10# Imprisoned Villagers |q 51576/1 |goto 24.09,50.74
step
label "Slay_Witch_Forces"
Kill enemies around this area
Slay #10# Witch Forces |q 51576/2 |goto 24.09,50.74
|next "Tortollan_Seekers_WQ"
step
label quest-51541
Follow the path |goto Drustvar/0 27.20,71.37 < 7 |only if walking
Follow the path |goto 27.47,69.94 < 7 |only if walking
accept Arclight##51541 |goto Drustvar/0 29.21,69.01
|tip You will accept this quest automatically.
step
kill Arclight##137824 |q 51541/1 |goto 29.21,69.01
|next "Tortollan_Seekers_WQ"
step
label quest-51466
Follow the path up |goto Drustvar/0 27.31,70.60 < 7 |only if walking
Continue up the path |goto 27.81,68.88 < 7 |only if walking
Continue up the path |goto 27.37,67.72 < 7 |only if walking
Continue up the path |goto 28.39,66.54 < 7 |only if walking
Continue up the path |goto 27.79,66.57 < 7 |only if walking
Continue up the path |goto 27.80,64.22 < 10 |only if walking
Follow the road |goto 28.67,62.95 < 10 |only if walking
Continue following the road |goto 29.52,62.28 < 10 |only if walking
Continue following the road |goto 30.62,62.73 < 10 |only if walking
Continue following the road |goto 31.51,64.19 < 10 |only if walking
Cross the bridge |goto 31.72,65.40 < 7 |only if walking
Follow the road |goto 31.89,67.36 < 7 |only if walking
Continue following the road |goto 32.70,67.86 < 10 |only if walking
Continue following the road |goto 34.42,67.31 < 10 |only if walking
accept Arvon the Betrayed##51466 |goto Drustvar/0 35.47,68.43
|tip You will accept this quest automatically.
step
Follow the path |goto 35.47,68.43 < 5 |only if walking
Continue following the path |goto 35.45,68.93 < 7 |only if walking
kill Arvon the Betrayed##137529 |q 51466/1 |goto 34.88,69.21
|next "Tortollan_Seekers_WQ"
step
label quest-51542
Cross the water |goto Drustvar/0 27.71,71.37 < 7 |only if walking
Follow the path up |goto 30.50,71.55 < 7 |only if walking
Continue up the path |goto 30.99,69.71 < 7 |only if walking
Continue up the path |goto 31.58,70.13 < 7 |only if walking
Continue up the path |goto 31.60,69.24 < 7 |only if walking
Continue up the path |goto 32.64,70.57 < 7 |only if walking
Continue up the path |goto 34.60,70.67 < 7 |only if walking
Continue up the path |goto 37.17,69.68 < 7 |only if walking
Continue down the path |goto 40.45,75.11 < 10 |only if walking
Continue down the path |goto 41.53,77.81 < 10 |only if walking
Continue up the path |goto 41.57,81.50 < 7 |only if walking
Continue up the path |goto 42.18,82.28 < 7 |only if walking
Continue up the path |goto 42.17,84.24 < 7 |only if walking
accept Avalanche##51542 |goto Drustvar/0 43.23,86.77
|tip You will accept this quest automatically.
step
Follow the path up |goto 43.84,86.65 < 7 |only if walking
Continue up the path |goto 44.49,88.37 < 7 |only if walking
Continue up the path |goto 44.00,89.05 < 7 |only if walking
kill Avalanche##137825
|tip It flies around this hill and sometimes lands.
Slay Avalanche |q 51542/1 |goto 43.75,88.02
|next "Tortollan_Seekers_WQ"
step
label quest-52862
Follow the road |goto Drustvar/0 32.29,31.32 < 10 |only if walking
Continue following the road |goto 31.36,32.39 < 10 |only if walking
Follow the path |goto 24.99,30.21 < 10 |only if walking
Follow the path down |goto 25.01,28.49 < 10 |only if walking
Continue down the path |goto 24.44,27.85 < 7 |only if walking
Continue down the path |goto 23.64,28.17 < 7 |only if walking
Continue down the path |goto 22.49,27.35 < 10 |only if walking
Enter the cave |goto 21.58,29.97 < 10 |walk
accept Azerite Empowerment##52862 |goto Drustvar/0 22.17,30.37
|tip You will accept this quest automatically.
step
Enter the cave |goto 21.58,29.97 < 10 |walk
kill Rotbough##141970
|tip Inside the cave.
Slay Rotbough |q 52862/1 |goto 22.17,30.37
|next "Tortollan_Seekers_WQ"
step
label quest-51612
Follow the path |goto Drustvar/0 38.41,51.25 < 7 |only if walking
Follow the road |goto 39.00,49.66 < 10 |only if walking
Continue following the road |goto 40.72,47.42 < 10 |only if walking
Continue following the road |goto 41.31,43.77 < 10 |only if walking
Follow the path up |goto 41.59,41.07 < 10 |only if walking
Continue up the path |goto 41.19,39.26 < 7 |only if walking
accept Azerite Empowerment##51612 |goto Drustvar/0 40.30,37.83
|tip You will accept this quest automatically.
step
kill Sister Hilga##138295 |q 51612/1 |goto 39.83,37.76
|next "Tortollan_Seekers_WQ"
step
label quest-51608
Follow the road |goto Drustvar/0 39.36,48.89 < 10 |only if walking
Continue following the road |goto 41.01,46.17 < 10 |only if walking
accept Azerite Madness##51608 |goto Drustvar/0 40.92,38.91
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51608/1 |goto 40.92,38.91
|next "Tortollan_Seekers_WQ"
step
label quest-52872
Follow the path up |goto Drustvar/0 68.56,57.66 < 10 |only if walking
Continue up the path |goto 64.71,55.22 < 7 |only if walking
Continue up the path |goto 62.93,54.45 < 10 |only if walking
Follow the path |goto 61.09,53.70 < 10 |only if walking
accept Azerite Mining##52872 |goto Drustvar/0 58.47,52.40
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52872/1 |goto 58.47,52.40
|next "Tortollan_Seekers_WQ"
step
label quest-51615
Follow the road |goto Drustvar/0 38.52,49.95 < 10 |only if walking
Continue following the road |goto 40.88,46.94 < 10 |only if walking
Continue following the road |goto 41.29,42.14 < 10 |only if walking
accept Azerite Mining##51615 |goto Drustvar/0 41.26,39.36
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51615/1 |goto 40.49,38.21
|next "Tortollan_Seekers_WQ"
step
label quest-51609
Follow the road |goto Drustvar/0 38.47,51.03 < 7 |only if walking
Continue following the road |goto 39.67,48.47 < 10 |only if walking
Continue following the road |goto 40.65,47.66 < 10 |only if walking
Continue following the road |goto 41.30,43.69 < 10 |only if walking
Follow the path up |goto 41.62,41.02 < 10 |only if walking
accept Azerite Wounds##51609 |goto Drustvar/0 40.58,37.85
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Clear the enemies from glowing blue Azerite Wounds around this area.
|tip While standing on one, use the "Heart of Azeroth" ability that appears onscreen.
Heal #5# Azeroth Wounds |q 51609/1 |goto 40.58,37.85
|next "Tortollan_Seekers_WQ"
step
label quest-51491
Follow the road |goto Drustvar/0 56.33,34.88 < 10 |only if walking
Continue following the road |goto 56.86,34.36 < 7 |only if walking
Cross the bridge |goto 56.98,33.06 < 7 |only if walking
Follow the path |goto 57.20,32.42 < 7 |only if walking
Continue up the path |goto 56.53,31.66 < 10 |only if walking
Continue up the path |goto 56.56,30.31 < 7 |only if walking
accept Balethorn##51491 |goto Drustvar/0 57.09,29.46
|tip You will accept this quest automatically.
step
kill Balethorn##130143
|tip It walks around the area.
Slay Balethorn |q 51491/1 |goto 56.61,29.16
|next "Tortollan_Seekers_WQ"
step
label quest-51506
Cross the bridge |goto Drustvar/0 62.74,23.28 < 7 |only if walking
Follow the road up |goto 62.53,22.46 < 7 |only if walking
Continue following the road |goto 62.32,21.02 < 10 |only if walking
Follow the path |goto 61.67,19.66 < 10 |only if walking
Continue following the path |goto 60.48,19.29 < 7 |only if walking
Continue following the path |goto 59.20,19.76 < 10 |only if walking
Enter the cave |goto 58.88,18.39 < 7 |only if walking
accept Barbthorn Queen##51506 |goto Drustvar/0 58.98,17.50
|tip You will accept this quest automatically.
step
Enter the cave |goto 58.88,18.39 < 7 |only if walking
kill Barbthorn Queen##127333
|tip Inside the cave.
Slay the Barbthorn Queen |q 51506/1 |goto 59.12,16.69
|next "Tortollan_Seekers_WQ"
step
label quest-51681
accept Basic Witch##51681 |goto Drustvar/0 70.31,62.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Captured Villager##126629+
|tip They look like humans bound to posts around this area.
Reclaim Fletcher's Hollow |q 51681/1 |goto 70.31,62.65
|next "Tortollan_Seekers_WQ"
step
label quest-51637
Follow the road |goto Drustvar/0 32.29,31.32 < 10 |only if walking
Continue following the road |goto 31.36,32.39 < 10 |only if walking
Follow the path |goto 24.99,30.21 < 10 |only if walking
Follow the path down |goto 25.01,28.49 < 10 |only if walking
Continue down the path |goto 24.44,27.85 < 7 |only if walking
Continue down the path |goto 23.64,28.17 < 7 |only if walking
Continue down the path |goto 22.49,27.35 < 10 |only if walking
accept Beachhead##51637 |goto Drustvar/0 21.61,26.54
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51637/1 |goto 21.61,26.54
|next "Tortollan_Seekers_WQ"
step
label quest-50000
accept Beastly Dealings##50000 |goto Drustvar/0 25.84,69.60
|tip You will accept this quest automatically.
step
click Witch Banner##290443+
click Antlered Skull##290449+
click Hanging WItch Effigy##290445
click Summoning Circle##290446+
kill Briarwood Invader##131373+
Destroy the Signs of Witchcraft |q 50000/1 |goto 25.84,69.60
|next "Tortollan_Seekers_WQ"
step
label quest-51917
Jump down here |goto Drustvar/0 54.76,34.24 < 7 |only if walking
Follow the path |goto 54.36,33.73 < 7 |only if walking
Continue following the path |goto 53.82,32.00 < 7 |only if walking
Cross the water |goto 53.06,29.85 < 7 |only if walking
Follow the path up |goto 52.36,29.57 < 7 |only if walking
Enter the cave |goto 51.17,29.66 < 7 |walk
accept Beshol##51917 |goto Drustvar/0 51.17,29.66
|tip You will accept this quest automatically.
step
Enter the cave |goto 51.17,29.66 < 7 |walk
click Obviously Safe Chest##278432
|tip Inside the cave.
kill Beshol##129805
|tip Inside the cave.
Slay Beshol |q 51917/1 |goto 50.54,30.06
|next "Tortollan_Seekers_WQ"
step
label quest-51512
Follow the road |goto Drustvar/0 32.29,31.26 < 10 |only if walking
Continue following the road |goto 33.02,30.69 < 7 |only if walking
Follow the path up |goto 34.85,31.55 < 10 |only if walking
Enter the mine |goto 35.96,31.62 < 5 |walk
Follow the path down |goto 36.56,32.10 < 7 |walk
Continue down the path |goto 36.71,31.59 < 7 |walk
Jump down here |goto 36.28,30.92 < 7 |walk
Follow the path |goto 35.45,31.23 < 7 |walk
Continue following the path |goto 35.48,32.90 < 7 |walk
accept Bilefang Mother##51512 |goto Drustvar/0 35.04,33.24
|tip You will accept this quest automatically.
step
kill Bilefang Mother##132319 |q 51512/1 |goto 35.04,33.24
|next "Tortollan_Seekers_WQ"
step
label quest-51699
Follow the path |goto Drustvar/0 25.43,17.20 < 7 |only if walking
Continue following the path |goto 26.46,20.60 < 10 |only if walking
Continue following the path |goto 27.59,20.03 < 7 |only if walking
Continue up the path |goto 27.46,18.80 < 7 |only if walking
Continue up the path |goto 29.75,18.07 < 7 |only if walking
Continue following the path |goto 29.98,17.68 < 7 |only if walking
Continue following the path |goto 30.40,16.63 < 7 |only if walking
Continue following the path |goto 32.37,15.58 < 7 |only if walking
Continue following the path |goto 33.56,14.53 < 7 |only if walking
Continue following the path |goto 34.75,14.10 < 10 |only if walking
accept Blighted Monstrosity##51699 |goto Drustvar/0 36.01,11.10
|tip You will accept this quest automatically.
step
kill Blighted Monstrosity##138667 |q 51699/1 |goto 36.01,11.10
|next "Tortollan_Seekers_WQ"
step
label quest-53272
Follow the path |goto Drustvar/0 27.24,70.84 < 7 |only if walking
Continue following the path |goto 27.81,69.03 < 10 |only if walking
accept Blooming Siren's Sting##53272 |goto Drustvar/0 27.35,66.94
|tip You will accept this quest automatically.
step
clicknpc Blooming Siren's Sting##143732
Gather Blooming Siren's Sting |q 53272/1 |goto 27.35,66.94
|next "Tortollan_Seekers_WQ"
step
label quest-51709
Cross the bridge |goto Drustvar/0 62.73,23.26 < 7 |only if walking
Follow the road |goto 62.54,22.40 < 7 |only if walking
Continue following the road |goto 62.27,20.89 < 7 |only if walking
Continue following the road |goto 61.95,19.61 < 7 |only if walking
accept Bombarbment##51709 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
Follow the path |goto Drustvar/0 61.86,19.94 < 10 |only if walking
Kill Barbthorn enemies around this area
clicknpc Barbthorn Hive##127038+
|tip They look like yellow bee hives hanging in trees around this area.
Clear Out Barbthorn Ridge |q 51709/1 |goto 61.06,17.71
|next "Tortollan_Seekers_WQ"
step
label quest-51468
Follow the road |goto Drustvar/0 68.98,57.52 < 7 |only if walking
Continue following the road |goto 69.15,54.86 < 7 |only if walking
Follow the path up |goto 69.13,53.67 < 10 |only if walking
Continue up the path |goto 67.58,52.05 < 7 |only if walking
accept Bonesquall##51468 |goto Drustvar/0 66.77,50.81
|tip You will accept this quest automatically.
step
kill Bonesquall##126621 |goto 66.77,50.81
|next "Tortollan_Seekers_WQ"
step
label quest-53549
Follow the path up |goto Drustvar/0 27.24,71.07 < 7 |only if walking
Cross the water |goto 28.23,70.01 < 10 |only if walking
Follow the path up |goto 30.43,71.43 < 10 |only if walking
Continue up the path |goto 31.02,69.70 < 7 |only if walking
Continue up the path |goto 31.73,69.27 < 7 |only if walking
Continue up the path |goto 32.61,70.63 < 10 |only if walking
Follow the path |goto 34.11,70.72 < 7 |only if walking
Follow the path |goto 35.76,69.47 < 10 |only if walking
accept Bounty Bag##53549 |goto Drustvar/0 34.78,69.21
|tip You will accept this quest automatically.
step
kill Arvon the Betrayed##137529 |q 53549/1 |goto 25.84,69.60
|next "Tortollan_Seekers_WQ"
step
label quest-51989
Follow the road up |goto Drustvar/0 25.98,70.93 < 7 |only if walking
Continue following the road |goto 25.60,69.85 < 10 |only if walking
Continue following the road |goto 26.55,66.74 < 7 |only if walking
Continue following the road |goto 26.75,64.94 < 10 |only if walking
Continue following the road |goto 27.82,63.42 < 10 |only if walking
Follow the path up |goto 27.86,61.31 < 7 |only if walking
accept Braedan Whitewall##51989 |goto Drustvar/0 27.64,59.59
|tip You will accept this quest automatically.
step
kill Braedan Whitewall##139321 |q 51989/1 |goto 27.64,59.59
|next "Tortollan_Seekers_WQ"
step
label quest-50369
Follow the path |goto Drustvar/0 25.94,70.83 < 7 |only if walking
Continue up the path |goto 24.78,67.07 < 10 |only if walking
Continue up the path |goto 24.54,61.86 < 10 |only if walking
Jump down here |goto 24.02,59.69 < 7 |only if walking
Jump down here |goto 23.17,57.08 < 7 |only if walking
accept Bruin Potions##50369 |goto Drustvar/0 18.89,56.86
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
kill Hexwood Sentry##138088+
collect 4 Caustic Sap##160442 |q 50369/3 |goto 18.89,56.86
step
label "Burn_Bloody_Banners"
kill Hexed Brambleback##133501+
collect 6 Bear Heart##157545 |q 50369/1 |goto 18.89,56.86
step
label "Kill_Enthralled_Wildlife"
click Hearthbloom##281252+
|tip They look like small flowers on the ground around this area.
collect 10 Hearthbloom Petals##157546 |q 50369/2 |goto 18.89,56.86
|next "Tortollan_Seekers_WQ"
step
label quest-53312
Cross the bridge |goto Drustvar/0 19.91,44.69 < 7 |only if walking
Follow the road up |goto 20.74,46.28 < 7 |only if walking
Continue following the road |goto 20.28,47.10 < 7 |only if walking
Continue following the road |goto 20.60,47.45 < 5 |only if walking
Continue following the road |goto 21.77,45.81 < 7 |only if walking
Follow the path |goto 22.38,46.23 < 10 |only if walking
Continue up the path |goto 22.19,48.88 < 7 |only if walking
Continue up the path |goto 21.12,49.74 < 7 |only if walking
accept Burnished Platinum##53312 |goto Drustvar/0 20.82,50.93
|tip You will accept this quest automatically.
step
click Burnished Platinum Deposit##297472
collect Burnished Platinum##163624 |q 53312/1 |goto 20.82,50.93
|next "Tortollan_Seekers_WQ"
step
label quest-51970
accept The Caterer##51970 |goto Drustvar/0 25.70,16.54
|tip You will accept this quest automatically.
step
Follow the path |goto 25.42,16.07 < 7 |only if walking
click Ruined Wedding Cake##291272
kill The Caterer##139358 |q 51970/1 |goto 25.13,16.23
|next "Tortollan_Seekers_WQ"
step
label quest-51920
Follow the road |goto Drustvar/0 54.54,35.49 < 7 |only if walking
Cross the bridge |goto 54.55,36.55 < 7 |only if walking
Follow the path |goto 54.59,37.61 < 7 |only if walking
Continue following the path |goto 53.88,39.02 < 10 |only if walking
Continue following the path |goto 54.15,41.87 < 7 |only if walking
Continue following the path |goto 53.88,43.79 < 10 |only if walking
Continue following the path |goto 54.39,46.43 < 10 |only if walking
Enter the cave |goto 52.54,46.71 7 |walk
accept Cottontail Matron##51920 |goto Drustvar/0 52.15,46.92
|tip You will accept this quest automatically.
step
kill Cottontail Matron##129904
|tip Inside the cave.
Slay the Cottontail Matron |q 51920/1 |goto 52.15,46.92
|next "Tortollan_Seekers_WQ"
step
label quest-52009
Follow the path |goto Drustvar/0 26.71,73.08 < 7 |only if walking
Continue up the path |goto 25.49,73.01 < 7 |only if walking
Continue up the path |goto 24.64,71.89 < 7 |only if walking
Continue following the path |goto 23.83,68.65 < 7 |only if walking
Continue following the path |goto 22.50,67.67 < 5 |only if walking
Cross the bridge |goto 21.97,67.06 < 7 |only if walking
accept Crab People##52009 |goto Drustvar/0 21.40,66.45
|tip You will accept this quest automatically.
step
talk Captain Hermes##139489
Tell him _"Begin pet battle."_
Defeat Captain Hermes |q 52009/1 |goto 21.40,66.45
|next "Tortollan_Seekers_WQ"
step
label quest-51706
Follow the road up |goto Drustvar/0 25.92,70.81 < 7 |only if walking
Follow the path |goto 25.16,68.19 < 10 |only if walking
Follow the path up |goto 25.04,66.73 < 7 |only if walking
accept Deadwood##51706 |goto Drustvar/0 23.19,60.54
|tip You will accept this quest automatically.
step
use the Greater Control Charm##160584
|tip You can only use it near the Crimson Demolisher.
Control the Crimson Demolisher |q 51706/1 |goto 27.20,57.87
step
Kill enemies around this area
|tip Use the abilities on your hotbar to accomplish this.
Destroy the Witch Forces |q 51706/2 |goto 25.31,56.41
|next "Tortollan_Seekers_WQ"
step
label quest-51919
Follow the path up |goto Drustvar/0 61.46,39.22 < 10 |only if walking
Continue up the path |goto 62.63,40.81 < 10 |only if walking
accept Emily Mayville##51919 |goto Drustvar/0 63.41,40.10
|tip You will accept this quest automatically.
step
talk Emily Mayville##129995
Ask her _"Why are you crying?"_
kill Emily Mayville##129995 |q 51919/1 |goto 63.41,40.10
|next "Tortollan_Seekers_WQ"
step
label quest-51588
Follow the path |goto Drustvar/0 63.01,24.05 < 7 |only if walking
Continue following the path |goto 63.83,25.71 < 7 |only if walking
Continue following the path |goto 63.44,27.43 < 7 |only if walking
Continue following the path |goto 60.25,27.25 < 10 |only if walking
Continue following the path |goto 59.16,27.21 < 10 |only if walking
accept Familiar Foes##51588 |goto Drustvar/0 58.09,28.01
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
click Lesser Effigy##290612+
|tip They look like totems with antlers atop them on the ground around this area.
Destroy #4# Lesser Effigies |q 51588/1 |goto 58.09,28.01
step
label "Burn_Bloody_Banners"
click Bloody Banner##302779+
|tip They look like banners with writing in blood on the ground around this area.
Burn #5# Bloody Banners |q 51588/3 |goto 58.09,28.01
step
label "Kill_Enthralled_Wildlife"
Kill enemies around this area
Slay #10# Enthralled Wildlife |q 51588/2 |goto 58.09,28.01
|next "Tortollan_Seekers_WQ"
step
label quest-51616
Follow the road |goto Drustvar/0 69.88,41.52 < 7 |only if walking
Continue following the road |goto 68.97,43.25 < 7 |only if walking
Continue following the road |goto 67.93,43.73 < 10 |only if walking
Continue following the road |goto 66.90,44.76 < 7 |only if walking
Continue following the road |goto 65.13,44.63 < 10 |only if walking
Follow the path up |goto 64.25,46.56 < 10 |only if walking
accept A Final Rest##51616 |goto Drustvar/0 61.25,47.22
|tip You will accept this quest automatically.
stickystart "Kill_Enraged_Spirits"
stickystart "Kill_Soulgorged_Gravestalkers"
step
clicknpc Lost Soul##138320+
|tip They look like ghostly people around this area.
Release #5# Lost Souls |q 51616/3 |goto 61.25,47.22
step
label "Kill_Enraged_Spirits"
kill 5 Enraged Spirit##126264 |q 51616/1 |goto 61.25,47.22
step
label "Kill_Soulgorged_Gravestalkers"
kill 3 Soulgorged Gravestalker##126263 |q 51616/2 |goto 61.25,47.22
|next "Tortollan_Seekers_WQ"
step
label quest-51658
Follow the path |goto Drustvar/0 32.36,30.15 < 7 |only if walking
accept Fly the Coop!##51658 |goto Drustvar/0 31.86,24.43
|tip You will accept this quest automatically.
stickystart "Kill_Hexthralled_Falconers"
stickystart "Kill_Cursed_Falcons"
step
kill Hexthralled Falconer##133736+
collect 5 Falconer's Key##157840 |goto 31.86,24.43 |q 51658
step
click Falcon Cage##290746+
|tip They look like small bird cages on the ground around this area.
Open #5# Falcon Cages |q 51658/1 |goto 31.86,24.43
step
label "Kill_Hexthralled_Falconers"
kill Hexthralled Falconer##133736 |q 51658/2 |goto 31.86,24.43
step
label "Kill_Cursed_Falcons"
kill 5 Cursed Falcon##131518 |q 51658/3 |goto 31.86,24.43
|next "Tortollan_Seekers_WQ"
step
label quest-51507
Follow the road |goto Drustvar/0 54.51,35.57 < 7 |only if walking
Cross the bridge |goto 54.55,36.57 < 7 |only if walking
Follow the road |goto 54.74,38.51 < 7 |only if walking
Continue following the road |goto 55.59,39.37 < 7 |only if walking
Follow the path |goto 56.25,41.84 < 7 |only if walking
accept Gorehorn##51507 |goto Drustvar/0 57.12,44.30
|tip You will accept this quest automatically.
step
kill Gorehorn##129835 |q 51507/1 |goto 57.12,44.30
|next "Tortollan_Seekers_WQ"
step
label quest-51874
Follow the path |goto Drustvar/0 31.22,30.48 < 7 |only if walking
Jump down here |goto 30.75,29.99 < 5 |only if walking
Jump down here |goto 30.30,30.35 < 5 |only if walking
Jump down here |goto 29.93,30.01 < 7 |only if walking
Follow the path |goto 28.68,27.63 < 10 |only if walking
accept Gorged Boar##51874 |goto 28.01,25.98
|tip You will accept this quest automatically.
step
kill Gorged Boar##138675 |q 51874/1 |goto 28.01,25.98
|next "Tortollan_Seekers_WQ"
step
label quest-51909
Follow the path |goto Drustvar/0 55.24,34.30 < 7 |only if walking
Continue following the path |goto 55.16,33.20 < 7 |only if walking
Continue up the path |goto 54.87,31.28 < 7 |only if walking
Follow the road |goto 54.32,29.81 < 7 |only if walking
Continue following the road |goto 53.73,28.38 < 7 |only if walking
Continue following the road |goto 54.06,27.24 < 7 |only if walking
Follow the path |goto 53.07,24.53 < 7 |only if walking
Continue following the path |goto 51.84,23.32 < 7 |only if walking
accept Grozgore##51909 |goto Drustvar/0 50.33,20.69
|tip You will accept this quest automatically.
step
kill Grozgore##127129 |q 51909/1 |goto 50.33,20.69
|next "Tortollan_Seekers_WQ"
step
label quest-51884
Follow the path down |goto Drustvar/0 31.24,30.67 < 7 |only if walking
Continue down the path |goto 30.75,31.92 < 7 |only if walking
Continue down the path |goto 27.22,31.22 < 10 |only if walking
Continue up the path |goto 25.23,31.71 < 10 |only if walking
accept Haywire Golem##51884 |goto Drustvar/0 23.97,30.48
|tip You will accept this quest automatically.
step
kill Haywire Golem##138618
|tip It walks around this area.
Slay the Haywire Golem |q 51884/1 |goto 23.97,30.48
|next "Tortollan_Seekers_WQ"
step
label quest-51467
Cross the bridge |goto Drustvar/0 19.91,44.69 < 7 |only if walking
Follow the road up |goto 20.74,46.28 < 7 |only if walking
Continue following the road |goto 20.28,47.10 < 7 |only if walking
Continue following the road |goto 20.60,47.45 < 5 |only if walking
Continue following the road |goto 21.77,45.81 < 7 |only if walking
Follow the path |goto 22.98,46.56 < 10 |only if walking
accept Hyo'gi##51467 |goto Drustvar/0 22.93,49.48
|tip You will accept this quest automatically.
step
kill Hyo'gi##134754 |q 51467/1 |goto 22.93,49.48
|next "Tortollan_Seekers_WQ"
step
label quest-51604
Follow the road |goto Drustvar/0 54.52,35.53 < 7 |only if walking
Cross the bridge |goto 54.56,36.55 < 5 |only if walking
Follow the road |goto 54.61,37.43 < 7 |only if walking
Follow the path |goto 54.68,38.97 < 7 |only if walking
accept Hunters Hunted##51604 |goto Drustvar/0 55.48,42.16
|tip You will accept this quest automatically.
step
click Disturbing Charm##277193+
click Bewitching Fetish##271176+
Kill Hexcrazed enemies around this area
Purge the Woods |q 51604/1 |goto 54.48,45.01
|next "Tortollan_Seekers_WQ"
step
label quest-51697
Follow the path |goto Drustvar/0 19.90,44.60 < 7 |only if walking
Cross the bridge |goto 20.72,46.22 < 7 |only if walking
Cross the bridge |goto 20.28,47.11 < 7 |only if walking
Follow the path |goto 20.59,47.45 < 7 |only if walking
Continue up the path |goto 21.69,45.85 < 7 |only if walking
Continue up the path |goto 23.30,45.65 < 10 |only if walking
accept Hunting for Truffle Hunters##51697 |goto Drustvar/0 25.67,41.51
|tip You will accept this quest automatically.
stickystart "Slay_Funggarians"
step
clicknpc Lost Piglet##138610+
|tip They look like tiny pigs on the ground around this area.
Save #5# Lost Piglets |q 51697/2 |goto 25.67,41.51
step
label "Slay_Funggarians"
Kill Bloodbough enemies around this area
Slay #8# Funggarians |q 51697/1 |goto 25.67,41.51
|next "Tortollan_Seekers_WQ"
step
label quest-51693
Follow the path down |goto Drustvar/0 25.39,16.97 < 7 |only if walking
Follow the path |goto 26.25,18.33 < 10 |only if walking
Follow the path down |goto 27.31,15.68 < 10 |only if walking
accept Intercepting the Irontide##51693 |goto Drustvar/0 28.38,14.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Pirate Grog##284451+
|tip They look like large bottles on the ground around this area.
click Plundered Supplies##284473+
|tip They look like small white chests on the ground around this area.
Drive Back the Irontide |q 51693/1 |goto 28.38,14.07
|next "Tortollan_Seekers_WQ"
step
label quest-51972
Follow the path up |goto Drustvar/0 67.22,55.64 < 10 |only if walking
Continue up the path |goto 65.71,56.06 < 10 |only if walking
Continue up the path |goto 63.97,57.43 < 10 |only if walking
Continue up the path |goto 63.02,59.42 < 10 |only if walking
Follow the path |goto 61.16,62.14 < 10 |only if walking
Continue following the path |goto 59.97,64.34 < 10 |only if walking
Continue following the path |goto 60.47,67.50 < 10 |only if walking
Continue following the path |goto 61.76,69.22 < 7 |only if walking
accept Lost Goat##51972 |goto Drustvar/0 63.07,69.67
|tip You will accept this quest automatically.
step
talk Lost Goat##127979
Tell it _"Dumb goat. Let's go before you get eaten by monsters."_
kill Gluttonous Yeti##127844 |q 51972/1 |goto 63.07,69.67
|next "Tortollan_Seekers_WQ"
step
label quest-51433
Follow the path |goto Drustvar/0 32.37,29.25 < 10 |only if walking
Continue following the path |goto 32.12,27.48 < 10 |only if walking
Continue following the path |goto 32.41,25.85 < 10 |only if walking
Continue following the path |goto 33.47,22.58 < 10 |only if walking
Continue following the path |goto 33.69,20.97 < 7 |only if walking
Continue following the path |goto 34.76,20.73 < 7 |only if walking
accept Matron Morana##51433 |goto Drustvar/0 34.84,19.87
|tip You will accept this quest automatically.
step
kill Matron Morana##137704 |q 51433/1 |goto 34.84,19.87
|next "Tortollan_Seekers_WQ"
step
label quest-51707
Follow the road |goto Drustvar/0 32.29,31.26 < 10 |only if walking
Continue following the road |goto 33.02,30.69 < 7 |only if walking
Continue following the road |goto 33.98,30.82 < 7 |only if walking
Continue following the road |goto 34.37,29.89 < 7 |only if walking
accept More Valuable Than Gold##51707 |goto Drustvar/0 35.06,30.43
|tip You will accept this quest automatically.
stickystart "Slay_Bilefang_Hunters"
step
click Silver Nugget##290975+
|tip They look like small pieces of silver on the ground around this area.
collect 6 Silver Nugget##160577 |q 51707/1 |goto 35.06,30.43
step
label "Slay_Bilefang_Hunters"
kill 8 Bilefang Hunter##132317 |q 51707/2 |goto 35.06,30.43
|next "Tortollan_Seekers_WQ"
step
label quest-51620
accept Natural Resources##51620 |goto Drustvar/0 69.06,40.57
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Venom_Glands"
stickystart "Collect_Pristine_Quilrat_Quills"
step
clicknpc Questionable Tuber##138356+
|tip They look like small bushes on the ground around this area.
|tip After clicking one, run away from it to collect the tuber.
Collect #5# Questionable Tubers |q 51620/1 |goto 67.13,41.59
step
label "Collect_Intact_Venom_Glands"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 51620/2 |goto 69.06,40.57
step
label "Collect_Pristine_Quilrat_Quills"
kill Invasive Quillrat##125401+
collect 3 Pristine Quillrat Quill##160516 |q 51620/3 |goto 67.13,41.59
|next "Tortollan_Seekers_WQ"
step
label quest-51908
Follow the path up |goto Drustvar/0 60.96,37.09 < 7 |only if walking
Continue up the path |goto 61.84,40.64 < 7 |only if walking
Continue up the path |goto 60.45,42.91 < 10 |only if walking
accept Nevermore##51908 |goto Drustvar/0 59.80,45.17
|tip You will accept this quest automatically.
step
kill Nevermore##130138 |q 51908/1 |goto 59.95,45.48
|next "Tortollan_Seekers_WQ"
step
label quest-52218
Follow the path up |goto Drustvar/0 67.53,57.85 < 7 |only if walking
Continue up the path |goto 66.07,57.05 < 7 |only if walking
Continue up the path |goto 64.42,57.23 < 10 |only if walking
accept Night Horrors##52218 |goto Drustvar/0 63.60,59.70
|tip You will accept this quest automatically.
step
talk Dilbert McClint##140461
Tell him _"Begin pet battle."_
Defeat Dilbert McClint |q 52218/1 |goto 63.60,59.70
|next "Tortollan_Seekers_WQ"
step
label quest-51454
Follow the path |goto Drustvar/0 38.52,52.53 < 7 |only if walking
Continue following the path |goto 38.38,53.74 < 7 |only if walking
Continue up the path |goto 37.60,55.04 < 7 |only if walking
accept Once More Into Battle##51454 |goto Drustvar/0 38.55,56.80
|tip You will accept this quest automatically.
step
clicknpc Weary Spirit##137788+
|tip They look like kneeling ghosts on the ground around this area.
click Ancient Cairne##289662
|tip They look like big rocks on the ground around this area.
Kill enemies around this area
Join In the Endless Battle |q 51454/1 |goto 38.21,59.18
|next "Tortollan_Seekers_WQ"
step
label quest-51505
Follow the road |goto Drustvar/0 69.90,41.44 < 7 |only if walking
Continue following the road |goto 68.94,43.27 < 7 |only if walking
Follow the path down |goto 67.40,43.68 < 7 |only if walking
accept Quillrat Matriarch##51505 |goto Drustvar/0 66.58,42.73
|tip You will accept this quest automatically.
step
kill Quillrat Matriarch##125453
|tip Inside the building.
Slay the Quillrat Matriarch |q 51505/1 |goto 66.58,42.73
|next "Tortollan_Seekers_WQ"
step
label quest-51585
accept Quit Your Witchin'##51585 |goto Drustvar/0 55.56,35.07
|tip You will accept this quest automatically.
step
Follow the path |goto 56.32,35.11 < 7 |only if walking
Follow the path |goto 57.39,35.86 < 7 |only if walking
Kill enemies around this area
click Tainted Pig Feed##277380+
|tip They look like green glowing sacks on the ground around this area.
Cleanse Fallhaven |q 51585/1 |goto 80.17,47.85
|next "Tortollan_Seekers_WQ"
step
label quest-51710
Follow the road |goto Drustvar/0 38.52,49.95 < 10 |only if walking
Continue following the road |goto 40.88,46.94 < 10 |only if walking
Continue following the road |goto 41.29,42.14 < 10 |only if walking
Continue following the road |goto 42.96,40.33 < 10 |only if walking
accept Rise of the Yetis##51710 |goto Drustvar/0 44.68,35.98
|tip You will accept this quest automatically.
stickystart "Kill_Chillfur_Yetis"
step
kill 4 Awakened Dead##136490 |q 51710/2 |goto 44.68,35.98
step
label "Kill_Chillfur_Yetis"
kill 6 Chillfur Yeti##127682 |q 51710/1 |goto 44.41,32.47
|next "Tortollan_Seekers_WQ"
step
label quest-52278
Follow the path |goto Drustvar/0 39.09,49.62 < 10 |only if walking
Continue following the path |goto 40.78,47.28 < 10 |only if walking
Continue following the path |goto 41.26,41.92 < 10 |only if walking
Continue following the path |goto 39.81,40.15 < 10 |only if walking
Continue following the path |goto 39.46,39.31 < 7 |only if walking
Continue following the path |goto 38.93,38.21 < 10 |only if walking
accept Rogue Azerite##52278 |goto Drustvar/0 38.15,38.60
|tip You will accept this quest automatically.
step
talk Jess Albury##135023
Tell her _"Begin pet battle."_
Defeat Jess Albury |q 52278/1 |goto 38.15,38.60
|next "Tortollan_Seekers_WQ"
step
label quest-49397
Follow the path |goto Drustvar/0 63.01,24.05 < 7 |only if walking
Continue following the path |goto 63.83,25.71 < 7 |only if walking
accept Sausage Party##49397 |goto Drustvar/0 64.20,29.34
|tip You will accept this quest automatically.
stickystart "Rescue_Transformed_Workers"
stickystart "Kill_Hexed_Howler"
step
click Witch Effigy##290810+
|tip They look like burning banners with antlers atop them on the ground around this area.
Destroy #5# Effigies |q 49397/3 |goto 64.20,29.34
step
label "Rescue_Transformed_Workers"
clicknpc Transformed Worker##137859
|tip They look like white pigs on the ground around this area.
Burn #5# Bloody Banners |q 49397/1 |goto 64.20,29.34
step
label "Kill_Hexed_Howler"
kill 8 Hexed Howler##124814 |q 49397/2 |goto 64.20,29.34
|next "Tortollan_Seekers_WQ"
step
label quest-51690
Follow the path |goto Drustvar/0 32.34,28.84 < 10 |only if walking
Continue following the path |goto 32.15,27.80 < 10 |only if walking
Continue following the path |goto 32.38,25.73 < 10 |only if walking
Continue following the path |goto 33.44,21.51 < 7 |only if walking
accept The Shadows of Corlain##51690 |goto Drustvar/0 32.53,20.58
|tip You will accept this quest automatically.
stickystart "Slay_Witches"
step
Follow the path |goto 32.53,20.58 < 7 |only if walking
click Dark Fissure##290822+
|tip They look like dark rifts and summoning circles on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
kill 8 Blighted Echo##138543 |q 51690/1 |goto 31.85,17.07
step
label "Slay_Witches"
Kill enemies around this area
|tip Coven Hexcallers and Heartsbane Disciples count towards this objective.
Slay #8# Witches |q 51690/2 |goto 31.85,17.07
|next "Tortollan_Seekers_WQ"
step
label quest-51625
Follow the path |goto Drustvar/0 25.41,17.08 < 7 |only if walking
Continue following the path |goto 25.38,20.03 < 7 |only if walking
Jump down here |goto 24.91,19.91 < 7 |only if walking
Follow the path down |goto 23.45,20.07 < 10 |only if walking
Cross the water |goto 22.24,21.91 < 10 |only if walking
accept Shell Game##51625 |goto Drustvar/0 21.80,22.32
|tip You will accept this quest automatically.
step
talk Collector Kojo##138476
Tell him _"I am ready."_
Speak to Collector Kojo |q 51625/1 |goto 21.80,22.32
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51625/2 |goto 21.80,22.32
|next "Tortollan_Seekers_WQ"
step
label quest-51683
accept Slash and Burn Tactics##51683 |goto Drustvar/0 71.22,58.85
|tip You will accept this quest automatically.
stickystart "Kill_Curseformed_Familiars"
stickystart "Burn_Witch_Banners"
step
clicknpc Frightened Woodsman##138525+
|tip They look like humangs cowering on the ground around this area.
Rally #6# Frightened Woodsmen |q 51683/1 |goto 71.22,58.85
step
label "Kill_Curseformed_Familiars"
kill 8 Curseformed Familiar##126151 |q 51683/2 |goto 71.22,58.85
step
label "Burn_Witch_Banners"
click Witch Banner##290443
Burn #8# Witch Banners |q 51683/3 |goto 71.22,58.85
|next "Tortollan_Seekers_WQ"
step
label quest-51687
Follow the path |goto Drustvar/0 32.36,30.15 < 7 |only if walking
Continue down the path |goto 32.26,28.36 < 7 |only if walking
accept A Smelly Solution##51687 |goto Drustvar/0 29.26,27.31
|tip You will accept this quest automatically.
step
use the Pungent Onion##160557
|tip Use it on Cursed Gyrfalcons flying around this area.
Hit #8# Cursed Gyrfalcons |q 51687/1 |goto 29.26,27.31
|next "Tortollan_Seekers_WQ"
step
label quest-51431
Cross the bridge |goto Drustvar/0 19.91,44.69 < 7 |only if walking
Follow the road up |goto 20.74,46.28 < 7 |only if walking
Continue following the road |goto 20.28,47.10 < 7 |only if walking
Continue following the road |goto 20.60,47.45 < 5 |only if walking
Continue following the road |goto 21.77,45.81 < 7 |only if walking
Continue following the road |goto 22.98,46.56 < 10 |only if walking
Continue following the road |goto 24.12,50.68 < 10 |only if walking
accept Soul Goliath##51431 |goto Drustvar/0 24.23,54.13
|tip Wait here for the Soul Goliath or search along the road for it.
|tip You will accept this quest automatically.
step
kill Soul Goliath##137665 |q 51431/1 |goto 24.23,54.13
|next "Tortollan_Seekers_WQ"
step
label quest-51434
Follow the road |goto Drustvar/0 54.80,35.29 < 7 |only if walking
Continue following the road |goto 52.76,37.14 < 7 |only if walking
Follow the path |goto 51.89,38.52 < 7 |only if walking
accept Stone Golem##51434 |goto Drustvar/0 49.81,43.70
|tip You will accept this quest automatically.
step
kill Stone Golem##137708 |q 51434/1 |goto 49.81,43.70
|next "Tortollan_Seekers_WQ"
step
label quest-52381
collect 20 Lane Snapper##152546 |q 52381 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Lane Snapper##52381 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Supplies Needed: Lane Snapper##52381 |goto 37.91,48.94
|next "Tortollan_Seekers_WQ"
step
label quest-51529
Follow the path |goto Drustvar/0 32.92,32.67 < 10 |only if walking
Continue following the path |goto 32.48,37.84 < 10 |only if walking
Continue following the path |goto 31.49,40.38 < 7 |only if walking
accept Talon##51529 |goto Drustvar/0 31.71,40.61
|tip You will accept this quest automatically.
step
kill Talon##129950 |q 51529/1 |goto 31.93,40.63
|next "Tortollan_Seekers_WQ"
step
label quest-51672
Follow the path |goto Drustvar/0 68.22,57.59 < 10 |only if walking
Follow the path up |goto 67.21,55.25 < 10 |only if walking
accept Tangled Webs##51672 |goto Drustvar/0 65.11,53.55
|tip You will accept this quest automatically.
step
kill Venomous Weaver##125130
click Egg Sac##290754+
|tip They look like bulging white eggs on the ground near trees around this area.
Kill Spiders and Egg Sacs |q 51672/1 |goto 80.17,47.85
|next "Tortollan_Seekers_WQ"
step
label quest-51667
Follow the path |goto Drustvar/0 32.42,28.92 < 10 |only if walking
accept This Bird You Cannot Change##51667 |goto Drustvar/0 31.85,24.67
|tip You will accept this quest automatically.
step
kill 5 Hexthralled Falconer##131519 |q 51667/2 |goto 31.85,24.67
step
use the Falconer's Whistle##157845
|tip Use the "Launch Falcon" ability on your action bar to destroy Wicker Charms.
|tip They look like small dreamcatchers hanging from trees and structures around this area.
Destroy #7# Wicker Charms |q 51667/1 |goto 31.85,24.67
step
Click the "Exit" Button on Your Action Bar |outvehicle
|next "Tortollan_Seekers_WQ"
step
label quest-51619
Follow the road |goto Drustvar/0 69.86,41.49 < 10 |only if walking
accept Trapline##51619 |goto Drustvar/0 68.20,44.90
|tip You will accept this quest automatically.
stickystart "Kill_Watchful_Ravens"
stickystart "Kill_Darkmaw_Prowlers"
step
Follow the road |goto 69.86,41.49 < 10 |only if walking
click Place Trap##290718+
|tip They look like small bear traps on the ground around this area.
Place #6# Traps |q 51619/3 |goto 68.20,44.90
step
label "Kill_Watchful_Ravens"
kill 4 Watchful Raven##125411 |q 51619/1 |goto 68.20,44.90
step
label "Kill_Darkmaw_Prowlers"
kill 6 Darkmaw Prowler##125464 |q 51619/2 |goto 68.20,44.90
|next "Tortollan_Seekers_WQ"
step
label quest-51397
Follow the road |goto Drustvar/0 32.29,31.26 < 10 |only if walking
Continue following the road |goto 33.02,30.69 < 7 |only if walking
Follow the path |goto 34.92,31.70 < 10 |only if walking
accept Up In Your Drill##51397 |goto Drustvar/0 36.36,35.67
|tip You will accept this quest automatically.
step
click Silver Nugget##290975+
Commandeer the Mining Machine |q 51397/1 |goto 36.36,35.67
step
kill 8 Bilefang Hunter##132317 |q 51397/2 |goto 36.36,35.67
|next "Tortollan_Seekers_WQ"
step
label quest-51508
Follow the path |goto Drustvar/0 70.45,60.01 < 7 |only if walking
accept Vicemaul##51508 |goto Drustvar/0 72.27,60.82
|tip You will accept this quest automatically.
step
click Untended Fishing Rod##127652
Reel in Vicemaul |q 51508/1 |goto 72.84,60.49
step
kill Vicemaul##127651 |q 51508/2 |goto 72.84,60.49
|next "Tortollan_Seekers_WQ"
step
label quest-51530
accept Wedding Crashers##51530 |goto Drustvar/0 24.65,14.39
|tip You will accept this quest automatically.
stickystart "Collect_Wedding_Gifts"
stickystart "Slay_Invaders"
step
clicknpc Terrified Guest##137909+
|tip They look like cowering humans around this area.
Rescue #12# Terrified Guests |q 51530/1 |goto 23.84,14.25
step
label "Collect_Wedding_Gifts"
click Wedding Gift##290133+
|tip They look like small presents around this area.
Collect #6# Wedding Gifts |q 51530/2 |goto 23.84,14.25
step
label "Slay_Invaders"
Kill Invading enemies around this area
Slay #10# Invaders |q 51530/3 |goto 23.84,14.25
|next "Tortollan_Seekers_WQ"
step
label quest-51457
Follow the path |goto Drustvar/0 63.41,22.13 < 10 |only if walking
accept Whargarble the Ill-Tempered##51457 |goto Drustvar/0 64.98,21.37
|tip You will accept this quest automatically.
step
kill Whargarble the Ill-Tempered##128973 |q 51457/1 |goto 64.98,21.37
|next "Tortollan_Seekers_WQ"
step
label quest-51676
Follow the path |goto Drustvar/0 71.18,42.99 < 7 |only if walking
Cross the water |goto 70.62,46.15 < 10 |only if walking
Follow the path |goto 70.15,47.34 < 10 |only if walking
accept What a Gull Wants##51676 |goto Drustvar/0 70.47,50.33
|tip You will accept this quest automatically.
stickystart "Collect_Mudfish_Innards"
stickystart "Collect_Snapclaw_Meat"
step
kill 10 Ravenous Gull##127530 |q 51676/1 |goto 70.47,50.33
step
label "Collect_Mudfish_Innards"
click Intact Mudfish##290775+
|tip They look like small dead fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 51676/2 |goto 70.47,50.33
step
label "Collect_Snapclaw_Meat"
kill Scavenging Snapclaw##127526+
|tip They can be found along the water around this area.
collect 15 Snapclaw Meat##152865 |q 51676/3 |goto 70.47,50.33
|next "Tortollan_Seekers_WQ"
step
label quest-52297
Cross the bridge |goto Drustvar/0 62.73,23.26 < 7 |only if walking
Follow the road |goto 62.54,22.40 < 7 |only if walking
Continue following the road |goto 62.27,20.89 < 7 |only if walking
Continue following the road |goto 61.95,19.61 < 7 |only if walking
accept What's the Buzz?##52297 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
talk Michael Skarn##140880
Tell him _"Begin pet battle."_
Defeat Michael Skarn |q 52297/1 |goto 61.06,17.71
|next "Tortollan_Seekers_WQ"
step
label quest-51686
accept Where My Witches at?##51686 |goto Drustvar/0 69.93,60.39
|tip You will accept this quest automatically.
step
clicknpc Dormant Ravager##138532
Control the Dormant Ravager |q 51686/1 |goto 69.93,60.39
step
Kill enemies around this area
|tip Use the abilities on your hotbar.
Slay Heartsbane Minions |q 51686/2 |goto 69.49,62.81
|next "Tortollan_Seekers_WQ"
step
label quest-51694
accept Which Witch?##51694 |goto Drustvar/0 38.15,50.97
|tip You will accept this quest automatically.
stickystart "Destroy_Heartsbane_Objects"
step
clicknpc Corlain Refugee##129641+
use Lucille's Sewing Needle##160571
|tip Use it on refugees around this area.
Test #10# Corlain Refugees |q 51694/1 |goto 38.15,50.97
step
label "Destroy_Heartsbane_Objects"
click Heartsbane Grimoire##290896+
|tip They look like small books around this area.
click Heartsbane Scrolls##290898+
|tip They look like bundles of scrolls around this area.
click Heartsbane Focus##290897+
|tip They look like hanging idols on buildings around this area.
Destroy #10# Heartsbane Objects |q 51694/2 |goto 38.15,50.97
|next "Tortollan_Seekers_WQ"
step
label quest-51988
Follow the path up |goto Drustvar/0 27.31,70.60 < 7 |only if walking
Continue up the path |goto 27.81,68.88 < 7 |only if walking
Continue up the path |goto 27.37,67.72 < 7 |only if walking
Continue up the path |goto 28.39,66.54 < 7 |only if walking
Continue up the path |goto 27.79,66.57 < 7 |only if walking
Continue up the path |goto 27.80,64.22 < 10 |only if walking
accept Whitney "Steelclaw" Ramsay##51988 |goto Drustvar/0 29.34,63.89
|tip You will accept this quest automatically.
step
kill Whitney "Steelclaw" Ramsay##139322 |q 51988/1 |goto 29.50,64.10
|next "Tortollan_Seekers_WQ"
step
label quest-51682
Follow the path |goto Drustvar/0 32.37,29.25 < 10 |only if walking
Continue following the path |goto 32.12,27.48 < 10 |only if walking
Continue following the path |goto 32.41,25.85 < 10 |only if walking
Continue following the path |goto 33.14,23.74 < 10 |only if walking
Continue following the path |goto 30.95,20.80 < 7 |only if walking
Continue following the path |goto 34.76,20.73 < 7 |only if walking
accept Witches by the Dozen##51682 |goto Drustvar/0 31.44,18.66
|tip You will accept this quest automatically.
stickystart "Slay_12_Witches"
step
kill 4 Blighted Horror##137568 |q 51682/1 |goto 31.44,18.66
step
label "Slay_12_Witches"
Kill enemies around this area
|tip Hexbane Disciples and Coven Hexcallers count for this objective.
Slay #12# Witches |q 51682/2 |goto 31.44,18.66
|next "Tortollan_Seekers_WQ"
step
label quest-52357
collect 3 Enchant Weapon - Quick Navigation##159786 |q 52357 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Quick Navigation##52357 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Enchant Weapon - Quick Navigation##52357 |goto 37.91,48.94
|next "Tortollan_Seekers_WQ"
step
label quest-50987
collect 40 Monelite Ore##152512 |q 50987 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Monelite Ore##50987 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Monelite Ore##50987 |goto 37.91,48.94
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Nazmir World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Nazmir, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=863,
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-51131
accept Absolutely Barbaric##51131 |goto Nazmir/0 61.64,55.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
Raze Zal'amak |q 51131/1 |goto 61.64,55.80
|next "Tortollan_Seekers_WQ"
step
label quest-52803
accept Accidental Dread##52803 |goto Nazmir/0 43.02,38.86
|tip You will accept this quest automatically.
step
talk Korval Darkbeard##141814
Tell him _"Begin pet battle."_
Defeat Korval Darkbeard |q 52803/1 |goto 43.02,38.86
|next "Tortollan_Seekers_WQ"
step
label quest-50488
accept Ancient Jawbreaker##50488 |goto Nazmir/0 67.82,29.39
|tip You will accept this quest automatically.
step
kill Ancient Jawbreaker##125250 |q 50488/1 |goto 67.81,29.51
|next "Tortollan_Seekers_WQ"
step
label quest-52832
Follow the path |goto Nazmir/0 61.67,40.72 < 7 |only if walking
Cross the water |goto 61.45,37.06 < 10 |only if walking
Continue following the path |goto 62.87,33.82 < 10 |only if walking
Continue following the path |goto 62.87,32.52 < 10 |only if walking
accept Azerite Empowerment##52832 |goto Nazmir/0 67.25,22.65
|tip You will accept this quest automatically.
step
Enter the cave |goto 67.66,21.84 < 7 |walk
kill Zebast the Everliving##141905
|tip Inside the cave.
Slay Zebast the Everliving |q 52832/1 |goto 67.67,21.09
|next "Tortollan_Seekers_WQ"
step
label quest-51412
accept Azerite Empowerment##51412 |goto Nazmir/0 23.50,62.81
|tip You will accept this quest automatically.
step
kill Chaka the Infused##137663 |q 51412/1 |goto 23.50,62.81
|next "Tortollan_Seekers_WQ"
step
label quest-51415
accept Azerite Madness##51415 |goto Nazmir/0 23.04,63.83
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51415/1 |goto 23.09,64.00
|next "Tortollan_Seekers_WQ"
step
label quest-51411
accept Azerite Mining##51411 |goto Nazmir/0 23.04,63.83
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##136722+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##287086+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51411/1 |goto 23.09,64.00
|next "Tortollan_Seekers_WQ"
step
label quest-52884
accept Azerite Wounds##52884 |goto Nazmir/0 26.64,80.19
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Clear the enemies from glowing blue Azerite Wounds around this area.
|tip While standing on one, use the "Heart of Azeroth" ability that appears onscreen.
Heal #5# Azeroth Wounds |q 52884/1 |goto 26.64,80.19
|next "Tortollan_Seekers_WQ"
step
label quest-50511
accept Bajiatha##50511 |goto Nazmir/0 42.83,60.53
|tip You will accept this quest automatically.
step
kill Bajiatha##126142 |q 50511/1 |goto 42.83,60.53
|next "Tortollan_Seekers_WQ"
step
label quest-51640
Follow the path |goto Nazmir/0 51.54,19.44 < 10 |only if walking
Continue following the path |goto 53.18,19.29 < 10 |only if walking
Continue following the path |goto 54.51,18.54 < 7 |only if walking
Continue following the path |goto 56.70,17.73 < 10 |only if walking
Follow the path up |goto 60.30,13.06 < 15 |only if walking
Follow the path |goto 62.64,10.05 < 15 |only if walking
Continue following the path |goto 70.03,9.24 < 15 |only if walking
Continue following the path |goto 73.47,10.59 < 10 |only if walking
accept Beachhead##51640 |goto Nazmir/0 74.19,10.08
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51640/1 |goto 74.19,10.08
|next "Tortollan_Seekers_WQ"
step
label quest-51550
accept Bubbles and Trouble##51550 |goto Nazmir/0 32.60,54.97
|tip You will accept this quest automatically.
stickystart "Slay_Empowered_Worshippers"
step
clicknpc Corruption Source##134583+
Destroy #3# Corruption Sources |q 51550/2 |goto 32.60,54.97
step
label "Slay_Empowered_Worshippers"
kill 12 Empowered Worshipper##127224 |q 51550/1 |goto 32.60,54.97
|next "Tortollan_Seekers_WQ"
step
label quest-50962
Follow the path |goto Nazmir/0 61.88,42.32 < 10 |only if walking
Continue following the path |goto 62.98,45.12 < 10 |only if walking
Follow the road |goto 63.20,48.96 < 10 |only if walking
Follow the path |goto 60.70,57.52 < 10 |only if walking
Follow the road |goto 61.84,63.38 < 10 |only if walking
accept Cargo Reclamation##50962 |goto Nazmir/0 60.16,67.71
|tip You will accept this quest automatically.
stickystart "Collect_Ransacked_Supplies"
step
click Rope Ladder##294168 |goto 60.77,69.12
kill Xuxuga the Plunderer##135377 |q 50962/1 |goto 61.33,68.57
step
label "Collect_Ransacked_Supplies"
collect 6 Ransacked Supplies## |q 50962/2 |goto 59.71,68.61
|next "Tortollan_Seekers_WQ"
step
label quest-50568
accept Chag's Challenge##50568 |goto Nazmir/0 68.92,20.06
|tip You will accept this quest automatically.
step
kill Lucille##134296 |q 50568/1 |goto 68.12,20.21
|next "Tortollan_Seekers_WQ"
step
label quest-52779
accept Crawg in the Bog##52779 |goto Nazmir/0 46.65,73.79
|tip You will accept this quest automatically.
step
clicknpc Bloodtusk##141588
Defeat Bloodtusk |q 52779/1 |goto 46.65,73.79
|next "Tortollan_Seekers_WQ"
step
label quest-50492
accept Cursed Chest##50492 |goto Nazmir/0 81.80,30.54
|tip You will accept this quest automatically.
step
click Cursed Chest##272631
Choose _<Attempt to open the chest.>_
kill Captain Mu'kala##125232 |q 50492/1 |goto 81.80,30.54
|next "Tortollan_Seekers_WQ"
step
label quest-50899
accept Don't Stalk Me, Troll##50899 |goto Nazmir/0 35.70,76.42
|tip You will accept this quest automatically.
step
use Talanji's Mojo##158324
Use Talanji's Mojo Potion |q 50899/1 |goto 35.70,76.42
step
Kill Blood Troll enemies around this area
Slay #12# Blood Troll Invaders |q 50899/2 |goto 35.70,76.42
|next "Tortollan_Seekers_WQ"
step
label quest-51166
accept Down to the Roots##51166 |goto Nazmir/0 46.74,33.74
|tip You will accept this quest automatically.
stickystart "Destroy_Bloodlasher_Seedlings"
step
kill Root-Hexxer Ib'aka##131596 |q 51166/2 |goto 48.85,28.53
step
label "Destroy_Bloodlasher_Seedlings"
clicknpc Bloodlasher Seedling##133860+
|tip They look like small carnivorious plants on the ground around this area.
Destroy #15# Bloodlasher Seedlings |q 51166/1 |goto 49.07,34.32
|next "Tortollan_Seekers_WQ"
step
label quest-51172
accept Forked Lightning##51172 |goto Nazmir/0 29.24,38.53
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
collect 25 Skycaller Gem Chip##157861 |q 51172/1 |goto 27.14,39.10
step
Enter the building |goto 27.37,39.70 < 3 |walk
click Gemcaller Matrix##136001
Restore the Skycaller Gem |q 51172/2 |goto 27.25,39.41
|next "Tortollan_Seekers_WQ"
step
label quest-51127
Follow the path |goto Nazmir/0 51.54,19.44 < 10 |only if walking
Continue following the path |goto 53.18,19.29 < 10 |only if walking
Continue following the path |goto 54.51,18.54 < 7 |only if walking
Continue following the path |goto 56.70,17.73 < 10 |only if walking
accept Getting Out of Hand##51127 |goto Nazmir/0 62.67,13.99
|tip You will accept this quest automatically.
step
Use the special action button on-screen
Become the Hand of Fate |invehicle |goto 62.67,13.99
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Destroy #40# Undead |q 51127/1 |goto 62.67,13.99
|next "Tortollan_Seekers_WQ"
step
label quest-50498
accept Gutrip##50498 |goto Nazmir/0 32.80,43.10
|tip You will accept this quest automatically.
step
kill Gutrip##128426
|tip It patrols a circle around this area.
|tip It will show up on your minimap as a yellow star.
Slay Gutrip |q 50498/1 |goto 32.80,43.10
|next "Tortollan_Seekers_WQ"
step
label quest-51546
accept It's the Pits##51546 |goto Nazmir/0 24.68,47.71
|tip You will accept this quest automatically.
stickystart "Kill_Bone_Raptors"
step
clicknpc Goblin Prospector##134759+
|tip They look like tar-covered goblins in tar pits around this area.
Rescue #4# Surveyors |q 51546/2 |goto 24.68,47.71
step
label "Kill_Bone_Raptors"
kill 8 Bone Raptor##130735+ |q 51546/1 |goto 24.68,47.71
|next "Tortollan_Seekers_WQ"
step
label quest-50506
Follow the path |goto Nazmir/0 60.23,44.19 < 15 |only if walking
Follow the path up |goto 56.65,41.80 < 10 |only if walking
Follow the road |goto 55.20,41.20 < 7 |only if walking |goto 52.47,41.22
Continue following the road |goto 52.47,41.22 < 7 |only if walking
Follow the path |goto 51.39,42.12 < 10 |only if walking
Continue following the path |goto 52.01,44.52 < 10 |only if walking
Run up the stairs |goto 52.62,44.16 < 5 |only if walking
Run up the stairs |goto 52.88,43.60 < 7 |only if walking
accept King Kooba##50506 |goto Nazmir/0 53.42,42.84
|tip You will accept this quest automatically.
step
kill King Kooba##129005 |q 50506/1 |goto 53.42,42.84
|next "Tortollan_Seekers_WQ"
step
label quest-50507
accept Krubbs##50507 |goto Nazmir/0 76.10,36.64
|tip You will accept this quest automatically.
step
Enter the building |goto 75.92,36.36 < 3 |walk
kill Krubbs##125214
|tip Inside the building.
Slay Krubbs |q 50507/1 |goto 75.71,35.95
|next "Tortollan_Seekers_WQ"
step
label quest-50509
accept Lo'kuno##50509 |goto Nazmir/0 77.72,45.16
|tip You will accept this quest automatically.
step
kill Lo'kuno##133539 |q 50509/1 |goto 77.72,45.16
|next "Tortollan_Seekers_WQ"
step
label quest-50566
Follow the path |goto Nazmir/0 62.11,41.40 < 5 |only if walking
Continue following the path |goto 61.96,42.36 < 7 |only if walking
Continue following the path |goto 62.74,43.29 < 10 |only if walking
Cross the water |goto 63.59,43.66 < 7 |only if walking
Cross the water |goto 64.78,45.18 < 10 |only if walking
Follow the path |goto 66.73,44.39 < 7 |only if walking
Continue following the path |goto 68.20,44.95 < 7 |only if walking
Continue following the path |goto 68.77,44.69 < 7 |only if walking
Continue following the path |goto 71.51,45.81 < 7 |only if walking
Continue up the path |goto 72.88,45.31 < 7 |only if walking
Continue down the path |goto 74.91,48.30 < 7 |only if walking
Continue following the path |goto 75.85,49.45 < 7 |only if walking
Continue following the path |goto 77.23,50.67 < 7 |only if walking
Continue following the path |goto 79.24,55.64 < 7 |only if walking
Cross the water |goto 80.15,57.49 < 7 |only if walking
accept Lost Scroll##50566 |goto Nazmir/0 81.68,61.07
|tip You will accept this quest automatically.
step
click Lost Scroll##134295
kill Vilescale Guardian##125393 |q 50566/1 |goto 81.68,61.07
|next "Tortollan_Seekers_WQ"
step
label quest-50517
accept Mala'kili and Rohnkor##50517 |goto Nazmir/0 53.77,53.31
|tip You will accept this quest automatically.
step
kill Mala'kili##128935
|tip He runs around this area.
Slay Mala'kili |q 50517/1 |goto 53.77,53.31
|next "Tortollan_Seekers_WQ"
step
label quest-52754
accept Marshdwellers##52754 |goto Nazmir/0 72.83,49.04
|tip You will accept this quest automatically.
step
Enter the cave |goto 72.84,48.97 < 5 |walk
talk Lozu##141529
|tip Inside the cave.
Tell her _"Begin pet battle."_
Defeat Lozu |q 52754/1 |goto 72.85,48.60
|next "Tortollan_Seekers_WQ"
step
label quest-51548
accept Nagative Feedback##51548 |goto Nazmir/0 77.05,50.52
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Infused Trident Rack##287159+
|tip They look like large weapon racks on the ground around this area.
click Empowering Totem##134372+
|tip The look like small idols on the ground around this area.
Disrupt the Naga Encampment |q 51548/1 |goto 75.29,46.26
You can find more around [81.37,52.08]
|next "Tortollan_Seekers_WQ"
step
label quest-52799
accept Pack Leader##52799 |goto Nazmir/0 35.93,54.59
|tip You will accept this quest automatically.
step
talk Grady Prett##141799
Tell him _"Begin pet battle."_
Defeat Grady Prett |q 52799/1 |goto 35.93,54.59
|next "Tortollan_Seekers_WQ"
step
label quest-51154
accept Past Due##51154 |goto Nazmir/0 68.45,35.34
|tip You will accept this quest automatically.
step
click Ancient Texts##287161+
|tip They look like large tablets on the ground around this area.
|tip If you have trouble finding them, check inside buildings.
Examine #8# Ancient Text |q 51154/1 |goto 68.45,35.34
|next "Tortollan_Seekers_WQ"
step
label quest-50961
accept Save Our Scrolls!##50961 |goto Nazmir/0 61.32,26.40
|tip You will accept this quest automatically.
step
click Grimy Scroll##281722+
|tip They look like small glowing scrolls on the ground around this area.
collect 12 Intact Tortollan Scroll##158176 |q 50961/1 |goto 61.32,26.40
|next "Tortollan_Seekers_WQ"
step
label quest-50512
Follow the path |goto Nazmir/0 61.63,40.67 < 7 |only if walking
accept Scout Skrasniss##50512 |goto Nazmir/0 59.15,38.72
|tip You will accept this quest automatically.
step
kill Scout Skrasniss##127820 |q 50512/1 |goto 59.15,38.72
|next "Tortollan_Seekers_WQ"
step
label quest-51628
accept Shell Game##51628 |goto Nazmir/0 72.13,40.63
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51628/1 |goto 72.13,40.63
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51628/2 |goto 72.13,40.63
|next "Tortollan_Seekers_WQ"
step
label quest-50468
accept Shul-Nagruth##50468 |goto Nazmir/0 48.41,66.86
|tip You will accept this quest automatically.
step
kill Maw of Shul-Nagruth##128610 |q 50468/1 |goto 49.86,67.21
|next "Tortollan_Seekers_WQ"
step
label quest-52785
accept Smashing Zalamar##52785 |goto Nazmir/0 32.56,45.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Repulsive Container##281835+
|tip They look like large dark-colored urns on the ground around this area.
Disrupt Zalamar |q 52785/1 |goto 32.56,45.62
|next "Tortollan_Seekers_WQ"
step
label quest-52181
accept Smoke and Shadow##52181 |goto Nazmir/0 35.43,32.18
|tip You will accept this quest automatically.
step
kill T'zane##132701
|tip Do not stand in front of T'zane during "Terror Wail." |grouprole EVERYONE
|tip Do not touch any "Coalesced Essences." |grouprole EVERYONE
|tip Do not stand near other players when affected by "Consuming Spirits." |grouprole HEALER
|tip Do not stand near other players when affected by "Consuming Spirits." |grouprole DAMAGE
Slay T'zane |q 52181/1 |goto 35.43,32.18
|next "Tortollan_Seekers_WQ"
step
label quest-50936
Follow the path |goto Nazmir/0 62.11,41.40 < 5 |only if walking
Continue following the path |goto 61.96,42.36 < 7 |only if walking
Continue following the path |goto 62.74,43.29 < 10 |only if walking
Cross the water |goto 63.59,43.66 < 7 |only if walking
Cross the water |goto 64.78,45.18 < 10 |only if walking
Follow the path |goto 66.73,44.39 < 7 |only if walking
Continue following the path |goto 68.20,44.95 < 7 |only if walking
Continue following the path |goto 68.77,44.69 < 7 |only if walking
Continue following the path |goto 71.78,45.98 < 7 |only if walking
Continue following the path |goto 72.03,47.40 < 7 |only if walking
Continue following the path |goto 71.78,49.36 < 10 |only if walking
Continue following the path |goto 72.27,54.51 < 7 |only if walking
Continue up the path |goto 72.37,56.66 < 7 |only if walking
accept Survival Strategy##50936 |goto Nazmir/0 73.19,58.56
|tip You will accept this quest automatically.
stickystart "Collect_Diremaw_Hides"
stickystart "Collect_Pterrordax_Claws"
step
Kill Shore Saurid enemies around this area
collect 30 Saurid Feather##158191 |q 50936/1 |goto 73.21,60.44
step
label "Collect_Diremaw_Hides"
kill Diremaw##128620+
|tip You can find plenty of them in the water.
collect 5 Diremaw Hide##158193 |q 50936/2 |goto 73.39,62.88
step
label "Collect_Pterrordax_Claws"
Kill Seaspray enemies around this area
collect 3 Pterrordax Wingclaw##158192 |q 50936/3 |goto 73.21,60.44
|next "Tortollan_Seekers_WQ"
step
label quest-50513
accept Tainted Guardian##50513 |goto Nazmir/0 32.21,37.86
|tip You will accept this quest automatically.
step
kill Tainted Guardian##126460 |q 50513/1 |goto 31.51,38.20
|next "Tortollan_Seekers_WQ"
step
label quest-51176
accept Unaccounted For##51176 |goto Nazmir/0 35.99,83.03
|tip You will accept this quest automatically.
stickystart "Slay_Primal_Skyterrors"
step
clicknpc Advance Scout##136681+
|tip They look like injured Alliance scouts on the ground around this area.
Rescue #6# Injured Advance Scouts |q 51176/2 |goto 35.48,84.48
step
label "Slay_Primal_Skyterrors"
use the Grappling Hook##159761
|tip Use it on flying Primal Skyterrors.
kill Primal Skyterror##126702+
Slay #10# Primal Skyterrors |q 51176/1 |goto 35.48,84.48
|next "Tortollan_Seekers_WQ"
step
label quest-50459
accept Vugthuth##50459 |goto Nazmir/0 46.74,33.74
|tip You will accept this quest automatically.
step
kill Vugthuth##128584 |q 50459/1 |goto 46.74,33.74
|next "Tortollan_Seekers_WQ"
step
label quest-50516
accept Wardrummer Zurula##50516 |goto Nazmir/0 47.66,49.55
|tip You will accept this quest automatically.
step
kill Wardrummer Zurula##126907 |q 50516/1 |goto 48.96,50.77
|next "Tortollan_Seekers_WQ"
step
label quest-50518
accept Zanxib##50518 |goto Nazmir/0 39.01,71.46
|tip You will accept this quest automatically.
step
kill Zanxib##133812 |q 50518/1 |goto 39.01,71.46
|next "Tortollan_Seekers_WQ"
step
label quest-50461
accept Zujothgul##50461 |goto Nazmir/0 39.59,50.83
|tip You will accept this quest automatically.
step
kill Zujothgul##128578 |q 50461/1 |goto 39.59,50.83
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Stormsong Valley World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Stormsong Valley, Kul Tiras.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=942,
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-51855
Follow the path |goto Stormsong Valley/0 41.64,57.96 < 7 |only if walking
accept A Pirate's Life For Me##51855 |goto Stormsong Valley/0 38.59,57.23
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 6 Irontide Key##160895 |goto 36.89,54.91 |q 51855
step
click Irontide Cage##291196+
|tip They look like wooden cages witch children inside around this area.
Rescue #6# Children |q 51855/1 |goto 36.89,54.91
|next "Tortollan_Seekers_WQ"
step
label quest-52165
accept Automated Chaos##52165 |goto Stormsong Valley/0 36.53,33.64
|tip You will accept this quest automatically.
step
talk Eddie Fixit##140315
Tell him _"Begin pet battle."_
Defeat Eddie Fixit |q 52165/1 |goto 36.53,33.64
|next "Tortollan_Seekers_WQ"
step
label quest-51617
Follow the path |goto Stormsong Valley/0 69.21,66.06 < 7 |only if walking
Continue following the path |goto 70.93,66.89 < 10 |only if walking
Continue following the path |goto 72.21,70.61 < 10 |only if walking
Follow the path up |goto 72.19,72.77 < 10 |only if walking
Continue up the path |goto 73.35,77.96 < 7 |only if walking
Continue up the path |goto 73.29,78.99 < 7 |only if walking
Continue up the path |goto 73.75,79.80 < 7 |only if walking
Continue up the path |goto 73.20,82.07 < 10 |only if walking
accept Azerite Empowerment##51617 |goto Stormsong Valley/0 70.80,85.80
|tip You will accept this quest automatically.
step
kill Tidesage Morris##138332 |q 51617/1 |goto 70.80,85.80
|next "Tortollan_Seekers_WQ"
step
label quest-52871
Cross the bridge |goto Stormsong Valley/0 65.63,49.05 < 7 |only if walking
Follow the path up |goto 67.14,52.44 < 7 |only if walking
Continue up the path |goto 69.10,54.53 < 10 |only if walking
accept Azerite Empowerment##52871 |goto Stormsong Valley/0 72.36,52.49
|tip You will accept this quest automatically.
step
Jump down here |goto 72.45,50.94 < 7 |only if walking
Enter the cave |goto 72.85,51.09 < 5 |walk
Follow the path |goto 72.53,51.67 < 5 |walk
kill Herald Zaxuthril##141985
|tip Inside the cave.
Slay Herald Zaxuthril |q 52871/1 |goto 72.19,52.10
|next "Tortollan_Seekers_WQ"
step
label quest-51618
Follow the path |goto Stormsong Valley/0 59.94,71.33 < 10 |only if walking
Continue following the path |goto 62.87,74.18 < 10 |only if walking
Follow the path up |goto 64.36,78.41 < 7 |only if walking
Continue up the path |goto 65.12,79.58 < 10 |only if walking
Continue up the path |goto 64.78,80.91 < 10 |only if walking
Continue up the path |goto 66.34,81.16 < 7 |only if walking
Continue up the path |goto 67.63,81.84 < 7 |only if walking
accept Azerite Madness##51618 |goto Stormsong Valley/0 68.15,83.06
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51618/1 |goto 70.23,85.41
|next "Tortollan_Seekers_WQ"
step
label quest-52873
Follow the road |goto Stormsong Valley/0 32.22,64.97 < 10 |only if walking
Follow the path |goto 34.57,65.48 < 10 |only if walking
accept Azerite Mining##52873 |goto Stormsong Valley/0 36.22,67.50
|tip You will accept this quest automatically.
step
Enter the cave |goto 36.22,67.50 < 5 |only if walking
Follow the path down |goto 36.91,69.03 < 7 |only if walking
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52873/1 |goto 35.99,69.93
|next "Tortollan_Seekers_WQ"
step
label quest-51644
Follow the path |goto Stormsong Valley/0 68.94,66.60 < 7 |only if walking
Continue following the path |goto 70.66,66.53 < 10 |only if walking
Continue following the path |goto 71.33,68.13 < 10 |only if walking
Continue up the path |goto 72.14,70.63 < 10 |only if walking
Continue up the path |goto 72.34,73.76 < 10 |only if walking
Continue up the path |goto 72.67,75.38 < 7 |only if walking
Continue up the path |goto 73.38,76.85 < 10 |only if walking
Continue up the path |goto 73.29,78.93 < 7 |only if walking
Continue up the path |goto 73.77,79.67 < 7 |only if walking
Continue up the path |goto 73.14,82.44 < 10 |only if walking
accept Azerite Mining##51644 |goto Stormsong Valley/0 71.17,85.40
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51644/1 |goto 71.17,85.40
|next "Tortollan_Seekers_WQ"
step
label quest-51623
Follow the path |goto Stormsong Valley/0 68.94,66.60 < 7 |only if walking
Continue following the path |goto 70.66,66.53 < 10 |only if walking
Continue following the path |goto 71.33,68.13 < 10 |only if walking
Continue up the path |goto 72.14,70.63 < 10 |only if walking
Continue up the path |goto 72.34,73.76 < 10 |only if walking
Continue up the path |goto 72.67,75.38 < 7 |only if walking
Continue up the path |goto 73.38,76.85 < 10 |only if walking
Continue up the path |goto 73.29,78.93 < 7 |only if walking
Continue up the path |goto 73.77,79.67 < 7 |only if walking
accept Azerite Wounds##51623 |goto Stormsong Valley/0 72.54,83.41
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Clear the enemies from glowing blue Azerite Wounds around this area.
|tip While standing on one, use the "Heart of Azeroth" ability that appears onscreen.
Heal #5# Azeroth Wounds |q 51623/1 |goto 70.77,85.33
|next "Tortollan_Seekers_WQ"
step
label quest-51639
Follow the road |goto Stormsong Valley/0 28.83,64.14 < 10 |only if walking
Follow the path |goto 29.72,61.78 < 10 |only if walking
Continue following the path |goto 29.03,59.68 < 10 |only if walking
accept Beachhead##51639 |goto Stormsong Valley/0 30.32,56.68
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51639/1 |goto 30.32,56.68
|next "Tortollan_Seekers_WQ"
step
label quest-52330
Follow the path |goto Stormsong Valley/0 59.95,71.47 < 10 |only if walking
Continue following the path |goto 64.09,74.23 < 10 |only if walking
Continue following the path |goto 66.15,74.40 < 10 |only if walking
accept Beehemoth##52330 |goto Stormsong Valley/0 68.12,74.57
|tip You will accept this quest automatically.
step
kill Beehemoth##134147 |q 52330/1 |goto 68.16,74.84
|next "Tortollan_Seekers_WQ"
step
label quest-52865
Follow the road up |goto Stormsong Valley/0 51.58,70.14 < 7 |only if walking
Follow the path |goto 52.26,72.90 < 7 |only if walking
Cross the bridge |goto 52.46,74.41 < 7 |only if walking
Follow the path up |goto 52.90,75.25 < 7 |only if walking
Continue following the path |goto 54.31,77.59 < 7 |only if walking
Continue up the path |goto 55.64,78.53 < 10 |only if walking
Follow the road |goto 56.81,81.05 < 7 |only if walking
accept Blockade Runner##52865 |goto Stormsong Valley/0 57.12,83.03
|tip You will accept this quest automatically.
step
talk Stormsong Sentinel##137985
Tell them _"Open this pass at once."_
Route #8# Stormsong Blockades |q 52865/1 |goto 57.57,83.61
|next "Tortollan_Seekers_WQ"
step
label quest-53286
Cross the bridge |goto Stormsong Valley/0 66.86,45.95 < 10 |only if walking
Follow the path |goto 66.94,44.19 < 7 |only if walking
Run up the stairs |goto 67.36,44.14 < 7 |only if walking
Follow the path |goto 67.22,42.59 < 7 |only if walking
Jump down here |goto 67.45,42.56 < 7 |only if walking
accept Blooming Siren's Sting##53286 |goto Stormsong Valley/0 68.57,41.38
|tip You will accept this quest automatically.
step
click Blooming Siren's Sting##143727
Gather a Blooming Siren's Sting |q 53286/1 |goto 68.57,41.38
|next "Tortollan_Seekers_WQ"
step
label quest-52045
Follow the path up |goto Stormsong Valley/0 50.10,69.45 < 7 |only if walking
accept Boarder Patrol##52045 |goto Stormsong Valley/0 48.21,70.16
|tip You will accept this quest automatically.
step
clicknpc Ornery Battleboar##139707
Ride an Ornery Battleboar |q 52045/1 |goto 48.21,70.16
step
Kill enemies around this area.
|tip Run through them while riding the boar.
Slay #50# Briaback Quilboars. |q 52045/2 |goto 45.43,72.22
|next "Tortollan_Seekers_WQ"
step
label quest-52180
Cross the bridge |goto Stormsong Valley/0 58.05,67.48 < 10 |only if walking
accept A Brennadam Shame##52180 |goto Stormsong Valley/0 56.43,62.98
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Sapper Charge##103512+
|tip They look like bombs ready to explode on the ground around this area.
click Horde Mortar##292815+
|tip They look like  small cannons on the ground around this area.
Defend Brennadam |q 52180/1 |goto 56.43,62.98
|next "Tortollan_Seekers_WQ"
step
label quest-52071
Follow the path up |goto Stormsong Valley/0 50.02,69.42 < 10 |only if walking
Continue up the path |goto 48.39,70.13 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
accept Briarback Mountain##52071 |goto Stormsong Valley/0 47.56,70.74
|tip You will accept this quest automatically.
stickystart "Borrow_Battle_Piglets"
step
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.96,71.78 < 7 |only if walking
Continue up the path |goto 46.56,72.78 < 7 |only if walking
Continue following the path |goto 45.96,72.72 < 7 |only if walking
Continue up the path |goto 46.02,74.22 < 7 |only if walking
Continue up the path |goto 46.56,74.59 < 7 |only if walking
click Stormsong Supplies##292557+
|tip They look like brown crates on the ground around this area.
collect 10 Stormsong Supplies##161123 |q 52071/1 |goto 45.85,76.75
step
label "Borrow_Battle_Piglets"
clicknpc Rooting Battle-Piglet##139903+
|tip They look like tiny pigs walking on the ground around this area.
Borrow #8# Battle-Piglets |q 52071/2 |goto 45.85,76.75
|next "Tortollan_Seekers_WQ"
step
label quest-52325
Follow the path down |goto Stormsong Valley/0 77.84,27.53 < 10 |only if walking
Continue following the path |goto 77.36,29.06 < 7 |only if walking
accept Captured Evil##52325 |goto Stormsong Valley/0 77.17,29.16
|tip You will accept this quest automatically.
step
talk Leana Darkwind##141046
Tell her _"Begin pet battle."_
Defeat Leana Darkwind |q 52325/1 |goto 77.17,29.16
|next "Tortollan_Seekers_WQ"
step
label quest-52310
Follow the path |goto Stormsong Valley/0 50.41,69.99 < 5 |only if walking
Follow the path up |goto 49.97,69.40 < 10 |only if walking
Continue up the path |goto 49.49,71.04 < 10 |only if walking
accept Corrupted Tideskipper##52310 |goto Stormsong Valley/0 67.11,49.71
|tip You will accept this quest automatically.
step
kill Corrupted Tideskipper##139968
|tip It swims underwater around this area.
Slay the Corrupted Tideskipper |q 52310/1 |goto 67.11,49.71
|next "Tortollan_Seekers_WQ"
step
label quest-52306
Follow the road up |goto Stormsong Valley/0 65.28,47.52 < 7 |only if walking
Continue following the road |goto 64.76,46.38 < 10 |only if walking
Continue following the road |goto 63.41,43.66 < 10 |only if walking
Follow the path up |goto 62.93,40.60 < 7 |only if walking
Continue following the path |goto 63.16,40.10 < 7
Continue up the path |goto 64.17,39.93 < 7 |only if walking
Continue up the path |goto 64.76,37.82 < 7 |only if walking
Cross the bridge |goto 63.65,35.67 < 7 |only if walking
accept Croaker##52306 |goto Stormsong Valley/0 62.84,35.43
|tip You will accept this quest automatically.
step
kill Croaker##140938 |q 52306/1 |goto 62.93,32.83
|next "Tortollan_Seekers_WQ"
step
label quest-53025
Cross the bridge |goto Stormsong Valley/0 77.56,26.79 < 7 |only if walking
Cross the bridge |goto 76.62,26.74 < 7 |only if walking
Run down the stairs |goto 75.56,26.32 < 10 |only if walking
Run down the stairs |goto 75.35,25.14 < 7 |only if walking
accept The Culling##53025 |goto Stormsong Valley/0 73.00,23.71
|tip You will accept this quest automatically.
stickystart "Slay_Abyssal_Forces"
step
kill Brother Haines##142516 |q 53025/2 |goto 73.00,23.71
step
label "Slay_Abyssal_Forces"
Follow the path up |goto 73.29,24.72 < 7 |only if walking
Enter the building |goto 74.43,28.30 < 7 |only if walking
Follow the path |goto 74.88,30.06 < 10 |only if walking
Leave the building |goto 74.32,30.61 < 5 |only if walking
Kill enemies around this area
Slay #25# Abyssal Forces |q 53025/1 |goto 73.14,30.67
|next "Tortollan_Seekers_WQ"
step
label quest-51777
Cross the bridge |goto Stormsong Valley/0 66.25,47.16 < 7 |only if walking
Follow the path |goto 66.86,45.97 < 7 |only if walking
Run up the stairs |goto 66.95,44.18 < 7 |only if walking
Follow the path |goto 67.35,44.15 < 7 |only if walking
Continue following the path |goto 67.20,42.49 < 5 |only if walking
Run down the stairs |goto 67.01,42.52 < 5 |only if walking
accept Dagrus the Scorned##51777 |goto Stormsong Valley/0 66.91,41.29
|tip You will accept this quest automatically.
step
kill Dagrus the Scorned##134897 |q 51777/1 |goto 67.86,39.83
|next "Tortollan_Seekers_WQ"
step
label quest-51778
Follow the path |goto Stormsong Valley/0 42.70,56.96 < 7 |only if walking
Follow the road |goto 43.11,56.56 < 7 |only if walking
Cross the bridge |goto 43.61,53.61 < 7 |only if walking
Follow the path up |goto 43.43,52.14 < 7 |only if walking
Follow the road |goto 44.43,50.05 < 7 |only if walking
Continue following the road |goto 47.49,50.56 < 7 |only if walking
Continue following the road |goto 49.15,50.24 < 7 |only if walking
Continue following the road |goto 51.96,52.78 < 7 |only if walking
accept Deepfang##51778 |goto Stormsong Valley/0 53.06,52.80
|tip You will accept this quest automatically.
step
Follow the path up |goto 53.22,52.45 < 7 |only if walking
kill Deepfang##139385 |q 51778/1 |goto 53.19,50.61
|next "Tortollan_Seekers_WQ"
step
label quest-53318
Run down the stairs |goto Stormsong Valley/0 42.89,57.47 < 5 |only if walking
Jump down here |goto 43.74,57.92 < 7 |only if walking
Follow the path |goto 44.16,57.96 < 7 |only if walking
accept Ductile Platinum##53318 |goto Stormsong Valley/0 49.22,53.85
|tip You will accept this quest automatically.
step
click Ductile Platinum Deposit##297474
collect Ductile Platinum##163630 |q 53318/1 |goto 49.22,53.85
|next "Tortollan_Seekers_WQ"
step
label quest-51981
Jump down here |goto Stormsong Valley/0 43.71,57.92 < 7 |only if walking
Follow the path |goto 44.09,57.92 < 7 |only if walking
accept Earthcaller's Abode##51981 |goto Stormsong Valley/0 47.24,56.76
|tip You will accept this quest automatically.
step
Follow the path up |goto 48.25,56.23 < 10 |only if walking
Continue up the path |goto 49.05,55.03 < 7 |only if walking
kill Earthcaller Gulgort##134775 |q 51981/1 |goto 50.02,56.24
step
label "Destroy_Binding_Crystals"
click Binding Crystals##139451
|tip They look like giant purple crystals hovering above the ground around this area.
Destroy #6# Binding Crystals |q 51981/3 |goto 47.83,56.56
step
label "Kill_Restless_Stones"
kill 10 Restless Stone##134966 |q 51981/2 |goto 47.83,56.56
|next "Tortollan_Seekers_WQ"
step
label quest-52972
accept Favored Grandchild##52972 |goto Stormsong Valley/0 30.77,66.62
|tip You will accept this quest automatically.
step
Follow the path |goto 31.05,67.76 < 7 |only if walking
Continue following the path |goto 31.93,68.64 < 7 |only if walking
talk Shepherd Milbrooke##136414
Ask her _"Do you have an extra milk pail handy?"_
Speak to Shepherd Milbrooke |q 52972/1 |goto 31.86,69.52
stickystart "Collect_6_Pristine_Razorclaw_Pelts"
step
click Mother Goat##136939+
|tip They look like white goats around this area.
collect 6 Mountain Goat Milk##159781 |q 52972/2 |goto 29.70,74.34
step
label "Collect_6_Pristine_Razorclaw_Pelts"
kill Feral Razorclaw##136416+
collect 6 Pristine Razorclaw Pelt##162647 |q 52972/3 |goto 29.70,74.34
|next "Tortollan_Seekers_WQ"
step
label quest-52011
Follow the path |goto Stormsong Valley/0 51.90,67.96 < 10 |only if walking
accept Fiendish Fields##52011 |goto Stormsong Valley/0 51.58,65.93
|tip You will accept this quest automatically.
step
click Repaired Farmhand##132297
Pilot the Repaired Farmhand |q 52011/1 |goto 51.58,65.93
step
kill Razorspine Planterror##139577
|tip Use the abilities on your action bar to defeat it.
Slay the Razorspine Planterror |q 52011/4 |goto 48.70,64.55
step
kill Razorspine Thornling##132204+
|tip Use the abilities on your action bar to defeat them.
Slay #18# Razorspine Thornlings |q 52011/2 |goto 49.45,65.07
step
kill Grasping Thorns##132206+
|tip Use the abilities on your action bar to defeat them.
Slay #12# Grasping Thorns |q 52011/3 |goto 49.45,65.07
step
Exit the Repaired Farmhand |outvehicle
|tip Click the yellow Exit arrow on your vehicle bar.
|next "Tortollan_Seekers_WQ"
step
label quest-51781
Follow the path |goto Stormsong Valley/0 65.29,66.38 < 10 |only if walking
accept Foreman Scripps##51781 |goto Stormsong Valley/0 64.43,65.92
|tip You will accept this quest automatically.
step
kill Foreman Scripps##131404 |q 51781/1 |goto 64.43,65.92
|next "Tortollan_Seekers_WQ"
step
label quest-52179
accept Fortified Resistance##52179 |goto Stormsong Valley/0 32.86,46.50
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Zeth'jir Banner##292807+
|tip They look like green banners staked in the ground around this area.
Defend Fort Daelin |q 52179/1 |goto 32.86,46.50
|next "Tortollan_Seekers_WQ"
step
label quest-51776
Follow the path |goto Stormsong Valley/0 65.64,49.10 < 7 |only if walking
Cross the bridge |goto 67.16,52.49 < 7 |only if walking
Follow the path |goto 68.84,54.29 < 7 |only if walking
accept Galestorm##51776 |goto Stormsong Valley/0 71.45,54.35
|tip You will accept this quest automatically.
step
kill Galestorm##132007 |q 51776/1 |goto 71.45,54.35
|next "Tortollan_Seekers_WQ"
step
label quest-52133
accept Good Boy!##52133 |goto Stormsong Valley/0 51.02,68.62
|tip You will accept this quest automatically.
stickystart "Slay_Panicked_Tunnelers"
step
Enter the cave |goto 51.02,68.62 < 7 |walk
kill 4 Briarback Enforcer##140150
|tip Inside the cave.
Slay #4# Briarback Enforcers |q 52133/2 |goto 50.80,68.16
step
label "Slay_Panicked_Tunnelers"
Leave the cave |goto 51.02,68.62 < 7 |walk
kill Galestorm##132007
|tip Use the "Go Get Them!" ability onscreen on quilboar traps.
|tip They look like rumbling patches of earth on the ground around this area.
Slay #8# Panicked Tunnelers |q 52133/1 |goto 52.88,69.38
|next "Tortollan_Seekers_WQ"
step
label quest-51779
Follow the path |goto Stormsong Valley/0 60.00,71.45 < 10 |only if walking
accept Grimscowl the Hairbrained##51779 |goto Stormsong Valley/0 62.07,73.89
|tip You will accept this quest automatically.
step
kill Grimscowl the Harebrained##141059 |q 51779/1 |goto 62.07,73.89
|next "Tortollan_Seekers_WQ"
step
label quest-52463
Follow the path |goto Stormsong Valley/0 31.05,67.85 < 7 |only if walking
Continue up the path |goto 32.87,69.31 < 7 |only if walking
Continue up the path |goto 34.20,70.32 < 7 |only if walking
Continue following the path |goto 35.03,70.33 < 7 |only if walking
Continue following the path |goto 35.42,71.59 < 7 |only if walking
Continue up the path |goto 35.08,73.99 < 10 |only if walking
Continue up the path |goto 33.50,76.02 < 7 |only if walking
accept Haegol the Hammer##52463 |goto Stormsong Valley/0 34.89,77.93
|tip You will accept this quest automatically.
step
kill Haegol the Hammer##141226
|tip It walks around.
Slay Haegol the Hammer |q 52463/1 |goto 35.25,77.76
|next "Tortollan_Seekers_WQ"
step
label quest-53316
Follow the path |goto Stormsong Valley/0 68.44,67.70 < 10 |only if walking
Continue following the path |goto 69.74,69.16 < 7 |only if walking
accept Hardened Monelite##53316 |goto Stormsong Valley/0 70.15,70.17
|tip You will accept this quest automatically.
step
click Hardened Monelite Deposit##297468
collect Hardened Monelite##163628 |q 53316/1 |goto 70.15,70.17
|next "Tortollan_Seekers_WQ"
step
label quest-52988
Follow the road up |goto Stormsong Valley/0 65.29,47.56 < 7 |only if walking
Follow the path up |goto 64.84,46.40 < 10 |only if walking
Continue up the path |goto 63.23,42.99 < 7 |only if walking
accept House Cleaning##52988 |goto Stormsong Valley/0 61.70,41.24
|tip You will accept this quest automatically.
step
click Mysterious Book##211522
|tip They look like books floating in the air around this area.
Kill enemies around this area
Cleanse Sagehold |q 52988/1 |goto 60.99,40.88
|next "Tortollan_Seekers_WQ"
step
label quest-51854
accept I Am the Shark##51854 |goto Stormsong Valley/0 35.02,47.67
|tip You will accept this quest automatically.
step
talk Rikal##131014
Talk with Rikal |q 51854/1 |goto 35.02,47.67
step
talk Rikal##131014
Tell him _"Start casting the spell, Rikal."_
Begin Hunting Naga |havebuff 294472 |goto 35.02,47.67
step
kill Zeth'jir Deepfighter##135125+
|tip They swim in schools underwater around this area.
|tip Swim through them to kill them.
Slay #25# Zeth'jir Deepfighters |q 51854/2 |goto 27.61,35.61
step
Click the "Cancel Shark Form" Button |outvehicle
|next "Tortollan_Seekers_WQ"
step
label quest-52328
Follow the path |goto Stormsong Valley/0 60.46,77.25 < 10 |only if walking
Continue following the path |goto 62.00,78.43 < 7 |only if walking
Continue up the path |goto 64.63,78.95 < 10 |only if walking
Continue up the path |goto 65.18,79.57 < 10 |only if walking
Continue up the path |goto 64.52,81.24 < 7 |only if walking
accept Ice Sickle##52328 |goto Stormsong Valley/0 63.42,82.19
|tip You will accept this quest automatically.
step
kill Ice Sickle##141039 |q 52328/1 |goto 63.53,83.56
|next "Tortollan_Seekers_WQ"
step
label quest-52168
Cross the bridge |goto Stormsong Valley/0 58.05,67.41 < 10 |only if walking
accept It's Lit##52168 |goto Stormsong Valley/0 57.02,65.14
|tip You will accept this quest automatically.
stickystart "Kill_Sapper_Technicians"
step
Follow the path |goto 56.06,64.49 < 10 |only if walking
click Water Bucket##201298+
|tip They look like small buckets of water near the pond.
|tip Use the button that appears onscreen to extinguish fires around this area.
Extinguish #12# Fires |q 52168/1 |goto 55.89,63.36
step
label "Kill_Sapper_Technicians"
kill 7 Sapper Technician##134426+ |q 52168/2 |goto 64.83,59.98
|next "Tortollan_Seekers_WQ"
step
label quest-52321
Follow the path |goto Stormsong Valley/0 30.84,66.08 < 7 |only if walking
accept Kickers##52321 |goto Stormsong Valley/0 31.30,61.70
|tip You will accept this quest automatically.
step
kill Kickers##141029 |q 52321/1 |goto 31.30,61.70
|next "Tortollan_Seekers_WQ"
step
label quest-52987
Follow the path up |goto Stormsong Valley/0 40.59,38.18 < 10 |only if walking
Continue following the path |goto 41.58,40.27 < 10 |only if walking
Continue up the path |goto 41.58,42.06 < 7 |only if walking
Continue up the path |goto 42.06,42.13 < 7 |only if walking
Continue up the path |goto 42.39,41.24 < 7 |only if walking
Continue up the path |goto 43.02,40.41 < 7 |only if walking
Continue up the path |goto 43.06,38.36 < 7 |only if walking
Continue up the path |goto 43.35,38.37 < 5 |only if walking
Continue up the path |goto 44.56,38.27 < 7 |only if walking
Jump down carefully here |goto 45.85,38.15 < 7 |only if walking
accept Let's Burn!##52987 |goto Stormsong Valley/0 47.02,36.63
|tip You will accept this quest automatically.
step
kill Goblin Engineer##137936+
collect Welding Torch##163120 |q 52987/1 |goto 47.02,36.63
stickystart "Burn_Lumber_Piles"
stickystart "Slay_Warfang_Lumberjacks"
step
clicknpc Siege Tower##142394
|tip Use the "Flamethrower" ability that appears onscreen.
Burn the Siege Tower |q 52987/4 |goto 48.96,37.86 |count 1
step
clicknpc Siege Tower##142394
|tip Use the "Flamethrower" ability that appears onscreen.
Burn the Siege Tower |q 52987/4 |goto 49.57,38.33 |count 2
step
label "Burn_Lumber_Piles"
Burn #6# Lumber Piles |q 52987/3 |goto 49.56,37.56
|tip Use the "Flamethrower" ability that appears onscreen.
|tip They look like stacked logs on the ground around this area.
step
label "Slay_Warfang_Lumberjacks"
kill Warfang Lumberjack##135981
|tip Use the "Flamethrower" ability that appears onscreen.
Slay #12# Warfang Lumberjacks |q 52987/2 |goto 49.56,37.56
|next "Tortollan_Seekers_WQ"
step
label quest-52476
Follow the path up |goto Stormsong Valley/0 51.56,70.18 < 7 |only if walking
Continue following the path |goto 52.26,72.91 < 7 |only if walking
Cross the bridge |goto 52.46,74.39 < 7 |only if walking
Follow the path |goto 52.91,75.24 < 7 |only if walking
Continue following the path |goto 52.73,77.92 < 7 |only if walking
|tip Watch out for the Horde guards.
accept The Lichen King##52476 |goto Stormsong Valley/0 51.81,78.72
|tip You will accept this quest automatically.
step
Enter the cave |goto 51.78,79.23 < 5 |walk
kill The Lichen King##136189 |q 52476/1 |goto 51.78,79.77
|next "Tortollan_Seekers_WQ"
step
label quest-52941
Cross the bridge |goto Stormsong Valley/0 66.23,47.14 < 7 |only if walking
accept Light in the Darkness##52941 |goto Stormsong Valley/0 67.13,45.58
|tip You will accept this quest automatically.
step
click Abyssal Beacon##294126
collect Abyssal Beacon##162635 |q 52941/1 |goto 67.13,45.58
stickystart "Slay_Assembly_Forces"
step
use the Abyssal Beacon##162635
Dispel the Southerm Grasp |q 52941/2 |goto 67.44,44.37
step
Follow the path |goto 66.00,44.33 < 7 |only if walking
Continue following the path |goto 65.96,42.96 < 7 |only if walking
Run up the stairs |goto 66.26,42.38 < 5 |only if walking
Follow the path |goto 65.79,42.18 < 5 |only if walking
use the Abyssal Beacon##162635
Dispel the Western Grasp |q 52941/3 |goto 66.02,41.86
step
Jump down here |goto 66.13,41.95 < 3 |only if walking
Follow the path |goto 66.46,42.20 < 7 |only if walking
Continue following the path |goto 67.26,42.15 < 7 |only if walking
use the Abyssal Beacon##162635
Dispel the Eastern Grasp |q 52941/4 |goto 67.66,42.33
step
label "Slay_Assembly_Forces"
Kill enemies around this area
Slay #12# Assembly Forces |q 52941/5 |goto 66.84,41.09
|next "Tortollan_Seekers_WQ"
step
label quest-52794
Follow the path |goto Stormsong Valley/0 59.82,71.10 < 7 |only if walking
accept Lizards and Ledgers##52794 |goto Stormsong Valley/0 61.67,73.33
|tip You will accept this quest automatically.
stickystart "Collect_Lost_Supplies"
stickystart "Kill_Stonejaw_Saurolisks"
step
Follow the path |goto 62.69,73.29 < 10 |only if walking
Follow the path up |goto 63.47,76.17 < 10 |only if walking
kill Rottail##141832 |q 52794/3 |goto 64.34,74.61
step
label "Collect_Lost_Supplies"
click Lost Supplies##293771+
|tip They look like small boxes/baskets of fruit and barrels on the ground around this area.
collect 8 Lost Supplies##162540 |q 52794/1 |goto 62.94,74.71
step
label "Kill_Stonejaw_Saurolisks"
Kill Stonejaw enemies around this area
Slay #8# Stonejaw Saurolisks |q 52794/2 |goto 62.94,74.71
|next "Tortollan_Seekers_WQ"
step
label quest-52230
Run down the stairs |goto Stormsong Valley/0 42.89,57.47 < 5 |only if walking
Jump down here |goto 43.74,57.92 < 7 |only if walking
Follow the path |goto 44.16,57.96 < 7 |only if walking
accept Loose Change##52230 |goto Stormsong Valley/0 47.20,55.67
|tip You will accept this quest automatically.
step
use the Magnetized Metal Collector##158226
|tip Use it near treasure locations.
|tip They will appear as yellow areas on your minimap.
|tip Coins look like small sparkling dots on the ground around this area.
Find #60# Loose Coins |q 52230/1 |goto 31.30,61.70
|next "Tortollan_Seekers_WQ"
step
label quest-51633
Follow the path down |goto Stormsong Valley/0 27.87,63.81 < 10 |only if walking
Continue following the path |goto 24.62,64.81 < 10 |only if walking
accept Make Loh Go##51633 |goto Stormsong Valley/0 23.30,69.86
|tip You will accept this quest automatically.
step
Follow the path up |goto 23.63,70.80 < 10 |only if walking
talk Toki##144361
Tell him _"I am ready."_
Speak to Toki |q 51633/1 |goto 22.65,70.96
step
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
Guide Loh to the Goal |q 51633/2 |goto 22.65,70.96
|next "Tortollan_Seekers_WQ"
step
label quest-52924
accept Mead Some Help?##52924 |goto Stormsong Valley/0 68.50,67.75
|tip You will accept this quest automatically.
stickystart "Kill_Flowing_Honey"
step
Follow the path |goto Stormsong Valley/0 68.50,67.75 < 7 |only if walking
kill 6 Bubbling Mead##133429 |q 52924/1 |goto 69.74,69.32
step
label "Kill_Flowing_Honey"
kill 8 Flowing Honey##131663 |q 52924/2 |goto 69.74,69.32
|next "Tortollan_Seekers_WQ"
step
label quest-52880
Follow the path up |goto Stormsong Valley/0 51.57,70.19 < 7 |only if walking
Continue following the path |goto 52.27,72.86 < 7 |only if walking
Cross the bridge |goto 52.46,74.41 < 7 |only if walking
Follow the path |goto 52.86,75.27 < 7 |only if walking
Continue up the path |goto 51.11,76.56 < 7 |only if walking
Continue up the path |goto 51.71,77.27 < 7 |only if walking
accept Milden Mud Snout##52880 |goto Stormsong Valley/0 50.00,79.18
|tip You will accept this quest automatically.
step
kill Milden Mud Snout##141977
|tip Underwater.
Slay Milden Mud Snout |q 52880/1 |goto 50.00,79.18
|next "Tortollan_Seekers_WQ"
step
label quest-52935
Cross the bridge |goto Stormsong Valley/0 68.14,64.97 < 7 |only if walking
Follow the path |goto 66.73,63.45 < 10 |only if walking
Jump down here |goto 66.18,62.81 < 7 |only if walking
accept A New Era##52935 |goto Stormsong Valley/0 64.83,59.98
|tip You will accept this quest automatically.
stickystart "Destroy_Anchors_Of_Binding"
step
Kill enemies around this area
use the Dead Ringer##155919
|tip Use it on slain enemies around this area.
Recover #12# Souls |q 52935/1 |goto 64.83,59.98
step
label "Destroy_Anchors_Of_Binding"
clicknpc Anchor of Binding##142214
|tip They look like large pedestals with water coming out of them on the ground around this area.
Destroy #8# Anchors of Binding |q 52935/2 |goto 64.83,59.98
|next "Tortollan_Seekers_WQ"
step
label quest-51820
accept Oily Mess##51820 |goto Stormsong Valley/0 40.13,38.85
|tip You will accept this quest automatically.
step
clicknpc Oily Sandbill Piper##139214+
|tip They look like small birds covered in oil running around this area.
click Oil Drum##291148+
|tip They look like small barrels around this area.
Kill Venture Co. enemies around this area
Clean the Coastline |q 51820/1 |goto 39.06,42.16
|next "Tortollan_Seekers_WQ"
step
label quest-52939
Cross the bridge |goto Stormsong Valley/0 65.64,49.08 < 7 |only if walking
Follow the path |goto 67.26,52.68 < 7 |only if walking
accept Ordnance Orders##52939 |goto Stormsong Valley/0 69.34,51.41
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Tidal Blade##280925+
|tip They look like swords around this area.
click Thundershot Rifle##280927
|tip They look like double-barrel rifles around this area.
click Harpoons##280545
|tip They look like a rack of harpoons on the ground around this area.
click Abyssal Spear##
|tip They look like single barbed spears around this area.
collect 20 Stormfused Weapon##162629 |q 52939/1 |goto 69.34,51.41
|next "Tortollan_Seekers_WQ"
step
label quest-52464
Follow the road |goto Stormsong Valley/0 43.13,57.65 < 7 |only if walking
Cross the bridge |goto 43.51,58.33 < 7 |only if walking
Follow the path up |goto 44.03,59.32 < 7 |only if walking
accept Osca the Bloodied##52464 |goto Stormsong Valley/0 42.26,63.24
|tip You will accept this quest automatically.
step
kill Osca the Bloodied##141239 |q 52464/1 |goto 42.26,63.24
|next "Tortollan_Seekers_WQ"
step
label quest-53288
Follow the path down |goto Stormsong Valley/0 77.84,27.54 < 10 |only if walking
Jump down here |goto 74.97,30.54 < 7 |only if walking
Jump down here |goto 74.33,29.78 < 7 |only if walking
Jump down carefully here |goto 73.67,29.48 < 7 |only if walking
accept Overgrown Anchor Weed##53288 |goto Stormsong Valley/0 72.64,30.84
|tip You will accept this quest automatically.
step
click Overgrown Anchor Weed
collect Overgrown Anchor Weed##163601 |q 53288/1 |goto 72.64,30.84
|next "Tortollan_Seekers_WQ"
step
label quest-52964
accept Pest Problem##52964 |goto Stormsong Valley/0 30.60,67.10
|tip You will accept this quest automatically.
step
clicknpc Bug Zapper##142580
Collect a Bug Zapper |q 52964/1 |goto 30.60,67.10
stickystart "Slay_Volatile_Rats"
stickystart "Collect_Bilge_Rats"
step
kill Cellar Crawler##137000+
|tip Around the building.
Slay #6# Cellar Crawlers |q 52964/2 |goto 80.17,47.85
step
label "Slay_Volatile_Rats"
kill 6 Volatile Rat##137126 |q 52964/3 |goto 28.13,66.48
step
label "Collect_Bilge_Rats"
clicknpc Bilge Rat##136686+
|tip Use the extra action button on-screen to stun them first.
Collect #6# Bilge Rats |q 52964/4 |goto 28.13,66.48
|next "Tortollan_Seekers_WQ"
step
label quest-51806
accept Pest Remover Mk. II##51806 |goto Stormsong Valley/0 39.66,38.60
|tip You will accept this quest automatically.
|tip It will patrol around this area.
|tip You can wait here until you accept the quest.
step
kill Pest Remover Mk. II##137649
|tip It walks around this area.
Slay the Pest Remover Mk. II |q 51806/1 |goto 39.66,38.60
|next "Tortollan_Seekers_WQ"
step
label quest-53012
Follow the path up |goto Stormsong Valley/0 40.59,38.18 < 10 |only if walking
Continue following the path |goto 41.58,40.27 < 10 |only if walking
Continue up the path |goto 41.58,42.06 < 7 |only if walking
Continue up the path |goto 42.06,42.13 < 7 |only if walking
Continue up the path |goto 42.39,41.24 < 7 |only if walking
Continue up the path |goto 43.02,40.41 < 7 |only if walking
Continue up the path |goto 43.06,38.36 < 7 |only if walking
Continue up the path |goto 43.35,38.37 < 5 |only if walking
Continue up the path |goto 44.56,38.27 < 7 |only if walking
accept Put Away Your Toys##53012 |goto Stormsong Valley/0 49.96,36.34
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Keenblades"
step
clicknpc Prototype Shredder MK-03##138904
Pilot the Prototype Shredder MK-03 |q 53012/1 |goto 51.25,36.72
step
label "Kill_Forsaken_Keenblades"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #60# Horde Soldiers |q 53012/2 |goto 50.35,33.17
|next "Tortollan_Seekers_WQ"
step
label quest-51774
Follow the path up |goto Stormsong Valley/0 50.02,69.42 < 10 |only if walking
Continue up the path |goto 48.39,70.13 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.96,71.78 < 7 |only if walking
Continue up the path |goto 46.56,72.78 < 7 |only if walking
Continue following the path |goto 45.96,72.72 < 7 |only if walking
Continue up the path |goto 46.02,74.22 < 7 |only if walking
Continue up the path |goto 46.56,74.59 < 7 |only if walking
Continue following the path |goto 45.84,77.00 < 7 |only if walking
Continue up the path |goto 45.54,77.93 < 7 |only if walking
Continue up the path |goto 44.56,77.82 < 7 |only if walking
Continue following the path |goto 43.63,77.51 < 7 |only if walking
Continue following the path |goto 42.88,76.64 < 7 |only if walking
accept Ragna##51774 |goto Stormsong Valley/0 42.25,75.24
|tip You will accept this quest automatically.
step
kill Ragna##134884 |q 51774/1 |goto 41.60,74.35
|next "Tortollan_Seekers_WQ"
step
label quest-52211
Follow the road |goto Stormsong Valley/0 65.16,48.21 < 7 |only if walking
Cross the bridge |goto 64.58,49.37 < 7 |only if walking
accept Red Sunrise##52211 |goto Stormsong Valley/0 63.55,52.41
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Keenblades"
step
kill Meat Shield##140534 |q 52211/2 |goto 62.45,51.22
step
label "Kill_Forsaken_Keenblades"
kill 8 Forsaken Keenblade##136439 |q 52211/1 |goto 61.80,51.10
|next "Tortollan_Seekers_WQ"
step
label quest-51905
Follow the path |goto Stormsong Valley/0 65.64,49.10 < 7 |only if walking
Cross the bridge |goto 67.16,52.49 < 7 |only if walking
Follow the path |goto 68.01,52.26 < 7 |only if walking
Continue following the path |goto 69.65,50.85 < 7 |only if walking
accept Reinforced Hullbreaker##51905 |goto Stormsong Valley/0 70.57,51.54
|tip You will accept this quest automatically.
step
kill Reinforced Hullbreaker##132047
|tip It walks around a the village.
|tip It will appear on your minimap as a yellow dot.
Slay the Reinforced Hullbreaker |q 51905/1 |goto 70.57,51.54
|next "Tortollan_Seekers_WQ"
step
label quest-52142
Follow the path |goto Stormsong Valley/0 50.41,69.99 < 5 |only if walking
Follow the path up |goto 49.97,69.40 < 10 |only if walking
Continue up the path |goto 49.49,71.04 < 10 |only if walking
accept Restocking##52142 |goto Stormsong Valley/0 49.80,72.24
|tip You will accept this quest automatically.
stickystart "Collect_Handfuls_of_Scrap"
step
Kill enemies around this area
|tip Click the corpses after looting to carve out the ammunition.
collect 20 Salvaged Azerite Ammunition##156583 |q 52142/1 |goto 49.80,72.24
step
label "Collect_Handfuls_of_Scrap"
click Discarded Toolbox##292765+
|tip They look like small boxes on the ground around this area.
click Metal Scraps##292764+
|tip They look like small pieces of scrap on the ground around this area.
collect 15 Handful of Scraps##161216 |q 52142/2 |goto 49.80,72.24
|next "Tortollan_Seekers_WQ"
step
label quest-52979
Cross the bridge |goto Stormsong Valley/0 66.25,47.14 < 7 |only if walking
accept Ritual Cleansing##52979 |goto Stormsong Valley/0 66.98,45.54
|tip You will accept this quest automatically.
step
Run up the stairs |goto 66.95,44.19 < 5 |only if walking
Cross the bridge |goto 67.34,44.16 < 5 |only if walking
click Tidal Kris##130913
|tip It will appear on your minimap as a yellow dot.
Retrieve the Tidal Kris |q 52979/1 |goto 67.31,43.62
stickystart "Slay_K'thir"
step
use the Tidal Kris##162650
|tip Use it on Fanatical Acolytes around this area.
|tip They look like humans subdued in purple flame around this area.
Disrupt #6# Rituals |q 52979/3 |goto 67.24,43.33
step
label "Slay_K'thir"
Kill enemies around this area
Slay #15# K'thir |q 52979/2 |goto 67.24,43.33
|next "Tortollan_Seekers_WQ"
step
label quest-52164
Follow the path up |goto Stormsong Valley/0 42.45,57.73 < 7 |only if walking
Continue following the path |goto 41.62,57.68 < 7 |only if walking
accept Rum- Paaaage!##52164 |goto Stormsong Valley/0 39.01,55.42
|tip You will accept this quest automatically.
stickystart "Destroy_Irontide_Rum_Stash"
stickystart "Kill_Ookin_Rum_Guards"
step
Follow the path |goto 37.23,54.40 < 10 |only if walking
kill Barrel Master Jojo##140446 |q 52164/3 |goto 35.70,54.88
step
label "Destroy_Irontide_Rum_Stash"
kill Irontide Rum Stash##140365+
|tip They look like clusters of wooden barrels on the ground around this area.
|tip Use the action button that appears onscreen.
Destroy #8# Irontide Rum Stashes |q 52164/1 |goto 35.87,54.84
step
label "Kill_Ookin_Rum_Guards"
kill 6 Ookin Rum Guard##140209 |q 52164/2 |goto 35.87,54.84
|next "Tortollan_Seekers_WQ"
step
label quest-51977
Cross the water |goto Stormsong Valley/0 36.37,34.19 < 10 |only if walking
Enter the cave |goto 34.96,32.64 < 7 |only if walking
accept Sabertron##51977 |goto Stormsong Valley/0 34.55,32.34
|tip You will accept this quest automatically.
step
kill Sabertron Technician##139334
|tip Killing this mob will spawn Sabertron.
kill Sabertron##139335 |q 51977/1 |goto 34.11,32.10
|next "Tortollan_Seekers_WQ"
step
label quest-52309
Cross the water |goto Stormsong Valley/0 69.73,64.58 < 7 |only if walking
Cross the water |goto 70.75,64.31 < 7 |only if walking
Follow the path |goto 71.24,64.19 < 7 |only if walking
Continue following the path |goto 71.62,61.92 < 7 |only if walking
accept SandFang##52309 |goto Stormsong Valley/0 72.80,61.01
|tip You will accept this quest automatically.
step
kill Sandfang##139988 |q 52309/1 |goto 73.52,60.65
|next "Tortollan_Seekers_WQ"
step
label quest-52316
Follow the path down |goto Stormsong Valley/0 64.99,48.60 < 7 |only if walking
accept Sea Creatures Are Weird##52316 |goto Stormsong Valley/0 65.02,50.82
|tip You will accept this quest automatically.
step
talk Ellie Vern##141002
Tell her _"Begin pet battle."_
Defeat Ellie Vern |q 52316/1 |goto 65.02,50.82
|next "Tortollan_Seekers_WQ"
step
label quest-52315
Follow the road |goto Stormsong Valley/0 29.31,68.58 < 10 |only if walking
Follow the path up |goto 27.86,69.90 < 10 |only if walking
Follow the path |goto 26.11,70.21 < 10 |only if walking
Follow the path up |goto 23.63,71.30 < 10 |only if walking
accept Severus the Outcast##52315 |goto Stormsong Valley/0 22.58,73.21
|tip You will accept this quest automatically.
step
Jump down here |goto 22.20,71.11 < 7 |only if walking
Follow the path up |goto 21.70,71.57 < 10 |only if walking
Continue up the path |goto 22.05,72.58 < 7 |only if walking
kill Severus the Outcast##140997 |q 52315/1 |goto 22.58,73.21
|next "Tortollan_Seekers_WQ"
step
label quest-51627
Follow the path |goto Stormsong Valley/0 40.45,37.06 < 7 |only if walking
Continue following the path |goto 40.41,36.28 < 7 |only if walking
accept Shell Game##51627 |goto Stormsong Valley/0 40.37,34.26
|tip Jump in the boat.
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51627/1 |goto 40.37,34.26
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51627/2 |goto 40.37,34.26
|next "Tortollan_Seekers_WQ"
step
label quest-52446
Cross the bridge |goto Stormsong Valley/0 64.59,49.36 < 7 |only if walking
Follow the road |goto 64.24,50.40 < 7 |only if walking
Continue following the road |goto 63.88,52.08 < 7 |only if walking
Continue following the road |goto 62.94,53.62 < 7 |only if walking
Follow the path down |goto 62.07,54.29 < 7 |only if walking
Continue down the path |goto 62.16,55.53 < 7 |only if walking
accept Sister Absinthe##52446 |goto Stormsong Valley/0 61.57,57.06
|tip You will accept this quest automatically.
step
kill Sister Absinthe##141143 |q 52446/1 |goto 61.57,57.06
|next "Tortollan_Seekers_WQ"
step
label quest-51921
Follow the path |goto Stormsong Valley/0 40.19,34.56 < 10 |only if walking
Follow the path |goto 40.00,33.06 < 10 |only if walking
accept Slickspill##51921 |goto Stormsong Valley/0 41.80,28.47
|tip You will accept this quest automatically.
step
kill Slickspill##139319 |q 51921/1 |goto 41.80,28.47
|next "Tortollan_Seekers_WQ"
step
label quest-52174
Follow the path |goto Stormsong Valley/0 29.45,65.01 < 10 |only if walking
accept Snakes in the Shallows##52174 |goto Stormsong Valley/0 27.83,60.36
|tip You will accept this quest automatically.
stickystart "Zeth'jir Conduit"
stickystart "Slay_Zeth'jir_Tidecallers"
step
kill Bound Seasurge##134340+
collect 4 Energized Tidecore##161313 |q 52174/3 |goto 27.83,60.36
step
label "Zeth'jir Conduit"
click Zeth'jir Conduit##292530+
|tip They look like purple stones floating above the ground around this area.
Destroy #5# Zeth'jir Conduits |q 52174/2 |goto 27.83,60.36
step
label "Slay_Zeth'jir_Tidecallers"
Kill Zeth'jir enemies around this area
Slay #8# Zeth'jir Tidecallers |q 52174/1 |goto 27.83,60.36
|next "Tortollan_Seekers_WQ"
step
label quest-50591
accept Son of a Bee##50591 |goto Stormsong Valley/0 68.54,65.19
|tip You will accept this quest automatically.
stickystart "Collect_Rich_Honey"
stickystart "Kill_Hive_Guardians"
step
Follow the path |goto Stormsong Valley/0 68.89,66.58 < 7 |only if walking
Continue up the path |goto 70.52,66.47 < 7 |only if walking
Continue up the path |goto 72.27,67.89 < 7 |only if walking
Continue up the path |goto 73.47,67.16 < 7 |only if walking
Enter the cave |goto 74.14,66.92 < 7 |only if walking
kill Dire Barb##140275 |q 50591/3 |goto 74.52,66.77
step
label "Collect_Rich_Honey"
click Bee Hive##296231+
|tip They look like small beehives around this area.
collect Rich Honey##161220 |q 50591/1 |goto 73.00,68.63
step
label "Kill_Hive_Guardians"
kill Hive Guardian##131377+ |q 50591/2 |goto 73.00,68.63
|next "Tortollan_Seekers_WQ"
step
label quest-52452
Follow the path down |goto Stormsong Valley/0 78.01,27.71 < 10 |only if walking
Continue following the path |goto 77.55,26.77 < 7 |only if walking
Cross the bridge |goto 75.95,26.54 < 7 |only if walking
Follow the path |goto 74.71,26.57 < 7 |only if walking
Run down the stairs |goto 74.28,25.49 < 7 |only if walking
Follow the path |goto 73.90,24.66 7 |only if walking
Continue following the path |goto 73.52,25.59 < 10 |only if walking
Continue following the path |goto 73.78,28.19 < 7 |only if walking
Jump down carefully here |goto 73.27,28.53 < 7 |only if walking
Follow the path |goto 71.84,29.17 < 10 |only if walking
accept Song Mistress Dadalea##52452 |goto Stormsong Valley/0 70.86,32.23
|tip You will accept this quest automatically.
step
Jump down carefully here |goto 71.34,31.54 < 10 |only if walking
kill Song Mistress Dadalea##141175 |q 52452/1 |goto 70.86,32.23
|next "Tortollan_Seekers_WQ"
step
label quest-53040
Follow the path up |goto Stormsong Valley/0 68.31,62.94 < 10 |only if walking
accept Squall Squelching##53040 |goto Stormsong Valley/0 69.62,58.56
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 3 Surging Mote##163033 |goto 69.62,58.56
step
click Anchor of Binding##294541
Empower the Southern Anchor |q 53040/1 |goto 69.88,58.57
step
click Anchor of Binding##294541
Empower the Eastern Anchor |q 53040/3 |goto 70.76,57.67
step
click Anchor of Binding##294541
Empower the Western Anchor |q 53040/2 |goto 69.87,57.07
|next "Tortollan_Seekers_WQ"
step
label quest-52507
Follow the path |goto Stormsong Valley/0 50.41,69.99 < 5 |only if walking
Follow the path up |goto 49.97,69.40 < 10 |only if walking
Continue up the path |goto 49.49,71.04 < 10 |only if walking
accept Sticky Mess##52507 |goto Stormsong Valley/0 43.20,55.99
|tip You will accept this quest automatically.
stickystart "Remove_12_Parasites"
step
click Parasite Crate
|tip They look like wood crates full of purple parasites on the ground around this area.
|tip If you become disoriented, use the button on your action bar multiple times to free yourself.
Seal #4# Crates |q 52507/2 |goto 43.20,55.99
step
label "Remove_12_Parasites"
clicknpc Deadwash Worker##143880+
|tip They look like frightened creatures with purple parasites on their head running around this area.
|tip You can also find the individual parasites around this area.
|tip Click them and then run away to remove them.
|tip If you become disoriented, use the button on your action bar multiple times to free yourself.
Remove #12# Parasites |q 52507/1 |goto 43.20,55.99
|next "Tortollan_Seekers_WQ"
step
label quest-51982
Cross the bridge |goto Stormsong Valley/0 64.61,49.32 < 7 |only if walking
Follow the road |goto 64.26,50.26 < 10 |only if walking
Continue following the road |goto 63.94,52.02 < 10 |only if walking
Continue following the road |goto 62.95,53.64 < 10 |only if walking
Cross the bridge |goto 61.62,53.92 < 7 |only if walking
Follow the road |goto 60.91,53.41 < 10 |only if walking
accept Storm's Rage##51982 |goto Stormsong Valley/0 58.80,55.98
|tip You will accept this quest automatically.
step
clicknpc Storm's Feather##139615
Ride Storm's Feather |q 51982/1 |goto 58.80,55.98
step
Kill enemies around this area
|tip Use the "Bomb Toss" ability on your action bar.
Destroy the Horde Forces |q 51982/2 |goto 49.51,32.44
|next "Tortollan_Seekers_WQ"
step
label quest-52380
collect 20 Frenzied Fangtooth##152545 |q 52380 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Frenzied Fangtooth##52380 |goto Stormsong Valley/0 59.28,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Supplies Needed: Frenzied Fangtooth##52380 |goto 59.28,69.33
|next "Tortollan_Seekers_WQ"
step
label quest-52322
Follow the road up |goto Stormsong Valley/0 65.27,47.53 < 7 |only if walking
Continue following the road |goto 64.68,46.48 < 7 |only if walking
Follow the path up |goto 63.70,46.21 < 10 |only if walking
Continue following the path |goto 62.52,45.21 < 7 |only if walking
Continue up the path |goto 60.47,46.60 < 10 |only if walking
accept Taja the Tidehowler##52322 |goto Stormsong Valley/0 59.95,45.87
|tip You will accept this quest automatically.
step
kill Taja the Tidehowler##139980 |q 52322/1 |goto 59.95,45.87
|next "Tortollan_Seekers_WQ"
step
label quest-52126
Follow the path up |goto Stormsong Valley/0 50.02,69.42 < 10 |only if walking
Continue up the path |goto 48.39,70.13 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.96,71.78 < 7 |only if walking
Continue up the path |goto 46.56,72.78 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.02,74.22 < 7 |only if walking
Continue up the path |goto 46.56,74.59 < 7 |only if walking
Continue following the path |goto 45.84,77.00 < 7 |only if walking
Continue up the path |goto 45.54,77.93 < 7 |only if walking
Continue up the path |goto 44.56,77.82 < 7 |only if walking
Continue following the path |goto 43.63,77.51 < 7 |only if walking
Continue following the path |goto 42.88,76.64 < 7 |only if walking
accept This Little Piggy Has Sharp Tusks##52126 |goto Stormsong Valley/0 42.53,76.77
|tip You will accept this quest automatically.
step
clicknpc Bristlespine##139987
Defeat Bristlespine |q 52126/1 |goto 42.53,76.77
|next "Tortollan_Seekers_WQ"
step
label quest-52140
Follow the path |goto Stormsong Valley/0 50.25,68.23 < 7 |only if walking
Jump down here |goto 49.76,67.52 < 7 |only if walking
accept A Thorny Problem##52140 |goto Stormsong Valley/0 49.58,66.90
|tip You will accept this quest automatically.
step
clicknpc Bramble Pod##132207+
|tip They look like small tangles of roots on the ground around this area.
Kill enemies around this area
Clear the Fields |q 52140/1 |goto 48.58,64.97
|next "Tortollan_Seekers_WQ"
step
label quest-52054
Follow the road up |goto Stormsong Valley/0 32.62,65.00 < 10 |only if walking
accept Too Much To Bear##52054 |goto Stormsong Valley/0 35.87,65.33
|tip You will accept this quest automatically.
stickystart "Collect_Barbedclaw_Flank"
step
clicknpc Injured Hunter##139801+
|tip They look like injured humans laying on the ground around this area.
Rescue #7# Injured Hunters |q 52054/2 |goto 38.00,63.85
step
label "Collect_Barbedclaw_Flank"
kill Barbedclaw Grizzly##139793+
collect 5 Barbedclaw Flank##161114 |q 52054/1 |goto 38.00,63.85
|next "Tortollan_Seekers_WQ"
step
label quest-51817
Cross the water |goto Stormsong Valley/0 36.02,34.86 < 10 |only if walking
Cross the water |goto 33.25,35.03 < 10 |only if walking
accept Trapped Tortollans##51817 |goto Stormsong Valley/0 32.67,35.08
|tip You will accept this quest automatically.
stickystart "Slay_8_Zeth'jir_Naga"
step
clicknpc Trapped Tortollan##139086+
|tip They look like white spheres with turtles inside floating above the ground around this area.
Free #8# Trapped Tortollans |q 51817/1 |goto 31.56,32.75
step
label "Slay_8_Zeth'jir_Naga"
Kill Zeth'jir enemies around this area
Slay #8# Zeth'jir Naga |q 51817/2 |goto 31.56,32.75
|next "Tortollan_Seekers_WQ"
step
label quest-52200
Cross the water |goto Stormsong Valley/0 39.64,36.71 < 7 |only if walking
accept Turtle Tactics##52200 |goto Stormsong Valley/0 37.32,29.32
|tip You will accept this quest automatically.
step
Follow the path |goto 37.32,29.32 < 10 |only if walking
clicknpc Ai'twen##137560
Mount Ai'twen |q 52200/1 |goto 34.40,26.13
step
Kill Venture Co. enemies around this area
|tip Use the "Sea Mine Toss" ability on your action bar.
Slay #40# Venture Co. Forces |q 52200/2 |goto 37.67,23.95
step
Dismount Ai'twen |outvehicle |q 52200
|tip Click the yellow arrow on your action bar.
|next "Tortollan_Seekers_WQ"
step
label quest-52301
Follow the path |goto Stormsong Valley/0 51.01,69.17 < 7 |only if walking
Enter the cave |goto 50.99,68.67 < 7 |walk
accept Vinespeaker Ratha##52301 |goto Stormsong Valley/0 50.93,68.36
|tip You will accept this quest automatically.
step
Enter the cave |goto 50.99,68.67 < 7 |walk
Enter the cave |goto 50.74,68.22 < 7 |walk
Follow the path down |goto 50.25,68.35 < 7 |walk
kill Vinespeaker Ratha##135939
|tip Inside the cave.
Slay Vinespeaker Ratha |q 52301/1 |goto 47.26,65.85
|next "Tortollan_Seekers_WQ"
step
label quest-52300
Follow the path up |goto Stormsong Valley/0 50.02,69.42 < 10 |only if walking
Continue up the path |goto 48.39,70.13 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.96,71.78 < 7 |only if walking
Continue up the path |goto 46.56,72.78 < 7 |only if walking
Continue following the path |goto 45.96,72.72 < 7 |only if walking
Continue following the path |goto 43.96,72.04 < 10 |only if walking
Continue up the path |goto 43.40,73.18 < 7 |only if walking
Continue up the path |goto 44.00,73.62 < 7 |only if walking
Continue following the path |goto 44.41,74.63 < 7 |only if walking
Jump down here |goto Stormsong Valley/3 50.76,46.19 < 7 |only if walking |notravel
accept Wagga Snarltusk##52300 |goto Stormsong Valley/3 40.98,51.71
|tip You will accept this quest automatically.
step
Enter the cave |goto 40.98,51.71 < 7 |only if walking
kill Wagga Snarltusk##130079 |q 52300/1 |goto 11.77,28.81
|next "Tortollan_Seekers_WQ"
step
label quest-52891
accept Wendigo to Sleep##52891 |goto Stormsong Valley/0 69.31,68.86
|tip You will accept this quest automatically.
step
click Bee Pheromones##
|tip It looks like a tiny orange jar around this area.
Collect Bee Pheromones |q 52891/1 |goto 69.31,68.86
stickystart "Kill_Highlands_Maulers"
step
Follow the path |goto 69.84,70.55 < 10 |only if walking
Continue following the path |goto 69.57,72.64 < 10 |only if walking
Continue following the path |goto 70.01,73.94 < 7 |only if walking
Enter the cave |goto 70.95,75.08 < 5 |walk
kill Ironbeard##142106 |q 52891/3 |goto 71.10,75.70
step
label "Kill_Highlands_Maulers"
kill 12 Honey-Crazed Mauler##131568 |q 52891/2 |goto 69.84,73.57
|next "Tortollan_Seekers_WQ"
step
label quest-52299
Follow the path |goto Stormsong Valley/0 51.99,67.77 < 10 |only if walking
Continue following the path |goto 51.21,66.10 < 10 |only if walking
Continue following the path |goto 49.78,65.58 < 7 |only if walking
accept Whiplash##52299 |goto Stormsong Valley/0 48.49,66.08
|tip You will accept this quest automatically.
step
Jump down here |goto 47.99,65.55 < 7 |only if walking
Enter the cave |goto 47.34,65.35 < 5 |walk
kill Whiplash##129803
|tip Inside the cave.
Slay Whiplash |q 52299/1 |goto 47.29,65.96
|next "Tortollan_Seekers_WQ"
step
label quest-52459
Follow the path up |goto Stormsong Valley/0 40.59,38.18 < 10 |only if walking
Continue following the path |goto 41.58,40.27 < 10 |only if walking
Continue up the path |goto 41.58,42.06 < 7 |only if walking
Continue up the path |goto 42.06,42.13 < 7 |only if walking
Continue up the path |goto 42.39,41.24 < 7 |only if walking
Continue up the path |goto 43.02,40.41 < 7 |only if walking
Continue up the path |goto 43.06,38.36 < 7 |only if walking
Continue up the path |goto 43.35,38.37 < 5 |only if walking
Continue up the path |goto 44.56,38.27 < 7 |only if walking
Continue down the path |goto 45.24,38.34 < 7 |only if walking
Jump down carefully here |goto 46.18,39.60 < 7 |only if walking
accept Whirlwing##52459 |goto Stormsong Valley/0 46.90,42.14
|tip You will accept this quest automatically.
step
kill Whirlwing##142088
|tip It flies around this area.
Slay Whirlwing |q 52459/1 |goto 46.90,42.141
|next "Tortollan_Seekers_WQ"
step
label quest-52344
collect 20 Kul Tiramisu##154881 |q 52344 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Kul Tiramisu##52344 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
Follow the path |goto 40.48,36.96 < 7 |only if walking
talk Collector Kojo##135793
turnin Work Order: Kul Tiramisu##52344 |goto 40.54,36.41
|next "Tortollan_Seekers_WQ"
step
label quest-50989
collect 40 Storm Silver Ore##152579 |q 50989 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Storm Silver Ore##50989 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Storm Silver Ore##50989 |goto 59.29,69.33
|next "Tortollan_Seekers_WQ"
step
label quest-52352
Follow the path down |goto Stormsong Valley/0 31.31,65.91 < 10 |only if walking
Continue down the path |goto 31.74,61.86 < 10 |only if walking
accept Zeritarj##52352 |goto Stormsong Valley/0 31.59,55.08
|tip You will accept this quest automatically.
step
kill Zeritarj##140398 |q 52352/1 |goto 31.59,55.08
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Tiragarde Sound World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Tiragarde Sound, Kul Tiras.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone={895,1161},
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-50322
accept A Feathery Fad##50322 |goto Tiragarde Sound/0 76.67,65.43
|tip You will accept this quest automatically.
stickystart "Collect_Pristine_Skyhunter_Feather"
step
Follow the road |goto 76.29,64.64 < 10 |only if walking
Continue following the road |goto 76.44,63.59 < 15 |only if walking
Continue following the road |goto 74.06,63.02 < 10 |only if walking
Continue following the road |goto 73.49,62.39 < 10 |only if walking
Continue following the road |goto 71.18,63.06 < 10 |only if walking
Continue following the road |goto 69.91,62.13 < 10 |only if walking
Follow the path |goto 68.96,63.31 < 10 |only if walking
Continue following the path |goto 68.34,64.28 < 10 |only if walking
Enter the cave |goto 67.56,64.76 < 5 |walk
kill Rustfur Matriarch##141051 |q 50322/2 |goto 67.48,64.84
step
label "Collect_Pristine_Skyhunter_Feather"
kill Tiragarde Skyhunter##141049+
|tip Inside the cave.
|tip They fly in the air and sit on rocks around this area.
collect Pristine Skyhunter Feather##157538 |q 50322/1 |goto 68.29,64.85
|next "Tortollan_Seekers_WQ"
step
label quest-51610
Follow the road up |goto Tiragarde Sound/0 75.18,43.59 < 7 |only if walking
Continue following the road |goto 76.93,44.02 < 7 |only if walking
Continue following the road |goto 77.57,43.44 < 7 |only if walking
Continue following the road |goto 79.02,42.23 < 7 |only if walking
Continue following the road |goto 80.02,41.77 < 7 |only if walking
Follow the path |goto 81.69,42.24 < 7 |only if walking
Continue following the path |goto 83.03,44.43 < 7 |only if walking
Follow the path down |goto 83.71,44.20 < 7 |only if walking
Continue down the path |goto 84.42,42.72 < 10 |only if walking
accept Adhara White##51610 |goto Tiragarde Sound/0 85.55,43.39
|tip You will accept this quest automatically.
step
kill Adhara White##138279 |q 51610/1 |goto 85.55,43.39
|next "Tortollan_Seekers_WQ"
step
label quest-52047
Jump down here |goto Boralus/0 76.13,73.77 < 7 |only if walking
Follow the path |goto 75.78,73.89 < 5 |only if walking
Cross the water |goto 71.50,76.13 < 7 |only if walking
accept Against the Storm##52047 |goto Boralus/0 69.02,76.30
|tip You will accept this quest automatically.
step
Follow the path |goto 67.44,75.06 < 7 |only if walking
Kill enemies around this area
clicknpc Drowned Scriptures##139699+
|tip They look like floating books around this area.
Disrupt the Monastic Rituals |q 52047/1 |goto 70.40,55.72
|next "Tortollan_Seekers_WQ"
step
label quest-51225
Follow the path |goto Boralus/0 76.42,72.06 < 5 |only if walking
Continue following the path |goto 69.57,61.91 < 7 |only if walking
Continue following the path |goto 68.21,57.85 < 7 |only if walking
accept Albatrocity##51225 |goto Boralus/0 64.50,60.86
|tip You will accept this quest automatically.
step
clicknpc Terrified Civilian##136284
|tip They look like frightened humans around this area.
Calm #8# Terrified Civillians |q 51225/1 |goto 64.50,60.86
|next "Tortollan_Seekers_WQ"
step
label quest-51653
Run down the stairs |goto Tiragarde Sound/0 77.09,83.36 < 5 |only if walking
Jump down here |goto 76.76,83.48 < 7 |only if walking
Follow the path |goto 76.49,83.45 < 7 |only if walking
Continue following the path |goto 75.54,83.28 < 7 |only if walking
Cross the bridge |goto 75.56,82.58 < 5 |only if walking
accept Auditor Dolp##51653 |goto Tiragarde Sound/0 75.68,78.54
|tip You will accept this quest automatically.
step
Follow the path |goto 75.53,78.13 < 7 |only if walking
kill Auditor Dolp##132182 |q 51653/1 |goto 74.91,78.95
|next "Tortollan_Seekers_WQ"
step
label quest-51586
Jump down here |goto Tiragarde Sound/0 57.98,61.37 < 7 |only if walking
Cross the bridge |goto 59.39,59.75 < 7 |only if walking
Follow the road |goto 60.74,59.30 < 10 |only if walking
Continue following the road |goto 61.47,58.24 < 10 |only if walking
Follow the path |goto 59.37,53.78 < 10 |only if walking
Continue following the path |goto 59.24,51.35 < 10 |only if walking
Continue following the path |goto 58.45,49.35 < 10 |only if walking
Continue following the path |goto 59.48,48.09 < 10 |only if walking
accept Azerite Empowerment##51586 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
kill Tidesage Bankson##138226 |q 51586/1 |goto 60.57,47.28
|next "Tortollan_Seekers_WQ"
step
label quest-52869
Jump down here |goto Tiragarde Sound/0 53.05,28.03 < 7 |only if walking
Follow the path |goto 53.16,26.24 < 10 |only if walking
Continue following the path |goto 53.47,23.66 < 10 |only if walking
accept Azerite Empowerment##52869 |goto Tiragarde Sound/0 52.65,21.66
|tip You will accept this quest automatically.
step
Enter the cave |goto 52.65,21.66 < 7 |walk
Follow the path down |goto 53.00,20.85 < 5 |walk
kill Alchemist Pitts##141980
|tip Inside the cave.
Slay Alchemist Pitts |q 52869/1 |goto 53.69,20.26
|next "Tortollan_Seekers_WQ"
step
label quest-51584
Run up the stairs |goto Tiragarde Sound/0 66.58,50.19 < 7 |only if walking
Follow the road |goto 66.20,50.61 < 7 |only if walking
Continue following the road |goto 65.39,50.11 < 7 |only if walking
Follow the path |goto 64.12,50.43 < 10 |only if walking
Continue following the path |goto 62.76,47.68 < 10 |only if walking
Continue following the path |goto 61.73,47.35 < 10 |only if walking
accept Azerite Madness##51584 |goto Tiragarde Sound/0 60.89,47.75
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51584/1 |goto 60.89,47.75
|next "Tortollan_Seekers_WQ"
step
label quest-51581
Jump down here |goto Tiragarde Sound/0 57.98,61.37 < 7 |only if walking
Cross the bridge |goto 59.39,59.75 < 7 |only if walking
Follow the road |goto 60.74,59.30 < 10 |only if walking
Continue following the road |goto 61.47,58.24 < 10 |only if walking
Follow the path |goto 59.37,53.78 < 10 |only if walking
Continue following the path |goto 59.24,51.35 < 10 |only if walking
accept Azerite Mining##51581 |goto Tiragarde Sound/0 58.52,49.44
|tip You will accept this quest automatically.
step
Kill Company enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51581/1 |goto 69.60,46.73
|next "Tortollan_Seekers_WQ"
step
label quest-52874
Follow the path |goto Tiragarde Sound/0 75.97,49.13 < 7 |only if walking
Follow the road |goto 76.74,48.99 < 10 |only if walking
Continue following the road |goto 77.11,49.98 < 10 |only if walking
Follow the path up |goto 77.95,50.73 < 10 |only if walking
Enter the cave |goto 78.77,53.25 < 5 |walk
accept Azerite Mining##52874 |goto Tiragarde Sound/0 78.89,53.23
|tip You will accept this quest automatically.
step
Enter the cave |goto 78.77,53.25 < 5 |walk
Kill Company enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52874/1 |goto 78.87,53.21
|next "Tortollan_Seekers_WQ"
step
label quest-51583
Jump down here |goto Tiragarde Sound/0 57.98,61.37 < 7 |only if walking
Cross the bridge |goto 59.39,59.75 < 7 |only if walking
Follow the road |goto 60.74,59.30 < 10 |only if walking
Continue following the road |goto 61.47,58.24 < 10 |only if walking
Follow the path |goto 59.37,53.78 < 10 |only if walking
Continue following the path |goto 59.24,51.35 < 10 |only if walking
Continue following the path |goto 58.45,49.35 < 10 |only if walking
Continue following the path |goto 59.48,48.09 < 10 |only if walking
accept Azerite Empowerment##51583 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
Use the extra action button onscreen
|tip Use it near Azeroth Wounds.
|tip They look like glowing blue areas on the ground around this area.
Heal #5# Azeroth Wounds |q 51583/1 |goto 60.57,47.28
|next "Tortollan_Seekers_WQ"
step
label quest-51652
accept Barman Bill##51652 |goto Tiragarde Sound/0 76.10,82.88
|tip You will accept this quest automatically.
step
Jump down here |goto 76.71,83.11 < 7 |only if walking
kill Barman Bill##129181 |q 51652/1 |goto 76.10,82.88
|next "Tortollan_Seekers_WQ"
step
label quest-51666
accept Bashmu##51666 |goto Tiragarde Sound/0 34.51,30.34
|tip You will accept this quest automatically.
step
kill Bashmu##132068 |q 51666/1 |goto 34.51,30.34
|next "Tortollan_Seekers_WQ"
step
label quest-51638
Follow the path down |goto Tiragarde Sound/0 57.52,61.93 < 7 |only if walking
Continue down the path |goto 58.07,63.21 < 7 |only if walking
Continue down the path |goto 58.49,64.68 < 7 |only if walking
Follow the path |goto 58.36,65.68 < 7 |only if walking
Continue following the path |goto 58.01,66.50 < 10 |only if walking
Follow the path up |goto 58.26,68.09 < 7 |only if walking
Continue following the path |goto 57.64,69.26 < 10 |only if walking
Cross the water |goto 58.39,70.35 < 10 |only if walking
Follow the path |goto 58.71,71.67 < 7 |only if walking
Continue following the path |goto 57.91,75.64 < 10 |only if walking
accept Beachhead##51638 |goto Tiragarde Sound/0 58.06,76.22
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144356
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51638/1 |goto 58.06,76.22
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51638/2 |goto 58.06,76.22
|next "Tortollan_Seekers_WQ"
step
label quest-51241
Follow the road |goto Tiragarde Sound/0 67.48,23.51 < 10 |only if walking
Jump down here |goto 69.13,21.37 < 7 |only if walking
Run up the stairs |goto 69.26,19.45 < 5 |only if walking
Cross the bridge |goto 69.44,19.23 < 5 |only if walking
accept The Bear Witch Project##51241 |goto Tiragarde Sound/0 71.09,17.84
|tip You will accept this quest automatically.
step
kill 10 Enthralled Ashclaw##130085 |q 51241/1 |goto 71.09,17.84
|next "Tortollan_Seekers_WQ"
step
label quest-50296
Follow the road |goto Tiragarde Sound/0 43.54,22.03 < 10 |only if walking
accept Billy Goat Barber##50296 |goto Tiragarde Sound/0 44.15,20.68
|tip You will accept this quest automatically.
step
use the Goat Shears##153596
|tip Use it on Gentle Goats around this area.
|tip Look for Gentle Goats around cliffs and rocks.
collect 6 Goat Fur##155681 |q 50296/1 |goto 44.15,20.68
|next "Tortollan_Seekers_WQ"
step
label quest-51841
Jump down here |goto Tiragarde Sound/0 86.29,80.82 < 7 |only if walking
Follow the path |goto 86.02,80.61 < 7 |only if walking
Continue following the path |goto 86.13,79.42 < 10 |only if walking
Continue following the path |goto 85.68,76.57 < 10 |only if walking
Continue up the path |goto 84.59,75.28 < 10 |only if walking
accept Blackthorne##51841 |goto Tiragarde Sound/0 84.38,73.75
|tip You will accept this quest automatically.
step
Follow the path up |goto 84.02,72.48 < 7 |only if walking
Continue up the path |goto 84.29,72.40 < 7 |only if walking
kill Blackthorne##139145 |q 51841/1 |goto 85.27,73.44
|next "Tortollan_Seekers_WQ"
step
label quest-51613
Follow the path |goto Tiragarde Sound/0 62.23,31.10 < 7 |only if walking
Continue following the path |goto 61.07,31.48 < 7 |only if walking
Continue following the path |goto 59.97,31.58 < 10 |only if walking
Continue following the path |goto 59.32,31.98 < 10 |only if walking
accept Bloodmaw##51613 |goto Tiragarde Sound/0 58.85,33.37
|tip You will accept this quest automatically.
step
kill Bloodmaw##138299 |q 51613/1 |goto 58.85,33.37
|next "Tortollan_Seekers_WQ"
step
label quest-51665
Follow the road up |goto Tiragarde Sound/0 75.18,43.59 < 7 |only if walking
Continue following the road |goto 76.93,44.02 < 7 |only if walking
Continue following the road |goto 77.57,43.44 < 7 |only if walking
Continue following the road |goto 79.02,42.23 < 7 |only if walking
Continue following the road |goto 80.02,41.77 < 7 |only if walking
Follow the path |goto 81.69,42.24 < 7 |only if walking
Continue following the path |goto 83.03,44.43 < 7 |only if walking
accept Broodmother Razora##51665 |goto Tiragarde Sound/0 83.54,44.83
|tip You will accept this quest automatically.
step
kill Broodmother Razora##130508 |q 51665/1 |goto 83.54,44.83
|next "Tortollan_Seekers_WQ"
step
label quest-51848
Follow the path |goto Tiragarde Sound/0 42.06,22.42 < 7 |only if walking
Continue down the path |goto 41.60,22.39 < 7 |only if walking
Continue following the path |goto 40.73,22.97 < 7 |only if walking
Continue following the path |goto 38.92,22.21 < 7 |only if walking
Enter the cave |goto 38.73,21.86 < 7 |walk
accept Captain Wintersail##51848 |goto Tiragarde Sound/0 38.82,22.03
|tip You will accept this quest automatically.
step
Enter the cave |goto 38.73,21.86 < 7 |walk
click Smuggler's Cache##280649
kill Barman Bill##129181 |q 51848/1 |goto 38.44,20.71
|next "Tortollan_Seekers_WQ"
step
label quest-51842
Jump down here |goto Tiragarde Sound/0 76.68,83.14 < 7 |only if walking
Follow the path |goto 75.46,83.30 < 10 |only if walking |goto 74.94,82.86
Continue following the path |goto 74.94,82.86 < 7 |only if walking
Continue following the path |goto 74.92,82.50 < 7 |only if walking
Continue following the path |goto 73.81,82.29 < 10 |only if walking
Jump down here |goto 73.03,81.99 < 7 |only if walking
accept Carla Smirk##51842 |goto Tiragarde Sound/0 72.65,81.46
|tip You will accept this quest automatically.
step
Cross the bridge |goto 72.56,81.40 < 5 |only if walking
Run up the stairs |goto 72.55,81.19 < 5 |only if walking
kill Carla Smirk##139152 |q 51842/1 |goto 88.62,80.20
|next "Tortollan_Seekers_WQ"
step
label quest-53314
Follow the path |goto Tiragarde Sound/0 67.30,22.88 < 7 |only if walking
Continue following the path |goto 67.62,21.35 < 7 |only if walking
Continue following the path |goto 67.75,20.19 < 10 |only if walking
accept Coarse Storm Silver##53314 |goto Tiragarde Sound/0 68.29,18.93
|tip You will accept this quest automatically.
step
click Coarse Storm Silver Deposit
collect Coarse Storm Silver##163626 |q 53314/1 |goto 68.29,18.93
|next "Tortollan_Seekers_WQ"
step
label quest-51405
Cross the water |goto Tiragarde Sound/0 73.07,42.04 < 10 |only if walking
accept Corruption in the Bay##51405 |goto Tiragarde Sound/0 32.62,25.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
Purge the Corruption |q 51405/1 |goto 32.62,25.68
|next "Tortollan_Seekers_WQ"
step
label quest-50234
accept Crews of Freehold##50234 |goto Tiragarde Sound/0 76.37,83.26
|tip You will accept this quest automatically.
stickystart "Collect_Cutwater_Corsair_Orders"
stickystart "Collect_Blackwater_Bruiser_Orders"
step
Kill enemies around this area
collect Bilge Rat Orders##153680 |q 50234/1 |goto 76.37,83.26
step
label "Collect_Cutwater_Corsair_Orders"
Kill enemies around this area
collect Cutwater Corsair Orders##153681 |q 50234/2 |goto 76.37,83.26
step
label "Collect_Blackwater_Bruiser_Orders"
Kill enemies around this area
collect Blacktooth Bruiser Orders##153682 |q 50234/3 |goto 76.37,83.26
|next "Tortollan_Seekers_WQ"
step
label quest-51579
Cross the water |goto Tiragarde Sound/0 64.04,30.73 < 10 |only if walking
Follow the path up |goto Boralus/0 33.11,53.11 < 5 |only if walking
Continue up the path |goto 33.92,55.78 < 5 |only if walking
Follow the path |goto 34.07,58.37 < 7 |only if walking
accept Dark Ranger Clea##51579 |goto Boralus/0 31.77,63.71
|tip You will accept this quest automatically.
step
Continue up the path |goto 33.92,55.78 < 5 |only if walking
Follow the path |goto 34.07,58.37 < 7 |only if walking
Continue following the path |goto 33.42,62.20 < 10 |only if walking
kill Dark Ranger Clea##138039 |q 51579/1 |goto 31.77,63.71
|next "Tortollan_Seekers_WQ"
step
label quest-51577
Follow the path |goto Boralus/0 49.47,64.01 < 7 |only if walking
Run up the stairs |goto 46.21,62.53 < 10 |only if walking
Continue up the stairs |goto 45.03,64.41 < 10 |only if walking
Follow the path |goto 43.47,67.89 < 7 |only if walking
Run up the stairs |goto 43.17,72.95 < 10 |only if walking
Follow the path |goto 38.64,73.03 < 10 |only if walking
Continue following the path |goto 35.35,69.69 < 7 |only if walking
accept Defending the Academy##51577 |goto Boralus/0 30.25,64.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Fallen Marine##138166+
|tip They look like dead soldiers on the ground around this area.
Hold Back the Horde |q 51577/1 |goto 26.02,63.20
|next "Tortollan_Seekers_WQ"
step
label quest-51284
Follow the path |goto Tiragarde Sound/0 53.15,29.26 < 7 |only if walking
Continue following the path |goto 53.58,29.24 < 7 |only if walking
Continue following the path |goto 53.95,28.68 < 7 |only if walking
Jump down here |goto 54.23,28.05 < 7 |only if walking
Follow the path |goto 55.35,27.60 < 7 |only if walking
Follow the path up |goto 55.72,27.34 < 7 |only if walking
accept Falcon Hunt##51284 |goto Tiragarde Sound/0 57.72,26.40
|tip You will accept this quest automatically.
step
clicknpc Hollowbeak Falcon##126626+
|tip They look like birds flying in the air around this area.
use the Bola Launcher##152643
|tip Use it on Hollowbeak Falcons.
Shoot Down #8# Hollowbeak Falcons |q 51284/1 |goto 57.72,26.40
|next "Tortollan_Seekers_WQ"
step
label quest-50776
Run down the stairs |goto Boralus/0 67.33,16.26 < 5 |only if walking
Follow the path |goto 65.84,20.41 < 7 |only if walking
Run down the stairs |goto 62.95,20.38 < 7 |only if walking
Follow the path |goto 62.58,23.38 < 10 |only if walking
Run up the stairs |goto 62.90,27.74 < 7 |only if walking
Run down the stairs |goto 60.16,30.23 < 7 |only if walking
accept False Prophets##50776 |goto Boralus/0 60.08,34.99
|tip You will accept this quest automatically.
step
clicknpc Tidesage Doomspeaker##134845+
|tip They look like hooded humans around this area.
kill 3 Corrupted Surge##142556 |q 50776/1 |goto 85.55,43.39
|next "Tortollan_Seekers_WQ"
step
label quest-52144
Follow the path |goto Tiragarde Sound/0 76.04,49.14 < 7 |only if walking
Follow the road |goto 76.61,48.96 < 7 |only if walking
Continue following the road |goto 77.30,49.47 < 10 |only if walking
accept Foundry Meltdown##52144 |goto Tiragarde Sound/0 78.74,49.67
|tip You will accept this quest automatically.
step
Follow the path |goto 79.68,49.76 < 10 |only if walking
Kill enemies around this area
click Experimental Azerite Weapons##295817+
|tip They look like a trio of glowing bombs on the ground around this area.
click Unfinished Irontide Cannon##296064+
|tip They look like large cannons on the ground around this area.
Delay the Foundry Production |q 52144/1 |goto 80.17,47.85
|next "Tortollan_Seekers_WQ"
step
label quest-51654
Jump down here |goto Tiragarde Sound/0 86.96,80.56 < 7 |only if walking
Follow the path |goto 88.07,78.73 < 10 |only if walking
accept Fowlmouth##51654 |goto Tiragarde Sound/0 90.45,77.11
|tip You will accept this quest automatically.
step
kill Fowlmouth##132211 |q 51654/1 |goto 90.45,77.11
|next "Tortollan_Seekers_WQ"
step
label quest-51662
Follow the path up |goto Tiragarde Sound/0 63.71,30.02 < 7 |only if walking
Continue up the path |goto 62.49,28.08 < 7 |only if walking
Continue up the path |goto 61.81,28.53 < 7 |only if walking
Continue up the path |goto 60.67,28.43 < 7 |only if walking
Continue following the path |goto 60.27,28.02 < 7 |only if walking
Continue following the path |goto 59.74,27.80 < 7 |only if walking
Continue up the path |goto 59.54,27.09 < 7 |only if walking
Continue up the path |goto 60.21,26.62 < 7 |only if walking
Continue down the path |goto 60.50,24.71 < 7 |only if walking
accept Foxhollow Skyterror##51662 |goto Tiragarde Sound/0 60.11,22.18
|tip You will accept this quest automatically.
step
kill Foxhollow Skyterror##132127 |q 51662/1 |goto 60.11,22.18
|next "Tortollan_Seekers_WQ"
step
label quest-53188
Jump down here |goto Tiragarde Sound/0 75.63,64.21 < 7 |only if walking
Follow the road |goto 75.46,63.29 < 10 |only if walking
Follow the path |goto 72.51,63.83 < 10 |only if walking
Continue up the path |goto 70.55,64.27 < 10 |only if walking
Continue up the path |goto 69.79,65.46 < 7 |only if walking
Continue up the path |goto 68.84,66.98 < 7 |only if walking
Continue up the path |goto 68.98,67.74 < 3 |only if walking
Continue up the path |goto 69.31,67.74 < 7 |only if walking
Continue up the path |goto 69.28,68.27 < 7 |only if walking
accept Frozen Freestyle##53188 |goto Tiragarde Sound/0 68.50,68.73
|tip You will accept this quest automatically.
step
talk Pengling Sledding Barker##131575
Talk to the Penguing Sledding Barker |q 53188/1 |goto 63.49,74.49
step
clicknpc Racing Pengling##131523
|tip Avoid the small mounds of snow on the ground around this area.
Ride the Pengling to the Goal |q 53188/2 |goto 63.49,74.49
|next "Tortollan_Seekers_WQ"
step
label quest-51611
Cross the water |goto Tiragarde Sound/0 67.78,48.67 < 10 |only if walking
Follow the path |goto 69.22,47.14 < 10 |only if walking
accept Ghost of the Deep##51611 |goto Tiragarde Sound/0 69.20,47.08
|tip You will accept this quest automatically.
step
kill Ghost of the Deep##138288 |q 51611/1 |goto 69.60,46.73
|next "Tortollan_Seekers_WQ"
step
label quest-52120
Follow the road |goto Tiragarde Sound/0 76.30,64.61 < 10 |walk
Jump down here |goto 76.69,62.96 < 7 |only if walking
Follow the path down |goto 76.59,61.02 < 7 |only if walking
Jump down here |goto 76.16,60.03 < 7 |only if walking
Follow the path |goto 76.61,58.85 < 7 |only if walking
accept Gnomish Azerite Extraction##52120 |goto Tiragarde Sound/0 77.60,58.87
|tip You will accept this quest automatically.
step
Kill Azerite enemies around this area
|tip They will periodically attack the Azerite Extractor
Protect the Azerite Extractor |q 52120/1 |goto 77.60,58.87
|next "Tortollan_Seekers_WQ"
step
label quest-51317
Jump down here |goto Tiragarde Sound/0 53.13,27.51 < 10 |only if walking
Follow the path |goto 53.18,26.18 < 10 |only if walking
Continue following the path |goto 54.03,21.21 < 10 |only if walking
Continue following the path |goto 54.59,19.53 < 10 |only if walking
accept Grounding the Grimestone##51317 |goto Tiragarde Sound/0 56.27,17.37
|tip You will accept this quest automatically.
step
Kill Grimstone enemies around this area
Slay #12# Grimstone Troggs |q 51317/1 |goto 57.16,16.92
|next "Tortollan_Seekers_WQ"
step
label quest-50299
accept Gryphon Wranglin'##50299 |goto Tiragarde Sound/0 43.98,21.39
|tip You will accept this quest automatically.
step
clicknpc Wild Gryphon##129001
|tip It flies around this area.
use the Tether Shot##156928
|tip Use it on a Wild Gryphon.
Mount the Wild Gryphon |invehicle |goto 43.98,21.39 |q 50299
step
Fight the gryphon
|tip Use all of the abilites on your action bar as soon as they are available.
Wrangle a Wild Gryphon |q 50299/2 |goto 43.98,21.39
|next "Tortollan_Seekers_WQ"
step
label quest-51844
Jump down here |goto Tiragarde Sound/0 57.98,61.29 < 7 |only if walking
Follow the path |goto 58.85,59.56 < 10 |only if walking
Follow the road |goto 57.90,58.57 < 10 |only if walking
Continue following the road |goto 57.35,57.21 < 10 |only if walking
accept Gulliver##51844 |goto Tiragarde Sound/0 57.84,55.91
|tip You will accept this quest automatically.
step
kill Gulliver##139233 |q 51844/1 |goto 57.84,55.91
|next "Tortollan_Seekers_WQ"
step
label quest-52145
Jump down here |goto Tiragarde Sound/0 76.98,82.96 < 3 |only if walking
Jump down here |goto 76.90,82.28 < 7 |only if walking
Follow the path |goto 77.06,81.41 < 7 |only if walking
Cross the water |goto 77.02,80.05 < 7 |only if walking
Follow the path |goto 76.96,78.74 < 7 |only if walking
accept Heave-Ho!##52145 |goto Tiragarde Sound/0 76.80,77.21
|tip You will accept this quest automatically.
step
Cross the water |goto 76.61,77.06 < 7 |only if walking
click Tangled Rigging##276243
|tip Each time you click it, run away from the post.
click "Sea Dog" Grog##276235
|tip Eventually, you will pull this in.
collect "Sea Dog" Grog##152667 |q 52145/1 |goto 77.04,76.28
|next "Tortollan_Seekers_WQ"
step
label quest-51245
Follow the path up |goto Tiragarde Sound/0 67.32,22.82 < 7 |only if walking
Continue following the path |goto 67.60,21.40 < 7 |only if walking
accept I'm a Lumberjack and I'm Okay##51245 |goto Tiragarde Sound/0 68.31,18.42
|tip You will accept this quest automatically.
stickystart "Slay_Wicker_Invaders"
step
clicknpc Entangled Lumberjack##143791+
|tip They look like humans tangled in vines on the ground around this area.
Free #4# Entangled Lumberjacks |q 51245/1 |goto 68.31,18.42
step
label "Slay_Wicker_Invaders"
Kill enemies around this area
Slay #8# Wicker Invaders |q 51245/2 |goto 68.31,18.42
|next "Tortollan_Seekers_WQ"
step
label quest-51664
Follow the path |goto Tiragarde Sound/0 42.74,22.49 < 7 |only if walking
Continue down the path |goto 43.22,22.70 < 7 |only if walking
Continue following the path |goto 43.64,23.78 < 7 |only if walking
Continue following the path |goto 43.89,23.60 < 7 |only if walking
Continue following the path |goto 44.49,22.93 < 7 |only if walking
Continue following the path |goto 45.89,22.77 < 7 |only if walking
Cross the bridge |goto 46.49,22.13 < 7 |only if walking
accept Kulett the Ornery##51664 |goto Tiragarde Sound/0 47.81,22.28
|tip You will accept this quest automatically.
step
kill Kulett the Ornery##131520 |q 51664/1 |goto 47.81,22.28
|next "Tortollan_Seekers_WQ"
step
label quest-50295
Follow the path |goto Tiragarde Sound/0 43.05,22.31 < 10 |only if walking
Follow the path up |goto 43.58,20.71 < 10 |only if walking
Continue up the path |goto 43.38,18.95 < 7 |only if walking
Continue up the path |goto 42.15,17.37 < 7 |only if walking
accept Like Pulling Teeth##50295 |goto Tiragarde Sound/0 41.76,14.74
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Wendigo_Teeth"
step
Follow the path |goto 41.91,13.92 < 7 |only if walking
Continue following the path |goto 42.10,13.31 < 7 |only if walking
Enter the cave |goto 43.11,13.42 < 7 |walk
kill Gore Horn##140404 |q 50295/2 |goto 43.62,12.65
step
label "Collect_Intact_Wendigo_Teeth"
Kill Wendigo enemies around this area
collect 25 Intact Wendigo Tooth##161312 |q 50295/1 |goto 41.76,14.74
|next "Tortollan_Seekers_WQ"
step
label quest-51406
Follow the path |goto Tiragarde Sound/0 53.14,29.29 < 7 |only if walking
Continue following the path |goto 53.64,29.18 < 7 |only if walking
Jump down here |goto 53.93,28.60 < 7 |only if walking
Jump down here |goto 54.13,28.35 < 7 |only if walking
Jump down here |goto 54.32,28.09 < 7 |only if walking
Follow the path up |goto 55.35,27.53 < 7 |only if walking
accept The Lord's Hunt##51406 |goto Tiragarde Sound/0 57.41,26.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
Join in the Hunt! |q 51406/1 |goto 76.10,82.88
|next "Tortollan_Seekers_WQ"
step
label quest-51895
Jump down here |goto Tiragarde Sound/0 57.98,61.37 < 7 |only if walking
Cross the bridge |goto 59.39,59.75 < 7 |only if walking
Follow the path |goto 60.27,59.48 < 10 |only if walking
Continue following the path |goto 59.99,56.09 < 10 |only if walking
Continue following the path |goto 58.46,52.78 < 10 |only if walking
accept Maison the Portable##51895 |goto Tiragarde Sound/0 58.16,50.09
|tip You will accept this quest automatically.
step
kill Maison the Portable##139290
Slay Maison the Portable |q 51895/1 |goto 58.16,50.09
|next "Tortollan_Seekers_WQ"
step
label quest-51632
accept Make Loh Go##51632 |goto Tiragarde Sound/0 61.80,31.36
|tip You will accept this quest automatically.
step
talk Toki##144361
Tell him _"I am ready."_
Speak to Toki |q 51632/1 |goto 61.74,31.41
step
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
Guide Loh to the Goal |q 51632/2 |goto 61.80,31.36
|next "Tortollan_Seekers_WQ"
step
label quest-51659
Follow the path |goto Tiragarde Sound/0 42.67,22.51 < 7 |only if walking
Continue following the path |goto 43.20,22.42 < 7 |only if walking
Follow the path up |goto 43.89,21.68 < 7 |only if walking
Continue up the path |goto 44.27,20.12 < 7 |only if walking
Follow the path |goto 43.92,18.31 < 7 |only if walking
Enter the cave |goto 43.45,17.16 < 10 |walk
accept Ghost of the Deep##51659 |goto Tiragarde Sound/0 69.20,47.08
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.45,17.16 < 10 |walk
kill Merianae##131252
|tip Inside the cave.
Slay Merianae |q 51659/1 |goto 43.06,16.78
|next "Tortollan_Seekers_WQ"
step
label quest-50315
Follow the path |goto Tiragarde Sound/0 66.20,50.82 < 10 |only if walking
Follow the path up |goto 67.06,51.99 < 10 |only if walking
accept Not On the Itinerary##50315 |goto Tiragarde Sound/0 67.22,54.73
|tip You will accept this quest automatically.
step
click Volatile Bubble##278479+
|tip They look like shimmering bubbles floating above the ground around this area.
clicknpc Terrified Guest##133419+
|tip They look like frightened people running around this area.
Kill enemies around this area
kill Tort Jaw##139235 |q 50315/1 |goto 67.32,55.65
|next "Tortollan_Seekers_WQ"
step
label quest-52430
Follow the road up |goto Tiragarde Sound/0 75.18,43.59 < 7 |only if walking
Continue following the road |goto 76.93,44.02 < 7 |only if walking
Continue following the road |goto 77.57,43.44 < 7 |only if walking
Continue following the road |goto 79.02,42.23 < 7 |only if walking
Continue following the road |goto 80.02,41.77 < 7 |only if walking
Follow the path |goto 81.69,42.24 < 7 |only if walking
Continue following the path |goto 83.03,44.43 < 7 |only if walking
Follow the path down |goto 83.71,44.20 < 7 |only if walking
Continue down the path |goto 84.42,42.72 < 10 |only if walking
Cross the water |goto 84.64,39.95 < 10 |only if walking
accept Not So Bad Down Here##52430 |goto Tiragarde Sound/0 86.21,38.63
|tip You will accept this quest automatically.
step
talk Kwint##141077
|tip Underwater.
Tell him _"Begin pet battle."_
Defeat Kwint |q 52430/1 |goto 86.21,38.63
|next "Tortollan_Seekers_WQ"
step
label quest-51843
Follow the path down |goto Tiragarde Sound/0 57.92,61.53 < 7 |only if walking
Follow the road down |goto 58.54,60.54 < 7 |only if walking
Cross the bridge |goto 59.41,59.73 < 7 |only if walking
Follow the road |goto 60.61,59.39 < 7 |only if walking
Follow the path up |goto 62.00,57.85 < 7 |only if walking
Continue up the path |goto 62.76,59.42 < 7 |only if walking
Continue following the path |goto 63.89,59.87 < 7 |only if walking
Continue following the path |goto 63.94,61.64 < 7 |only if walking
Continue following the path |goto 64.54,62.57 < 7 |only if walking
accept P4-N73R4##51843 |goto Tiragarde Sound/0 64.77,63.32
|tip You will accept this quest automatically.
step
Follow the path up |goto 65.03,63.65 < 7 |only if walking
Continue following the path |goto 65.52,64.28 < 7 |only if walking
kill P4-N73R4##139205 |q 51843/1 |goto 38.90,15.30
|next "Tortollan_Seekers_WQ"
step
label quest-51660
Follow the path |goto Tiragarde Sound/0 42.65,22.51 < 7 |only if walking
Continue following the path |goto 43.11,22.36 < 7 |only if walking
Follow the path up |goto 43.54,20.95 < 7 |only if walking
Continue up the path |goto 43.44,18.99 < 7 |only if walking
Continue up the path |goto 42.18,17.43 < 7 |only if walking
Follow the path |goto 42.11,16.78 < 7 |only if walking
Continue following the path |goto 41.32,16.01 < 7 |only if walking
Follow the path up |goto 40.51,15.35 < 7 |only if walking
Enter the cave |goto 39.88,14.90 < 5 |walk
accept Pack Leader Asenya##51660 |goto Tiragarde Sound/0 69.20,47.08
|tip You will accept this quest automatically.
step
Enter the cave |goto 39.88,14.90 < 5 |walk
kill Pack Leader Asenya##131262
|tip Inside the cave.
Slay Pack Leader Asenya |q 51660/1 |goto 38.90,15.30
|next "Tortollan_Seekers_WQ"
step
label quest-51092
accept Picturesque Boralus##51092 |goto Boralus/0 47.91,65.32
|tip You will accept this quest automatically.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the guard.
Capture the Admiral's Elite Guard |q 51092/6 |goto 49.73,64.15
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the steps.
Capture the Proudmoore Keep Steps |q 51092/3 |goto 49.46,62.64
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the fountain.
Capture the Upper Square |q 51092/5 |goto 51.03,62.80
step
Run up the stairs |goto 48.91,62.54 < 10 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the door.
Capture the Proudmoore Keep Door |q 51092/2 |goto 44.89,62.60
step
Follow the path |goto 44.73,67.21 < 7 |only if walking
Run up the stairs |goto 43.38,67.79 < 7 |only if walking
Follow the path |goto 42.81,72.54 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the hedge maze.
Capture the Maze Fountain |q 51092/4 |goto 40.80,75.53
step
Jump down here |goto 43.78,75.67 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the plaza statue.
Capture the Embassy Plaza |q 51092/1 |goto 46.07,77.52
|next "Tortollan_Seekers_WQ"
step
label quest-51090
accept Picturesque Norwington Estate##51090 |goto Tiragarde Sound/0 52.85,28.67
|tip You will accept this quest automatically.
step
Follow the road up |goto Tiragarde Sound/0 52.66,29.03 < 7 |only if walking
Continue following the road |goto 52.76,30.12 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the building entrance.
Capture the Estate Entrance |q 51090/1 |goto 53.00,30.48
step
Enter the building |goto 53.26,30.85 < 3 |walk
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from Lady Norwington.
|tip She walks around.
Capture Lady Norwington |q 51090/4 |goto 53.72,31.37
step
Leave the building |goto 53.27,30.85 < 3 |only if walking
Follow the road down |goto 52.67,29.97 < 7 |only if walking
Jump down here |goto 52.49,28.09 < 7 |only if walking
Follow the path |goto 52.36,27.54 < 7 |only if walking
Continue following the path |goto 51.96,26.67 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from Magoo.
Capture Magoo |q 51090/5 |goto 51.40,25.82
step
Follow the road |goto 51.21,25.93 < 7 |only if walking
Continue following the road |goto 50.84,25.64 < 7 |only if walking
Run up the stairs |goto 50.37,26.07 < 7 |only if walking
Follow the path |goto 49.95,25.41 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the Award Podium.
Capture the Award Podium |q 51090/3 |goto 50.18,24.92
step
Jump down here |goto 49.27,24.36 < 10 |only if walking
Jump down here |goto 48.58,24.12 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the huge waterfall.
Capture the Tall Waterfall |q 51090/2 |goto 48.06,23.73
|next "Tortollan_Seekers_WQ"
step
label quest-50164
accept Polly Want A Cracker?##50164 |goto Tiragarde Sound/0 76.94,83.19
|tip You will accept this quest automatically.
step
clicknpc Runaway Macaw##132339
|tip They look like bright colored birds flying around this area.
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws.
Feed #6# Runaway Macaws |q 50164/1 |goto 76.94,83.19
|next "Tortollan_Seekers_WQ"
step
label quest-51661
Follow the path down |goto Tiragarde Sound/0 58.58,60.52 < 7 |only if walking
Cross the bridge |goto 59.42,59.73 < 7 |only if walking
Follow the road |goto 60.65,59.35 < 7 |only if walking
Follow the path up |goto 61.97,57.77 < 7 |only if walking
Continue up the path |goto 62.75,59.40 < 7 |only if walking
Continue up the path |goto 63.50,59.83 < 7 |only if walking
accept Raging Swell##51661 |goto Tiragarde Sound/0 64.74,58.66
|tip You will accept this quest automatically.
step
kill Raging Swell##132179 |q 51661/1 |goto 64.74,58.66
|next "Tortollan_Seekers_WQ"
step
label quest-51890
Follow the road |goto Tiragarde Sound/0 76.37,63.54 < 10 |only if walking
Continue following the road |goto 74.19,63.07 < 10 |only if walking
Continue following the road |goto 73.44,62.42 < 10 |only if walking
Continue following the road |goto 71.38,63.05 < 10 |only if walking
Follow the path |goto 69.85,62.63 < 7 |only if walking
accept Ranja the Last Chillpaw##51890 |goto Tiragarde Sound/0 68.31,63.54
|tip You will accept this quest automatically.
step
kill Ranja##139278 |q 51890/1 |goto 68.31,63.54
|next "Tortollan_Seekers_WQ"
step
label quest-53313
Follow the path |goto Tiragarde Sound/0 66.17,22.65 < 10 |only if walking
Cross the water |goto 65.77,22.37 < 10 |only if walking
Follow the path |goto 65.03,21.99 < 10 |only if walking
accept Rough Monelite##53313 |goto Tiragarde Sound/0 62.72,18.37
|tip You will accept this quest automatically.
step
click Rough Monelite Deposit##297467
collect Monelite Ore##152512 |q 53313/1 |goto 62.65,17.78
|next "Tortollan_Seekers_WQ"
step
label quest-51656
Follow the road |goto Tiragarde Sound/0 66.21,22.59 < 7 |only if walking
Continue following the road |goto 65.86,21.37 < 7 |only if walking
Continue following the road |goto 64.50,18.62 < 7 |only if walking
Jump down here |goto 63.75,18.09 < 7 |only if walking
Follow the path |goto 61.91,16.46 < 10 |only if walking
accept Saurolisk Tamer Mugg##51656 |goto Tiragarde Sound/0 60.81,17.31
|tip You will accept this quest automatically.
step
click Suspicious Pile of Meat##281172
|tip Kill the wave of enemies that spawns.
kill Mugg##127290 |q 51656/1 |goto 60.81,17.31
|next "Tortollan_Seekers_WQ"
step
label quest-51893
accept Sawtooth##51893 |goto Boralus/0 78.15,46.22
|tip You will accept this quest automatically.
step
kill Sawtooth##139287
|tip It swims around underwater around this area.
Slay Sawtooth |q 51893/1 |goto 78.15,46.22
|next "Tortollan_Seekers_WQ"
step
label quest-50767
Run down the stairs |goto Boralus/0 67.33,16.21 < 7 |only if walking
Follow the path |goto 65.93,20.44 < 7 |only if walking
Continue following the path |goto 63.08,20.56 < 7 |only if walking
Continue following the path |goto 59.03,22.82 < 7 |only if walking
Continue following the path |goto 57.98,24.95 < 7 |only if walking
Run up the stairs |goto 57.72,30.04 < 7 |only if walking
Follow the path |goto 58.36,35.95 < 7 |only if walking
Follow the path |goto 56.88,38.36 < 7 |only if walking
accept The Scrimshaw Gang##50767 |goto Tiragarde Sound/0 70.49,29.58
|tip You will accept this quest automatically.
stickystart "Destroy_Bootleg_Weapon_Crates"
step
Follow the path |goto 70.17,29.72 < 7 |only if walking
Continue following the path |goto 70.20,30.87 < 10 |only if walking
Enter the building |goto 70.56,30.65 < 3 |walk
Run down the stairs |goto 70.85,30.33 < 5 |walk
kill Don Adams##138603
|tip Inside the building.
Slay Don Adams |q 50767/2 |goto 70.62,30.33
step
label "Destroy_Bootleg_Weapon_Crates"
Kill Scrimshaw enemies around this area
collect Scrimshaw Ledger##158677 |q 50767/1 |goto 70.15,30.67
|next "Tortollan_Seekers_WQ"
step
label quest-51626
Jump down here |goto Tiragarde Sound/0 57.98,61.37 < 7 |only if walking
Cross the bridge |goto 59.39,59.75 < 7 |only if walking
Follow the path |goto 60.27,59.48 < 10 |only if walking
Continue following the path |goto 60.94,59.09 < 7 |only if walking
Continue up the path |goto 62.16,57.57 < 7 |only if walking
accept Shell Game##51626 |goto Tiragarde Sound/0 62.88,57.57
|tip You will accept this quest automatically.
step
Follow the path up |goto 63.09,57.83 < 7 |only if walking
Continue up the path |goto 63.13,56.94 < 7 |only if walking
Continue up the path |goto 63.50,56.74 < 7 |only if walking
talk Collector Kojo##144350
Tell him _"I am ready."_
Speak to Collector Kojo |q 51626/1 |goto 63.55,57.25
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51626/2 |goto 63.55,57.25
|next "Tortollan_Seekers_WQ"
step
label quest-51892
Follow the road up |goto Tiragarde Sound/0 52.64,28.95 < 7 |only if walking
Continue following the road |goto 52.89,30.33 < 10 |only if walking
Enter the building |goto 53.26,30.84 < 3 |only if walking
Leave the building |goto 53.41,31.06 < 3 |only if walking
Jump down carefully here |goto 53.90,31.49 < 7 |only if walking
Jump down here |goto 54.27,31.61 < 5 |only if walking
accept Shiverscale the Toxic##51892 |goto Tiragarde Sound/0 55.11,32.40
|tip You will accept this quest automatically.
step
kill Shiverscale the Toxic##139285 |q 51892/1 |goto 55.11,32.40
|next "Tortollan_Seekers_WQ"
step
label quest-53331
accept Show-Off##53331 |goto Tiragarde Sound/0 51.65,26.20
|tip You will accept this quest automatically.
step
clicknpc Cooper##127718
Mount Cooper |q 53331/1 |goto 51.65,26.20
step
Score 300 Points |q 53331/2 |goto 51.65,26.20
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Click the "Exit" Button on Your Action Bar |outvehicle
|next "Tortollan_Seekers_WQ"
step
label quest-49994
Follow the road up |goto Tiragarde Sound/0 67.41,23.64 < 7 |only if walking
Continue following the road |goto 68.30,22.37 < 10 |only if walking
Follow the path |goto 68.83,19.50 < 7 |only if walking
Cross the bridge |goto 69.33,19.28 < 7 |only if walking
Follow the path |goto 70.64,18.67 < 10 |only if walking
Continue up the path |goto 71.11,17.73 < 7 |only if walking
Continue up the path |goto 71.93,17.48 < 10 |only if walking
Continue up the path |goto 72.28,16.09 < 10 |only if walking
Continue up the path |goto 74.46,13.16 < 7 |only if walking
Continue up the path |goto 74.93,13.07 < 7 |only if walking
Continue up the path |goto 74.83,12.11 < 7 |only if walking
accept Sliding with Style##49994 |goto Tiragarde Sound/0 75.23,11.94
|tip You will accept this quest automatically.
step
talk Pengling Sledding Barker##131575
Talk to the Penguing Sledding Barker |q 49994/1 |goto 75.23,11.94
step
clicknpc Racing Pengling##131523
|tip Avoid the small mounds of snow on the ground around this area.
Ride the Pengling to the Goal |q 49994/2 |goto 82.61,10.57
|next "Tortollan_Seekers_WQ"
step
label quest-53189
Follow the path |goto Tiragarde Sound/0 76.55,65.69 < 7 |only if walking
Continue following the path |goto 77.07,66.61 < 10 |only if walking
Continue following the path |goto 78.91,67.42 < 10 |only if walking
Continue up the path |goto 79.64,67.47 < 10 |only if walking
accept Slippery Slopes##53189 |goto Tiragarde Sound/0 79.84,66.57
|tip You will accept this quest automatically.
step
talk Rodrigo##129098
Talk to the Penguing Sledding Barker |q 53189/1 |goto 79.84,66.57
step
clicknpc Racing Pengling##131523
|tip Avoid the small mounds of snow on the ground around this area.
Ride the Pengling to the Goal |q 53189/2 |goto 79.84,66.57
|next "Tortollan_Seekers_WQ"
step
label quest-52143
Follow the path |goto Tiragarde Sound/0 75.96,49.09 < 7 |only if walking
Follow the path up |goto 76.68,48.94 < 7 |only if walking
Continue up the path |goto 77.64,49.59 < 7 |only if walking
accept Smaller Haulers##52143 |goto Tiragarde Sound/0 80.19,47.84
|tip You will accept this quest automatically.
stickystart "Kill_Ashvane_Company_Workers"
step
talk Urchin Worker##142727
Tell them _"Head down to the water. There is a boat waiting to take you to safety."_
Free #8# Urchin Workers |q 52143/1 |goto 80.19,47.84
step
label "Kill_Ashvane_Company_Workers"
Kill Company enemies around this area
Slay #8# Ashvane Company Workers |q 52143/2 |goto 80.19,47.84
|next "Tortollan_Seekers_WQ"
step
label quest-53315
Run up the stairs |goto Tiragarde Sound/0 66.58,50.19 < 7 |only if walking
Follow the road |goto 66.20,50.61 < 7 |only if walking
Continue following the road |goto 65.39,50.11 < 7 |only if walking
Follow the path |goto 64.12,50.43 < 10 |only if walking
Continue following the path |goto 62.76,47.68 < 10 |only if walking
Continue following the path |goto 61.73,47.35 < 10 |only if walking
accept Smooth Platinum##53315 |goto Tiragarde Sound/0 60.89,47.75
|tip You will accept this quest automatically.
step
click Smooth Platinum Deposit##297473
collect Smooth Platinum##163627 |q 53315/1 |goto 63.67,50.34
|next "Tortollan_Seekers_WQ"
step
label quest-50977
Follow the road up |goto Tiragarde Sound/0 75.50,43.55 < 7 |only if walking
Follow the path |goto 76.91,41.83 < 7 |only if walking
Follow the road |goto 76.85,38.87 < 10 |only if walking
Continue following the road |goto 76.74,38.66 < 7 |only if walking
Continue following the road |goto 76.74,38.66 < 10 |only if walking
accept Smuggler Shakedown##50977 |goto Tiragarde Sound/0 76.74,38.66
|tip You will accept this quest automatically.
stickystart "Destroy_Bootleg_Weapon_Crates"
step
Run up the stairs |goto 76.74,38.66 < 5 |only if walking
Follow the path |goto 76.74,38.66 < 7 |only if walking
Run down the stairs |goto 76.74,38.66 < 7 |only if walking
kill Mattius "The Gun" Grubb##136198 |q 50977/2 |goto 76.74,38.66
step
label "Destroy_Bootleg_Weapon_Crates"
click Bootleg Weapon Crate##287091+
|tip They look like large brown boxes on the ground around this area.
collect 5 Bootleg Weapon Crate##159673 |q 50977/1 |goto 76.74,38.66
|next "Tortollan_Seekers_WQ"
step
label quest-50421
Jump down here |goto Tiragarde Sound/0 76.73,83.14 < 7 |only if walking
Follow the path |goto 74.83,83.23 < 10 |only if walking
Continue following the path |goto 74.49,81.71 < 7 |only if walking
Jump down here |goto 74.18,81.52 < 7 |only if walking
Follow the path |goto 72.73,81.50 < 7 |only if walking
Cross the bridge |goto 72.54,81.38 < 5 |only if walking
accept Sparring on the Spar##50421 |goto Tiragarde Sound/0 72.10,81.37
|tip You will accept this quest automatically.
step
click Strong Rope##281297
Climb the Mast |q 50421/1 |goto 72.10,81.37
step
Push the Opponent Off the Spar |q 50421/2 |goto 72.04,81.36
|tip "Lunge" is your primary attack.
|tip "Flourish" is a feint that interrupts your opponent's "Riposte" ability.
|tip "Riposte" is a short duration defensive cooldown.
|next "Tortollan_Seekers_WQ"
step
label quest-51651
Cross the bridge |goto Tiragarde Sound/0 77.12,83.52 < 5 |only if walking
Follow the path |goto 77.33,83.73 < 7 |only if walking
Cross the bridge |goto 77.84,84.26 < 7 |only if walking
accept Squacks##51651 |goto Tiragarde Sound/0 79.86,82.10
|tip You will accept this quest automatically.
step
Run up the stairs |goto 79.91,82.87 < 5 |only if walking
Continue up the stairs |goto 80.08,83.08 < 5 |only if walking
Follow the path |goto 80.22,82.88 < 7 |only if walking
kill Squacks##132280 |q 51651/1 |goto 80.91,82.82
|next "Tortollan_Seekers_WQ"
step
label quest-51839
Follow the road down |goto Tiragarde Sound/0 52.51,28.64 < 10 |only if walking
Follow the path |goto 51.36,29.66 < 7 |only if walking
Jump down here |goto 51.38,30.38 < 7 |only if walking
Follow the path |goto 51.42,32.99 < 7 |only if walking
Jump down here |goto 51.41,34.24 < 7 |only if walking
Follow the path |goto 51.17,35.84 < 10 |only if walking
Continue following the path |goto 49.98,37.41 < 7 |only if walking
accept Squirgle of the Depths##51839 |goto Tiragarde Sound/0 48.90,37.02
|tip You will accept this quest automatically.
step
kill Squirgle of the Depths##139135 |q 51839/1 |goto 48.90,37.02
|next "Tortollan_Seekers_WQ"
step
label quest-51388
Follow the path |goto Tiragarde Sound/0 42.11,30.03 < 7 |only if walking
accept Stopping the Infestation##51388 |goto Tiragarde Sound/0 70.49,29.58
|tip You will accept this quest automatically.
stickystart "Slay_Parasitic_Mindstealers"
step
click Infested Cargo##289363+
|tip They look like small crates underwater around this area.
Burn #5# Infested Cargo |q 51388/1 |goto 41.10,29.53
step
label "Slay_Parasitic_Mindstealers"
kill 5 Parasitic Mindstealer##125959
|tip Underwater.
Slay #5# Parasitic Mindstealers |q 51388/2 |goto 41.10,29.53
|next "Tortollan_Seekers_WQ"
step
label quest-52804
accept Something Stirs in the Depths##52804 |goto Tiragarde Sound/0 32.50,25.36
|tip You will accept this quest automatically.
stickystart "Slay_Corrupted_Wildlife"
step
click Abyss Idol##141782
|tip They look like stone statues with a purple flame inside underwater around this area.
|tip They appear on your minimap as a yellow dot.
Destroy #5# Abyss Idols |q 52804/1 |goto 32.50,25.36
step
label "Slay_Corrupted_Wildlife"
Kill Proudmoore enemies around this area
|tip Underwater.
Slay #8# Corrupted Wildlife |q 52804/2 |goto 32.50,25.36
|next "Tortollan_Seekers_WQ"
step
label quest-52751
Follow the path |goto Tiragarde Sound/0 67.36,23.53 < 10 |only if walking
Follow the road up |goto 68.25,22.43 < 10 |only if walking
Continue following the road |goto 68.73,19.97 < 10 |only if walking
Continue following the road |goto 68.25,18.16 < 10 |only if walking
Continue following the road |goto 67.92,16.41 < 10 |only if walking
Continue following the road |goto 67.07,15.09 < 10 |only if walking
Continue following the road |goto 67.50,14.23 < 10 |only if walking
accept Strange Looking Dogs##52751 |goto Tiragarde Sound/0 67.72,12.85
|tip You will accept this quest automatically.
step
talk Burly##141479
Tell him _"Begin pet battle."_
Defeat Burly |q 52751/1 |goto 67.72,12.85
|next "Tortollan_Seekers_WQ"
step
label quest-51024
collect 40 Akunda's Bite##152507 |q 51024 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Akunda's Bite##51024 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Akunda's Bite##51024 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51028
collect 40 Blood-Stained Bone##154164 |q 51028 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Blood-Stained Bone##51028 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Blood-Stained Bone##51028 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51029
collect 40 Calcified Bone##154165 |q 51029 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Calcified Bone##51029 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Calcified Bone##51029 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51030
collect 40 Coarse Leather##152541 |q 51030 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Coarse Leather##51030 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Coarse Leather##51030 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51035
collect 40 Deep Sea Satin##152577 |q 51035 |future
|tip Farm them from humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Deep Sea Satin##51035 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Deep Sea Satin##51035 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52375
collect 40 Great Sea Catfish##152547 |q 52375 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Great Sea Catfish##52375 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Coarse Leather##52375 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51033
collect 40 Mistscale##153051 |q 51033 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Mistscale##51033 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Monelite Ore##51033 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51017
collect 40 Monelite Ore##152512 |q 51017 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Monelite Ore##51017 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Monelite Ore##51017 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52379
collect 20 Redtail Loach##152549 |q 52379 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Redtail Loach##52379 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Redtail Loach##52379 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51027
collect 40 Sea Stalk##152511 |q 51027 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Sea Stalk##51027 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Sea Stalk##51027 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51032
collect 40 Shimmerscale##153050 |q 51032 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Shimmerscale##51032 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Shimmerscale##51032 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51026
collect 40 Siren's Pollen##152509 |q 51026 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Siren's Pollen##51026 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Siren's Pollen##51026 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52378
collect 20 Slimy Mackerel##152544 |q 52378 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Slimy Mackerel##52378 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Slimy Mackerel##52378 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51023
collect 40 Star Moss##152506 |q 51023 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Star Moss##51023 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Star Moss##51023 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51021
collect 40 Storm Silver Ore##152579 |q 51021 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Storm Silver Ore##51021 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Storm Silver Ore##51021 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51031
collect 40 Tempest Hide##154722 |q 51031 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Tempest Hide##51031 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tempest Hide##51031 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51034
collect 40 Tidespray Linen##152576 |q 51034 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tidespray Linen##51034 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tidespray Linen##51034 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52377
collect 20 Tiragarde Perch##152548 |q 52377 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tiragarde Perch##52377 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tiragarde Perch##52377 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51025
collect 40 Winter's Kiss##152508 |q 51025 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Winter's Kiss##51025 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Winter's Kiss##51025 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51385
accept A Supply of Stingers##51385 |goto Tiragarde Sound/0 41.09,29.54
|tip You will accept this quest automatically.
step
kill Barbtail Stingray##128676+
|tip Underwater.
collect 6 Intact Venomous Barb##153486 |q 51385/1 |goto 41.09,29.54
|next "Tortollan_Seekers_WQ"
step
label quest-52159
accept Swab This!##52159 |goto Tiragarde Sound/0 77.06,82.91
|tip You will accept this quest automatically.
step
clicknpc Riding Macaw##143068
Mount the Riding Macaw |invehicle |goto 77.06,82.62 |q 52159
step
Kill enemies around this area
|tip Use the "Vile Bombardment" ability on your action bar to accomplish this.
Bomb #100# Pirates |q 52159/1 |goto 76.41,83.52
|next "Tortollan_Seekers_WQ"
step
label quest-51891
Follow the path up |goto Tiragarde Sound/0 67.06,23.11 < 5 |only if walking
Follow the path |goto 67.42,22.43 < 7 |only if walking
Follow the path |goto 67.83,21.51 < 7 |only if walking
Follow the path |goto 66.96,18.50 < 10 |only if walking
accept Sythian the Swift##51891 |goto Tiragarde Sound/0 66.85,13.89
|tip You will accept this quest automatically.
step
kill Sythian the Swift##139280
|tip He runs a small path around this area.
Slay Sythian the Swift |q 51891/1 |goto 66.85,13.89
|next "Tortollan_Seekers_WQ"
step
label quest-50792
Run down the stairs |goto Boralus/0 67.40,16.04 < 5 |only if walking
Follow the path |goto 65.96,20.48 < 7 |only if walking
Continue following the path |goto 65.04,21.29 < 7 |only if walking
Continue following the path |goto 64.76,23.24 < 7 |only if walking
Continue following the path |goto 63.21,25.25 < 10 |only if walking
Continue following the path |goto 63.90,30.51 < 7 |only if walking
accept Taking Bribes##50792 |goto Boralus/0 64.13,33.05
|tip You will accept this quest automatically.
step
Follow the path |goto 60.43,32.76 < 7 |only if walking
talk Dubious Guard##134847+
Ask them _"Why aren't you at your post?"_
|tip One or more of them may attack you.
Question #5# Dubious Guards |q 50792/1 |goto 61.65,37.57
|next "Tortollan_Seekers_WQ"
step
label quest-51849
Follow the road |goto Tiragarde Sound/0 66.21,22.59 < 7 |only if walking
Continue following the road |goto 65.86,21.37 < 7 |only if walking
Continue following the road |goto 64.50,18.62 < 7 |only if walking
Jump down here |goto 63.75,18.09 < 7 |only if walking
Follow the path |goto 61.91,16.46 < 10 |only if walking
accept Tempestria##51849 |goto Tiragarde Sound/0 60.81,17.31
|tip You will accept this quest automatically.
step
click Suspicious Pile of Meat##281172
|tip Kill the wave of enemies that spawns.
kill Tempestria##133356 |q 51849/1 |goto 60.81,17.31
|next "Tortollan_Seekers_WQ"
step
label quest-52010
Jump down here |goto Boralus/0 76.40,73.12 < 3 |only if walking
Run down the stairs |goto 75.89,74.87 < 5 |only if walking
Cross the water |goto 74.66,76.14 < 5 |only if walking
accept The Tendrils of Fate##52010 |goto Boralus/0 70.43,76.93
|tip You will accept this quest automatically.
stickystart "Kill_Tidesage_Archivist"
step
Follow the path up |goto 68.82,76.07 < 7 |only if walking
kill Sister Adrianna##136174 |q 52010/3 |goto 68.13,74.68
step
Follow the path |goto 66.97,75.65 < 7 |only if walking
Continue following the path |goto 67.47,77.90 < 5 |only if walking
Continue following the path |goto 68.79,79.81 < 7 |only if walking
kill Brother Matthew##136166
|tip He walks up and down the path around this area.
Slay Brother Matthew |q 52010/2 |goto 68.18,80.80
step
Follow the path |goto 69.47,82.88 < 7 |only if walking
Continue following the path |goto 67.97,85.12 < 7 |only if walking
Continue following the path |goto 66.16,84.19 < 7 |only if walking
Continue following the path |goto 64.58,85.70 < 7 |only if walking
kill Sister Celicia##136177 |q 52010/1 |goto 63.67,87.80
step
label "Kill_Tidesage_Archivist"
kill 6 Tidesage Archivist##136158 |q 52010/4 |goto 74.69,76.24
|next "Tortollan_Seekers_WQ"
step
label quest-51655
Run up the stairs |goto Tiragarde Sound/0 66.58,50.19 < 7 |only if walking
Follow the road |goto 66.20,50.61 < 7 |only if walking
Continue following the road |goto 65.39,50.11 < 7 |only if walking
accept Teres##51655 |goto Tiragarde Sound/0 63.67,50.34
|tip You will accept this quest automatically.
step
kill Teres##131389 |q 51655/1 |goto 63.67,50.34
|next "Tortollan_Seekers_WQ"
step
label quest-52471
Follow the path |goto Tiragarde Sound/0 61.58,31.35 < 7 |only if walking
Continue following the path |goto 59.80,31.92 < 10 |only if walking
accept That's a Big Carcass##52471 |goto Tiragarde Sound/0 59.58,33.31
|tip You will accept this quest automatically.
step
talk Delia Hanako##141292
Tell her _"Begin pet battle."_
Defeat Delia Hanako |q 52471/1 |goto 59.58,33.31
|next "Tortollan_Seekers_WQ"
step
label quest-51621
Cross the water |goto Tiragarde Sound/0 73.07,42.04 < 10 |only if walking
accept Tidal Teachings##51621 |goto Tiragarde Sound/0 73.07,42.04
|tip You will accept this quest automatically.
step
Kill enemies around this area
Click Here After Disrupting the First Ritual |confirm
step
Follow the path up |goto 73.01,42.03 < 7 |only if walking
Continue up the path |goto 73.01,42.03 < 7 |only if walking
Kill enemies around this area
|tip Kill all of the channeling enemies around this area.
|tip Grasp from Beyond will spawn after.
Stop the Ritual |q 51621/1 |goto 73.01,42.03
|next "Tortollan_Seekers_WQ"
step
label quest-51847
Follow the path |goto Tiragarde Sound/0 66.23,50.81 < 10 |only if walking
Follow the path up |goto 67.12,52.07 < 10 |only if walking
Cross the bridge |goto 68.00,52.25 < 7 |only if walking
Follow the road |goto 68.88,51.91 < 10 |only if walking
Continue following the road |goto 70.00,53.56 < 10 |only if walking
accept Tort Jaw##51847 |goto Tiragarde Sound/0 70.40,55.72
|tip You will accept this quest automatically.
step
kill Tort Jaw##139235 |q 51847/1 |goto 70.40,55.72
|next "Tortollan_Seekers_WQ"
step
label quest-52155
Jump down here |goto Tiragarde Sound/0 86.79,80.39 < 7 |only if walking
accept Treasure in the Tides##52155 |goto Tiragarde Sound/0 88.54,79.05
|tip You will accept this quest automatically.
stickystart "Kill_Wailing_Sirens"
step
click Washed Up Cargo##296159+
|tip They look like brown crates on the ground around this area.
collect 8 Proudmoore Supply Crate##163099 |q 52155/1 |goto 88.54,79.05
step
label "Kill_Wailing_Sirens"
kill 6 Wailing Siren##126440 |q 52155/2 |goto 88.54,79.05
|next "Tortollan_Seekers_WQ"
step
label quest-53346
accept Trogg Tromping##53346 |goto Tiragarde Sound/0 51.65,26.20
|tip You will accept this quest automatically.
step
clicknpc Cooper##127718
Mount Cooper |q 53346/1 |goto 51.65,26.20
step
Kill Grimestone enemies around this area
|tip Use the abilities on your action bar.
Disrupt the Trogg Attack |q 53346/2 |goto 51.03,26.85
step
Click the "Exit" Button on Your Action Bar |outvehicle
|next "Tortollan_Seekers_WQ"
step
label quest-51657
Follow the path |goto Tiragarde Sound/0 67.36,23.53 < 10 |only if walking
Follow the road up |goto 68.25,22.43 < 10 |only if walking
Continue following the road |goto 68.73,19.97 < 10 |only if walking
Continue following the road |goto 68.25,18.16 < 10 |only if walking
Continue following the road |goto 67.92,16.41 < 10 |only if walking
Continue following the road |goto 67.07,15.09 < 10 |only if walking
Continue following the road |goto 67.50,14.23 < 10 |only if walking
Continue following the road |goto 68.31,13.26 < 10 |only if walking
Continue following the road |goto 69.10,13.27 < 10 |only if walking
Continue following the road |goto 70.08,13.39 < 10 |only if walking
accept Twin-Hearted Construct##51657 |goto Tiragarde Sound/0 70.08,13.39
|tip You will accept this quest automatically.
step
Enter the cave |goto 70.29,12.82 < 5 |walk
click Ritual Effigy##280603
|tip Inside the cave.
kill Twin-hearted Construct##131984 |q 51657/1 |goto 70.34,12.49
|next "Tortollan_Seekers_WQ"
step
label quest-52455
Jump down carefully here |goto Tiragarde Sound/0 86.64,80.94 < 5 |only if walking
accept Unbreakable##52455 |goto Tiragarde Sound/0 88.62,80.20
|tip You will accept this quest automatically.
step
clicknpc Chitara##141215
Defeat Chitara |q 52455/1 |goto 88.62,80.20
|next "Tortollan_Seekers_WQ"
step
label quest-51758
Follow the path |goto Boralus/0 49.45,64.55 < 7 |only if walking
Follow the path |goto 52.48,58.44 < 7 |only if walking
Jump down here |goto 52.43,57.13 < 7 |only if walking
Cross the water |goto 53.57,52.70 < 5 |only if walking
accept Weapons Shipment##51758 |goto Boralus/0 53.24,51.34
|tip You will accept this quest automatically.
step
Run up the stairs |goto 53.06,52.51 < 7 |only if walking
Follow the path |goto 53.55,50.19 < 7 |only if walking
Continue following the path |goto 51.26,48.44 < 7 |only if walking
Run up the stairs |goto 52.01,47.08 < 7 |only if walking
click Azerite Bombs##291059
|tip They look like small wooden crates on the ground around this area.
Kill enemies around this area
collect 40 Unstable Azerite Bomb##160667 |q 51758/1 |goto 52.68,44.10
|next "Tortollan_Seekers_WQ"
step
label quest-52163
Follow the path |goto Tiragarde Sound/0 66.99,23.84 < 7 |only if walking
Cross the bridge |goto 66.34,24.87 < 7 |only if walking
Follow the road |goto 65.53,25.93 < 7 |only if walking
Continue following the path |goto 64.05,28.21 < 10 |only if walking
Follow the path up |goto 63.18,29.17 < 7 |only if walking
Continue up the path |goto 62.51,28.08 < 7 |only if walking
Continue up the path |goto 61.73,28.44 < 7 |only if walking
Continue up the path |goto 60.85,28.45 < 7 |only if walking
Continue up the path |goto 59.52,27.52 < 7 |only if walking
Continue up the path |goto 59.63,27.01 < 7 |only if walking
Continue up the path |goto 60.65,26.38 < 10 |only if walking
accept The Winged Typhoon##52163 |goto Tiragarde Sound/0 61.60,26.41
|tip You will accept this quest automatically.
step
Follow the path up |goto 62.04,25.71 < 7 |only if walking
kill Azurethos##136385
|tip Run away during "Azurethos' Fury." |grouprole EVERYONE
|tip During "Azurethos' Fury," dodge the tornados on the ground. |grouprole EVERYONE
|tip When Azurethos casts Gale Force, don't stand in the path of the intended target. |grouprole EVERYONE
|tip Avoid "Wing Buffet" whenever possible. |grouprole TANK
|tip When affected by "Wing Buffet," re-establish threat quickly. |grouprole TANK
Slay Azurethos |q 52163/1 |goto 62.68,23.37
|next "Tortollan_Seekers_WQ"
step
label quest-53281
Follow the path |goto Tiragarde Sound/0 43.05,22.31 < 10 |only if walking
Follow the path up |goto 43.58,20.71 < 10 |only if walking
Continue up the path |goto 43.38,18.95 < 7 |only if walking
Continue up the path |goto 42.15,17.37 < 7 |only if walking
accept Winter's Kiss Cluster##53281 |goto Tiragarde Sound/0 41.57,14.69
|tip You will accept this quest automatically.
step
Follow the path |goto 41.91,13.92 < 7 |only if walking
Continue following the path |goto 41.81,13.35 < 7 |only if walking
Continue following the path |goto 41.28,13.32 < 7 |only if walking
clicknpc Winter's Kiss Cluster##143725
Gather from the Winter's Kiss Cluster |q 53281/1 |goto 41.58,13.89
|next "Tortollan_Seekers_WQ"
step
label quest-50983
collect 40 Akunda's Bite##152507 |q 50983 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Akunda's Bite##50983 |goto Tiragarde Sound/0 73.68,24.99
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Akunda's Bite##50983 |goto 73.68,24.99
|next "Tortollan_Seekers_WQ"
step
label quest-50984
collect 40 Winter's Kiss##152508 |q 50984 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Winter's Kiss##50984 |goto Tiragarde Sound/0 73.68,24.99
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Winter's Kiss##50984 |goto 73.68,24.99
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Vol'Dun World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Vol'Dun, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=864,
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-51096
Follow the path |goto Vol'dun/0 39.90,84.40 < 7 |only if walking
Continue following the path |goto 41.43,84.98 < 7 |only if walking
Continue following the path |goto 43.56,87.97 < 7 |only if walking
Continue up the path |goto 44.22,88.42 < 7 |only if walking
Continue up the path |goto 45.02,89.91 < 7 |only if walking
Continue following the path |goto 45.25,89.39 < 7 |only if walking
Continue up the path |goto 45.63,87.24 < 7 |only if walking
Continue up the path |goto 44.85,86.84 < 7 |only if walking
Continue up the path |goto 45.19,86.28 < 7 |only if walking
Continue up the path |goto 46.42,85.74 < 7 |only if walking
Continue following the path |goto 47.46,86.75 < 7 |only if walking
Enter the cave |goto 47.88,88.16 < 7 |walk
accept Azer'tor##51096 |goto Vol'dun/0 48.02,88.49
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.88,88.16 < 7 |walk
Follow the path |goto 48.22,88.81 < 7 |walk
Continue following the path |goto 48.44,89.03 < 7 |walk
kill Azer'tor##128553 |q 51096/1 |goto 49.03,89.03
|next "Tortollan_Seekers_WQ"
step
label quest-51185
accept Azerite Empowerment##51185 |goto Vol'dun/0 60.67,62.51
|tip You will accept this quest automatically.
step
kill Skithis the Infused##136732 |q 51185/1 |goto 60.67,62.51
|next "Tortollan_Seekers_WQ"
step
label quest-51422
Follow the path |goto Vol'dun/0 38.84,83.78 < 7 |only if walking
Continue following the path |goto 38.54,82.74 < 7 |only if walking
Run up the stairs |goto 39.19,77.94 < 7 |only if walking
Follow the path |goto 39.66,77.23 < 7 |only if walking
Run up the stairs |goto 40.03,77.31 < 7 |only if walking
Follow the path |goto 41.00,77.14 < 7 |only if walking
Continue following the path |goto 41.60,70.75 < 10 |only if walking
Continue following the path |goto 44.84,68.98 < 10 |only if walking
Continue following the path |goto 48.13,70.03 < 10 |only if walking
Continue following the path |goto 50.68,68.94 < 7 |only if walking
Continue following the path |goto 52.92,64.50 < 10 |only if walking
accept Azerite Madness##51422 |goto Vol'dun/0 57.47,60.95
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51422/1 |goto 59.34,61.24
|next "Tortollan_Seekers_WQ"
step
label quest-50975
accept Azerite Mining##50975 |goto Vol'dun/0 34.65,63.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 50975/1 |goto 34.65,63.00
You can find more in the cave at [34.27,62.77]
|next "Tortollan_Seekers_WQ"
step
label quest-52875
accept Azerite Mining##52875 |goto Vol'dun/0 34.65,63.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52875/1 |goto 34.65,63.00
You can find more in the cave at [34.27,62.77]
|next "Tortollan_Seekers_WQ"
step
label quest-51117
accept Bajiani the Slick##51117 |goto Vol'dun/0 31.09,80.95
|tip You will accept this quest automatically.
step
kill Bajiani the Slick##128497 |q 51117/1 |goto 31.00,81.09
|next "Tortollan_Seekers_WQ"
step
label quest-51641
Jump down carefully here |goto Vol'dun/0 62.20,22.62 < 7 |only if walking
Jump down carefully here |goto 62.42,22.81 < 7 |only if walking
Follow the path |goto 63.21,22.98 < 10 |only if walking
Continue following the path |goto 63.97,21.50 < 7 |only if walking
Continue following the path |goto 64.46,20.30 < 7 |only if walking
Continue following the path |goto 66.26,21.46 < 7 |only if walking
accept Beachhead##51641 |goto Vol'dun/0 66.61,21.54
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51641/1 |goto 66.61,21.54
|next "Tortollan_Seekers_WQ"
step
label quest-51118
accept Bloodwing Bonepicker##51118 |goto Vol'dun/0 56.07,53.57
|tip You will accept this quest automatically.
step
clicknpc Enormous Egg##136390
kill Bloodwing Bonepicker##136393 |q 51118/1 |goto 56.07,53.57
|next "Tortollan_Seekers_WQ"
step
label quest-51155
Follow the path |goto Vol'dun/0 27.09,50.58 < 10 |only if walking
Follow the path down |goto 27.00,50.05 < 7 |only if walking
Continue down the path |goto 27.53,48.51 < 10 |only if walking
Continue down the path |goto 28.25,47.96 < 10 |only if walking
Continue following the path |goto 28.72,46.76 < 7 |only if walking
Continue following the path |goto 29.26,44.88 < 10 |only if walking
accept Brgl-Lrgl the Basher##51155 |goto Vol'dun/0 30.41,45.60
|tip You will accept this quest automatically.
step
Enter the cave |goto 29.99,46.27 < 5 |walk
kill Brgl-Lrgl the Basher##134643
|tip Inside the cave.
Slay Brgl-Lrgl the Basher |q 51155/1 |goto 29.77,46.48
|next "Tortollan_Seekers_WQ"
step
label quest-51793
accept Bubbling Totem Testing##51793 |goto Vol'dun/0 48.81,43.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51793/1 |goto 47.48,44.17
|next "Tortollan_Seekers_WQ"
step
label quest-51562
accept Damaged Goods##51562 |goto Vol'dun/0 44.31,88.97
|tip You will accept this quest automatically.
stickystart "Slay_Ashvane_Pirates"
step
use the Torch##160923
|tip Use it on Ashvane Cargo around this area.
|tip They look like stacks of crates and barrels on the ground around this area.
Destroy #10# Ashvane Cargo |q 51562/1 |goto 44.31,88.97
step
label "Slay_Ashvane_Pirates"
Kill Ashvane enemies around this area
Slay #8# Ashvane Pirates |q 51562/2 |goto 44.31,88.97
|next "Tortollan_Seekers_WQ"
step
label quest-51794
accept Erupting Totem Testing##51794 |goto Vol'dun/0 48.81,43.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51794/1 |goto 47.48,44.17
|next "Tortollan_Seekers_WQ"
step
label quest-51156
Follow the path |goto Vol'dun/0 47.62,34.49 < 7 |only if walking
Continue down the path |goto 48.94,34.41 < 7 |only if walking
Continue up the path |goto 49.88,34.62 < 7 |only if walking
Continue following the path |goto 50.68,34.93 < 7 |only if walking
Continue following the path |goto 51.07,34.71 < 7 |only if walking
Continue down the path |goto 52.23,36.23 < 7 |only if walking
accept Fangcaller Xorreth##51156 |goto Vol'dun/0 52.93,35.43
|tip You will accept this quest automatically.
step
kill Fangcaller Xorreth##136323 |q 51156/1 |goto 53.64,34.57
|next "Tortollan_Seekers_WQ"
step
label quest-51565
Run down the stairs |goto Vol'dun/0 36.70,36.57 < 7 |only if walking
accept Feeding Frenzy##51565 |goto Vol'dun/0 36.22,40.75
|tip You will accept this quest automatically.
step
Follow the path up |goto 36.12,41.33 < 5 |only if walking
Follow the path up |goto 36.22,41.57 < 5 |only if walking
clicknpc Gulch Beetle##137077
|tip They look like small dark colored beetles on the ground around this area.
clicknpc King Rakataka##137069
|tip Use the extra action button onscreen to feed him.
|tip When his yellow energy bar filles up, he will die.
|tip He walks around this area.
Feed King Rakataka to Death |q 51565/1 |goto 53.64,34.57
|next "Tortollan_Seekers_WQ"
step
label quest-51564
Cross the bridge |goto Vol'dun/0 59.75,20.05 < 10 |only if walking
Follow the path |goto 59.26,19.60 < 7 |only if walking
Follow the path up |goto 58.13,16.70 < 10 |only if walking
accept Fertilizer Duty##51564 |goto Vol'dun/0 53.22,15.75
|tip You will accept this quest automatically.
step
clicknpc Fertilizer##136770+
|tip Use the extra action button onscreen to feed meat to Dustmane hyenas.
|tip After a short pause, they will leave "fertilizer."
|tip They look like small brown mounds on the ground around this area.
Collect #10# Fertilizer |q 51564/1 |goto 53.22,15.75
|next "Tortollan_Seekers_WQ"
step
label quest-51157
Jump down carefully here |goto Vol'dun/0 62.33,19.00 < 7 |only if walking
Jump down here |goto 62.24,18.58 < 7 |only if walking
Follow the path |goto 62.35,13.93 < 10 |only if walking
Continue following the path |goto 60.43,9.97 < 10 |only if walking
accept Golanar##51157 |goto Vol'dun/0 59.51,8.49
|tip You will accept this quest automatically.
step
kill Golanar##129027
|tip It walks around this area.
Slay Golanar |q 51157/1 |goto 59.51,8.49
|next "Tortollan_Seekers_WQ"
step
label quest-51099
accept Gut-Gut the Glutton##51099 |goto Vol'dun/0 62.74,47.40
|tip You will accept this quest automatically.
step
Continue down the path |goto 62.64,47.69 < 5 |only if walking
Continue up the path |goto 62.74,47.41 < 5 |only if walking
Continue up the path |goto 62.78,48.33 < 5 |only if walking
Continue following the path |goto 63.02,48.45 < 7 |only if walking
Enter the cave |goto 63.96,47.98 < 7 |walk
kill Gut-Gut the Glutton##128674 |q 51099/1 |goto 64.02,47.50
|next "Tortollan_Seekers_WQ"
step
label quest-51108
Follow the path |goto Vol'dun/0 38.63,34.75 < 7 |only if walking
Run up the stairs |goto 39.54,37.51 < 7 |only if walking
Run up the stairs |goto 40.57,39.11 < 7 |only if walking
Follow the path |goto 40.82,39.49 < 7 |only if walking
Continue up the path |goto 42.06,43.67 < 10 |only if walking
Continue following the path |goto 45.35,47.15 < 10 |only if walking
Continue following the path |goto 47.84,49.52 < 7 |only if walking
Continue up the path |goto 49.25,51.42 < 10 |only if walking
accept Hivemother Kraxi##51108 |goto Vol'dun/0 53.11,51.42
|tip You will accept this quest automatically.
step
Jump down here |goto 53.16,51.43 < 7 |only if walking
Enter the cave |goto 53.85,51.51 < 7 |walk
Follow the path |goto 54.07,52.33 < 7 |only if walking
kill Hivemother Kraxi##130443
|tip Inside the cave.
Slay Hivemother Kraxi |q 51108/1 |goto 53.72,53.37
|next "Tortollan_Seekers_WQ"
step
label quest-51933
accept Instructions Not Included##51933 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51933/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51928
accept Instructions Not Included##51928 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51928/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51102
Run down the stairs |goto Vol'dun/0 28.06,51.01 < 5 |only if walking
Follow the path |goto 28.86,51.02 < 7 |only if walking
Run down the stairs |goto 29.46,50.53 < 7 |only if walking
Jump down carefully here |goto 30.85,50.64 < 7 |only if walking
Follow the path up |goto 31.78,50.23 < 7 |only if walking
Continue up the path |goto 32.29,50.59 < 7 |only if walking
Continue up the path |goto 33.85,51.24 < 7 |only if walking
accept Kamid the Trapper##51102 |goto Vol'dun/0 34.55,50.68
|tip You will accept this quest automatically.
step
Follow the path up |goto 35.27,50.80 < 7 |only if walking
Continue following the path |goto 36.62,50.18 < 10 |only if walking
Continue following the path |goto 36.56,49.29 < 7 |only if walking
Continue up the path |goto 35.83,48.72 < 7 |only if walking
Continue up the path |goto 35.18,49.59 < 7
Cross the bridge |goto 35.21,50.18 < 7 |only if walking
Follow the path |goto 35.36,51.06 < 7 |only if walking
Enter the cave |goto 35.25,51.54 < 7 |walk
kill Kamid the Trapper##128686
Slay Kamid the Trapper |q 51102/1 |goto 35.07,51.83
|next "Tortollan_Seekers_WQ"
step
label quest-52850
accept Keeyo's Champions of Vol'dun##52850 |goto Vol'dun/0 57.13,48.96
|tip You will accept this quest automatically.
step
talk Keeyo##141879
Tell him _"Begin pet battle."_
Defeat Keeyo |q 52850/1 |goto 57.13,48.96
|next "Tortollan_Seekers_WQ"
step
label quest-51635
Jump down carefully here |goto Vol'dun/0 62.05,22.52 < 7 |only if walking
Jump down carefully here |goto 62.42,22.81 < 7 |only if walking
accept Make Loh Go##51635 |goto Vol'dun/0 63.36,23.51
|tip You will accept this quest automatically.
step
talk Toki##138480
Tell him _"I am ready."_
Speak to Toki |q 51635/1 |goto 63.36,23.51
step
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
Guide Loh to the Goal |q 51635/2 |goto 63.36,23.51
|next "Tortollan_Seekers_WQ"
step
label quest-51153
Cross the water |goto Vol'dun/0 37.91,83.88 < 10 |only if walking
accept Mor'fani the Exile##51153 |goto Vol'dun/0 36.56,88.50
|tip You will accept this quest automatically.
step
Follow the path |goto 36.55,89.69 < 7 |only if walking
Continue following the path |goto 37.23,90.33 < 7 |only if walking
Continue following the path |goto 38.04,89.83 < 7 |only if walking
Continue following the path |goto 38.11,87.96 < 7 |only if walking
Run up the stairs |goto 37.71,87.98 < 7 |only if walking
Enter the building |goto 37.45,88.46 < 5 |walk
kill Mor'fani the Exile##134694
|tip Inside the building.
Slay Mor'fani the Exile |q 51153/1 |goto 37.44,89.10
|next "Tortollan_Seekers_WQ"
step
label quest-51834
Follow the path up |goto Vol'dun/0 38.73,83.51 < 7 |only if walking
Continue up the path |goto 38.39,81.59 < 10 |only if walking
Run up the stairs |goto 39.21,77.94 < 7 |only if walking
accept No Negotiations##51834 |goto Vol'dun/0 40.29,76.22
|tip You will accept this quest automatically.
stickystart "Kill_Zandalari_Exiles"
step
click Prisoner Cage##228536+
|tip They look like thin wooden cages on the ground around this area.
Free #5# 7th Legion Soldiers |q 51834/1 |goto 40.19,75.95
step
label "Kill_Zandalari_Exiles"
kill 8 Zandalari Exile##135311 |q 51834/2 |goto 40.19,75.95
|next "Tortollan_Seekers_WQ"
step
label quest-51853
accept Preserve the Oasis##51853 |goto Vol'dun/0 41.46,62.07
|tip You will accept this quest automatically.
stickystart "Slay_Whistlebloom_Predators"
step
click Fertile Soil##291206+
|tip They look like mounds of fresh dirt on the ground around this area.
Water #6# Fertile Soil |q 51853/2 |goto 41.46,62.07
step
label "Slay_Whistlebloom_Predators"
Kill Whistlebloom enemies around this area
Kill #8# Whistlebloom Predators |q 51853/1 |goto 41.46,62.07
|next "Tortollan_Seekers_WQ"
step
label quest-51760
accept Ranishu Feeding Frenzy##51760 |goto Vol'dun/0 54.25,60.21
|tip You will accept this quest automatically.
stickystart "Stomp_Ranishu_Grubs"
step
kill 8 Frenzied Ranishu##137208 |q 51760/1 |goto 54.25,60.21
step
label "Stomp_Ranishu_Grubs"
clicknpc Ranishu Grub##137194+
|tip They look like small worms on the ground around this area.
Stomp #40# Ranishu Grubs |q 51760/2 |goto 54.25,60.21
|next "Tortollan_Seekers_WQ"
step
label quest-51124
accept Relic Hunter Hazaak##51124 |goto Vol'dun/0 48.87,71.77
|tip You will accept this quest automatically.
step
kill Relic Hunter Hazaak##136340
|tip Inside the building.
Slay Sethrak Relic Hunter |q 51124/1 |goto 48.88,72.11
|next "Tortollan_Seekers_WQ"
step
label quest-52196
accept Sandswept Bones##52196 |goto Vol'dun/0 44.37,56.06
|tip You will accept this quest automatically.
step
kill Dunegorger Kraulok##138794
|tip Pick up Ravenous Ranishu quickly. |grouprole TANK
|tip Quickly kill adds that spawn. |grouprole DAMAGER
|tip Avoid standing in front of Kraulok during "Bellows." |grouprole EVERYONE
|tip Quickly move out of earth-rumbling areas on the ground. |grouprole EVERYONE
Slay Dunegorger Kraulok |q 52196/1 |goto 44.37,56.06
|next "Tortollan_Seekers_WQ"
step
label quest-51107
accept Scaleclaw Broodmother##51107 |goto Vol'dun/0 44.18,79.35
|tip You will accept this quest automatically.
step
Run down the stairs |goto 43.71,79.33 < 7 |only if walking
Follow the path |goto 43.89,80.07 < 7 |only if walking
kill Scaleclaw Broodmother##127776 |q 51107/1 |goto 44.54,80.20
|next "Tortollan_Seekers_WQ"
step
label quest-51629
accept Shell Game##51629 |goto Vol'dun/0 27.34,50.21
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51629/1 |goto 27.34,50.21
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51629/2 |goto 27.34,50.21
|next "Tortollan_Seekers_WQ"
step
label quest-51104
Follow the path down |goto Vol'dun/0 46.66,34.33 < 7 |only if walking
Jump down carefully here |goto 45.97,33.16 < 7 |only if walking
Follow the path |goto 45.54,32.75 < 7 |only if walking
Continue following the path |goto 45.25,30.05 < 10 |only if walking
Continue following the path |goto 45.91,27.21 < 7 |only if walking
Enter the cave |goto 46.38,27.14 < 7 |walk
accept Skycaller Teskris##51104 |goto Vol'dun/0 47.02,27.03
|tip You will accept this quest automatically.
step
Follow the path down |goto 47.18,26.36 < 7 |walk
kill Skycaller Teskris##134571
|tip Inside the cave.
Slay Skycaller Teskris |q 51104/1 |goto 46.98,25.17
|next "Tortollan_Seekers_WQ"
step
label quest-52856
Enter the building |goto Vol'dun/0 27.22,51.40 < 7 |only if walking
Leave the building |goto 27.21,53.72 < 7 |only if walking
accept Snakes on a Terrace##52856 |goto Vol'dun/0 26.59,54.92
|tip You will accept this quest automatically.
step
talk Sizzik##141945
Tell him _"Begin pet battle."_
Defeat Sizzik |q 52856/1 |goto 26.59,54.92
|next "Tortollan_Seekers_WQ"
step
label quest-51120
Follow the path |goto Vol'dun/0 46.69,34.68 < 10 |only if walking
Continue following the path |goto 45.38,34.48 < 7 |only if walking
Follow the path down |goto 45.24,33.29 < 10 |only if walking
Continue following the path |goto 44.67,29.96 < 10 |only if walking
Continue following the path |goto 43.68,29.70 < 10 |only if walking
Continue following the path |goto 41.60,29.64 < 10 |only if walking
Continue following the path |goto 40.81,26.65 < 10 |only if walking
accept Stef "Marrow" Quin##51120 |goto Vol'dun/0 41.38,24.20
|tip You will accept this quest automatically.
step
kill Captain Stef "Marrow" Quin##136346
|tip She walks around this area
Slay Captain Stef "Marrow" Quin |q 51120/1 |goto 41.38,24.20
|next "Tortollan_Seekers_WQ"
step
label quest-52059
accept Thar She Sinks##52059 |goto Vol'dun/0 37.80,83.01
|tip You will accept this quest automatically.
step
clicknpc Stolen Canoe##139582
Board the Stolen Canoe |q 52059/1 |goto 37.80,83.01
stickystart "Destroy_Cannons"
stickystart "Slay_Pirates"
step
clicknpc Stolen Canoe##139582
|tip Use the "Throw Torch" ability on canoes floating in the water around this area.
Sink #8# Canoes |q 52059/2 |goto 32.98,84.19
step
label "Destroy_Cannons"
|tip Use the "Throw Torch" ability on cannons along the piers around this area.
Destroy #8# Cannons |q 52059/3 |goto 32.98,84.19
step
label "Slay_Pirates"
|tip Use the "Release Depth Charges" ability above the pirates underwater around this area.
Slay #50# Pirates |q 52059/4 |goto 32.98,84.19
|next "Tortollan_Seekers_WQ"
step
label quest-51995
accept Vorrik's Vengeance##51995 |goto Vol'dun/0 47.26,35.17
|tip You will accept this quest automatically.
step
Follow the path |goto 46.94,34.76 < 10 |only if walking
Continue following the path |goto 45.55,34.66 < 10 |only if walking
Continue up the path |goto 45.37,36.59 < 7 |only if walking
Continue up the path |goto 45.15,37.50 < 7 |only if walking
Continue up the path |goto 45.91,37.69 < 7 |only if walking
Continue following the path |goto 46.44,37.33 < 7 |only if walking
Continue up the path |goto 46.10,38.95 < 10 |only if walking
Continue up the path |goto 46.56,39.37 < 7 |only if walking
clicknpc Rakjan the Unbroken##139454
Mount Rakjan the Unbroken |q 51995/1 |goto 47.16,39.38
step
Slay #50# Faithless |q 51995/2 |goto 47.76,32.25
|next "Tortollan_Seekers_WQ"
step
label quest-51112
Run down the stairs |goto Vol'dun/0 28.03,51.03 < 7 |only if walking
Follow the path |goto 28.86,51.03 < 7 |only if walking
Run down the stairs |goto 29.46,50.49 < 7 |only if walking
Cross the bridge |goto 30.63,50.23 < 7 |only if walking
Follow the path |goto 32.72,47.07 < 7 |only if walking
Continue following the path |goto 34.71,45.34 < 7 |only if walking
Continue up the path |goto 35.64,45.16 < 7 |only if walking
accept Warbringer Hozzik##51112 |goto Vol'dun/0 36.04,46.71
|tip You will accept this quest automatically.
step
Follow the path |goto 36.51,46.69 < 7 |only if walking
kill Warbringer Hozzik##129180 |q 51112/1 |goto 37.01,46.05
|next "Tortollan_Seekers_WQ"
step
label quest-51113
Run down the stairs |goto Vol'dun/0 28.03,51.02 < 7 |only if walking
Follow the path |goto 28.93,51.00 < 7 |only if walking
Run up the stairs |goto 29.82,52.55 < 7 |only if walking
accept Warlord Zothix##51113 |goto Vol'dun/0 30.20,52.56
|tip You will accept this quest automatically.
step
Run up the stairs |goto 29.82,52.55 < 7 |only if walking
kill Warlord Zothix##134638 |q 51113/1 |goto 30.20,52.56
|next "Tortollan_Seekers_WQ"
step
label quest-52864
accept What Do You Mean, Mind Controlling Plants?##52864 |goto Vol'dun/0 30.52,61.95
|tip You will accept this quest automatically.
step
clicknpc Spineleaf##141969
Defeat Spineleaf |q 52864/1 |goto 30.52,61.95
|next "Tortollan_Seekers_WQ"
step
label quest-51963
Cross the bridge |goto Vol'dun/0 51.87,34.60 < 7 |only if walking
Run up the stairs |goto 51.95,31.18 < 10 |only if walking
Follow the path |goto 51.92,29.25 < 10 |only if walking
Run up the stairs |goto 50.98,28.42 < 7 |only if walking
accept The Wrath of Vorrik##51963 |goto Vol'dun/0 50.02,27.28
|tip You will accept this quest automatically.
step
Expunge #100# Faithless |q 51963/1 |goto 50.02,27.28
|tip Collect the small white crackling orbs that spawn to renew your lightning power.
|next "Tortollan_Seekers_WQ"
step
label quest-51783
Follow the path |goto Vol'dun/0 39.01,83.77 < 7 |only if walking
accept Zem'lan Rescue##51783 |goto Vol'dun/0 38.26,82.45
|tip You will accept this quest automatically.
stickystart "Slay_Zem'lan_Pirates"
step
clicknpc Captured Exile##138976+
|tip They look like bound Humans around this area.
Free #4# Prisoners |q 51783/1 |goto 36.62,79.29
step
label "Slay_Zem'lan_Pirates"
Kill enemies around this area
Slay #10# Zem'lan Pirates |q 51783/2 |goto 36.62,79.29
|next "Tortollan_Seekers_WQ"
step
label quest-51115
accept Zunashi the Exile##51115 |goto Vol'dun/0 44.35,52.41
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.97,52.49 < 5 |walk
Follow the path |goto 44.06,53.14 < 7 |walk
kill Zunashi the Exile##129411
|tip Inside the cave.
Slay Zunashi the Exile |q 51115/1 |goto 43.92,54.01
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Zuldazar World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Zuldazar, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=862,
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-52923
accept Add More to the Collection##52923 |goto Zuldazar/0 48.42,35.17
|tip You will accept this quest automatically.
step
talk Talia Sparkbrow##142114
Tell her _"Begin pet battle."_
Defeat Talia Sparkbrow |q 52923/1 |goto 48.42,35.17
|next "Tortollan_Seekers_WQ"
step
label quest-50863
Follow the path |goto Zuldazar/0 41.49,71.02 < 7 |only if walking
Follow the road up |goto 42.76,68.88 < 10 |only if walking
Continue following the road |goto 43.22,66.26 < 10 |only if walking
Continue following the road |goto 44.27,65.12 < 10 |only if walking
Continue following the road |goto 45.51,61.65 < 10 |only if walking
Continue following the road |goto 45.63,59.83 < 10 |only if walking
Continue following the road |goto 48.17,59.59 < 10 |only if walking
accept Avatar of Xolotal##50863 |goto Zuldazar/0 49.31,58.15
|tip You will accept this quest automatically.
step
Enter the cave |goto 49.57,59.00 < 7 |walk
kill Avatar of Xolotal##129343
|tip Inside the cave.
Slay the Avatar of Xolotal |q 50863/1 |goto 49.83,57.42
|next "Tortollan_Seekers_WQ"
step
label quest-52858
Follow the path |goto Zuldazar/0 79.45,43.03 < 10 |only if walking
Follow the path up |goto 77.74,42.98 < 7 |only if walking
Continue up the path |goto 76.60,41.98 < 7 |only if walking
Follow the path down |goto 75.49,41.31 < 10 |only if walking
accept Azerite Empowerment##52858 |goto Zuldazar/0 75.49,41.31
|tip You will accept this quest automatically.
step
Enter the cave |goto 75.32,41.75 < 5 |only if walking
kill Hex Priest Haraka##141959
|tip Inside the cave.
Slay Hex Priest Haraka |q 52858/1 |goto 75.27,42.27
|next "Tortollan_Seekers_WQ"
step
label quest-51444
Follow the path |goto Zuldazar/0 66.12,18.42 < 7 |only if walking
Jump down here |goto 62.29,19.87 < 7 |only if walking
Follow the path |goto 61.12,21.26 < 10 |only if walking
Continue following the path |goto 60.75,22.71 < 7 |only if walking
Continue following the path |goto 60.30,23.23 < 7 |only if walking
Continue following the path |goto 59.45,22.88 < 7 |only if walking
Cross the bridge |goto 58.62,22.92 < 7 |only if walking
Follow the road up |goto 59.11,24.68 < 7 |only if walking
accept Azerite Empowerment##51444 |goto Zuldazar/0 56.81,23.10
|tip You will accept this quest automatically.
step
kill Zu'shin the Infused##136702 |q 51444/1 |goto 56.81,23.10
|next "Tortollan_Seekers_WQ"
step
label quest-51179
accept Azerite Madness##51179 |goto Zuldazar/0 54.28,24.99
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51179/1 |goto 55.88,23.39
|next "Tortollan_Seekers_WQ"
step
label quest-52877
Follow the path |goto Zuldazar/0 41.53,71.08 < 10 |only if walking
Enter the cave |goto 41.47,69.81 < 7 |walk
accept Azerite Mining##52877 |goto Zuldazar/0 41.47,69.81
|tip You will accept this quest automatically.
step
Enter the cave |goto 41.47,69.88 < 5 |only if walking
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52877/1 |goto 40.90,69.00
|next "Tortollan_Seekers_WQ"
step
label quest-51450
accept Azerite Mining##51450 |goto Zuldazar/0 56.81,23.10
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51450/1 |goto 56.05,23.25
|next "Tortollan_Seekers_WQ"
step
label quest-51175
accept Azerite Wounds##51175 |goto Zuldazar/0 55.56,22.14
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Clear the enemies from glowing blue Azerite Wounds around this area.
|tip While standing on one, use the "Heart of Azeroth" ability that appears onscreen.
Heal #8# Azerite Wounds |q 51175/1 |goto 55.56,22.14
|next "Tortollan_Seekers_WQ"
step
label quest-51642
Follow the path |goto Zuldazar/0 69.79,65.88 < 10 |only if walking
Continue following the path |goto 68.71,68.42 < 10 |only if walking
Continue following the path |goto 67.44,69.74 < 10 |only if walking
Continue following the path |goto 66.16,69.49 < 7 |only if walking
Continue following the path |goto 64.96,68.55 < 10 |only if walking
Continue following the path |goto 63.77,69.46 < 10 |only if walking
accept Beachhead##51642 |goto Zuldazar/0 63.61,68.69
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144359
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51642/1 |goto 63.61,68.68
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51642/2 |goto 63.61,68.69
|next "Tortollan_Seekers_WQ"
step
label quest-50862
Follow the path |goto Zuldazar/0 66.23,18.12 < 10 |only if walking
Continue following the path |goto 63.36,18.35 < 10 |only if walking
Continue following the path |goto 62.27,18.53 < 10 |only if walking
Continue following the path |goto 61.12,20.45 < 15 |only if walking
Continue following the path |goto 59.82,19.15 < 10 |only if walking
accept Bloodbulge##50862 |goto Zuldazar/0 59.84,18.29
|tip You will accept this quest automatically.
step
kill Bloodbulge##128699 |q 50862/1 |goto 59.84,18.29
|next "Tortollan_Seekers_WQ"
step
label quest-51815
accept Eggstermination##51815 |goto Zuldazar/0 64.54,18.60
|tip You will accept this quest automatically.
step
kill 20 Feathered Viper Egg##132413 |q 51815/1 |goto 64.54,18.60
|next "Tortollan_Seekers_WQ"
step
label quest-50969
Follow the path down |goto Zuldazar/0 77.61,55.23 < 7 |only if walking
accept Emergency Management##50969 |goto Zuldazar/0 81.05,55.11
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Deathguards"
step
clicknpc Injured Shipwrecked Sailor##136897
|tip They look like wounded sailors laying on the ground around this area.
Heal #5# Injured Sailors |q 50969/2 |goto 81.05,55.11
step
label "Kill_Forsaken_Deathguards"
kill 10 Forsaken Deathguard##135886 |q 50969/1 |goto 81.05,55.11
|next "Tortollan_Seekers_WQ"
step
label quest-50870
Follow the path down |goto Zuldazar/0 79.65,40.66 < 10 |only if walking
Continue following the path |goto 79.11,39.83 < 10 |only if walking
Cross the water |goto 78.95,39.09 < 7 |only if walking
Follow the path |goto 78.85,38.20 < 10 |only if walking
Cross the water |goto 79.49,36.13 < 7 |only if walking
accept G'Naat##50870 |goto Zuldazar/0 79.98,35.96
|tip You will accept this quest automatically.
step
kill G'Naat##133155 |q 50870/1 |goto 79.98,35.96
|next "Tortollan_Seekers_WQ"
step
label quest-50877
accept Gahz'ralka##50877 |goto Zuldazar/0 63.87,33.23
|tip You will accept this quest automatically.
step
kill Gahz'ralka##129954 |q 50877/1 |goto 64.24,32.73
|next "Tortollan_Seekers_WQ"
step
label quest-50874
accept Hakbi the Risen##50874 |goto Zuldazar/0 42.79,35.92
|tip You will accept this quest automatically.
step
kill Hakbi the Risen##134738 |q 50874/1 |goto 42.04,36.22
|next "Tortollan_Seekers_WQ"
step
label quest-53327
accept Hardened Monelite##53327 |goto Zuldazar/0 47.13,29.47
|tip You will accept this quest automatically.
step
click Hardened Monelite Deposit##297624
collect Hardened Monelite##163628 |q 53327/1 |goto 47.13,29.47
|next "Tortollan_Seekers_WQ"
step
label quest-51178
Follow the path |goto Zuldazar/0 70.59,29.90 < 7 |only if walking
Jump down carefully here |goto 69.53,30.30 < 10 |only if walking
Follow the path up |goto 68.28,30.50 < 10 |only if walking
accept Hundred Troll Holdout##51178 |goto Zuldazar/0 66.25,30.67
|tip You will accept this quest automatically.
step
kill Gurubashi Attacker##136699+
|tip Stand near the totems for huge buffs.
|tip Each buff lasts for 45 seconds.
Slay #100# Gurubashi Attackers |q 51178/1 |goto 65.51,30.15
|next "Tortollan_Seekers_WQ"
step
label quest-51636
Jump down here |goto Zuldazar/0 79.90,41.23 < 5 |only if walking
Follow the path |goto 80.47,40.63 < 7 |only if walking
Continue following the path |goto 80.99,39.92 < 7 |only if walking
Continue following the path |goto 81.32,39.50 < 7 |only if walking
Enter the building |goto 81.78,37.90 < 3 |walk
accept Make Loh Go##51636 |goto Zuldazar/0 81.80,37.66
|tip You will accept this quest automatically.
step
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
Guide Loh to the Goal |q 51636/1 |goto 81.80,37.66
|next "Tortollan_Seekers_WQ"
step
label quest-52169
Follow the road |goto Zuldazar/0 70.30,30.04 < 10 |only if walking
accept The Matriarch##52169 |goto Zuldazar/0 69.61,34.13
|tip You will accept this quest automatically.
step
Follow the road |goto 70.23,31.77 < 10 |only if walking
Follow the path down |goto 69.55,31.96 < 10 |only if walking
kill Ji'arak##132253
|tip Pick up Broodlings following Matriarch's Call. |grouprole TANK
|tip Heavy AoE healing is required during "Storm Wing." |grouprole HEALER
|tip Crowd control Broodlings channeling "Clutch" before it expires. |grouprole EVERYONE
|tip Don't stand in areas targeted by Hurricane Crash or you will die. |grouprole EVERYONE
Slay Ji'arak |q 52169/1 |goto 69.61,34.13
|next "Tortollan_Seekers_WQ"
step
label quest-51816
Follow the road |goto Zuldazar/0 70.33,29.95 < 10 |only if walking
Continue following the road |goto 70.30,31.77 < 10 |only if walking
Follow the path down |goto 69.67,31.90 < 10 |only if walking
Continue following the path |goto 68.43,34.06 < 10 |only if walking
accept Pterrible Ingredients##51816 |goto Zuldazar/0 68.05,34.02
|tip You will accept this quest automatically.
step
Follow the path up |goto 67.78,34.31 < 10 |only if walking
Kill enemies around this area
collect 12 Pterrordax Salivary Gland##158177 |q 51816/1 |goto 67.28,32.66
|next "Tortollan_Seekers_WQ"
step
label quest-51821
accept Quelling the Cove##51821 |goto Zuldazar/0 73.51,65.01
|tip You will accept this quest automatically.
step
Kill Squallfin enemies around this area
|tip Run over glowing tadpoles to scare them.
Disrupt Dreadpearl |q 51821/1 |goto 73.51,65.01
|next "Tortollan_Seekers_WQ"
step
label quest-51814
Follow the road |goto Zuldazar/0 70.31,30.18 < 10 |only if walking
Continue following the road |goto 70.37,32.00 < 10 |only if walking
Continue following the road |goto 71.19,32.74 < 10 |only if walking
Continue following the road |goto 72.01,34.64 < 10 |only if walking
Continue following the road |goto 71.05,36.56 < 10
accept Ravoracious##51814 |goto Zuldazar/0 70.51,39.42
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect Ravasaur Stomach Lining##159755 |q 51814/1 |goto 70.51,39.42
|next "Tortollan_Seekers_WQ"
step
label quest-52250
accept Saving Xibala##52250 |goto Zuldazar/0 40.40,71.70
|tip You will accept this quest automatically.
step
clicknpc Wildhammer Gryphon##141793
Ride the Gryphon |q 52250/1 |goto 40.40,71.70
step
clicknpc Forsaken Blight Thrower##141640
|tip On the deck of the ship.
Destroy the Forsaken Blight Thrower |q 52250/3 |goto 35.73,74.58
step
label "Slay_Horde_Forces"
Kill enemies around this area
|tip Use the "Wild Hammer" ability on you action bar.
Slay #50# Horde Forces |q 52250/2 |goto 35.73,74.58
|next "Tortollan_Seekers_WQ"
step
label quest-49413
accept Scamps With Scrolls##49413 |goto Dazar'alor/0 52.76,89.04
|tip You will accept this quest automatically.
step
clicknpc Scheming Street Scamp##129394
|tip They look like large stomping Brutosaurs and raptors around this area.
|tip You can find them all over the Grand Bazaar.
Dispel #5# Scheming Street Scamps |q 49413/1 |goto 52.76,89.04
|next "Tortollan_Seekers_WQ"
step
label quest-51822
accept Scrolls and Scales##51822 |goto Zuldazar/0 82.20,39.91
|tip You will accept this quest automatically.
stickystart "Slay_Dreadcoil Seekers"
step
click Scroll of Gral##281652+
|tip They look like large scrollcases on the ground around this area.
collect 4 Scroll of Gral##158068 |q 51822/2 |goto 82.20,39.91
step
label "Slay_Dreadcoil Seekers"
kill 8 Dreadcoil Seeker##125174 |q 51822/1 |goto 82.20,39.91
|next "Tortollan_Seekers_WQ"
step
label quest-51630
accept Shell Game##51630 |goto Zuldazar/0 37.78,78.89
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51630/1 |goto 37.84,78.83
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51630/2 |goto 37.84,78.83
|next "Tortollan_Seekers_WQ"
step
label quest-52249
accept The Shores of Xibala##52249 |goto Zuldazar/0 46.49,71.14
|tip You will accept this quest automatically.
step
Kill Nightborne and Zandalari enemies around this area
Slay #12# Nightborne or Zandalari |q 52249/1 |goto 46.49,71.14
|next "Tortollan_Seekers_WQ"
step
label quest-52938
accept Small Beginnings##52938 |goto Zuldazar/0 50.56,23.90
|tip You will accept this quest automatically.
step
talk Zujai##142234
Tell her _"Begin pet battle."_
Defeat Zujai |q 52938/1 |goto 50.56,23.90
|next "Tortollan_Seekers_WQ"
step
label quest-51081
accept Syrawon the Dominus##51081 |goto Dazar'alor/0 53.65,44.89
|tip You will accept this quest automatically.
step
Jump down carefully here |goto 53.61,45.05 < 3 |only if walking
Enter the cave |goto 53.93,44.88 < 10 |walk
kill Syrawon the Dominus##136413
|tip Inside the cave.
Slay Syrawon the Dominus |q 51081/1 |goto 53.36,44.61
|next "Tortollan_Seekers_WQ"
step
label quest-50867
Follow the road |goto Zuldazar/0 67.12,18.30 < 10 |only if walking
Continue following the road |goto 68.12,19.31 < 10 |only if walking
Continue following the road |goto 69.03,23.55 < 10 |only if walking
Continue following the road |goto 72.17,20.98 < 10 |only if walking
Continue following the road |goto 74.07,20.66 < 10 |only if walking
Continue following the road |goto 76.20,19.75 < 10 |only if walking
Continue following the road |goto 76.65,19.21 < 10 |only if walking
Jump down here |goto 78.15,16.71 < 7 |only if walking
Follow the path |goto 78.41,13.16 < 10 |only if walking
accept Tambano##50867 |goto Zuldazar/0 77.71,10.18
|tip You will accept this quest automatically.
step
kill Tambano##131687
|tip It walks around.
Slay Tambano |q 50867/1 |goto 77.71,10.18
|next "Tortollan_Seekers_WQ"
step
label quest-50850
Follow the path |goto Zuldazar/0 66.26,18.13 < 7 |only if walking
Jump down here |goto 65.69,19.65 < 7 |only if walking
Follow the road |goto 65.21,20.80 < 10 |only if walking
Follow the path |goto 64.51,21.07 < 7 |only if walking
accept Tia'Kawan##50850 |goto Zuldazar/0 64.63,23.00
|tip You will accept this quest automatically.
step
kill Tia'Kawan##133163 |q 50850/1 |goto 64.63,23.00
|next "Tortollan_Seekers_WQ"
step
label quest-50861
accept Torraske the Eternal##50861 |goto Zuldazar/0 46.66,65.23
|tip You will accept this quest automatically.
step
kill Torraske the Eternal##127939 |q 50861/1 |goto 46.66,65.23
|next "Tortollan_Seekers_WQ"
step
label quest-50847
Follow the path |goto Zuldazar/0 72.13,29.32 < 10 |only if walking
Run down the stairs |goto 72.91,28.87 < 10 |only if walking
Follow the path |goto 73.42,28.18 < 7 |only if walking
Run up the stairs |goto 73.90,28.17 < 7 |only if walking
Follow the path |goto 75.05,25.89 < 10 |only if walking
Continue following the path |goto 75.84,26.23 < 7 |only if walking
Enter the cave |goto 76.44,27.10 < 7 |walk
accept Twisted Child of Rezan##50847 |goto Zuldazar/0 76.90,27.91
|tip You will accept this quest automatically.
step
kill Twisted Child of Rezan##130643
|tip Inside the cave.
Slay the Twisted Child of Rezan |q 50847/1 |goto 76.90,27.91
|next "Tortollan_Seekers_WQ"
step
label quest-51374
accept Unending Gorilla Warfare##51374 |goto Zuldazar/0 49.01,54.17
|tip You will accept this quest automatically.
step
click Gorilla Totem
|tip They look like totems made of sticks on the ground around this area.
Kill Da'kani enemies around this area
Disrupt Da'kani Gorillas |q 51374/1 |goto 49.01,54.17
|next "Tortollan_Seekers_WQ"
step
label quest-51824
Follow the path |goto Zuldazar/0 40.94,71.09 < 7 |only if walking
Continue following the path |goto 43.18,71.31 < 10 |only if walking
Continue following the path |goto 44.67,71.04 < 10 |only if walking
accept You're Grounded##51824 |goto Zuldazar/0 46.65,71.24
|tip You will accept this quest automatically.
step
click Dark Iron Trap##293674
|tip They look like yellow boxes on the ground around this area.
Set #8# Traps |q 51824/1 |goto 46.65,71.24
|next "Tortollan_Seekers_WQ"
step
label quest-52937
Follow the road |goto Zuldazar/0 70.33,29.95 < 10 |only if walking
Continue following the road |goto 70.30,31.77 < 10 |only if walking
Follow the path down |goto 69.67,31.90 < 10 |only if walking
Continue following the path |goto 68.43,34.06 < 10 |only if walking
accept You've Never Seen Jammer Upset##52937 |goto Zuldazar/0 68.05,34.02
|tip You will accept this quest automatically.
step
clicknpc Jammer##142151
Defeat Jammer |q 52937/1 |goto 68.05,34.02
|next "Tortollan_Seekers_WQ"
step
label quest-50866
accept Zayoos##50866 |goto Zuldazar/0 48.32,55.29
|tip You will accept this quest automatically.
step
Follow the path |goto 48.72,54.85 < 7 |only if walking
Run up the stairs |goto 48.68,54.24 < 7 |only if walking
kill Zayoos##131476 |q 50866/1 |goto 47.98,54.24
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
