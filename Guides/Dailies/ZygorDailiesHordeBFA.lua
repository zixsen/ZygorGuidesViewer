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
