local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="This guide will help to defend Teldrassil against the incoming Horde attack..",
condition_suggested=function() return level>=110 end,
},[[
step
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
Watch the dialogue
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |walk
Run up the stairs |goto 83.48,29.81 < 5 |only if walking
Follow the path |goto 83.34,29.54 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.86,50.43
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Kill_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Kill_Forsaken_Assassins"
kill 8 Forsaken Assassin##140801 |q 53616/1 |goto 36.06,50.26
|tip They are stealthed around this area.
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly NPC's on the ground around this area.
|tip Some are shapeshifted in animal form and some look like night elves.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
Enter the cave |goto 46.27,83.60 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
Leave the cave |goto 46.27,83.60 < 5 |walk
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Run away from them after you click them.
|tip Use the "Sleeping Powder" ability to put enemies to sleep.
|tip It appears as a button on the screen.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.02,84.22
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Slay_Horde_Combatants"
step
click Azerite Deposit##292886+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.63,84.08
step
label "Slay_Horde_Combatants"
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.63,84.08
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
Return to Malfurion Stormrage |goto 42.07,66.87 < 7 |noway |c |q 52257
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto Darnassus/0 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.80,19.30
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 49.00,19.56
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Travel to the Present |nobuff 609811 |goto 48.07,25.67 |q 52977
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.17,24.42
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 7 |c |q 52977 |notravel
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip Use the "Douse" ability on on fires around this area.
|tip It appears as a button on the screen.
|tip It is impossible to complete this objective, you will fail.
step
Return to the Temple of the Moon |goto 43.37,78.31 < 7 |c |q 53095 |notravel
step
Watch the dialogue
turnin A Flicker of Hope##53095 |goto 43.37,78.31
|tip You will turn in this quest automatically.
accept From the Ashes...##53310 |goto 43.37,78.31
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind City |goto Stormwind City/0 49.59,86.53 < 7 |noway |c |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Battle for Lordaeron",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following:\n"..
"\nBattle for Azeroth \"The Battle for Lordaeron\" introduction scenario\n",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
accept Hour of Reckoning##53370 |goto Stormwind City/0 22.39,32.47
|tip You will automatically accept this quest when you enter Stormwind City.
step
talk Master Mathias Shaw##139798
turnin Hour of Reckoning##53370 |goto 22.37,32.44
accept The Battle for Lordaeron##51795 |goto 22.37,32.44
step
talk Captain Angelica##108920
Tell her _"I am ready to sail to Lordaeron."_
Travel to Lordaeron |scenariostart |goto 22.21,32.55 |q 51795 |or |next "Intro_Scenario"
|tip It may take a moment to enter the scenario.
_Or_
Tell her _"I've heard this tale before... <Skip the scenario and begin your next mission.>"_
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
Skip the Battle for Lordaeron |condition readyq(51795) |goto 22.21,32.55 |or |future |next "Intro_Scenario_Completed"
step
label "Intro_Scenario"
Follow the path |goto Ruins of Lordaeron/0 49.10,27.11 < 7 |walk
Continue following the path |goto 48.46,32.39 < 7 |only if walking
Follow the path |goto 48.06,37.86 < 7 |only if walking
Follow the path |goto 48.15,44.06 < 7 |only if walking
Follow the path |goto 48.45,47.84 < 7 |only if walking
Watch the dialogue
|tip Follow General Hammond Clay as we walks.
Follow Hammond Clay to Brill |scenariogoal 1/37049 |goto 47.50,50.40 |q 51795
step
Watch the dialogue
|tip Follow Genn Greymane as he walks.
Charge the Battlefield with Genn |scenariostage 1 |goto 48.13,53.51 |q 51795
step
Follow the path |goto 48.27,54.06 < 7 |only if walking
kill Goblin Shredder##134015 |goto 48.35,57.60 |scenariobonus 2/39783 |q 51795
step
Kill enemies around this area
clicknpc Auchenai Ballista##134016+
|tip They look like wooden artillery vehicles with purple crystals on them on the ground around this area.
|tip You can use them to fight, if you wish.
Defend the Siege Towers |scenariostage 2 |goto 47.89,61.22 |q 51795
step
Watch the dialogue
kill Azerite War Machine##132079
Defeat the Azerite War Machine |scenariostage 3 |goto 48.42,63.71 |q 51795
step
Watch the dialogue
Confront Sylvanas Windrunner |scenariostage 4 |goto 48.42,63.71 |q 51795
step
Kill enemies around this area
talk Wounded Soldier##125622+
|tip They look like Alliance soldiers standing with huge partially filled red bubbles above their heads around this area.
|tip They will appear on your minimap as yellow dots.
|tip Try to avoid the green blight areas on the ground.
|tip You will have to keep moving north, try to stay near Anduin Wrynn as you walk, he will protect you from the blight.
Defend King Anduin and Evacuate the Wounded |scenariostage 5 |goto 48.37,61.80 |q 51795
step
Watch the dialogue
Fall Back with King Anduin Wrynn |scenariostage 6 |q 51795
step
Follow the path |goto 42.13,71.48 < 7 |only if walking
Continue following the path |goto 42.88,72.40 < 7 |only if walking
Watch the dialogue
Kill enemies around this area
Assist Jaina |scenariogoal 7/37297 |goto 43.19,73.53 |q 51795
step
Watch the dialogue
Infiltrate the Keep with King Anduin |scenariostage 7 |goto 42.14,74.46 |q 51795
step
Kill enemies around this area
Defeat the Darkspear Trolls |scenariogoal 8/0 |goto 42.15,76.40 |q 51795
step
kill Windseeker Durja##126612
Defeat Durja |scenariostage 8 |goto 42.09,81.08 |q 51795
step
Follow the path |goto 42.11,81.46 < 7 |only if walking
Watch the dialogue
|tip Follow Anduin Wrynn as he walks.
Follow King Anduin |scenariostage 9 |goto 42.63,85.96 |q 51795
step
Watch the dialogue
Kill enemies around this area
|tip You can click the Flametron 5000 vehicles nearby to use them to fight, if you wish.
|tip They look like mechanical spider vehicles on the ground around this area.
Assault Lordaeron City |scenariostage 10 |goto 43.47,87.15 |q 51795
step
Watch the dialogue
Find Sylvanas Windrunner |scenariostage 11 |goto 49.29,89.41 |q 51795
step
Watch the dialogue
clicknpc Gnomish Gyrocopter##126795
|tip They look like metal helicopters hovering low to the ground around this area.
Ride in the Gnomish Gyrocopter |invehicle |goto 49.00,88.71 |q 51795
step
Watch the dialogue
Use the Gyrocopter to Pursue Sylvanas |scenariostage 12 |goto 48.62,72.66 |q 51795
step
Watch the dialogue
kill High Overlord Saurfang##129179
|tip He will eventually surrender.
Watch the dialogue
Confront High Overlord Saurfang |scenariostage 13 |goto 48.11,74.23 |q 51795
step
Cross the bridge |goto 48.09,74.78 < 7 |only if walking
Follow the path |goto 48.29,75.69 < 7 |only if walking
Enter the building |goto 48.71,76.64 < 5 |walk
Run down the stairs |goto 48.50,77.29 < 5 |walk
Follow the path |goto 48.09,77.65 < 5 |walk
Watch the dialogue
|tip Follow Anduin Wrynn as he walks.
Confront Sylvanas Windrunner |scenarioend |goto 48.10,78.26 |q 51795
step
Complete the "The Battle for Lordaeron" Scenario |q 51795/2
step
label "Intro_Scenario_Completed"
talk Halford Wyrmbane##142930
turnin The Battle for Lordaeron##51795 |goto Stormwind City/0 27.64,21.29
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Silithus: The Wound",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Wound in the World in Silithus",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=110.0,
},[[
step
accept Summons to Stormwind##50371 |goto Stormwind City/0 63.33,72.17
|tip You will automatically accept this quest when you enter Stormwind City.
step
talk Master Mathias Shaw##132255
turnin Summons to Stormwind##50371 |goto 38.97,62.84
accept Gifts of the Fallen##49976 |goto 38.97,62.84
step
talk Master Mathias Shaw##132255
Tell him _"Tell me what happened at Lion's Rest."_
Watch the dialogue
Speak with Mathias Shaw |q 49976/1 |goto 38.97,62.84
step
talk Master Mathias Shaw##132255
turnin Gifts of the Fallen##49976 |goto 38.97,62.84
accept Witness to the Wound##49981 |goto 38.97,62.84
step
Enter the building |goto Silithus/0 69.34,18.08 < 3 |walk
talk Nolan Speed##131963
|tip Inside the building.
turnin Witness to the Wound##49981 |goto Silithus/0 69.42,17.64
accept Free Samples##50047 |goto Silithus/0 69.42,17.64
step
talk Kelsey Steelspark##130030
|tip Inside the building.
accept It's a Sabotage##50046 |goto 69.36,17.61
stickystart "Collect_Mysterious_Ore"
step
Leave the building |goto 69.34,18.07 < 3 |walk
clicknpc Dynamite Bundle##133066+
|tip They look like groups of yellow sticks of dynamite strapped to the legs of metal goblin shredder machines on the ground around this area.
Place #10# Explosives |q 50046/1 |goto 57.31,34.89
step
label "Collect_Mysterious_Ore"
Kill Bilgewater enemies around this area
collect 8 Mysterious Ore##156711 |q 50047/1 |goto 57.31,34.89
step
Enter the building |goto 69.38,19.22 < 5 |walk
talk Khargus Stonemantle##132192
|tip Inside the building.
turnin Free Samples##50047 |goto 69.44,19.25
step
Leave the building |goto 69.37,19.21 < 3 |walk
Enter the building |goto 69.33,18.11 < 3 |walk
talk Kelsey Steelspark##130030
|tip Inside the building.
turnin It's a Sabotage##50046 |goto 69.36,17.61
step
talk Nolan Speed##131963
|tip Inside the building.
accept Desert Research##50372 |goto 69.42,17.64
accept The Twilight Survivor##50228 |goto 69.42,17.64
step
Leave the building |goto 69.34,18.08 < 3 |walk
talk Tammy Tinkspinner##132606
turnin Desert Research##50372 |goto 69.43,19.00
accept The Source of Power##50226 |goto 69.43,19.00
accept Larvae By The Dozen##50227 |goto 69.43,19.00
stickystart "Collect_Silithid_Brains"
step
clicknpc Silithid Broodling##131903+
|tip They look like small pink grubs on the ground around this area.
collect 12 Silithid Broodling##156795 |q 50227/1 |goto 58.74,14.24
step
label "Collect_Silithid_Brains"
Kill Silithid enemies around this area
collect 10 Silithid Brain##156794 |q 50226/1 |goto 58.74,14.24
step
click Twilight Outhouse
accept A Wee Bit O' Cloth##50229 |goto 29.60,69.51
stickystart "Collect_Twilight_Silk"
step
Enter the building |goto 27.14,71.91 < 3 |walk
kill Michiel Voidstrider##132203
|tip Inside the building.
collect Michiel Voidstrider's Head##156796 |q 50228/1 |goto 26.71,71.50
step
label "Collect_Twilight_Silk"
Leave the building |goto 27.09,71.87 < 3 |walk
Kill enemies around this area
collect 8 Twilight Silk##156797 |q 50229/1 |goto 28.75,73.84
step
click Twilight Outhouse
turnin A Wee Bit O' Cloth##50229 |goto 29.60,69.51
step
talk Tammy Tinkspinner##132606
turnin The Source of Power##50226 |goto 69.43,19.00
turnin Larvae By The Dozen##50227 |goto 69.43,19.00
step
Enter the building |goto 69.34,18.08 < 3 |walk
talk Nolan Speed##131963
|tip Inside the building.
turnin The Twilight Survivor##50228 |goto 69.42,17.64
accept A Recent Arrival##50373 |goto 69.42,17.64
step
Leave the building |goto 69.34,18.08 < 3 |walk
talk Archmage Khadgar##130032
turnin A Recent Arrival##50373 |goto 68.96,19.09
accept The Speaker's Perspective##50049 |goto 68.96,19.09
step
talk Magni Bronzebeard##142322
Tell him _"Khadgar asked me to deliver this letter."_
Deliver Khadgar's Letter |q 50049/1 |goto 42.23,44.28
step
talk Magni Bronzebeard##142322
turnin The Speaker's Perspective##50049 |goto 42.22,44.27
accept The Blood of Azeroth##50374 |goto 42.22,44.27
step
Enter the building |goto 69.34,18.08 < 5 |walk
talk Nolan Speed##131963
|tip Inside the building.
turnin The Blood of Azeroth##50374 |goto 69.42,17.64
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following:\n"..
"\nBattle for Azeroth \"The Battle for Lordaeron\" introduction scenario\n"..
"\nObtaining the Heart of Azeroth\n"..
"\nChoosing which zones to complete quests in to level your character\n",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
Starting Guide |next "Fresh_Start_BFA" |only if not completedq(47189)
Starting Guide |next "Choose_Next_Questing_Zone_BFA" |only if completedq(47189)
step
label "Fresh_Start_BFA"
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
Watch the dialogue
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |walk
Run up the stairs |goto 83.48,29.81 < 5 |only if walking
Follow the path |goto 83.34,29.54 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.86,50.43
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Kill_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Kill_Forsaken_Assassins"
kill 8 Forsaken Assassin##140801 |q 53616/1 |goto 36.06,50.26
|tip They are stealthed around this area.
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly NPC's on the ground around this area.
|tip Some are shapeshifted in animal form and some look like night elves.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
Enter the cave |goto 46.27,83.60 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
Leave the cave |goto 46.27,83.60 < 5 |walk
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Run away from them after you click them.
|tip Use the "Sleeping Powder" ability to put enemies to sleep.
|tip It appears as a button on the screen.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.02,84.22
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Slay_Horde_Combatants"
step
click Azerite Deposit##292886+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.63,84.08
step
label "Slay_Horde_Combatants"
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.63,84.08
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
Return to Malfurion Stormrage |goto 42.07,66.87 < 7 |noway |c |q 52257
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto Darnassus/0 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.80,19.30
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 49.00,19.56
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Travel to the Present |nobuff 609811 |goto 48.07,25.67 |q 52977
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.17,24.42
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 7 |c |q 52977 |notravel
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip Use the "Douse" ability on on fires around this area.
|tip It appears as a button on the screen.
|tip It is impossible to complete this objective, you will fail.
step
Return to the Temple of the Moon |goto 43.37,78.31 < 7 |c |q 53095 |notravel
step
Watch the dialogue
turnin A Flicker of Hope##53095 |goto 43.37,78.31
|tip You will turn in this quest automatically.
accept From the Ashes...##53310 |goto 43.37,78.31
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind City |goto Stormwind City/0 49.59,86.53 < 7 |noway |c |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
step
accept Hour of Reckoning##53370 |goto Stormwind City/0 22.39,32.47
|tip You will automatically accept this quest.
step
talk Master Mathias Shaw##139798
turnin Hour of Reckoning##53370 |goto 22.37,32.44
accept The Battle for Lordaeron##51795 |goto 22.37,32.44
step
talk Captain Angelica##108920
Tell her _"I am ready to sail to Lordaeron."_
Travel to Lordaeron |scenariostart |goto 22.21,32.55 |q 51795 |or |next "Intro_Scenario"
|tip It may take a moment to enter the scenario.
_Or_
Tell her _"I've heard this tale before... <Skip the scenario and begin your next mission.>"_
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
Skip the Battle for Lordaeron |condition readyq(51795) |goto 22.21,32.55 |or |future |next "Intro_Scenario_Completed"
step
label "Intro_Scenario"
Find General Hammond Clay |goto Ruins of Lordaeron/0 51.55,18.80 < 10 |q 51795
step
Follow the path |goto 49.10,27.11 < 7 |walk
Continue following the path |goto 48.46,32.39 < 7 |only if walking
Follow the path |goto 48.06,37.86 < 7 |only if walking
Follow the path |goto 48.15,44.06 < 7 |only if walking
Follow the path |goto 48.45,47.84 < 7 |only if walking
Watch the dialogue
|tip Follow General Hammond Clay as we walks.
Follow Hammond Clay to Brill |scenariogoal 1/37049 |goto Ruins of Lordaeron/0 47.50,50.40 |q 51795
step
Follow the path |goto 48.39,48.24 < 7 |only if walking
Find Genn Greymane |goto 46.96,51.07 < 10 |q 51795
step
Watch the dialogue
|tip Follow Genn Greymane as he walks.
Charge the Battlefield with Genn |scenariostage 1 |goto 48.13,53.51 |q 51795
step
Follow the path |goto 48.27,54.06 < 7 |only if walking
kill Goblin Shredder##134015 |goto 48.35,57.60 |scenariobonus 2/39783 |q 51795
step
Kill enemies around this area
clicknpc Auchenai Ballista##134016+
|tip They look like wooden artillery vehicles with purple crystals on them on the ground around this area.
|tip You can use them to fight, if you wish.
Defend the Siege Towers |scenariostage 2 |goto 47.89,61.22 |q 51795
step
Watch the dialogue
kill Azerite War Machine##132079
Defeat the Azerite War Machine |scenariostage 3 |goto 48.42,63.71 |q 51795
step
Watch the dialogue
Confront Sylvanas Windrunner |scenariostage 4 |goto 48.42,63.71 |q 51795
step
Kill enemies around this area
talk Wounded Soldier##125622+
|tip They look like Alliance soldiers standing with huge partially filled red bubbles above their heads around this area.
|tip They will appear on your minimap as yellow dots.
|tip Try to avoid the green blight areas on the ground.
|tip You will have to keep moving north, try to stay near Anduin Wrynn as you walk, he will protect you from the blight.
Defend King Anduin and Evacuate the Wounded |scenariostage 5 |goto 48.37,61.80 |q 51795
step
Watch the dialogue
Fall Back with King Anduin Wrynn |scenariostage 6 |q 51795
step
Follow the path |goto 42.13,71.48 < 7 |only if walking
Continue following the path |goto 42.88,72.40 < 7 |only if walking
Watch the dialogue
Kill enemies around this area
Assist Jaina |scenariogoal 7/37297 |goto 43.19,73.53 |q 51795
step
Watch the dialogue
Infiltrate the Keep with King Anduin |scenariostage 7 |goto 42.14,74.46 |q 51795
step
Kill enemies around this area
Defeat the Darkspear Trolls |scenariogoal 8/0 |goto 42.15,76.40 |q 51795
step
kill Windseeker Durja##126612
Defeat Durja |scenariostage 8 |goto 42.09,81.08 |q 51795
step
Follow the path |goto 42.11,81.46 < 7 |only if walking
Watch the dialogue
|tip Follow Anduin Wrynn as he walks.
Follow King Anduin |scenariostage 9 |goto 42.63,85.96 |q 51795
step
Watch the dialogue
Kill enemies around this area
|tip You can click the Flametron 5000 vehicles nearby to use them to fight, if you wish.
|tip They look like mechanical spider vehicles on the ground around this area.
Assault Lordaeron City |scenariostage 10 |goto 43.47,87.15 |q 51795
step
Watch the dialogue
Find Sylvanas Windrunner |scenariostage 11 |goto 49.29,89.41 |q 51795
step
Watch the dialogue
clicknpc Gnomish Gyrocopter##126795
|tip They look like metal helicopters hovering low to the ground around this area.
Ride in the Gnomish Gyrocopter |invehicle |goto 48.69,89.11 |q 51795
step
Watch the dialogue
Use the Gyrocopter to Pursue Sylvanas |scenariostage 12 |goto 48.62,72.66 |q 51795
step
Watch the dialogue
kill High Overlord Saurfang##129179
|tip He will eventually surrender.
Watch the dialogue
Confront High Overlord Saurfang |scenariostage 13 |goto 48.11,74.23 |q 51795
step
Cross the bridge |goto 48.09,74.78 < 7 |only if walking
Follow the path |goto 48.29,75.69 < 7 |only if walking
Enter the building |goto 48.71,76.64 < 5 |walk
Run down the stairs |goto 48.50,77.29 < 5 |walk
Follow the path |goto 48.09,77.65 < 5 |walk
Watch the dialogue
|tip Follow Anduin Wrynn as he walks.
Confront Sylvanas Windrunner |scenarioend |goto 48.10,78.26 |q 51795
step
Complete the "The Battle for Lordaeron" Scenario |q 51795/2
step
label "Intro_Scenario_Completed"
talk Halford Wyrmbane##142930
turnin The Battle for Lordaeron##51795 |goto Stormwind City/0 27.64,21.29
accept A Dying World##52946 |goto Stormwind City/0 27.64,21.29
step
click Portal to Uldum
Take the Portal to Uldum to Get Closer to Silithus |q 52946/1 |goto 75.24,20.49
step
Reach Silithus |q 52946/2 |goto Silithus/0 79.39,73.20
step
Enter the building |goto Silithus/0 69.34,18.08 < 5 |walk
talk Nolan Speed##131963
|tip Inside the building.
accept Free Samples##50047 |goto 69.42,17.64
step
talk Kelsey Steelspark##130030
|tip Inside the building.
accept It's a Sabotage##50046 |goto 69.36,17.61
stickystart "Collect_Mysterious_Ore"
step
Leave the building |goto 69.34,18.07 < 3 |walk
clicknpc Dynamite Bundle##133066+
|tip They look like groups of yellow sticks of dynamite strapped to the legs of metal goblin shredder machines on the ground around this area.
Place #10# Explosives |q 50046/1 |goto 57.31,34.89
step
label "Collect_Mysterious_Ore"
Kill Bilgewater enemies around this area
collect 8 Mysterious Ore##156711 |q 50047/1 |goto 57.31,34.89
step
Enter the building |goto 69.38,19.22 < 5 |walk
talk Khargus Stonemantle##132192
|tip Inside the building.
turnin Free Samples##50047 |goto 69.44,19.25
step
Leave the building |goto 69.37,19.21 < 3 |walk
Enter the building |goto 69.33,18.11 < 5 |walk
talk Kelsey Steelspark##130030
|tip Inside the building.
turnin It's a Sabotage##50046 |goto 69.36,17.61
step
talk Nolan Speed##131963
|tip Inside the building.
accept Desert Research##50372 |goto 69.42,17.64
accept The Twilight Survivor##50228 |goto 69.42,17.64
step
Leave the building |goto 69.34,18.08 < 3 |walk
talk Tammy Tinkspinner##132606
turnin Desert Research##50372 |goto 69.43,19.00
accept The Source of Power##50226 |goto 69.43,19.00
accept Larvae By The Dozen##50227 |goto 69.43,19.00
stickystart "Collect_Silithid_Brains"
step
clicknpc Silithid Broodling##131903+
|tip They look like small pink grubs on the ground around this area.
collect 12 Silithid Broodling##156795 |q 50227/1 |goto 58.74,14.24
You can find more around [29.29,35.47]
step
label "Collect_Silithid_Brains"
Kill Silithid enemies around this area
collect 10 Silithid Brain##156794 |q 50226/1 |goto 58.74,14.24
You can find more around [29.29,35.47]
step
click Twilight Outhouse
accept A Wee Bit O' Cloth##50229 |goto 29.60,69.51
stickystart "Collect_Twilight_Silk"
step
Enter the building |goto 27.14,71.91 < 5 |walk
kill Michiel Voidstrider##132203
|tip Inside the building.
collect Michiel Voidstrider's Head##156796 |q 50228/1 |goto 26.71,71.50
step
label "Collect_Twilight_Silk"
Leave the building |goto 27.09,71.87 < 3 |walk
Kill enemies around this area
collect 8 Twilight Silk##156797 |q 50229/1 |goto 28.75,73.84
step
click Twilight Outhouse
turnin A Wee Bit O' Cloth##50229 |goto 29.60,69.51
step
talk Tammy Tinkspinner##132606
turnin The Source of Power##50226 |goto 69.43,19.00
turnin Larvae By The Dozen##50227 |goto 69.43,19.00
step
Enter the building |goto 69.34,18.08 < 5 |walk
talk Nolan Speed##131963
|tip Inside the building.
turnin The Twilight Survivor##50228 |goto 69.42,17.64
accept A Recent Arrival##50373 |goto 69.42,17.64
step
Leave the building |goto 69.34,18.08 < 3 |walk
talk Archmage Khadgar##130032
turnin A Recent Arrival##50373 |goto 68.96,19.09
accept The Speaker's Perspective##50049 |goto 68.96,19.09
step
talk Magni Bronzebeard##142322
turnin The Speaker's Perspective##50049 |goto 42.22,44.27
accept The Blood of Azeroth##50374 |goto 42.22,44.27
step
Enter the building |goto 69.34,18.08 < 5 |walk
talk Nolan Speed##131963
|tip Inside the building.
turnin The Blood of Azeroth##50374 |goto 69.42,17.64
step
Leave the building |goto 69.34,18.09 < 3 |walk
talk Magni Bronzebeard##142322
turnin A Dying World##52946 |goto 42.22,44.27
accept The Heart of Azeroth##51211 |goto 42.22,44.27
step
click Titan Translocator
Use the Device in Silithus to Travel to the Chamber of the Heart |q 51211/1 |goto 43.20,44.49
step
Travel to the Chamber of Heart |goto Chamber Of Heart/0 50.12,30.35 < 10 |noway |c |q 51211
step
Run up the stairs |goto 50.28,43.78 < 5 |walk
Follow the path |goto 50.25,48.90 < 5 |walk
click Titan Console
|tip Inside the building.
Choose _(View events that led to Azeroth's wound)_
Watch the dialogue
Witness Past Events on the Titan Console |q 51211/2 |goto 50.16,55.19
step
Watch the dialogue
talk Magni Bronzebeard##136907
|tip Inside the building.
Ask him _"What does Azeroth want of me, Magni?"_
Watch the dialogue
Speak to Magni Within the Chamber of Heart |q 51211/3 |goto 50.15,53.76
step
talk Magni Bronzebeard##136907
|tip Inside the building.
turnin The Heart of Azeroth##51211 |goto 50.14,53.76
accept Infusing the Heart##52428 |goto 50.14,53.76
step
Use the Heart of Azeroth
|tip Use it next to Azerite Cracks around this area.
|tip They look like blue glowing rock stumps inside the building on the ground around this area.
|tip It appears as a button on the screen.
Absorb the Azerite Wounds |q 52428/1 |goto 50.18,59.01
step
Use the Heart of Azeroth
|tip It appears as a button on the screen.
|tip Inside the building.
Watch the dialogue
Use the Heart of Azeroth to Mend the Seal |q 52428/3 |goto 50.14,63.94
step
talk Magni Bronzebeard##136907
|tip Inside the building.
turnin Infusing the Heart##52428 |goto 50.14,53.75
accept To Matters at Hand##51403 |goto 50.14,53.75
step
Follow the path |goto 50.57,48.70 < 5 |walk
click Teleport Pad
|tip Inside the building.
Return to Stormwind |q 51403/1 |goto goto 50.12,30.40
step
talk Halford Wyrmbane##142930
turnin The Speaker's Imperative##51403 |goto Stormwind City/0 27.64,21.29
accept Tides of War##46727 |goto Stormwind City/0 27.64,21.29
step
Enter the building |goto 80.62,37.86 < 5 |walk
Watch the dialogue
|tip Inside the building.
Attend the War Council |q 46727/1 |goto 85.04,32.65
step
clicknpc Vision of Sailor's Memory##139645
|tip Inside the building.
Watch the dialogue
Witness the Vision of the Sailor's Memory |q 46727/2 |goto 85.04,32.65
step
talk Anduin Wrynn##120756
|tip Inside the building.
turnin Tides of War##46727 |goto 85.30,32.28
accept The Nation of Kul Tiras##46728 |goto 85.30,32.28
step
Follow the path |goto 83.83,34.05 < 5 |walk
Leave the building |goto 80.66,37.83 < 3 |walk
talk Lady Jaina Proudmoore##120590 |goto 22.80,24.69
Tell her _"I'm ready to set sail!"_
Speak with Lady Jaina Proudmoore |goto Boralus/0 65.57,50.74 < 50 |noway |c |q 46728 |or |next "Kul_Tiras_Intro_Quests"
_Or_
Tell her _"I've heard this tale before... <Skip the Kul Tiras introductory quests and begin your journey in Boralus.>"_
Skip the Kul Tiras Introductory Quests |condition completedq(46728) |or |next "Skip_Kul_Tiras_Intro_Quests"
step
label "Kul_Tiras_Intro_Quests"
talk Lady Jaina Proudmoore##120922
turnin The Nation of Kul Tiras##46728 |goto 65.58,50.73
accept Daughter of the Sea##51341 |goto 65.58,50.73
step
Watch the dialogue
Attend the Audience with Katherine Proudmoore |q 51341/1
step
Travel to Tol Dagor |goto Tol Dagor/7 46.51,47.97 < 10 |noway |c |q 51341
step
talk Flynn Fairwind##121239
|tip Inside the building.
turnin Daughter of the Sea##51341 |goto Tol Dagor/7 47.38,46.26
accept Out Like Flynn##47098 |goto Tol Dagor/7 47.38,46.26
step
Watch the dialogue
clicknpc Flynn Fairwind##121239
|tip Inside the building.
Watch the dialogue
Punch Flynn |q 47098/1 |goto 46.63,45.52
step
Follow the path |goto 45.43,43.81 < 5 |walk
click Cell Block Lever
|tip Inside the building.
Watch the dialogue
Pull the Cell Block Lever |q 47098/2 |goto 46.60,41.15
step
click Equipment Locker##213651
|tip Inside the building.
Recover the Equipment |q 47098/3 |goto 46.95,44.47
step
Follow the path |goto 45.54,43.32 < 5 |walk
kill Block Warden Carmine##124024 |q 47098/4 |goto 40.28,54.77
|tip Inside the building.
step
click Glittering Gunpowder
|tip Inside the building.
collect Glittering Gunpowder##160326 |q 47098/5 |goto 43.57,54.08
step
Follow the path |goto 42.10,50.92 < 5 |walk
Cross the bridge |goto 43.02,46.30 < 5 |walk
Follow the path |goto 40.67,43.24 < 5 |walk
click Cell Block Gate
|tip Inside the building.
Watch the dialogue
Open the Cell Block Gate |q 47098/6 |goto 43.09,36.95
step
Follow the path |goto 43.20,36.79 < 5 |walk
Run down the stairs |goto 44.58,35.82 < 5 |walk
Run down the stairs |goto 48.23,39.60 < 5 |walk
Run down the stairs |goto 49.34,42.11 < 5 |walk
Follow the path |goto 47.92,43.91 < 5 |c |q 47098
step
Follow the path |goto 47.18,43.29 < 5 |walk
Continue following the path |goto 44.19,41.76 < 5 |walk
Enter the Sewers |q 47098/7 |goto 39.10,51.40
|tip Inside the building.
step
Follow the path |goto 38.07,54.60 < 3 |walk
Continue following the path |goto 42.46,58.80 < 3 |walk
Continue following the path |goto 49.13,45.34 < 3 |walk
Leave the tunnel |goto 51.12,47.46 < 3 |walk
Follow the path |goto 54.13,49.22 < 7 |only if walking
Continue following the path |goto 60.47,48.84 < 7 |only if walking
Continue following the path |goto 63.13,44.77 < 7 |only if walking
Continue following the path |goto 64.44,34.51 < 7 |only if walking
clicknpc Getaway Boat##124030
Board the Getaway Boat |q 47098/8 |goto 60.98,26.32
step
Watch the dialogue
Travel to Boralus |goto Boralus/0 75.87,23.40 < 50 |noway |q 47098
step
label "Skip_Kul_Tiras_Intro_Quests"
talk Taelia##121235
turnin Out Like Flynn##47098 |goto 75.70,23.59
accept Get Your Bearings##47099 |goto 75.70,23.59
step
Follow the path |goto 74.17,23.71 < 5 |only if walking
Watch the dialogue
Visit the Ferry Dock |q 47099/1 |goto 74.25,24.58
step
Follow the path |goto 74.17,22.68 < 5 |only if walking
Run up the stairs |goto 73.75,21.73 < 3 |c |q 47099
step
Follow the path |goto 73.79,22.80 < 5 |only if walking
Run up the stairs |goto 74.95,23.02 < 5 |only if walking
Cross the bridge |goto 75.82,22.76 < 3 |only if walking
Enter the building |goto 75.57,19.08 < 5 |walk
Watch the dialogue
|tip Inside the building.
Visit the Tradewinds Counting House |q 47099/2 |goto 75.57,17.92
step
Leave the building |goto 75.57,19.08 < 3 |walk
Follow the path |goto 74.95,19.62 < 5 |only if walking
Run up the stairs |goto 74.54,18.54 < 5 |only if walking
Run up the stairs |goto 74.62,17.59 < 5 |only if walking
Follow the path |goto 75.12,17.14 < 5 |only if walking
Continue following the path |goto 74.37,15.36 < 5 |only if walking
Run up the stairs |goto 73.46,14.16 < 5 |only if walking
Enter the building |goto 73.55,13.71 < 5 |walk
Watch the dialogue
|tip Inside the building.
Visit the Snug Harbor Tavern |q 47099/3 |goto 73.63,13.05
step
talk Wesley Rockhold##135153
|tip Inside the building.
home The Snug Harbor |goto 74.12,12.68 |q 47189 |future
step
Leave the building |goto 73.50,13.71 < 3 |walk
Follow the path |goto 70.40,16.56 < 7 |only if walking
Watch the dialogue
Visit the Flight Master |q 47099/4 |goto 67.14,15.35
step
talk Joan Weber##124725
fpath Tradewinds Market |goto 66.97,15.01
step
_Next to you:_
talk Taelia
turnin Get Your Bearings##47099
accept The Old Knight##46729
step
Follow the path |goto 68.05,15.55 < 7 |only if walking
Jump down here |goto 70.28,17.55 < 5 |only if walking
Run up the stairs |goto 69.12,21.23 < 5 |only if walking
Enter the building |goto 68.83,21.11 < 5 |walk
Follow the path |goto 67.80,20.90 < 5 |walk
Run down the stairs |goto 67.43,21.35 < 5 |walk
Watch the dialogue
Find Cyrus Crestfall |q 46729/1 |goto 67.08,23.47
step
Run down the stairs |goto 67.39,22.88 < 3 |walk
talk Cyrus Crestfall##122370
|tip Inside the building.
Choose _<Shake his hand.>_
Speak with Cyrus Crestfall |q 46729/2 |goto 68.01,21.89
step
Watch the dialogue
|tip Inside the building.
Hear Cyrus' Tale |q 46729/3 |goto 68.01,21.89
step
talk Taelia##121235
|tip Inside the building.
turnin The Old Knight##46729 |goto 68.17,21.97
accept Sanctum of the Sages##47186 |goto 68.17,21.97
step
Watch the dialogue
talk Cyrus Crestfall##122370
|tip Inside the building.
accept Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
Run up the stairs |goto 67.55,22.92 < 3 |walk
Run up the stairs |goto 67.22,22.59 < 3 |walk
Follow the path |goto 67.43,21.40 < 3 |walk
Follow the path |goto 67.84,20.73 < 5 |walk
Leave the building |goto 68.79,21.11 < 3 |walk
Follow the path |goto 69.54,20.49 < 7 |only if walking
Enter the building |goto 70.40,17.68 < 5 |walk
talk 7th Legion Magus##137066
|tip Inside the building.
Tell her _"The local authority has given us permission to open portals here."_
Speak with the 7th Legion Magus |q 47186/1 |goto 70.74,16.31
step
Leave the building |goto 70.40,17.68 < 3 |walk
Run up the stairs |goto 69.12,21.23 < 5 |only if walking
Enter the building |goto 68.83,21.11 < 5 |walk
Follow the path |goto 67.80,20.90 < 5 |walk
Run down the stairs |goto 67.43,21.35 < 5 |walk
Run down the stairs |goto 67.39,22.88 < 3 |walk
talk Taelia##121235
|tip Inside the building.
turnin Sanctum of the Sages##47186 |goto  68.17,21.97
accept A Nation Divided##47189 |goto 68.17,21.97
step
Watch the dialogue
click Scouting Map
|tip Inside the building.
Inspect the Scouting Map |q 47189/1 |goto 68.38,22.10
step
talk Taelia##121235
|tip Inside the building.
turnin A Nation Divided##47189 |goto 68.17,21.97
step
label "Choose_Next_Questing_Zone_BFA"
click Scouting Map
|tip Inside the building.
|tip You are choosing the zone you wish to do quests in next.
|tip Pick whichever you like, it doesn't matter.
accept Tiragarde Sound##47960 |or |goto Boralus/0 68.38,22.06 |next "Tiragarde_Sound_Start" |only if not completedq(47960)
accept Drustvar##47961 |or |goto Boralus/0 68.38,22.06 |next "Drustvar_Start" |only if not completedq(47961)
accept Stormsong Valley##47962 |or |goto Boralus/0 68.38,22.06 |next "Stormsong_Valley_Start" |only if not completedq(47962)
Completing Guide |next "All_Zones_Completed_BFA" |only if completedq(47960) and completedq(47962) and completedq(47961)
step
label "Tiragarde_Sound_Start"
talk Taelia##121235
|tip Inside the building.
turnin Tiragarde Sound##47960 |goto Boralus/0 68.17,21.97 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Tiragarde Sound"
step
label "Drustvar_Start"
talk Taelia##121235
|tip Inside the building.
turnin Drustvar##47961 |goto Boralus/0 68.17,21.97 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Drustvar"
step
label "Stormsong_Valley_Start"
talk Taelia##121235
|tip Inside the building.
turnin Stormsong Valley##47962 |goto Boralus/0 68.17,21.97 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Stormsong Valley"
step
label "All_Zones_Completed_BFA"
_Congratulations!_
You unlocked all of the questing zones.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Tiragarde Sound",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Tiragarde Sound storylines:\n\nA Nation Divided\nCastaways and Cutouts\nDefenders of Daelin's Gate\nThe Norwington Estate\nThe Ashvane Trading Company\nFreehold\nThe Shadow Over Anglepoint",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
talk Flynn Fairwind##121239
|tip Inside the building.
accept The Smoking Gun##47181 |goto Boralus/0 67.59,22.22
step
Use Flynn's Pistol
|tip It appears as a button on the screen.
|tip Inside the building.
Shoot the Water Barrel |q 47181/1 |goto 67.72,21.97
step
talk Flynn Fairwind##121239
|tip Inside the building.
turnin The Smoking Gun##47181 |goto 67.59,22.22
step
talk Cyrus Crestfall##122370
|tip Inside the building.
accept The Ashvane Trading Company##47485 |goto 68.01,21.89
step
Run up the stairs |goto Boralus/0 67.51,22.92 < 3 |walk
Run up the stairs |goto Boralus/0 67.22,22.55 < 3 |walk
Follow the path |goto Boralus/0 67.43,21.40 < 3 |walk
Follow the path |goto Boralus/0 67.80,20.73 < 5 |walk
Leave the building |goto Boralus/0 68.88,21.15 < 3 |walk
Follow the path |goto Boralus/0 70.36,18.88 < 5 |only if walking
Run up the stairs |goto Boralus/0 71.44,17.72 < 5 |only if walking
Run down the stairs |goto Boralus/0 71.81,16.73 < 5 |only if walking
talk Donald Harris##124289
accept A Bundle of Furs##51144 |goto Boralus/0 72.18,16.02
step
Run up the stairs |goto  71.98,16.44 < 3 |only if walking
Run up the stairs |goto 71.64,16.73 < 3 |only if walking
Follow the path |goto 71.23,16.48 < 5 |only if walking
Run up the stairs |goto 68.31,15.67 < 5 |only if walking
Run down the stairs |goto 67.40,16.43 < 5 |only if walking
Follow the path |goto 66.03,20.44 < 7 |only if walking
Run down the stairs |goto 63.84,20.34 < 5 |only if walking
Follow the path |goto 62.40,18.58 < 5 |only if walking
Continue following the path |goto 57.86,16.16 < 7 |only if walking
Cross the bridge |goto 52.58,18.86 < 7 |only if walking
Follow the road |goto 48.66,19.52 < 7 |only if walking
Follow the road |goto Tiragarde Sound/0 68.15,24.22 < 7 |only if walking
talk Davey Brindle##134776
accept Worker's Rights##50699 |goto Tiragarde Sound/0 67.40,24.14
step
Follow the path |goto 67.03,23.63 < 7 |only if walking
talk Mariah McKee##133210
fpath Hatherford |goto 66.93,23.07
step
Follow the path |goto 67.02,23.61 < 7 |only if walking
click WANTED: Gryphon 'Nappers
accept WANTED: Gryphon 'Nappers##51358 |goto 66.85,24.36
step
Enter the building |goto 66.42,24.41 < 5 |walk
talk Dandy Jones##133214
|tip Inside the building.
turnin A Bundle of Furs##51144 |goto 66.27,24.29
step
talk Dandy Jones##133214
|tip Inside the building.
home Hatherford |goto 66.27,24.29 |q 48903 |future
step
Leave the building |goto 66.42,24.42 < 3 |walk
talk Hatherford Guard##139089
accept Drust in Time##50700 |goto 66.32,24.81
step
click Formal Invitation
accept The Norwington Festival##48070 |goto 67.14,24.80
stickystart "Kill_Silent_Boris"
step
Follow the path |goto 66.87,24.60 < 7 |only if walking
Follow the path up |goto 67.38,23.48 < 7 |only if walking
Follow the path up |goto 67.34,22.72 < 7 |only if walking
Enter the cave |goto 67.36,22.01 < 5 |walk
kill Lindel the Snatcher##137367 |q 51358/1 |goto 67.27,21.82
|tip Inside the cave.
|tip You may need help with this.
step
label "Kill_Silent_Boris"
kill Silent Boris##137369 |q 51358/2 |goto 67.27,21.82
|tip Inside the cave.
|tip You may need help with this.
step
Leave the cave |goto 67.37,22.03 < 3 |walk
Follow the road down |goto 68.30,22.06 < 7 |only if walking
Follow the path down |goto 68.58,20.94 < 7 |only if walking
Enter the building |goto 68.89,20.43 < 3 |walk
talk Maynard Algerson##129613
|tip Inside the building.
turnin Worker's Rights##50699 |goto 68.93,20.59
accept Maximizing Resources##49465 |goto 68.93,20.59
accept Inventory Deficit##49452 |goto 68.93,20.59
step
Leave the building |goto 68.90,20.43 < 3 |walk
talk Benjamin Algerson##129669
accept Time Off Requests##49451 |goto 68.89,19.84
stickystart "Collect_Reclaimed_Axes"
stickystart "Collect_Wood_Adorned_Skulls"
step
Follow the path |goto 68.53,18.84 < 7 |only if walking
Follow the path up |goto 67.94,17.66 < 7 |only if walking
Follow the path up |goto 67.30,16.93 < 7 |only if walking
Follow the path up |goto 66.86,17.00 < 7 |only if walking
talk Lyssa Treewarden##129670
accept Give a Dam##49453 |goto 66.62,17.32
accept Sowing Saplings##48557 |goto 66.62,17.32
stickystart "Grow_Trees_In_Loamy_Soil"
step
clicknpc Woodchewing Beaver##129724+
Shoo #6# Woodchewing Beavers |q 49453/1 |goto 66.66,16.64
step
label "Grow_Trees_In_Loamy_Soil"
click Loamy Soil+
|tip They look like piles of green and brown dirt on the ground around this area.
Grow #4# Trees in Loamy Soil |q 48557/1 |goto 66.66,16.64
step
talk Lyssa Treewarden##129670
turnin Give a Dam##49453 |goto 66.62,17.32
turnin Sowing Saplings##48557 |goto 66.62,17.32
step
Follow the path down |goto 67.10,16.85 < 7 |only if walking
Follow the path down |goto 67.41,16.95 < 7 |only if walking
clicknpc Entangled Lumberjack##129745+
|tip They look like standing humans trapped in brown tree roots on the ground around this area.
Free #5# Entangled Lumberjacks |q 49451/1 |goto 68.28,18.29
step
label "Collect_Reclaimed_Axes"
click Abandoned Axe##281909+
|tip They look like metal hatchets on the ground around this area.
collect 5 Reclaimed Axe##158063 |q 49452/1 |goto 68.28,18.29
step
label "Collect_Wood_Adorned_Skulls"
Kill enemies around this area
|tip Timberfang Summonlings will not drop the quest item.
collect 5 Wood-Adorned Skull##154993 |q 49465/1 |goto 68.28,18.29
step
Follow the path |goto 68.46,18.66 < 5 |only if walking
Follow the path |goto 68.75,20.29 < 5 |only if walking
Enter the building |goto 68.90,20.43 < 3 |walk
talk Maynard Algerson##129613
|tip Inside the building.
turnin Maximizing Resources##49465 |goto 68.93,20.59
turnin Inventory Deficit##49452 |goto 68.93,20.59
turnin Time Off Requests##49451 |goto 68.93,20.59
accept Emergent Strategy##48369 |goto 68.93,20.59
step
Leave the building |goto 68.90,20.43 < 3 |walk
Follow the path |goto 68.75,20.25 < 5 |only if walking
Continue following the path |goto 68.91,19.44 < 5 |only if walking
Cross the bridge |goto 69.35,19.26 < 5 |only if walking
Follow the path |goto 70.17,18.85 < 5 |only if walking
Follow the path |goto 70.13,18.55 < 5 |only if walking
talk Benjamin Algerson##129669
turnin Emergent Strategy##48369 |goto 70.09,18.58
accept Required Webinar##49468 |goto 70.09,18.58
accept Pest Prevention##49454 |goto 70.09,18.58
accept Incident Reports##49450 |goto 70.09,18.58
stickystart "Free_Webbed_Lumberjacks"
stickystart "Destroy_Mossfang_Eggs"
stickystart "Slay_Enthralled_Beasts"
step
Follow the path |goto 70.50,18.72 < 5 |only if walking
Continue following the path |goto 71.21,17.73 < 7 |only if walking
Continue following the path |goto 71.98,17.45 < 7 |only if walking
talk Terrence Foster##134325
accept The Witch's Pet##50058 |goto 72.96,17.54
stickystop "Free_Webbed_Lumberjacks"
stickystop "Destroy_Mossfang_Eggs"
stickystop "Slay_Enthralled_Beasts"
step
Enter the cave |goto 73.04,17.85 < 5 |walk
kill Mossfang Matriarch##129833 |q 50058/1 |goto 73.50,18.74
|tip Inside the cave.
step
Click the Complete Quest Box:
turnin The Witch's Pet##50058
stickystart "Destroy_Mossfang_Eggs"
stickystart "Slay_Enthralled_Beasts"
step
label "Free_Webbed_Lumberjacks"
Leave the cave |goto 73.02,17.82 < 5 |c |q 49468
step
clicknpc Webbed Lumberjack##134122+
|tip They look like squirming cocoons on the ground around this area.
Free #5# Webbed Lumberjacks |q 49468/1 |goto 71.11,17.75
step
label "Destroy_Mossfang_Eggs"
clicknpc Mossfang Egg##129842+
|tip They look like large white eggs on the ground around this area.
Destroy #12# Mossfang Eggs |q 49454/1 |goto 71.11,17.75
step
label "Slay_Enthralled_Beasts"
Kill Enthralled enemies around this area
Slay #10# Enthralled Beasts |q 49450/1 |goto 71.11,17.75
step
Follow the path |goto 72.14,17.51 < 10 |only if walking
Continue following the path |goto 71.05,17.85 < 7 |only if walking
Continue following the path |goto 70.69,18.64 < 7 |only if walking
talk Benjamin Algerson##129669
turnin Required Webinar##49468 |goto 70.09,18.58
turnin Pest Prevention##49454 |goto 70.09,18.58
turnin Incident Reports##49450 |goto 70.09,18.58
accept Witch of the Woods##49467 |goto 70.09,18.58
step
Follow the path |goto 70.73,18.52 < 5 |only if walking
Follow the path up |goto 71.11,17.55 < 7 |only if walking
Continue up the path |goto 70.98,16.74 < 7 |only if walking
Continue up the path |goto 71.16,15.56 < 7 |only if walking
Follow the path |goto 70.50,14.28 < 7 |only if walking
kill Witch of the Woods##129625
collect Petula's Locket##155586 |q 49467/1 |goto 70.45,13.75
step
Follow the path |goto 70.11,13.40 < 7 |only if walking
Follow the path |goto 69.23,13.32 < 7 |only if walking
talk Maynard Algerson##129613
turnin Witch of the Woods##49467 |goto 68.85,13.17
step
talk Dandy Jones##133214
|tip Inside the building.
turnin WANTED: Gryphon 'Nappers##51358 |goto 66.27,24.29
step
Leave the building |goto 66.42,24.41 < 3 |walk
Cross the bridge |goto 66.34,24.89 < 5 |only if walking
Follow the road |goto 65.57,25.95 < 5 |only if walking
Continue following the road |goto 64.02,28.22 < 7 |only if walking
Follow the path |goto 62.96,29.56 < 5 |only if walking
talk Drogrin Alewhisker##128381
turnin Drust in Time##50700 |goto 62.73,29.95
accept Chasing the Leader##49225 |goto 62.72,29.95
accept The Ruins Fought Back##49229 |goto 62.72,29.95
step
talk Recruit Brutis##130101
accept A Marine Out of Water##49234 |goto 62.95,29.91
stickystart "Kill_Ancient_Protectors"
step
Follow the path up |goto 62.83,29.13 < 7 |only if walking
Follow the path |goto 62.77,28.31 < 5 |only if walking
Enter the cave |goto 62.87,27.34 < 5 |walk
Follow the path down |goto Tiragarde Sound/1 43.28,85.62 < 5 |walk |notravel
Follow the path |goto Tiragarde Sound/1 40.00,72.97 < 5 |walk |notravel
Follow the path |goto Tiragarde Sound/1 43.84,65.87 < 5 |walk
Follow the path |goto Tiragarde Sound/1 47.46,65.22 < 5 |walk
talk Birch Tomlin##128354
|tip Inside the cave.
accept I'm a Druid, Not a Priest##49233 |goto Tiragarde Sound/1 50.36,70.29
step
talk Pendi Cranklefuse##128353
|tip Inside the cave.
accept Salvaging a Disaster##49232 |goto 51.26,70.58
stickystart "Recover_Drust_Relics"
stickystart "Free_Cursed_Raiders"
stickystart "Kill_Ancient_Protectors"
step
Follow the path |goto 56.10,59.66 < 5 |walk
Continue following the path |goto 63.04,55.90 < 5 |walk
Continue following the path |goto 65.15,51.15 < 5 |walk
Follow the path up |goto 63.67,44.19 < 5 |walk
talk Hilde Firebreaker##128349
|tip Inside the cave.
turnin Chasing the Leader##49225 |goto 58.68,37.79
accept Backup While I Pack Up##49260 |goto 58.68,37.79
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Inside the cave.
kill Fallen Keeper##128608
Defend Firebreaker |q 49260/1 |goto 60.16,38.76
step
talk Hilde Firebreaker##128349
|tip Inside the cave.
turnin Backup While I Pack Up##49260 |goto 58.68,37.79
step
Follow the path |goto 62.31,44.76 < 5 |walk
Continue following the path |goto 64.57,52.43 < 5 |walk
Continue following the path |goto 61.84,56.20 < 5 |walk
Follow the path up |goto 58.00,54.25 < 5 |walk
Follow the path up |goto 51.73,48.48 < 5 |walk
Continue up the path |goto 42.36,55.21 < 5 |walk
Follow the path |goto Tiragarde Sound/2 38.20,65.39 < 5 |c |q 49234
step
Follow the path |goto 48.28,84.54 < 5 |walk
Follow the path |goto 64.30,64.84 < 5 |walk
Continue following the path |goto 67.60,44.45 < 5 |walk
Continue following the path |goto 61.10,23.43 < 5 |walk
kill Awakened Guardian##128302 |q 49234/1 |goto 64.20,11.34
|tip Upstairs inside the cave.
step
label "Recover_Drust_Relics"
Jump down carefully here |goto 59.26,36.95
Return to the Bottom Floor of the Cave |goto Tiragarde Sound/1 56.41,55.78 < 20 |noway |c |q 49232
step
click Packaged Relics##277427+
|tip They look like wooden boxes on the ground around this area inside the cave.
collect 6 Drust Relic##153349 |q 49232/1 |goto Tiragarde Sound/1 56.43,56.86
step
label "Free_Cursed_Raiders"
use the Repurposed Gilnean Staff##153350
|tip Use it on Cursed Raiders around this area inside the cave.
Free #5# Cursed Raiders |q 49233/1 |goto 56.43,56.86
step
label "Kill_Ancient_Protectors"
kill 6 Ancient Protector##128285 |q 49229/1 |goto 56.43,56.86
|tip Inside and outside the cave.
step
talk Pendi Cranklefuse##128353
|tip Inside the cave.
turnin Salvaging a Disaster##49232 |goto 51.25,70.62
step
talk Birch Tomlin##128354
|tip Inside the cave.
turnin I'm a Druid, Not a Priest##49233 |goto 50.37,70.39
step
Follow the path |goto 48.80,65.90 < 5 |walk
Follow the path up |goto 46.15,64.93 < 5 |walk
Continue up the path |goto 40.20,71.01 < 5 |walk
Continue up the path |goto 41.48,80.21 < 5 |walk
Leave the cave |goto Tiragarde Sound/0 62.87,27.34 < 5 |walk |notravel
Follow the path down |goto Tiragarde Sound/0 62.77,28.38 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 62.91,29.53 < 7 |only if walking
talk Recruit Brutis##130101
turnin A Marine Out of Water##49234 |goto Tiragarde Sound/0 62.82,29.87
step
talk Drogrin Alewhisker##128381
turnin The Ruins Fought Back##49229 |goto 62.73,29.95
step
Follow the road up |goto 62.56,29.44 < 5 |only if walking
Follow the road |goto 61.95,29.88 < 7 |only if walking
Follow the path down |goto 61.33,30.10 < 5 |only if walking
talk Jenny Swiftbrook##140752
accept She Sells Seashells##52258 |goto 60.99,30.85
stickystart "Collect_Sparkling_Tidescales"
step
Follow the path down |goto 60.37,30.93 < 7 |only if walking
Follow the path |goto 59.17,32.12 < 10 |only if walking
clicknpc Gleaming Seacrab##140755+
|tip They look like small crabs with spiral shells walking on the ground around this area.
collect 4 Gleaming Spiral##161439 |q 52258/1 |goto 58.70,32.79
step
label "Collect_Sparkling_Tidescales"
click Sparkling Tidescale##161440+
|tip They look like white and brown seashells on the ground around this area.
collect 6 Sparkling Tidescale##161440 |q 52258/2 |goto 58.70,32.79
step
Follow the path |goto 59.01,32.28 < 10 |only if walking
Follow the path up |goto 60.15,31.00 < 7 |only if walking
talk Jenny Swiftbrook##140752
turnin She Sells Seashells##52258 |goto 60.99,30.86
step
Follow the road up |goto 61.23,29.99 < 7 |only if walking
Continue following the road |goto 60.18,29.58 < 7 |only if walking
Continue following the road |goto 58.04,28.19 < 7 |only if walking
Continue following the road |goto 57.17,27.96 < 7 |only if walking
Continue following the road |goto 56.64,26.71 < 7 |only if walking
Follow the path |goto 56.12,25.94 < 7 |only if walking
Follow the path |goto 56.00,25.25 < 7 |only if walking
talk Abbey Watkins##125309
turnin The Norwington Festival##48070 |goto 55.45,24.67
accept The Stoat Hunt##48077 |goto 55.45,24.67
step
talk Harold Beckett##125398
accept An Element of Danger##48080 |goto 55.51,24.59
accept Bolas and Birds##48616 |goto 55.51,24.59
stickystart "Collect_Soft_Stoat_Pelts"
stickystart "Shoot_Down_Hollowbeak_Falcons"
stickystart "Collect_Rugged_Boar_Tusks"
step
Follow the path |goto 56.48,24.28 < 10 |only if walking
Follow the path |goto 57.56,23.78 < 7 |only if walking
Follow the path |goto 57.95,24.70 < 7 |only if walking
talk Caleb Batharen##127803
accept Settle the Score##48965 |goto 58.29,25.40
step
Follow the path |goto 58.51,25.57 < 7 |only if walking
Continue following the path |goto 59.16,24.48 < 10 |only if walking
Continue following the path |goto 60.04,22.85 < 10 |only if walking
Continue following the path |goto 60.94,21.89 < 10 |only if walking
Enter the cave |goto 61.22,22.10 < 5 |walk
kill Chartusk##127800 |q 48965/1 |goto 61.70,22.73
|tip He walks around this area inside the cave.
step
Leave the cave |goto 61.18,22.05 < 3 |walk
Follow the path |goto 60.74,22.00 < 10 |only if walking
Follow the path down |goto 60.03,22.83 < 10 |only if walking
Follow the path down |goto 59.63,23.83 < 10 |only if walking
Follow the path |goto 58.40,25.60 < 7 |only if walking
clicknpc Caleb Batharen##127803
turnin Settle the Score##48965 |goto 58.29,25.40
step
label "Collect_Soft_Stoat_Pelts"
clicknpc Stoat Den##127016+
|tip They look like brown low piles of dirt on the ground around this area.
kill Faintstep Stoat##125327+
|tip They appear on the ground.
collect 5 Soft Stoat Pelt##152642 |q 48077/1 |goto 57.99,25.19
step
label "Shoot_Down_Hollowbeak_Falcons"
use the Bola Launcher##152643
|tip Use it on Hollowbeak Falcons around this area.
|tip They look like brown birds flying in the air around this area.
Shoot Down #6# Hollowbeak Falcons |q 48616/1 |goto 57.99,25.19
step
label "Collect_Rugged_Boar_Tusks"
kill Mudbrush Boar##125347+
collect 8 Rugged Boar Tusk##151913 |q 48080/1 |goto 57.99,25.19
step
Follow the path |goto 57.99,24.73 < 10 |only if walking
Follow the path down |goto 57.81,24.09 < 7 |only if walking
Follow the path down |goto 57.43,23.76 < 7 |only if walking
Follow the path down |goto 56.05,24.54 < 10 |only if walking
talk Harold Beckett##125398
turnin An Element of Danger##48080 |goto 55.52,24.59
turnin Bolas and Birds##48616 |goto 55.52,24.59
step
talk Abbey Watkins##125309
turnin The Stoat Hunt##48077 |goto 55.45,24.67
step
talk Melissa Kenny##127006
accept Runaway Rider##48670 |goto 55.59,24.60
step
Jump down here |goto 55.55,24.09 < 5 |only if walking
Follow the path |goto 55.01,23.14 < 10 |only if walking
Follow the path up |goto 54.24,22.28 < 7 |only if walking
Follow the path up |goto 54.00,21.13 < 7 |only if walking
Follow the path |goto 54.17,20.29 < 7 |only if walking
talk Melissa Kenny##127144
turnin Runaway Rider##48670 |goto 54.48,19.39
accept Following Eddie's Trail##48196 |goto 54.48,19.39
accept Troublesome Troglodytes##48195 |goto 54.48,19.39
stickystart "Kill_Grimestone_Throwers"
stickystart "Kill_Grimestone_Bullies"
step
Follow the path |goto 55.08,19.08 < 7 |only if walking
talk Trapped Saurolisk##126804
accept Saurolisk Escape##48597 |goto 55.95,17.51
stickystart "Free_Trapped_Saurolisks"
step
clicknpc Hotshot##127149
Find Hotshot |q 48196/1 |goto 56.09,17.96
step
click Recipe Rock
accept Stone Soup##48778 |goto 56.16,17.96
stickystart "Collect_Unidentifiable_Meat"
stickystart "Collect_Saurolisk_Scale"
stickystart "Collect_Soup_Stones"
step
Follow the path up |goto 56.07,17.17 < 7 |only if walking
click Bag of Horse Treats
Find the Bag of Horse Treats |q 48196/2 |goto 56.21,16.14
step
Enter the cave |goto 55.99,15.37 < 5 |walk
kill Boneface the Giant##125475
|tip Inside the cave.
collect Boneface's "Key"##152109 |q 48196/3 |goto 55.68,14.30
step
click Trogg Cage
|tip Inside the cave.
Free Eddie Norwington |q 48196/4 |goto 55.60,14.57
step
talk Eddie Norwington##127091
|tip Inside the cave.
turnin Following Eddie's Trail##48196 |goto 55.60,14.57
step
Leave the cave |goto 55.99,15.35 < 3 |walk
Follow the path |goto 56.39,15.43 < 7 |only if walking
Follow the path down |goto 56.85,14.99 < 7 |only if walking
Follow the path |goto 57.44,15.03 < 7 |only if walking
click Stirring Bone
collect Stirring Bone##152678 |q 48778/4 |goto 58.07,14.57
step
label "Collect_Unidentifiable_Meat"
kill Grimestone Chef##127150+
collect 2 Unidentifiable Meat##152671 |q 48778/2 |goto 57.52,15.14
step
label "Collect_Saurolisk_Scale"
kill Grimestone Handler##127203+
collect Saurolisk Scale##152675 |q 48778/3 |goto 57.52,15.14
step
label "Collect_Soup_Stones"
click Soup Stone##276270+
|tip They look like grey rocks on the ground around this area.
collect 4 Soup Stone##152670 |q 48778/1 |goto 57.52,15.14
step
Follow the path up |goto 57.35,14.98 < 7 |only if walking
Follow the path |goto 56.97,14.90 < 7 |only if walking
click Bubbling Cauldron
turnin Stone Soup##48778 |goto 56.54,15.55
step
label "Free_Trapped_Saurolisks"
click Post##278813+
|tip They look like wooden poles with rope tied to big lizard looking creatures next to them on the ground around this area.
Free #6# Trapped Saurolisks |q 48597/1 |goto 56.17,15.83
step
label "Kill_Grimestone_Throwers"
kill 3 Grimestone Thrower##125469 |q 48195/2 |goto 56.17,15.83
step
label "Kill_Grimestone_Bullies"
kill 8 Grimestone Bully##125467 |q 48195/1 |goto 56.17,15.83
step
Follow the path down |goto 56.14,16.46 < 7 |only if walking
Follow the path |goto 56.10,17.47 < 7 |only if walking
Follow the path |goto 55.14,19.05 < 7 |only if walking
talk Melissa Kenny##127144
turnin Troublesome Troglodytes##48195 |goto 54.47,19.39
turnin Saurolisk Escape##48597 |goto 54.47,19.39
accept The Lord's Behest##48003 |goto 54.47,19.39
step
Follow the path down |goto 54.25,20.08 < 7 |only if walking
Follow the path down |goto 54.02,20.77 < 7 |only if walking
Follow the path |goto 54.30,23.16 < 7 |only if walking
Follow the path |goto 54.22,24.16 < 7 |only if walking
Cross the bridge |goto 55.12,25.76 < 7 |only if walking
Cross the bridge |goto 54.22,26.33 < 7 |only if walking
Follow the path |goto 53.27,26.94 < 7 |only if walking
Follow the path |goto 52.67,27.17 < 7 |only if walking
talk Lord Aldrius Norwington##124802
turnin The Lord's Behest##48003 |goto 51.57,27.27
accept Be Our Guest##48005 |goto 51.57,27.27
step
Follow the path |goto 51.72,26.77 < 7 |only if walking
talk Dolan Northfield##125035
Visit the Stables |q 48005/1 |goto 51.45,26.10
step
talk Joma##127586
accept Lucky Charm##48898 |goto 51.31,25.90
accept Monstrous Energy##48902 |goto 51.31,25.90
step
talk Majo##127492
accept Safety First##48899 |goto 51.29,25.87
step
Follow the path |goto 50.95,25.77 < 7 |only if walking
Run up the stairs |goto 50.33,26.02 < 5 |only if walking
Run up the stairs |goto 50.02,25.58 < 5 |only if walking
talk Arthur Seville##126600
Visit the Catering |q 48005/2 |goto 49.74,25.22
stickystart "Collect_Durable_Seashells"
stickystart "Collect_Pulsating_Extracts"
step
Follow the path |goto 49.63,25.71 < 7 |only if walking
Follow the path |goto 49.31,25.82 < 7 |only if walking
Jump down here |goto 49.09,26.15 < 5 |only if walking
Follow the path |goto 48.84,27.12 < 7 |only if walking
kill Lucktail##130600
|tip He will eventually run away.
Find Lucktail Near the Bridge |q 48898/1 |goto 48.67,28.17
step
Follow the path up |goto 48.83,27.23 < 7 |only if walking
Follow the path |goto 48.84,26.25 < 7 |only if walking
Follow the path |goto 48.61,25.42 < 7 |only if walking
Follow the path up |goto 48.32,25.02 < 7 |only if walking
kill Lucktail##130600
|tip He will eventually run away.
Find Lucktail on the Island |q 48898/2 |goto 48.10,25.41
step
Follow the path up |goto 48.55,24.61 < 7 |only if walking
Follow the path down |goto 48.84,24.38 < 7 |only if walking
Follow the path |goto 49.36,23.43 < 7 |only if walking
Follow the path |goto 50.18,23.11 < 7 |only if walking
Follow the path up |goto 50.49,22.73 < 7 |only if walking
kill Lucktail##127602
collect Lucktail's Tail##152848 |q 48898/3 |goto 50.69,22.18
step
label "Collect_Durable_Seashells"
Follow the path |goto 50.40,22.44 < 7 |only if walking
click Durable Seashell##276496+
|tip They look like white seashells on the ground around this area.
collect 8 Durable Seashell##152847 |q 48899/1 |goto 49.69,22.69
step
label "Collect_Pulsating_Extracts"
kill Slithering Fangtongue##127600+
collect 6 Pulsating Extract##152849 |q 48902/1 |goto 49.69,22.69
step
Follow the path up |goto 49.08,23.73 < 7 |only if walking
Continue up the path |goto 48.75,24.62 < 7 |only if walking
Follow the path |goto 49.47,25.80 < 7 |only if walking
Run down the stairs |goto 49.97,25.51 < 5 |only if walking
Run down the stairs |goto 50.28,25.94 < 5 |only if walking
Follow the path |goto 50.47,26.06 < 7 |only if walking
Follow the path |goto 51.01,25.69 < 7 |only if walking
talk Majo##127492
turnin Safety First##48899 |goto 51.29,25.87
step
talk Joma##127586
turnin Lucky Charm##48898 |goto 51.31,25.90
turnin Monstrous Energy##48902 |goto 51.31,25.90
step
talk Majo##127492
accept The Perfect Horse, of Course##48903 |goto 51.29,25.88
step
Follow the path |goto 51.52,26.15 < 5 |only if walking
Watch the dialogue
|tip Follow Majo as he walks.
Follow Majo to the Stables |q 48903/1 |goto 51.58,26.01
step
Follow the path |goto 51.56,25.82 < 3 |only if walking
clicknpc Goldie##128476
Inspect Goldie |q 48903/2 |goto 51.68,25.67
step
Follow the path |goto 51.66,25.80 < 3 |walk
Watch the dialogue
clicknpc Scout##128478
Inspect Scout |q 48903/3 |goto 51.79,25.83
step
Watch the dialogue
clicknpc Avalon##124847
Inspect Avalon |q 48903/4 |goto 51.87,25.98
step
Follow the path |goto 51.79,26.17 < 3 |only if walking
Watch the dialogue
clicknpc Maxwell##127618
Inspect Maxwell |q 48903/5 |goto 51.83,26.32
step
Watch the dialogue
_Next to you:_
clicknpc Majo
Help Majo Mount |q 48903/6
step
talk Joma##127614
turnin The Perfect Horse, of Course##48903 |goto 51.81,26.36
step
Follow the path |goto 52.11,26.98 < 5 |only if walking
Follow the road up |goto 50.93,29.00 < 7 |only if walking
click Job Flyer
accept The Roughnecks##49393 |goto 51.67,29.68
step
Follow the road |goto 51.83,29.22 < 7 |only if walking
Follow the path |goto 52.48,28.68 < 7 |only if walking
talk Hestia Strongbolt##134685
fpath Norwington Estate |goto 52.91,28.80
step
click WANTED: Living Earthguard
accept WANTED: Living Earthguard##51367 |goto 53.11,28.39
step
click HELP WANTED
accept Anglepoint Wharf##48347 |goto 53.11,28.38
step
Run up the stairs |goto 53.08,28.23 < 3 |only if walking
Enter the building |goto 53.21,28.24 < 3 |walk
talk Terry Rigglesmith##136459
|tip Inside the building.
Visit the Inn |q 48005/4 |goto 53.31,28.29
step
talk Terry Rigglesmith##136459
|tip Inside the building.
home Norwington Estate |goto 53.31,28.29 |q 49393 |future
step
Leave the building |goto 53.42,28.36 < 3 |walk
Follow the path |goto 53.53,28.48 < 7 |only if walking
talk George Mitchell##123648
|tip He walks around this area.
Visit the Smithy |q 48005/3 |goto 53.48,28.75
step
Jump down here |goto 53.54,28.17 < 5 |only if walking
Follow the path |goto 53.14,27.42 < 7 |only if walking
Continue following the path |goto 52.72,27.17 < 7 |only if walking
talk Lord Aldrius Norwington##124802
turnin Be Our Guest##48005 |goto 51.57,27.27
accept Beginner Equitation##48004 |goto 51.57,27.27
step
Follow the path |goto 51.76,26.93 < 7 |only if walking
clicknpc Cooper##127718
Mount Cooper |q 48004/1 |goto 51.65,26.20
step
Follow the path |goto 51.51,26.19 < 7 |only if walking
Jab #6# Gnoll Targets |q 48004/2 |goto 51.11,26.76
|tip Use the "Harpoon Jab" ability on your action bar on Targets around this area.
|tip They look like yellow puppets in wooden barrels on the ground around this area.
step
Shoot Down #2# Paper Zeppelins |q 48004/3 |goto 51.11,26.76
|tip Use the "Bolas" ability on your action bar on Paper Zeppelins around this area.
|tip They look like small grey blimps flying in the air around this area.
step
Jump #8# Fences |q 48004/4 |goto 51.11,26.76
|tip Jump over the fences around this area.
|tip They look like brown wooden fences on the ground around this area.
step
Stop Riding Cooper |outvehicle |q 48004
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Beginner Equitation##48004 |goto 51.57,27.27
accept Show Me What You've Got##48939 |goto 51.57,27.27
step
Follow the path |goto 51.76,26.93 < 5 |only if walking
clicknpc Cooper##127718
Mount Cooper |q 48939/1 |goto 51.65,26.20
step
Follow the path |goto 51.51,26.19 < 7 |only if walking
Follow the path |goto 51.30,26.43 < 7 |only if walking
Score 150 Points |q 48939/2 |goto 51.01,26.43
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Stop Riding Cooper |outvehicle |q 48939
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Show Me What You've Got##48939 |goto 51.57,27.27
accept Equine Retrieval##48087 |goto 51.57,27.27
step
Follow the road |goto 51.62,27.86 < 7 |only if walking
Follow the road up |goto 50.91,29.04 < 7 |only if walking
Follow the road up |goto 51.39,29.54 < 7 |only if walking
Follow the road up |goto 52.58,28.71 < 7 |only if walking
Follow the path |goto 52.86,30.25 < 7 |only if walking
clicknpc Rose##127534
Mount Rose |q 48087/1 |goto 53.16,30.70
step
Follow the path down |goto 52.88,30.30 < 7 |only if walking
Bring Rose to Lord Norwington |q 48087/2 |goto 52.53,28.50
step
talk Lord Aldrius Norwington##127559
turnin Equine Retrieval##48087 |goto 52.53,28.50
accept No Party Like a Trogg Party##48088 |goto 52.53,28.50
step
talk Gora Layton##125042
accept Mountain Sounds##48089 |goto 52.49,28.55
step
clicknpc Cooper##127718
Ride Cooper |invehicle |goto 52.53,28.61 |q 48088
stickystart "Slay_Grimestone_Intruders"
step
Jump down here |goto 52.34,28.43 < 5 |only if walking
Rally #8# Kul Tirans |q 48089/1 |goto 51.67,27.78
|tip Use the "Battlehorn of the Mountain" ability on your action bar near neutral (yellow) NPCs around this area.
step
label "Slay_Grimestone_Intruders"
Kill Grimestone enemies around this area
|tip Use the "Harpoon Jab" ability on your action bar near them while facing them.
Slay #20# Grimestone Intruders |q 48088/1 |goto 51.67,27.78
step
Follow the road up |goto 50.91,29.04 < 7 |only if walking
Follow the road up |goto 51.39,29.54 < 7 |only if walking
Return to Gora Layton |goto 52.49,28.55 < 15 |q 48088
step
Stop Riding Cooper |outvehicle |q 48088
|tip Click the yellow arrow on your action bar.
step
talk Gora Layton##125042
turnin Mountain Sounds##48089 |goto 52.48,28.55
step
talk Lord Aldrius Norwington##127559
turnin No Party Like a Trogg Party##48088 |goto 52.54,28.49
step
Jump down here |goto 52.42,28.24 < 5 |only if walking
Watch the dialogue
talk Lord Aldrius Norwington##124802
accept Best In Show##49036 |goto 51.57,27.27
|tip If you find this quest too difficult, you can skip it.
|tip This quest is not needed for the Tiragarde Sound storyline achievement.
step
Follow the path |goto 51.76,26.93 < 7 |only if walking
clicknpc Cooper##127718
Mount Cooper |q 49036/1 |goto 51.65,26.20
step
Follow the path |goto 51.51,26.19 < 7 |only if walking
Follow the path |goto 51.30,26.43 < 7 |only if walking
Score 300 Points |q 49036/2 |goto 51.01,26.43
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Stop Riding Cooper |outvehicle |q 49036
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Best In Show##49036 |goto 51.57,27.27
step
Follow the road |goto 51.66,27.88 < 7 |only if walking
Continue following the road |goto 50.52,28.85 < 7 |only if walking
Cross the bridge |goto 49.97,29.14 < 7 |only if walking
Follow the road |goto 49.04,29.84 < 7 |only if walking
Follow the road |goto 48.99,30.44 < 7 |only if walking
talk Thomas Pinker##131627
accept Save Our Shipmates##50026 |goto 49.46,31.27
step
Follow the path |goto 48.98,30.72 < 7 |only if walking
Follow the path |goto 48.41,30.44 < 7 |only if walking
Follow the path up |goto 47.82,30.97 < 7 |only if walking
Follow the path up |goto 47.90,32.10 < 7 |only if walking
Follow the path up |goto 47.65,32.53 < 7 |only if walking
kill Living Earthguard##137426 |q 51367/1 |goto 47.25,32.35
|tip You may need help with this.
step
Jump down here |goto 48.11,31.83 < 7 |only if walking
Cross the bridge |goto 49.07,29.82 < 7 |only if walking
Follow the road |goto 49.98,29.14 < 7 |only if walking
Follow the road |goto 50.48,28.86 < 7 |only if walking
Follow the path |goto 51.57,27.88 < 7 |only if walking
talk Lord Aldrius Norwington##124802
turnin WANTED: Raging Earthguard##51367 |goto 51.57,27.26
step
Follow the road |goto 51.66,27.88 < 7 |only if walking
Continue following the road |goto 50.52,28.85 < 7 |only if walking
Cross the bridge |goto 49.97,29.14 < 7 |only if walking
Follow the road |goto 49.04,29.84 < 7 |only if walking
Follow the road |goto 48.99,30.44 < 7 |only if walking
Follow the path |goto 49.26,31.16 < 7 |only if walking
Continue following the path |goto 49.16,32.21 < 7 |only if walking
Follow the path down |goto 49.38,33.33 < 7 |only if walking
Continue down the path |goto 49.83,34.47 < 5 |only if walking
Follow the path |goto 50.04,35.91 < 7 |only if walking
Follow the path |goto 50.30,36.42 < 7 |only if walking
talk Henry Hardwick##123415
turnin Save Our Shipmates##50026 |goto 50.32,37.23
accept Shipwreck Recovery Crew##50009 |goto 50.36,36.83 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
accept Captured and Enraptured##47755 |goto 50.32,37.23
accept A Very Precious Cargo##50002 |goto 50.32,37.23
stickystart "Free_Enthralled_Sailors"
stickystart "Kill_Creatures_And_Collect_Cargo"
step
Follow the path |goto 50.36,36.83 < 7 |only if walking
talk Earless Joe##131775
accept Can't Hear A Thing##50059 |goto 51.10,35.80
step
Follow the path |goto 52.59,35.06 < 10 |only if walking
Continue following the path |goto 53.18,34.40 < 7 |only if walking
Continue following the path |goto 53.50,34.00 < 7 |only if walking
Enter the cave |goto 53.76,33.57 < 5 |walk
kill Anthemusa##130360 |q 50059/1 |goto 53.64,32.69
|tip Inside the cave.
step
label "Free_Enthralled_Sailors"
Leave the cave |goto 53.85,33.36 < 5 |walk
use the Stein of Grog##151135
|tip Use it on Enthralled Sailors around this area.
Free #6# Enthralled Sailors |q 47755/1 |goto 53.95,34.04
step
label "Kill_Creatures_And_Collect_Cargo"
Kill enemies around this area
|tip Enthralled Sailors will not count for this quest goal.
click Shipwrecked Supplies##245350+
|tip They look like wooden boxes on the ground around this area.
click Siren Wind Chimes##280992+
|tip They look like chains with a blue crystal at the top hangin from objects around this area.
Kill Creatures and Collect Cargo |q 50009/1 |goto 53.95,34.04
|tip You can see the blue tracking bar in the quest tracker on the right of the screen.
|only if havequest(50009) or completedq(50009)
step
Follow the path |goto 54.42,34.57 < 25 |only if walking
Follow the path up |goto 54.80,34.98 < 7 |only if walking
Find the Precious Cargo |q 50002/1 |goto 55.49,35.93
step
talk Penny "Precious" Hardwick##131684
turnin A Very Precious Cargo##50002 |goto 55.49,35.93
accept Hold My Hand##50005 |goto 55.49,35.93
stickystart "Escort_Penny_To_Her_Father"
step
Follow the path down |goto 55.11,35.55 < 7 |only if walking
Follow the path |goto 54.75,35.04 < 7 |only if walking
Continue following the path |goto 54.02,35.02 < 7 |only if walking
Continue following the path |goto 53.62,35.73 < 7 |only if walking
Continue following the path |goto 53.04,34.91 < 7 |only if walking
Continue following the path |goto 52.04,35.23 < 7 |only if walking
Continue following the path |goto 51.63,35.21 < 7 |only if walking
Follow Penny Through Fogcliff Strand |goto 51.22,34.56 < 7 |c |q 50005
step
Follow the path |goto 51.36,35.43 < 7 |only if walking
talk Earless Joe##131775
turnin Can't Hear A Thing##50059 |goto 51.10,35.80
step
label "Escort_Penny_To_Her_Father"
Follow the path |goto 50.96,36.19 < 7 |only if walking
Follow the path |goto 50.35,36.71 < 7 |only if walking
Watch the dialogue
|tip Follow Penny "Precious" Hardwick as she walks.
|tip Stay close to her.
Kill the enemies that attack
Watch the dialogue
Escort Penny to Her Father |q 50005/1 |goto 50.31,37.10
step
talk Henry Hardwick##123415
turnin Hold My Hand##50005 |goto 50.31,37.23
turnin Captured and Enraptured##47755 |goto 50.31,37.23
step
Follow the path |goto 50.27,36.37 < 7 |only if walking
Continue following the path |goto 49.99,35.69 < 7 |only if walking
Follow the path up |goto 49.82,34.48 < 7 |only if walking
Follow the path |goto 49.27,32.88 < 7 |only if walking
Follow the road |goto 49.19,30.91 < 7 |only if walking
Continue following the road |goto 48.52,30.39 < 7 |only if walking
Continue following the road |goto 48.05,29.72 < 7 |only if walking
Continue following the road |goto 46.60,28.56 < 7 |only if walking
Follow the path up |goto 45.94,28.17 < 7 |only if walking
Follow the path up |goto 45.92,26.48 < 7 |only if walking
Continue up the path |goto 45.64,26.10 < 7 |only if walking
Continue up the path |goto 44.86,25.82 < 7 |only if walking
Continue up the path |goto 43.96,24.68 < 7 |only if walking
Follow the path |goto 43.09,22.50 < 7 |only if walking
talk Tagart##129003
turnin The Roughnecks##49393 |goto 42.36,22.27
accept Hold Still##49394 |goto 42.36,22.27
accept The Bears and the Bees##49395 |goto 42.36,22.27
step
talk Dagin##129163
fpath Roughneck Camp |goto 42.48,23.02
step
click WANTED: The Hornet
accept WANTED: The Hornet##51368 |goto 42.16,22.99
step
talk Egert Tominson##129159
home Roughneck Camp |goto 42.06,22.85 |q 48009 |future
stickystart "Collect_Sticky_Bee_Honey"
stickystart "Collect_Goat_Fur"
stickystart "Kill_Scruffhide_Bears"
step
Follow the path down |goto 43.12,22.51 < 7 |only if walking
Follow the path |goto 43.74,23.75 < 7 |only if walking
Follow the path |goto 44.52,22.80 < 7 |only if walking
Continue following the path |goto 45.03,21.68 < 7 |only if walking
Continue following the path |goto 45.62,20.88 < 7 |only if walking
Continue following the path |goto 45.83,20.24 < 7 |only if walking
Follow the path up |goto 46.06,19.88 < 5 |only if walking
Follow the path down |goto 46.81,19.42 < 7 |only if walking
Follow the path |goto 47.27,18.99 < 7 |only if walking
Follow the path |goto 47.48,18.47 < 7 |only if walking
Enter the cave |goto 47.35,18.18 < 5 |walk
kill The Hornet##137450 |q 51368/1 |goto 47.09,18.21
|tip Inside the cave.
step
Leave the cave |goto 47.37,18.17 < 3 |walk
Follow the path up |goto 47.59,17.96 < 7 |only if walking
talk "Helpless" Henry##129392
accept Helping Henry##49412 |goto 47.70,17.63
step
kill Brawr##129398 |q 49412/1 |goto 48.20,18.03
step
talk "Helpless" Henry##129392
turnin Helping Henry##49412 |goto 47.70,17.63
step
label "Collect_Sticky_Bee_Honey"
Follow the path up |goto 47.33,18.92 < 7 |only if walking
click Beehive##278257+
|tip They look like orange balls hanging from trees and on the ground around this area.
collect 6 Sticky Bee Honey##153595 |q 49395/1 |goto 46.73,19.52
step
label "Collect_Goat_Fur"
clicknpc Gentle Goat##129110+
|tip Some of them will attack you.
collect 6 Goat Fur##155681 |q 49394/1 |goto 46.73,19.52
step
label "Kill_Scruffhide_Bears"
kill 8 Scruffhide Bear##129002 |q 49395/2 |goto 46.73,19.52
step
Follow the path |goto 44.90,22.02 < 20 |only if walking
Follow the path |goto 43.85,23.72 < 7 |only if walking
Follow the path up |goto 43.58,23.64 < 7 |only if walking
Follow the path |goto 43.08,22.51 < 7 |only if walking
talk Tagart##129003
turnin Hold Still##49394 |goto 42.36,22.27
turnin The Bears and the Bees##49395 |goto 42.36,22.27
turnin WANTED: The Hornet##51368 |goto 42.36,22.27
step
talk Rulf##129170
accept Protect the Nests##49735 |goto 42.49,22.72
accept An Offering of Eggs##49710 |goto 42.49,22.72
stickystart "Kill_Hungry_Dewscales"
step
Follow the path |goto 42.75,22.48 < 7 |only if walking
Follow the path up |goto 43.33,22.29 < 7 |only if walking
Follow the path up |goto 43.92,21.53 < 7 |only if walking
Follow the path |goto 44.36,19.71 < 7 |only if walking
click Spotted Gryphon Egg##278777+
|tip They look like white and yellow eggs with blue spots on them in large bird nests on the ground around this area.
collect 4 Spotted Gryphon Egg##155828 |q 49710/1 |goto 44.43,19.00
step
label "Kill_Hungry_Dewscales"
kill 7 Hungry Dewscale##130668 |q 49735/1 |goto 44.43,19.00
step
Follow the path |goto 44.81,17.69 < 7 |only if walking
Follow the path down |goto 45.55,17.88 < 7 |only if walking
Follow the path down |goto 46.21,17.40 < 7 |only if walking
Follow the path |goto 47.46,16.94 < 7 |only if walking
talk Shawn McClinter##129578
turnin Protect the Nests##49735 |goto 47.85,16.38
step
click Gryphon Nest
turnin An Offering of Eggs##49710 |goto 47.90,16.45
step
talk Shawn McClinter##129578
accept Roughneck Riders##49417 |goto 47.85,16.39
step
use the Tether Shot##153679
|tip Use it on Greathfeather.
|tip He looks like a large eagle flying in the air around this area to the south.
|tip Wait here until he gets close enough to use it.
Ride Greathfeather |invehicle |goto 47.89,16.70 |q 49417
step
Wrangle Greatfeather |q 49417/1 |goto 47.89,16.70
|tip Use the first two abilities on your action bar to deal damage to Greathfeather.
|tip Use the third ability to try to keep the blue bar on the screen filled as much as possible.
|tip He will eventually surrender.
step
Return to Roughneck Camp |goto 42.51,22.66 < 20 |c |q 49417 |notravel
step
talk Tagart##129003
turnin Roughneck Riders##49417 |goto 42.36,22.27
accept Big Boss##49418 |goto 42.36,22.27
step
Follow the path |goto 42.70,22.52 < 7 |only if walking
Follow the path up |goto 43.07,22.24 < 7 |only if walking
Continue up the path |goto 43.57,20.75 < 7 |only if walking
Continue up the path |goto 43.40,18.92 < 7 |only if walking
Continue up the path |goto 42.27,17.64 < 7 |only if walking
talk Boss Tak##129291
turnin Big Boss##49418 |goto 41.99,16.76
accept Wendies##49433 |goto 41.99,16.76
accept Where'd They Go?##49435 |goto 41.99,16.76
stickystart "Slay_Wendigos"
step
Follow the path up |goto 42.26,15.97 < 7 |only if walking
click Bloodied Boot
Find Evidence of the Missing Roughnecks |q 49435/1 |goto 42.27,15.49
step
Follow the path up |goto 42.97,15.06 < 7 |only if walking
Follow the path up |goto 43.30,14.70 < 7 |only if walking
talk "Helpless" Henry##130424
accept Frozen##49419 |goto 43.68,15.24
stickystop "Slay_Wendigos"
step
Follow the path up |goto 43.58,14.90 < 7 |only if walking
click Roughneck Supplies
Find the Supply Cart |q 49435/2 |goto 43.73,14.65
step
Follow the path |goto 43.99,14.80 < 7 |only if walking
Jump down here |goto 44.65,15.26 < 5 |only if walking
talk Griddon##130478
accept Warm and Cozy##49431 |goto 44.91,15.49
stickystart "Collect_Steamy_Essences"
step
Follow the path up |goto 44.92,15.20 < 7 |only if walking
Follow the path |goto 45.22,14.97 < 7 |only if walking
Continue following the path |goto 46.17,14.43 < 7 |only if walking
Continue following the path |goto 47.09,14.34 < 7 |only if walking
Follow the path down |goto 47.70,13.72 < 7 |only if walking
Follow the path down |goto 48.27,13.26 < 7 |only if walking
Follow the path down |goto 49.13,13.72 < 7 |only if walking
kill Prince Rathaw##129590
collect Fiery Essence##154171 |q 49419/1 |goto 48.67,14.62
step
label "Collect_Steamy_Essences"
Follow the path up |goto 48.85,14.22 < 7 |only if walking
kill Steam Elemental##129484+
click Steam Shard##278339+
|tip They look like small clusters of chunks of white ice on the ground around this area.
collect 99 Steamy Essence##153697 |q 49431/1 |goto 49.13,13.53
step
Follow the path up |goto 49.13,13.55 < 7 |only if walking
Continue up the path |goto 48.20,13.28 < 7 |only if walking
Follow the path |goto 47.51,13.80 < 7 |only if walking
Follow the path |goto 47.12,14.34 < 7 |only if walking
Follow the path up |goto 46.13,14.42 < 7 |only if walking
Follow the path |goto 45.54,14.48 < 7 |only if walking
Jump down here |goto 45.01,15.11 < 5 |only if walking
talk Griddon##130478
turnin Warm and Cozy##49431 |goto 44.91,15.50
stickystart "Slay_Wendigos"
step
Follow the path up |goto 44.79,15.20 < 7 |only if walking
Follow the path down |goto 43.87,14.73 < 7 |only if walking
Follow the path |goto 43.57,14.95 < 7 |only if walking
talk "Helpless" Henry##130424
turnin Frozen##49419 |goto 43.68,15.25
step
Follow the path up |goto 43.38,14.59 < 7 |only if walking
Follow the path |goto 43.23,13.91 < 7 |only if walking
Continue following the path |goto 42.64,13.39 < 7 |only if walking
Follow the path up |goto 41.64,13.11 < 7 |only if walking
Follow the path up |goto 41.43,13.19 < 7 |only if walking
Follow the path up |goto 41.35,13.39 < 7 |only if walking
click Roughneck Axe
Search for More Clues |q 49435/3 |goto 41.57,13.97
step
Follow the path up |goto 40.92,13.61 < 7 |only if walking
Follow the path up |goto 40.28,13.68 < 7 |only if walking
click Discarded Rucksack
Find the Roughneck's Last Location |q 49435/4 |goto 39.67,13.35
step
_Next to you:_
talk Boss Tak##129655
turnin Where'd They Go?##49435
accept Boss' Revenge##49439
step
Enter the cave |goto 39.67,12.96 < 5 |walk
Follow the path down |goto 39.49,12.52 < 7 |walk
kill Whompus##129570 |q 49439/1 |goto 39.07,12.16
|tip Inside the cave.
step
_Next to you:_
talk Boss Tak##129655
turnin Boss' Revenge##49439
step
label "Slay_Wendigos"
Follow the path up |goto 39.42,12.41 < 3 |walk
Leave the cave |goto 39.73,13.06 < 5 |walk
Kill Wendigo enemies around this area
Slay #10# Wendigos |q 49433/1 |goto 40.60,13.88
step
_Next to you:_
talk Boss Tak##129655
turnin Wendies##49433
accept Getting Paid##49719
step
talk Tagart##129003
turnin Getting Paid##49719 |goto 42.36,22.27
step
Follow the path |goto 42.69,22.46 < 7 |only if walking
Follow the path down |goto 43.19,22.60 < 7 |only if walking
Continue down the path |goto 43.87,24.50 < 7 |only if walking
Continue down the path |goto 44.92,25.82 < 7 |only if walking
Continue down the path |goto 45.71,26.15 < 7 |only if walking
Follow the path down |goto 45.94,26.67 < 7 |only if walking
Follow the road |goto 45.84,28.27 < 7 |only if walking
Continue following the road |goto 44.63,28.17 < 7 |only if walking
Follow the path |goto 43.70,27.35 < 7 |only if walking
Continue following the path |goto 42.97,28.41 < 7 |only if walking
Continue following the path |goto 42.73,29.34 < 7 |only if walking
talk Brother Therold##125922
turnin Anglepoint Wharf##48347 |goto 42.28,29.31
accept Aiding the Wharf##48540 |goto 42.28,29.31
step
Follow the path |goto 42.01,29.58 < 7 |only if walking
click Jar of Blubber
collect Seal Blubber##152585 |q 48540/3 |goto 41.79,30.04
step
Follow the path |goto 42.01,30.10 < 7 |only if walking
talk Hera Copeland##126675
Ask her _"Do you have any seaweed? Therold needs it for an antidote."_
Obtain a Satchel of Seaweed |q 48540/1 |goto 41.93,30.26
step
Follow the path up |goto 42.90,29.45 < 7 |only if walking
click Bundle of Vellum
collect Bundle of Vellum##152586 |q 48540/2 |goto 43.23,29.67
step
Follow the path down |goto 43.01,29.56 < 7 |only if walking
talk Brother Therold##125922
turnin Aiding the Wharf##48540 |goto 42.28,29.31
accept A Cure from the Sea##48352 |goto 42.28,29.31
accept Sharks in the Water##49268 |goto 42.28,29.31
step
talk Okri Putterwrench##128680
accept Stinging Barbs##48348 |goto 42.19,29.32
stickystart "Collect_Intact_Venemous_Barbs"
stickystart "Kill_Invading_Dreadmaws"
step
Run down the stairs |goto 41.58,29.46 < 5 |only if walking
click Harbor Seaweed##273270+
|tip They look like bushy plants underwater on the ground around this area.
collect 8 Bunch of Seaweed##152401 |q 48352/1 |goto 41.09,29.77
step
label "Collect_Intact_Venemous_Barbs"
kill Barbtail Stingray##128676+
|tip Underwater around this area.
collect 4 Intact Venomous Barb##153486 |q 48348/1 |goto 41.09,29.77
step
label "Kill_Invading_Dreadmaws"
kill 6 Invading Dreadmaw##126006 |q 49268/1 |goto 41.09,29.77
|tip Underwater around this area.
step
Leave the water |goto 41.45,29.45 < 3 |only if walking
Follow the path |goto 41.59,29.44 < 7 |only if walking
talk Okri Putterwrench##128680
turnin Stinging Barbs##48348 |goto 42.19,29.32
step
talk Brother Therold##125922
turnin A Cure from the Sea##48352 |goto 42.28,29.31
turnin Sharks in the Water##49268 |goto 42.28,29.31
accept Algae Shakes##49292 |goto 42.28,29.31
accept Pulse of the Wharf##48353 |goto 42.28,29.31
stickystart "Treat_Nauseated_Villagers"
step
Follow the path |goto 42.71,29.27 < 7 |only if walking
Follow the path |goto 42.87,28.62 < 7 |only if walking
Continue following the path |goto 43.47,27.43 < 7 |only if walking
Continue following the path |goto 43.02,26.81 < 7 |only if walking
click WANTED: Quartermaster Ssylis
accept WANTED: Quartermaster Ssylis##51384 |goto 42.29,27.25
step
talk Ginger Freelin##125947
Ask her _"Noticed anything strange?"_
Check Ginger Freelin |q 48353/2 |goto 42.24,27.43
step
talk Julian Nichols##125950
Ask him _"Have you noticed anything out of the ordinary?"_
Check Julian Nichols |q 48353/1 |goto 42.30,26.62
step
Follow the path |goto 42.15,26.87 < 7 |only if walking
talk Aaron Gutier##125945
Ask him _"Have you been receiving your shipments?"_
Watch the dialogue
kill Aaron Gutier##125945
Check Aaron Gutier |q 48353/3 |goto 41.68,26.98
step
label "Treat_Nauseated_Villagers"
clicknpc Nauseated Villager##128941+
|tip They look like humans kneeling on the ground around this area.
Treat #6# Nauseated Villagers |q 49292/1 |goto 42.00,27.03
step
Follow the path |goto 41.65,26.90 < 7 |only if walking
talk Brother Therold##125922
turnin Algae Shakes##49292 |goto 41.29,27.00
turnin Pulse of the Wharf##48353 |goto 41.29,27.00
accept Evacuate the Premises##48355 |goto 41.29,27.00
accept Tainted Shipments##48354 |goto 41.29,27.00
stickystart "Evacuate_Anglepoint_Firepackers"
step
Follow the path |goto 40.99,26.69 < 7 |only if walking
clicknpc Barrel of Fish##126060+
|tip They look like wooden barrels on the ground around this area.
Check #5# Barrels of Fish |q 48354/1 |goto 40.28,26.69
step
label "Evacuate_Anglepoint_Firepackers"
Evacuate #8# Anglepoint Fishpackers |q 48355/1 |goto 40.28,26.69
|tip Use the "Evacuate!" ability near Anglepoint Firepackers around this area.
|tip It appears as a button on the screen.
step
Follow the path |goto 40.00,26.64 < 7 |only if walking
talk Brother Therold##125922
turnin Evacuate the Premises##48355 |goto 39.50,26.68
turnin Tainted Shipments##48354 |goto 39.50,26.68
accept Possessive Headgear##48356 |goto 39.50,26.68
step
talk Keegan Alby##126308
accept The Young Lord Stormsong##48365 |goto 39.52,26.75
accept Betrayal of the Guard##48009 |goto 39.52,26.75
stickystart "Slay_Parasitic_Mindstealers"
stickystart "Kill_Mind_Addled_Enforcers"
step
Follow the path |goto 39.41,26.72 < 3 |only if walking
Run up the ramp |goto 39.33,26.83 < 3 |only if walking
Follow the path |goto 39.19,27.02 < 5 |only if walking
Cross the bridge |goto 39.00,27.27 < 5 |only if walking
Follow the path |goto 38.85,27.45 < 5 |only if walking
Run down the ramp |goto 38.67,27.74 < 3 |only if walking
Follow the path |goto 38.53,27.94 < 5 |only if walking
Follow the path |goto 38.36,28.18 < 7 |only if walking
Enter the building |goto 37.97,29.47 < 5 |walk
Follow the path |goto 37.83,29.62 < 3 |walk
talk Manager Yerold##125962
|tip Inside the building.
accept Dangerous Cargo##48008 |goto 37.56,29.54
accept Enemy Within##49299 |goto 37.56,29.54
stickystart "Burn_Infested_Cargo"
step
Follow the path |goto 37.84,29.61 < 3 |walk
Leave the building |goto 37.96,29.46 < 3 |walk
Follow the path |goto 37.85,29.17 < 5 |only if walking
Run up the stairs |goto 37.41,28.87 < 5 |only if walking
kill Overseer Bates##125960 |q 49299/1 |goto 37.24,28.83
step
Follow the path |goto 37.42,28.89 < 5 |only if walking
Enter the building |goto 37.97,29.46 < 5 |walk
Follow the path |goto 37.84,29.61 < 3 |walk
talk Manager Yerold##125962
|tip Inside the building.
turnin Enemy Within##49299 |goto 37.56,29.54
step
Leave the building |goto 37.73,29.74 < 3 |walk
Run up the stairs |goto 38.70,30.38 < 5 |only if walking
Follow the path |goto 38.69,30.68 < 5 |only if walking
Run up the stairs |goto 38.69,31.32 < 5 |only if walking
Follow the path |goto 38.87,31.32 < 5 |only if walking
Run up the stairs |goto 39.28,31.37 < 5 |only if walking
Enter the building |goto 39.36,31.49 < 3 |walk
kill Brother Conway##125961 |q 48365/1 |goto 39.49,31.68
|tip Inside the building.
step
label "Burn_Infested_Cargo"
Leave the building |goto 39.36,31.49 < 3 |walk
Run down the stairs |goto 38.85,31.32 < 5 |only if walking
Follow the path |goto 38.67,31.32 < 5 |only if walking
Run down the stairs |goto 38.70,30.57 < 5 |only if walking
click Infested Cargo##273212+
|tip They look like small wooden barrels on the ground around this area.
|tip They can also be found inside buildings around this area.
Burn #5# Infested Cargo |q 48008/1 |goto 38.69,30.15
step
label "Slay_Parasitic_Mindstealers"
kill Possessed Dockworker##125957+
kill 10 Parasitic Mindstealer##125959 |q 48356/1 |goto 38.69,30.15
|tip They appear after you kill the Possessed Dockworkers.
step
label "Kill_Mind_Addled_Enforcers"
kill 10 Mind-addled Enforcer##126170 |q 48009/1 |goto 38.69,30.15
step
Enter the building |goto 37.74,29.75 < 5 |walk
talk Manager Yerold##125962
|tip Inside the building.
turnin Dangerous Cargo##48008 |goto 37.56,29.54
step
Follow the path |goto 37.84,29.61 < 3 |walk
Leave the building |goto 37.97,29.46 < 3 |walk
Follow the path |goto 38.36,28.18 < 7 |only if walking
Run up the ramp |goto 38.53,27.93 < 3 |only if walking
Follow the path |goto 38.67,27.72 < 5 |only if walking
Cross the bridge |goto 38.85,27.45 < 5 |only if walking
Follow the path |goto 38.99,27.28 < 5 |only if walking
Run down the ramp |goto 39.19,27.01 < 3 |only if walking
talk Brother Therold##125922
turnin Possessive Headgear##48356 |goto 39.50,26.68
step
talk Keegan Alby##126308
turnin The Young Lord Stormsong##48365 |goto 39.52,26.75
turnin Betrayal of the Guard##48009 |goto 39.52,26.75
step
talk Brannon Stormsong##126298
accept Paddle to Safety##48366 |goto 39.54,26.69
step
Follow the path |goto 39.64,26.77 < 3 |only if walking
clicknpc Escape Rowboat##126437
Use the Rowboat |q 48366/1 |goto 39.61,26.95
step
Travel to Outrigger Point |goto 35.15,25.06 < 7 |c |q 48366 |notravel
step
talk Gregory Mussler##134749
fpath Outrigger Post |goto 35.55,24.90
step
talk Tom Fishbury##136465
home Outrigger Post |goto 35.33,24.22 |q 50531 |future
step
talk Brannon Stormsong##126298
turnin Paddle to Safety##48366 |goto 35.20,24.19
accept Creature Corruption##49300 |goto 35.20,24.19 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
accept Eldritch Invocations##48372 |goto 35.20,24.19
step
talk Keegan Alby##126308
accept Death in the Depths##48370 |goto 35.25,24.17
step
talk Brother Therold##125922
accept Deep Sea Defilement##48368 |goto 35.24,24.27
step
talk Rosaline Madison##128679
accept Those Aren't Fish Eggs##48367 |goto 34.95,24.21
stickystart "Destroy_Corrupted_Eggs"
stickystart "Slay_Deepwarden_Followers"
stickystart "Purge_The_Corruption"
step
Follow the path |goto 33.53,24.45 < 7 |only if walking
Enter the underwater cave |goto 33.95,25.47 < 10 |c |q 48368
step
click Corrupting Pylon
|tip Inside the underwater cave.
Destroy the Eastern Corrupting Pylon |q 48368/2 |goto 35.37,24.33
step
Leave the underwater cave |goto 33.85,25.54 < 10 |walk
Enter the underwater cave |goto 31.30,29.25 < 10 |walk
click Corrupting Pylon
|tip Inside the underwater cave.
Destroy the Southern Corrupting Pylon |q 48368/1 |goto 30.37,31.15
step
Leave the underwater cave |goto 31.36,29.06 < 10 |walk
Follow the path |goto 30.48,25.20 < 15 |only if walking
Enter the underwater cave |goto 30.83,21.54 < 10 |walk
Follow the path up |goto 30.43,20.66 < 5 |walk
kill Director Deepwarden##126184 |q 48372/1 |goto 30.02,19.42
|tip Inside the underwater cave.
step
click Corrupting Pylon
|tip Inside the underwater cave.
Destroy the Western Corrupting Pylon |q 48368/3 |goto 29.99,19.37
step
Follow the path down |goto 30.43,20.65 < 5 |walk
Leave the underwater cave |goto 30.86,21.62 < 10 |c |q 48367
step
label "Destroy_Corrupted_Eggs"
kill Corrupted Egg##126285+
|tip They look like large purple eggs on the ground underwater around this area.
Destroy #30# Corrupted Eggs |q 48367/1 |goto 32.48,22.69
step
label "Slay_Deepwarden_Followers"
Kill enemies around this area
|tip Only Merciless Aberrations, K'thir Harbingers, and Willing Cultists will count for this quest goal.
|tip Underwater around this area.
Slay #8# Deepwarden Followers |q 48370/1 |goto 32.48,22.69
step
label "Purge_The_Corruption"
Kill enemies around this area
|tip Only Voidtouched Bloodseekers, Mindbent Thrashnecks, and Distorted Scaleterrors will count for the quest goal.
|tip Underwater around this area.
Purge the Corruption |q 49300/1 |goto 32.48,22.69
|tip You can see the blue tracking bar in the quest tracker on the right of the screen.
|only if havequest(49300) or completedq(49300)
step
Follow the path |goto 31.69,20.06 < 20 |only if walking
Follow the path |goto 31.34,19.38 < 7 |only if walking
Enter the cave |goto 30.73,18.33 < 5 |walk
kill Quartermaster Ssylis##137519 |q 51384/1 |goto 30.40,17.99
|tip He walks around this area inside the cave.
|tip You may need help with this.
step
talk Brother Therold##125922
turnin Deep Sea Defilement##48368 |goto 35.24,24.26
step
talk Keegan Alby##126308
turnin WANTED: Quartermaster Ssylis##51384 |goto 35.24,24.17
step
talk Brannon Stormsong##126298
turnin Eldritch Invocations##48372 |goto 35.20,24.19
turnin Death in the Depths##48370 |goto 35.20,24.19
step
talk Rosaline Madison##128679
turnin Those Aren't Fish Eggs##48367 |goto 34.95,24.21
step
Watch the dialogue
talk Rosaline Madison##128679
accept The Deadliest Catch##49302 |goto 34.95,24.21
step
talk Okri Putterwrench##128680
Tell him _"Let's fly!"_
Speak to Okri for a Ride |q 49302/1 |goto 35.29,24.57
step
Fly to Anglepoint Bay |goto 36.34,29.93 < 10 |c |q 49302 |notravel
step
clicknpc Outrigger Cannon##129494
Mount an Outrigger Cannon |q 49302/2 |goto 36.31,29.81
step
Shoot Down #10# Erupting Darkness |q 49302/3 |goto 36.30,29.84
|tip They look like big purple orbs flying towards you.
|tip Use the ability on your action bar.
step
Jump down here |goto 36.43,29.58 < 3 |only if walking
talk Outrigger Engineer##143896
Tell him _"Fire!"_
Watch the dialogue
Repel Viq'Goth |q 49302/4 |goto 36.37,29.45
step
clicknpc Outrigger Gryphon##129580
Ride the Outrigger Gryphon to Town |q 49302/5 |goto 36.77,29.72
step
Return to Anglepoint Wharf |goto 42.52,29.51 < 10 |c |q 49302 |notravel
step
talk Brannon Stormsong##126298
turnin The Deadliest Catch##49302 |goto 42.46,29.35
step
Run up the stairs |goto 74.38,44.34 < 5 |only if walking
Follow the path |goto 74.56,44.25 < 7 |only if walking
Follow the path up |goto 75.17,43.56 < 7 |only if walking
Continue following the path |goto 76.38,43.93 < 7 |only if walking
Continue following the path |goto 76.72,43.73 < 7 |only if walking
talk Cagney##122671
turnin The Ashvane Trading Company##47485 |goto 76.84,43.43
accept Suspicious Shipments##47486 |goto 76.84,43.43
accept Labor Dispute##47487 |goto 76.84,43.43
step
talk Olive##122672
accept Small Haulers##47488 |goto 76.82,43.49
stickystart "Free_Urchin_Workers"
stickystart "Inspect_Marked_Goods"
stickystart "Slay_Ashvane_Company_Guards"
step
Follow the path |goto 77.38,43.88 < 7 |only if walking
Cross the bridge |goto 78.04,44.64 < 7 |only if walking
Follow the path |goto 78.51,45.58 < 7 |only if walking
Follow the path |goto 78.70,45.78 < 7 |only if walking
click Posted Notice
accept Message from the Management##50573 |goto 79.02,45.77
step
Follow the path |goto 79.10,45.93 < 7 |only if walking
Continue following the path |goto 79.27,45.94 < 7 |only if walking
Follow the path down |goto 79.58,46.16 < 7 |only if walking
Follow the path |goto 79.77,46.68 < 7 |only if walking
Follow the path up |goto 79.57,47.27 < 7 |only if walking
Enter the building |goto 79.19,47.02 < 5 |walk
kill Taskmaster Williams##123264
|tip He walks around this area inside the building.
collect Note to Taskmaster Williams##158066 |q 50573/2 |goto 79.11,46.92
step
Leave the building |goto 79.19,47.01 < 5 |walk
Follow the path up |goto 80.15,47.49 < 7 |only if walking
Follow the path |goto 80.41,47.76 < 7 |only if walking
Run up the stairs |goto 80.37,49.02 < 5 |only if walking
Run up the stairs |goto 80.47,49.30 < 5 |only if walking
Follow the path |goto 80.72,49.37 < 5 |only if walking
Continue following the path |goto 81.20,49.71 < 7 |only if walking
Continue following the path |goto 81.79,49.22 < 10 |only if walking
kill Forgemaster Farthing##134328
|tip He walks around this area.
collect Note to Forgemaster Farthing##158065 |q 50573/1 |goto 82.18,48.59
step
label "Free_Urchin_Workers"
talk Urchin Worker##122681+
|tip They look like children around this area, sometimes walking and pulling mining carts.
Tell them _"Head down to the water. There is a boat waiting to take you to safety."_
Free #6# Urchin Workers |q 47488/1 |goto 79.91,48.73
step
label "Inspect_Marked_Goods"
click Marked Goods##271616+
|tip They look like rectangle boxes covered in grey cloth, wrapped in rope, with white pieces of paper pinned to them on the ground around this area.
|tip They will appear as yellow dots on your minimap.
Inspect #5# Marked Goods |q 47486/1 |goto 79.91,48.73
step
label "Slay_Ashvane_Company_Guards"
Kill Company enemies around this area
Slay #10# Ashvane Company Guards |q 47487/1 |goto 79.91,48.73
step
Follow the path |goto 79.81,48.78 < 10 |only if walking
Continue following the path |goto 79.37,48.42 < 10 |only if walking
Follow the path down |goto 78.63,48.51 < 7 |only if walking
talk Flynn Fairwind##121239
turnin Suspicious Shipments##47486 |goto 78.11,47.94
turnin Small Haulers##47488 |goto 78.11,47.94
turnin Message from the Management##50573 |goto 78.11,47.94
step
talk Cagney##122671
turnin Labor Dispute##47487 |goto 78.10,47.84
step
talk Flynn Fairwind##121239
accept Under Their Noses##50531 |goto 78.11,47.95
step
Follow the road |goto 77.91,48.49 < 7 |only if walking
Continue following the road |goto 77.24,49.42 < 7 |only if walking
Continue following the road |goto 76.45,48.95 < 7 |only if walking
talk Flynn Fairwind##134166
turnin Under Their Noses##50531 |goto 75.84,49.14
accept Sampling the Goods##53041 |goto 75.84,49.14
step
talk Jeb Johnson##134226
fpath Bridgeport |goto 75.79,48.59
step
Run down the stairs |goto 75.56,48.58 < 5 |only if walking
Follow the path |goto 75.01,49.38 < 5 |only if walking
talk Dockmaster Leighton##136576
accept Left at the Port##51149 |goto 75.07,49.72
step
click Raw Azerite Sample
collect Raw Azerite Sample##163034 |q 53041/2 |goto 74.76,50.13
step
Run down the stairs |goto 75.21,50.05 < 5 |only if walking
Follow the path |goto 75.23,50.39 < 5 |only if walking
click Chemist's Notes
Choose _<Take the notes.>_
collect Chemist's Notes##163032 |q 53041/1 |goto 75.17,50.76
step
talk Junior Miner Joe##133550
accept An Overrun Mine##50349 |goto 75.70,50.63
step
Run up the stairs |goto 75.65,50.54 < 3 |only if walking
Enter the building |goto 75.79,50.43 < 3 |walk
talk Lidia Plank##136468
|tip Inside the building.
home Bridgeport |goto 75.88,50.64 |q 49218 |q 49218 |future
step
Leave the building |goto 75.79,50.43 < 3 |walk
Follow the path |goto 75.64,49.91 < 5 |only if walking
click Help Wanted Poster
accept The Hunters of Kennings Lodge##50544 |goto 75.55,49.94
step
Follow the path |goto 75.93,49.39 < 5 |only if walking
Run up the stairs |goto 75.91,49.15 < 5 |only if walking
talk Flynn Fairwind##134166
turnin Sampling the Goods##53041 |goto 75.84,49.14
accept Stow and Go##47489 |goto 75.84,49.14
step
Follow the road |goto 75.97,49.35 < 5 |only if walking
Continue following the road |goto 75.57,50.50 < 7 |only if walking
Follow the road up |goto 75.91,51.59 < 7 |only if walking
Follow the road up |goto 77.01,51.68 < 7 |only if walking
Follow the path |goto 77.45,53.26 < 7 |only if walking
Follow the path |goto 77.90,54.42 < 7 |only if walking
talk Chief Miner Theock##133551
turnin An Overrun Mine##50349 |goto 78.15,55.93
accept Miner Operation##50351 |goto 78.15,55.93
step
talk Head Chemist Walters##133552
accept Pinch of Azerite##50352 |goto 78.12,56.01
stickystart "Collect_Azerite_Dust"
step
Run down the ramp |goto 77.70,56.71 < 5 |only if walking
Follow the path |goto 77.33,56.82 < 7 |only if walking
Run up the stairs |goto 76.44,56.91 < 5 |only if walking
Follow the path |goto 76.25,56.95 < 3 |only if walking
Enter the building |goto 76.22,57.23 < 3 |walk
click Walters' Chemistry Kit
|tip Inside the building.
collect Walters' Chemistry Kit##157857 |q 50352/2 |goto 76.10,57.43
step
Leave the building |goto 76.22,57.23 < 3 |walk
Run down the stairs |goto 76.28,56.92 < 5 |only if walking
Follow the path |goto 76.76,57.06 < 7 |only if walking
Follow the path |goto 76.92,57.38 < 7 |only if walking
Follow the path up |goto 77.09,57.96 < 5 |only if walking
Run up the stairs |goto 76.97,58.62 < 3 |c |q 50351
step
Follow the path up |goto 77.06,58.71 < 3 |only if walking
Follow the path |goto 77.15,58.50 < 3 |only if walking
Follow the path |goto 76.88,57.99 < 3 |only if walking
talk Civil Technician Alena##133553
|tip Up on the wooden platform.
Tell her _"Theock wants to retake the mine."_
Watch the dialogue
Locate Civil Technician Alena |q 50351/1 |goto 76.97,57.79
step
Follow the path |goto 76.88,58.06 < 3 |only if walking
Jump down here |goto 77.20,58.59 < 5 |only if walking
Follow the path up |goto 77.23,59.22 < 7 |only if walking
Continue up the path |goto 77.33,59.98 < 7 |only if walking
Continue up the path |goto 77.27,60.10 < 5 |only if walking
Enter the mine |goto 77.23,60.39 < 5 |walk
talk Ordnance Handler Prim##133554
|tip Inside the small mine.
Tell her _"Theock wants to retake the mine."_
Watch the dialogue
Locate Ordnance Handler Prim |q 50351/2 |goto 77.31,60.49
step
label "Collect_Azerite_Dust"
Leave the mine |goto 77.21,60.37 < 3 |walk
Follow the path |goto 77.03,60.34 < 5 |only if walking
Follow the path |goto 76.71,60.24 < 5 |only if walking
Jump down here |goto 76.60,59.74 < 5 |only if walking
Follow the path |goto 76.35,59.13 < 7 |only if walking
Kill Azerite enemies around this area
|tip The Bubbling Azerites will not drop the quest item.
collect 45 Azerite Dust##157778 |q 50352/1 |goto 76.54,58.79
step
Enter the building |goto 75.60,59.27 < 5 |walk
talk Ordnance Handler Prim##133621
|tip Inside the building.
turnin Miner Operation##50351 |goto 75.56,59.36
turnin Pinch of Azerite##50352 |goto 75.56,59.36
step
talk Civil Technician Alena##134628
|tip Inside the building.
accept Rock Meet Dynamite##50356 |goto 75.53,59.29
step
Leave the building |goto 75.60,59.27 < 3 |walk
Follow the path |goto 75.81,59.25 < 7 |only if walking
Enter the mine |goto 76.12,59.93 < 5 |walk
Follow the path down |goto 76.19,60.52 < 5 |c |q 50356
|tip Use the Azerite-Infused Dynamite ability on enemies as you walk through the mine.
|tip It appears as a button on the screen.
step
Follow the path down |goto 76.45,60.66 < 5 |walk
Run down the stairs |goto 76.68,59.88 < 3 |walk
Run down the stairs |goto 76.70,59.64 < 3 |walk
Follow the path |goto 76.40,59.41 < 5 |walk
Continue following the path |goto 75.94,59.30 < 5 |walk
Continue following the path |goto 75.50,59.96 < 5 |walk
Continue following the path |goto 75.30,60.14 < 5 |walk
kill Earthshaper Brugaw##134212 |q 50356/1 |goto 74.96,59.94
|tip Inside the mine.
|tip Use the Azerite-Infused Dynamite ability on enemies as you walk through the mine.
|tip It appears as a button on the screen.
step
Follow the path |goto 75.27,60.08 < 5 |walk
Continue following the path |goto 75.55,59.94 < 5 |walk
Continue following the path |goto 75.87,59.35 < 5 |walk
Run up the stairs |goto 76.43,59.42 < 3 |walk
Run up the stairs |goto 76.74,59.74 < 3 |walk
Follow the path up |goto 76.59,60.13 < 5 |c |q 50356
|tip Use the Azerite-Infused Dynamite ability on enemies as you walk through the mine.
|tip It appears as a button on the screen.
step
Follow the path up |goto 76.40,60.67 < 5 |walk
Continue up the path |goto 76.15,60.47 < 5 |walk
Leave the mine |goto 76.12,59.88 < 3 |walk
Follow the path |goto 76.41,58.98 < 7 |only if walking
Continue following the path |goto 76.81,58.66 < 7 |only if walking
Follow the path down |goto 77.16,58.38 < 7 |only if walking
Follow the path up |goto 77.55,57.30 < 7 |only if walking
Run up the ramp |goto 77.56,56.91 < 5 |only if walking
Follow the path |goto 77.76,56.60 < 5 |only if walking
talk Chief Miner Theock##133551
turnin Rock Meet Dynamite##50356 |goto 78.15,55.93
step
Follow the path up |goto 78.42,55.50 < 7 |only if walking
Continue up the path |goto 78.70,56.20 < 7 |only if walking
Continue up the path |goto 78.79,58.06 < 7 |only if walking
Cross the bridge |goto 78.93,59.71 < 7 |only if walking
Follow the path |goto 78.11,61.14 < 7 |only if walking
Cross the bridge |goto 77.13,62.58 < 7 |only if walking
Follow the path |goto 76.67,63.29 < 7 |only if walking
Follow the path up |goto 76.41,64.16 < 7 |only if walking
Follow the path |goto 76.06,64.88 < 7 |only if walking
Run up the stairs |goto 75.86,64.90 < 3 |only if walking
Enter the building |goto 75.75,64.81 < 3 |walk
talk Heather Morgan##136437
|tip Inside the building.
home Kennings Lodge |goto 75.67,64.52 |q 49897 |future
step
Leave the building |goto 75.76,64.81 < 3 |walk
talk Alanna Holton##127161
turnin The Hunters of Kennings Lodge##50544 |goto 75.84,65.86
accept Pardon Our Rust##48874 |goto 75.84,65.86
step
talk Lord Kennings##127646
accept A Grizzly End##48873 |goto 75.82,65.78
accept A Hunt for Hawk Eggs##48879 |goto 75.82,65.78
step
click Weathered Job List
accept A Sweater for Rupert##49028 |goto 76.13,65.52
accept WANTED: Ol' Frostclaw##49069 |goto 76.13,65.52
step
talk Finnia Hawkshot##134465
fpath Kennings Lodge |goto 76.67,65.42
stickystart "Collect_Fuzzy_Tails"
stickystart "Collect_Sturdy_Quills"
stickystart "Arm_Sprung_Beartraps"
step
Follow the path down |goto 76.31,64.62 < 7 |only if walking
Follow the path |goto 76.47,63.62 < 7 |only if walking
Follow the path down |goto 76.08,63.25 < 7 |only if walking
clicknpc Hawk Nest##93699+
|tip They look like bird nests with dark colored eggs in them on the ground around this area.
collect 12 Hawk Egg##152817 |q 48879/1 |goto 76.09,62.07
step
label "Collect_Fuzzy_Tails"
kill Mountain Raccoon##126625+
collect 4 Fuzzy Tail##152988 |q 49028/2 |goto 76.09,62.07
step
label "Collect_Sturdy_Quills"
kill Guarded Quillrat##126991+
collect 2 Sturdy Quills |q 49028/1 |goto 76.09,62.07
step
label "Arm_Sprung_Beartraps"
click Sprung Beartrap##276447+
|tip They look like metal objects with spiked teeth clamped shut on the ground around this area.
Arm #5# Sprung Beartraps |q 48874/1 |goto 77.90,66.01
step
Follow the path up |goto 76.01,62.92 < 7 |only if walking
Follow the path up |goto 76.43,63.74 < 7 |only if walking
Follow the path up |goto 76.18,64.78 < 7 |only if walking
talk Lord Kennings##127646
turnin A Hunt for Hawk Eggs##48879 |goto 75.82,65.78
step
talk Alanna Holton##127161
turnin Pardon Our Rust##48874 |goto 75.85,65.85
step
Jump down here |goto 76.10,65.38 < 5 |only if walking
talk Kolta##127217
turnin A Sweater for Rupert##49028 |goto 76.69,65.03
stickystart "Collect_Grizzly_Pelts"
step
Follow the path |goto 76.55,65.63 < 7 |only if walking
Continue following the path |goto 76.78,66.34 < 7 |only if walking
Continue following the path |goto 77.22,66.56 < 7 |only if walking
Follow the path up |goto 78.50,65.93 < 7 |only if walking
Enter the cave |goto 79.36,65.67 < 5 |walk
Follow the path |goto 79.79,65.72 < 5 |walk
kill Old Frostclaw##128093 |q 49069/1 |goto 80.03,65.61
|tip Inside the cave.
|tip You may need help with this.
step
label "Collect_Grizzly_Pelts"
Follow the path up |goto 79.81,65.75 < 3 |walk
Leave the cave |goto 79.34,65.64 < 5 |walk
kill Monstrous Grizzly##126929+
use the Simple Skinning Knife##152800
|tip Use it next to their corpses.
Collect #6# Grizzly Pelts |q 48873/1 |goto 78.45,65.94
step
Follow the path |goto 77.10,66.62 < 10 |only if walking
Follow the path |goto 76.55,65.69 < 5 |only if walking
Follow the path up |goto 76.07,64.98 < 5 |only if walking
talk Alanna Holton##127161
turnin A Grizzly End##48873 |goto 75.85,65.84
turnin WANTED: Ol' Frostclaw##49069 |goto 75.85,65.84
accept Westward Noble##49072 |goto 75.85,65.84
step
Follow the path |goto 75.39,64.99 < 7 |only if walking
Follow the path down |goto 75.23,64.32 < 7 |only if walking
Follow the path |goto 74.99,63.30 < 7 |only if walking
Continue following the path |goto 74.17,63.08 < 7 |only if walking
Follow the path up |goto 73.44,62.46 < 7 |only if walking
Follow the path |goto 71.72,62.78 < 7 |only if walking
talk Lord Kennings##127481
turnin Westward Noble##49072 |goto 70.89,61.99
accept The Start of a Monster Hunt##49039 |goto 70.89,61.99
step
click Smashed Crate
Investigate the Smashed Crate |q 49039/1 |goto 70.88,61.69
step
click Disturbed Trap
Investigate the Disturbed Trap |q 49039/3 |goto 70.80,61.43
step
click Bloody Trail
Investigate the Bloody Trail |q 49039/2 |goto 70.68,61.96
step
talk Lord Kennings##127481
turnin The Start of a Monster Hunt##49039 |goto 70.90,61.98
accept Noble Responsibilities##48909 |goto 70.90,61.98
step
_Next to you:_
talk Lord Kennings##127709
accept Encase of Emergency##49066
stickystart "Collect_Pristine_Ice_Chunks"
step
Follow the path down |goto 70.56,62.12 < 7 |only if walking
clicknpc Cold Corpse##127648
Follow the Attacker's Trail |q 48909/1 |goto 70.32,62.93
step
Follow the path |goto 69.50,62.84 < 10 |only if walking
clicknpc Hunter Corpse##127673
Follow the Attacker's Trail |q 48909/2 |goto 69.23,62.42
step
Follow the path |goto 68.87,63.48 < 7 |only if walking
clicknpc Dead Quillrat##127677
Follow the Attacker's Trail |q 48909/3 |goto 68.89,63.92
step
Follow the path |goto 68.56,64.27 < 7 |only if walking
clicknpc Fresh Stag Corpse##127680
Follow the Attacker's Trail |q 48909/4 |goto 68.19,65.15
step
Enter the cave |goto 68.18,65.76 < 5 |walk
kill Kurek the Lost##127413
|tip Inside the cave.
Kill the Wendigo |q 48909/5 |goto 68.08,66.65
step
label "Collect_Pristine_Ice_Chunks"
Follow the path up |goto 68.06,66.39 < 3 |walk
Leave the cave |goto 68.19,65.72 < 5 |walk
click Humming Ice##277262+
|tip They look like large nodes of greenish colored ice on the ground around this area.
kill Agitated Ice Shardling##128062+
|tip They appear after you break the Humming Ice.
Gather #20# Pristine Ice Chunks |q 49066/1 |goto 68.73,64.20
step
_Next to you:_
talk Lord Kennings##127709
turnin Encase of Emergency##49066
step
Leave the building |goto 75.76,64.82 < 3 |walk
talk Alanna Holton##127161
turnin Noble Responsibilities##48909 |goto 75.84,65.86
step
Jump down here |goto 76.13,65.30 < 5 |only if walking
Follow the path |goto Boralus/0 69.95,16.68 < 7 |only if walking
Run down the stairs |goto Boralus/0 71.40,16.48 < 5 |only if walking
Jump down here |goto Boralus/0 71.77,17.02 < 5 |only if walking
Follow the path |goto Boralus/0 72.72,18.21 < 7 |only if walking
Continue following the path |goto Boralus/0 74.41,18.92< 7 |only if walking
Continue following the path |goto Boralus/0 75.78,22.14 < 7 |only if walking
Run down the stairs |goto Boralus/0 75.65,22.97 < 5 |only if walking
Jump down here |goto Boralus/0 74.21,23.96 < 7 |only if walking
talk Lead Guide Zipwrench##134509
accept An Explosive Opportunity##50542 |goto Tiragarde Sound/0 66.69,50.03
step
Run up the stairs |goto 66.57,50.20 < 5 |only if walking
Follow the path |goto 66.01,50.55 < 7 |only if walking
talk Dockmaster Tyndall##129956
turnin Left at the Port##51149 |goto 65.84,50.10
step
Follow the path |goto 65.95,50.43 < 7 |only if walking
Follow the path up |goto 66.23,50.93 < 7 |only if walking
Follow the path |goto 67.03,51.86 < 7 |only if walking
Cross the bridge |goto 67.43,52.16 < 7 |only if walking
Follow the path |goto 67.99,52.26 < 7 |only if walking
Follow the path up |goto 68.20,52.49 < 7 |only if walking
Follow the path |goto 67.82,53.38 < 7 |only if walking
Follow the path up |goto 67.79,53.92 < 7 |only if walking
Follow the path |goto 67.98,54.89 < 7 |only if walking
Run up the stairs |goto 67.63,55.66 < 5 |only if walking
talk Wulferd Fizzbracket##129858
turnin An Explosive Opportunity##50542 |goto 67.50,55.81
accept The Beauty of Marketing##49531 |goto 67.50,55.81
accept Making Mysteries##49897 |goto 67.50,55.81
step
accept Spring Cleaning##49529 |goto 67.49,55.81
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Catch_Unassuming_Chickens"
stickystart "Clean_Fizzspring_Resort"
step
Follow the path |goto 67.09,55.56 < 7 |only if walking
Follow the path |goto 66.29,55.46 < 7 |only if walking
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Rustfur Wolf nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
|tip There are other Rustfur Wolves around this area, if this one isn't here.
Capture a Rustfur Wolf |q 49531/5 |goto 66.28,56.01
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
Follow the path |goto 66.15,56.24 < 7 |only if walking
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Midland Stag nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
|tip There are other Midland Stags around this area, if this one isn't here.
Capture a Midland Stag |q 49531/1 |goto 66.32,56.97
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Geyser in the water nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Geyser |q 49531/2 |goto 66.32,56.97
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
Follow the path |goto 66.70,58.16 < 7 |only if walking
Follow the path |goto 66.77,58.74 < 7 |only if walking
Follow the path |goto 66.17,59.10 < 7 |only if walking
Continue following the path |goto 65.97,59.89 < 7 |only if walking
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Ruined Robot nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Ruined Robot |q 49531/4 |goto 65.23,60.79
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
Enter the cave |goto 65.06,60.64 < 5 |walk
talk Parin Tinklocket##137694
|tip Inside the cave.
accept Inspection Gadget##51426 |goto 64.99,60.61
accept Reverse Tinkering##51430 |goto 64.99,60.61
stickystop "Catch_Unassuming_Chickens"
stickystart "Collect_V_300_Serial_Plates"
step
Follow the path |goto 65.14,60.73 < 7 |only if walking
Follow the path |goto 65.09,61.26 < 7 |only if walking
Continue following the path |goto 64.90,61.84 < 7 |only if walking
use the R.A.D.A.R.##160245
|tip Use it multiple times.
Survey #100# Percent of the Rusted Vault |q 51426/1 |goto 64.46,62.39
step
label "Collect_V_300_Serial_Plates"
kill V-300 SENTRY##137743+
collect 4 V-300 Serial Plate##160317 |q 51430/1 |goto 64.46,62.39
step
Follow the path |goto 65.05,61.51 < 7 |only if walking
Enter the cave |goto 65.06,60.68 < 5 |walk
talk Parin Tinklocket##137694
|tip Inside the cave.
turnin Inspection Gadget##51426 |goto 64.99,60.61
turnin Reverse Tinkering##51430 |goto 64.99,60.61
stickystart "Catch_Unassuming_Chickens"
step
Follow the path |goto 65.16,60.60 < 7 |only if walking
Continue following the path |goto 65.67,60.22 < 7 |only if walking
Continue following the path |goto 66.03,59.77 < 7 |only if walking
Follow the path |goto 66.18,58.94 < 7 |only if walking
Continue following the path |goto 66.73,58.72 < 7 |only if walking
Continue following the path |goto 67.25,58.69 < 7 |only if walking
Follow the path |goto 68.37,58.76 < 7 |only if walking
Follow the path |goto 68.53,57.73 < 7 |only if walking
Continue following the path |goto 69.61,56.42 < 7 |only if walking
Follow the path up |goto 69.94,55.13 < 3 |only if walking
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Waterfall nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Waterfall |q 49531/3 |goto 70.13,55.31
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
label "Clean_Fizzspring_Resort"
Follow the path |goto 69.81,55.47 < 7 |only if walking
Follow the path |goto 69.66,56.31 < 7 |only if walking
Continue following the path |goto 68.77,57.42 < 7 |only if walking
Follow the path |goto 68.04,58.79 < 7 |only if walking
kill Hissing Swell##128768+
click Volatile Bubble+
|tip They look like big clear balls floating a little off the ground around this area.
click Soaked Plank+
|tip They look like groups of wooden boards floating in the water and on the ground around this area.
click Rusted Debris+
|tip They look like groups of metal nuts and bolts on the ground around this area.
Clean Fizzspring Resort |q 49529/1 |goto 67.06,57.76
|only if havequest(49529) or completedq(49529)
step
label "Catch_Unassuming_Chickens"
clicknpc Unassuming Chicken##131174+
|tip They look like small white and brown chickens walking on the ground around this area.
Catch #5# Unassuming Chickens |q 49897/1 |goto 67.06,57.76
step
Run up the stairs |goto 67.64,55.68 < 5 |only if walking
talk Wulferd Fizzbracket##129858
turnin The Beauty of Marketing##49531 |goto 67.50,55.81
turnin Making Mysteries##49897 |goto 67.50,55.81
step
Leave the building |goto 75.75,64.81 < 3 |walk
talk Flynn Fairwind##134166
Tell him _"Let's go."_
Speak with Flynn |q 47489/1 |goto 75.84,49.14
step
Follow the path |goto 75.71,48.67 < 5 |only if walking
Run down the stairs |goto 75.57,48.58 < 5 |only if walking
Cross the bridge |goto 75.37,48.60 < 3 |only if walking
Board the Maiden's Virtue |q 47489/2 |goto 75.25,48.33
step
Run up the stairs |goto 75.35,48.35 < 3 |only if walking
Follow the path |goto 75.41,48.29 < 5 |only if walking
click Barrel of Fish
Hide in the Barrel of Fish |q 47489/3 |goto 75.49,48.10
step
Watch the dialogue
Travel to the Wailing Tideway |goto 85.53,85.10 < 10 |noway |c |q 47489
step
Follow the path |goto 85.46,84.18 < 10 |only if walking
talk Beachcomber Bob##128377
|tip He walks around this area.
turnin Stow and Go##47489 |goto 85.74,83.54
accept The Castaways##49218 |goto 85.74,83.54
accept Lured and Allured##48419 |goto 85.74,83.54
step
Follow the path up |goto 85.72,83.15 < 7 |only if walking
Follow the path up |goto 85.53,82.58 < 7 |only if walking
Continue up the path |goto 85.24,82.10 < 7 |only if walking
Follow the path |goto 85.31,81.13 < 7 |only if walking
talk Stabby Jane##128229
turnin The Castaways##49218 |goto 85.47,80.82
accept My Favorite Things##49178 |goto 85.47,80.82
accept Silencing the Sisters##49226 |goto 85.47,80.82
step
talk Stabby Jane##128229
Choose _<Ask if she has seen Flynn.>_
Ask Stabby Jane About Flynn |q 48419/1 |goto 85.47,80.82
step
talk Hungry Sam##128228
accept Local Flavor##49230 |goto 85.47,80.72
step
talk Hungry Sam##128228
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Hungry Sam |q 49178/1 |goto 85.47,80.72
step
talk Friendly Pete##128233
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Friendly Pete |q 49178/2 |goto 85.26,80.32
step
talk Friendly Pete##128233
home Castaway Point |goto 85.26,80.32 |q 49398 |q 49398 |future
step
Cross the bridge |goto 85.75,80.74 < 7 |only if walking
Follow the path |goto 86.11,81.12 < 7 |only if walking
talk Handy Bill##128227
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Handy Bill |q 49178/3 |goto 86.44,81.30
step
talk Skinny Tim##128224
fpath Castaway Point |goto 86.42,80.81
step
Jump down carefully here |goto 86.28,80.79 < 5 |only if walking
talk Captain Keelson##136966
accept Blood in the Tides##48421 |goto 86.36,79.74
stickystart "Collect_Juicy_Lurker_Tails"
stickystart "Kill_Wailing_Sirens"
step
Follow the path |goto 87.56,79.33 < 7 |only if walking
click Silver Compass
collect Silver Compass##153186 |q 49178/5 |goto 88.26,78.15
step
Follow the path |goto 88.09,77.52 < 7 |only if walking
Follow the path |goto 88.12,76.53 < 7 |only if walking
click Tin Robot
collect Tin Robot##153187 |q 49178/6 |goto 87.69,75.12
step
click Glimmering Seaweed
accept Glimmering Locket##49181 |goto 87.97,75.01
step
Follow the path |goto 88.38,75.29 < 7 |only if walking
Search the Wailing Tideway for Flynn |q 48419/2 |goto 90.04,74.46
step
kill Lugeia##126157 |q 48419/3 |goto 90.13,74.38
step
Follow the path |goto 89.14,74.65 < 10 |only if walking
Follow the path |goto 88.74,73.64 < 7 |only if walking
click Steel Lunchbox
collect Steel Lunchbox##153185 |q 49178/4 |goto 88.28,72.92
stickystart "Kill_Patheope"
step
Enter the cave |goto 87.03,72.56 < 5 |walk
Follow the path |goto 86.57,72.68 < 7 |walk
kill Nolpe##128408 |q 49226/2 |goto 86.44,72.93
|tip Inside the cave.
step
label "Kill_Patheope"
kill Patheope##128407 |q 49226/1 |goto 86.48,72.55
|tip Inside the cave.
step
Leave the cave |goto 87.03,72.56 < 7 |c |q 49230
step
label "Collect_Juicy_Lurker_Tails"
Follow the path |goto 87.42,73.36 < 7 |only if walking
kill Tide Lurker##126237+
collect 5 Juicy Lurker Tail##153348 |q 49230/1 |goto 88.03,75.07
step
label "Kill_Wailing_Sirens"
kill 8 Wailing Siren##126440 |q 48421/1 |goto 88.03,75.07
step
Follow the path |goto 87.63,75.57 < 10 |only if walking
Continue following the path |goto 86.97,76.20 < 7 |only if walking
talk Captain Keelson##125342
turnin Blood in the Tides##48421 |goto 85.72,76.63
step
Follow the path up |goto 85.23,77.17 < 7 |only if walking
Continue up the path |goto 85.18,78.43 < 7 |only if walking
Follow the path |goto 85.44,79.59 < 7 |only if walking
talk Hungry Sam##128228
turnin Local Flavor##49230 |goto 85.47,80.72
step
talk Stabby Jane##128229
turnin My Favorite Things##49178 |goto 85.46,80.82
turnin Silencing the Sisters##49226 |goto 85.46,80.82
turnin Glimmering Locket##49181 |goto 85.46,80.82
step
Follow the path |goto 85.46,80.18 < 5 |only if walking
Follow the path down |goto 85.40,79.33 < 7 |only if walking
Follow the path down |goto 85.21,78.22 < 7 |only if walking
Follow the path |goto 85.16,77.12 < 7 |only if walking
talk Flynn Fairwind##126158
turnin Lured and Allured##48419 |goto 84.90,76.06
accept Lovesick and Lost##48505 |goto 84.90,76.06
step
talk Flynn Fairwind##126158
Choose _<Help him up.>_
Watch the dialogue
Begin Following Flynn Fairwind |goto 84.90,76.06 > 10 |c |q 48505
stickystart "Escort_Flynn_To_Freehold"
step
Follow the path up |goto 84.59,75.01 < 7 |only if walking
Follow the path down |goto 84.34,73.82 < 7 |only if walking
Follow the path |goto 83.74,73.05 < 7 |only if walking
Follow the path up |goto 83.03,73.11 < 7 |only if walking
talk Skinner MacGuff##126511
|tip Do this while following Flynn Fairwind, don't lose track of him.
|tip He will wait on you while you fight.
accept Toxic Community##48516 |goto 82.72,72.75
step
Kill enemies around this area
|tip Make sure to kill the Marrowfly critters also.
|tip Do this while following Flynn Fairwind, don't lose track of him.
|tip He will wait on you while you fight.
collect 50 Toxic Stinger##152514 |q 48516/1 |goto 82.63,73.10
step
talk Skinner MacGuff##126511
|tip Do this while following Flynn Fairwind, don't lose track of him.
|tip He will wait on you while you fight.
turnin Toxic Community##48516 |goto 82.72,72.75
step
label "Escort_Flynn_To_Freehold"
Follow the path up |goto 82.52,72.55 < 7 |only if walking
Follow the path |goto 82.27,72.24 < 7 |only if walking
Follow the path up |goto 81.69,72.10 < 7 |only if walking
Follow the path |goto 81.15,72.37 < 7 |only if walking
Continue following the path |goto 81.16,73.10 < 7 |only if walking
Follow the path |goto 81.32,73.94 < 7 |only if walking
Watch the dialogue
|tip Follow Flynn Fairwind as he walks.
|tip Walk close to him if to make him start walking again, if he stops.
Escort Flynn to Freehold |q 48505/1 |goto 80.72,74.85
step
Watch the dialogue
talk Flynn Fairwind##126620
turnin Lovesick and Lost##48505 |goto 80.20,75.26
accept Freehold##48539 |goto 80.20,75.26
step
click Flynn's Spyglass
Use Flynn's Spyglass |q 48539/1 |goto 80.17,75.30
step
Watch the dialogue
talk Flynn Fairwind##126620
turnin Freehold##48539 |goto 80.20,75.25
accept Papers, Please##48773 |goto 80.20,75.25
accept The Irontide Crew##48558 |goto 80.20,75.25
step
Follow the path down |goto 79.93,74.98 < 7 |only if walking
Jump down here |goto 79.54,75.32 < 7 |only if walking
Follow the path |goto 79.48,75.80 < 7 |only if walking
talk Geraldine##127537
accept The Beatings Will Continue##48774 |goto 79.19,76.32
accept Rig Robbing##48776 |goto 79.19,76.32
stickystart "Collect_Azerite_Cutlasses"
stickystart "Collect_Trickshots_Azerite_Powder_Horns"
stickystart "Kill_Irontide_Ruffians"
stickystart "Kill_Irontide_Overseers"
step
Follow the path |goto 79.06,76.93 < 7 |only if walking
Follow the path |goto 79.14,77.77 < 7 |only if walking
Run up the stairs |goto 78.83,78.52 < 5 |only if walking
Follow the path |goto 78.83,78.81 < 5 |only if walking
kill Dockmaster Marl##127143
|tip He walks around this area.
collect Dockmaster's Key##152722 |goto 78.91,79.00 |q 48558
step
click Dockmaster's Strongbox
collect Dockmaster's Records##152721 |q 48773/1 |goto 79.14,78.78
step
Run down the stairs |goto 78.83,78.80 < 5 |only if walking
Follow the path |goto 78.83,78.49 < 5 |only if walking
Run up the stairs |goto 79.07,77.85 < 5 |only if walking
Follow the path |goto 78.95,77.67 < 5 |only if walking
click Azerite Cannonball##276488
|tip Upstairs inside the building.
accept Loaded for Bear##48606 |goto 78.61,77.86
step
click Ashvane Cannon##126927
kill Ashvane Co. Supplies##127059+
|tip Use the ability on your action bar.
|tip They look like piles of wooden boxes and barrels on the ships in the water nearby.
click Azerite Cannonball##276488+
|tip They look like grey round balls with blue smoke rising of of them on the ground around this area.
|tip You can find more cannonballs downstairs around this area.
collect Azerite Cannonball##152628+ |n
|tip You will need to get a new one each time you need to fire the cannon.
Destroy #6# Ashvane Co. Supplies |q 48606/1 |goto 78.44,77.68
You can find another cannon and more cannonballs upstairs around [77.73,76.63]
step
Click the Complete Quest Box
turnin Loaded for Bear##48606 |goto 77.76,76.60
step
Cross the bridge |goto 78.06,77.10 < 5 |only if walking
Follow the path |goto 77.93,76.88 < 5 |only if walking
Follow the path |goto 77.71,76.37 < 5 |only if walking
Jump down here |goto 77.45,76.28 < 5 |only if walking
click Tangled Rigging
|tip Back away from the Tangled Rigging to pull the items floating in the water to shore.
click "Sea Dog" Grog
|tip It will appear on the ground on the fifth try.
collect "Sea Dog" Grog##152667 |q 48776/1 |goto 77.04,76.27
step
label "Collect_Azerite_Cutlasses"
Follow the path |goto 77.84,77.16 < 7 |only if walking
kill Irontide Cutthroat##126719+
collect 3 Azerite Cutlass##152719 |q 48558/1 |goto 78.38,76.85
step
label "Collect_Trickshots_Azerite_Powder_Horns"
kill Irontide Trickshot##126774+
collect 2 Trickshot's Azerite Powder Horn##152720 |q 48558/2 |goto 78.38,76.85
step
label "Kill_Irontide_Ruffians"
kill 5 Irontide Ruffian##126720 |q 48774/1 |goto 78.38,76.85
step
label "Kill_Irontide_Overseers"
kill 2 Irontide Overseer##126770 |q 48774/2 |goto 78.38,76.85
step
Follow the path up |goto 79.08,76.76 < 7 |only if walking
Follow the path up |goto 79.21,76.58 < 7 |only if walking
talk Geraldine##127537
turnin The Beatings Will Continue##48774 |goto 79.19,76.33
turnin Rig Robbing##48776 |goto 79.19,76.33
step
Follow the path up |goto 79.56,76.84 < 7 |only if walking
Follow the path up |goto 79.96,78.54 < 7 |only if walking
Follow the path |goto 80.03,80.36 < 7 |only if walking
talk Flynn Fairwind##126620
turnin Papers, Please##48773 |goto 80.35,81.46
turnin The Irontide Crew##48558 |goto 80.35,81.46
accept Dress to Impress##49239 |goto 80.35,81.46
step
Use the Irontide Recruit Disguise
|tip It appears as a button on the screen.
Wear the Irontide Recruit Disguise |havebuff 2055038 |q 49239
step
talk Roko##128702
accept Aged to Perfection##49290 |goto 79.70,81.85
step
Follow the path |goto 79.83,82.14 < 5 |only if walking
talk Irontide Recruiter##128700
|tip He walks around this area.
Tell him _"We want to join the Irontide Raiders. We brought our own hats."_
Speak with the Irontide Recruiter |q 49239/1 |goto 79.79,82.53
step
Cross the bridge |goto 79.68,82.16 < 5 |only if walking
Follow the path |goto 77.92,84.18 < 5 |only if walking
Run up the stairs |goto 77.41,84.28 < 5 |only if walking
Enter the building |goto 77.33,84.14 < 5 |walk
Enter the Dead Man's Tale |q 49239/2 |goto 77.31,84.02
step
Watch the dialogue
talk Flynn Fairwind##126620
|tip Inside the building.
turnin Dress to Impress##49239 |goto 77.33,83.96
accept Rodrigo's Roost##49401 |goto 77.33,83.96
step
talk  Venrik##128927
|tip Inside the building.
accept Raise a Glass!##49398 |goto 77.36,83.92
step
talk  Venrik##128927
|tip Inside the building.
Tell him _"Milk... in a skull mug."_
Order a Drink From Venrik |q 49398/1 |goto 77.36,83.92
step
use the Goat's Milk in a Skull Mug##153601
Have a Drink |q 49398/2 |goto 77.36,83.92
step
talk  Venrik##128927
|tip Inside the building.
turnin Raise a Glass!##49398 |goto 77.36,83.92
step
talk Jill McHoonigan##136479
|tip Inside the building.
home Freehold |goto 77.39,83.97 |q 49757 |future
step
Leave the building |goto 77.24,83.82 < 3 |walk
Cross the bridge |goto 77.19,83.64 < 3 |only if walking
Run up the stairs |goto 77.10,83.46 < 5 |only if walking
talk Rodrigo##129098
|tip Upstairs on the platform.
fpath Freehold |goto 77.04,82.89
step
talk Rodrigo##129098
|tip Upstairs on the platform.
accept Flew the Coop##49402 |goto 77.04,82.89
stickystart "Feed_Runaway_Macaws"
step
talk Rodrigo##129098
|tip Upstairs on the platform.
Ask him _"Can you send this letter to Taelia in Boralus?"_
Send the Letter to Taelia |q 49401/1 |goto 77.04,82.90
step
Follow the path down |goto 77.09,83.22 < 5 |only if walking
Cross the bridge |goto 77.13,83.53 < 5 |only if walking
Follow the path |goto 77.19,83.64 < 3 |only if walking
Enter the building |goto 77.24,83.82 < 3 |walk
talk Flynn Fairwind##126620
|tip Inside the building.
turnin Rodrigo's Roost##49401 |goto 77.33,83.97
accept The Big Job##49399 |goto 77.33,83.97
step
talk Venrik##128927
|tip Inside the building.
accept Recruiting Efforts##49400 |goto 77.36,83.92
step
Leave the building |goto 77.33,84.14 < 3 |walk
click Sternly Worded Letter
accept Missing Treasure!##49409 |goto 77.20,84.85
stickystart "Tear_Down_Irontide_Recruiting_Posters"
stickystart "Collect_Blacktooth_Bruiser_Orders"
stickystart "Collect_Bilge_Rat_Orders"
stickystart "Collect_Cutwater_Corsair_Orders"
step
label "Feed_Runaway_Macaws"
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws around this area.
|tip They are flying in the air around this area.
|tip You don't need to target them.
|tip Run around this area to get closer to Runaway Macaws and spam use it.
Feed #6# Runaway Macaws |q 49402/1 |goto 77.35,84.75
step
Follow the path |goto 77.42,84.84 < 10 |only if walking
Run up the stairs |goto 77.57,85.27 < 5 |only if walking
Enter the building |goto 77.77,85.22 < 3 |walk
talk Ned##129967
|tip Upstairs inside the building.
Ask him _"<Show the poster.> What do you know about this buried treasure?"_
Ask Ned |q 49409/1 |goto 77.78,85.01
step
Leave the building |goto 77.76,85.21 < 3 |walk
Run down the stairs |goto 77.71,85.29 < 3 |only if walking
Follow the path |goto 77.57,85.35 < 5 |only if walking
Run up the stairs |goto 77.40,85.71 < 5 |only if walking
Follow the path |goto 77.26,85.79 < 5 |only if walking
Run up the stairs |goto 77.28,85.99 < 5 |only if walking
Follow the path up |goto 77.42,85.95 < 5 |c |q 49290
step
Follow the path |goto 77.36,85.71 < 5 |only if walking
Follow the path |goto 77.16,85.78 < 5 |only if walking
Run up the stairs |goto 77.10,86.06 < 5 |only if walking
Enter the building |goto 76.98,86.05 < 5 |walk
talk Carentan##128903
|tip Inside the building.
turnin Aged to Perfection##49290 |goto 76.89,85.97
accept Trixie Business##49407 |goto 76.89,85.97
step
label "Tear_Down_Irontide_Recruiting_Posters"
Leave the building |goto 76.98,86.05 < 3 |walk
Follow the path |goto 77.12,86.04 < 5 |only if walking
click Irontide Recruiting Poster##278308+
|tip They look like scrolls hanging on walls posts around this area.
Use the Irontide Recruit Disguise
|tip You will lose your disguise when tearing down the posters, if there are any Irontide friendly NPC's nearby.
|tip It appears as a button on the screen.
Tear Down #6# Irontide Recruiting Posters |q 49400/1 |goto 77.29,84.74
step
Run up the stairs |goto 76.71,84.98 < 5 |only if walking
Follow the path |goto 76.70,85.39 < 5 |c |q 49409
step
Follow the path |goto 76.58,85.35 < 5 |only if walking
Follow the path |goto 76.54,84.83 < 5 |only if walking
Enter the building |goto 76.37,84.54 < 5 |walk
talk Nub Nub##129960
|tip Inside the building.
Ask him _"<Show the poster.> What do you know about this buried treasure?"_
Ask Nub Nub |q 49409/2 |goto 76.38,84.32
step
Run up the stairs |goto 76.44,84.39 < 3 |walk
Run up the stairs |goto 76.41,84.22 < 3 |walk
Leave the building |goto 76.31,84.24 < 3 |walk
Jump down carefully here |goto 76.23,84.06 < 3 |only if walking
talk Nance Barmy##129968
Ask her _"<Show the poster.> What do you know about this buried treasure?"_
Ask Nance Barmy |q 49409/3 |goto 76.13,83.05
step
Find First Mate Trixie Tornsail |goto 76.48,82.63 < 6 |c |q 49407
step
talk First Mate Trixie Tornsail##129887
Tell her _"Yarr! Some brine-brained scalawag be sullyin' the good name of the Irontide Raiders! Just over there, behind that building!"_
Watch the dialogue
Begin Following First Mate Trixie Tornsail |goto 76.48,82.63 > 10 |c |q 49407
step
Watch the dialogue
|tip Follow First Mate Trixie Tornsail as she walks.
|tip Stay close to her, she must be able to see you, or she won't attack you.
kill First Mate Trixie Tornsail##129887 |q 49407/1 |goto 77.07,83.36
step
Use the Irontide Recruit Disguise
|tip It appears as a button on the screen.
Wear the Irontide Recruit Disguise |havebuff 2055038 |q 49399
step
label "Collect_Blacktooth_Bruiser_Orders"
Kill Blacktooth enemies around this area
collect Blacktooth Bruiser Orders##153682 |q 49399/3 |goto 76.40,83.42
step
label "Collect_Bilge_Rat_Orders"
Kill enemies around this area
|tip Only Ookin Crewman and Vulpera enemies will drop the quest item.
collect Bilge Rat Orders##153680 |q 49399/1 |goto 76.40,83.42
step
label "Collect_Cutwater_Corsair_Orders"
Kill Cutwater enemies around this area
collect Cutwater Corsair Orders##153681 |q 49399/2 |goto 76.40,83.42
step
Run up the stairs |goto 76.80,83.61 < 5 |c |q 49402
step
Enter the building |goto 77.00,83.56 < 3 |only if walking
Run up the stairs |goto 77.07,83.39 < 3 |only if walking
Run up the stairs |goto 77.05,83.26 < 3 |only if walking
Leave the building |goto 76.94,83.24 < 3 |c |q 49402
step
Follow the path |goto 76.89,83.45 < 3 |only if walking
Run up the stairs |goto 77.00,83.52 < 5 |only if walking
Run up the stairs |goto 77.09,83.46 < 5 |only if walking
talk Rodrigo##129098
|tip Upstairs on the platform.
turnin Flew the Coop##49402 |goto 77.03,82.90
accept Rodrigo's Revenge##49403 |goto 77.03,82.90
step
Run up the stairs |goto 77.06,82.80 < 3 |only if walking
clicknpc Riding Macaw##143068
|tip At the top of the building.
Mount the Riding Macaw |invehicle |goto 77.06,82.63 |q 49403
step
Bomb #100# Pirates |q 49403/1 |goto 76.01,83.41
|tip They are on the ground around this area.
|tip Use the ability on your action bar.
step
Return to Rodrigo |goto 77.06,82.90 < 7 |c |q 49403 |notravel
step
Stop Flying with the Riding Macaw |outvehicle |goto 77.06,82.90 |c |q 49403
|tip Click the red arrow on your action bar.
step
talk Rodrigo##129098
|tip Upstairs on the platform.
turnin Rodrigo's Revenge##49403 |goto 77.03,82.90
step
Follow the path down |goto 77.10,83.26 < 5 |only if walking
Cross the bridge |goto 77.13,83.53 < 3 |only if walking
Follow the path |goto 77.19,83.65 < 3 |only if walking
Enter the building |goto 77.25,83.83 < 5 |only if walking
talk Venrik##128927
|tip Inside the building.
turnin The Big Job##49399 |goto 77.36,83.92
accept Fairwind's "Friends"##49404 |goto 77.36,83.92
turnin Recruiting Efforts##49400 |goto 77.36,83.92
step
Leave the building |goto 77.33,84.15 < 3 |walk
Run up the stairs |goto 77.40,85.71 < 5 |only if walking
Follow the path |goto 77.26,85.79 < 5 |only if walking
Run up the stairs |goto 77.28,85.99 < 5 |only if walking
Follow the path up |goto 77.42,85.95 < 5 |c |q 49407
step
Follow the path |goto 77.36,85.71 < 5 |only if walking
Follow the path |goto 77.16,85.78 < 5 |only if walking
Run up the stairs |goto 77.10,86.06 < 5 |only if walking
Enter the building |goto 76.98,86.05 < 5 |walk
talk Carentan##128903
|tip Inside the building.
turnin Trixie Business##49407 |goto 76.89,85.97
accept Carentan's Payment##49522 |goto 76.89,85.97
step
click Dusty Crate
|tip Inside the building.
Open the Dusty Crate |q 49522/1 |goto 76.82,85.97
step
Click the Complete Quest Box:
turnin Carentan's Payment##49522
accept A Bad Deal##49523
step
Leave the building |goto 76.99,86.05 < 3 |walk
Follow the path |goto 77.13,86.00 < 5 |only if walking
Jump down here |goto 77.13,85.42 < 5 |only if walking
Follow the path down |goto 76.85,84.46 < 7 |only if walking
Follow the path |goto 76.61,83.67 < 7 |only if walking
Follow the path down |goto 74.78,83.20 < 7 |only if walking
Continue down the path |goto 74.80,81.79 < 7 |only if walking
Continue down the path |goto 75.65,81.25 < 7 |only if walking
click Sandy Seaweed-covered Chest
Find the Sandy Seaweed-Covered Chest |q 49409/4 |goto 75.63,80.57
step
Follow the path |goto 75.69,80.83 < 7 |only if walking
click Dirty Diamond
Find the Missing Treasure |q 49409/5 |goto 76.30,80.77
step
Click the Complete Quest Box:
turnin Missing Treasure!##49409
step
Follow the path up |goto 75.80,81.04 < 7 |only if walking
Follow the path up |goto 75.60,81.40 < 7 |only if walking
Continue up the path |goto 74.81,81.87 < 7 |only if walking
Follow the path |goto 74.73,83.29 < 7 |only if walking
Follow the path |goto 74.45,83.42 < 7 |only if walking
Enter the Ring of Booty |q 49404/1 |goto 74.09,83.43
|tip You will be attacked by a group of enemies.
step
Kill the enemies that attack
clicknpc Flynn Fairwind##130081
Untie Flynn |q 49404/2 |goto 73.84,83.43
step
Watch the dialogue
Kill the enemies that attack in waves
|tip There are 3 waves.
Survive Harlan's Game |q 49404/3 |goto 73.88,83.43
step
Watch the dialogue
Escape on the Tiragarde Great Gryphon |invehicle |goto 73.88,83.43 |q 49404
step
Watch the dialogue
Escape the Ring of Booty |goto 76.99,82.96 < 10 |c |q 49404 |notravel
step
talk Taelia##130159
|tip Upstairs on the platform.
turnin Fairwind's "Friends"##49404 |goto 77.14,82.90
accept Defenders of Daelin's Gate##49405 |goto 77.14,82.90
step
clicknpc Galeheart##130158
Mount Galeheart |q 49405/1 |goto 77.14,82.90
step
Watch the dialogue
Ride to Vigil Hill |q 49405/2 |goto 61.59,57.84 |notravel
step
Follow the path |goto 61.28,58.63 < 7 |only if walking
talk Vigil Hill Refugee##141078
turnin Defenders of Daelin's Gate##49405 |goto 60.92,59.17
accept No-Landing Zone##52431 |goto 60.92,59.17
stickystart "Kill_Wiley_Jaki"
stickystart "Kill_Skullcrusher_Cotner"
step
Follow the path down |goto 61.05,59.95 < 7 |only if walking
Follow the path down |goto 61.16,60.45 < 7 |only if walking
Follow the path |goto 61.07,60.87 < 7 |only if walking
kill Burnsy the Blade##141107 |q 52431/1 |goto 61.21,61.25
|tip The enemy that is here rotates, so you may need to kill other enemies first.
step
label "Kill_Wiley_Jaki"
kill Wiley Jaki##141108 |q 52431/2 |goto 61.21,61.23
|tip The enemy that is here rotates, so you may need to kill other enemies first.
step
label "Kill_Skullcrusher_Cotner"
kill Skullcrusher Cotner##141113 |q 52431/3 |goto 61.19,61.27
|tip The enemy that is here rotates, so you may need to kill other enemies first.
step
Follow the path up |goto 61.08,60.82 < 7 |only if walking
Follow the path up |goto 61.12,60.25 < 7 |only if walking
talk Vigil Hill Refugee##141078
turnin No-Landing Zone##52431 |goto 60.92,59.17
accept A Desperate Defense##49869 |goto 60.92,59.17
step
Cross the bridge |goto 60.09,59.52 < 7 |only if walking
Follow the road |goto 59.40,59.77 < 7 |only if walking
Follow the path up |goto 58.36,60.52 < 7 |only if walking
Follow the path up |goto 57.46,60.44 < 7 |only if walking
talk Lieutenant Tarenfold##131048
turnin A Desperate Defense##49869 |goto 56.68,61.18
accept Farmers Who Fight##52750 |goto 56.69,61.18
accept Air Raid##49737 |goto 56.69,61.18
step
talk Taelia##121235
accept Numbing the Pain##52787 |goto 56.47,61.73
stickystart "Kill_Irontide_Skyriders"
stickystart "Collect_Evermoss_Clumps"
step
Follow the path |goto 56.37,61.37 < 7 |only if walking
talk Vigil Hill Farmer##141519+
Recruit #6# Vigil Hill Farmers |q 52750/1 |goto 56.16,59.79
step
label "Kill_Irontide_Skyriders"
kill 6 Irontide Skyrider##141485 |q 49737/1 |goto 56.16,59.79
step
label "Collect_Evermoss_Clumps"
click Evermoss
|tip They look like stringy green plants hanging from the side of tree trunks around this area.
collect 5 Evermoss Clump##162522 |q 52787/1 |goto 56.16,59.79
step
talk Lieutenant Tarenfold##131048
turnin Farmers Who Fight##52750 |goto 56.68,61.18
turnin Air Raid##49737 |goto 56.67,61.18
accept Hands Off My Booty!##49738 |goto 56.67,61.18
step
talk Taelia##121235
turnin Numbing the Pain##52787 |goto 56.47,61.73
step
Follow the path |goto 56.86,61.29 < 7 |only if walking
Follow the path |goto 57.52,61.62 < 7 |only if walking
talk Sky Marshal Sanders##130599
fpath Vigil Hill |goto 57.74,61.53
step
Run up the stairs |goto 57.71,61.80 < 3 |only if walking
Enter the building |goto 57.82,61.85 < 3 |walk
talk Gordon Fine##136482
|tip Inside the building.
home Vigil Hill |goto 57.95,62.09 |q 50972 |future
step
Leave the building |goto 58.01,62.03 < 3 |walk
Jump down here |goto 58.09,61.90 < 7 |only if walking
talk Meredith##131654
accept Cat on a Hot Copper Roof##49757 |goto 58.60,61.52
step
click Ring##130703
|tip They look like metal loops hanging all over the sides of this building.
|tip You may have to jump to reach it.
Grab the Climbing Ring |havebuff 1360761 |goto 58.79,61.30 |q 49757
step
click Ring##130703+
|tip They look like metal loops hanging all over the sides of this building.
|tip Keep clicking the rings so that you reach the balcony at the top of the building.
|tip You have 30 seconds until you lose your grip every time you switch rings.
|tip Wait for the falling debris to fall, and quickly click the rings to move past where it falls.
|tip Debris falls on the eastern and northern sides of the building.
Click Here After You Reach the Balcony |confirm |goto 58.79,61.29 |q 49757
step
clicknpc Scratchy##130746
|tip Upstairs on the balcony of the building.
|tip You will have to click twice.
collect Scratchy##155858 |q 49757/1 |goto 58.85,61.34
step
talk Meredith##131654
turnin Cat on a Hot Copper Roof##49757 |goto 58.60,61.52
step
Follow the path up |goto 58.26,60.49 < 7 |only if walking
Follow the path up |goto 57.64,60.34 < 7 |only if walking
Follow the path |goto 56.58,61.36 < 7 |only if walking
Follow the path up |goto 55.97,61.79 < 7 |only if walking
Follow the path |goto 56.08,63.28 < 7 |only if walking
clicknpc Vigil Hill Cannon##131220
Control the Vigil Hill Cannon |invehicle |goto 56.17,64.42 |q 49738
step
Kill enemies around this area
|tip They are on the ground below.
|tip Use the ability on your action bar.
Slay #20# Looters |q 49738/1 |goto 56.18,64.47
step
Stop Controlling the Vigil Hill Cannon |outvehicle |goto 56.18,64.47 |q 49738
step
Follow the path down |goto 56.07,63.33 < 7 |only if walking
Follow the path |goto 56.06,61.61 < 7 |only if walking
talk Lieutenant Tarenfold##131048
turnin Hands Off My Booty!##49738 |goto 56.68,61.18
accept For Kul Tiras!##49736 |goto 56.68,61.18
accept Cease Fire!##49740 |goto 56.68,61.18
step
talk Taelia##142393
accept Righteous Retribution##49741 |goto 56.47,61.73
stickystart "Inspire_Vigil_Hill_Defenders"
step
Follow the path |goto 56.70,61.77 < 7 |only if walking
Follow the path down |goto 57.03,62.17 < 7 |only if walking
Follow the path down |goto 57.65,62.31 < 7 |only if walking
Continue down the path |goto 58.01,62.97 < 7 |c |q 49740
step
accept Enemies at the Gate##49739 |goto 58.09,64.02
|tip You will accept this quest automatically.
|only if level < 120
stickystart "Defend_Daelins_Gate"
step
Follow the path |goto 58.09,64.05 < 7 |only if walking
Follow the path down |goto 57.44,64.50 < 7 |only if walking
Follow the path down |goto 56.90,65.45 < 7 |only if walking
Follow the path |goto 57.24,66.00 < 7 |only if walking
Follow the path up |goto 57.29,66.44 < 7 |only if walking
Follow the path up |goto 57.41,67.36 < 7 |only if walking
click Captured Cannon
Destroy the Captured Cannon |q 49740/1 |goto 57.66,67.41 |count 1
step
Follow the path up |goto 57.37,67.74 < 7 |only if walking
Follow the path |goto 57.38,68.29 < 7 |only if walking
Follow the path up |goto 57.23,68.63 < 7 |only if walking
Follow the path |goto 56.90,68.90 < 7 |only if walking
click Captured Cannon
|tip Upstairs on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 56.77,68.93 |count 2
step
click Captured Cannon
|tip Upstairs on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 56.58,69.15 |count 3
step
Follow the path down |goto 56.95,68.86 < 7 |only if walking
Follow the path |goto 57.36,68.71 < 7 |only if walking
Follow the path |goto 57.53,69.11 < 7 |only if walking
Follow the path down |goto 56.89,70.14 < 7 |only if walking
Follow the path |goto 56.86,70.42 < 7 |only if walking
Follow the path up |goto 57.01,70.73 < 7 |only if walking
Follow the path |goto 57.34,70.40 < 7 |only if walking
click Captured Cannon
|tip Upstairs on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 57.21,70.08 |count 4
step
Jump up here |goto 56.57,69.77 < 3 |only if walking
Jump down here |goto 56.66,68.92 < 5 |only if walking
Follow the path |goto 56.12,68.17 < 7 |only if walking
Run up the ramp |goto 55.70,67.95 < 3 |only if walking
Follow the path |goto 55.62,68.04 < 3 |only if walking
Run up the stairs |goto 55.54,68.02 < 3 |only if walking
click Azerite Bombs
Steal the Azerite Bombs |q 49741/1 |goto 55.39,67.83
step
Run down the stairs |goto 55.49,67.95 < 3 |only if walking
Run down the ramp |goto 55.63,68.03 < 3 |only if walking
Bomb The Plunder Runner |q 49741/2 |goto 55.84,67.54
|tip Use the Azerite Bomb ability.
|tip It appears as a button on the screen.
step
label "Inspire_Vigil_Hill_Defenders"
Follow the path |goto 56.62,67.29 < 7 |only if walking
use the Proudmoore Battle Standard##156520
|tip Use it near Vigil Hill NPC's around this area.
Inspire #15# Vigil Hill Defenders |q 49736/1 |goto 57.28,66.07
step
label "Defend_Daelins_Gate"
Kill enemies around this area
click Sack of Booty+
|tip They look like big brown bags on the ground around this area.
clicknpc Inactive Harvest Thresher##141559+
|tip They look like broken down metal machines on the ground around this area.
|tip They will appear as yellow dots on your minimap.
Defend Daelin's Gate |q 49739/1 |goto 57.28,66.07
|only if havequest(49739) or completedq(49739)
step
Follow the path |goto 57.33,66.07 < 10 |only if walking
Continue following the path |goto 57.89,66.27 < 10 |only if walking
Continue following the path |goto 58.43,66.58 < 7 |only if walking
Continue following the path |goto 58.85,66.46 < 7 |only if walking
click Landing Boat
Board the Landing Boat |q 49741/3 |goto 59.04,66.55
step
Ride to the Bloodwake |goto 59.69,67.90 < 5 |c |q 49741 |notravel
step
Bomb The Bloodwake |q 49741/4 |goto 59.69,67.90
|tip Use the Azerite Bomb ability.
|tip It appears as a button on the screen.
step
Return to Shore |goto 57.29,71.81 < 7 |c |q 49741 |notravel
step
clicknpc Galeheart##141838
Mount Galeheart |q 49741/5 |goto 57.56,71.58
step
Ignite #5# Powder Barrels |q 49741/6 |goto 55.94,75.78
|tip They look like wooden barrels on the ship below as you fly.
|tip Use the ability on your action bar.
step
Return to Shore |goto 57.56,71.58 < 10 |c |q 49741
step
Leave the building |goto 57.82,61.85 < 3 |walk
Follow the path |goto 56.89,61.27 < 7 |only if walking
talk Lieutenant Tarenfold##131048
turnin For Kul Tiras!##49736 |goto 56.68,61.18
turnin Cease Fire!##49740 |goto 56.68,61.18
step
talk Taelia##142393
turnin Righteous Retribution##49741 |goto 56.50,61.25
accept Bearers of Bad News##50110 |goto 56.50,61.25
step
clicknpc Galeheart##142407
Mount Galeheart |q 50110/1 |goto 56.51,61.26
step
Travel to Unity Square |goto Boralus/0 49.05,75.75 < 10 |c |q 50110 |notravel
step
talk Taelia##135259
turnin Bearers of Bad News##50110 |goto Boralus/0 49.10,75.73
accept Prepare for Trouble##50795 |goto Boralus/0 49.10,75.73
step
Follow the path |goto 49.51,78.94 < 7 |only if walking
talk Proudmoore Guard##135075+
Tell them _"The Lord Admiral is in danger. Come with us!"_
Rally #4# Proudmoore Guards |q 50795/1 |goto 47.50,80.92
step
_Next to you:_
talk Taelia
turnin Prepare for Trouble##50795
accept Make Our Case##50787
step
Follow the path |goto 48.15,81.79 < 7 |only if walking
Run down the stairs |goto 48.90,82.96 < 5 |only if walking
Watch the dialogue
Reveal Lady Ashvane's Treason |q 50787/1 |goto 49.21,85.42
step
talk Taelia##135259
turnin Make Our Case##50787 |goto 50.01,87.58
accept Enemies Within##50788 |goto 50.01,87.58
accept Clear the Air##50789 |goto 50.01,87.58
stickystart "Slay_Ashvane_Combatants"
step
click Smoking Payload+
|tip They look like barrels with grey smoke rising out of them in wooden carts on the ground around this area.
Destroy #4# Smoking Payloads |q 50789/1 |goto 49.21,85.39
step
label "Slay_Ashvane_Combatants"
Kill Ashvane enemies around this area
Slay #6# Ashvane Combatants |q 50788/1 |goto 49.21,85.39
step
Click the Complete Quest Box:
turnin Clear the Air##50789
step
Click the Complete Quest Box:
turnin Enemies Within##50788
accept Hot Pursuit##50790
step
Follow the path |goto 48.13,82.10 < 7 |only if walking
clicknpc Proudmoore Charger##135672
Mount the Proudmoore Charger |q 50790/1 |goto 47.75,81.39
step
Watch the dialogue
|tip Spam the "Jump" ability on your action bar as you ride the horse.
|tip Use the "Giddyup!" ability on your action bar whenever it's available, to go faster.
Pursue Priscilla Ashvane |q 50790/2 |goto 39.91,51.36 |notravel
step
Watch the dialogue
Return to Unity Square |goto 47.85,81.36 < 10 |noway |c |q 50790
step
talk Taelia##135259
turnin Hot Pursuit##50790 |goto 48.29,80.60
step
talk Katherine Proudmoore##121144
accept Proudmoore's Parley##50972 |goto 48.42,80.86
step
Follow the path |goto 47.07,80.33 < 7 |only if walking
Follow the path |goto 46.37,77.12 < 7 |only if walking
Follow the road down |goto 49.20,74.35 < 7 |only if walking
Follow the road |goto 51.84,68.33 < 7 |only if walking
Follow the road up |goto 53.74,60.66 < 7 |only if walking
Follow the road up |goto 50.90,62.27 < 7 |only if walking
Follow the path |goto 49.18,64.85 < 7 |only if walking
talk Jessica Clarke##143535
fpath Proudmoore Keep |goto 47.75,65.43
step
Follow the path |goto 68.11,15.56 < 7 |only if walking
Follow the path |goto 70.65,16.60 < 7 |only if walking
Follow the path |goto 71.31,14.78 < 7 |only if walking
talk Roko##129940
|tip He walks around this area.
turnin A Bad Deal##49523 |goto 70.45,11.19
step
talk Courier Gerald##130377
accept Trouble at Southport Watch##49715 |goto 69.25,11.35
step
Follow the path |goto 71.36,14.66 < 7 |only if walking
Run up the stairs |goto 73.46,14.16 < 5 |only if walking
Enter the building |goto 73.50,13.71 < 3 |walk
talk Wesley Rockhold##135153
|tip Inside the building.
home Snug Harbor Inn |goto 74.12,12.68
step
Leave the building |goto Boralus/0 73.50,13.75 < 3 |walk
Jump down here |goto Boralus/0 73.46,15.28 < 5 |only if walking
Follow the path |goto Boralus/0 73.42,16.81 < 7 |only if walking
Follow the path |goto Boralus/0 74.33,18.83 < 7 |only if walking
Continue following the path |goto Boralus/0 75.82,22.14 < 7 |only if walking
Run down the stairs |goto Boralus/0 75.70,22.97 < 5 |only if walking
Jump down here |goto Boralus/0 74.25,23.92 < 7|only if walking
Follow the path |goto Tiragarde Sound/0 74.46,44.32 < 7 |only if walking
Follow the path up |goto Tiragarde Sound/0 75.17,43.56 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 76.60,44.01 < 7 |only if walking
Continue following the path |goto Tiragarde Sound/0 77.24,43.74 < 7 |only if walking
Follow the path up |goto Tiragarde Sound/0 77.50,43.42 < 7 |only if walking
Continue up the path |goto Tiragarde Sound/0 78.32,42.90 < 7 |only if walking
Continue up the path |goto Tiragarde Sound/0 78.87,42.28 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 80.02,41.76 < 7 |only if walking
Run up the ramp |goto Tiragarde Sound/0 81.03,42.26 < 5 |only if walking
Enter the building |goto Tiragarde Sound/0 81.08,42.41 < 3 |walk
talk Tallis Skyheart##130375
|tip Inside the building.
turnin Trouble at Southport Watch##49715 |goto Tiragarde Sound/0 81.10,42.48
accept Patching Up the Rear##49733 |goto Tiragarde Sound/0 81.10,42.48
step
Leave the building |goto 81.08,42.40 < 3 |walk
Follow the path |goto 80.88,42.10 < 7 |only if walking
talk Hawkmaster Lloyd##132720
accept Death from Two Sides##51226 |goto 80.62,42.09
stickystart "Kill_Brinefang_Saurolisks"
step
Follow the path up |goto 81.16,41.75 < |only if walking
talk Injured Marine##130556+
|tip They look like humans kneeling on the ground around this area.
Bandage #5# Injured Marines |q 49733/1 |goto 81.77,41.00
step
label "Kill_Brinefang_Saurolisks"
kill 8 Brinefang Saurolisk##136901 |q 51226/1 |goto 81.77,41.00
step
Run up the ramp |goto 81.03,42.26 < 5 |only if walking
Enter the building |goto 81.08,42.42 < 3 |walk
talk Tallis Skyheart##130375
|tip Inside the building.
turnin Patching Up the Rear##49733 |goto 81.10,42.48
step
Leave the building |goto 81.08,42.40 < 3 |walk
Follow the path |goto 80.88,42.10 < 7 |only if walking
talk Hawkmaster Lloyd##132720
turnin Death from Two Sides##51226 |goto 80.62,42.09
accept Free Bird##49720 |goto 80.62,42.09
step
Run up the ramp |goto 81.03,42.26 < 5 |only if walking
Enter the building |goto 81.08,42.42 < 3 |walk
talk Tallis Skyheart##130375
|tip Inside the building.
accept Targeting a Turncoat##49734 |goto 81.10,42.48
accept A Lesson on Trust##49716 |goto 81.10,42.48
step
talk Officer Jovan##133035
|tip Inside the building.
accept A Boralus Triple Threat##50249 |goto 81.11,42.50
stickystart "Free_Falcons"
stickystart "Collect_Marine_Identification_Badges"
step
Leave the building |goto 81.07,42.40 < 3 |walk
Follow the path |goto 80.90,42.05 < 7 |only if walking
Follow the path up |goto 80.39,41.53 < 7 |only if walking
Run up the stairs |goto 79.92,39.51 < 5 |only if walking
Follow the path |goto 79.79,39.38 < 5 |only if walking
Run up the stairs |goto 79.60,38.87 < 5 |only if walking
Follow the path |goto 79.59,38.62 < 5 |only if walking
Follow the path |goto 79.50,38.44 < 7 |only if walking
kill Overseer Howling##133021 |q 50249/1 |goto 78.75,38.82
step
Follow the path |goto 79.55,38.33 < 7 |only if walking
Follow the path |goto 79.65,37.55 < 7 |only if walking
Follow the path down |goto 79.41,37.07 < 7 |only if walking
Follow the path down |goto 79.24,36.73 < 7 |only if walking
kill Hayden the Madshot##133028 |q 50249/3 |goto 78.16,36.71
|tip He walks around this area.
step
Follow the path up |goto 78.73,36.70 < 7 |only if walking
Follow the path |goto 79.26,36.71 < 7 |only if walking
Follow the path |goto 79.49,37.16 < 7 |only if walking
Run up the stairs |goto 79.92,37.45 < 5 |only if walking
kill Stablemaster Diana##133024 |q 50249/2 |goto 80.14,37.38
|tip She walks around this area on a horse.
step
label "Free_Falcons"
click Falcon Cage##278774+
|tip They look like metal bird cages on the ground around this area.
Free #5# Falcons |q 49720/1 |goto 80.11,37.15
step
label "Collect_Marine_Identification_Badges"
Kill Mutinous enemies around this area
|tip Use the "Call Leonard" ability on enemies to kill them easier.
|tip It appears as a button on the screen.
collect 8 Marine Identification Badge##156599 |q 49716/1 |goto 80.11,37.15
step
Run up the stairs |goto 79.73,37.79 < 5 |only if walking
Follow the path |goto 79.99,37.89 < 5 |only if walking
Follow the path |goto 79.93,38.33 < 7 |only if walking
kill Fernn the Turncoat##130369 |q 49734/1 |goto 80.13,38.89
step
Jump down here |goto 80.19,39.11 < 5 |only if walking
Follow the path down |goto 80.09,40.00 < 7 |only if walking
Follow the path |goto 80.39,41.47 < 7 |only if walking
talk Hawkmaster Lloyd##132720
turnin Free Bird##49720 |goto 80.63,42.09
step
Run up the ramp |goto 81.03,42.26 < 5 |only if walking
Enter the building |goto 81.08,42.42 < 3 |walk
talk Tallis Skyheart##130375
|tip Inside the building.
turnin Targeting a Turncoat##49734 |goto 81.10,42.48
turnin A Lesson on Trust##49716 |goto 81.10,42.48
turnin A Boralus Triple Threat##50249 |goto 81.10,42.48
step
Leave the building |goto Boralus/0 73.50,13.75 < 3 |walk
Follow the path |goto Boralus/0 73.01,14.54 < 7 |only if walking
Follow the path |goto Boralus/0 71.15,15.86 < 7 |only if walking
Jump down here |goto Boralus/0 70.40,17.64 < 5 |only if walking
Run up the stairs |goto Boralus/0 69.12,21.23 < 5 |only if walking
Enter the building |goto Boralus/0 68.83,21.11 < 3 |walk
Follow the path |goto Boralus/0 67.92,20.78 < 5 |walk
Run down the stairs |goto Boralus/0 67.43,21.40 < 3 |walk
Run down the stairs |goto Boralus/0 67.39,22.92 < 3 |walk
talk Genn Greymane##120788
|tip Inside the building.
turnin Proudmoore's Parley##50972 |goto Boralus/0 68.05,22.18
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Drustvar",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Drustvar storylines:\n\nThe Final Effigy\nAn Airtight Alibi\nA New Order\nStorming the Manor\nFighting With Fire\nThe Burden of Proof\nThe Order of Embers\nBreak on Through\nClear Victory\nStick It To 'Em!",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
talk Taelia##121235
|tip Inside the building.
turnin Stormsong Valley##47962 |goto Boralus/0 68.17,21.97
accept The Vanishing Lord##48622 |goto Boralus/0 68.17,21.97
step
Run up the stairs |goto Boralus/0 67.51,22.92 < 3 |walk
Run up the stairs |goto Boralus/0 67.22,22.55 < 3 |walk
Follow the path |goto Boralus/0 67.43,21.35 < 5 |walk
Follow the path |goto Boralus/0 67.88,20.78 < 5 |walk
Leave the building |goto Boralus/0 68.83,21.15 < 3 |walk
Follow the path |goto Boralus/0 70.03,19.00 < 7 |only if walking
Continue following the path |goto Boralus/0 71.60,18.13 < 7 |only if walking
Continue following the path |goto Boralus/0 74.33,18.88 < 7 |only if walking
Continue following the path |goto Boralus/0 75.82,22.14 < 5 |only if walking
Run down the stairs |goto Boralus/0 75.65,22.97 < 5 |only if walking
Follow the path |goto Boralus/0 74.95,23.01 < 5 |only if walking
Jump down here |goto Boralus/0 74.25,23.88 < 5 |only if walking
talk Will Melborne##135064
Tell him _"I need a ferry to Drustvar."_
Take the Ferry to Drustvar |q 48622/1 |goto Boralus/0 74.17,24.78
step
Ride the Ferry to Drustvar |goto Drustvar/0 61.79,36.54 < 10 |c |q 48622 |notravel
step
Follow the path |goto 61.01,36.65 < 10 |only if walking
Follow the path up |goto 60.10,35.54 < 7 |only if walking
Follow the path |goto 58.92,34.87 < 7 |only if walking
Follow the path up |goto 57.36,35.84 < 7 |only if walking
talk Cyril White##130419
Choose _<Look for the source of the spell.>_
Meet with Cyril White |q 48622/2 |goto 56.14,35.29
step
click Cursed Effigy
Destroy the Effigy |q 48622/3 |goto 55.87,35.06
step
click Cursed Effigy
turnin The Vanishing Lord##48622 |goto 55.87,35.07
accept Fallhaven's Curse##47969 |goto 55.87,35.07 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
stickystart "Combat_The_Curse"
step
click Mayor's Bulletin
accept Signs and Portents##47968 |goto 56.14,35.30
step
Follow the path down |goto 56.46,35.30 < 7 |only if walking
Follow the path |goto 57.33,35.86 < 7 |only if walking
click Rancher's Letter
Read the Rancher's Letter |q 47968/2 |goto 57.96,35.69
step
label "Combat_The_Curse"
Follow the path |goto 58.12,35.08 < 7 |only if walking
Kill enemies around this area
|tip The Fallhaven Pigs respawn quickly, so this is the best place to get the quest completed fast.
click Tainted Pig Feed+
|tip They look like small yellow piles of dirt on the ground around this area.
click Cursed Charm+
|tip They look like dreamcatcher ornaments hanging from the buildings around this area.
Combat the Curse |q 47969/1 |goto 58.11,34.13
|only if havequest(47969) or completedq(47969)
step
Follow the path up |goto 57.38,35.89 < 7 |only if walking
Follow the path |goto 56.29,35.17 < 7 |only if walking
Run up the stairs |goto 55.26,35.30 < 5 |only if walking
Enter the building |goto 55.27,35.50 < 3 |walk
Follow the path |goto 55.27,35.75 < 3 |walk
click Ava's Note
|tip Inside the building.
Read Ava's Note |q 47968/3 |goto 55.21,35.98
step
Follow the path |goto 55.27,35.73 < 3 |walk
Leave the building |goto 55.27,35.49 < 3 |walk
Follow the road |goto 55.12,35.05 < 7 |only if walking
Follow the path |goto 54.10,35.71 < 7 |only if walking
Follow the path |goto 53.60,35.67 < 7 |only if walking
click Farmer's Journal
Read the Farmer's Journal |q 47968/1 |goto 53.21,35.13
step
Follow the path |goto 53.50,35.55 < 7 |only if walking
Follow the road |goto 54.17,35.75 < 7 |only if walking
Follow the road |goto 55.16,35.08 < 7 |only if walking
Follow the path |goto 55.57,35.25 < 7 |only if walking
click Fallhaven Log
turnin Signs and Portents##47968 |goto 55.64,35.76
accept The Wayward Crone##47978 |goto 55.64,35.76
step
talk Clarence Page##124466
fpath Fallhaven |goto 55.13,34.69
step
Follow the road |goto 55.72,35.40 < 7 |only if walking
Follow the road |goto 56.86,34.41 < 7 |only if walking
Cross the bridge |goto 56.95,33.14 < 7 |only if walking
Follow the path |goto 57.20,32.47 < 7 |only if walking
Follow the path |goto 57.67,31.97 < 7 |only if walking
Continue following the path |goto 58.82,32.05 < 7 |only if walking
Continue following the path |goto 60.32,30.84 < 7 |only if walking
Run up the stairs |goto 60.66,31.25 < 3 |only if walking
Enter the building |goto 60.62,31.46 < 3 |walk
talk Helena Gentle##124922
|tip Inside the building.
turnin The Wayward Crone##47978 |goto 60.51,31.65
accept Witch Hunt##47979 |goto 60.51,31.65
step
click Stool
|tip Inside the building.
Take a Seat |q 47979/1 |goto 60.48,31.58
step
Watch the dialogue
click Gentle's Spellbook
|tip Inside the building.
accept Cracking the Curse##47981 |goto 60.58,31.47
step
Leave the building |goto 60.62,31.45 < 3 |walk
clicknpc Fallhaven Villager##125093
accept Furious Familiars##47980 |goto 60.85,30.65
stickystart "Slay_Enthralled_Wildlife"
step
Follow the path up |goto 60.30,30.01 < 7 |only if walking
Follow the path up |goto 59.26,28.62 < 5 |only if walking
Follow the path |goto 59.28,28.36 < 5 |only if walking
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 59.54,28.30 |count 1
step
Follow the path up |goto 58.85,27.64 < 7 |only if walking
kill Helena Gentle##124953 |q 47979/2 |goto 57.81,28.15
step
Click the Complete Quest Box:
turnin Witch Hunt##47979
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 57.66,27.81 |count 2
step
Follow the path |goto 58.25,28.71 < 7 |only if walking
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 57.55,30.07 |count 3
step
Follow the path |goto 57.54,29.47 < 7 |only if walking
Follow the path |goto 56.84,29.08 < 7 |only if walking
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 56.18,29.13 |count 4
step
label "Slay_Enthralled_Wildlife"
Kill enemies around this area
Slay #10# Enthralled Wildlife |q 47980/1 |goto 56.84,29.08
step
Click the Complete Quest Box:
turnin Furious Familiars##47980
step
Follow the path down |goto 56.89,29.49 < 7 |only if walking
Follow the path |goto 56.56,30.92 < 7 |only if walking
Follow the road |goto 57.56,31.97 < 7 |only if walking
Cross the bridge |goto 57.19,32.51 < 7 |only if walking
Follow the road |goto 56.95,33.19 < 7 |only if walking
Continue following the road |goto 56.83,34.39 < 7 |only if walking
click Cursed Effigy
turnin Cracking the Curse##47981 |goto 55.87,35.07
accept The Final Effigy##47982 |goto 55.87,35.07
step
click Cursed Effigy
Break the Cursed Effigy |q 47982/1 |goto 55.87,35.07
step
kill Deathcursed Terror##128345 |q 47982/2 |goto 55.92,35.08
step
Watch the dialogue
talk Cyril White##124417
turnin The Final Effigy##47982 |goto 55.87,35.13
accept The Waycrest Daughter##48108 |goto 55.87,35.13
step
click Wanted Poster
accept WANTED: Rindlewoe##51547 |goto 55.73,34.98
step
talk Elijah Eggleton##128467
accept To Market, To Market##47945 |goto 55.56,34.79
step
Enter the building |goto 55.37,34.50 < 3 |walk
talk Dinah Wellard##129992
|tip Inside the building.
home The Swine's Larder |goto 55.45,34.31
step
Leave the building |goto 55.37,34.50 < 3 |walk
Follow the road |goto 55.55,34.85 < 7 |only if walking
Follow the road |goto 56.19,34.89 < 7 |only if walking
Continue following the road |goto 56.87,34.28 < 7 |only if walking
Cross the bridge |goto 56.94,33.17 < 7 |only if walking
Follow the road |goto 57.19,32.46 < 7 |only if walking
Continue following the road |goto 57.59,31.99 < 7 |only if walking
Continue following the road |goto 58.88,32.02 < 7 |only if walking
Continue following the road |goto 60.03,31.02 < 7 |only if walking
Continue following the road |goto 61.13,30.73 < 7 |only if walking
Follow the path |goto 62.84,27.83 < 7 |only if walking
talk Thomas Staughton##124786
turnin To Market, To Market##47945 |goto 63.24,27.04
accept Save Their Bacon##47946 |goto 63.24,27.04
accept Big Bad Wolves##47947 |goto 63.24,27.04
accept Pork Chop##47948 |goto 63.24,27.04
stickystart "Slay_Spellbound_Beasts"
step
Follow the path down |goto 63.45,27.84 < 7 |only if walking
Follow the path |goto 63.96,28.39 < 7 |only if walking
clicknpc Trevor Hightide##124844
Free Trevor Hightide |q 47946/1 |goto 64.24,28.31
step
Follow the path |goto 63.99,28.48 < 7 |only if walking
clicknpc Travis Daybreak##129488
Free Travis Daybreak |q 47946/2 |goto 63.61,29.33
step
Enter the building |goto 63.49,30.27 < 5 |walk
click Pig Effigy
|tip Inside the building.
accept That's Not My Fetish##47949 |goto 63.35,30.10
step
Leave the building |goto 63.49,30.26 < 3 |walk
kill Roland Hacksaw##124882 |q 47948/1 |goto 63.85,31.14
step
Follow the path |goto 63.93,31.59 < 3 |only if walking
clicknpc Burke Stevenson##129490
Free Burke Stevenson |q 47946/4 |goto 64.06,31.52
step
clicknpc Kyle Sailford##129489
Free Kyle Sailford |q 47946/3 |goto 64.71,30.17
step
label "Slay_Spellbound_Beasts"
kill Hexed Howler##124814+
Slay #10# Spellbound Beasts |q 47947/1 |goto 64.14,29.33
step
Follow the path up |goto 63.92,28.80 < 7 |only if walking
talk Thomas Staughton##124786
turnin Save Their Bacon##47946 |goto 63.24,27.04
turnin Big Bad Wolves##47947 |goto 63.24,27.04
turnin Pork Chop##47948 |goto 63.24,27.04
turnin That's Not My Fetish##47949 |goto 63.24,27.04
accept Cured Ham##47950 |goto 63.24,27.04
step
use the Pig Fetish##153432
|tip Target the campfire on the ground next to you.
Burn the Pig Effigy |q 47950/1 |goto 63.24,27.04
step
talk Thomas Staughton##124786
turnin Cured Ham##47950 |goto 63.24,27.04
step
Follow the path |goto 63.78,27.26 < 7 |only if walking
Follow the path |goto 63.78,25.67 < 7 |only if walking
Continue following the path |goto 63.38,24.63 < 7 |only if walking
Continue following the path |goto 62.79,23.84 < 7 |only if walking
talk David Maldus##127296
accept Wicker Worship##48677 |goto 62.54,23.94
step
talk Anna Ridgeley##129984
fpath Barbthorn Ridge |goto 62.61,23.99
step
Follow the path |goto 62.33,23.59 < 7 |only if walking
Continue following the path |goto 60.84,23.49 < 7 |only if walking
Continue following the path |goto 60.00,22.71 < 7 |only if walking
talk Lord Autumnvale##127080
turnin Wicker Worship##48677 |goto 59.45,21.91
accept Questionable Offerings##48678 |goto 59.45,21.91
step
click Entrails
Click Here Once You Are Carrying the Entrails |confirm |goto 59.86,21.98 |q 48678
step
Give the Offering |q 48678/1 |goto 59.39,21.92 |count 1
step
click Bundle of Wicker
Click Here Once You Are Carrying the Bundle of Wicker |confirm |goto 59.88,21.99 |q 48678
step
Give the Offering |q 48678/1 |goto 59.39,21.92 |count 2
step
click Bones
Click Here Once You Are Carrying the Bones |confirm |goto 59.89,21.96 |q 48678
step
Give the Offering |q 48678/1 |goto 59.39,21.92 |count 3
step
Watch the dialogue
Witness Autumnvale's Ritual |q 48678/2 |goto 59.46,21.97
step
talk Lord Autumnvale##127080
turnin Questionable Offerings##48678 |goto 59.45,21.92
accept Not the Bees!##48680 |goto 59.45,21.92 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
accept Mind the Hives##48679 |goto 59.45,21.92
stickystart "Drive_Back_The_Barbthorn_Swarm"
step
Follow the path |goto 59.38,21.42 < 7 |only if walking
Follow the path up |goto 59.60,20.00 < 7 |only if walking
Follow the path |goto 60.48,19.10 < 7 |only if walking
Enter the cave |goto 60.66,18.17 < 5 |walk
Find Edwin |q 48679/1 |goto 60.60,17.60
|tip Inside the cave.
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Inside the cave.
Save Edwin |q 48679/2 |goto 60.60,17.60
step
label "Drive_Back_The_Barbthorn_Swarm"
Leave the cave |goto 60.66,18.20 < 3 |walk
Follow the path down |goto 60.44,19.30 < 7 |only if walking
Kill Barbthorn enemies around this area
click Barbthorn Hive+
|tip They look like yellow bee hives hanging on trees around this area.
click Abandoned Effigy+
|tip They look like smaller statues with antlered skull heads, and larger statues with wooden spikes on their backs on the ground around this area.
Drive Back the Barbthorn Swarm |q 48680/1 |goto 59.51,20.01
|only if havequest(48680) or completedq(48680)
step
Follow the path up |goto 58.90,21.41 < 7 |only if walking
talk Initiate Peony##127396
turnin Mind the Hives##48679 |goto 59.03,22.37
accept A Simple Sacrifice##48682 |goto 59.03,22.37
step
Follow the path up |goto 58.78,22.89 < 7 |only if walking
Enter the cave |goto 57.81,23.47 < 5 |walk
Watch the dialogue
kill Lord Autumnvale##127419
|tip Inside the cave.
Save Edwin, Again |q 48682/1 |goto 56.79,23.92
step
talk Edwin Maldus##127418
|tip Inside the cave.
turnin A Simple Sacrifice##48682 |goto 56.54,24.05
accept Changing Seasons##48683 |goto 56.54,24.05
step
Leave the cave |goto 57.78,23.47 < 5 |walk
Follow the path down |goto 58.56,23.15 < 7 |only if walking
Watch the dialogue
Follow Edwin |q 48683/1 |goto 59.35,21.98
step
click Wicker Man
Burn the Wicker Man |q 48683/2 |goto 59.26,21.95
step
talk Edwin Maldus##126979
turnin Changing Seasons##48683 |goto 59.35,21.98
step
Follow the path |goto 59.93,22.63 < 7 |only if walking
Continue following the path |goto 60.72,23.38 < 7 |only if walking
Continue following the path |goto 61.92,23.51 < 7 |only if walking
Jump down here |goto 54.78,34.31 < 5 |only if walking
Follow the path |goto 54.34,33.63 < 7 |only if walking
Continue following the path |goto 53.85,32.10 < 7 |only if walking
kill Rindlewoe##129783 |q 51547/1 |goto 52.79,29.63
|tip He walks in the water around this area.
|tip You may need help with this.
step
Follow the path up |goto 52.98,28.90 < 7 |only if walking
Follow the path up |goto 53.81,28.11 < 7 |only if walking
Follow the path |goto 54.07,27.32 < 7 |only if walking
talk Thaddeus "Gramps" Rifthold##127015
accept The Adventurer's Society##48793 |goto 53.92,26.99
accept Menace to Society##48792 |goto 53.92,26.99
stickystart "Slay_Bonegnasher_Troggs"
step
click Child-sized Backpack
Choose _<Inspect Backpack>_
Click Here After You Inspect the Backpack |confirm |goto 53.37,25.79 |q 48793
step
Follow the path up |goto 53.13,24.68 < 7 |only if walking
Follow the path |goto 52.90,24.12 < 7 |only if walking
Enter the cave |goto 53.33,23.39 < 5 |walk
click Beginner's Guide to Archaeology
|tip Inside the small cave.
Click Here After You Collect The Book |confirm |goto 53.51,23.24 |q 48793
step
Leave the cave |goto 53.29,23.42 < 5 |walk
Follow the path |goto 52.93,23.01 < 7 |only if walking
Enter the cave |goto 52.94,22.68 < 5 |walk
click Is it a Rock? How to Identify Relics
|tip Inside the small cave.
Click Here After You Collect The Book |confirm |goto 53.05,22.43 |q 48793
step
Leave the cave |goto 52.93,22.69 < 5 |walk
Follow the path |goto 52.36,23.92 < 7 |only if walking
click Half-eaten Journal
Look for Signs of the Children |q 48793/1 |goto 51.81,24.15
step
Follow the path up |goto 52.14,23.82 < 7 |only if walking
Follow the path |goto 51.72,23.55 < 7 |only if walking
talk Marcus Howlingdale##127157
turnin The Adventurer's Society##48793 |goto 51.37,23.27
turnin Menace to Society##48792 |goto 51.37,23.27
accept Mistakes Were Made##48804 |goto 51.37,23.27
step
Follow the path |goto 51.44,22.97 < 7 |only if walking
click Excavation Inventory
accept Research Recovery##48805 |goto 51.81,22.81
step
click "Ancient Potsherds"
collect "Ancient Potsherds"##152699 |q 48805/3 |goto 51.14,22.53
step
Follow the path |goto 50.98,22.21 < 5 |only if walking
clicknpc Euphemia Batten-Chase##127160
Save Euphemia Batten-Chase |q 48804/3 |goto 50.63,22.11
step
Follow the path |goto 51.15,22.18 < 7 |only if walking
click "Genuine Titan Disc"
collect "Genuine Titan Disc"##152703 |q 48805/2 |goto 51.60,21.92
step
clicknpc Amelia Tidecrest##127159
|tip Standing up on the rocks.
|tip You can reach her from the ground.
Watch the dialogue
Save Amelia Tidecrest |q 48804/2 |goto 51.73,21.53
step
Enter the cave |goto 52.41,21.00 < 5 |walk
clicknpc Jonathan "Johnny" Presterby##127158
|tip Inside the cave.
Save Jonathan Presterby |q 48804/1 |goto 52.68,20.97
step
label "Slay_Bonegnasher_Troggs"
Leave the cave |goto 52.37,21.01 < 5 |walk
Kill Bonegnasher enemies around this area
Slay #10# Bonegnasher Troggs |q 48792/1 |goto 51.77,21.09
step
Follow the path up |goto 51.35,20.65 < 7 |only if walking
Follow the path up |goto 51.05,20.52 < 7 |only if walking
Follow the path up |goto 50.78,20.54 < 5 |only if walking
click "Relic of the Makers"
collect "Relic of the Makers"##152704 |q 48805/1 |goto 50.75,20.23
step
Follow the path up |goto 50.35,21.28 < 5 |only if walking
Follow the path |goto 50.30,21.95 < 5 |only if walking
Jump down here |goto 50.70,22.75 < 5 |only if walking
Follow the path up |goto 50.89,23.32 < 5 |only if walking
Follow the path |goto 50.78,23.77 < 5 |only if walking
talk Marcus Howlingdale##127157
turnin Mistakes Were Made##48804 |goto 50.61,24.31
turnin Research Recovery##48805 |goto 50.61,24.31
accept Terminal Degree##48853 |goto 50.61,24.31
step
Follow the path |goto 50.39,24.13 < 5 |only if walking
Enter the cave |goto 50.35,23.81 < 5 |walk
kill Cragg the Stoneshaker##127125 |q 48853/1 |goto 49.67,23.52
|tip Inside the cave.
step
clicknpc Nigel Rifthold##127156
|tip Inside the cave.
Free Nigel Rifthold |q 48853/2 |goto 49.40,23.38
step
Leave the cave |goto 50.34,23.79 < 5 |walk
Follow the path |goto 50.39,24.13 < 5 |only if walking
talk Thaddeus "Gramps" Rifthold##127015
turnin Terminal Degree##48853 |goto 50.59,24.43
step
Leave the building |goto 55.37,34.48 < 3 |walk
Follow the path |goto 55.55,34.85 < 7 |only if walking
Follow the path |goto 55.82,34.92 < 5 |only if walking
talk Cyril White##124417
turnin WANTED: Rindlewoe##51547 |goto 55.87,35.13
step
Follow the path |goto 55.74,35.27 < 5 |only if walking
Follow the path |goto 55.09,35.03 < 7 |only if walking
Continue following the path |goto 54.53,35.68 < 7 |only if walking
Cross the bridge |goto 54.56,36.62 < 7 |only if walking
Follow the path |goto 54.62,37.35 < 7 |only if walking
Follow the path up |goto 54.36,38.34 < 7 |only if walking
talk Abby Lewis##121603
|tip She walks around this area.
accept Teddies and Tea##47289 |goto 54.35,39.21
step
Follow the path down |goto 54.65,39.31 < 7 |only if walking
Run up the stairs |goto 55.42,39.36 < 3 |only if walking
Enter the building |goto 55.43,39.58 < 3 |walk
click Trunksy
|tip Inside the building.
Find Trunksy |q 47289/2 |goto 55.39,39.75
step
Leave the building |goto 55.43,39.59 < 3 |walk
Follow the path |goto 55.56,38.80 < 5 |only if walking
click Mr. Munchykins
Find Mr. Munchykins |q 47289/1 |goto 55.61,38.55
step
Follow the path |goto 55.92,38.57 < 5 |only if walking
Follow the path up |goto 56.16,38.59 < 5 |only if walking
click Mayor Striggs
Find Mayor Striggs |q 47289/3 |goto 56.28,38.19
step
_Next to you:_
talk Abby Lewis##122169
turnin Teddies and Tea##47289
accept Kitty?##47428
step
Follow the path |goto 55.71,39.42 < 7 |only if walking
Follow the path up |goto 55.66,40.22 < 7 |only if walking
clicknpc Smoochums##121684
turnin Kitty?##47428 |goto 55.60,41.18
accept The Accursed Thicket##45972 |goto 55.60,41.18 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
step
click Glenbrook Register
accept The Village of Glenbrook##45079 |goto 55.62,41.19
stickystart "Purge_The_Woods"
step
Follow the path |goto 55.21,41.84 < 7 |only if walking
Follow the path up |goto 54.26,41.94 < 7 |only if walking
Follow the path up |goto 53.85,42.77 < 7 |only if walking
Follow the path |goto 53.85,43.66 < 7 |only if walking
Enter the cave |goto 53.54,44.06 < 5 |walk
click Mary's Book
|tip Inside the cave.
Find Mary Hayes |q 45079/1 |goto 53.14,44.44
step
Leave the cave |goto 53.53,44.07 < 5 |walk
Follow the path |goto 54.64,44.84 < 7 |only if walking
Follow the path |goto 55.19,44.91 < 5 |only if walking
click Hawthorne's Hoe
Find Samuel Hawthorne |q 45079/3 |goto 55.49,45.29
step
Follow the path up |goto 55.82,45.40 < 7 |only if walking
Follow the path up |goto 56.15,46.71 < 7 |only if walking
Enter the cave |goto 56.74,46.64 < 5 |walk
clicknpc Jonathan Hayes##122491
|tip Inside the cave.
Choose _<Investigate the body for identification.>_
Find Jonathan Hayes |q 45079/2 |goto 57.17,46.41
step
Leave the cave |goto 56.74,46.64 < 5 |c |q 45079
step
label "Purge_The_Woods"
Kill enemies around this area
click Bewitching Fetish+
|tip They look like statues with antlered skull heads on the ground around this area.
click Disturbing Charm+
|tip They look like wood and bone ornaments hanging from trees around this area.
Purge the Woods |q 45972/1 |goto 56.09,46.76
|only if havequest(45972) or completedq(45972)
step
Follow the path up |goto 56.16,47.02 < 7 |only if walking
Follow the path up |goto 56.16,47.78 < 7 |only if walking
Follow the path |goto 55.63,48.53 < 7 |only if walking
Enter the cave |goto 54.86,48.69 < 5 |walk
talk Annie Warren##122493
|tip Inside the cave.
turnin The Village of Glenbrook##45079 |goto 54.74,49.14
accept Tea Party##44785 |goto 54.74,49.14
step
Leave the cave |goto 54.89,48.63 < 5 |walk
Follow the path |goto 55.28,48.35 < 7 |only if walking
Follow Abby Lewis |q 44785/1 |goto 56.40,49.06
step
Follow the path |goto 56.75,48.88 < 7 |only if walking
Follow the path |goto 57.20,48.18 < 7 |only if walking
click Teapot
Pour the Tea |q 44785/2 |goto 58.18,47.91
step
kill Conjured Horror##122673 |q 44785/3 |goto 58.18,47.91
step
talk Annie Warren##123123
turnin Tea Party##44785 |goto 57.71,47.75
step
Follow the path down |goto 58.12,47.38 < 7 |only if walking
Follow the path down |goto 59.04,45.88 < 7 |only if walking
Continue down the path |goto 59.28,42.89 < 7 |only if walking
Follow the road |goto 60.29,39.72 < 7 |only if walking
Follow the road up |goto 61.54,39.88 < 7 |only if walking
Follow the road up |goto 62.94,41.24 < 7 |only if walking
talk Caretaker Allen##126210
accept Seeing Spirits##48475 |goto 62.62,42.98
accept Crypt Keepers##48474 |goto 62.62,42.98 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
stickystart "Cleanse_The_Cemetery"
step
Follow the path |goto 61.76,43.69 < 7 |only if walking
Follow the path |goto 61.57,44.56 < 7 |only if walking
click Gravebloom+
|tip They look like blue flowers on the ground around this area.
Collect #10# Graveblooms |q 48475/1 |goto 61.20,44.84
step
label "Cleanse_The_Cemetery"
Kill enemies around this area
click Neglected Headstone+
|tip They look like stone grave markers on the ground around this area.
Cleanse the Cemetery |q 48474/1 |goto 60.30,45.50
|only if havequest(48474) or completedq(48474)
step
click Ritual Urn
Create and Apply the Salve |q 48475/2 |goto 59.99,45.84
step
Follow the path down |goto 60.17,46.15 < 7 |only if walking
click Major Corrupting Circle
Free Aaron Cresterly |q 48475/3 |goto 60.77,46.62
step
talk Aaron Cresterly##126225
turnin Seeing Spirits##48475 |goto 60.77,46.62
accept Split Party##48476 |goto 60.77,46.62
step
Follow the path up |goto 60.27,47.04 < 7 |only if walking
Follow the path |goto 60.04,47.50 < 7 |only if walking
kill Wicker-Bound Hunter##126262
Free Bridget Fairwater |q 48476/1 |goto 60.31,48.49
step
Run up the stairs |goto 60.07,48.87 < 5 |only if walking
Follow the path |goto 59.99,48.96 < 3 |walk
talk Bridget Fairwater##126240
turnin Split Party##48476 |goto 59.80,48.93
accept Looking For One More##48477 |goto 59.80,48.93
step
Follow the path |goto 59.81,49.14 < 5 |only if walking
Follow the path |goto 59.61,50.07 < 7 |only if walking
Run up the stairs |goto 59.12,50.70 < 5 |only if walking
kill Sister Westwood##126245 |q 48477/1 |goto 58.86,50.70
step
talk Mercy Fairwater##126253
turnin Looking For One More##48477 |goto 59.50,51.21
step
Leave the building |goto 55.37,34.50 < 3 |walk
Follow the road |goto 55.56,34.87 < 7 |only if walking
Follow the path down |goto 56.38,35.15 < 7 |only if walking
Follow the path |goto 57.27,35.87 < 7 |only if walking
Follow the path down |goto 58.86,35.10 < 7 |only if walking
Cross the bridge |goto 59.57,36.52 < 7 |only if walking
Follow the path |goto 59.72,37.29 < 7 |only if walking
Follow the road |goto 60.17,39.59 < 7 |only if walking
Follow the road up |goto 61.62,39.91 < 7 |only if walking
Continue following the road |goto 63.13,41.21 < 7 |only if walking
Continue following the road |goto 63.74,41.80 < 7 |only if walking
Continue following the road |goto 65.21,44.43 < 7 |only if walking
Continue following the road |goto 66.91,44.71 < 7 |only if walking
Continue following the road |goto 68.13,43.49 < 7 |only if walking
Run up the stairs |goto 69.95,42.74 < 3 |only if walking
Follow the path |goto 70.05,42.66 < 3 |only if walking
talk Constable Henry Framer##125394
turnin The Waycrest Daughter##48108 |goto 70.09,42.94
accept Standing Accused##48283 |goto 70.09,42.94
step
talk Lucille Waycrest##125380
Tell her _"I'm here to rescue you."_
Speak with Lucille Waycrest |q 48283/1 |goto 70.07,42.83
step
talk Marshal Everit Reade##125385
turnin Standing Accused##48283 |goto 69.67,43.18
accept The Woods Have Eyes##48109 |goto 69.67,43.18
accept In Case of Ambush##48110 |goto 69.67,43.18
step
Follow the road |goto 69.58,42.00 < 7 |only if walking
Follow the road |goto 69.92,41.39 < 7 |only if walking
talk Aaron Ridgeley##128576
fpath Hangman's Point |goto 71.05,40.88
stickystart "Kill_Watchful_Ravens"
stickystart "Kill_Darkmaw_Prowlers"
step
Follow the road |goto 69.94,41.40 < 7 |only if walking
Follow the road |goto 68.98,43.21 < 7 |only if walking
click Place Trap+
|tip They look like metal bear traps on the ground around this area.
Place #6# Traps |q 48110/1 |goto 68.07,43.71
step
label "Kill_Watchful_Ravens"
kill 4 Watchful Raven##125411 |q 48109/1 |goto 68.07,43.71
step
label "Kill_Darkmaw_Prowlers"
kill 6 Darkmaw Prowler##125464 |q 48109/2 |goto 68.07,43.71
step
Follow the road |goto 68.47,43.38 < 10 |only if walking
talk Marshal Everit Reade##125385
turnin The Woods Have Eyes##48109 |goto 69.67,43.18
turnin In Case of Ambush##48110 |goto 69.67,43.18
step
Run up the stairs |goto 69.95,42.74 < 3 |only if walking
Follow the path |goto 70.05,42.66 < 3 |only if walking
talk Lucille Waycrest##125380
accept Trial by Superstition##48111 |goto 70.07,42.83
step
talk Fletcher's Hollow Villager##125400+
Ask them _"How can you prove someone is not a witch?"_
Question #5# Villagers |q 48111/1 |goto 69.95,42.99
step
Run up the stairs |goto 69.95,42.74 < 3 |only if walking
Follow the path |goto 70.05,42.66 < 3 |only if walking
talk Lucille Waycrest##125380
turnin Trial by Superstition##48111 |goto 70.07,42.83
accept A Pungent Solution##48113 |goto 70.07,42.83
accept Once Bitten, Twice Shy##48170 |goto 70.07,42.83
accept Harmful If Swallowed##48165 |goto 70.07,42.83
step
click Bug-Catching Jar
Collect a Bug-Catching Jar |q 48170/1 |goto 69.52,43.87
step
Follow the path |goto 69.13,43.18 < 10 |only if walking
click Hovering Bloodflies+
|tip They look like groups of small insects flying low to the ground around this area.
Catch #6# Bloodflies |q 48170/2 |goto 68.84,40.72
step
label "Collect_Intact_Venom_Glands"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 48165/1 |goto 68.84,40.72
step
Follow the path up |goto 67.09,41.00 < 7 |only if walking
talk Adela Hawthorne##128494
accept Quill or Be Quilled##49242 |goto 66.93,42.16
stickystart "Kill_Invasive_Quillrats"
step
click Onion+
|tip They look like white vegetables half-buried in the ground around this area.
collect Juicy Onion##151934 |q 48113/1 |goto 66.24,42.23
step
label "Kill_Invasive_Quillrats"
kill 6 Invasive Quillrat##125401 |q 49242/1 |goto 66.24,42.23
step
talk Adela Hawthorne##128494
turnin Quill or Be Quilled##49242 |goto 66.93,42.16
step
Follow the path up |goto 67.22,42.52 < 7 |only if walking
Follow the road |goto 67.94,43.59 < 7 |only if walking
Follow the path |goto 69.00,43.18 < 7 |only if walking
Run up the stairs |goto 69.95,42.74 < 3 |only if walking
Follow the path |goto 70.05,42.66 < 3 |only if walking
talk Lucille Waycrest##125380
turnin A Pungent Solution##48113 |goto 70.07,42.83
turnin Once Bitten, Twice Shy##48170 |goto 70.07,42.83
turnin Harmful If Swallowed##48165 |goto 70.07,42.83
accept The Burden of Proof##48198 |goto 70.07,42.83
step
talk Constable Henry Framer##125394
Tell him _"We're ready to begin the trial."_
Watch the dialogue
Speak with Constable Framer |q 48198/1 |goto 70.09,42.94
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the First Test |q 48198/2 |goto 70.08,42.83
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the Second Test |q 48198/3 |goto 70.08,42.83
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the Third Test |q 48198/4 |goto 70.08,42.83
step
talk Lucille Waycrest##125380
turnin The Burden of Proof##48198 |goto 70.08,42.83
accept The Curse of Fletcher's Hollow##48171 |goto 70.08,42.83
step
Follow the path down |goto 70.28,43.51 < 7 |only if walking
Follow the path |goto 70.79,44.99 < 7 |only if walking
Continue following the path |goto 70.64,46.20 < 7 |only if walking
Continue following the path |goto 70.19,47.34 < 7 |only if walking
Continue following the path |goto 70.24,48.33 < 7 |only if walking
Run up the stairs |goto 70.80,48.96 < 5 |only if walking
Follow the path |goto 70.99,49.00 < 5 |only if walking
Run up the stairs |goto 71.01,49.25 < 5 |only if walking
Follow the path |goto 71.02,49.62 < 5 |only if walking
Follow the path |goto 71.36,50.38 < 5 |only if walking
Run down the stairs |goto 71.55,50.40 < 5 |only if walking
talk Art Hughie##127558
accept Mean Gulls##48880 |goto 71.80,50.41
accept Take the Bait##48904 |goto 71.80,50.41
step
Run up the stairs |goto 71.71,50.40 < 3 |only if walking
Follow the path |goto 71.38,50.43 < 5 |only if walking
Follow the path |goto 70.94,50.83 < 5 |only if walking
click Intact Mudfish
accept I Like Fish Guts and I Cannot Lie##48882 |goto 70.75,50.74
stickystart "Collect_Snapclaw_Meat"
stickystart "Collect_Mudfish_Innards"
stickystart "Kill_Ravenous_Gulls"
step
click Fishing Rod
accept The Reel Deal##48881 |goto 71.14,52.35
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 71.24,51.69 |count 1
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 71.08,52.83 |count 2
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 70.83,53.45 |count 3
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 70.49,54.15 |count 4
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 70.11,55.06 |count 5
step
Click the Complete Quest Box:
turnin The Reel Deal##48881
step
label "Collect_Snapclaw_Meat"
kill Scavenging Snapclaw##127526+
collect 15 Snapclaw Meat##152865 |q 48904/1 |goto 71.03,53.21
step
label "Collect_Mudfish_Innards"
click Intact Mudfish+
|tip They look like small fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 48882/1 |goto 70.76,52.30
step
label "Kill_Ravenous_Gulls"
kill 10 Ravenous Gull##127530 |q 48880/1 |goto 70.76,52.30
step
Follow the path up |goto 71.10,51.33 < 7 |only if walking
Follow the path up |goto 71.26,50.92 < 5 |only if walking
Follow the path |goto 71.23,50.52 < 7 |only if walking
Run down the stairs |goto 71.49,50.40 < 5 |only if walking
talk Art Hughie##127558
turnin Mean Gulls##48880 |goto 71.80,50.41
turnin Take the Bait##48904 |goto 71.80,50.41
turnin I Like Fish Guts and I Cannot Lie##48882 |goto 71.80,50.41
accept Big Gulls Won't Die##48883 |goto 71.80,50.41
step
Run up the stairs |goto 71.71,50.42 < 3 |only if walking
Follow the path |goto 71.38,50.41 < 5 |only if walking
Run down the stairs |goto 71.00,49.66 < 5 |only if walking
Run down the stairs |goto 71.07,49.18 < 5 |only if walking
kill Brinebeak##127553 |q 48883/1 |goto 71.47,49.09
step
Run up the stairs |goto 71.19,49.19 < 5 |only if walking
Run up the stairs |goto 71.02,49.25 < 5 |only if walking
Follow the path |goto 71.01,49.62 < 5 |only if walking
Follow the path |goto 71.38,50.40 < 5 |only if walking
Run down the stairs |goto 71.53,50.41 < 5 |only if walking
talk Art Hughie##127558
turnin Big Gulls Won't Die##48883 |goto 71.81,50.41
step
Run up the stairs |goto 71.71,50.41 < 3 |only if walking
Follow the path |goto 71.40,50.42 < 5 |only if walking
Follow the path |goto 70.11,51.43 < 7 |only if walking
Follow the road |goto 69.27,52.66 < 7 |only if walking
Follow the road |goto 68.85,56.38 < 7 |only if walking
Cross the bridge |goto 69.11,57.99 < 7 |only if walking
Follow the path |goto 69.44,59.24 < 7 |only if walking
Follow the path up |goto 69.79,59.75 < 7 |only if walking
talk Evelyn Pare##126310
turnin The Curse of Fletcher's Hollow##48171 |goto 70.07,60.27
accept Save Who We Can##48518 |goto 70.07,60.27
accept Clear-Cutting##49295 |goto 70.07,60.27
step
talk Bridget Bran##126724
fpath Fletcher's Hollow |goto 70.22,60.45
stickystart "Kill_Curseformed_Familiars"
step
talk Frightened Woodsman##126159+
Rally #6# Frightened Woodsmen |q 48518/1 |goto 70.94,59.26
step
label "Kill_Curseformed_Familiars"
kill 8 Curseformed Familiar##126151 |q 49295/1 |goto 70.94,59.26
step
Follow the path up |goto 70.05,59.44 < 7 |only if walking
talk Evelyn Pare##126310
turnin Save Who We Can##48518 |goto 70.07,60.27
turnin Clear-Cutting##49295 |goto 70.07,60.27
accept Hope They Can't Swim##48519 |goto 70.07,60.27
step
Watch the dialogue
Kill the enemies that attack in waves
kill Grotesque Butcher##137914
Defend the Villagers |q 48519/1 |goto 69.42,60.34
step
Follow the path up |goto 69.63,60.28 < 7 |only if walking
talk Evelyn Pare##126310
turnin Hope They Can't Swim##48519 |goto 70.07,60.27
accept The Three Sisters##48520 |goto 70.07,60.27
accept Break Them to Splinters##48525 |goto 70.07,60.27 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
stickystart "Reclaim_Fletchers_Hollow"
step
Follow the path down |goto 69.94,60.69 < 5 |only if walking
Follow the path up |goto 69.61,61.92 < 7 |only if walking
Follow the path |goto 69.67,62.63 < 7 |only if walking
click Bladed Charm
accept Charming the Lifeless##48521 |goto 70.07,62.99
stickystart "Control_A_Dormant_Ravager"
step
kill Sister Early##126522 |q 48520/2 |goto 70.52,63.15
step
Follow the path |goto 70.17,62.83 < 7 |only if walking
Enter the building |goto 70.00,62.19 < 5 |walk
kill Sister Mooring##126523 |q 48520/3 |goto 70.13,62.12
|tip Inside the building.
stickystart "Accept_A_Revealing_Missive"
step
Leave the building |goto 70.02,62.17 < 3 |walk
Follow the path |goto 69.77,62.63 < 7 |only if walking
Follow the path |goto 68.92,63.66 < 7 |only if walking
Enter the building |goto 68.67,63.68 < 3 |walk
kill Sister Ashwell##126144 |q 48520/1 |goto 68.52,63.55
|tip She walks around this area inside the building.
step
label "Accept_A_Revealing_Missive"
kill Sister Ashwell##126144
|tip Inside the building.
accept A Revealing Missive##48522 |goto 68.52,63.55
|tip You will automatically accept this quest after looting.
step
label "Control_A_Dormant_Ravager"
Leave the building |goto 68.67,63.68 < 3 |walk
use the Wicker Charm##152590
|tip Use it on Dormant Ravagers around this area.
|tip Eventually, one of them will become friendly.
Control a Dormant Ravager |q 48521/1 |goto 69.31,62.79
step
label "Reclaim_Fletchers_Hollow"
Kill enemies around this area
clicknpc Captured Villager##126629+
|tip They look like humans tired to wooden posts on the ground around this area.
click Ensorcelled Pig Heart+
|tip They look like black beating hearts sitting in wooden buckets on the ground around this area.
Reclaim Fletcher's Hollow |q 48525/1 |goto 69.31,62.79
|only if havequest(48525) or completedq(48525)
step
Follow the path |goto 69.57,62.26 < 15 |only if walking
Follow the path up |goto 69.83,60.99 < 7 |only if walking
talk Evelyn Pare##126310
turnin The Three Sisters##48520 |goto 70.07,60.27
turnin Charming the Lifeless##48521 |goto 70.07,60.27
turnin A Revealing Missive##48522 |goto 70.07,60.27
accept The Murderous Matron##48523 |goto 70.07,60.27
accept Culling the Coven##48524 |goto 70.07,60.27
step
clicknpc Dormant Ravager##126415
Control the Dormant Ravager |q 48523/1 |goto 69.93,60.39
stickystart "Slay_Heartsbane_Minions"
step
Follow the path up |goto 69.65,61.64 < 7 |only if walking
Follow the path up |goto 69.65,63.37 < 7 |only if walking
Follow the path up |goto 69.83,64.80 < 7 |only if walking
Enter the mine |goto 69.85,66.95 < 5 |walk
Follow the path down |goto 69.90,67.69 < 5 |walk
Follow the path down |goto 70.24,67.95 < 5 |c |q 48523
step
Follow the path down |goto 70.36,67.68 < 5 |walk
Follow the path |goto 70.44,67.27 < 5 |walk
Run down the stairs |goto 70.58,66.89 < 5 |walk
Run down the stairs |goto 70.61,66.61 < 5 |walk
Run down the stairs |goto 70.35,66.38 < 5 |c |q 48523
step
label "Slay_Heartsbane_Minions"
Kill enemies around this area
|tip Inside the mine.
|tip Use the abilities on your action bar.
Slay #25# Heartsbane Minions |q 48524/1 |goto 69.66,66.03
step
Follow the path |goto 69.66,66.03 < 5 |walk
Follow the path |goto 69.11,67.15 < 5 |walk
Kill the enemies that attack
|tip Inside the mine.
Watch the dialogue
kill Matron Levae##126441 |q 48523/2 |goto 68.57,67.25
step
Return to Timbered Strand |goto 69.98,60.40 < 10 |noway |c |q 48523
step
talk Evelyn Pare##126310
turnin The Murderous Matron##48523 |goto 70.07,60.28
turnin Culling the Coven##48524 |goto 70.07,60.28
accept An Airtight Alibi##48538 |goto 70.07,60.28
step
Follow the road |goto 70.41,41.11 < 7 |only if walking
Follow the path |goto 69.71,41.78 < 7 |only if walking
Run up the stairs |goto 69.95,42.73 < 3 |only if walking
Follow the path |goto 70.06,42.69 < 3 |only if walking
talk Constable Henry Framer##125394
turnin An Airtight Alibi##48538 |goto 70.09,42.94
step
talk Lucille Waycrest##125380
accept And Justice For All##49259 |goto 70.08,42.83
step
Watch the dialogue
Untie Lucille |q 49259/1 |goto 70.08,42.83
step
Kill the enemies that attack in waves
kill Sister Widdowson##128582
Defeat the Heartsbane Ambush |q 49259/2 |goto 69.55,43.28
step
Watch the dialogue
talk Lucille Waycrest##125380
turnin And Justice For All##49259 |goto 69.62,43.33
accept A Slight Detour##48941 |goto 69.62,43.33
step
talk Auntie Amanda Hale##127743
accept Gol Koval##48947 |goto 69.48,43.74
step
Follow the road |goto 69.08,43.22 < 7 |only if walking
Continue following the road |goto 68.19,43.49 < 7 |only if walking
Continue following the road |goto 67.43,44.38 < 7 |only if walking
Continue following the road |goto 66.84,44.76 < 7 |only if walking
Follow the path up |goto 65.10,44.62 < 7 |only if walking
Follow the path |goto 64.41,46.25 < 7 |only if walking
Follow the path |goto 64.15,47.36 < 7 |only if walking
Cross the bridge |goto 64.32,48.68 < 7 |only if walking
Follow the path up |goto 64.47,49.49 < 7 |c |q 48947
step
accept Nooooope##48181 |goto 64.62,51.38
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Kill_Spiders_And_Egg_Sacs"
step
Follow the path |goto 64.65,52.49 < 7 |only if walking
talk Rebecca Hale##125457
turnin Gol Koval##48947 |goto 64.58,54.80
accept Deliverance##52074 |goto 64.58,54.80
step
label "Kill_Spiders_And_Egg_Sacs"
Kill enemies around this area
|tip Only Venomous Weavers and Skittering Spiderlings will count for the quest goal.
click Egg Sac+
|tip They look like groups of smaller white eggs on the ground next to trees around this area.
Kill Spiders and Egg Sacs |q 48181/1 |goto 64.98,54.62
|only if havequest(48181) or completedq(48181)
step
Follow the path up |goto 64.83,55.18 < 7 |only if walking
Follow the path |goto 63.40,58.78 < 7 |only if walking
Follow the path |goto 63.06,59.37 < 7 |only if walking
talk Ranger Wons##139912
turnin Deliverance##52074 |goto 61.91,59.29
accept Rescue Rangers##48179 |goto 61.91,59.29
accept Boned##52075 |goto 61.91,59.29
step
talk Thornspeaker Birchgrove##139926
accept Total Cairnage##48182 |goto 61.88,59.32
accept The Hills Are Alive##48183 |goto 61.88,59.32
stickystart "Collect_Runic_Power_Cores"
stickystart "Heal_Injured"
stickystart "Kill_Vengeful_Bones"
step
Follow the path |goto 61.39,60.49 < 7 |only if walking
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 60.91,60.97 |count 1
step
Follow the path |goto 61.32,63.09 < 7 |only if walking
Follow the path |goto 61.77,63.67 < 7 |only if walking
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 62.51,64.65 |count 2
step
Follow the path |goto 61.93,64.93 < 7 |only if walking
Follow the path up |goto 61.07,65.64 < 7 |only if walking
Follow the path up |goto 60.60,67.36 < 7 |only if walking
Follow the path |goto 60.18,67.59 < 7 |only if walking
Follow the path |goto 59.58,66.40 < 7 |only if walking
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 59.36,66.29 |count 3
step
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 59.45,63.79 |count 4
step
Follow the path |goto 59.02,63.67 < 7 |only if walking
talk Arthur Tradewind##140048
accept Really Big Problem##48180 |goto 58.44,63.18
step
Follow the path up |goto 58.48,63.58 < 7 |only if walking
kill Ancient Sentinel##126542 |q 48180/1 |goto 58.52,64.45
|tip He walks around this area.
step
Follow the path |goto 59.26,65.08 < 7 |only if walking
Follow the path up |goto 59.65,66.47 < 7 |only if walking
Follow the path up |goto 59.59,67.25 < 7 |only if walking
click Major Ancient Cairn
Destroy the Major Ancient Cairn |q 48182/2 |goto 59.15,67.88
step
label "Collect_Runic_Power_Cores"
Follow the path down |goto 60.11,67.68 < 7 |only if walking
Follow the path down |goto 60.44,67.49 < 7 |only if walking
kill Awoken Guardian##126355+
collect 8 Runic Power Core##152394 |q 48183/1 |goto 61.49,62.93
step
label "Heal_Injured"
clicknpc Injured NPC+
|tip They look like dead friendly NPC's ground around this area.
|tip They have various names.
Heal #10# Injured |q 48179/1 |goto 61.10,60.30
step
label "Kill_Vengeful_Bones"
kill 8 Vengeful Bones##128703 |q 52075/1 |goto 61.23,60.40
step
Follow the path |goto 61.49,61.78 < 7 |only if walking
talk Thornspeaker Birchgrove##139926
turnin Total Cairnage##48182 |goto 61.88,59.32
turnin The Hills Are Alive##48183 |goto 61.88,59.32
turnin Really Big Problem##48180 |goto 61.88,59.32
step
talk Ranger Wons##139912
turnin Rescue Rangers##48179 |goto 61.91,59.29
turnin Boned##52075 |goto 61.91,59.29
step
talk Thornspeaker Birchgrove##139926
accept The High Thornspeaker##53110 |goto 61.88,59.32
step
Leave the building |goto 55.37,34.49 < 3 |walk
Follow the road |goto 55.27,34.94 < 7 |only if walking
Continue following the road |goto 52.72,37.13 < 7 |only if walking
Follow the road up |goto 51.90,38.58 < 7 |only if walking
Follow the road up |goto 50.95,37.42 < 7 |only if walking
Follow the road up |goto 50.72,35.64 < 7 |only if walking
Continue following the road |goto 49.36,34.44 < 7 |only if walking
Continue following the road |goto 48.89,32.07 < 7 |only if walking
Continue following the road |goto 48.16,30.51 < 7 |only if walking
Continue following the road |goto 47.20,30.32 < 7 |only if walking
Continue following the road |goto 46.24,32.31 < 7 |only if walking
talk Lucille Waycrest##127715
turnin A Slight Detour##48941 |goto 46.11,33.42
accept Yeti to Rumble##48942 |goto 46.11,33.42
accept Salvage Rights##48943 |goto 46.11,33.42
stickystart "Kill_Chillfur_Yetis"
step
Follow the path up |goto 46.01,33.66 < 5 |only if walking
Follow the path up |goto 45.76,33.93 < 7 |only if walking
click Wrapped Supplies
Collect the Wrapped Supplies |q 48943/1 |goto 45.60,34.38
step
Follow the path |goto 45.19,33.62 < 7 |only if walking
kill Awakened Dead##136490+
accept If Bones Could Talk##51134 |goto 45.08,33.42
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Pristine_Rune_Etched_Bones"
step
Follow the path |goto 44.97,32.85 < 7 |only if walking
click Cask of Salted Fish
Collect the Cask of Salted Fish |q 48943/2 |goto 45.04,32.49
step
Follow the path up |goto 44.45,32.21 < 7 |only if walking
click Hardened Lockbox
Collect the Hardened Lockbox |q 48943/3 |goto 43.54,30.79
step
Follow the path |goto 44.69,30.37 < 7 |only if walking
click Bucket of Grain
Collect the Bucket of Grain |q 48943/4 |goto 45.53,30.07
step
label "Collect_Pristine_Rune_Etched_Bones"
kill Awakened Dead##136490+
collect Pristine Rune-Etched Bone##159746 |q 51134/1 |goto 45.06,30.48
step
label "Kill_Chillfur_Yetis"
kill 8 Chillfur Yeti##127682 |q 48942/1 |goto 45.06,30.48
step
Follow the path up |goto 44.23,29.92 < 10 |only if walking
talk Lucille Waycrest##127715
turnin Yeti to Rumble##48942 |goto 44.80,28.56
turnin Salvage Rights##48943 |goto 44.80,28.56
turnin If Bones Could Talk##51134 |goto 44.80,28.56
accept Diversionary Tactics##48963 |goto 44.80,28.56
step
Follow the path |goto 44.87,28.38 < 5 |only if walking
kill Frostmange##127794 |q 48963/1 |goto 45.25,28.61
step
Run up the stairs |goto 45.23,28.03 < 3 |only if walking
Enter the building |goto 45.11,27.89 < 3 |walk
talk Lucille Waycrest##127715
|tip Inside the building.
turnin Diversionary Tactics##48963 |goto 45.01,27.77
accept Unlocking History##48944 |goto 45.01,27.77
step
click Wall Sconce
|tip Inside the building.
Choose _<Pull on the torch>_
Find the Secret Passage |q 48944/1 |goto 44.94,27.57
step
talk Lucille Waycrest##127715
|tip Inside the building.
turnin Unlocking History##48944 |goto 44.97,27.53
accept The Ruins of Gol Var##48945 |goto 44.97,27.53
step
Follow the path down |goto 44.84,27.38 < 7 |walk
Follow the path down |goto 44.15,26.86 < 7 |only if walking
Follow the path |goto 43.85,26.45 < 7 |only if walking
Follow the path |goto 43.91,25.93 < 7 |only if walking
Follow the path |goto 43.96,25.62 < 7 |only if walking
Follow the path down |goto 43.75,25.34 < 7 |only if walking
Follow the path |goto 43.09,25.53 < 7 |only if walking
Follow the path up |goto 42.45,26.56 < 7 |only if walking
Follow the path up |goto 42.05,26.24 < 7 |only if walking
Follow the path up |goto 42.08,25.82 < 7 |only if walking
Watch the dialogue
|tip Follow Lucille Waycrest as she walks inside the cave.
click Debris
kill Stonebound Guardian##127975
Watch the dialogue
Escort Lucille into Gol Var |q 48945/1 |goto 42.39,25.53
step
talk Lucille Waycrest##127715
|tip Inside the cave.
turnin The Ruins of Gol Var##48945 |goto 42.59,25.23
accept The Order of Embers##48946 |goto 42.59,25.23
step
click Tome of Silver and Ash
|tip Inside the cave.
collect Tome of Silver and Ash##153053 |q 48946/1 |goto 42.64,25.25
step
talk Lucille Waycrest##127715
|tip Inside the cave.
turnin The Order of Embers##48946 |goto 42.59,25.23
accept Take the High Road##48986 |goto 42.59,25.23
step
Follow the path |goto 42.43,25.48 < 5 |walk
Jump down here |goto 42.42,26.11 < 5 |walk
Follow the path |goto 42.80,25.97 < 5 |walk
Follow the path up |goto 43.14,25.48 < 5 |walk
Follow the path |goto 43.80,25.34 < 5 |walk
Follow the path up |goto 43.96,25.74 < 5 |walk
Follow the path up |goto 43.84,26.38 < 5 |walk
Follow the path up |goto 44.01,26.66 < 5 |walk
Run up the stairs |goto 44.89,27.44 < 3 |walk
Leave the building |goto 45.10,27.88 < 3 |walk
Follow the path down |goto 44.92,28.95 < 10 |only if walking
Follow the path down |goto 44.39,29.88 < 10 |only if walking
Follow the path |goto 44.10,33.33 < 10 |only if walking
Follow the path |goto 44.62,34.25 < 7 |only if walking
Jump down here |goto 45.55,36.02 < 7 |only if walking
Follow the road |goto 45.43,36.83 < 7 |only if walking
Follow the path up |goto 43.81,38.35 < 7 |only if walking
talk Arthur Tradewind##143161
Tell him _"I am ready to go!"_
Meet Arthur Tradewind |q 53110/1 |goto 43.63,39.12
step
clicknpc Arthur Tradewind##143162
Ride on Arthur Tradewind |invehicle |goto 43.63,39.12 |q 53110
step
Watch the dialogue
Ride Up to Ulfar's Den |q 53110/2 |goto 46.04,45.32 |notravel
step
talk Ulfar##141159
|tip Inside the cave.
turnin The High Thornspeaker##53110 |goto 45.21,45.84
step
Leave the cave |goto 46.11,45.28 < 5 |walk
Follow the path down |goto 46.42,44.50 < 7 |only if walking
Follow the path down |goto 46.17,43.24 < 7 |only if walking
Continue down the path |goto 46.20,41.28 < 7 |only if walking
Continue down the path |goto 46.67,39.77 < 5 |only if walking
Follow the path |goto 46.58,39.23 < 5 |only if walking
Follow the path down |goto 46.05,39.01 < 5 |only if walking
Follow the path down |goto 45.09,39.57 < 7 |only if walking
Follow the path down |goto 44.36,39.76 < 7 |only if walking
Follow the road |goto 43.38,39.19 < 7 |only if walking
Follow the path up |goto 42.83,40.42 < 7 |only if walking
click Wanted Poster
accept WANTED: The Rime Huntress##52033 |goto 41.25,40.98
step
Follow the path |goto 42.62,40.32 < 10 |only if walking
kill The Rime Huntress##136697 |q 52033/1 |goto 44.21,40.35
|tip She looks like a large wolf that walks stealthed around this area.
|tip She will appear as a yellow dot on your minimap.
step
Follow the path up |goto 43.08,40.05 < 10 |only if walking
Follow the road |goto 41.62,41.06 < 10 |only if walking
Follow the road |goto 40.99,46.35 < 10 |only if walking
Follow the road |goto 39.91,48.13 < 10 |only if walking
Continue following the road |goto 38.89,49.80 < 7 |only if walking
Follow the path |goto 38.01,49.79 < 7 |only if walking
Enter the building |goto 37.46,48.70 < 3 |walk
talk Owen Northwood##136480
|tip Inside the building.
home Northwood Home |goto 37.43,48.56
step
Leave the building |goto 37.47,48.69 < 3 |walk
Follow the path |goto 37.37,49.01 < 5 |only if walking
talk Guardsman Hayles##139714
turnin WANTED: The Rime Huntress##52033 |goto 37.13,49.38
step
Follow the path up |goto 37.37,49.92 < 5 |only if walking
Run up the stairs |goto 37.26,50.20 < 5 |only if walking
Enter the building |goto 37.13,50.19 < 3 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Take the High Road##48986 |goto 36.86,50.14
accept A Lesson in Witch Hunting##49443 |goto 36.86,50.14
step
click Candle+
|tip They look like half-melted green candles sitting on objects inside the building.
Light #6# Candles |q 49443/1 |goto 36.89,50.06
step
click Lucille's Notes
|tip Inside the building.
Take the Notes |q 49443/2 |goto 36.84,50.12
step
click Lucille's Pack
|tip Inside the building.
collect Lucille's Sewing Kit##156515 |q 49443/3 |goto 36.97,50.05
step
talk Lucille Waycrest##129642
|tip Inside the building.
turnin A Lesson in Witch Hunting##49443 |goto 36.86,50.14
accept Sharp Thinking##49804 |goto 36.86,50.14
step
talk Marshal Everit Reade##129643
|tip Inside the building.
accept Changing of the Guard##49803 |goto 36.96,50.09
step
Follow the path |goto 36.98,50.16 < 3 |walk
Leave the building |goto 37.14,50.19 < 3 |walk
click Heartsbane Grimoire
accept Implements of Ill Intent##49805 |goto 37.72,50.38
stickystart "Test_Corlain_Refugees"
stickystart "Destroy_Heartsbane_Objects"
step
Follow the path |goto 37.15,50.84 < 7 |only if walking
Follow the path |goto 36.69,51.26 < 7 |only if walking
Follow the path up |goto 36.40,51.74 < 5 |only if walking
Follow the path up |goto 36.14,52.41 < 7 |only if walking
talk Ensign Yorrick##122112
Choose _<Hand over Marshal Reade's orders.>_
Recruit Ensign Yorrick |q 49803/2 |goto 35.26,53.13
step
Follow the path down |goto 36.09,52.53 < 7 |only if walking
Follow the path |goto 36.42,51.70 < 5 |only if walking
Follow the path |goto 36.75,51.19 < 7 |only if walking
Follow the path down |goto 37.48,51.74 < 7 |only if walking
talk Jess Albury##135023
fpath Arom's Stand |goto 38.14,52.54
step
Follow the path |goto 38.48,52.05 < 7 |only if walking
talk Falconer Notley##122110
Choose _<Hand over Marshal Reade's orders.>_
Recruit Falconer Notley |q 49803/5 |goto 38.74,52.46
step
talk Ensign Mace##122115
Choose _<Hand over Marshal Reade's orders.>_
Recruit Ensign Mace |q 49803/4 |goto 39.04,51.51
step
Follow the path |goto 39.17,50.77 < 7 |only if walking
Run up the stairs |goto 39.32,50.37 < 3 |only if walking
Enter the building |goto 39.42,50.27 < 3 |walk
Leave the building |goto 39.71,50.16 < 3 |walk
talk Lieutenant Sterntide##131111
Choose _<Hand over Marshal Reade's orders.>_
Recruit Lieutenant Sterntide |q 49803/3 |goto 39.90,50.18
step
Follow the path |goto 39.31,49.55 < 7 |only if walking
Follow the path |goto 38.00,49.80 < 7 |only if walking
talk Captain Joan Cleardawn##131103
Choose _<Hand over Marshal Reade's orders.>_
Recruit Captain Cleardawn |q 49803/1 |goto 37.54,48.77
step
use Lucille's Sewing Needle##156518
|tip Use it on Corlain Refugees around this area.
|tip Some of them will attack you.
kill Unmasked Witch##129575+
accept Hidden Dealings##49806 |goto 37.88,50.34
|tip You will eventually automatically accept this quest.
step
Follow the path |goto 38.32,51.74 < 7 |only if walking
Follow the path |goto 38.66,52.32 < 7 |only if walking
Run down the stairs |goto 38.41,53.16 < 3 |walk
Run down the stairs |goto 38.26,53.20 < 3 |walk
Follow the path |goto 38.27,53.42 < 5 |walk
talk Suspicious Refugee##131359
|tip Inside the building.
Ask her _"What's going on down here?"_
Watch the dialogue
Explore the Cellar |q 49806/1 |goto 38.37,53.69
step
kill Sister Littlefield##131359 |q 49806/2 |goto 38.37,53.59
|tip Inside the building.
step
Run up the stairs |goto 38.27,53.41 < 3 |walk
Run up the stairs |goto 38.29,53.16 < 3 |walk
Follow the path |goto 38.42,53.15 < 3 |walk
Follow the path |goto 38.65,52.35 < 7 |only if walking
Follow the path |goto 38.31,51.73 < 7 |c |q 49804
step
label "Test_Corlain_Refugees"
use Lucille's Sewing Needle##156518
|tip Use it on Corlain Refugees around this area.
|tip Some of them will attack you.
Test #10# Corlain Refugees |q 49804/1 |goto 37.88,50.37
step
label "Destroy_Heartsbane_Objects"
click Heartsbane Object+
|tip They look like various objects with Heartsbane names on the ground, and hanging from trees and buildings around this area.
Destroy #12# Heartsbane Objects |q 49805/1 |goto 37.88,50.37
step
Run up the stairs |goto 37.26,50.22 < 5 |only if walking
Enter the building |goto 37.13,50.19 < 3 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Sharp Thinking##49804 |goto 36.86,50.14
turnin Implements of Ill Intent##49805 |goto 36.86,50.14
turnin Hidden Dealings##49806 |goto 36.86,50.14
step
talk Marshal Everit Reade##129643
|tip Inside the building.
turnin Changing of the Guard##49803 |goto 36.96,50.09
step
talk Lucille Waycrest##129642
|tip Inside the building.
accept A New Order##49807 |goto 36.86,50.14
step
use the Inquisitor's Regalia##156532
|tip Use it on Falconer Notley.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.94,50.00 |count 1
step
use the Inquisitor's Regalia##156532
|tip Use it on Ensign Mace.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.91,49.99 |count 2
step
use the Inquisitor's Regalia##156532
|tip Use it on Inquisitor Cleardawn.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.89,49.98 |count 3
step
use the Inquisitor's Regalia##156532
|tip Use it on Ensign Yorrick.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.86,49.98 |count 4
step
use the Inquisitor's Regalia##156532
|tip Use it on Lieutenant Sterntide.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.82,49.97 |count 5
step
Watch the dialogue
|tip Inside the building.
Issue Lucille's Orders |q 49807/2 |goto 36.89,50.08
step
talk Lucille Waycrest##129642
|tip Inside the building.
turnin A New Order##49807 |goto 36.89,50.08
step
talk Marshal Everit Reade##129643
|tip Inside the building.
accept The Road to Corlain##49926 |goto 36.96,50.09
step
Follow the path |goto 36.98,50.16 < 3 |walk
Leave the building |goto 37.12,50.19 < 3 |walk
talk Inquisitor Cleardawn##135021
accept Through the Old Roads##48504 |goto 37.27,50.35
step
Follow the path |goto 38.27,51.03 < 7 |only if walking
Follow the path up |goto 39.44,51.55 < 7 |only if walking
Follow the path up |goto 39.95,53.45 < 7 |only if walking
Follow the path |goto 40.34,54.32 < 7 |only if walking
talk Inquisitor Cleardawn##129983
turnin Through the Old Roads##48504 |goto 40.23,56.50
accept Pieces of History##48184 |goto 40.23,56.50
accept Honorable Discharge##48517 |goto 40.23,56.50
step
talk Captain Lilian Nottley##135085
accept Clear Victory##49898 |goto 39.69,57.98
stickystart "Release_Weary_Spirits"
stickystart "Slay_Drust_Skeletons"
step
click First Carved Stone
Examine the First Stone |q 48184/1 |goto 38.50,58.38
step
Follow the path |goto 37.77,58.75 < 5 |only if walking
Follow the path |goto 37.03,58.39 < 7 |only if walking
click Second Carved Stone
Examine the Second Stone |q 48184/2 |goto 36.56,58.03
step
Follow the path |goto 37.07,58.34 < 7 |only if walking
Follow the path |goto 37.75,58.73 < 7 |only if walking
Follow the path |goto 38.44,59.84 < 7 |only if walking
Follow the path up |goto 38.90,60.88 < 7 |only if walking
click Third Carved Stone
Examine the Third Stone |q 48184/3 |goto 39.27,61.15
step
Follow the path down |goto 37.92,62.13 < 7 |only if walking
Follow the path |goto 37.79,63.54 < 7 |only if walking
click Fourth Carved Stone
Examine the Fourth Stone |q 48184/4 |goto 37.83,64.67
step
Follow the path |goto 37.84,63.89 < 7 |only if walking
Follow the path up |goto 37.62,62.50 < 7 |only if walking
Follow the path |goto 37.23,61.77 < 7 |only if walking
click Fifth Carved Stone
Examine the Fifth Stone |q 48184/5 |goto 36.53,61.27
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Pieces of History##48184
step
label "Release_Weary_Spirits"
clicknpc Weary Spirit##135055+
|tip They look like ghost soldiers kneeling on the ground around this area.
Release #10# Weary Spirits |q 48517/1 |goto 37.68,61.50
step
label "Slay_Drust_Skeletons"
Kill enemies around this area
|tip Only the enemies that look like skeletons will count for this quest goal.
Slay #15# Drust Skeletons |q 49898/1 |goto 37.68,61.50
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Honorable Discharge##48517
accept Drustfall##49890
step
Follow the path up |goto 38.68,62.14 < 10 |only if walking
Enter the cave |goto 39.48,62.39 < 5 |walk
Follow the path |goto 40.11,62.62 < 5 |walk
click Ritual Stone
|tip Inside the cave.
Watch the dialogue
Investigate the Cave |q 49890/1 |goto 40.60,62.66
step
Watch the dialogue
kill Runekeeper Construct##130946 |q 49890/2 |goto 40.60,62.66
|tip Inside the cave.
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Drustfall##49890
accept To Falconhurst!##49896
step
Follow the path up |goto 40.11,62.65 < 5 |walk
Leave the cave |goto 39.42,62.38 < 5 |walk
Follow the path up |goto 38.85,61.86 < 7 |only if walking
Follow the path up |goto 38.85,60.37 < 10 |only if walking
talk Captain Lilian Nottley##135085
turnin Clear Victory##49898 |goto 39.69,57.98
step
Follow the path |goto 38.77,60.52 < 10 |only if walking
Follow the path down |goto 38.07,66.67 < 7 |only if walking
Follow the path down |goto 38.09,68.01 < 7 |only if walking
Follow the road |goto 36.88,69.02 < 7 |only if walking
Follow the path |goto 33.48,67.14 < 7 |only if walking
Continue following the path |goto 33.32,65.87 < 7 |only if walking
talk Adalyn Forestwatcher##135861
accept Saplings in the Snow##51543 |goto 33.44,65.09
step
clicknpc Mountain Sapling##138003+
|tip They look like small twig trees on the ground around this area.
|tip Run away from them after you click them to gather them.
collect 6 Mountain Sapling##160406 |q 51543/1 |goto 33.49,63.50
step
talk Adalyn Forestwatcher##135861
turnin Saplings in the Snow##51543 |goto 33.43,65.09
accept Greenstalker##50953 |goto 33.43,65.09
step
Follow the path up |goto 33.52,63.82 < 7 |only if walking
Enter the cave |goto 33.72,62.41 < 5 |walk
use the Tranquil Charm##159143
|tip Use it on Greenstalker inside the cave.
kill Greenstalker##135868 |q 50953/1 |goto 34.57,61.54
step
Leave the cave |goto 33.72,62.38 < 5 |walk
Follow the path down |goto 33.55,63.64 < 7 |only if walking
talk Adalyn Forestwatcher##135861
turnin Greenstalker##50953 |goto 33.43,65.09
step
talk Zallestrasza##137732
accept Life Preserver##51472 |goto 33.52,65.14
step
Watch the dialogue
clicknpc Zallestrasza##138074
Ride with Zallestrasza |invehicle |goto 33.64,65.11 |q 51472
step
Watch the dialogue
Travel to Vadekius's Rest |q 51472/2 |goto 41.88,81.98 |notravel
step
Watch the dialogue
talk Zallestrasza##137732
Tell her _"I am ready. Begin your ritual."_
Tell Zallestrasza to Begin |q 51472/2 |goto 42.04,81.98
step
Watch the dialogue
kill Danir Emberlight##137828
Protect Zallestrasza |q 51472/3 |goto 41.88,81.98
step
talk Zallestrasza##137732
turnin Life Preserver##51472 |goto 42.04,81.98
step
Follow the path up |goto 41.65,81.41 < 7 |only if walking
Follow the path up |goto 41.50,80.54 < 7 |only if walking
Continue up the path |goto 41.49,77.63 < 7 |only if walking
Follow the path |goto 40.78,74.90 < 10 |only if walking
Follow the path |goto 39.57,73.23 < 10 |only if walking
Follow the path down |goto 38.55,70.29 < 7 |only if walking
Follow the road |goto 36.61,68.93 < 7 |only if walking
Continue following the road |goto 34.27,67.29 < 7 |only if walking
Continue following the road |goto 32.22,67.81 < 7 |only if walking
Cross the bridge |goto 31.82,66.67 < 7 |only if walking
Follow the road |goto 31.70,65.40 < 7 |only if walking
Follow the road |goto 31.42,63.99 < 7 |only if walking
Continue following the road |goto 30.49,62.60 < 7 |only if walking
Continue following the road |goto 29.41,62.29 < 7 |only if walking
Continue following the road |goto 27.54,63.73 < 7 |only if walking
Follow the path |goto 26.95,64.90 < 7 |only if walking
talk Inquisitor Cleardawn##131879
turnin To Falconhurst!##49896 |goto 26.91,65.81
accept Breaking Hag##50001 |goto 26.91,65.81
step
talk Captive Villager##131579
accept Spell Bound##50251 |goto 26.15,66.49
stickystart "Slay_Briarwood_Monsters"
step
click Binding Rune+
|tip They look like black symbols with small candles with blue flames and friendly Captive Villages nearby on the ground around this area.
Destroy #8# Binding Runes |q 50251/1 |goto 26.17,68.10
step
label "Slay_Briarwood_Monsters"
Kill Briarwood enemies around this area
Slay #15# Briarwood Monsters |q 50001/1 |goto 26.17,68.10
step
talk Inquisitor Cleardawn##131879
turnin Breaking Hag##50001 |goto 25.79,70.26
turnin Spell Bound##50251 |goto 25.79,70.26
accept Hold The Barricade!##50177 |goto 25.79,70.26
step
talk Inquisitor Cleardawn##131879
Tell her _"Stand firm! We'll hold the line!"_
Speak with Inquisitor Cleardawn |q 50177/1 |goto 25.79,70.26
step
Watch the dialogue
Kill the enemies that attack in waves
kill Briarwood Siegebreaker##131898
|tip It will walk to you.
Survive the Assault |q 50177/2 |goto 25.78,70.20
step
talk Inquisitor Cleardawn##131879
turnin Hold The Barricade!##50177 |goto 25.79,70.26
accept So Long, Sister##49939 |goto 25.79,70.26
step
Follow the path up |goto 25.50,70.47 < 7 |only if walking
Run up the stairs |goto 25.33,71.45 < 5 |only if walking
Enter the building |goto 25.23,71.61 < 3 |walk
Follow the path |goto 25.15,71.78 < 3 |walk
kill Sister Noella Briarwood##132395 |q 49939/1 |goto 25.02,71.83
|tip Inside the building.
step
Follow the path |goto 25.14,71.79 < 3 |walk
Leave the building |goto 25.24,71.61 < 3 |walk
Jump down here |goto 25.55,70.89 < 5 |only if walking
Follow the road |goto 25.88,70.72 < 7 |only if walking
Run up the stairs |goto 26.57,72.16 < 5 |only if walking
talk Leandro Royston##131442
turnin So Long, Sister##49939 |goto 26.67,72.19
accept Village Repair##50091 |goto 26.67,72.19 |only if level < 120
|tip You will accept this quest automatically. |only if level < 120
step
click Wanted Poster
accept WANTED: The Crimson Cutthroats##51390 |goto 26.43,72.19
step
Follow the path |goto 26.61,71.87 < 7 |only if walking
Follow the path |goto 26.85,72.08 < 7 |only if walking
talk Viviana Swailes##134866
fpath Falconhurst |goto 26.99,72.39
step
Run up the stairs |goto 26.84,71.59 < 5 |only if walking
Enter the building |goto 26.88,71.38 < 3 |walk
talk Lynn Sweet##132966
|tip Inside the building.
accept Bramblethorn##50238 |goto 26.99,71.39
step
Leave the building |goto 26.88,71.39 < 3 |walk
Follow the path up |goto 26.68,71.79 < 7 |only if walking
Follow the path up |goto 26.21,71.38 < 7 |only if walking
Follow the path |goto 25.78,70.37 < 5 |only if walking
talk Marten Webb##131469
accept A Missing Master##50903 |goto 25.53,70.10
stickystart "Destroy_Signs_Of_Witchcraft"
step
Follow the path |goto 25.32,69.62 < 7 |only if walking
Continue following the path |goto 24.69,69.26 < 7 |only if walking
Run down the stairs |goto 24.78,69.01 < 3 |walk
Run down the stairs |goto 24.93,68.96 < 3 |walk
Follow the path |goto 24.91,68.74 < 3 |walk
kill Bramblethorn##132734
|tip Downstairs inside the building.
collect Lord Sharptooth##156830 |q 50238/1 |goto 24.80,68.91
step
Run up the stairs |goto 24.92,68.78 < 3 |walk
Run up the stairs |goto 24.90,69.01 < 3 |walk
Follow the path |goto 24.79,69.02 < 3 |walk
Follow the path |goto 24.64,68.35 < 7 |only if walking
Run down the stairs |goto 25.59,68.01 < 3 |walk
Run down the stairs |goto 25.56,67.78 < 3 |walk
Find Master Ashton |q 50903/1 |goto 25.42,67.79
|tip Downstairs inside the building.
step
talk Warren Ashton##131448
|tip Downstairs inside the building.
Tell him _"Master Ashton, we need your help."_
Speak to Master Ashton |q 50903/2 |goto 25.29,67.89
step
talk Warren Ashton##131448
|tip Downstairs inside the building.
turnin A Missing Master##50903 |goto 25.29,67.89
accept Curiously Strong##50092 |goto 25.29,67.89
stickystart "Extinguish_Fires"
step
Run up the stairs |goto 25.44,67.79 < 3 |walk
Run up the stairs |goto 25.60,67.83 < 3 |walk
Follow the path |goto 25.60,68.02 < 3 |walk
Follow the path |goto 25.42,69.18 < 7 |only if walking
talk Leandro Royston##131442
accept Building Defenses##50090 |goto 25.55,70.13
stickystart "Collect_Lumber"
stickystart "Kill_Wallis_Crowder"
stickystart "Kill_Thorn_Sutton"
step
Follow the path |goto 25.91,68.49 < 7 |only if walking
Follow the path up |goto 26.76,68.02 < 7 |only if walking
Follow the path |goto 27.87,67.19 < 7 |only if walking
Enter the cave |goto 28.85,66.42 < 5 |walk
Follow the path |goto 29.14,65.96 < 5 |walk
kill Mareen Sherwood##137551 |q 51390/1 |goto 29.77,65.50
|tip Inside the cave.
|tip Try to pull her by herself to fight her alone.
|tip You may need help with this.
step
label "Kill_Thorn_Sutton"
kill Thorn Sutton##137548 |q 51390/3 |goto 29.79,65.60
|tip Inside the cave.
|tip Try to pull him by himself to fight him alone.
|tip You may need help with this.
step
label "Kill_Wallis_Crowder"
kill Wallis Crowder##137550 |q 51390/2 |goto 29.90,65.34
|tip He walks around inside the cave.
|tip Try to pull him by himself to fight him alone.
|tip You may need help with this.
step
label "Collect_Lumber"
Follow the path |goto 29.18,65.94 < 5 |walk
Leave the cave |goto 28.86,66.45 < 5 |walk
Follow the path |goto 27.98,67.16 < 7 |only if walking
Follow the path |goto 26.75,67.61 < 7 |only if walking
click Wooden Plank+
|tip They look like wooden boards leaning on objects and laying on the ground around this area.
Collect #10# Lumber |q 50090/1 |goto 25.77,69.00
step
label "Extinguish_Fires"
use the Frost Potion##156828
|tip Use it on fires around this area.
Extinguish #20# Fires |q 50092/1 |goto 25.77,69.00
step
label "Destroy_Signs_Of_Witchcraft"
kill Briarwood Invader##131373+
click Witch Effigy+
|tip They look like large wooden monster statues on the ground around this area.
click Hanging Witch Effigy+
|tip They look like bone and wood string decorations hanging from buildings around this area.
click Antlered Skull+
|tip They look like large animal skulls with antlers on them on the ground around this area.
click Witch Banner+
|tip They look like white flags with red painted symbols on them hanging from gnarled wooden stands on the ground around this area.
Destroy Signs of Witchcraft |q 50091/1 |goto 25.77,69.00
|only if havequest(50091) or completedq(50091)
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.30,66.88 |count 1
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.48,66.74 |count 2
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.59,66.99 |count 3
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.63,67.07 |count 4
step
Follow the path |goto 26.45,67.07 < 7 |only if walking
Follow the path |goto 25.74,67.34 < 7 |only if walking
talk Warren Ashton##131448
turnin Curiously Strong##50092 |goto 25.23,67.16
accept A Weapon of Old##50036 |goto 25.23,67.16
step
talk Warren Ashton##131448
Tell him _"I am ready to begin!"_
Speak with Warren Ashton |q 50036/1 |goto 25.23,67.16
step
Watch the dialogue
|tip Click the 4 objects nearby when he tells you to.
|tip The order is random, he will tell you which object to click.
Help Create a Liquid Fire Potion |q 50036/2 |goto 25.17,67.18
step
Watch the dialogue
talk Warren Ashton##131448
turnin A Weapon of Old##50036 |goto 25.23,67.16
accept Fighting With Fire##50063 |goto 25.23,67.16
step
Follow the path up |goto 25.01,66.58 < 5 |only if walking
Follow the path |goto 25.00,65.91 < 7 |only if walking
use the Liquid Fire Flask##156710
|tip Use it on Briarwood Bulwarks around this area.
|tip Use it repeatedly to kill them easier.
kill 3 Briarwood Bulwark##133072 |q 50063/1 |goto 24.68,65.38
step
Follow the path down |goto 24.99,65.91 < 7 |only if walking
Follow the path |goto 25.05,67.02 < 7 |only if walking
talk Marten Webb##131469
turnin Fighting With Fire##50063 |goto 25.13,67.39
step
talk Inquisitor Cleardawn##131879
accept Into the Crimsonwood##50172 |goto 25.13,67.43
step
Follow the path |goto 25.40,68.44 < 7 |only if walking
Follow the path |goto 25.39,69.20 < 7 |only if walking
talk Leandro Royston##131442
turnin WANTED: The Crimson Cutthroats##51390 |goto 25.55,70.13
turnin Building Defenses##50090 |goto 25.55,70.13
step
Follow the path down |goto 25.77,70.29 < 7 |only if walking
Follow the path |goto 26.29,71.56 < 7 |only if walking
Run up the stairs |goto 26.84,71.58 < 5 |only if walking
Enter the building |goto 26.88,71.38 < 3 |walk
talk Lynn Sweet##132966
|tip Inside the building.
turnin Bramblethorn##50238 |goto 26.99,71.39
step
Leave the building |goto 26.88,71.39 < 3 |walk
Follow the path |goto 26.72,71.74 < 7 |only if walking
Follow the path up |goto 26.31,71.62 < 7 |only if walking
Follow the path |goto 25.76,70.32 < 7 |only if walking
Follow the road |goto 25.61,69.65 < 7 |only if walking
Continue following the road |goto 26.31,67.61 < 7 |only if walking
Follow the path up |goto 26.71,64.93 < 7 |only if walking
Follow the road |goto 26.42,64.16 < 7 |only if walking
Continue following the road |goto 24.50,64.08 < 7 |only if walking
Continue following the road |goto 23.60,63.62 < 7 |only if walking
Continue following the road |goto 23.03,62.33 < 7 |only if walking
Follow the path |goto 22.32,60.61 < 7 |only if walking
Follow the path |goto 21.44,59.87 < 7 |only if walking
Follow the path |goto 20.50,58.09 < 7 |only if walking
talk Inquisitor Cleardawn##133098
turnin Into the Crimsonwood##50172 |goto 20.64,57.46
accept Saving Master Ashton##50265 |goto 20.64,57.46
step
talk Marten Webb##133126
accept Odds and Ends##50306 |goto 20.64,57.51
stickystart "Collect_Bags_Of_Reagents"
stickystart "Collect_Organic_Matter_Samples"
step
Follow the path down |goto 20.31,57.01 < 7 |only if walking
kill Hexwood Binder##133112+
collect Cage Key##156859 |goto 21.28,56.36 |q 50265
step
click Cage
Free Master Ashton |q 50265/1 |goto 21.05,55.29
step
talk Samantha Sweet##133101
accept Bittersweet##50266 |goto 21.17,55.07
step
click Cage
Release Samantha Sweet |q 50266/1 |goto 21.17,55.07
step
Follow the path |goto 21.21,55.56 < 7 |only if walking
click Gauntlet
Recover the Gauntlet |q 50266/4 |goto 21.94,55.95
step
click Sword
Recover the Sword |q 50266/3 |goto 21.95,57.08
step
click Boots
Recover the Boots |q 50266/2 |goto 21.35,57.04
step
Follow the path |goto 21.30,57.57 < 5 |only if walking
click Cuirass
Recover the Cuirass |q 50266/5 |goto 21.11,57.54
step
Follow the path |goto 20.88,57.10 < 7 |only if walking
Follow the path |goto 21.11,55.86 < 7 |only if walking
talk Samantha Sweet##133101
Tell her _"I found your gear. <Hand Samantha her gear>"_
Return Samantha's Gear |q 50266/6 |goto 21.15,55.15
step
label "Collect_Bags_Of_Reagents"
kill Hexwood Seer##133111+
collect 3 Bag of Reagents##156951 |q 50306/2 |goto 22.00,56.57
step
label "Collect_Organic_Matter_Samples"
kill Timber Mongrel##133116+
collect 4 Organic Matter Sample##156950 |q 50306/1 |goto 22.00,56.57
step
Follow the path up |goto 21.01,56.57 < 10 |only if walking
Follow the path |goto 20.31,57.23 < 5 |only if walking
talk Samantha Sweet##133252
turnin Bittersweet##50266 |goto 20.60,57.49
step
talk Marten Webb##133126
turnin Odds and Ends##50306 |goto 20.64,57.51
step
talk Inquisitor Cleardawn##133098
turnin Saving Master Ashton##50265 |goto 20.64,57.46
step
talk Marten Webb##133126
accept A Little 'Pick Me Up'##50327 |goto 20.64,57.51
step
talk Warren Ashton##133105
Choose _<Hand the potion to Master Ashton>_
Give Master Ashton the Potion |q 50327/1 |goto 20.60,57.55
step
Watch the dialogue
Listen to Master Ashton |q 50327/2 |goto 20.60,57.55
step
talk Warren Ashton##133105
turnin A Little 'Pick Me Up'##50327 |goto 20.59,57.54
step
talk Inquisitor Cleardawn##133098
accept Deeper into the Woods##50370 |goto 20.64,57.46
step
Follow the path down |goto 20.27,57.10 < 7 |only if walking
Follow the path |goto 20.97,56.63 < 10 |only if walking
Follow the road |goto 22.11,56.57 < 10 |only if walking
Follow the path down |goto 23.94,55.77 < 7 |only if walking
Follow the path down |goto 24.36,55.91 < 7 |only if walking
Go Deeper Into the Woods |q 50370/1 |goto 24.58,56.65
step
talk Inquisitor Cleardawn##133098
turnin Deeper into the Woods##50370 |goto 24.57,56.65
accept Stopping the Grand Rite##50325 |goto 24.57,56.65
accept Witch Way Out?##50530 |goto 24.57,56.65
step
talk Warren Ashton##133105
accept Controlling the Situation##50445 |goto 24.58,56.72
accept Matrons of the Crimsonwood##50329 |goto 24.58,56.72
stickystart "Free_Captive_Villagers"
stickystart "Collect_Control_Charms"
step
Follow the path |goto 24.62,57.05 < 5 |only if walking
Follow the path down |goto 24.68,57.46 < 5 |only if walking
Follow the path |goto 24.91,57.93 < 7 |only if walking
Follow the path |goto 24.65,59.17 < 5 |only if walking
click Witch Effigy
Destroy the First Focus |q 50325/1 |goto 24.60,59.29
step
Follow the path |goto 24.65,59.16 < 3 |only if walking
Follow the path |goto 24.89,58.59 < 7 |only if walking
Follow the path up |goto 25.72,55.48 < 7 |only if walking
Follow the road |goto 26.81,54.76 < 7 |only if walking
Follow the path |goto 25.97,53.82 < 7 |only if walking
Follow the path |goto 26.20,52.62 < 7 |only if walking
click Witch Effigy
Destroy the Third Focus |q 50325/3 |goto 26.44,52.00
step
Follow the path |goto 25.81,53.08 < 7 |only if walking
Follow the path up |goto 25.45,53.02 < 7 |only if walking
Follow the path down |goto 25.34,52.30 < 7 |only if walking
Follow the path |goto 24.99,51.62 < 7 |only if walking
click Witch Effigy
Destroy the Second Focus |q 50325/2 |goto 25.23,50.02
step
label "Free_Captive_Villagers"
click Cage+
|tip They look like rounded wooden cages on the ground around this area.
Free #10# Captive Villagers |q 50530/1 |goto 24.76,51.61
step
label "Collect_Control_Charms"
kill Haunted Servitor##137587+
collect 5 Control Charm##157821 |q 50445/1 |goto 24.76,51.61
step
Follow the road |goto 24.43,52.54 < 7 |only if walking
Follow the path down |goto 23.88,55.73 < 7 |only if walking
Follow the path down |goto 24.39,55.92 < 7 |only if walking
talk Inquisitor Cleardawn##133098
turnin Stopping the Grand Rite##50325 |goto 24.57,56.66
turnin Witch Way Out?##50530 |goto 24.57,56.66
step
talk Warren Ashton##133105
turnin Controlling the Situation##50445 |goto 24.58,56.72
stickystart "Kill_Matron_Elsbeth_Garrick"
stickystart "Kill_Matron_Wilona_Blackwood"
step
Follow the path up |goto 24.45,56.03 < 7 |only if walking
Follow the path |goto 24.10,55.69 < 7 |only if walking
Follow the path |goto 22.34,56.48 < 7 |only if walking
Follow the path up |goto 21.44,55.77 < 7 |only if walking
Follow the path up |goto 21.28,53.63 < 7 |only if walking
Follow the path |goto 20.87,53.35 < 7 |only if walking
Follow the path up |goto 20.32,53.81 < 7 |only if walking
use the Weakening Potion##158175
|tip Use it on Matron Stefania Denholm.
|tip Use it repeatedly to kill her faster.
kill Matron Stefania Denholm##137594 |q 50329/2 |goto 19.53,53.69
step
label "Kill_Matron_Elsbeth_Garrick"
use the Weakening Potion##158175
|tip Use it on Matron Elsbeth Garrick.
|tip Use it repeatedly to kill her faster.
kill Matron Elsbeth Garrick##133103 |q 50329/1 |goto 19.53,53.69
step
label "Kill_Matron_Wilona_Blackwood"
use the Weakening Potion##158175
|tip Use it on Matron Wilona Blackwood.
|tip Use it repeatedly to kill her faster.
kill Matron Wilona Blackwood##137596 |q 50329/3 |goto 19.53,53.69
step
Follow the path |goto 20.38,53.75 < 7 |only if walking
Follow the path down |goto 20.80,53.28 < 7 |only if walking
Follow the path down |goto 21.31,53.63 < 7 |only if walking
Follow the path |goto 21.44,55.72 < 7 |only if walking
Follow the road |goto 22.24,56.49 < 7 |only if walking
Follow the path down |goto 23.92,55.76 < 7 |only if walking
Follow the path down |goto 24.38,55.91 < 7 |only if walking
talk Warren Ashton##133105
turnin Matrons of the Crimsonwood##50329 |goto 24.58,56.72
step
talk Inquisitor Cleardawn##133098
accept In the Hall of the Drust King##50481 |goto 24.57,56.65
step
Follow the path |goto 24.52,55.65 < 7 |only if walking
Continue following the path |goto 25.96,56.40 < 7 |only if walking
Enter the cave |goto 27.02,58.45 < 3 |walk
Watch the dialogue
Travel to Gorak Tul |goto 27.22,60.32 < 7 |c |q 50481
step
Run down the stairs |goto 27.14,60.20 < 3 |walk
Follow the path |goto 27.19,59.95 < 5 |walk
kill Gorak Tul##134004 |q 50481/1 |goto 27.54,59.37
|tip Downstairs inside the cave.
|tip He will eventually surrender.
step
Watch the dialogue
Run up the stairs |goto 27.20,59.96 < 5 |walk
Follow the path |goto 27.17,60.23 < 5 |walk
Run up the stairs |goto 27.27,60.42 < 5 |c |q 50481
step
Follow the path |goto 27.42,60.46 < 5 |walk
Run up the stairs |goto 27.72,60.34 < 5 |walk
Run up the stairs |goto 27.79,59.87 < 5 |walk
Follow the path |goto 27.62,59.59 < 5 |walk
Follow the path |goto 27.41,59.47 < 5 |walk
Escape the Chamber |q 50481/2 |goto 27.30,59.19
|tip Inside the cave.
step
Return to the Crimson Forest |goto 26.95,58.24 < 10 |c |q 50481 |noway
step
_Next to you:_
talk Inquisitor Cleardawn
turnin In the Hall of the Drust King##50481
accept Stick It To 'Em!##50533
step
use the Greater Control Charm##158064
Use the Greater Control Charm |q 50533/1 |goto 27.19,57.94
step
Follow the path |goto 26.53,57.69 < 7 |only if walking
Follow the path |goto 23.88,55.67 < 7 |only if walking
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy Witch Forces |q 50533/1 |goto 22.26,56.58
step
Follow the path up |goto 21.35,55.00 < 7 |only if walking
Follow the path up |goto 21.14,53.58 < 7 |only if walking
Follow the path up |goto 20.90,52.89 < 7 |only if walking
Follow the path |goto 20.60,51.46 < 7 |only if walking
Follow the path |goto 20.19,51.21 < 7 |only if walking
Follow the path up |goto 19.72,51.69 < 7 |only if walking
Reach the Signal Point |q 50533/3 |goto 19.39,51.02
step
Follow the path down |goto 19.59,50.04 < 7 |only if walking
Jump down here |goto 21.10,49.40 < 7 |only if walking
Follow the path up |goto 21.56,48.16 < 7 |only if walking
Follow the path |goto 22.28,47.61 < 7 |only if walking
talk Cesi Loosecannon##136234
accept An Economic Opportunity##50988 |goto 22.88,46.24
step
Follow the path |goto 22.59,46.60 < 7 |only if walking
Follow the path down |goto 21.98,45.81 < 7 |only if walking
Continue down the path |goto 21.38,46.20 < 7 |only if walking
Continue down the path |goto 20.59,47.45 < 5 |only if walking
Continue down the path |goto 20.29,47.11 < 5 |only if walking
Cross the bridge |goto 20.39,46.87 < 5 |only if walking
Follow the path |goto 20.60,46.50 < 5 |only if walking
talk Cesi Loosecannon##136234
turnin An Economic Opportunity##50988 |goto 20.62,46.19
step
talk Fixi Slyshiv##136227
accept Cutthroat Business Practices##51020 |goto 20.85,46.19
step
Follow the path down |goto 20.51,45.83 < 7 |only if walking
Run down the stairs |goto 20.24,45.27 < 5 |only if walking
Follow the path |goto 19.94,44.71 < 5 |only if walking
talk Klause Fairwind##136233
accept She's Got it Where it Counts##51019 |goto 19.89,44.25
step
Cross the bridge |goto 20.19,44.29 < 5 |only if walking
Follow the path |goto 20.18,43.80 < 5 |only if walking
Follow the path |goto 20.48,43.72 < 5 |only if walking
click Ball & Chain
Free Miranda |q 51019/1 |goto 20.61,43.57
step
Enter the cave |goto 21.19,43.90 < 5 |walk
kill Gary Cofferdam##136294 |q 51020/1 |goto 21.49,43.56
|tip Inside the cave.
step
Leave the cave |goto 21.18,43.90 < 5 |walk
Cross the bridge |goto 20.50,43.74 < 5 |only if walking
Cross the bridge |goto 20.17,43.84 < 5 |only if walking
Follow the path |goto 20.13,44.27 < 5 |only if walking
talk Klause Fairwind##136233
turnin She's Got it Where it Counts##51019 |goto 19.89,44.26
step
Follow the path |goto 19.92,44.69 < 5 |only if walking
Run up the stairs |goto 20.09,45.02 < 5 |only if walking
Follow the path |goto 20.24,45.26 < 5 |only if walking
Follow the path |goto 20.47,45.76 < 5 |only if walking
talk Fixi Slyshiv##136227
turnin Cutthroat Business Practices##51020 |goto 20.85,46.19
step
talk Cesi Loosecannon##136234
accept Out With the Old Boss##50978 |goto 20.62,46.19
step
Follow the path down |goto 20.84,45.54 < 7 |only if walking
Follow the path down |goto 21.11,44.69 < 7 |only if walking
Follow the path |goto 20.92,44.02 < 7 |only if walking
Cross the bridge |goto 20.45,43.74 < 7 |only if walking
Run up the stairs |goto 19.80,43.77 < 5 |only if walking
Follow the path |goto 19.70,43.76 < 5 |only if walking
Run up the stairs |goto 19.51,43.96 < 5 |only if walking
Follow the path |goto 19.41,43.99 < 5 |only if walking
kill Richard Tornsail##136474 |q 50978/1 |goto 19.29,43.65
step
Run up the stairs |goto 19.26,43.34 < 5 |only if walking
Follow the path |goto 19.09,43.33 < 5 |only if walking
Enter the building |goto 19.11,43.49 < 3 |walk
talk Cesi Loosecannon##136234
|tip Inside the building.
turnin Out With the Old Boss##50978 |goto 19.20,43.51
step
Leave the building |goto 19.11,43.49 < 3 |walk
Run up the stairs |goto 19.08,43.64 < 3 |c |q 51001 |future
step
Follow the path up |goto 19.23,43.64 < 3 |walk
Follow the path up |goto 19.27,43.35 < 3 |walk
talk Tan Lotuswind##135988
fpath Anyport |goto 19.14,43.30
step
Jump down here |goto 19.30,43.40 < 5 |only if walking
Jump down here |goto 19.51,43.69 < 5 |only if walking
Run down the stairs |goto 19.72,43.75 < 5 |only if walking
Cross the bridge |goto 19.87,43.77 < 5 |only if walking
Follow the path |goto 20.48,43.73 < 7 |only if walking
talk Clonk Greaseybit##136140
accept Every Day I'm Smugglin'##51001 |goto 20.92,43.64
step
Follow the path up |goto 21.07,44.22 < 7 |only if walking
Follow the path up |goto 21.08,44.89 < 7 |only if walking
Follow the path |goto 20.80,45.62 < 5 |only if walking
talk Kane Carlyle##136184
accept Asking for a Friend##51018 |goto 20.83,46.02
step
talk Xun Xun Sweetflower##136141
Ask her _"You have an extensive pantry. Is there anything missing from your spice rack?"_
Ask Xun Xun |q 51018/1 |goto 20.67,45.58
step
Follow the path down |goto 20.87,45.46 < 5 |only if walking
Follow the path down |goto 21.11,44.69 < 7 |only if walking
Follow the path |goto 21.03,44.17 < 7 |only if walking
Follow the path |goto 20.49,43.75 < 7 |only if walking
Run down the stairs |goto 20.18,43.65 < 5 |only if walking
talk Merchant Kooda##136282
buy Century Sauce##159678 |n
Obtain the Century Sauce |q 51018/2 |goto 20.18,43.28
step
Run up the stairs |goto 20.17,43.50 < 5 |only if walking
Cross the bridge |goto 20.17,43.84 < 5 |only if walking
Follow the path |goto 20.16,44.23 < 5 |only if walking
Run down the stairs |goto 19.76,44.60 < 5 |only if walking
click Smuggled Goods+
|tip They look like wooden crates floating in the water around this area.
collect 5 Smuggled Goods##159680 |q 51001/1 |goto 18.44,46.03
step
Run up the stairs |goto 19.65,44.72 < 5 |only if walking
Follow the path |goto 19.77,44.57 < 5 |only if walking
Cross the bridge |goto 20.18,44.26 < 5 |only if walking
Follow the path |goto 20.20,43.79 < 5 |only if walking
talk Clonk Greaseybit##136140
turnin Every Day I'm Smugglin'##51001 |goto 20.92,43.65
step
Follow the path up |goto 21.05,44.21 < 7 |only if walking
Follow the path up |goto 21.09,44.87 < 7 |only if walking
Follow the path |goto 20.80,45.62 < 5 |only if walking
talk Kane Carlyle##136184
turnin Asking for a Friend##51018 |goto 20.83,46.02
step
Follow the path up |goto 20.61,46.50 < 5 |only if walking
Follow the path up |goto 20.32,47.07 < 5 |only if walking
Follow the path up |goto 20.57,47.42 < 5 |only if walking
Continue up the path |goto 21.70,45.87 < 7 |only if walking
Follow the path |goto 22.16,45.93 < 7 |only if walking
Follow the path |goto 22.23,48.58 < 7 |only if walking
Follow the path up |goto 21.41,49.54 < 7 |only if walking
Follow the path |goto 19.77,49.81 < 7 |only if walking
talk Inquisitor Cleardawn##133098
Tell her _"Send the signal. Let's get out of here!"_
Tell Cleardawn to Send the Signal |q 50533/4 |goto 19.30,50.74
step
Watch the dialogue
clicknpc Waycrest Guard's Mount##134925
Ride the Waycrest Guard's Mount |invehicle |goto 19.43,50.56 |q 50533
step
Return to Arom's Stand |goto 37.85,49.99 |c |q 50533 |notravel
step
talk Inquisitor Cleardawn##135021
turnin Stick It To 'Em!##50533 |goto 37.87,50.09
step
Follow the road |goto 37.75,49.72 < 7 |only if walking
Continue following the road |goto 37.14,49.23 < 7 |only if walking
Continue following the road |goto 36.07,48.82 < 7 |only if walking
Continue following the road |goto 34.84,46.97 < 7 |only if walking
Continue following the road |goto 33.05,46.40 < 7 |only if walking
Cross the bridge |goto 32.30,43.99 < 7 |only if walking
Follow the path |goto 31.62,42.94 < 7 |only if walking
Follow the path |goto 31.00,41.79 < 7 |only if walking
talk Morwin Gladeheart##135976
accept A Farmer's Fate##50970 |goto 29.92,40.44
accept Lost in the Woods##50967 |goto 29.92,40.44
stickystart "Accept_Those_Who_Remain"
step
Follow the road |goto 30.65,42.10 < 7 |only if walking
Follow the road |goto 28.23,43.52 < 7 |only if walking
Follow the path up |goto 27.02,43.16 < 7 |only if walking
click Mark of Ash
Gain the Mark of Ash |q 50970/1 |goto 26.69,41.92
step
label "Accept_Those_Who_Remain"
Kill Bloodbough enemies around this area
accept Those Who Remain##50965 |goto 26.69,41.92
|tip You will eventually accept this quest after looting.
stickystart "Collect_Ashenwood_Relics"
step
Follow the path |goto 26.52,42.14 < 7 |only if walking
Follow the path |goto 25.96,41.63 < 7 |only if walking
click Mark of Yew
Gain the Mark of Yew |q 50970/2 |goto 25.21,41.84
step
Enter the tunnel |goto 24.93,40.39 < 5 |only if walking
Leave the tunnel |goto 24.28,40.81 < 5 |only if walking
click Mark of Alder
Gain the Mark of Alder |q 50970/3 |goto 24.02,40.68
step
Follow the path |goto 23.66,40.90 < 7 |only if walking
Follow the path |goto 23.48,40.50 < 7 |only if walking
Enter the cave |goto 23.41,39.28 < 5 |walk
kill Lichenlord Ripp##135914
|tip Inside the cave.
Save Amalie Oakseeker |q 50967/1 |goto 23.42,39.09
step
label "Collect_Ashenwood_Relics"
Leave the cave |goto 23.41,39.28 < 5 |walk
Follow the path down |goto 23.43,40.36 < 7 |only if walking
Follow the path |goto 23.70,40.92 < 7 |only if walking
Enter the tunnel |goto 24.28,40.83 < 5 |only if walking
Leave the tunnel |goto 24.95,40.43 < 5 |only if walking
Kill Bloodbough enemies around this area
collect 8 Ashenwood Relic##160027 |q 50965/1 |goto 25.23,41.00
step
Follow the path up |goto 27.40,42.01 < 10 |only if walking
Follow the path up |goto 28.84,41.63 < 7 |only if walking
Follow the path |goto 29.58,40.87 < 7 |only if walking
talk Morwin Gladeheart##135976
turnin A Farmer's Fate##50970 |goto 29.92,40.44
turnin Lost in the Woods##50967 |goto 29.92,40.44
turnin Those Who Remain##50965 |goto 29.92,40.44
step
Follow the road |goto 30.96,39.38 < 7 |only if walking
Cross the bridge |goto 31.07,36.35 < 7 |only if walking
Follow the road |goto 30.68,34.90 < 7 |only if walking
Follow the path |goto 30.13,33.03 < 7 |only if walking
Continue following the path |goto 31.66,32.19 < 7 |only if walking
talk Marshal Everit Reade##131636
turnin The Road to Corlain##49926 |goto 32.06,30.94
accept The First Watch##50003 |goto 32.06,30.94
step
Watch the dialogue
Run up the stairs |goto 31.43,30.09 < 5 |only if walking
Enter the building |goto 31.35,30.00 < 3 |walk
Run up the stairs |goto 31.11,29.76 < 3 |c |q 50003
step
Run up the stairs |goto 31.21,29.67 < 3 |walk
Follow the path |goto 31.33,29.85 < 3 |walk
kill Sister Adela##131671 |q 50003/1 |goto 31.18,29.81
|tip Upstairs inside the building.
step
Watch the dialogue
talk Marshal Everit Reade##131636
|tip Upstairs inside the building.
turnin The First Watch##50003 |goto 31.26,29.88
accept A Weather Eye##50149 |goto 31.26,29.88
step
Run down the stairs |goto 31.32,29.80 < 3 |walk
Run down the stairs |goto 31.17,29.66 < 3 |walk
Follow the path |goto 31.11,29.82 < 3 |c |q 50149
step
Leave the building |goto 31.34,29.98 < 3 |walk
talk Ensign Wallace##135024
fpath Watchman's Rise |goto 31.87,30.45
step
Follow the path |goto 31.23,30.42 < 5 |only if walking
Continue following the path |goto 30.82,30.01 < 5 |only if walking
talk Inquisitor Notley##131640
Tell him _"I need your help scouting the surrounding area."_
collect Falconer's Whistle##156855 |q 50149/1 |goto 30.96,29.56
step
clicknpc Winston##131705
Watch the dialogue
Begin Scouting |q 50149/2 |goto 30.79,29.36
step
Watch the dialogue
Scout the Upper Corlain Gate |q 50149/3 |goto 30.85,21.08
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Scout Corlain Town |q 50149/4 |goto 29.18,27.31
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Scout the Armory |q 50149/5 |goto 25.01,35.84
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Return to Watchman's Rise |goto 30.84,29.42 < 7 |c |q 50149 |notravel
step
Follow the path up |goto 30.83,30.01 < 5 |only if walking
Follow the path |goto 31.24,30.42 < 5 |only if walking
talk Marshal Everit Reade##131636
turnin A Weather Eye##50149 |goto 31.35,30.29
accept A Steady Ballast##50151 |goto 31.35,30.29
step
talk Lucille Waycrest##131638
accept Precious Metals##50173 |goto 31.43,30.25
stickystart "Collect_Silver_Nuggets"
step
Follow the path |goto 32.06,31.01 < 7 |only if walking
Follow the path up |goto 32.92,30.69 < 7 |only if walking
Run up the stairs |goto 34.14,30.80 < 5 |only if walking
Enter the building |goto 34.40,30.74 < 3 |walk
talk Elsie Wright##132374
|tip Inside the building.
accept An Eight-Legged Curse##50175 |goto 34.60,30.73
accept All Wrapped Up##50174 |goto 34.60,30.73
stickystart "Slay_Bilefang_Spiders"
step
Leave the building |goto 34.39,30.74 < 3 |walk
Follow the path up |goto 34.26,31.23 < 5 |only if walking
kill Writhing Cocoon##132345+
|tip They look like large squirming white eggs on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Rescue #8# Miners |q 50174/1 |goto 35.15,31.52
You can find more in the mine at [36.01,31.68]
step
label "Collect_Silver_Nuggets"
click Silver Nugget+
|tip They look like groups of small silver rocks on objects and on the ground around this area.
collect 10 Silver Nugget##156722 |q 50173/1 |goto 35.15,31.52
You can find more in the mine at [36.01,31.68]
step
label "Slay_Bilefang_Spiders"
Kill Bilefang enemies around this area
Slay #20# Bilefang Spiders |q 50175/1 |goto 35.15,31.52
step
Run up the stairs |goto 34.14,30.82 < 5 |only if walking
Enter the building |goto 34.40,30.74 < 3 |walk
talk Elsie Wright##132374
|tip Inside the building.
turnin An Eight-Legged Curse##50175 |goto 34.60,30.73
turnin All Wrapped Up##50174 |goto 34.60,30.73
step
Leave the building |goto 34.40,30.74 < 3 |walk
Follow the path |goto 34.00,30.85 < 7 |only if walking
Continue following the path |goto 33.07,30.68 < 7 |only if walking
Continue following the path |goto 32.02,30.95 < 7 |only if walking
talk Lucille Waycrest##131638
turnin Precious Metals##50173 |goto 31.43,30.25
step
Run up the stairs |goto 31.43,30.09 < 3 |only if walking
Enter the building |goto 31.35,30.00 < 3 |walk
talk Quartermaster Rickard##137455
|tip Inside the building.
home Watchman's Tower |goto 31.19,29.76
step
Leave the building |goto 31.34,29.99 < 3 |walk
Follow the path |goto 32.06,31.02 < 7 |only if walking
Follow the path |goto 31.97,31.84 < 7 |only if walking
Continue following the path |goto 31.50,32.29 < 7 |only if walking
Continue following the path |goto 29.20,33.53 < 7 |only if walking
Continue following the path |goto 27.78,33.96 < 7 |only if walking
Continue following the path |goto 26.80,35.01 < 7 |only if walking
talk Inquisitor Yorrick##131641
accept Digging for Scraps##50152 |goto 26.23,36.10
step
Follow the path |goto 26.05,35.70 < 7 |only if walking
Continue following the path |goto 25.56,35.78 < 7 |only if walking
kill Hexthralled Guardsman##131530+
click Quality Salvage+
|tip They look like swords and various pieces of armor laying on objects and on the ground around this area.
collect 10 Quality Salvage##156663 |q 50152/1 |goto 24.88,36.30
step
Continue following the path |goto 24.62,36.45 < 7 |only if walking
Continue following the path |goto 24.45,36.67 < 5 |only if walking
Run down the stairs |goto 24.45,37.26 < 3 |walk
Run down the stairs |goto 24.62,37.20 < 3 |c |q 50151
step
Follow the path |goto 24.58,36.96 < 3 |walk
Watch the dialogue
talk Angus Ballaster##132193
|tip Downstairs inside the building.
Tell him _"We could use a blacksmith to help fight the coven."_
Find Angus Ballaster |q 50151/1 |goto 24.46,37.21
step
Watch the dialogue
|tip Downstairs inside the building.
Kill the enemies that attack
Defeat the Coven Ambush |q 50151/2 |goto 24.52,36.83
step
Leave the building |goto 31.34,29.98 < 3 |walk
Follow the path |goto 31.44,30.19 < 5 |only if walking
talk Marshal Everit Reade##131636
turnin A Steady Ballast##50151 |goto 31.35,30.30
turnin Digging for Scraps##50152 |goto 31.35,30.30
step
talk Lucille Waycrest##131638
accept An Improvised Arsenal##50253 |goto 31.43,30.25
step
talk Angus Ballaster##132193
Ask him _"Can you make a weapon out of this silver?"_
Watch the dialogue
Speak with Angus Ballaster |q 50253/1 |goto 31.72,29.55
step
click Assorted Salvage
collect Battered Hand Cannon##156853 |q 50253/2 |goto 31.93,29.73
step
click Place Hand Cannon
Place the Hand Cannon |q 50253/3 |goto 31.63,29.51
step
Watch the dialogue
Modify the Hand Cannon |q 50253/4 |goto 31.63,29.51
step
talk Angus Ballaster##132193
turnin An Improvised Arsenal##50253 |goto 31.78,29.56
accept accept 50448 |goto 31.78,29.56
step
talk Lucille Waycrest##131638
accept Witchrending##50446 |goto 31.43,30.25
accept To Have Loved and Lost##50754 |goto 31.43,30.25
step
click Wanted Poster
accept WANTED: Sister Lilias##51356 |goto 31.75,30.79
step
Follow the path up |goto 30.95,30.47 < 7 |only if walking
Follow the path down |goto 30.40,30.74 < 7 |only if walking
Jump down here |goto 30.02,30.63 < 5 |only if walking
clicknpc Corlain Townsperson##134009
accept Remembering the Fallen##50447 |goto 29.29,29.81
stickystart "Collect_Personal_Keepsakes"
stickystart "Combat_The_Heartsbane_Coven"
step
Follow the path |goto 29.37,29.51 < 7 |only if walking
Follow the path |goto 30.11,29.30 < 7 |only if walking
kill Matron Adeline##133350 |q 50446/2 |goto 30.38,28.83
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
Follow the path |goto 30.11,29.32 < 7 |only if walking
Follow the path |goto 29.71,29.27 < 7 |only if walking
Follow the path |goto 29.38,28.72 < 7 |only if walking
kill Matron Ceridwen##133307 |q 50446/1 |goto 29.11,27.64
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
Follow the path |goto 28.25,27.65 < 7 |only if walking
kill Matron Letitia##133351 |q 50446/3 |goto 27.09,29.31
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
label "Collect_Personal_Keepsakes"
clicknpc Corlain Townsperson##134023+
|tip They look like dead humans on the ground around this area.
collect 8 Personal Keepsake##157806 |q 50447/1 |goto 28.11,27.88
step
label "Combat_The_Heartsbane_Coven"
Kill enemies around this area
|tip Not all enemies will count for this quest goal.
click Cursed Effigy+
|tip They look like wooden statues with antlered animal skulls on them on the ground around this area.
click Wicker Bundle+
|tip They look like bundles of sticks on the ground around this area.
click Dormant Servitor+
|tip They look like slouching wooden humanoid enemies standing in place around this area.
Combat the Heartsbane Coven |q 50448/1 |goto 28.11,27.88
|only if havequest(50448) or completedq(50448)
step
Follow the path |goto 28.10,27.46 < 7 |only if walking
Follow the path |goto 28.69,26.43 < 7 |only if walking
talk Inquisitor Mace##131639
accept Reeking Refuge##50449 |goto 28.54,25.65
step
Follow the path |goto 28.19,24.99 < 7 |only if walking
Run up the stairs |goto 27.38,25.09 < 5 |only if walking
Enter the building |goto 27.28,25.24 < 3 |walk
Investigate the Farm |q 50449/1 |goto 27.06,25.23
|tip Inside the building.
step
talk Harris Hocking##133839
|tip Inside the building.
turnin Reeking Refuge##50449 |goto 27.06,25.23
accept Eating Through the Defenses##50451 |goto 27.06,25.23
accept An Offensive Harvest##50450 |goto 27.06,25.23
stickystart "Kill_Scavenging_Boars"
step
Leave the building |goto 27.28,25.24 < 3 |walk
click Aromatic Onion+
|tip They look like white onions with green fumes rising off of them half-buried in the ground around this area.
collect 7 Aromatic Onion##157807 |q 50450/1 |goto 27.65,24.73
step
label "Kill_Scavenging_Boars"
kill 8 Scavenging Boar##133822 |q 50451/1 |goto 27.65,24.73
step
Run up the stairs |goto 27.38,25.09 < 5 |only if walking
Enter the building |goto 27.28,25.24 < 3 |walk
talk Harris Hocking##133839
|tip Inside the building.
turnin Eating Through the Defenses##50451 |goto 27.06,25.23
turnin An Offensive Harvest##50450 |goto 27.06,25.23
accept Potent Protection##50452 |goto 27.06,25.23
step
Leave the building |goto 27.28,25.24 < 3 |walk
Follow the road |goto 28.19,23.90 < 7 |only if walking
Cross the bridge |goto 27.07,21.23 < 7 |only if walking
Follow the path |goto 27.05,20.79 < 7 |only if walking
kill Sister Lilias##137371
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
|tip Pull her toward the small bridge nearby to make the ability button appear again, if it disappears when you approach her.
|tip You may need help with this.
collect Sister Lilias' Head##160026 |q 51356/1 |goto 27.07,19.54
step
Follow the road |goto 26.32,20.89 < 7 |only if walking
Follow the path up |goto 25.55,17.69 < 7 |only if walking
Follow the path up |goto 25.47,16.98 < 7 |only if walking
talk Bertram##135025
fpath Whitegrove Chapel |goto 25.75,16.56
step
Jump down here |goto 25.27,17.15 < 5 |only if walking
Follow the path |goto 23.60,17.44 < 7 |only if walking
click Simple Gravestone
Place the Flowers |q 50754/1 |goto 23.26,17.47
step
Watch the dialogue
talk Alexander Treadward##135200
turnin To Have Loved and Lost##50754 |goto 23.30,17.42
accept Painful Memories##50758 |goto 23.30,17.42
step
Follow the path up |goto 23.26,16.47 < 7 |only if walking
Follow the path |goto 23.13,15.79 < 7 |only if walking
Follow the path |goto 22.92,14.60 < 7 |only if walking
click Forgotten Bones
Find Treadward's Ring |q 50758/1 |goto 23.31,12.60
step
Watch the dialogue
talk Alexander Treadward##134953
turnin Painful Memories##50758 |goto 23.29,12.59
accept Running Late##50759 |goto 23.29,12.59
step
Follow the path |goto 23.37,12.97 < 7 |only if walking
Continue following the path |goto 23.57,13.83 < 7 |only if walking
Enter the building |goto 23.85,14.98 < 5 |only if walking
Follow the path |goto 24.10,15.13 < 3 |walk
Run up the stairs |goto 24.37,14.94 < 3 |walk
Run up the stairs |goto 24.37,15.11 < 5 |c |q 50759
step
Follow the path |goto 24.20,15.16 < 3 |walk
Watch the dialogue
talk Lord Arthur Waycrest##132994
|tip Upstairs inside the building.
Tell him _"The ceremony is ready to begin."_
Speak to Lord Waycrest |q 50759/1 |goto 24.31,14.94
step
click Rug
|tip Upstairs inside the building.
collect Lord Waycrest's Notes##158719 |q 50759/2 |goto 24.27,15.03
step
talk Lord Arthur Waycrest##132994
|tip Upstairs inside the building.
turnin Running Late##50759 |goto 24.31,14.94
step
Run down the stairs |goto 24.25,15.18 < 3 |c |q 50760 |future
step
Run down the stairs |goto 24.40,15.06 < 3 |walk
Follow the path |goto 24.32,14.90 < 3 |walk
Follow the path |goto 24.14,15.11 < 3 |walk
Leave the building |goto 23.87,15.06 < 3 |walk
Follow the path |goto 23.56,13.80 < 7 |only if walking
talk Alexander Treadward##134953
accept From This Day Forward##50760 |goto 23.29,12.59
step
click Church Pew
Watch the dialogue
Observe the Ceremony |q 50760/1 |goto 23.26,12.95
step
talk Lord Arthur Waycrest##132994
turnin From This Day Forward##50760 |goto 23.25,12.70
accept Blood in the Chapel##50761 |goto 23.25,12.70
step
kill 10 Red Hand Assassin##134926 |q 50761/1 |goto 23.57,13.80
step
talk Lord Arthur Waycrest##132994
turnin Blood in the Chapel##50761 |goto 23.25,12.70
accept The Lady's Fate##50762 |goto 23.25,12.70
step
Follow the path |goto 23.37,12.97 < 7 |only if walking
Continue following the path |goto 23.57,13.83 < 7 |only if walking
Enter the building |goto 23.85,14.98 < 5 |only if walking
Follow the path |goto 24.10,15.13 < 3 |walk
Run down the stairs |goto 24.30,15.15 < 3 |walk
Run down the stairs |goto 24.40,15.07 < 3 |c |q 50762
step
Follow the path |goto 24.31,14.84 < 3 |walk
Watch the dialogue
|tip Downstairs inside the building.
Find Lady Waycrest |q 50762/1 |goto 24.28,15.13
step
Watch the dialogue
|tip Downstairs inside the building.
kill Roland the Knife##134992
Watch the dialogue
Slay Roland the Knife |q 50762/2 |goto 24.28,15.13
step
click Assassin's Orders
|tip Downstairs inside the building.
collect Assassin's Orders##158914 |q 50762/3 |goto 24.25,15.01
step
Run up the stairs |goto 24.35,14.87 < 5 |c |q 50762
step
Run up the stairs |goto 24.39,15.11 < 3 |walk
Follow the path |goto 24.30,15.16 < 3 |walk
Follow the path |goto 24.13,15.11 < 3 |walk
Leave the building |goto 23.87,15.05 < 3 |walk
Follow the path |goto 23.66,14.85 < 7 |only if walking
Continue following the path |goto 23.23,15.11 < 7 |only if walking
Continue following the path |goto 23.10,15.71 < 7 |only if walking
talk Alexander Treadward##135200
turnin The Lady's Fate##50762 |goto 23.30,17.42
accept One Last Request##50763 |goto 23.30,17.42
step
Follow the path |goto 23.62,17.46 < 7 |only if walking
Follow the path up |goto 25.50,17.63 < 7 |only if walking
Follow the path up |goto 25.44,17.00 < 7 |only if walking
talk Lucille Waycrest##131638
turnin Witchrending##50446 |goto 31.43,30.25
turnin Remembering the Fallen##50447 |goto 31.43,30.25
turnin Potent Protection##50452 |goto 31.43,30.25
turnin One Last Request##50763 |goto 31.43,30.25
step
talk Lieutenant Course##137368
turnin WANTED: Sister Lilias##51356 |goto 31.49,30.07
step
talk Angus Ballaster##132193
accept Barrier Buster##50453 |goto 31.78,29.56
step
talk Marshal Everit Reade##131636
accept A Traitor's Death##50454 |goto 31.35,30.29
step
Follow the path down |goto 25.43,17.00 < 7 |only if walking
Follow the path |goto 25.72,17.76 < 7 |only if walking
Follow the road |goto 26.40,18.07 < 7 |c |q 50454
step
accept Plundering Pirates##50959 |goto 27.53,15.38
|tip You will automatically accept this quest.
step
Kill Irontide enemies around this area
click Pirate Grog+
|tip They look like glass bottles with grey liquid in them sitting on objects and on the ground around this area.
click Plundered Supplies+
|tip They look like small wooden chests on the ground around this area.
click Outlaw Cannon+
|tip They look like grey metal cannons on the deck of the ships in the water around this area.
Drive Back the Irontide |q 50959/1 |goto 27.53,15.38
|only if havequest(50959) or completedq(50959)
stickystart "Collect_Blasting_Powder"
stickystart "Slay_Goodspeeds_Guardsmen"
step
Leave the building |goto 31.34,29.98 < 3 |walk
Follow the path |goto 32.05,29.91 < 7 |only if walking
Follow the path down |goto 32.41,28.58 < 7 |only if walking
Follow the path |goto 30.45,25.95 < 7 |only if walking
Follow the path |goto 30.09,23.91 < 7 |only if walking
Continue following the path |goto 29.86,22.57 < 7 |only if walking
Continue following the path |goto 29.53,21.08 < 7 |only if walking
Continue following the path |goto 29.15,19.87 < 7 |only if walking
kill Captain Goodspeed##133841 |q 50454/1 |goto 28.94,19.07
step
label "Collect_Blasting_Powder"
click Blasting Powder+
|tip They look like brown leather sacks sitting on objects and on the ground around this area.
collect 5 Blasting Powder##157800 |q 50453/1 |goto 29.33,20.78
step
label "Slay_Goodspeeds_Guardsmen"
Kill Hexthralled enemies around this area
Slay #10# Goodspeed's Guardsmen |q 50454/1 |goto 29.33,20.78
step
Follow the path up |goto 30.43,22.21 < 7 |only if walking
Follow the path up |goto 30.70,22.16 < 7 |only if walking
Jump up here |goto 30.64,21.50 < 3 |only if walking
talk Inquisitor Sterntide##131642
turnin Barrier Buster##50453 |goto 30.63,21.63
accept Break On Through##50457 |goto 30.63,21.63
step
click Rampart Cannon
Watch the dialogue
Destroy the Corlain Barrier |q 50457/1 |goto 30.56,21.64
step
talk Inquisitor Notley##131640
accept Hexed Hatchlings##50456 |goto 31.27,22.72
accept Leaving the Nest##50455 |goto 31.27,22.72
step
use the Falconer's Whistle##157845
|tip Use the ability on your action bar on Wicker Charms around this area.
|tip They look like dreamcatcher objects hanging from the buildings around this area.
Destroy #7# Wicker Charms |q 50456/1 |goto 31.83,23.92
step
Stop Controlling the Falcon |outvehicle |q 50456
|tip Click the yellow arrow on your action bar.
step
kill Hexthralled Falconer##131519+
collect Falconer's Key##157840 |n
click Falcon Cage+
|tip They look like dark metal bird cages sitting on objects and on the ground around this area.
Open #5# Falcon Cages |q 50455/1 |goto 31.79,24.53
step
Follow the path |goto 31.72,23.45 < 10 |only if walking
talk Inquisitor Notley##131640
turnin Leaving the Nest##50455 |goto 31.27,22.72
turnin Hexed Hatchlings##50456 |goto 31.27,22.72
step
Follow the road |goto 30.95,20.84 < 7 |only if walking
talk Lucille Waycrest##131638
turnin Break On Through##50457 |goto 31.01,20.25
accept To the Other Side##50583 |goto 31.01,20.25
step
talk Marshal Everit Reade##131636
turnin A Traitor's Death##50454 |goto 31.03,20.26
accept Hexecutioner##50585 |goto 31.03,20.26
accept Ruinous Rituals##50584 |goto 31.03,20.26
stickystart "Kill_Blighted_Horrors"
stickystart "Slay_Heartsbane_Witches"
step
click Corlain Citizen's Journal
accept The Fall of Corlain##50586 |goto 30.75,19.57
step
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 30.75,19.57 |count 1
step
Follow the path |goto 30.58,18.85 < 7 |only if walking
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 30.21,18.37 |count 2
step
Follow the path |goto 30.36,17.91 < 7 |only if walking
click Gate
Open the East Gate |q 50583/1 |goto 29.85,17.92
step
Follow the path |goto 30.36,17.82 < 7 |only if walking
Follow the path |goto 31.54,18.27 < 7 |only if walking
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 31.98,18.27 |count 3
step
Run up the stairs |goto 31.97,19.08 < 5 |only if walking
Follow the path |goto 32.01,19.26 < 5 |only if walking
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 31.99,20.44 |count 4
step
Follow the path |goto 32.39,20.15 < 5 |only if walking
click Gate
Open the South Gate |q 50583/2 |goto 32.52,20.52
step
Run up the stairs |goto 32.48,19.94 < 5 |only if walking
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 32.68,20.01 |count 5
step
Follow the road |goto 33.05,19.86 < 7 |only if walking
Follow the path |goto 33.86,20.00 < 7 |only if walking
Follow the path |goto 34.01,20.67 < 7 |only if walking
click Gate
Open the West Gate |q 50583/3 |goto 33.74,20.95
step
Follow the path |goto 34.03,20.62 < 7 |only if walking
Follow the road |goto 33.66,19.65 < 7 |only if walking
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 33.97,18.51 |count 6
step
label "Kill_Blighted_Horrors"
kill Heartsbane Disciple##134237+
|tip Attack the ones next to Blighted Horrors to be able to attack the Blighted Horrors.
kill 4 Blighted Horror##137568 |q 50584/1 |goto 33.42,18.32
|tip They will appear on your minimap as yellow dots.
step
label "Slay_Heartsbane_Witches"
Kill enemies around this area
|tip Only Heartsbane and Coven enemies will count toward this quest goal.
Slay #13# Heartsbane Witches |q 50585/1 |goto 33.42,18.32
step
Follow the road |goto 32.99,18.51 < 7 |only if walking
Follow the road |goto 32.10,18.75 < 7 |only if walking
Continue following the road |goto 31.49,19.01 < 7 |only if walking
talk Marshal Everit Reade##131636
turnin Hexecutioner##50585 |goto 31.03,20.26
turnin Ruinous Rituals##50584 |goto 31.03,20.26
step
talk Lucille Waycrest##131638
turnin To the Other Side##50583 |goto 31.00,20.25
turnin The Fall of Corlain##50586 |goto 31.00,20.25
accept Storming the Manor##51851 |goto 31.00,20.25
step
Watch the dialogue
Begin Following Lucille Waycrest |goto 31.00,20.25 > 10 |c |q 51851
step
Follow the road |goto 31.48,18.00 < 7 |only if walking
Follow the path up |goto 32.03,16.34 < 7 |only if walking
Follow the path |goto 32.31,15.72 < 7 |only if walking
Watch the dialogue
Follow Lucille |q 51851/1 |goto 32.67,15.35
step
Watch the dialogue
kill Marshal Everit Reade##134366 |q 51851/2 |goto 32.88,15.33
step
Watch the dialogue
talk Lucille Waycrest##131638
turnin Storming the Manor##51851 |goto 32.82,15.34
step
Watch the dialogue
talk Lucille Waycrest##131638
turnin Storming the Manor##51851 |goto 32.82,15.34
accept Waycrest Manor: The Fallen Mother##50639 |goto 32.82,15.34
step
kill Lady Waycrest##131545 |q 50639/1
|tip She is inside the Waycrest Manor dungeon.
|tip Use the Group Finder to enter the dungeon.
|tip Use the Waycrest Manor dungeon guide to accomplish this.
step
Follow the path |goto 38.30,51.73 < 7 |only if walking
Follow the path |goto 37.74,50.23 < 7 |only if walking
Run up the stairs |goto 37.26,50.22 < 5 |only if walking
Enter the building |goto 37.12,50.19 < 3 |walk
Follow the path |goto 36.99,50.16 < 3 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Waycrest Manor: The Fallen Mother##50639 |goto 36.86,50.11
accept Everburning##52149 |goto 36.86,50.11
step
Follow the path |goto 36.98,50.16 < 3 |walk
Leave the building |goto 37.12,50.19 < 3 |walk
Follow the path up |goto 37.42,50.70 < 7 |only if walking
Follow the path |goto 37.13,51.07 < 7 |only if walking
Run up the stairs |goto 36.50,51.00 < 5 |only if walking
Follow the path |goto 36.34,51.06 < 5 |only if walking
talk Lucille Waycrest##142651
Tell her _"I am ready to assist you."_
Speak to Lucille to Begin the Ceremony |q 52149/1 |goto 36.05,51.18
step
Watch the dialogue
use Marshal's Regalia##161247
|tip Use it on Inquisitor Cleardawn.
Watch the dialogue
Present the Regalia |q 52149/2 |goto 36.07,51.18
step
talk Lucille Waycrest##142651
turnin Everburning##52149 |goto 36.05,51.18
accept House Waycrest##53109 |goto 36.05,51.18
step
Run down the stairs |goto 36.41,51.02 < 5 |only if walking
Follow the path |goto 36.92,51.23 < 7 |only if walking
Follow the path down |goto 37.54,51.78 < 7 |only if walking
Follow the path |goto Boralus/0 68.14,15.61 < 7 |only if walking
Jump down here |goto Boralus/0 70.38,17.60 < 5 |only if walking
Run up the stairs |goto Boralus/0 69.14,21.24 < 5 |only if walking
Enter the building |goto Boralus/0 68.81,21.12 < 3 |walk
Follow the path |goto Boralus/0 67.92,20.82 < 5 |walk
Run down the stairs |goto Boralus/0 67.43,21.40 < 3 |walk
Run down the stairs |goto Boralus/0 67.35,22.88 < 3 |walk
talk Taelia##121235
|tip Inside the building.
turnin House Waycrest##53109 |goto Boralus/0 68.38,22.06
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Stormsong Valley",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Stormsong Valley storylines:\n\nThe Tidesages of Stormsong\nThe Growing Tempest\nCycle of Hatred\nBriarback Kraul\nA House in Peril\nAt the Edge of Madness\nFrom the Depths They Come\nTreasure in Deadwash",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
talk Taelia##121235
|tip Inside the building.
accept The Missing Fleet##47952 |goto Boralus/0 68.17,21.97
step
Run up the stairs |goto 67.51,22.92 < 3 |walk
Run up the stairs |goto 67.22,22.59 < 3 |walk
Follow the path |goto 67.43,21.35 < 3 |walk
Follow the path |goto 67.76,20.86 < 5 |walk
Leave the building |goto 68.79,21.15 < 3 |walk
Follow the path |goto 70.33,18.85 < 7 |only if walking
Continue following the path |goto 71.61,18.11 < 7 |only if walking
Continue following the path |goto 74.29,18.86 < 7 |only if walking
Continue following the path |goto 75.82,22.10 < 5 |only if walking
Run down the stairs |goto 75.67,22.91 < 5 |only if walking
Follow the path |goto 74.95,23.12 < 5 |only if walking
Jump down here |goto 74.35,23.88 < 5 |only if walking
talk Will Melborne##135064
Tell him _"We need a ferry to the Stormsong Monastery."_
Charter a Ferry to Stormsong Monastery |q 47952/1 |goto 74.17,24.80
step
Watch the dialogue
Travel to Stormsong Monastery |goto 65.20,68.70 < 10 |c |notravel |q 47952
step
_Next to you:_
talk Taelia
turnin The Missing Fleet##47952
accept Searching for Answers##51487
step
Run up the stairs |goto 65.35,69.17 < 5 |only if walking
Follow the path up |goto 65.40,70.69 < 7 |only if walking
Follow the path |goto 66.91,73.13 < 7 |only if walking
talk Sister Adrianna##133974
Ask her _"Can you tell me anything about the missing fleet?"_
Question Sister Adrianna |q 51487/1 |goto 68.44,74.23
step
Follow the path |goto 67.39,75.22 < 7 |only if walking
Follow the path |goto 64.48,78.86 < 7 |only if walking
Run up the stairs |goto 63.61,79.10 < 5 |only if walking
Follow the path |goto 62.50,80.25 < 5 |only if walking
Run down the stairs |goto 62.17,80.74 < 5 |only if walking
Follow the path |goto 61.59,81.60 < 5 |only if walking
Follow the path |goto 59.80,84.72 < 7 |only if walking
Run up the stairs |goto 60.15,85.44 < 5 |only if walking
talk Brother Darrel##133976
Ask him _"Can you tell me anything about the missing fleet?"_
Question Brother Darrel |q 51487/2 |goto 60.49,85.25
step
Follow the path |goto 60.28,85.89 < 5 |only if walking
Follow the path |goto 62.10,87.07 < 5 |only if walking
Continue following the path |goto 64.70,85.69 < 5 |only if walking
Continue following the path |goto 65.74,84.80 < 5 |only if walking
talk Sister Celicia##134033
Ask her _"Can you tell me anything about the missing fleet?"_
Question Sister Celicia |q 51487/3 |goto 66.18,84.97
step
_Next to you:_
talk Taelia
turnin Searching for Answers##51487
accept Archived Knowledge##51488
step
Follow the path |goto 66.40,83.16 < 5 |only if walking
Follow the path |goto 66.31,81.70 < 5 |only if walking
Follow the path |goto 67.67,80.27 < 5 |only if walking
talk Brother Alen##133951
Ask him _"Can you tell me anything about the missing fleet?"_
Question Brother Alen |q 51488/1 |goto 68.40,81.49
step
Run down the stairs |goto 68.70,82.04 < 5 |only if walking
Follow the path |goto 68.13,82.38 < 5 |only if walking
Run down the stairs |goto 66.97,80.39 < 3 |c |q 51488
step
Run down the stairs |goto 66.71,80.98 < 3 |walk
Follow the path |goto 67.01,81.40 < 3 |only if walking
Watch the dialogue
|tip Follow Brother Alen as he walks.
Follow Brother Alen into the Archives |q 51488/2 |goto 67.64,81.69
step
Watch the dialogue
|tip Downstairs inside the building.
kill Lieutenant Wade##138318 |q 51488/3 |goto 67.64,81.69
step
Watch the dialogue
|tip Downstairs inside the building.
Learn the Secret |q 51488/4 |goto 67.64,81.69
step
_Next to you:_
talk Taelia
turnin Archived Knowledge##51488
accept Time to Leave##51489
step
Run up the stairs |goto 67.01,81.40 < 3 |walk
Run up the stairs |goto 66.70,80.77 < 3 |walk
Follow the path |goto 67.03,80.34 < 3 |c |q 51489
step
Run up the stairs |goto 68.34,82.51 < 5 |only if walking
Follow the path |goto 69.01,81.38 < 5 |only if walking
Follow the path down |goto 69.88,80.14 < 5 |only if walking
Follow the path down |goto 70.56,78.57 < 5 |only if walking
Run up the stairs |goto 71.84,78.49 < 5 |only if walking
Follow the path |goto 72.02,79.14 < 3 |only if walking
Run up the stairs |goto 72.56,79.09 < 3 |c |q 51489
step
Follow the path up |goto 72.53,78.36 < 3 |only if walking
Run up the stairs |goto 72.04,78.22 < 3 |only if walking
clicknpc Galeheart##137978
Watch the dialogue
Begin Flying to Stormsong Valley |goto 71.78,78.90 > 30 |c |q 51489
step
Watch the dialogue
Fly with Galeheart to Stormsong Valley |q 51489/1 |goto Stormsong Valley/0 57.86,86.05 |notravel
step
talk Taelia##137866
turnin Time to Leave##51489 |goto Stormsong Valley/0 57.89,85.92
accept Border Issues##51490 |goto Stormsong Valley/0 57.89,85.92
step
talk Stormsong NPC's around this area
Tell them _"Open this pass at once."_
|tip Some of them will attack you.
Clear the Blockade |q 51490/1 |goto 57.65,85.44
step
talk Taelia##137866
turnin Border Issues##51490 |goto 57.89,85.92
accept Carry On##51401 |goto 57.89,85.92
step
Follow the road |goto 57.58,85.47 < 7 |only if walking
Continue following the road |goto 56.94,84.20 < 7 |only if walking
Continue following the road |goto 57.06,82.72 < 7 |only if walking
Continue following the road |goto 56.81,81.05 < 7 |only if walking
Cross the bridge |goto 57.63,80.67 < 7 |only if walking
Follow the path |goto 58.76,80.62 < 7 |only if walking
Follow the path down |goto 59.41,79.89 < 7 |only if walking
Follow the path down |goto 59.44,78.15 < 7 |only if walking
Continue down the path |goto 59.51,77.16 < 7 |only if walking
Follow the path |goto 58.61,74.17 < 7 |only if walking
Follow the path |goto 59.05,71.08 < 7 |only if walking
Watch the dialogue
talk Taelia##129999
turnin Carry On##51401 |goto 59.17,69.49
accept A Risky Ploy##49725 |goto 59.17,69.49
step
use the Military Whistle##155859
Disperse the Crowd |q 49725/1 |goto 59.11,69.06
step
Watch the dialogue
kill Brennadam Citizen##134241
Subdue the Brennadam Citizen |q 49725/2 |goto 59.14,69.09
step
Run up the stairs |goto 59.17,68.77 < 5 |only if walking
talk Brother Pike##130576
turnin A Risky Ploy##49725 |goto 59.23,68.63
accept House Stormsong##49703 |goto 59.23,68.63
step
Run up the stairs |goto 58.89,70.36 < 5 |only if walking
Enter the building |goto 58.76,70.45 < 3 |walk
talk "Nasty" Buck##138221
|tip He walks around this area inside the building.
home The Golden Flagon |goto 58.58,70.31 |q 50802 |future
step
Leave the building |goto 58.75,70.45 < 3 |walk
talk Anna Skyspirit##134704
fpath Brennadam |goto 59.73,70.57
step
Follow the path |goto 59.92,70.30 < 5 |only if walking
talk Marilyn Hood##141769
accept Circle the Wagons##52793 |goto 60.18,70.49
accept Sometimes Less Is More##52796 |goto 60.18,70.49
stickystart "Kill_Stonejaw_Saurolisks"
step
Follow the path |goto 60.62,70.92 < 7 |only if walking
Follow the path |goto 60.79,72.03 < 7 |only if walking
Follow the path up |goto 62.60,73.06 < 7 |only if walking
Follow the path |goto 63.45,73.70 < 7 |only if walking
talk Lorraine Hood##141622
Tell her _"You are safe now."_
Find Lorraine |q 52793/1 |goto 63.79,73.80
step
Follow the path up |goto 64.02,74.19 < 7 |only if walking
Follow the path |goto 64.50,75.14 < 7 |only if walking
Follow the path |goto 64.78,75.76 < 7 |only if walking
talk Mallory Hood##141603
Tell her _"I will take care of it."_
Find Mallory |q 52793/3 |goto 64.89,76.77
step
talk Mallory Hood##141603
accept A Saur Point##52795 |goto 64.89,76.77
step
Enter the cave |goto 65.24,77.58 < 5 |walk
kill Sourtooth##141599 |q 52795/1 |goto 65.42,77.99
|tip Inside the cave.
step
Leave the cave |goto 65.22,77.57 < 5 |walk
talk Mallory Hood##141603
turnin A Saur Point##52795 |goto 64.89,76.77
step
Follow the path |goto 64.32,76.89 < 7 |only if walking
Follow the path |goto 63.67,77.13 < 7 |only if walking
talk Darion Hood##141604
Tell him _"I'll see they are safe."_
Find Darion |q 52793/2 |goto 63.31,77.71
step
label "Kill_Stonejaw_Saurolisks"
Kill Stonejaw enemies around this area
|tip Stonejaw Younglings will not count for this quest goal.
Slay #8# Stonejaw Saurolisks |q 52796/1 |goto 63.31,76.25
step
Leave the building |goto 58.75,70.45 < 3 |walk
Follow the path |goto 59.72,70.29 < 7 |only if walking
talk Marilyn Hood##141769
turnin Circle the Wagons##52793 |goto 60.18,70.49
turnin Sometimes Less Is More##52796 |goto 60.18,70.49
step
Follow the path |goto 59.97,70.35 < 5 |only if walking
Follow the road |goto 59.54,70.25 < 7 |only if walking
Follow the path down |goto 58.89,69.02 < 7 |only if walking
Cross the bridge |goto 58.01,67.43 < 7 |c |q 49745 |future
step
Watch the dialogue
accept The Battle for Brennadam##51534 |goto 57.63,66.49
|tip You will automatically accept this quest.
step
talk Mayor Roz##130694
accept You Have Their Orders##49745 |goto 57.63,66.49
accept Dousing the Flames##49746 |goto 57.63,66.49
step
talk Sergeant Calvin##130190
accept Bombs, Away##49744 |goto 57.61,66.41
stickystart "Collect_Horde_Explosives"
stickystart "Douse_Fires"
stickystart "Resist_The_Horde"
step
Follow the path |goto 57.13,65.23 < 7 |only if walking
Follow the path up |goto 56.69,64.94 < 7 |only if walking
Follow the path |goto 56.09,64.53 < 7 |only if walking
Continue following the path |goto 55.53,63.79 < 7 |only if walking
Continue following the path |goto 54.80,63.28 < 7 |only if walking
Continue following the path |goto 54.27,62.65 < 7 |only if walking
kill Champion Lockjaw##138028
|tip He walks around this area.
collect Warchief's Orders##133510 |q 49745/1 |goto 54.43,61.33
step
label "Collect_Horde_Explosives"
Follow the path |goto 55.14,61.03 < 7 |only if walking
Continue following the path |goto 55.66,61.58 < 7 |only if walking
Continue following the path |goto 55.73,62.32 < 7 |only if walking
click Sapper Charge+
|tip They look like metal spikey bombs that appear on the ground around this area.
|tip They have a timer counting down to explosion.
|tip Click them before they explode.
click Horde Explosive+
|tip They look like red spikey balls half-buried in the ground around this area.
|tip These do not explode.
collect 8 Horde Explosive##155877 |q 49744/1 |goto 56.02,62.91
step
Follow the path |goto 55.65,61.69 < 7 |only if walking
click Planted Explosives
Destroy the Demolisher |q 49744/2 |goto 55.71,60.68 |count 1
step
Follow the path |goto 55.45,60.95 < 7 |only if walking
click Planted Explosives
Destroy the Demolisher |q 49744/2 |goto 54.63,60.89 |count 2
step
label "Douse_Fires"
Follow the path |goto 55.29,61.11 < 7 |only if walking
Follow the path |goto 55.65,61.69 < 7 |only if walking
click Water Bucket+
|tip They look like small wooden buckets on the ground around this area.
|tip Use the "Douse Flames" ability on fires around this area.
|tip It appears as a button on the screen.
Douse #15# Fires |q 49746/1 |goto 56.02,62.91
step
label "Resist_The_Horde"
Kill enemies around this area
clicknpc Frightened Villager##136580+
|tip They look like humans standing, kneeling, and laying on the ground around this area.
Resist the Horde |q 51534/1 |goto 56.02,62.91
|only if havequest(51534) or completedq(51534)
step
Follow the path |goto 57.39,66.03 < 10 |only if walking
talk Sergeant Calvin##130190
turnin Bombs, Away##49744 |goto 57.61,66.41
step
talk Mayor Roz##130694
turnin You Have Their Orders##49745 |goto 57.63,66.49
turnin Dousing the Flames##49746 |goto 57.63,66.49
accept Heavy Artillery##49755 |goto 57.63,66.49
step
Follow the path |goto 57.42,66.00 < 7 |only if walking
Continue following the path |goto 57.29,64.64 < 7 |only if walking
Continue following the path |goto 57.56,62.98 < 7 |only if walking
Follow the path up |goto 57.68,61.68 < 7 |only if walking
Continue up the path |goto 57.71,60.97 < 7 |only if walking
Follow the path |goto 56.85,60.03 < 7 |only if walking
Follow the path |goto 56.65,59.15 < 10 |only if walking
kill Tank Engineer##138125+
kill Commander Wormwood##130899 |q 49755/1 |goto 56.17,58.40
|tip He appears after you kill the Tank Engineers.
step
clicknpc Experimental War Machine##138055
Control the Experimental War Machine |invehicle |goto 56.13,58.41 |q 49755
step
Kill enemies around this area
|tip They are to the northwest.
|tip Use the "Azerite Cannon" ability on your action bar.
Destroy the Horde Forces |q 49755/2 |goto 56.10,58.28
step
Activate the Self Destruct |q 49755/3 |goto 56.10,58.28
|tip Use the "Self Destruct" ability on your action bar.
step
Land Safely |goto 59.14,67.58 < 70 |c |q 49755 |notravel
step
Follow the path |goto 60.20,68.21 < 7 |only if walking
Follow the path |goto 59.76,69.15 < 7 |only if walking
Follow the path |goto 59.41,69.69 < 7 |only if walking
talk Squire Augustus III##131004
accept Trouble at Fort Daelin##49818 |goto 59.51,69.95
step
Follow the path down |goto 58.82,68.91 < 7 |only if walking
Cross the bridge |goto 58.01,67.42 < 7 |only if walking
talk Mayor Roz##130694
turnin Heavy Artillery##49755 |goto 57.63,66.49
accept There's Gold in Them There Fields##50157 |goto 57.63,66.49
accept Checking Out the Collapse##50158 |goto 57.63,66.49
step
talk Sergeant Calvin##130190
accept Survivors##52067 |goto 57.61,66.41
step
Jump into the water |goto 57.64,66.84 < 5 |only if walking
Follow the path |goto 56.88,67.25 < 5 |only if walking
Continue following the path |goto 56.57,67.35 < 7 |only if walking
Follow the road |goto 55.86,67.20 < 7 |only if walking
talk Farmer Max##137094
accept Raiders of the Lost Crop##51310 |goto 54.97,67.97
accept Grain Drain##51314 |goto 54.97,67.97
stickystart "Kill_Orc_Raiders"
step
click Sack of Grain+
|tip They look like tan bags with yellow grain in them on the ground around this area.
collect 8 Sack of Grain##155878 |q 51314/1 |goto 54.54,67.07
step
label "Kill_Orc_Raiders"
kill 6 Orc Raider##137104 |q 51310/1 |goto 54.54,67.07
step
talk Farmer Max##137094
turnin Raiders of the Lost Crop##51310 |goto 54.97,67.97
turnin Grain Drain##51314 |goto 54.97,67.97
step
Follow the road |goto 54.67,68.43 < 7 |only if walking
Continue following the road |goto 53.93,68.17 < 7 |only if walking
Follow the path |goto 52.46,68.18 < 7 |only if walking
Follow the path |goto 51.32,69.56 < 7 |only if walking
talk Houndmaster Archibald##131656
|tip He walks around this area.
accept Follow Your Nose##49886 |goto 51.02,70.19
accept Sic 'Em!##49960 |goto 51.02,70.19
step
talk Karla Fairweather##134963
fpath The Amber Waves |goto 50.75,70.21
step
Follow the path |goto 51.29,69.57 < 7 |only if walking
kill 5 Panicked Tunneler##131646 |q 49886/1 |goto 51.89,68.79
|tip Use the "Go Get Them!" ability on the clouds of brown dirt on the ground around this area.
|tip It appears as a button on the screen.
step
Follow the path |goto 52.56,68.19 < 7 |only if walking
Follow the path down |goto 53.28,67.51 < 7 |only if walking
Enter the cave |goto 53.28,66.74 < 5 |c |q 49960
step
Follow the path down |goto 52.68,67.52 < 3 |walk
Follow the path down |goto 52.33,67.93 < 5 |walk
Follow the path |goto 52.02,68.11 < 5 |walk
kill Foreman Razorgnarl##131496 |q 49960/1 |goto 51.44,67.97
|tip Inside the cave.
step
Follow the path up |goto 51.95,68.09 < 5 |walk
Follow the path up |goto 52.38,67.86 < 5 |walk
Follow the path |goto 52.68,67.52 < 5 |walk
Leave the cave |goto 53.28,66.62 < 5 |q 49960
step
Follow the path |goto 53.19,66.34 < 7 |only if walking
Follow the path down |goto 52.45,66.33 < 7 |c |q 50158
step
accept Weed Whacking##50133 |goto 51.58,65.96
|tip You will automatically accept this quest.
|only if level < 120
step
talk Farmer Burton##132118
turnin Checking Out the Collapse##50158 |goto 51.58,65.96
accept Gadgets and Gizmos Aplenty##50134 |goto 51.58,65.96
accept Stop Vining!##50135 |goto 51.58,65.96
stickystart "Collect_Harvester_Gizmos"
stickystart "Clear_The_Farmlands"
step
Follow the path |goto 51.26,66.10 < 7 |only if walking
Follow the path |goto 50.14,65.81 < 7 |only if walking
Continue following the path |goto 49.70,65.85 < 7 |only if walking
Follow the path down |goto 49.14,65.66 < 5 |walk
Follow the path down |goto 48.87,65.39 < 5 |walk
Follow the path |goto 48.25,65.48 < 5 |walk
Follow the path |goto 48.06,65.79 < 5 |walk
kill Vinemaster Smagh##132160 |q 50135/3 |goto 47.93,67.22
|tip Inside the cave.
step
Follow the path |goto 48.06,65.76 < 5 |walk
Follow the path down |goto 47.99,65.03 < 5 |walk
Follow the path |goto 47.76,64.20 < 5 |walk
Continue following the path |goto 47.45,63.80 < 5 |walk
Continue following the path |goto 47.09,64.00 < 5 |walk
Follow the path |goto 46.64,64.37 < 5 |walk
kill Vinemaster Orgsteen##132161 |q 50135/2 |goto 46.19,64.56
|tip She walks around this area inside the cave.
step
Follow the path |goto 46.64,64.38 < 5 |walk
Continue following the path |goto 47.11,64.04 < 5 |walk
Follow the path |goto 48.22,63.67 < 3 |walk
kill Vinemaster Guff##132162 |q 50135/1 |goto 48.35,62.92
|tip She walks around this area inside the cave.
step
label "Collect_Harvester_Gizmos"
Follow the path |goto 48.25,63.58 < 3 |walk
Follow the path up |goto 48.12,64.96 < 5 |walk
Follow the path up |goto 48.35,65.33 < 7 |walk
Follow the path up |goto 48.82,65.36 < 5 |walk
Follow the path |goto 49.16,65.56 < 5 |walk
clicknpc Malfunctioning Harvester##132123+
|tip They look like broken down mechanical scarecrows on the ground around this area.
Gather #10# Harvester Gizmos |q 50134/1 |goto 49.43,65.32
step
label "Clear_The_Farmlands"
Kill enemies around this area
click Bramble Pod+
|tip They look like green plant balls on the ground around this area.
Clear the Farmlands |q 50133/1 |goto 49.43,65.32
|only if havequest(50133) or completedq(50133)
step
Follow the path |goto 50.47,65.02 < 10 |only if walking
Follow the path |goto 51.18,66.09 < 7 |only if walking
talk Farmer Burton##132118
turnin Gadgets and Gizmos Aplenty##50134 |goto 51.58,65.96
turnin Stop Vining!##50135 |goto 51.58,65.96
accept Farming Stimulator##50136 |goto 51.58,65.96
step
clicknpc Repaired Farmhand##132297
Control the Repaired Farmhand |invehicle |goto 51.57,65.91 |q 50136
step
Follow the path |goto 51.26,66.16 < 7 |only if walking
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #30# Enemies |q 50136/1 |goto 49.31,65.03
step
Follow the path |goto 50.13,65.50 < 10 |only if walking
Follow the path |goto 51.16,66.08 < 7 |only if walking
Return to Farmer Burton |outvehicle |goto 51.57,65.91 |q 50136
|tip You will automatically stop controlling the Repaired Farmhand when you reach this location.
step
talk Farmer Burton##132118
turnin Farming Stimulator##50136 |goto 51.58,65.96
step
Follow the path |goto 51.85,66.64 < 7 |only if walking
Follow the path |goto 52.12,68.44 < 7 |only if walking
Follow the path |goto 51.32,69.58 < 7 |only if walking
talk Houndmaster Archibald##131656
|tip He walks around this area.
turnin Follow Your Nose##49886 |goto 51.02,70.18
turnin Sic 'Em!##49960 |goto 51.02,70.18
step
Follow the path |goto 51.44,70.16 < 5 |only if walking
Follow the path |goto 51.72,70.51 < 7 |only if walking
Follow the path up |goto 51.77,71.79 < 7 |only if walking
Follow the path |goto 51.43,72.24 < 7 |only if walking
Follow the path up |goto 50.76,72.49 < 7 |only if walking
Follow the path up |goto 50.56,72.97 < 7 |only if walking
Enter the building |goto 50.74,73.19 < 3 |walk
Run up the stairs |goto 50.87,73.30 < 3 |walk
Run up the stairs |goto 51.00,73.28 < 3 |walk
Leave the building |goto 51.00,73.07 < 3 |c |q 50157
step
Follow the path |goto 50.84,73.00 < 5 |only if walking
talk Farmer Goldfield##129808
turnin There's Gold in Them There Fields##50157 |goto 50.76,73.14
accept A Pocketful of Shells##50041 |goto 50.76,73.14
stickystart "Collect_Salvaged_Azerite_Ammunition"
step
Follow the path |goto 50.04,73.64 < 7 |only if walking
click Dirty Pocketwatch
accept A Reason to Stay##50065 |goto 49.85,73.53
step
Follow the path |goto 50.01,72.96 < 7 |only if walking
Follow the path |goto 50.15,71.66 < 7 |only if walking
click Battered Sword
Find the Keepsake |q 50065/1 |goto 50.04,71.44 |count 2
step
Follow the path |goto 49.97,71.12 < 7 |only if walking
Follow the path up |goto 49.43,70.83 < 7 |only if walking
Follow the path |goto 49.18,70.82 < 5 |only if walking
Follow the path |goto 49.11,70.94 < 5 |only if walking
Enter the building |goto 48.92,71.08 < 3 |walk
click Tarnished Locket
|tip Inside the building.
Find the Keepsake |q 50065/1 |goto 48.88,71.23 |count 3
step
label "Collect_Salvaged_Azerite_Ammunition"
Leave the building |goto 48.92,71.08 < 3 |walk
Follow the path |goto 49.08,70.99 < 5 |only if walking
Kill enemies around this area
|tip Click their corpses.
collect 20 Salvaged Azerite Ammunition##156583 |q 50041/1 |goto 50.07,72.22
step
Enter the building |goto 50.74,73.19 < 3 |walk
Run up the stairs |goto 50.87,73.30 < 3 |walk
Run up the stairs |goto 51.00,73.28 < 3 |walk
Leave the building |goto 51.00,73.07 < 3 |c |q 50041
step
Follow the path |goto 50.84,73.00 < 5 |only if walking
talk Farmer Goldfield##129808
turnin A Pocketful of Shells##50041 |goto 50.76,73.14
turnin A Reason to Stay##50065 |goto 50.76,73.14
accept Goldfield's War##50069 |goto 50.76,73.14
step
click Spare Rifles
Pick Up a Spare Rifle |invehicle |goto 50.75,73.00 |q 50069
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Invaders |q 50069/1 |goto 50.72,73.00
step
kill Brug Housesmash##131980 |q 50069/2 |goto 50.72,73.00
|tip Use the abilities on your action bar.
step
talk Farmer Goldfield##129808
turnin Goldfield's War##50069 |goto 50.76,73.15
accept Golden Fields Forever##50088 |goto 50.76,73.15
step
Jump down here |goto 50.79,73.43 < 3 |only if walking
Follow the path |goto 51.00,74.59 < 7 |only if walking
Follow the path |goto 51.25,75.05 < 7 |only if walking
click River Carnations
collect River Carnations##160558 |q 50088/1 |goto 51.60,75.16
step
Follow the path |goto 51.55,76.06 < 7 |only if walking
talk Farmer Goldfield##129808
turnin Golden Fields Forever##50088 |goto 50.67,77.02
accept Deal's Off##50622 |goto 50.67,77.02
step
talk Mayor Roz##134752
|tip Inside the building.
turnin Deal's Off##50622 |goto 58.64,70.43
accept Look Out!##50354 |goto 58.64,70.43
step
Leave the building |goto 58.76,70.45 < 3 |walk
Follow the path |goto 51.31,69.55 < 7 |only if walking
Follow the road |goto 52.29,67.53 < 7 |only if walking
Continue following the road |goto 51.74,65.74 < 7 |only if walking
Continue following the road |goto 51.18,63.50 < 7 |only if walking
Continue following the road |goto 50.98,61.97 < 7 |only if walking
Continue following the road |goto 49.63,60.98 < 7 |only if walking
Continue following the road |goto 48.64,60.64 < 7 |only if walking
Follow the path |goto 47.30,61.75 < 7 |only if walking
click Wanted Poster
accept WANTED: Thundersnout##49730 |goto 46.08,61.85
step
Follow the path |goto 46.10,62.49 < 7 |only if walking
Follow the path up |goto 45.56,62.46 < 7 |only if walking
Follow the path |goto 45.30,62.74 < 7 |only if walking
Follow the path |goto 45.23,64.15 < 5 |only if walking
Run up the stairs |goto 45.13,64.30 < 5 |only if walking
Enter the building |goto 45.01,64.46 < 3 |walk
talk Sergeant Calvin##133953
|tip Inside the building.
accept Boaring Company##50353 |goto 44.73,64.61
stickystart "Accept_Anger_In_A_Bottle"
stickystart "Kill_Briarback_Lookouts"
step
Follow the path up |goto 44.13,64.98 < 7 |only if walking
Follow the path up |goto 43.55,66.05 < 7 |only if walking
Continue up the path |goto 42.60,66.68 < 7 |only if walking
Follow the path up |goto 42.47,67.53 < 7 |only if walking
Continue up the path |goto 42.74,68.91 < 7 |only if walking
Continue up the path |goto 42.92,69.32 < 7 |only if walking
Follow the path down |goto 43.27,70.62 < 7 |only if walking
click Brambleguard Totem
accept Totems, Totems, Totems!##50111 |goto 44.04,72.44
step
click Brambleguard Totem
Destroy the Northern Totem |q 50111/1 |goto 44.04,72.44
step
label "Accept_Anger_In_A_Bottle"
Kill enemies around this area
accept Anger in a Bottle##50367 |goto 43.90,72.05
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Foul_Smelling_Samples"
step
Follow the path up |goto 43.50,72.47 < 7 |only if walking
Follow the path up |goto 42.70,73.51 < 5 |only if walking
Follow the path |goto 42.34,73.75 < 7 |only if walking
Follow the path |goto 41.85,73.54 < 7 |only if walking
Enter the cave |goto 41.02,72.71 < 5 |walk
kill Thundersnout##135293
|tip She walks around this area inside the cave.
|tip You may need help with this.
collect Thundersnout's Snout##158300 |q 49730/1 |goto 40.40,71.27
stickystart "Rescue_Farmers"
step
Leave the cave |goto 40.97,72.62 < 5 |walk
Follow the path |goto 41.82,73.46 < 7 |only if walking
Follow the path down |goto 42.13,73.70 < 7 |only if walking
Follow the path down |goto 42.54,73.66 < 7 |only if walking
Follow the path |goto 43.25,72.80 < 7 |only if walking
Continue following the path |goto 43.94,72.08 < 7 |only if walking
Follow the path down |goto 44.87,72.06 < 7 |only if walking
Follow the path |goto 45.27,72.22 < 7 |only if walking
Follow the path |goto 45.93,71.48 < 7 |only if walking
Follow the path |goto 46.11,71.71 < 7 |only if walking
click Earthen Pillar
Rescue Farmer Deal |q 50353/2 |goto 46.17,72.04
step
Follow the path |goto 46.35,71.92 < 7 |only if walking
click Brambleguard Totem
Destroy the Central Totem |q 50111/3 |goto 46.41,72.10
step
Follow the path down |goto 45.88,70.90 < 7 |only if walking
Follow the path down |goto 46.03,69.86 < 7 |only if walking
Follow the path down |goto 46.43,69.91 < 7 |only if walking
click Brambleguard Totem
Destroy the Eastern Totem |q 50111/2 |goto 47.00,70.22
step
Follow the path up |goto 46.55,69.99 < 7 |only if walking
Continue up the path |goto 46.15,69.81 < 7 |only if walking
Continue up the path |goto 45.89,70.16 < 7 |only if walking
Follow the path |goto 45.88,70.90 < 7 |only if walking
Follow the path up |goto 45.67,72.18 < 7 |only if walking
Follow the path up |goto 45.93,72.90 < 7 |only if walking
click Brambleguard Totem
Destroy the Southern Totem |q 50111/4 |goto 46.07,74.50
step
label "Rescue_Farmers"
click Earthen Pillar+
|tip They look like wooden spikes with squirming humans tied to them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
|tip They can also be in the caves around this area.
Rescue #7# Farmers |q 50353/1 |goto 45.94,72.63
step
label "Collect_Foul_Smelling_Samples"
Kill Briarback enemies around this area
|tip Hulking Kraulguards will also drop the quest item.
collect 10 Foul-Smelling Sample##157850 |q 50367/1 |goto 45.94,72.63
step
label "Kill_Briarback_Lookouts"
use the Sedative Quill##156516
|tip Use it on Briarback Lookouts when they begin casting their "Sound the Alarm" ability.
|tip This will prevent them from calling for help from nearby enemies.
kill 6 Briarback Lookout##130073 |q 50354/1 |goto 45.94,72.63
step
Follow the path up |goto 45.94,72.83 < 7 |only if walking
Follow the path |goto 45.98,73.68 < 7 |only if walking
Follow the path up |goto 46.09,74.20 < 7 |only if walking
Follow the path up |goto 46.39,74.39 < 7 |only if walking
talk Sergeant Calvin##133953
turnin Look Out!##50354 |goto 46.66,73.83
turnin Boaring Company##50353 |goto 46.66,73.83
turnin Anger in a Bottle##50367 |goto 46.66,73.83
turnin Totems, Totems, Totems!##50111 |goto 46.66,73.83
accept War Pigs##50363 |goto 46.66,73.83
accept Run For the Hills##50365 |goto 46.66,73.83
stickystart "Capture_Grazing_Battle_Piglets"
step
Follow the path up |goto 46.53,74.64 < 7 |only if walking
Follow the path |goto 46.14,75.44 < 7 |only if walking
Follow the path up |goto 45.93,76.57 < 7 |only if walking
click Empty Crate
accept Steal Them Back##50340 |goto 46.31,77.01
step
Enter the cave |goto 46.28,77.07 < 3 |walk
Follow the path up |goto 46.59,77.07 < 3 |walk
Follow the path up |goto 46.92,76.93 < 5 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 47.40,77.05 |count 1
step
Follow the path down |goto 47.12,76.95 < 3 |walk
Follow the path down |goto 46.79,76.97 < 5 |walk
Follow the path |goto 46.46,77.10 < 5 |walk
Leave the cave |goto 46.26,77.08 < 3 |walk
Follow the path |goto 45.72,76.79 < 7 |only if walking
Follow the path |goto 45.12,77.03 < 7 |only if walking
Enter the cave |goto 44.87,77.32 < 5 |walk
Follow the path |goto 44.87,78.06 < 5 |walk
Follow the path |goto 44.73,78.51 < 5 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 44.51,78.69 |count 2
step
click Quill Venom
|tip Inside the cave.
Destroy the Central Stockpile |q 50365/2 |goto 44.64,78.93
step
Follow the path |goto 44.84,78.19 < 5 |walk
Leave the cave |goto 44.86,77.30 < 5 |walk
Follow the path |goto 45.12,77.03 < 7 |only if walking
Follow the path up |goto 45.67,76.89 < 5 |only if walking
Follow the path up |goto 45.81,77.04 < 7 |only if walking
Follow the path up |goto 45.72,77.64 < 7 |c |q 50340
step
Enter the cave |goto 46.29,78.08 < 5 |walk
Follow the path |goto 46.58,78.62 < 5 |walk
Follow the path |goto 46.64,79.17 < 5 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 46.55,79.50 |count 3
step
click Preserved Bramble Spores
|tip Inside the cave.
Destroy the Eastern Stockpile |q 50365/1 |goto 46.82,79.60
step
Follow the path |goto 46.64,78.86 < 5 |walk
Leave the cave |goto 46.28,78.05 < 5 |walk
Follow the path down |goto 46.10,77.78 < 7 |only if walking
Follow the path |goto 45.72,77.81 < 7 |only if walking
Enter the cave |goto 45.64,78.20 < 5 |walk
Follow the path |goto 46.02,80.18 < 5 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 46.44,80.16 |count 4
step
Follow the path |goto 46.03,80.21 < 5 |walk
Leave the cave |goto 45.63,78.23 < 5 |walk
Follow the path up |goto 45.36,78.08 < 7 |only if walking
Follow the path down |goto 44.62,78.48 < 7 |only if walking
Follow the path up |goto 44.10,78.36 < 7 |only if walking
Enter the cave |goto 43.63,78.49 < 5 |walk
Follow the path |goto 43.20,78.89 < 5 |walk
Follow the path |goto 42.88,78.95 < 5 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 42.71,78.81 |count 5
step
click Giant-Sized Totem
|tip Inside the cave.
Destroy the Western Stockpile |q 50365/3 |goto 42.48,79.21
step
Follow the path |goto 43.18,78.90 < 5 |walk
Leave the cave |goto 43.64,78.48 < 5 |c |q 50363
step
label "Capture_Grazing_Battle_Piglets"
Follow the path up |goto 44.07,78.36 < 7 |only if walking
Follow the path down |goto 44.63,78.44 < 7 |only if walking
clicknpc Grazing Battle-Piglet##134014+
|tip They look like small pigs on the ground around this area.
Kill enemies around this area
clicknpc Bewildered Battle-Piglet##139937+
|tip They look like small pigs that sometimes appear after killing enemies around this area.
Capture #8# Grazing Battle-Piglets |q 50363/1 |goto 45.23,77.97
step
Follow the path down |goto 46.04,75.50 < 7 |only if walking
Follow the path up |goto 46.52,74.59 < 7 |only if walking
talk Sergeant Calvin##133953
turnin War Pigs##50363 |goto 46.66,73.83
turnin Run For the Hills##50365 |goto 46.66,73.83
step
Watch the dialogue
talk Sergeant Calvin##133953
turnin Steal Them Back##50340 |goto 46.66,73.83
accept Terror of the Kraul##50368 |goto 46.66,73.83
step
Follow the path down |goto 46.41,74.40 < 7 |only if walking
Enter the cave |goto Stormsong Valley/3 89.62,23.53 < 5 |walk |notravel
Follow the path |goto Stormsong Valley/3 75.95,46.46 < 5 |walk |notravel
Follow the path up |goto Stormsong Valley/3 70.37,56.27 < 5 |walk
Follow the path up |goto Stormsong Valley/3 63.54,65.30 < 5 |walk
Follow the path up |goto Stormsong Valley/3 54.43,70.08 < 5 |walk
Follow the path up |goto Stormsong Valley/3 48.53,66.50 < 5 |walk
Follow the path |goto Stormsong Valley/3 41.91,52.69 < 5 |walk
use the Flask of Enraging Vapors##155824
Become Enraged |havebuff 236310 |goto Stormsong Valley/3 35.22,46.52 |q 50368
step
kill Bramblefist the Maddened##129847 |q 50368/1 |goto Stormsong Valley/3 17.78,32.32
|tip Inside the cave.
step
Follow the path up |goto 28.15,39.51 < 5 |walk
Follow the path |goto 40.91,51.61 < 5 |walk
Follow the path down |goto 45.57,60.14 < 5 |walk
Follow the path down |goto 50.39,68.23 < 5 |walk
Follow the path down |goto 55.48,69.25 < 5 |walk
Follow the path |goto 64.85,64.90 < 5 |walk
talk Sergeant Calvin##133953
|tip Inside the cave.
turnin Terror of the Kraul##50368 |goto 71.25,52.16
accept A Question of Quillpower##50640 |goto 71.25,52.16
step
clicknpc Ornery Battleboar##134542
|tip Inside the cave.
Escape the Kraul |q 50640/1 |goto 71.83,53.01
step
Ride the Battleboar to Safety |goto Stormsong Valley/0 48.59,70.04 < 7 |c |q 50640 |notravel
step
Follow the path |goto 48.53,69.60 < 5 |only if walking
Follow the path down |goto 47.87,68.73 < 7 |only if walking
Follow the path down |goto 46.82,67.97 < 7 |only if walking
Follow the path |goto 46.12,66.77 < 7 |only if walking
Follow the path down |goto 45.38,62.96 < 7 |only if walking
Follow the path down |goto 45.26,62.13 < 7 |only if walking
Cross the bridge |goto 43.97,59.20 < 7 |only if walking
Follow the path |goto 43.49,58.32 < 7 |only if walking
Run up the stairs |goto 43.07,57.58 < 5 |only if walking
Follow the path |goto 42.89,57.46 < 5 |only if walking
talk Malorian Tailwind##134832
fpath Deadwash |goto 42.72,57.39
step
Run down the stairs |goto 42.70,57.17 < 5 |only if walking
talk Leo Shealds##134720
accept Break 'Em Out##50810 |goto 42.97,56.60
accept Iron Low Tide##50802 |goto 42.97,56.60
accept Two Faced Pirate Scum##50674 |goto 42.97,56.60
step
Follow the path up |goto 42.66,56.89 < 7 |only if walking
Follow the path |goto 42.11,57.68 < 7 |only if walking
Follow the path |goto 41.64,57.74 < 7 |only if walking
kill Two Faced Tom##138792 |q 50674/1 |goto 41.09,56.81
|tip He walks around this area.
step
Follow the path down |goto 41.62,57.71 < 7 |only if walking
Follow the path down |goto 42.06,57.78 < 7 |only if walking
talk Leo Shealds##134720
turnin Two Faced Pirate Scum##50674 |goto 42.97,56.60
stickystart "Slay_Irontide_Pirates"
step
Follow the path |goto 43.26,56.19 < 7 |only if walking
Run down the stairs |goto 43.51,56.68 < 5 |only if walking
Run down the stairs |goto 43.72,56.93 < 5 |only if walking
Follow the path |goto 43.91,56.78 < 5 |only if walking
click Ball and Chain+
|tip They look like silver balls chained to the ankles of humans on the ground around this area.
Break #10# Chains |q 50810/1 |goto 44.21,57.65
step
label "Slay_Irontide_Pirates"
Kill Irontide enemies around this area
Slay #10# Irontide Pirates |q 50802/1 |goto 44.21,57.65
step
Follow the path up |goto 44.17,57.55 < 7 |only if walking
Run up the stairs |goto 43.87,56.73 < 5 |only if walking
Run up the stairs |goto 43.64,56.92 < 5 |only if walking
Follow the path |goto 43.47,56.68 < 5 |only if walking
talk Leo Shealds##134720
turnin Break 'Em Out##50810 |goto 42.97,56.60
turnin Iron Low Tide##50802 |goto 42.97,56.60
accept Treasure Hunting##50675 |goto 42.97,56.60
step
Follow the path |goto 43.12,55.32 < 7 |only if walking
Run up the stairs |goto 42.94,54.37 < 5 |only if walking
Enter the building |goto 43.05,54.26 < 3 |walk
talk Tess Tomalin##134969
|tip Inside the building.
home Deadwash |goto 43.28,54.23 |q 50797 |future
step
Leave the building |goto 43.34,54.16 < 3 |walk
Follow the path |goto 43.58,54.27 < 7 |only if walking
Follow the path |goto 43.96,55.04 < 5 |only if walking
Follow the path |goto 44.20,55.31 < 5 |only if walking
talk Nedly Grinner##134702
turnin Treasure Hunting##50675 |goto 44.47,55.53
accept Anchors Aweigh Too Much##50704 |goto 44.47,55.53
accept Not On Our Payroll##50691 |goto 44.47,55.53
step
_Next to you:_
talk Moxie Lockspinner
accept Fun With Magnets##50696
accept Bomb Beats Rock##50697
stickystart "Find_Lost_Coins"
stickystart "Collect_Old_Ship_Parts"
stickystart "Kill_Restless_Stones"
step
Jump down here |goto 44.77,55.33 < 5 |only if walking
Follow the path |goto 47.22,55.91 < 10 |only if walking
click Moxie's Bombs
Watch the dialogue
Open the Western Cave |q 50697/2 |goto 48.73,56.56
step
Follow the path |goto 48.03,56.94 < 7 |only if walking
Continue following the path |goto 48.08,57.91 < 7 |only if walking
Continue following the path |goto 48.79,59.11 < 7 |only if walking
Continue following the path |goto 49.34,59.48 < 7 |only if walking
Continue following the path |goto 49.93,59.18 < 7 |only if walking
Follow the path down |goto 50.29,58.84 < 7 |only if walking
click Moxie's Bombs
Open the Eastern Cave |q 50697/1 |goto 50.87,58.19
step
_Next to you:_
talk Moxie Lockspinner
turnin Bomb Beats Rock##50697
step
Enter the cave |goto 50.86,58.09 < 3 |walk
Follow the path |goto 50.78,57.51 < 5 |walk
click Large Pile of Gold
|tip Inside the cave.
accept Share the Wealth##51140 |goto 50.86,56.74
step
label "Find_Lost_Coins"
Follow the path |goto 50.79,57.34 < 5 |walk
Leave the cave |goto 50.89,58.20 < 5 |walk
use the Magnetized Metal Collector##158226
|tip Use it next to the small glints of white light on the ground around this area.
Find #60# Lost Coins |q 50696/1	|goto 51.26,59.78
You can find more around:
[52.33,56.15]
[47.56,57.31]
[49.92,52.93]
[46.73,53.23]
step
_Next to you:_
talk Moxie Lockspinner
turnin Fun With Magnets##50696
step
label "Collect_Old_Ship_Parts"
click Old Ship Part+
|tip They look like various-shaped silver metal objects on the ground around this area.
collect 12 Old Ship Parts##158724 |q 50704/1 |goto 51.11,59.20
step
label "Kill_Restless_Stones"
kill 10 Restless Stone##134966 |q 50691/1 |goto 51.11,59.20
step
Follow the path up |goto 51.70,53.82 < 10 |only if walking
Follow the road |goto 52.39,52.94 < 7 |only if walking
Follow the road |goto 53.87,52.89 < 7 |only if walking
Continue following the road |goto 54.44,52.88 < 7 |only if walking
Continue following the road |goto 55.62,54.18 < 7 |only if walking
Continue following the road |goto 56.33,54.22 < 7 |only if walking
Follow the path |goto 57.31,53.72 < 7 |only if walking
Follow the path |goto 57.87,54.63 < 7 |only if walking
talk Patrick Eckhart##135682
turnin Survivors##52067 |goto 57.85,55.31
accept Smells like Trouble##50908 |goto 57.85,55.31
accept Dangerous Game##50910 |goto 57.85,55.31
step
talk Lea Martinel##135874
accept Never Outgunned##50909 |goto 57.95,55.58
step
click Wanted: Yarsel'ghun
accept WANTED: Yarsel'ghun##51217 |goto 57.84,55.83
stickystart "Collect_Weapons"
stickystart "Kill_Forsaken_Keenblades"
step
Follow the path |goto 58.21,54.72 < 7 |only if walking
Follow the path down |goto 58.87,54.06 < 7 |only if walking
Follow the path |goto 59.78,54.41 < 7 |only if walking
click Cannon
accept Bring out the Big Gun##51159 |goto 60.17,54.61
step
Follow the path up |goto 59.92,54.71 < 7 |only if walking
Follow the path |goto 59.09,55.30 < 7 |only if walking
Follow the path |goto 58.47,55.10 < 7 |only if walking
Follow the path |goto 58.15,55.06 < 7 |only if walking
Deliver the Cannon |q 51159/1 |goto 57.92,55.41
step
talk Lea Martinel##135874
turnin Bring out the Big Gun##51159 |goto 57.95,55.57
step
Follow the path |goto 58.19,54.79 < 7 |only if walking
Continue following the path |goto 58.84,53.80 < 10 |only if walking
Continue following the path |goto 59.30,52.99 < 10 |only if walking
Continue following the path |goto 59.89,52.33 < 10 |only if walking
Follow the path up |goto 60.27,50.69 < 7 |only if walking
Follow the path up |goto 59.41,50.11 < 7 |only if walking
Follow the path |goto 59.21,49.68 < 7 |only if walking
Enter the cave |goto 59.18,49.00 < 5 |walk
kill Durmok Darkmane##135883 |q 50908/2 |goto 59.03,48.53
|tip Inside the cave.
step
Leave the cave |goto 59.18,48.98 < 5 |walk
Follow the path |goto 58.74,49.87 < 7 |only if walking
Follow the path down |goto 58.05,50.10 < 7 |only if walking
Follow the path up |goto 57.08,49.73 < 7 |only if walking
Follow the path up |goto 56.33,48.61 < 7 |only if walking
Follow the path up |goto 56.32,47.92 < 7 |only if walking
Enter the cave |goto 56.63,47.32 < 5 |walk
kill Ogarth Axefall##135882 |q 50908/1 |goto 56.81,46.88
|tip Inside the cave.
step
Leave the cave |goto 56.64,47.30 < 5 |walk
Follow the path down |goto 56.29,47.93 < 7 |only if walking
Follow the path |goto 56.05,48.07 < 7 |only if walking
Follow the path up |goto 55.61,47.87 < 7 |only if walking
Follow the path up |goto 56.52,46.31 < 7 |only if walking
Continue up the path |goto 56.81,45.23 < 7 |only if walking
Continue up the path |goto 56.75,44.32 < 7 |only if walking
Continue up the path |goto 56.07,44.17 < 10 |only if walking
Follow the path |goto 55.45,42.70 < 10 |only if walking
Follow the path down |goto 55.32,41.57 < 10 |only if walking
kill Yarsel'ghun##136942 |q 51217/1 |goto 55.72,39.95
|tip You may need help with this.
step
label "Collect_Weapons"
Follow the path up |goto 55.37,40.87 < 10 |only if walking
Follow the path |goto 55.34,42.03 < 10 |only if walking
Follow the path down |goto 55.48,43.30 < 10 |only if walking
Follow the path down |goto 55.78,44.14 < 10 |only if walking
Continue down the path |goto 56.88,44.68 < 7 |only if walking
Continue down the path |goto 56.80,45.31 < 7 |only if walking
Continue down the path |goto 56.53,46.27 < 7 |only if walking
Continue down the path |goto 55.69,47.62 < 7 |only if walking
Continue down the path |goto 56.03,48.24 < 7 |only if walking
Continue down the path |goto 56.63,49.08 < 10 |only if walking
Follow the path up |goto 57.13,49.83 < 7 |only if walking
Follow the path |goto 57.97,50.06 < 7 |only if walking
Follow the path down |goto 59.00,49.84 < 7 |only if walking
Follow the path down |goto 59.91,50.21 < 7 |only if walking
kill Horde Axethrower##136584+
click Rebel Weaponry+
|tip They look like various weapons on the ground around this area.
Collect #15# Weapons |q 50909/1
step
label "Kill_Forsaken_Keenblades"
kill 8 Forsaken Keenblade##136439 |q 50910/1
step
Follow the path |goto 59.19,53.11 < 15 |only if walking
Follow the path |goto 58.62,53.82 < 10 |only if walking
Follow the path |goto 58.23,54.73 < 7 |only if walking
talk Patrick Eckhart##135682
turnin Smells like Trouble##50908 |goto 57.85,55.32
turnin Dangerous Game##50910 |goto 57.85,55.32
step
talk Lea Martinel##135874
turnin Never Outgunned##50909 |goto 57.95,55.57
turnin WANTED: Yarsel'ghun##51217 |goto 57.95,55.57
step
talk Patrick Eckhart##135682
accept Worse Than It Looks##52065 |goto 57.85,55.32
step
Leave the building |goto 43.05,54.26 < 3 |walk
Follow the path |goto 42.93,54.39 < 5 |only if walking
Follow the path |goto 43.12,55.34 < 7 |only if walking
talk Leo Shealds##134720
turnin Share the Wealth##51140 |goto 42.97,56.60
step
Follow the path |goto 43.52,55.98 < 7 |only if walking
Follow the path |goto 44.02,56.17 < 5 |only if walking
Continue following the path |goto 44.09,55.58 < 5 |only if walking
Continue following the path |goto 44.29,55.37 < 5 |only if walking
talk Nedly Grinner##134702
turnin Not On Our Payroll##50691 |goto 44.47,55.53
turnin Anchors Aweigh Too Much##50704 |goto 44.47,55.53
accept Don't Turtle##50741 |goto 44.47,55.53
step
Follow the path |goto 44.45,55.07 < 5 |only if walking
Enter the building |goto 44.28,54.72 < 3 |walk
Leave the building |goto 44.30,54.06 < 3 |walk
talk Grettle Haribull##135367
accept A Horrible Place##50814 |goto 44.20,54.10
step
Follow the path |goto 43.32,53.79 < 7 |only if walking
talk Moxie Lockspinner##135067
Ask her _"What's the plan?"_
Speak to Moxie |q 50741/1 |goto 42.68,54.31
step
talk Maokka##135033
Ask him _"That box?"_
Tell him _"I'll get the meat."_
Speak to Maokka |q 50741/2 |goto 42.54,54.36
step
talk Moxie Lockspinner##135067
turnin Don't Turtle##50741 |goto 42.68,54.31
accept Earl-E Bot Gets the Worm##50753 |goto 42.68,54.31
stickystart "Collect_Wetshell_Turtles"
step
Follow the path |goto 41.53,53.46 < 15 |only if walking
use the Remote Earl-E Designator##158635
|tip Use it on the clouds of brown dirt on the ground around this area.
kill Mud Feeder##135135+
collect 8 Mud Worm Meat##158636 |q 50753/1 |goto 40.40,53.68
step
label "Collect_Wetshell_Turtles"
clicknpc Wetshell Turtle##135407+
|tip They look like tiny turtles on the ground around this area.
Collect #6# Wetshell Turtles |q 50814/1 |goto 40.40,53.68
step
Follow the path up |goto 42.28,53.95 < 7 |only if walking
talk Maokka##135033
turnin Earl-E Bot Gets the Worm##50753 |goto 42.54,54.36
accept A Turtle's Invitation##50797 |goto 42.54,54.36
step
talk Moxie Lockspinner##135067
accept No Bot Left Behind##50774 |goto 42.68,54.31
step
Follow the path |goto 43.20,53.86 < 7 |only if walking
talk Grettle Haribull##135367
turnin A Horrible Place##50814 |goto 44.20,54.10
step
Jump down here |goto 43.22,53.76 < 7 |only if walking
kill Mud Burrow Guardian##135236 |q 50774/1 |goto 39.50,51.48
Save Earl-E |q 50774/2 |goto 39.50,51.48
step
Follow the path |goto 40.80,52.54 < 15 |only if walking
Follow the path up |goto 42.42,54.06 < 7 |only if walking
talk Moxie Lockspinner##135067
turnin No Bot Left Behind##50774 |goto 42.67,54.31
accept Cave Commotion##50793 |goto 42.67,54.31
step
Follow the path |goto 42.02,53.86 < 7 |only if walking
talk Nedly Grinner##135330
turnin Cave Commotion##50793 |goto 41.12,54.09
accept I Want It All Now##50803 |goto 41.12,54.09
step
_Next to you:_
talk Moxie Lockspinner##134882
accept We're Not Friends##50955
accept The Proof of Piracy##52132
stickystart "Destroy_Irontide_Rum_Stashes"
stickystart "Collect_Irontide_Coin_Bags"
step
Follow the path |goto 40.62,53.57 < 7 |only if walking
Continue following the path |goto 38.94,54.83 < 15 |only if walking
Continue following the path |goto 37.40,56.61 < 7 |only if walking
kill Captain Calico McGee##138169 |q 50955/1 |goto 36.73,56.86
step
_Next to you:_
talk Moxie Lockspinner
turnin We're Not Friends##50955
step
click Irontide Loot
accept All Laid Out For Us##50742 |goto 35.87,56.10
step
talk Big Find Balor##138934
Tell him _"I need your help."_
Get Big Find Balor |q 50742/3 |goto 35.22,54.74
step
label "Destroy_Irontide_Rum_Stashes"
Destroy #6# Irontide Rum Stashes |q 52132/1 |goto 36.56,54.89
|tip They look like brown wooden barrels on the ground around this area.
|tip Use the "Barrel Buster Bomb" ability on them.
|tip It appears as a button on the screen.
step
_Next to you:_
talk Moxie Lockspinner
turnin The Proof of Piracy##52132
step
Follow the path up |goto 36.56,54.89 < 15 |only if walking
Follow the path |goto 37.11,54.58 < 7 |only if walking
talk Toothless Eddard##135782
Tell him _"I need your help."_
Get Toothless Eddard |q 50742/1 |goto 37.81,54.03
step
Follow the path |goto 37.79,55.21 < 10 |only if walking
talk Chopper Darry##138928
Tell her _"I need your help."_
Get Chopper Darry |q 50742/2 |goto 38.80,58.54
step
Follow the path |goto 37.10,56.48 < 7 |only if walking
click Irontide Loot
Take the Loot |q 50742/4 |goto 35.87,56.09
step
label "Collect_Irontide_Coin_Bags"
Follow the path |goto 37.16,56.47 < 7 |only if walking
Kill Irontide enemies around this area
click Irontide Coin Bag+
|tip They look like grey sacks on the ground around this area.
collect 12 Irontide Coin Bag##160481 |q 50803/1 |goto 38.75,57.08
step
Follow the path |goto 40.54,53.62 < 7 |only if walking
talk Nedly Grinner##135330
turnin I Want It All Now##50803 |goto 41.12,54.08
step
Follow the path |goto 41.90,53.80 < 7 |only if walking
Follow the path up |goto 42.43,54.06 < 7 |only if walking
Follow the path |goto 42.77,54.46 < 7 |only if walking
Continue following the path |goto 43.10,55.29 < 7 |only if walking
talk Leo Shealds##134720
turnin All Laid Out For Us##50742 |goto 42.97,56.60
accept Helping Out, Somewhere Else##52068 |goto 42.97,56.60
step
click Small Coin Bag
accept Walking-Around Money##50956 |goto 43.02,56.53 |instant
step
Follow the path |goto 43.26,55.27 < 7 |only if walking
Follow the path |goto 43.56,54.18 < 7 |only if walking
Cross the bridge |goto 43.57,53.29 < 7 |only if walking
Follow the road |goto 43.40,52.21 < 7 |only if walking
Follow the road |goto 43.00,50.65 < 7 |only if walking
Continue following the road |goto 44.77,49.96 < 7 |only if walking
Continue following the road |goto 46.76,50.55 < 7 |only if walking
Follow the path up |goto 48.17,50.14 < 7 |only if walking
Follow the path up |goto 48.38,49.63 < 7 |only if walking
Follow the path |goto 47.29,48.29 < 7 |only if walking
talk Felecia Gladstone##138735
turnin Worse Than It Looks##52065 |goto 46.88,47.68
accept Having a Blast##51711 |goto 46.88,47.68
accept Grizzled##51752 |goto 46.88,47.68
step
click Wanted: War Gore
accept WANTED: War Gore##52876 |goto 46.74,48.13
step
Follow the path |goto 47.48,47.18 < 7 |only if walking
Follow the path up |goto 48.11,46.02 < 7 |only if walking
Follow the path up |goto 48.16,45.34 < 7 |only if walking
Continue up the path |goto 47.70,43.48 < 7 |only if walking
Follow the path |goto 47.95,42.33 < 7 |only if walking
Follow the path |goto 48.08,40.24 < 7 |only if walking
Follow the path |goto 47.88,39.35 < 7 |only if walking
click Bundle of Dynamite
collect Bundle of Dynamite##160738 |q 51711/1 |goto 47.65,38.36
step
Follow the path |goto 47.71,36.76 < 10 |only if walking
Follow the path up |goto 47.37,35.73 < 7 |only if walking
Follow the path up |goto 47.07,35.30 < 7 |only if walking
Continue up the path |goto 46.76,35.10 < 5 |only if walking
Follow the path |goto 46.93,34.69 < 5 |only if walking
Follow the path |goto 47.48,34.56 < 7 |only if walking
Follow the path down |goto 48.46,34.62 < 7 |only if walking
Follow the path |goto 48.79,33.48 < 5 |only if walking
Enter the cave |goto 48.46,33.19 < 5 |c |q 52876
step
Follow the path |goto 48.09,33.60 < 5 |walk
kill War Gore##141984 |q 52876/1 |goto 47.37,33.97
|tip Inside the cave.
|tip You may need help with this.
step
Follow the path |goto 48.03,33.66 < 5 |walk
Leave the cave |goto 48.43,33.20 < 5 |c |q 51752
stickystart "Kill_Mine_Technicians"
stickystart "Slay_Warfang_Miners"
step
Follow the path up |goto 48.79,33.33 < 5 |only if walking
Follow the path |goto 48.43,34.68 < 7 |only if walking
Follow the path |goto 47.48,34.59 < 7 |only if walking
Follow the path down |goto 47.00,34.68 < 7 |only if walking
Jump down here |goto 46.75,35.66 < 5 |only if walking
Enter the mine |goto 46.62,36.20 < 5 |walk
Follow the path |goto Stormsong Valley/4 77.26,42.13 < 5 |walk
talk Holger Nash##138924
|tip Inside the mine.
accept Get Out of Here##51726 |goto Stormsong Valley/4 66.33,38.48
stickystart "Free_Captured_Miners"
step
Follow the path |goto 60.06,32.51 < 5 |walk
Follow the path down |goto 55.09,24.27 < 5 |walk
Follow the path down |goto 48.19,17.05 < 5 |walk
Follow the path |goto 41.32,17.77 < 5 |walk
kill Mine Technician##138521+
|tip Inside the mine.
accept The Mine Sweeper##51881 |goto 46.44,36.02
|tip You will eventually automatically accept this quest after looting.
step
Follow the path |goto 35.91,20.28 < 5 |walk
Continue following the path |goto 30.11,26.86 < 5 |walk
Follow the path up |goto 27.99,49.61 < 5 |walk
Follow the path up |goto 27.47,55.41 < 3 |walk
Follow the path up |goto 33.26,53.18 < 3 |walk
kill Chief Engineer Grizz##138581 |q 51752/1 |goto 35.51,38.93
|tip Inside the mine.
step
label "Kill_Mine_Technicians"
Jump down here |goto 38.99,30.05 < 5 |walk
kill 4 Mine Technician##138521 |q 51711/3 |goto 41.12,24.26
|tip Inside the mine.
step
Follow the path up |goto 41.44,17.51 < 5 |walk
Follow the path up |goto 47.92,16.90 < 5 |walk
Follow the path |goto 55.57,25.82 < 5 |c |q 51726
step
label "Free_Captured_Miners"
clicknpc Captured Miner##136333+
|tip They look like humans mining next to the walls around this area inside the mine.
Free #6# Captured Miners |q 51726/1 |goto 60.46,34.73
step
label "Slay_Warfang_Miners"
kill 16 Warfang Miner##136015 |q 51711/2 |goto 60.46,34.73
|tip Use the "Toss Dynamite" ability on Blackpowder Ore nodes next to Warfang Miners around this area inside the mine.
|tip They look like large rocky black ore nodes on the ground around this area inside the mine.
step
talk Holger Nash##138924
|tip Inside the mine.
turnin Get Out of Here##51726 |goto 66.38,38.44
step
Follow the path |goto 76.23,42.12 < 5 |walk
Leave the mine |goto Stormsong Valley/0 46.60,36.17 < 5 |walk
Follow the path |goto Stormsong Valley/0 46.70,36.43 < 5 |only if walking
talk Felecia Gladstone##138735
turnin Having a Blast##51711 |goto Stormsong Valley/0 46.40,36.98
turnin Grizzled##51752 |goto Stormsong Valley/0 46.40,36.98
turnin The Mine Sweeper##51881 |goto Stormsong Valley/0 46.40,36.98
accept Burn It All Down##51728 |goto Stormsong Valley/0 46.40,36.98
accept Get Shredded##51720 |goto Stormsong Valley/0 46.40,36.98
accept Saw Dusted##51723 |goto Stormsong Valley/0 46.40,36.98
stickystart "Burn_Lumber_Piles"
stickystart "Collect_Energized_Core"
stickystart "Kill_Warfang_Lumberjacks"
step
Follow the path |goto 47.99,37.06 < 7 |only if walking
Burn the Siege Tower |q 51728/2 |goto 49.05,37.43 |count 1
|tip Use the "Flamethrower" ability next to Lumber Piles around this area.
|tip It appears as a button on the screen.
step
Burn the Siege Tower |q 51728/2 |goto 49.65,38.08 |count 2
|tip Use the "Flamethrower" ability next to Lumber Piles around this area.
|tip It appears as a button on the screen.
step
label "Burn_Lumber_Piles"
Burn #6# Lumber Piles |q 51728/1 |goto 50.00,37.89
|tip They look like stacks of large logs on the ground around this area.
|tip Use the "Flamethrower" ability next to Lumber Piles around this area.
|tip It appears as a button on the screen.
step
label "Collect_Energized_Core"
kill Goblin Shredder##137915+
collect Energized Core##160595 |q 51720/1 |goto 50.00,37.89
step
label "Kill_Warfang_Lumberjacks"
kill 10 Warfang Lumberjack##135981 |q 51723/1 |goto 50.00,37.89
step
talk Felecia Gladstone##138735
turnin Burn It All Down##51728 |goto 51.29,36.95
turnin Saw Dusted##51723 |goto 51.29,36.95
step
talk Prototype Shredder MK-03##138777
turnin Get Shredded##51720 |goto 51.25,36.72
step
talk Felecia Gladstone##138735
accept Eye for an Eye##51712 |goto 51.29,36.96
step
clicknpc Prototype Shredder MK-03##138904
Pilot the Prototype Shredder |q 51712/1 |goto 51.24,36.72
stickystart "Burn_Warfang_Buildings"
stickystart "Slay_Horde_Soldiers"
step
Follow the path down |goto 50.41,36.01 < 7 |only if walking
Cross the bridge |goto 50.30,34.24 < 7 |only if walking
Follow the path |goto 50.36,33.55 < 7 |only if walking
Follow the path up |goto 49.90,32.54 < 7 |only if walking
Follow the path up |goto 49.48,32.55 < 5 |only if walking
Cross the bridge |goto 49.27,33.03 < 5 |only if walking
kill General Blackstone##138683 |q 51712/3 |goto 49.14,34.46
|tip Use the abilties on your action bar.
step
label "Burn_Warfang_Buildings"
Cross the bridge |goto 49.18,33.88 < 5 |only if walking
Follow the path down |goto 49.28,32.95 < 5 |only if walking
Follow the path down |goto 49.73,32.45 < 7 |only if walking
Burn #8# Warfang Buildings |q 51712/2 |goto 50.17,32.61
|tip Use the "Flamethrower" ability on your action bar next to buildings around this area.
|tip The buildings you can burn can be seen on your minimap.
|tip They will appear on your minimap as yellow dots.
step
label "Slay_Horde_Soldiers"
Kill enemies around this area
|tip Use the abilties on your action bar.
Slay #30# Horde Soldiers |q 51712/4 |goto 50.17,32.61
step
Cross the bridge |goto 50.37,33.58 < 7 |only if walking
Follow the path |goto 50.30,34.27 < 7 |only if walking
Follow the path up |goto 50.30,35.53 < 7 |only if walking
Return to Felecia Gladstone |goto 51.29,36.96 < 10 |c |q 51712
step
Stop Piloting the Prototype Shredder |outvehicle |goto 51.29,36.96 |q 51712
|tip Click the yellow arrow on your action bar.
step
talk Felecia Gladstone##138735
turnin Eye for an Eye##51712 |goto 51.29,36.96
step
Leave the building |goto 43.35,54.16 < 3 |walk
Cross the bridge |goto 43.57,53.29 < 7 |only if walking
Follow the road |goto 43.40,52.21 < 7 |only if walking
Follow the road |goto 43.00,50.65 < 7 |only if walking
Continue following the road |goto 44.77,49.96 < 7 |only if walking
Continue following the road |goto 46.76,50.55 < 7 |only if walking
Follow the path up |goto 48.17,50.14 < 7 |only if walking
Follow the path up |goto 48.38,49.63 < 7 |only if walking
Follow the path |goto 47.29,48.29 < 7 |only if walking
Enter the building |goto 46.76,47.94 < 3 |walk
talk Matthew Gandorian##139635
|tip Inside the building.
turnin WANTED: War Gore##52876 |goto 46.67,47.98
step
Leave the building |goto 46.77,47.94 < 3 |walk
Follow the path |goto 46.76,48.15 < 3 |walk
Jump down carefully here |goto 46.49,48.49 < 5 |only if walking
Follow the road |goto 44.62,50.01 < 7 |only if walking
Follow the road |goto 43.01,50.61 < 7 |only if walking
Follow the path |goto 40.23,49.45 < 7 |only if walking
Continue following the path |goto 40.74,47.89 < 7 |only if walking
Continue following the path |goto 40.56,46.74 < 7 |only if walking
talk Maokka##136710
turnin A Turtle's Invitation##50797 |goto 40.72,45.70
step
talk Scrollsage Nola##135794
accept Cleaning Bills##51339 |goto 40.68,45.60
accept Swimming Lessons##51343 |goto 40.68,45.60
step
talk Toki##135795
accept Don't Play with Matches##51352 |goto 40.59,45.46
stickystart "Clean_Sandbills"
stickystart "Kill_Venture_Co_Oilers"
stickystart "Kill_Venture_Co_Firestarters"
step
Follow the path |goto 40.07,44.95 < 10 |only if walking
Follow the path |goto 38.71,44.23 < 5 |only if walking
click Tortollan Chest
collect Scroll of Harmonious Fins##160327 |q 51343/3 |goto 38.69,44.54
step
Follow the path |goto 38.79,43.73 < 7 |only if walking
Continue following the path |goto 39.01,42.51 < 7 |only if walking
Continue following the path |goto 39.17,40.78 < 7 |only if walking
Continue following the path |goto 39.33,39.75 < 7 |only if walking
Enter the cave |goto 39.05,39.28 < 5 |walk
click Tortollan Chest
|tip Inside the cave.
collect Scroll of Endless Tides##160329 |q 51343/1 |goto 38.71,39.34
step
Leave the cave |goto 39.09,39.27 < 5 |walk
Follow the path up |goto 39.90,37.87 < 7 |only if walking
talk Scroll of Flight##137318
fpath Seekers Vista |goto 40.02,37.32
step
talk Okada##137668
|tip He walks around this area.
home Seekers' Vista |goto 40.84,37.10 |q 50640 |future
step
Follow the path |goto 39.96,37.21 < 7 |only if walking
Continue following the path |goto 38.34,37.32 < 7 |only if walking
Continue following the path |goto 37.18,36.95 < 7 |only if walking
Continue following the path |goto 35.61,37.24 < 7 |only if walking
Follow the path |goto 34.49,37.45 < 7 |only if walking
Follow the path |goto 34.14,36.88 < 7 |only if walking
click Tortollan Chest
collect Scroll of Graceful Breaths##160270 |q 51343/2 |goto 34.34,36.42
step
label "Clean_Sandbills"
Follow the path |goto 34.18,37.01 < 7 |only if walking
Follow the path |goto 34.59,37.49 < 7 |only if walking
Continue following the path |goto 35.88,37.30 < 7 |only if walking
clicknpc Oily Sandbill Piper##137248+
|tip They look like dark colored birds on the ground around this area.
Clean #8# Sandbills |q 51339/1 |goto 36.28,38.40
step
label "Kill_Venture_Co_Oilers"
kill 2 Venture Co. Oiler##137065 |q 51352/2 |goto 36.28,38.40
step
label "Kill_Venture_Co_Firestarters"
kill 10 Venture Co. Firestarter##138093 |q 51352/1 |goto 36.28,38.40
step
Follow the path |goto 36.89,36.95 < 7 |only if walking
Follow the path up |goto 39.60,37.48 < 7 |only if walking
Follow the path |goto 40.12,37.80 < 5 |only if walking
talk Toki##135795
turnin Don't Play with Matches##51352 |goto 40.19,37.65
accept Make Loh Go##53369 |goto 40.19,37.65
step
talk Toki##135795
Tell him _"I am ready."_
Speak with Toki |q 53369/1 |goto 40.19,37.65
step
Guide Loh to the First Goal |q 53369/2 |goto 40.32,37.72
|tip Move Loh to the finish line marker in the middle of the piles of small boxes.
|tip Use the abilities on your action bar.
step
Guide Loh Through All the Points Without Crossing His Own Path |q 53369/3 |goto 40.32,37.72
|tip Move Loh to the treasure chest, then the finish line marker.
|tip Use the abilities on your action bar.
step
Click the Completed Quest Box:
turnin Make Loh Go##53369
step
talk Scrollsage Nola##135794
turnin Cleaning Bills##51339 |goto 40.41,36.94
turnin Swimming Lessons##51343 |goto 40.41,36.94
accept Cave of Ai'twen##51353 |goto 40.41,36.94
step
Follow the path down |goto 40.41,36.24 < 7 |only if walking
Follow the path |goto 40.07,35.58 < 7 |only if walking
Enter the underwater cave |goto 37.17,32.60 < 7 |walk
talk Loroja##137453
|tip Inside the underwater cave.
turnin Cave of Ai'twen##51353 |goto 35.68,31.24
accept Flavorable Offering##51371 |goto 35.68,31.24
accept Response Required##51221 |goto 35.68,31.24
stickystart "Collect_Seaweed"
step
Leave the underwater cave |goto 37.42,32.76 < 7 |walk
Follow the path |goto 37.92,31.54 < 7 |only if walking
click Bot Buster Bomb
|tip Underwater.
accept Explosive Situation##51540 |goto 37.85,28.51
step
kill Lithia Costcutter's Shredder##141953
|tip She walks around this area.
kill Lithia Costcutter##137055 |q 51221/1 |goto 36.95,29.46
|tip She appears after you kill her shredder.
step
click Bot Buster Bomb+
|tip They look like red spikey balls on the ground underwater around this area.
collect 5 Bot Buster Bomb##160397 |q 51540/1 |goto 38.26,28.29
step
label "Collect_Seaweed"
Kill enemies around this area
|tip Underwater.
click Seaweed+
|tip They look like tall stringy plants on the ground underwater around this area.
collect 50 Seaweed##160055 |q 51371/1 |goto 38.26,28.29
step
Enter the underwater cave |goto 37.17,32.60 < 7 |walk
talk Loroja##137453
|tip Inside the underwater cave.
turnin Response Required##51221 |goto 35.68,31.24
turnin Flavorable Offering##51371 |goto 35.68,31.24
turnin Explosive Situation##51540 |goto 35.68,31.24
accept I like Turtles##51427 |goto 35.68,31.24
accept Breaker Bad##51545 |goto 35.68,31.24
step
click Seaweed offering
|tip Inside the underwater cave.
Place the Offering |q 51427/1 |goto 35.71,31.01
step
talk Loroja##137453
|tip Inside the underwater cave.
turnin I like Turtles##51427 |goto 35.68,31.24
accept Deep Sea Venture##51220 |goto 35.68,31.24
step
talk Toki##137677
|tip Inside the underwater cave.
accept What's Yours is Mined##51222 |goto 35.74,31.31
stickystart "Steal_Mines"
stickystart "Kill_Venture_Co_Seawrenches"
step
Leave the underwater cave |goto 37.43,32.70 < 7 |walk
Follow the path |goto 38.03,31.74 < 10 |only if walking
Continue following the path |goto 37.63,28.37 < 10 |only if walking
Continue following the path |goto 35.92,26.45 < 10 |only if walking
Destroy the Reef Breaker |q 51545/1 |goto 35.39,27.76
|tip Use the "Bot Cluster Bomb" ability on it.
|tip It appears as a button on the screen.
step
label "Steal_Mines"
clicknpc Venture Co. Sea Mine##137482+
|tip They look like grey metal spikey balls floating on chains underwater around this area.
|tip The huge turtle nearby can only haul 5 mines at a times.
|tip If it's not working when you click the mines, wait until the turtle isn't dragging any mines and try again.
Steal #10# Sea Mines |q 51222/1 |goto 36.46,25.23
step
label "Kill_Venture_Co_Seawrenches"
kill 6 Venture Co. Seawrench##137544 |q 51220/1 |goto 36.46,25.23
|tip Underwater.
step
talk Toki##137554
turnin Deep Sea Venture##51220 |goto 34.37,26.32
turnin What's Yours is Mined##51222 |goto 34.37,26.32
accept Battle Victorious##51386 |goto 34.37,26.32
step
clicknpc Ai'twen##137560
Mount Ai'twen |q 51386/1 |goto 34.33,25.95
step
Kill enemies around this area
|tip Use the ability on your action bar.
Slay #40# Venture Co. Forces |q 51386/2 |goto 38.12,23.91
step
Return to Seekers' Vista |goto 40.10,35.49 < 7 |c |q 51386 |notravel
step
Follow the path |goto 40.44,36.26 < 7 |only if walking
Follow the path down |goto 40.51,36.88 < 7 |only if walking
talk Toki##135795
turnin Battle Victorious##51386 |goto 40.20,37.65
step
Follow the path |goto 40.12,37.77 < 3 |only if walking
Follow the path |goto 39.63,37.26 < 7 |only if walking
Enter the underwater cave |goto 37.17,32.60 < 7 |walk
talk Loroja##137453
|tip Inside the underwater cave.
turnin Breaker Bad##51545 |goto 35.68,31.24
step
Run up the stairs |goto 58.89,70.36 < 5 |only if walking
Enter the building |goto 58.76,70.45 < 3 |walk
talk Mayor Roz##134752
|tip Inside the building.
turnin WANTED: Thundersnout##49730 |goto 58.63,70.43
turnin A Question of Quillpower##50640 |goto 58.63,70.43
step
Leave the building |goto 58.75,70.45 < 3 |walk
Follow the path |goto 58.89,70.34 < 5 |only if walking
Run up the stairs |goto 59.17,68.77 < 5 |only if walking
Enter the building |goto 59.24,68.59 < 3 |walk
Follow the path |goto 59.31,68.40 < 3 |walk
click Crumbling Letter
|tip Inside the building.
accept Ruin Has Come##50417 |goto 59.50,68.34
step
Follow the path |goto 59.32,68.39 < 3 |walk
Leave the building |goto 59.25,68.58 < 3 |walk
Follow the path |goto 59.16,69.33 < 7 |only if walking
Run down the stairs |goto 42.90,57.45 < 5 |only if walking
Follow the path |goto 43.08,57.61 < 5 |only if walking
Cross the bridge |goto 43.50,58.31 < 7 |only if walking
Follow the path |goto 43.99,59.21 < 7 |only if walking
Follow the road |goto 44.74,61.62 < 7 |only if walking
Follow the road |goto 43.84,62.39 < 7 |only if walking
Continue following the road |goto 42.38,62.07 < 7 |only if walking
Continue following the road |goto 40.40,63.27 < 7 |only if walking
Continue following the road |goto 39.06,62.89 < 7 |only if walking
click Marie's Package
accept Undelivered Package##51218 |goto 38.47,63.03
step
Follow the road |goto 38.03,63.18 < 7 |only if walking
Continue following the road |goto 37.12,64.15 < 7 |only if walking
Continue following the road |goto 34.94,65.26 < 7 |only if walking
Continue following the road |goto 32.48,64.97 < 10 |only if walking
Continue following the road |goto 31.83,65.31 < 7 |only if walking
Continue following the road |goto 31.16,66.33 < 7 |only if walking
talk Alexa Davenport##138180
fpath Millstone Hamlet |goto 30.75,66.56
step
Run up the stairs |goto 31.29,67.02 < 5 |only if walking
Enter the building |goto 31.45,67.07 < 3 |walk
talk Carol Netley##143328
|tip Inside the building.
home Millstone Hamlet |goto 31.51,67.27 |q 50635 |future
step
Leave the building |goto 31.45,67.07 < 3 |walk
Run up the stairs |goto 30.61,66.91 < 5 |only if walking
Enter the building |goto 30.47,66.89 < 3 |walk
talk Marie Davenport##136658
|tip Inside the building.
turnin Undelivered Package##51218 |goto 30.34,66.81
accept Be A Dear##51214 |goto 30.34,66.81
step
Leave the building |goto 30.47,66.89 < 3 |walk
Follow the path |goto 30.68,67.07 < 5 |only if walking
click Water Bucket
Gather a Water Bucket |q 51214/1 |goto 30.67,67.60
step
click Bulletin Board
accept WANTED: Razorclaw Alpha##51204 |goto 30.69,68.14
step
talk Charles Davenport##136574
accept Gunpowder Plot##51492 |goto 29.79,67.11
accept Aww, Rats!##51205 |goto 29.79,67.11
accept Basement Dwellers##51251 |goto 29.79,67.11
step
click Logs
Gather Logs |q 51214/3 |goto 29.79,67.06
stickystart "Collect_Gunpowder"
step
Follow the path down |goto 29.60,67.28 < 7 |only if walking
Follow the path down |goto 29.01,66.89 < 7 |only if walking
use the Bug Zapper##159882
|tip Use it on Bilge Rats around this area.
clicknpc Bilge Rat##136686+
Collect #8# Bilge Rats |q 51205/1 |goto 28.15,66.36
step
label "Collect_Gunpowder"
kill Volatile Rat##137126+
collect 100 Gunpowder##159776 |q 51492/1 |goto 28.15,66.36
stickystart "Collect_Spider_Silk"
step
Follow the path up |goto 28.66,67.21 < 7 |only if walking
Follow the path |goto 29.08,68.49 < 7 |only if walking
click Sack of Flour
Gather a Sack of Flour |q 51214/2 |goto 29.27,69.66
step
label "Collect_Spider_Silk"
kill Cellar Crawler##137000+
collect 8 Spider Silk##159839 |q 51251/1 |goto 28.88,69.25
step
Follow the path |goto 28.93,68.96 < 15 |only if walking
Follow the path down |goto 29.44,68.05 < 10 |only if walking
talk Charles Davenport##136574
turnin Aww, Rats!##51205 |goto 29.79,67.11
turnin Basement Dwellers##51251 |goto 29.79,67.11
step
Run up the stairs |goto 30.13,66.71 < 5 |only if walking
Enter the building |goto 30.19,66.70 < 3 |walk
talk Marie Davenport##136658
|tip Inside the building.
turnin Be A Dear##51214 |goto 30.34,66.81
turnin Gunpowder Plot##51492 |goto 30.34,66.81
accept Milking Goats##51215 |goto 30.34,66.81
step
Leave the building |goto 30.46,66.89 < 3 |walk
Follow the path up |goto 31.14,67.89 < 7 |only if walking
Follow the path up |goto 31.89,68.40 < 7 |only if walking
talk Shepherd Milbrooke##136414
accept Cry Wolf##51203 |goto 31.86,69.52
accept The Black Sheep##51200 |goto 31.86,69.52
stickystart "Collect_Mountain_Goat_Milk"
stickystart "Kill_Feral_Razorclaws"
step
Follow the path up |goto 31.31,70.63 < 7 |only if walking
Follow the path up |goto 29.70,72.12 < 10 |only if walking
Continue up the path |goto 28.15,73.05 < 7 |only if walking
Continue up the path |goto 27.01,74.12 < 7 |only if walking
clicknpc Millie##136734
Rescue Millie |q 51200/1 |goto 26.54,75.35
step
Follow the path up |goto 26.87,75.27 < 5 |only if walking
Follow the path up |goto 27.32,76.63 < 7 |only if walking
Follow the path |goto 27.46,77.24 < 7 |only if walking
Enter the cave |goto 28.00,77.92 < 5 |walk
kill Razorclaw Alpha##136417 |q 51204/1 |goto 28.03,79.73
|tip Inside the cave.
|tip You may need help with this.
step
Leave the cave |goto 27.99,77.90 < 5 |walk
Jump down here |goto 27.95,77.33 < 5 |only if walking
Follow the path |goto 28.35,74.18 < 10 |c |q 51215
step
label "Collect_Mountain_Goat_Milk"
clicknpc Mother Goat##136939+
|tip They look like larger white goats walking with small baby goats on the ground around this area.
collect 6 Mountain Goat Milk##159781 |q 51215/1 |goto 29.01,73.23
step
label "Kill_Feral_Razorclaws"
kill 10 Feral Razorclaw##136416 |q 51203/1 |goto 29.01,73.23
step
Follow the path |goto 31.28,70.71 < 10 |only if walking
talk Shepherd Milbrooke##136414
turnin WANTED: Razorclaw Alpha##51204 |goto 31.86,69.52
turnin Cry Wolf##51203 |goto 31.86,69.52
turnin The Black Sheep##51200 |goto 31.86,69.52
step
Follow the path down |goto 31.94,68.54 < 7 |only if walking
Follow the path |goto 31.04,67.77 < 7 |only if walking
Run up the stairs |goto 30.61,66.92 < 5 |only if walking
Enter the building |goto 30.47,66.89 < 3 |walk
talk Marie Davenport##136658
|tip Inside the building.
turnin Milking Goats##51215 |goto 30.33,66.81
accept Cookies and Cream##51335 |goto 30.33,66.81
step
click Dining Chair
|tip Inside the building.
Sit in Dining Chair |q 51335/1 |goto 30.37,66.92
step
Watch the dialogue
click Plate of Cookies
|tip Inside the building.
Eat the Cookies |q 51335/3 |goto 30.37,66.92
step
click Warm Goat Milk
|tip Inside the building.
Drink the Warm Goat Milk |q 51335/2 |goto 30.37,66.92
step
talk Marie Davenport##136658
|tip Inside the building.
turnin Cookies and Cream##51335 |goto 30.34,66.80
accept Ettin It Done##51207 |goto 30.34,66.80
accept Cookie Delivery##51504 |goto 30.34,66.80
stickystart "Slay_Ettins"
step
Leave the building |goto 30.47,66.89 < 3 |walk
Follow the path up |goto 31.15,67.90 < 7 |only if walking
Follow the path |goto 32.48,68.91 < 7 |only if walking
Follow the path up |goto 33.07,69.54 < 7 |only if walking
Follow the path |goto 33.72,70.01 < 7 |only if walking
Follow the path |goto 34.92,70.30 < 7 |only if walking
Continue following the path |goto 35.45,71.38 < 7 |only if walking
Follow the path up |goto 35.22,73.06 < 7 |only if walking
Follow the path up |goto 35.14,74.10 < 7 |only if walking
Follow the path |goto 35.53,74.65 < 7 |only if walking
talk Charles Davenport##136574
turnin Cookie Delivery##51504 |goto 36.21,74.72
accept Wheat A Minute##51208 |goto 36.21,74.72
accept Mighty Grokkfist##51209 |goto 36.21,74.72
stickystart "Gather_Grain_Sacks"
step
Follow the path |goto 36.42,75.00 < 7 |only if walking
Follow the path up |goto 37.35,75.19 < 7 |only if walking
Follow the path up |goto 38.38,75.18 < 7 |only if walking
Follow the path |goto 38.71,73.19 < 7 |only if walking
use the Pack of Rats##160063
|tip It will summon a bunch of rats to help you fight.
kill Grokkfist##136420 |q 51209/1 |goto 38.78,72.02
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
step
label "Gather_Grain_Sacks"
Follow the path |goto 38.84,72.07 < 7 |only if walking
Follow the path down |goto 38.68,73.23 < 7 |only if walking
Follow the path down |goto 38.32,75.40 < 7 |only if walking
click Grain Sack+
|tip They look like tan rectangle bags on the ground around this area.
Gather #10# Grain Sacks |q 51208/1 |goto 36.65,74.97
step
label "Slay_Ettins"
use the Flour Bomb##160052
|tip Use it on Ettin enemies around this area.
|tip It will damage them a lot.
Kill Ettin enemies around this area
Slay #8# Ettins |q 51207/1 |goto 36.65,74.97
step
Leave the building |goto 31.45,67.08 < 3 |walk
Run up the stairs |goto 30.62,66.90 < 5 |only if walking
Enter the building |goto 30.47,66.89 < 3 |walk
talk Charles Davenport##136574
|tip Inside the building.
turnin Wheat A Minute##51208 |goto 30.42,66.92
turnin Mighty Grokkfist##51209 |goto 30.42,66.92
step
talk Marie Davenport##136658
|tip Inside the building.
turnin Ettin It Done##51207 |goto 30.33,66.80
step
Leave the building |goto 30.19,66.70 < 3 |walk
Follow the path down |goto 29.92,66.66 < 7 |only if walking
Follow the path |goto 29.85,65.19 < 7 |only if walking
Follow the path |goto 29.93,64.51 < 7 |only if walking
Follow the path down |goto 29.54,62.47 < 7 |only if walking
Follow the path |goto 30.13,60.48 < 7 |only if walking
Follow the path |goto 30.29,59.54 < 7 |only if walking
talk Lieutenant Bauer##131002
turnin Trouble at Fort Daelin##49818 |goto 30.16,59.20
turnin Helping Out, Somewhere Else##52068 |goto 30.16,59.20
accept Freedom for the Sea##50614 |goto 30.16,59.20
accept A Bit of a Bind##50616 |goto 30.16,59.20
accept Caught in the Net##50621 |goto 30.16,59.20
stickystart "Collect_Songstone"
stickystart "Free_Villagers"
stickystart "Kill_Bound_Seasurges"
step
Follow the path down |goto 29.86,58.87 < 7 |only if walking
Follow the path |goto 29.05,58.95 < 7 |only if walking
Follow the path |goto 28.29,60.01 < 7 |only if walking
kill Binder Sa'thress##134341 |q 50616/1 |goto 27.73,62.40
step
label "Collect_Songstone"
kill Binder Sa'thress##134341
collect Songstone##156472 |q 50616/2 |goto 27.73,62.40
step
label "Free_Villagers"
Kill Zeth'jir enemies around this area
collect Fishbone Key##159752+ |n
click Naga Cage+
|tip They look like yellow cages on the ground around this area.
Free #5# Villagers |q 50621/1 |goto 27.85,61.24
step
label "Kill_Bound_Seasurges"
kill 6 Bound Seasurge##134340 |q 50614/1 |goto 27.85,61.24
step
Follow the path up |goto 27.12,58.65 < 7 |only if walking
Follow the path |goto 26.95,57.78 < 7 |only if walking
Run up the stairs |goto 26.63,57.32 < 5 |only if walking
Follow the path |goto 26.42,57.20 < 5 |only if walking
Cross the bridge |goto 26.18,56.70 < 5 |only if walking
Enter the building |goto 26.00,55.77 < 3 |only if walking
Run up the stairs |goto 26.05,55.56 < 3 |only if walking
Run up the stairs |goto 25.99,55.38 < 3 |only if walking
Leave the building |goto 25.86,55.43 < 3 |c |q 50376 |future
step
Follow the path |goto 25.85,55.71 < 3 |only if walking
Run up the stairs |goto 25.97,55.73 < 3 |only if walking
Run up the stairs |goto 26.08,55.62 < 3 |only if walking
talk Coxswain Hook##133576
accept Deadliest Cache: Reel Big Fish##50376 |goto 26.00,55.22
step
talk Coxswain Hook##133576
Ask him _"And then what happened?"_
Listen to Coxswain Hook's Tale |q 50376/1 |goto 26.00,55.22
step
Jump down here |goto 26.15,55.66 < 5 |only if walking
Watch the dialogue
kill 12 Land Shark##133613 |q 50376/2 |goto 26.49,55.37
|tip Use the abilities on your action bar.
step
Run up the stairs |goto 26.45,53.21 < 5 |only if walking
kill Tidemaw##133650
|tip Use the abilities on your action bar.
Slay the Land Shark Alpha |q 50376/3 |goto 26.34,52.69
step
Watch the dialogue
Return to Coxswain Hook |goto 26.00,55.38 < 7 |noway |c |q 50376
|tip You will be transported automatically.
step
talk Coxswain Hook##133576
turnin Deadliest Cache: Reel Big Fish##50376 |goto 26.00,55.22
step
talk Master Gunner Line##133577
accept Deadliest Cache: Gun Fishin'##50391 |goto 25.90,55.17
step
talk Master Gunner Line##133577
Ask him _"And then what happened?"_
Listen to Master Gunner Line's Tale |q 50391/1 |goto 25.90,55.17
step
Watch the dialogue
click Slagshot Slammer
Gather the Fishin' Rod |q 50391/2 |goto 25.92,55.18
stickystart "Kill_Drowned_Horrors"
step
Jump down here |goto 25.83,55.20 < 3 |only if walking
click Slagshot Fishflayer+
|tip They look like metal cannons on the wooden docks around this area.
|tip They will appear on your minimap as yellow dots.
Create #3# Mountains of Fish |q 50391/3 |goto 25.60,54.81
step
label "Kill_Drowned_Horrors"
kill 25 Drowned Horror##140524 |q 50391/4 |goto 25.60,54.81
|tip Use the abilities on your action bar.
step
kill 4 Writhing Horror##133792 |q 50391/5 |goto 25.87,54.47
|tip They are in the water.
|tip Use the abilties on your action bar.
step
kill Ozumat##133797 |q 50391/6 |goto 25.87,54.47
|tip It is further out in the water.
|tip Use the ability on your action bar.
step
Watch the dialogue
Return to Master Gunner Line |goto 26.00,55.38 < 7 |noway |c |q 50391
|tip You will be transported automatically.
step
talk Master Gunner Line##133577
turnin Deadliest Cache: Gun Fishin'##50391 |goto 25.90,55.17
step
talk "Sinker"##133578
accept Deadliest Cache: Sink and Swim##50418 |goto 25.84,55.23
step
talk "Sinker"##133578
Ask him _"And then what happened?"_
Mph Mph |q 50418/1 |goto 25.84,55.23
step
Watch the dialogue
Mph, Mph Mph Mph |q 50418/2 |goto 25.97,55.14
|tip Use the ability on your action bar.
step
clicknpc Experimental Tideskipper##140818
|tip Underwater.
Mph Mph Mph |q 50418/3 |goto 25.54,52.84
stickystart "Slay_Mph_Mph_Mph"
step
Destroy the Western Mph |q 50418/5 |goto 22.83,50.24
|tip Use the "Bombs Away!" ability on your action bar next to the Abyssal Idol.
|tip It looks like a tall rock underwater.
step
Destroy the Southern Mph |q 50418/6 |goto 25.39,48.29
|tip Use the "Bombs Away!" ability on your action bar next to the Abyssal Idol.
|tip It looks like a tall rock underwater.
step
Destroy the Eastern Mph |q 50418/7 |goto 23.50,46.35
|tip Use the "Bombs Away!" ability on your action bar next to the Abyssal Idol.
|tip It looks like a tall rock underwater.
step
label "Slay_Mph_Mph_Mph"
Kill enemies around this area
|tip Underwater.
|tip Use the abilities on your action bar.
Slay #15# Mph Mph Mph |q 50418/4 |goto 23.85,46.86
step
Watch the dialogue
Return to "Sinker" |goto 25.97,55.33 < 7 |noway |c |q 50418
|tip You will be transported automatically.
step
talk "Sinker"##133578
turnin Deadliest Cache: Sink and Swim##50418 |goto 25.84,55.24
step
talk Coxswain Hook##133576
accept Deadliest Cache: Carpe Diem##52130 |goto 26.01,55.22
step
talk Coxswain Hook##133576
Ask him _"And then what happened?"_
Listen to Coxswain Hook's Tale |q 52130/1 |goto 26.01,55.22
step
Jump down here |goto 25.84,55.20 < 3 |only if walking
Run down the stairs |goto 25.47,54.95 < 5 |only if walking
Follow the path |goto 25.23,55.02 < 5 |only if walking
Run down the stairs |goto 25.12,54.70 < 5 |only if walking
Watch the dialogue
click Signal Fire
Light the Southern Signal Fire |q 52130/3 |goto 25.04,54.26
step
Run up the stairs |goto 25.09,54.52 < 5 |only if walking
Follow the path |goto 25.13,54.69 < 5 |only if walking
Run up the stairs |goto 25.24,55.02 < 5 |only if walking
Follow the path |goto 25.46,54.94 < 5 |only if walking
Follow the path |goto 26.56,54.42 < 5 |only if walking
Run down the stairs |goto 26.39,53.62 < 5 |only if walking
Follow the path |goto 26.32,53.17 < 5 |only if walking
click Signal Fire
Light the Northern Signal Fire |q 52130/2 |goto 26.34,52.81
step
Run up the stairs |goto 26.31,53.18 < 5 |only if walking
Follow the path |goto 26.40,53.62 < 5 |only if walking
Follow the path |goto 26.54,54.46 < 5 |only if walking
click Spyglass
Watch the dialogue
Scan the Horizon |q 52130/4 |goto 26.26,54.58
step
Make the Final Stand |q 52130/5 |goto 26.26,54.58
|tip Use the ability on your action bar.
step
Watch the dialogue
Jump Down Barathruum's Gullet |q 52130/6 |goto 26.26,54.58
Cut Up Barathruum from the Inside Out |q 52130/7 |goto 26.26,54.58
Earn Eternal Honor and Glory |q 52130/8 |goto 26.26,54.58
step
Watch the dialogue
Return to Coxswain Hook |goto 26.00,55.38 < 7 |noway |c |q 52130
|tip You will be transported automatically.
step
talk Coxswain Hook##133576
turnin Deadliest Cache: Carpe Diem##52130 |goto 26.00,55.22
step
Jump down here |goto 26.15,55.67 < 5 |only if walking
Follow the path |goto 27.23,55.77 < 7 |only if walking
Follow the path |goto 27.78,56.88 < 7 |only if walking
Continue following the path |goto 28.97,58.00 < 7 |only if walking
Follow the path up |goto 29.42,58.56 < 7 |only if walking
Follow the path |goto 29.87,58.89 < 7 |only if walking
talk Lieutenant Bauer##131002
turnin Freedom for the Sea##50614 |goto 30.16,59.20
turnin A Bit of a Bind##50616 |goto 30.16,59.20
turnin Caught in the Net##50621 |goto 30.16,59.20
accept The Shifting Tides##50635 |goto 30.16,59.20
step
Follow the path |goto 30.84,58.99 < 7 |only if walking
Continue following the path |goto 32.61,58.15 < 7 |only if walking
Follow the road |goto 34.10,58.40 < 7 |only if walking
Follow the road |goto 34.56,57.57 < 7 |only if walking
Continue following the road |goto 34.55,56.75 < 7 |only if walking
Continue following the road |goto 34.25,55.53 < 7 |only if walking
Continue following the road |goto 34.49,52.91 < 7 |only if walking
Run up the stairs |goto 35.20,50.84 < 5 |only if walking
Follow the path |goto 35.20,50.48 < 5 |only if walking
Run up the stairs |goto 35.13,49.68 < 5 |only if walking
Follow the path |goto 34.95,49.41 < 5 |only if walking
Follow the path |goto 34.43,48.32 < 5 |only if walking
talk Rikal##131014
turnin The Shifting Tides##50635 |goto 35.02,47.67
accept Eeling in a Big One##50645 |goto 35.02,47.67
accept Filching from Thieves##50649 |goto 35.02,47.67
step
Enter the building |goto 34.75,47.25 < 3 |walk
talk Staff Sergeant Cotner##138210
|tip Inside the building.
home Fort Daelin |goto 34.83,47.15 |q 49908 |future
step
Leave the building |goto 34.76,47.23 < 3 |walk
talk Specialist Wembley##131003
accept Facing the Invaders##50644 |goto 34.58,47.16
accept Reclaiming our Defenses##50653 |goto 34.58,47.16
step
talk Misty Koret##138193
fpath Fort Daelin |goto 34.28,47.23
stickystart "Collect_Tide_Beacons"
stickystart "Collect_Abyssal_Fangs"
stickystart "Slay_Northern_Naga_Forces"
step
Follow the path |goto 33.74,46.62 < 7 |only if walking
Follow the path |goto 32.94,46.56 < 7 |only if walking
Run down the stairs |goto 32.72,46.32 < 5 |only if walking
Follow the path |goto 32.49,46.05 < 5 |only if walking
Follow the path down |goto 32.25,44.84 < 7 |only if walking
Follow the path |goto 32.04,40.93 < 7 |only if walking
Follow the path |goto 33.45,40.51 < 7 |only if walking
Continue following the path |goto 33.95,40.77 < 7 |only if walking
Continue following the path |goto 34.97,41.91 < 7 |only if walking
clicknpc Stranded Battalion Soldier##131409+
|tip They look like human soldiers kneeling and floating while kicking their legs on the ground around this area.
Save #8# Battalion Soldiers |q 50653/1 |goto 35.68,42.04
step
label "Collect_Tide_Beacons"
click Tidal Beacon+
|tip They look like small metal lanterns sitting in blue circles on the ground around this area.
collect 7 Tidal Beacon##158183 |q 50649/1 |goto 35.68,42.04
step
label "Collect_Abyssal_Fangs"
kill Abyssal Eel##129980+
collect 16 Abyssal Fang##158181 |q 50645/1 |goto 35.68,42.04
step
label "Slay_Northern_Naga_Forces"
Kill Zeth'jir enemies around this area
|tip Zeth'jir Attackers will not count for this quest goal.
Slay #15# Northern Naga Forces |q 50644/1 |goto 35.68,42.04
step
Run up the stairs |goto 34.43,42.86 < 5 |only if walking
Follow the path |goto 33.75,43.29 < 5 |only if walking
Follow the path |goto 33.58,44.15 < 7 |only if walking
Continue following the path |goto 34.09,44.69 < 7 |only if walking
Run up the stairs |goto 34.53,45.58 < 5 |only if walking
Follow the path |goto 34.38,45.84 < 5 |only if walking
Follow the path |goto 34.21,46.35 < 7 |only if walking
Follow the path |goto 34.49,47.10 < 5 |only if walking
talk Specialist Wembley##131003
turnin Facing the Invaders##50644 |goto 34.58,47.16
turnin Reclaiming our Defenses##50653 |goto 34.58,47.16
accept Any Ammo Will Do##50672 |goto 34.58,47.16
accept Piercing the Shield##50679 |goto 34.58,47.16
accept Problem Solving with Gunpowder##50698 |goto 34.58,47.16
step
talk Rikal##131014
turnin Eeling in a Big One##50645 |goto 35.02,47.67
turnin Filching from Thieves##50649 |goto 35.02,47.67
accept You're a Shark##50773 |goto 35.02,47.67
step
talk Rikal##131014
Tell him _"Start casting the spell, Rikal."_ |goto 35.02,47.67
Become a Shark |goto 27.73,34.47 < 20 |noway |c |q 50773
step
kill 20 Zeth'jir Attacker##141263 |q 50773/1 |goto 26.80,35.74
|tip Underwater.
|tip Swim into them to kill them.
step
Return to Fort Daelin |goto 34.42,47.94 < 10 |noway |c |q 50773
step
talk Rikal##131014
turnin You're a Shark##50773 |goto 35.01,47.68
stickystart "Arm_Explosive_Traps"
stickystart "Collect_Zethjir_Harpoons"
step
Follow the path |goto 33.06,48.24 < 7 |only if walking
Follow the path |goto 32.79,48.46 < 7 |only if walking
Run down the stairs |goto 32.65,48.71 < 5 |only if walking
Follow the path |goto 32.46,48.97 < 5 |only if walking
Follow the path |goto 31.47,47.96 < 7 |only if walking
kill Zeth'jir Seacaller##130824+
|tip You can find more downstairs on the beach.
collect Zeth'jir Channeling Rod##158200 |q 50679/1 |goto 31.00,47.36
step
label "Arm_Explosive_Traps"
click Live Explosive Trap+
|tip They look like small spikey balls on the ground around this area.
|tip You can find more downstairs on the beach.
Arm #5# Explosive Traps |q 50698/1 |goto 31.00,47.36
step
label "Collect_Zethjir_Harpoons"
kill Shoalbreach Lance##129972+
click Zeth'jir Harpoon+
|tip They look like harpoons stuck in the ground and in walls around this area.
|tip You can find more downstairs on the beach.
collect 20 Zeth'jir Harpoon##156482 |q 50672/1 |goto 31.00,47.36
step
Follow the path |goto 31.38,47.97 < 10 |only if walking
Run up the stairs |goto 32.47,48.97 < 5 |only if walking
Follow the path |goto 32.64,48.73 < 5 |only if walking
Continue following the path |goto 32.94,48.27 < 7 |only if walking
Continue following the path |goto 33.77,48.19 < 7 |only if walking
talk Specialist Wembley##131003
turnin Any Ammo Will Do##50672 |goto 34.58,47.16
turnin Piercing the Shield##50679 |goto 34.58,47.16
turnin Problem Solving with Gunpowder##50698 |goto 34.58,47.16
accept A Snake with Three Heads##50705 |goto 34.58,47.16
accept Clearing the Delta##50706 |goto 34.58,47.16
stickystart "Slay_Zethjir_Forces"
step
Jump down here |goto 32.86,49.35 < 5 |only if walking
Follow the path down |goto 32.52,50.16 < 7 |only if walking
Follow the path |goto 32.68,51.39 < 7 |only if walking
use Zeth'jir Channeling Rod##158332
|tip Use it on Binder Ser'less.
kill Binder Ser'less##134809 |q 50705/2 |goto 32.64,53.96
step
use Zeth'jir Channeling Rod##158332
|tip Use it on Lady Rash'iss.
kill Lady Rash'iss##134401 |q 50705/1 |goto 32.14,55.03
step
use Zeth'jir Channeling Rod##158332
|tip Use it on Binder Nalashj.
kill Binder Nalashj##134813 |q 50705/3 |goto 32.68,55.97
step
label "Slay_Zethjir_Forces"
Kill Zeth'jir enemies around this area
Slay #15# Zeth'jir Forces |q 50706/1 |goto 31.32,54.72
step
Follow the path |goto 33.41,51.99 < 7 |only if walking
Jump up here |goto 33.99,53.25 < 5 |only if walking
Follow the path |goto 34.22,54.07 < 7 |only if walking
talk Commander Kellam##131000
turnin A Snake with Three Heads##50705 |goto 34.11,54.87
turnin Clearing the Delta##50706 |goto 34.11,54.87
accept From the Depths##49831 |goto 34.11,54.87
step
Watch the dialogue
click Cannon+
|tip There will be yellow timers above them that count down to when they are ready to shoot again.
kill Pride of Azshara##131199 |q 49831/1 |goto 33.93,54.77
step
talk Commander Kellam##131000
turnin From the Depths##49831 |goto 34.11,54.87
accept Back to Brennadam##49908 |goto 34.11,54.87
step
Follow the path |goto 34.48,52.94 < 7 |only if walking
Follow the path |goto 35.04,51.63 < 7 |only if walking
Run up the stairs |goto 35.20,50.85 < 5 |only if walking
Follow the path |goto 35.20,50.47 < 5 |only if walking
Run up the stairs |goto 35.13,49.68 < 5 |only if walking
Follow the path |goto 34.96,49.42 < 5 |only if walking
Follow the path |goto 34.44,48.37 < 7 |only if walking
Follow the path |goto 59.50,70.14 < 7 |only if walking
talk Squire Augustus III##131004
turnin Back to Brennadam##49908 |goto 59.51,69.95
step
Run up the stairs |goto 58.90,70.37 < 5 |only if walking
Enter the building |goto 58.76,70.46 < 3 |walk
talk "Nasty" Buck##138221
|tip He walks around this area inside the building.
home The Golden Flagon |goto 58.58,70.31 |q 49997 |future
step
Leave the building |goto 58.75,70.46 < 3 |walk
Follow the path |goto 59.41,69.62 < 7 |only if walking
Follow the path down |goto 59.93,69.36 < 7 |only if walking
Follow the road |goto 61.68,68.87 < 7 |only if walking
Cross the bridge |goto 62.73,66.71 < 7 |only if walking
Follow the path |goto 63.47,65.09 < 7 |only if walking
talk Brother Pike##130714
turnin House Stormsong##49703 |goto 63.43,64.76
accept Unnecessary Duress##49705 |goto 63.43,64.76
accept Proclamation Investigation##49706 |goto 63.43,64.76
step
talk Taelia##130715
accept Haywire Harvesters##49704 |goto 63.46,64.94
stickystart "Rejuvenate_Laborers"
stickystart "Collect_Drenched_Mainspring"
step
Follow the path down |goto 63.38,64.32 < 7 |only if walking
Follow the path down |goto 62.54,63.99 < 7 |only if walking
click Stormsong Proclamation+
|tip They look like paper scrolls nailed to the sides of objects and buildings around this area.
Read #3# Stormsong Proclamations |q 49706/1 |goto 62.23,64.54
step
label "Rejuvenate_Laborers"
use the Imbued Tidewater##155893
|tip Use it next to Exhausted Laborers around this area.
Rejuvenate #8# Laborers |q 49705/1 |goto 62.23,64.54
step
label "Collect_Drenched_Mainspring"
kill Rewired Harvester##130131+
collect Drenched Mainspring##155829 |q 49704/1 |goto 62.23,64.54
step
Follow the path up |goto 62.00,64.02 < 7 |only if walking
Follow the path up |goto 62.72,63.80 < 7 |only if walking
Follow the path |goto 63.40,64.39 < 7 |only if walking
talk Brother Pike##130714
turnin Unnecessary Duress##49705 |goto 63.43,64.76
turnin Proclamation Investigation##49706 |goto 63.43,64.76
step
talk Taelia##130715
turnin Haywire Harvesters##49704 |goto 63.46,64.94
accept The Rising Tide##49794 |goto 63.46,64.94
step
talk Brother Pike##130714
accept Lost, Not Forgotten##49791 |goto 63.42,64.76
accept Means to an End##49793 |goto 63.42,64.76
step
Follow the path |goto 63.40,63.74 < 7 |only if walking
Follow the path |goto 64.11,62.38 < 7 |only if walking
talk Samuel Williams##130904
accept Forced Labor##49887 |goto 64.60,62.11
step
clicknpc Anchor of Binding##131124
Free Samuel Williams |q 49887/1 |goto 64.70,62.09
step
Watch the dialogue
talk Samuel Williams##130904
turnin Forced Labor##49887 |goto 64.60,62.11
accept Bound and Oppressed##49792 |goto 64.60,62.11
stickystart "Destroy_Anchors_Of_Binding"
stickystart "Recover_Souls"
step
Follow the path |goto 64.83,61.36 < 7 |only if walking
Run up the stairs |goto 65.17,60.93 < 3 |only if walking
Run up the ramp |goto 65.37,61.11 < 3 |only if walking
Follow the path |goto 65.43,60.99 < 3 |only if walking
kill Sister Ava##130952 |q 49794/1 |goto 65.56,60.74
step
Cross the bridge |goto 65.60,60.39 < 3 |only if walking
Follow the path |goto 65.64,60.20 < 5 |only if walking
Run down the stairs |goto 65.72,59.91 < 5 |only if walking
Follow the path |goto 65.82,59.72 < 5 |only if walking
Follow the path up |goto 66.22,59.44 < 7 |only if walking
Follow the path |goto 66.49,59.60 < 7 |only if walking
Follow the path |goto 66.53,60.27 < 7 |only if walking
Follow the path |goto 66.73,60.59 < 7 |only if walking
click Wavecaller's Mantle
Recover the Wavecaller's Mantle |q 49793/3 |goto 66.87,60.61
step
Follow the path |goto 66.55,60.31 < 7 |only if walking
Follow the path down |goto 66.36,59.93 < 7 |only if walking
Follow the path |goto 65.82,59.38 < 7 |only if walking
Continue following the path |goto 65.51,58.40 < 7 |only if walking
click Abyssal Beacon
Recover the Abyssal Beacon |q 49793/2 |goto 64.75,57.89
step
Follow the path down |goto 64.91,58.54 < 7 |only if walking
Cross the bridge |goto 64.73,59.04 < 7 |only if walking
Follow the path |goto 64.38,59.69 < 7 |only if walking
Follow the path |goto 64.08,60.16 < 7 |only if walking
Follow the path |goto 63.37,59.73 < 7 |only if walking
click Tidal Kris
Recover the Tidal Kris |q 49793/1 |goto 63.25,59.54
step
label "Destroy_Anchors_Of_Binding"
Cross the bridge |goto 64.13,60.20 < 7 |only if walking
Follow the path up |goto 64.72,59.00 < 7 |only if walking
Follow the path |goto 65.24,58.25 < 7 |only if walking
Follow the path |goto 65.48,58.42 < 7 |only if walking
clicknpc Anchor of Binding##130895+
|tip They look like large metal vases with water bubbling out of the top of them on the ground around this area.
Destroy #8# Anchors of Binding |q 49792/1 |goto 65.80,59.26
step
label "Recover_Souls"
Kill enemies around this area
use the Dead Ringer##155919
|tip Use it next to their corpses.
|tip It will only work on human enemies.
Recover #12# Souls |q 49791/1 |goto 65.80,59.26
step
_Next to you:_
talk Brother Pike
turnin Lost, Not Forgotten##49791
turnin Means to an End##49793
step
Run down the stairs |goto 65.39,58.00 < 5 |only if walking
Follow the path |goto 65.49,57.67 < 5 |only if walking
Follow the path |goto 65.88,57.33 < 7 |only if walking
Follow the path |goto 66.25,57.15 < 7 |only if walking
click Help Wanted
accept Make it Mildenhall##51582 |goto 66.35,57.23
step
talk Taelia##131249
turnin The Rising Tide##49794 |goto 66.49,56.51
step
talk Samuel Williams##131248
turnin Bound and Oppressed##49792 |goto 66.49,56.44
step
talk Brother Pike##130714
accept Rest in the Depths##49975 |goto 66.34,56.51
step
use the Dead Ringer##157859
Watch the dialogue
Release the Souls |q 49975/1 |goto 66.34,56.51
step
talk Brother Pike##130714
turnin Rest in the Depths##49975 |goto 66.34,56.51
step
talk Taelia##131249
accept Rearmament##49996 |goto 66.50,56.52
step
talk Samuel Williams##131248
accept Fabricated Fabrications##49995 |goto 66.49,56.44
step
Run up the stairs |goto 66.80,55.78 < 5 |only if walking
Follow the path |goto 67.01,55.70 < 5 |only if walking
Follow the path up |goto 67.25,55.86 < 5 |only if walking
Follow the path up |goto 67.44,56.05 < 5 |only if walking
Follow the path |goto 67.78,55.74 < 7 |only if walking
click Charred Note
accept The Missing Link##50139 |goto 68.70,54.40
stickystart "Collect_Stormfused_Weapons"
stickystart "Collect_Warship_Blueprints"
step
Follow the path down |goto 69.05,54.01 < 7 |only if walking
Follow the path down |goto 69.12,53.10 < 7 |only if walking
Follow the path |goto 69.22,52.68 < 7 |only if walking
Continue following the path |goto 69.84,52.42 < 7 |only if walking
Continue following the path |goto 70.50,51.46 < 7 |only if walking
Continue following the path |goto 70.28,50.55 < 7 |only if walking
kill Tideguard Pontus##132163
collect Architect's Cipher##156629 |q 50139/1 |goto 70.16,49.92
step
label "Collect_Stormfused_Weapons"
click Tidal Blade+
|tip They look like swords laying on objects and on the ground around this area.
click Harpoons+
|tip They look like groups of spears leaning on wooden racks on the ground around this area.
click Abyssal Spear+
|tip They look like pointed poles leaning on objects on the ground around this area.
click Thundershot Rifle+
|tip They look like wooden and metal rifles sitting on objects on the ground around this area.
collect 12 Stormfused Weapon##156609 |q 49996/1 |goto 69.75,51.08
step
label "Collect_Warship_Blueprints"
Kill enemies around this area
collect 8 Warship Blueprint##156607 |q 49995/1 |goto 69.75,51.08
step
Follow the path up |goto 69.03,51.98 < 7 |only if walking
Follow the path up |goto 69.14,53.05 < 7 |only if walking
Follow the path |goto 69.10,53.85 < 7 |only if walking
Continue following the path |goto 68.53,54.55 < 7 |only if walking
Continue following the path |goto 67.90,55.26 < 7 |only if walking
Follow the path down |goto 67.69,55.91 < 7 |only if walking
Jump down here |goto 67.25,56.18 < 5 |only if walking
Jump down here |goto 66.79,56.35 < 5 |only if walking
talk Samuel Williams##131248
turnin Fabricated Fabrications##49995 |goto 66.49,56.44
turnin The Missing Link##50139 |goto 66.49,56.44
step
talk Taelia##131249
turnin Rearmament##49996 |goto 66.49,56.51
step
talk Brother Pike##130714
accept Storm's Judgment##49997 |goto 66.34,56.51
step
Follow the path up |goto 66.47,57.19 < 7 |only if walking
Follow the path up |goto 67.15,58.35 < 7 |only if walking
Follow the path |goto 68.33,58.42 < 7 |only if walking
Follow the path down |goto 68.86,58.78 < 7 |only if walking
talk Brother Pike##132173
Tell him _"I am ready."
Speak to Brother Pike |q 49997/1 |goto 69.28,58.71
step
Watch the dialogue
Kill the enemies that attack in waves
kill Riptide##132171
Confront Wavespeaker Reid |q 49997/2 |goto 70.19,57.90
step
Follow the path up |goto 69.63,58.49 < 7 |only if walking
Follow the path |goto 69.03,59.24 < 7 |only if walking
Follow the path down |goto 68.59,61.34 < 7 |only if walking
Follow the path |goto 68.36,63.24 < 7 |only if walking
talk Colony Caretaker##142060
fpath Mildenhall Meadery |goto 68.54,64.99
step
talk Ancel Mildenhall##131793
turnin Make it Mildenhall##51582 |goto 68.88,65.16
accept Mayhem at Mildenhall Meadery##50343 |goto 68.88,65.16
step
Follow the path up |goto 68.75,66.00 < 7 |only if walking
Investigate the Meadery |q 50343/1 |goto 68.45,67.47
step
_Next to you:_
talk Ancel Mildenhall
turnin Mayhem at Mildenhall Meadery##50343
accept Detective Mildenhall##50070
accept Cleanup Duty##50359
stickystart "Kill_Flowing_Honey"
stickystart "Kill_Bubbling_Mead"
step
Follow the path up |goto 68.40,67.88 < 7 |only if walking
click Honey Soaked Boot
Find the Clue |q 50070/1 |goto 68.52,69.00 |count 1
step
Follow the path |goto 68.95,68.92 < 7 |only if walking
click Brewmaster's Treatise Vol. 1
Find the Clue |q 50070/1 |goto 69.16,69.34 |count 2
step
Follow the path up |goto 68.73,68.80 < 7 |only if walking
Follow the path |goto 68.33,69.88 < 7 |only if walking
click Misplaced Flask
Find the Clue |q 50070/1 |goto 67.92,70.94 |count 3
step
Follow the path up |goto 68.46,70.53 < 7 |only if walking
click Rough Map
Find the Clue |q 50070/1 |goto 69.24,70.77 |count 4
step
Follow the path |goto 70.00,69.49 < 10 |only if walking
Run up the stairs |goto 70.62,69.64 < 5 |only if walking
Enter the building |goto 70.70,69.64 < 3 |walk
click Crystalized Honey Fragment
|tip Inside the building.
Find the Clue |q 50070/1 |goto 70.83,69.67 |count 5
step
Leave the building |goto 70.70,69.65 < 3 |c |q 50359
step
label "Kill_Flowing_Honey"
kill 4 Flowing Honey##131663 |q 50359/1 |goto 70.34,69.46
step
label "Kill_Bubbling_Mead"
kill 4 Bubbling Mead##133429 |q 50359/2 |goto 70.34,69.46
step
_Next to you:_
talk Ancel Mildenhall
turnin Detective Mildenhall##50070
turnin Cleanup Duty##50359
accept Don't Go in the Basement##50064
step
Follow the path |goto 70.55,69.18 < 7 |only if walking
Run down the stairs |goto 70.75,69.14 < 3 |walk
Run down the stairs |goto 70.79,69.36 < 3 |walk
Follow the path |goto 70.92,69.36 < 3 |c |q 50064
step
click Mead Barrel
|tip Downstairs inside the building.
Examine Mead Barrel |q 50064/1 |goto 70.82,69.07
step
kill The Brue##131861 |q 50064/2 |goto 70.82,69.07
|tip Downstairs inside the building.
step
talk Ancel Mildenhall##132647
|tip Downstairs inside the building.
turnin Don't Go in the Basement##50064 |goto 71.05,69.24
accept Recovering Raimond##50161 |goto 71.05,69.24
step
Run up the stairs |goto 70.92,69.36 < 3 |walk
Run up the stairs |goto 70.75,69.32 < 3 |walk
Follow the path |goto 70.76,69.14 < 3 |walk
Follow the path |goto 71.12,68.47 < 7 |only if walking
click Honey Soaked Boot
collect Sticky Boot##156717 |q 50161/1 |goto 71.63,67.98 |count 2
step
Follow the path |goto 72.42,68.12 < 7 |only if walking
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 72.42,68.64 |count 1
step
Follow the path |goto 72.30,69.79 < 7 |only if walking
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 72.32,70.56 |count 2
step
Follow the path up |goto 72.66,70.89 < 7 |only if walking
Follow the path up |goto 73.05,71.68 < 7 |only if walking
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 73.37,72.27 |count 3
step
Enter the cave |goto 73.83,72.44 < 5 |walk
talk Raimond Mildenhall##132292
|tip Inside the cave.
turnin Recovering Raimond##50161 |goto 74.13,72.74
accept Royal Succession##50168 |goto 74.13,72.74
accept Sticky Situation##50162 |goto 74.13,72.74
stickystart "Collect_Royal_Jelly"
step
Leave the cave |goto 73.79,72.42 < 5 |walk
Follow the path down |goto 73.49,72.08 < 7 |only if walking
Follow the path |goto 73.48,71.21 < 7 |only if walking
Follow the path up |goto 73.86,70.59 < 7 |only if walking
Follow the path up |goto 74.26,70.25 < 7 |only if walking
Enter the cave |goto 74.62,71.07 < 5 |walk
kill Hive Mother##132341
|tip Inside the cave.
collect Hive Mother's Stinger##157839 |q 50168/1 |goto 74.81,71.51
step
label "Collect_Royal_Jelly"
Leave the cave |goto 74.61,71.07 < 5 |walk
Follow the path |goto 74.26,70.29 < 7 |only if walking
Kill enemies around this area
click Bee Hive+
|tip They look like small rope huts wih handles on top of them sitting on wooden boxes on the ground around this area.
collect 60 Royal Jelly##156709 |q 50162/1 |goto 73.52,69.77
step
Follow the path up |goto 73.40,71.04 < 7 |only if walking
Follow the path |goto 73.38,71.91 < 7 |only if walking
Enter the cave |goto 73.81,72.44 < 5 |walk
talk Raimond Mildenhall##132292
|tip Inside the cave.
turnin Royal Succession##50168 |goto 74.13,72.74
turnin Sticky Situation##50162 |goto 74.13,72.74
accept Honey Glazed Sam##50504 |goto 74.13,72.74
step
Leave the cave |goto 73.80,72.43 < 5 |walk
clicknpc Sam Robinson##134013
Rescue Sam Robinson |q 50504/1 |goto 72.80,72.25
step
talk Sam Robinson##134028
turnin Honey Glazed Sam##50504 |goto 72.80,72.25
accept Free the Farmhands##50264 |goto 72.80,72.25
accept Fetching Wrex##50493 |goto 72.80,72.25
step
_Next to you:_
talk Raimond Mildenhall
accept The Bee Team##50165
accept Wendigo Away##50534
stickystart "Rescue_Wrex"
stickystart "Rescue_Honey_Encased_Farmhands"
stickystart "Slay_Highlands_Maulers"
step
Follow the path |goto 72.39,72.42 < 7 |only if walking
Follow the path up |goto 71.92,72.98 < 7 |only if walking
Follow the path |goto 71.14,73.81 < 7 |only if walking
Continue following the path |goto 70.65,74.14 < 7 |only if walking
Continue following the path |goto 69.65,73.89 < 7 |only if walking
Continue following the path |goto 68.39,74.75 < 10 |only if walking
Continue following the path |goto 67.80,75.36 < 7 |only if walking
Follow the path |goto 67.26,75.46 < 7 |only if walking
Follow the path up |goto 66.87,75.94 < 7 |only if walking
Follow the path |goto 67.21,76.95 < 7 |only if walking
Follow the path |goto 67.20,77.49 < 7 |only if walking
Enter the cave |goto 66.91,77.82 < 5 |walk
use the Bee Pheromones##157851
|tip Use it on Bonerender inside the cave.
kill Bonerender##131537 |q 50534/1 |goto 65.87,79.43
step
_Next to you:_
talk Raimond Mildenhall
turnin Wendigo Away##50534
step
label "Rescue_Wrex"
Follow the path up |goto 66.62,78.20 < 5 |walk
Leave the cave |goto 66.94,77.83 < 5 |walk
Follow the path |goto 67.27,77.15 < 7 |only if walking
Continue following the path |goto 66.87,75.76 < 7 |only if walking
click Crystallized Honey+
|tip They look like big yellow rocks on the ground inside the caves around this area.
|tip They will appear on your minimap as yellow dots.
Rescue Wrex |q 50493/1 |goto 68.44,74.73
step
label "Rescue_Honey_Encased_Farmhands"
clicknpc Honey Encased Farmhand##133154+
|tip They look like people frozen in yellow globs on the ground around this area.
Rescue #8# Honey Encased Farmhands |q 50264/1 |goto 68.44,74.73
step
label "Slay_Highlands_Maulers"
use the Bee Pheromones##157851
|tip Use it on Honey-Crazed Maulers around this area.
Kill Mauler enemies around this area
Slay #12# Highlands Maulers |q 50165/1 |goto 68.44,74.73
step
_Next to you:_
talk Raimond Mildenhall
turnin The Bee Team##50165
turnin Free the Farmhands##50264
turnin Fetching Wrex##50493
accept Back to the Lab##50553
step
Follow the path down |goto 69.61,72.18 < 7 |only if walking
Follow the path down |goto 70.22,70.76 < 7 |only if walking
Follow the path |goto 70.52,69.27 < 7 |only if walking
Run down the stairs |goto 70.75,69.13 < 3 |walk
Run down the stairs |goto 70.78,69.36 < 3 |walk
Follow the path |goto 70.92,69.35 < 3 |walk
talk Raimond Mildenhall##133204
|tip Downstairs inside the building.
turnin Back to the Lab##50553 |goto 71.00,69.23
step
Run up the stairs |goto 70.92,69.36 < 3 |walk
Run up the stairs |goto 70.75,69.33 < 3 |walk
Follow the path |goto 70.75,69.15 < 3 |walk
Follow the path down |goto 70.29,67.62 < 7 |only if walking
Follow the path down |goto 69.83,66.45 < 7 |only if walking
Follow the path |goto 68.26,65.00 < 7 |only if walking
Follow the path up |goto 68.31,63.02 < 7 |only if walking
Follow the path up |goto 68.62,62.28 < 7 |only if walking
Follow the road |goto 68.44,60.86 < 7 |only if walking
Follow the path down |goto 68.34,59.83 < 7 |only if walking
Follow the path down |goto 67.17,58.30 < 10 |only if walking
Follow the path |goto 66.55,57.21 < 7 |only if walking
talk Brother Pike##130714
turnin Storm's Judgment##49997 |goto 66.31,56.48
accept Voices Below##49998 |goto 66.31,56.48
step
Run up the stairs |goto 66.80,55.79 < 5 |only if walking
Follow the path |goto 67.03,55.70 < 5 |only if walking
Follow the path up |goto 67.40,56.07 < 5 |only if walking
Follow the road |goto 67.82,55.77 < 7 |only if walking
Follow the road |goto 67.80,53.99 < 7 |only if walking
Cross the bridge |goto 67.11,52.38 < 7 |only if walking
talk Brother Pike##134642
Ask him _"What is it?"_
Watch the dialogue
Investigate the Omen |q 49998/1 |goto 66.42,50.65
step
Follow the path |goto 66.14,50.22 < 7 |only if walking
Follow the path |goto 65.64,49.08 < 7 |only if walking
talk Sister Alison##142634
home Tidecross |goto 65.47,48.30
step
Run up the stairs |goto 65.36,48.07 < 3 |only if walking
talk Marla Featherfoot##134696
fpath Tidecross |goto 65.57,48.00
step
talk Brother Pike##134639
turnin Voices Below##49998 |goto 66.17,47.45
accept Beneath the Veil##50594 |goto 66.17,47.45
step
talk Taelia##134623
accept No Quarter##50595 |goto 66.31,47.09
stickystart "Accept_A_Bloody_Mess"
stickystart "Slay_Skeletons"
stickystart "Kill_Tidesage_Seacallers"
step
Follow the path |goto 66.83,46.02 < 7 |only if walking
Follow the path |goto 67.09,45.21 < 7 |only if walking
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Southern Grasp |q 50594/1 |goto 67.43,44.36
step
label "Accept_A_Bloody_Mess"
Kill enemies around this area
accept A Bloody Mess##50593 |goto 67.00,44.83
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Tideblood"
step
Follow the path |goto 66.70,44.78 < 10 |only if walking
Run up the stairs |goto 65.96,44.63 < 5 |only if walking
Follow the path |goto 65.71,44.40 < 5 |only if walking
Continue following the path |goto 65.57,43.43 < 5 |only if walking
Continue following the path |goto 65.80,42.06 < 5 |only if walking
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Western Grasp |q 50594/2 |goto 66.00,41.80
step
Run down the stairs |goto 66.11,41.43 < 5 |only if walking
Follow the path |goto 66.40,41.30 < 5 |only if walking
Follow the path down |goto 66.62,41.38 < 7 |only if walking
Follow the path |goto 66.83,41.98 < 7 |only if walking
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Eastern Grasp |q 50594/3 |goto 67.66,42.32
step
label "Collect_Tideblood"
kill Frothing Tideblood##130116+
click Sealed Tideblood+
|tip They look like wooden barrels on the ground around this area.
collect 20 Tideblood |q 50593/1 |goto 66.91,42.06
step
label "Slay_Skeletons"
Kill enemies around this area
|tip Only enemies that look like skeletons will count for this quest goal.
Slay #8# Skeletons |q 50595/1 |goto 66.91,42.06
step
label "Kill_Tidesage_Seacallers"
kill 4 Tidesage Seacaller##130094 |q 50595/2 |goto 66.91,42.06
step
Follow the path |goto 66.06,44.42 < 15 |only if walking
Continue following the path |goto 66.71,45.29 < 7 |only if walking
Cross the bridge |goto 66.84,45.99 < 7 |only if walking
talk Taelia##134623
turnin No Quarter##50595 |goto 66.31,47.09
step
talk Brother Pike##134639
turnin A Bloody Mess##50593 |goto 66.17,47.45
turnin Beneath the Veil##50594 |goto 66.17,47.45
accept Forbidden Rites##50608 |goto 66.17,47.45
accept Gathering Storm##50610 |goto 66.17,47.45
step
talk Taelia##134623
accept From the Maw of Madness##50609 |goto 66.31,47.10
stickystart "Disrupt_Rituals"
stickystart "Slay_Kthir"
step
Follow the path |goto 66.85,45.99 < 7 |only if walking
Run up the stairs |goto 66.94,44.19 < 3 |only if walking
Follow the path |goto 67.32,44.10 < 3 |only if walking
Follow the path |goto 67.31,43.84 < 3 |only if walking
Run up the stairs |goto 67.15,43.67 < 5 |only if walking
Run up the stairs |goto 66.94,43.72 < 3 |only if walking
Follow the path |goto 66.81,43.75 < 3 |only if walking
Follow the path |goto 66.64,43.75 < 3 |walk
Find Samuel Williams |q 50609/1 |goto 66.56,43.73
step
Follow the path |goto 66.47,43.47 < 3 |walk
Watch the dialogue
kill Brother Halsey##134999 |q 50609/2 |goto 66.51,43.48
|tip Inside the ship.
step
kill Samuel Williams##134983
|tip Inside the ship.
|tip He will eventually surrender.
Save Samuel Williams |q 50609/3 |goto 66.37,43.50
step
Follow the path |goto 66.63,43.75 < 3 |c |q 50610
step
Run up the stairs |goto 66.70,43.44 < 3 |only if walking
Follow the path |goto 66.53,43.45 < 3 |only if walking
Follow the path |goto 66.43,43.29 < 3 |only if walking
click Focusing Rod
Place a Focusing Rod |q 50610/1 |goto 66.27,43.53 |count 1
step
Follow the path |goto 66.41,43.66 < 3 |only if walking
Run down the stairs |goto 66.54,43.47 < 3 |only if walking
Follow the path |goto 66.70,43.43 < 3 |only if walking
Run down the stairs |goto 66.76,43.09 < 3 |only if walking
Follow the path |goto 66.89,43.06 < 3 |q 50610
step
Follow the path |goto 66.88,43.18 < 3 |walk
click Focusing Rod
|tip Inside the ship.
Place a Focusing Rod |q 50610/1 |goto 66.78,43.51 |count 2
step
Follow the path |goto 66.88,43.18 < 3 |walk
Run down the stairs |goto 67.01,43.07 < 5 |only if walking
Run up the stairs |goto 67.74,42.93 < 3 |only if walking
Follow the path |goto 67.84,42.93 < 3 |only if walking
click Focusing Rod
Place a Focusing Rod |q 50610/1 |goto 67.95,43.19 |count 3
step
Run down the stairs |goto 67.83,42.91 < 3 |only if walking
Follow the path |goto 67.70,42.98 < 5 |c |q 50610
step
Run down the stairs |goto 67.86,43.20 < 3 |walk
Follow the path |goto Stormsong Valley/1 77.67,42.66 < 3 |walk
Run down the stairs |goto Stormsong Valley/1 77.31,48.84 < 3 |c |q 50610
step
Follow the path |goto 72.73,50.34 < 5 |only if walking
Follow the path |goto 65.82,51.60 < 5 |only if walking
click Focusing Rod
|tip Inside the ship.
Place a Focusing Rod |q 50610/1 |goto 62.61,44.49 |count 4
step
label "Disrupt_Rituals"
use the Tidal Kris##158465
|tip Use it next to Fanatical Acolytes around this area.
|tip They look like humans kneeling on purple flaming runes on the ground around this area on the ship.
Disrupt #6# Rituals |q 50608/2 |goto 62.61,44
step
label "Slay_Kthir"
Kill enemies around this area
|tip On the ship.
Slay #15# K'thir |q 50608/1 |goto 62.61,44
step
Follow the path |goto Stormsong Valley/0 65.29,47.97 < 7 |only if walking
talk Samuel Williams##134641
turnin From the Maw of Madness##50609 |goto Stormsong Valley/0 66.02,47.11
step
talk Brother Pike##134639
turnin Forbidden Rites##50608 |goto 66.16,47.45
turnin Gathering Storm##50610 |goto 66.16,47.45
accept Storm's Vengeance##50611 |goto 66.16,47.45
step
Watch the dialogue
Destroy the Abyssal Melody |q 50611/1 |goto 66.17,47.26
|tip Use the "Thundering Blast" ability.
|tip It appears as a button on the screen.
step
talk Brother Pike##134639
turnin Storm's Vengeance##50611 |goto 66.17,47.45
accept A House Divided##50612 |goto 66.17,47.45
step
Follow the path up |goto 65.41,47.20 < 7 |only if walking
Follow the path up |goto 64.67,46.32 < 7 |only if walking
Follow the path up |goto 63.80,44.39 < 7 |only if walking
talk Brother Pike##135534
turnin A House Divided##50612 |goto 63.16,43.15
accept The Storm Awakens##50777 |goto 63.16,43.15
step
talk Samuel Williams##136053
accept Twisted Intentions##50778 |goto 63.10,43.16
step
Follow the road |goto 63.30,42.65 < 7 |c |q 50778
step
accept A Clean Slate##50779 |goto 63.25,40.73
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Rally_Defectors"
stickystart "Purge_The_Corruption"
step
Follow the path up |goto 62.68,40.63 < 7 |only if walking
Follow the path |goto 61.66,41.25 < 7 |only if walking
talk Tideguard Victoria##135517
accept Oathbound##50780 |goto 60.89,41.38
step
Follow the path |goto 60.79,41.02 < 7 |only if walking
Run up the stairs |goto 60.52,41.18 < 5 |only if walking
Follow the path |goto 60.42,41.25 < 5 |only if walking
kill Bound Tempest##135457 |q 50778/1 |goto 59.91,41.39
|tip Attack the Drowned Acendants channeling on him to be able to attack him.
step
Run up the stairs |goto 59.65,40.85 < 5 |only if walking
Follow the path |goto 59.62,40.62 < 5 |only if walking
Enter the building |goto 59.82,39.87 < 3 |walk
Leave the building |goto 59.10,39.34 < 3 |walk
click Rod of Tides
Claim the Rod of Tides |q 50780/1 |goto 59.14,38.71
step
Kill the enemies that attack
click Rod of Tides
collect Rod of Tides##159157 |q 50780/2 |goto 59.14,38.71
step
Enter the building |goto 59.09,39.34 < 3 |walk
Follow the path |goto 59.70,39.46 < 5 |walk
Leave the building |goto 60.06,39.15 < 3 |walk
Follow the path |goto 60.46,38.35 < 7 |only if walking
Follow the path |goto 60.88,38.13 < 7 |only if walking
kill Enthralled Tidefury##135506 |q 50778/2 |goto 61.76,38.08
|tip Attack the Drowned Hierarchs channeling on him to be able to attack him.
step
label "Rally_Defectors"
click Locked Door+
|tip They look like wooden front doors of buildings around this area.
talk Friendly NPC's around this area
|tip The ones inside buildings will appear on your minimap as yellow dots.
Tell them _"The storm awakens."_
Also tell them _"We can still stop Lord Stormsong."_
Also tell them _"The Storm's Wake grows. Are you with us?"_
Rally #12# Defectors |q 50777/1 |goto 60.72,38.15
step
label "Purge_The_Corruption"
Kill enemies around this area
click Lord Stormsong+
|tip They look like large statues of a human raising his hands on the ground around this area.
clicknpc Deep Terror##135670+
|tip They look like huge blue squid tentacles reaching upward on the ground around this area.
clicknpc Books+
|tip They look like floating books with various names hovering close to the ground around this area.
Purge the Corruption |q 50779/1 |goto 60.72,38.15
|only if havequest(50779) or completedq(50779)
step
Run up the stairs |goto 60.13,38.12 < 5 |only if walking
talk Taelia##136498
turnin The Storm Awakens##50777 |goto 60.03,37.89
turnin Twisted Intentions##50778 |goto 60.03,37.89
accept The Abyssal Council##50783 |goto 60.03,37.89
step
Cross the bridge |goto 59.48,37.16 < 7 |only if walking
Run up the stairs |goto 58.98,36.46 < 5 |only if walking
Enter the building |goto 58.71,36.14 < 5 |walk
kill Wavespeaker Reid##135985 |q 50783/1 |goto 58.21,35.40
|tip Inside the building.
step
Follow the path |goto 58.55,35.89 < 3 |walk
Leave the building |goto 58.71,36.14 < 3 |walk
Cross the bridge |goto 59.03,36.50 < 7 |only if walking
Follow the path |goto 59.48,37.15 < 7 |only if walking
Run down the stairs |goto 60.02,38.02 < 5 |only if walking
Follow the path |goto 60.15,38.13 < 5 |only if walking
Follow the path |goto 60.44,38.07 < 7 |only if walking
Cross the bridge |goto 61.25,37.12 < 7 |only if walking
talk Tideguard Victoria##136497
turnin Oathbound##50780 |goto 61.80,36.29
step
talk Taelia##136339
turnin The Abyssal Council##50783 |goto 61.76,36.25
step
talk Tideguard Victoria##136497
accept Eye of the Storm##50784 |goto 61.80,36.29
step
talk Tideguard Victoria##136497
Tell her _"I am ready."_
Watch the dialogue
Begin Following Tideguard Victoria |goto 61.80,36.29 > 10 |c |q 50784
step
Follow the path up |goto 61.92,35.37 < 7 |only if walking
Follow the path |goto 62.20,35.01 < 7 |only if walking
Cross the bridge |goto 62.99,35.53 < 7 |only if walking
Follow the road |goto 63.64,35.68 < 7 |only if walking
Follow the road |goto 64.72,36.34 < 7 |only if walking
Cross the bridge |goto 65.87,34.96 < 7 |only if walking
Follow the path |goto 66.48,34.96 < 7 |only if walking
Run up the stairs |goto 67.01,35.11 < 5 |only if walking
Follow the path |goto 67.20,35.17 < 5 |only if walking
Watch the dialogue
|tip Follow Tideguard Victoria as she walks.
Kill the enemies that attack
Escort Tideguard Victoria |q 50784/1 |goto 67.43,35.26
step
click Whirling Torrent
Take the Whirling Torrent |q 50784/2 |goto 67.86,35.38
step
Fly to the Path of Storms |goto 69.57,35.82 < 7 |c |q 50784 |notravel
step
talk Brother Pike##136933
turnin Eye of the Storm##50784 |goto 69.90,36.12
accept A Bridge Too Far##50781 |goto 69.90,36.12
step
Watch the dialogue
|tip Use the "Rod of Tides" ability.
|tip It appears as a button on the screen.
Open the Path of Storms |q 50781/1 |goto 70.17,36.08
step
talk Brother Pike##136933
turnin A Bridge Too Far##50781 |goto 70.32,36.14
accept Lost and Forgotten##51278 |goto 70.32,36.14
accept Sealed Fate##51320 |goto 70.32,36.14
stickystart "Fill_The_Dead_Ringer"
step
Cross the bridge |goto 70.65,36.25 < 7 |only if walking
Follow the path |goto 72.42,37.06 < 7 |only if walking
Run up the stairs |goto 73.22,37.46 < 5 |only if walking
Follow the path up |goto 74.13,38.23 < 7 |only if walking
Follow the path up |goto 75.36,37.92 < 7 |only if walking
Follow the path |goto 75.48,37.43 < 7 |only if walking
Run up the stairs |goto 75.21,36.74 < 5 |only if walking
click Tidemother's Wrath
Destroy the Tidemother's Wrath |q 51320/1 |goto 74.87,35.97
step
Follow the path up |goto 74.56,35.49 < 7 |only if walking
Cross the bridge |goto 74.18,34.37 < 5 |only if walking
Follow the path |goto 73.96,33.60 < 5 |only if walking
Continue following the path |goto 73.77,33.12 < 7 |only if walking
Follow the path up |goto 73.11,32.39 < 7 |only if walking
Follow the path |goto 72.85,32.09 < 7 |only if walking
Run down the stairs |goto 72.33,32.01 < 5 |only if walking
Follow the path |goto 71.93,31.55 < 5 |only if walking
click Tidemother's Radiance
Destroy the Tidemother's Radiance |q 51320/2 |goto 71.56,30.28
step
Run up the stairs |goto 72.02,29.81 < 5 |only if walking
Run up the stairs |goto 72.48,29.68 < 7 |only if walking
Follow the path |goto 72.85,29.95 < 5 |only if walking
click Tidemother's Pride
Destroy the Tidemother's Pride |q 51320/3 |goto 73.41,30.19
step
_Next to you:_
talk Brother Pike
turnin Sealed Fate##51320
step
label "Fill_The_Dead_Ringer"
Kill enemies around this area
Fill the Dead Ringer |q 51278/1 |goto 72.93,31.11
step
_Next to you:_
talk Brother Pike
turnin Lost and Forgotten##51278
accept The Final Ascent##51319
step
Run up the stairs |goto 73.72,31.01 < 5 |only if walking
use the Dead Ringer##160056
Watch the dialogue
Open the Tempest Gate |q 51319/1 |goto 74.20,30.69
step
Enter the building |goto 74.34,30.61 < 3 |walk
Follow the path |goto 74.57,30.46 < 3 |walk
Follow the path up |goto 74.81,29.58 < 3 |walk
Follow the path |goto 74.53,28.64 < 3 |walk
Leave the building |goto 74.43,28.32 < 3 |walk
Follow the path |goto 73.76,26.89 < 7 |only if walking
Follow the path up |goto 73.57,26.03 < 7 |only if walking
Follow the path |goto 73.66,25.22 < 7 |only if walking
Run up the stairs |goto 73.95,24.76 < 5 |only if walking
Run up the stairs |goto 74.59,24.84 < 5 |only if walking
Run up the stairs |goto 75.07,24.89 < 7 |only if walking
Follow the path |goto 75.38,25.21 < 5 |only if walking
Run up the stairs |goto 75.49,26.14 < 5 |only if walking
talk Brother Pike##137506
turnin The Final Ascent##51319 |goto 75.61,27.05
accept Storm's End##50824 |goto 75.61,27.05
step
Watch the dialogue
kill Azshj'thul the Drowned##137197 |q 50824/1 |goto 76.62,29.38
step
Follow the path |goto 77.11,28.19 < 7 |only if walking
Follow the path up |goto 77.81,27.54 < 7 |only if walking
Follow the path up |goto 78.12,27.98 < 7 |only if walking
Follow the path up |goto 78.16,28.50 < 7 |only if walking
talk Brother Pike##137691
turnin Storm's End##50824 |goto 78.33,28.77
accept Shrine of the Storm: Whispers Below##50825 |goto 78.33,28.77
step
talk Taelia##137692
accept A New Dawn##50733 |goto 78.33,28.87
step
talk Galeheart##137693
fpath Shrine of the Storm |goto 78.32,29.01
step
Follow the path |goto Boralus/0 68.10,15.59 < 7 |only if walking
Jump down here |goto Boralus/0 70.28,17.52 < 5 |only if walking
Run up the stairs |goto Boralus/0 69.16,21.17 < 5 |only if walking
Enter the building |goto Boralus/0 68.87,21.12 < 3 |walk
Follow the path |goto Boralus/0 67.81,20.87 < 5 |walk
Run down the stairs |goto Boralus/0 67.45,21.35 < 3 |walk
Run down the stairs |goto Boralus/0 67.40,22.84 < 3 |walk
talk Taelia##121235
|tip Inside the building.
turnin A New Dawn##50733 |goto 68.15,21.99
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign",{
author="support@zygorguides.com",
description="This guide will walk you through the Alliance War Campaign for Battle for Azeroth.",
condition_suggested=function() return level>=110 end,
},[[
step
Unlock the War Campaign |condition completedq(47189)
|tip Use the "Intro & Quest Zone Choice" guide to accomplish this.
step
talk Genn Greymane##120788
|tip Inside the building.
accept The War Campaign##52654 |goto Boralus/0 68.05,22.18
step
Run up the stairs |goto 67.51,22.88 < 3 |walk
Leave the building |goto 67.10,23.35 < 3 |walk
Run up the ramp |goto 67.41,25.17 < 3 |only if walking
Follow the path |goto 68.04,25.29 < 5 |only if walking
Cross the bridge |goto 69.27,25.71 < 3 |only if walking
talk Halford Wyrmbane##135612
turnin The War Campaign##52654 |goto 69.27,27.01
accept The War Cache##52544 |goto 69.27,27.01
step
Gather #100# War Resources |q 52544/1
|tip Gather these mainly from treasure chests.
|tip You will also occasionally get some from completing quests as you level.
|tip Treasure chests appear in random locations in leveling zones.
|tip As you complete quests, look for silver treasure chest icons on your minimap.
|tip Also look for silver arrows around the edge of your minimap.
|tip These silver arrows point you to nearby treasure chests.
step
Click the Complete Quest Box:
turnin The War Cache##52544
accept Time for War##53332
step
talk Halford Wyrmbane##135612
turnin Time for War##53332 |goto 69.27,27.00
step
talk Falstad Wildhammer##135618
accept Mission from the King##51714 |goto 69.73,27.79
step
talk Master Mathias Shaw##135614
turnin Mission from the King##51714 |goto 70.72,27.08
accept War of Shadows##51715 |goto 70.72,27.08
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
Complete the "War of Shadows" Mission |q 51715/1 |goto 70.56,27.19
|tip This mission will take 2 hours to complete.
step
talk Master Mathias Shaw##135614
turnin War of Shadows##51715 |goto 70.72,27.09
accept Reinforcements##53074 |goto 70.72,27.09
step
talk Master Mathias Shaw##135614
Tell him _"I require reinforcements."_
|tip Recruit 1 Alliance Troop.
Order Troops |q 53074/1 |goto 70.72,27.09
step
talk Master Mathias Shaw##135614
turnin Reinforcements##53074 |goto 70.72,27.09
step
Reach Level 112 |ding 112
|tip You must be at least level 112 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
accept The Zandalar Campaign##51569 |goto 69.27,26.99
step
click Zandalar Campaign
|tip Choose the Zuldazar zone.
accept Foothold: Zuldazar##51570 |goto 69.38,26.98
step
Click the Complete Quest Box:
turnin Foothold: Zuldazar##51570
step
label "Choose_A_Foothold"
Choose a Foothold |q 51569/1 |goto 69.38,26.98
step
talk Halford Wyrmbane##135612
turnin The Zandalar Campaign##51569 |goto 69.27,26.99
step
talk Halford Wyrmbane##135612
accept Zuldazar Foothold##51308 |goto 69.27,26.99
step
talk Halford Wyrmbane##135612
Ask him _"What's your plan, High Commander?"_
Watch the dialogue
Listen to Halford Wyrmbane's Battle Plan |q 51308/1 |goto 69.27,26.99
step
Run up the stairs |goto 69.09,26.44 < 3 |only if walking
Follow the path |goto 68.84,26.41 < 3 |only if walking
talk Grand Admiral Jes-Tereth##135681
Tell her _"Set sail for Zuldazar."_
Speak with Jes-Tereth to Travel to Zuldazar |q 51308/2 |goto 67.95,26.70
step
Travel to Zuldazar |goto Zuldazar/0 80.22,55.23 < 10 |noway |c |q 51308
step
Follow the path |goto 79.93,55.18 < 7 |only if walking
Follow the path |goto 78.90,55.27 < 7 |only if walking
Follow the path up |goto 78.36,55.46 < 7 |only if walking
Continue up the path |goto 77.72,55.27 < 7 |only if walking
Follow the path |goto 77.58,55.01 < 7 |only if walking
talk Brigadier Thom##136197
turnin Zuldazar Foothold##51308 |goto 77.54,54.58
accept The Troll's Tale##51201 |goto 77.54,54.58
step
talk Captured Zandalari Troll##143690
Tell him _"Tell us everything, Zandalari."_
Watch the dialogue
Speak with the Captured Zandalari Troll |q 51201/1 |goto 77.50,54.60
step
talk Brigadier Thom##136197
turnin The Troll's Tale##51201 |goto 77.54,54.58
accept Granting a Reprieve##51190 |goto 77.54,54.58
accept Disarming the Cannons##51544 |goto 77.54,54.58
step
talk Kaolin##138128
fpath Castaway Encampment |goto 77.66,54.45
step
talk Medic Feorea##136195
accept Save Them All##51191 |goto 77.13,55.54
step
talk Degdod##136192
accept A Lack of Surplus##51192 |goto 77.13,55.60
accept That One's Mine##51193 |goto 77.13,55.60
stickystart "Collect_Bundles_Of_Supplies"
stickystart "Heal_Injured_Sailors"
stickystart "Slay_Forsaken"
stickystart "Slay_Zandalari"
step
Follow the path down |goto 77.55,55.24 < 7 |only if walking
Follow the path |goto 78.48,55.46 < 7 |only if walking
Continue following the path |goto 79.37,54.67 < 10 |only if walking
Continue following the path |goto 80.72,54.77 < 7 |only if walking
Continue following the path |goto 81.99,54.54 < 7 |only if walking
click Rappelling Rope
Board the Ship |goto 83.29,54.64 < 3 |c |q 51544
step
click Cannon
Destroy the Cannon |q 51544/1 |goto 83.34,54.67 |count 1
step
Run up the stairs |goto 83.33,54.59 < 3 |only if walking
click Cannon
Destroy the Cannon |q 51544/1 |goto 83.32,54.47 |count 2
step
click Cannon
Destroy the Cannon |q 51544/1 |goto 83.31,54.29 |count 3
step
Jump down here |goto 83.26,54.49 < 5 |only if walking
Follow the path |goto 82.75,53.31 < 10 |only if walking
Follow the path |goto 82.58,52.39 < 7 |only if walking
kill Major Alan Hawkins##136906
|tip He walks around this area.
collect Degdod's Hammer##159779 |q 51193/1 |goto 81.93,51.33
step
label "Collect_Bundles_Of_Supplies"
click 7th Legion Supply Crate+
|tip They look like brown wooden boxes on the ground and underwater around this area.
collect 8 Bundle of Supplies##160249 |q 51192/1 |goto 80.72,52.75
step
label "Heal_Injured_Sailors"
clicknpc Injured Shipwrecked Sailor##136075+
|tip They look like dead human soldiers on the ground around this area.
Heal #8# Injured Sailors |q 51191/1 |goto 80.72,52.75
step
label "Slay_Forsaken"
Kill Forsaken enemies around this area
Slay #8# Forsaken |q 51190/1 |goto 80.72,52.75
step
label "Slay_Zandalari"
Kill Zandalari enemies around this area
Slay #8# Zandalari |q 51190/2 |goto 80.72,52.75
step
Follow the path |goto 78.75,55.24 < 15 |only if walking
Follow the path up |goto 78.38,55.48 < 7 |only if walking
Follow the path up |goto 77.73,55.28 < 7 |only if walking
Follow the path |goto 77.58,55.07 < 7 |only if walking
talk Brigadier Thom##136197
turnin Granting a Reprieve##51190 |goto 77.54,54.58
turnin Disarming the Cannons##51544 |goto 77.54,54.58
step
Follow the path |goto 77.45,55.02 < 7 |only if walking
talk Medic Feorea##136195
turnin Save Them All##51191 |goto 77.13,55.54
step
talk Degdod##136192
turnin A Lack of Surplus##51192 |goto 77.13,55.59
turnin That One's Mine##51193 |goto 77.13,55.59
step
Watch the dialogue
talk Kelsey Steelspark##135620
accept Xibala##51418 |goto 77.50,55.22
step
Follow the path down |goto 77.74,55.27 < 7 |only if walking
Follow the path |goto 78.49,55.40 < 7 |only if walking
Follow the path |goto 79.96,55.18 < 7 |only if walking
click Kul Tiran Rowboat
Take the Rowboat to Xibala |q 51418/1 |goto 80.32,55.39
step
Watch the dialogue
Travel to Xibala |goto 38.32,72.80 < 7 |c |q 51418 |notravel
step
Follow the path |goto 38.40,72.40 < 7 |only if walking
Continue following the path |goto 38.94,72.09 < 7 |only if walking
Continue following the path |goto 40.09,71.73 < 7 |only if walking
Follow the path |goto 40.34,71.42 < 7 |only if walking
talk Paula Waverunner##128041
fpath Xibala |goto 40.59,71.45
step
talk Anvil-Thane Thurgaden##137401
turnin Xibala##51418 |goto 40.75,70.84
accept Mole Machinations##51331 |goto 40.75,70.84
accept Rocks of Ragnaros##51309 |goto 40.75,70.84
stickystart "Collect_Firelands_Slags"
step
Follow the path down |goto 40.24,71.51 < 7 |only if walking
click Dark Iron Mole Machine+
|tip They look like huge drilling machines on the ground around this area.
Open #4# Dark Iron Mole Machines |q 51331/1 |goto 39.29,73.05
step
label "Collect_Firelands_Slags"
click Firelands Slag+
|tip They look like small metal lanterns on the ground around this area.
collect 9 Firelands Slag##159910 |q 51309/1 |goto 39.29,73.05
step
Follow the path |goto 39.60,72.46 < 7 |only if walking
Continue following the path |goto 40.18,71.57 < 7 |only if walking
talk Anvil-Thane Thurgaden##137401
turnin Mole Machinations##51331 |goto 40.75,70.84
turnin Rocks of Ragnaros##51309 |goto 40.75,70.84
accept Fragment of the Firelands##51359 |goto 40.75,70.84
step
clicknpc Unstable Magma##137378
Stabilize the Magma Elemental |q 51359/1 |goto 40.65,70.88
step
Follow the path |goto 40.22,71.53 < 7 |only if walking
Continue following the path |goto 39.23,72.72 < 10 |only if walking
Continue following the path |goto 38.53,72.34 < 10 |only if walking
Kill Bilgewater enemies around this area
|tip Use the abilities on your action bar.
Slay #200# Bilgewater Goblins |q 51359/2 |goto 36.49,71.64
step
Stop Controlling the Magma Elemental |goto 40.65,70.88 < 30 |noway |c |q 51359
|tip Use the "Dismiss Magma Elemental" ability on your action bar.
step
talk Anvil-Thane Thurgaden##137401
turnin Fragment of the Firelands##51359 |goto 40.75,70.84
step
talk Kelsey Steelspark##135620
accept Champion: Kelsey Steelspark##52003 |goto 40.76,70.67 |instant
step
talk Kelsey Steelspark##135620
accept Return to Boralus##51968 |goto 40.76,70.67
step
talk Daria Smithson##143334
Tell her _"Take us back to Boralus."_
Speak to Daria Smithson |q 51968/1 |goto 40.46,71.03
step
Return to Boralus |goto Boralus/0 70.22,27.06 < 15 |noway |c |q 51968
step
talk Halford Wyrmbane##135612
turnin Return to Boralus##51968 |goto 69.27,27.00
step
Reach Level 114 |ding 114
|tip You must be at least level 114 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
accept The Ongoing Campaign##51961 |goto 69.27,27.00
stickystart "Choose_A_Foothold_2"
step
click Zandalar Campaign
|tip Choose the Nazmir zone.
accept Foothold: Nazmir##51571 |goto 69.38,26.98
step
Click the Quest Complete Box:
turnin Foothold: Nazmir##51571
step
label "Choose_A_Foothold_2"
Choose a Foothold |q 51961/1 |goto 69.38,26.98
step
talk Halford Wyrmbane##135612
turnin The Ongoing Campaign##51961 |goto 69.27,26.99
accept Heart of Darkness##51088 |goto 69.27,26.99
step
talk Alleria Windrunner##143846
accept Adapting Our Tactics##53583 |goto 70.64,27.39
step
talk Alleria Windrunner##143846
Tell her _"Show me our research options."_
Choose an Upgrade to Pursue |q 53583/1 |goto 70.64,27.39
step
talk Alleria Windrunner##143846
turnin Adapting Our Tactics##53583 |goto 70.64,27.39
step
Run up the stairs |goto 69.09,26.45 < 3 |only if walking
Follow the path |goto 68.83,26.44 < 3 |only if walking
talk Grand Admiral Jes-Tereth##135681
Tell her _"Set sail for Nazmir."_
Speak with Jes-Tereth to Travel to Nazmir |q 51088/1 |goto 67.95,26.69
step
Watch the dialogue
Travel Down the Razorjaw River |goto Nazmir/0 61.08,37.72 < 7 |c |q 51088 |notravel
step
Watch the dialogue
Travel to Fort Victory |q 51088/2 |goto 61.65,40.75
step
talk Priestess Islara##135082
home Fort Victory |goto 61.95,40.79 |q 51177 |future
step
talk Selina Duskraven##134451
fpath Fort Victory |goto 62.35,41.38
step
talk Brann Bronzebeard##136432
turnin Heart of Darkness##51088 |goto 62.03,41.60
accept Dubious Offering##51129 |goto 62.03,41.60
step
Follow the path |goto 62.12,41.81 < 5 |only if walking
Run down the stairs |goto 62.04,42.00 < 5 |only if walking
Follow the path |goto 61.95,42.26 < 5 |only if walking
clicknpc Zalamar Messenger Bat##136457
Fly the Bat to Zalamar |q 51129/1 |goto 62.12,42.49
step
Fly to Zalamar |goto 31.44,47.04 < 7 |c |q 51129 |notravel
step
talk Brann Bronzebeard##136641
|tip Inside the cave.
turnin Dubious Offering##51129 |goto 31.16,46.71
accept Blood of Hir'eek##51167 |goto 31.16,46.71
accept Honoring the Fallen##51150 |goto 31.16,46.71
stickystart "Recover_Dog_Tags"
step
Follow the path |goto 31.02,46.56 < 5 |walk
Follow the path |goto 30.55,46.18 < 5 |walk
kill Blood Witch Pakkala##136565 |q 51167/1 |goto 29.15,46.58
|tip Inside the cave.
step
label "Recover_Dog_Tags"
clicknpc Fort Victory Footman##136575+
|tip They look like dead Alliance soldiers on the ground around this area inside the cave.
Recover #7# Dog Tags |q 51150/1 |goto 30.42,46.16
step
Follow the path |goto 30.70,46.25 < 7 |walk
talk Brann Bronzebeard##136641
|tip Inside the cave.
turnin Blood of Hir'eek##51167 |goto 31.15,46.71
turnin Honoring the Fallen##51150 |goto 31.15,46.71
accept Zealots of Zala'mar##51168 |goto 31.15,46.71
stickystart "Slay_Zalamar_Zealots"
step
Follow the path up |goto 31.51,46.45 < 5 |walk
Follow the path up |goto 31.57,45.79 < 5 |walk
Continue up the path |goto 31.91,45.59 < 5 |only if walking
Follow the path |goto 32.40,46.36 < 5 |c |q 51168
step
label "Slay_Zalamar_Zealots"
Follow the path |goto 32.21,47.07 < 5 |walk
Follow the path |goto 32.04,47.75 < 5 |walk
Follow the path up |goto 31.84,48.10 < 5 |walk
Follow the path up |goto 31.04,48.33 < 5 |walk
Kill Zalamar enemies around this area
|tip Inside the cave.
Slay 10 Zalamar Zealot##127040 |q 51168/1 |goto 30.71,48.06
step
_Next to you:_
talk Brann Bronzebeard
turnin Zealots of Zala'mar##51168
accept Flight from the Fall##51169
step
clicknpc Zalamar Messenger Bat##136573
|tip They look like huge bats hanging upside down on wooden poles around this area inside the cave.
Fly a Bat to Fort Victory |q 51169/1 |goto 31.04,47.98
step
Return to Fort Victory |goto 62.16,42.49 < 7 |c |q 51169 |notravel
step
Run up the stairs |goto 61.97,42.10 < 5 |only if walking
Follow the path |goto 62.10,41.73 < 5 |only if walking
talk Brann Bronzebeard##136432
turnin Flight from the Fall##51169 |goto 62.03,41.60
accept Zul'Nazman##51281 |goto 62.03,41.60
step
Run down the stairs |goto 62.06,41.98 < 5 |only if walking
Follow the path |goto 61.77,42.11 < 5 |only if walking
Follow the path |goto 60.37,41.41 < 7 |only if walking
Cross the bridge |goto 59.73,40.96 < |only if walking
Cross the bridge |goto 58.88,40.13 < 7 |only if walking
Follow the path |goto 56.96,39.52 < 7 |only if walking
Cross the bridge |goto 55.69,39.76 < 7 |only if walking
Follow the path |goto 55.71,40.31 < 7 |only if walking
Cross the bridge |goto 55.24,41.19 < 7 |only if walking
Follow the path |goto 54.84,41.25 < 7 |only if walking
Cross the bridge |goto 52.47,41.26 < 7 |only if walking
Follow the path |goto 51.73,41.57 < 7 |only if walking
Follow the path down |goto 50.25,43.62 < 7 |only if walking
Follow the path down |goto 50.00,45.16 < 7 |only if walking
Follow the path |goto 50.36,47.38 < |only if walking
Continue following the path |goto 50.59,48.43 < 7 |only if walking
Cross the bridge |goto 50.65,49.24 < 7 |only if walking
Follow the path |goto 49.86,50.08 < 7 |only if walking
talk Brann Bronzebeard##136675
turnin Zul'Nazman##51281 |goto 49.97,50.90
accept Nazmani Cultists##51279 |goto 49.97,50.90
accept Offerings to G'huun##51280 |goto 49.97,50.90
stickystart "Slay_Nazmani_Trolls"
step
Follow the path |goto 49.65,50.76 < 7 |only if walking
Follow the path |goto 49.21,51.06 < 7 |only if walking
click Offering to G'huun+
|tip They look like red and grey vases with red mist bubbling out of the top of them inside the buildings around this area.
Destroy #8# Offerings to G'huun |q 51280/1 |goto 48.62,52.58
step
label "Slay_Nazmani_Trolls"
Kill Nazmani enemies around this area
Slay #15# Nazmani Trolls |q 51279/1 |goto 48.62,52.58
step
Follow the path |goto 48.11,53.65 < 7 |only if walking
Continue following the path |goto 47.70,54.55 < 7 |only if walking
Continue following the path |goto 47.05,55.29 < 7 |only if walking
Follow the path |goto 46.48,56.02 < 7 |only if walking
Cross the bridge |goto 46.04,56.40 < 7 |only if walking
talk Brann Bronzebeard##136675
turnin Nazmani Cultists##51279 |goto 45.71,57.46
turnin Offerings to G'huun##51280 |goto 45.71,57.46
accept Captain Conrad##51282 |goto 45.71,57.46
step
Follow the path |goto 45.44,58.44 < 7 |only if walking
Follow the path up |goto 45.05,58.89 < 5 |only if walking
Follow the path up |goto 44.95,58.63 < 5 |only if walking
Enter the building |goto 45.03,57.53 < 3 |walk
talk Captain Conrad##136568
|tip Inside the building.
turnin Captain Conrad##51282 |goto 45.00,57.15
accept Lessons of the Damned##51177 |goto 45.00,57.15
step
Leave the building |goto 45.03,57.50 < 3 |walk
Follow the path down |goto 45.03,58.20 < 5 |only if walking
Follow the path |goto 44.95,58.66 < 5 |only if walking
Follow the path |goto 45.50,58.93 < 7 |only if walking
Watch the dialogue
|tip Follow Captain Conrad as she walks.
Follow Captain Conrad |q 51177/1 |goto 45.70,59.73
step
kill Captain Conrad##136568 |q 51177/2 |goto 45.70,59.74
step
talk Brann Bronzebeard##136432
turnin Lessons of the Damned##51177 |goto 62.03,41.59
step
talk John J. Keeshan##139609
accept Champion: John J. Keeshan##52013 |goto 61.78,41.32
step
talk Brann Bronzebeard##136432
accept Return to Boralus##51967 |goto 62.03,41.60
step
Follow the path |goto 61.64,40.74 < 5 |only if walking
Follow the path |goto 61.68,40.21 < 7 |only if walking
talk Desha Stormwallow##139620
Tell her _"Take us back to Boralus."_
Speak to Desha Stormwallow |q 51967/1 |goto 62.06,40.07
step
Return to Boralus |goto Boralus/0 70.22,27.06 < 7 |noway |c |q 51967
step
talk Halford Wyrmbane##135612
turnin Return to Boralus##51967 |goto 69.27,27.00
step
Reach Level 118 |ding 118
|tip You must be at least level 118 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
accept The Final Foothold##52443 |goto 69.28,26.99
stickystart "Review_The_Final_Foothold"
step
click Zandalar Campaign
|tip Choose the Vaol'dun zone.
accept Foothold: Vol'dun##51572 |goto 69.38,26.98
step
Click the Quest Complete Box:
turnin Foothold: Vol'dun##51572
step
label "Review_The_Final_Foothold"
Review the Final Foothold |q 51961/1 |goto 69.38,26.98
step
talk Halford Wyrmbane##135612
turnin The Final Foothold##52443 |goto 69.28,26.99
accept Voyage to the West##51283 |goto 69.27,26.99
step
Run up the stairs |goto 69.08,26.44 < 5 |only if walking
Follow the path |goto 68.82,26.42 < 5 |only if walking
talk Grand Admiral Jes-Tereth##135681
Tell her _"Set sail for Vol'dun."_
Speak with Jes-Tereth to Sail to Vol'dun |q 51283/1 |goto 67.95,26.71
step
Travel to Vol'dun |goto Vol'dun/0 32.86,34.90 < 7 |noway |c |q 51283
step
talk Halford Wyrmbane##137867
turnin Voyage to the West##51283 |goto Vol'dun/0 32.91,34.86
accept Ooh Rah!##51170 |goto Vol'dun/0 32.91,34.86
step
click Rope Coil
Board the Landing Craft |q 51170/1 |goto 32.99,34.87
step
Ride the Boat to Shore |goto 35.28,33.16 < 7 |c |q 51170 |notravel
step
Follow the path |goto 36.80,33.03 < 7 |only if walking
Kill Sethrak enemies around this area
|tip Use the "Flare Gun" ability on them.
|tip It appears as a button on the screen.
Slay #15# Sethrak Forces |q 51170/2 |goto 37.50,33.08
step
Follow the path |goto 38.16,34.55 < 10 |only if walking
Run up the stairs |goto 39.26,35.66 < 5 |only if walking
Enter the building |goto 39.40,35.66 < 3 |walk
talk Sergeant Ermey##137008
|tip Inside the building.
turnin Ooh Rah!##51170 |goto 39.65,35.69
accept Establish a Beachhead##51229 |goto 39.65,35.69
step
Leave the building |goto 39.40,35.67 < 3 |walk
Run up the stairs |goto 38.54,35.67 < 5 |only if walking
Follow the path |goto 38.30,35.70 < 5 |only if walking
Follow the path |goto 38.09,35.69 < 7 |only if walking
click Alliance Banner
Plant the Alliance Banner |q 51229/1 |goto 37.55,35.32
step
talk Halford Wyrmbane##137213
turnin Establish a Beachhead##51229 |goto 37.71,35.83
accept Honor Bound##51349 |goto 37.71,35.83
step
Run down the stairs |goto 37.70,35.14 < 5 |only if walking
Follow the path |goto 37.65,34.65 < 5 |only if walking
talk Barnard "The Smasher" Baysworth##135383
fpath Shatterstone Harbor |goto 36.68,34.28
step
Follow the path |goto 37.00,34.38 < 7 |only if walking
Continue following the path |goto 38.55,34.72 < 7 |only if walking
Continue following the path |goto 39.10,36.40 < 7 |only if walking
Run up the stairs |goto 39.58,37.54 < 5 |only if walking
Follow the path |goto 39.73,37.78 < 5 |only if walking
Run up the stairs |goto 40.57,39.13 < 5 |only if walking
Follow the path |goto 40.73,39.34 < 5 |only if walking
Continue following the path |goto 40.72,39.92 < 7 |only if walking
Follow the path up |goto 39.28,42.16 < 7 |only if walking
talk Sergeant Ermey##137337
turnin Honor Bound##51349 |goto 38.96,42.92
accept Unexpected Aid##51350 |goto 38.96,42.92
accept Poisoned Barbs##51351 |goto 38.96,42.92
stickystart "Collect_Saltspine_Barbs"
step
click Prickly Pear##288646+
|tip They look like green plants with white flower bulbs on them on the ground around this area.
collect 8 Prickly Pear Root##160044 |q 51350/1 |goto 40.63,42.15
step
label "Collect_Saltspine_Barbs"
kill Saltspine Krolusk##136553+
collect 8 Saltspine Barb##159958 |q 51351/1 |goto 40.63,42.15
step
Follow the path up |goto 39.28,42.16 < 7 |only if walking
talk Sergeant Ermey##137337
turnin Unexpected Aid##51350 |goto 38.96,42.93
turnin Poisoned Barbs##51351 |goto 38.96,42.93
accept Antidote Application##51366 |goto 38.96,42.93
step
use the Antidote Salve##160045
|tip Use it on Vorrik.
Apply the Antidote Salve |q 51366/1 |goto 38.96,42.98
step
Watch the dialogue
talk Vorrik##137434
turnin Antidote Application##51366 |goto 38.96,42.98
accept Friends in Strange Places##51369 |goto 38.96,42.98
step
Watch the dialogue
clicknpc Tamed Pterrordax##137501
Mount the Pterrordax |q 51369/1 |goto 39.08,43.07
step
Watch the dialogue
Fly to the Sanctuary of the Devoted |q 51369/2 |goto 27.24,54.18 |notravel
step
talk Vorrik##137537
turnin Friends in Strange Places##51369 |goto 27.22,53.93
accept Defang the Faithless##51391 |goto 27.22,53.93
accept Break the Siege##51394 |goto 27.22,53.93
step
talk Sergeant Ermey##137543
accept Breaking Free##51389 |goto 27.18,53.91
step
Enter the building |goto 27.21,53.71 < 5 |walk
Leave the building |goto 27.22,51.41 < 5 |walk
Run up the stairs |goto 27.58,50.53 < 5 |only if walking
talk Vethiss##128695
fpath Sanctuary of the Devoted |goto 27.65,50.33
stickystart "Burn_Banners"
stickystart "Crush_Cannons"
stickystart "Shatter_Spires"
stickystart "Slay_Faithless"
step
Run down the stairs |goto 28.04,51.00 < 5 |only if walking
Run down the stairs |goto 28.64,51.02 < 5 |only if walking
Follow the path |goto 28.88,51.04 < 5 |only if walking
Continue following the path |goto 29.47,51.79 < 7 |only if walking
Continue following the path |goto 29.60,53.05 < 7 |only if walking
click Sethrak Cage
Rescue Private James |q 51389/1 |goto 30.07,53.62
step
label "Burn_Banners"
click Sethrak War Banner+
|tip They look like metal poles with 2 red flags hanging from them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Burn #4# Banners |q 51394/1 |goto 29.57,53.15
step
label "Crush_Cannons"
click Sethrak Cannon+
|tip They look like metal snake cannons on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Crush #4# Cannons |q 51394/2 |goto 29.57,53.15
step
label "Shatter_Spires"
click Sethrak Spire+
|tip They look like tall pointed stone statues getting struck by lightning on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Shatter #2# Spires |q 51394/3 |goto 29.57,53.15
step
label "Slay_Faithless"
Kill Faithless enemies around this area
Slay #12# Faithless |q 51391/1 |goto 29.57,53.15
step
Run up the stairs |goto 28.82,54.04 < 5 |only if walking
Follow the path |goto 28.62,54.04 < 5 |only if walking
Run up the stairs |goto 28.29,54.05 < 5 |only if walking
Follow the path |goto 28.03,54.05 < 5 |only if walking
Follow the path |goto 27.39,54.05 < 7 |only if walking
Enter the building |goto 27.22,53.72 < 5 |walk
Follow the path |goto 27.31,52.67 < 5 |walk
talk Private James##137559
|tip Inside the building.
turnin Breaking Free##51389 |goto 27.56,52.61
step
talk Vorrik##129519
|tip Inside the building.
turnin Defang the Faithless##51391 |goto 27.61,52.57
turnin Break the Siege##51394 |goto 27.61,52.57
accept The Keepers' Keys##51395 |goto 27.61,52.57
step
talk Private James##137559
|tip Inside the building.
Ask him _"Is there anything in your pockets?"_
Speak to Private James |q 51395/1 |goto 27.56,52.62
step
Watch the dialogue
Begin Following Vorrik |goto 27.56,52.62 < 10 |c |q 51395
step
Run up the stairs |goto 26.98,51.97 < 5 |walk
Follow the path |goto 26.55,51.98 < 5 |only if walking
Follow the path |goto 26.39,52.35 < 7 |only if walking
Run up the stairs |goto 26.53,52.56 < 5 |only if walking
Enter the building |goto 26.73,52.57 < 3 |walk
Watch the dialogue
|tip Follow Vorrik as he walks.
Follow Vorrik |q 51395/2 |goto 27.12,52.57
step
talk Vorrik##128694
|tip Upstairs inside the building.
turnin The Keepers' Keys##51395 |goto 27.12,52.56
step
talk Sergeant Ermey##137543
|tip Upstairs inside the building.
accept Reporting In##51402 |goto 27.02,52.50
step
Run up the stairs |goto 26.89,52.56 < 5 |walk
Leave the building |goto 26.77,52.56 < 3 |walk
Run down the stairs |goto 26.62,52.56 < 5 |only if walking
Follow the path |goto 26.43,52.49 < 5 |only if walking
Run down the stairs |goto 26.56,51.96 < 5 |only if walking
Follow the path |goto 26.99,51.96 < 5 |only if walking
Follow the path |goto 27.19,51.82 < 5 |only if walking
Leave the building |goto 27.22,51.40 < 5 |only if walking
Run up the stairs |goto 27.58,50.52 < 5 |only if walking
Follow the path |goto 37.20,34.38 < 7 |only if walking
Run up the stairs |goto 37.70,34.78 < 5 |only if walking
Follow the path |goto 37.70,35.19 < 5 |only if walking
talk Halford Wyrmbane##137213
turnin Reporting In##51402 |goto 37.71,35.83
step
talk Magister Umbric##139568
accept Champion: Magister Umbric##52008 |goto 37.47,35.84 |instant
step
talk Halford Wyrmbane##137213
accept Return to Boralus##51969 |goto 37.71,35.83
step
Run down the stairs |goto 37.69,35.16 < 5 |only if walking
Follow the path |goto 37.68,34.74 < 5 |only if walking
Follow the path |goto 37.23,33.15 < 7 |only if walking
Continue following the path |goto 36.65,32.96 < 7 |only if walking
Run up the ramp |goto 35.61,33.24 < 3 |only if walking
Follow the path |goto 35.59,33.55 < 3 |only if walking
Run up the stairs |goto 35.20,33.62 < 3 |only if walking
Follow the path |goto 35.13,33.64 < 3 |only if walking
talk Grand Admiral Jes-Tereth##135681
Tell her _"Take us back to Boralus."_
Speak to Jes-Tereth |q 51969/1 |goto 34.91,33.76
step
Return to Boralus |goto Boralus/0 70.22,27.06 < 10 |noway |c |q 51969
step
talk Halford Wyrmbane##135612
turnin Return to Boralus##51969 |goto Boralus/0 69.27,26.99
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
accept Uniting Kul Tiras##52450 |goto 69.28,27.00 |instant
step
talk Halford Wyrmbane##135612
accept Overseas Assassination##52026 |goto 69.28,27.00
step
Run up the stairs |goto 69.08,26.46 < 3 |only if walking
Follow the path |goto 68.86,26.43 < 3 |only if walking
talk Grand Admiral Jes-Tereth##135681
Tell her _"Set sail to Vol'dun."_
Speak with Jes-Tereth to Sail to Vol'dun |q 52026/1 |goto 67.95,26.70
step
Travel to Vol'dun |goto Vol'dun/0 35.60,33.17 < 7 |noway |c |q 52026
step
Follow the path |goto 36.40,32.81 < 7 |only if walking
Follow the path |goto 36.57,32.53 < 5 |only if walking
talk Quartermaster Alfin##136562
accept Pests##51142 |goto 36.57,32.30
step
Follow the path |goto 36.71,32.53 < 7 |only if walking
kill 8 Thieving Snapper##136566 |q 51142/1 |goto 37.41,33.13
step
Follow the path |goto 36.77,34.83 < 7 |only if walking
Jump down here |goto 36.48,36.61 < 5 |only if walking
Follow the path |goto 36.38,36.79 < 7 |only if walking
click Mysterious Trashpile
Follow the Big One |q 51142/2 |goto 36.18,36.79
step
talk Jani##136559
turnin Pests##51142 |goto 36.18,36.79
accept Curse of Jani##51145 |goto 36.18,36.79
step
Run up the stairs |goto 36.61,36.87 < 5 |only if walking
Follow the path |goto 36.62,36.60 < 5 |only if walking
Follow the path down |goto 36.53,35.89 < 7 |only if walking
Follow the path |goto 36.04,35.51 < 7 |only if walking
Continue following the path |goto 36.07,34.68 < 7 |only if walking
Continue following the path |goto 36.22,34.08 < 7 |only if walking
Continue following the path |goto 36.44,33.68 < 7 |only if walking
Follow the path |goto 36.14,33.22 < 7 |only if walking
Follow the path |goto 36.03,32.72 < 7 |only if walking
Follow the path |goto 36.08,31.84 < 5 |only if walking
Reach Quartermaster Alfin |q 51145/1 |goto 36.46,31.91
|tip Avoid the enemies or you'll have to start over.
step
Jump up here |goto 36.55,31.87 < 3 |only if walking
Follow the path up |goto 36.66,31.98 < 5 |only if walking
kill Quartermaster Alfin##136563
Watch the dialogue
Bite Quartermaster Alfin |q 51145/2 |goto 36.57,32.30
step
talk Jani##136559
turnin Curse of Jani##51145 |goto 36.19,36.85
step
Run up the stairs |goto 36.66,36.87 < 5 |only if walking
Follow the path |goto 36.68,36.59 < 5 |only if walking
Run up the stairs |goto 36.86,35.69 < 5 |only if walking
Follow the path |goto 37.12,35.66 < 5 |only if walking
talk Halford Wyrmbane##139705
turnin Overseas Assassination##52026 |goto 37.70,35.95
accept The Vol'dun Plan##52027 |goto 37.70,35.95
step
talk Halford Wyrmbane##139705
Ask him _"What's your plan, High Commander?"_
Watch the dialogue
Discuss Halford's Strategy |q 52027/1 |goto 37.70,35.95
step
talk Shandris Feathermoon##139719
Ask her _"What's your plan, Shandris?"_
Watch the dialogue
Discuss Shandris's Strategy |q 52027/2 |goto 37.76,35.91
step
talk Halford Wyrmbane##139705
turnin The Vol'dun Plan##52027 |goto 37.70,35.95
accept Comb the Desert##52028 |goto 37.70,35.95
step
Run down the stairs |goto 38.28,35.66 < 5 |only if walking
Follow the path |goto 38.56,35.69 < 5 |only if walking
Run up the stairs |goto 39.59,37.50 < 5 |only if walking
Follow the path |goto 39.75,37.77 < 5 |only if walking
Run up the stairs |goto 40.58,39.11 < 5 |only if walking
Follow the path |goto 40.73,39.35 < 5 |only if walking
Follow the path |goto 41.11,41.03 < 7 |only if walking
Follow the path up |goto 41.02,42.74 < 5 |only if walking
Follow the path |goto 40.82,43.26 < 5 |only if walking
Continue following the path |goto 40.36,44.68 < 7 |only if walking
Run up the stairs |goto 40.31,45.83 < 5 |only if walking
Follow the path |goto 40.32,46.16 < 5 |only if walking
Watch the dialogue
Search for Horde Activity |q 52028/1 |goto 40.75,47.83
step
talk Shandris Feathermoon##139719
turnin Comb the Desert##52028 |goto 40.75,47.83
accept Dirty Work##52029 |goto 40.75,47.83
step
kill Nazlara##139742
|tip She walks around this area.
collect Reliquary Orders##161086 |q 52029/1 |goto 40.73,49.01
step
talk Halford Wyrmbane##139705
turnin Dirty Work##52029 |goto 40.70,47.84
accept Keep Combing##52030 |goto 40.70,47.84
step
Follow the path |goto 41.62,49.65 < 15 |only if walking
Continue following the path |goto 42.55,55.38 < 7 |only if walking
Continue following the path |goto 42.65,56.50 < 15 |only if walking
Watch the dialogue
Search for More Reliquary Operatives |q 52030/1 |goto 44.99,58.75
step
Watch the dialogue
talk Shandris Feathermoon##139719
turnin Keep Combing##52030 |goto 44.99,58.75
accept Classic Reliquary##52031 |goto 44.99,58.75
step
Follow the path up |goto 44.85,60.12 < 7 |only if walking
Follow the path |goto 44.98,60.36 < 7 |only if walking
kill Elisa Veilsong##139752
collect Reliquary Map: Vol'dun##161087 |q 52031/1 |goto 45.28,60.65
step
Follow the path up |goto 44.94,59.60 < 7 |only if walking
talk Halford Wyrmbane##139705
turnin Classic Reliquary##52031 |goto 44.96,58.77
accept Never Stop Combing##52032 |goto 44.96,58.77
step
Follow the path |goto 44.37,61.48 < 15 |only if walking
Follow the path down |goto 43.99,65.73 < 15 |only if walking
Jump down here |goto 42.87,67.47 < 7 |only if walking
Follow the path |goto 41.37,71.27 < 15 |only if walking
Watch the dialogue
Find the Exiles' Enclave |q 52032/1 |goto 41.09,72.61
step
Watch the dialogue
talk Halford Wyrmbane##139705
turnin Never Stop Combing##52032 |goto 41.09,72.61
accept Improvised Survival##52035 |goto 41.09,72.61
step
talk Shandris Feathermoon##139719
accept A Message to the Zandalari##52034 |goto 41.11,72.57
step
talk Explosioneer Zoidfuse##139722
accept They Have Alpacas Here##52036 |goto 41.14,72.40
step
Follow the path |goto 41.08,72.75 < 5 |only if walking
use the Ultra-Safe Electrified Alpaca Lasso##161333
|tip Use it on a Lost Alpaca around this area.
Click Here After Capturing a Lost Alpaca |confirm |goto 40.69,72.70 |q 52036
step
Bring a Lost Alpaca back to Explosioneer Zoidfuse |q 52036/1 |goto 41.14,72.50
step
talk Explosioneer Zoidfuse##139722
turnin They Have Alpacas Here##52036 |goto 41.14,72.41
stickystart "Collect_Zandalari_Dunemelons"
stickystart "Kill_Zandalari_Exiles"
step
Run up the stairs |goto 41.30,73.66 < 5 |only if walking
Follow the path |goto 41.31,74.02 < 5 |only if walking
Follow the path |goto 41.08,74.71 < 7 |only if walking
click Zandalari Water Jugs+
|tip They look like wooden boxes with glass bottles in them on the ground and inside buildings around this area.
collect 15 Zandalari Water Jug##161240 |q 52035/2 |goto 40.72,75.27
step
label "Collect_Zandalari_Dunemelons"
click Zandalari Dunemelons+
|tip They look like wooden boxes with watermelon slices in them on the ground and inside buildings around this area.
collect 15 Zandalari Dunemelon##161241 |q 52035/1 |goto 40.72,75.27
step
label "Kill_Zandalari_Exiles"
kill 12 Zandalari Exile##135311 |q 52034/1 |goto 40.72,75.27
step
Follow the path |goto 40.83,75.15 < 10 |only if walking
Run down the stairs |goto 41.29,73.99 < 5 |only if walking
Follow the path |goto 41.30,73.61 < 5 |only if walking
talk Halford Wyrmbane##139705
turnin Improvised Survival##52035 |goto 41.09,72.62
step
talk Shandris Feathermoon##139719
turnin A Message to the Zandalari##52034 |goto 41.11,72.57
step
talk Halford Wyrmbane##139705
accept Splitting Up##52038 |goto 41.09,72.62
step
Follow the path up |goto 41.04,72.82 < 5 |only if walking
Follow the path |goto 38.82,72.47 < 15 |only if walking
Follow the path |goto 36.56,72.91 < 7 |only if walking
Continue following the path |goto 35.31,73.78 < 15 |only if walking
Continue following the path |goto 33.26,76.16 < 7 |only if walking
Continue following the path |goto 31.73,78.28 < 7 |only if walking
Continue following the path |goto 30.59,78.83 < 7 |only if walking
Continue following the path |goto 30.19,78.77 < 7 |only if walking
talk Shandris Feathermoon##139719
turnin Splitting Up##52038 |goto 29.93,78.56
accept Full of Arrows##52040 |goto 29.93,78.56
accept Delayed Deathification##52039 |goto 29.93,78.56
stickystart "Bury_Remote_Detonation_Deathbombs"
step
Follow the path |goto 29.60,77.04 < 7 |only if walking
kill Arlethal Sunwatcher##140567 |q 52040/1 |goto 28.69,75.61
|tip Shandris Feathermoon will help you fight.
step
label "Bury_Remote_Detonation_Deathbombs"
click Remote-Detonation Deathbomb+
|tip They look like small bombs on the ground around this area.
Bury #8# Remote-Detonation Deathbomb |q 52039/1 |goto 29.08,76.33
step
Follow the path |goto 29.59,77.06 < 7 |only if walking
Follow the path |goto 29.74,78.04 < 7 |only if walking
talk Shandris Feathermoon##139719
turnin Full of Arrows##52040 |goto 29.93,78.55
turnin Delayed Deathification##52039 |goto 29.93,78.55
accept Report to Wyrmbane##52041 |goto 29.93,78.55
step
Follow the path |goto 30.07,78.84 < 7 |only if walking
Continue following the path |goto 30.67,81.62 < 15 |only if walking
Continue following the path |goto 31.50,84.14 < 15 |only if walking
Continue following the path |goto 32.01,84.87 < 15 |only if walking
Continue following the path |goto 33.67,86.26 < 15 |only if walking
Continue following the path |goto 34.74,86.25 < 15 |only if walking
Continue following the path |goto 38.06,83.95 < 7 |only if walking
Continue following the path |goto 39.32,83.85 < 7 |only if walking
talk Halford Wyrmbane##139705
turnin Report to Wyrmbane##52041 |goto 39.64,83.91
accept The Big Boom##52042 |goto 39.64,83.91
step
talk Explosioneer Zoidfuse##135388
fpath Deadwood Cove |goto 39.79,83.82
step
talk Explosioneer Zoidfuse##135388
Tell him _"Push the big red button when you tell me to. Got it."_
Begin Riding in the Flying Machine |invehicle |goto 39.79,83.82 |q 52042
step
Watch the dialogue
|tip Use the abilities on your action bar.
|tip New abilities will appear when you need to use them.
Initiate the Vol'dun Explosion Protocol |q 52042/1 |goto 38.49,71.04
step
Watch the dialogue
Return to Deadwood Cove |goto 39.75,83.87 < 7 |c |q 52042 |notravel
step
talk Halford Wyrmbane##139705
turnin The Big Boom##52042 |goto 39.65,83.92
accept Blood on the Sand##52146 |goto 39.65,83.92
step
Watch the dialogue
Wait for Kelsey Steelspark to Return |q 52146/2 |goto 39.65,83.92
step
Follow the path |goto 39.28,83.86 < 7 |only if walking
Follow the path |goto 38.78,83.55 < 7 |only if walking
click 7th Legion Spyglass
Watch the dialogue
Wait for Guzbert Gizmoflank to Return |q 52146/1 |goto 38.68,83.02
step
Follow the path |goto 38.79,83.47 < 7 |only if walking
Follow the path |goto 39.25,83.83 < 7 |only if walking
talk Halford Wyrmbane##139705
turnin Blood on the Sand##52146 |goto 39.65,83.91
step
Follow the path |goto 37.01,34.44 < 7 |only if walking
Continue following the path |goto 38.26,34.46 < 7 |only if walking
Continue following the path |goto 39.37,34.41 < 7 |only if walking
Follow the path |goto 40.14,33.97 < 7 |only if walking
Follow the path |goto 41.87,32.24 < 7 |only if walking
Continue following the path |goto 42.30,30.49 < 7 |only if walking
Continue following the path |goto 43.90,28.07 < 7 |only if walking
Follow the path up |goto 45.16,26.70 < 7 |only if walking
Follow the path up |goto 45.57,26.20 < 7 |only if walking
Continue up the path |goto 46.14,23.98 < 7 |only if walking
Continue up the path |goto 46.48,21.25 < 7 |only if walking
Follow the path down |goto 47.85,19.05 < 7 |only if walking
Follow the path |goto 48.71,17.73 < 7 |only if walking
Cross the bridge |goto 49.28,17.38 < 7 |only if walking
Follow the path |goto 50.30,17.13 < 7 |c |condition goaltype("fpath",{fpath="Tortaka Refuge"})
step
Follow the path up |goto 50.88,17.30 < 7 |only if walking
Follow the path up |goto 51.63,17.78 < 7 |only if walking
Continue up the path |goto 52.56,17.19 < 7 |only if walking
Follow the path |goto 53.48,17.45 < 7 |only if walking
Follow the path down |goto 54.29,17.24 < 7 |only if walking
Follow the path down |goto 55.37,17.14 < 7 |only if walking
Follow the path |goto 55.95,16.39 < 7 |only if walking
Follow the path |goto 57.40,16.67 < 7 |only if walking
Follow the path down |goto 58.11,16.78 < 7 |only if walking
Continue down the path |goto 58.96,18.65 < 7 |only if walking
Follow the path |goto 59.30,19.87 7 |only if walking
Cross the bridge |goto 59.82,20.20 < 7 |only if walking
Follow the path |goto 61.05,21.02 < 7 |only if walking
talk Scroll of Flight##135387
fpath Tortaka Refuge |goto 61.89,21.66
step
click Wanted Poster
accept WANTED: Ayame##52480 |goto Nazmir/0 62.40,41.31
step
click Scouting Report
accept WANTED: Tojek##51139 |goto 62.15,41.03
step
Follow the path |goto 61.68,40.80 < 5 |only if walking
Continue following the path |goto 61.24,38.89 < 7 |only if walking
Follow the path up |goto 59.65,35.06 < 7 |only if walking
Follow the path up |goto 59.07,34.25 < 7 |only if walking
kill Ayame##133980
|tip It looks like a large snake that slithers around this area.
|tip You may need help with this.
collect Ayame's Head##162118 |q 52480/1 |goto 58.23,33.83
step
talk Garrick Blacksteel##135072
turnin WANTED: Ayame##52480 |goto 61.89,41.48
step
Follow the path |goto 61.67,40.78 < 5 |only if walking
Follow the path |goto 61.35,40.67 < 7 |only if walking
Cross the bridge |goto 59.74,40.94 < 7 |only if walking
Follow the path |goto 59.16,40.32 < 7 |only if walking
Cross the bridge |goto 58.84,40.13 < 7 |only if walking
Follow the path |goto 56.91,39.48 < 7 |only if walking
Follow the path |goto 55.77,39.57 < 7 |only if walking
Follow the path |goto 55.57,39.35 < 7 |only if walking
Jump down here |goto 55.38,37.25 < 7 |only if walking
talk Kajosh##124666
accept Profanity Filter##47924 |goto 55.15,36.72
step
Follow the path |goto 54.20,35.91 < 7 |only if walking
Follow the path up |goto 54.34,34.06 < 7 |only if walking
use the Scroll of Inferno##151849
|tip Use it next to Profane Totems around this area.
|tip They look like red and brown wooden totems on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #5# Profane Totem |q 47924/1 |goto 54.16,32.65
step
Follow the path |goto 52.62,33.57 < 7 |only if walking
talk Kajosh##124933
Ask him _"Some of the totems are destroyed, will your spell work now?"_
Watch the dialogue
Complete Kajosh's Spell |q 47924/2 |goto 51.76,33.25
step
talk Kajosh##124933
turnin Profanity Filter##47924 |goto 51.76,33.24
accept Killing Cannibals##47998 |goto 51.76,33.24
accept Just Say No to Cannibalism##47919 |goto 51.76,33.24
accept Shoak's on the Menu##47925 |goto 51.76,33.24
stickystart "Kill_Nathavor_Cannibals"
step
Follow the path up |goto 51.51,33.01 < 7 |only if walking
Continue up the path |goto 50.00,33.05 < 7 |only if walking
Continue up the path |goto 49.84,33.65 < 5 |only if walking
Follow the path |goto 49.51,33.76 < 7 |only if walking
Enter the building |goto 49.17,33.26 < 3 |walk
kill Corpse Monger Nog'shra##124978 |q 47919/1 |goto 49.21,33.08
|tip Inside the building.
step
Leave the building |goto 49.18,33.23 < 3 |walk
Follow the path |goto 49.28,33.55 < 7 |only if walking
Follow the path |goto 49.77,33.84 < 7 |only if walking
Follow the path up |goto 49.92,34.34 < 7 |only if walking
Enter the building |goto 50.61,35.59 < 3 |walk
kill Corpse Monger Yon'gi##124977 |q 47919/2 |goto 50.70,35.67
|tip Inside the building.
step
Leave the building |goto 50.62,35.60 < 3 |walk
Cross the bridge |goto 49.70,35.29 < 5 |only if walking
Follow the path |goto 49.52,36.25 < 5 |only if walking
Cross the bridge |goto 49.62,36.57 < 5 |only if walking
Follow the path |goto 49.91,37.10 < 7 |only if walking
Follow the path |goto 50.05,38.18 < 5 |only if walking
Enter the building |goto 49.60,38.38 < 3 |walk
kill Corpse Monger Jal'aka##124976 |q 47919/3 |goto 49.49,38.39
|tip Inside the building.
step
Leave the building |goto 49.60,38.38 < 3 |walk
Follow the path |goto 50.16,38.85 < 7 |only if walking
Follow the path |goto 49.98,39.31 < 7 |only if walking
talk Shoak##124774
Tell him _"Kajosh sent me. I'll handle the mawfiends."_
Watch the dialogue
Kill the enemies that attack in waves
kill Poz'ga the Butcher Queen##124801
Rescue Shoak |q 47925/1 |goto 49.43,39.23
step
label "Kill_Nathavor_Cannibals"
kill 10 Natha'vor Cannibal##124688 |q 47998/1 |goto 50.15,39.04
step
Follow the path |goto 50.12,39.97 < 7 |only if walking
Continue following the path |goto 50.48,41.17 < 7 |only if walking
Cross the bridge |goto 51.77,41.53 < 7 |only if walking
Follow the path |goto 52.46,41.23 < 7 |only if walking
Continue following the path |goto 53.28,41.11 < 7 |only if walking
Cross the bridge |goto 54.84,41.26 < 7 |only if walking
Follow the path |goto 55.26,41.16 < 7 |only if walking
Cross the bridge |goto 55.68,40.32 < 7 |only if walking
Follow the path down |goto 55.52,39.00 < 7 |only if walking
Follow the path |goto 55.47,36.73 < 7 |only if walking
Follow the path up |goto 55.71,34.88 < 7 |only if walking
Follow the path up |goto 55.86,33.66 < 7 |only if walking
talk Kajosh##125024
turnin Killing Cannibals##47998 |goto 55.84,32.35
turnin Just Say No to Cannibalism##47919 |goto 55.84,32.35
step
talk Shoak##124737
turnin Shoak's on the Menu##47925 |goto 55.81,32.24
step
Cross the bridge |goto 55.72,31.16 < 7 |only if walking
Follow the path up |goto 55.48,29.15 < 7 |only if walking
Follow the path down |goto 55.67,28.19 < 7 |only if walking
Follow the path |goto 56.20,26.85 < 7 |only if walking
Follow the path |goto 55.34,25.94 < 7 |only if walking
Continue following the path |goto 54.64,25.71 < 7 |only if walking
Continue following the path |goto 53.28,26.31 < 7 |only if walking
Continue following the path |goto 52.35,26.52 < 7 |only if walking
Continue following the path |goto 51.24,25.00 < 7 |only if walking
Continue following the path |goto 51.03,23.66 < 7 |only if walking
talk Joseph Redfield##139995
fpath Redfield's Watch |goto 50.81,20.77
step
Follow the path |goto 61.69,40.77 < 7 |only if walking
Follow the path |goto 61.18,40.70 < 7 |only if walking
Cross the bridge |goto 59.71,40.92 < 7 |only if walking
Follow the path |goto 59.15,40.34 < 7 |only if walking
Cross the bridge |goto 58.83,40.12 < 7 |only if walking
Follow the path |goto 56.92,39.48 < 7 |only if walking
Follow the path |goto 55.76,39.57 < 7 |only if walking
Follow the path |goto 55.65,39.89 < 7 |only if walking
Follow the path |goto 55.67,40.35 < 7 |only if walking
Cross the bridge |goto 55.22,41.20 < 7 |only if walking
Follow the path |goto 54.83,41.26 < 7 |only if walking
Cross the bridge |goto 52.45,41.26 < 7 |only if walking
Follow the path |goto 51.76,41.55 < 7 |only if walking
Continue following the path |goto 49.06,42.28 < 7 |only if walking
Continue following the path |goto 48.05,42.80 < 7 |only if walking
Cross the bridge |goto 46.54,43.04 < 7 |only if walking
Follow the path |goto 45.81,42.77 < 7 |only if walking
Follow the path |goto 45.24,42.93 < 7 |only if walking
Cross the bridge |goto 44.52,43.09 < 7 |only if walking
Follow the path |goto 43.79,43.45 < 7 |only if walking
Follow the path |goto 41.89,44.96 < 7 |only if walking
Continue following the path |goto 38.07,46.86 < 7 |c |q 51139
step
Follow the path |goto 37.31,47.95 < 7 |only if walking
Cross the bridge |goto 36.98,52.54 < 7 |only if walking
Follow the path |goto 36.87,53.36 < 7 |only if walking
Continue following the path |goto 36.57,57.13 < 7 |only if walking
Continue following the path |goto 37.26,59.64 < 7 |only if walking
Continue following the path |goto 38.08,60.34 < 7 |only if walking
talk Shinga Deathwalker##130481
accept Bwonsamdi's Deliverance##48468 |goto 39.06,60.66
accept Respecting the Rites##48473 |goto 39.06,60.66
stickystart "Light_Ritual_Torches"
stickystart "Burn_Defiled_Corpses"
step
Run up the stairs |goto 40.14,62.31 < 5 |only if walking
Run up the stairs |goto 40.29,62.69 < 5 |only if walking
Follow the path |goto 40.33,62.97 < 5 |only if walking
Run up the stairs |goto 40.50,63.23 < 5 |only if walking
Follow the path |goto 40.80,63.25 < 5 |only if walking
Follow the path |goto 41.28,62.99 < 5 |only if walking
click Ritual Powder##281361
collect Ritual Powder##157793 |q 48473/2 |goto 41.30,62.58
step
label "Light_Ritual_Torches"
Follow the path |goto 41.28,62.89 < 5 |only if walking
click Ritual Torch##277693+
|tip They look like wooden sticks with red tips coming out of the ground around this area.
|tip They will appear on your minimap as yellow dots.
Light #5# Ritual Torches |q 48473/1 |goto 41.55,63.90
step
label "Burn_Defiled_Corpses"
Kill Defiled enemies around this area
use the Cremation Torch##153178
|tip Use it on their corpses.
|tip You can burn the corpses of enemies other players killed.
Burn #10# Defiled Corpses |q 48468/1 |goto 41.44,63.50
step
Run down the stairs |goto 40.79,63.28 < 5 |only if walking
Follow the path |goto 40.49,63.20 < 5 |only if walking
Run down the stairs |goto 40.30,62.94 < 5 |only if walking
Run down the stairs |goto 40.20,62.46 < 5 |only if walking
talk Shinga Deathwalker##126080
turnin Bwonsamdi's Deliverance##48468 |goto 38.93,59.91
turnin Respecting the Rites##48473 |goto 38.93,59.91
accept Kel'vax's Home##48478 |goto 38.93,59.91
step
talk Kol'jun Deathwalker##126079
accept Bones for Protection##48479 |goto 39.00,59.93
step
use Spirit Powder##154130
Begin the Spirit Journey |havebuff 134380 |goto 39.00,59.92 |q 48478
stickystart "Collect_Cursed_Bones"
step
Follow the path |goto 39.49,60.04 < 7 |only if walking
click Ancient Phylactery##278341
collect Ancient Phylactery##154136 |q 48478/2 |goto 39.39,57.47
step
Follow the path |goto 39.09,55.66 < |only if walking
Run up the stairs |goto 38.67,54.65 < 5 |only if walking
Follow the path |goto 38.50,54.64 < 5 |only if walking
click Pristine Phylactery##278343
collect Pristine Phylactery##154137 |q 48478/3 |goto 38.32,54.39
step
Run down the stairs |goto 38.50,54.62 < 5 |only if walking
Follow the path |goto 38.68,54.58 < 5 |only if walking
Follow the path |goto 40.74,52.14 < 7 |only if walking
click Repaired Phylactery##278337
collect Repaired Phylactery##152468 |q 48478/1 |goto 40.99,51.97
step
label "Collect_Cursed_Bones"
Follow the path |goto 40.69,52.22 |only if walking
Kill enemies around this area
|tip Only the enemies that look like skeletons will drop the quest item.
collect 40 Cursed Bone##153346 |q 48479/1 |goto 39.52,55.43
step
Follow the path |goto 39.13,54.64 < 10 |only if walking
Follow the path up |goto 39.51,59.76 < 5 |only if walking
Follow the path |goto 39.41,60.03 < 5 |only if walking
talk Kol'jun Deathwalker##126079
turnin Bones for Protection##48479 |goto 39.00,59.92
step
talk Shinga Deathwalker##126080
turnin Kel'vax's Home##48478 |goto 38.93,59.92
accept The Fall of Kel'vax##48480 |goto 38.93,59.92
step
Follow the path |goto 40.81,60.45 < 5 |only if walking
Follow the path up |goto 41.23,60.08 < 7 |only if walking
Follow the path |goto 41.51,59.35 < 5 |only if walking
kill Kel'vax Deathwalker##126126 |q 48480/1 |goto 42.21,57.49
step
Follow the path down |goto 41.50,59.38 < 5 |only if walking
Follow the path |goto 41.18,60.10 < 7 |only if walking
Follow the path |goto 40.80,60.42 < 7 |only if walking
talk Shinga Deathwalker##126080
turnin The Fall of Kel'vax##48480 |goto 38.93,59.91
step
Cross the bridge |goto 38.84,62.11 < 7 |only if walking
Follow the path |goto 39.08,62.74 < 7 |only if walking
Follow the path |goto 39.09,63.72 < 7 |only if walking
Cross the bridge |goto 39.11,65.15 < 7 |only if walking
Follow the path up |goto 38.76,65.25 < 7 |only if walking
Follow the path up |goto 37.49,65.39 < 7 |only if walking
Cross the bridge |goto 36.00,64.78 < 7 |only if walking
Follow the path |goto 34.95,64.90 < 7 |only if walking
Cross the bridge |goto 34.52,65.02 < 7 |only if walking
Follow the path |goto 33.11,65.89 < 7 |only if walking
Cross the bridge |goto 31.90,65.88 < 7 |only if walking
Follow the path |goto 31.09,65.59 < 7 |only if walking
Cross the bridge |goto 30.64,65.68 < 7 |only if walking
Follow the path |goto 30.21,65.85 < 7 |only if walking
Follow the path |goto 29.49,65.65 < 7 |only if walking
kill Tojek##136381 |q 51139/1 |goto 27.07,67.26
|tip He walks around this area.
|tip You may need help with this.
step
talk Garrick Blacksteel##135072
|tip He walks around this area.
turnin WANTED: Tojek##51139 |goto 61.86,41.45
step
click Wanted: Dark Chronicler
accept WANTED: Dark Chronicler##51085 |goto Zuldazar/0 40.80,71.14
step
Follow the path |goto 41.09,71.14 < 7 |only if walking
talk Acadia Chistlestone##131777
accept The Thrill of Exploration##49276 |goto 41.33,71.43
step
click Dirt Pile
Reveal the Fossil |q 49276/1 |goto 41.30,71.54 |count 14
step
clicknpc Excavation Elemental##135879
Watch the dialogue
Reveal the Fossil |q 49276/1 |goto 41.38,71.59 |count 100
step
talk Excavator Morgrum Emberflint##131763
turnin The Thrill of Exploration##49276 |goto 41.35,71.45
accept Morgrum's Survey##49274 |goto 41.35,71.45
accept Archaeological Efficiency##50044 |goto 41.35,71.45
step
talk Acadia Chistlestone##131777
accept Xibalan Ecology##49060 |goto 41.33,71.43
stickystart "Collect_Xibalan_Fossil_Fragments"
stickystart "Slay_Xibalan_Predators"
step
Follow the path |goto 42.15,71.95 < 7 |only if walking
click Morgrum's Device
Complete the Outer Ruins Survey |q 49274/1 |goto 42.47,72.23
step
Run up the stairs |goto 43.00,72.23 < 5 |only if walking
Follow the path |goto 43.00,72.40 < 5 |only if walking
Follow the path |goto 43.06,73.69 < 5 |only if walking
click Morgrum's Device
Complete the Inner Ruins Survey |q 49274/2 |goto 42.82,73.90
step
label "Collect_Xibalan_Fossil_Fragments"
use the Elemental Summoning Stone##159640
|tip Use it near Dirt Piles on the ground around this area.
|tip They look like brown piles of dirt on the ground around this area.
Watch the dialogue
click Xibalan Fossil##280497+
|tip They look like piles of white bones on the ground around this area.
|tip They appear after you use the Elemental Summoning Stone next to the Dirt Piles.
collect 50 Xibalan Fossil Fragment##156597 |q 50044/1 |goto 42.14,73.84
step
label "Slay_Xibalan_Predators"
Kill Xibalan enemies around this area
Slay #8# Xibalan Predators |q 49060/1 |goto 42.14,73.84
step
Follow the path up |goto 42.11,74.23 < 7 |only if walking
Follow the path down |goto 41.91,75.52 < 7 |only if walking
click Morgrum's Device
Complete "The Foot" Survey |q 49274/3 |goto 41.37,75.40
step
Follow the path up |goto 42.02,75.88 < 7 |only if walking
Follow the path up |goto 41.92,76.97 < 7 |only if walking
Follow the path up |goto 42.25,77.38 < 7 |only if walking
Follow the path |goto 42.55,77.09 < 7 |only if walking
Enter the tunnel |goto 43.25,76.40 < 5 |walk
Follow the path down |goto 43.51,76.33 < 5 |walk
kill Dark Chronicler##136428 |q 51085/1 |goto 44.12,76.50
|tip Inside the tunnel.
step
Follow the path up |goto 43.68,76.37 < 5 |walk
Follow the path up |goto 43.43,76.33 < 5 |walk
Leave the tunnel |goto 43.24,76.40 < 3 |walk
click Wanted: Dark Chronicler
turnin WANTED: Dark Chronicler##51085 |goto 40.79,71.13
step
Follow the path |goto 41.06,71.11 < 7 |only if walking
talk Acadia Chistlestone##131777
turnin Archaeological Efficiency##50044 |goto 41.33,71.42
turnin Xibalan Ecology##49060 |goto 41.33,71.42
step
talk Excavator Morgrum Emberflint##131763
turnin Morgrum's Survey##49274 |goto 41.35,71.44
accept Morgrum's Extended Survey##49282 |goto 41.35,71.44
step
Run up the stairs |goto 41.84,72.31 < 5 |only if walking
Follow the path |goto 41.84,72.43 < 5 |only if walking
Follow the path |goto 41.89,73.24 < 7 |only if walking
Follow the path up |goto 42.21,74.87 < 7 |only if walking
Follow the path |goto 42.53,75.23 < 7 |only if walking
talk Excavator Morgrum Emberflint##131763
Tell him _"I'm ready."_
Speak to Excavator Emberflint in the Ruins |q 49282/1 |goto 43.10,75.02
step
Follow the path |goto 43.19,74.94 < 5 |only if walking
click Morgrum's Device
Watch the dialogue
Kill the enemy that attacks
Start the First Survey |q 49282/2 |goto 43.31,74.79
step
click Morgrum's Device
Watch the dialogue
Kill the enemies that attack
Start the Second Survey |q 49282/4 |goto 43.60,74.94
step
Follow the path |goto 43.79,74.68 < 7 |only if walking
click Morgrum's Device
Watch the dialogue
Kill the enemies that attack
Start the Third Survey |q 49282/6 |goto 43.81,74.33
step
Follow the path |goto 43.94,74.25 < 5 |only if walking
Follow the path up |goto 44.35,73.62 < 7 |only if walking
talk Excavator Morgrum Emberflint##131763
turnin Morgrum's Extended Survey##49282 |goto 44.46,73.45
accept Grand Theft Telemancy##49428 |goto 44.46,73.45
accept Not Our Purple Elves##49427 |goto 44.46,73.45
stickystart "Slay_Horde_Forces"
step
Follow the path |goto 44.89,73.49 < 7 |only if walking
Continue following the path |goto 45.46,72.81 < 7 |only if walking
Follow the path down |goto 45.63,71.85 < 7 |only if walking
Follow the path |goto 46.95,71.99 < 5 |only if walking
Run up the ramp |goto 47.08,71.96 < 5 |only if walking
Follow the path |goto 47.17,72.00 < 5 |only if walking
kill Third Telemancer Syranel##135866 |q 49428/1 |goto 47.38,72.12
step
click Breath of Xibala
collect Breath of Xibala##159743 |q 49428/2 |goto 47.42,72.18
step
label "Slay_Horde_Forces"
Run down the ramp |goto 47.17,71.99 < 5 |only if walking
Kill enemies around this area
Slay #8# Horde Forces |q 49427/1 |goto 46.93,71.52
step
Follow the path |goto 40.78,71.06 < 7 |only if walking
Follow the path |goto 41.09,71.15 < 7 |only if walking
talk Excavator Morgrum Emberflint##131763
turnin Grand Theft Telemancy##49428 |goto 41.35,71.45
turnin Not Our Purple Elves##49427 |goto 41.35,71.45
step
Follow the road |goto 41.53,70.99 < 7 |only if walking
Follow the road |goto 42.74,68.78 < 7 |only if walking
Continue following the road |goto 43.17,66.51 < 7 |only if walking
Continue following the road |goto 43.78,65.54 < 7 |only if walking
Continue following the road |goto 44.48,64.70 < 7 |only if walking
Enter the tunnel |goto 45.49,61.58 < 7 |only if walking
Follow the path |goto 45.56,60.07 < 7 |only if walking
Follow the path |goto 46.00,59.75 < 7 |only if walking
Leave the tunnel |goto 47.40,59.70 < 7 |only if walking
Follow the road |goto 48.24,59.49 < 7 |only if walking
Follow the road |goto 49.16,57.75 < 7 |only if walking
Continue following the road |goto 50.68,56.68 < 7 |only if walking
Continue following the road |goto 51.14,56.02 < 7 |only if walking
Follow the path up |goto 52.38,55.02 < 7 |only if walking
Follow the path up |goto 52.34,54.49 < 7 |only if walking
Follow the path up |goto 51.89,53.80 < 7 |only if walking
talk Flap-Flap##143787
accept To Stomp or Not To Stomp##53453 |goto 51.52,52.95
accept King Da'ka##53450 |goto 51.52,52.95
stickystart "Collapse_Kajamite_Steam_Vents"
step
Follow the path |goto 51.52,53.28 < 7 |only if walking
Follow the path |goto 51.42,53.67 < 7 |only if walking
Continue following the path |goto 51.24,53.88 < 7 |only if walking
Continue following the path |goto 50.83,53.97 < 7 |only if walking
talk Tsunga##130947
accept Gorilla Warfare##53452 |goto 50.18,54.57
stickystart "Release_Peace_Loving_Gorillas"
step
label "Collapse_Kajamite_Steam_Vents"
click Kaja'mite Steam Vent##279389+
|tip They look like steam rising out of piles of grey rocks on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Collapse #5# Kaja'mite Steam Vents |q 53453/1 |goto 49.58,54.72
step
label "Release_Peace_Loving_Gorillas"
click Cages
|tip They look like brown stick cages on the ground around this area.
Release #6# Peace-Loving Gorillas |q 53452/1 |goto 49.58,54.72
step
Follow the path up |goto 48.67,52.59 < 7 |only if walking
Follow the path |goto 48.03,51.62 < 7 |only if walking
Follow the path |goto 47.75,51.84 < 7 |only if walking
talk Tsunga##131258
turnin Gorilla Warfare##53452 |goto 47.42,52.43
step
Enter the cave |goto 47.15,51.59 < 5 |walk
Follow the path |goto 47.02,51.40 < 5 |walk
Follow the path |goto 46.90,50.86 < 5 |walk
kill King Da'ka##130948 |q 53450/1 |goto 46.73,50.47
|tip Inside the cave.
step
Follow the path |goto 46.88,50.79 < 5 |walk
Follow the path |goto 46.94,51.24 < 5 |walk
Leave the cave |goto 47.16,51.60 < 5 |walk
Follow the path down |goto 48.07,51.69 < 7 |only if walking
Follow the path |goto 48.69,52.51 < 7 |only if walking
Follow the path |goto 49.29,54.02 < 7 |only if walking
Follow the path |goto 49.65,54.34 < 7 |only if walking
Follow the path up |goto 50.27,54.51 < 7 |only if walking
Follow the path |goto 50.95,53.97 < 7 |only if walking
Follow the path |goto 51.43,53.81 < 7 |only if walking
talk Flap-Flap##143787
turnin To Stomp or Not To Stomp##53453 |goto 51.52,52.95
turnin King Da'ka##53450 |goto 51.52,52.95
step
Follow the path down |goto 77.65,55.25 < 7 |only if walking
Follow the path |goto 78.50,55.41 < 7 |only if walking
Continue following the path |goto 80.09,55.18 < 7 |only if walking
Continue following the path |goto 80.15,55.49 < 7 |only if walking
Continue following the path |goto 80.03,57.56 < 7 |only if walking
Continue following the path |goto 80.86,58.69 < 7 |only if walking
Continue following the path |goto 80.79,59.00 < 7 |only if walking
Follow the path |goto 80.16,59.53 < 7 |only if walking
Follow the path |goto 79.01,59.94 < 7 |only if walking
Follow the path |goto 77.96,62.98 < 7 |only if walking
Continue following the path |goto 76.35,63.06 < 7 |only if walking
Continue following the path |goto 75.90,63.01 < 7 |only if walking
Continue following the path |goto 75.30,62.67 < 7 |only if walking
Jump down here |goto 74.48,62.25 < 7 |only if walking
Follow the path |goto 74.01,62.25 < 7 |only if walking
Follow the path up |goto 72.72,62.72 < 7 |only if walking
Follow the path |goto 72.55,62.87 < 7 |only if walking
Follow the path |goto 71.57,64.87 < 7 |only if walking
Continue following the path |goto 71.00,65.09 < 7 |only if walking
clicknpc Scroll of Flight##134008
fpath Seeker's Outpost |goto 70.45,65.31
step
talk Koba##128888
|tip He walks around this area.
accept Tiny Treasures##49285 |goto 70.29,65.07
step
talk Batu##129586
|tip He walks around this area.
accept Perfect Tidings##49284 |goto 70.54,65.21
step
Follow the path |goto 70.88,64.85 < 7 |only if walking
click Tortollan Traveling Pack##278336
Find the First Clue |q 49284/1 |goto 71.20,64.57
step
Follow the path |goto 71.54,64.24 < 5 |only if walking
click Amphibious Lab Enclosure##278231
collect Amphibious Lab Enclosure##156865 |q 49285/1 |goto 71.66,64.15
step
Follow the path |goto 71.84,63.76 < 7 |only if walking
Follow the path up |goto 72.27,63.42 < 7 |only if walking
click Tortollan Scroll##278348
Find the Second Clue |q 49284/2 |goto 72.65,63.05
step
Jump down here |goto 72.58,63.38 < 5 |only if walking
Follow the path |goto 73.15,64.61 < 7 |only if walking
clicknpc Spitzy##133192
Find Spitzy |q 49285/3 |goto 73.08,64.86
step
Follow the path |goto 73.09,65.60 < 10 |only if walking
click Hatchling's First Alchemy Stone##278233
collect Hatchling's First Alchemy Stone##156866 |q 49285/2 |goto 73.19,67.22
step
Follow the path |goto 73.41,64.23 < 7 |only if walking
Follow the path |goto 73.70,63.73 < 7 |only if walking
click Tortollan Scroll Case##278349
Find the Third Clue |q 49284/3 |goto 74.02,62.08
step
Follow the path up |goto 73.88,61.78 < 7 |only if walking
talk Choa##133417
turnin Tiny Treasures##49285 |goto 73.65,60.96
step
talk Deyon##128889
turnin Perfect Tidings##49284 |goto 73.65,60.96
accept Caged Wisdom##49286 |goto 73.65,60.96
step
Enter the cave |goto 73.61,60.70 < 5 |walk
Follow the path |goto 73.67,60.30 < 5 |walk
Follow the path |goto 73.93,60.04 < 5 |walk
kill Sli'thrus##128728
|tip He walks around this area inside the cave.
collect Nazeshi Cage Key##154708 |q 49286/1 |goto 74.48,59.80
step
Follow the path |goto 74.16,59.96 < 5 |walk
Follow the path |goto 73.70,60.25 < 5 |walk
Leave the cave |goto 73.60,60.78 < 5 |walk
click Jailer Cage##277859
Open the Cage |q 49286/2 |goto 73.66,60.97
step
talk Deyon##128889
turnin Caged Wisdom##49286 |goto 73.66,60.97
accept Lost Chelonians##49287 |goto 73.66,60.97
accept Scrollhunters##49288 |goto 73.66,60.97
stickystart "Recover_Tortollan_Scrolls"
step
Follow the path |goto 73.78,61.96 < 7 |only if walking
Continue following the path |goto 73.92,64.43 < 7 |only if walking
Jump down here |goto 73.94,65.06 < 5 |only if walking
Follow the path |goto 74.05,65.55 < 7 |only if walking
Follow the path |goto 73.99,65.86 < 5 |only if walking
click Nazeshi Cage##281219
Free Kono |q 49287/1 |goto 73.94,65.87
step
Follow the path |goto 74.12,66.07 < 7 |only if walking
Follow the path |goto 75.02,66.43 < 7 |only if walking
click Nazeshi Cage##281219
Free Rauloo |q 49287/2 |goto 75.15,66.53
step
Follow the path |goto 75.46,65.70 < 7 |only if walking
Continue following the path |goto 75.81,65.40 < 7 |only if walking
Follow the path up |goto 76.43,66.03 < 7 |only if walking
Follow the path up |goto 76.69,66.29 < 7 |only if walking
click Nazeshi Cage##281219
Free Akru |q 49287/3 |goto 77.05,66.45
step
Follow the path |goto 76.92,66.16 < 7 |only if walking
Follow the path |goto 76.96,65.27 < 7 |only if walking
click Nazeshi Cage##281219
Free Crosh |q 49287/4 |goto 77.29,64.36
step
label "Recover_Tortollan_Scrolls"
kill Nazeshi Tempest-Wielder##128604+
Recover #5# Tortollan Scrolls |q 49288/1 |goto 76.91,64.94
step
Follow the path |goto 77.06,63.84 < 7 |only if walking
Follow the path up |goto 76.95,63.36 < 7 |only if walking
Continue up the path |goto 76.34,63.10 < 7 |only if walking
Follow the path |goto 75.77,62.97 7 |only if walking
Follow the path up |goto 75.58,62.31 < 7 |only if walking
talk Deyon##128925
turnin Lost Chelonians##49287 |goto 75.22,61.48
turnin Scrollhunters##49288 |goto 75.22,61.48
accept A Special Stone##49289 |goto 75.22,61.48
step
Follow the path up |goto 75.48,61.29 < 7 |only if walking
Follow the path |goto 75.93,61.32 < 7 |only if walking
use the Scroll of Storm Control##157539
|tip Use it to gain the "Stormstruck" ability.
kill Tidemistress Nazesh##128712
|tip She walks around this area.
|tip Use the "Stormstruck" ability on her as you fight her.
|tip It appears as a button on the screen.
collect Report from Zuldazar##157543 |q 49289/1 |goto 76.64,61.22
step
click Fractured Azerite##289519
collect Stone Fragment##157554 |q 49289/2 |goto 76.68,61.39
step
Follow the path down |goto 75.71,61.28 < 7 |only if walking
talk Deyon##128925
turnin A Special Stone##49289 |goto 75.22,61.48
step
Watch the dialogue
talk Deyon##128925
accept Find Their Words##51407 |goto 75.22,61.48
step
Watch the dialogue
clicknpc Outpost Portal##140342 |goto 75.19,61.46
Teleport to Seeker's Outpost |goto 70.43,64.86 < 10 |noway |c |q 51407
step
talk Akru##129717
turnin Find Their Words##51407 |goto 70.56,64.89
accept A Different Outcome##50331 |goto 70.56,64.89
step
Follow the path |goto Zuldazar/0 77.29,55.19 < 7 |only if walking
Follow the path down |goto 76.98,54.91 < 7 |only if walking
Follow the path |goto 76.93,53.99 < 7 |only if walking
Continue following the path |goto 76.24,53.23 < 7 |only if walking
Continue following the path |goto 75.92,52.14 < 7 |only if walking
Follow the path up |goto 75.98,51.31 < 7 |only if walking
Jump down here |goto 76.74,51.12 < 7 |only if walking
Follow the path |goto 77.46,51.08 < 7 |only if walking
Follow the path |goto 79.40,50.13 < 7 |only if walking
Continue following the path |goto 79.85,49.14 < 7 |only if walking
Continue following the path |goto 80.08,47.64 < 7 |only if walking
Continue following the path |goto 80.33,47.07 < 7 |only if walking
talk Rokor##125047
turnin A Different Outcome##50331 |goto 81.35,45.79
accept The Scrolls of Gral##48015 |goto 81.35,45.79
accept Clear the Riffraff##48014 |goto 81.35,45.79
stickystart "Slay_Brackfin_Giblins"
step
click Waves of Power##272562
collect Waves of Power##151853 |q 48015/1 |goto 80.52,45.01
step
Follow the path |goto 80.68,44.95 < 7 |only if walking
Follow the path |goto 80.82,44.69 < 7 |only if walking
Follow the path up |goto 80.69,44.29 < 5 |only if walking
click Scroll of Purify##272561
collect Scroll of Purify##151854 |q 48015/2 |goto 79.99,44.45
step
Follow the path down |goto 80.40,44.24 < 7 |only if walking
Follow the path |goto 80.72,43.72 < 5 |only if walking
click Edicts of Gral##272563
collect Edicts of Gral##151852 |q 48015/3 |goto 80.76,43.28
step
label "Slay_Brackfin_Giblins"
Kill Brackfin enemies around this area
Slay #6# Brackfin Gilbins |q 48014/1 |goto 80.72,43.96
step
Follow the path up |goto 80.65,43.83 < 7 |only if walking
Follow the path |goto 79.94,43.27 < 10 |only if walking
Follow the path |goto 79.34,42.39 < 5 |only if walking
talk Trader Kro##125039
turnin Clear the Riffraff##48014 |goto 79.22,42.28
step
talk Scrollsage Goji##125041
turnin The Scrolls of Gral##48015 |goto 79.20,42.10
accept Saving for Later##48025 |goto 79.20,42.10
step
talk Trader Kro##125039
accept Awaken a God##49969 |goto 79.22,42.28
step
clicknpc Scroll of Flight##134011
fpath Atal'Gral |goto 79.97,41.40
stickystart "Collect_Chunks_of_Naga_Flesh"
step
Follow the path down |goto 79.97,41.91 < 7 |only if walking
Follow the path |goto 80.44,42.21 < 7 |only if walking
use the Scroll of Illusion##151859
|tip Use it next to Gral's Tooth.
Disguise Gral's Tooth |q 48025/4 |goto 81.75,41.21
step
Follow the path |goto 82.18,40.73 < 7 |only if walking
Follow the path |goto 82.74,40.84 < 7 |only if walking
Follow the path |goto 82.99,40.67 < 7 |only if walking
use the Scroll of Illusion##151859
|tip Use it next to the Voice of the Ocean.
|tip Underwater.
Disguise the Voice of the Ocean |q 48025/5 |goto 83.52,39.96
step
Follow the path |goto 83.03,40.01 < 7 |only if walking
Follow the path |goto 82.42,39.70 < 7 |only if walking
use the Scroll of Illusion##151859
|tip Use it next to the Cask of Blessed Water.
Disguise the Cask of Blessed Water |q 48025/3 |goto 81.38,39.00
step
Follow the path |goto 80.58,38.79 < 7 |only if walking
Continue following the path |goto 80.05,38.13 < 7 |only if walking
Continue following the path |goto 79.63,37.14 < 7 |only if walking
use the Scroll of Illusion##151859
|tip Use it next to the Chest of Pearls.
|tip Underwater.
Disguise the Chest of Pearls |q 48025/2 |goto 79.67,36.73
step
Follow the path up |goto 79.23,36.62 < 7 |only if walking
Follow the path |goto 79.09,37.59 < 7 |only if walking
Follow the path |goto 78.76,38.10 < 7 |only if walking
Enter the building |goto 78.50,37.74 < 3 |walk
use the Scroll of Illusion##151859
|tip Use it next to the Fetishes of Gral.
|tip Inside the tent.
Disguise the Fetishes of Gral |q 48025/1 |goto 78.56,37.62
step
Leave the building |goto 78.51,37.75 < 3 |c |q 48025
step
label "Collect_Chunks_of_Naga_Flesh"
Follow the path |goto 78.48,37.94 < 10 |only if walking
Kill Dreadcoil enemies around this area
|tip Dreadcoil Brutes will not drop the quest item.
collect 12 Chunk of Naga Flesh##156539 |q 49969/1 |goto 78.72,38.51
step
talk Scrollsage Goji##125041
turnin Saving for Later##48025 |goto 79.20,42.10
step
Follow the path down |goto 80.03,42.05 < 7 |only if walking
Follow the path |goto 80.82,41.91 < 7 |only if walking
Follow the path |goto 81.38,42.26 < 7 |only if walking
click Offering Vessel##279705
|tip Underwater.
turnin Awaken a God##49969 |goto 82.77,42.32
step
clicknpc Shrine of Gral##131475
|tip Underwater.
accept Beneath the Waves##48026 |goto 82.85,42.33
stickystart "Slay_Summoner_Siavass"
step
kill Whispering Horror##131487 |q 48026/2 |goto 83.60,44.27
|tip Underwater.
step
label "Slay_Summoner_Siavass"
kill Summoner Siavass##125087 |q 48026/1 |goto 83.72,44.61
|tip Underwater.
step
_Next to you:_
talk Spirit of Gral##131461
turnin Beneath the Waves##48026
accept Word from the Deep##51538
step
Follow the path up |goto 81.02,43.93 < 7 |only if walking
Follow the path up |goto 80.62,43.75 < |only if walking
Follow the path |goto 79.96,43.30 < 7 |only if walking
Follow the path |goto 79.33,42.36 < 7 |only if walking
talk Scrollsage Goji##125041
turnin Word from the Deep##51538 |goto 79.20,42.10
step
Follow the path down |goto 79.52,41.68 < 7 |only if walking
Follow the path down |goto 78.81,40.66 < 7 |only if walking
Follow the path |goto 78.63,39.74 < 7 |only if walking
Follow the path |goto 78.07,39.26 < 7 |only if walking
Follow the path up |goto 77.71,38.86 < 7 |only if walking
Follow the path up |goto 77.42,38.52 < 7 |only if walking
Follow the road |goto 77.09,36.80 < 7 |only if walking
Follow the road |goto 76.47,36.14 < 7 |only if walking
Cross the bridge |goto 76.30,35.70 < 7 |only if walking
Follow the road |goto 76.21,34.80 < 7 |only if walking
Continue following the road |goto 75.45,32.41 < 7 |only if walking
Continue following the road |goto 74.74,31.44 < 7 |only if walking
Continue following the road |goto 73.95,30.27 < 7 |only if walking
Continue following the road |goto 73.29,28.99 < 7 |only if walking
Run up the stairs |goto 72.87,28.99 < 7 |only if walking
Run up the stairs |goto 72.33,29.24 < 7 |only if walking
Follow the path |goto 72.14,29.33 < 7 |only if walking
Follow the path |goto 71.78,29.85 < 7 |only if walking
Follow the path |goto 71.46,29.90 < 7 |only if walking
talk Scroll of Flight##136331
fpath Scaletrader Post |goto 70.78,29.60
step
Follow the road |goto 70.35,29.64 < 7 |only if walking
Continue following the road |goto 70.13,28.96 < 7 |only if walking
Continue following the road |goto 68.89,26.85 < 7 |only if walking
Continue following the road |goto 69.22,25.68 < 7 |only if walking
Follow the road |goto 69.04,23.97 < 7 |only if walking
Follow the path |goto 67.81,21.51 < 7 |only if walking
Follow the path up |goto 68.18,20.20 < 7 |only if walking
Follow the path up |goto 68.04,19.17 < 7 |only if walking
Follow the path up |goto 67.56,18.40 < 7 |only if walking
Run up the stairs |goto 67.50,18.04 < 5 |only if walking
click Hunter's Board##271706
accept Hunt for King K'tal##47706 |goto 67.44,17.92
accept WANTED: Ten'gor and Nol'ixwan##51091 |goto 67.44,17.92
step
talk Hemet Nesingwary##123005
accept He's Gone Mad!##50466 |goto 67.50,17.71
step
talk Tracker Burke##123022
accept Die, Die, Diemetradon##47583 |goto 67.57,17.73
step
talk Erak the Aloof##123026
accept A Thorn in the Side##47584 |goto 67.45,17.72
step
Run down the stairs |goto 67.51,17.90 < 5 |only if walking
Follow the path |goto 67.50,18.05 < 5 |only if walking
Follow the path |goto 67.36,18.32 < 7 |only if walking
Continue following the path |goto 66.95,18.26 < 7 |only if walking
talk Lasa the Galerider##123006
fpath Nesingwary's Gameland |goto 66.19,17.60
step
Follow the path |goto 66.84,18.18 < 7 |only if walking
Follow the path down |goto 67.51,18.40 < 7 |only if walking
Follow the path up |goto 68.52,19.15 < 7 |only if walking
talk Trapper Custer##123118
accept Predatory##47585 |goto 68.85,19.44
stickystart "Collect_Skull_Of_Ktal"
stickystart "Slay_Venemous_Diemetradons"
stickystart "Slay_Ankylodons"
step
Follow the path down |goto 68.51,19.18 < 7 |only if walking
Follow the path |goto 68.19,19.52 < 7 |only if walking
Continue following the path |goto 68.33,22.41 < 10 |only if walking
Continue following the path |goto 68.20,23.87 < 7 |only if walking
Follow the path up |goto 68.01,24.52 < 7 |only if walking
clicknpc Marksman Julyen##123113
Find Marksman Julyen |q 47585/2 |goto 67.81,25.04
step
Follow the path |goto 68.12,24.17 < 7 |only if walking
Follow the road |goto 68.68,23.37 < 7 |only if walking
Follow the road |goto 69.03,23.80 < 7 |only if walking
Follow the path |goto 69.24,25.98 < 7 |only if walking
Follow the path up |goto 70.28,26.55 < 7 |only if walking
Follow the path |goto 70.64,26.72 < 7 |only if walking
kill Wildtusk##123653 |q 50466/1 |goto 70.94,26.46
|tip He walks around this area.
step
Follow the path |goto 71.15,26.01 < 5 |only if walking
Follow the path |goto 71.15,25.68 < 5 |only if walking
Follow the path down |goto 70.98,25.27 < 7 |only if walking
Follow the path down |goto 70.88,23.65 < 7 |only if walking
clicknpc Ranger Paalu##123117
Find Ranger Paalu |q 47585/1 |goto 70.64,22.09
step
label "Collect_Skull_Of_Ktal"
kill King K'tal##123502
|tip He looks like a large brown and gold tyrannosarus rex that walks around this area.
|tip He will appear on your minimap as a yellow dot.
|tip You may need help with this.
collect Skull of K'tal##151169 |q 47706/1 |goto 70.19,22.51
step
label "Slay_Venemous_Diemetradons"
kill 8 Venomous Diemetradon##123098 |q 47583/1 |goto 68.56,23.01
step
label "Slay_Ankylodons"
Kill Ankylodon enemies around this area
Slay #12# Ankylodons |q 47584/1 |goto 68.56,23.01
step
Follow the path up |goto 68.20,20.12 < 7 |only if walking
Follow the path up |goto 67.84,18.90 < 7 |only if walking
click Tracker Burke's Hat##291013
turnin Die, Die, Diemetradon##47583 |goto 67.49,18.89
step
talk Erak the Aloof##141948
turnin A Thorn in the Side##47584 |goto 68.01,18.03
step
Run up the stairs |goto 67.50,18.03 < 5 |only if walking
Follow the path |goto 67.50,17.88 < 5 |only if walking
talk Huntmaster Vol'ka##123019
turnin Hunt for King K'tal##47706 |goto 67.50,17.62
turnin He's Gone Mad!##50466 |goto 67.50,17.62
turnin Predatory##47585 |goto 67.50,17.62
accept Hunting the Hunter##47586 |goto 67.50,17.62
step
Run down the stairs |goto 67.51,17.89 < 5 |only if walking
Follow the path |goto 67.50,18.06 < 5 |only if walking
Follow the path |goto 67.31,18.33 < 7 |only if walking
Follow the path down |goto 66.20,18.37 < 7 |only if walking
Jump down here |goto 65.67,19.65 < 7 |only if walking
Follow the road |goto 65.23,20.77 < 7 |only if walking
Continue following the road |goto 64.15,20.36 < 7 |only if walking
Follow the path |goto 63.35,19.38 < 10 |only if walking
Follow the path |goto 62.66,19.28 < 7 |only if walking
click Nesingwary's Campfire##293499
Find Nesingwary's Last Camp |q 47586/1 |goto 63.66,19.79 |goto 62.45,19.27
step
Follow the path |goto 62.14,19.04 < 7 |only if walking
Follow the path up |goto 62.02,18.82 < 7 |only if walking
Follow the path |goto 61.75,18.57 < 5 |only if walking
Follow the path |goto 61.47,18.25 < 5 |only if walking
click Dwarf Trap##271561
Find the Suspicious Trap |q 47586/2 |goto 61.48,17.95
step
Follow the path |goto 61.61,17.70 < 7 |only if walking
Follow the path |goto 62.03,17.48 < 7 |only if walking
click Nesingwary's Favorite Rifle##271558
Find Nesingwary's Prized Possession |q 47586/3 |goto 62.32,16.87
step
Follow the path |goto 62.48,16.67 < 7 |only if walking
Follow the path |goto 62.45,16.03 < 7 |only if walking
Run up the stairs |goto 62.56,15.68 < 5 |only if walking
Follow the path |goto 62.77,15.67 < 5 |only if walking
Run up the stairs |goto 63.27,16.04 < 5 |only if walking
Enter the building |goto 63.40,16.11 < 3 |walk
talk Hemet Nesingwary##138669
|tip Inside the building.
turnin Hunting the Hunter##47586 |goto 63.50,16.15
accept Headhunter Jo##47587 |goto 63.50,16.15
step
Leave the building |goto 63.41,16.12 < 3 |walk
kill Headhunter Jo##123007 |q 47587/1 |goto 62.96,15.81
step
Run up the stairs |goto 63.27,16.04 < 5 |only if walking
Enter the building |goto 63.40,16.11 < 3 |walk
talk Hemet Nesingwary##138669
|tip Inside the building.
turnin Headhunter Jo##47587 |goto 63.50,16.15
stickystart "Slay_Tengor"
step
Leave the building |goto 63.41,16.11 < 3 |walk
Run down the stairs |goto 62.78,15.67 < 5 |only if walking
Follow the path |goto 62.55,15.68 < 5 |only if walking
Follow the path |goto 62.45,16.04 < 7 |only if walking
Follow the path |goto 62.59,18.15 < 7 |only if walking
Follow the path down |goto 62.24,18.62 < 7 |only if walking
Follow the road |goto 61.11,20.85 < 7 |only if walking
Follow the path up |goto 61.04,23.96 < 7 |only if walking
kill Nol'ixwan##130741 |q 51091/1 |goto 61.69,25.44
|tip You may need help with this.
step
label "Slay_Tengor"
kill Ten'gor##130713 |q 51091/2 |goto 61.94,25.40
|tip You may need help with this.
step
talk Huntmaster Vol'ka##123019
turnin WANTED: Ten'gor and Nol'ixwan##51091 |goto 67.50,17.62
step
Follow the path |goto 66.82,18.28 < 7 |only if walking
Run up the stairs |goto 67.50,18.04 < 5 |only if walking
Follow the path |goto 67.50,17.89 < 5 |only if walking
talk Huntmaster Vol'ka##123019
turnin WANTED: Ten'gor and Nol'ixwan##51091 |goto 67.50,17.63
step
Reach Friendly Reptuation with the 7th Legion |condition rep('7th Legion') >= Friendly
|tip Use the "BFA World Quests Guide" to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
|tip Complete Warfronts to gain reputation.
|tip Complete Missions at your mission table that reward reputation with the 7th Legion.
step
accept The Warfront Looms##53175
|tip You will automatically accept this quest.
step
talk Ralston Karn##142721
turnin The Warfront Looms##53175 |goto Boralus/0 65.88,26.05
accept To the Front##53194 |goto Boralus/0 65.88,26.05
step
Follow the path |goto 66.38,25.49 < 5 |only if walking
talk Yvera Dawnwing##143380
Tell her _"Send me to Arathi Highlands!"_ |goto 66.24,24.79
Teleport to Ar'gorok |goto Arathi Highlands/0 21.69,65.16 < 7 |noway |c |q 53194
step
talk Captain Roderick Brewston##143018
turnin To the Front##53194 |goto 19.25,61.93
accept Touring the Front##53197 |goto 19.25,61.93
step
talk Grayson Bell##142008
Tell him _"Captain Brewston said you could give me a tour of the area."_
Begin Riding the Alliance Gryphon |invehicle |goto 18.26,67.93 |q 53197
step
Watch the dialogue
View the Battleground with Grayson Bell |q 53197/3 |goto 19.42,56.21
step
Watch the dialogue
Return to the Ground |outvehicle |goto 18.20,67.48 |q 53197
step
Enter the mine |goto 27.49,55.55 < 5 |walk
Follow the path down |goto 27.66,54.52 < 5 |walk
Follow the path down |goto 27.55,53.99 < 5 |walk
Follow the path down |goto 27.11,53.65 < 5 |walk
Jump down here |goto 26.43,55.10 < 5 |walk
Follow the path |goto 26.85,56.02 < 5 |walk
talk Foreman Tully##143318
|tip Inside the mine.
Tell her _"Thank you."_
Check on Foreman Tully |q 53197/1 |goto 27.55,57.01
step
Run up the stairs |goto 26.68,56.22 < 5 |walk
Run up the stairs |goto 26.20,55.39 < 5 |walk
Follow the path |goto 26.31,55.05 < 5 |walk
Follow the path up |goto 26.62,54.54 < 5 |walk
Follow the path up |goto 27.18,53.66 < 5 |walk
Continue up the path |goto 27.60,54.19 < 5 |walk
Leave the mine |goto 27.51,55.45 < 5 |walk
talk Lumbering Leo##143321
Tell him _"Thank you."_
Check on Lumbering Leo |q 53197/2 |goto 12.01,52.12
step
talk Captain Roderick Brewston##143018
turnin Touring the Front##53197 |goto 19.24,61.93
accept Back to Boralus##53198 |goto 19.24,61.93
step
talk Yvera Dawnwing##143172
Tell her _"Send me to Boralus!"_ |goto 21.70,64.88
Return to Boralus |goto Boralus/0 66.72,24.80 < 7 |noway |c |q 53198
step
Follow the path |goto 66.27,25.65 < 5 |only if walking
talk Ralston Karn##142721
turnin Back to Boralus##53198 |goto 65.88,26.03
accept Warfront: The Battle for Stromgarde##53414 |goto 65.88,26.03
step
clicknpc War Table##131752
View the War Table in Boralus |q 53414/1 |goto 65.91,26.02
step
clicknpc War Table##131752
|tip Click the "Join Queue" button to queue for a warfront.
|tip If the Alliance currently controls Ar'gorok, you will have to wait until the Horde gains control.
Click Here After Entering the Warfront |confirm |goto 65.91,26.00 |q 53414
step
Defeat the Horde at the Battle for Stromgarde |q 53414/2
|tip Move around with other players and kill enemies.
|tip Collect Iron and Wood to help build buildings and recruit troops to help you fight.
step
talk Ralston Karn##142721
turnin Warfront: The Battle for Stromgarde##53414 |goto Boralus/0 65.86,26.04
step
Reach #4500# Reptuation into Friendly with the 7th Legion |condition repval('7th Legion','Friendly')>=4500
|tip Use the "BFA World Quests Guide" to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
step
accept Operation: Blood Arrow##53069
|tip You will automatically accept this quest.
step
talk Halford Wyrmbane##135612
turnin Operation: Blood Arrow##53069 |goto 69.27,27.01
accept Crippling the Horde##52147 |goto 69.27,27.01
step
Run up the stairs |goto 69.08,26.44 < 3 |only if walking
Follow the path |goto 68.85,26.42 < 3 |only if walking
talk Grand Admiral Jes-Tereth##135681
Tell her _"Set sail for Nazmir."_
Speak with Jes-Tereth to Sail to Nazmir |q 52147/1 |goto 67.95,26.70
step
Travel to Fort Victory |goto Nazmir/0 61.95,39.92 < 7 |noway |c |q 52147
step
Follow the path |goto 61.64,40.72 < 7 |only if walking
talk Shandris Feathermoon##140258
turnin Crippling the Horde##52147 |goto 61.97,41.24
accept How to Kill a Dark Ranger##52150 |goto 61.97,41.24
step
talk Shandris Feathermoon##140258
Tell her _"Let's go over the plan to kill Captain Areiel."_
Watch the dialogue
Explain Shandris's Plan |q 52150/1 |goto 61.97,41.24
step
talk Shandris Feathermoon##140258
turnin How to Kill a Dark Ranger##52150 |goto 61.97,41.24
accept Tortollans in Distress##52156 |goto 61.97,41.24
step
talk John J. Keeshan##139609
accept The Savage Hunt##52158 |goto 61.78,41.32
stickystart "Slay_Blood_Trolls_And_Allies"
step
Follow the path |goto 61.69,40.78 < 5 |only if walking
Follow the path |goto 61.52,40.32 < 7 |only if walking
Continue following the path |goto 61.97,34.93 < 7 |only if walking
Follow the path up |goto 62.30,31.35 < 7 |only if walking
Follow the path |goto 61.62,29.93 < 7 |only if walking
Cross the bridge |goto 60.53,28.52 < 7 |only if walking
clicknpc Tortollan Captive##128001+
|tip They look like friendly stunned turtle NPCs around this area.
Rescue #6# Tortollan Captives |q 52156/1 |goto 59.96,27.53
step
label "Slay_Blood_Trolls_And_Allies"
Kill enemies around this area
Slay #15# Blood Trolls and Allies |q 52158/1 |goto 59.96,27.53
step
Follow the path |goto 51.17,21.37 < 7 |only if walking
talk Rescued Tortollan##140320
Ask him _"Can you tell us about the Horde's movements in the area?"_
Watch the dialogue
Speak to the Rescued Tortollan in Redfield's Watch |q 52156/2 |goto 51.27,21.79
step
talk John J. Keeshan##139609
turnin The Savage Hunt##52158 |goto 51.27,21.89
step
talk Shandris Feathermoon##140258
turnin Tortollans in Distress##52156 |goto 51.33,21.87
accept Ending Areiel##52170 |goto 51.33,21.87
step
talk John J. Keeshan##139609
accept One Option: Fire##52171 |goto 51.27,21.89
accept They Can't Stay Here##52172 |goto 51.27,21.89
stickystart "Slay_Horde_Soldiers"
step
Follow the path |goto 51.13,21.86 < 5 |only if walking
Follow the path |goto 48.15,26.07 < 7 |only if walking
Continue following the path |goto 45.04,29.52 < 7 |only if walking
Follow the path up |goto 43.88,29.10 < 7 |only if walking
Follow the path |goto 43.51,29.05 < 7 |only if walking
Follow the path |goto 41.67,28.13 < 7 |only if walking
click Food Cache
Destroy the Food Cache |q 52171/3 |goto 41.25,27.54
step
Follow the path |goto 41.14,27.88 < 7 |only if walking
Follow the path |goto 40.22,28.16 < 7 |only if walking
click Bwonsamdi Offerings
Destroy the Bwonsamdi Offerings |q 52171/1 |goto 39.96,28.45
step
Follow the path |goto 39.86,28.00 < 7 |only if walking
Follow the path |goto 38.04,28.18 < 7 |only if walking
click Medicinal Supplies
Destroy the Medicinal Supplies |q 52171/2 |goto 37.68,28.87
step
Run down the stairs |goto 37.59,28.22 < 5 |only if walking
Run up the stairs |goto 36.85,28.42 < 5 |only if walking
Follow the path |goto 36.55,28.90 < 7 |only if walking
Run up the stairs |goto 36.02,29.29 < 7 |only if walking
kill Ranger Captain Areiel##140399
collect Horde Missive##161332 |q 52170/1 |goto 35.83,29.31
step
Follow the path |goto 36.05,29.33 < 7 |only if walking
Run down the stairs |goto 36.68,30.39 < 5 |only if walking
Run up the stairs |goto 37.38,30.95 < 5 |only if walking
Follow the path |goto 37.67,31.09 < 5 |only if walking
click Armory Supplies
Destroy the Armory Supplies |q 52171/4 |goto 37.90,32.30
step
label "Slay_Horde_Soldiers"
Kill enemies around this area
Slay #12# Horde Soldiers |q 52172/1 |goto 38.81,31.94
step
Follow the path |goto 51.17,21.37 < 7 |only if walking
talk John J. Keeshan##139609
turnin One Option: Fire##52171 |goto 51.27,21.89
turnin They Can't Stay Here##52172 |goto 51.27,21.89
step
talk Shandris Feathermoon##140258
turnin Ending Areiel##52170 |goto 51.34,21.87
accept Meeting of the Minds##52208 |goto 51.34,21.87
step
Follow the path |goto 51.13,21.86 < 5 |only if walking
Continue following the path |goto 47.17,27.22 < 10 |only if walking
Continue following the path |goto 45.36,30.48 < 7 |only if walking
Continue following the path |goto 44.02,33.91 < 7 |only if walking
Continue following the path |goto 43.72,35.40 < 5 |only if walking
Continue following the path |goto 43.79,36.09 < 7 |only if walking
Continue following the path |goto 43.51,38.34 < 7 |only if walking
talk Shandris Feathermoon##140519
Choose _(Take the flask of invisibility.)_
Speak with Shandris Feathermoon |q 52208/1 |goto 42.14,39.73
step
use the Invisibility Flask##163196
Become Invisible |havebuff 132320 |q 52208
step
Follow the path |goto 42.12,40.04 < 5 |only if walking
Follow the path up |goto 40.34,41.15 < 7 |only if walking
Run up the stairs |goto 39.75,41.89 < 5 |only if walking
Follow the path |goto 39.69,42.50 < 5 |only if walking
Watch the dialogue
|tip None of the enemies can detect you when you're invisible.
Listen to the Horde Meeting |q 52208/2 |goto 40.20,43.86
step
Jump down here |goto 40.27,42.41 < 5 |only if walking
Follow the path |goto 42.24,40.24 < 7 |only if walking
talk Shandris Feathermoon##140519
turnin Meeting of the Minds##52208 |goto 42.13,39.74
accept Target: Blood Prince Dreven##52219 |goto 42.13,39.74
step
Follow the path |goto 42.28,40.19 < 7 |only if walking
Follow the path |goto 41.89,44.96 < 7 |only if walking
Continue following the path |goto 38.07,46.86 < 7 |only if walking
Follow the path |goto 37.31,47.95 < 7 |only if walking
Cross the bridge |goto 36.98,52.54 < 7 |only if walking
Follow the path |goto 36.87,53.36 < 7 |only if walking
Continue following the path |goto 36.59,57.05 < 7 |only if walking
Continue following the path |goto 37.26,59.64 < 7 |only if walking
Cross the bridge |goto 38.04,60.72 < 7 |only if walking
Follow the path |goto 38.53,61.55 < 7 |only if walking
Cross the bridge |goto 38.84,62.11 < 7 |only if walking
Follow the path |goto 39.08,62.74 < 7 |only if walking
Follow the path |goto 39.09,63.72 < 7 |only if walking
Cross the bridge |goto 39.11,65.15 < 7 |c |q 52219
step
Follow the path up |goto 38.76,65.25 < 7 |only if walking
Follow the path up |goto 37.49,65.39 < 7 |only if walking
Cross the bridge |goto 36.00,64.78 < 7 |only if walking
Follow the path |goto 34.95,64.90 < 7 |only if walking
Cross the bridge |goto 34.52,65.02 < 7 |only if walking
Follow the path |goto 33.11,65.89 < 7 |only if walking
Cross the bridge |goto 31.90,65.88 < 7 |only if walking
Follow the path |goto 31.09,65.59 < 7 |only if walking
Cross the bridge |goto 30.64,65.68 < 7 |only if walking
Follow the path |goto 30.21,65.85 < 7 |only if walking
Follow the path |goto 29.52,65.62 < 7 |only if walking
Continue following the path |goto 28.41,64.60 < 7 |only if walking
Cross the bridge |goto 27.02,64.26 < 7 |only if walking
Follow the path |goto 26.21,64.26 < 7 |only if walking
Follow the path |goto 24.05,65.79 < 7 |only if walking
Follow the path down |goto 22.76,62.31 < 7 |only if walking
Follow the path |goto 22.55,61.53 < 7 |only if walking
Continue following the path |goto 21.93,61.05 < 7 |only if walking
Enter the building |goto 20.68,60.77 < 7 |walk
talk John J. Keeshan##140578
|tip Inside the building.
Tell him _"I'm ready to kill Dreven and his followers."_
Meet John J. Keeshan |q 52219/1 |goto 20.15,60.76
step
Watch the dialogue
|tip Inside the building.
Kill the enemies that attack
kill Blood Prince Dreven##140603
Watch the dialogue
Kill Blood Prince Dreven and His Cohorts |q 52219/2 |goto 20.26,60.72
step
Leave the building |goto 20.75,60.72 < 7 |c |q 52219
step
talk Shandris Feathermoon##140258
turnin Target: Blood Prince Dreven##52219 |goto 61.97,41.25
step
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Void Elf Race Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the new Void Elf allied race.",
condition_suggested=function() return level>=110 end,
},[[
step
Load the "World Quests Unlock Quest Line" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests Unlock Quest Line"
|tip Click the line above to load the guide.
|tip You must complete the "Uniting the Isles" quest in this guide to start the Broken Shore Campaign.
|tip If you already have a character that has completed this quest, you can just talk to Khadgar to complete it.
Complete the "Uniting the Isles" Quest |condition completedq(43341) or completedq(45727) |goto Dalaran L/10 28.47,48.34
step
Load the "Broken Shore Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip Click the line above to load the guide.
|tip You must complete the first two quests in this guide to start the Argus Campaign.
Complete the "Assault on Broken Shore" Quest |condition completedq(46734)
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the "You Are Now Prepared!" Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Argussian Reach.
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Argussian Reach award reputation with them.
Use Argussian Reach Reputation Insignias
|tip These are awarded from Order Hall missions, Argussian Reach emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152959 |only if itemcount(152959) >= 1
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152960 |only if itemcount(152960) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152961 |only if itemcount(152961) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152954 |only if itemcount(152954) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Zygor's Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quest for the Argussian Reach is "Fuel of a Doomed World."
Gain Exalted Reputation with the Argussian Reach |achieve 12076
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
|tip If not, press Shift + J and check your Adventure Journal.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(50071)
step
talk Alleria Windrunner##126321
accept The Ghostlands##49787 |goto 52.24,13.51
step
click Rift to Ghostlands
|tip Wait a moment for Alleria to open the rift.
Travel to the Ghostlands with Alleria |q 49787/1 |goto 52.33,13.34
step
Follow the path |goto Ghostlands/0 37.95,17.96 < 15 |only if walking
Follow the path |goto 38.05,21.59 < 15 |only if walking
Follow the path |goto 36.47,26.24 < 10 |only if walking
Follow the path |goto 34.57,31.64 < 10 |only if walking
Cross the water |goto 34.42,32.63 < 7 |only if walking
Enter the building |goto 33.70,33.59 < 7 |walk
click Umbric's Notes - Sanctum of the Moon
Locate Umbric's Notes - Sanctum of the Moon |q 49787/2 |goto 33.63,34.46
step
Leave the building |goto 33.81,33.43 < 7 |walk
Follow the path |goto 34.99,33.77 < 10 |only if walking
Follow the path |goto 37.08,38.28 < 10 |only if walking
Follow the path |goto 40.28,41.20 < 15 |only if walking
Go up the hill |goto 42.90,43.93 < 15 |only if walking
Follow the path |goto 43.89,45.62 < 10 |only if walking
Follow the path |goto 43.32,48.01 < 10 |only if walking
Follow the path |goto 43.41,50.28 < 10 |only if walking
Follow the path |goto 44.72,54.71 < 10 |only if walking
Follow the path |goto 46.49,56.57 < 10 |only if walking
Enter the building |goto 46.68,55.98 < 7 |walk
click Umbric's Notes - Andilien Estate
Locate Umbric's Notes - Andilien Estate |q 49787/3 |goto 46.87,54.97
step
Leave the building |goto 46.65,56.12 < 7 |walk
Follow the path |goto 47.62,58.41 < 15 |only if walking
Follow the path |goto 51.09,57.04 < 10 |only if walking
Follow the path |goto 57.84,58.56 < 10 |only if walking
Follow the path |goto 60.64,52.81 < 15 |only if walking
Follow the path |goto 66.26,45.04 < 15 |only if walking
Follow the path |goto 67.69,35.64 < 15 |only if walking
Follow the path |goto 70.52,33.79 < 10 |only if walking
|tip Avoid the Horde NPCs.
Follow the path |goto 73.82,34.20 < 10 |only if walking
Follow the path |goto 75.77,31.44 < 15 |only if walking
Follow the path |goto 76.96,27.30 < 15 |only if walking
Follow the path |goto 78.05,20.38 < 10 |only if walking
Enter the building |goto 78.81,19.83 < 7 |walk
click Teleportation Console |goto 79.65,17.57
click Umbric's Notes - Dawnstar Spire
|tip They're all the way at the top, up the spiral ramp.
Locate Umbric's Notes - Dawnstar Spire |q 49787/4
step
talk Alleria Windrunner##126321
turnin The Ghostlands##49787 |goto 79.69,19.62
accept Telogrus Rift##48962 |goto 79.69,19.62
step
click Rift to Telogrus
Enter the Rift to Telogrus |scenariostart |goto 79.64,19.86 |q 48962 |future
step
talk Magister Umbric##126646
Ask him _"What is this place?"_
Speak with Umbric |scenariogoal Speak with Umbric##1/37328 |goto Void Elf Scenario/0 47.83,73.88 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 49.59,73.87 < 10 |walk
Follow the path |goto 49.91,75.43 < 7 |walk
Walk with Umbric and Alleria |scenariogoal Walk with Umbric and Alleria.##2/37282 |goto 49.33,76.66 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 50.15,74.91 < 7 |walk
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##3/38503 |goto 48.97,72.91 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 41.30,60.12 < 10 |walk
Kill enemies around this area
|tip Avoid dark colored orbs.
Repel the Void |scenariostage 4 |goto 39.30,54.49 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##5/38971 |goto 37.32,49.26 |q 48962 |future
step
kill Dark Manifestation##126559+
Close the rift |scenariogoal Rift sealed##6/37295 |goto 28.92,40.34 |q 48962 |future
step
kill Nhr'ghesh##126589 |scenariogoal Nhr'ghesh defeated##7/37296 |goto 28.92,40.34 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##8/38972 |goto 28.89,38.30 |q 48962 |future
step
click Voidforge
Shut Down the First Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 29.00,27.81 |count 1 |q 48962 |future
step
click Voidforge
Shut Down the Second Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 28.49,21.70 |count 2 |q 48962 |future
step
click Voidforge
Shut Down the Third Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 26.21,24.46 |count 3 |q 48962 |future
step
kill Nether-Prince Durzaan##126470 |scenariogoal Nether-Walker defeated##10/37284 |goto 27.90,24.09 |q 48962 |future
step
click Rift to Stormwind |goto 27.95,24.50
Leave the Telogrus Rift |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 48962 |future
step
Enter the building |goto 52.76,14.45 < 7 |walk
talk Anduin Wrynn##126301
turnin Telogrus Rift##48962 |goto 52.07,13.41
step
_Congratulations!_
You Unlocked the "Void Elf" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Lightforged Draenei Race Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the new Lightforged Draenei allied race.",
condition_suggested=function() return level>=110 end,
},[[
step
Load the "World Quests Unlock Quest Line" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests Unlock Quest Line"
|tip Click the line above to load the guide.
|tip You must complete the "Uniting the Isles" quest in this guide to start the Broken Shore Campaign.
|tip If you already have a character that has completed this quest, you can just talk to Khadgar to complete it.
Complete the "Uniting the Isles" Quest |condition completedq(43341) or completedq(45727) |goto Dalaran L/10 28.47,48.34
step
Load the "Broken Shore Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip Click the line above to load the guide.
|tip You must complete the first two quests in this guide to start the Argus Campaign.
Complete the "Assault on Broken Shore" Quest |condition completedq(46734)
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the _You Are Now Prepared!_ Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Army of the Light.
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Army of the Light award reputation with them.
Use Army of the Light reputation insignias
|tip These are awarded from Order Hall missions, Army of the Light emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use your Army of the Light Insignia |use Army of the Light Insignia##152957 |only if itemcount(152957) >= 1
Use your Army of the Light Insignia |use Army of the Light Insignia##152958 |only if itemcount(152958) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152956 |only if itemcount(152956) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152955 |only if itemcount(152955) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Zygor's Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quests "Invasion Point Offensive," "Commander's Downfall," "Invasion Onslaught," and "Supplying the Antoran Campaign" reward reputation as well.
Gain Exalted Reputation with the Army of the Light |achieve 12081
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
|tip If not, press Shift + J and check your Adventure Journal.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(48962)
step
talk High Exarch Turalyon##126319
accept The Lightforged##49698 |goto Stormwind City/0 52.12,13.70
step
Leave the building |goto 52.83,14.62 < 7 |walk
clicknpc Lightforged Beacon##130758 |goto 54.41,14.46
Board the Vindicaar |goto Vindicaar Scenario/1 49.97,46.22 |noway |c |q 49698 |future
step
talk Captain Fareeya##130549
turnin The Lightforged##49698 |goto 443.83,27.05
accept Forge of Aeons##49266 |goto 43.83,27.05
step
clicknpc Lightforged Beacon##130511
Enter the Scenario |scenariostart |goto 49.90,46.22 |q 49266 |future
step
Meet with T'paartos |scenariogoal Meet with T'paartos##1/37571 |goto Draenei Scenario/0 88.01,44.45 |q 49266 |future
step
Follow the path |goto 89.02,37.72 < 7 |walk
Enter the building |goto 87.71,29.59 < 7 |walk
Follow T'paartos |scenariogoal Follow T'paartos##2/37710 |goto 88.76,28.34 |q 49266 |future
step
See the Past |scenariogoal See the past##3/37711 |goto 88.76,28.34 |q 49266 |future
|tip Wait for the dialogue to complete.
step
Leave the building |goto 87.59,29.64 < 7 |walk
Enter the Swamp |scenariogoal Swamp entered##4/37712 |goto 83.67,32.38 |q 49266 |future
step
Go down the hill |goto Draenei Scenario/0 79.50,33.54 < 10 |walk
Follow the path |goto 72.26,22.78 < 7 |walk
Cross the bridge |goto 69.52,26.08 < 7 |walk
Find the Child |scenariogoal Child found##5/37718 |goto 66.79,29.70 |q 49266 |future
step
kill Swamp Serpent##128115 |scenariogoal Swamp Serpent slain##6/37717 |goto 66.79,29.70 |q 49266 |future
step
Cross the bridge |goto Draenei Scenario/0 61.85,31.98 < 7 |walk
Find the Refuge |scenariogoal Refuge found##7/37931 |goto 57.10,23.78 |q 49266 |future
step
Enter the tunnel |goto Draenei Scenario/0 52.98,26.33 < 7 |walk
clicknpc Crystal##128036
Collect the Crystal |scenariogoal Crystal collected##8/37932 |goto 47.01,27.36 |q 49266 |future
step
kill Crystal Fury##128038 |scenariogoal Crystal Fury slain##9/37968 |goto 47.55,27.88 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 51.85,27.05 < 7 |walk
Leave the tunnel |goto 56.98,23.63 < 7 |walk
Kill Doubt and Fear enemies around this area
Conquer #7# Doubts and Fears |scenariogoal Doubts and Fears conquered##10/37933 |goto 45.59,41.87 |q 49266 |future
step
Follow the path |goto 39.25,43.77 < 10 |walk
Follow the path |goto 22.67,37.22 < 10 |walk
Find the Cave |scenariogoal Cave found##11/38069 |goto 16.63,46.71 |q 49266 |future
step
Enter the tunnel |goto 13.36,49.96 < 7 |walk
kill Terror##128427 |scenariogoal Terror defeated##12/38070 |goto 8.61,50.26 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 12.77,50.31 < 7 |walk
Leave the cave |goto 17.01,46.38 < 7 |walk
Follow the path |goto 23.41,36.61 < 10 |walk
Follow the path |goto 39.32,44.45 < 10 |walk
Follow T'paartos |scenariogoal Follow T'paartos##13/38071 |goto 45.67,59.90 |q 49266 |future
step
clicknpc T'paartos##128424
Free T'paartos |scenariogoal T'paartos freed##14/38072 |goto 46.80,65.95 |q 49266 |future
step
Follow the path |goto 49.44,64.93 < 15 |walk
Follow the path |goto 57.56,71.50 < 15 |walk
Follow T'paartos |scenariogoal Follow T'paartos##15/38103 |goto 66.64,77.57 |q 49266 |future
step
clicknpc T'paartos##128550
|tip At the bottom of the ramp.
Free Kind |scenariogoal Kind##16/38082 |goto 68.44,77.13 |q 49266 |future
step
Follow the path |goto 67.03,73.01 < 7 |walk
Follow the path |goto 64.87,71.63 < 7 |walk
Follow the path |goto 61.21,72.99 < 7 |walk
Follow the path |goto 62.17,77.99 < 7 |walk
clicknpc T'paartos##128550
Free Brave |scenariogoal Brave##16/38084 |goto 65.72,73.60 |q 49266 |future
step
Follow the path |goto 65.44,81.63 < 7 |walk
clicknpc T'paartos##128550
Free Strong |scenariogoal Strong##16/38083 |goto 72.31,86.51 |q 49266 |future
step
Follow the path |goto 75.72,79.21 < 10 |walk
clicknpc T'paartos##128550
Free Boastful |scenariogoal Boastful##16/38085 |goto 69.63,68.26 |q 49266 |future
step
Follow the path |goto 66.43,71.90 < 7 |walk
Follow the path |goto 63.47,72.46 < 7 |walk
clicknpc T'paartos##128550
Free Frightened |scenariogoal Frightened##16/38086 |goto 63.02,74.48 |q 49266 |future
step
Follow the path |goto 62.05,78.82 < 7 |walk
Follow the path |goto 63.47,81.43 < 7 |walk
clicknpc T'paartos##128550
Free Inadequate |scenariogoal Inadequate##16/38087 |goto 69.57,77.86 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 67.85,87.10 < 10 |walk
kill T'paartos the Fallen##127924
|tip Wait for the dialogue to complete.
Help T'paartos |scenariogoal Help T'paartos##17/38088 |goto 73.72,94.30 |q 49266 |future
step
clicknpc Lightforged Beacon##127964 |goto 71.67,95.43
Leave the Forge of Aeons |goto Vindicaar Scenario/1 49.97,46.22 < 1000 |noway |c |q 49266 |future
step
talk Captain Fareeya##130549
turnin Forge of Aeons##49266 |goto 48.41,39.51
step
talk High Exarch Turalyon##130810
accept For the Light!##50071 |goto 47.53,40.22
step
Follow the path |goto 40.24,44.39 < 7 |walk
Go down the stairs |goto Vindicaar Scenario/2 49.59,60.56 < 7 |walk
Follow the path |goto 43.93,67.53 < 7 |walk
Follow the path |goto 35.22,52.53 < 7 |walk
click Portal to Stormwind |goto 43.29,24.97
Return to Stormwind |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 50071 |future
step
Enter the building |goto Stormwind City/0 52.79,14.53 < 7 |walk
talk Anduin Wrynn##126301
turnin For the Light!##50071 |goto 52.07,13.41
step
_Congratulations!_
You Unlocked the "Lightforged Draenei" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Dark Iron Dwarf Race Unlock",{
author="support@zygorguides.com",
description="To unlock the new Dark Iron Dwarf allied race, you will need to earn exalted reputation with the 7th Legion and complete the Alliance War Campaign.",
condition_suggested=function() return level >= 120 and not achieved(12515) end,
condition_end=function() return achieved(12515) end,
},[[
step
Load the "BFA World Quest Unlock" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock"
|tip Click the line above to load the guide.
|tip You must complete the "Uniting Kul Tiras" quest in this guide.
Complete the "Uniting Kul Tiras" Quest |condition completedq(51918) |goto Boralus/0 69.26,26.99
step
Load the "War Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign"
|tip Click the line above to load the guide.
|tip You must complete all of the quests in this guide.
Complete the Quest "An End to the Killing" |condition completedq(52790)
step
Load the "Zuldazar World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Zuldazar World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Nazmir, Vol'dun, and Zuldazar that indicate the 7th Legion award reputation with them.
|tip Completing the emissary quest "Alliance War Effort" will award bonus reputation.
_Island Expeditions and Warfronts:_
|tip Each successful Warfront awards 500 reputation with the 7th Legion.
|tip Completing the island expedition quest "Azerite for the Alliance" will award 1,500 reputation.
Gain Exalted Reputation with the 7th Legion |achieve 12954
step
_Congratulations!_
You Unlocked the "Dark Iron Dwarf" Allied Race.
]])
