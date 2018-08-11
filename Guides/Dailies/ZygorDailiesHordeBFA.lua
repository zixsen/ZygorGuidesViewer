local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Darkshore World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Darkshore.",
condition_suggested=function() return level>=110 and completedq(52806) end,
condition_valid=function() return level>=110 and completedq(52806) end,
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
label quest-52182
accept The Azerite Stuff##52182 |goto Darkshore/0 32.85,84.09
|tip You will accept this quest automatically.
step
click Small Azerite Deposit##297605+
|tip They look like multicolored mining viens on the ground around this area.
Kill enemies around this area
collect 100 Azerite Crystal##164382 |q 52182/1 |goto 32.85,84.09
|next "Tortollan_Seekers_WQ"
step
label quest-52883
accept Breakthru##52883 |goto Darkshore/0 40.98,83.99
|tip You will accept this quest automatically.
stickystart "Kill_Darnassian_Scouts"
step
use the Everburning Torch##162602
|tip Use it on Glaive Throwers.
|tip They look like artillery machines on the ground around this area.
Burn #4# Glaive Throwers |q 52883/2 |goto 40.98,83.99
step
label "Kill_Darnassian_Scouts"
Kill enemies around this area
Slay #10# Night Elf Forces |q 52883/1 |goto 40.98,83.99
|next "Tortollan_Seekers_WQ"
step
label quest-52894
accept Don't Stop Me Now##52894 |goto Darkshore/0 44.24,74.95
|tip You will accept this quest automatically.
step
kill Burning Ancient##141365 |q 52894/1 |goto 44.24,74.95
|next "Tortollan_Seekers_WQ"
step
label quest-52312
accept Extinguish the Lights##52312 |goto 44.21,58.72
|tip You will accept this quest automatically.
stickystart "Calm_Frenzied_Wisps"
stickystart "Kill_Possessing_Spirits"
step
clicknpc Entranced Grunt##143945+
|tip They look like charmed Orcs around this area.
Rescue #5# Entranced Sentinels |q 52312/2 |goto 44.21,58.72
step
label "Calm_Frenzied_Wisps"
clicknpc Frenzied Wisp##140956+
|tip They look like floating blue balls around this area.
Calm #6# Frenzied Wisps |q 52312/3 |goto 44.21,58.72
step
label "Kill_Possessing_Spirits"
kill 10 Possessing Spirit##140715 |q 52312/1 |goto 44.21,58.72
|next "Tortollan_Seekers_WQ"
step
label quest-52243
accept Fuel for the Demolishers##52243 |goto Darkshore/0 40.29,61.39
|tip You will accept this quest automatically.
stickystart "Kill_Darnassian_Scouts"
step
kill Enraged Fire Elemental##140588+
collect 6 Elemental Pitch##161436 |q 52243/1 |goto 40.29,61.39
step
label "Kill_Darnassian_Scouts"
kill 7 Darnassian Scout##143674
|tip They ride nightsabers around the crater.
Slay #7# Darnassian Scouts |q 52243/2 |goto 40.29,61.39
|next "Tortollan_Seekers_WQ"
step
label quest-53009
accept Hang On In There##53009 |goto Darkshore/0 62.39,9.74
|tip You will accept this quest automatically.
step
clicknpc Horde Combatant##143457+
|tip They look like wounded soldiers on the ground around this area.
Kill Darkshore enemies around this area
Defend the War Camp |q 53009/1 |goto 62.39,9.74
|next "Tortollan_Seekers_WQ"
step
label quest-52984
accept I Want It All##52984 |goto Darkshore/0 32.92,84.05
|tip You will accept this quest automatically.
step
kill Azerite Fury##142387 |q 52984/1 |goto 32.92,84.05
|next "Tortollan_Seekers_WQ"
step
label quest-52890
accept It's a Kind of Magic##52890 |goto Darkshore/0 41.97,78.16
|tip You will accept this quest automatically.
stickystart "Slay_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359+ |q 52890/1 |goto 41.97,78.16
step
label "Slay_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686+ |q 52890/2 |goto 41.97,78.16
|next "Tortollan_Seekers_WQ"
step
label quest-53320
accept Ours For the Taking##53320 |goto Darkshore/0 61.08,18.07
|tip You will accept this quest automatically.
step
clicknpc Damaged Shredder##143452+
|tip They look like broken mechanical shredders on the ground around this area.
Kill Darkshore enemies around this area
click Wood Pile##297480+
|tip They look like small bundles of wood on the ground around this area.
Control the Ruins of Mathystra |q 53320/1 |goto 61.08,18.07
|next "Tortollan_Seekers_WQ"
step
label quest-52505
accept Pruning the Thorns##52505 |goto Darkshore/0 39.56,39.83
|tip You will accept this quest automatically.
stickystart "Kill_Auberdine_Guardians"
step
kill Lieutenant Aylissa Silverarrow##141346
|tip She walks around this area.
Slay Lieutenant Aylissa Silverarrow |q 52505/2 |goto 39.56,39.83
step
label "Kill_Auberdine_Guardians"
kill 8 Auberdine Guardian##143902 |q 52505/1 |goto 39.14,42.41
|next "Tortollan_Seekers_WQ"
step
label quest-53498
accept Staying Power##53498 |goto Darkshore/0 50.31,19.93
|tip You will accept this quest automatically.
stickystart "Slay_Darnassian_Reinforcements"
step
click Lunar Ward##299019
|tip They look like pedestals with glowing blue fire and a moon over them on the ground around this area.
Destroy #3# Lunar Wards |q 53498/1 |goto 50.31,19.93
step
label "Slay_Darnassian_Reinforcements"
Kill enemies around this area
Slay #15# Darnassian Reinforcements |q 53498/2 |goto 50.31,19.93
|next "Tortollan_Seekers_WQ"
step
label quest-52343
accept They Eat Like Orcs##52343 |goto Darkshore/0 39.22,51.52
|tip You will accept this quest automatically.
stickystart "Kill_Druids_of_the_Claw"
step
Kill enemies around this area
|tip Whitetail Stags, Moonstalkers, and Displaced Chimaeras count for this objective.
|tip Moonstalkers are stealthed around this area.
|tip Displaced Chimaeras fly around this area.
collect 15 Haunch of Meat##162013 |q 52343/1 |goto 39.22,51.52
step
label "Kill_Druids_of_the_Claw"
kill 8 Druid of the Claw##142677 |q 52343/2 |goto 39.22,51.52
|next "Tortollan_Seekers_WQ"
step
label quest-52896
accept Under Pressure##52896 |goto Darkshore/0 42.82,68.40
|tip You will accept this quest automatically.
step
clicknpc Goblin Hellion##143952
Use the Goblin Hellion |q 52896/1 |goto 42.82,68.40
stickystart "Slay_Kaldorei_Forces"
step
kill Awakened Ancient##140741+
|tip Use the abilities on your action bar.
Slay #5# Awakened Ancients |q 52896/2 |goto 42.04,66.75
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52896/3 |goto 42.04,66.75
step
Click the "Exit" Button on Your Action Bar |outvehicle |q 52896
|next "Tortollan_Seekers_WQ"
step
label quest-53552
accept Wicked Kegger##53552 |goto Darkshore/0 39.90,25.71
|tip You will accept this quest automatically.
stickystart "Kill_Darkshore_Invaders"
step
clicknpc Keg of Azerite Powder##144023+
|tip They look like wooden barrels underwater around this area.
Claim #8# Azerite Powder Kegs |q 53552/1 |goto 39.90,25.71
step
label "Kill_Darkshore_Invaders"
Kill enemies around this area
|tip On the ships and underwater around this area.
Slay #10# Alliance Defenders |q 53552/2 |goto 39.90,25.71
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking world quests in Kul Tiras and Zandalar.\n\n"..
"To accomplish this, you will need to earn \"Friendly\" reputation with the follwing factions:\n\n"..
"Talanji's Expedition\n"..
"Voldunai\n"..
"Zandalari Empire\n",
condition_suggested=function() return level >= 120 and not completedq(51916) end,
condition_valid=function() return level >= 120 end,
condition_valid_msg="You must be level 120 to unlock world quests in Battle for Azeroth!",
condition_end=function() return completedq(51916) end,
startlevel=120.0,
},[[
step
accept Uniting Zandalar##51916 |goto Zuldazar/0 58.44,62.67
|tip You will accept this quest automatically upon reaching level 120.
step
Earn "Friendly" Reputation with Talanji's Expedition |condition rep("Talanji's Expedition") >= Friendly
step
Earn "Friendly" Reputation with the Voldunai |condition rep("Voldunai") >= Friendly
step
Earn "Friendly" Reputation with the Zandalari Empire |condition rep("Zandalari Empire") >= Friendly
step
Follow the path |goto Dazar'alor/0 51.28,88.58 < 7 |only if walking
Continue following the path |goto 51.14,85.49 < 7 |only if walking
Run down the stairs |goto 50.06,85.95 < 10 |only if walking
Follow the path |goto 50.58,93.13 < 7 |only if walking
Continue following the path |goto 50.01,96.04 < 7 |only if walking
Cross the bridge |goto 50.50,99.99 < 7 |only if walking
Run down the stairs |goto 51.24,99.84 < 5 |only if walking
talk Nathanos Blightcaller##135691
turnin Uniting Zandalar##51916 |goto Zuldazar/0 58.44,62.67
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Drustvar World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Drustvar, Kul Tiras.",
condition_suggested=function() return level>=120 and completedq(51916) end,
condition_valid=function() return level>=120 and completedq(51916) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Zandalari Empire\n"..
"Talanji's Expedition\n"..
"Voldunai\n\n"..
"Then turn in the quest \"Uniting Zandalar\""..
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
label quest-51542
accept Avalanche##51542 |goto Drustvar/0 43.23,86.77
|tip You will accept this quest automatically.
step
kill Avalanche##137825
|tip It flies around this hill and sometimes lands.
Slay Avalanche |q 51542/1 |goto 43.75,88.02
|next "Tortollan_Seekers_WQ"
step
label quest-51612
Follow the path |goto Drustvar/0 37.24,24.79 < 7 |only if walking
Continue down the path |goto 37.23,28.12 < 7 |only if walking
Continue down the path |goto 37.69,29.77 < 7 |only if walking
Continue following the path |goto 37.65,32.42 < 10 |only if walking
accept Azerite Empowerment##51612 |goto Drustvar/0 39.55,37.24
|tip You will accept this quest automatically.
step
kill Sister Hilga##138295 |q 51612/1 |goto 39.83,37.76
|next "Tortollan_Seekers_WQ"
step
label quest-51608
accept Azerite Madness##51608 |goto Drustvar/0 40.92,38.91
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51608/1 |goto 40.92,38.91
|next "Tortollan_Seekers_WQ"
step
label quest-52872
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
Follow the path |goto Drustvar/0 37.24,24.87 < 7 |only if walking
Continue down the path |goto 37.32,27.87 < 7 |only if walking
Continue following the path |goto 37.95,34.11 < 7 |only if walking
Continue down the path |goto 38.49,34.68 < 7 |only if walking
Continue down the path |goto 39.36,37.05 < 7 |only if walking
accept Azerite Wounds##51609 |goto Drustvar/0 40.58,37.85
|tip You will accept this quest automatically.
step
Follow the path |goto 39.38,37.26 < 10 |only if walking
Kill enemies around this area
|tip Clear the enemies from glowing blue Azerite Wounds around this area.
|tip While standing on one, use the "Heart of Azeroth" ability that appears onscreen.
Heal #5# Azeroth Wounds |q 51609/1 |goto 40.58,37.85
|next "Tortollan_Seekers_WQ"
step
label quest-51506
accept Barbthorn Queen##51506 |goto Drustvar/0 58.98,17.50
|tip You will accept this quest automatically.
step
Enter the cave |goto 58.88,18.39 < 7 |only if walking
kill Barbthorn Queen##127333
|tip Inside the cave.
Slay the Barbthorn Queen |q 51506/1 |goto 59.12,16.69
|next "Tortollan_Seekers_WQ"
step
label quest-51637
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
label quest-51917
Enter the cave |goto Drustvar/0 51.17,29.66 < 7 |walk
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
label quest-51741
accept Bombarbment##51741 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
Kill Barbthorn enemies around this area
clicknpc Barbthorn Hive##127038+
|tip They look like yellow bee hives hanging in trees around this area.
Clear Out Barbthorn Ridge |q 51741/1 |goto 61.06,17.71
|next "Tortollan_Seekers_WQ"
step
label quest-51989
accept Braedan Whitewall##51989 |goto Drustvar/0 27.64,59.59
|tip You will accept this quest automatically.
step
kill Braedan Whitewall##139321 |q 51989/1 |goto 27.64,59.59
|next "Tortollan_Seekers_WQ"
step
label quest-51737
Cross the bridge |goto Drustvar/0 19.91,44.69 < 7 |only if walking
Follow the road up |goto 20.74,46.28 < 7 |only if walking
Continue following the road |goto 20.28,47.10 < 7 |only if walking
Continue following the road |goto 20.60,47.45 < 5 |only if walking
Continue following the road |goto 21.77,45.81 < 7 |only if walking
Continue following the path |goto 22.41,46.45 < 7 |only if walking
Continue following the path |goto 22.17,48.72 < 7 |only if walking
Continue following the path |goto 20.63,50.44 < 7 |only if walking
Continue following the path |goto 21.01,52.88 < 7 |only if walking
accept Bruin Potions##51737 |goto Drustvar/0 19.66,55.97
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
kill Hexwood Sentry##138088+
collect 4 Caustic Sap##160442 |q 51737/3 |goto 18.89,56.86
step
label "Burn_Bloody_Banners"
kill Hexed Brambleback##133501+
collect 6 Bear Heart##157545 |q 51737/1 |goto 18.89,56.86
step
label "Kill_Enthralled_Wildlife"
click Hearthbloom##281252+
|tip They look like small flowers on the ground around this area.
collect 10 Hearthbloom Petals##157546 |q 51737/2 |goto 18.89,56.86
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
label quest-52009
accept Crab People##52009 |goto Drustvar/0 21.40,66.45
|tip You will accept this quest automatically.
step
talk Captain Hermes##139489
Tell him _"Begin pet battle."_
Defeat Captain Hermes |q 52009/1 |goto 21.40,66.45
|next "Tortollan_Seekers_WQ"
step
label quest-51747
Follow the path |goto Drustvar/0 24.85,13.18 < 7 |only if walking
Continue following the path |goto 23.99,12.31 < 7 |only if walking
Continue following the path |goto 23.39,11.89 < 7 |only if walking
Continue following the path |goto 22.44,12.67 < 7 |only if walking
Jump down here |goto 22.02,12.23 < 7 |only if walking
Jump down carefully here |goto 21.63,11.92 < 7 |only if walking
Jump down here |goto 21.27,11.77 < 7 |only if walking
Cross the water |goto 21.11,11.53 < 7 |only if walking
accept Early Warning##51747 |goto Drustvar/0 20.20,10.06
|tip You will accept this quest automatically.
stickystart "Burn_Alliance_Supplies"
stickystart "Kill_Alliance_Forces"
step
Enter the cave |goto 19.35,8.31 < 7 |walk
kill Amaeas Starbough##138791
|tip Inside the cave.
Slay Amaeas Starbough |q 51747/3 |goto 19.04,8.36
step
label "Burn_Alliance_Supplies"
click Alliance Supplies##291040+
|tip They look like stacks of wooden crates and barrels on the ground around this area.
Burn #10# Alliance Supplies |q 51747/1 |goto 19.80,8.94
step
label "Kill_Alliance_Forces"
Kill enemies around this area
Kill #9# Alliance Forces |q 51747/2 |goto 19.80,8.94
|next "Tortollan_Seekers_WQ"
step
label quest-51761
accept Familiar Foes##51761 |goto Drustvar/0 58.09,28.01
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
click Lesser Effigy##290612+
|tip They look like totems with antlers atop them on the ground around this area.
Destroy #4# Lesser Effigies |q 51761/1 |goto 58.09,28.01
step
label "Burn_Bloody_Banners"
click Bloody Banner##302779+
|tip They look like banners with writing in blood on the ground around this area.
Burn #5# Bloody Banners |q 51761/3 |goto 58.09,28.01
step
label "Kill_Enthralled_Wildlife"
Kill enemies around this area
Slay #10# Enthralled Wildlife |q 51761/2 |goto 58.09,28.01
|next "Tortollan_Seekers_WQ"
step
label quest-51909
accept Grozgore##51909 |goto Drustvar/0 50.33,20.69
|tip You will accept this quest automatically.
step
kill Grozgore##127129 |q 51909/1 |goto 50.33,20.69
|next "Tortollan_Seekers_WQ"
step
label quest-51764
accept Hunters Hunted##51764 |goto Drustvar/0 55.48,42.16
|tip You will accept this quest automatically.
step
click Disturbing Charm##277193+
click Bewitching Fetish##271176+
Kill Hexcrazed enemies around this area
Purge the Woods |q 51764/1 |goto 54.48,45.01
|next "Tortollan_Seekers_WQ"
step
label quest-51740
Follow the path |goto Drustvar/0 19.90,44.60 < 7 |only if walking
Cross the bridge |goto 20.72,46.22 < 7 |only if walking
Cross the bridge |goto 20.28,47.11 < 7 |only if walking
Follow the path |goto 20.59,47.45 < 7 |only if walking
Continue up the path |goto 21.69,45.85 < 7 |only if walking
Continue up the path |goto 23.30,45.65 < 10 |only if walking
accept Hunting for Truffle Hunters##51740 |goto Drustvar/0 25.67,41.51
|tip You will accept this quest automatically.
stickystart "Slay_Funggarians"
step
clicknpc Lost Piglet##138610+
|tip They look like tiny pigs on the ground around this area.
Save #5# Lost Piglets |q 51740/2 |goto 25.67,41.51
step
label "Slay_Funggarians"
Kill Bloodbough enemies around this area
Slay #8# Funggarians |q 51740/1 |goto 25.67,41.51
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
label quest-51742
Follow the path down |goto Drustvar/0 25.39,16.97 < 7 |only if walking
Follow the path |goto 26.25,18.33 < 10 |only if walking
Follow the path down |goto 27.31,15.68 < 10 |only if walking
accept Intercepting the Irontide##51742 |goto Drustvar/0 28.38,14.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Pirate Grog##284451+
|tip They look like large bottles on the ground around this area.
click Plundered Supplies##284473+
|tip They look like small white chests on the ground around this area.
Drive Back the Irontide |q 51742/1 |goto 28.38,14.07
|next "Tortollan_Seekers_WQ"
step
label quest-51433
Jump down carefully here |goto Drustvar/0 37.44,23.56 < 7 |only if walking
Follow the path down |goto 37.52,22.87 < 7 |only if walking
Continue down the path |goto 37.24,21.49 < 7 |only if walking
Jump down here |goto 36.28,22.18 < 7 |only if walking
Jump down here |goto 35.89,22.41 < 7 |only if walking
Jump down here |goto 34.90,21.45 < 7 |only if walking
accept Matron Morana##51433 |goto Drustvar/0 34.84,19.87
|tip You will accept this quest automatically.
step
kill Matron Morana##137704 |q 51433/1 |goto 34.84,19.87
|next "Tortollan_Seekers_WQ"
step
label quest-51743
accept More Valuable Than Gold##51743 |goto Drustvar/0 35.06,30.43
|tip You will accept this quest automatically.
stickystart "Slay_Bilefang_Hunters"
step
click Silver Nugget##290975+
|tip They look like small pieces of silver on the ground around this area.
collect 6 Silver Nugget##160577 |q 51743/1 |goto 35.06,30.43
step
label "Slay_Bilefang_Hunters"
kill 8 Bilefang Hunter##132317 |q 51743/2 |goto 35.06,30.43
|next "Tortollan_Seekers_WQ"
step
label quest-51768
accept Natural Resources##51768 |goto Drustvar/0 69.06,40.57
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Venom_Glands"
stickystart "Collect_Pristine_Quilrat_Quills"
step
clicknpc Questionable Tuber##138356+
|tip They look like small bushes on the ground around this area.
|tip After clicking one, run away from it to collect the tuber.
Collect #5# Questionable Tubers |q 51768/1 |goto 67.13,41.59
step
label "Collect_Intact_Venom_Glands"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 51768/2 |goto 69.06,40.57
step
label "Collect_Pristine_Quilrat_Quills"
kill Invasive Quillrat##125401+
collect 3 Pristine Quillrat Quill##160516 |q 51768/3 |goto 67.13,41.59
|next "Tortollan_Seekers_WQ"
step
label quest-51908
accept Nevermore##51908 |goto Drustvar/0 59.80,45.17
|tip You will accept this quest automatically.
step
kill Nevermore##130138 |q 51908/1 |goto 59.95,45.48
|next "Tortollan_Seekers_WQ"
step
label quest-52218
accept Night Horrors##52218 |goto Drustvar/0 63.60,59.70
|tip You will accept this quest automatically.
step
talk Dilbert McClint##140461
Tell him _"Begin pet battle."_
Defeat Dilbert McClint |q 52218/1 |goto 63.60,59.70
|next "Tortollan_Seekers_WQ"
step
label quest-51505
accept Quillrat Matriarch##51505 |goto Drustvar/0 66.58,42.73
|tip You will accept this quest automatically.
step
kill Quillrat Matriarch##125453
|tip Inside the building.
Slay the Quillrat Matriarch |q 51505/1 |goto 66.58,42.73
|next "Tortollan_Seekers_WQ"
step
label quest-51739
accept Rise of the Yetis##51739 |goto Drustvar/0 44.68,35.98
|tip You will accept this quest automatically.
stickystart "Kill_Chillfur_Yetis"
stickystart "Kill_Awakened_Dead"
step
click Lost Supplies##302770+
|tip They look like small bags on the ground around this area.
collect 5 Lost Supplies##164309 |q 51739/3 |goto 44.94,30.47
step
label "Kill_Awakened_Dead"
kill 4 Awakened Dead##136490 |q 51739/2 |goto 44.68,35.98
step
label "Kill_Chillfur_Yetis"
kill 6 Chillfur Yeti##127682 |q 51739/1 |goto 44.41,32.47
|next "Tortollan_Seekers_WQ"
step
label quest-52278
accept Rogue Azerite##52278 |goto Drustvar/0 38.15,38.60
|tip You will accept this quest automatically.
step
talk Jess Albury##135023
Tell her _"Begin pet battle."_
Defeat Jess Albury |q 52278/1 |goto 38.15,38.60
|next "Tortollan_Seekers_WQ"
step
label quest-51746
accept The Shadows of Corlain##51746 |goto Drustvar/0 32.53,20.58
|tip You will accept this quest automatically.
stickystart "Slay_Witches"
step
Follow the path |goto 32.53,20.58 < 7 |only if walking
click Dark Fissure##290822+
|tip They look like dark rifts and summoning circles on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
kill 8 Blighted Echo##138543 |q 51746/1 |goto 31.85,17.07
step
label "Slay_Witches"
Kill enemies around this area
|tip Coven Hexcallers and Heartsbane Disciples count towards this objective.
Slay #8# Witches |q 51746/2 |goto 31.85,17.07
|next "Tortollan_Seekers_WQ"
step
label quest-51745
accept A Smelly Solution##51745 |goto Drustvar/0 29.26,27.31
|tip You will accept this quest automatically.
step
use the Pungent Onion##160557
|tip Use it on Cursed Gyrfalcons flying around this area.
Hit #8# Cursed Gyrfalcons |q 51745/1 |goto 29.26,27.31
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
accept Stone Golem##51434 |goto Drustvar/0 49.81,43.70
|tip You will accept this quest automatically.
step
kill Stone Golem##137708 |q 51434/1 |goto 49.81,43.70
|next "Tortollan_Seekers_WQ"
step
label quest-51529
accept Talon##51529 |goto Drustvar/0 31.71,40.61
|tip You will accept this quest automatically.
step
kill Talon##129950 |q 51529/1 |goto 31.93,40.63
|next "Tortollan_Seekers_WQ"
step
label quest-51765
Follow the path |goto Drustvar/0 37.24,24.87 < 7 |only if walking
Continue down the path |goto 37.32,27.87 < 7 |only if walking
Continue following the path |goto 37.95,34.11 < 7 |only if walking
Continue down the path |goto 38.49,34.68 < 7 |only if walking
Continue down the path |goto 39.36,37.05 < 7 |only if walking
Continue down the path |goto 41.50,39.60 < 7 |only if walking
Follow the road down |goto 42.89,40.44 < 7 |only if walking
Continue following the road |goto 43.72,38.45 < 7 |only if walking
Continue following the road |goto 45.89,36.31 < 7 |only if walking
Follow the path |goto 46.57,34.36 < 7 |only if walking
Continue following the path |goto 47.83,32.32 < 7 |only if walking
Follow the road down |goto 48.95,32.39 < 7 |only if walking
Continue following the road |goto 49.07,33.88 < 7 |only if walking
Continue following the road |goto 50.72,35.63 < 7 |only if walking
Continue following the road |goto 50.90,37.29 < 7 |only if walking
Follow the path |goto 51.92,38.87 < 7 |only if walking
Cross the water |goto 52.59,39.65 < 7 |only if walking
Follow the path up |goto 53.27,40.27 < 7 |only if walking
Continue following the path |goto 53.92,40.66 < 7 |only if walking
Continue following the path |goto 54.44,41.59 < 7 |only if walking
Continue following the path |goto 55.78,42.22 < 7 |only if walking
Continue following the path |goto 56.85,43.72 < 10 |only if walking
Continue following the path |goto 57.47,44.83 < 7 |only if walking
Continue following the path |goto 58.53,45.93 < 7 |only if walking
Continue following the path |goto 59.47,46.43 < 7 |only if walking
Continue down the path |goto 60.84,49.51 < 7 |only if walking
Cross the water |goto 61.72,49.71 < 7 |only if walking
Follow the road |goto 62.56,50.00 < 7 |only if walking
accept Tangled Webs##51765 |goto Drustvar/0 64.28,52.18
|tip You will accept this quest automatically.
step
kill Venomous Weaver##125130
click Egg Sac##290754+
|tip They look like bulging white eggs on the ground near trees around this area.
Kill Spiders and Egg Sacs |q 51765/1 |goto 80.17,47.85
|next "Tortollan_Seekers_WQ"
step
label quest-51767
accept Trapline##51767 |goto Drustvar/0 68.20,44.90
|tip You will accept this quest automatically.
stickystart "Kill_Watchful_Ravens"
stickystart "Kill_Darkmaw_Prowlers"
step
Follow the road |goto 69.86,41.49 < 10 |only if walking
click Place Trap##290718+
|tip They look like small bear traps on the ground around this area.
Place #6# Traps |q 51767/3 |goto 68.20,44.90
step
label "Kill_Watchful_Ravens"
kill 4 Watchful Raven##125411 |q 51767/1 |goto 68.20,44.90
step
label "Kill_Darkmaw_Prowlers"
kill 6 Darkmaw Prowler##125464 |q 51767/2 |goto 68.20,44.90
|next "Tortollan_Seekers_WQ"
step
label quest-51508
accept Vicemaul##51508 |goto Drustvar/0 72.27,60.82
|tip You will accept this quest automatically.
step
click Untended Fishing Rod##127652
Reel in Vicemaul |q 51508/1 |goto 72.84,60.49
step
kill Vicemaul##127651 |q 51508/2 |goto 72.84,60.49
|next "Tortollan_Seekers_WQ"
step
label quest-51769
accept What a Gull Wants##51769 |goto Drustvar/0 70.47,50.33
|tip You will accept this quest automatically.
stickystart "Collect_Mudfish_Innards"
stickystart "Collect_Snapclaw_Meat"
step
kill 10 Ravenous Gull##127530 |q 51769/1 |goto 70.47,50.33
step
label "Collect_Mudfish_Innards"
click Intact Mudfish##290775+
|tip They look like small dead fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 51769/2 |goto 70.47,50.33
step
label "Collect_Snapclaw_Meat"
kill Scavenging Snapclaw##127526+
|tip They can be found along the water around this area.
collect 15 Snapclaw Meat##152865 |q 51769/3 |goto 70.47,50.33
|next "Tortollan_Seekers_WQ"
step
label quest-52297
accept What's the Buzz?##52297 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
talk Michael Skarn##140880
Tell him _"Begin pet battle."_
Defeat Michael Skarn |q 52297/1 |goto 61.06,17.71
|next "Tortollan_Seekers_WQ"
step
label quest-51988
Cross the bridge |goto Drustvar/0 19.91,44.69 < 7 |only if walking
Follow the road up |goto 20.74,46.28 < 7 |only if walking
Continue following the road |goto 20.28,47.10 < 7 |only if walking
Continue following the road |goto 20.60,47.45 < 5 |only if walking
Continue following the road |goto 21.77,45.81 < 7 |only if walking
Continue following the road |goto 22.98,46.56 < 10 |only if walking
Continue following the road |goto 24.12,50.68 < 10 |only if walking
Continue following the road |goto 24.63,54.05 < 10 |only if walking
Continue following the road |goto 26.09,54.10 < 10 |only if walking
Continue following the road |goto 28.53,56.19 < 7 |only if walking
Cross the bridge |goto 28.87,57.49 < 5 |only if walking
Follow the path |goto 29.35,60.06 < 7 |only if walking
Continue following the path |goto 29.57,62.21 < 7 |only if walking
accept Whitney "Steelclaw" Ramsay##51988 |goto Drustvar/0 29.34,63.89
|tip You will accept this quest automatically.
step
kill Whitney "Steelclaw" Ramsay##139322 |q 51988/1 |goto 29.50,64.10
|next "Tortollan_Seekers_WQ"
step
label quest-51738
accept Witches by the Dozen##51738 |goto Drustvar/0 31.44,18.66
|tip You will accept this quest automatically.
stickystart "Slay_12_Witches"
step
kill 4 Blighted Horror##137568 |q 51738/1 |goto 31.44,18.66
step
label "Slay_12_Witches"
Kill enemies around this area
|tip Hexbane Disciples and Coven Hexcallers count for this objective.
Slay #12# Witches |q 51738/2 |goto 31.44,18.66
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Nazmir World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Nazmir, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51916) end,
condition_valid=function() return level>=120 and completedq(51916) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Zandalari Empire\n"..
"Talanji's Expedition\n"..
"Voldunai\n\n"..
"Then turn in the quest \"Uniting Zandalar\""..
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
label quest-50549
Jump down here |goto Nazmir/0 66.84,43.96 < 3 |only if walking
Follow the path |goto 65.71,45.25 < 10 |only if walking
Continue following the path |goto 63.81,47.14 < 7 |only if walking
Follow the road |goto 62.51,50.65 < 10 |only if walking
accept Absolutely Barbaric##50549 |goto Nazmir/0 61.64,55.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
Raze Zal'amak |q 50549/1 |goto 61.64,55.80
|next "Tortollan_Seekers_WQ"
step
label quest-52803
Jump down here |goto Nazmir/0 40.19,42.11 < 7 |only if walking
Follow the path |goto 42.58,40.64 < 10 |only if walking
accept Accidental Dread##52803 |goto Nazmir/0 43.02,38.86
|tip You will accept this quest automatically.
step
talk Korval Darkbeard##141814
Tell him _"Begin pet battle."_
Defeat Korval Darkbeard |q 52803/1 |goto 43.02,38.86
|next "Tortollan_Seekers_WQ"
step
label quest-50718
accept Agent of Death##50718 |goto Nazmir/0 39.58,38.74
|tip You will accept this quest automatically.
step
Killl enemies around this area
Repel the Assault on the Necroplois |q 50718/1 |goto 39.58,38.74
|next "Tortollan_Seekers_WQ"
step
label quest-50488
Follow the path |goto Nazmir/0 67.07,41.89 < 7 |only if walking
Cross the water |goto 67.59,40.50 < 7 |only if walking
Follow the path |goto 67.23,38.44 < 7 |only if walking
Continue following the path |goto 66.58,36.19 < 7 |only if walking
Continue following the path |goto 67.06,33.06 < 7 |only if walking
accept Ancient Jawbreaker##50488 |goto Nazmir/0 67.82,29.39
|tip You will accept this quest automatically.
step
kill Ancient Jawbreaker##125250 |q 50488/1 |goto 67.81,29.51
|next "Tortollan_Seekers_WQ"
step
label quest-52832
Follow the path |goto Nazmir/0 67.12,41.11 < 7 |only if walking
Follow the road |goto 64.66,37.59 < 10 |only if walking
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
Follow the path |goto Nazmir/0 37.94,77.10 < 10 |only if walking
Continue following the path |goto 34.17,74.80 < 10 |only if walking
Continue following the path |goto 32.12,70.93 < 10 |only if walking
Continue following the path |goto 29.06,70.54 < 10 |only if walking
Follow the path up |goto 27.43,67.51 < 10 |only if walking
accept Azerite Empowerment##51412 |goto Nazmir/0 23.50,62.81
|tip You will accept this quest automatically.
step
kill Chaka the Infused##137663 |q 51412/1 |goto 23.50,62.81
|next "Tortollan_Seekers_WQ"
step
label quest-50564
Follow the path |goto Nazmir/0 39.59,42.54 < 10 |only if walking
Run down the stairs |goto 39.59,41.74 < 10 |only if walking
Follow the path |goto 38.82,40.80 < 10 |only if walking
Cross the water |goto 34.97,30.74 < 10 |only if walking
Follow the path |goto 35.15,28.52 < 10 |only if walking
accept Azerite Infused Slag##50564 |goto Nazmir/0 33.19,26.97
|tip You will accept this quest automatically.
step
kill Azerite-Infused Slag##134293 |q 50564/1 |goto 33.19,26.97
|next "Tortollan_Seekers_WQ"
step
label quest-51415
Follow the path |goto Nazmir/0 37.94,77.10 < 10 |only if walking
Continue following the path |goto 34.17,74.80 < 10 |only if walking
Continue following the path |goto 32.12,70.93 < 10 |only if walking
Continue following the path |goto 29.06,70.54 < 10 |only if walking
Follow the path up |goto 27.43,67.51 < 10 |only if walking
accept Azerite Madness##51415 |goto Nazmir/0 23.04,63.83
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51415/1 |goto 23.09,64.00
|next "Tortollan_Seekers_WQ"
step
label quest-51411
Follow the path |goto Nazmir/0 37.94,77.10 < 10 |only if walking
Continue following the path |goto 34.17,74.80 < 10 |only if walking
Continue following the path |goto 32.12,70.93 < 10 |only if walking
Continue following the path |goto 29.06,70.54 < 10 |only if walking
Follow the path up |goto 27.43,67.51 < 10 |only if walking
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
Follow the path |goto Nazmir/0 38.34,77.22 < 7 |only if walking
Continue following the path |goto 33.45,79.25 < 10 |only if walking
Continue following the path |goto 31.17,81.31 < 10 |only if walking
Continue following the path |goto 29.45,79.84 < 10 |only if walking
Continue following the path |goto 27.71,78.49 < 10 |only if walking
accept Azerite Wounds##52884 |goto 26.64,80.19
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Clear the enemies from glowing blue Azerite Wounds around this area.
|tip While standing on one, use the "Heart of Azeroth" ability that appears onscreen.
Heal #5# Azeroth Wounds |q 52884/1 |goto 26.64,80.19
|next "Tortollan_Seekers_WQ"
step
label quest-50511
Follow the path |goto Nazmir/0 39.71,77.86 < 7 |only if walking
Continue following the path |goto 40.07,77.18 < 7 |only if walking
Run down the stairs |goto 39.45,76.60 < 7 |only if walking
Cross the bridge |goto 39.54,74.38 < 7 |only if walking
Follow the path |goto 40.01,73.57 < 7 |only if walking
Cross the bridge |goto 40.27,72.37 < 7 |only if walking
Follow the path up |goto 40.33,69.66 < 7 |only if walking
Continue up the path |goto 41.21,69.21 < 7 |only if walking
Continue up the path |goto 42.34,66.08 < 7 |only if walking
Continue up the path |goto 42.98,64.73 < 7 |only if walking
accept Bajiatha##50511 |goto Nazmir/0 42.83,60.53
|tip You will accept this quest automatically.
step
kill Bajiatha##126142 |q 50511/1 |goto 42.83,60.53
|next "Tortollan_Seekers_WQ"
step
label quest-51640
Follow the path |goto Nazmir/0 81.36,25.78 < 7 |only if walking
Continue following the path |goto 78.79,23.89 < 10 |only if walking
Continue following the path |goto 77.92,21.44 < 10 |only if walking
Continue following the path |goto 76.37,17.43 < 7 |only if walking
Continue following the path |goto 75.76,15.01 < 10 |only if walking
Cross the water |goto 73.84,11.82 < 10 |only if walking
accept Beachhead##51640 |goto Nazmir/0 74.02,10.70
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51640/1 |goto 73.94,10.68
|next "Tortollan_Seekers_WQ"
step
label quest-50572
Follow the path |goto Nazmir/0 39.75,77.80 < 7 |only if walking
Continue following the path |goto 40.17,77.45 < 7 |only if walking
Continue following the path |goto 40.68,77.88 < 7 |only if walking
Continue following the path |goto 43.63,76.51 < 10 |only if walking
accept Bloody Intrusion##50572 |goto Nazmir/0 46.79,78.05
|tip You will accept this quest automatically.
stickystart "Slay_Troll_Invaders"
step
use the Ceremonial Torch##154724
|tip Use it on Zandalari Casualties on the ground around this area.
Burn #8# Troll Corpses |q 50572/1 |goto 46.79,78.05
step
label "Slay_Troll_Invaders"
Kill Blood Troll enemies around this area
Slay #10# Troll Invaders |q 50572/2 |goto 46.79,78.05
|next "Tortollan_Seekers_WQ"
step
label quest-50648
Run down the stairs |goto Nazmir/0 39.46,44.84 < 7 |only if walking
Follow the road |goto 38.09,46.82 < 7 |only if walking
Continue following the road |goto 37.25,48.01 < 10 |only if walking
Cross the bridge |goto 36.84,53.50 < 7 |only if walking
Follow the path |goto 35.41,54.00 < 10 |only if walking
accept Bubbles and Trouble##50648 |goto Nazmir/0 32.60,54.97
|tip You will accept this quest automatically.
stickystart "Slay_Empowered_Worshippers"
step
clicknpc Corruption Source##134583+
Destroy #3# Corruption Sources |q 50648/2 |goto 32.60,54.97
step
label "Slay_Empowered_Worshippers"
kill 12 Empowered Worshipper##127224 |q 50648/1 |goto 32.60,54.97
|next "Tortollan_Seekers_WQ"
step
label quest-50735
Follow the path |goto Nazmir/0 39.46,44.76 < 7 |only if walking
Continue following the path |goto 43.12,47.39 < 7 |only if walking
Continue following the path |goto 43.88,48.19 < 7 |only if walking
accept Burial Detail##50735 |goto Nazmir/0 45.85,47.39
|tip You will accept this quest automatically.
stickystart "Slay_Craven_Spirits"
step
clicknpc Cracked Vessel##134995
|tip They looks like small urns on the ground around this area.
Purify #6# Cracked Vessels |q 50735/1 |goto 45.85,47.39
step
label "Slay_Craven_Spirits"
Kill Craven enemies around this area
Slay #8# Craven Spirits |q 50735/2 |goto 45.85,47.39
|next "Tortollan_Seekers_WQ"
step
label quest-50665
Jump down here |goto Nazmir/0 66.62,44.17 < 7 |only if walking
Follow the path |goto 63.82,47.09 < 10 |only if walking
Follow the road |goto 62.49,50.66 < 7 |only if walking
Continue following the road |goto 63.12,52.36 < 7 |only if walking
Cross the bridge |goto 63.45,55.23 < 7 |only if walking
Cross the bridge |goto 63.95,57.91 < 7 |only if walking
Follow the road |goto 63.54,61.56 < 7 |only if walking
Cross the bridge |goto 62.95,62.30 < 7 |only if walking
Cross the bridge |goto 61.02,65.40 < 7 |only if walking
Cross the bridge |goto 60.05,68.01 < 7 |only if walking
Follow the path |goto 57.83,72.13 < 7 |only if walking
accept Cancel the Blood Troll Apocalypse##50665 |goto Nazmir/0 53.77,76.03
|tip You will accept this quest automatically.
step
talk Patch##134758
|tip On top of the A.F.M.O.D.
Tell him _"Let's get in the A.F.M.O.D and stop that blood troll army."_
Speak with Patch to Board the A.F.M.O.D. |q 50665/1 |goto 53.77,76.03
step
Kill Blood Troll enemies around this area
|tip Use the abilities on your action bar.
Slay #80# Blood Trolls |q 50665/2 |goto 46.79,78.05
|next "Tortollan_Seekers_WQ"
step
label quest-50813
Jump down here |goto Nazmir/0 66.64,44.14 < 7 |only if walking
Follow the path |goto 63.70,47.30 < 10 |only if walking
Continue following the path |goto 62.54,50.66 < 7 |only if walking
Continue following the path |goto 63.11,52.33 < 7 |only if walking
Cross the bridge |goto 63.45,55.22 < 7 |only if walking
Cross the bridge |goto 63.94,57.89 < 7 |only if walking
Follow the path |goto 63.60,61.55 < 7 |only if walking
Continue following the path |goto 61.50,63.85 < 7 |only if walking
accept Cargo Reclamation##50813 |goto Nazmir/0 60.16,67.71
|tip You will accept this quest automatically.
stickystart "Collect_Ransacked_Supplies"
step
click Rope Ladder##294168 |goto 60.77,69.12
kill Xuxuga the Plunderer##135377 |q 50813/1 |goto 61.33,68.57
step
label "Collect_Ransacked_Supplies"
collect 6 Ransacked Supplies## |q 50813/2 |goto 59.71,68.61
|next "Tortollan_Seekers_WQ"
step
label quest-50568
Follow the path |goto Nazmir/0 81.45,26.01 < 7 |only if walking
Continue following the path |goto 78.52,23.00 < 7 |only if walking
Continue following the path |goto 75.38,21.47 < 7 |only if walking
Continue following the path |goto 74.24,20.34 < 10 |only if walking
Cross the water |goto 72.95,20.77 < 7 |only if walking
Follow the path up |goto 70.08,20.85 < 7 |only if walking
accept Chag's Challenge##50568 |goto Nazmir/0 68.92,20.06
|tip You will accept this quest automatically.
step
kill Lucille##134296 |q 50568/1 |goto 68.12,20.21
|next "Tortollan_Seekers_WQ"
step
label quest-52779
Follow the path |goto Nazmir/0 39.82,77.72 < 7 |only if walking
Continue following the path |goto 40.17,77.42 < 7 |only if walking
Continue following the path |goto 40.67,77.89 < 7 |only if walking
Continue following the path |goto 45.91,75.08 < 10 |only if walking
accept Crawg in the Bog##52779 |goto Nazmir/0 46.65,73.79
|tip You will accept this quest automatically.
step
clicknpc Bloodtusk##141588
Defeat Bloodtusk |q 52779/1 |goto 46.65,73.79
|next "Tortollan_Seekers_WQ"
step
label quest-50492
Follow the path |goto Nazmir/0 81.27,27.79 < 7 |only if walking
accept Cursed Chest##50492 |goto Nazmir/0 81.80,30.54
|tip You will accept this quest automatically.
step
click Cursed Chest##272631
Choose _<Attempt to open the chest.>_
kill Captain Mu'kala##125232 |q 50492/1 |goto 81.80,30.54
|next "Tortollan_Seekers_WQ"
step
label quest-50717
Follow the path |goto Nazmir/0 38.61,77.50 < 7 |only if walking
accept Don't Stalk Me, Troll##50717 |goto Nazmir/0 35.70,76.42
|tip You will accept this quest automatically.
step
use Talanji's Mojo##158324
Use Talanji's Mojo Potion |q 50717/1 |goto 35.70,76.42
step
Kill Blood Troll enemies around this area
Slay #12# Blood Troll Invaders |q 50717/2 |goto 35.70,76.42
|next "Tortollan_Seekers_WQ"
step
label quest-50443
Jump down here |goto Nazmir/0 40.13,41.92 < 10 |only if walking
Follow the path |goto 43.53,39.24 < 7 |only if walking
Follow the path up |goto 43.89,38.42 < 10 |only if walking
Continue up the path |goto 45.95,37.81 < 10 |only if walking
accept Down to the Roots##50443 |goto Nazmir/0 46.74,33.74
|tip You will accept this quest automatically.
stickystart "Destroy_Bloodlasher_Seedlings"
step
Follow the path |goto Nazmir/0 47.67,34.44 < 10 |only if walking
Continue following the path |goto 48.46,33.10 < 7 |only if walking
Cross the bridge |goto 49.18,31.53 < 7 |only if walking
Follow the path |goto 48.38,29.93 < 7
Continue down the path |goto 48.28,28.90 < 7 |only if walking
kill Root-Hexxer Ib'aka##131596 |q 50443/2 |goto 48.85,28.53
step
label "Destroy_Bloodlasher_Seedlings"
clicknpc Bloodlasher Seedling##133860+
|tip They look like small carnivorious plants on the ground around this area.
Destroy #15# Bloodlasher Seedlings |q 50443/1 |goto 49.07,34.32
|next "Tortollan_Seekers_WQ"
step
label quest-52007
Follow the path |goto Nazmir/0 81.36,25.78 < 7 |only if walking
Continue following the path |goto 78.79,23.89 < 10 |only if walking
Continue following the path |goto 77.92,21.44 < 10 |only if walking
Continue following the path |goto 76.37,17.43 < 7 |only if walking
Continue following the path |goto 75.94,18.06 < 7 |only if walking
Cross the water |goto 75.23,16.75 < 10 |only if walking
accept Engines of War##52007 |goto Nazmir/0 74.02,10.70
|tip You will accept this quest automatically.
stickystart "Destroy_Amphibious_Assault_Obliterators"
stickystart "Slay_7th_Legion_Forces"
step
kill Captain Quarterflash##139510 |q 52007/3 |goto 70.37,15.56
step
label "Destroy_Amphibious_Assault_Obliterators"
use the Goblin Incendiary Rocket Launcher##160988
|tip Use it on Amphibious Assault Obliterators.
|tip They look like large siege vehicles on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #3# Amphibious Assault Obliterators |q 52007/2 |goto 72.12,15.44
step
label "Slay_7th_Legion_Forces"
Kill 7th Legion enemies around this area
Slay 7th Legion Forces |q 52007/1 |goto 72.12,15.44
|next "Tortollan_Seekers_WQ"
step
label quest-50545
Run down the stairs |goto Nazmir/0 39.54,44.63 < 7 |only if walking
Follow the path |goto 38.69,46.43 < 10 |only if walking
Continue following the path |goto 37.38,46.91 < 10 |only if walking
Continue following the path |goto 36.19,43.42 < 10 |only if walking
Cross the bridge |goto 35.61,41.18 < 7 |only if walking
Follow the path |goto 34.38,39.86 < 7 |only if walking
Continue following the path |goto 33.22,39.77 < 7 |only if walking
accept Forked Lightning##50545 |goto Nazmir/0 29.24,38.53
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
collect 25 Skycaller Gem Chip##157861 |q 50545/1 |goto 27.14,39.10
step
Enter the building |goto 27.37,39.70 < 3 |walk
click Gemcaller Matrix##136001
Restore the Skycaller Gem |q 50545/2 |goto 27.25,39.41
|next "Tortollan_Seekers_WQ"
step
label quest-50559
Follow the path |goto Nazmir/0 81.36,25.78 < 7 |only if walking
Continue following the path |goto 78.79,23.89 < 10 |only if walking
Continue following the path |goto 77.92,21.44 < 10 |only if walking
Continue following the path |goto 76.37,17.43 < 7 |only if walking
Continue following the path |goto 75.76,15.01 < 10 |only if walking
Cross the water |goto 73.49,12.45 < 10 |only if walking
accept Getting Out of Hand##50559 |goto Nazmir/0 62.67,13.99
|tip You will accept this quest automatically.
step
Use the special action button on-screen
Become the Hand of Fate |invehicle |goto 62.67,13.99
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Destroy #40# Undead |q 50559/1 |goto 62.67,13.99
|next "Tortollan_Seekers_WQ"
step
label quest-50496
Follow the path |goto Nazmir/0 67.44,43.33 < 7 |only if walking
Continue following the path |goto 68.27,44.63 < 7 |only if walking
Continue following the path |goto 67.84,46.60 < 7 |only if walking
Continue following the path |goto 68.63,52.30 < 10 |only if walking
accept Glompmaw##50496 |goto Nazmir/0 68.66,57.31
|tip You will accept this quest automatically.
step
kill Glompmaw##121242
|tip Underwater.
Slay Glompmaw |q 50496/1 |goto 68.66,57.31
|next "Tortollan_Seekers_WQ"
step
label quest-50498
Run down the stairs |goto Nazmir/0 39.45,44.89 < 10 |only if walking
Follow the road |goto 37.27,46.75 < 10 |only if walking
Continue following the road |goto 36.15,43.45 < 10 |only if walking
Cross the bridge |goto 34.96,43.46 < 7 |only if walking
Follow the path |goto 33.96,43.57 < |only if walking
accept Gutrip##50498 |goto Nazmir/0 32.80,43.10
|tip You will accept this quest automatically.
step
kill Gutrip##128426
|tip It patrols a circle around this area.
|tip It will show up on your minimap as a yellow star.
Slay Gutrip |q 50498/1 |goto 32.80,43.10
|next "Tortollan_Seekers_WQ"
step
label quest-50695
Jump down here |goto Nazmir/0 40.13,41.92 < 10 |only if walking
Follow the path |goto 43.53,39.24 < 7 |only if walking
Follow the path up |goto 43.89,38.42 < 10 |only if walking
Continue up the path |goto 45.35,37.60 < 10 |only if walking
accept It's Never Time for Cannibalism##50695 |goto Nazmir/0 49.67,35.43
|tip You will accept this quest automatically.
stickystart "Slay_Natha'vor_Cannibals"
step
clicknpc Zandalari Sacrifice##134761+
|tip They look like tied up trolls around this area.
Rescue #4# Zandalari Sacrifices |q 50695/2 |goto 49.67,35.43
step
label "Slay_Natha'vor_Cannibals"
kill Natha'vor Cannibal##124688+ |q 50695/1 |goto 49.67,35.43
|next "Tortollan_Seekers_WQ"
step
label quest-50689
Follow the road up |goto Nazmir/0 38.90,46.27 < 10 |only if walking
Continue following the road |goto 36.94,47.63 < 10 |only if walking
Continue following the road |goto 33.69,47.73 < 10 |only if walking
Continue following the road |goto 30.93,49.08 < 10 |only if walking
Follow the path up |goto 28.87,47.68 < 7 |only if walking
Continue up the path |goto 27.56,49.17 < 10 |only if walking
accept It's the Pits##50689 |goto Nazmir/0 24.68,47.71
|tip You will accept this quest automatically.
stickystart "Kill_Bone_Raptors"
step
clicknpc Goblin Prospector##134759+
|tip They look like tar-covered goblins in tar pits around this area.
Rescue #4# Goblin Prospectors |q 50689/2 |goto 24.68,47.71
step
label "Kill_Bone_Raptors"
kill 8 Bone Raptor##130735+ |q 50689/1 |goto 24.68,47.71
|next "Tortollan_Seekers_WQ"
step
label quest-50505
Follow the path |goto Nazmir/0 67.31,41.89 < 7 |only if walking
Continue following the path |goto 67.08,41.01 < 7 |only if walking
Continue following the path |goto 63.86,36.29 < 10 |only if walking
Continue following the path |goto 61.89,30.32 < 7 |only if walking
Continue following the path |goto 60.07,27.79 < 10 |only if walking
Continue following the path |goto 59.59,26.10 < 10 |only if walking
Continue following the path |goto 57.48,26.23 < 7 |only if walking
Continue following the path |goto 55.37,24.03 < 7 |only if walking
Continue up the path |goto 54.83,19.02 < 7 |only if walking
Continue up the path |goto 53.75,17.71 < 7 |only if walking
accept Kal'draxa##50505 |goto Nazmir/0 52.90,13.15
|tip You will accept this quest automatically.
step
kill Kal'draxa##124397 |q 50505/1 |goto 52.90,13.15
|next "Tortollan_Seekers_WQ"
step
label quest-50506
Follow the path |goto Nazmir/0 39.50,44.84 < 7 |only if walking
Follow the road |goto 41.05,45.50 < 10 |only if walking
Cross the bridge |goto 43.79,43.48 < 5 |only if walking
Cross the bridge |goto 45.23,42.89 < 7 |only if walking
Cross the bridge |goto 45.85,42.82 < 7 |only if walking
Follow the road |goto 46.59,43.04 < 7 |only if walking
Follow the path down |goto 47.54,43.05 < 7 |only if walking
Continue following the path |goto 49.04,44.26 < 10 |only if walking
Continue following the path |goto 51.40,43.94 < 10 |only if walking
accept King Kooba##50506 |goto Nazmir/0 52.59,44.27
|tip You will accept this quest automatically.
step
Run up the stairs |goto 52.63,44.16 < 7 |only if walking
Run up the stairs |goto 52.80,43.58 < 7 |only if walking
Follow the path |goto 53.17,43.48 < 5 |only if walking
kill King Kooba##129005 |q 50506/1 |goto 53.43,42.82
|next "Tortollan_Seekers_WQ"
step
label quest-50497
Follow the path |goto Nazmir/0 67.35,43.32 < 7 |only if walking
Continue following the path |goto 68.43,44.27 < 10 |only if walking
Continue following the path |goto 70.57,45.55 < 10 |only if walking
Continue following the path |goto 72.83,45.51 < 10 |only if walking
Follow the path up |goto 73.87,46.69 < 10 |only if walking
Continue following the path |goto 76.40,46.96 < 10 |only if walking
accept Krag'wa's Favor##50497 |goto Nazmir/0 75.29,46.26
|tip You will accept this quest automatically.
step
Kill Frogmarsh enemies around this area
collect Chunky Meat##151040 |n
click Raptor Egg##201974+
|tip They look like large speckled half-buried eggs on the ground around this area.
clicknpc Beautiful Glowfly##123259
|tip They look like small butterflies in the air around this area.
Collect Offerings for Krag'wa |q 50497/1 |goto 75.29,46.26
|next "Tortollan_Seekers_WQ"
step
label quest-50507
Follow the path |goto Nazmir/0 67.47,43.36 < 7 |only if walking
Continue following the path |goto 68.42,44.28 < 7 |only if walking
Continue following the path |goto 69.29,43.23 < 7 |only if walking
Continue following the path |goto 72.23,41.58 < 10 |only if walking
Continue following the path |goto 74.37,39.59 < 7 |only if walking
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
Follow the path |goto Nazmir/0 67.35,43.32 < 7 |only if walking
Continue following the path |goto 68.43,44.27 < 10 |only if walking
Continue following the path |goto 70.57,45.55 < 10 |only if walking
Continue following the path |goto 72.83,45.51 < 10 |only if walking
Follow the path up |goto 73.87,46.69 < 10 |only if walking
Continue following the path |goto 76.40,46.96 < 10 |only if walking
accept Lo'kuno##50509 |goto Nazmir/0 77.72,45.16
|tip You will accept this quest automatically.
step
kill Lo'kuno##133539 |q 50509/1 |goto 77.72,45.16
|next "Tortollan_Seekers_WQ"
step
label quest-50566
Follow the path |goto Nazmir/0 67.50,43.40 < 7 |only if walking
Continue following the path |goto 68.38,44.25 < 7 |only if walking
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
Jump down here |goto Nazmir/0 66.79,43.87 < 5 |only if walking
Follow the path |goto 65.40,44.44 < 10 |only if walking
Continue following the path |goto 63.42,47.83 < 7 |only if walking
Continue following the path |goto 59.09,49.25 < 10 |only if walking
Continue down the path |goto 57.85,50.92 < 10 |only if walking
Jump down here |goto 56.87,52.44 < 7 |only if walking
Jump down here |goto 56.41,52.98 < 7 |only if walking
Follow the path down |goto 55.89,53.79 < 10 |only if walking
Continue following the path |goto 54.74,54.98 < 7 |only if walking
accept Mala'kili and Rohnkor##50517 |goto Nazmir/0 53.77,53.31
|tip You will accept this quest automatically.
step
kill Mala'kili##128935
|tip He runs around this area.
Slay Mala'kili |q 50517/1 |goto 53.77,53.31
|next "Tortollan_Seekers_WQ"
step
label quest-52754
Follow the path |goto Nazmir/0 67.37,43.25 < 7 |only if walking
Continue following the path |goto 68.34,44.06 < 7 |only if walking
Continue following the path |goto 70.42,44.74 < 10 |only if walking
Continue following the path |goto 71.49,46.53 < 7 |only if walking
Continue following the path |goto 72.02,49.97 < 10 |only if walking
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
label quest-50587
Follow the path |goto Nazmir/0 67.35,43.32 < 7 |only if walking
Continue following the path |goto 68.43,44.27 < 10 |only if walking
Continue following the path |goto 70.57,45.55 < 10 |only if walking
Continue following the path |goto 72.83,45.51 < 10 |only if walking
Follow the path up |goto 73.87,46.69 < 10 |only if walking
Follow the path down |goto 75.14,48.64 < 7 |only if walking
accept Nagative Feedback##50587 |goto Nazmir/0 77.05,50.52
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Infused Trident Rack##287159+
|tip They look like large weapon racks on the ground around this area.
click Empowering Totem##134372+
|tip The look like small idols on the ground around this area.
Disrupt the Naga Encampment |q 50587/1 |goto 75.29,46.26
You can find more around [81.37,52.08]
|next "Tortollan_Seekers_WQ"
step
label quest-50474
Follow the path |goto Nazmir/0 39.58,44.56 < 10 |only if walking
accept The Other Side##50474 |goto Nazmir/0 39.55,55.04
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 6 Spirit Essence##157833 |goto 39.55,55.04
step
clicknpc Fettered Spirit##133962+
|tip They look like kneeling spirits on the ground around this area.
Liberate #6# Fettered Spirits |q 50474/1 |goto 39.55,55.04
|next "Tortollan_Seekers_WQ"
step
label quest-50510
Jump down here |goto Nazmir/0 66.73,44.11 < 7 |only if walking
Follow the path |goto 63.86,47.01 < 10 |only if walking
Continue following the path |goto 61.80,53.50 < 10 |only if walking
Continue following the path |goto 61.86,58.81 < 10 |only if walking
accept Overstuffed Saurolisk##50510 |goto Nazmir/0 62.10,65.21
|tip You will accept this quest automatically.
step
kill Overstuffed Saurolisk##124375 |q 50510/1 |goto 62.10,65.21
|next "Tortollan_Seekers_WQ"
step
label quest-52799
Follow the path |goto Nazmir/0 39.50,44.84 < 7 |only if walking
Continue following the path |goto 37.26,47.97 < 10 |only if walking
Cross the bridge |goto 36.85,53.47 < 7 |only if walking
accept Pack Leader##52799 |goto Nazmir/0 35.93,54.59
|tip You will accept this quest automatically.
step
talk Grady Prett##141799
Tell him _"Begin pet battle."_
Defeat Grady Prett |q 52799/1 |goto 35.93,54.59
|next "Tortollan_Seekers_WQ"
step
label quest-50667
Follow the path |goto Nazmir/0 67.11,41.68 < 10 |only if walking
Continue following the path |goto 67.53,40.66 < 7 |only if walking
accept Past Due##50667 |goto Nazmir/0 68.45,35.34
|tip You will accept this quest automatically.
step
click Ancient Texts##287161+
|tip They look like large tablets on the ground around this area.
|tip If you have trouble finding them, check inside buildings.
Examine #8# Ancient Text |q 50667/1 |goto 68.45,35.34
|next "Tortollan_Seekers_WQ"
step
label quest-52006
Follow the path |goto Nazmir/0 81.45,26.01 < 7 |only if walking
Continue following the path |goto 78.52,23.00 < 7 |only if walking
Continue following the path |goto 76.62,20.95 < 7 |only if walking
Cross the water |goto 73.75,18.06 < 10 |only if walking
accept Preemptive Assault##52006 |goto Nazmir/0 72.04,16.42
|tip You will accept this quest automatically.
stickystart "Burn_Barricades"
stickystart "Slay_10_7th_Legion_Forces"
step
Follow the path |goto 71.02,16.75 < 10 |only if walking
kill Houndmaster Leopold##139554 |q 52006/3 |goto 70.43,15.54
step
label "Burn_Barricades"
click Barricade##281000+
|tip They look like piles of wooden rubble on the ground around this area.
|tip They appear on your minimap as a yellow dot.
Burn #5# Barricades |q 52006/2 |goto 71.01,15.51
step
label "Slay_10_7th_Legion_Forces"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Forces |q 52006/1 |goto 71.01,15.51
|next "Tortollan_Seekers_WQ"
step
label quest-50786
Jump down here |goto Nazmir/0 66.66,44.11 < 7 |only if walking
Cross the water |goto 63.62,47.72 < 10 |only if walking
accept Revenge of Krag'wa##50786 |goto Nazmir/0 63.77,52.37
|tip You will accept this quest automatically.
step
talk Krag'wa the Huge##134976
Tell it _"I am ready to fight the blood trolls."_
Meet Krag'wa Outside Zal'amak |q 50786/1 |goto 63.77,52.37
step
Kill Bloodhunter enemies around this area
|tip Use the abilities on your hotbar to kill trolls around this area.
Slay #150# Blood Trolls |q 50786/2 |goto 63.77,52.37
|next "Tortollan_Seekers_WQ"
step
label quest-50676
Follow the path |goto Nazmir/0 67.59,43.57 < 7 |only if walking
Continue following the path |goto 68.42,44.97 < 10 |only if walking
accept River Toll##50676 |goto Nazmir/0 68.66,47.11
|tip You will accept this quest automatically.
stickystart "Slay_Bloodhunter_Trolls"
step
use the Ceremonial Torch##154724
|tip Use it on Zandalari Casualties on the ground around this area.
Destroy #8# Bloodhunter War Supplies |q 50676/2 |goto 68.30,49.82
step
label "Slay_Bloodhunter_Trolls"
Kill Bloodhunter enemies around this area
Slay #12# Bloodhunter Trolls |q 50676/1 |goto 68.30,49.82
|next "Tortollan_Seekers_WQ"
step
label quest-50634
Follow the path |goto Nazmir/0 67.12,41.08 < 7 |only if walking
Follow the road |goto 63.92,36.52 < 10 |only if walking
Continue following the road |goto 62.92,34.00 < 10 |only if walking
Continue following the road |goto 61.76,30.10 < 7 |only if walking
accept Save Our Scrolls!##50634 |goto Nazmir/0 61.32,26.40
|tip You will accept this quest automatically.
step
click Grimy Scroll##281722+
|tip They look like small glowing scrolls on the ground around this area.
collect 12 Intact Tortollan Scroll##158176 |q 50634/1 |goto 61.32,26.40
|next "Tortollan_Seekers_WQ"
step
label quest-50512
Run down the stairs |goto Nazmir/0 67.05,41.01 < 5 |only if walking
Follow the path |goto 64.99,37.88 < 7 |only if walking
Cross the water |goto 63.41,36.72 < 7 |only if walking
Follow the path |goto 61.57,37.66 < 10 |only if walking
accept Scout Skrasniss##50512 |goto Nazmir/0 59.15,38.72
|tip You will accept this quest automatically.
step
kill Scout Skrasniss##127820 |q 50512/1 |goto 59.15,38.72
|next "Tortollan_Seekers_WQ"
step
label quest-51628
Follow the path |goto Nazmir/0 67.37,43.25 < 7 |only if walking
Continue following the path |goto 68.34,44.06 < 7 |only if walking
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
Follow the path |goto Nazmir/0 39.70,77.86 < 7 |only if walking
Continue following the path |goto 40.13,77.35 < 7 |only if walking
Continue following the path |goto 40.69,77.89 < 5 |only if walking
Continue following the path |goto 45.69,75.18 < 10 |only if walking
Run down the stairs |goto 47.30,76.44 < 7 |only if walking
Follow the path |goto 47.92,76.01 < 7 |only if walking
Follow the path up |goto 48.46,75.03 < 7 |only if walking
Continue following the path |goto 48.71,74.04 < 10 |only if walking
Jump down here |goto 48.73,71.92 < 7 |only if walking
Follow the road down |goto 49.80,71.19 < 10 |only if walking
Continue following the road |goto 48.13,68.88 < 10 |only if walking
accept Shul-Nagruth##50468 |goto Nazmir/0 48.41,66.86
|tip You will accept this quest automatically.
step
kill Maw of Shul-Nagruth##128610 |q 50468/1 |goto 49.86,67.21
|next "Tortollan_Seekers_WQ"
step
label quest-50650
Run down the stairs |goto Nazmir/0 39.45,44.89 < 10 |only if walking
Follow the road |goto 37.27,46.75 < 10 |only if walking
Continue following the road |goto 36.15,43.45 < 10 |only if walking
Cross the bridge |goto 34.96,43.46 < 7 |only if walking
Follow the path |goto 33.96,43.57 < 7 |only if walking
accept Smashing Zalamar##50650 |goto Nazmir/0 32.56,45.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Repulsive Container##281835+
|tip They look like large dark-colored urns on the ground around this area.
Disrupt Zalamar |q 50650/1 |goto 32.56,45.62
|next "Tortollan_Seekers_WQ"
step
label quest-52181
Follow the path |goto Nazmir/0 39.57,42.54 < 7 |only if walking
Run down the stairs |goto 39.55,41.81 < 7 |only if walking
Follow the path |goto 37.87,38.24 < 10 |only if walking
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
label quest-50529
Follow the path |goto Nazmir/0 39.59,42.54 < 10 |only if walking
Run down the stairs |goto 39.59,41.74 < 10 |only if walking
Cross the water |goto 39.60,39.18 < 10 |only if walking
Cross the water |goto 39.59,37.12 < 10 |only if walking
Run up the stairs |goto 39.59,33.87 < 10 |only if walking
accept The Spirits Within##50529 |goto Nazmir/0 39.60,29.93
|tip You will accept this quest automatically.
step
kill Reanimated Horror##122684+
Return #12# Spirits to the Necropolis |q 50529/1 |goto 39.60,29.93
Return sprits to [39.57,27.89]
|next "Tortollan_Seekers_WQ"
step
label quest-52385
collect 20 Slimy Mackerel##152544 |q 52385 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Slimy Mackerel##52385 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Supplies Needed: Slimy Mackerel##52385 |goto 39.07,79.52
|next "Tortollan_Seekers_WQ"
step
label quest-50513
Run down the stairs |goto Nazmir/0 39.50,44.63 < 7 |only if walking
Follow the path up |goto 38.94,46.31 < 10 |only if walking
Continue following the path |goto 37.09,46.41 < 10 |only if walking
Continue following the path |goto 36.17,43.36 < 7 |only if walking
Continue following the path |goto 36.03,41.79 < 7 |only if walking
Cross the bridge |goto 35.63,41.16 < 7 |only if walking
Follow the path |goto 34.47,39.89 < 7 |only if walking
Follow the path |goto 33.19,39.76 < 7 |only if walking
accept Tainted Guardian##50513 |goto Nazmir/0 32.21,37.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 32.21,37.86 < 7 |only if walking
Follow the path |goto 31.88,37.87 < 5 |only if walking
kill Tainted Guardian##126460 |q 50513/1 |goto 31.51,38.20
|next "Tortollan_Seekers_WQ"
step
label quest-50514
Jump down here |goto Nazmir/0 40.22,42.42 < 7 |only if walking
Follow the path up |goto 42.59,41.53 < 10 |only if walking
Continue following the path |goto 45.48,41.00 < 10 |only if walking
accept Totem Maker Jash'ga##50514 |goto Nazmir/0 48.88,38.42
|tip You will accept this quest automatically.
step
Run up the ramp |goto 49.17,36.85 < 5 |only if walking
Follow the path |goto 49.45,36.94 < 7 |only if walking
Enter the building |goto 49.43,37.39 < 5 |only if walking
kill Totem Maker Jash'ga##126056
|tip Inside the building.
Slay Totem Maker Jash'ga |q 50514/1 |goto 49.42,37.69
|next "Tortollan_Seekers_WQ"
step
label quest-50577
Follow the path down |goto Nazmir/0 38.12,77.07 < 7 |only if walking
accept Unaccounted For##50577 |goto Nazmir/0 35.99,83.03
|tip You will accept this quest automatically.
stickystart "Slay_Primal_Skyterrors"
step
clicknpc Darkspear Scout##134326+
|tip They look like injured trolls on the ground around this area.
Rescue #6# Injured Darkspear Scouts |q 50577/2 |goto 35.48,84.48
step
label "Slay_Primal_Skyterrors"
use the Grappling Hook##159761
|tip Use it on flying Primal Skyterrors.
kill Primal Skyterror##126702+
Slay #10# Primal Skyterrors |q 50577/1 |goto 35.48,84.48
|next "Tortollan_Seekers_WQ"
step
label quest-50483
Jump down here |goto Nazmir/0 66.73,44.11 < 7 |only if walking
Follow the path |goto 63.86,47.01 < 10 |only if walking
Continue following the path |goto 61.80,53.50 < 10 |only if walking
Continue following the path |goto 61.86,58.81 < 10 |only if walking
Continue following the path |goto 58.95,53.00 < 10 |only if walking
Jump down here |goto 57.71,51.76 < 10 |only if walking
Follow the path down |goto 55.28,55.38 < 10 |only if walking
accept Underlord Xerxiz##50483 |goto Nazmir/0 55.36,57.61
|tip You will accept this quest automatically.
step
kill Underlord Xerxiz##134002 |q 50483/1 |goto 55.36,57.61
|next "Tortollan_Seekers_WQ"
step
label quest-50490
Follow the path |goto Nazmir/0 39.45,44.80 < 7 |only if walking
Continue following the path |goto 42.58,46.81 < 10 |only if walking
accept Uroku the Bound##50490 |goto Nazmir/0 44.27,48.78
|tip You will accept this quest automatically.
step
kill Uroku the Bound##128965 |q 50490/1 |goto 44.27,48.78
|next "Tortollan_Seekers_WQ"
step
label quest-50515
Run down the stairs |goto Nazmir/0 39.45,44.89 < 10 |only if walking
Follow the road |goto 39.13,46.20 < 10 |only if walking
Continue following the road |goto 36.51,47.59 < 10 |only if walking
Follow the path down |goto 34.74,48.44 < 7 |only if walking
Continue following the path |goto 33.88,49.75 < 7|only if walking
accept Venomjaw##50515 |goto Nazmir/0 29.47,50.84
|tip You will accept this quest automatically.
step
kill Venomjaw##126926 |q 50515/1 |goto 29.47,50.84
|next "Tortollan_Seekers_WQ"
step
label quest-50459
Jump down here |goto Nazmir/0 40.13,41.92 < 10 |only if walking
Follow the path |goto 43.53,39.24 < 7 |only if walking
Follow the path up |goto 43.89,38.42 < 10 |only if walking
Continue up the path |goto 46.03,36.24 < 10 |only if walking
accept Vugthuth##50459 |goto Nazmir/0 46.74,33.74
|tip You will accept this quest automatically.
step
kill Vugthuth##128584 |q 50459/1 |goto 46.74,33.74
|next "Tortollan_Seekers_WQ"
step
label quest-50516
Follow the path |goto Nazmir/0 39.46,44.76 < 7 |only if walking
Continue following the path |goto 43.12,47.39 < 7 |only if walking
Continue following the path |goto 44.04,49.38 < 7 |only if walking
Continue down the path |goto 46.50,49.45 < 7 |only if walking
accept Wardrummer Zurula##50516 |goto Nazmir/0 47.66,49.55
|tip You will accept this quest automatically.
step
Jump down here |goto 47.85,50.07 < 5 |only if walking
Follow the path down |goto 48.01,51.32 < 7 |only if walking
Run up the ramp |goto 48.79,51.05 < 5 |only if walking
kill Wardrummer Zurula##126907 |q 50516/1 |goto 48.96,50.77
|next "Tortollan_Seekers_WQ"
step
label quest-52410
collect 10 Solstone##153703 |q 52410 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Solstone##52410 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Solstone##52410 |goto 39.07,79.52
|next "Tortollan_Seekers_WQ"
step
label quest-50518
Follow the path down |goto Nazmir/0 38.63,77.55 < 10 |only if walking
Continue following the path |goto 38.19,76.66 < 7 |only if walking
accept Zanxib##50518 |goto Nazmir/0 39.01,71.46
|tip You will accept this quest automatically.
step
kill Zanxib##133812 |q 50518/1 |goto 39.01,71.46
|next "Tortollan_Seekers_WQ"
step
label quest-50461
Follow the path |goto Nazmir/0 39.53,44.57 < 10 |only if walking
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
condition_suggested=function() return level>=120 and completedq(51916) end,
condition_valid=function() return level>=120 and completedq(51916) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Zandalari Empire\n"..
"Talanji's Expedition\n"..
"Voldunai\n\n"..
"Then turn in the quest \"Uniting Zandalar\""..
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
label quest-52165
accept Automated Chaos##52165 |goto Stormsong Valley/0 36.53,33.64
|tip You will accept this quest automatically.
step
talk Eddie Fixit##140315
Tell him _"Begin pet battle."_
Defeat Eddie Fixit |q 52165/1 |goto 36.53,33.64
|next "Tortollan_Seekers_WQ"
step
label quest-52871
Follow the path down |goto Stormsong Valley/0 75.59,63.36 < 7 |only if walking
Continue down the path |goto 75.12,62.94 < 7 |only if walking
Continue down the path |goto 72.97,62.12 < 7 |only if walking
Jump down here |goto 72.77,61.38 < 7 |only if walking
Cross the water |goto 72.64,60.90 < 7 |only if walking
Follow the path |goto 72.99,55.75 < 7 |only if walking
accept Azerite Empowerment##52871 |goto Stormsong Valley/0 72.96,53.88
|tip You will accept this quest automatically.
step
Follow the path |goto 72.04,53.56 < 7 |only if walking
Continue down the path |goto 71.70,51.17 < 10 |only if walking
Continue following the path |goto 72.09,50.16 < 7 |only if walking
Enter the cave |goto 72.91,50.99 < 7 |walk
kill Herald Zaxuthril##141985
|tip Inside the cave.
Slay Herald Zaxuthril |q 52871/1 |goto 72.19,52.10
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
label quest-51644
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
label quest-52873
Follow the path |goto Stormsong Valley/0 40.55,38.04 < 7 |only if walking
Continue following the path |goto 40.39,41.38 < 7 |only if walking
Continue following the path |goto 40.29,45.12 < 10 |only if walking
Continue following the path |goto 40.57,48.29 < 7 |only if walking
Continue following the path |goto 39.52,54.33 < 10 |only if walking
Continue up the path |goto 38.07,58.93 < 10 |only if walking
accept Azerite Mining##52873 |goto Stormsong Valley/0 36.52,65.88
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
label quest-51623
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
Follow the path |goto Stormsong Valley/0 40.55,38.04 < 7 |only if walking
Continue following the path |goto 40.39,41.38 < 7 |only if walking
Continue following the path |goto 40.29,45.12 < 10 |only if walking
Continue following the path |goto 40.57,48.29 < 7 |only if walking
Continue following the path |goto 39.52,54.33 < 10 |only if walking
Continue up the path |goto 38.07,58.93 < 10 |only if walking
Follow the road |goto 37.42,61.13 < 7 |only if walking
Continue following the road |goto 34.97,60.90 < 10 |only if walking
Follow the path |goto 32.87,59.29 < 7 |only if walking
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
accept Beehemoth##52330 |goto Stormsong Valley/0 68.12,74.57
|tip You will accept this quest automatically.
step
kill Beehemoth##134147 |q 52330/1 |goto 68.16,74.84
|next "Tortollan_Seekers_WQ"
step
label quest-52117
Follow the path |goto Stormsong Valley/0 52.52,80.04 < 7 |only if walking
Continue following the path |goto 52.32,78.42 < 7 |only if walking
Cross the water |goto 51.15,76.32 < 7 |only if walking
Follow the path up |goto 50.30,75.13 < 7 |only if walking
Continue following the path |goto 48.90,74.93 < 7 |only if walking
Continue following the path |goto 48.24,73.03 < 7 |only if walking
accept Briarback Mountain##52117 |goto Stormsong Valley/0 47.70,72.32
|tip You will accept this quest automatically.
stickystart "Borrow_Battle_Piglets"
step
Jump down here |goto 47.00,72.31 < 5 |only if walking
Follow the path |goto 46.58,72.82 < 7 |only if walking
Continue up the path |goto 45.90,72.66 < 7 |only if walking
Continue up the path |goto 46.05,74.21 < 7 |only if walking
Continue up the path |goto 46.57,74.52 < 7 |only if walking
click Stormsong Supplies##292557+
|tip They look like brown crates on the ground around this area.
collect 10 Stormsong Supplies##161123 |q 52117/1 |goto 45.85,76.75
step
label "Borrow_Battle_Piglets"
clicknpc Rooting Battle-Piglet##139903+
|tip They look like tiny pigs walking on the ground around this area.
Borrow #8# Battle-Piglets |q 52117/2 |goto 45.85,76.75
|next "Tortollan_Seekers_WQ"
step
label quest-52306
Follow the path up |goto Stormsong Valley/0 51.69,32.90 < 7 |only if walking
Continue up the path |goto 52.34,32.91 < 7 |only if walking
Continue up the path |goto 53.50,32.17 < 7 |only if walking
Cross the bridge |goto 55.45,31.45 < 5 |only if walking
Follow the path |goto 57.22,30.63 < 7 |only if walking
Cross the bridge |goto 58.20,30.84 < 7 |only if walking
Cross the bridge |goto 58.68,30.63 < 7 |only if walking
Follow the path |goto 59.56,30.07 < 7 |only if walking
Continue following the path |goto 60.55,30.19 < 7 |only if walking
Cross the bridge |goto 60.89,30.62 < 7 |only if walking
Follow the path |goto 61.60,33.62 < 10 |only if walking
accept Croaker##52306 |goto Stormsong Valley/0 62.58,33.17
|tip You will accept this quest automatically.
step
kill Croaker##140938 |q 52306/1 |goto 62.93,32.83
|next "Tortollan_Seekers_WQ"
step
label quest-51777
accept Dagrus the Scorned##51777 |goto Stormsong Valley/0 66.91,41.29
|tip You will accept this quest automatically.
step
kill Dagrus the Scorned##134897 |q 51777/1 |goto 67.86,39.83
|next "Tortollan_Seekers_WQ"
step
label quest-51778
accept Deepfang##51778 |goto Stormsong Valley/0 53.19,50.61
|tip You will accept this quest automatically.
step
Jump down here |goto 54.06,49.39 < 5 |only if walking
kill Deepfang##139385 |q 51778/1 |goto 53.19,50.61
|next "Tortollan_Seekers_WQ"
step
label quest-51996
Follow the path down |goto Stormsong Valley/0 54.64,49.63 < 7 |only if walking
Continue following the path |goto 55.07,52.14 < 7 |only if walking
Continue following the path |goto 54.72,53.07 < 7 |only if walking
accept Earthcaller's Abode##51996 |goto Stormsong Valley/0 53.14,54.39
|tip You will accept this quest automatically.
step
kill Earthcaller Gulgort##134775 |q 51996/1 |goto 50.02,56.24
step
label "Destroy_Binding_Crystals"
click Binding Crystals##139451
|tip They look like giant purple crystals hovering above the ground around this area.
Destroy #6# Binding Crystals |q 51996/3 |goto 47.83,56.56
step
label "Kill_Restless_Stones"
kill 10 Restless Stone##134966 |q 51996/2 |goto 47.83,56.56
|next "Tortollan_Seekers_WQ"
step
label quest-53027
Follow the path down |goto Stormsong Valley/0 78.04,24.55 < 7 |only if walking
Continue following the path |goto 78.01,25.92 < 7 |only if walking
Cross the bridge |goto 77.56,26.79 < 7 |only if walking
Cross the bridge |goto 76.62,26.74 < 7 |only if walking
Run down the stairs |goto 75.56,26.32 < 10 |only if walking
Run down the stairs |goto 75.35,25.14 < 7 |only if walking
accept Edge of Glory##53027 |goto Stormsong Valley/0 73.00,23.71
|tip You will accept this quest automatically.
stickystart "Slay_Abyssal_Forces"
step
kill Brother Haines##142516 |q 53027/2 |goto 73.00,23.71
step
label "Slay_Abyssal_Forces"
Follow the path up |goto 73.29,24.72 < 7 |only if walking
Enter the building |goto 74.43,28.30 < 7 |only if walking
Follow the path |goto 74.88,30.06 < 10 |only if walking
Leave the building |goto 74.32,30.61 < 5 |only if walking
Kill enemies around this area
Slay #25# Abyssal Forces |q 53027/1 |goto 73.14,30.67
|next "Tortollan_Seekers_WQ"
step
label quest-51781
accept Foreman Scripps##51781 |goto Stormsong Valley/0 64.43,65.92
|tip You will accept this quest automatically.
step
kill Foreman Scripps##131404 |q 51781/1 |goto 64.43,65.92
|next "Tortollan_Seekers_WQ"
step
label quest-52463
accept Haegol the Hammer##52463 |goto Stormsong Valley/0 34.89,77.93
|tip You will accept this quest automatically.
step
kill Haegol the Hammer##141226
|tip It walks around.
Slay Haegol the Hammer |q 52463/1 |goto 35.25,77.76
|next "Tortollan_Seekers_WQ"
step
label quest-52115
Follow the path down |goto Stormsong Valley/0 76.70,64.01 < 7 |only if walking
Continue down the path |goto 77.53,63.55 < 7 |only if walking
Continue down the path |goto 78.17,63.68 < 7 |only if walking
Continue down the path |goto 79.07,62.87 < 7 |only if walking
Cross the water |goto 79.77,62.72 < 7 |only if walking
accept In the Shadow of the Kracken##52115 |goto Stormsong Valley/0 81.43,60.69
|tip You will accept this quest automatically.
step
Follow the path |goto 81.63,60.12 < 7 |only if walking
Continue following the path |goto 81.39,59.32 < 7 |only if walking
kill Stormrider Telmin##139930 |q 52115/1 |goto 81.46,58.09
|next "Tortollan_Seekers_WQ"
step
label quest-52239
Jump down here |goto Stormsong Valley/0 54.03,49.78 < 7 |only if walking
Follow the path down |goto 53.67,50.52 < 7 |only if walking
accept Loose Change##52239 |goto Stormsong Valley/0 52.22,55.56
|tip You will accept this quest automatically.
step
use the Magnetized Metal Collector##158226
|tip Use it near treasure locations.
|tip They will appear as yellow areas on your minimap.
|tip Coins look like small sparkling dots on the ground around this area.
Find #60# Loose Coins |q 52239/1 |goto 52.22,55.56
|next "Tortollan_Seekers_WQ"
step
label quest-51633
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
label quest-52880
accept Milden Mud Snout##52880 |goto Stormsong Valley/0 50.00,79.18
|tip You will accept this quest automatically.
step
kill Milden Mud Snout##141977
|tip Underwater.
Slay Milden Mud Snout |q 52880/1 |goto 50.00,79.18
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
label quest-52464
accept Osca the Bloodied##52464 |goto Stormsong Valley/0 42.26,63.24
|tip You will accept this quest automatically.
step
kill Osca the Bloodied##141239 |q 52464/1 |goto 42.26,63.24
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
label quest-52160
Follow the path down |goto Stormsong Valley/0 52.47,79.89 < 7 |only if walking
Continue following the path |goto 52.31,78.47 < 7 |only if walking
Continue down the path |goto 51.62,77.17 < 10 |only if walking
Cross the water |goto 51.11,76.11 < 7 |only if walking
Continue up the path |goto 49.99,74.71 < 7 |only if walking
accept Restocking##52160 |goto Stormsong Valley/0 49.80,72.24
|tip You will accept this quest automatically.
stickystart "Collect_Handfuls_of_Scrap"
step
Kill enemies around this area
|tip Click the corpses after looting to carve out the ammunition.
collect 20 Salvaged Azerite Ammunition##156583 |q 52160/1 |goto 49.80,72.24
step
label "Collect_Handfuls_of_Scrap"
click Discarded Toolbox##292765+
|tip They look like small boxes on the ground around this area.
click Metal Scraps##292764+
|tip They look like small pieces of scrap on the ground around this area.
collect 15 Handful of Scraps##161216 |q 52160/2 |goto 49.80,72.24
|next "Tortollan_Seekers_WQ"
step
label quest-52309
Follow the path down |goto Stormsong Valley/0 75.49,63.30 < 7 |only if walking
Jump down here |goto 75.08,62.88 < 7 |only if walking
Jump down here |goto 74.68,62.85 < 7 |only if walking
Jump down here |goto 73.33,61.83 < 10 |only if walking
accept SandFang##52309 |goto Stormsong Valley/0 72.80,61.01
|tip You will accept this quest automatically.
step
kill Sandfang##139988 |q 52309/1 |goto 73.52,60.65
|next "Tortollan_Seekers_WQ"
step
label quest-52316
Follow the path down |goto Stormsong Valley/0 54.61,49.68 < 7 |only if walking
Follow the road |goto 55.61,54.21 < 7 |only if walking
Continue following the road |goto 58.30,53.14 < 7 |only if walking
Continue following the road |goto 59.98,54.49 < 7 |only if walking
Cross the bridge |goto 61.16,53.51 < 7 |only if walking
Follow the road |goto 61.88,54.17 < 7 |only if walking
Continue following the road |goto 63.12,53.45 < 7 |only if walking
Continue following the road |goto 64.01,51.76 < 7 |only if walking
accept Sea Creatures Are Weird##52316 |goto Stormsong Valley/0 65.02,50.82
|tip You will accept this quest automatically.
step
talk Ellie Vern##141002
Tell her _"Begin pet battle."_
Defeat Ellie Vern |q 52316/1 |goto 65.02,50.82
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
label quest-52452
Follow the path down |goto Stormsong Valley/0 78.14,25.57 < 10 |only if walking
Cross the bridge |goto 77.55,26.76 < 7 |only if walking
Cross the bridge |goto 76.59,26.72 < 7 |only if walking
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
label quest-52236
Follow the path down |goto Stormsong Valley/0 52.48,79.89 < 7 |only if walking
Continue following the path |goto 52.33,78.49 < 7 |only if walking
Cross the water |goto 51.16,76.18 < 7 |only if walking
Follow the path |goto 50.28,73.01 < 10 |only if walking
Continue following the path |goto 49.17,69.76 < 10 |only if walking
Continue following the path |goto 50.12,68.13 < 7 |only if walking
Jump down here |goto 49.79,67.44 < 7 |only if walking
accept A Thorny Problem##52236 |goto Stormsong Valley/0 49.58,66.90
|tip You will accept this quest automatically.
step
clicknpc Bramble Pod##132207+
|tip They look like small tangles of roots on the ground around this area.
Kill enemies around this area
Clear the Fields |q 52236/1 |goto 48.58,64.97
|next "Tortollan_Seekers_WQ"
step
label quest-52322
accept Taja the Tidehowler##52322 |goto Stormsong Valley/0 59.95,45.87
|tip You will accept this quest automatically.
step
kill Taja the Tidehowler##139980 |q 52322/1 |goto 59.95,45.87
|next "Tortollan_Seekers_WQ"
step
label quest-52300
Follow the path down |goto Stormsong Valley/0 52.47,79.89 < 7 |only if walking
Continue following the path |goto 52.31,78.47 < 7 |only if walking
Continue down the path |goto 51.62,77.17 < 10 |only if walking
Cross the water |goto 51.11,76.11 < 7 |only if walking
Continue up the path |goto 49.99,74.71 < 7 |only if walking
Continue up the path |goto 49.00,75.19 < 7 |only if walking
Continue following the path |goto 48.19,72.99 < 7 |only if walking
Continue following the path |goto 47.45,72.17 < 7 |only if walking
Jump down here |goto 47.07,72.37 < 7 |only if walking
Follow the path |goto 46.56,72.78 < 7 |only if walking
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
label quest-52986
Follow the path down |goto Stormsong Valley/0 54.61,49.68 < 7 |only if walking
Follow the road |goto 55.61,54.21 < 7 |only if walking
Continue following the road |goto 58.30,53.14 < 7 |only if walking
Continue following the road |goto 59.98,54.49 < 7 |only if walking
Cross the bridge |goto 61.16,53.51 < 7 |only if walking
Follow the road |goto 61.88,54.17 < 7 |only if walking
Continue following the road |goto 63.12,53.45 < 7 |only if walking
Continue following the road |goto 64.01,51.76 < 7 |only if walking
Cross the bridge |goto 64.44,49.71 < 7 |only if walking
Follow the path |goto 64.56,49.47 < 7 |only if walking
Continue up the path |goto 65.91,48.48 < 7 |only if walking
Cross the bridge |goto 66.25,47.14 < 7 |only if walking
accept A Wicked Vessel##52986 |goto Stormsong Valley/0 66.98,45.54
|tip You will accept this quest automatically.
step
Run up the stairs |goto 66.95,44.19 < 5 |only if walking
Cross the bridge |goto 67.34,44.16 < 5 |only if walking
click Tidal Kris##130913
|tip It will appear on your minimap as a yellow dot.
Retrieve the Tidal Kris |q 52986/1 |goto 67.31,43.62
stickystart "Slay_K'thir"
step
use the Tidal Kris##162650
|tip Use it on Fanatical Acolytes around this area.
|tip They look like humans subdued in purple flame around this area.
Disrupt #6# Rituals |q 52986/3 |goto 67.24,43.33
step
label "Slay_K'thir"
Kill enemies around this area
Slay #15# K'thir |q 52986/2 |goto 67.24,43.33
|next "Tortollan_Seekers_WQ"
step
label quest-52394
collect 5 Contract: Champions of Azeroth##153668 |q 52394 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Contract: Champions of Azeroth##52394 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
Follow the path |goto 40.48,36.96 < 7 |only if walking
talk Collector Kojo##135793
turnin Work Order: Contract: Champions of Azeroth##52394 |goto 40.54,36.41
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
label quest-52352
Follow the path |goto Stormsong Valley/0 40.59,38.17 < 7 |only if walking
Continue following the path |goto 40.40,40.78 < 7 |only if walking
Continue following the path |goto 40.65,48.19 < 7 |only if walking
Continue following the path |goto 40.33,50.15 < 10 |only if walking
Continue following the path |goto 39.08,56.25 < 10 |only if walking
Continue up the path |goto 35.86,57.43 < 7 |only if walking
Jump down here |goto 35.88,59.02 < 7 |only if walking
Follow the road |goto 34.63,60.62 < 7 |only if walking
Follow the path |goto 33.56,59.91 < 7 |only if walking
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
condition_suggested=function() return level>=120 and completedq(51916) end,
condition_valid=function() return level>=120 and completedq(51916) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Zandalari Empire\n"..
"Talanji's Expedition\n"..
"Voldunai\n\n"..
"Then turn in the quest \"Uniting Zandalar\""..
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
label quest-51610
accept Adhara White##51610 |goto Tiragarde Sound/0 85.55,43.39
|tip You will accept this quest automatically.
step
kill Adhara White##138279 |q 51610/1 |goto 85.55,43.39
|next "Tortollan_Seekers_WQ"
step
label quest-52057
Follow the path |goto Tiragarde Sound/0 72.00,51.56 < 7 |only if walking
Continue down the path |goto 71.88,49.84 < 7 |only if walking
Jump down here |goto 72.03,49.14 < 7 |only if walking
Follow the path down |goto 72.15,48.56 < 7 |only if walking
Jump down here |goto 72.61,47.59 < 7 |only if walking
Cross the water |goto 72.86,46.09 < 7 |only if walking
accept Against the Storm##52057 |goto Boralus/0 63.57,88.30
|tip You will accept this quest automatically.
step
Follow the path up |goto 63.62,86.05 < 7 |only if walking
Continue following the path |goto 65.40,85.48 < 7 |only if walking
Continue following the path |goto 66.48,83.00 < 7 |only if walking
Kill enemies around this area
clicknpc Drowned Scriptures##139699+
|tip They look like floating books around this area.
Disrupt the Monastic Rituals |q 52057/1 |goto 64.35,79.39
|next "Tortollan_Seekers_WQ"
step
label quest-51586
accept Azerite Empowerment##51586 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
kill Tidesage Bankson##138226 |q 51586/1 |goto 60.57,47.28
|next "Tortollan_Seekers_WQ"
step
label quest-52869
Jump down here |goto Tiragarde Sound/0 39.54,18.30 < 7 |only if walking
Follow the path down |goto 39.35,18.27 < 7 |only if walking
Continue down the path |goto 39.67,19.63 < 7 |only if walking
Jump down here |goto 40.67,21.42 < 7 |only if walking
Jump down here |goto 40.97,21.97 < 7 |only if walking
Follow the road up |goto 41.43,23.63 < 7 |only if walking
Continue following the road |goto 42.36,24.09 < 7 |only if walking
Continue following the road |goto 43.76,23.77 < 7 |only if walking
Continue following the road |goto 44.48,22.91 < 7 |only if walking
Continue following the road |goto 45.93,22.73 < 7 |only if walking
Cross the bridge |goto 46.49,22.11 < 7 |only if walking
Follow the road |goto 46.97,21.83 < 7 |only if walking
Continue following the path |goto 47.45,21.72 < 7 |only if walking
Cross the bridge |goto 47.83,20.98 < 7 |only if walking
Cross the bridge |goto 48.38,20.05 < 7 |only if walking
Follow the path down |goto 49.14,19.69 < 7 |only if walking
Continue down the path |goto 50.60,21.34 < 7 |only if walking
accept Azerite Empowerment##52869 |goto Tiragarde Sound/0 52.53,21.63
|tip You will accept this quest automatically.
step
Enter the cave |goto 52.57,21.65 < 7 |walk
Follow the path down |goto 53.00,20.85 < 5 |walk
kill Alchemist Pitts##141980
|tip Inside the cave.
Slay Alchemist Pitts |q 52869/1 |goto 53.69,20.26
|next "Tortollan_Seekers_WQ"
step
label quest-51584
Follow the path down |goto 71.21,51.42 < 7 |only if walking
Continue down the path |goto 71.13,50.51 < 7 |only if walking
Continue down the path |goto 70.53,48.93 < 7 |only if walking
Continue down the path |goto 69.04,49.59 < 7 |only if walking
Continue down the path |goto 68.59,49.96 < 7 |only if walking
Cross the water |goto 67.92,49.49 < 10 |only if walking
Follow the path |goto 65.66,48.37 < 7 |only if walking
Continue following the path |goto 64.80,47.38 < 7 |only if walking
accept Azerite Madness##51584 |goto Tiragarde Sound/0 60.89,47.75
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51584/1 |goto 60.89,47.75
|next "Tortollan_Seekers_WQ"
step
label quest-51581
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
accept Azerite Empowerment##51583 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
Use the extra action button onscreen
|tip Use it near Azeroth Wounds.
|tip They look like glowing blue areas on the ground around this area.
Heal #5# Azeroth Wounds |q 51583/1 |goto 60.57,47.28
|next "Tortollan_Seekers_WQ"
step
label quest-51638
accept Beachhead##51638 |goto Tiragarde Sound/0 58.06,76.22
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186
kill Armored Claw##138242
|tip Use the "Shoot" ability on your action bar.
|tip Armored Claws are in the water.
Help #15# Juvenile Turtles Reach the Ocean |q 51638/1 |goto 58.06,76.22
|next "Tortollan_Seekers_WQ"
step
label quest-51671
accept Billy Goat Barber##51671 |goto Tiragarde Sound/0 44.15,20.68
|tip You will accept this quest automatically.
step
use the Goat Shears##153596
|tip Use it on Gentle Goats around this area.
|tip Look for Gentle Goats around cliffs and rocks.
collect 6 Goat Fur##155681 |q 51671/1 |goto 44.15,20.68
|next "Tortollan_Seekers_WQ"
step
label quest-51665
accept Broodmother Razora##51665 |goto Tiragarde Sound/0 83.54,44.83
|tip You will accept this quest automatically.
step
kill Broodmother Razora##130508 |q 51665/1 |goto 83.54,44.83
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
label quest-53076
Jump down here |goto Tiragarde Sound/0 72.37,52.15 < 7 |only if walking
Jump down here |goto 72.91,51.44 < 7 |only if walking
Follow the road |goto 73.55,51.07 < 7 |only if walking
Follow the path |goto 74.32,52.65 < 7 |only if walking
Cross the bridge |goto 74.91,52.82 < 7 |only if walking
Follow the road up |goto 75.74,51.68 < 7 |only if walking
Follow the path |goto 76.81,51.65 < 7 |only if walking
accept Foundry Meltdown##53076 |goto Tiragarde Sound/0 77.56,49.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Experimental Azerite Weapons##295817+
|tip They look like a trio of glowing bombs on the ground around this area.
click Unfinished Irontide Cannon##296064+
|tip They look like large cannons on the ground around this area.
Delay the Foundry Production |q 53076/1 |goto 80.17,47.85
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
label quest-51611
Follow the path down |goto Tiragarde Sound/0 71.16,51.35 < 7 |only if walking
Continue down the path |goto 71.19,50.66 < 7 |only if walking
Continue down the path |goto 70.59,49.14 < 7 |only if walking
Jump down here |goto 70.13,47.56 < 7 |only if walking
accept Ghost of the Deep##51611 |goto Tiragarde Sound/0 69.20,47.08
|tip You will accept this quest automatically.
step
Jump down here |goto 70.13,47.56 < 7 |only if walking
kill Ghost of the Deep##138288 |q 51611/1 |goto 69.60,46.73
|next "Tortollan_Seekers_WQ"
step
label quest-52119
Follow the path |goto Tiragarde Sound/0 72.28,52.28 < 7 |only if walking
Follow the road down |goto 71.84,53.86 < 7 |only if walking
Continue following the road |goto 72.53,55.25 < 7 |only if walking
Continue following the road |goto 74.00,56.08 < 7 |only if walking
Jump down here |goto 74.54,55.88 < 7 |only if walking
accept Goblin Azerite Extraction##52119 |goto Tiragarde Sound/0 75.74,55.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Waves of different enemies will spawn.
Protect the Azerite Extractor |q 52119/1 |goto 75.74,55.30
|next "Tortollan_Seekers_WQ"
step
label quest-51844
Follow the path down |goto Tiragarde Sound/0 71.27,51.63 < 7 |only if walking
Continue down the path |goto 70.97,52.72 < 7 |only if walking
Continue down the path |goto 70.43,52.04 < 7 |only if walking
Continue following the path |goto 69.55,52.14 < 7 |only if walking
Cross the water |goto 68.98,54.55 < 7 |only if walking
Follow the path up |goto 68.74,55.21 < 7 |only if walking
Continue following the path |goto 68.85,55.72 < 7 |only if walking
Continue following the path |goto 68.38,57.02 < 7 |only if walking
Continue following the path |goto 68.27,58.11 < 7 |only if walking
Continue following the path |goto 66.82,58.53 < 7 |only if walking
Continue following the path |goto 65.52,58.84 < 7 |only if walking
Continue following the path |goto 64.71,59.17 < 7 |only if walking
Jump down here |goto 62.92,58.92 < 7 |only if walking
Follow the path down |goto 62.42,58.84 < 7 |only if walking
Continue following the path |goto 61.83,57.51 < 7 |only if walking
Cross the water |goto 60.03,57.47 < 10 |only if walking
accept Gulliver##51844 |goto Tiragarde Sound/0 58.48,56.72
|tip You will accept this quest automatically.
step
kill Gulliver##139233 |q 51844/1 |goto 57.84,55.91
|next "Tortollan_Seekers_WQ"
step
label quest-51664
accept Kulett the Ornery##51664 |goto Tiragarde Sound/0 47.81,22.28
|tip You will accept this quest automatically.
step
kill Kulett the Ornery##131520 |q 51664/1 |goto 47.81,22.28
|next "Tortollan_Seekers_WQ"
step
label quest-52805
accept Like Pulling Teeth##52805 |goto Tiragarde Sound/0 41.76,14.74
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Wendigo_Teeth"
step
Follow the path |goto Tiragarde Sound/0 39.65,17.67 < 7 |only if walking
Continue following the path |goto 40.26,16.51 < 7 |only if walking
Continue following the path |goto 40.49,13.85 < 7 |only if walking
Continue following the path |goto 41.13,13.19 < 7 |only if walking
Continue following the path |goto 41.96,13.14 < 7 |only if walking
Enter the cave |goto 43.11,13.42 < 7 |walk
kill Gore Horn##140404 |q 52805/2 |goto 43.62,12.65
step
label "Collect_Intact_Wendigo_Teeth"
Kill Wendigo enemies around this area
collect 25 Intact Wendigo Tooth##161312 |q 52805/1 |goto 41.76,14.74
|next "Tortollan_Seekers_WQ"
step
label quest-51895
accept Maison the Portable##51895 |goto Tiragarde Sound/0 58.16,50.09
|tip You will accept this quest automatically.
step
kill Maison the Portable##139290
Slay Maison the Portable |q 51895/1 |goto 58.16,50.09
|next "Tortollan_Seekers_WQ"
step
label quest-51632
Jump down here |goto Tiragarde Sound/0 39.54,18.34 < 7 |only if walking
Follow the path down |goto 39.33,19.03 < 7 |only if walking
Continue down the path |goto 40.53,21.21 < 7 |only if walking
Continue down the path |goto 41.10,21.80 < 7 |only if walking
Follow the road |goto 41.37,23.58 < 7 |only if walking
Continue following the road |goto 42.24,24.08 < 7 |only if walking
Continue following the road |goto 43.73,24.11 < 7 |only if walking
Continue following the road |goto 44.59,25.60 < 7 |only if walking
Follow the path |goto 45.72,26.19 < 7 |only if walking
Follow the road |goto 47.14,28.89 < 7 |only if walking
Continue following the road |goto 48.91,30.66 < 7 |only if walking
Cross the bridge |goto 50.66,31.81 < 7 |only if walking |c |q 51632 |future
step
Cross the bridge |goto 52.14,32.60 < 7 |only if walking
Follow the road |goto 53.47,32.80 < 7 |only if walking
Jump down here |goto 54.54,32.48 < 7 |only if walking
Jump down here |goto 55.66,33.42 < 7 |only if walking
Follow the path |goto 56.27,33.89 < 7 |only if walking
Continue following the path |goto 58.14,33.04 < 10 |only if walking
Continue following the path |goto 59.77,31.64 < 10 |only if walking
accept Make Loh Go##51632 |goto Tiragarde Sound/0 61.03,31.46
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
label quest-52430
Jump down here |goto Tiragarde Sound/0 87.15,50.31 < 7 |only if walking
Follow the path up |goto 86.51,50.02 < 7 |only if walking
Continue up the path |goto 85.88,49.38 < 7 |only if walking
Jump down here |goto 85.26,48.45 < 7 |only if walking
Follow the path |goto 84.90,47.83 < 7 |only if walking
Cross the water |goto 85.24,46.17 < 7 |only if walking
Follow the path up |goto 85.30,44.78 < 7 |only if walking
Continue following the path |goto 84.93,43.80 < 7 |only if walking
Jump down here |goto 85.02,42.98 < 7 |only if walking
Jump down here |goto 85.20,42.59 < 7 |only if walking
Cross the water |goto 85.45,41.83 < 7 |only if walking
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
accept P4-N73R4##51843 |goto Tiragarde Sound/0 64.77,63.32
|tip You will accept this quest automatically.
step
kill P4-N73R4##139205 |q 51843/1 |goto 38.90,15.30
|next "Tortollan_Seekers_WQ"
step
label quest-51660
Follow the path |goto Tiragarde Sound/0 39.69,17.63 < 7 |only if walking
Continue following the path |goto 40.26,16.64 < 7 |only if walking
Continue following the path |goto 40.22,15.00 < 7 |only if walking
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
label quest-51462
accept Paratroopers##51462 |goto Tiragarde Sound/0 67.09,21.38
|tip You will accept this quest automatically.
step
talk Paratrooper Ort##139434
Receive Orders from Paratrooper Ort |q 51462/1 |goto 67.09,21.38
step
talk Paratrooper Ort##139434
Tell him _"I need to infiltrate the Proudmoore Barracks."_
Mount the Grand Wyvern |invehicle |goto 67.09,21.38
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 38.59,38.55
|tip Use the "Drop Glider" ability on your action bar.
stickystart "Slay_Proudmoore_Barracks_Guards"
step
Enter the building |goto 36.86,37.90 < 5 |walk
kill Drill Sergeant Smithson##137790
|tip Inside the building.
Slay Drill Sergeant Smithson |q 51462/3 |goto 35.71,37.90
step
label "Slay_Proudmoore_Barracks_Guards"
Kill Proudmoore enemies around this area
Slay #10# Proudmoore Barracks Guards |q 51462/2 |goto 38.59,38.55
|next "Tortollan_Seekers_WQ"
step
label quest-51646
accept Polly Want A Cracker?##51646 |goto Tiragarde Sound/0 76.94,83.19
|tip You will accept this quest automatically.
step
clicknpc Runaway Macaw##132339
|tip They look like bright colored birds flying around this area.
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws.
Feed #6# Runaway Macaws |q 51646/1 |goto 76.94,83.19
|next "Tortollan_Seekers_WQ"
step
label quest-51661
Follow the road |goto Tiragarde Sound/0 71.54,51.59 < 7 |only if walking
Continue following the road |goto 71.12,51.98 < 7 |only if walking
Continue following the road |goto 70.95,52.69 < 7 |only if walking
Continue following the road |goto 70.26,51.96 < 7 |only if walking
Follow the path |goto 68.97,52.27 < 7 |only if walking
Cross the water |goto 67.66,53.28 < 10 |only if walking
Follow the path |goto 65.18,51.47 < 10 |only if walking
Jump down here |goto 64.89,50.93 < 7 |only if walking
Jump down here |goto 64.82,50.53 < 7 |only if walking
Follow the path |goto 63.76,49.81 < 7 |only if walking
Continue following the path |goto 62.85,47.56 < 10 |only if walking
accept Raging Swell##51661 |goto Tiragarde Sound/0 64.74,58.66
|tip You will accept this quest automatically.
step
kill Raging Swell##132179 |q 51661/1 |goto 64.74,58.66
|next "Tortollan_Seekers_WQ"
step
label quest-51580
Follow the path |goto Tiragarde Sound/0 71.90,51.27 < 7 |only if walking
Continue following the path |goto 71.86,50.66 < 7 |only if walking
accept Rear Admiral Hainsworth##51580 |goto Tiragarde Sound/0 70.99,49.44
|tip You will accept this quest automatically.
step
talk Paratrooper Jacobs##139776
Receive Orders from Paratrooper Jacobs |q 51580/1 |goto 70.99,49.44
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Mount the Riding Bat |invehicle |goto 70.99,49.44
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 31.44,63.99
|tip Use the "Drop Glider" ability on your action bar.
step
kill Rear Admiral Hainsworth##137983 |q 51580/2 |goto 31.44,63.99
|next "Tortollan_Seekers_WQ"
step
label quest-51578
Follow the path down |goto Tiragarde Sound/0 71.19,51.37 < 7 |only if walking
Continue down the path |goto 71.07,50.49 < 7 |only if walking
accept The Sea Runs Red##51578 |goto Tiragarde Sound/0 70.99,49.44
|tip You will accept this quest automatically.
step
clicknpc Paratrooper Jacobs##139776
Receive Orders from Paratrooper Jacobs |q 51578/1 |goto 70.99,49.44
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Mount the Riding Bat |invehicle |goto 70.99,49.44
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 32.07,67.53
|tip Use the "Drop Glider" ability on your action bar.
step
click Military Documents##290532+
|tip They look like small stacks of papers on tables around this area.
Kill enemies around this area
Siege the Academy and Alliance Forces |q 51578/2 |goto 32.07,67.53
|next "Tortollan_Seekers_WQ"
step
label quest-51626
accept Shell Game##51626 |goto Tiragarde Sound/0 64.92,47.24
|tip You will accept this quest automatically.
step
Follow the path |goto 64.63,47.14 < 5 |only if walking
Continue following the path |goto 63.83,47.32 < 5 |only if walking
Continue following the path |goto 63.82,47.80 < 5 |only if walking
Jump up here |goto 64.10,47.77 < 5 |only if walking
Follow the path up |goto 64.43,47.81 < 5 |only if walking
Continue following the path |goto 64.70,47.98 < 5 |only if walking
Continue up the path |goto 64.96,48.34 < 5 |only if walking
Continue up the path |goto 64.76,49.00 < 7 |only if walking
Reach the Top of the Hill |goto 64.50,48.88 < 7 |c |q 51626 |future
step
Follow the path |goto 64.48,48.51 < 7 |only if walking
Cross the Stone Bridge |goto 64.12,46.57 < 30 |c |q 51626 |future
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51626/1 |goto 64.12,46.57
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51626/2 |goto 64.12,46.57
|next "Tortollan_Seekers_WQ"
step
label quest-51892
Jump down here |goto Tiragarde Sound/0 39.54,18.34 < 7 |only if walking
Follow the path down |goto 39.33,19.03 < 7 |only if walking
Continue down the path |goto 40.53,21.21 < 7 |only if walking
Continue down the path |goto 41.10,21.80 < 7 |only if walking
Follow the road |goto 41.37,23.58 < 7 |only if walking
Continue following the road |goto 42.24,24.08 < 7 |only if walking
Continue following the road |goto 43.73,24.11 < 7 |only if walking
Continue following the road |goto 44.59,25.60 < 7 |only if walking
Follow the path |goto 45.72,26.19 < 7 |only if walking
Follow the road |goto 47.14,28.89 < 7 |only if walking
Continue following the road |goto 48.91,30.66 < 7 |only if walking
Cross the bridge |goto 50.66,31.81 < 7 |only if walking |c |q 51892 |future
step
Cross the bridge |goto 52.14,32.60 < 7 |only if walking
Follow the road |goto 53.47,32.80 < 7 |only if walking
accept Shiverscale the Toxic##51892 |goto Tiragarde Sound/0 54.19,32.57
|tip You will accept this quest automatically.
step
Jump down here |goto 54.54,32.48 < 7 |only if walking
kill Shiverscale the Toxic##139285 |q 51892/1 |goto 55.11,32.40
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
label quest-51839
accept Squirgle of the Depths##51839 |goto Tiragarde Sound/0 48.90,37.02
|tip You will accept this quest automatically.
step
kill Squirgle of the Depths##139135 |q 51839/1 |goto 48.90,37.02
|next "Tortollan_Seekers_WQ"
step
label quest-52751
Follow the path |goto Tiragarde Sound/0 39.65,17.61 < 7 |only if walking
Continue following the path |goto 40.16,16.87 < 7 |only if walking
Continue following the path |goto 40.44,15.60 < 7 |only if walking
Continue following the path |goto 41.22,14.77 < 7 |only if walking
Continue up the path |goto 43.00,15.09 < 7 |only if walking
Continue up the path |goto 43.28,14.70 < 7 |only if walking
Continue up the path |goto 43.96,14.75 < 7 |only if walking
Continue following the path |goto 45.24,15.02 < 7 |only if walking
Continue following the path |goto 47.35,14.12 < 10 |only if walking
Continue following the path |goto 48.21,13.26 < 10 |only if walking |c |q 52751 |future
step
Follow the path down |goto 49.07,13.45 < 10 |only if walking
Continue down the path |goto 49.62,14.38 < 10 |only if walking
Continue down the path |goto 50.28,15.73 < 10 |only if walking
Continue down the path |goto 51.53,17.03 < 10 |only if walking
Jump down here |goto 53.28,17.93 < 7 |only if walking
Follow the path down |goto 53.68,18.11 < 7 |only if walking
Continue following the path |goto 54.21,17.40 < 10 |only if walking
Jump down here |goto 55.36,16.85 < 10 |only if walking
Follow the path up |goto 55.80,16.93 < 7 |only if walking
Continue following the path |goto 56.80,16.32 < 7 |only if walking
Continue down the path |goto 57.62,15.20 < 10 |only if walking
Continue down the path |goto 58.34,16.11 < 10 |only if walking
Follow the road |goto 59.35,16.24 < 10 |only if walking |c |q 52751 |future
step
Follow the road |goto 60.87,15.23 < 10 |only if walking
Continue following the road |goto 62.15,15.21 < 10 |only if walking
Continue following the road |goto 64.17,15.61 < 10 |only if walking
Follow the path |goto 64.89,13.69 < 7 |only if walking
Jump down here |goto 65.24,13.78 < 7 |only if walking
Follow the path |goto 66.02,13.95 < 7 |only if walking
accept Strange Looking Dogs##52751 |goto Tiragarde Sound/0 67.25,12.91
|tip You will accept this quest automatically.
step
talk Burly##141479
Tell him _"Begin pet battle."_
Defeat Burly |q 52751/1 |goto 67.72,12.85
|next "Tortollan_Seekers_WQ"
step
label quest-53196
accept Swab This!##53196 |goto Tiragarde Sound/0 77.06,82.91
|tip You will accept this quest automatically.
step
clicknpc Riding Macaw##143068
Mount the Riding Macaw |invehicle |goto 77.06,82.62 |q 53196
step
Kill enemies around this area
|tip Use the "Vile Bombardment" ability on your action bar to accomplish this.
Bomb #100# Pirates |q 53196/1 |goto 76.41,83.52
|next "Tortollan_Seekers_WQ"
step
label quest-51891
Follow the path |goto Tiragarde Sound/0 39.65,17.61 < 7 |only if walking
Continue following the path |goto 40.16,16.87 < 7 |only if walking
Continue following the path |goto 40.44,15.60 < 7 |only if walking
Continue following the path |goto 41.22,14.77 < 7 |only if walking
Continue up the path |goto 43.00,15.09 < 7 |only if walking
Continue up the path |goto 43.28,14.70 < 7 |only if walking
Continue up the path |goto 43.96,14.75 < 7 |only if walking
Continue following the path |goto 45.24,15.02 < 7 |only if walking
Continue following the path |goto 47.35,14.12 < 10 |only if walking
Continue following the path |goto 48.21,13.26 < 10 |only if walking |c |q 51891 |future
step
Follow the path down |goto 49.07,13.45 < 10 |only if walking
Continue down the path |goto 49.62,14.38 < 10 |only if walking
Continue down the path |goto 50.28,15.73 < 10 |only if walking
Continue down the path |goto 51.53,17.03 < 10 |only if walking
Jump down here |goto 53.28,17.93 < 7 |only if walking
Follow the path down |goto 53.68,18.11 < 7 |only if walking
Continue following the path |goto 54.21,17.40 < 10 |only if walking
Jump down here |goto 55.36,16.85 < 10 |only if walking
Follow the path up |goto 55.80,16.93 < 7 |only if walking
Continue following the path |goto 56.80,16.32 < 7 |only if walking
Continue down the path |goto 57.62,15.20 < 10 |only if walking
Continue down the path |goto 58.34,16.11 < 10 |only if walking
Follow the road |goto 59.35,16.24 < 10 |only if walking |c |q 51891 |future
step
Follow the road |goto 60.87,15.23 < 10 |only if walking
Continue following the road |goto 62.15,15.21 < 10 |only if walking
Continue following the road |goto 64.17,15.61 < 10 |only if walking
Follow the path |goto 64.89,13.69 < 7 |only if walking
Jump down here |goto 65.24,13.78 < 7 |only if walking
accept Sythian the Swift##51891 |goto Tiragarde Sound/0 66.85,13.89
|tip You will accept this quest automatically.
step
kill Sythian the Swift##139280
|tip He runs a small path around this area.
Slay Sythian the Swift |q 51891/1 |goto 66.85,13.89
|next "Tortollan_Seekers_WQ"
step
label quest-51849
accept Tempestria##51849 |goto Tiragarde Sound/0 60.81,17.31
|tip You will accept this quest automatically.
step
click Suspicious Pile of Meat##281172
|tip Kill the wave of enemies that spawns.
kill Tempestria##133356 |q 51849/1 |goto 60.81,17.31
|next "Tortollan_Seekers_WQ"
step
label quest-52056
accept The Tendrils of Fate##52056 |goto Boralus/0 70.43,76.93
|tip You will accept this quest automatically.
stickystart "Kill_Tidesage_Archivist"
step
kill Sister Adrianna##136174 |q 52056/3 |goto 68.13,74.68
step
kill Brother Matthew##136166
|tip He walks up and down the path around this area.
Slay Brother Matthew |q 52056/2 |goto 68.18,80.80
step
kill Sister Celicia##136177 |q 52056/1 |goto 63.67,87.80
step
label "Kill_Tidesage_Archivist"
kill 6 Tidesage Archivist##136158 |q 52056/4 |goto 74.69,76.24
|next "Tortollan_Seekers_WQ"
step
label quest-51655
accept Teres##51655 |goto Tiragarde Sound/0 63.67,50.34
|tip You will accept this quest automatically.
step
kill Teres##131389 |q 51655/1 |goto 63.67,50.34
|next "Tortollan_Seekers_WQ"
step
label quest-52471
accept That's a Big Carcass##52471 |goto Tiragarde Sound/0 59.58,33.31
|tip You will accept this quest automatically.
step
talk Delia Hanako##141292
Tell her _"Begin pet battle."_
Defeat Delia Hanako |q 52471/1 |goto 59.58,33.31
|next "Tortollan_Seekers_WQ"
step
label quest-51847
Jump down here |goto Tiragarde Sound/0 71.42,52.65 < 7 |only if walking
Jump down here |goto 71.26,53.18 < 7 |only if walking
Jump down here |goto 71.11,53.76 < 7 |only if walking
accept Tort Jaw##51847 |goto Tiragarde Sound/0 70.40,55.72
|tip You will accept this quest automatically.
step
Jump down here |goto 70.82,54.39 < 7 |only if walking
kill Tort Jaw##139235 |q 51847/1 |goto 70.40,55.72
|next "Tortollan_Seekers_WQ"
step
label quest-53078
Jump down here |goto Tiragarde Sound/0 86.79,80.39 < 7 |only if walking
accept Treasure in the Tides##53078 |goto Tiragarde Sound/0 88.54,79.05
|tip You will accept this quest automatically.
stickystart "Kill_Wailing_Sirens"
step
click Washed Up Cargo##296159+
|tip They look like brown crates on the ground around this area.
collect 8 Proudmoore Supply Crate##163099 |q 53078/1 |goto 88.54,79.05
step
label "Kill_Wailing_Sirens"
kill 6 Wailing Siren##126440 |q 53078/2 |goto 88.54,79.05
|next "Tortollan_Seekers_WQ"
step
label quest-51657
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
label quest-52752
accept Vigilant Lookouts##52752 |goto Tiragarde Sound/0 54.15,58.07
|tip You will accept this quest automatically.
step
click Vigil Hill Documents##293688
|tip Inside the tent.
collect Vigil Hill Documents##162449 |q 52752/2 |goto 53.51,57.17
step
Follow the path up |goto 53.59,57.91 < 7 |only if walking
Continue up the path |goto 54.00,58.03 < 7 |only if walking
Run up the stairs |goto 54.14,57.36 < 7 |only if walking
Enter the building |goto 54.07,56.91 < 5 |walk
kill Commander Hallewell##141510
|tip Inside the building.
collect Daelin's Gate Dossier##162448 |q 52752/1 |goto 54.04,56.52
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Vol'Dun World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Vol'Dun, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51916) end,
condition_valid=function() return level>=120 and completedq(51916) end,
condition_valid_msg="You have not unlocked world quests!\n",
"Reach friendly reputation with the following factions:\n\n"..
"Zandalari Empire\n"..
"Talanji's Expedition\n"..
"Voldunai\n\n"..
"Then turn in the quest \"Uniting Zandalar\""..
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
label quest-51238
Cross the bridge |goto Vol'dun/0 61.72,22.64 < 7 |only if walking
Follow the path |goto 61.49,24.60 < 7 |only if walking
Continue following the path |goto 61.99,27.59 < 10 |only if walking
accept Abandoned in the Burrows##51238 |goto Vol'dun/0 63.47,30.08
|tip You will accept this quest automatically.
stickystart "Slay_Sethrak"
step
click Sethrak Cage##277876+
|tip They look like large round cages on the ground around this area.
Rescue #6# Vulpera Captives |q 51238/1 |goto 63.60,33.03
step
label "Slay_Sethrak"
Kill Sethrak enemies around this area
Slay #12# Sethrak |q 51238/2 |goto 63.60,33.03
|next "Tortollan_Seekers_WQ"
step
label quest-51105
Cross the bridge |goto Vol'dun/0 45.51,77.36 < 7 |only if walking
Run up the stairs |goto 46.86,77.30 < 7 |only if walking
Follow the path down |goto 46.86,77.55 < 7 |only if walking
Continue up the path |goto 47.12,80.66 < 10 |only if walking
Continue up the path |goto 48.02,82.48 < 7 |only if walking
Continue up the path |goto 49.10,83.72 < 10 |only if walking
Continue up the path |goto 50.48,83.73 < 7 |only if walking
Continue up the path |goto 51.82,82.98 < 7 |only if walking
Continue up the path |goto 52.45,82.28 < 10 |only if walking
Continue following the path |goto 51.87,80.91 < 7 |only if walking
accept Ak'tar##51105 |goto Vol'dun/0 50.71,80.90
|tip You will accept this quest automatically.
step
kill Ak'tar##135852 |q 51105/1 |goto 50.33,81.64
|next "Tortollan_Seekers_WQ"
step
label quest-51096
Follow the path |goto Vol'dun/0 52.78,89.52 < 7 |only if walking
Continue down the path |goto 52.09,90.41 < 7 |only if walking
Continue down the path |goto 51.63,90.25 < 7 |only if walking
Continue down the path |goto 50.67,88.41 < 7 |only if walking
accept Azer'tor##51096 |goto Vol'dun/0 48.87,87.52
|tip You will accept this quest automatically.
step
Follow the path |goto 48.87,87.52 < 7 |only if walking
Continue following the path |goto 47.95,87.49 < 10 |only if walking
Enter the cave |goto 47.87,88.11 < 7 |walk
Follow the path |goto 48.45,89.35 < 10 |walk
kill Azer'tor##128553 |q 51096/1 |goto 49.02,89.05
|next "Tortollan_Seekers_WQ"
step
label quest-51185
Follow the path |goto Vol'dun/0 56.60,49.78 < 7 |only if walking
Follow the path up |goto 55.35,50.84 < 10 |only if walking
Continue up the path |goto 54.67,52.33 < 10 |only if walking
Continue up the path |goto 54.42,54.12 < 7 |only if walking
Follow the path down |goto 54.53,54.88 < 7 |only if walking
Continue down the path |goto 55.67,57.65 < 10 |only if walking
Follow the path |goto 57.14,59.79 < 10 |only if walking
Continue following the path |goto 58.97,60.98 < 10 |only if walking
accept Azerite Empowerment##51185 |goto Vol'dun/0 60.67,62.51
|tip You will accept this quest automatically.
step
kill Skithis the Infused##136732 |q 51185/1 |goto 60.67,62.51
|next "Tortollan_Seekers_WQ"
step
label quest-51422
Follow the path up |goto Vol'dun/0 55.40,50.87 < 7 |only if walking
Continue up the path |goto 54.68,52.32 < 7 |only if walking
Continue up the path |goto 54.39,54.48 < 7 |only if walking
Continue down the path |goto 54.96,56.18 < 10 |only if walking
Continue following the path |goto 56.69,59.53 < 10 |only if walking
accept Azerite Madness##51422 |goto Vol'dun/0 59.34,61.24
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51422/1 |goto 59.34,61.24
|next "Tortollan_Seekers_WQ"
step
label quest-52875
Follow the path |goto Vol'dun/0 41.23,62.06 < 10 |only if walking
Continue following the path |goto 40.26,62.17 < 10 |only if walking
Follow the path up |goto 39.23,61.04 < 10 |only if walking
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
label quest-50975
Follow the path up |goto Vol'dun/0 56.35,50.14 < 7 |only if walking
Continue up the path |goto 55.34,50.99 < 7 |only if walking
Continue up the path |goto 54.70,52.31 < 7 |only if walking
Continue down the path |goto 54.43,54.22 < 7 |only if walking
Continue down the path |goto 54.48,54.81 < 7 |only if walking
Continue following the path |goto 55.69,57.54 < 7 |only if walking
Continue following the path |goto 57.06,57.97 < 7 |only if walking
accept Azerite Mining##50975 |goto Vol'dun/0 58.62,60.94
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 50975/1 |goto 60.02,61.34
|next "Tortollan_Seekers_WQ"
step
label quest-51428
Follow the path |goto Vol'dun/0 56.60,49.78 < 7 |only if walking
Follow the path up |goto 55.35,50.84 < 10 |only if walking
Continue up the path |goto 54.67,52.33 < 10 |only if walking
Continue up the path |goto 54.42,54.12 < 7 |only if walking
Follow the path down |goto 54.53,54.88 < 7 |only if walking
Continue down the path |goto 55.67,57.65 < 10 |only if walking
Follow the path |goto 57.14,59.79 < 10 |only if walking
accept Azerite Wounds##51428 |goto Vol'dun/0 59.88,60.97
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Clear the enemies from glowing blue Azerite Wounds around this area.
|tip While standing on one, use the "Heart of Azeroth" ability that appears onscreen.
Heal #8# Azerite Wounds |q 51428/1 |goto 59.88,60.97
|next "Tortollan_Seekers_WQ"
step
label quest-51117
Follow the path |goto Vol'dun/0 43.22,77.22 < 7 |only if walking
Run down the stairs |goto 40.20,77.30 < 7 |only if walking
Run down the stairs |goto 39.57,77.35 < 7 |only if walking
Follow the path |goto 38.72,78.63 < 10 |only if walking
Continue following the path |goto 36.80,79.34 < 10 |only if walking
Run down the stairs |goto 34.98,78.67 < 7 |only if walking
Follow the path |goto 34.62,78.71 < 7 |only if walking
Run up the stairs |goto 33.66,77.15 < 7 |only if walking
Run down the stairs |goto 32.32,79.20 < 7 |only if walking
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
label quest-51210
accept Blast Back the Siege##51210 |goto Vol'dun/0 27.82,50.55
|tip You will accept this quest automatically.
step
clicknpc Sethrak Cannon##143720
Control the Cannon |q 51210/1 |goto 28.07,50.58
step
Kill Faithless enemies around this area
|tip Use the "Ball Lightning" ability on your action bar.
Slay #30# Faithless Attackers |q 51210/2 |goto 28.07,50.58
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
label quest-51118
Follow the path up |goto Vol'dun/0 56.29,50.17 < 7 |only if walking
Continue up the path |goto 55.41,50.84 < 7 |only if walking
Continue up the path |goto 54.69,52.32 < 7 |only if walking
Continue down the path |goto 54.39,54.56 < 7 |only if walking
Continue following the path |goto 55.58,57.46 < 7 |only if walking
Continue up the path |goto 56.10,57.46 < 7 |only if walking
Follow the path up |goto 56.01,55.83 < 7 |only if walking
Continue up the path |goto 56.11,55.27 < 7 |only if walking
Continue up the path |goto 56.78,54.98 < 7 |only if walking
Continue up the path |goto 57.55,55.45 < 7 |only if walking
Continue following the path |goto 58.00,54.66 < 7 |only if walking
Cross the bridge |goto 57.24,54.34 < 7 |only if walking
Follow the path up |goto 56.47,52.63 < 10 |only if walking
Continue up the path |goto 55.75,52.89 < 7 |only if walking
accept Bloodwing Bonepicker##51118 |goto Vol'dun/0 56.07,53.57
|tip You will accept this quest automatically.
step
clicknpc Enormous Egg##136390
kill Bloodwing Bonepicker##136393 |q 51118/1 |goto 56.07,53.57
|next "Tortollan_Seekers_WQ"
step
label quest-49345
Follow the path up |goto Vol'dun/0 43.07,61.31 < 7 |only if walking
Continue up the path |goto 43.80,62.01 < 10 |only if walking
Continue up the path |goto 44.33,61.58 < 10 |only if walking
accept Buried Treasure##49345 |goto Vol'dun/0 45.44,53.73
|tip You will accept this quest automatically.
step
kill Ancient Exile##136997+
|tip Use the "Soulreaping Totem" ability that appears onscreen.
|tip Stand near the totem and kill the enemies that spawn.
collect 10 Ancient Coin##159828 |q 49345/1 |goto 45.72,50.70
|next "Tortollan_Seekers_WQ"
step
label quest-51791
Jump down here |goto Vol'dun/0 56.86,48.02 < 7 |only if walking
Follow the path up |goto 56.34,47.13 < 7 |only if walking
Continue following the path |goto 50.37,43.53 < 7 |only if walking
accept Bubbling Totem Testing##51791 |goto Vol'dun/0 48.60,43.64
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51791/1 |goto 47.49,44.61
|next "Tortollan_Seekers_WQ"
step
label quest-51559
Follow the path |goto Vol'dun/0 52.68,89.55 < 7 |only if walking
Continue following the path |goto 52.03,90.47 < 7 |only if walking
Continue down the path |goto 51.57,90.08 < 7 |only if walking
Continue down the path |goto 50.60,88.35 < 10 |only if walking
Continue down the path |goto 48.83,87.53 < 7 |only if walking
Continue following the path |goto 47.97,87.36 < 10 |only if walking
Continue down the path |goto 46.23,85.60 < 10 |only if walking
Continue down the path |goto 44.77,86.68 < 10 |only if walking
accept Damaged Goods##51559 |goto Vol'dun/0 44.31,88.97
|tip You will accept this quest automatically.
stickystart "Slay_Ashvane_Pirates"
step
use the Torch##160923
|tip Use it on Ashvane Cargo around this area.
|tip They look like stacks of crates and barrels on the ground around this area.
Destroy #10# Ashvane Cargo |q 51559/1 |goto 44.31,88.97
step
label "Slay_Ashvane_Pirates"
Kill Ashvane enemies around this area
Slay #8# Ashvane Pirates |q 51559/2 |goto 44.31,88.97
|next "Tortollan_Seekers_WQ"
step
label quest-52878
Follow the path |goto Vol'dun/0 46.90,34.76 < 7 |only if walking
Continue following the path |goto 45.53,34.65 < 10 |only if walking
Jump down here |goto 44.78,34.82 < 7 |only if walking
Follow the path |goto 43.48,37.23 < 10 |only if walking
Continue following the path |goto 43.28,39.90 < 7 |only if walking
Continue following the path |goto 43.76,42.44 < 10 |only if walking
accept Desert Survivors##52878 |goto Vol'dun/0 45.13,46.43
|tip You will accept this quest automatically.
step
talk Kusa##142054
Tell her _"Begin pet battle."_
Defeat Kusa |q 52878/1 |goto 45.13,46.43
|next "Tortollan_Seekers_WQ"
step
label quest-51792
Jump down here |goto Vol'dun/0 56.69,48.29 < 7 |only if walking
Follow the path up |goto 56.30,46.76 < 10 |only if walking
Continue up the path |goto 50.99,45.16 < 10 |only if walking
Continue up the path |goto 49.84,43.64 < 7 |only if walking
accept Erupting Totem Testing##51792 |goto Vol'dun/0 48.81,43.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51792/1 |goto 47.48,44.17
|next "Tortollan_Seekers_WQ"
step
label quest-51900
Follow the path |goto Vol'dun/0 47.65,34.50 < 7 |only if walking
Continue following the path |goto 48.97,34.46 < 10 |only if walking
Follow the path down |goto 49.77,34.61 < 7 |only if walking
Follow the path up |goto 50.82,34.79 < 7 |only if walking
accept Faithless Follow-Through##51900 |goto Vol'dun/0 53.94,34.95
|tip You will accept this quest automatically.
step
click Faithless War Banner##281656+
|tip They look like banners attached to poles around this area.
click Faithless Cannon##281643+
|tip They look like large yellow cannons on the cliffs around this area.
Kill Faithless enemies around this area
Disrupt the Faithless Army |q 51900/1 |goto 53.94,34.95
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
label quest-51198
Cross the bridge |goto Vol'dun/0 59.75,20.05 < 10 |only if walking
Follow the path |goto 59.26,19.60 < 7 |only if walking
Follow the path up |goto 58.13,16.70 < 10 |only if walking
accept Fertilizer Duty##51198 |goto Vol'dun/0 53.22,15.75
|tip You will accept this quest automatically.
step
clicknpc Fertilizer##136770+
|tip Use the extra action button onscreen to feed meat to Dustmane hyenas.
|tip After a short pause, they will leave "fertilizer."
|tip They look like small brown mounds on the ground around this area.
Collect #10# Fertilizer |q 51198/1 |goto 53.22,15.75
|next "Tortollan_Seekers_WQ"
step
label quest-52798
Follow the path up |goto Vol'dun/0 41.29,62.02 < 7 |only if walking
Continue up the path |goto 40.19,62.14 < 10 |only if walking
Continue up the path |goto 39.30,61.17 < 10 |only if walking
Continue up the path |goto 34.81,70.27 < 10 |only if walking
Continue following the path |goto 34.26,73.02 < 10 |only if walking
Continue following the path |goto 33.69,73.59 < 10 |only if walking
Continue following the path |goto 32.27,73.38 < 10 |only if walking
Continue up the path |goto 31.68,72.74 < 7 |only if walking
Continue up the path |goto 31.73,72.08 < 7 |only if walking
accept A Few More Charges##52798 |goto Vol'dun/0 30.23,69.41
|tip You will accept this quest automatically.
step
Follow the path |goto 30.06,69.07 < 7 |only if walking
Continue down the path |goto 29.17,67.94 < 7 |only if walking
Continue up the path |goto 28.64,68.46 < 5 |only if walking
click Lectric Frequency Modulator##292647
Use the Lectric Frequency Modulator |q 52798/1 |goto 28.66,68.71
step
Roll over Lashers
|tip Avoid the cacti, whirlwinds, and Big Mama.
|tip Big Mama is the giant lasher half-buried in the ground around this area.
Feed Lashers to the Ranishu |q 52798/2 |goto 31.00,81.09
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
Jump down here |goto Vol'dun/0 57.46,49.64 < 7 |only if walking
Follow the path up |goto 61.83,47.74 < 7 |only if walking
Continue up the path |goto 62.39,48.19 < 7 |only if walking
Continue down the path |goto 62.64,47.69 < 5 |only if walking
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
Follow the path |goto Vol'dun/0 56.60,49.78 < 7 |only if walking
Follow the path up |goto 55.35,50.84 < 10 |only if walking
Follow the path down |goto 54.30,50.93 < 10 |only if walking
Enter the cave |goto 53.85,51.51 < 7 |walk
accept Hivemother Kraxi##51108 |goto Vol'dun/0 54.01,52.02
|tip You will accept this quest automatically.
step
Follow the path |goto 54.07,52.33 < 7 |only if walking
kill Hivemother Kraxi##130443
|tip Inside the cave.
Slay Hivemother Kraxi |q 51108/1 |goto 53.72,53.37
|next "Tortollan_Seekers_WQ"
step
label quest-51228
Follow the path |goto Vol'dun/0 46.66,34.30 < 7 |only if walking
Jump down carefully here |goto 45.69,32.87 < 10 |only if walking
Follow the path |goto 45.09,28.31 < 10 |only if walking
Continue following the path |goto 44.88,25.95 < 7 |only if walking
accept Instant Meat, Ready to Eat##51228 |goto Vol'dun/0 44.74,23.91
|tip You will accept this quest automatically.
stickystart "Collect_Steaming_Crab_Meat"
step
use the Meatification Potion##159796
|tip Use it on buzzards around this area.
click Bonebeak Scavenger Meat##288190+
|tip They look like little pieces of bird meat on the ground around this area.
collect 15 Broiled Buzzard Meat##159794 |q 51228/1 |goto 43.40,23.35
step
label "Collect_Steaming_Crab_Meat"
use the Meatification Potion##159796
|tip Use it on crabs around this area.
Kill Brineclaw enemies around this area
click Brineclaw Meat##288190+
|tip They look like little pieces of purple meat on the ground around this area.
collect 15 Steaming Crab Meat##159795 |q 51228/2 |goto 43.40,23.35
|next "Tortollan_Seekers_WQ"
step
label quest-51180
Jump down here |goto Vol'dun/0 57.42,47.86 < 10 |only if walking
accept Instructions Not Included##51180 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51180/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51239
Jump down here |goto Vol'dun/0 57.42,47.86 < 10 |only if walking
accept Instructions Not Included##51239 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51239/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51933
Jump down here |goto Vol'dun/0 57.42,47.86 < 10 |only if walking
accept Instructions Not Included##51933 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51933/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51181
Jump down here |goto Vol'dun/0 57.42,47.86 < 10 |only if walking
accept Instructions Not Included##51181 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51181/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51174
Jump down here |goto Vol'dun/0 57.42,47.86 < 10 |only if walking
accept Instructions Not Included##51174 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51174/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-49013
accept A Jolt of Power##49013 |goto Vol'dun/0 53.87,88.76
|tip You will accept this quest automatically.
stickystart "Kill_Ranishu_Gorger"
step
clicknpc Stormhide Calf##134743
|tip They look like injured Stormhides on the ground around this area.
|tip Use the "Blessing of Akunda" ability onscreen to revive them.
Revive #6# Stormhide Lizards |q 49013/1 |goto 54.60,88.20
step
label "Kill_Ranishu_Gorger"
kill 8 Ranishu Gorger##133565 |q 49013/2 |goto 54.60,88.20
|next "Tortollan_Seekers_WQ"
step
label quest-51100
Follow the path |goto Vol'dun/0 43.24,77.10 < 7 |only if walking
Continue following the path |goto 42.66,77.66 < 7 |only if walking
Run down the stairs |goto 42.62,78.20 < 7 |only if walking
Jump down here |goto 42.23,78.26 < 7 |only if walking
Follow the path |goto 41.02,79.03 < 10 |only if walking
accept Jumbo Sandsnapper##51100 |goto Vol'dun/0 37.47,84.79
|tip You will accept this quest automatically.
step
kill Jumbo Sandsnapper##129283
|tip Underwater.
Slay the Jumbo Sandsnapper |q 51100/1 |goto 37.47,84.79
|next "Tortollan_Seekers_WQ"
step
label quest-51125
Follow the path |goto Vol'dun/0 61.05,21.00 < 7 |only if walking
Cross the bridge |goto 59.81,20.13 < 10 |only if walking
accept Jungleweb Hunter##51125 |goto Vol'dun/0 59.65,17.12
|tip You will accept this quest automatically.
step
Run down the stairs |goto 60.40,17.11 < 7 |only if walking
kill Jungleweb Hunter##136341 |q 51125/1 |goto 60.37,18.08
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
label quest-51252
Follow the path |goto Vol'dun/0 56.60,49.78 < 7 |only if walking
Follow the path up |goto 55.35,50.84 < 10 |only if walking
Continue up the path |goto 54.67,52.33 < 10 |only if walking
Continue up the path |goto 54.42,54.12 < 7 |only if walking
Follow the path down |goto 54.53,54.88 < 7 |only if walking
Continue down the path |goto 55.67,57.65 < 10 |only if walking
Follow the path |goto 55.54,65.01 < 10 |only if walking
Follow the path up |goto 56.21,65.45 < 5 |only if walking
Continue up the path |goto 56.10,66.62 < 5 |only if walking
Continue up the path |goto 56.42,67.21 < 5 |only if walking
accept Kiro's Desert Flower##51252 |goto Vol'dun/0 55.45,67.75
|tip You will accept this quest automatically.
step
Follow the path |goto 56.25,67.78 < 5 |only if walking
talk Kiro##137027
Tell him _"I am ready."_
Kill Sandstinger enemies around this area
|tip Several waves of enemies will attack.
Assist Kiro |q 51252/1 |goto 55.45,67.75
step
kill Crimson Gnarlvine##137046 |q 51252/2 |goto 55.43,67.42
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
Follow the path |goto Vol'dun/0 43.24,77.10 < 7 |only if walking
Continue following the path |goto 42.66,77.66 < 7 |only if walking
Run down the stairs |goto 42.62,78.20 < 7 |only if walking
Jump down here |goto 42.23,78.26 < 7 |only if walking
Follow the path |goto 41.02,79.03 < 10 |only if walking
Continue following the path |goto 37.90,83.79 < 10 |only if walking
Cross the water |goto 36.56,88.50 < 10 |only if walking
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
label quest-51103
Follow the path |goto Vol'dun/0 52.68,89.55 < 7 |only if walking
Continue following the path |goto 52.03,90.47 < 7 |only if walking
Continue down the path |goto 51.57,90.08 < 7 |only if walking
Continue down the path |goto 50.60,88.35 < 10 |only if walking
Continue down the path |goto 48.83,87.53 < 7 |only if walking
Continue following the path |goto 47.97,87.36 < 10 |only if walking
Continue down the path |goto 46.23,85.60 < 10 |only if walking
Continue down the path |goto 44.77,86.68 < 10 |only if walking
accept Nez'ara##51103 |goto Vol'dun/0 44.67,86.70
|tip You will accept this quest automatically.
step
Jump down carefully here |goto 44.77,87.10 < 7 |only if walking
Jump down here |goto 44.42,87.47 < 7 |only if walking
Enter the cave |goto 43.99,87.20 < 7 |walk
click Stake##58701+
|tip They look like wooden stakes stuck in the ground around this area.
kill Nez'ara##128951
|tip Inside the cave.
Slay Nez'ara |q 51103/1 |goto 43.76,86.24
|next "Tortollan_Seekers_WQ"
step
label quest-51850
accept Preserve the Oasis##51850 |goto Vol'dun/0 41.46,62.07
|tip You will accept this quest automatically.
stickystart "Slay_Whistlebloom_Predators"
step
click Fertile Soil##291206+
|tip They look like mounds of fresh dirt on the ground around this area.
Water #6# Fertile Soil |q 51850/2 |goto 41.46,62.07
step
label "Slay_Whistlebloom_Predators"
Kill Whistlebloom enemies around this area
Kill #6# Whistlebloom Predators |q 51850/1 |goto 41.46,62.07
|next "Tortollan_Seekers_WQ"
step
label quest-47704
Follow the path up |goto Vol'dun/0 55.40,50.87 < 7 |only if walking
Continue up the path |goto 54.68,52.32 < 7 |only if walking
Continue up the path |goto 54.39,54.48 < 7 |only if walking
Continue down the path |goto 54.96,56.18 < 10 |only if walking
accept Ranishu Feeding Frenzy##47704 |goto Vol'dun/0 54.25,60.21
|tip You will accept this quest automatically.
stickystart "Stomp_Ranishu_Grubs"
step
kill 8 Frenzied Ranishu##137208 |q 47704/1 |goto 54.25,60.21
step
label "Stomp_Ranishu_Grubs"
clicknpc Ranishu Grub##137194+
|tip They look like small worms on the ground around this area.
Stomp #40# Ranishu Grubs |q 47704/2 |goto 54.25,60.21
|next "Tortollan_Seekers_WQ"
step
label quest-51124
Cross the bridge |goto Vol'dun/0 45.53,77.24 < 10 |only if walking
Run up the stairs |goto 46.85,77.28 < 7 |only if walking
Follow the path |goto 46.88,76.26 < 7 |only if walking
Continue following the path |goto 47.23,74.09 < 7 |only if walking
Run down the stairs |goto 47.79,72.74 < 7 |only if walking
Run up the stairs |goto 47.86,71.75 < 7 |only if walking
accept Relic Hunter Hazaak##51124 |goto Vol'dun/0 48.87,71.77
|tip You will accept this quest automatically.
step
kill Relic Hunter Hazaak##136340
|tip Inside the building.
Slay Sethrak Relic Hunter |q 51124/1 |goto 48.88,72.11
|next "Tortollan_Seekers_WQ"
step
label quest-51330
Run down the stairs |goto Vol'dun/0 43.39,77.67 < 7 |only if walking
accept Resilient Seeds##51330 |goto Vol'dun/0 43.40,78.82
|tip You will accept this quest automatically.
step
Run down the stairs |goto 42.93,78.79 < 5 |only if walking
Follow the path |goto 42.30,78.81 < 7 |only if walking
Run down the stairs |goto 42.40,79.31 < 5 |only if walking
Follow the path |goto 43.03,79.33 < 7 |only if walking
Kill Withered enemies around this area
collect 12 Resilient Seed##159909 |q 51330/1 |goto 43.46,80.61
|next "Tortollan_Seekers_WQ"
step
label quest-51173
Follow the path up |goto Vol'dun/0 56.37,50.11 < 7 |only if walking
Continue up the path |goto 55.37,50.95 < 7 |only if walking
Continue up the path |goto 54.68,52.38 < 7 |only if walking
Continue down the path |goto 54.43,54.20 < 7 |only if walking
Continue following the path |goto 53.75,56.27 < 10 |only if walking
accept Sandfishing##51173 |goto Vol'dun/0 52.22,59.75
|tip You will accept this quest automatically.
step
kill Ravenous Sandworm##136653+
|tip Use the "Sandfishing" ability that appears onscreen to spawn them.
collect 8 Sandworm Fang##159767 |q 51173/1 |goto 52.22,59.75
|next "Tortollan_Seekers_WQ"
step
label quest-52196
Follow the path |goto Vol'dun/0 43.07,61.30 < 5 |only if walking
Continue up the path |goto 43.86,62.02 < 10 |only if walking
Continue up the path |goto 44.37,61.41 < 10 |only if walking
accept Sandswept Bones##52196 |goto Zuldazar/0 44.37,56.06
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
Follow the path |goto Vol'dun/0 43.92,77.08 < 5 |only if walking
Continue following the path |goto 44.12,77.73 < 7 |only if walking
Run down the stairs |goto 44.13,78.18 < 7 |only if walking
Jump down here |goto 44.21,79.30 < 10 |only if walking
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
label quest-51116
Follow the path |goto Vol'dun/0 47.68,34.47 < 7 |only if walking
Continue following the path |goto 48.32,34.53 < 7 |only if walking
Continue down the path |goto 49.00,34.43 < 7 |only if walking
accept Skycarver Krakit##51116 |goto Vol'dun/0 50.68,34.84
|tip You will accept this quest automatically.
step
Follow the path |goto 51.43,34.95 < 7 |only if walking
kill Skycarver Krakit##134745 |q 51116/1 |goto 51.30,36.47
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
label quest-51558
Follow the path up |goto Vol'dun/0 44.34,76.36 < 7 |only if walking
Jump down here |goto 44.67,77.72 < 7 |only if walking
accept Spider Scorching##51558 |goto Vol'dun/0 45.44,78.94
|tip You will accept this quest automatically.
step
use the Torch##160870
|tip Use it on small white clutches of spider eggs on the ground around this area.
Burn #25# Sandspinner Eggs |q 51558/1 |goto 45.44,78.94
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
label quest-51997
Follow the path |goto Vol'dun/0 43.24,77.10 < 7 |only if walking
Continue following the path |goto 42.66,77.66 < 7 |only if walking
Run down the stairs |goto 42.62,78.20 < 7 |only if walking
Jump down here |goto 42.23,78.26 < 7 |only if walking
Follow the path |goto 41.02,79.03 < 10 |only if walking
accept Thar She Sinks##51997 |goto Vol'dun/0 37.80,83.01
|tip You will accept this quest automatically.
step
clicknpc Stolen Canoe##139582
Board the Stolen Canoe |q 51997/1 |goto 37.80,83.01
stickystart "Destroy_Cannons"
stickystart "Slay_Pirates"
step
clicknpc Stolen Canoe##139582
|tip Use the "Throw Torch" ability on canoes floating in the water around this area.
Sink #8# Canoes |q 51997/2 |goto 32.98,84.19
step
label "Destroy_Cannons"
|tip Use the "Throw Torch" ability on cannons along the piers around this area.
Destroy #8# Cannons |q 51997/3 |goto 32.98,84.19
step
label "Slay_Pirates"
|tip Use the "Release Depth Charges" ability above the pirates underwater around this area.
Slay #50# Pirates |q 51997/4 |goto 32.98,84.19
|next "Tortollan_Seekers_WQ"
step
label quest-51983
accept Vorrik's Vengeance##51983 |goto Vol'dun/0 47.26,35.17
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
Mount Rakjan the Unbroken |q 51983/1 |goto 47.16,39.38
step
Slay #50# Faithless |q 51983/2 |goto 47.76,32.25
|next "Tortollan_Seekers_WQ"
step
label quest-51316
Cross the bridge |goto Vol'dun/0 61.05,21.02 < 7 |only if walking
Follow the path |goto 59.72,19.96 < 7 |only if walking
accept Walking in a Spiderweb##51316 |goto Vol'dun/0 59.64,17.11
|tip You will accept this quest automatically.
stickystart "Kill_Jungleweb_Crawlers"
stickystart "Kill_Jungleweb_Hatchlings"
step
kill Jungleweb Victim##137167
Free #5# Tortaka |q 51316/1 |goto 60.66,17.08
step
label "Kill_Jungleweb_Crawlers"
kill 5 Jungleweb Crawler##123813 |q 51316/2 |goto 60.66,17.08
step
label "Kill_Jungleweb_Hatchlings"
kill 30 Jungleweb Hatchling##123826 |q 51316/3 |goto 60.66,17.08
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
label quest-51114
Follow the path |goto Vol'dun/0 47.60,34.52 < 7 |only if walking
Follow the path down |goto 49.18,34.47 < 7 |only if walking
Continue up the path |goto 49.94,34.65 < 7 |only if walking
Continue up the path |goto 50.60,34.86 < 7 |only if walking
Cross the bridge |goto 51.87,34.60 < 7 |only if walking
Follow the path |goto 51.96,31.84 < 10 |only if walking
accept Warmother Captive##51114 |goto Vol'dun/0 50.71,30.88
|tip You will accept this quest automatically.
step
kill Warmother Captive##134625 |q 51114/1 |goto 50.71,30.88
|next "Tortollan_Seekers_WQ"
step
label quest-52864
Follow the path |goto Vol'dun/0 41.76,61.86 < 7 |only if walking
Continue up the path |goto 40.30,61.82 < 7 |only if walking
Continue following the path |goto 36.97,60.50 < 10 |only if walking
Continue following the path |goto 33.40,58.95 < 10 |only if walking
Continue following the path |goto 32.23,60.61 < 7 |only if walking
accept What Do You Mean, Mind Controlling Plants?##52864 |goto Vol'dun/0 30.52,61.95
|tip You will accept this quest automatically.
step
Jump down here |goto 30.90,61.98 < 5 |only if walking
clicknpc Spineleaf##141969
Defeat Spineleaf |q 52864/1 |goto 30.52,61.95
|next "Tortollan_Seekers_WQ"
step
label quest-51315
Follow the path |goto Vol'dun/0 53.41,88.30 < 10 |only if walking
accept Wild Flutterbies##51315 |goto Vol'dun/0 52.72,87.76
|tip You will accept this quest automatically.
step
Follow the path down |goto 52.39,88.34 < 7 |only if walking
|tip Use the extra action button onscreen to capture Flutterbies.
Collect #10# Vale Flutterbies |q 51315/1 |goto 51.53,86.14
|next "Tortollan_Seekers_WQ"
step
label quest-51322
Follow the path up |goto Vol'dun/0 42.32,64.47 < 10 |only if walking
accept Wings and Stingers##51322 |goto Vol'dun/0 40.64,68.32
|tip You will accept this quest automatically.
stickystart "Collect_Buzzard_Wings"
step
Kill Oasis enemies around this area
collect 5 Oasis Stinger##159924 |q 51322/2 |goto 40.64,68.32
step
label "Collect_Buzzard_Wings"
kill Bonebleach Buzzard##137209+
collect 3 Buzzard Wing##159925 |q 51322/1 |goto 40.64,68.32
|next "Tortollan_Seekers_WQ"
step
label quest-52397
collect 5 Contract: Voldunai##153666 |q 52397 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Voldunai##52397 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Contract: Voldunai##52397 |goto 56.69,49.73
|next "Tortollan_Seekers_WQ"
step
label quest-52412
collect 40 Rubellite##153701 |q 52412 |future
|tip Create them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Rubellite##52412 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Rubellite##52412 |goto 56.69,49.73
|next "Tortollan_Seekers_WQ"
step
label quest-51957
Follow the path |goto Vol'dun/0 47.60,34.52 < 7 |only if walking
Follow the path down |goto 49.18,34.47 < 7 |only if walking
Continue up the path |goto 49.94,34.65 < 7 |only if walking
Continue up the path |goto 50.60,34.86 < 7 |only if walking
Cross the bridge |goto 51.87,34.60 < 7 |only if walking
Run up the stairs |goto 51.95,31.18 < 10 |only if walking
Follow the path |goto 51.92,29.25 < 10 |only if walking
Run up the stairs |goto 50.98,28.42 < 7 |only if walking
accept The Wrath of Vorrik##51957 |goto Vol'dun/0 50.02,27.28
|tip You will accept this quest automatically.
step
Expunge #100# Faithless |q 51957/1 |goto 50.02,27.28
|tip Collect the small white crackling orbs that spawn to renew your lightning power.
|next "Tortollan_Seekers_WQ"
step
label quest-51763
Follow the path |goto Vol'dun/0 43.18,77.21 < 10 |only if walking
Run down the stairs |goto 41.59,77.31 < 7 |only if walking
Run down the stairs |goto 40.20,77.30 < 7 |only if walking
Run down the stairs |goto 39.58,77.34 < 7 |only if walking
accept Zem'lan Rescue##51763 |goto Vol'dun/0 38.46,78.98
|tip You will accept this quest automatically.
stickystart "Slay_Zem'lan_Pirates"
step
clicknpc Captured Exile##138976+
|tip They look like bound Trolls around this area.
Free #4# Prisoners |q 51763/1 |goto 36.62,79.29
step
label "Slay_Zem'lan_Pirates"
Kill enemies around this area
Slay #10# Zem'lan Pirates |q 51763/2 |goto 36.62,79.29
|next "Tortollan_Seekers_WQ"
step
label quest-51115
Follow the path up |goto Vol'dun/0 43.05,61.30 < 5 |only if walking
Continue up the path |goto 43.98,62.14 < 10 |only if walking
Continue following the path |goto 44.59,60.66 < 10 |only if walking
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
condition_suggested=function() return level>=120 and completedq(51916) end,
condition_valid=function() return level>=120 and completedq(51916) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Zandalari Empire\n"..
"Talanji's Expedition\n"..
"Voldunai\n\n"..
"Then turn in the quest \"Uniting Zandalar\""..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone={862,1173,1165},
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-52923
Jump down here |goto Zuldazar/0 49.72,27.58 < 10 |only if walking
Cross the bridge |goto 49.78,29.00 < 7 |only if walking
Follow the path |goto 50.29,30.68 < 10 |only if walking
Cross the bridge |goto 50.23,31.23 < 7 |only if walking
Follow the path |goto 49.76,31.44 < 7 |only if walking
Continue following the path |goto 49.86,32.34 < 5 |only if walking
Follow the path up |goto 49.75,32.64 < 5 |only if walking
Continue following the path |goto 49.13,34.74 < 10 |only if walking
accept Add More to the Collection##52923 |goto Zuldazar/0 48.42,35.17
|tip You will accept this quest automatically.
step
talk Talia Sparkbrow##142114
Tell her _"Begin pet battle."_
Defeat Talia Sparkbrow |q 52923/1 |goto 48.42,35.17
|next "Tortollan_Seekers_WQ"
step
label quest-50864
Jump down here |goto Zuldazar/0 77.35,15.45 < 3 |only if walking
Follow the path |goto 78.59,17.07 < 10 |only if walking
Continue following the path |goto 78.39,18.43 < 7 |only if walking
clicknpc Fishing Canoe##139838
Take the Canoe to the Ship |invehicle |goto Zuldazar/0 79.01,19.13
step
Exit the Canoe |outvehicle |goto 80.69,20.73
|tip Click the red arrow button to leave the canoe when you reach the ship.
|tip The canoe will return to shore after a few seconds.
step
click Rope##204427 |goto 80.83,20.48 < 3 |only if walking
Climb Up the Rope |goto 80.85,20.29 < 3 |only if walking |c |noway
step
click Rope##204427 |goto 80.85,20.29 < 3 |only if walking
Climb Up the Rope |goto 80.88,20.39 < 3 |only if walking |c |noway
step
accept Atal'zul Gotaka##50864 |goto 81.80,37.66
|tip You will accept this quest automatically.
step
kill Atal'zul Gotaka##129961 |q 50864/1 |goto 80.97,21.61
|next "Tortollan_Seekers_WQ"
step
label quest-50863
Follow the path |goto Zuldazar/0 48.51,60.23 < 5 |only if walking
Run down the stairs |goto 49.00,60.22 < 7 |only if walking
Enter the cave |goto 49.57,59.00 < 7 |walk
accept Avatar of Xolotal##50863 |goto Zuldazar/0 49.48,58.42
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
Follow the path down |goto Zuldazar/0 49.96,25.67 < 7 |only if walking
Continue down the path |goto 50.67,25.73 < 7 |only if walking
Continue down the path |goto 51.18,24.91 < 7 |only if walking
Continue down the path |goto 51.78,24.20 < 7 |only if walking
Follow the road |goto 52.23,23.23 < 10 |only if walking
Continue following the road |goto 53.56,23.68 < 5 |only if walking
Cross the bridge |goto 54.49,25.38 < 10 |only if walking
Follow the path down |goto 54.96,24.21 < 10 |only if walking
accept Azerite Empowerment##51444 |goto Zuldazar/0 56.81,23.10
|tip You will accept this quest automatically.
step
kill Zu'shin the Infused##136702 |q 51444/1 |goto 56.81,23.10
|next "Tortollan_Seekers_WQ"
step
label quest-51179
Follow the path down |goto Zuldazar/0 49.64,26.01 < 7 |only if walking
Continue down the path |goto 49.90,25.72 < 7 |only if walking
Continue down the path |goto 50.66,25.82 < 7 |only if walking
Continue down the path |goto 51.11,24.97 < 7 |only if walking
Follow the road |goto 52.29,23.22 < 10 |only if walking
Continue following the road |goto 52.98,23.17 < 10 |only if walking
Cross the bridge |goto 53.58,23.72 < 5 |only if walking
accept Azerite Madness##51179 |goto Zuldazar/0 54.28,24.99
|tip You will accept this quest automatically.
step
Kill Azerite-Infused enemies around this area
|tip Use the special action button on-screen after killing enemies.
Absorb Azerite from Defeated Elementals |q 51179/1 |goto 55.88,23.39
|next "Tortollan_Seekers_WQ"
step
label quest-52877
Follow the path |goto Zuldazar/0 42.57,70.89 < 10 |only if walking
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
Follow the path down |goto Zuldazar/0 49.96,25.67 < 7 |only if walking
Continue down the path |goto 50.67,25.73 < 7 |only if walking
Continue down the path |goto 51.18,24.91 < 7 |only if walking
Continue down the path |goto 51.78,24.20 < 7 |only if walking
Follow the road |goto 52.23,23.23 < 10 |only if walking
Cross the bridge |goto 53.56,23.68 < 5 |only if walking
Follow the path down |goto 54.49,25.38 < 10 |only if walking
Follow the path down |goto 54.96,24.21 < 10 |only if walking
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
Follow the path down |goto Zuldazar/0 49.68,25.93 < 7 |only if walking
Continue down the path |goto 50.28,25.67 < 7 |only if walking
Continue down the path |goto 50.71,25.71 < 7 |only if walking
Continue down the path |goto 51.23,24.84 < 7 |only if walking
Follow the road |goto 52.39,23.18 < 10 |only if walking
Continue following the road |goto 53.60,23.73 < 3 |only if walking
Cross the bridge |goto 54.56,25.50 < 10 |only if walking
Follow the path down |goto 54.99,24.19 < 10 |only if walking
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
label quest-50652
Follow the path down |goto Zuldazar/0 67.59,42.06 < 7 |only if walking
Continue following the path |goto 68.21,42.55 < 10 |only if walking
Continue following the path |goto 68.90,41.40 < 7 |only if walking
Continue following the path |goto 69.20,39.94 < 10 |only if walking
accept Biting the Hand that Feeds Them##50652 |goto Zuldazar/0 70.47,39.99
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect 5 Fresh Meat##158184 |goto 70.47,39.99 |q 50652
step
clicknpc Savagemane Hatchling##134619+
|tip They look like little baby dinosaurs on the ground around this area.
Feed #5# Savagemane Hatchlings |q 50652/1 |goto 70.47,39.99
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
label quest-50578
accept Bring Ruin Again##50578 |goto Zuldazar/0 49.74,44.51
|tip You will accept this quest automatically.
stickystart "Kill_Disciples_Of_Zul"
step
Follow the path |goto 49.62,43.84 < 7 |only if walking
Run up the stairs |goto 49.75,42.49 < 7 |only if walking
kill 5 Kao-Tien Battlemaster##129515 |q 50578/1 |goto 49.75,41.03
step
label "Kill_Disciples_Of_Zul"
kill 8 Disciple of Zul##129504 |q 50578/2 |goto 49.75,41.03
|next "Tortollan_Seekers_WQ"
step
label quest-51475
Follow the road |goto Zuldazar/0 49.16,44.65 < 10 |only if walking
Continue following the road |goto 49.35,45.24 < 7 |only if walking
Jump down here |goto 50.20,45.54 < 7 |only if walking
Follow the road down |goto 50.82,45.41 < 7 |only if walking
Continue following the road |goto 51.21,44.12 < 10 |only if walking
Continue following the road |goto 52.01,43.86 < 7 |only if walking
accept Brutal Escort##51475 |goto Zuldazar/0 51.92,45.67
|tip You will accept this quest automatically.
step
kill Dazarian Stalker##137829
|tip Follow Roughneck, killing any stalkers that attack.
Escort Roughneck |q 51475/1 |goto 51.92,45.67
|next "Tortollan_Seekers_WQ"
step
label quest-50966
Follow the path |goto Zuldazar/0 79.34,45.32 < 10 |only if walking
Continue following the path |goto 78.27,47.68 < 10 |only if walking
accept Cleanup Crew##50966 |goto Zuldazar/0 76.67,50.53
|tip You will accept this quest automatically.
stickystart "Slay_7th_Legion_Sailors"
step
click 7th Legion Supply Crate##284468+
|tip They look like small wooden crates on the ground around this area.
collect 5 Bundle of Supplies##160703 |q 50966/2 |goto 76.67,50.53
step
label "Slay_7th_Legion_Sailors"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Sailors |q 50966/1 |goto 76.67,50.53
|next "Tortollan_Seekers_WQ"
step
label quest-52892
accept Critters are Friends, Not Food##52892 |goto Zuldazar/0 70.56,29.59
|tip You will accept this quest automatically.
step
talk Karaga##142096
Tell him _"Begin pet battle."_
Defeat Karaga |q 52892/1 |goto 70.56,29.59
|next "Tortollan_Seekers_WQ"
step
label quest-50871
Follow the path up |goto Zuldazar/0 79.27,43.03 < 10 |only if walking
Continue up the path |goto 77.69,42.91 < 7 |only if walking
Continue down the path |goto 76.64,41.97 < 7 |only if walking
Continue following the path |goto 75.22,40.88 < 10 |only if walking
accept Daggerjaw##50871 |goto Zuldazar/0 74.28,39.44
|tip You will accept this quest automatically.
step
kill Daggerjaw##133190
|tip Underwater.
Slay Daggerjaw |q 50871/1 |goto 74.28,39.44
|next "Tortollan_Seekers_WQ"
step
label quest-51084
Follow the path up |goto Zuldazar/0 44.63,72.65 < 10 |only if walking
Continue up the path |goto 45.09,74.37 < 10 |only if walking
Continue up the path |goto 44.55,75.80 < 7 |only if walking
Continue up the path |goto 43.82,75.96 < 7 |only if walking
Jump down here |goto 43.54,76.02 < 5 |only if walking
accept Dark Chronicler##51084 |goto Zuldazar/0 43.28,76.39
|tip You will accept this quest automatically.
step
Continue up the path |goto 44.55,75.80 < 7 |only if walking
Continue up the path |goto 43.82,75.96 < 7 |only if walking
Jump down here |goto 43.54,76.02 < 5 |only if walking
Enter the cave |goto 43.28,76.39 < 5 |walk
kill Dark Chronicler##136428 |q 51084/1 |goto 44.12,76.51
|next "Tortollan_Seekers_WQ"
step
label quest-50875
Follow the path |goto Zuldazar/0 66.22,18.18 < 7 |only if walking
Continue down the path |goto 65.09,17.99 < 7 |only if walking
Continue up the path |goto 64.16,16.51 < 7 |only if walking
Jump down here |goto 63.82,16.58 < 7 |only if walking
Follow the path |goto 63.15,16.68 < 7 |only if walking
Continue down the path |goto 63.01,14.99 < 7 |only if walking
Continue down the path |goto 62.50,14.69 < 7 |only if walking
Continue down the path |goto 62.79,12.44 < 10 |only if walking
Continue following the path |goto 63.79,10.69 < 10 |only if walking
accept Darkspeaker Jo'la##50875 |goto Zuldazar/0 65.38,10.24
|tip You will accept this quest automatically.
step
kill Darkspeaker Jo'la##134760 |q 50875/1 |goto 65.38,10.24
|next "Tortollan_Seekers_WQ"
step
label quest-50571
accept Eggstermination##50571 |goto Zuldazar/0 64.54,18.60
|tip You will accept this quest automatically.
step
kill 20 Feathered Viper Egg##132413 |q 50571/1 |goto 64.54,18.60
|next "Tortollan_Seekers_WQ"
step
label quest-50548
Follow the path |goto Dazar'alor/0 51.51,21.15 < 10 |only if walking
Cross the bridge |goto 54.70,25.81 < 7 |only if walking
Run up the stairs |goto 55.89,24.05 < 7 |only if walking
Follow the path |goto 56.78,22.63 < 7 |only if walking
Run up the stairs |goto 58.09,22.57 < 10 |only if walking
Run down the stairs |goto 58.16,18.39 < 10 |only if walking
Cross the bridge |goto 58.13,11.56 < 10 |only if walking
Jump down here |goto 59.57,9.62 < 10 |only if walking
Follow the path |goto Zuldazar/0 62.62,32.87 < 7 |only if walking
Run up the stairs |goto 63.30,31.86 < 7 |only if walking
accept Enforcing the Will of the King##50548 |goto Zuldazar/0 63.26,31.92
|tip You will accept this quest automatically.
step
Kill enemies around this area
Enforce the Will of the Rastakhan |q 50548/1 |goto 63.66,31.10
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
Follow the path |goto Dazar'alor/0 51.51,21.15 < 10 |only if walking
Cross the bridge |goto 54.70,25.81 < 7 |only if walking
Run up the stairs |goto 55.89,24.05 < 7 |only if walking
Follow the path |goto 56.78,22.63 < 7 |only if walking
Run up the stairs |goto 58.09,22.57 < 10 |only if walking
Run down the stairs |goto 58.16,18.39 < 10 |only if walking
Cross the bridge |goto 58.13,11.56 < 10 |only if walking
Jump down here |goto 59.57,9.62 < 10 |only if walking
Follow the path |goto Zuldazar/0 62.71,33.06 < 7 |only if walking
Follow the path up |goto 63.20,32.60 < 7 |only if walking
accept Gahz'ralka##50877 |goto Zuldazar/0 63.87,33.23
|tip You will accept this quest automatically.
step
kill Gahz'ralka##129954 |q 50877/1 |goto 64.24,32.73
|next "Tortollan_Seekers_WQ"
step
label quest-50874
Cross the bridge |goto Zuldazar/0 45.97,36.12 < 7 |only if walking
Follow the road up |goto 46.12,38.11 < 7 |only if walking
Continue following the road |goto 45.66,38.44 < 7 |only if walking
Continue following the road |goto 45.13,37.80 < 7 |only if walking
Follow the path up |goto 44.06,38.19 < 7 |only if walking
Continue following the path |goto 43.93,37.30 < 7 |only if walking
Continue following the path |goto 44.16,36.69 < 7 |only if walking
Continue following the path |goto 43.96,35.82 < 7 |only if walking
Continue following the path |goto 43.47,36.76 < 7 |only if walking
accept Hakbi the Risen##50874 |goto Zuldazar/0 42.79,35.92
|tip You will accept this quest automatically.
step
kill Hakbi the Risen##134738 |q 50874/1 |goto 42.04,36.22
|next "Tortollan_Seekers_WQ"
step
label quest-50846
Follow the path down |goto Zuldazar/0 66.22,18.18 < 7 |only if walking
Continue following the path |goto 65.06,18.00 < 7 |only if walking
Continue following the path |goto 64.40,17.15 < 7 |only if walking
Continue following the path |goto 64.18,16.47 < 7 |only if walking
Jump down here |goto 63.83,16.58 < 7 |only if walking
Follow the path down |goto 63.32,16.73 < 7 |only if walking
Continue following the path |goto 63.08,16.16 < 7 |only if walking
accept Headhunter Lee'za##50846 |goto Zuldazar/0 63.04,15.63
|tip You will accept this quest automatically.
stickystart "Kill_Coati"
step
Follow the path down |goto 62.58,14.87 < 7 |only if walking
Continue following the path |goto 62.67,14.18 < 7
kill Headhunter Lee'za##134637 |q 50846/1 |goto 63.16,14.03
step
label "Kill_Coati"
kill Coati##131704 |q 50846/2 |goto 63.16,14.03
|next "Tortollan_Seekers_WQ"
step
label quest-50765
accept Herding Children##50765 |goto Dazar'alor/0 52.76,89.04
|tip You will accept this quest automatically.
step
Chase #3# Orphans |q 50765/1 |goto 52.76,89.04
|tip They look like small children around this area.
|tip Chase them to caretakers, which appear on the map as a yellow dot.
|next "Tortollan_Seekers_WQ"
step
label quest-51497
Run up the stairs |goto Dazar'alor/0 51.79,18.96 < 7 |only if walking
Run up the stairs |goto 50.15,21.33 < 7
accept Hex Education##51497 |goto Dazar'alor/0 49.07,21.44
|tip You will accept this quest automatically.
step
Run up the stairs |goto 47.55,23.62 < 7 |only if walking
Run up the stairs |goto 46.63,22.07 < 7 |only if walking
clicknpc Zanchuli Acolyte##126586
use Raal's Hexing Stick##160307
|tip use it on the Acolytes.
Hex #12# Priests |q 51497/1 |goto 50.81,16.05
|next "Tortollan_Seekers_WQ"
step
label quest-51232
Follow the path |goto Zuldazar/0 70.59,29.90 < 7 |only if walking
Jump down carefully here |goto 69.53,30.30 < 10 |only if walking
Follow the path up |goto 68.28,30.50 < 10 |only if walking
accept Hundred Troll Holdout##51232 |goto Zuldazar/0 66.25,30.67
|tip You will accept this quest automatically.
step
kill Gurubashi Attacker##136699+
|tip Stand near the totems for huge buffs.
|tip Each buff lasts for 45 seconds.
Slay #100# Gurubashi Attackers |q 51232/1 |goto 65.51,30.15
|next "Tortollan_Seekers_WQ"
step
label quest-50859
Jump down here |goto Zuldazar/0 67.35,43.18 < 5 |only if walking
Follow the path |goto 67.58,44.31 < 7 |only if walking
Continue following the path |goto 68.21,45.51 < 7 |only if walking
Enter the cave |goto 68.84,47.14 < 7 |only if walking
accept Kandak##50859 |goto Zuldazar/0 69.00,47.64
|tip You will accept this quest automatically.
step
Follow the path |goto 69.00,47.66 < 7 |walk
kill Kandak##126637
|tip Inside the cave.
Slay Kandak |q 50859/1 |goto 68.67,48.74
|next "Tortollan_Seekers_WQ"
step
label quest-51084
Cross the water |goto Zuldazar/0 79.00,39.92 < 10 |only if walking
Follow the path up |goto 77.51,38.83 < 7 |only if walking
Continue up the path |goto 77.02,36.74 < 10 |only if walking
accept Kiboku##50869 |goto Zuldazar/0 75.63,35.91
|tip You will accept this quest automatically.
step
kill Kiboku##132244 |q 51084/1 |goto 75.63,35.91
|next "Tortollan_Seekers_WQ"
step
label quest-50547
accept Knives of Zul##50547 |goto Zuldazar/0 79.54,16.27
|tip You will accept this quest automatically.
stickystart "Slay_Followers_of_Zul"
step
clicknpc Zeb'ahari Fishermon##132706+
|tip They look like cowering Trolls along the beach around this area.
Rescue #9# Zeb'ahari Villagers |q 50547/2 |goto 79.54,16.27
step
label "Slay_Followers_of_Zul"
Kill Atal'zul enemies around this area
Slay #12# Zul Followers |q 50547/1 |goto 79.54,16.27
|next "Tortollan_Seekers_WQ"
step
label quest-51496
Follow the path |goto Dazar'alor/0 51.79,18.99 < 7 |only if walking
Run up the stairs |goto 50.20,21.26 < 7 |only if walking
Run up the stairs |goto 49.04,21.51 < 7 |only if walking
accept Loa Your Standards##51496 |goto Dazar'alor/0 47.48,23.49
|tip You will accept this quest automatically.
step
Run up the stairs |goto 49.04,21.51 < 7 |only if walking
Run up the stairs |goto 47.48,23.49 < 7 |only if walking
Run up the stairs |goto 46.59,22.15 < 7 |only if walking
click Idol of Gonk##293876+
|tip They look like small green statues around this area.
click Greater Idol of Gonk##293878+
|tip They look like large green statues around this area.
kill Raptari Druid##141891+
Prank #10# Raptari Druids |q 51496/1 |goto 50.47,17.00
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
talk Toki##144362
Tell him _"I am ready."_
Speak to Toki |q 51636/1 |goto 81.81,37.53
step
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
Guide Loh to the Goal |q 51636/2 |goto 81.80,37.66
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
label quest-50876
Follow the path |goto Dazar'alor/0 51.23,88.62 < 7 |only if walking
Continue following the path |goto 51.12,85.44 < 7 |only if walking
Run down the stairs |goto 50.01,86.05 < 10 |only if walking
Run down the stairs |goto 50.36,91.01 < 7 |only if walking
Follow the path |goto 50.78,92.84 < 7 |only if walking
Continue following the path |goto 50.01,96.27 < 7 |only if walking
Continue following the path |goto Zuldazar/0 58.08,64.70 < 10 |only if walking
Cross the water |goto 60.70,66.10 < 7 |only if walking
accept Murderbeak##50876 |goto Zuldazar/0 60.70,66.10
|tip You will accept this quest automatically.
step
kill Murderbeak##134782 |q 50876/1
|next "Tortollan_Seekers_WQ"
step
label quest-51495
Follow the path |goto Zuldazar/0 66.22,18.19 < 7 |only if walking
Jump down here |goto 65.67,19.66 < 7 |only if walking
Follow the road down |goto 65.00,20.62 < 7
Jump down here |goto 62.65,19.61 < 7 |only if walking
accept Old Rotana##51495 |goto Zuldazar/0 61.11,20.52
|tip You will accept this quest automatically.
step
clicknpc Old Rotana##137855
Ride Old Rotana |q 51495/1 |goto 61.11,20.52
step
Kill Blood Troll enemies around this area
|tip Use the abilities on your action bar.
Destroy Blood Troll Forces |q 51495/2 |goto 59.79,20.15
step
Dismount Old Rotana |outvehicle |q 51495
|tip Click the red "Exit" arrow on your action bar.
|next "Tortollan_Seekers_WQ"
step
label quest-50633
Follow the road |goto Zuldazar/0 70.33,29.95 < 10 |only if walking
Continue following the road |goto 70.30,31.77 < 10 |only if walking
Follow the path down |goto 69.67,31.90 < 10 |only if walking
Continue following the path |goto 68.43,34.06 < 10 |only if walking
accept Pterrible Ingredients##50633 |goto Zuldazar/0 68.05,34.02
|tip You will accept this quest automatically.
step
Follow the path up |goto 67.78,34.31 < 10 |only if walking
Kill enemies around this area
collect 12 Pterrordax Salivary Gland##158177 |q 50633/1 |goto 67.28,32.66
|next "Tortollan_Seekers_WQ"
step
label quest-50524
Run down the stairs |goto Zuldazar/0 72.14,29.37 < 7 |only if walking
Run down the stairs |goto 72.67,29.12 < 10 |only if walking
accept Purify the Temple##50524 |goto Zuldazar/0 73.34,27.91
|tip You will accept this quest automatically.
step
Follow the path |goto 73.25,26.17 < 10 |only if walking
click Blasphemous Writing##281675+
|tip They look like scrolls on the ground around this area.
Kill enemies around this area
Purify the Temple Grounds |q 50524/1 |goto 73.59,25.60
|next "Tortollan_Seekers_WQ"
step
label quest-49068
accept Quelling the Cove##49068 |goto Zuldazar/0 73.51,65.01
|tip You will accept this quest automatically.
step
Kill Squallfin enemies around this area
|tip Run over glowing tadpoles to scare them.
Disrupt Dreadpearl |q 49068/1 |goto 73.51,65.01
|next "Tortollan_Seekers_WQ"
step
label quest-50540
accept Rally the Rastari##50540 |goto Zuldazar/0 47.55,63.65
|tip You will accept this quest automatically.
stickystart "Slay_Mogu"
step
use the Rastari Skull Whistle##157858
|tip Use it near Rastari Defender's around this area
Rally #6# Rastari Defenders |q 50540/1 |goto 47.55,63.65
step
label "Slay_Mogu"
Kill enemies around this area
Slay #8# Mogu |q 50540/2 |goto 47.55,63.65
|next "Tortollan_Seekers_WQ"
step
label quest-50636
Follow the path down |goto Zuldazar/0 67.60,42.05 < 10 |only if walking
Continue down the path |goto 68.35,42.29 < 7 |only if walking
Follow the path |goto 68.90,41.38 < 7 |only if walking
Continue following the path |goto 69.01,39.91 < 10 |only if walking
accept Ravoracious##50636 |goto Zuldazar/0 70.51,39.42
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect Ravasaur Stomach Lining##159755 |q 50636/1 |goto 70.51,39.42
|next "Tortollan_Seekers_WQ"
step
label quest-50744
Follow the path |goto Dazar'alor/0 51.22,88.52 < 7 |only if walking
Continue following the path |goto 50.81,83.57 < 7 |only if walking
Run up the stairs |goto 50.26,81.48 < 10 |only if walking
Follow the path |goto 50.26,78.26 < 7 |only if walking
Continue following the path |goto 52.36,78.10 < 10 |only if walking
Continue following the path |goto 54.99,80.30 < 10 |only if walking
Continue following the path |goto 56.13,80.47 < 7 |only if walking
accept Refresh Their Memory##50744 |goto Dazar'alor/0 56.17,87.40
|tip You will accept this quest automatically.
step
click Ancient Gong##297883
|tip Clicking it will summon an Amani Disciple.
|tip Click it again after defeating a Disciple to summon another.
Defeat #4# Amani Disciples |q 50744/1 |goto 56.17,87.40
|next "Tortollan_Seekers_WQ"
step
label quest-50964
Follow the path |goto Dazar'alor/0 51.78,19.00 < 7 |only if walking
Run up the stairs |goto 50.24,21.24 < 7 |only if walking
Continue up the stairs |goto 49.04,21.49 < 7 |only if walking
Continue up the stairs |goto 47.53,23.60 < 7 |only if walking
Continue up the stairs |goto 46.55,22.15 < 7 |only if walking
Continue up the stairs |goto 45.24,24.00 < 7 |only if walking
Follow the path |goto 42.61,23.01 < 7 |only if walking
Run up the stairs |goto 42.55,21.43 < 7 |only if walking
Continue up the stairs |goto 41.44,19.68 < 7 |only if walking
Continue up the stairs |goto 41.43,18.19 < 7 |only if walking |c
step
Follow the path |goto 39.89,12.93 < 10 |only if walking
Enter the building |goto Dazar'alor/4 36.82,62.00 < 5 |walk
Follow the path |goto 45.95,39.56 < 5 |only if walking
Run up the stairs |goto 37.45,26.54 < 5 |only if walking
Follow the path |goto 44.79,16.03 < 5 |only if walking
Run up the stairs |goto Dazar'alor/3 42.82,33.64 < 5 |only if walking
Follow the path |goto 67.05,70.06 < 5 |only if walking
Continue following the path |goto 71.08,66.35 < 5 |only if walking
Continue following the path |goto 80.45,83.07 < 5 |only if walking
Leave the building |goto Dazar'alor/0 45.31,13.24 < 5 |only if walking |c
step
Follow the path |goto 45.14,14.58 < 7 |only if walking
Follow the path |goto 46.07,16.30 < 7 |only if walking
Run up the stairs |goto 46.08,13.10 < 7 |only if walking
Follow the path |goto 46.26,11.43 < 10 |only if walking
Run up the stairs |goto 44.64,8.97 < 10 |only if walking
accept Ritual Combat##50964 |goto Dazar'alor/0 43.63,7.37
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Each Loa champion will spawn after the last one dies.
Defeat #4# Loa Champions |q 50964/1 |goto 43.63,7.37
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
label quest-50581
accept Scrolls and Scales##50581 |goto Zuldazar/0 82.20,39.91
|tip You will accept this quest automatically.
stickystart "Slay_Dreadcoil Seekers"
step
click Scroll of Gral##281652+
|tip They look like large scrollcases on the ground around this area.
collect 4 Scroll of Gral##158068 |q 50581/2 |goto 82.20,39.91
step
label "Slay_Dreadcoil Seekers"
kill 8 Dreadcoil Seeker##125174 |q 50581/1 |goto 82.20,39.91
|next "Tortollan_Seekers_WQ"
step
label quest-51630
Follow the path |goto Zuldazar/0 44.00,71.63 < 7 |only if walking
Continue following the path |goto 41.59,72.13 < 10 |only if walking
Continue following the path |goto 38.94,75.34 < 10 |only if walking
Continue following the path |goto 38.51,78.37 < 10 |only if walking
Cross the water |goto 38.11,78.80 < 7 |only if walking
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
label quest-52248
Follow the path |goto Zuldazar/0 43.40,71.77 < 10 |only if walking
Continue following the path |goto 41.65,72.14 < 10 |only if walking
accept The Shores of Xibala##52248 |goto Zuldazar/0 39.29,73.08
|tip You will accept this quest automatically.
step
Kill Dark Iron enemies around this area
Slay #12# Dark Iron Dwarves |q 52248/1 |goto 39.29,73.08
|next "Tortollan_Seekers_WQ"
step
label quest-52938
Follow the path down |goto Zuldazar/0 49.68,25.93 < 7 |only if walking
Jump down here |goto 50.78,25.39 < 7 |only if walking
Jump down here |goto 50.50,24.95 < 7 |only if walking
accept Small Beginnings##52938 |goto Zuldazar/0 50.56,23.90
|tip You will accept this quest automatically.
step
talk Zujai##142234
Tell her _"Begin pet battle."_
Defeat Zujai |q 52938/1 |goto 50.56,23.90
|next "Tortollan_Seekers_WQ"
step
label quest-51038
collect 40 Akunda's Bite##152507 |q 51038 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Akunda's Bite##51038 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Akunda's Bite##51038 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51044
collect 40 Blood-Stained Bone##154164 |q 51044 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Blood-Stained Bone##51044 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Blood-Stained Bone##51044 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51046
collect 40 Coarse Leather##152541 |q 51046 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Coarse Leather##51046 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Coarse Leather##51046 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51051
collect 40 Deep Sea Satin##152577 |q 51051 |future
|tip Farm them from humanoid mobs or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Deep Sea Satin##51051 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Deep Sea Satin##51051 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-52387
collect 20 Frenzied Fangtooth##152545 |q 52387 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Frenzied Fangtooth##52387 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Frenzied Fangtooth##52387 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-52388
collect 20 Lane Snapper##152546 |q 52388 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Lane Snapper##52388 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Lane Snapper##52388 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51049
collect 40 Mistscale##153051 |q 51049 |future
|tip Farm them with Leatherworking or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Mistscale##51049 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Mistscale##51049 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51042
collect 40 Monelite Ore##152512 |q 51042 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Monelite Ore##51042 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
talk Hanul Swiftgale##141936
turnin Supplies Needed: Monelite Ore##51042 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51036
collect 40 Riverbud##152505 |q 51036 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Riverbud##51036 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Riverbud##51036 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-52383
collect 20 Sand Shifter##152543 |q 52383 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
Enter the building |goto Dazar'alor/0 49.92,41.91 < 7 |walk
Run up the stairs |goto Dazar'alor/2 56.67,58.15 < 5 |walk
accept Supplies Needed: Sand Shifter##52383 |goto Dazar'alor/2 67.16,71.62
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Supplies Needed: Sand Shifter##52383 |goto 67.16,71.62
|next "Tortollan_Seekers_WQ"
step
label quest-51048
collect 40 Shimmerscale##153050 |q 51048 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Shimmerscale##51048 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Shimmerscale##51048 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51040
collect 40 Siren's Pollen##152509 |q 51040 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Siren's Pollen##51040 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Siren's Pollen##51040 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51037
collect 40 Star Moss##152506 |q 51037 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Star Moss##51037 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
talk Hanul Swiftgale##141936
turnin Supplies Needed: Star Moss##51037 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51043
collect 40 Storm Silver Ore##152579 |q 51043 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Storm Silver Ore##51043 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Storm Silver Ore##51043 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51050
collect 40 Tidespray Linen##152576 |q 51050 |future
|tip Farm them by killing humanoid mobs or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Supplies Needed: Tidespray Linen##51050 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Tidespray Linen##51050 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51081
Follow the road down |goto Zuldazar/0 49.17,44.76 < 10
Continue following the road |goto 49.39,45.25 < 10 |only if walking
Jump down here |goto 50.20,45.51 < 7 |only if walking
Jump down carefully here |goto 51.32,45.13 < 7 |only if walking
Jump down here |goto 51.58,45.38 < 7 |only if walking
Follow the path |goto 52.89,45.22 < 10 |only if walking
Jump down here |goto 53.33,45.38 < 7 |only if walking
Jump down carefully here |goto 53.48,45.11 < 5 |only if walking
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
Follow the path down |goto Zuldazar/0 77.83,13.37 < 7 |only if walking
Continue following the path |goto 78.02,12.49 < 7 |only if walking
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
label quest-50592
Follow the path |goto Zuldazar/0 49.29,26.33 < 7 |only if walking
Follow the road down |goto 47.71,24.93 < 10 |only if walking
accept Tiny Terror##50592 |goto Zuldazar/0 46.13,24.47
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
Slay #15# Sethrak Invaders |q 50592/1 |goto 46.13,24.47
|next "Tortollan_Seekers_WQ"
step
label quest-50861
Run down the stairs |goto Zuldazar/0 47.83,60.73 < 5 |only if walking
Follow the path |goto 47.86,61.84 < 7 |only if walking
Continue following the path |goto 47.53,63.91 < 7 |only if walking
Run up the stairs |goto 47.07,64.52 < 10 |only if walking
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
label quest-50853
Jump down here |goto Zuldazar/0 49.45,27.74 < 7 |only if walking
accept Umbra'rix##50853 |goto Zuldazar/0 49.23,29.43
|tip You will accept this quest automatically.
step
Follow the path |goto 48.81,29.15 < 7 |only if walking
kill Umbra'rix##134717 |q 50853/1 |goto 49.23,29.43
|next "Tortollan_Seekers_WQ"
step
label quest-49444
Follow the path |goto Dazar'alor/0 51.02,40.33 < 7 |only if walking
Run down the stairs |goto 50.78,37.90 < 7 |only if walking
Run down the stairs |goto 50.13,37.54 < 7 |only if walking
Follow the path |goto 49.20,36.96 < 7 |only if walking
Run down the stairs |goto 48.18,36.41 < 7 |only if walking
Run down the stairs |goto 49.94,35.55 < 10 |only if walking
Follow the path |goto 47.60,34.24 < 10 |only if walking
Continue following the path |goto 47.03,37.55 < 7 |only if walking
Run down the stairs |goto 45.35,37.54 < 7 |only if walking
Run down the stairs |goto 44.73,35.62 < 7 |only if walking
Follow the path |goto 42.97,35.26 < 7 |only if walking
accept Underfoot##49444 |goto Dazar'alor/0 43.31,31.48
|tip You will accept this quest automatically.
step
Follow the path |goto Dazar'alor/0 51.02,40.33 < 7 |only if walking
Run down the stairs |goto 50.78,37.90 < 7 |only if walking
Run down the stairs |goto 50.13,37.54 < 7 |only if walking
Follow the path |goto 49.20,36.96 < 7 |only if walking
Run down the stairs |goto 48.18,36.41 < 7 |only if walking
Run down the stairs |goto 49.94,35.55 < 10 |only if walking
Follow the path |goto 47.60,34.24 < 10 |only if walking
Continue following the path |goto 47.03,37.55 < 7 |only if walking
Run down the stairs |goto 45.35,37.54 < 7 |only if walking
Run down the stairs |goto 44.73,35.62 < 7 |only if walking
Follow the path |goto 42.97,35.26 < 7 |only if walking
clicknpc Fragile Cargo##129646+
|tip They look like brown boxes near the Brutosaur around this area.
|tip Pay attention the cast time on the Frightened Brutosaur's Frightened Stomp.
|tip Collect the cargo between casts.
Recover #8# Fragile Cargo |q 49444/1 |goto 43.31,31.48
|next "Tortollan_Seekers_WQ"
step
label quest-50287
Follow the path |goto Zuldazar/0 48.21,59.64 < 10 |only if walking
Follow the road up |goto 49.21,57.66 < 10 |only if walking
Follow the path |goto 48.37,55.60 < 10 |only if walking
accept Unending Gorilla Warfare##50287 |goto Zuldazar/0 49.01,54.17
|tip You will accept this quest automatically.
step
click Gorilla Totem
|tip They look like totems made of sticks on the ground around this area.
Kill Da'kani enemies around this area
Disrupt Da'kani Gorillas |q 50287/1 |goto 49.01,54.17
|next "Tortollan_Seekers_WQ"
step
label quest-50872
Follow the road down |goto Zuldazar/0 49.16,26.26 < 10 |only if walking
Continue following the road |goto 47.74,24.97 < 10 |only if walking
Cross the bridge |goto 47.00,24.76 < 5 |only if walking
Follow the path |goto 46.10,23.65 < 7 |only if walking
Follow the road up |goto 45.14,23.48 < 7 |only if walking
accept Warcrawler Karkithiss##50872 |goto Zuldazar/0 44.26,25.18
|tip You will accept this quest automatically.
step
Enter the cave |goto 44.26,25.18 < 7 |walk
kill Warcrawler Karkithiss##133842
|tip Inside the cave.
Slay Warcrawler Karkithiss |q 50872/1 |goto 43.92,25.48
|next "Tortollan_Seekers_WQ"
step
label quest-50619
Follow the path |goto Zuldazar/0 43.98,71.62 < 7 |only if walking
accept What Goes Up##50619 |goto Zuldazar/0 39.22,72.89
|tip You will accept this quest automatically.
step
click Nightborne Trap##293683+
|tip They look like small glowing traps on the ground around this area.
Set #8# Traps |q 50619/1 |goto 39.22,72.89
|next "Tortollan_Seekers_WQ"
step
label quest-52394
collect 5 Contract: Champions of Azeroth##153668 |q 52394 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Champions of Azeroth##52394 |goto Zuldazar/0 71.50,30.12
|tip You will accept this quest automatically.
step
Run up the stairs |goto 71.50,30.12 < 5 |only if walking
talk Collector Kojo##134345
turnin Work Order: Contract: Champions of Azeroth##52394 |goto 71.50,30.34
|next "Tortollan_Seekers_WQ"
step
label quest-51013
collect 40 Mistscale##153051 |q 51013 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Mistscale##51013 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Mistscale##51013 |goto 67.25,71.57
|next "Tortollan_Seekers_WQ"
step
label quest-52398
collect 20 Ultramarine Pigment##153635 |q 52398 |future
|tip Mill it with Inscription or purchase them from the Auction House.
step
Follow the path |goto Dazar'alor/0 51.02,40.39 < 7 |only if walking
Run down the stairs |goto 50.99,37.87 < 7 |only if walking
Run down the stairs |goto 50.12,37.25 < 7 |only if walking
Run down the stairs |goto 51.59,36.23 < 7 |only if walking
Run down the stairs |goto 50.04,35.56 < 7 |only if walking
Jump down carefully here |goto 46.39,33.77 < 10 |only if walking
Run down the stairs |goto 44.11,30.17 < 7 |only if walking
accept Work Order: Ultramarine Pigment##52398 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Work Order: Ultramarine Pigment##52398 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-50957
Follow the path |goto Zuldazar/0 72.13,29.28 < 10 |only if walking
Run down the stairs |goto 72.89,28.92 < 10 |only if walking
accept Wrath of Rezan##50957 |goto Zuldazar/0 73.19,28.33
|tip You will accept this quest automatically.
step
clicknpc Old K'zlotec##135908
Climb Aboard Old K'zlotec |q 50957/1 |goto 73.19,28.33
step
Kill enemies around this area
Deliver Rezan's Wrath |q 50957/2 |goto 73.67,25.42
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
Follow the road up |goto Zuldazar/0 48.19,59.63 < 7 |only if walking
Follow the path up |goto 49.16,57.71 < 7 |only if walking
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
