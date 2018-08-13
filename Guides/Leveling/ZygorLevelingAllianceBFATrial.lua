local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
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
Enter the building |goto Silithus/0 69.34,18.08 < 3 |walk
talk Nolan Speed##131963
|tip Inside the building.
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
