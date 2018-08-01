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
