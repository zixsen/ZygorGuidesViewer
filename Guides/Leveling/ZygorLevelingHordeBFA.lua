local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="This guide will help you assault Teldrassil on behalf of the Horde.",
condition_suggested=function() return level>=110 end,
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto Undercity/0 46.32,72.88 < 5 |walk
Continue following the path |goto Undercity/0 45.29,78.11 < 5 |walk
Continue following the path |goto Undercity/0 46.20,83.81 < 5 |walk
Continue following the path |goto Undercity/0 48.81,87.79 < 5 |walk
Continue following the path |goto Undercity/0 52.44,89.43 < 5 |walk
Run up the stairs |goto 53.97,90.40 |goto Undercity/0 53.97,90.40 |only if walking
Follow the path |goto Undercity/0 54.76,94.39 < 5 |only if walking
Run up the stairs |goto Undercity/0 56.19,95.51 < 5 |only if walking
Run up the stairs |goto Undercity/0 57.19,93.29 < 5 |only if walking
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto Undercity/0 58.14,91.88
accept The Warchief Commands##50642 |goto Undercity/0 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto Northern Barrens/0 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Eliminate #10# Guards |q 50647/1 |goto 36.15,50.64
|tip Use the "Marked!" ability on guards around this area.
|tip It appears as a button on the screen.
|tip You will be stealthed, so enemies won't attack you.
|tip You must not be mounted to do this.
step
Watch the dialogue
Return to the Outskirts of Astranaar |goto 38.92,55.35 < 7 |noway |c |q 50647
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
|tip She walks to this location.
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around this area inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.67,35.00 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
Kill the enemies that attack in waves
Defeat #6# Ashenvale Huntresses |q 50800/1 |goto 44.08,90.50
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
talk High Overlord Saurfang##135443
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_Wisps"
step
kill Marked Tree##140924+
|tip Use the ability on your action bar.
|tip Aim near the bottom of them.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 41.60,90.63
step
label "Destroy_Wisps"
kill Wisp##141268+
|tip Use the ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 41.60,90.63
step
Return to Zoram'gar Outpost |goto Ashenvale/0  12.23,33.21 < 7 |c |q 50837 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_Darnassian_Archers"
step
use the Everburning Torch##158937
|tip Use it on Glaive Throwers around this area.
|tip They look like wooden artillery machines with purple wings on the ground around this area.
Burn #4# Glaive Throwers |q 53605/1 |goto 40.40,83.39
step
label "Kill_Darnassian_Archers"
Kill enemies around this area
Defeat #7# Night Elf Forces |q 53604/1 |goto 40.40,83.39
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.40,75.11
|tip You may need help with this.
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
Watch the dialogue
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_Blackwood_Furbolgs"
Kill enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1 |goto 44.74,84.01
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.78,84.79
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,86.42
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32 |notravel
stickystart "Slay_Kaldorei_Forces"
step
kill 5 Awakened Ancient##140741 |q 52438/3 |goto 41.86,66.77
|tip Use the abilities on your action bar.
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52438/4 |goto 41.86,66.77
step
Return to Lady Sylvanas Windrunner |goto 42.74,67.95 < 7 |c |q 52438 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_Civilians"
stickystart "Slay_Lordanel_Defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.73,17.76
|tip She walks around this area.
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_Civilians"
talk Lor'danel Citizen##142408+
|tip They look like neutral NPCs cowering in fear on the ground around this area.
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.80,19.30
step
label "Slay_Lordanel_Defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 49.00,19.56
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.07,24.31
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.07,24.31
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_
Watch the dialogue
Speak with Sylvanas |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
_Lordaeron is under attack!_
Click Here to Load the "Battle for Lordaeron" Leveling Guide |confirm |next "Zygor's Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Battle for Lordaeron"
|only if not completedq(51796)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Silithus: The Wound",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Wound in the World in Silithus",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=110.0,
},[[
step
accept Summons to Orgrimmar##49977 |goto Orgrimmar/1 51.20,78.92
|tip You will automatically accept this quest when you enter Orgrimmar.
step
Enter the building |goto 49.93,75.71 < 5 |walk
talk Nathanos Blightcaller##132254
|tip Inside the building.
turnin Summons to Orgrimmar##49977 |goto 49.80,75.35
accept A Recent Discovery##50341 |goto 49.80,75.35
step
talk Nathanos Blightcaller##132254
|tip Inside the building.
Tell him _"Tell me what happened at the feast."_
Watch the dialogue
Speak with Nathanos Blightcaller |q 50341/1 |goto 49.80,75.35
step
talk Nathanos Blightcaller##132254
|tip Inside the building.
turnin A Recent Discovery##50341 |goto 49.80,75.35
accept Witness to the Wound##49982 |goto 49.80,75.35
step
talk Grol Warblade##132147
turnin Witness to the Wound##49982 |goto Silithus/0 65.92,54.73
accept Lazy Prospectors!##50053 |goto Silithus/0 65.92,54.73
step
talk Gizmax Greasebolt##132045
accept No Spies Allowed##50052 |goto 66.23,55.69
stickystart "Kill_SI7_Operatives"
step
clicknpc Lazy Prospector##133019+
|tip They look like goblins sitting on the ground around this area.
Motivate #10# Prospectors |q 50053/1 |goto 56.83,36.55
step
label "Kill_SI7_Operatives"
kill 10 SI:7 Operative##131957 |q 50052/1 |goto 56.83,36.55
|tip They can be stealthed around this area.
step
talk Grol Warblade##132147
turnin Lazy Prospectors!##50053 |goto 65.92,54.72
accept Desert Research##50358 |goto 65.92,54.72
accept The Twilight Survivor##50232 |goto 65.92,54.72
step
talk Gizmax Greasebolt##132045
turnin No Spies Allowed##50052 |goto 66.23,55.69
step
talk Pixni Rustbomb##132040
turnin Desert Research##50358 |goto 66.87,56.53
accept The Source of Power##50230 |goto 66.87,56.53
accept Larvae By The Dozen##50231 |goto 66.87,56.53
stickystart "Collect_Silithid_Brains"
step
clicknpc Silithid Broodling##131903+
|tip They look like small pink grubs on the ground around this area.
collect 12 Silithid Broodling##156795 |q 50231/1 |goto 52.43,77.89
step
label "Collect_Silithid_Brains"
Kill Silithid enemies around this area
collect 10 Silithid Brain##156794 |q 50230/1 |goto 52.43,77.89
step
click Twilight Outhouse
accept A Wee Bit O' Cloth##50229 |goto 29.60,69.51
stickystart "Collect_Twilight_Silk"
step
Enter the building |goto 27.14,71.91 < 5 |walk
kill Michiel Voidstrider##132203
|tip Inside the building.
collect Michiel Voidstrider's Head##156796 |q 50232/1 |goto 26.71,71.50
step
label "Collect_Twilight_Silk"
Leave the building |goto 27.09,71.87 < 3 |walk
Kill enemies around this area
collect 8 Twilight Silk##156797 |q 50229/1 |goto 28.75,73.84
step
click Twilight Outhouse
turnin A Wee Bit O' Cloth##50229 |goto 29.60,69.51
step
talk Grol Warblade##132147
turnin The Twilight Survivor##50232 |goto 65.92,54.72
accept Khadgar's Request##50360 |goto 65.92,54.72
step
talk Archmage Khadgar##130033
turnin Khadgar's Request##50360 |goto 66.41,56.78
accept The Speaker's Perspective##50055 |goto 66.41,56.78
step
talk Pixni Rustbomb##132040
turnin The Source of Power##50230 |goto 66.86,56.54
turnin Larvae By The Dozen##50231 |goto 66.86,56.54
step
talk Magni Bronzebeard##142322
Tell him _"Khadgar asked me to deliver this letter."_
Deliver Khadgar's Letter |q 50055/1 |goto 42.23,44.28
step
talk Magni Bronzebeard##142322
turnin The Speaker's Perspective##50055 |goto 42.23,44.28
accept The Blood of Azeroth##50364 |goto 42.23,44.28
step
talk Grol Warblade##132147
turnin The Blood of Azeroth##50364 |goto 65.92,54.72
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
accept Hour of Reckoning##53372 |goto Orgrimmar/1 50.50,77.19
|tip You will automatically accept this quest when you enter Orgrimmar.
step
Enter the building |goto 49.89,75.57 < 5 |walk
talk High Overlord Saurfang##14720
turnin Hour of Reckoning##53372 |goto 48.53,70.73
accept The Battle for Lordaeron##51796 |goto 48.53,70.73
step
talk Isabella##139093
Tell her _"I am ready to go to the Undercity."_
Travel to Lordaeron |scenariostart |goto 47.80,71.70 |q 51796 |or |next "Intro_Scenario"
|tip It may take a moment to enter the scenario.
_Or_
Tell her _"I've heard this tale before... <Skip the scenario and begin your next mission.>"_
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
Skip the Battle for Lordaeron |condition readyq(51796) |goto 47.80,71.70 |or |future |next "Intro_Scenario_Completed"
step
label "Intro_Scenario"
Begin the "The Fall of Lordaeron" Scenario |scenariostart |q 51796
step
Run down the stairs |goto Undercity BFA/0 85.25,17.89 < 5 |walk
Continue down the stairs |goto Undercity BFA/0 85.90,20.07 < 5 |walk
Watch the dialogue
Report to High Overlord Saurfang |scenariogoal 1/38253 |goto Undercity BFA/0 84.42,25.60 |q 51796
step
Follow the path |goto 84.48,28.66 < 7 |walk
Continue following the path |goto 82.64,29.67 < 5 |walk
Run up the stairs |goto 79.99,26.33 < 3 |walk
Cross the bridge |goto 78.83,25.28 < 3 |walk
Jump down here |goto 76.15,28.99 < 5 |walk
talk Friendly NPC's
|tip They have various names, and are highlighted around this area inside the building.
|tip They appear on your minimap as yellow dots.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
kill SI:7 Operative##131137+
Secure the Mage District |scenariostage 2 |goto 75.33,30.32 |q 51796
step
Follow the path |goto 78.45,34.22 < 7 |walk
Follow the path |goto 79.68,38.34 < 5 |walk
Continue following the path |goto 79.81,43.61 < 7 |walk
Continue following the path |goto 78.43,44.31 < 5 |walk
Continue following the path |goto 73.69,44.45 < 5 |walk
Continue following the path |goto 70.80,50.62 < 5 |walk
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to the Heart of the City |scenariogoal 3/38468 |goto 69.60,49.58 |q 51796
step
talk Friendly NPC's
|tip They have various names, and are highlighted around this area inside the building.
|tip They appear on your minimap as yellow dots.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
Evacuate the Remainder of Undercity |scenariostage 4 |goto 67.21,46.18 |q 51796
step
clicknpc Portal to Lordaeron##131087 |goto 67.08,45.95
|tip Inside the building.
Teleport to the Ruins of Lordaeron |goto Ruins of Lordaeron/0 48.08,74.52 < 10 |noway |c |q 51796
step
Follow the path |goto 47.75,72.76 < 5 |only if walking
Run up the stairs |goto 48.12,71.28 < 5 |walk
Enter the building |goto 48.12,70.80 < 5 |walk
Leave the building |goto 48.14,69.35 < 3 |walk
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to Battle |scenariogoal 5/39077 |goto 48.13,68.72 |q 51796
step
Kill enemies around this area
Break Their Front Line |scenariostage 6 |goto 48.27,66.90 |q 51796
step
Watch the dialogue
Kill the enemies that attack in waves
Defeat #3# Waves of Attackers |scenariogoal 7/39562 |goto 47.84,61.98 |q 51796
step
talk Sludge Guard##133115
Tell him _"Gas mask and blight canister, please. I want to see what this thing can do."_
Request a Gas Mask and Blight Canister |havebuff 629984 |goto 48.31,67.58 |q 51796
step
Kill enemies around this area
|tip Use the "Blight Canister" ability.
|tip It appears as a button on the screen.
|tip Try to make them run north.
clicknpc Wounded Horde Soldier##127065+
|tip They look like Alliance soldiers standing with huge partially filled red bubbles above their heads around this area.
|tip They will appear on your minimap as yellow dots.
Use Blight on Alliance Forces to Drive Them Away |scenariostage 8 |goto 48.34,59.90 |q 51796
step
Run up the stairs |goto 48.99,72.25 < 5 |only if walking
Run up the stairs |goto 49.14,72.77 < 5 |only if walking
Follow the path |goto 50.22,72.79 < 5 |only if walking
Follow the path |goto 51.19,73.08 < 5 |only if walking
Jump down here |goto 51.53,74.33 < 5 |only if walking
Follow the path |goto 51.87,76.16 < 7 |only if walking
Continue following the path |goto 51.72,81.96 < 7 |only if walking
Continue following the path |goto 51.67,86.69 < 7 |only if walking
Continue following the path |goto 49.74,89.09 < 10 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he runs.
Follow Nathanos to the Keep |scenariostage 9 |goto 46.53,89.24 |q 51796
step
Watch the dialogue
Intercept the Alliance |scenariostage 10 |goto 46.53,89.24 |q 51796
step
Kill enemies around this area
Defeat King Anduin Wrynn and His Allies |scenariostage 11 |goto 47.59,88.80 |q 51796
step
Follow the path |goto 51.80,86.61 < 10 |only if walking
Continue following the path |goto 51.70,81.40 < 10 |only if walking
Continue following the path |goto 51.92,74.87 < 10 |only if walking
Run up the stairs |goto 51.91,74.65 < 5 |only if walking
Run up the stairs |goto 51.75,74.16 < 5 |only if walking
Follow the path |goto 51.45,74.02 < 5 |only if walking
Follow the path |goto 50.98,72.86 < 5 |only if walking
Run down the stairs |goto 49.38,72.79 < 5 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he walks.
Follow Nathanos to Safety |scenariostage 12 |goto 48.18,74.28 |q 51796
step
Cross the bridge |goto 48.09,74.78 < 7 |only if walking
Follow the path |goto 48.29,75.69 < 7 |only if walking
Enter the building |goto 48.71,76.64 < 5 |walk
Run down the stairs |goto 48.50,77.29 < 5 |walk
Follow the path |goto 48.09,77.65 < 5 |walk
Follow Sylvanas Windrunner |scenarioend |goto 48.10,78.26 |q 51796
step
label "Intro_Scenario_Completed"
talk Nathanos Blightcaller##140176
turnin The Battle for Lordaeron##51796 |goto Orgrimmar/1 48.90,91.51
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
Starting Guide |next "Fresh_Start_BFA" |only if not completedq(52131)
Starting Guide |next "Choose_Next_Questing_Zone_BFA" |only if completedq(52131)
step
label "Fresh_Start_BFA"
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto Undercity/0 46.32,72.88 < 5 |walk
Continue following the path |goto Undercity/0 45.29,78.11 < 5 |walk
Continue following the path |goto Undercity/0 46.20,83.81 < 5 |walk
Continue following the path |goto Undercity/0 48.81,87.79 < 5 |walk
Continue following the path |goto Undercity/0 52.44,89.43 < 5 |walk
Run up the stairs |goto 53.97,90.40 |goto Undercity/0 53.97,90.40 |only if walking
Follow the path |goto Undercity/0 54.76,94.39 < 5 |only if walking
Run up the stairs |goto Undercity/0 56.19,95.51 < 5 |only if walking
Run up the stairs |goto Undercity/0 57.19,93.29 < 5 |only if walking
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto Undercity/0 58.14,91.88
accept The Warchief Commands##50642 |goto Undercity/0 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto Northern Barrens/0 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Eliminate #10# Guards |q 50647/1 |goto 36.15,50.64
|tip Use the "Marked!" ability on guards around this area.
|tip It appears as a button on the screen.
|tip You will be stealthed, so enemies won't attack you.
|tip You must not be mounted to do this.
step
Watch the dialogue
Return to the Outskirts of Astranaar |goto 38.92,55.35 < 7 |noway |c |q 50647
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
|tip She walks to this location.
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around this area inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.67,35.00 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
Kill the enemies that attack in waves
Defeat #6# Ashenvale Huntresses |q 50800/1 |goto 44.08,90.50
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
talk High Overlord Saurfang##135443
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_Wisps"
step
kill Marked Tree##140924+
|tip Use the ability on your action bar.
|tip Aim near the bottom of them.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 41.60,90.63
step
label "Destroy_Wisps"
kill Wisp##141268+
|tip Use the ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 41.60,90.63
step
Return to Zoram'gar Outpost |goto Ashenvale/0  12.23,33.21 < 7 |c |q 50837 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_Darnassian_Archers"
step
use the Everburning Torch##158937
|tip Use it on Glaive Throwers around this area.
|tip They look like wooden artillery machines with purple wings on the ground around this area.
Burn #4# Glaive Throwers |q 53605/1 |goto 40.40,83.39
step
label "Kill_Darnassian_Archers"
Kill enemies around this area
Defeat #7# Night Elf Forces |q 53604/1 |goto 40.40,83.39
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.40,75.11
|tip You may need help with this.
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
Watch the dialogue
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_Blackwood_Furbolgs"
Kill enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1 |goto 44.74,84.01
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.78,84.79
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,86.42
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32 |notravel
stickystart "Slay_Kaldorei_Forces"
step
kill 5 Awakened Ancient##140741 |q 52438/3 |goto 41.86,66.77
|tip Use the abilities on your action bar.
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52438/4 |goto 41.86,66.77
step
Return to Lady Sylvanas Windrunner |goto 42.74,67.95 < 7 |c |q 52438 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_Civilians"
stickystart "Slay_Lordanel_Defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.73,17.76
|tip She walks around this area.
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_Civilians"
talk Lor'danel Citizen##142408+
|tip They look like neutral NPCs cowering in fear on the ground around this area.
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.80,19.30
step
label "Slay_Lordanel_Defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 49.00,19.56
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.07,24.31
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.07,24.31
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_
Watch the dialogue
Speak with Sylvanas |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
accept Hour of Reckoning##53372 |goto Orgrimmar/1 51.20,78.92
|tip You will automatically accept this quest.
step
accept Summons to Orgrimmar##49977 |goto Orgrimmar/1 51.20,78.92
|tip You will automatically accept this quest.
step
Enter the building |goto 49.93,75.71 < 5 |walk
talk Nathanos Blightcaller##132254
|tip Inside the building.
turnin Summons to Orgrimmar##49977 |goto 49.80,75.35
accept A Recent Discovery##50341 |goto 49.80,75.35
step
talk Nathanos Blightcaller##132254
|tip Inside the building.
Tell him _"Tell me what happened at the feast."_
Watch the dialogue
Speak with Nathanos Blightcaller |q 50341/1 |goto 49.80,75.35
step
talk Nathanos Blightcaller##132254
|tip Inside the building.
turnin A Recent Discovery##50341 |goto 49.80,75.35
accept Witness to the Wound##49982 |goto 49.80,75.35
step
Enter the building |goto 49.88,75.54 < 5 |walk
Follow the path |goto 49.93,74.55 < 3 |walk
Run up the stairs |goto 49.36,74.02 < 3 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Hour of Reckoning##53372 |goto 48.52,70.73
accept The Battle for Lordaeron##51796 |goto 48.52,70.73
step
talk Isabella##139093
|tip Inside the building.
Tell her _"I am ready to go to the Undercity."_
Speak with Isabella |q 51796/1 |goto 47.80,71.70
step
Begin the "Under Siege" Scenario |scenariostart |q 51796
step
Run down the stairs |goto Undercity BFA/0 85.25,17.89 < 5 |walk
Run down the stairs |goto Undercity BFA/0 85.90,20.07 < 5 |walk
Watch the dialogue
Report to High Overlord Saurfang |scenariogoal 1/38253 |goto Undercity BFA/0 84.42,25.60 |q 51796
step
Follow the path |goto 84.48,28.66 < 7 |walk
Follow the path |goto 82.64,29.67 < 5 |walk
Run up the stairs |goto 79.99,26.33 < 3 |walk
Cross the bridge |goto 78.83,25.28 < 3 |walk
Jump down here |goto 76.15,28.99 < 5 |walk
talk Friendly NPC's
|tip They have various names, and are highlighted around this area inside the building.
|tip They appear on your minimap as yellow dots.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
kill SI:7 Operative##131137+
Secure the Mage Distrct |scenariostage 2 |goto 75.33,30.32 |q 51796
step
Follow the path |goto 78.45,34.22 < 7 |walk
Follow the path |goto 79.68,38.34 < 5 |walk
Continue following the path |goto 79.81,43.61 < 7 |walk
Continue following the path |goto 78.43,44.31 < 5 |walk
Continue following the path |goto 73.69,44.45 < 5 |walk
Continue following the path |goto 70.80,50.62 < 5 |walk
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to the Heart of the City |scenariogoal 3/38468 |goto 69.60,49.58 |q 51796
step
talk Friendly NPC's
|tip They have various names, and are highlighted around this area inside the building.
|tip They appear on your minimap as yellow dots.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
Evacuate the Remainder of Undercity |scenariostage 4 |goto 67.21,46.18 |q 51796
step
clicknpc Portal to Lordaeron##131087 |goto 67.08,45.95
|tip Inside the building.
Teleport to the Ruins of Lordaeron |goto Ruins of Lordaeron/0 48.08,74.52 < 10 |noway |c |q 51796
step
Follow the path |goto 47.75,72.76 < 5 |only if walking
Run up the stairs |goto 48.12,71.28 < 5 |walk
Enter the building |goto 48.12,70.80 < 5 |walk
Leave the building |goto 48.14,69.35 < 3 |walk
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to Battle |scenariogoal 5/39077 |goto 48.13,68.72 |q 51796
step
Kill enemies around this area
Break Their Front Line |scenariostage 6 |goto 48.27,66.90 |q 51796
step
Watch the dialogue
Kill the enemies that attack in waves
Defeat #3# Waves of Attackers |scenariogoal 7/39562 |goto 47.84,61.98 |q 51796
step
talk Sludge Guard##133115
Tell him _"Gas mask and blight canister, please. I want to see what this thing can do."_
Request a Gas Mask and Blight Canister |havebuff 629984 |goto 48.31,67.58 |q 51796
step
Kill enemies around this area
|tip Use the "Blight Canister" ability.
|tip It appears as a button on the screen.
|tip Try to make them run north.
clicknpc Wounded Horde Soldier##127065+
|tip They look like Alliance soldiers standing with huge partially filled red bubbles above their heads around this area.
|tip They will appear on your minimap as yellow dots.
Use Blight on Alliance Forces to Drive Them Away |scenariostage 8 |goto 48.34,59.90 |q 51796
step
Run up the stairs |goto 48.99,72.25 < 5 |only if walking
Run up the stairs |goto 49.14,72.77 < 5 |only if walking
Follow the path |goto 50.22,72.79 < 5 |only if walking
Follow the path |goto 51.19,73.08 < 5 |only if walking
Jump down here |goto 51.53,74.33 < 5 |only if walking
Follow the path |goto 51.87,76.16 < 7 |only if walking
Continue following the path |goto 51.72,81.96 < 7 |only if walking
Continue following the path |goto 51.67,86.69 < 7 |only if walking
Continue following the path |goto 49.74,89.09 < 10 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he runs.
Follow Nathanos to the Keep |scenariostage 9 |goto 46.53,89.24 |q 51796
step
Watch the dialogue
Intercept the Alliance |scenariostage 10 |goto 46.53,89.24 |q 51796
step
Kill enemies around this area
Defeat King Anduin Wrynn and His Allies |scenariostage 11 |goto 47.59,88.80 |q 51796
step
Follow the path |goto 51.80,86.61 < 10 |only if walking
Continue following the path |goto 51.70,81.40 < 10 |only if walking
Continue following the path |goto 51.92,74.87 < 10 |only if walking
Run up the stairs |goto 51.91,74.65 < 5 |only if walking
Run up the stairs |goto 51.75,74.16 < 5 |only if walking
Follow the path |goto 51.45,74.02 < 5 |only if walking
Follow the path |goto 50.98,72.86 < 5 |only if walking
Run down the stairs |goto 49.38,72.79 < 5 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he walks.
Follow Nathanos to Safety |scenariostage 12 |goto 48.18,74.28 |q 51796
step
Cross the bridge |goto 48.09,74.78 < 7 |only if walking
Follow the path |goto 48.29,75.69 < 7 |only if walking
Enter the building |goto 48.71,76.64 < 5 |walk
Run down the stairs |goto 48.50,77.29 < 5 |walk
Follow the path |goto 48.09,77.65 < 5 |walk
Watch the dialogue
Follow Sylvanas Windrunner |scenarioend |goto 48.10,78.26 |q 51796
step
Return to Orgrimmar |goto Orgrimmar/1 49.02,91.80 < 7 |c |q 51796 |notravel
step
talk Nathanos Blightcaller##140176
turnin The Battle for Lordaeron##51796 |goto 48.90,91.51
step
accept A Dying World##53028 |goto 48.90,91.51
|tip You will automatically accept this quest.
step
accept Witness to the Wound##49982 |goto 48.90,91.51
|tip You will automatically accept this quest.
step
click Portal to Uldum
Take the Portal to Uldum to Get Closer to Silithus |q 53028/1 |goto 48.87,38.55
step
talk Grol Warblade##132147
turnin Witness to the Wound##49982 |goto Silithus/0 65.92,54.73
accept Lazy Prospectors!##50053 |goto Silithus/0 65.92,54.73
step
talk Gizmax Greasebolt##132045
accept No Spies Allowed##50052 |goto 66.23,55.69
stickystart "Kill_SI7_Operatives"
step
clicknpc Lazy Prospector##133019+
|tip They look like goblins sitting on the ground around this area.
Motivate #10# Prospectors |q 50053/1 |goto 56.83,36.55
step
label "Kill_SI7_Operatives"
kill 10 SI:7 Operative##131957 |q 50052/1 |goto 56.83,36.55
|tip They can be stealthed around this area.
step
talk Grol Warblade##132147
turnin Lazy Prospectors!##50053 |goto 65.92,54.72
accept Desert Research##50358 |goto 65.92,54.72
accept The Twilight Survivor##50232 |goto 65.92,54.72
step
talk Gizmax Greasebolt##132045
turnin No Spies Allowed##50052 |goto 66.23,55.69
step
talk Pixni Rustbomb##132040
turnin Desert Research##50358 |goto 66.87,56.53
accept The Source of Power##50230 |goto 66.87,56.53
accept Larvae By The Dozen##50231 |goto 66.87,56.53
stickystart "Collect_Silithid_Brains"
step
clicknpc Silithid Broodling##131903+
|tip They look like small pink grubs on the ground around this area.
collect 12 Silithid Broodling##156795 |q 50231/1 |goto 52.43,77.89
You can find more around [29.29,35.47]
step
label "Collect_Silithid_Brains"
Kill Silithid enemies around this area
collect 10 Silithid Brain##156794 |q 50230/1 |goto 52.43,77.89
You can find more around [29.29,35.47]
step
click Twilight Outhouse
accept A Wee Bit O' Cloth##50229 |goto 29.60,69.51
stickystart "Collect_Twilight_Silk"
step
Enter the building |goto 27.14,71.91 < 5 |walk
kill Michiel Voidstrider##132203
|tip Inside the building.
collect Michiel Voidstrider's Head##156796 |q 50232/1 |goto 26.71,71.50
step
label "Collect_Twilight_Silk"
Leave the building |goto 27.09,71.87 < 3 |walk
Kill enemies around this area
collect 8 Twilight Silk##156797 |q 50229/1 |goto 28.75,73.84
step
click Twilight Outhouse
turnin A Wee Bit O' Cloth##50229 |goto 29.60,69.51
step
talk Grol Warblade##132147
turnin The Twilight Survivor##50232 |goto 65.92,54.72
accept Khadgar's Request##50360 |goto 65.92,54.72
step
talk Archmage Khadgar##130033
turnin Khadgar's Request##50360 |goto 66.41,56.78
accept The Speaker's Perspective##50055 |goto 66.41,56.78
step
talk Pixni Rustbomb##132040
turnin The Source of Power##50230 |goto 66.86,56.54
turnin Larvae By The Dozen##50231 |goto 66.86,56.54
step
talk Magni Bronzebeard##142322
turnin The Speaker's Perspective##50055 |goto 42.23,44.28
accept The Blood of Azeroth##50364 |goto 42.23,44.28
step
talk Grol Warblade##132147
turnin The Blood of Azeroth##50364 |goto 65.92,54.72
step
talk Magni Bronzebeard##142322
turnin A Dying World##53028 |goto 42.22,44.27
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
accept The Speaker's Imperative##53031 |goto 50.14,53.75
step
Follow the path |goto 50.06,48.84 < 5 |walk
click Teleport Pad
|tip Inside the building.
Use the Teleporter Pad |q 53031/1 |goto 50.12,30.40
step
talk Nathanos Blightcaller##140176
|tip On top of the building.
turnin The Speaker's Imperative##53031 |goto Orgrimmar/1 48.91,91.51
accept Mission Statement##51443 |goto Orgrimmar/1 48.91,91.51
step
Enter the building |goto 49.88,75.54 < 5 |walk
Follow the path |goto 49.93,74.55 < 3 |walk
Run up the stairs |goto 49.36,74.02 < 3 |walk
Watch the dialogue
|tip Inside the building.
Speak to Warchief Sylvanas Windrunner |q 51443/1 |goto 48.55,71.49
step
Follow the path |goto 49.16,73.48 < 5 |walk
Follow the path |goto 49.90,74.47 < 3 |walk
Leave the building |goto 49.87,75.51 < 3 |walk
Enter the building |goto 53.46,78.85 < 5 |walk
Watch the dialogue
|tip Inside the building.
Meet Your Team |q 51443/2 |goto 54.43,78.43
step
Watch the dialogue
talk Nathanos Blightcaller##135205
|tip Inside the building.
turnin Mission Statement##51443 |goto 54.44,78.42
accept The Stormwind Extraction##50769 |goto 54.44,78.42
step
click Blightcaller's Easy Death##289645
|tip Inside the building.
Take a Potion |q 50769/1 |goto 54.58,78.36
step
Leave the building |goto 53.43,78.86 < 3 |walk
clicknpc Skyhorn Eagle##135211
|tip On top of the building.
Begin Flying with the Skyhorn Eagle |invehicle |goto 49.67,93.66 |q 50769
step
Take the Transport from the Ramparts |q 50769/2
step
Watch the dialogue
Infiltrate Stormwind City |scenariogoal 1/39765 |goto Stormwind City BFA/0 47.22,59.58 |q 50769 |notravel
step
clicknpc Padlock##134070+
|tip They look like dark metal locks on the wooden door on the ground in the water.
Open the Sewer Access Gate |scenariogoal 2/0 |goto 46.24,58.13 |q 50769
step
Enter the Stockades |scenariogoal 2/39766 |goto 46.27,58.09 |q 50769
|tip Jump down into the swirling portal.
step
Enter the Stormwind Stockades |goto Stockcades Scenario/0 25.18,52.52 < 7 |noway |c |q 50769
step
Follow the path |goto 26.41,56.78 < 3 |walk
Follow the path |goto 31.80,62.16 < 3 |walk
Continue following the path |goto 39.01,58.88 < 5 |walk
Run up the stairs |goto 46.50,52.68 < 5 |walk
Follow the path |goto 52.33,45.55 < 5 |walk
Meet Up With Rokhan |scenariostage 3 |goto 52.11,40.12 |q 50769
step
Click the Cell Door and follow the path |goto 51.06,39.60 < 3 |walk
talk High Overlord Saurfang##134120
|tip Inside the building.
Ask him _"What do you mean?"_
Watch the dialogue
Release Saurfang |scenariostage 4 |goto 48.01,33.48 |q 50769
step
Follow the path |goto 50.79,39.01 < 3 |walk
Continue following the path |goto 54.35,45.79 < 5 |walk
Follow the path |goto 59.80,59.49 < 3 |walk
click Cell Door
|tip Inside the building.
Release the Other Prisoners |scenariogoal 5/39781 |goto 55.98,64.10 |q 50769
step
Follow the path |goto 59.75,59.62 < 3 |walk
Follow the path |goto 54.77,46.53 < 5 |walk
Run down the stairs |goto 55.83,41.61 < 5 |walk
Follow the path |goto 60.87,35.62 < 5 |walk
Continue following the path |goto 67.99,29.47 < 5 |walk
Continue following the path |goto 75.39,26.45 < 3 |walk
Continue following the path |goto 84.25,23.91 < 3 |walk
Watch the dialogue
|tip Follow your allies as they walk.
clicknpc Stormwind Sewer Access##139948
|tip Inside the building.
Escape the Stockades |scenariogoal 5/39786 |goto 87.05,23.22 |q 50769
step
talk Rokhan##134038
Tell him _"Let's go."_
Watch the dialogue
|tip Follow your allies as they walk.
|tip Stay within the circle on the ground beneath Rokhan as you walk.
|tip Jump off the bridge into the water when your allies tell you to.
|tip Talk to Rokhan again when he stops, to get him to continue walking.
Follow Rokhan |scenariostage 6 |goto Stormwind City BFA/0 55.81,56.85 |q 50769
step
Kill the enemies that attack
Defeat the Worgen Ambush |scenariogoal 7/39795 |goto 55.81,56.85 |q 50769
step
Follow the path |goto 54.91,57.23 < 7 |only if walking
Continue following the path |goto 51.80,55.33 < 7 |only if walking
Continue following the path |goto 50.08,52.45 < 7 |only if walking
Continue following the path |goto 47.59,51.61 < 7 |only if walking
Continue following the path |goto 46.55,49.47 < 7 |only if walking
Continue following the path |goto 47.50,46.89 < 5 |only if walking
Run up the stairs |goto 47.88,45.57 < 5 |only if walking
Follow the path |goto 48.46,44.52 < 5 |only if walking
Follow the path |goto 49.11,42.55 < 5 |only if walking
Run down the stairs |goto 48.15,41.86 < 5 |only if walking
Follow the path |goto 47.20,41.63 < 5 |only if walking
Watch the dialogue
|tip Follow your allies as they walk.
talk Nathanos Blightcaller##134039
Tell him _"I'm ready."_
Escape Cathedral Square |scenariostage 7 |goto 45.44,43.18 |q 50769
step
Follow the path |goto 43.66,43.29 < 5 |only if walking
Jump down here |goto 43.23,42.47 < 5 |only if walking
Follow the path |goto 41.04,43.79 < 5 |only if walking
Watch the dialogue
|tip Follow your allies as they walk.
kill Icy Barrier##134881
Escape Jaina's Wrath |scenariostage 8 |goto 39.76,40.63 |q 50769
step
Follow the path down |goto 39.32,39.47 < 5 |only if walking
Run down the stairs |goto 36.96,35.54 < 7 |only if walking
Follow the path |goto 34.11,34.03 < 7 |only if walking
Run down the stairs |goto 31.43,31.78 < 5 |only if walking
Follow the path |goto 30.38,31.62 < 5 |only if walking
Continue following the path |goto 29.71,30.13 < 7 |only if walking
Continue following the path |goto 29.03,27.30 < 7 |only if walking
Continue following the path |goto 27.15,25.72 < 7 |only if walking
Watch the dialogue
|tip Follow your allies as they walk.
Reach Talanji's Ship |scenariostage 9 |goto 20.60,25.75 |q 50769
step
Follow the path |goto 19.31,26.72 < 5 |only if walking
Follow the path |goto 19.31,28.46 < 5 |only if walking
Run up the stairs |goto 20.09,28.73 < 3 |only if walking
Follow the path |goto 20.31,29.57 < 3 |only if walking
Watch the dialogue
talk Princess Talanji##134092
Tell her _"Not at all."_
Escape Stormwind Harbor |scenarioend |goto 20.54,28.94 |q 50769
step
Complete the "The Stormwind Extraction" Scenario |q 50769/3
step
Travel to Zuldazar |goto Zuldazar/0 57.98,62.80 < 10 |noway |c |q 50769
step
talk Nathanos Blightcaller##121210
turnin The Stormwind Extraction##50769 |goto Zuldazar/0 57.95,62.76
step
talk Princess Talanji##132332
accept Welcome to Zuldazar##46957 |goto 57.95,62.46
step
Follow the path |goto Dazar'alor/0 50.02,95.99 < 7 |only if walking
Run up the stairs |goto Dazar'alor/0 50.73,92.75 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.30,90.92 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 50.01,88.70 < 7 |only if walking
Follow the path |goto Dazar'alor/0 49.81,85.89 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.15,83.71 < 7 |only if walking
Watch the dialogue
|tip Follow Princess Talanji as she walks.
Follow Princess Talanji |q 46957/1 |goto Dazar'alor/0 49.98,82.60
step
talk General Jakra'zet##122661
turnin Welcome to Zuldazar##46957 |goto 49.98,82.33
accept Rastakhan##46930 |goto 49.98,82.33
step
Follow the path |goto 50.77,83.44 < 7 |only if walking
Continue following the path |goto 51.17,86.02 < 7 |only if walking
Continue following the path |goto 51.37,88.77 < 7 |only if walking
talk Ripa the Wind Ripper##121252
fpath Port of Zandalar |goto 52.10,90.12
step
Follow the path |goto 51.30,88.53 < 7 |only if walking
Follow the path |goto 51.07,84.38 < 7 |only if walking
clicknpc Enforcer's Pterrordax##135438
Ride the Enforcer's Pterrordax to the Throne |q 46930/1 |goto 49.98,82.17
step
Ride to the Throne |goto 48.03,44.45 < 7 |c |q 46930 |notravel
step
talk Princess Talanji##135440
Tell her _"Take me to King Rastakhan."_
Speak with Princess Talanji |q 46930/2 |goto 48.82,44.64
step
Watch the dialogue
talk King Rastakhan##120740
turnin Rastakhan##46930 |goto 49.91,42.72
accept Speaker of the Horde##46931 |goto 49.91,42.72
step
Run down the stairs |goto 49.35,44.51 < 5 |only if walking
Follow the path |goto 48.89,44.55 < 5 |only if walking
Follow the path |goto Dazar'alor/2 29.17,59.39 < 3 |walk
Follow the path |goto Dazar'alor/2 28.94,68.51 < 3 |walk
Watch the dialogue
|tip Follow Zolani as she walks.
Follow Zolani |q 46931/1 |goto Dazar'alor/2 25.91,73.81
step
Ride the elevator down |goto 22.77,72.12 < 5 |walk
Run down the stairs |goto 40.93,57.43 < 3 |only if walking
Follow the path |goto Dazar'alor/1 42.89,45.68 < 5 |walk
Leave the building |goto Dazar'alor/0 49.94,42.14 < 5 |walk
Run up the stairs |goto Dazar'alor/0 49.92,40.60 < 5 |only if walking
click Horde Banner
Summon the Horde |q 46931/2 |goto Dazar'alor/0 49.93,39.49
step
Enter the building |goto 49.94,42.14 < 5 |walk
Follow the path |goto Dazar'alor/1 51.05,29.49 < 5 |walk
Follow the path |goto Dazar'alor/1 58.02,35.85 < 3 |walk
Run down the stairs |goto Dazar'alor/1 66.84,53.35 < 5 |walk
Watch the dialogue
|tip Inside the building.
Explore the Hall of Ancient Paths |q 46931/4 |goto 66.92,72.06
step
Run up the stairs |goto 60.34,70.34 < 5 |walk
Watch the dialogue
|tip Inside the building.
Explore the Great Seal |q 46931/3 |goto 49.09,70.79
step
Run down the stairs |goto 43.52,70.28 < 5 |walk
Watch the dialogue
|tip Inside the building.
Explore the Royal Treasury |q 46931/5 |goto Dazar'alor/0 48.76,45.89 |notravel
step
Run up the stairs |goto Dazar'alor/0 49.21,45.92 < 3 |walk
Follow the path |goto Dazar'alor/1 43.34,70.12 < 5 |walk |notravel
Run down the stairs |goto Dazar'alor/1 47.78,64.45 < 5 |walk
Follow the path |goto Dazar'alor/1 46.36,43.95 < 5 |walk
Follow the path |goto Dazar'alor/1 39.12,35.73 < 3 |walk
talk Chronicler To'kini##120168
|tip Inside the building.
turnin Speaker of the Horde##46931 |goto 33.03,43.37
accept To Matters at Hand##52139 |goto 33.03,43.37
step
Follow the path |goto 39.43,35.86 < 3 |walk
Run up the stairs |goto 42.01,46.47 < 5 |walk
Follow the path |goto Dazar'alor/2 41.14,56.50 < 3 |walk
talk Princess Talanji##133050
|tip Inside the building.
turnin To Matters at Hand##52139 |goto Dazar'alor/2 41.14,66.73
accept We Need Each Other##52131 |goto Dazar'alor/2 41.14,66.73
step
Watch the dialogue
talk Princess Talanji##133050
|tip Inside the building.
turnin We Need Each Other##52131 |goto 41.14,66.73
step
label "Choose_Next_Questing_Zone_BFA"
click Scouting Map
|tip Inside the building.
|tip You are choosing the zone you wish to do quests in next.
|tip Pick whichever you like, it doesn't matter.
accept Zuldazar##47514|or |goto 41.71,69.41 |next "Zuldazar_Start" |only if not completedq(47514)
accept Nazmir##47512 |or |goto 41.71,69.41 |next "Nazmir_Start" |only if not completedq(47512)
accept Vol'dun##47513 |or |goto 41.71,69.41 |next "Voldun_Start" |only if not completedq(47513)
Completing Guide |next "All_Zones_Completed_BFA" |only if completedq(47514) and completedq(47512) and completedq(47513)
step
label "Zuldazar_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Zuldazar##47514 |goto 41.14,66.73 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Zuldazar"
step
label "Nazmir_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Nazmir##47512 |goto 41.14,66.73 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir"
step
label "Voldun_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Vol'dun##47513 |goto 41.14,66.73 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Vol'dun"
step
label "All_Zones_Completed_BFA"
_Congratulations!_
You unlocked all of the questing zones.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Zuldazar",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Zuldazar storylines:\n\nAudience with the King\nPort of Zandalar\nWeb of Lies\nThe Zanchuli Council\nPortents and Prophecies\nWarport Rastari\nAmong the People\nMarch of the Loa",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
talk Princess Talanji##133050
|tip Inside the building.
accept Trust of a King##49615 |goto Dazar'alor/2 41.19,66.74
step
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.86,72.64 |q 47226 |future
step
Run up the stairs |goto 45.91,82.67 < 5 |walk
Follow the path |goto Dazar'alor/2 40.98,82.25 < 5 |walk
Ride the Elevator Up |goto Dazar'alor/2 22.58,72.07 < 5 |walk
Follow the path |goto Dazar'alor/2 28.99,66.58 < 3 |walk
Leave the building |goto Dazar'alor/0 48.70,45.18 < 3 |walk
Run up the stairs |goto Dazar'alor/0 48.90,44.49 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.45,44.55 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 49.91,45.81 < 5 |only if walking
talk King Rastakhan##120740
|tip Upstairs inside the building.
turnin Trust of a King##49615 |goto Dazar'alor/0 49.93,46.61
accept Tal'gurub##49488 |goto Dazar'alor/0 49.93,46.61
step
talk Zolani##122915
|tip Upstairs inside the building.
accept The Port of Zandalar##50835 |goto 49.81,46.56
step
talk Yazma##122641
|tip Upstairs inside the building.
accept The Zanchuli Council##47445 |goto 49.72,46.51
step
Run down the stairs |goto 49.80,46.05 < 5 |only if walking
Run down the stairs |goto 49.37,44.52 < 5 |only if walking
Follow the path |goto 48.90,44.60 < 5 |only if walking
Enter the building |goto 48.69,45.18 < 3 |walk
Follow the path |goto Dazar'alor/2 28.70,67.13 < 3 |walk
Ride the Elevator Down |goto Dazar'alor/2 22.70,72.09 < 3 |c |q 50835
step
Run down the stairs |goto 41.11,56.74 < 3 |walk
Follow the path |goto Dazar'alor/1 42.90,45.75 < 5 |walk
Follow the path |goto Dazar'alor/1 48.28,27.05 < 5 |walk
Leave the building |goto Dazar'alor/0 49.94,42.13 < 5 |walk
Follow the path |goto Dazar'alor/0 50.26,41.48 < 7 |only if walking
talk Paku'ai Rokota##122689
fpath The Great Seal |goto 51.91,41.20
step
Follow the path |goto 51.33,88.53 < 7 |only if walking
Continue following the path |goto 51.03,85.74 < 5 |only if walking
talk Zolani##135441
turnin The Port of Zandalar##50835 |goto 50.06,85.07
accept Shakedown##46926 |goto 50.06,85.07
step
talk Yazma##126684
accept The Word of Zul##46846 |goto 50.05,84.76
step
Follow the path |goto 48.72,83.42 < 10 |only if walking
Continue following the path |goto 45.53,82.32 < 10 |only if walking
talk Witch Doctor Jala##126148
accept The Red Market##48452 |goto 44.25,82.15
stickystart "Collect_Dark_Fetishes"
step
Run down the stairs |goto 44.11,81.74 < 5 |only if walking
Follow the path |goto 43.37,81.66 < 5 |only if walking
Run down the stairs |goto 42.83,80.86 < 5 |only if walking
Follow the path |goto 42.81,78.71 < 5 |c |q 48452
step
Follow the path |goto 42.43,78.29 < 5 |only if walking
Follow the path |goto 41.71,81.38 < 7 |only if walking
Continue following the path |goto 41.82,83.09 < 7 |only if walking
Run up the stairs |goto 42.67,83.76 < 5 |only if walking
Enter the building |goto 42.80,83.58 < 5 |walk
click Chalice of Calling
|tip Inside the building.
Destroy the Chalice of Calling |q 48452/2 |goto 43.08,83.14
step
label "Collect_Dark_Fetishes"
Leave the building |goto 42.81,83.58 < 3 |walk
Kill Crimson enemies around this area
collect 3 Dark Fetishes##152461 |q 48452/1 |goto 42.29,83.76
step
Follow the path |goto 41.84,80.28 < 7 |only if walking
Follow the path |goto 42.25,78.26 < 5 |only if walking
Run up the stairs |goto 42.81,78.72 < 5 |only if walking
Follow the path |goto 42.87,80.76 < 5 |only if walking
Run up the stairs |goto 43.43,81.69 < 5 |only if walking
Follow the path |goto 44.08,81.73 < 5 |only if walking
talk Witch Doctor Jala##126148
turnin The Red Market##48452 |goto 44.25,82.15
accept Evidence of Evil##48454 |goto 44.25,82.15
stickystart "Slay_Dockside_Thugs"
step
Run up the stairs |goto 44.73,80.66 < 5 |only if walking
Follow the path |goto 44.86,79.95 < 5 |only if walking
talk Dockmaster Cobo##126009
|tip Inside the building.
Choose _<Show him the Word of Zul.>_
Show Dockmaster Cobo the Message |q 46846/3 |goto 45.31,79.78
step
label "Slay_Dockside_Thugs"
Follow the path |goto 45.72,82.17 < 10 |only if walking
Kill Thug enemies around this area
Slay #15# Dockside Thugs |q 46926/1 |goto 47.91,83.03
step
talk Zolani##135441
turnin Shakedown##46926 |goto 50.05,85.06
turnin Evidence of Evil##48454 |goto 50.07,85.07
accept Deterrent##46929 |goto 50.05,85.06
step
talk Yazma##126684
accept Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
Follow the path |goto 51.22,85.69 < 10 |only if walking
talk Nokali the Scarred##125485
Choose _<Show him the Word of Zul.>_
Show Nokali the Message |q 46846/1 |goto 51.52,91.04
step
Follow the path |goto 51.57,89.97 < 5 |only if walking
Jump down here |goto 53.49,89.73 < 5 |only if walking
talk Doomsayer Volkini##125489
Choose _<Show her the Word of Zul.>_
Show Volkini the Message |q 46846/2 |goto 53.90,91.10
step
Follow the path |goto 55.96,90.89 < 5 |only if walking
talk Toki##134346
accept Make Loh Go##52472 |goto 56.15,91.58
step
talk Toki##135795
Tell him _"I am ready."_
Speak with Toki |q 52472/1 |goto 56.15,91.58
step
Guide Loh to the First Goal |q 52472/2 |goto 56.57,91.69
|tip Move Loh to the finish line marker in the middle of the piles of small boxes.
|tip Use the abilities on your action bar.
step
Guide Loh Through All the Points Without Crossing His Own Path |q 52472/3 |goto 56.57,91.69
|tip Move Loh to the treasure chest, then the finish line marker.
|tip Use the abilities on your action bar.
step
Click the Completed Quest Box:
turnin Make Loh Go##52472
step
Run up the stairs |goto 55.98,89.46 < 5 |only if walking
talk Scrollsage Rooka##125312
accept The Scamps##48404 |goto 55.95,88.84
step
Follow the path |goto 55.94,90.36 < 7 |only if walking
Follow the path |goto 53.02,90.02 < 7 |only if walking
clicknpc Street Scamp##126034+
|tip They look like small blue children running on the ground around this area.
|tip Wait here, they all run to this small area.
Stop #5# Street Scamps |q 48404/1 |goto 49.94,89.97
step
Follow the path |goto 50.76,89.97 < 7 |only if walking
Follow the path |goto 53.05,90.04 < 7 |only if walking
Run up the stairs |goto 55.98,89.65 < 5 |only if walking
talk Scrollsage Rooka##125312
turnin The Scamps##48404 |goto 55.95,88.83
accept Mista Nice##48405 |goto 55.95,88.83
step
Run up the stairs |goto 57.50,90.72 < 5 |only if walking
Locate Orphan Toe |goto 58.78,90.53 < 7 |c |q 48405
step
talk Orphan Toe##126005
Tell him _"Lead da way."_
Watch the dialogue
Begin Following Orphan Toe |goto 58.78,90.53 > 10 |c |q 48405
step
Run up the stairs |goto 59.15,90.08 < 5 |only if walking
Follow the path |goto 59.11,89.23 < 5 |only if walking
Follow the path |goto 58.93,88.83 < 5 |only if walking
Run up the stairs |goto 57.20,88.24 < 5 |only if walking
Enter the building |goto 57.20,87.96 < 5 |walk
Track Down Lair of the Scamps |q 48405/1 |goto 57.20,87.36
|tip Inside the building.
step
kill Mista Nice##125996 |q 48405/2 |goto 57.20,87.36
|tip Inside the building.
step
Leave the building |goto 57.20,87.92 < 3 |walk
Jump down here |goto 57.10,89.26 < 5 |only if walking
Run up the stairs |goto 55.98,89.44 < 5 |only if walking
talk Scrollsage Rooka##125312
turnin Mista Nice##48405 |goto 55.95,88.83
step
Follow the path |goto 55.95,89.86 < 5 |only if walking
Continue following the path |goto 53.52,90.01 < 7 |only if walking
Continue following the path |goto 50.58,89.85 < 7 |only if walking
Run up the stairs |goto 50.04,88.70 < 7 |only if walking
Follow the path |goto 50.02,86.03 < 7 |only if walking
talk Yazma##126684
turnin The Word of Zul##46846 |goto 50.04,84.76
accept Punishment of Tal'aman##46927 |goto 50.04,84.76
stickystart "Collect_Amani_Heads"
step
Follow the path |goto 50.64,84.38 < 7 |only if walking
Run up the stairs |goto 50.01,81.39 < 7 |only if walking
Follow the path |goto 50.23,78.77 < 7 |only if walking
Follow the path |goto 50.64,77.93 < 7 |only if walking
Continue following the path |goto 51.97,77.90 < 7 |only if walking
Continue following the path |goto 54.10,79.80 < 7 |only if walking
Continue following the path |goto 55.80,80.37 < 7 |only if walking
Continue following the path |goto 56.21,81.37 < 7 |only if walking
Run up the stairs |goto 56.17,84.55 < 5 |only if walking
Follow the path |goto 56.16,85.15 < 5 |only if walking
click Ancient Gong
Watch the dialogue
kill Disciple of Jan'alai##120950
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 1
step
click Ancient Gong
Watch the dialogue
kill Disciple of Halazzi##120951
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 2
step
click Ancient Gong
Watch the dialogue
kill Disciple of Akil'zon##120946
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 3
step
click Ancient Gong
Watch the dialogue
kill Disciple of Nalorakk##120949
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 4
step
label "Collect_Amani_Heads"
Run down the stairs |goto 56.15,85.14 < 5 |only if walking
Follow the path |goto 56.18,81.49 < 7 |only if walking
Kill Amani enemies around this area
collect 6 Amani Head##160107 |q 46929/1 |goto 56.16,80.58
stickystart "Collect_Sandfury_Heads"
step
Follow the path |goto 56.11,80.44 < 10 |only if walking
Continue following the path |goto 54.24,79.81 < 7 |only if walking
Continue following the path |goto 51.95,77.93 < 7 |only if walking
Continue following the path |goto 48.44,77.93 < 7 |only if walking
Continue following the path |goto 46.84,77.05 < 7 |only if walking
click Ancient Gong##280611
kill Gahz'ragon
collect 3 Tongue of Gahz'ragon##152184 |q 46928/1 |goto 46.62,73.92
step
label "Collect_Sandfury_Heads"
Kill Sandfury enemies around this area
collect 6 Sandfury Head##158898 |q 46929/2 |goto 46.47,75.58
step
Follow the path |goto 47.37,77.70 < 10 |only if walking
Run down the stairs |goto 49.72,78.71 < 7 |only if walking
Follow the path |goto 50.32,81.64 < 7 |only if walking
Follow the path |goto 50.78,84.15 < 7 |only if walking
talk Yazma##126684
turnin Punishment of Tal'aman##46927 |goto 50.05,84.76
turnin Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
talk Zolani##135441
turnin Deterrent##46929 |goto 50.05,85.07
accept Royal Report##50881 |goto 50.05,85.07
step
Run up the stairs |goto Dazar'alor/1 45.73,82.55 < 5 |walk
Follow the path |goto Dazar'alor/2 41.25,82.43 < 5 |walk
Ride the Elevator Up |goto Dazar'alor/2 22.52,72.25 < 5 |walk
Follow the path |goto Dazar'alor/2 29.15,66.53 < 3 |walk
Leave the building |goto Dazar'alor/0 48.69,45.19 < 3 |walk
Run up the stairs |goto Dazar'alor/0 48.90,44.61 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.44,44.63 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 49.93,45.78 < 5 |only if walking
talk Habutu##125953
turnin Royal Report##50881 |goto Dazar'alor/0 50.04,46.54
step
Run down the stairs |goto 50.44,44.46 < 5 |only if walking
Follow the path |goto 50.96,44.70 < 5 |only if walking
Enter the building |goto 51.21,45.19 < 3 |walk
Follow the path |goto Dazar'alor/2 68.68,67.01 < 3 |walk
Ride the Elevator Down |goto Dazar'alor/2 74.97,72.21 < 5 |walk
talk Natal'hakata##131287
|tip Inside the building.
accept The Missing Handler##50538 |goto Dazar'alor/2 67.30,71.66
step
Run down the stairs |goto 56.41,57.54 < 5 |walk
Follow the path |goto Dazar'alor/1 55.36,45.63 < 5 |walk
Follow the path |goto Dazar'alor/1 48.80,27.12 < 5 |walk
Leave the building |goto Dazar'alor/0 49.94,42.12 < 5 |walk
Run down the stairs |goto Dazar'alor/0 50.96,40.32 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 50.67,37.98 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.10,37.60 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 50.60,36.99 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 51.70,37.55 < 5 |only if walking
Follow the path |goto Dazar'alor/0 51.83,39.26 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 52.36,38.95 < 5 |only if walking
Follow the path |goto Dazar'alor/0 52.53,38.02 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 53.10,37.58 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 54.48,37.22 < 5 |only if walking
Follow the path |goto Dazar'alor/0 54.56,36.03 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 54.55,32.14 < 5 |only if walking
Follow the path |goto Dazar'alor/0 55.43,30.84 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 56.26,29.56 < 7 |only if walking
Follow the path |goto Dazar'alor/0 57.86,26.68 < 7 |only if walking
Run down the stairs |goto Dazar'alor/0 58.06,25.83 < 7 |only if walking
Follow the path |goto Dazar'alor/0 57.71,22.80 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 57.29,22.65 < 5 |only if walking
Follow the path |goto Dazar'alor/0 56.72,22.69 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 55.86,24.12 < 5 |only if walking
Follow the path |goto Dazar'alor/0 54.82,25.41 < 5 |only if walking
Cross the bridge |goto Dazar'alor/0 54.28,25.31 < 7 |only if walking
Follow the path |goto Dazar'alor/0 51.65,21.05 < 7 |only if walking
Run up the stairs |goto Dazar'alor/0 51.88,20.29 < 5 |only if walking
Follow the path |goto Dazar'alor/0 52.27,19.80 < 5 |only if walking
talk Zena the Feeder##133242
fpath The Sliver |goto Dazar'alor/0 53.16,19.36
step
Run up the stairs |goto 51.75,19.06 < 5 |only if walking
Follow the path |goto 50.47,20.98 < 5 |only if walking
Run up the stairs |goto 49.99,21.35 < 5 |only if walking
Follow the path |goto 49.34,21.42 < 5 |only if walking
Run up the stairs |goto 48.70,22.00 < 5 |only if walking
Follow the path |goto 47.81,23.25 < 5 |only if walking
Run up the stairs |goto 47.27,23.21 < 5 |only if walking
Follow the path |goto 46.80,22.50 < 5 |only if walking
Run up the stairs |goto 46.29,22.58 < 5 |only if walking
Follow the path |goto 45.47,23.75 < 5 |only if walking
talk Wardruid Loti##126560
turnin The Zanchuli Council##47445 |goto 45.25,24.02
accept Forbidden Practices##47423 |goto 45.25,24.02
step
Follow the path |goto 43.92,24.36 < 7 |only if walking
Continue following the path |goto 41.99,23.10 < 7 |only if walking
Continue following the path |goto 40.32,20.30 < 7 |only if walking
talk Nokano##127665
accept Pests##47441 |goto 40.27,19.07
step
kill 8 Thieving Snapper##126331 |q 47441/1 |goto 39.28,19.45
step
Follow the path |goto 38.10,17.60 < 7 |only if walking
Continue following the path |goto 36.68,15.15 < 7 |only if walking
Continue following the path |goto 35.83,8.96 < 7 |only if walking
click Mysterious Trashpile##282667
Follow the Big One |q 47441/2 |goto 35.34,7.65
step
talk Jani##126334
turnin Pests##47441 |goto 35.34,7.65
accept Curse of Jani##47442 |goto 35.34,7.65
step
Follow the path |goto 35.89,8.77 < 7 |only if walking
Continue following the path |goto 36.18,11.93 < 7 |only if walking
Continue following the path |goto 36.67,15.39 < 7 |only if walking
Continue following the path |goto 38.27,17.77 < 7 |only if walking
Reach Nokano |q 47442/1 |goto 40.27,19.06
|tip Use the ability on your action bar.
|tip Avoid the trolls and spiders around this area.
step
Follow the path |goto 39.44,19.12 < 7 |only if walking
kill Nokano##127669
Watch the dialogue
Bite Nokano |q 47442/2 |goto 40.27,19.06
step
Return to Jani |goto 35.46,7.71 < 7 |noway |c |q 47442
step
talk Jani##126334
turnin Curse of Jani##47442 |goto 35.46,7.71
step
Follow the path |goto 35.92,8.92 < 7 |only if walking
Continue following the path |goto 36.26,11.87 < 7 |only if walking
Continue following the path |goto 36.49,14.63 < 7 |only if walking
Continue following the path |goto 40.23,20.59 < 7 |only if walking
Follow the path |goto 42.14,23.17 < 7 |only if walking
Follow the path |goto 43.63,24.18 < 7 |only if walking
Run down the stairs |goto 45.41,23.77 < 5 |only if walking
Follow the path |goto 46.29,22.56 < 5 |only if walking
Run down the stairs |goto 48.18,19.92 < 5 |only if walking
Follow the path |goto 48.77,19.08 < 5 |only if walking
use Loti's Totem##152627
|tip Use it next to NPC's around this area.
|tip Some of them will turn into Crimson Cultists.
kill 9 Crimson Cultist##138249 |q 47423/1 |goto 50.68,16.48
step
Follow the path |goto 50.69,16.31 < 10 |only if walking
Run up the stairs |goto 51.29,12.50 < 5 |only if walking
talk Hexlord Raal##126564
turnin Forbidden Practices##47423 |goto 51.90,11.88
accept Offensively Defensive##47433 |goto 51.90,11.88
step
talk Hexlord Raal##126564
Tell him _"Ready to patrol."_
Speak with Hexlord Raal |q 47433/1 |goto 51.90,11.88
step
clicknpc Ata the Winglord##126822
Fly the Skies with Hexlord Raal |q 47433/2 |goto 53.06,11.63
step
Place #6# Farseer Totems |q 47433/3 |goto 58.83,1.60 |notravel
|tip Use the "Farseer Totem" ability on your action bar.
|tip Use it on the yellow circles on the ground as you fly.
step
Return to Zanchul |goto 46.32,18.99 < 7 |c |q 47433 |notravel
step
talk Wardruid Loti##126560
turnin Offensively Defensive##47433 |goto 46.21,19.26
accept Pterrortorial Dispute##47435 |goto 46.21,19.26
accept Restraining Order##47434 |goto 46.21,19.26
stickystart "Slay_Bloodraged_Pterrordaxes"
step
Follow the path |goto 44.31,19.24 < 7 |only if walking
Follow the path |goto 43.32,18.84 < 7 |only if walking
Shoo #20# Pterrordax Hatchlings |q 47434/1 |goto 41.73,16.97
|tip They look like smaller red dinosaur birds flying low to the ground around this area.
|tip Walk next to them.
step
label "Slay_Bloodraged_Pterrordaxes"
kill 6 Bloodraged Pterrordax##126618 |q 47435/1 |goto 41.73,16.97
step
Follow the path |goto 39.87,12.88 < 7 |only if walking
talk Hexlord Raal##126564
turnin Pterrortorial Dispute##47435 |goto 40.93,11.31
turnin Restraining Order##47434 |goto 40.93,11.31
accept Competitive Devotion##47437 |goto 40.93,11.31
step
Enter the building |goto 41.16,10.98 < 5 |walk
Follow the path |goto Dazar'alor/4 46.77,51.67 < 5 |only if walking
kill Guardian of the Tombs##127072 |q 47437/1 |goto Dazar'alor/4 65.51,69.04
|tip Inside the building.
step
Run up the stairs |goto 45.77,39.28 < 5 |walk
Follow the path |goto 37.81,26.36 < 5 |walk |notravel
Run up the stairs |goto 45.46,17.40 < 5 |walk |notravel
Follow the path |goto Dazar'alor/3 39.15,27.74 < 5 |walk
Continue following the path |goto Dazar'alor/3 43.87,34.20 < 5 |walk
Continue following the path |goto Dazar'alor/3 53.69,38.55 < 7 |walk
kill Guardian of the Rites##127073 |q 47437/2 |goto Dazar'alor/3 65.93,30.68
|tip Upstairs inside the building.
step
Follow the path |goto 61.68,48.99 < 5 |walk
Follow the path |goto 64.21,66.43 < 3 |walk
Continue following the path |goto 68.02,68.40 < 3 |walk
Continue following the path |goto 70.60,67.56 < 3 |walk
Continue following the path |goto 79.38,83.54 < 3 |walk
Leave the building |goto 77.47,87.57 < 3 |walk
Follow the path |goto Dazar'alor/0 44.49,14.55 < 10 |only if walking
kill Guardian of the Dead##127074 |q 47437/3 |goto Dazar'alor/0 44.27,16.70
step
Run up the stairs |goto 46.03,16.14 < 5 |only if walking
talk Wardruid Loti##126560
turnin Competitive Devotion##47437 |goto 46.11,13.06
accept Dire Situation##47422 |goto 46.11,13.06
step
Run up the stairs |goto 46.10,11.85 < 5 |only if walking
Follow the path |goto 44.69,9.14 < 7 |only if walking
kill Dregada##127079 |q 47422/1 |goto 43.63,7.38
|tip Your allies will help you fight him.
step
Follow the path |goto 43.29,7.92 < 7 |only if walking
talk Wardruid Loti##126560
turnin Dire Situation##47422 |goto 42.29,9.10
accept Picking a Side##47438 |goto 42.29,9.10
step
clicknpc Pa'ku##138424
Choose a Loa |q 47438/1 |goto 42.61,9.22
step
talk Wardruid Loti##126560
turnin Picking a Side##47438 |goto 42.29,9.10
step
talk Hexlord Raal##126564
accept Pa'ku, Master of Winds##47440 |goto 42.54,9.49
step
clicknpc Ata the Winglord##127414
Begin Riding Ata the Winglord |invehicle |goto 42.48,10.06 |q 47440
step
Ride Ata the Winglord |q 47440/1 |goto Zuldazar/0 70.45,49.07 |notravel
step
Follow the path up |goto Zuldazar/0 70.66,48.84 < 5 |only if walking
Follow the path up |goto 71.09,48.52 < 5 |only if walking
Follow the path up |goto 71.31,48.61 < 5 |only if walking
talk Pa'ku##127377
Bargain with Pa'ku |q 47440/2 |goto 71.50,49.32
step
Follow the path |goto 71.61,49.13 < 7 |only if walking
Jump Off the Cliff |q 47440/3 |goto 71.82,49.24
|tip You won't die.
step
Watch the dialogue
Return to Dazar'alor |goto Dazar'alor/0 50.09,34.52 < 7 |c |q 47440 |notravel
step
talk Hexlord Raal##127489
turnin Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 49.92,33.40
accept The Bargain is Struck##47432 |goto Dazar'alor/0 49.92,33.40
step
click Totem of Pa'ku |goto 49.54,32.83
Fly to the Top of the Building |goto 49.91,39.56 < 7 |noway |c |q 47432
step
Enter the building |goto 49.95,42.14 < 5 |walk
Follow the path |goto Dazar'alor/1 46.97,27.86 < 5 |walk
Run up the stairs |goto Dazar'alor/1 42.35,46.30 < 5 |walk
Follow the path |goto Dazar'alor/2 41.10,56.62 < 3 |walk
Ride the Elevator Up |goto Dazar'alor/2 23.06,72.35 < 5 |c |q 47432
step
Follow the path |goto 28.81,67.48 < 3 |walk
Leave the building |goto 29.08,59.61 < 3 |walk
Run up the stairs |goto Dazar'alor/0 48.88,44.61 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.44,44.65 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 49.87,45.79 < 5 |only if walking
talk King Rastakhan##120740
|tip Upstairs inside the building.
turnin The Bargain is Struck##47432 |goto 49.93,46.62
step
Run down the stairs |goto 50.01,45.96 < 5 |only if walking
Run down the stairs |goto 50.46,44.53 < 5 |only if walking
Follow the path |goto 50.96,44.39 < 5 |only if walking
Run down the stairs |goto 51.34,43.91 < 5 |only if walking
Jump down here |goto 51.35,42.76 < 5 |only if walking
talk Huntmaster Kil'ja##130785
accept Nesingwary's Trek##49768 |goto 52.00,41.39
step
click Totem of Pa'ku |goto 53.24,18.92
Fly to the Top of the Building |goto 52.76,11.85 < 7 |noway |c |q 49488
step
click Totem of Pa'ku |goto 52.93,11.30
Fly Across the River |goto 58.97,11.01 < 7 |noway |c |q 49488
step
Jump down here |goto 59.44,9.93 < 5 |only if walking
Follow the path |goto 60.85,9.10 < 7 |only if walking
Run up the stairs |goto Zuldazar/0 62.66,32.78 < 5 |only if walking
talk Zul the Prophet##129907
turnin Tal'gurub##49488 |goto Zuldazar/0 62.82,32.56
accept Needs a Little Body##49489 |goto Zuldazar/0 62.82,32.56
accept The Urn of Voices##49490 |goto Zuldazar/0 62.82,32.56
step
Run up the stairs |goto 62.99,32.32 < 5 |only if walking
Follow the path |goto 63.25,31.92 < 5 |only if walking
talk Izita's Spirit##130706
accept Fuel for the Voodoo##49491 |goto 63.62,31.76
stickystart "Collect_Voodoo_Totems"
stickystart "Gather_Ounces_of_Soul"
step
Run up the stairs |goto 63.65,32.07 < 5 |only if walking
Follow the path |goto 63.93,32.49 < 5 |only if walking
Follow the path |goto 64.44,33.15 < 5 |only if walking
Run up the stairs |goto 64.88,33.18 < 5 |only if walking
Enter the building |goto 64.93,33.11 < 3 |walk
Run up the stairs |goto 65.05,33.06 < 3 |walk
clicknpc Atal'jamba Ungo##130089
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 65.02,32.99 |count 1
step
Leave the building |goto 64.93,33.12 < 3 |walk
Cross the bridge |goto 64.39,33.17 < 7 |only if walking
Run down the stairs |goto 63.93,32.48 < 5 |only if walking
Follow the path |goto 63.64,31.96 < 5 |only if walking
Continue following the path |goto 63.67,31.29 < 7 |only if walking
Continue following the path |goto 63.47,30.60 < 7 |only if walking
Continue following the path |goto 62.90,29.50 < 7 |only if walking
Run up the stairs |goto 63.00,29.06 < 5 |only if walking
Enter the building |goto 63.07,29.06 < 3 |walk
Run up the stairs |goto 63.19,29.14 < 3 |walk
clicknpc Atal'jamba Iri##130109
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 63.20,29.06 |count 2
step
label "Collect_Voodoo_Totems"
Leave the building |goto 63.08,29.06 < 3 |walk
Follow the path |goto 62.86,29.55 < 7 |only if walking
click Voodoo Totem##154901+
|tip They look like wooden glowing green totems on the ground around this area.
collect 8 Voodoo Totem##154901 |q 49491/1 |goto 63.56,30.85
step
label "Gather_Ounces_of_Soul"
Kill enemies around this area
Gather #30# Ounces of Soul |q 49490/1 |goto 63.56,30.85
step
Follow the path |goto 63.48,30.57 < 10 |only if walking
Follow the path |goto 62.90,29.54 < 7 |only if walking
click Brazier##278452
turnin Fuel for the Voodoo##49491 |goto 62.74,28.47
step
Follow the path |goto 62.79,28.68 < 5 |only if walking
Run up the stairs |goto 62.87,28.53 < 5 |only if walking
Follow the path |goto 62.86,28.35 < 5 |only if walking
talk Zul the Prophet##129907
turnin Needs a Little Body##49489 |goto 62.86,28.24
turnin The Urn of Voices##49490 |goto 62.86,28.24
accept Arrogance of Vol'jamba##49492 |goto 62.86,28.24
step
clicknpc Voice of Vol'jamba##130209
Silence the Voice of Vol'jamba |q 49492/1 |goto 62.90,28.02
step
Run up the stairs |goto 63.04,28.17 < 5 |only if walking
Follow the path |goto 63.44,28.13 < 5 |only if walking
clicknpc Eyes of Vol'jamba##130208
Blind the Eyes of Vol'jamba |q 49492/2 |goto 63.55,28.07
step
Run up the stairs |goto 63.63,28.17 < 5 |only if walking
Follow the path |goto 63.84,28.18 < 5 |only if walking
Run up the stairs |goto 63.95,28.22 < 5 |only if walking
clicknpc Spite of Vol'jamba##130197
Thwart the Spite of Vol'jamba |q 49492/3 |goto 64.12,28.38
step
Watch the dialogue
talk Zul the Prophet##129907
turnin Arrogance of Vol'jamba##49492 |goto 64.38,28.55
accept Zul's Ethical Dilemma##49493 |goto 64.38,28.55
accept Zuvembi Brew##49494 |goto 64.38,28.55
stickystart "Free_Mindslaves"
step
Run down the stairs |goto 64.35,28.85 < 5 |only if walking
Follow the path |goto 64.46,29.16 < 5 |only if walking
Run down the stairs |goto 64.58,29.20 < 5 |only if walking
Follow the path |goto 64.78,29.07 < 5 |only if walking
Follow the path |goto 65.30,28.35 < 5 |only if walking
click Jambani Stockpile##290750
accept Preparing for the Fall##51663 |goto 65.28,28.22
stickystart "Destroy_Jambani_Stockpiles"
step
Follow the path |goto 65.23,28.42 < 5 |only if walking
Run up the stairs |goto 65.14,28.25 < 5 |only if walking
Follow the path |goto 65.09,28.02 < 5 |only if walking
Run up the stairs |goto 64.99,27.56 < 5 |only if walking
Follow the path |goto 64.98,27.47 < 5 |only if walking
kill Zuvembi Brewer Zekal##130260 |q 49494/1 |goto 64.89,27.01
step
label "Free_Mindslaves"
Run down the stairs |goto 64.99,27.48 < 5 |only if walking
Follow the path |goto 65.00,27.57 < 5 |only if walking
Run down the stairs |goto 65.10,28.03 < 5 |only if walking
Follow the path |goto 65.14,28.26 < |only if walking
use the Mindbreaker Chant##155458
|tip Use it next to Mindslaved enemies around this area.
Free #9# Mindslaves |q 49493/1 |goto 65.24,28.67
step
label "Destroy_Jambani_Stockpiles"
click Jambani Stockpile##290750+
|tip They look like stacks of brown baskets on the ground around this area.
Destroy #8# Jambani Stockpiles |q 51663/1 |goto 65.24,28.67
step
Run up the stairs |goto 65.32,29.09 < 7 |only if walking
Follow the path |goto 65.58,30.06 < 5 |only if walking
talk Zul the Prophet##129907
turnin Zul's Ethical Dilemma##49493 |goto 65.71,30.21
turnin Zuvembi Brew##49494 |goto 65.71,30.21
turnin Preparing for the Fall##51663 |goto 65.71,30.21
accept Enforcing Fate##49495 |goto 65.71,30.21
step
Follow the path |goto 65.68,30.44 < 7 |only if walking
click Gong of Command##279349
Place the Seal of Implacable Fate |q 49495/1 |goto 65.89,31.08
step
click Urn of Voices##279353
Place the Urn of Voices |q 49495/2 |goto 65.89,30.67
step
Watch the dialogue
click Urn of Voices##279353
Adjust the Urn of Voices |q 49495/3 |goto 65.86,30.65
step
Follow the path |goto 65.54,31.02 < 5 |only if walking
click Mysterious Brew
Swap the Potion |q 49495/4 |goto 65.56,31.30
step
Follow the path |goto 65.54,31.04 < 5 |only if walking
talk Zul the Prophet##129907
turnin Enforcing Fate##49495 |goto 65.70,30.21
accept Plot Twist##49905 |goto 65.70,30.21
step
Watch the dialogue
Confront Vol'jamba |q 49905/1 |goto 65.62,30.55
step
kill Vol'jamba##131241 |q 49905/2 |goto 65.68,31.03
step
talk Zul the Prophet##129907
turnin Plot Twist##49905 |goto 65.58,30.51
accept False Prophecies##49663 |goto 65.58,30.51
step
Follow the path |goto 65.42,31.02 < 7 |only if walking
Follow the path up |goto 65.19,31.70 < 7 |only if walking
Follow the path up |goto 65.07,32.36 < 7 |only if walking
Follow the path |goto 65.43,32.92 < 7 |only if walking
Jump down carefully here |goto 65.18,34.22 < 5 |only if walking
Follow the path |goto 64.76,35.01 < 7 |only if walking
Jump down here |goto 64.32,35.28 < 5 |only if walking
talk Witch Doctor Jangalar##130929
accept Monstrous Matchmaker##49810 |goto 64.13,35.38
step
Follow the path |goto 63.81,35.48 < 7 |only if walking
Follow the path down |goto 63.31,35.91 < 7 |only if walking
use Jangalar's Voodoo Totem##155911
|tip Use it on Gentle Ben'jin.
Voo-doo Gentle Ben'jin |q 49810/1 |goto 63.06,37.12
step
Follow the path up |goto 63.38,38.32 < 7 |only if walking
use Jangalar's Voodoo Totem##155911
|tip Use it on the Irritable Maka'fon.
Voo-doo the Irritable Maka'fon |q 49810/2 |goto 64.21,39.37
step
Follow the path up |goto 64.02,38.37 < 7 |only if walking
Follow the path down |goto 64.03,37.52 < 7 |only if walking
Follow the road |goto 63.60,36.54 < 7 |only if walking
Follow the path |goto 63.82,35.44 < |only if walking
talk Witch Doctor Jangalar##130929
turnin Monstrous Matchmaker##49810 |goto 64.13,35.38
accept The Scent for a Brutosaur##49814 |goto 64.13,35.38
accept They Say It's a Delicacy##50154 |goto 64.13,35.38
step
talk Cala Cruzpot##130905
accept Aggressive Mating Strategy##49801 |goto 64.07,35.47
stickystart "Collect_Partially_Digested_Pods"
step
Follow the path |goto 63.82,35.47 < 7 |only if walking
Follow the path down |goto 63.33,35.89 < 7 |only if walking
click Zandalari Rushes+
|tip They look like clusters of three green plants growing in the water on the ground around this area.
collect 7 Fragrant Rushes##155916 |q 49814/1 |goto 62.54,37.15
step
label "Collect_Partially_Digested_Pods"
Kill Diemetradon enemies around this area
collect 25 Partially Digested Pod##155917 |q 50154/1 |goto 62.54,37.15
step
Follow the path up |goto 63.16,39.92 < 7 |only if walking
Follow the path up |goto 63.44,40.64 < 7 |only if walking
kill Invasive Razorwing##131554+
collect 8 Razorwing Bile Sac##155904 |q 49801/1 |goto 63.44,41.96
step
Follow the path down |goto 63.41,41.65 < 10 |only if walking
Follow the path up |goto 63.55,39.68 < 7 |only if walking
Follow the path up |goto 63.95,38.30 < 7 |only if walking
Follow the path down |goto 64.02,37.49 < 7 |only if walking
Follow the road |goto 63.60,36.55 < 7 |only if walking
Follow the path |goto 63.84,35.46 < 7 |only if walking
talk Cala Cruzpot##130905
turnin Aggressive Mating Strategy##49801 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin The Scent for a Brutosaur##49814 |goto 64.13,35.37
turnin They Say It's a Delicacy##50154 |goto 64.13,35.37
accept Setting the Mood##50150 |goto 64.13,35.37
step
talk Cala Cruzpot##130905
accept Brutal Boost##50074 |goto 64.07,35.46
step
Follow the path |goto 63.84,35.49 < 7 |only if walking
Follow the path down |goto 63.31,35.88 < 7 |only if walking
use the Aggression Formula##156475
|tip Use it on Gentle Ben'jin.
Administer the Aggression Formula |q 50074/1 |goto 63.05,37.13
step
Follow the path up |goto 63.38,38.31 < 7 |only if walking
click Romantic Brutosaur Meal
Offer the Romantic Meal |q 50150/2 |goto 64.03,39.03
step
click Voodoo Lore Incense
Place the Voodoo Love Incense |q 50150/1 |goto 64.30,38.93
step
Watch the dialogue
Get Flung Away |goto 64.30,38.93 > 10 |c |q 50150
step
Land Safely |goto 63.63,35.90 < 7 |c |q 50150
step
Follow the path |goto 63.86,35.47 < 7 |only if walking
talk Cala Cruzpot##130905
turnin Brutal Boost##50074 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin Setting the Mood##50150 |goto 64.13,35.37
accept Mating Season Halftime##50252 |goto 64.13,35.37
step
talk Witch Doctor Jangalar##130929
Ask her _"Can Cala's science help?"_
Speak to Jangalar |q 50252/2 |goto 64.13,35.38
step
talk Cala Cruzpot##130905
Ask her _"Can you work with Jangalar to solve this problem?"_
Speak to Cala |q 50252/1 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin Mating Season Halftime##50252 |goto 64.12,35.37
step
talk Cala Cruzpot##130905
accept Give it a Little Juice##50268 |goto 64.07,35.47
step
clicknpc Voodoo Cauldron##133167
Apply the Voodoo'ed Aggression Formula |q 50268/1 |goto 64.14,35.32
step
talk Cala Cruzpot##130905
turnin Give it a Little Juice##50268 |goto 64.07,35.47
accept Size Matters##49870 |goto 64.07,35.47
step
Follow the path |goto 63.84,35.49 < 7 |only if walking
Follow the path down |goto 63.31,35.88 < 7 |only if walking
use the Voodoo'ed Aggression Formula##156867
|tip Use it on Tiny Sleeping Ben'jin.
Administer the Voodoo'ed Aggression Formula |q 49870/1 |goto 63.06,37.11
step
Follow the path |goto 63.36,38.34 < 7 |only if walking
Follow the path up |goto 63.49,39.81 < 7 |only if walking
Follow the path up |goto 63.56,41.75 < 7 |only if walking
Travel to Gloomtail's Cave |q 49870/2 |goto 63.99,41.94
step
Enter the cave |goto 64.56,42.07 < 5 |walk
Follow the path |goto 64.80,42.16 < 5 |walk
kill Gloomtail##131555
|tip Inside the cave.
collect Gloomtail's Head##156922 |q 49870/3 |goto 65.01,42.09
step
Follow the path |goto 64.80,42.16 < 5 |walk
Leave the cave |goto 64.51,42.07 < 5 |walk
Follow the path down |goto 63.47,41.65 < 7 |only if walking
Follow the path up |goto 63.51,39.79 < 7 |only if walking
Follow the path up |goto 63.95,38.30 < 7 |only if walking
Follow the path down |goto 64.02,37.49 < 7 |only if walking
Follow the road |goto 63.60,36.55 < 7 |only if walking
Follow the path |goto 63.84,35.46 < 7 |only if walking
talk Witch Doctor Jangalar##130929
turnin Size Matters##49870 |goto 64.12,35.37
accept The Head of Her Enemy##50297 |goto 64.12,35.37
step
Follow the path up |goto 63.83,35.53 < 7 |only if walking
Follow the path up |goto 63.60,36.52 < 7 |only if walking
Follow the path down |goto 64.01,37.59 < 7 |only if walking
Follow Jangalar and Cala |q 50297/1 |goto 64.20,38.94
step
clicknpc Gloomtail's Head##133300
Offer Gloomtail's Head |q 50297/2 |goto 64.17,39.10
step
Watch the dialogue
Confirm the Brutosaur Match |q 50297/3 |goto 64.26,38.98
step
Follow the path up |goto 63.95,38.30 < 7 |only if walking
Follow the path down |goto 64.02,37.49 < 7 |only if walking
Follow the road |goto 63.60,36.55 < 7 |only if walking
Follow the path |goto 63.84,35.46 < 7 |only if walking
talk Witch Doctor Jangalar##130929
turnin The Head of Her Enemy##50297 |goto 64.12,35.37
step
Run up the stairs |goto Dazar'alor/1 51.76,82.40 < 5 |walk
Follow the path |goto Dazar'alor/2 56.49,82.28 < 5 |walk
Ride the Elevator Up |goto 74.96,72.05 < 5 |walk
Follow the path |goto Dazar'alor/2 68.46,66.87 < 3 |walk
Leave the building |goto Dazar'alor/2 68.35,59.42 < 3 |walk
Run up the stairs |goto Dazar'alor/0 50.94,44.59 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.43,44.59 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 50.05,45.80 < 5 |only if walking
talk King Rastakhan##120740
|tip Upstairs inside the building.
turnin False Prophecies##49663 |goto 49.93,46.61
accept A Port in Peril##49122 |goto 49.93,46.61
step
Run down the stairs |goto 50.00,46.06 < 5 |only if walking
Run down the stairs |goto 50.45,44.54 < 5 |only if walking
Follow the path |goto 50.93,44.36 < 5 |only if walking
Run down the stairs |goto 51.31,43.93 < 5 |only if walking
Jump down here |goto 51.31,42.80 < 5 |only if walking
Run down the stairs |goto 51.00,40.32 < 5 |only if walking
Run down the stairs |goto 50.70,37.99 < 5 |only if walking
Follow the path |goto 50.06,37.41 < 5 |only if walking
Run down the stairs |goto 50.62,36.96 < 5 |only if walking
Follow the path |goto 51.53,36.77 < 5 |only if walking
Run down the stairs |goto 51.43,36.02 < 5 |only if walking
Follow the path |goto 50.21,35.67 < 5 |only if walking
Jump down here |goto 50.76,32.71 < 5 |only if walking
Run down the stairs |goto 51.28,31.51 < 5 |only if walking
Follow the path |goto 51.38,29.76 < 5 |only if walking
Run up the stairs |goto 51.68,29.22 < 5 |only if walking
Cross the bridge |goto 51.89,29.20 < 5 |only if walking
Run down the stairs |goto 53.97,29.16 < 5 |only if walking
Jump down here |goto 56.66,31.19 < 5 |only if walking
click Totem of Pa'ku |goto 58.32,32.64
Fly to Warbeast Kraal |goto Zuldazar/0 66.52,42.37 < 7 |noway |c |q 50538
step
Jump down here |goto 66.41,42.31 < 3 |only if walking
Follow the path |goto 66.26,42.46 < 5 |only if walking
Jump down here |goto 66.01,42.26 < 5 |only if walking
Jump down here |goto 65.73,41.85 < 5 |only if walking
Follow the path |goto 65.56,41.52 < 7 |only if walking
clicknpc Handler Bazkoji##139311
turnin The Missing Handler##50538 |goto 65.57,41.22
step
clicknpc Direhorn Hatchling##122939
accept The Orphaned Hatchling##47226 |goto 65.65,41.35
step
Follow the road |goto 65.29,41.77 < 7 |only if walking
Follow the path up |goto 65.37,43.40 < 7 |only if walking
Continue up the path |goto 65.39,44.45 < 7 |only if walking
Continue up the path |goto 65.68,44.83 < 7 |only if walking
Cross the bridge |goto 66.47,43.82 < 7 |only if walking
Follow the path |goto 66.93,43.11 < 7 |only if walking
talk Beastlord L'kala##121706
turnin The Orphaned Hatchling##47226 |goto 66.81,42.51
accept Direhorn Daycare##47259 |goto 66.81,42.51
accept Ravenous Landsharks##48527 |goto 66.81,42.51
step
Run up the stairs |goto 66.73,42.45 < 5 |only if walking
Enter the building |goto 66.60,42.38 < 3 |walk
talk Jes'tri##123062
|tip Inside the building.
home Beastcaller Inn |goto 66.56,42.35 |q 49917 |future
step
Leave the building |goto 66.61,42.39 < 3 |walk
talk Paku'ai Verraki##123060
fpath Warbeast Kraal |goto 67.26,43.03
stickystart "Kill_Irritable_Diemetradons"
step
Jump down here |goto 67.35,43.16 < 5 |only if walking
Follow the path up |goto 67.81,43.64 < 7 |only if walking
click Soothing Lilybud##270918+
|tip They look like small green plants on the ground around this area.
Sate the Direhorn Hatchling's Hunger |q 47259/1 |goto 68.76,44.83
step
label "Kill_Irritable_Diemetradons"
kill 9 Irritable Diemetradon##126562 |q 48527/1 |goto 68.76,44.83
step
Follow the path up |goto 67.91,42.39 < 7 |only if walking
Follow the path up |goto 67.58,42.14 < 7 |only if walking
Follow the path |goto 67.23,42.42 < 7 |only if walking
talk Beastlord L'kala##121706
turnin Direhorn Daycare##47259 |goto 66.81,42.51
turnin Ravenous Landsharks##48527 |goto 66.81,42.51
accept Headbutting 101##47311 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
accept Direhorn Growth Hormone##47272 |goto 66.81,42.58
step
Follow the path down |goto 67.19,42.56 < 7 |only if walking
Follow the path |goto 67.52,42.15 < 7 |only if walking
Follow the path down |goto 68.03,40.31 < 7 |only if walking
click Wanted: Poacher
accept WANTED: Jabra'kan##51980 |goto 69.05,40.85
step
talk Wingrider Nivek##125486
accept Queenfeather##47312 |goto 69.02,40.69
stickystart "Collect_Steaming_Fresh_Carrion"
stickystart "Command_Hatchling_to_Fight"
step
Follow the path |goto 69.37,39.83 < 7 |only if walking
Continue following the path |goto 70.29,40.00 < 10 |only if walking
kill Queenfeather##139365
|tip She walks around this area.
collect Queenfeather's Plume##160945 |q 47312/1 |goto 71.17,40.30
step
label "Collect_Steaming_Fresh_Carrion"
click Steaming Fresh Carrion##291235+
|tip They look like red piles of bones and organs on the ground around this area.
collect 10 Steaming Fresh Carrion##150347 |q 47272/1 |goto 70.58,40.04
step
label "Command_Hatchling_to_Fight"
Command the Hatchling to Fight #12# Times |q 47311/1 |goto 70.58,40.04
|tip Use the "Mark for Attack!" ability on enemies around this area.
|tip It appears as a button on the screen.
step
Follow the path up |goto 69.48,39.02 < 7 |only if walking
Follow the path |goto 68.76,39.15 < 7 |only if walking
Follow the path |goto 67.80,38.19 < 7 |only if walking
kill Jabra'kan the Poacher##139440 |q 51980/1 |goto 67.11,37.36
|tip He walks around this area.
|tip You may need help with this.
step
Follow the path |goto 67.75,38.10 < 7 |only if walking
Follow the path up |goto 68.94,39.81 < 7 |only if walking
talk Wingrider Nivek##125486
turnin WANTED: Jabra'kan##51980 |goto 69.02,40.70
turnin Queenfeather##47312 |goto 69.02,40.70
step
Follow the road |goto 68.92,41.07 < 7 |only if walking
Follow the road |goto 68.80,41.79 < 7 |only if walking
Continue following the road |goto 68.43,42.22 < 7 |only if walking
Follow the path up |goto 67.99,42.31 < 7 |only if walking
Follow the path up |goto 67.59,42.14 < 7 |only if walking
Follow the path |goto 67.16,42.50 < 7 |only if walking
talk Trader Alexxi Cruzpot##122129
turnin Direhorn Growth Hormone##47272 |goto 66.81,42.58
step
talk Beastlord L'kala##121706
turnin Headbutting 101##47311 |goto 66.81,42.51
accept Wings for the Kraal##51990 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
accept DGH: Now With Real Direhorn##51998 |goto 66.81,42.58
stickystart "Collect_Partially_Digested_Direhorn_Flesh"
step
Follow the path down |goto 67.19,42.56 < 7 |only if walking
Follow the path |goto 67.52,42.15 < 7 |only if walking
Follow the path down |goto 68.03,40.31 < 7 |only if walking
Follow the path |goto 68.93,40.39 < 7 |only if walking
Continue following the path |goto 68.36,38.68 < 7 |only if walking
Continue following the path |goto 68.44,36.85 < 10 |only if walking
Follow the path up |goto 68.15,34.74 < 7 |only if walking
Follow the path up |goto 67.57,34.05 < 7 |only if walking
click Nearly-hatching Pterrordax Egg##270040+
|tip They look like large white eggs on the ground around this area.
collect 8 Nearly-hatching Pterrordax Egg##150272 |q 51990/1 |goto 67.20,33.24
step
label "Collect_Partially_Digested_Direhorn_Flesh"
Kill enemies around this area
|tip Spider enemies will not drop the quest item.
collect 8 Partially Digested Direhorn Flesh##160975 |q 51998/1 |goto 67.20,33.24
step
Jump down here |goto 68.35,32.45 < 5 |only if walking
Follow the path up |goto 69.67,31.92 < 7 |only if walking
Follow the path up |goto 70.22,31.67 < 7 |only if walking
Follow the path up |goto 70.43,30.16 < 7 |only if walking
talk Scroll of Flight##136331
fpath Scaletrader Post |goto 70.78,29.59
step
talk Beastlord L'kala##121706
turnin Wings for the Kraal##51990 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
turnin DGH: Now With Real Direhorn##51998 |goto 66.81,42.58
accept Growing Pains##47418 |goto 66.82,42.58
step
clicknpc Direhorn Hatchling##139643
Watch the dialogue
Feed the Hatchling DGH |q 47418/1 |goto 66.85,42.44
step
talk Trader Alexxi Cruzpot##122129
turnin Growing Pains##47418 |goto 66.81,42.58
step
talk Beastlord L'kala##121706
accept How to Train Your Direhorn##47261 |goto 66.81,42.51
step
Jump down here |goto 67.36,43.17 < 5 |only if walking
talk Kraal Master B'khor##122009
Tell him _"I'm ready to train."_
Talk to Training Master B'khor |q 47261/1 |goto 67.56,43.45
step
Follow the path |goto 68.64,44.72 < 7 |only if walking
Watch the dialogue
Meet Pinky |q 47261/2 |goto 69.14,45.13
step
Escape Out the North Gate |q 47261/3 |goto 69.72,43.85
step
Follow the path up |goto 70.12,43.32 < 10 |only if walking
Continue up the path |goto 70.57,43.61 < 10 |only if walking
Continue up the path |goto 70.52,44.27 < 10 |only if walking
Run For Help |q 47261/4 |goto 70.25,44.96
|tip Use the ability on your action bar as often as possible.
|tip Run over the green glowing plants on the ground to heal your Direhorn.
step
Follow the path up |goto 69.88,45.60 < 10 |only if walking
Cross the bridge |goto 69.60,46.74 < 10 |only if walking
Follow the path |goto 69.17,47.45 < 10 |only if walking
Follow the path down |goto 68.48,47.53 < 10 |only if walking
Continue down the path |goto 67.51,46.82 < 10 |only if walking
Continue down the path |goto 66.80,46.24 < 10 |only if walking
Continue down the path |goto 66.53,45.66 < 10 |only if walking
Continue down the path |goto 66.64,45.12 < 10 |only if walking
Run For More Help |q 47261/5 |goto 67.18,44.18
|tip Use the abilities on your action bar as often as possible.
|tip Use the "Sprint" ability on your action bar to bust through the wooden gates.
|tip Run over the green glowing plants on the ground to heal your Direhorn.
step
Watch the dialogue
Return to Kraal Master B'khor |q 47261/6 |goto 67.56,43.45
step
Stop Riding the Direhorn |outvehicle |goto 67.56,43.45 |q 47261
|tip Click the red arrow on your action bar.
step
talk Kraal Master B'khor##122009
turnin How to Train Your Direhorn##47261 |goto 67.56,43.45
accept A Good Spanking##48581 |goto 67.56,43.45
step
Follow the path |goto 67.58,44.27 < 7 |only if walking
kill Pinky##126732
Subdue Pinky |q 48581/1 |goto 67.84,44.89
step
Follow the path down |goto 67.56,44.25 < 7 |only if walking
Follow the path |goto 67.58,43.86 < 7 |only if walking
Follow the path up |goto 67.94,42.51 < 7 |only if walking
Follow the path up |goto 67.61,42.15 < 7 |only if walking
Follow the path |goto 67.12,42.49 < 7 |only if walking
talk Beastlord L'kala##121706
turnin A Good Spanking##48581 |goto 66.81,42.51
accept Naptime##47310 |goto 66.81,42.51
step
Follow the path down |goto 67.10,42.57 < 7 |only if walking
Follow the path down |goto 67.62,42.12 < 7 |only if walking
Follow the path |goto 68.03,42.33 < 7 |only if walking
click Gate
Stable the Direhorn Juvenile |q 47310/1 |goto 68.22,42.09
step
Follow the path up |goto 68.00,42.29 < 7 |only if walking
Follow the path up |goto 67.57,42.17 < 7 |only if walking
Follow the path |goto 67.16,42.48 < 7 |only if walking
talk Beastlord L'kala##121706
turnin Naptime##47310 |goto 66.81,42.51
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
turnin Nesingwary's Trek##49768 |goto 67.50,17.71
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
accept Trouble in the Rootway##50178 |goto 65.70,18.51
|tip You will automatically accept this quest.
step
Kill enemies around this area
kill Feathered Viper Egg##132413+
|tip They look like white eggs on the ground around this area.
kill Feathered Viper Hatchling##132412+
|tip They appear when you break the Feathered Viper Eggs.
Cull Aggressive Wildlife |q 50178/1 |goto 64.79,18.64
step
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
Follow the road |goto 62.38,24.46 < 7 |only if walking
Follow the path |goto 62.90,23.29 < 7 |only if walking
Follow the path up |goto 63.05,22.48 < 7 |only if walking
Follow the path up |goto 64.10,21.88 < 7 |only if walking
Follow the path |goto 64.43,21.23 < 7 |only if walking
Follow the road |goto 64.82,20.66 < 7 |only if walking
Continue following the road |goto 66.18,20.91 < 7 |only if walking
Follow the path |goto 67.78,21.57 < 7 |only if walking
Follow the path up |goto 68.22,19.96 < 7 |only if walking
Follow the path up |goto 67.87,18.87 < 7 |only if walking
Run up the stairs |goto 67.51,18.06 < 5 |only if walking
Follow the path |goto 67.50,17.89 < 5 |only if walking
talk Huntmaster Vol'ka##123019
turnin WANTED: Ten'gor and Nol'ixwan##51091 |goto 67.50,17.62
step
Run down the stairs |goto 67.50,17.88 < 5 |only if walking
Follow the path |goto 67.49,18.05 < 5 |only if walking
Follow the road |goto 67.38,18.28 < 7 |only if walking
Follow the path |goto 66.94,18.23 < 7 |only if walking
Follow the path |goto Dazar'alor/0 51.26,88.56 < 7 |only if walking
Continue following the path |goto Dazar'alor/0 50.92,85.68 < 7 |only if walking
Continue following the path |goto Dazar'alor/0 48.40,83.43 < 7 |only if walking
Run down the stairs |goto Dazar'alor/0 44.08,81.75 < 5 |only if walking
Follow the path |goto Dazar'alor/0 43.43,81.74 < 5 |only if walking
Cross the bridge |goto Dazar'alor/0 42.59,81.74 < 7 |only if walking
Run up the stairs |goto Zuldazar/0 53.61,56.29 < 5 |only if walking
Follow the path |goto Zuldazar/0 53.22,56.29 < 5 |only if walking
Run up the stairs |goto Zuldazar/0 52.97,56.29 < 5 |only if walking
Follow the path |goto Zuldazar/0 52.74,56.29 < 5 |only if walking
Run up the stairs |goto Zuldazar/0 52.16,56.30 < 5 |only if walking
Follow the path |goto Zuldazar/0 51.96,56.30 < 5 |only if walking
Follow the road |goto Zuldazar/0 51.07,56.32 < 7 |only if walking
Continue following the road |goto Zuldazar/0 49.35,57.44 < 7 |only if walking
Run up the stairs |goto Zuldazar/0 47.87,60.03 < 5 |only if walking
Follow the path |goto Zuldazar/0 47.88,60.19 < 5 |only if walking
talk Zolani##127815
turnin A Port in Peril##49122 |goto 47.92,60.44
accept Wrath of the Zandalari##49144 |goto 47.92,60.44
step
talk Habutu##127814
accept No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Paku'ai Ja'nessa##127818
fpath Warport Rastari |goto 48.22,60.34
step
Follow the road |goto 47.97,59.79 < 10 |only if walking
Enter the tunnel |goto 47.38,59.70 < 7 |only if walking
Follow the path |goto 45.97,59.79 < 7 |only if walking
Follow the path |goto 45.54,60.09 < 7 |only if walking
Leave the tunnel |goto 45.49,61.58 < 7 |only if walking
Follow the road up |goto 44.48,64.77 < 7 |only if walking
Continue following the road |goto 43.26,66.26 < 7 |only if walking
Continue following the road |goto 43.11,66.79 < 7 |only if walking
Continue following the road |goto 42.80,68.92 < 7 |only if walking
talk Examiner Tae'shara Bloodwatcher##131582
accept The Bloodwatcher Legacy##47329 |goto 43.91,72.11
step
clicknpc Dirt Pile##131799+
Reveal the Fossil |q 47329/1 |goto 43.99,72.15
step
talk Apprentice Telemancer Astrandis##131580
turnin The Bloodwatcher Legacy##47329 |goto 43.91,72.14
accept Scrying for the Eye##47235 |goto 43.91,72.14
accept Archaeological Efficiency##50043 |goto 43.91,72.14
step
talk Examiner Tae'shara Bloodwatcher##131582
accept Xibalan Ecology##47228 |goto 43.91,72.11
step
Follow the path |goto 44.17,71.93 < 7 |only if walking
click Wanted: Dark Chronicler##287229
accept WANTED: Dark Chronicler##51087 |goto 44.31,72.17
step
talk Alitha Duskwing##124458
home Xibala |goto 44.61,71.76 |q 51539 |future
step
Follow the path |goto 44.62,71.94 < 7 |only if walking
talk Eliara Duskwing##123817
fpath Xibala |goto 44.84,72.25
stickystart "Collect_Xibalan_Fossil_Fragments"
stickystart "Slay_Xibalan_Predators"
step
Follow the path |goto 43.99,71.64 < 7 |only if walking
clicknpc Essence Collector##136173
Complete the Outer Ruins Scrying |q 47235/1 |goto 42.49,72.24
step
Run up the stairs |goto 43.00,72.23 < 5 |only if walking
Follow the path |goto 43.00,72.40 < 5 |only if walking
Follow the path |goto 43.06,73.69 < 5 |only if walking
clicknpc Essence Collector##136173
Complete the Inner Ruins Scrying |q 47235/2 |goto 42.82,73.90
step
label "Collect_Xibalan_Fossil_Fragments"
use the Sweeper Beacon##156596
|tip Use it near Dirt Piles on the ground around this area.
|tip They look like brown piles of dirt on the ground around this area.
Watch the dialogue
click Xibalan Fossil##280497+
|tip They look like piles of white bones on the ground around this area.
|tip They appear after you use the Sweeper Beacon next to the Dirt Piles.
collect 50 Xibalan Fossil Fragment##156597 |q 50043/1 |goto 42.14,73.84
step
label "Slay_Xibalan_Predators"
Kill Xibalan enemies around this area
Slay #8# Xibalan Predators |q 47228/1 |goto 42.14,73.84
step
Follow the path up |goto 42.11,74.23 < 7 |only if walking
Follow the path down |goto 41.91,75.52 < 7 |only if walking
clicknpc Essence Collector##136173
Complete "The Foot" Scrying |q 47235/3 |goto 41.37,75.40
step
Follow the path up |goto 42.02,75.88 < 7 |only if walking
Follow the path up |goto 41.92,76.97 < 7 |only if walking
Follow the path up |goto 42.25,77.38 < 7 |only if walking
Follow the path |goto 42.55,77.09 < 7 |only if walking
Enter the tunnel |goto 43.25,76.40 < 5 |walk
Follow the path down |goto 43.51,76.33 < 5 |walk
kill Dark Chronicler##136428 |q 51087/1 |goto 44.12,76.50
|tip Inside the tunnel.
step
Follow the path up |goto 43.68,76.35 < 5 |walk
Follow the path up |goto 43.47,76.33 < 5 |walk
Leave the tunnel |goto 43.25,76.38 < 5 |walk
Jump down here |goto 43.17,76.09 < 5 |only if walking
Jump down here |goto 43.48,75.43 < 5 |only if walking
Follow the path |goto 43.73,74.06 < 7 |only if walking
Follow the path down |goto 44.01,73.29 < 5 |only if walking
Follow the path |goto 43.90,72.77 < 7 |only if walking
talk Apprentice Telemancer Astrandis##131580
turnin Scrying for the Eye##47235 |goto 43.91,72.14
turnin Archaeological Efficiency##50043 |goto 43.91,72.14
accept A Nose for Magic##48317 |goto 43.91,72.14
step
talk Examiner Tae'shara Bloodwatcher##131582
turnin Xibalan Ecology##47228 |goto 43.91,72.11
turnin WANTED: Dark Chronicler##51087 |goto 43.91,72.11
step
Follow the path |goto 43.29,71.86 < 7 |only if walking
Follow the road |goto 42.49,72.33 < 7 |only if walking
Follow the path |goto 42.23,73.52 < 7 |only if walking
Follow the path up |goto 42.12,74.41 < 7 |only if walking
Follow the path up |goto 41.88,76.64 < 7 |only if walking
Follow the path |goto 41.20,76.89 < 7 |only if walking
talk Apprentice Telemancer Astrandis##131878
Tell him _"Let's begin."_
Speak to Astrandis in the Western Ruins |q 48317/1 |goto 41.02,77.14
step
clicknpc Essence Collector##136173
Place the First Scrying Vessel |q 48317/2 |goto 40.70,76.89
step
Kill the enemies that attack
Complete the First Scrying |q 48317/3 |goto 40.70,76.89
step
clicknpc Essence Collector##136173
Place the Second Scrying Vessel |q 48317/4 |goto 40.31,77.06
step
Kill the enemies that attack
Complete the Second Scrying |q 48317/5 |goto 40.31,77.06
step
clicknpc Essence Collector##136173
Place the Third Scrying Vessel |q 48317/6 |goto 39.92,77.06
step
Kill the enemies that attack
Complete the Third Scrying Vessel |q 48317/7 |goto 39.92,77.06
step
Watch the dialogue
talk Apprentice Telemancer Astrandis##131580
turnin A Nose for Magic##48317 |goto 40.03,76.53
accept A Dark (Iron) Tide##48399 |goto 40.03,76.53
accept Grand Theft Telemancy##48400 |goto 40.03,76.53
stickystart "Slay_Dark_Iron_Dwarves"
step
Follow the path down |goto 39.38,76.29 < 7 |only if walking
Follow the path |goto 38.99,76.04 < 7 |only if walking
Continue following the path |goto 38.69,73.85 < 7 |only if walking
Continue following the path |goto 38.85,73.05 < 7 |only if walking
kill Urda Direflame##132189 |q 48400/1 |goto 39.11,72.45
|tip She will appear on your minimap as a yellow dot.
step
clicknpc Telemancy Beacon##136179
Place the Telemancy Beacon |q 48400/2 |goto 39.10,72.45
step
label "Slay_Dark_Iron_Dwarves"
Kill enemies around this area
Slay #7# Dark Iron Dwarves |q 48399/1 |goto 38.92,72.72
step
talk Apprentice Telemancer Astrandis##131580
turnin A Dark (Iron) Tide##48399 |goto 44.42,72.11
turnin Grand Theft Telemancy##48400 |goto 44.42,72.11
step
Follow the path |goto 44.53,72.05 < 7 |only if walking
Follow the path |goto 47.80,60.39 < 3 |only if walking
Run up the stairs |goto 47.70,60.38 < 5 |only if walking
Follow the path |goto 47.32,60.39 < 5 |only if walking
talk Kaza'jin the Wavebinder##127837
accept Spirits' Belongings##49146 |goto 47.14,60.47
stickystart "Rally_Rastari_Defenders"
stickystart "Slay_Mogu_Invaders"
step
Run down the stairs |goto 47.17,60.56 < 5 |only if walking
Follow the path |goto 47.14,61.21 < 5 |only if walking
Follow the path |goto 46.81,61.63 < 5 |only if walking
click Grimoire of the Other Side##277886
collect Grimoire of the Other Side##153526 |q 49146/2 |goto 46.80,61.87
step
Run up the stairs |goto 46.45,61.71 < 5 |only if walking
Follow the path |goto 46.44,60.81 < 5 |only if walking
Follow the path |goto 46.34,60.60 < 7 |only if walking
Run up the stairs |goto 45.67,60.46 < 5 |only if walking
click Reclaimed Bijous##277444
collect Reclaimed Bijous##153525 |q 49146/1 |goto 45.58,60.35
step
Follow the path |goto 45.81,61.40 < 7 |only if walking
click Venerated Remains##277447
collect Venerated Remains##153527 |q 49146/3 |goto 45.81,62.46
step
label "Rally_Rastari_Defenders"
click Crude Barricade+
|tip They look like wooden barriers in the entrances of buildings around this area.
use the Rastari Skull Whistle##153524
|tip Use it near Rastari Defenders around this area.
|tip They look like friendly Trolls standing on the ground around this area.
Rally #12# Rastari Defenders |q 49145/1 |goto 45.78,60.90
step
label "Slay_Mogu_Invaders"
Kill enemies around this area
Slay #8# Mogu Invaders |q 49144/1 |goto 45.78,60.90
step
Follow the path |goto 45.88,60.63 < 7 |only if walking
Run down the stairs |goto 46.84,60.39 < 5 |only if walking
Follow the path |goto 47.05,60.38 < 5 |only if walking
Run down the stairs |goto 47.32,60.37 < 5 |only if walking
Follow the path |goto 47.70,60.38 < 5 |only if walking
Follow the path |goto 47.81,60.38 < 3 |only if walking
talk Habutu##127814
turnin No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Zolani##127815
turnin Wrath of the Zandalari##49144 |goto 47.92,60.44
step
talk Kaza'jin the Wavebinder##127837
turnin Spirits' Belongings##49146 |goto 48.08,60.38
accept Embrace the Voodoo##49149 |goto 48.08,60.38
step
talk Zolani##127815
accept Crumbling Apart##49148 |goto 47.92,60.44
step
talk Habutu##127814
accept Show of Strength##49147 |goto 47.87,60.44
stickystart "Kill_Stormbound_Conquerors"
step
Follow the path |goto 47.88,60.66 < 3 |only if walking
Run down the stairs |goto 47.86,60.83 < 5 |only if walking
Follow the path |goto 47.80,61.84 < 5 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.22,61.86 |count 1
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.97,63.07 |count 2
step
Follow the path |goto 46.80,63.19 < 7 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 46.71,63.66 |count 3
step
Follow the path |goto 47.38,64.69 < 7 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.45,65.14 |count 4
step
kill Jao-Ti the Thunderous##128474 |q 49147/1 |goto 48.12,64.49
step
Follow the path |goto 47.94,65.17 < 7 |only if walking
Run up the stairs |goto 47.88,66.66 < 5 |only if walking
Follow the path |goto 47.86,67.25 < 5 |only if walking
Follow the path |goto 47.68,67.45 < 5 |only if walking
Run up the stairs |goto 47.30,67.02 < 5 |only if walking
Follow the path |goto 47.37,66.92 < 5 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.48,66.76 |count 5
step
Run down the stairs |goto 47.37,66.94 < 5 |only if walking
Follow the path |goto 47.26,67.04 < 5 |only if walking
Run up the stairs |goto 46.43,67.10 < 5 |only if walking
Follow the path |goto 46.16,66.66 < 5 |only if walking
Run up the stairs |goto 45.92,66.42 < 5 |only if walking
kill Subjugator Zheng##128472 |q 49147/2 |goto 45.83,66.52
step
Run down the stairs |goto 46.15,66.67 < 7 |only if walking
Follow the path |goto 46.48,67.09 < 7 |c |q 49149
step
label "Kill_Stormbound_Conquerors"
kill Kao-Tien Stormbinder##127778+
collect Condensed Thunder##153529+ |n
|tip These will give you a "Thundering Blast" ability for a short time.
|tip Use the "Thundering Blast" ability on Stormbound Conquerors and Inert Conquerors around this area.
|tip It appears as a button on the screen.
kill 10 Stormbound Conqueror##128447 |q 49148/1 |goto 46.99,67.08
|tip Stand in the blue circles on the ground that appear while fighting them.
|tip These will help you kill them faster.
step
Follow the path |goto 47.06,67.12 < 10 |only if walking
Follow the path |goto 47.59,67.44 < 7 |only if walking
Run down the stairs |goto 47.86,67.28 < 5 |only if walking
Follow the path |goto 47.88,66.67 < 5 |only if walking
Run down the stairs |goto 48.22,66.30 < 5 |only if walking
Follow the path |goto 48.69,66.24 < 5 |only if walking
Continue following the path |goto 48.75,64.88 < 7 |only if walking
Continue following the path |goto 48.89,64.59 < 7 |only if walking
talk Kaza'jin the Wavebinder##127837
turnin Embrace the Voodoo##49149 |goto 49.59,64.48
turnin Crumbling Apart##49148 |goto 49.59,64.48
turnin Show of Strength##49147 |goto 49.59,64.48
accept Thunder's Fall##49309 |goto 49.59,64.48
step
Run up the ramp |goto 50.18,64.65 < 5 |only if walking
Follow the path |goto 50.19,64.95 < 5 |only if walking
kill Warlord Kao##127766 |q 49309/1 |goto 50.20,65.37
step
Run down the ramp |goto 50.18,64.95 < 5 |only if walking
Follow the path |goto 50.14,64.62 < 5 |only if walking
talk Kaza'jin the Wavebinder##127837
turnin Thunder's Fall##49309 |goto 49.59,64.48
accept The Prophet's Ploy##49310 |goto 49.59,64.48
step
clicknpc Scarbeak##133960
Ride Scarbeak to King Rastakhan's Throne |q 49310/1 |goto 49.51,64.35
step
Watch the dialogue
Return to The Golden Throne |goto Dazar'alor/0 49.92,39.65 < 7 |c |notravel |q 49310
step
Enter the building |goto Dazar'alor/0 49.94,42.14 < 5 |walk
Follow the path |goto Dazar'alor/1 47.67,27.92 < 5 |walk
Run up the stairs |goto Dazar'alor/1 42.19,46.30 < 5 |walk
Follow the path |goto Dazar'alor/2 41.19,56.68 < 3 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin The Prophet's Ploy##49310 |goto Dazar'alor/2 41.45,72.29
accept Terrace of the Chosen##47509 |goto Dazar'alor/2 41.45,72.29
accept The Wounded King##51101 |goto Dazar'alor/2 41.45,72.29
step
Run down the stairs |goto 41.57,82.58 < 5 |walk
Follow the path |goto Dazar'alor/1 46.08,82.50 < 5 |walk
Run up the stairs |goto Dazar'alor/1 51.95,82.33 < 5 |walk
Follow the path |goto Dazar'alor/2 56.41,82.41 < 5 |walk
talk Nok'tal##130932
|tip Inside the building.
accept Kaja'mite? Kaja'must!##49917 |goto Dazar'alor/2 67.20,83.81
step
Run down the stairs |goto 56.45,56.74 < 3 |walk
Follow the path |goto Dazar'alor/1 55.07,46.10 < 5 |walk
Follow the path |goto Dazar'alor/1 48.85,27.50 < 5 |walk
Leave the building |goto Dazar'alor/0 49.93,42.13 < 5 |walk
Follow the path |goto Dazar'alor/0 50.17,41.64 < 7 |only if walking
Follow the road |goto Zuldazar/0 48.20,59.67 < 7 |only if walking
Continue following the road |goto Zuldazar/0 49.20,57.66 < 7 |only if walking
Continue following the road |goto Zuldazar/0 50.21,57.29 < 7 |only if walking
Follow the road up |goto Zuldazar/0 51.14,56.00 < 7 |only if walking
Continue following the road |goto Zuldazar/0 52.57,55.00 < 7 |only if walking
Continue following the road |goto Zuldazar/0 52.56,54.40 < 7 |only if walking
Continue following the road |goto Zuldazar/0 51.83,53.84 < 7 |only if walking
Follow the road up |goto Zuldazar/0 52.14,52.45 < 7 |only if walking
Continue following the road |goto Zuldazar/0 52.76,51.28 < 7 |only if walking
Continue following the road |goto Zuldazar/0 52.94,50.68 < 7 |only if walking
Continue following the road |goto Zuldazar/0 52.68,49.35 < 7 |only if walking
Continue following the road |goto Zuldazar/0 52.00,49.62 < 7 |only if walking
Follow the path |goto Zuldazar/0 51.57,49.77 < 7 |only if walking
talk Bently Greaseflare##132267
turnin Kaja'mite? Kaja'must!##49917 |goto Zuldazar/0 51.60,50.57
accept Kaja'mite Ore Bust##49919 |goto Zuldazar/0 51.60,50.57
accept King Da'ka##49922 |goto Zuldazar/0 51.60,50.57
step
Run up the stairs |goto 51.39,50.68 < 5 |only if walking
Follow the path |goto 51.36,50.81 < 5 |only if walking
Enter the building |goto 51.32,50.99 < 5 |walk
talk Shado##137331
|tip Inside the building.
home Village in the Vines |goto 51.28,51.24 |q 47738 |future
step
Leave the building |goto 51.33,51.00 < 5 |walk
Follow the path |goto 51.40,50.94 < 5 |only if walking
Jump down here |goto 51.53,50.99 < 5 |only if walking
Jump down here |goto 52.01,51.24 < 5 |only if walking
Follow the road down |goto 52.37,51.99 < 7 |only if walking
Continue following the road |goto 52.13,52.49 < 7 |only if walking
accept Gorilla Gorge##49918 |goto 51.64,53.69
|tip You will automatically accept this quest.
stickystart "Slay_Dakani_Gorillas"
step
Follow the path |goto 51.31,53.89 < 7 |only if walking
Continue following the path |goto 50.92,53.90 < 7 |only if walking
talk Tsunga##130947
accept Gorilla Warfare##49920 |goto 50.18,54.57
stickystart "Scan_Kajamite_Steam_Vents"
stickystart "Release_Peace_Loving_Gorillas"
step
label "Scan_Kajamite_Steam_Vents"
Follow the path |goto 49.79,54.48 < 7 |only if walking
click Kaja'mite Steam Vent##279389+
|tip They look like steam rising out of piles of grey rocks on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Scan #5# Kaja'mite Steam Vents |q 49919/1 |goto 49.15,54.07
step
label "Release_Peace_Loving_Gorillas"
click Cages
|tip They look like brown stick cages on the ground around this area.
Release #6# Peace-Loving Gorillas |q 49920/1 |goto 49.15,54.07
step
label "Slay_Dakani_Gorillas"
Kill enemies around this area
Slay Da'kani Gorillas |q 49918/1 |goto 49.15,54.07
step
Follow the path up |goto 48.67,52.59 < 7 |only if walking
Follow the path |goto 48.03,51.62 < 7 |only if walking
Follow the path |goto 47.75,51.84 < 7 |only if walking
talk Tsunga##131258
turnin Gorilla Warfare##49920 |goto 47.42,52.43
step
Enter the cave |goto 47.15,51.59 < 5 |walk
Follow the path |goto 47.02,51.40 < 5 |walk
Follow the path |goto 46.90,50.86 < 5 |walk
kill King Da'ka##130948 |q 49922/1 |goto 46.73,50.47
|tip Inside the cave.
step
Leave the building |goto 51.32,50.99 < 3 |walk
talk Bently Greaseflare##132617
turnin Kaja'mite Ore Bust##49919 |goto 51.60,50.57
turnin King Da'ka##49922 |goto 51.60,50.57
step
Follow the road up |goto 51.52,49.93 < 7 |only if walking
Continue following the road |goto 51.58,47.97 < 7 |only if walking
Continue following the road |goto 52.15,47.31 < 7 |only if walking
Continue following the road |goto 52.29,46.68 < 7 |only if walking
click Wanted: Dangerous Beasts##287189
accept WANTED: Prime Thumpknuckle##51072 |goto 51.62,45.45
accept WANTED: Sabertusk Empress##51071 |goto 51.62,45.45
step
Follow the path up |goto 52.14,45.55 < 7 |only if walking
kill Prime Thumpknuckle##136334 |q 51072/1 |goto 52.68,45.00
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
|tip You may need help with this.
step
Follow the path down |goto 52.17,45.43 < 7 |only if walking
Follow the road down |goto 52.04,45.91 < 7 |only if walking
kill Sabertusk Empress##129323 |q 51071/1 |goto 52.41,47.76
|tip You may need help with this.
step
Follow the road |goto 51.62,47.83 < 7 |only if walking
Follow the path |goto 51.55,49.92 < 7 |only if walking
talk Shaz'ki##131187
turnin WANTED: Prime Thumpknuckle##51072 |goto 51.65,50.53
turnin WANTED: Sabertusk Empress##51071 |goto 51.65,50.53
step
Follow the road up |goto 51.55,49.94 < 7 |only if walking
Continue following the road |goto 51.65,47.94 < 7 |only if walking
Continue following the road |goto 52.19,47.24 < 7 |only if walking
Continue following the road |goto 52.28,46.67 < 7 |only if walking
Follow the road up |goto 51.83,45.46 < 7 |only if walking
Follow the road up |goto 51.94,44.91 < 7 |only if walking
Follow the road up |goto 52.16,43.94 < 7 |only if walking
Continue following the road |goto 51.58,43.87 < 7 |only if walking
Continue following the road |goto 51.06,44.37 < 7 |only if walking
Continue following the road |goto 50.81,45.62 < 7 |only if walking
Follow the road up |goto 50.68,46.27 < 7 |only if walking
Follow the road up |goto 50.37,46.35 < 7 |only if walking
Continue following the road |goto 49.90,45.39 < 7 |only if walking
Continue following the road |goto 49.36,45.22 < 7 |only if walking
Continue following the road |goto 49.18,44.86 < 7 |only if walking
Follow the path |goto 49.39,44.54 < |only if walking
talk Kaza the Skyblade##129483
fpath Temple of the Prophet |goto 49.81,44.59
step
Run up the stairs |goto Dazar'alor/0 51.75,19.08 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.41,20.97 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 50.00,21.33 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.32,21.47 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 48.68,22.07 < 5 |only if walking
Follow the path |goto Dazar'alor/0 47.77,23.28 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 47.29,23.23 < 5 |only if walking
Follow the path |goto Dazar'alor/0 46.74,22.46 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 46.30,22.56 < 5 |only if walking
Follow the path |goto Dazar'alor/0 45.39,23.81 < 5 |only if walking
Follow the path |goto Dazar'alor/0 43.99,23.26 < 7 |only if walking
Continue following the path |goto Dazar'alor/0 43.10,23.38 < 7 |only if walking
Run up the stairs |goto Dazar'alor/0 42.62,22.48 < 5 |only if walking
talk Kaza'jin the Wavebinder##124629
turnin Terrace of the Chosen##47509 |goto Dazar'alor/0 42.64,21.42
accept Zanchuli Traitors##47897 |goto Dazar'alor/0 42.64,21.42
accept Rescuing the Taken##47915 |goto Dazar'alor/0 42.64,21.42
stickystart "Slay_Zanchuli_Traitors"
step
Run up the stairs |goto 42.08,20.72 < 5 |only if walking
Follow the path |goto 41.62,19.97 < 5 |only if walking
Run up the stairs |goto 41.48,19.35 < 5 |only if walking
Follow the path |goto 41.44,18.51 < 5 |only if walking
Follow the path |goto 41.88,17.87 < 7 |only if walking
Run up the stairs |goto 43.25,18.06 < 5 |only if walking
kill Hexmother Kala##133297
collect Fetish of Loti##156923 |q 47915/1 |goto 43.52,17.68
step
label "Slay_Zanchuli_Traitors"
Kill enemies around this area
Slay #10# Zanchuli Traitors |q 47897/1 |goto 42.25,17.43
step
talk Wardruid Loti##123335
turnin Zanchuli Traitors##47897 |goto 39.29,13.84
turnin Rescuing the Taken##47915 |goto 39.29,13.84
step
_Next to you:_
talk Wardruid Loti##123335
accept Raal##47518
accept Walls Have Ears##47520
stickystart "Slay_Eyes_and_Ears_of_Yazma"
step
Enter the building |goto 41.10,11.05 < 5 |walk
Run up the stairs |goto Dazar'alor/4 45.67,39.19 < 5 |walk
Follow the path |goto Dazar'alor/4 38.76,28.38 < 5 |walk
Follow the path |goto Dazar'alor/4 38.41,23.48 < 5 |walk
Run up the stairs |goto Dazar'alor/4 45.54,17.40 < 5 |walk
Follow the path |goto Dazar'alor/3 39.28,27.61 < 5 |walk
Continue following the path |goto Dazar'alor/3 44.15,35.07 < 5 |walk
Continue following the path |goto Dazar'alor/3 64.50,66.39 < 3 |walk
Continue following the path |goto Dazar'alor/3 67.03,68.76 < 3 |walk
Continue following the path |goto Dazar'alor/3 70.52,67.57 < 3 |walk
Continue following the path |goto Dazar'alor/3 79.10,83.72 < 3 |walk
Leave the building |goto Dazar'alor/3 77.39,87.50 < 3 |walk
Follow the path |goto Dazar'alor/0 44.48,14.68 < 7 |only if walking
Follow the path |goto Dazar'alor/0 44.56,16.18 < 7 |only if walking
Follow the path |goto Dazar'alor/0 45.79,16.44 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 46.02,15.89 < 5 |only if walking
Follow the path |goto Dazar'alor/0 46.03,13.32 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 46.16,11.58 < 5 |only if walking
Follow the path |goto Dazar'alor/0 44.70,9.13 < 5 |only if walking
kill Crazzak the Heretic##124652 |q 47518/1 |goto 43.46,7.06
step
talk Hexlord Raal##133324
turnin Raal##47518 |goto 43.62,7.35
step
label "Slay_Eyes_and_Ears_of_Yazma"
Kill Yazma enemies around this area
|tip Inside and outside the building.
Slay #8# Eyes and Ears of Yazma |q 47520/1 |goto 43.46,7.06
step
_Next to you:_
talk Wardruid Loti
turnin Walls Have Ears##47520
step
talk Hexlord Raal##133324
accept Midnight in the Garden of the Loa##47521 |goto 42.55,9.49
step
clicknpc Ata the Winglord##127414
Mount Ata the Winglord |invehicle |goto 42.48,10.05 |q 47521
step
Ride Ata the Winglord |q 47521/1 |goto Zuldazar/0 50.73,29.57 |notravel
step
Watch the dialogue
talk Wardruid Loti##122760
turnin Midnight in the Garden of the Loa##47521 |goto 50.70,29.65
accept Rituals of Heresy##47527 |goto 50.70,29.65
|tip You will automatically accept this quest.
accept The Hunter##47522 |goto 50.70,29.65
step
talk Hexlord Raal##133653
accept The Ancient One##47963 |goto 50.69,29.57
stickystart "Disrupt_the_Blood_Rituals"
step
Cross the bridge |goto 49.74,30.08 < 7 |only if walking
Follow the path |goto 49.52,30.40 < 7 |only if walking
Follow the path |goto 49.35,31.25 < 7 |only if walking
Follow the path up |goto 49.05,31.60 < 7 |only if walking
Rescue Gonk |q 47522/1 |goto 48.63,31.86
step
talk Gonk##124827
turnin The Hunter##47522 |goto 48.39,32.12
step
Follow the path |goto 48.66,31.83 < 7 |only if walking
Continue following the path |goto 49.37,31.32 < 7 |only if walking
Cross the bridge |goto 49.92,31.33 < 7 |only if walking
Follow the path |goto 50.25,31.29 < 5 |only if walking
Run up the stairs |goto 50.51,31.75 < 5 |only if walking
Follow the path |goto 50.62,31.92 < 5 |only if walking
Follow the path |goto 50.85,32.19 < 7 |only if walking
Run up the stairs |goto 51.04,32.11 < 5 |only if walking
Follow the path |goto 51.16,31.98 < 5 |only if walking
Run up the stairs |goto 51.42,32.07 < 5 |only if walking
Follow the path |goto 51.51,32.19 < 5 |only if walking
kill Shadra Betrayer##133735+
|tip Kill all of the ones channeling on Pa'ku.
Rescue Pa'ku |q 47963/1 |goto 52.10,32.81
step
talk Pa'ku##124756
turnin The Ancient One##47963 |goto 52.10,32.81
step
_Next to you:_
talk Acolyte Mali
accept Mistress of Lies##47528
step
Follow the path |goto 51.79,32.48 < 7 |only if walking
Run down the stairs |goto 51.52,32.19 < 5 |only if walking
Follow the path |goto 51.41,32.09 < 5 |only if walking
Run down the stairs |goto 51.18,31.95 < 5 |only if walking
Follow the path |goto 51.03,32.11 < 5 |only if walking
Follow the path |goto 50.88,32.21 < 7 |only if walking
Run down the stairs |goto 50.61,31.92 < 5 |only if walking
Follow the path |goto 50.52,31.74 < 5 |c |q 47528
step
label "Disrupt_the_Blood_Rituals"
Kill Atal'Shadra enemies around this area
click Voodoo Pile##272401+
|tip They look like small piles of skulls on the ground around this area.
Disrupt the Blood Rituals |q 47527/1 |goto 50.35,31.06
step
Cross the bridge |goto 49.92,29.49 < 7 |only if walking
Follow the path |goto 49.80,29.05 < 7 |only if walking
Follow the path up |goto 49.42,28.57 < 7 |only if walking
Follow the path up |goto 49.14,28.55 < 7 |only if walking
Follow the path |goto 48.82,28.85 < 7 |only if walking
Run up the stairs |goto 48.46,28.95 < 5 |only if walking
Follow the path |goto 48.29,28.96 < 5 |only if walking
Enter the building |goto 47.72,28.87 < 5 |walk
Follow the path |goto 47.34,28.23 < 5 |walk
kill Vol'kaal##122866
|tip Inside the building.
Defeat Vol'kaal |q 47528/1 |goto 47.09,27.85
step
Watch the dialogue
Defeat Yazma |q 47528/2 |goto 47.21,27.72
step
Follow the path up |goto 47.34,28.21 < 5 |walk
Leave the building |goto 47.71,28.87 < 3 |walk
Follow the path |goto 47.93,28.92 < 7 |only if walking
Run up the stairs |goto 48.05,28.67 < 5 |only if walking
Follow the path |goto 48.06,28.43 < 5 |only if walking
Follow the path |goto 48.30,27.52 < 7 |only if walking
talk Wardruid Loti##122760
turnin Mistress of Lies##47528 |goto 48.58,26.78
step
talk Paku'ai Rip'nata##130787
fpath Garden of the Loa |goto 49.72,26.27
step
Follow the path |goto 66.83,18.19 < 7 |only if walking
Follow the path down |goto 67.56,18.43 < 7 |only if walking
Follow the path |goto 68.16,19.50 < 7 |only if walking
Continue following the path |goto 68.09,20.73 < 7 |only if walking
Continue following the path |goto 67.87,21.65 < 7 |only if walking
Continue following the path |goto 68.54,23.09 < 7 |only if walking
Follow the road |goto 69.01,23.59 < 7 |only if walking
Follow the road |goto 70.64,22.00 < 7 |only if walking
Continue following the road |goto 72.08,20.99 < |only if walking
Continue following the road |goto 73.39,20.89 < 7 |only if walking
Continue following the road |goto 75.56,20.23 < 7 |only if walking
Follow the path |goto 76.64,19.26 < 7 |only if walking
Follow the path |goto 77.24,17.70 < 7 |only if walking
Continue following the path |goto 77.34,16.52 < 7 |only if walking
Run up the stairs |goto 76.79,16.19 < 5 |only if walking
talk Zolani##124083
turnin The Wounded King##51101 |goto 76.69,16.26
accept In Bwonsamdi's Shadow##51680 |goto 76.69,16.26
step
Enter the building |goto 76.59,16.11 < 5 |walk
talk Jamil Abul'housin##132637
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jamil Abul'housin |q 51680/1 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jol the Ancient |q 51680/2 |goto 76.44,16.16
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin In Bwonsamdi's Shadow##51680 |goto 76.44,16.17
accept Ancient Tortollan Remedies##47735 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Scent of Vengeance##47739 |goto 76.47,16.00
step
Leave the building |goto 76.59,16.11 < 3 |walk
talk Zolani##124083
accept No Safe Haven##50235 |goto 76.69,16.26
step
Follow the path |goto 76.92,16.04 < 7 |only if walking
Follow the path |goto 77.05,15.59 < 7 |only if walking
talk Paku'ai Jasi##124456
fpath Zeb'ahari |goto 77.36,15.35
stickystart "Rescue_Zebahari_Villagers"
stickystart "Collect_Traitors_Bloods"
step
Jump down here |goto 77.37,15.18 < 5 |only if walking
Follow the path |goto 78.59,14.14 < 7 |only if walking
clicknpc Laelani##132681
collect Brutosaur Scale##156824 |q 47735/2 |goto 78.59,13.13
step
Follow the path |goto 78.67,13.90 < 7 |only if walking
Continue following the path |goto 78.42,15.03 < 7 |only if walking
talk Zeb'ahari Villager##138520
accept The Loa-Speaker's Betrayal##47733 |goto 79.35,16.77
step
clicknpc Spiny Puffer##133162
collect Envenomed Puffer Spine##156809 |q 47735/1 |goto 79.79,16.53
step
label "Rescue_Zebahari_Villagers"
click Zeb'ahari NPC's
|tip They look like friendly blue trolls on the ground and fighting enemies around this area.
Rescue #12# Zeb'ahari Villagers |q 50235/1 |goto 80.19,14.76
step
Follow the path up |goto 79.53,16.23 < 7 |only if walking
Continue following the path |goto 79.00,17.25 < 7 |only if walking
Continue following the path |goto 78.78,18.55 < 10 |only if walking
kill Loa-Speaker Kihara##132979 |q 47733/1 |goto 78.53,20.28
step
kill Ol' Bubbly##132650
collect Aged Crab Foam##156827 |q 47735/3 |goto 79.55,21.62
step
label "Collect_Traitors_Bloods"
Kill enemies around this area
collect 12 Traitor's Blood##156834 |q 47739/1 |goto 78.60,19.47
step
Follow the path |goto 78.28,19.16 < 10 |only if walking
Follow the path up |goto 77.83,18.56 < 7 |only if walking
Follow the path |goto 77.22,17.84 < 7 |only if walking
Follow the path up |goto 77.35,16.53 < 7 |only if walking
Run up the stairs |goto 76.78,16.19 < 5 |only if walking
talk Zolani##124083
turnin The Loa-Speaker's Betrayal##47733 |goto 76.69,16.26
turnin No Safe Haven##50235 |goto 76.69,16.26
step
Enter the building |goto 76.59,16.10 < 5 |walk
talk Jamil Abul'housin##132637
|tip Inside the building.
turnin The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin Ancient Tortollan Remedies##47735 |goto 76.44,16.16
accept Mending Body and Soul##51677 |goto 76.44,16.16
step
talk Jol the Ancient##124063
Tell him _"I am ready, Jol."_
Speak to Jol |q 51677/1 |goto 76.44,16.16
step
Watch the dialogue
click Astringent Spices
|tip Inside the building.
collect Astringent Spices##160566 |goto 76.56,15.95 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Astringent Spices>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 18
step
Watch the dialogue
click Sea Urchin Brine
|tip Inside the building.
collect Sea Urchin Brine##160567 |goto 76.46,16.25 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Sea Urchin Brine>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 36
step
Watch the dialogue
click Jol's Preserved Notes
|tip Inside the building.
collect Ancient Tortollan Scroll##160568 |goto 76.27,16.01 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Ancient Tortollan Scroll>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 54
step
Watch the dialogue
click Odoriferous Stew
|tip Inside the building.
Assist Jol |q 51677/2 |goto 76.49,15.93 |count 72
step
Watch the dialogue
click Clotting Powder
|tip Inside the building.
collect Clotting Powder##160569 |goto 76.36,16.16 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Clotting Powder>_
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 90
step
Watch the dialogue
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 100
step
talk Jol the Ancient##138598
|tip Inside the building.
turnin Mending Body and Soul##51677 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Will of the Loa##47738 |goto 76.47,16.00
step
Leave the building |goto 76.60,16.11 < 3 |walk
Follow the path |goto 76.97,15.81 < 7 |only if walking
Jump down here |goto 77.37,15.19 < 5 |only if walking
Follow the path |goto 77.40,13.53 < 7 |only if walking
click Idol of Rezan##281024
Place the Idol of Rezan |q 47738/1 |goto 76.85,13.23
step
Watch the dialogue
talk Rezan##133068
Tell him _"Rastakhan is injured and will not wake. We need your help."_
Speak to Rezan |q 47738/2 |goto 77.12,13.24
step
Watch the dialogue
clicknpc King Rastakhan##133107
Retrieve Rastakhan's Soul |q 47738/3 |goto 76.89,13.23
step
Follow the path |goto 76.53,13.66 < 7 |only if walking
Continue following the path |goto 76.52,14.32 < 7 |only if walking
Continue following the path |goto 76.96,15.48 < 7 |only if walking
Continue following the path |goto 76.94,15.73 < 7 |only if walking
Run up the stairs |goto 76.79,16.14 < 5 |only if walking
Follow the path |goto 76.70,16.14 < 5 |only if walking
Enter the building |goto 76.59,16.11 < 5 |walk
clicknpc King Rastakhan##132631
|tip Inside the building.
Restore Rastakhan's Soul to His Body |q 47738/4 |goto 76.46,16.07
step
Leave the building |goto 76.58,16.10 < 3 |walk
Watch the dialogue
talk King Rastakhan##124062
turnin The Will of the Loa##47738 |goto 76.66,16.13
accept Zul's Mutiny##47742 |goto 76.66,16.13
accept Rastakhan's Might##51678 |goto 76.66,16.13
step
talk Zolani##124083
accept A Strange Port of Call##51679 |goto 76.65,16.18
step
Enter the building |goto 76.59,16.10 < 5 |walk
talk Jol the Ancient##124063
|tip Inside the building.
home Zeb'ahari Inn |goto 76.42,16.08
stickystart "Slay_Mutinous_Zandalaris"
step
Leave the building |goto 76.59,16.10 < 3 |walk
Run down the stairs |goto 76.70,16.14 < 5 |only if walking
Follow the path down |goto 77.16,16.27 < 7 |only if walking
Follow the path |goto 78.03,16.23 < 7 |only if walking
Continue following the path |goto 78.30,16.39 < 7 |only if walking
click Rope |goto 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 51678
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 51678
step
Run up the stairs |goto 80.99,20.34 < 3 |only if walking
Run up the stairs |goto 81.04,20.12 < 3 |only if walking
Run up the stairs |goto 81.22,20.12 < 3 |only if walking
Follow the path |goto 81.28,19.74 < 5 |only if walking
kill Windcaller Ula'jan##133140
|tip At the top of the ship.
collect Skull of Windcaller Ula'jan##156861 |q 51678/1 |goto 81.30,19.59
step
Run down the stairs |goto 81.29,19.75 < 3 |only if walking
Follow the path |goto 81.23,20.14 < 3 |only if walking
Run down the stairs |goto 81.29,20.18 < 3 |only if walking
Run down the stairs |goto 81.38,20.30 < 3 |only if walking
Follow the path |goto 81.34,20.50 < 5 |c |q 51679
step
Follow the path |goto 81.29,20.33 < 3 |walk
Follow the path |goto 81.31,20.05 < 5 |walk
Follow the path |goto 81.26,19.87 < 3 |walk
click Temple of Rezan Map##290996
|tip Inside the ship.
Search the Navigation Chamber |q 51679/1 |goto 81.27,19.74
step
Follow the path |goto 81.27,19.87 < 3 |walk
Follow the path |goto 81.16,19.98 < 5 |walk
Run down the stairs |goto 81.21,20.14 < 5 |c |q 51679
step
Follow the path |goto Zuldazar/1 53.80,26.66 < 5 |walk
Run down the stairs |goto Zuldazar/1 55.05,30.01 < 3 |walk
Follow the path |goto Zuldazar/1 53.76,38.95 < 3 |walk
Follow the path |goto Zuldazar/1 55.71,44.74 < 3 |walk
|tip Downstairs one level inside the ship.
Search the Hold |q 51679/2 |goto Zuldazar/1 52.51,77.91
step
Run down the stairs |goto Zuldazar/1 46.03,75.95 < 3 |walk
Follow the path |goto Zuldazar/2 43.75,80.81 < 3 |walk
Run down the stairs |goto Zuldazar/2 42.03,77.40 < 3 |walk
Follow the path |goto Zuldazar/2 43.01,72.32 < 3 |walk
Follow the path |goto Zuldazar/2 47.64,60.52 < 5 |walk
clicknpc Chronicler To'kini##138728
|tip Downstairs two levels inside the ship.
Search the Crew Quarters |q 51679/3 |goto Zuldazar/2 47.39,44.05
step
label "Slay_Mutinous_Zandalaris"
Kill enemies around this area
Slay #10# Mutinous Zandalari |q 47742/1 |goto 49.68,44.95
step
Leave the building |goto Zuldazar/0 76.59,16.10 < 3 |walk
talk King Rastakhan##124062
turnin Zul's Mutiny##47742 |goto Zuldazar/0 76.66,16.13
turnin Rastakhan's Might##51678 |goto Zuldazar/0 76.66,16.13
turnin A Strange Port of Call##51679 |goto Zuldazar/0 76.66,16.13
accept The Temple of Rezan##47737 |goto Zuldazar/0 76.66,16.13
step
Follow the path |goto 77.08,16.32 < 7 |only if walking
Follow the path up |goto 77.41,16.65 < 7 |only if walking
Continue up the path |goto 77.24,17.75 < 7 |only if walking
Continue up the path |goto 76.65,19.28 < 7 |only if walking
Continue up the path |goto 75.68,20.19 < 7 |only if walking
Follow the road |goto 73.33,20.91 < 7 |only if walking
talk King Rastakhan##124655
turnin The Temple of Rezan##47737 |goto 72.03,21.03
accept House of the King##47740 |goto 72.03,21.03
step
talk Zolani##124656
accept Heads Will Roll##47736 |goto 72.09,21.20
stickystart "Collect_Traitorous_Zandalari_Heads"
step
Follow the road |goto 72.02,21.96 < 7 |only if walking
Run up the stairs |goto 71.99,23.16 < 5 |only if walking
accept Occupation Hazard##47797 |goto 71.98,23.76
|tip You will automatically accept this quest.
stickystart "Liberate_the_Temple_of_Rezan"
step
Follow the path |goto 71.98,23.76 < 5 |only if walking
Follow the path |goto 72.08,23.92 < 3 |only if walking
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Hunter |q 47740/1 |goto 72.16,23.80
step
Run up the stairs |goto 72.17,25.01 < 5 |only if walking
Follow the path |goto 72.18,25.58 < 5 |only if walking
Follow the road |goto 72.31,26.01 < 7 |only if walking
Follow the road |goto 72.94,26.10 < 7 |only if walking
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Conqueror |q 47740/2 |goto 73.68,25.76
step
Run down the stairs |goto 73.33,24.76 < 5 |only if walking
Follow the path |goto 73.04,24.25 < 5 |only if walking
Follow the path |goto 73.26,23.78 < 10 |only if walking
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the King |q 47740/3 |goto 73.82,22.94
step
label "Collect_Traitorous_Zandalari_Heads"
Kill enemies around this area
|tip Kao-Tien enemies will not count for this quest goal.
collect 12 Traitorous Zandalari Head##151384 |q 47736/1 |goto 73.61,23.26
step
label "Liberate_the_Temple_of_Rezan"
Kill Kao-Tien enemies around this area
clicknpc Priest of Rezan##124249+
|tip They look like groups of blue trolls standing or kneeling on the ground around this area.
click Training Gate##272388+
|tip They look like wooden barriers containing tyrannosaurus rexes on the ground around this area.
Liberate the Temple of Rezan |q 47797/1 |goto 72.00,23.76 |goto 73.61,23.26
step
Run up the stairs |goto 73.05,24.32 < 5 |only if walking
Follow the path |goto 73.33,24.76 < 5 |only if walking
Follow the path |goto 73.54,24.94 < 7 |only if walking
Run up the stairs |goto 74.34,24.93 < 5 |only if walking
Follow the path |goto 74.71,24.94 < 5 |only if walking
talk Zolani##124656
turnin Heads Will Roll##47736 |goto 74.85,24.90
step
talk King Rastakhan##124655
turnin House of the King##47740 |goto 74.87,24.94
accept Partners in Heresy##47734 |goto 74.87,24.94
step
Run up the stairs |goto 75.16,23.47 < 5 |only if walking
Follow the path |goto 75.17,23.33 < 5 |only if walking
kill Darkweaver Ji'tan##124085 |q 47734/1 |goto 75.16,23.16
step
Run down the stairs |goto 75.17,23.33 < 5 |only if walking
Follow the path |goto 75.17,23.48 < 5 |only if walking
Run up the stairs |goto 75.13,26.10 < 5 |only if walking
Enter the building |goto 75.13,26.32 < 3 |walk
kill Soulrender Gao'tan##124088 |q 47734/2 |goto 75.12,26.56
|tip Inside the building.
step
Follow the path |goto 75.12,26.41 < 3 |walk
Leave the building |goto 75.12,26.30 < 3 |walk
Follow the path |goto 75.12,26.09 < 5 |only if walking
talk King Rastakhan##124655
turnin Partners in Heresy##47734 |goto 74.87,24.94
accept To Sacrifice a Loa##47741 |goto 74.87,24.94
step
Run up the stairs |goto 75.31,24.55 < 5 |only if walking
Follow the path |goto 75.65,24.54 < 5 |only if walking
Jump down here |goto 75.83,24.63 < 5 |only if walking
kill Vilnak'dor##133570 |q 47741/1 |goto 75.99,24.91
step
Watch the dialogue
Disrupt the Loa Sacrifice Ritual |q 47741/2 |goto 76.03,24.92
step
talk King Rastakhan##124655
Tell him _"Let's get out of here!"_
Watch the dialogue
Begin Following King Rastakhan |goto 76.06,24.90 > 10 |c |q 47741
step
Follow the path up |goto 75.88,25.07 < 5 |only if walking
Follow the path |goto 75.82,25.13 < 5 |only if walking
Run down the stairs |goto 75.66,25.29 < 5 |only if walking
Follow the path |goto 75.30,25.33 < 5 |only if walking
Follow the path |goto 75.04,25.88 < 7 |only if walking
Continue following the path |goto 74.15,27.12 < 7 |only if walking
Watch the dialogue
|tip Follow King Rastakhan as he walks.
Escape the Temple of Rezan |q 47741/3 |goto 74.09,27.87
step
Run down the stairs |goto 73.84,28.19 < 5 |only if walking
Follow the path |goto 73.43,28.22 < 5 |only if walking
Run up the stairs |goto 72.84,28.96 < 7 |only if walking
Follow the path up |goto 72.63,29.11 < 7 |only if walking
Run up the stairs |goto 72.34,29.21 < 7 |only if walking
Follow the path |goto 72.13,29.18 < 7 |only if walking
Follow the path |goto 71.71,29.19 < 7 |only if walking
talk Rezan##124948
turnin To Sacrifice a Loa##47741 |goto 70.83,29.90
step
talk King Rastakhan##124915
accept King or Prey##51111 |goto 70.98,29.91
step
Enter the building |goto Dazar'alor/0 49.99,41.88 < 5 |walk
Follow the path |goto Dazar'alor/1 47.96,28.15 < 5 |walk
Run up the stairs |goto Dazar'alor/1 42.47,46.30 < 5 |walk
Follow the path |goto Dazar'alor/2 41.13,56.43 < 3 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin King or Prey##51111 |goto Dazar'alor/2 41.43,72.44
accept Hunting Zul##49421 |goto Dazar'alor/2 41.43,72.44
accept Sending Out An SOS##52210 |goto Dazar'alor/2 41.43,72.44
accept Keep Them On Task##51555 |goto Dazar'alor/2 41.43,72.44
step
Run down the stairs |goto 41.32,82.42 < 3 |walk
Follow the path |goto Dazar'alor/1 46.65,81.13 < 3 |walk
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.65,71.99
step
Follow the path |goto 47.66,27.90 < 5 |walk
Leave the building |goto Dazar'alor/0 49.94,42.14 < 5 |walk
Follow the path |goto Dazar'alor/0 50.21,41.63 < 5 |only if walking
Jump down here |goto Dazar'alor/0 50.81,89.68 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 49.63,91.01 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.02,92.71 < 7 |only if walking
Follow the path |goto Dazar'alor/0 48.09,93.68 < 7 |only if walking
talk Captain Grez'ko##140590
turnin Sending Out An SOS##52210 |goto Dazar'alor/0 46.15,94.59
accept Send the Signal!##49758 |goto Dazar'alor/0 46.15,94.59
step
clicknpc Fleet Scout##140566
Take the Fleet Scout to the Far Island |q 49758/1 |goto 46.40,94.63
step
Fly to the Isle of Fangs |goto Zuldazar/0 54.57,86.73 < 7 |c |q 49758 |notravel
step
talk Bo'tzun Maset##135576
turnin Send the Signal!##49758 |goto 54.42,87.01
accept Key to the Brig##49775 |goto 54.42,87.01
step
talk Paku'ai Leti##140650
fpath Isle of Fangs |goto 54.45,87.06
step
Follow the path up |goto 53.88,86.61 < 7 |only if walking
Follow the path |goto 53.35,86.82 < 7 |only if walking
Follow the path |goto 53.02,87.14 < 7 |only if walking
Continue following the path |goto 52.55,86.72 < 7 |only if walking
Run up the ramp |goto 52.34,86.72 < 5 |only if walking
Follow the path |goto 52.27,86.93 < 5 |only if walking
Follow the path |goto 52.09,87.08 < 5 |only if walking
Follow the path |goto 51.99,87.04 < 3 |walk
Continue following the path |goto 51.83,86.94 < 5 |walk
Follow the path |goto 51.68,86.97 < 3 |walk
kill Quartermaster Garza##130795
|tip She walks around this area inside the ship.
collect Brig Key##155882 |q 49775/1 |goto 51.56,86.88
step
Follow the path |goto Zuldazar/0 51.68,86.97 < 3 |walk
Follow the path |goto 51.73,87.12 < 5 |walk
Run down the stairs |goto 51.86,87.11 < 5 |c |q 49775
step
Follow the path |goto Zuldazar/3 26.41,33.40 < 3 |walk
Run down the stairs |goto Zuldazar/3 27.04,38.59 < 3 |walk
Follow the path |goto Zuldazar/3 34.47,44.20 < 3 |walk
talk Wavemaster Lanfa##130821
|tip Downstairs inside the ship.
turnin Key to the Brig##49775 |goto Zuldazar/3 44.05,50.74
accept Not "Only Zul"##49754 |goto Zuldazar/3 44.05,50.74
step
Kill enemies around this area
|tip Inside the ship.
Purge #10# of Zul's Forces |q 49754/1 |goto 41.99,44.51
step
Run up the stairs |goto Zuldazar/3 37.41,34.95 < 3 |walk
Follow the path |goto Zuldazar/3 29.64,29.19 < 3 |walk
Run up the stairs |goto Zuldazar/3 26.75,32.67 < 3 |walk
Follow the path |goto Zuldazar/0 51.86,87.10 < 3 |walk
Follow the path |goto Zuldazar/0 51.94,87.00 < 3 |walk
Follow the path |goto Zuldazar/0 52.08,87.07 < 5 |only if walking
Run down the ramp |goto Zuldazar/0 52.25,86.92 < 5 |only if walking
Follow the path |goto Zuldazar/0 52.35,86.71 < 5 |only if walking
Follow the path |goto Zuldazar/0 52.52,86.70 < 7 |only if walking
Follow the path down |goto Zuldazar/0 53.08,87.07 < 7 |only if walking
Follow the path down |goto Zuldazar/0 53.46,86.73 < 7 |only if walking
Follow the path |goto Zuldazar/0 53.83,86.71 < 7 |only if walking
talk Wavemaster Lanfa##130821
turnin Not "Only Zul"##49754 |goto Zuldazar/0 54.38,87.02
accept Against the Tide##49871 |goto Zuldazar/0 54.38,87.02
step
Follow the path up |goto 53.76,86.64 < 7 |only if walking
Follow the path |goto 53.37,86.79 < 7 |only if walking
Follow the path up |goto 53.29,87.33 < 7 |only if walking
Follow the path up |goto 53.53,87.62 < 7 |only if walking
Continue up the path |goto 54.28,89.61 < 7 |only if walking
kill Warlord Xiar##130742 |q 49871/1 |goto 54.69,90.50
|tip He walks around this area/
|tip The Lightning Rods that line this path will stun you.
|tip Click them to gain a stackable buff to help you kill him easier.
step
use the Empowered Fire Mojo##156473
Light the Signal Fire |q 49871/2 |goto 54.74,90.21
step
Watch the dialogue
talk Captain Grez'ko##130750
turnin Against the Tide##49871 |goto 54.69,89.71
accept Destroy the Weapon##49785 |goto 54.69,89.71
step
clicknpc Harli the Swift##130759
Ride with Harli the Swift |invehicle |goto 54.64,89.67 |q 49785
step
Fly to Tusk Isle |goto 59.38,78.09 < 7 |c |q 49785 |notravel
step
talk Paku'ai Jetar##140653
fpath Tusk Isle |goto 59.39,77.94
step
Follow the path |goto 59.04,77.37 < 7 |only if walking
Follow the path |goto 59.00,76.69 < 7 |only if walking
Investigate the Weapon |q 49785/1 |goto 57.92,76.53
step
Follow the path |goto 57.54,76.46 < |only if walking
Run up the ramp |goto 57.40,76.22 < 5 |only if walking
Follow the path |goto 57.41,76.01 < 5 |only if walking
kill Reo'kah##130725 |q 49785/2 |goto 57.44,75.60
step
Run down the ramp |goto 57.42,76.01 < 5 |only if walking
Follow the path |goto 57.42,76.24 < 5 |only if walking
talk Captain Grez'ko##130833
turnin Destroy the Weapon##49785 |goto 57.81,76.64
accept Hope's Blue Light##49884 |goto 57.81,76.64
step
clicknpc Captain Grez'ko##130833
Ride with Captain Grez'ko |invehicle |goto 57.81,76.64 |q 49884
step
Watch the dialogue
Light the Signal Fire |q 49884/1 |goto 60.82,75.25 |notravel
|tip Use the "Igniting..." ability on your action bar.
step
Return to the Port of Zandalar |goto Dazar'alor/0 45.98,94.38 < 7 |c |q 49884 |notravel
step
Follow the path |goto 44.86,94.56 < 5 |only if walking
talk Captain Rez'okun##123000
turnin Hope's Blue Light##49884 |goto 44.48,95.46
step
Follow the path |goto 44.85,94.44 < 5 |only if walking
Follow the path |goto 51.85,94.22 < 7 |only if walking
Run down the stairs |goto 52.40,95.44 < 5 |only if walking
talk Koba##128888
|tip He walks around this area.
accept Tiny Treasures##49285 |goto Zuldazar/0 70.29,65.07
step
clicknpc Scroll of Flight##134008
fpath Seeker's Outpost |goto 70.45,65.31
step
talk Batu##129586
|tip He walks around this area.
accept Perfect Tidings##49284 |goto 70.54,65.21
step
Follow the path |goto 70.88,64.85 < 7 |only if walking
accept Dreadpearl Collusion##49315 |goto 71.20,64.57
|tip You will automatically accept this quest.
stickystart "Cleanse_Dreadpearl_Shallows"
step
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
label "Cleanse_Dreadpearl_Shallows"
Kill enemies around this area
Cleanse the Dreadpearl Shallows |q 49315/1 |goto 73.55,62.51
|tip Run next to Squallfin Tadpoles to scare them.
|tip They look like small friendly Squallfin murlocs on the ground around this area.
step
Follow the path up |goto 73.73,62.02 < 7 |only if walking
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
Follow the path |goto 70.33,65.28 < 7 |only if walking
Follow the path |goto 69.74,65.99 < 7 |only if walking
talk Wavesinger Zara##137645
Tell her _"Atal'Gral"_
Begin Riding the Boat to Atal'gral |invehicle |goto 69.49,66.99 |q 50331
step
Watch the dialogue
Take Boat Service to Atal'gral |q 50331/1 |goto 82.27,47.18 |notravel
step
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
Follow the path up |goto 78.75,40.04 < 7 |only if walking
Follow the path up |goto 78.82,40.76 < 7 |only if walking
Follow the path up |goto 79.53,41.62 < 7 |only if walking
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
accept Inform the Horde!##51539 |goto 79.20,42.10
step
Follow the path |goto 79.75,42.50 < 7 |only if walking
Continue following the path |goto 79.46,45.09 < 7 |only if walking
Continue following the path |goto 78.80,46.43 < 7 |only if walking
Continue following the path |goto 78.55,47.29 < 7 |only if walking
Follow the path |goto 76.96,48.75 < 7 |only if walking
talk Lieutenant Dennis Grimtale##137075
turnin Keep Them On Task##51555 |goto 76.61,48.53
accept The Wreckoning##51246 |goto 76.61,48.53
accept The Things They Carried##51247 |goto 76.61,48.53
step
talk Teekay Treadlebobbin##135855
accept Productive Pests##51248 |goto 76.42,48.71
step
talk J'eebi##135803
accept Crabulous Feast##51249 |goto 76.38,48.75
stickystart "Collect_Bugs"
stickystart "Collect_Large_Lump_Of_Crab_Meat"
stickystart "Slay_7th_Legion_Sailors"
step
Follow the path down |goto 76.14,48.95 < 7 |only if walking
Follow the path |goto 75.67,49.26 < 7 |only if walking
Follow the path |goto 75.09,50.18 < 7 |only if walking
Follow the path |goto 75.02,51.10 < 7 |only if walking
kill Sergeant Wayne##137089
collect Ship's Manifest##159835 |q 51247/3 |goto 74.55,51.71
step
Follow the path |goto 74.92,51.57 < 7 |only if walking
Continue following the path |goto 75.41,51.82 < 7 |only if walking
Follow the path up |goto 75.98,51.29 < 7 |only if walking
kill Sailor Jaseon##137084
collect Scouting Map##159836 |q 51247/2 |goto 76.69,50.98
step
Follow the path |goto 76.25,51.29 < 7 |only if walking
Follow the path |goto 76.16,51.86 < 7 |only if walking
Follow the path up |goto 76.45,52.52 < 7 |only if walking
kill Medic Hunt##137082
collect Unsent Letter##159837 |q 51247/1 |goto 76.50,52.75
step
label "Collect_Bugs"
Follow the path |goto 76.47,52.44 < 7 |only if walking
Follow the path |goto 76.28,52.38 < 5 |only if walking
clicknpc Mosquito##137200+
|tip They look like small flying bugs on the ground around this area.
clicknpc Sand Borer##137834+
|tip They look like small beetles on the ground around this area.
Collect #5# Bugs |q 51248/1 |goto 75.83,51.97
step
label "Collect_Large_Lump_Of_Crab_Meat"
kill Derelict Hexapod##137255+
collect 7 Large Lump of Crab Meat##159934 |q 51249/1 |goto 75.83,51.97
step
label "Slay_7th_Legion_Sailors"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Sailors |q 51246/1 |goto 75.83,51.97
step
Follow the path |goto 75.20,51.61 < 10 |only if walking
Follow the path |goto 75.08,50.23 < 7 |only if walking
Continue following the path |goto 75.18,49.83 < 7 |only if walking
Follow the path up |goto 75.72,49.21 < 7 |only if walking
Follow the path |goto 76.17,48.91 < 7 |only if walking
talk J'eebi##135803
turnin Crabulous Feast##51249 |goto 76.38,48.75
step
talk Teekay Treadlebobbin##135855
turnin Productive Pests##51248 |goto 76.42,48.72
step
talk Lieutenant Dennis Grimtale##137075
turnin The Wreckoning##51246 |goto 76.61,48.52
turnin The Things They Carried##51247 |goto 76.61,48.52
accept Stop the Evacuation##51286 |goto 76.61,48.52
step
Follow the path down |goto 76.97,48.73 < 7 |only if walking
Follow the path down |goto 77.35,48.75 < 7 |only if walking
Follow the path |goto 77.58,50.49 < 7 |only if walking
Follow the path up |goto 78.07,52.17 < 7 |only if walking
Follow the path |goto 78.21,52.80 < 7 |only if walking
Continue following the path |goto 78.81,54.16 < 10 |only if walking
Continue following the path |goto 79.74,55.17 |only if walking
Continue following the path |goto 80.15,55.29 < 7 |only if walking
Continue following the path |goto 80.15,55.67 < 7 |only if walking
click Inconspicuous Seaforium Bomb
Place the Seaforium Bomb |q 51286/1 |goto 80.16,57.05
step
kill Captain Sarai Naut##141521 |q 51286/2 |goto 79.95,57.24
step
Follow the path |goto 80.17,55.25 < 7 |only if walking
Continue following the path |goto 79.39,55.05 < 10 |only if walking
Follow the path up |goto 78.52,53.67 < 7 |only if walking
Follow the path down |goto 78.19,52.64 < 7 |only if walking
Follow the path |goto 77.70,51.14 < 7 |only if walking
Follow the path up |goto 77.48,49.39 < 7 |only if walking
Follow the path up |goto 77.30,48.66 < 7 |only if walking
Follow the path |goto 76.95,48.75 < 7 |only if walking
talk Lieutenant Dennis Grimtale##137075
turnin Stop the Evacuation##51286 |goto 76.61,48.53
step
Run up the stairs |goto Dazar'alor/1 46.19,82.48 < 3 |walk
Follow the path |goto Dazar'alor/2 40.92,82.15 < 3 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Inform the Horde!##51539 |goto Dazar'alor/2 41.46,72.16
step
Run down the stairs |goto 41.18,56.71 < 3 |walk
Follow the path |goto Dazar'alor/1 42.81,45.38 < 5 |walk
Follow the path |goto Dazar'alor/1 47.79,27.79 < 5 |walk
Leave the building |goto Dazar'alor/0 49.97,42.10 < 5 |walk
Follow the path |goto Dazar'alor/0 50.19,41.66 < 7 |only if walking
Run up the stairs |goto Dazar'alor/0 51.77,19.05 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.44,20.97 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 50.01,21.26 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.36,21.43 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 48.68,22.03 < 5 |only if walking
Follow the path |goto Dazar'alor/0 47.76,23.29 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 47.26,23.19 < 5 |only if walking
Follow the path |goto Dazar'alor/0 46.72,22.54 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 46.30,22.56 < 5 |only if walking
Follow the path |goto Dazar'alor/0 45.41,23.75 < 5 |only if walking
Follow the path |goto Dazar'alor/0 43.03,24.36 < 7 |only if walking
Follow the path |goto Dazar'alor/0 41.46,26.66 < 7 |only if walking
talk King Rastakhan##129491
turnin Hunting Zul##49421 |goto Dazar'alor/0 38.92,27.15
accept The Warpack##49965 |goto Dazar'alor/0 38.92,27.15
step
Watch the dialogue
clicknpc Wardruid Loti##134132
Ride with Wardruid Loti |invehicle |goto 38.81,27.02 |q 49965
step
Watch the dialogue
Ride with the Warpack |q 49965/1 |goto Zuldazar/0 49.19,44.79 |notravel
step
talk Gonk##129740
turnin The Warpack##49965 |goto 49.27,44.32
accept Heretics##49422 |goto 49.27,44.32
step
talk Wardruid Loti##129561
accept The Full Prophecy##49424 |goto 49.34,44.35
stickystart "Bring_Ruin"
step
Follow the path |goto 49.63,43.85 < 5 |only if walking
Run up the stairs |goto 49.07,42.81 < 5 |walk
click The Word of Zul III##280350
Read The Word of Zul III |q 49424/3 |goto 48.81,42.76
step
Follow the path |goto 49.27,42.96 < 7 |only if walking
Follow the path |goto 49.49,42.99 < 7 |only if walking
Run up the stairs |goto 49.75,42.48 < 5 |only if walking
Cross the bridge |goto 49.75,42.17 < 5 |only if walking
Run down the stairs |goto 49.75,41.58 < 5 |only if walking
Follow the path |goto 49.71,41.40 < 5 |only if walking
Enter the building |goto 49.19,40.70 < 3 |walk
click The Word of Zul II##280349
|tip Inside the building.
Read The Word of Zul II |q 49424/2 |goto 49.01,40.57
step
Leave the building |goto 49.18,40.70 < 3 |walk
Follow the path |goto 49.67,40.68 < 5 |only if walking
Run up the stairs |goto 49.73,40.51 < 5 |only if walking
Cross the bridge |goto 49.73,40.44 < 5 |only if walking
Run down the stairs |goto 49.74,39.85 < 5 |only if walking
Follow the path |goto 49.72,39.49 < 5 |only if walking
Follow the path |goto 49.44,39.16 < 7 |only if walking
Follow the path |goto 49.21,39.18 < 7 |only if walking
Run up the stairs |goto 48.99,39.38 < 5 |only if walking
click The Word of Zul I##280348
Read The Word of Zul I |q 49424/1 |goto 48.75,39.40
step
_Next to you:_
talk Wardruid Loti##132041
turnin The Full Prophecy##49424
step
label "Bring_Ruin"
Leave the building |goto 49.18,40.70 < 3 |walk
Kill enemies around this area
clicknpc Skykiller Ballista##129540+
|tip They look like wooden crossbow machines on the ground around this area.
Bring Ruin |q 49422/1 |goto 49.07,39.36
step
Follow the path |goto 49.21,39.16 < 7 |only if walking
Follow the path |goto 49.50,38.88 < 7 |only if walking
Follow the path |goto 49.65,38.20 < 7 |only if walking
talk Hexlord Raal##129703
turnin Heretics##49422 |goto 49.65,37.98
accept City of Gold##49425 |goto 49.65,37.98
step
clicknpc Ata the Winglord##129701
Ride Ata the Winglord |q 49425/1 |goto 49.64,37.91
step
Kill enemies around this area
|tip Use the "Explosive Wrath Totem" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #75# Forces of Zul |q 49425/2 |goto 45.97,36.79
step
Travel to Atal'Dazar |goto 43.77,39.08 < 7 |c |q 49425 |notravel
step
talk Rezan##131049
turnin City of Gold##49425 |goto 43.70,39.45
accept The King's Gambit##49426 |goto 43.70,39.45
step
Follow the path |goto 43.37,39.48 < 5 |only if walking
Run down the stairs |goto 42.66,39.13 < 5 |only if walking
Follow the path |goto 42.21,39.15 < 5 |only if walking
March on Atal'Dazar |q 49426/1 |goto 42.10,39.28
step
talk King Rastakhan##131070
Ask him _"What now?"_
Watch the dialogue
Speak with King Rastakhan |q 49426/2 |goto 42.08,39.52
step
Run up the stairs |goto 42.10,38.71 < 5 |only if walking
Follow the path |goto 42.10,38.37 < 5 |only if walking
Follow the path |goto 42.13,37.80 < 7 |only if walking
Run up the stairs |goto 42.33,37.58 < 5 |only if walking
Follow the path |goto 42.56,37.59 < 5 |only if walking
Watch the dialogue
|tip Don't fight enemies, just run past them.
Get Rastakhan to Safety |q 49426/3 |goto 42.73,37.65
step
talk King Rastakhan##129757
turnin The King's Gambit##49426 |goto 42.73,37.65
accept Atal'Dazar: Yazma the Fallen Priestess##49901 |goto 42.73,37.65
accept Of Dark Deeds and Dark Days##50963 |goto 42.73,37.65
step
Run up the stairs |goto 42.70,37.39 < 5 |only if walking
Follow the path |goto 42.70,37.07 < 5 |only if walking
Run up the stairs |goto 42.64,36.89 < 5 |only if walking
Follow the path |goto 42.39,36.31 < 5 |only if walking
Follow the path up |goto 42.67,35.90 < 5 |only if walking
Follow the path |goto 43.45,36.72 < 7 |only if walking
Jump down here |goto 43.79,37.03 < 5 |only if walking
Follow the path down |goto 43.96,37.62 < 7 |only if walking
Follow the path down |goto 44.12,38.26 < 7 |only if walking
Follow the road |goto 44.64,38.10 < 7 |only if walking
Continue following the road |goto 45.20,37.90 < 7 |only if walking
Continue following the road |goto 45.79,38.49 < 7 |only if walking
Cross the bridge |goto 46.10,37.99 < 7 |only if walking
Follow the path |goto 45.99,36.12 < 7 |only if walking
talk Loz the Paku'ai##130790
fpath Atal'dazar |goto 46.16,35.81
step
Follow the path |goto Dazar'alor/0 50.21,41.54 < 7 |only if walking
Enter the building |goto Dazar'alor/0 49.95,42.14 < 5 |walk
Follow the path |goto Dazar'alor/1 47.07,28.97 < 5 |walk
Run up the stairs |goto Dazar'alor/1 42.38,46.30 < 5 |walk
Follow the path |goto Dazar'alor/2 41.28,56.21 < 3 |walk
talk Princess Talanji##133050
|tip Inside the building.
turnin Of Dark Deeds and Dark Days##50963 |goto Dazar'alor/2 41.26,66.71
step
Run down the stairs |goto 41.28,82.17 < 3 |walk
Follow the path |goto Dazar'alor/1 46.03,82.31 < 3 |walk
Run up the stairs |goto Dazar'alor/1 51.89,82.36 < 3 |walk
Follow the path |goto Dazar'alor/2 56.40,82.16 < 3 |walk
talk Natal'hakata##131287
|tip Inside the building.
accept Sandscar Breach##49940 |goto 67.34,71.59
step
Run down the stairs |goto 56.46,56.61 < 3 |walk
Follow the path |goto Dazar'alor/1 54.88,46.24 < 5 |walk
Follow the path |goto Dazar'alor/1 48.76,27.11 < 5 |walk
Leave the building |goto Dazar'alor/0 49.96,42.13 < 5 |walk
Follow the path |goto Dazar'alor/0 50.16,41.69 < 5 |only if walking
Follow the road |goto Zuldazar/0 49.28,26.36 < 7 |only if walking
Follow the road |goto Zuldazar/0 47.85,25.07 < 7 |only if walking
talk Bladeguard Sonji##130450
turnin Sandscar Breach##49940 |goto Zuldazar/0 47.25,24.95
accept I Spy a Spire##49678 |goto Zuldazar/0 47.25,24.95
accept Skycaller Soltok##49680 |goto Zuldazar/0 47.25,24.95
step
talk Beastmother Jabati##131354
accept The Sethrak Incursion##49679 |goto 47.33,25.14
stickystart "Destroy_Sethrak_Spires"
stickystart "Slay_Sethrak_Invaders"
step
Cross the bridge |goto 46.98,24.75 < 5 |only if walking
Follow the path |goto 46.53,24.19 < 5 |only if walking
Follow the path |goto 46.20,23.80 < 7 |only if walking
Follow the path |goto 46.14,23.59 < 5 |only if walking
talk Lil' Tika##130468
accept Lil' Tika##49681 |goto 46.23,23.33
step
click Sethrak Cage##277876
Release Lil' Tika |q 49681/1 |goto 46.23,23.33
step
Follow the path |goto 45.86,23.12 < 7 |only if walking
Follow the road |goto 45.43,23.36 < 7 |only if walking
Continue following the road |goto 45.11,23.56 < 7 |only if walking
Continue following the road |goto 44.81,24.27 < 7 |only if walking
Continue following the road |goto 44.58,24.59 < 7 |only if walking
Continue following the road |goto 44.57,24.98 < 7 |only if walking
Run up the stairs |goto 45.12,25.76 < 5 |only if walking
Follow the path |goto 45.17,25.87 < 5 |only if walking
Enter the building |goto 45.23,26.03 < 5 |walk
clicknpc Chief Chan'Tika##130482
|tip Inside the building.
Find Lil' Tika's Master |q 49681/2 |goto 45.37,26.40
step
Leave the building |goto 45.23,26.04 < 3 |c |q 49680
step
Follow the path |goto 45.06,26.06 < 5 |only if walking
Run up the stairs |goto 45.07,26.19 < 3 |only if walking
Follow the path |goto 45.16,26.36 < 3 |only if walking
kill Skycaller Soltok##130412 |q 49680/1 |goto 45.30,26.23
|tip Upstairs inside the building.
step
label "Destroy_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone pillars with enemies channeling lightning on them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #4# Sethrak Spires |q 49678/1 |goto 45.22,25.42
step
label "Slay_Sethrak_Invaders"
Kill enemies around this area
Slay #12# Sethrak Invaders |q 49679/1 |goto 45.22,25.42
step
Jump down here |goto 45.75,25.79 < 5 |only if walking
Follow the path |goto 46.27,25.45 < 7 |only if walking
Follow the path up |goto 46.62,25.26 < 7 |only if walking
Follow the path |goto 47.05,25.20 < 7 |only if walking
talk Bladeguard Sonji##130450
turnin I Spy a Spire##49678 |goto 47.25,24.95
turnin Skycaller Soltok##49680 |goto 47.25,24.95
step
talk Beastmother Jabati##131354
turnin The Sethrak Incursion##49679 |goto 47.33,25.14
turnin Lil' Tika##49681 |goto 47.33,25.14
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Nazmir storylines:\n\nDeep in the Swamp\nUndercover Sista\nA Friend of the Frogs\nBring the Boom\nA Pact with Death\nTurtle Power\nEverything Contained\nBleeding the Blood Trolls",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
talk Princess Talanji##133050
|tip Inside the building.
accept Journey to Nazmir##47103 |goto Dazar'alor/2 41.18,66.77
step
Run down the stairs |goto 41.00,56.51 < 3 |walk
Follow the path |goto Dazar'alor/1 42.85,45.74 < 5 |walk
Follow the path |goto Dazar'alor/1 48.05,28.48 < 5 |walk
Leave the building |goto Dazar'alor/0 49.97,42.15 < 5 |walk
Follow the path |goto Dazar'alor/0 50.25,41.67 < 5 |only if walking
talk Rokhan##126549
turnin Journey to Nazmir##47103 |goto Dazar'alor/0 51.66,41.29
accept Nazmir, the Forbidden Swamp##48535 |goto Dazar'alor/0 51.66,41.29
step
talk Paku'ai Rokota##122689
Tell her _"Get me as close as you can to Nazmir."_
Take a Flight to Nazmir Outskirts |q 48535/1 |goto 51.91,41.20
step
Follow the path |goto Zuldazar/0 51.08,21.33 < 7 |only if walking
Follow the path down |goto Zuldazar/0 51.30,21.00 < 7 |only if walking
Follow the path |goto Zuldazar/0 52.57,20.80 < 5 |only if walking
Cross the bridge |goto Zuldazar/0 52.72,20.64 < 5 |only if walking
Follow the road |goto Zuldazar/0 53.55,19.80 < 5 |only if walking
Follow the road |goto Zuldazar/0 53.70,19.62 < 5 |only if walking
Cross the bridge |goto Zuldazar/0 53.74,18.88 < 5 |only if walking
Follow the path |goto Nazmir/0 43.39,87.00 < 5 |only if walking
Meet with Princess Talanji |q 48535/2 |goto Nazmir/0 43.36,86.52
step
talk Princess Talanji##120904
turnin Nazmir, the Forbidden Swamp##48535 |goto 43.00,86.03
accept Into The Darkness##47105 |goto 43.00,86.03
step
Follow the path down |goto 43.42,85.49 < 7 |only if walking
Follow the path |goto 43.85,83.90 < 7 |only if walking
Follow the path down |goto 44.60,82.73 < 7 |only if walking
Continue following the path |goto 45.77,81.23 < 7 |only if walking
Scout Ahead |q 47105/1 |goto 46.94,80.18
step
Follow the path |goto 46.94,80.18 < 5 |only if walking
talk Princess Talanji##130844
turnin Into The Darkness##47105 |goto 47.25,79.74
accept Leave None Standing##47264 |goto 47.25,79.74
accept Improper Burial##47130 |goto 47.25,79.74
stickystart "Slay_Blood_Trolls"
step
Follow the path |goto 47.07,79.02 < 5 |only if walking
Continue following the path |goto 47.74,78.60 < 7 |only if walking
use the Ceremonial Torch##154724
|tip Use it on Dead Zandalari around this area.
|tip They look like Troll corpses laying on the ground around this area.
Burn #5# Dead Zandalari |q 47130/1 |goto 48.96,78.41
step
label "Slay_Blood_Trolls"
Kill Blood Troll enemies around this area
Slay #8# Blood Trolls |q 47264/1 |goto 48.96,78.41
step
Follow the path |goto 47.83,78.53 < 7 |only if walking
Run up the stairs |goto 46.26,77.11 < 5 |only if walking
Follow the path |goto 46.23,76.80 < 5 |only if walking
talk Princess Talanji##121241
turnin Leave None Standing##47264 |goto 45.65,74.79
turnin Improper Burial##47130 |goto 45.65,74.79
accept Ending the Blood Trolls##47262 |goto 45.65,74.79
step
Run up the stairs |goto 45.61,73.48 < 5 |only if walking
Follow the path |goto 45.61,73.22 < 5 |only if walking
Run up the ramp |goto 44.99,71.75 < 5 |only if walking
kill Grand Ma'da Ateena##121504
|tip She will eventually escape.
Watch the dialogue
Slay Grand Ma'da Ateena |q 47262/1 |goto 44.91,71.65
step
Follow the path |goto 45.12,71.36 < 7 |only if walking
talk Princess Talanji##130844
turnin Ending the Blood Trolls##47262 |goto 45.21,71.04
accept A Time of Revelation##47263 |goto 45.21,71.04
step
Follow the path |goto 45.25,70.06 < 5 |only if walking
talk Princess Talanji##131146
Tell her _"We need to move, we shouldn't stay here."_
Speak with Talanji at the Overlook |q 47263/1 |goto 45.57,68.65
step
Watch the dialogue
Travel to Zul'jan Ruins |goto 39.41,76.65 < 7 |c |q 47263 |notravel
step
Follow the path |goto 39.84,77.06 < 7 |only if walking
Run up the stairs |goto 39.95,77.44 < 5 |only if walking
talk Princess Talanji##121288
turnin A Time of Revelation##47263 |goto 39.14,79.07
accept The Aid of the Loa##47188 |goto 39.14,79.07
step
talk Princess Talanji##121288
Tell her _"Let's discuss what we can do to fight the blood trolls."_
Watch the dialogue
Listen to Talanji and Rokhan |q 47188/1 |goto 39.15,79.07
step
talk Princess Talanji##121288
turnin The Aid of the Loa##47188 |goto 39.15,79.07
accept The Shadow of Death##47241 |goto 39.15,79.07
step
click Scouting Report##287232
accept WANTED: Tojek##51089 |goto 39.56,79.95
step
Run up the stairs |goto 39.00,78.66 < 5 |only if walking
Enter the building |goto 38.80,78.65 < 3 |walk
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 49902 |future
step
Leave the building |goto 38.80,78.65 < 3 |walk
Follow the path |goto 39.09,78.47 < 5 |only if walking
talk Zabar##121828
fpath Zul'jan |goto 38.85,78.14
step
talk Sur'jan##126713
accept Urok, Terror of the Wetlands##48669 |goto 38.83,77.71
step
talk Sur'jan##126713
Tell him _"Show me Urok, the Terror of the Wetlands."_
Watch the dialogue
Observe Urok, Terror of the Wetlands |q 48669/1 |goto 38.83,77.71
step
talk Sur'jan##126713
turnin Urok, Terror of the Wetlands##48669 |goto 38.83,77.71
accept Crocolisk Life##48573 |goto 38.83,77.71
accept Pulling Fangs##48574 |goto 38.83,77.71
stickystart "Collect_Saurid_Teeth"
step
Follow the path down |goto 38.51,77.44 < 7 |only if walking
kill Primal Snapjaw##126723+
use Sur'jan's Ritual Dagger##152596
|tip Use it near their corpses.
Absorb #8# Snapjaw Mojo |q 48573/1 |goto 36.33,75.99
step
label "Collect_Saurid_Teeth"
kill Sickly Saurid##126689+
collect 40 Saurid Teeth##152595 |q 48574/1 |goto 34.84,79.30
step
talk Sur'jan##126713
turnin Crocolisk Life##48573 |goto 34.08,78.57
turnin Pulling Fangs##48574 |goto 34.08,78.57
step
Watch the dialogue
talk Sur'jan##126713
accept Safe Flying##48576 |goto 34.08,78.57
accept Terrorizing their Eggs##48577 |goto 34.08,78.57
accept There's No Eye in Skyterror##48578 |goto 34.08,78.57
stickystart "kill_Primal_Skyterrors"
stickystart "Destroy_Skyterror_Eggs"
step
Follow the path |goto 33.76,80.18 < 7 |only if walking
Follow the path up |goto 33.35,82.58 < 7 |only if walking
Follow the path up |goto 33.50,83.52 < 7 |only if walking
Continue up the path |goto 34.39,84.06 < 7 |only if walking
Continue up the path |goto 34.91,84.61 < 5 |only if walking
Follow the path |goto 34.83,85.17 < 7 |only if walking
Follow the path up |goto 34.73,86.13 < 5 |only if walking
Follow the path up |goto 34.30,85.98 < 5 |only if walking
kill Jarkadiax##126703
collect Jarkadiax's Eye##152600 |q 48578/1 |goto 33.83,86.03
step
label "kill_Primal_Skyterrors"
use Sur'jan's Grappling Hook##152610
|tip Use it on Primal Skyterrors around this area.
|tip They are flying in the air around this area.
kill 8 Primal Skyterror##126702 |q 48576/1 |goto 34.19,84.02
step
label "Destroy_Skyterror_Eggs"
click Skyterror Egg##273827+
|tip They look like large white eggs in nests on the ground around this area.
Destroy #5# Skyterror Egg |q 48577/1 |goto 34.19,84.02
step
Follow the path down |goto 33.50,83.52 < 7 |only if walking
Follow the path |goto 33.39,82.45 < 7 |only if walking
talk Sur'jan##126713
turnin Safe Flying##48576 |goto 34.08,78.57
turnin Terrorizing their Eggs##48577 |goto 34.08,78.57
turnin There's No Eye in Skyterror##48578 |goto 34.08,78.57
accept The Blood of My Enemies##48584 |goto 34.08,78.57
accept My Head and Shoulders##48590 |goto 34.08,78.57
stickystart "Collect_Coagulated_Dreadtick_Blood"
step
Follow the path |goto 33.63,76.74 < 10 |only if walking
accept Purge the Infection##48588 |goto 31.43,74.77
|tip You will automatically accept this quest.
stickystart "Destroy_Infected_Saurolisks_and_Eggs"
step
Follow the path |goto 33.48,76.62 < 7 |only if walking
Follow the path up |goto 31.51,73.88 < 5 |only if walking
clicknpc Sur'jan's Helm##141728
collect Sur'jan's Helm##156621 |q 48590/1 |goto 31.62,73.48
step
Follow the path |goto 31.80,72.86 < 7 |only if walking
Follow the path |goto 31.54,72.09 < 5 |only if walking
Follow the path |goto 31.34,71.71 < 5 |only if walking
clicknpc Sur'jan's Left Shoulderpad##141858
collect Sur'jan's Left Shoulderpad##156620 |q 48590/2 |goto 31.05,71.38
step
Follow the path up |goto 30.61,71.22 < 5 |only if walking
Follow the path |goto 30.47,72.32 < 7 |only if walking
Follow the path |goto 29.29,73.73 < 7 |only if walking
Continue following the path |goto 29.27,75.20 < 7 |only if walking
Continue following the path |goto 28.91,76.72 < 5 |only if walking
clicknpc Sur'jan's Right Shoulderpad##141860
collect Sur'jan's Right Shoulderpad##156619 |q 48590/3 |goto 28.73,76.76
step
label "Collect_Coagulated_Dreadtick_Blood"
use Sur'jan's Dreadtick Gasser##156618
|tip Use it on Dreadtick Latchers around this area.
kill Dreadtick Latcher##126749+
collect 45 Coagulated Dreadtick Blood##152611 |q 48584/1 |goto 29.29,74.01
step
label "Destroy_Infected_Saurolisks_and_Eggs"
kill Infected Saurolisk##127132+
Destroy Infected Saurolisks and Eggs |q 48588/1 |goto 29.29,74.01
|tip Walk over Infected Saurolisk Eggs to break them.
|tip They look like small white eggs on the ground around this area.
step
talk Sur'jan##126713
turnin The Blood of My Enemies##48584 |goto 28.76,72.64
turnin My Head and Shoulders##48590 |goto 28.76,72.64
step
Watch the dialogue
talk Sur'jan##126713
accept Urok's True Death##48591 |goto 28.76,72.64
step
Follow the path |goto 28.07,72.59 < 7 |only if walking
Enter the cave |goto 26.85,73.16 < 5 |walk
kill Urok##123757 |q 48591/1 |goto 25.78,73.53
|tip Inside the cave.
step
Leave the cave |goto 26.90,73.11 < 5 |walk
Follow the path |goto 28.18,72.49 < 7 |only if walking
talk Sur'jan##131872
turnin Urok's True Death##48591 |goto 28.76,72.64
step
Follow the path up |goto 28.89,70.49 < 7 |only if walking
Follow the path up |goto 28.68,69.60 < 7 |only if walking
Follow the path |goto 28.05,68.70 < 7 |only if walking
Follow the path up |goto 27.82,67.83 < 7 |only if walking
kill Tojek##136381 |q 51089/1 |goto 26.98,67.13
|tip It looks like a large yellow and brown triceratops that walks around this area.
|tip You may need help with this.
step
Follow the path |goto 27.63,66.79 < 10 |only if walking
Cross the bridge |goto 29.53,65.62 < 7 |only if walking
Follow the path |goto 30.17,65.85 < 7 |only if walking
Follow the path |goto 30.60,65.68 < 7 |only if walking
Cross the bridge |goto 31.08,65.55 < 7 |only if walking
Follow the path |goto 31.92,65.90 < 7 |only if walking
Continue following the path |goto 33.21,65.86 < 7 |only if walking
Cross the bridge |goto 34.32,65.13 < 7 |only if walking
Cross the bridge |goto 34.90,64.90 < 7 |only if walking
Follow the path |goto 36.00,64.78 < 7 |only if walking
Follow the path down |goto 37.60,64.95 < 7 |only if walking
Follow the path |goto 38.13,64.10 < 7 |only if walking
Follow the path |goto 38.18,63.22 < 5 |only if walking
Run up the stairs |goto 37.90,63.12 < 5 |only if walking
Enter the building |goto 37.73,63.11 < 3 |walk
click Broken Spear##271170
|tip Inside the building.
Investigate the Abandoned Ruins |q 47241/2 |goto 37.50,63.06
step
Leave the building |goto 37.73,63.11 < 3 |walk
Follow the path |goto 38.16,63.14 < 7 |only if walking
Follow the path |goto 38.77,63.84 < 7 |only if walking
Follow the path |goto 39.49,65.07 < 5 |only if walking
click Weathered Shrine##270902
Investigate the Weathered Shrine |q 47241/1 |goto 39.61,64.97
step
Follow the path |goto 39.31,64.92 < 5 |only if walking
Cross the bridge |goto 39.08,63.72 < 7 |only if walking
Follow the path |goto 39.10,62.84 < 7 |only if walking
Follow the path |goto 38.82,62.17 < 7 |only if walking
talk Shinga Deathwalker##130481
accept Bwonsamdi's Deliverance##48468 |goto 39.06,60.67
accept Respecting the Rites##48473 |goto 39.06,60.67
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
Follow the path |goto 38.55,60.36 < 7 |only if walking
Follow the path |goto 37.62,60.24 < 7 |only if walking
Run up the stairs |goto 36.14,58.29 < 5 |only if walking
Follow the path |goto 35.92,58.41 < 5 |only if walking
clicknpc Blood Scavenger##122094
Investigate the Shrine of Bones |q 47241/3 |goto 35.62,58.58
step
Run down the stairs |goto 35.92,58.36 < 5 |only if walking
Follow the path |goto 36.13,58.13 < 5 |only if walking
Follow the path |goto 36.57,57.52 < 7 |only if walking
Watch the dialogue
talk Hanzabu##122102
turnin The Shadow of Death##47241 |goto 36.62,53.93
accept A Culling of Souls##47244 |goto 36.62,53.93
step
Cross the bridge |goto 36.87,53.32 < 5 |only if walking
Follow the path |goto 36.98,52.55 < 5 |only if walking
Follow the path down |goto 37.25,51.64 < 7 |only if walking
kill Blood Witch Najima##122204 |q 47244/1 |goto 38.55,49.98
step
Follow the path up |goto 38.03,50.20 < 7 |only if walking
Follow the path |goto 37.23,49.69 < 7 |only if walking
Continue following the path |goto 37.25,47.94 < 7 |only if walking
Continue following the path |goto 37.98,46.88 < 7 |only if walking
Follow the path |goto 39.53,45.82 < 7 |only if walking
Run up the stairs |goto 39.53,44.81 < 5 |only if walking
Follow the path |goto 39.53,44.65 < 5 |only if walking
talk Hanzabu##124428
turnin A Culling of Souls##47244 |goto 39.52,43.83
accept Spiritual Restoration##49278 |goto 39.52,43.83
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 39.04,43.90 |count 1
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 38.86,43.50 |count 2
step
talk Du'ba##122191
fpath Zo'bal Ruins |goto 40.18,42.83
step
Run up the stairs |goto 40.31,43.51 < 5 |only if walking
Enter the building |goto 40.54,43.52 < 3 |walk
clicknpc Drained Spirit##134363
|tip Inside the building.
Restore the Drained Spirit |q 49278/1 |goto 40.89,43.54 |count 3
step
Leave the building |goto 40.58,43.52 < 3 |walk
talk Du'ba##122191
turnin Spiritual Restoration##49278 |goto 39.52,43.83
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
accept Blood Troll on the Outside##49440 |goto 39.63,43.87
step
talk Witch Doctor Kejabu##122795
accept The Necropolis##47868 |goto 39.52,43.83
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.41,43.53 |count 1
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.57,43.74 |count 2
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.74,43.52 |count 3
step
talk Witch Doctor Kejabu##122795
Tell him _"I'm ready to begin the ritual to disguise myself as a blood troll."_
Watch the dialogue
Speak to Witch Doctor Kejabu to Complete the Ritual |q 49440/2 |goto 39.63,43.86
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
turnin Blood Troll on the Outside##49440 |goto 39.63,43.86
accept Sneaking into Zalamar##48699 |goto 39.63,43.86
step
Run down the stairs |goto 39.61,42.33 < 5 |only if walking
Follow the path |goto 39.60,41.84 < 7 |only if walking
Follow the path up |goto 39.58,37.17 < 5 |only if walking
Follow the path |goto 39.58,36.68 < 5 |only if walking
Run up the stairs |goto 39.58,34.13 < 5 |only if walking
Follow the path |goto 39.58,33.92 < 5 |only if walking
talk Hanzabu##124513
turnin The Necropolis##47868 |goto 39.58,32.58
accept A Tribute for Death##47880 |goto 39.58,32.58
step
Draw the Ritual Circle |q 47880/1 |goto 39.58,32.35
|tip Walk on top of the dashed lines on the ground to trace them.
step
Run up the stairs |goto 39.57,32.09 < 5 |only if walking
click Drum of Spirits##270997
Sound the Drum of Spirits |q 47880/2 |goto 39.59,31.84
step
Run up the stairs |goto 39.96,32.07 < 5 |only if walking
Follow the path |goto 40.13,32.06 < 5 |only if walking
Run down the stairs |goto 40.25,31.82 < 5 |only if walking
Follow the path |goto 40.30,30.90 < 5 |only if walking
Follow the path |goto 39.76,30.01 < 7 |only if walking
Run up the stairs |goto 39.59,29.18 < 5 |only if walking
Follow the path |goto 39.58,28.30 < 5 |only if walking
Run up the stairs |goto 39.57,27.63 < 5 |only if walking
Follow the path |goto 39.57,27.31 < 5 |only if walking
Enter the building |goto 39.56,26.73 < 5 |walk
Follow the path |goto 39.66,26.38 < 3 |walk
Follow the path |goto 39.80,26.21 < 3 |walk
Run down the stairs |goto 39.56,25.84 < 3 |walk
Follow the path |goto 39.57,25.47 < 3 |walk
talk Bwonsamdi##122688
|tip Inside the building.
turnin A Tribute for Death##47880 |goto 39.57,24.66
accept Mark of the Damned##48934 |goto 39.57,24.66
|tip You will automatically accept this quest.
accept Remnants of the Damned##47491 |goto 39.57,24.66
accept A Desecrated Temple##49348 |goto 39.57,24.66
accept That Which Haunts the Dead##47247 |goto 39.57,24.66
stickystart "Disrupt_Corrupted_Spirits"
stickystart "Collect_Decaying_Bloodstones"
step
Run up the stairs |goto 39.56,24.90 < 5 |walk
Follow the path |goto 39.56,25.04 < 5 |walk
Run up the stairs |goto 39.57,25.53 < 3 |walk
Follow the path |goto 39.57,25.84 < 3 |walk
Follow the path |goto 39.79,26.19 < 3 |walk
Leave the building |goto 39.59,26.56 < 3 |walk
Run down the stairs |goto 39.49,27.30 < 5 |only if walking
Follow the path |goto 39.39,27.73 < 5 |only if walking
Run down the stairs |goto 37.56,28.17 < 5 |only if walking
Follow the path |goto 37.39,28.17 < 5 |only if walking
Follow the path |goto 36.88,28.05 < 5 |only if walking
talk Theurgist Salazae##122706
accept 'Til Death Do Us Part##47248 |goto 36.66,27.40
step
Run up the stairs |goto 36.61,28.44 < 5 |only if walking
Follow the path |goto 36.52,28.81 < 5 |only if walking
kill Hex Priestess Tizeja##122666 |q 47247/2 |goto 36.09,29.88
|tip Kill the enemies channeling on her to be able to attack her.
step
Run down the stairs |goto 36.70,30.42 < 5 |only if walking
Follow the path |goto 36.88,30.67 < 5 |only if walking
Run up the stairs |goto 37.36,30.94 < 5 |only if walking
Follow the path |goto 37.62,30.88 < 5 |only if walking
Follow the path down |goto 37.93,30.54 < 7 |only if walking
Follow the path |goto 38.62,29.90 < 7 |only if walking
Follow the path |goto 39.36,29.51 < 7 |only if walking
Continue following the path |goto 39.83,29.43 < 7 |only if walking
Enter the crypt |goto 40.37,28.80 < 3 |walk
Follow the path |goto 40.36,27.34 < 3 |walk
click Ancient Urn##270991
|tip Inside the crypt.
collect Valjabu's Tusk Ring##150754 |q 47248/1 |goto 40.37,26.52
stickystart "Destroy_Vile_Desecrations"
step
Follow the path |goto 40.37,27.30 < 3 |walk
Leave the crypt |goto 40.37,28.77 < 3 |c |q 47247
step
Follow the path |goto 40.21,29.32 < 7 |only if walking
Run up the stairs |goto 39.62,29.20 < 5 |only if walking
Follow the path |goto 39.65,28.17 < 5 |only if walking
Continue following the path |goto 41.66,28.14 < 5 |only if walking
Continue following the path |goto 42.61,29.28 < 7 |only if walking
kill Warlord Malaja##122664 |q 47247/1 |goto 43.42,30.02
step
Follow the path |goto 43.02,30.95 < 7 |only if walking
talk Keula##126588
accept The Forlorn Soul##49432 |goto 42.58,31.46
step
label "Destroy_Vile_Desecrations"
clicknpc Vile Desecration##129086+
|tip They look like red bubbles on the walls around this area.
Destroy #5# Vile Desecration |q 49348/1 |goto 42.61,29.77
step
label "Disrupt_Corrupted_Spirits"
Kill enemies around this area
|tip Horror enemies will not count for this quest goal.
clicknpc Seeping Corruption##127738+
|tip They look like red balls floating above the ground around this area.
Disrupt the Corrupted Spirits |q 48934/1 |goto 42.61,29.77
step
Run up the stairs |goto 41.79,29.48 < 5 |only if walking
Follow the path |goto 41.66,29.48 < 5 |only if walking
Jump down here |goto 41.01,29.70 < 5 |only if walking
Follow the path |goto 40.05,30.69 < 7 |only if walking
Enter the crypt |goto 39.59,31.66 < 3 |walk
Follow the path |goto 39.59,33.63 < 3 |walk
Follow the path |goto 39.50,34.45 < 5 |walk
click Sarcophagus Lid##278692
|tip Inside the crypt.
Find Keula's Mother |q 49432/1 |goto 39.59,34.95
step
Watch the dialogue
kill The Matron Shaazula##126616
|tip Inside the crypt.
Subdue Matron Shaazula |q 49432/2 |goto 39.65,35.00
step
Follow the path |goto 39.67,34.41 < 5 |walk
Follow the path |goto 39.59,33.68 < 3 |walk
Leave the crypt |goto 39.59,31.73 < 3 |c |q 47248
step
label "Collect_Decaying_Bloodstones"
Kill Horror enemies around this area
collect 6 Decaying Bloodstone##150753 |q 47491/1 |goto 39.60,30.29
step
Run up the stairs |goto 39.57,29.15 < 5 |only if walking
Follow the path |goto 39.50,28.14 < 5 |only if walking
Run down the stairs |goto 37.56,28.18 < 5 |only if walking
Follow the path |goto 36.87,28.00 < 5 |only if walking
talk Theurgist Salazae##122706
turnin 'Til Death Do Us Part##47248 |goto 36.66,27.40
step
Follow the path |goto 36.88,28.04 < 5 |only if walking
Run up the stairs |goto 37.41,28.17 < 5 |only if walking
Follow the path |goto 37.57,28.15 < 5 |only if walking
Run up the stairs |goto 39.46,27.63 < 5 |only if walking
Follow the path |goto 39.50,27.31 < 5 |only if walking
Enter the building |goto 39.56,26.73 < 5 |walk
Follow the path |goto 39.66,26.38 < 3 |walk
Follow the path |goto 39.80,26.21 < 3 |walk
Run down the stairs |goto 39.56,25.84 < 3 |walk
Follow the path |goto 39.57,25.47 < 3 |walk
talk Bwonsamdi##122688
|tip Inside the building.
turnin Remnants of the Damned##47491 |goto 39.56,24.68
turnin A Desecrated Temple##49348 |goto 39.56,24.68
turnin That Which Haunts the Dead##47247 |goto 39.56,24.68
turnin The Forlorn Soul##49432 |goto 39.56,24.68
accept Soulbound##47249 |goto 39.56,24.68
step
Run up the stairs |goto 39.56,25.51 < 3 |walk
Follow the path |goto 39.57,25.87 < 3 |walk
Follow the path |goto 39.76,26.09 < 3 |walk
Follow the path |goto 39.77,26.29 < 3 |walk
Leave the building |goto 39.60,26.53 < 3 |walk
Run down the stairs |goto 39.59,28.34 < 5 |only if walking
Follow the path |goto 39.59,29.17 < 5 |only if walking
talk Bwonsamdi##126707
Tell him _"Let's begin."_
Watch the dialogue
Begin the Ritual |q 47249/1 |goto 39.58,30.21
step
Watch the dialogue
kill Grand Ma'da Ateena##122711 |q 47249/2 |goto 39.57,30.96
|tip She will eventually escape.
step
talk Bwonsamdi##122766
turnin Soulbound##47249 |goto 39.58,30.22
accept We'll Meet Again##47250 |goto 39.58,30.22
step
Leave the building |goto 38.78,78.64 < 3 |walk
Follow the path |goto 39.10,78.75 < 5 |only if walking
Follow the path |goto 39.25,79.26 < 7 |only if walking
talk Rovash the One Eyed##135740
turnin WANTED: Tojek##51089 |goto 39.12,79.86
step
Follow the path |goto 39.16,78.53 < 7 |only if walking
talk Hanzabu##127004
turnin We'll Meet Again##47250 |goto 39.52,43.83
step
Run down the stairs |goto 39.52,44.64 < 5 |only if walking
Follow the path |goto 39.01,46.26 < 7 |only if walking
Follow the path |goto 36.72,47.67 < 7 |only if walking
Continue following the path |goto 34.41,47.67 < 7 |only if walking
Continue following the path |goto 33.48,47.53 < 7 |only if walking
Run up the ramp |goto 32.57,46.18 < 5 |only if walking
talk Bloodseeker Jo'chunga##127128
Tell him _"Kejabu sent me."_
Find Bloodseeker Jo'chunga |q 48699/1 |goto 32.37,46.17
step
Run up the ramp |goto 33.01,46.38 < 5 |only if walking
Enter the building |goto 33.22,46.10 < 5 |walk
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Sneaking into Zalamar##48699 |goto 33.35,45.74
accept Isolating Zalamar##48801 |goto 33.35,45.74
accept How to Be a Blood Troll##48890 |goto 33.35,45.74
stickystart "Test_Unproven_Drudges"
step
Leave the building |goto 33.22,46.10 < 3 |walk
Follow the path |goto 32.98,46.78 < 7 |only if walking
Continue following the path |goto 33.69,47.71 < 7 |only if walking
Continue following the path |goto 34.52,47.63 < |only if walking
Run up the ramp |goto 35.13,47.20 < 3 |only if walking
talk Wardrummer Sheej##129380
|tip At the top of the tower.
Tell him _"Da camp be needin' more stone. Go an' recover only da purest of rocks within Nazmir. Sixty of dem."_
Remove Wardrummer Sheej |q 48801/2 |goto 35.30,46.80
step
Jump down here |goto 35.12,47.02 < 5 |only if walking
Follow the path |goto 34.55,47.68 < 7 |only if walking
Follow the path |goto 32.33,48.33 < 7 |only if walking
Follow the path |goto 31.41,49.03 < 5 |only if walking
Run up the ramp |goto 31.33,49.40 < 3 |only if walking
talk Wardrummer Gix##129381
|tip At the top of the tower.
Tell him _"We be needin' fifty pristine crocolisk hides. Go an' retrieve dem, and don' be comin' back 'til you have dem all."_
Remove Wardrummer Gix |q 48801/3 |goto 31.16,49.75
step
label "Test_Unproven_Drudges"
Jump down here |goto 31.05,49.44 < 5 |only if walking
Follow the path |goto 30.64,47.12 < 7 |only if walking
Follow the path |goto 30.87,46.31 < 7 |only if walking
clicknpc Unproven Drudge##126933+
|tip They look like blood trolls that are tied up to poles around this area.
Test #5# Unproven Drudge |q 48890/1 |goto 31.59,45.66
step
Follow the path |goto 31.98,44.83 < 7 |only if walking
Run up the ramp |goto 31.71,43.69 < 3 |only if walking
talk Wardrummer Saljo##127999
|tip At the top of the tower.
Tell him _"Da camp be needin' more wood. Go an' retrieve thirty pieces of only da most pristine lumber!"_
Remove Wardrummer Saljo |q 48801/1 |goto 31.49,43.26
step
Jump down here |goto 31.64,43.55 < 5 |only if walking
Follow the path |goto 32.14,45.20 < 7 |only if walking
Run up the ramp |goto 32.98,46.40 < 5 |only if walking
Enter the building |goto 33.22,46.11 < 3 |walk
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Isolating Zalamar##48801 |goto 33.35,45.74
turnin How to Be a Blood Troll##48890 |goto 33.35,45.74
step
Watch the dialogue
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
accept Poisoning the Brood##49078 |goto 33.35,45.74
accept Mark of the Bat##48800 |goto 33.35,45.74
stickystart "Poison_Tamed_Warspawns"
step
Leave the building |goto 33.24,46.09 < 3 |walk
accept Zalamar Slaughter##49406 |goto 32.94,46.56
|tip You will automatically accept this quest.
stickystart "Disrupt_Zalamar"
step
Cross the bridge |goto 33.21,48.52 < 5 |only if walking
Enter the building |goto 33.49,49.00 3 |walk
kill Blood Witch Yialu##126891
|tip Inside the building.
collect Yialu's Talisman##153671 |q 48800/1 |goto 33.65,49.33
step
Leave the building |goto 33.50,49.00 < 3 |walk
Follow the path |goto 33.20,48.54 < 5 |only if walking
Run up the ramp |goto 32.95,48.59 < 5 |only if walking
Follow the path |goto 32.68,48.81 < 5 |only if walking
Enter the building |goto 32.59,49.18 < 3 |walk
kill Blood Priestess Zu'Anji##126890
|tip Inside the building.
collect Zu'Anji's Talisman##153674 |q 48800/3 |goto 32.68,49.51
step
label "Poison_Tamed_Warspawns"
Leave the building |goto 32.60,49.18 < 3 |walk
Jump down here |goto 32.53,48.65 < 5 |only if walking
Follow the path |goto 31.81,48.67 < 7 |only if walking
use the Poisoned Mojo Flask##153012
|tip Use it on Tamed Warspawns around this area.
|tip They look like large bats hanging upside down from poles and buildings around this area.
Poison #5# Tamed Warspawns |q 49078/1 |goto 31.02,48.14
step
label "Disrupt_Zalamar"
Kill enemies around this area
click Blood Troll Cage+
|tip They look like brown wood and bone cages on the ground around this area.
click Mojo Brewing Cauldron+
|tip They look like large stone bowls filled with blood on the ground around this area.
Disrupt Zalamar |q 49406/1 |goto 31.02,48.14
step
Run up the ramp |goto 30.87,46.01 < 5 |only if walking
Follow the path |goto 31.09,45.79 < 5 |only if walking
Enter the building |goto 31.02,45.42 < 3 |walk
kill Blood Witch Vashera##126888
|tip Inside the building.
collect Vashera's Talisman##153672 |q 48800/2 |goto 30.70,45.28
step
Leave the building |goto 31.02,45.42 < 3 |walk
Run down the ramp |goto 31.20,45.71 < 5 |only if walking
Follow the path |goto 31.42,45.61 < 5 |only if walking
Follow the path |goto 32.32,45.47 < 7 |only if walking
Run up the ramp |goto 33.00,46.39 < 5 |only if walking
Enter the building |goto 33.23,46.10 < 3 |walk
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Poisoning the Brood##49078 |goto 33.35,45.74
turnin Mark of the Bat##48800 |goto 33.35,45.74
step
Watch the dialogue
talk Jo'chunga##129378
|tip Inside the building.
accept Hir'eek, the Bat Loa##49079 |goto 33.35,45.74
step
Leave the building |goto 33.24,46.11 < 3 |walk
Run up the ramp |goto 32.56,46.15 < 5 |only if walking
Reach the Blood Ritual Pool |goto 32.18,46.31 < 5 |c |q 49079
step
_Next to you:_
talk Jo'chunga##129378
Tell him _"Jo'chunga, I'm ready. Let's enact our plan to stop Hir'eek."_
Watch the dialogue
Speak with Jo'chunga Within the Blood Ritual Pool |q 49079/1 |goto 32.18,46.31
step
Watch the dialogue
Weaken Hir'eek |q 49079/2 |goto 31.99,46.30
|tip Use tha ability on your action bar.
|tip Use it repeatedly.
step
Watch the dialogue
Fall into Hir'eek's Lair |goto 31.41,46.97 < 3 |c |q 49079
step
talk Jo'chunga##128276
|tip Inside the cave.
turnin Hir'eek, the Bat Loa##49079 |goto 31.23,46.80
accept To Kill a Loa##49081 |goto 31.23,46.80
step
Follow the path |goto 31.05,46.58 < 5 |walk
Follow the path |goto 30.61,46.22 < 5 |walk
kill Hir'eek##128074 |q 49081/1 |goto 29.14,46.57
|tip Inside the cave.
step
Follow the path |goto 29.62,46.39 < 7 |walk
Follow the path up |goto 30.08,46.31 < 5 |walk
Follow the path |goto 30.65,46.26 < 5 |walk
talk Jo'chunga##128276
|tip Inside the cave.
turnin To Kill a Loa##49081 |goto 31.25,46.81
accept Upward and Onward##49082 |goto 31.25,46.81
step
clicknpc Hir'eek Spawnling##128291
|tip Inside the cave.
Secure a Flight Out of Hir'eek's Lair |q 49082/1 |goto 31.26,46.72
step
Reach the Outskirts of Zalamar |goto 36.11,47.65 < 7 |c |q 49082
step
Follow the path |goto 37.97,46.83 < 7 |only if walking
Follow the path |goto 39.49,45.89 < 7 |only if walking
Run up the stairs |goto 39.50,44.75 < 5 |only if walking
talk Witch Doctor Kejabu##122795
Tell him _"Jo'chunga is alive, the loa Hir'eek though..."_
Inform Witch Doctor Kejabu |q 49082/2 |goto 39.63,43.86
step
talk Witch Doctor Kejabu##122795
turnin Upward and Onward##49082 |goto 39.63,43.86
accept Hunting Zardrax##49314 |goto 39.63,43.86
step
talk Princess Talanji##127961
accept Catching Up##49185 |goto 39.39,44.00
step
talk Princess Talanji##127961
Choose _(Tell Talanji about getting Bwonsamdi's aid and killing Hir'eek.)_
Tell Talanji About Bwonsamdi and Hir'eek |q 49185/1 |goto 39.40,44.00
step
talk Princess Talanji##127961
turnin Catching Up##49185 |goto 39.39,44.00
step
talk Lashk##127960
accept Torga, the Turtle Loa##49064 |goto 39.45,44.02
step
Run down the stairs |goto 39.47,44.65 < 5 |only if walking
Follow the path up |goto 39.15,46.14 < 7 |only if walking
Follow the path |goto 38.02,46.90 < 7 |only if walking
Continue following the path |goto 37.30,47.96 < 7 |only if walking
Cross the bridge |goto 36.98,52.56 < 7 |only if walking
Follow the path |goto 36.87,53.37 < 7 |only if walking
Follow the path |goto 36.38,55.71 < 7 |only if walking
Continue following the path |goto 35.30,54.75 < 7 |only if walking
Continue following the path |goto 34.76,53.88 < 7 |only if walking
Cross the bridge |goto 33.25,52.94 < 7 |only if walking
Follow the path |goto 32.27,52.09 < 7 |only if walking
talk Shadow Hunter Da'jul##127215
turnin Hunting Zardrax##49314 |goto 31.05,52.08
step
talk Zardrax the Empowerer##127216
accept Offer of Power##48854 |goto 30.97,52.18
step
talk Zardrax the Empowerer##127216
Tell him _"Alright, lich, tell me your offer."_
Listen to Zardrax |q 48854/1 |goto 30.97,52.18
step
clicknpc Shadow Hunter Da'jul##127215
Break Free of Zardrax's Control |q 48854/2 |goto 30.97,52.17
step
talk Shadow Hunter Da'jul##127215
turnin Offer of Power##48854 |goto 31.05,52.08
accept Projection Destruction##48823 |goto 31.05,52.08
step
talk Kal'dran##127212
accept Power Denied##48825 |goto 30.92,52.03
step
accept Stopping Zardrax##48852 |goto 30.91,52.03
|tip You will automatically accept this quest.
step
talk Shadow Hunter Da'jul##127215
Tell him _"I'm ready to receive your fire mojo to destroy the burial mounds."_
Watch the dialogue
Gain the Fire Mojo |q 48823/1 |goto 31.05,52.08
stickystart "Weaken_Zardraxs_Followers"
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 30.81,54.76 |count 1
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 31.95,55.11 |count 2
step
Follow the path |goto 31.86,55.66 < 7 |only if walking
Follow the path |goto 32.48,56.26 < 7 |only if walking
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 32.80,56.49 |count 3
step
Follow the path |goto 32.50,56.84 < 7 |only if walking
Run up the ramp |goto 32.85,57.84 < 5 |only if walking
Follow the path |goto 32.94,58.27 < 5 |only if walking
kill Hexxer Nana'kwug##127225
collect Blood Fetish##153482 |q 48825/1 |goto 33.07,58.81
step
label "Weaken_Zardraxs_Followers"
Run down the ramp |goto 32.93,58.26 < 5 |only if walking
Follow the path |goto 32.85,57.86 < 5 |only if walking
Follow the path |goto 32.25,56.56 < 7 |only if walking
Kill enemies around this area
|tip Not all enemies will count for this quest goal.
clicknpc Empowered Totem##127246+
|tip They look like wooden totems with red eyes and tongue on the ground around this area.
Weaken Zardrax's Followers |q 48852/1 |goto 31.66,55.34
step
Follow the path |goto 31.14,54.28 < 7 |only if walking
talk Shadow Hunter Da'jul##127215
turnin Projection Destruction##48823 |goto 31.05,52.08
turnin Power Denied##48825 |goto 31.05,52.08
accept Humbling the Terrors##48855 |goto Nazmir/0 31.05,52.08
accept Conduit Interruption##48856 |goto 31.05,52.08
step
talk Kal'dran##127212
accept All Hope is Lost##48857 |goto 30.91,52.04
step
talk Kal'dran##127212
Tell him _"Calm down, Kal'dran. We can still defeat Zardrax."_
Calm Down Kal'dran |q 48857/1 |goto 30.91,52.03
stickystart "Kill_Reconstructed_Terrors"
stickystart "Kill_Zardrax_Conduits"
step
Follow the path |goto 31.00,52.52 < 5 |only if walking
Follow the path |goto 31.14,54.29 < 7 |only if walking
Continue following the path |goto 31.24,55.35 < 7 |only if walking
Continue following the path |goto 30.47,56.00 < 7 |only if walking
Continue following the path |goto 29.91,56.97 < 7 |only if walking
Enter the cave |goto 29.36,57.00 < 5 |walk
kill Empowered Kal'dran##127394 |q 48857/2 |goto 29.09,56.74
|tip Inside the cave.
step
label "Kill_Reconstructed_Terrors"
Leave the cave |goto 29.39,57.05 < 3 |walk
Follow the path |goto 29.86,57.52 < 7 |only if walking
use the Modified Blood Fetish##153483
|tip Use it on Reconstructed Terrors around this area.
|tip They will become easy to kill.
kill 3 Reconstructed Terror##127253 |q 48855/1 |goto 30.86,60.32
step
label "Kill_Zardrax_Conduits"
kill 8 Zardrax Conduit##127255 |q 48856/1 |goto 30.21,58.37
step
Follow the path |goto 30.11,58.72 < 7 |only if walking
Continue following the path |goto 30.06,56.66 < 7 |only if walking
Continue following the path |goto 30.49,56.06 < 7 |only if walking
Continue following the path |goto 31.17,55.53 < 7 |only if walking
Follow the path |goto 31.14,54.35 < 7 |only if walking
talk Shadow Hunter Da'jul##127215
turnin Humbling the Terrors##48855 |goto 30.96,52.12
turnin Conduit Interruption##48856 |goto 30.96,52.12
turnin All Hope is Lost##48857 |goto 30.96,52.12
accept Payback's a Lich##48869 |goto 30.96,52.12
step
Follow the path |goto 31.00,52.62 < 7 |only if walking
Follow the path |goto 31.22,55.06 < 7 |only if walking
Follow the path up |goto 30.89,56.16 < 7 |only if walking
Follow the path up |goto 30.62,56.92 < 7 |only if walking
Follow the path |goto 31.03,57.04 < 7 |only if walking
kill Zardrax the Empowerer##127298 |q 48869/1 |goto 31.58,57.87
|tip Kill the enemies around him when he casts a bubble around himself.
step
Follow the path |goto 31.02,57.08 < 7 |only if walking
Jump down here |goto 30.87,56.83 < 5 |only if walking
Follow the path |goto 30.80,56.39 < 7 |only if walking
Follow the path |goto 31.19,55.33 < 7 |only if walking
Continue following the path |goto 31.14,54.27 < 7 |only if walking
talk Shadow Hunter Da'jul##127215
turnin Payback's a Lich##48869 |goto 30.96,52.12
step
Follow the path |goto 30.33,52.10 < 7 |only if walking
clicknpc Imperial Guard##135784
accept An Unfortunate Event##50933 |goto 29.21,52.06
step
Follow the path up |goto 28.59,52.18 < 5 |only if walking
Follow the path up |goto 28.06,52.18 < 7 |only if walking
Continue up the path |goto 26.75,52.88 < 7 |only if walking
Follow the path |goto 25.41,52.68 < 7 |only if walking
Follow the path up |goto 24.48,52.73 < 5 |only if walking
talk Zaluto##130930
turnin An Unfortunate Event##50933 |goto 24.13,53.20
accept On The Run##49777 |goto 24.13,53.20
step
talk Jin'Tiki##131231
accept Won't Leaf Him to Die##49774 |goto 24.11,53.14
accept No Problem Tar Can't Solve##49776 |goto 24.11,53.14
stickystart "Collect_Sticky_Tar"
stickystart "Collect_Sweetleaves"
step
Jump down here |goto 24.03,51.68 < 5 |only if walking
Follow the path |goto 23.87,49.67 < 7 |only if walking
Follow the path up |goto 23.55,48.65 < 5 |only if walking
Follow the path up |goto 23.35,48.20 < 5 |only if walking
Follow the path |goto 23.42,47.73 < 5 |only if walking
talk Mojoba##131132
Tell him _"I know who you are, Mojoba. Proceed to Vol'dun and live out your exile in peace."_
Watch the dialogue
kill Mojoba##131132
Exile Mojoba |q 49777/2 |goto 23.59,47.68
step
Follow the path up |goto 23.11,47.44 < 7 |only if walking
Follow the path up |goto 22.49,47.56 < 7 |only if walking
Follow the path |goto 22.04,48.16 < 7 |only if walking
Follow the path down |goto 21.85,49.50 < 7 |only if walking
clicknpc Teshyambi##131129
Choose _(Leave)_
Exile Teshyambi |q 49777/3 |goto 21.32,50.40
step
Follow the path |goto 21.57,51.57 < 7 |only if walking
Follow the path up |goto 21.05,53.90 < 5 |only if walking
Follow the path up |goto 21.10,54.70 < 7 |only if walking
talk Razjuto##131135
Tell him _"I'm sorry, but you've been exiled to Vol'dun for your crimes."_
Exile Razjuto |q 49777/1 |goto 21.56,55.03
step
label "Collect_Sticky_Tar"
Follow the path |goto 21.56,55.47 < 5 |only if walking
Jump down here |goto 21.97,55.58 < 5 |only if walking
kill Tar Ooze##130720+
collect 6 Sticky Tar##155913 |q 49776/1 |goto 22.39,54.72
step
label "Collect_Sweetleaves"
click Sweetleaf Bush##279293+
|tip They look like green bushes on the ground around this area.
collect 8 Sweetleaf##155912 |q 49774/1 |goto 22.39,54.72
step
Follow the path up |goto 22.96,54.68 < 7 |only if walking
Follow the path up |goto 23.81,53.11 < 5 |only if walking
talk Jin'Tiki##131231
turnin Won't Leaf Him to Die##49774 |goto 24.11,53.15
turnin No Problem Tar Can't Solve##49776 |goto 24.11,53.15
step
talk Zaluto##130930
turnin On The Run##49777 |goto 24.13,53.20
step
talk Jin'Tiki##131231
accept Don't Go into the Light##49778 |goto 24.11,53.15
step
talk Zaluto##130930
Tell him _"Hold still, Zaluto. We are going to cure your infection."_
Watch the dialogue
Cure Zaluto |q 49778/1 |goto 24.13,53.20
step
talk Jin'Tiki##131231
turnin Don't Go into the Light##49778 |goto 24.11,53.14
accept Recovering Ancient Fire##49780 |goto 24.11,53.14
step
talk Zaluto##130930
accept Bad To The Bone##49779 |goto 24.13,53.20
stickystart "Kill_Bone_Raptors"
step
Follow the path down |goto 24.41,52.78 < 7 |only if walking
Follow the path |goto 25.04,52.25 < 7 |only if walking
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 25.63,51.57 |count 1
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 24.70,50.18 |count 2
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 26.08,47.71 |count 3
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 24.81,45.15 |count 4
step
label "Kill_Bone_Raptors"
kill 10 Bone Raptor##130735 |q 49779/1 |goto 24.27,47.72
step
Follow the path |goto 25.04,47.68 < 10 |only if walking
Continue following the path |goto 25.81,49.41 < 7 |only if walking
Continue following the path |goto 25.70,50.42 < 7 |only if walking
Follow the path up |goto 25.04,52.26 < 7 |only if walking
Follow the path |goto 24.43,52.81 < 5 |only if walking
Follow the path |goto 25.14,52.25 < 10 |only if walking
talk Jin'Tiki##131231
turnin Recovering Ancient Fire##49780 |goto 24.11,53.14
step
talk Zaluto##130930
turnin Bad To The Bone##49779 |goto 24.13,53.21
accept Catch Me if You Can##49781 |goto 24.13,53.21
step
clicknpc Riding Raptor##134395
Ride the Riding Raptor |invehicle |goto 24.17,53.37 |q 49781
step
Find Zulajin |goto 23.85,52.47 < 7 |c |q 49781
step
Get Zulajin's Attention |goto 23.85,52.47 > 10 |c |q 49781
|tip Use the ability on your action bar.
step
Watch the dialogue
kill Zulajin##134436
|tip Use the ability on your action bar.
Ride Zaluto's Raptor to Defeat Zulajin |q 49781/1 |goto 28.24,52.06
step
Escape to Safety |goto 28.24,52.06 < 7 |c |q 49781
step
talk Jin'Tiki##130928
turnin Catch Me if You Can##49781 |goto 28.36,52.03
step
Follow the path |goto 28.49,51.51 < 7 |only if walking
Continue following the path |goto 28.60,50.61 < 7 |only if walking
Continue following the path |goto 28.55,49.51 < 7 |only if walking
Continue following the path |goto 28.64,48.62 < 7 |only if walking
Cross the bridge |goto 28.65,48.14 < 7 |only if walking
Follow the path |goto 28.84,47.61 < 7 |only if walking
Follow the path |goto 29.25,46.62 < 7 |only if walking
Cross the bridge |goto 28.78,44.96 < 7 |only if walking
Follow the path |goto 28.44,44.21 < 7 |only if walking
talk Chadwick Paxton##126289
accept Getting a Leg Up##48492 |goto 28.62,43.74
step
click Paxton's Legs
Recover Chadwick Paxton's Legs |q 48492/1 |goto 28.64,43.73
step
talk Chadwick Paxton##126289
Ask him _"Alright, I've got your... legs. What next?"_
Watch the dialogue
Fix Chadwick Paxton |q 48492/2 |goto 28.61,43.76
step
talk Chadwick Paxton##126346
turnin Getting a Leg Up##48492 |goto 28.62,43.78
accept Reuniting the Company##48496 |goto 28.62,43.78
accept Show of Force##48497 |goto 28.62,43.78
stickystart "Slay_Sethrak_Forces"
step
Follow the path |goto 28.33,43.67 < 7 |only if walking
Follow the path |goto 28.34,42.24 < 7 |only if walking
Continue following the path |goto 27.90,41.48 < 5 |only if walking
click Sethrak Cage
Rescue Clayton Backston |q 48496/3 |goto 27.40,41.22
step
Follow the path |goto 27.18,41.33 < 7 |only if walking
click Sethrak Cage
Rescue Anna Bizrim |q 48496/1 |goto 26.16,40.46
step
Follow the path |goto 26.43,39.99 < 7 |only if walking
Follow the path |goto 26.93,39.31 < 7 |only if walking
click Sethrak Cage
Rescue Timothy Zartlin |q 48496/2 |goto 27.44,38.56
step
Follow the path |goto 26.89,38.65 < 7 |only if walking
click Sethrak Cage
Rescue Ingrid Bellix |q 48496/4 |goto 26.60,37.92
step
talk Ingrid Bellix##126377
accept No Mercy for Sithis##48498 |goto 26.60,37.92
step
Enter the cave |goto 25.92,38.17 < 5 |walk
kill Fangcaller Sithis##126316
|tip Inside the cave.
collect Skycaller Gem##154892 |q 48498/1 |goto 25.40,37.65
step
Leave the cave |goto 25.94,38.16 < 5 |c |q 48498
step
label "Slay_Sethrak_Forces"
Kill Sethrak enemies around this area
Slay #10# Sethrak Forces |q 48497/1 |goto 26.52,38.69
step
Follow the path up |goto 26.31,37.76 < 7 |only if walking
Follow the path up |goto 25.99,36.94 < 7 |only if walking
talk Chadwick Paxton##126346
turnin Reuniting the Company##48496 |goto 25.82,36.02
turnin Show of Force##48497 |goto 25.82,36.02
turnin No Mercy for Sithis##48498 |goto 25.82,36.02
accept Didn't Stop to Think if They Should##49479 |goto 25.82,36.02
step
talk Ingrid Bellix##126376
Tell her _"I need you to empower the Skycaller Gem."_
Watch the dialogue
Empower the Skycaller Gem |q 49479/1 |goto 25.80,35.91
step
talk Chadwick Paxton##126346
turnin Didn't Stop to Think if They Should##49479 |goto 25.83,36.02
step
Watch the dialogue
talk Chadwick Paxton##126346
accept Return to Dust##48499 |goto 25.83,36.02
step
Follow the path down |goto 25.95,36.81 < 7 |only if walking
Follow the path |goto 26.33,37.79 < 7 |only if walking
Kill Enraged Sethrak enemies around this area
|tip Use the "Skycaller Gem" ability.
|tip It appears as a button on the screen.
Slay #20# Enraged Sethraks |q 48499/1 |goto 26.66,38.88
step
Overload the Skycaller Gem |q 48499/2 |goto 26.66,38.88
|tip Use the "Overloaded Skycaller Gem" ability.
|tip It appears as a button on the screen.
step
Follow the path |goto 27.44,39.14 < 7 |only if walking
Continue following the path |goto 26.80,38.55 < 7 |only if walking
Follow the path up |goto 26.29,37.73 < 7 |only if walking
Follow the path up |goto 26.01,37.00 < 7 |only if walking
talk Chadwick Paxton##126346
turnin Return to Dust##48499 |goto 25.82,36.02
step
Leave the building |goto 38.78,78.64 < 3 |walk
Follow the path |goto 39.10,78.47 < 5 |only if walking
Run down the stairs |goto 39.54,44.57 < 5 |only if walking
Follow the path |goto 40.18,45.75 < 7 |only if walking
Continue following the path |goto 41.96,44.88 < 7 |only if walking
Cross the bridge |goto 43.81,43.44 < 7 |only if walking
Follow the path |goto 44.54,43.09 < 7 |only if walking
Cross the bridge |goto 45.27,42.90 < 7 |only if walking
Follow the path |goto 45.82,42.80 < 7 |only if walking
Follow the path |goto 46.56,43.03 < 7 |only if walking
Continue following the path |goto 48.18,42.71 < 7 |only if walking
Continue following the path |goto 49.57,42.11 < 7 |only if walking
Cross the bridge |goto 51.78,41.51 < 7 |only if walking
Follow the path |goto 52.45,41.25 < 7 |only if walking
Follow the path |goto 53.32,41.07 < 7 |only if walking
Cross the bridge |goto 54.84,41.28 < 7 |only if walking
Follow the path |goto 55.28,41.17 < 7 |only if walking
Cross the bridge |goto 55.67,40.26 < 7 |only if walking
Follow the path |goto 55.63,39.90 < 7 |only if walking
talk Kisha##127958
Tell her _"Lashk said you could tell me where I can find Torga."_
Meet Kisha |q 49064/1 |goto 55.65,39.40
step
Follow the path down |goto 55.34,38.35 < 7 |only if walking
talk Kajosh##124666
accept Profanity Filter##47924 |goto 55.15,36.71
step
Follow the path |goto 54.26,35.94 < 7 |only if walking
accept Mawfiend Extermination##47996 |goto 54.19,35.31
|tip You will automatically accept this quest.
stickystart "Eliminate_the_Mawfiend_Threat"
step
Follow the path up |goto 54.34,34.06 < 7 |only if walking
use the Scroll of Inferno##151849
|tip Use it next to Profane Totems around this area.
|tip They look like red and brown wooden totems on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #5# Profane Totem |q 47924/1 |goto 54.16,32.65
step
label "Eliminate_the_Mawfiend_Threat"
Kill Mawfiend enemies around this area
clicknpc Mawfiend Food##126017+
|tip They look like dead crocodiles on the ground around this area.
Eliminate the Mawfiend Threat |q 47996/1 |goto 52.95,32.69
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
Follow the path |goto 55.71,31.08 < 7 |only if walking
Follow the path up |goto 55.47,29.05 < 7 |only if walking
Locate Torga |q 49064/2 |goto 55.59,28.59
step
Follow the path down |goto 55.69,28.14 < 7 |only if walking
Follow the path down |goto 55.79,27.49 < 7 |only if walking
Watch the dialogue
talk Princess Talanji##127961
turnin Torga, the Turtle Loa##49064 |goto 56.57,26.67
accept Beseeching Bwonsamdi##49067 |goto 56.57,26.67
step
talk Princess Talanji##127961
Tell her _"I'm ready to try and summon Bwonsamdi."_
Beseech Bwonsamdi for Aid |q 49067/1 |goto 56.57,26.67
step
talk Princess Talanji##127961
turnin Beseeching Bwonsamdi##49067 |goto 56.57,26.67
accept Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
accept Dreadtick Combustion##49071 |goto 56.51,26.65
step
talk Bwonsamdi##128096
accept Souls for the Death Loa##49070 |goto 56.66,26.52
stickystart "Blow_Up_Dreadtick_Leechers"
stickystart "Claim_Blood_Troll_Souls"
step
Follow the path |goto 57.27,26.29 < 7 |only if walking
Follow the path |goto 58.47,26.09 < 7 |only if walking
Enter the cave |goto 58.71,24.64 < 5 |walk
Follow the path |goto 59.00,23.56 < 7 |walk
Follow the path |goto 59.84,21.75 < 7 |walk
Cross the bridge |goto 60.25,21.30 < 7 |walk
Follow the path |goto 60.40,21.13 < 7 |walk
Cross the bridge |goto 60.93,19.80 < 7 |walk
Follow the path |goto 60.98,19.51 < 7 |walk
kill Summoner Yarz##127935 |q 49080/1 |goto 61.05,18.08
|tip Inside the cave.
step
Watch the dialogue
Get Expelled Away |goto 59.12,23.24 < 20 |noway |c |q 49071
step
label "Blow_Up_Dreadtick_Leechers"
use the Scroll of Combustion##153024
|tip Use it on Dreadtick Leecher around this area inside the cave.
Blow Up #5# Dreadtick Leechers |q 49071/1 |goto 60.15,21.06
step
label "Claim_Blood_Troll_Souls"
Kill Loa-Gutter enemies around this area
|tip Inside the cave.
Claim #10# Blood Troll Souls |q 49070/1 |goto 60.15,21.06
step
Follow the path down |goto 59.02,23.55 < 7 |walk
Leave the cave |goto 58.70,24.87 < 5 |walk
Follow the path |goto 58.53,26.15 < 7 |only if walking
Follow the path |goto 57.30,26.29 < 7 |only if walking
talk Bwonsamdi##128096
turnin Souls for the Death Loa##49070 |goto 56.66,26.53
step
talk Princess Talanji##127961
turnin Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
turnin Dreadtick Combustion##49071 |goto 56.52,26.65
step
talk Bwonsamdi##128096
accept Speaking with the Dead##49120 |goto 56.66,26.52
step
talk Bwonsamdi##128096
Tell him _"Bwonsamdi, we're ready for you to summon Torga's spirit."_
Watch the dialogue
Hear Torga's Wisdom |q 49120/1 |goto 56.66,26.52
step
talk Princess Talanji##127961
turnin Speaking with the Dead##49120 |goto 56.57,26.67
step
talk Kisha##127958
accept Negative Blood##49125 |goto 56.59,26.75
step
Watch the dialogue
accept Tortollan Rescue##51689 |goto 56.59,26.75
|tip You will automatically accept this quest.
stickystart "Destroy_Corrupted_Loa_Blood"
stickystart "Thwart_The_Blood_Troll_Plans"
step
Follow the path |goto 56.92,26.69 < 7 |only if walking
Continue following the path |goto 57.34,26.26 < 7 |only if walking
Continue following the path |goto 58.60,26.22 < 7 |only if walking
Continue following the path |goto 59.47,26.04 < 7 |only if walking
Cross the bridge |goto 59.96,25.24 < 7 |only if walking
Follow the path |goto 60.42,24.75 < 7 |only if walking
Cross the bridge |goto 61.15,24.78 < 7 |only if walking
Follow the path |goto 61.45,24.69 < 7 |only if walking
click Scroll of Fate's Hand##280347
collect Damaged Scroll of Fate's Hand##156568 |q 49125/2 |goto 62.28,24.58
step
label "Destroy_Corrupted_Loa_Blood"
use the Scroll of Purification##160559
|tip Use it on Corrupted Loa Blood around this area.
|tip They look like large red balls floating above the ground around this area.
Destroy #8# Corrupted Loa Blood |q 49125/1 |goto 62.23,24.06
step
label "Thwart_The_Blood_Troll_Plans"
Kill enemies around this area
clicknpc Tortollan Captive##128001+
|tip They look like friendly stunned turtle NPCs around this area.
Thwart the Blood Troll Plans |q 51689/1 |goto 62.23,24.06
step
Follow the path |goto 61.98,23.66 < 7 |only if walking
Cross the bridge |goto 62.74,22.21 < 7 |only if walking
Follow the path |goto 63.04,20.68 < 7 |only if walking
Follow the path |goto 63.76,19.32 < 7 |only if walking
Enter the cave |goto 65.45,17.92 < 5 |walk
talk Kisha##127958
|tip Inside the cave.
turnin Negative Blood##49125 |goto 65.72,17.96
accept Forcing Fate's Hand##49126 |goto 65.72,17.96
step
Summon the Hand of Fate |q 49126/1 |goto 65.72,17.96
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Leave the cave |goto 65.45,17.94 < 5 |walk
Follow the path |goto 65.11,17.71 < 7 |only if walking
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #50# Undead |q 49126/2 |goto 63.16,15.57
step
Return to Kisha |goto 59.07,13.67 < 7 |c |q 49126
step
talk Kisha##127958
turnin Forcing Fate's Hand##49126 |goto 58.48,13.78
accept Loa-Free Diet##49130 |goto 58.48,13.78
step
talk Princess Talanji##127961
accept Sanctifying Ground##49131 |goto 58.47,13.85
step
talk Lashk##127960
accept Crushing the Skullcrushers##49132 |goto 58.52,13.88
stickystart "Collect_Parts_Of_Torga"
stickystart "Kill_Loa_Gutter_Skullcrushers"
step
Follow the path |goto 57.15,17.90 < 7 |only if walking
clicknpc Sanctifying Totem##128179+
|tip They look like small wooden totems with red fire swirling around them on the ground around this area.
Place #4# Sanctifying Totem |q 49131/1 |goto 56.59,20.22
step
label "Collect_Parts_Of_Torga"
Kill Loa-Gutter enemies around this area
|tip Loa-Gutter Skullcrushers will not drop the quest item.
collect 6 Parts of Torga##153070 |q 49130/1 |goto 56.59,20.22
step
label "Kill_Loa_Gutter_Skullcrushers"
kill 4 Loa-Gutter Skullcrusher##127919 |q 49132/1 |goto 56.59,20.22
step
Follow the path |goto 55.26,23.10 < 7 |only if walking
Follow the path |goto 55.54,24.80 < 7 |only if walking
Follow the path |goto 56.30,26.51 < 7 |only if walking
talk Lashk##127960
turnin Crushing the Skullcrushers##49132 |goto 56.51,26.65
step
talk Princess Talanji##127961
turnin Sanctifying Ground##49131 |goto 56.57,26.67
step
talk Kisha##127958
turnin Loa-Free Diet##49130 |goto 56.59,26.76
step
talk Princess Talanji##127961
accept Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
Follow the path |goto 56.76,26.93 < 7 |only if walking
Follow the path |goto 57.29,26.27 < 7 |only if walking
Continue following the path |goto 58.51,26.13 < 7 |only if walking
Enter the cave |goto 58.72,24.55 < 5 |walk
Follow the path |goto 59.00,23.56 < 7 |walk
Follow the path |goto 59.84,21.75 < 7 |walk
Cross the bridge |goto 60.25,21.30 < 7 |walk
Follow the path |goto 60.40,21.13 < 7 |walk
Cross the bridge |goto 60.93,19.80 < 7 |walk
Follow the path |goto 60.98,19.51 < 7 |walk
Watch the dialogue
kill Jungo, Herald of the Blood God##128184 |q 49136/1 |goto 61.13,17.68
|tip Inside the cave.
step
Follow the path |goto 59.99,21.11 < 7 |walk
Follow the path down |goto 59.01,23.63 < 7 |walk
Leave the cave |goto 58.70,24.87 < 5 |walk
Follow the path |goto 58.50,26.16 < 7 |only if walking
Continue following the path |goto 57.27,26.26 < 7 |only if walking
Continue following the path |goto 56.70,26.89 < 5 |only if walking
talk Princess Talanji##127961
turnin Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
talk Lashk##127960
accept Torga's Eternal Return##49160 |goto 56.51,26.65
step
use the Scroll of Eternal Return##153131
Watch the dialogue
Put Torga's Spirit to Rest |q 49160/1 |goto 56.51,26.65
step
talk Kisha##127958
turnin Torga's Eternal Return##49160 |goto 56.59,26.75
accept To Gloom Hollow##49902 |goto 56.59,26.75
step
Follow the path up |goto 56.19,27.04 < 7 |only if walking
Follow the path up |goto 55.81,27.57 < 7 |only if walking
Follow the path down |goto 55.58,28.69 < 7 |only if walking
Follow the path up |goto 55.51,29.50 < 7 |only if walking
Follow the path |goto 55.64,30.43 < 7 |only if walking
Follow the path down |goto 55.80,32.15 < |only if walking
Follow the path |goto 55.87,33.82 < 7 |only if walking
Follow the path up |goto 55.57,36.27 < 7 |only if walking
Follow the path |goto 55.46,37.43 < 7 |only if walking
Follow the path |goto 55.59,39.31 < 7 |only if walking
talk Crez##131208
Choose _(Tell Crez about what happened to Torga, and the chance for new stories to be told if he goes to Gloom Hollow.)_
Recruit the Tortollan |q 49902/1 |goto 55.74,39.72 |count 1
step
Cross the bridge |goto 56.93,39.48 < 7 |only if walking
Follow the path |goto 58.83,40.11 < 7 |only if walking
Cross the bridge |goto 59.16,40.34 < 7 |only if walking
Follow the path |goto 59.71,40.98 < 7 |only if walking
Cross the bridge |goto 59.97,43.02 < 7 |only if walking
Follow the path |goto 60.15,43.92 < 7 |only if walking
Cross the bridge |goto 60.33,44.76 < 7 |only if walking
Follow the path |goto 60.52,45.60 < 7 |only if walking
talk Korkush##131209
Choose _(Tell Korkush there's a great story to be had if he helps the Horde fight the blood trolls and save the Zandalari.)_
Recruit the Tortollan |q 49902/1 |goto 60.23,46.18 |count 2
step
Cross the bridge |goto 60.76,46.07 < 7 |only if walking
Follow the path |goto 61.25,46.78 < 7 |only if walking
Follow the path |goto 61.94,47.41 < 7 |only if walking
Follow the path down |goto 63.32,47.81 < 7 |only if walking
talk Yash##131210
Choose _(Tell Yash if he wants to live a crazy story that he should go to Gloom Hollow to help stop the blood trolls and their god.)_
Recruit the Tortollan |q 49902/1 |goto 63.87,47.74 |count 3
step
Follow the path |goto 63.97,46.94 < 7 |only if walking
Continue following the path |goto 65.37,44.40 < 7 |only if walking
Continue following the path |goto 66.47,42.91 < 7 |only if walking
Run up the stairs |goto 66.67,42.68 < 5 |only if walking
Follow the path |goto 66.86,42.44 < 5 |only if walking
talk Rokhan##131213
turnin To Gloom Hollow##49902 |goto 67.43,42.31
accept Getting the Message##47245 |goto 67.43,42.31
step
talk Shadow Hunter Mutumba##122991
accept Staying Hidden##47525 |goto 67.41,42.06
step
talk Korkush##131988
home Gloom Hollow |goto 67.76,41.85 |q 49382 |future
step
Follow the path |goto 67.56,41.78 < 5 |only if walking
Follow the path |goto 67.54,41.50 < 5 |only if walking
click Wanted Poster##282448
accept WANTED: Ayame##52477 |goto 67.23,40.82
step
Follow the path |goto 67.27,41.84 < 5 |only if walking
Run up the stairs |goto 67.16,43.31 < 5 |only if walking
clicknpc Cuja##121207
fpath Gloom Hollow |goto 66.98,43.78
step
Follow the path |goto 67.44,43.32 < 5 |only if walking
Follow the path |goto 67.69,43.66 < 7 |only if walking
Follow the path |goto 68.28,43.90 < 7 |only if walking
click Message Rocket##272409
Investigate the Disturbance |q 47245/1 |goto 68.52,43.82
step
Follow the path |goto 68.30,43.87 < 7 |only if walking
Run up the stairs |goto 67.98,43.82 < 5 |only if walking
Follow the path |goto 67.59,43.54 < 5 |only if walking
talk Rokhan##131213
turnin Getting the Message##47245 |goto 67.43,42.31
accept Rendezvous with the Libation##47631 |goto 67.43,42.31
step
Follow the path |goto 67.47,43.01 < 5 |only if walking
Continue following the path |goto 67.61,43.54 < 5 |only if walking
Continue following the path |goto 68.24,44.64 < 7 |only if walking
Investigate The Frogmarsh |q 47525/1 |goto 68.58,46.51
step
talk Witch Doctor Zentimo##124376
turnin Staying Hidden##47525 |goto 68.59,46.74
accept Hunt the Hunter##47659 |goto 68.59,46.74
accept Fallen Idols##47660 |goto 68.59,46.74
stickystart "Collect_Stolen_Idols_of_Krag'wa"
step
Follow the path |goto 68.63,47.25 < 7 |only if walking
Follow the path |goto 68.37,48.06 < 7 |only if walking
Follow the path up |goto 68.69,49.33 < 7 |only if walking
clicknpc Mag'ash the Poisonous##126039
accept A Poisonous Touch##48402 |goto 69.16,50.46
stickystart "Poison_Bloodhunter_Trolls"
step
Follow the path down |goto 68.84,50.70 < 7 |only if walking
kill Warmother Boatema##123328 |q 47659/1 |goto 68.24,51.58
step
label "Collect_Stolen_Idols_of_Krag'wa"
click Stolen Idol of Krag'wa##271648+
|tip They look like small stone statues on the ground around this area.
collect 8 Stolen Idol of Krag'wa##151113 |q 47660/1 |goto 68.45,50.66
step
label "Poison_Bloodhunter_Trolls"
Kill Bloodhunter enemies around this area
|tip Use the "Poison Tipped Dart" ability.
|tip It appears as a button on the screen.
Poison #6# Bloodhunter Trolls |q 48402/1 |goto 68.45,50.66
step
Follow the path |goto 68.64,52.16 < 7 |only if walking
Continue following the path |goto 69.53,53.69 < 7 |only if walking
Follow the path up |goto 72.29,53.54 < 7 |only if walking
Follow the path |goto 72.88,53.40 7 |only if walking
Follow the path |goto 73.35,53.69 < 7 |only if walking
Follow the path |goto 74.66,55.85 < 7 |only if walking
talk Krag'wa the Huge##120551
turnin Hunt the Hunter##47659 |goto 75.42,56.61
turnin Fallen Idols##47660 |goto 75.42,56.61
turnin A Poisonous Touch##48402 |goto 75.42,56.61
accept The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
step
clicknpc Scepter of Rebirth##133900
Retrieve the Scepter of Rebirth |q 47623/1 |goto 75.13,56.69
step
clicknpc Witch Doctor Zentimo##124559
Perform the Ritual |q 47623/2 |goto 75.13,56.70
step
talk Krag'wa the Huge##120551
turnin The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
accept A True Loa Feast##47621 |goto 75.42,56.61
accept A Magical Glow##47622 |goto 75.42,56.61
stickystart "Collect_Chunky_Meat"
step
Follow the path |goto 74.80,56.06 < 7 |only if walking
Follow the path |goto 73.33,53.62 < 7 |only if walking
Continue following the path |goto 73.45,52.62 < 7 |only if walking
Follow the path up |goto 74.61,50.76 < 7 |only if walking
Follow the path |goto 75.01,49.95 < 7 |only if walking
Follow the path up |goto 75.35,48.63 < 7 |only if walking
Follow the path |goto 75.55,47.79 < 7 |only if walking
use the Glowfly Bottle##151237
|tip Use it next to Glowflies around this area.
|tip They look like small yellow and blue insects flying above the ground around this area.
Collect #25# Beautiful Glowflies |q 47622/1 |goto 75.89,45.98
step
label "Collect_Chunky_Meat"
Kill enemies around this area
collect 35 Chunky Meat##151040 |q 47621/1 |goto 75.77,45.37
step
Follow the path down |goto 75.53,47.90 < 7 |only if walking
Follow the path |goto 75.33,48.67 < 7 |only if walking
Follow the path down |goto 74.98,50.04 < 7 |only if walking
Follow the path |goto 74.76,50.65 < 7 |only if walking
Follow the path up |goto 74.20,51.61 < 7 |only if walking
Follow the path |goto 73.79,52.14 < 7 |only if walking
Follow the path |goto 73.43,52.76 < 7 |only if walking
Follow the path |goto 73.36,53.64 < 7 |only if walking
Continue following the path |goto 74.70,55.86 < 7 |only if walking
talk Krag'wa the Huge##120551
turnin A True Loa Feast##47621 |goto 75.43,56.62
turnin A Magical Glow##47622 |goto 75.43,56.62
accept Totemic Restoration##47540 |goto 75.43,56.62
step
click Frog Totem Pile##272391
Activate the Frog Totem Pile |q 47540/1 |goto 75.21,56.69 |count 1
step
click Frog Totem Pile##272391
Activate the Frog Totem Pile |q 47540/1 |goto 75.33,56.38 |count 2
step
click Frog Totem Pile##272391
Activate the Frog Totem Pile |q 47540/1 |goto 75.65,56.35 |count 3
step
talk Krag'wa the Huge##120551
turnin Totemic Restoration##47540 |goto 75.42,56.62
accept Krag'wa the Terrible##47696 |goto 75.43,56.62
step
Follow the path |goto 74.72,55.99 < 7 |only if walking
Continue following the path |goto 73.27,53.54 < 7 |only if walking
Continue following the path |goto 72.93,53.23 < 7 |only if walking
Continue following the path |goto 70.31,53.63 < 7 |only if walking
Continue following the path |goto 67.69,55.60 < 7 |only if walking
Meet Krag'wa at Razorjaw River |q 47696/1 |goto 67.14,56.16
step
talk Krag'wa the Huge##124637
Tell him _"I am ready to fight the blood trolls."_
Speak with Krag'wa the Huge |invehicle |goto 67.14,56.16 |q 47696
stickystart "Slay_Blood_Troll_Forces"
step
kill Ren'Zuli##124628 |q 47696/3 |goto 60.05,53.30
|tip He's mounted on a tyrannosaurus rex.
|tip Use the abilities on your action bar.
step
label "Slay_Blood_Troll_Forces"
Kill Bloodhunter enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Blood Troll Forces |q 47696/2 |goto 62.13,56.73
step
Return to The Frogmarsh |goto 72.98,52.55 < 7 |c |q 47696
step
Follow the path |goto 73.30,53.71 < 7 |only if walking
Continue following the path |goto 74.66,55.94 < 7 |only if walking
talk Krag'wa the Huge##120551
turnin Krag'wa the Terrible##47696 |goto 75.43,56.63
accept To Serve Krag'wa##47918 |goto 75.43,56.63
step
talk Shadow Hunter Mutumba##124641
accept Krag'wa's Aid##47697 |goto 75.17,56.67
step
Follow the path |goto 74.70,55.88 < 7 |only if walking
Continue following the path |goto 73.35,53.48 < 7 |only if walking
Continue following the path |goto 73.47,52.60 < 7 |only if walking
Continue following the path |goto 74.38,52.11 < 7 |only if walking
Follow the path up |goto 75.43,52.11 < 7 |only if walking
Continue up the path |goto 76.69,52.39 < 7 |only if walking
Continue up the path |goto 77.53,53.04 < 7 |only if walking
talk Shadow Hunter Narez##125317
turnin To Serve Krag'wa##47918 |goto 77.74,53.17
accept Krag'wa's Chosen##48090 |goto 77.74,53.17
accept Vengeance of the Frogs##48092 |goto 77.74,53.17
step
Watch the dialogue
accept Nagating the Threat##48093 |goto 77.74,53.17
|tip You will automatically accept this quest.
stickystart "Disrupt_the_Naga_Encampment"
step
Follow the path |goto 79.03,53.48 < 7 |only if walking
use the Empowerment Potion##158071
|tip Use it on Wok'grug the Clever.
Rescue Wok'grug the Clever |q 48090/3 |goto 79.37,53.85
step
Follow the path |goto 80.38,51.53 < 7 |only if walking
use the Empowerment Potion##158071
|tip Use it on Krol'dra the Wise.
Rescue Krol'dra the Wise |q 48090/2 |goto 80.35,50.31
step
Follow the path |goto 81.32,53.95 < 7 |only if walking
use the Empowerment Potion##158071
|tip Use it on Wag'shash the Bold.
Rescue Wag'shash the Bold |q 48090/1 |goto 82.36,55.79
step
Follow the path |goto 83.54,54.66 < 10 |only if walking
Follow the path |goto 84.70,54.48 < 10 |only if walking
kill Priestess Zaldraxia##125328 |q 48092/1 |goto 85.33,54.90
step
label "Disrupt_the_Naga_Encampment"
Kill enemies around this area
click Frog Container##272754+
|tip They look like glass tanks of water in golden stands on the ground around this area.
Disrupt the Naga Encampment |q 48093/1 |goto 81.77,53.28
step
Follow the path |goto 79.80,54.43 < 7 |only if walking
Follow the path |goto 79.12,54.60 < 7 |only if walking
talk Shadow Hunter Narez##125317
turnin Krag'wa's Chosen##48090 |goto 77.74,53.17
turnin Vengeance of the Frogs##48092 |goto 77.74,53.17
step
talk Princess Talanji##126213
turnin Krag'wa's Aid##47697 |goto 67.42,42.24
step
Follow the path |goto 67.11,42.23 < 5 |only if walking
talk Yash##131993
accept A Chance Sighting##50934 |goto 66.84,41.94
step
Follow the path |goto 67.42,41.90 < 5 |only if walking
Follow the path |goto 67.76,41.47 < 5 |only if walking
Continue following the path |goto 69.33,43.08 < 7 |only if walking
Continue following the path |goto 71.10,42.85 < 7 |only if walking
Continue following the path |goto 72.71,41.07 < 7 |only if walking
Continue following the path |goto 73.34,40.56 < 7 |only if walking
Continue following the path |goto 74.12,39.88 < 7 |only if walking
Locate Patch |q 47631/1 |goto 74.59,38.86
step
talk Patch##123178
turnin Rendezvous with the Libation##47631 |goto 74.59,38.86
accept No Goblin Left Behind##47597 |goto 74.59,38.86
step
talk Ticker##123436
accept Revenge: Served Hot##47599 |goto 74.76,39.01
step
accept The Libation's Liberation##47756 |goto 76.02,36.85
|tip You will automatically accept this quest.
stickystart "Kill_Vilescale_Behemoths"
stickystart "Defeat_the_Vilescale_Naga"
step
Follow the path |goto 76.13,36.75 < 10 |only if walking
Follow the path |goto 77.25,36.06 < 7 |only if walking
Follow the path |goto 77.93,35.95 < 7 |only if walking
click Airtight Escape Pod##271664
Rescue Newt |q 47597/2 |goto 79.30,36.73
step
Follow the path |goto 78.01,34.94 < 7 |only if walking
Follow the path |goto 77.35,34.00 < 7 |only if walking
clicknpc Grit##123233
Rescue Grit |q 47597/1 |goto 76.99,32.65
step
Follow the path |goto 77.48,33.04 < 7 |only if walking
Run down the stairs |goto 78.74,31.79 < 5 |only if walking
Follow the path |goto 79.03,32.19 < 5 |only if walking
Follow the path |goto 79.67,32.72 < 7 |only if walking
Follow the path |goto 80.02,32.64 < 7 |only if walking
click Naga Cage##279661
Rescue Volt |q 47597/3 |goto 79.97,32.39
step
label "Kill_Vilescale_Behemoths"
use Ticker's Rocket Launcher##151363
|tip Use it on Vilescale Behemoths.
kill 4 Vilescale Behemoth##123461 |q 47599/1 |goto 79.96,33.05
step
label "Defeat_the_Vilescale_Naga"
Kill enemies around this area
clicknpc Injured Sailor##123539+
|tip They look like friendly Horde NPC's kneeling on the ground around this area.
Defeat the Vilescale Naga |q 47756/1 |goto 79.96,33.05
step
Follow the path |goto 80.60,31.92 < 10 |only if walking
Follow the path |goto 80.98,30.29 < 7 |only if walking
Continue following the path |goto 81.28,27.92 < 7 |only if walking
Continue following the path |goto 81.36,27.31 < 10 |only if walking
talk Zibir the Wingmaster##122198
fpath Forlorn Ruins |goto 82.15,26.69
step
Enter the building |goto 82.12,26.97 < 3 |only if walking
talk Patch##123544
|tip Inside the building.
turnin No Goblin Left Behind##47597 |goto 82.37,27.29
step
talk Ticker##123548
|tip Inside the building.
turnin Revenge: Served Hot##47599 |goto 82.39,27.20
accept There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
accept Head of the Viper##47711 |goto 82.37,27.30
step
talk Newt##123545
|tip Inside the building.
accept Pilfering and Fencing##47598 |goto 82.28,27.41
stickystart "Collect_Ancient_Titan_Relics"
step
Leave the building |goto 82.10,26.93 < 3 |walk
Follow the path |goto 80.62,26.94 < 7 |only if walking
Follow the path |goto 79.64,26.82 < 7 |only if walking
click Broken Elevating Gear##271747
collect Broken Elevating Gears##151209 |q 47596/2 |goto 79.15,27.43
step
kill Lord Slithin##123550 |q 47711/1 |goto 78.64,25.15
step
Follow the path |goto 78.13,25.39 < 7 |only if walking
click Damaged Artillery Barrel##271746
collect Damaged A.M.O.D. Barrel##151208 |q 47596/1 |goto 77.67,25.28
step
Follow the path |goto 77.75,24.21 < 10 |only if walking
Follow the path |goto 78.93,23.23 < 7 |only if walking
Run up the ramp |goto 79.39,22.46 < 5 |only if walking
click Shattered Firing Mechanism##271748
collect Shattered Firing Mechanism##151210 |q 47596/3 |goto 79.57,22.25
step
label "Collect_Ancient_Titan_Relics"
Kill Vilescale enemies around this area
collect 20 Ancient Titan Relics##151202 |q 47598/1 |goto 79.14,22.83
step
Follow the path |goto 79.41,23.07 < 7 |only if walking
Continue following the path |goto 81.34,25.82 < 7 |only if walking
Enter the building |goto 82.11,26.95 < 3 |walk
talk Ticker##123548
|tip Inside the building.
turnin There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
turnin Head of the Viper##47711 |goto 82.37,27.29
step
talk Newt##123545
|tip Inside the building.
turnin Pilfering and Fencing##47598 |goto 82.28,27.41
step
talk Patch##123544
|tip Inside the building.
accept Field Evaluation##47601 |goto 82.37,27.30
step
Leave the building |goto 82.15,27.00 < 3 |only if walking
clicknpc A.M.O.D.##123637
Mount the A.M.O.D. |q 47601/1 |goto 81.45,26.02
step
Watch the dialogue
Kill Vilescale enemies around this area
|tip Use the abilities on your action bar.
Slay #40# Naga Forces |q 47601/2
step
kill Grobathan##123486
|tip Use the abilities on your action bar.
Slay Grobathan |q 47601/3
step
talk Patch##123878
turnin Field Evaluation##47601 |goto 81.34,26.09
accept Ready For Action##47602 |goto 81.34,26.09
step
Watch the dialogue
clicknpc Newt's Emergency Rocket##125244
Choose _Let's ride out of here._
Obtain a Ride From Newt's Emergency Rocket |q 47602/1 |goto 81.31,26.22
step
Travel to Gloom Hollow |goto 67.16,43.42 < 7 |c |q 47602 |notravel
step
Return to Talanji |q 47602/2 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Ready For Action##47602 |goto 67.42,42.24
step
talk Lashk##131978
accept Slumber No More##49932 |goto 67.49,41.96
step
Follow the path up |goto 67.54,41.50 < 5 |only if walking
Follow the path |goto 67.40,41.21 < 5 |only if walking
Follow the path down |goto 67.44,40.87 < 5 |only if walking
Follow the path |goto 67.59,40.48 < 7 |only if walking
Follow the path up |goto 67.14,38.93 < 5 |only if walking
Follow the path |goto 67.08,38.88 < 5 |only if walking
clicknpc Deactivated Titan Keeper##131299
Awaken the Deactivated Titan Keeper |q 49932/1 |goto 66.91,38.87
step
click Titan Keeper Data Core##280480
collect Damaged Core##156593 |q 49932/2 |goto 66.95,38.79
step
clicknpc Deactivated Titan Keeper##131299
Install the Core |q 49932/3 |goto 66.92,38.86
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
turnin Slumber No More##49932 |goto 66.90,38.91
accept Recovering Remnants##49937 |goto 66.90,38.91
accept Corrupted Earth##49938 |goto 66.90,38.91
accept How to Repair a Titan Keeper##49935 |goto 66.90,38.91
stickystart "Kill_Blood_Infused_Lashers"
stickystart "Collect_Titan_Plating"
step
Follow the path |goto 68.66,39.59 < 7 |only if walking
click Keeper Shavras's Core##281417
collect Keeper Shavras's Core##156521 |q 49935/1 |goto 69.25,39.77
step
Follow the path |goto 68.87,39.68 < 7 |only if walking
Continue following the path |goto 67.37,37.93 < 7 |only if walking
Continue following the path |goto 66.45,36.67 < 7 |only if walking
Continue following the path |goto 66.25,35.80 < 7 |only if walking
clicknpc Titan Keeper Bolcan##131256
Watch the dialogue
kill Titan Keeper Bolcan##131256
collect Keeper Bolcan's Core##156522 |q 49935/2 |goto 66.19,33.65
step
label "Kill_Blood_Infused_Lashers"
kill 25 Blood-Infused Lasher##131168 |q 49938/1 |goto 66.72,34.96
step
label "Collect_Titan_Plating"
kill Naz'wathan Spectre##131169+
collect 25 Titan Plating##156524 |q 49937/1 |goto 66.72,34.96
step
talk Titan Keeper Hezrel##131253
turnin Recovering Remnants##49937 |goto 68.68,35.11
turnin Corrupted Earth##49938 |goto 68.68,35.11
turnin How to Repair a Titan Keeper##49935 |goto 68.68,35.11
accept Bone Procession##49941 |goto 68.68,35.11
accept Unwelcome Undead##49949 |goto 68.68,35.11
stickystart "Slay_Naz'wathan_Undead"
step
clicknpc Minor Corruption##133941
accept Blood Purification##49950 |goto 69.25,33.81
stickystart "Collect_Reanimated_Monstrosity_Bones"
step
Run up the stairs |goto 69.38,33.70 < 5 |only if walking
Follow the path |goto 69.54,33.42 < 5 |only if walking
Run up the stairs |goto 69.53,32.06 < 5 |only if walking
Follow the path |goto 69.64,31.82 < 5 |only if walking
clicknpc Corrupted Energy##131286+
|tip They look like red orbs floating above the ground around this area.
Destroy #4# Corrupted Energy |q 49950/1 |goto 69.77,31.30
step
label "Slay_Naz'wathan_Undead"
Kill Naz'wathan enemies around this area
Slay #15# Naz'wathan Undead |q 49949/1 |goto 69.77,31.30
step
label "Collect_Reanimated_Monstrosity_Bones"
use the Titan Manipulator##156528
|tip Use it on Reanimated Monstrosities around this area.
kill Reanimated Monstrosity##131285+
collect 25 Reanimated Monstrosity Bone##156527 |q 49941/1 |goto 69.77,31.30
step
Run down the stairs |goto 69.76,33.81 < 5 |only if walking
Follow the path |goto 69.49,34.14 < 5 |only if walking
talk Titan Keeper Hezrel##131253
turnin Bone Procession##49941 |goto 68.68,35.11
turnin Unwelcome Undead##49949 |goto 68.68,35.11
turnin Blood Purification##49950 |goto 68.68,35.11
accept Not Fit for This Plane##49955 |goto 68.68,35.11
accept Void is Prohibited##49956 |goto 68.68,35.11
accept Protocol Recovery##49957 |goto 68.68,35.11
stickystart "Seal_Void_Portals"
stickystart "Destroy_Faceless_Ones"
step
Run up the stairs |goto 69.52,34.14 < 5 |only if walking
Follow the path |goto 69.80,33.81 < 5 |only if walking
Run up the stairs |goto 70.69,33.78 < 5 |only if walking
Follow the path |goto 70.79,33.62 < 5 |only if walking
Follow the path |goto 71.00,33.17 < 5 |only if walking
Run up the stairs |goto 70.94,32.92 < 5 |only if walking
Follow the path |goto 70.83,32.73 < 5 |only if walking
Run up the stairs |goto 70.67,31.81 < 5 |only if walking
Follow the path |goto 70.58,31.43 < 5 |only if walking
Run up the stairs |goto 70.56,31.19 < 5 |only if walking
Follow the path |goto 71.12,30.38 < 5 |only if walking
Enter the building |goto 71.89,30.29 < 5 |walk
Follow the path |goto 72.11,30.19 < 3 |walk
Follow the path |goto 72.23,30.25 < 3 |walk
Follow the path |goto 72.30,30.11 < 3 |walk
Follow the path |goto 72.30,29.71 < 3 |walk
kill Overlord Kraxis##131153
|tip Inside the building.
collect Containment Protocol##156537 |q 49957/1 |goto 72.83,28.94
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Protocol Recovery##49957 |goto 72.47,29.37
step
Follow the path |goto 72.31,29.69 < 3 |walk
Follow the path |goto 72.15,29.70 < 3 |walk
Follow the path |goto 72.00,29.64 < 3 |walk
Follow the path |goto 71.95,29.81 < 3 |walk
Leave the building |goto 71.93,30.23 < 5 |c |q 49955
step
label "Seal_Void_Portals"
Follow the path |goto 72.30,29.69 < 5 |only if walking
Leave the building |goto 71.93,30.25 < 3 |only if walking
use the Void Disruptor##156542
|tip Use it next to Void Portals around this area.
|tip They look like swirling purple and black portals on the ground around this area.
Seal #4# Void Portal |q 49956/1 |goto 71.60,30.73
step
label "Destroy_Faceless_Ones"
Kill Faceless enemies around this area
Destroy #6# Faceless Ones |q 49955/1 |goto 71.60,30.73
step
Enter the building |goto 71.89,30.29 < 5 |walk
Follow the path |goto 72.11,30.19 < 3 |walk
Follow the path |goto 72.23,30.25 < 3 |walk
Follow the path |goto 72.30,30.11 < 3 |walk
Follow the path |goto 72.30,29.71 < 3 |walk
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Not Fit for This Plane##49955 |goto 72.47,29.37
turnin Void is Prohibited##49956 |goto 72.47,29.37
accept Containment Procedure##49980 |goto 72.47,29.37
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
Tell him _"Hezrel, begin your scans to find a solution to the Old God corruption with Nazmir."_
Watch the dialogue
Speak to Titan Keeper Hezrel |q 49980/1 |goto 72.47,29.36
step
kill Grand Ma'da Ateena##131515 |q 49980/2 |goto 72.82,28.92
|tip Inside the building.
|tip Princess Talanji will help you fight her.
|tip Run inside the yellow bubble Titan Keeper Hezrel casts around himself during the fight.
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Containment Procedure##49980 |goto 72.47,29.36
accept Return to Gloom Hollow##49985 |goto 72.47,29.36
step
Follow the path |goto 72.31,29.69 < 3 |walk
Follow the path |goto 72.15,29.70 < 3 |walk
Follow the path |goto 72.00,29.64 < 3 |walk
Follow the path |goto 71.95,29.81 < 3 |walk
Leave the building |goto 71.93,30.23 < 5 |walk
clicknpc Titan Keeper Hezrel##131501
Jump onto Titan Keeper Hezrel |invehicle |goto 71.85,30.39 |q 49985
step
Watch the dialogue
Ride Titan Keeper Hezrel back to Gloom Hollow |q 49985/1 |goto 66.01,39.13 |notravel
step
Follow the path |goto 65.30,38.37 < 7 |only if walking
Follow the path |goto 64.95,37.93 < 7 |only if walking
Continue following the path |goto 64.23,37.22 < 7 |only if walking
Continue following the path |goto 62.91,34.25 < 7 |only if walking
Continue following the path |goto 61.09,34.23 < 7 |only if walking
Follow the path |goto 59.19,33.44 < 7 |only if walking
kill Ayame##133980
|tip It looks like a large snake that slithers around this area.
|tip You may need help with this.
collect Ayame's Head##162118 |q 52477/1 |goto 58.29,34.16
step
talk Korkush##131988
turnin WANTED: Ayame##52477 |goto 67.76,41.85
step
talk Princess Talanji##126213
turnin Return to Gloom Hollow##49985 |goto 67.43,42.24
accept Down by the Riverside##49569 |goto 67.43,42.24
step
Run down the stairs |goto 66.84,42.45 < 5 |only if walking
Follow the path |goto 66.56,42.77 < 7 |only if walking
Follow the path |goto 63.87,47.09 < 7 |only if walking
Continue following the path |goto 63.59,48.14 < 7 |only if walking
click Vial of Antidote##278197
turnin A Chance Sighting##50934 |goto 64.01,50.39
accept Aid the Wounded##49366 |goto 64.01,50.39
step
use the Vial of Liquid##153676
|tip Use it next to Guard Satao.
Administer the Antidote |q 49366/1 |goto 63.99,50.39
step
Follow the path |goto 63.50,52.29 < 7 |only if walking
Watch the dialogue
talk Guard Satao##129165
|tip Under the bridge.
turnin Aid the Wounded##49366 |goto 63.16,52.69
accept Rescue the Chronicler##49370 |goto 63.16,52.69
accept Bad Juju##49380 |goto 63.16,52.69
accept Off With Her Head##49377 |goto 63.16,52.69
step
click Cage Anchor##280952
Release Chronicler Jabari |q 49370/1 |goto 62.53,53.56
step
Watch the dialogue
talk Chronicler Jabari##129164
turnin Rescue the Chronicler##49370 |goto 62.72,53.58
accept Earn Their Trust##49378 |goto 62.72,53.58
accept Crawg Free Zone##49379 |goto 62.72,53.58
step
Follow the path |goto 62.23,53.82 < 5 |only if walking
use the Sample Bottle##153678
Drain the Eastern Blood Orb |q 49380/2 |goto 62.17,54.40
step
Follow the path |goto 61.90,54.08 < 7 |only if walking
clicknpc Crawgling##128808
Bond with a Crawgling |q 49378/1 |goto 61.80,52.53
stickystart "Feed_The_Crawgling"
stickystart "Kill_Battle_Crawgs"
step
Follow the path |goto 61.37,53.05 < 7 |only if walking
use the Sample Bottle##153678
Drain the Western Blood Orb |q 49380/1 |goto 60.21,53.42
step
use the Sample Bottle##153678
Drain the Southern Blood Orb |q 49380/3 |goto 60.48,55.77
step
kill Warmother Nagla##128770
collect Nagla's Head##153572 |q 49377/1 |goto 62.15,57.34
step
label "Feed_The_Crawgling"
Kill enemies around this area
Feed the Crawgling #10# Times |q 49378/2 |goto 61.84,56.79
step
label "Kill_Battle_Crawgs"
kill 5 Battle Crawg##128780 |q 49379/1 |goto 61.84,56.79
step
Follow the path |goto 61.89,53.93 < 7 |only if walking
talk Guard Satao##129165
|tip Under the bridge.
turnin Off With Her Head##49377 |goto 63.15,52.70
turnin Bad Juju##49380 |goto 63.15,52.70
step
talk Chronicler Jabari##129164
|tip Under the bridge.
turnin Earn Their Trust##49378 |goto 63.17,52.75
turnin Crawg Free Zone##49379 |goto 63.17,52.75
accept It Seems You've Made a Friend##49382 |goto 63.17,52.75
step
Follow the path |goto 63.81,52.27 < 7 |only if walking
Continue following the path |goto 66.06,52.89 < 7 |only if walking
Continue following the path |goto 67.14,54.27 < 7 |only if walking
Continue following the path |goto 68.82,54.89 < 7 |only if walking
Continue following the path |goto 70.02,53.74 < 7 |only if walking
Follow the path up |goto 72.33,53.24 < 7 |only if walking
Follow the path |goto 73.07,53.35 < 7 |only if walking
Follow the path |goto 73.35,53.67 < 7 |only if walking
Seek Out Krag'wa |q 49382/1 |goto 74.72,55.95
step
talk Krag'wa the Huge##120551
turnin It Seems You've Made a Friend##49382 |goto 75.43,56.64
step
Run down the stairs |goto 66.86,42.43 < 5 |only if walking
Follow the path |goto 66.63,42.71 < 5 |only if walking
Follow the path |goto 66.45,42.94 < 7 |only if walking
Follow the path |goto 65.81,44.39 < 7 |only if walking
talk Patch##130056
Tell him _"I'm ready, let's hop on this barge and get back to Zul'jan."_
Speak with Patch to Board the Barge |q 49569/1 |goto 65.71,45.10
step
Watch the dialogue
Kill enemies around this area
|tip They are all along the river banks as you sail.
|tip Kill the hydra in the water when you stop sailing.
|tip Use the abilities on your action bar.
Sail Down the River |q 49569/2
step
Travel to the Shattered River |goto 39.89,84.92 < 7 |noway |c |q 49569
step
Follow the path up |goto 40.15,82.40 < 7 |only if walking
Run up the stairs |goto 39.97,81.03 < 5 |only if walking
Follow the path |goto 39.89,80.86 < 5 |only if walking
Run up the stairs |goto 39.43,80.25 < 5 |only if walking
Follow the path |goto 39.43,80.10 < 5 |only if walking
Run up the stairs |goto 39.01,78.66 < 5 |only if walking
Enter the building |goto 38.79,78.65 < 3 |walk
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 50808 |future
step
Leave the building |goto 38.81,78.64 < 3 |walk
Follow the path |goto 39.03,78.59 < 5 |only if walking
talk Princess Talanji##121288
turnin Down by the Riverside##49569 |goto 39.40,78.15
accept Rally the Warriors##50076 |goto 39.40,78.15
step
click Ancient Gong##280611
Ring the Ancient Gong |q 50076/1 |goto 39.37,77.48
step
Watch the dialogue
Hear Talanji's Speech |q 50076/2 |goto 39.34,77.68
step
talk Princess Talanji##121288
turnin Rally the Warriors##50076 |goto 39.34,77.69
accept The Battle of Bloodfire Ravine##50138 |goto 39.34,77.69
step
Follow the path |goto 39.51,77.95 < 5 |only if walking
Run down the stairs |goto 39.91,77.54 < 5 |only if walking
Follow the path |goto 39.97,77.28 < 5 |only if walking
Run down the stairs |goto 39.43,76.50 < 5 |only if walking
Follow the path |goto 39.40,76.09 < 5 |only if walking
Follow the path |goto 39.98,74.97 < 7 |only if walking
Meet Talanji at Bloodfire Ravine |q 50138/1 |goto 42.29,72.47
step
_Next to you:_
talk Princess Talanji##132624
accept Undying Totems##50078
stickystart "Slay_Blood_Trolls_2"
step
Follow the path |goto 42.55,72.44 < 7 |only if walking
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.46,72.26 |count 1
step
Follow the path |goto 43.22,71.94 < 7 |only if walking
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.16,71.29 |count 2
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.75,71.19 |count 3
step
label "Slay_Blood_Trolls_2"
Kill Bloodfire enemies around this area
Slay #8# Blood Trolls |q 50138/2 |goto 43.56,71.26
step
_Next to you:_
talk Princess Talanji##132624
turnin Undying Totems##50078
step
Follow the path |goto 43.88,70.45 < 7 |only if walking
Follow the path |goto 44.26,69.68 < 7 |only if walking
Watch the dialogue
kill Warmother Molaka##132230 |q 50138/3 |goto 44.74,68.64
step
talk Princess Talanji##132333
turnin The Battle of Bloodfire Ravine##50138 |goto 44.95,68.62
accept The Road of Pain##50081 |goto 44.95,68.62
step
talk Patch##132988
accept Boom goes the Bomb##50079 |goto 44.97,68.34
stickystart "Heal_Zandalari_Soldiers"
step
Cross the bridge |goto 44.86,68.16 < 5 |only if walking
Follow the path |goto 44.69,67.46 < 5 |only if walking
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the First Barricade |q 50079/1 |goto 44.45,66.80
step
Cross the bridge |goto 44.44,66.81 < 5 |only if walking
Follow the path |goto 44.36,65.95 < 5 |only if walking
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Second Barricade |q 50079/2 |goto 44.18,64.98
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Third Barricade |q 50079/3 |goto 44.16,63.59
step
label "Heal_Zandalari_Soldiers"
clicknpc Zandalari Soldier##132985+
|tip They look like injured trolls laying on the ground around this area.
Heal #6# Zandalari Soldiers |q 50081/1 |goto 44.13,64.36
step
Follow the path |goto 44.16,63.56 < 7 |only if walking
Watch the dialogue
talk Princess Talanji##133125
turnin The Road of Pain##50081 |goto 44.19,62.85
turnin Boom goes the Bomb##50079 |goto 44.19,62.85
accept Target of Opportunity##50082 |goto 44.19,62.85
step
Cross the bridge |goto 44.32,62.51 < 5 |only if walking
Follow the path |goto 44.39,62.17 < 5 |only if walking
Cross the bridge |goto 44.51,61.81 < 5 |only if walking
Follow the path |goto 44.70,61.44 < 5 |only if walking
talk Princess Talanji##133401
Tell her _"I'm ready."_
Meet with Talanji |q 50082/1 |goto 44.98,60.95
step
Watch the dialogue
Kill the enemies that attack in waves
kill Decaying Hulk##133400
Confront Grand Ma'da Ateena |q 50082/2 |goto 45.58,59.85
step
talk Princess Talanji##133125
turnin Target of Opportunity##50082 |goto 45.21,60.54
step
Watch the dialogue
talk Princess Talanji##133125
accept Petitioning Krag'wa##52073 |goto 45.21,60.54
step
Follow the path |goto 45.55,59.10 < 7 |only if walking
talk Rokhan##133471
accept The Crawg Ma'da##50083 |goto 45.40,58.59
step
Cross the bridge |goto 45.47,58.12 < 5 |only if walking
Follow the path |goto 45.89,57.14 < 7 |only if walking
Follow the path |goto 46.05,56.36 < 7 |only if walking
Follow the path |goto 46.46,55.97 < 7 |only if walking |goto 46.73,55.56
kill Vicious War Crawg##133173+
collect Crawg Poison Gland##156868 |q 50083/1 |goto 46.71,55.59
step
Follow the path up |goto 47.74,54.49 < 7 |only if walking
Follow the path |goto 47.91,53.65 < 5 |only if walking
Cross the bridge |goto 47.46,53.80 < 5 |only if walking
Enter the building |goto 47.13,53.95 < 3 |walk
use the Crawg Poison Gland##156868
|tip Use it on Amaka the Crawg Ma'da to weaken her.
kill Amaka the Crawg Ma'da##133172 |q 50083/2 |goto 46.91,54.11
|tip Inside the building.
step
Leave the building |goto 47.13,53.95 < 3 |walk
Follow the path |goto 47.48,53.81 < 5 |only if walking
talk Rokhan##133338
turnin The Crawg Ma'da##50083 |goto 48.31,53.54
accept A Message of Blood and Fire##50085 |goto 48.31,53.54
step
accept Raiding the Raiders##50080 |goto 48.60,52.31
|tip You will automatically accept this quest.
stickystart "Assault_Agwamar"
step
use the Wand of Embers##156931
|tip Use it on the buildings around this area.
Burn #8# Blood Troll Huts |q 50085/1 |goto 48.60,52.31
step
label "Assault_Agwamar"
Kill enemies around this area
clicknpc Zandalari Captive##133304+
|tip They look like trolls tied to wooden poles on the ground around this area.
click Supply Crate+
|tip They look like wooden boxes on the ground around this area.
Assault Agwamar |q 50080/1 |goto 48.60,52.31
step
Follow the path up |goto 48.54,51.37 < 7 |only if walking
Follow the path up |goto 46.96,51.33 < 7 |only if walking
Follow the path |goto 45.73,51.37 < 7 |only if walking
Cross the bridge |goto 45.61,52.22 < 7 |only if walking
Follow the path |goto 45.67,52.95 < 7 |only if walking
Follow the path up |goto 45.50,53.50 < 7 |only if walking
Follow the path up |goto 45.24,53.81 < 7 |only if walking
talk Rokhan##133475
turnin A Message of Blood and Fire##50085 |goto 44.35,54.10
step
Jump down here |goto 44.86,54.11 < 5 |only if walking
Follow the path |goto 45.10,55.05 < 5 |only if walking
Jump down carefully here |goto 44.96,55.83 < 7 |only if walking
Follow the path up |goto 45.42,57.62 < 5 |only if walking
Follow the path |goto 45.31,58.18 < 5 |only if walking
Follow the path |goto 45.30,58.53 < 7 |only if walking
talk Krag'wa the Huge##140283
Tell him _"Krag'wa, the leader of the blood trolls has fled to the large structure in the distance. Please, lend us your assistance."_
Petition Krag'wa for Aid |q 52073/1 |goto 45.14,60.79
step
talk Krag'wa the Huge##140283
Tell him _"I am ready to go, Krag'wa."_
Ride with Krag'wa |invehicle |goto 45.19,60.70 |q 52073
step
Ride Krag'wa |q 52073/2 |goto 48.85,56.54
step
talk Princess Talanji##133476
turnin Petitioning Krag'wa##52073 |goto 49.39,57.18
accept Ateena's Fall##50087 |goto 49.39,57.18
step
Follow the path |goto 50.19,57.99 < 7 |only if walking
kill Grand Ma'da Ateena##133472 |q 50087/1 |goto 50.80,57.91
|tip Follow her when she teleports around.
|tip Avoid the pools of blood she sends at you.
step
Watch the dialogue
talk Princess Talanji##133480
turnin Ateena's Fall##50087 |goto 50.60,58.47
step
Watch the dialogue
talk Rokhan##140656
accept What Rots Beneath##51244 |goto 50.51,58.34
step
talk Rokhan##140656
Tell him _"Let's fly down and meet with Titan Keeper Hezrel."_
Fly Down to the Altar of Rot |q 51244/1 |goto 50.51,58.35
step
Fly with Rokhan |goto 53.14,69.22 < 10 |c |q 51244 |notravel
step
Follow the path down |goto 53.61,70.13 < 7 |only if walking
Follow the path down |goto 53.37,70.79 < 7 |only if walking
Follow the path down |goto 52.37,68.36 < 7 |only if walking
talk Titan Keeper Hezrel##137112
Speak to Titan Keeper Hezrel |q 51244/2 |goto 51.75,65.70
step
talk Titan Keeper Hezrel##137112
turnin What Rots Beneath##51244 |goto 51.75,65.70
accept The Underrot: Sealing G'huun's Corruption##51302 |goto 51.75,65.70
step
talk Rokhan##137113
accept Halting the Empire's Fall##50808 |goto 51.89,65.54
step
talk Rokhan##137113
Tell him _"Take me back to Zul'jan."_
Secure a Flight to Zul'jan |invehicle |goto 51.89,65.55 |q 50808
step
Fly Back to Zul'jan |goto 38.89,78.13 < 7 |c |q 50808 |notravel
step
Follow the path |goto Dazar'alor/0 50.20,41.64 < 7 |only if walking
Enter the building |goto Dazar'alor/0 49.97,42.11 < 5 |walk
Follow the path |goto Dazar'alor/1 46.68,28.61 < 5 |walk
Run up the stairs |goto Dazar'alor/1 42.53,45.72 < 5 |walk
Follow the path |goto Dazar'alor/2 41.22,56.39 < 3 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Halting the Empire's Fall##50808 |goto Dazar'alor/2 41.41,72.22
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Vol'dun",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Voldun storylines:\n\nDangers in the Desert\nA City of Secrets\nStorming the Spire\nUnlikely Allies\nThe Warguard's Fate\nThe Three Keepers\nAtul'Aman",
condition_suggested=function() return level >= 110 end,
startlevel=110.0,
endlevel=120.0,
},[[
step
talk Princess Talanji##133050
accept Discreet Discussions##47313 |goto Dazar'alor/2 41.14,66.73
step
Run down the stairs |goto 41.15,56.23 < 3 |walk
Follow the path |goto Dazar'alor/1 43.15,45.72 < 5 |walk
Follow the path |goto Dazar'alor/1 48.32,27.81 < 5 |walk
Leave the building |goto Dazar'alor/0 49.96,42.14 < 5 |walk
Follow the path |goto Dazar'alor/0 50.24,41.58 < 7 |only if walking
Run down the stairs |goto Dazar'alor/0 50.89,40.34 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.88,38.27 < 5 |only if walking
Run down the stairs |goto Dazar'alor/0 50.68,37.98 < 5 |only if walking
talk Enforcer Sekal##122229
Ask her _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto Dazar'alor/0 50.09,37.45 |count 1
step
Run down the stairs |goto 50.60,36.88 < 5 |only if walking
Follow the path |goto 51.48,37.09 < 5 |only if walking
Run down the stairs |goto 51.76,37.64 < 5 |only if walking
Follow the path |goto 51.88,39.22 < 5 |only if walking
Run down the stairs |goto 52.29,38.94 < 5 |only if walking
talk Enforcer Gortok##123243
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 52.19,37.52 |count 2
step
Jump down here |goto 52.89,36.33 < 5 |only if walking
talk Enforcer Dakanji##122231
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 54.27,35.85 |count 3
step
Follow the path |goto 53.27,32.82 < 5 |only if walking
Find Someone Willing to Talk |q 47313/2 |goto 51.58,31.82
step
talk Bladeguard Kaja##122817
turnin Discreet Discussions##47313 |goto 51.58,31.82
accept Rumors of Exile##47314 |goto 51.58,31.82
step
Run down the stairs |goto 51.28,31.53 < 5 |only if walking
Follow the path |goto 51.15,29.45 < 5 |only if walking
Follow the path |goto 50.59,29.56 < 7 |only if walking
Run up the stairs |goto 49.99,30.98 < 5 |only if walking
Watch the dialogue
|tip Follow Bladeguard Kaja as she walks.
talk Bladeguard Kaja##122320
turnin Rumors of Exile##47314 |goto 49.92,31.65
accept Into the Dunes##47315 |goto 49.92,31.65
step
clicknpc Pterrordax##122347
Mount the Pterrordax |q 47315/1 |goto 50.03,31.67
step
Watch the dialogue
Fly into Vol'dun |q 47315/2 |goto Vol'dun/0 66.08,36.43 |notravel
step
Watch the dialogue
talk Nisha##130455
turnin Into the Dunes##47315 |goto 65.98,36.65
accept Armed and Ready##51357 |goto 65.98,36.65
step
click Sethrak Scythe
Choose a Weapon |q 51357/1 |goto 65.95,36.65
step
talk Nisha##130455
turnin Armed and Ready##51357 |goto 65.98,36.65
step
_Next to you:_
talk Nisha##130474
accept Answering Their Attacks##47327
accept Dressed for Battle##49676
stickystart "Slay_Sethraks"
step
Follow the path up |goto Vol'dun/0 65.90,37.06 < 7 |walk
Follow the path up |goto 65.49,37.28 < 7 |walk
Continue up the path |goto 65.10,37.13 < 7 |walk
Leave the cave |goto 64.90,36.23 < 5 |walk
Follow the path |goto 64.59,35.29 < 7 |only if walking
click Stolen Vulpera Banner##278686
Find the Banner |q 49676/1 |goto 64.67,33.91
step
Follow the path |goto 64.36,33.71 < 7 |only if walking
Follow the path down |goto 63.99,33.19 < 7 |only if walking
Follow the path |goto 63.62,32.87 < 5 |only if walking
click Sethrak Skull##278685
Find the Helmet |q 49676/2 |goto 63.63,32.70
step
Follow the path down |goto 63.12,32.99 < 7 |only if walking
Follow the path down |goto 62.87,33.12 < 7 |only if walking
Continue down the path |goto 62.13,32.92 < 7 |only if walking
Follow the path |goto 61.90,33.17 < 7 |only if walking
click Explosives
Find the Explosives |q 49676/3 |goto 61.88,33.78
step
_Next to you:_
talk Nisha##130474
turnin Dressed for Battle##49676
accept Plans for Attack##49677
step
label "Slay_Sethraks"
Kill Sethrak enemies around this area
Slay #12# Sethrak |q 47327/1 |goto 61.72,33.41
step
_Next to you:_
talk Nisha##130474
turnin Answering Their Attacks##47327
step
Follow the path |goto 61.52,33.17 < 7 |only if walking
Follow the path |goto 61.11,32.71 < 7 |only if walking
kill Fangcaller Sraka##130466
collect Nisha's Attack Plans##158651 |q 49677/1 |goto 60.88,32.66
step
_Next to you:_
talk Nisha##130474
turnin Plans for Attack##49677
accept An Explosive Exit##51364
step
Follow the path |goto 61.14,32.72 < 7 |only if walking
Follow the path down |goto 61.13,33.05 < 7 |only if walking
Follow the path down |goto 60.73,33.44 < 7 |only if walking
Follow the path |goto 60.45,34.23 < 7 |only if walking
Find Nisha's Wagon |q 51364/1 |goto 60.06,34.58
step
clicknpc Nisha's Wagon##137492
Board Nisha's Wagon |q 51364/2 |goto 60.06,34.58
step
Watch the dialogue
|tip Use the "Volatile Potion" ability on the enemies that attack.
|tip It appears as a button on the screen.
Defend Nisha's Wagon |q 51364/3 |goto 58.23,40.55
step
Ride to Vulpera Hideaway |q 51364/4 |goto 57.08,50.38 |notravel
step
Follow the path |goto 57.07,50.39 < 5 |only if walking
talk Kiro##123586
turnin An Explosive Exit##51364 |goto 56.79,50.54
accept Restorative Venom##47319 |goto 56.79,50.54
step
talk Meerah##122583
accept Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Hagashi##124108
home Vulpera Hideaway |goto 56.78,49.81 |q 48895 |future
step
Follow the path up |goto 56.90,49.82 < 5 |only if walking
Follow the path |goto 56.99,49.62 < 5 |only if walking
talk Narishi##124107
fpath Vulpera Hideaway |goto 56.96,49.25
step
Follow the path |goto 56.76,49.02 < 5 |only if walking
Jump down here |goto 56.45,48.90 < 5 |only if walking
Follow the path up |goto 55.72,48.37 < 7 |only if walking
talk Vivi##135012
accept Missing Business##50739 |goto 55.20,48.38
stickystart "Revive_Sable_Polecats"
stickystart "Collect_Sandstinger_Venom_Glands"
step
Follow the path |goto 54.98,48.63 < 7 |only if walking
Follow the path |goto 54.66,48.73 < 7 |only if walking
Follow the path up |goto 54.35,49.31 < 7 |only if walking
Follow the path up |goto 54.29,49.71 < 7 |only if walking
clicknpc Vibrant Pricklevine##138107+
|tip They look like small red plants with teeth and green leaves on the ground around this area.
collect 8 Pricklevine Juice##160448 |q 51574/1 |goto 53.92,50.35
step
label "Revive_Sable_Polecats"
clicknpc Sable Polecat##135004+
|tip They look like sleeping cats on the ground around this area.
Revive #7# Sable Polecats |q 50739/1 |goto 53.92,50.35
step
label "Collect_Sandstinger_Venom_Glands"
Kill Sandstinger enemies around this area
collect 15 Sandstinger Venom Gland##160441 |q 47319/1 |goto 53.92,50.35
step
Follow the path up |goto 54.52,48.80 < 7 |only if walking
Follow the path |goto 54.96,48.64 < 7 |only if walking
talk Vivi##135012
turnin Missing Business##50739 |goto 55.20,48.38
step
Follow the path up |goto 55.99,49.31 < 7 |only if walking
Follow the path |goto 56.37,49.82 < 7 |only if walking
talk Meerah##122583
turnin Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Kiro##123586
turnin Restorative Venom##47319 |goto 56.79,50.54
accept A Balm to Calm##47320 |goto 56.79,50.54
step
use the Restorative Balm##150759
|tip Use it on Bladeguard Kaja.
Apply the Restorative Balm |q 47320/1 |goto 56.83,50.53
step
Watch the dialogue
talk Bladeguard Kaja##130341
turnin A Balm to Calm##47320 |goto 56.83,50.52
accept Searching for Survivors##47317 |goto 56.83,50.52
step
talk Kiro##123586
accept Knickknack Takeback##47321 |goto 56.79,50.53
step
talk Meerah##122583
accept Secrets in the Sand##47316 |goto 56.76,50.53
step
Follow the path down |goto 56.30,49.74 < 7 |only if walking
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 55.78,48.68 |count 1
step
Follow the path |goto 56.25,46.94 < 7 |only if walking
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 56.33,43.90 |count 2
step
Follow the path |goto 54.63,45.28 < 15 |only if walking
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.80,46.41 |count 3
step
Follow the path |goto 51.63,43.07 < 7 |only if walking
Follow the path |goto 51.74,42.63 < 7 |only if walking
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.78,41.80 |count 4
step
Follow the path down |goto 53.38,41.77 < 7 |only if walking
Follow the path |goto 54.19,42.34 < 7 |only if walking
talk Neri##137631
accept Aided Escape##47322 |goto 54.69,42.49
step
talk Mekaru##137629
accept A Meal for Birds##50755 |goto 54.75,42.40
step
Kill enemies around this area
Feed the Buzzards #8# Times |q 50755/1 |goto 57.77,42.33
step
clicknpc Bladeguard Jorana##122729
Find Jorana |q 47317/2 |goto 57.42,40.62
stickystart "Collect_Knickknacks"
step
Follow the path |goto 56.98,39.74 < 7 |only if walking
click Sethrak Cage##277876
Rescue Hakasi |q 47322/1 |goto 56.41,39.31
step
Follow the path |goto 56.52,39.64 < 7 |only if walking
Follow the path |goto 56.14,40.23 < 7 |only if walking
Follow the path up |goto 55.81,40.23 < 7 |only if walking
Follow the path |goto 55.42,40.02 < 7 |only if walking
Rescue Kipp |q 47322/2 |goto 54.77,40.29
step
Follow the path |goto 54.92,40.19 < 7 |only if walking
Follow the path |goto 54.93,39.82 < 5 |only if walking
Enter the cave |goto 54.84,39.66 < 3 |walk
click Tarkaj's Warblade##271014
|tip Inside the cave.
Find Tarkaj |q 47317/1 |goto 54.61,39.38
step
Leave the cave |goto 54.80,39.62 < 3 |c |q 47321
step
label "Collect_Knickknacks"
Kill enemies around this area
Collect #6# Knickknacks |q 47321/1 |goto 55.11,40.05
step
Follow the path down |goto 55.15,40.32 < 7 |only if walking
Follow the path |goto 55.15,41.67 < 7 |only if walking
talk Mekaru##137629
turnin A Meal for Birds##50755 |goto 54.75,42.40
step
talk Neri##137631
turnin Aided Escape##47322 |goto 54.69,42.49
step
talk Kiro##123586
turnin Knickknack Takeback##47321 |goto 56.79,50.54
step
talk Bladeguard Kaja##130341
turnin Searching for Survivors##47317 |goto 56.83,50.52
turnin Secrets in the Sand##47316 |goto 56.83,50.52
accept The Warguard's Trail##47959 |goto 56.83,50.52
step
talk Meerah##122583
Tell her _"We're ready to leave."_
Speak to Meerah |q 47959/1 |goto 56.76,50.53
step
Watch the dialogue
Ride Meerah's Caravan |q 47959/2 |goto 53.48,65.95 |notravel
step
talk Jorak##126696
turnin The Warguard's Trail##47959 |goto 52.97,66.53
accept Grozztok the Blackheart##48549 |goto 52.97,66.53
accept Stolen Satchels##48550 |goto 52.97,66.53
stickystart "Collect_Weathered_Satchels"
step
Follow the path up |goto 51.71,65.20 < 7 |only if walking
click Ranah's Wrench##291143
accept Ranah's Wrench##51829 |goto 50.70,64.66
step
Run up the stairs |goto 50.42,64.90 < 5 |only if walking
Run up the stairs |goto 50.20,65.29 < 5 |only if walking
Follow the path |goto 49.64,65.34 < 5 |only if walking
Watch the dialogue
kill Grozztok the Blackheart##126697 |q 48549/1 |goto 49.19,64.74
step
label "Collect_Weathered_Satchels"
Kill Sandfury enemies around this area
collect 5 Weathered Satchel##152660 |q 48550/1 |goto 49.45,65.34
step
Run down the stairs |goto 49.65,65.34 < 5 |only if walking
Follow the path |goto 50.18,65.30 < 5 |only if walking
Run down the stairs |goto 50.32,65.13 < 5 |only if walking
Follow the path |goto 50.41,64.83 < 5 |only if walking
Follow the path down |goto 50.74,64.54 < 5 |only if walking
Follow the path down |goto 51.55,65.19 < 7 |only if walking
talk Bladeguard Kaja##122289
turnin Grozztok the Blackheart##48549 |goto 53.19,66.05
step
talk Jorak##126696
turnin Stolen Satchels##48550 |goto 53.34,66.00
step
talk Bladeguard Kaja##122289
accept On the Move##48684 |goto 53.19,66.06
step
Follow the path |goto 52.51,67.29 < 7 |only if walking
Follow the path |goto 52.63,67.63 < 7 |only if walking
talk Ranah##126814
turnin Ranah's Wrench##51829 |goto 53.87,69.39
accept We Can Salvage the Seeds##48555 |goto 53.87,69.39
accept Wither Without Water##48551 |goto 53.87,69.39
accept Let it Flow##48553 |goto 53.87,69.39
stickystart "Plant_Thistlevine_Seeds"
stickystart "Water_Withered_Thistlevines"
step
Follow the path |goto 53.45,68.58 < 7 |only if walking
click Terrace Fountain##291008
Fix the North Fountain |q 48553/1 |goto 53.45,67.84
step
click Terrace Fountain##291008
Fix the South Fountain |q 48553/2 |goto 52.91,71.91
step
label "Plant_Thistlevine_Seeds"
Kill Carnivorous enemies around this area
collect Thistlevine Seeds##152644 |n
clicknpc Fertile Soil###126886+
|tip They look like brown piles of fresh dirt inside square planters on the ground around this area.
|tip You must have Thistlevine Seeds in order to plant them.
Plant #8# Thistlevine Seeds |q 48555/1 |goto 52.95,70.05
step
label "Water_Withered_Thistlevines"
use Ranah's Watering Can##152630
|tip Use it on Withered Thistlevines around this area.
|tip They look like small dead brown plants on the ground around this area.
Water #10# Withered Thistlevines |q 48551/1 |goto 52.95,70.05
step
talk Ranah##126814
turnin We Can Salvage the Seeds##48555 |goto 53.87,69.39
turnin Wither Without Water##48551 |goto 53.87,69.39
turnin Let it Flow##48553 |goto 53.87,69.39
accept The Source of the Problem##48554 |goto 53.87,69.39
step
Follow the path up |goto 53.70,68.95 < 5 |only if walking
Continue up the path |goto 53.98,67.78 < 5 |only if walking
Follow the path |goto 54.27,66.95 < 5 |only if walking
Follow the path |goto 54.73,66.91 < 5 |only if walking
Continue following the path |goto 54.95,67.26 < 5 |only if walking
Continue following the path |goto 55.03,68.15 < 5 |only if walking
Follow the path down |goto 55.02,68.88 < 5 |only if walking
click Loose Boulder##273995
Inspect the Reservoir |q 48554/1 |goto 55.38,69.36
step
kill Colossal Water Cobra##127169 |q 48554/2 |goto 55.38,69.36
step
Jump down here |goto 54.96,69.37 < 5 |only if walking
Jump down here |goto 54.09,69.37 < 5 |only if walking
talk Ranah##126814
turnin The Source of the Problem##48554 |goto 53.87,69.39
step
Follow the path |goto 53.50,68.65 < 7 |only if walking
Jump down here |goto 52.95,67.34 < 5 |only if walking
Follow the path |goto 53.02,66.90 < 7 |only if walking
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48684/1 |goto 53.22,66.04
step
Watch the dialogue
Ride Meerah's Caravan |q 48684/2 |goto 52.88,89.12 |notravel
step
talk Jorak##127691
turnin On the Move##48684 |goto 52.83,89.23
accept The Perfect Offering##48895 |goto 52.83,89.23
step
Follow the path |goto 53.19,89.62 < 10 |only if walking
talk Akunda the Exalted##127992
turnin The Perfect Offering##48895 |goto 53.18,90.29
accept Powerful Conductors##48993 |goto 53.18,90.29
accept Sacred Remains##48992 |goto 53.18,90.29
accept Vile Infestation##48991 |goto 53.18,90.29
step
Follow the path |goto 53.06,89.64 < 5 |only if walking
talk Jorak##127691
accept Fond Farewells##49040 |goto 52.83,89.23
step
Run up the stairs |goto 52.41,89.74 < 5 |only if walking
Enter the building |goto 52.23,89.73 < 3 |walk
talk Akunda the Bountiful##127431
|tip Inside the building.
home Temple of Akunda |goto 51.92,89.83 |q 50561 |future
step
Leave the building |goto 52.24,89.73 < 3 |walk
Follow the path |goto 52.43,89.71 < 5 |only if walking
talk Akunda the Tamer##127427
fpath Temple of Akunda |goto 53.72,89.17
stickystart "Collect_Sacred_Remains"
stickystart "Kill_Ranishu_Gorgers"
step
Follow the path |goto 53.98,89.20 < 7 |only if walking
Follow the path up |goto 54.52,88.82 < 7 |only if walking
Follow the path up |goto 54.77,88.24 < 7 |only if walking
Follow the path down |goto 54.87,87.55 < 5 |only if walking
Follow the path down |goto 54.89,87.27 < 5 |only if walking
Follow the path |goto 54.82,86.71 < 7 |only if walking
Enter the cave |goto 55.01,86.20 < 5 |walk
Follow the path down |goto 55.60,86.17 < 5 |walk
Follow the path down |goto 55.75,85.99 < 5 |walk
Follow the path down |goto 55.83,85.71 < 5 |walk
Follow the path |goto 55.86,85.02 < 5 |walk
kill Rorgog the Devourer##134052
|tip Inside the cave.
collect Rorgog's Antennae##153029 |q 48993/1 |goto 56.12,83.45
step
Follow the path up |goto 55.85,84.99 < 5 |walk
Follow the path up |goto 55.79,85.83 < 5 |walk
Follow the path up |goto 55.61,86.19 < 5 |walk
Leave the cave |goto 55.04,86.20 < 5 |c |q 48992
step
label "Collect_Sacred_Remains"
click Sacred Remains##277285+
|tip They look like white bones on the ground around this area.
collect 6 Sacred Remains##153028 |q 48992/1 |goto 54.60,86.07
step
label "Kill_Ranishu_Gorgers"
kill 12 Ranishu Gorger##133565 |q 48991/1 |goto 54.60,86.07
step
Follow the path |goto 54.21,85.89 < 7 |only if walking
Follow the path |goto 53.80,86.02 < 7 |only if walking
Continue following the path |goto 53.56,86.43 < 7 |only if walking
Jump down here |goto 53.36,87.26 < 7 |only if walking
Follow the path up |goto 53.21,88.60 < 7 |only if walking
Follow the path |goto 53.20,89.10 < 7 |only if walking
Run up the stairs |goto 53.19,89.93 < 5 |only if walking
talk Akunda the Exalted##127992
turnin Vile Infestation##48991 |goto 53.18,90.29
turnin Sacred Remains##48992 |goto 53.18,90.29
turnin Powerful Conductors##48993 |goto 53.18,90.29
accept Cleanse the Mind##48887 |goto 53.18,90.29
accept It Springs Eternal##48888 |goto 53.18,90.29
stickystart "Slay_Redrock_Scavenger"
step
Follow the path |goto 53.18,89.05 < 7 |only if walking
Follow the path |goto 52.85,86.45 < 7 |only if walking
Follow the path down |goto 53.12,84.99 < 5 |only if walking
Follow the path down |goto 53.84,83.74 < 5 |only if walking
Follow the path |goto 53.65,83.55 < 7 |only if walking
Follow the path |goto 52.36,83.97 < 7 |only if walking
Enter the cave |goto 52.16,83.78 < 5 |walk
click Shrine of Thunder##276460
|tip Inside the cave.
kill Inner Demon##138292
Meditate at the Shrine of Thunder |q 48887/1 |goto 52.17,83.36
step
label "Slay_Redrock_Scavenger"
Leave the cave |goto 52.16,83.86 < 5 |walk
Kill Redrock enemies around this area
Slay #8# Redrock Scavenger |q 48888/1 |goto 52.13,84.48
step
Follow the path up |goto 51.94,86.36 < 7 |only if walking
Follow the path up |goto 52.45,88.31 < 7 |only if walking
Follow the path up |goto 52.89,88.34 < 5 |only if walking
Follow the path up |goto 53.13,88.59 < 7 |only if walking
Run up the stairs |goto 53.19,89.94 < 5 |only if walking
talk Akunda the Exalted##127992
turnin Cleanse the Mind##48887 |goto 53.18,90.30
turnin It Springs Eternal##48888 |goto 53.18,90.30
accept Trial of Truth##48894 |goto 53.18,90.30
step
talk Akunda the Exalted##127992
Tell him "_My name is Akunda the Nimble."_
|tip You can choose whichever Akunda name you like, it doesn't matter.
|tip You cannot choose to have your name remain unchanged.
Speak Your True Name to Akunda the Exalted |q 48894/1 |goto 53.18,90.29
step
talk Akunda the Exalted##127966
turnin Trial of Truth##48894 |goto 53.18,90.29
step
talk Bladeguard Kaja##127570
accept Akunda Awaits##48715 |goto 53.16,90.20
step
Enter the building |goto 53.18,90.58 < 5 |walk
Watch the dialogue
|tip Inside the building.
Investigate the Temple of Akunda |q 48715/1 |goto 53.18,91.26
step
talk Bladeguard Kaja##135066
|tip Inside the building.
turnin Akunda Awaits##48715 |goto 53.58,91.65
step
talk Akunda the Sensible##127980
|tip Inside the building.
accept Valley of Sorrows##48987 |goto 53.58,91.34
step
Follow the path |goto 53.20,91.22 < 5 |walk
Leave the building |goto 53.18,90.56 < 5 |walk
Follow the path |goto 53.17,89.07 < 7 |only if walking
Continue following the path |goto 52.83,86.47 < 7 |only if walking
Follow the path down |goto 53.12,85.00 < 7 |only if walking
Follow the path down |goto 53.83,83.78 < 7 |only if walking
Follow the path up |goto 53.52,82.42 < 7 |only if walking
Follow the path down |goto 53.78,80.14 < 7 |only if walking
Follow the path |goto 53.34,78.92 < 5 |only if walking
Follow the path |goto 53.14,78.92 < 5 |only if walking
talk Meijani##127989
turnin Valley of Sorrows##48987 |goto 53.01,78.77
accept Memory Breach##48988 |goto 53.01,78.77
accept Shattered and Broken##49005 |goto 53.01,78.77
stickystart "Kill_Distorted_Memories"
stickystart "Kill_Fractured_Memories"
step
clicknpc Unwanted Memory##122683+
|tip They look like grey vases on the ground around this area.
Search #8# Unwanted Memories |q 48988/1 |goto 53.49,76.85
step
label "Kill_Distorted_Memories"
kill 4 Distorted Memory##138198 |q 49005/1 |goto 53.49,76.85
step
label "Kill_Fractured_Memories"
kill 8 Fractured Memory##138199 |q 49005/2 |goto 53.49,76.85
step
talk Meijani##127989
turnin Memory Breach##48988 |goto 53.01,78.77
turnin Shattered and Broken##49005 |goto 53.01,78.77
accept Repairing the Past##48889 |goto 53.01,78.77
step
Follow the path up |goto 52.77,78.77 < 5 |only if walking
Enter the cave |goto 52.60,79.18 < 3 |walk
Kill the enemies that attack in waves
|tip Inside the cave.
Watch the dialogue
Protect Meijani |q 48889/1 |goto 52.31,79.74
step
talk Akunda##138382
|tip Inside the cave.
turnin Repairing the Past##48889 |goto 52.22,79.89
accept Ending the Madness##48996 |goto 52.22,79.89
step
Leave the building |goto 52.25,89.73 < 3 |walk
Follow the path |goto 52.78,89.49 < 7 |only if walking
Follow the path |goto 53.08,89.60 < 5 |only if walking
Run up the stairs |goto 53.18,89.94 < 5 |only if walking
Enter the building |goto 53.18,90.56 < 5 |walk
kill Akunda the Exalted##128147
|tip Inside the building.
|tip Use the "Tempest" ability.
|tip It appears as a button on the screen.
Watch the dialogue
Slay Akunda the Exalted |q 48996/1 |goto 53.18,91.25
step
Watch the dialogue
talk Akunda##128152
|tip Inside the building.
turnin Ending the Madness##48996 |goto 53.19,91.65
accept Akunda's Blessing##50913 |goto 53.19,91.65
step
Run up the stairs |goto 53.07,91.98 < 3 |walk
Follow the path |goto 53.10,92.10 < 3 |walk
click Altar of Akunda##290773
|tip Inside the building.
Visit the Altar of Akunda |q 50913/1 |goto 53.18,92.12
step
talk Akunda##128152
|tip Inside the building.
turnin Akunda's Blessing##50913 |goto 53.19,91.65
step
talk Warguard Rakera##130660
|tip Inside the building.
accept Clearing the Fog##47874 |goto 53.61,91.66
step
Follow the path |goto 53.35,91.64 < 5 |walk
Follow the path |goto 53.18,91.20 < 5 |walk
Leave the building |goto 53.18,90.55 < 5 |walk
Follow the path |goto 53.09,89.62 < 7 |only if walking
Watch the dialogue
talk Warguard Rakera##130667
turnin Clearing the Fog##47874 |goto 52.81,89.24
accept Knowledge of the Past##48896 |goto 52.81,89.24
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48896/1 |goto 52.70,89.30
step
Watch the dialogue
Ride Meerah's Caravan |q 48896/2 |goto 47.91,82.38 |notravel
step
kill 3 Sandfury Assassin##128209 |q 48896/3 |goto 47.67,81.99
step
_Next to you:_
talk Warguard Rakera
turnin Knowledge of the Past##48896
accept Searching the Ruins##47716
step
Follow the path down |goto 47.37,81.31 < 7 |only if walking
Follow the path |goto 47.06,80.23 < 7 |only if walking
Follow the path up |goto 46.99,78.94 < 7 |only if walking
Follow the path |goto 46.82,77.54 < 7 |only if walking
Follow the path |goto 46.59,77.12 < 7 |only if walking
Watch the dialogue
Search for Julwaba |q 47716/1 |goto 46.68,75.80
step
Enter the building |goto 46.77,75.73 < 5 |walk
talk Julwaba##134162
|tip Inside the building.
turnin Searching the Ruins##47716 |goto 47.07,75.66
step
talk Kiro##135154
|tip Inside the building.
accept Creeping Death##48314 |goto 47.05,75.60
accept Nature's Remedy##48313 |goto 47.05,75.60
stickystart "Collect_Scorpashi_Stingers"
step
Leave the building |goto 46.75,75.55 < 5 |walk
Follow the path down |goto 46.36,75.45 < 7 |only if walking
Follow the path |goto 46.16,75.20 < 7 |only if walking
click Prickly Plum##273193
|tip They look like green spikey plants on the ground around this area.
collect 6 Prickly Plum Cactus##152393 |q 48313/1 |goto 46.00,73.43
step
label "Collect_Scorpashi_Stingers"
Kill Scorpashi enemies around this area
collect 7 Scorpashi Stinger##152397 |q 48314/1 |goto 46.00,73.43
step
Follow the path |goto 46.24,73.22 < 7 |only if walking
Run up the stairs |goto 46.45,73.35 < 5 |only if walking
Follow the path |goto 46.68,73.44 < 5 |only if walking
Follow the path |goto 46.56,74.19 < 7 |only if walking
Follow the path |goto 46.56,75.12 < 7 |only if walking
Enter the building |goto 46.76,75.48 < 5 |walk
talk Kiro##135154
|tip Inside the building.
turnin Creeping Death##48314 |goto 47.06,75.60
turnin Nature's Remedy##48313 |goto 47.06,75.60
accept Effective Antivenom##50770 |goto 47.06,75.60
step
use the Antivenom##158678
|tip Use it on Serrik.
|tip Inside the building.
Apply the Restorative Balm |q 50770/1 |goto 47.06,75.72
step
Watch the dialogue
talk Serrik##134533
|tip Inside the building.
turnin Effective Antivenom##50770 |goto 47.06,75.71
accept The Secrets of Zul'Ahjin##50539 |goto 47.06,75.71
step
Leave the building |goto 46.75,75.52 < 5 |walk
Follow the path |goto 46.55,75.14 < 7 |only if walking
Follow the path |goto 46.71,74.05 < 5 |only if walking
Run up the stairs |goto 46.85,74.16 < 5 |only if walking
Follow the path |goto 46.93,75.09 < 5 |only if walking
Follow the path |goto 47.07,75.05 < 5 |only if walking
Run up the stairs |goto 47.33,73.33 < 5 |only if walking
Enter the building |goto 47.34,73.08 < 3 |walk
talk Maaz##134148
|tip Inside the building.
accept Magic Decoder Device##50536 |goto 47.32,72.73
step
clicknpc Scepter of Prescience##134245
|tip Inside the building.
Test the Device |q 50536/1 |goto 47.36,72.66
step
Leave the building |goto 47.34,73.08 < 3 |walk
Follow the path |goto 47.39,73.44 < 5 |only if walking
Continue following the path |goto 48.33,74.17 < 7 |only if walking
Run up the stairs |goto 48.21,74.87 < 5 |walk
clicknpc Keeper Korthek##134089
Inspect the Statue of Korthek  |q 50536/2 |goto 48.05,74.97
step
Follow the path |goto 48.21,74.99 < 5 |walk
Run up the stairs |goto 48.88,76.09 < 5 |walk
clicknpc Keeper Vorrik##134067
Inspect the Statue of Vorrik |q 50536/3 |goto 48.89,76.34
step
Follow the path |goto 48.96,76.06 < 5 |walk
Run up the stairs |goto 49.58,75.03 < 5 |walk
clicknpc Keeper Sulthis##134090
Inspect the Statue of Sulthis |q 50536/4 |goto 49.74,74.98
step
Run up the stairs |goto 49.23,74.67 < 5 |only if walking
Follow the path |goto 49.01,74.42 < 5 |only if walking
click Crumbling Statue##281639
turnin The Secrets of Zul'Ahjin##50539 |goto 48.90,74.49
accept Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
Follow the path |goto 49.29,74.36 < 7 |only if walking
Follow the path |goto 49.52,74.09 < 7 |only if walking
Continue following the path |goto 49.95,73.47 < 5 |only if walking
Continue following the path |goto 49.92,73.24 < 5 |only if walking
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 49.85,73.19 |count 1
step
Follow the path |goto 50.08,72.95 < 7 |only if walking
Follow the path |goto 50.24,71.91 < 7 |only if walking
Run up the stairs |goto 50.45,71.83 < 5 |only if walking
Follow the path |goto 50.77,71.90 < 5 |only if walking
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 51.05,72.34 |count 2
step
Jump down here |goto 50.68,72.98 < 5 |only if walking
Follow the path |goto 49.88,73.66 < 7 |only if walking
Run up the stairs |goto 49.05,74.02 < 5 |only if walking
click Crumbling Statue##281639
turnin Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
Watch the dialogue
click Ancient Reliquary##281583
accept Sulthis' Stone##50561 |goto 48.90,74.25
step
Follow the path |goto 48.65,73.87 < 7 |only if walking
Continue following the path |goto 47.91,73.70 < 7 |only if walking
Run up the stairs |goto 47.34,73.31 < 5 |only if walking
Enter the building |goto 47.34,73.05 < 3 |walk
talk Maaz##134148
|tip Inside the building.
turnin Magic Decoder Device##50536 |goto 47.32,72.73
accept Rescue the Relics##48871 |goto 47.32,72.73
step
talk Amre##134164
|tip He walks around this area inside the building.
accept Expedite the Excavation##48872 |goto 47.40,72.74
stickystart "Slay_Sethraks_2"
step
Leave the building |goto 47.34,73.07 < 3 |walk
Follow the path |goto 47.38,73.39 < 5 |only if walking
Follow the path |goto 47.96,73.80 < 7 |only if walking
click Relic of the Keepers##281608+
|tip They look like small blue orb-shaped stone statues on the ground around this area.
collect 8 Relic of the Keepers##152787 |q 48871/1 |goto 48.89,73.91
step
label "Slay_Sethraks_2"
Kill Sethrak enemies around this area
Slay #12# Sethraks |q 48872/1 |goto 48.89,73.91
step
Follow the path |goto 48.01,73.80 < 7 |only if walking
Run up the stairs |goto 47.35,73.33 < 5 |only if walking
Enter the building |goto 47.34,73.08 < 3 |walk
talk Maaz##134148
|tip Inside the building.
turnin Rescue the Relics##48871 |goto 47.32,72.73
step
talk Amre##134164
|tip He walks around this area inside the building.
turnin Expedite the Excavation##48872 |goto 47.40,72.74
step
talk Maaz##134148
|tip Inside the building.
accept Power of the Overseer##50535 |goto 47.32,72.73
step
Leave the building |goto 47.34,73.07 < 3 |walk
Follow the path |goto 47.31,73.37 < 5 |only if walking
Follow the path |goto 47.20,74.27 < 7 |only if walking
Continue following the path |goto 47.01,75.16 < 7 |only if walking
Continue following the path |goto 47.04,76.29 < 7 |only if walking
Run up the stairs |goto 47.28,77.26 < 5 |only if walking
Follow the path |goto 47.81,77.27 < 5 |only if walking
Follow the path |goto 48.49,77.03 < 7 |only if walking
kill Overseer Nerzet##134121
|tip He walks around this area.
collect Azerite Shard##157855 |q 50535/1 |goto 48.89,76.71
step
Follow the path |goto 48.51,77.02 < 7 |only if walking
Run down the stairs |goto 47.81,77.24 < 5 |only if walking
Follow the path |goto 47.23,77.18 < 5 |only if walking
Continue following the path |goto 47.03,76.33 < 7 |only if walking
Continue following the path |goto 47.04,75.04 < 7 |only if walking
Run up the stairs |goto 47.33,73.32 < 5 |only if walking
Enter the building |goto 47.34,73.08 < 3 |walk
talk Maaz##134148
|tip Inside the building.
turnin Power of the Overseer##50535 |goto 47.32,72.74
step
Leave the building |goto 47.34,73.08 < 3 |walk
Follow the path |goto 47.18,74.29 < 7 |only if walking
Continue following the path |goto 47.03,75.06 < 7 |only if walking
Jump down here |goto 46.71,75.23 < 5 |only if walking
Enter the building |goto 46.73,75.70 < 5 |walk
talk Serrik##134533
|tip Inside the building.
turnin Sulthis' Stone##50561 |goto 47.06,75.71
accept Unlikely Allies##47324 |goto 47.06,75.71
step
talk Julwaba##134162
|tip Inside the building.
accept Seeking Shelter##50794 |goto 47.07,75.66
step
Leave the building |goto 46.76,75.65 < 5 |walk
Follow the path |goto 46.35,75.60 < 7 |only if walking
Follow the path |goto 45.58,76.37 < 7 |only if walking
Follow the path down |goto 44.38,76.32 < 7 |only if walking
talk Makaanji##135654
fpath Scorched Sands Outpost |goto 43.90,75.92
step
Follow the path |goto 43.65,76.30 < 5 |only if walking
talk Mozesha##135655
home Scorched Sands Outpost |goto 43.04,76.46 |q 47324 |future
step
Run up the stairs |goto 43.38,75.85 < 5 |only if walking
Follow the path |goto 43.39,75.64 < 5 |only if walking
talk Razgaji##126576
turnin Seeking Shelter##50794 |goto 43.39,75.36
accept I've Got Your Back##51573 |goto 43.39,75.36
step
talk Razgaji##126576
Tell him _"I'm ready. Let's go."_
Speak with Razgaji |q 51573/1 |goto 43.40,75.36
step
Run down the stairs |goto 43.39,75.12 < 5 |only if walking
Follow the path |goto 43.40,74.74 < 5 |only if walking
Watch the dialogue
Escort Razgaji |q 51573/2 |goto 43.39,74.03
step
talk Razgaji##126576
|tip Talk to him as he walks.
turnin I've Got Your Back##51573 |goto 43.39,74.03
accept Hungry Mouths To Feed##48529 |goto 43.39,74.03
accept I Heard You Lost the Herd##48530 |goto 43.39,74.03
step
Run up the stairs |goto 43.40,74.75 < 5 |only if walking
Follow the path |goto 43.40,75.12 < 5 |only if walking
Run down the stairs |goto 43.40,75.66 < 5 |only if walking
Follow the path |goto 43.42,75.86 < 5 |only if walking
talk Sezahjin##126108
turnin Hungry Mouths To Feed##48529 |goto 43.70,76.78
accept Mystery Meat##48531 |goto 43.70,76.78
accept Vol'duni Fried Chicken##48533 |goto 43.70,76.78
step
Follow the path |goto 43.22,77.15 < 7 |only if walking
Follow the path |goto 42.57,77.14 < 7 |only if walking
talk Mugjabu##126085
turnin I Heard You Lost the Herd##48530 |goto 42.12,76.20
accept Alpacas Gone Wild##48532 |goto 42.12,76.20
step
Follow the path up |goto 42.54,76.00 < 5 |only if walking
Follow the path |goto 42.57,75.61 < 5 |only if walking
Jump down here |goto 42.82,75.14 < 5 |only if walking
use Sezahjin's Trusty Vulture Bow##152572
|tip Use it on Fattened Buzzard around this area.
|tip Some of them are flying in the air around this area.
kill Fattened Buzzard##126502+
collect 8 Roasted Buzzard##152571 |q 48533/1 |goto 43.43,74.30
step
Run up the stairs |goto 43.40,74.74 < 5 |only if walking
Follow the path |goto 43.39,75.13 < 5 |only if walking
Run down the stairs |goto 43.40,75.65 < 5 |only if walking
Follow the path |goto 43.43,75.87 < 5 |only if walking
talk Sezahjin##126108
turnin Vol'duni Fried Chicken##48533 |goto 43.70,76.78
stickystart "Collect_Dung_Beetle_Innards"
stickystart "Herd_Alpacas"
step
Follow the path |goto 43.21,77.18 < 7 |only if walking
Follow the path |goto 42.57,77.15 < 7 |only if walking
Follow the path down |goto 41.86,76.40 < 7 |only if walking
Follow the path |goto 41.08,74.15 < 7 |only if walking
Jump down here |goto 40.92,73.95 < 5 |only if walking
click Backpack##282438
accept Wasteland Survivor##48585 |goto 40.43,73.63
stickystart "Collect_Scavenged_Supplies"
step
label "Collect_Dung_Beetle_Innards"
kill Vol'duni Dunecrawler##126645+
collect 10 Dung Beetle Innards##152566 |q 48531/1 |goto 39.49,72.37
step
label "Herd_Alpacas"
use the Alpaca Whistle##152570
|tip Use it next to Lost Alpacas around this area.
Herd #6# Alpacas |q 48532/1 |goto 39.44,70.62
step
label "Collect_Scavenged_Supplies"
click Supply Pouch##273837+
|tip They look like tiny brown bags and boxes laying next to piles of bones on the ground around this area.
collect 10 Scavenged Supplies##152601 |q 48585/1 |goto 39.28,72.41
step
Follow the path |goto 40.23,74.61 < 7 |only if walking
Follow the path up |goto 40.82,75.31 < 7 |only if walking
Follow the path up |goto 41.77,76.39 < 7 |only if walking
talk Mugjabu##126085
turnin Alpacas Gone Wild##48532 |goto 42.13,76.20
step
Follow the path |goto 42.58,77.15 < 7 |only if walking
Follow the path |goto 43.24,77.11 < 7 |only if walking
talk Sezahjin##126108
turnin Mystery Meat##48531 |goto 43.70,76.78
accept The Chef's Apprentice##48655 |goto 43.70,76.78
step
Run up the stairs |goto 43.39,75.84 < 5 |only if walking
Follow the path |goto 43.39,75.64 < 5 |only if walking
talk Razgaji##126576
turnin Wasteland Survivor##48585 |goto 43.39,75.37
step
Follow the path down |goto 42.59,75.64 < 5 |only if walking
Follow the path |goto 42.51,76.07 < 5 |only if walking
talk Mugjabu##126085
accept Snarltooth's Last Laugh##48534 |goto 42.13,76.20
step
Run down the stairs |goto 42.67,77.73 < 5 |only if walking
Follow the path |goto 42.65,78.12 < 5 |only if walking
Follow the path |goto 43.03,78.48 < 7 |only if walking
Jump down here |goto 43.10,79.06 < 5 |only if walking
Enter the building |goto 43.39,79.20 < 3 |walk
click Junji##276187
|tip Inside the building.
turnin The Chef's Apprentice##48655 |goto 43.39,78.65
accept Savage Saurolisks##48656 |goto 43.39,78.65
accept They Might Be Delicious##48657 |goto 43.39,78.65
stickystart "Collect_Saurolisk_Eggs"
stickystart "Kill_Scaleclaw_Saurolisks"
step
Leave the building |goto 43.40,79.18 < 3 |walk
Run down the stairs |goto 43.41,79.88 < 7 |only if walking
Follow the path up |goto 43.17,81.74 < 7 |only if walking
Enter the cave |goto 43.44,82.49 < 5 |walk
Follow the path |goto 43.52,82.93 < 5 |walk
Follow the path |goto 43.47,83.40 < 5 |walk
kill Snarltooth##126644
|tip Inside the cave.
collect Snarltooth's Head##152573 |q 48534/1 |goto 42.82,84.36
step
Follow the path |goto 43.12,83.94 < 5 |walk
Follow the path |goto 43.48,83.35 < 5 |walk
Follow the path |goto 43.50,83.00 < 5 |walk
Leave the cave |goto 43.46,82.53 < 5 |c |q 48656
step
label "Collect_Saurolisk_Eggs"
click Saurolisk Egg##275099+
|tip They look like large white eggs on the ground around this area.
collect 10 Saurolisk Egg##152647 |q 48657/1 |goto 43.69,81.21
step
label "Kill_Scaleclaw_Saurolisks"
kill 8 Scaleclaw Saurolisk##126984 |q 48656/1 |goto 43.69,81.21
step
Enter the building |goto 43.40,79.19 < 5 |walk
click Junji##276187
|tip Inside the building.
turnin Savage Saurolisks##48656 |goto 43.39,78.65
turnin They Might Be Delicious##48657 |goto 43.39,78.65
step
Leave the building |goto 43.39,79.21 < 3 |walk
Run up the stairs |goto 42.97,79.32 < 5 |only if walking
Follow the path |goto 42.47,79.30 < 5 |only if walking
Follow the path |goto 40.89,77.84 < 7 |only if walking
Run up the stairs |goto 41.32,77.30 < 5 |only if walking
Follow the path |goto 41.61,77.26 < 5 |only if walking
talk Mugjabu##126085
turnin Snarltooth's Last Laugh##48534 |goto 42.13,76.20
step
Follow the path |goto 42.61,77.17 < 7 |only if walking
Follow the path |goto 43.23,77.11 < 5 |only if walking
talk Zauljin##125862
accept Liquid Motivation##48846 |goto 43.24,76.96
step
Run up the stairs |goto 43.15,76.44 < 5 |walk
talk Taz'jin##127578
|tip Inside the building.
buy Zanchuli Reserve##160499 |q 48846/1 |goto 42.86,76.31
step
Follow the path |goto 43.17,76.47 < 5 |only if walking
talk Zauljin##125862
Tell him _"Here's the rum. Tell me what you heard."_
Deliver the Rum to Zauljin |q 48846/2 |goto 43.24,76.96
step
Run up the stairs |goto 43.37,75.85 < 5 |only if walking
Follow the path |goto 43.38,75.65 < 5 |only if walking
talk Razgaji##126576
turnin Liquid Motivation##48846 |goto 43.39,75.37
accept Tongo##48850 |goto 43.39,75.37
accept Stolen Goods##48790 |goto 43.39,75.37
accept Bandit Blades##51602 |goto 43.39,75.37
stickystart "Collect_Sandworn_Blades"
stickystart "Collect_Stolen_Supplies"
step
Run up the stairs |goto 42.38,75.40 < 5 |only if walking
Follow the path |goto 42.27,75.41 < 5 |only if walking
Follow the path down |goto 41.92,75.39 < 7 |only if walking
Follow the path |goto 41.02,76.46 < 7 |only if walking
Follow the path |goto 40.48,76.44 < 7 |only if walking
Run up the stairs |goto 40.32,76.05 < 3 |only if walking
Enter the building |goto 40.58,76.04 < 3 |walk
kill Tongo##135326
|tip Inside the building.
collect Tongo's Head##158875 |q 48850/1 |goto 40.85,76.02
step
label "Collect_Sandworn_Blades"
Leave the building |goto 40.59,76.04 < 3 |walk
kill Zandalari Exile##135311+
click Sandworn Blade##290712+
|tip They look like swords sticking out of the ground around this area.
collect 8 Sandworn Blade##160515 |q 51602/1 |goto 40.15,75.89
step
label "Collect_Stolen_Supplies"
click Stolen Items
|tip They look like different named objects on the ground and inside buildings around this area.
|tip They will appear on your minimap as yellow dots.
Collect #6# Stolen Supplies |q 48790/1 |goto 40.15,75.89
step
Follow the path up |goto 41.56,75.05 < 7 |only if walking
Follow the path up |goto 41.87,75.14 < 7 |only if walking
Run down the stairs |goto 42.26,75.39 < 5 |only if walking
talk Razgaji##126576
turnin Tongo##48850 |goto 43.39,75.37
turnin Stolen Goods##48790 |goto 43.39,75.37
turnin Bandit Blades##51602 |goto 43.39,75.37
accept Arming the Tribe##48847 |goto 43.39,75.37
step
Run down the stairs |goto 43.40,75.65 < 5 |only if walking
Follow the path |goto 43.35,75.97 < 5 |only if walking
Run up the stairs |goto 43.13,75.95 < 5 |walk
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.86,76.08 |count 1
step
Follow the path |goto 42.93,76.55 < 5 |walk
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.86,76.58 |count 2
step
Follow the path |goto 43.10,76.72 < 5 |walk
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 43.61,76.98 |count 3
step
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 43.82,77.84 |count 4
step
Follow the path |goto 43.60,77.54 < 7 |only if walking
Follow the path |goto 43.19,77.54 < 7 |only if walking
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.97,77.84 |count 5
step
Follow the path |goto 42.89,77.56 < 7 |only if walking
Follow the path |goto 42.57,77.08 < 7 |only if walking
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.56,76.67 |count 6
step
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.52,76.35 |count 7
step
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.14,76.01 |count 8
step
Follow the path up |goto 42.54,76.02 < 5 |only if walking
Follow the path |goto 42.60,75.59 < 5 |only if walking
talk Razgaji##126576
turnin Arming the Tribe##48847 |goto 43.39,75.37
accept Mojambo##51668 |goto 43.39,75.37
step
Run down the stairs |goto 43.39,75.12 < 5 |only if walking
Follow the path |goto 43.39,74.75 < 5 |only if walking
use Tongo's Head##160525
|tip Use it on Mojambo.
kill Mojambo##138113 |q 51668/1 |goto 43.41,73.87
step
Run up the stairs |goto 43.40,74.75 < 5 |only if walking
Follow the path |goto 43.40,75.13 < 5 |only if walking
talk Razgaji##126576
turnin Mojambo##51668 |goto 43.40,75.37
accept The Ashvane Threat##51773 |goto 43.40,75.37
step
Run down the stairs |goto 43.40,75.65 < 5 |only if walking
Follow the path |goto 43.38,75.84 < 5 |only if walking
click Wanted: Za'roco##287398
accept WANTED: Za'roco##51161 |goto 43.14,76.57
step
talk Sezahjin##126108
accept The Tortaka Tribe##51772 |goto 43.70,76.78
step
Follow the path |goto 43.23,77.14 < 7 |only if walking
Follow the path |goto 42.58,77.10 < 7 |only if walking
talk Mugjabu##126085
accept Camp Lastwind##51775 |goto 42.13,76.20
step
Follow the path |goto 38.88,77.68 < 7 |only if walking
Follow the path |goto 38.85,78.47 < 7 |only if walking
Follow the path down |goto 37.93,79.82 < 7 |only if walking
Run up the stairs |goto 36.65,81.67 < 5 |only if walking
Follow the path |goto 36.44,81.99 < 5 |only if walking
talk Norah##125904
turnin Camp Lastwind##51775 |goto 38.88,77.32
accept Lost in Zem'lan##48324 |goto 38.88,77.32
step
click Wanted: Taz'raka##287440
accept WANTED: Taz'raka the Traitor##51162 |goto 38.85,76.97
step
Follow the path |goto 38.95,78.32 < 10 |only if walking
Continue following the path |goto 36.92,81.26 < 10 |only if walking
Run up the stairs |goto 36.33,82.12 < 10 |only if walking
clicknpc Meeki##136287
turnin Lost in Zem'lan##48324 |goto 35.46,83.48
step
talk First Mate Jamboya##128261
accept The Day the Port Fell##51053 |goto 35.44,83.82
step
Run down the stairs |goto 35.29,83.80 < 5 |only if walking
Follow the path |goto 35.17,83.99 < 5 |only if walking
use First Mate Jamboya's Medallion##159747
Witness Jamboya's Memory |q 51053/1 |goto 34.11,85.48
step
Run up the stairs |goto 35.15,83.96 < 5 |only if walking
talk First Mate Jamboya##128261
turnin The Day the Port Fell##51053 |goto 35.44,83.82
accept Overdue Mutiny##51054 |goto 35.44,83.82
step
clicknpc First Mate Jamboya##136583
Free First Mate Jamboya |q 51054/1 |goto 35.44,83.83
step
Watch the dialogue
talk First Mate Jamboya##136309
turnin Overdue Mutiny##51054 |goto 35.31,83.20
accept The Yard Arm of the Law##51055 |goto 35.31,83.20
accept My Last Day Alive##51056 |goto 35.31,83.20
step
Follow the path |goto 35.77,82.90 < 7 |only if walking
Jump down here |goto 36.14,81.88 < 5 |only if walking
Follow the path |goto 36.06,81.34 < 7 |only if walking
Follow the path up |goto 36.40,80.16 < 7 |only if walking
Follow the path |goto 36.52,79.71 < 7 |only if walking
Enter the building |goto 36.84,78.62 < 5 |walk
clicknpc Quartermaster Tulmac##136434
|tip Inside the building.
Free Quartermaster Tulmac |q 51055/1 |goto 36.92,78.08
step
Leave the building |goto 36.81,78.63 < 5 |walk
Follow the path down |goto 36.21,79.14 < 7 |only if walking
Follow the path |goto 35.92,79.07 < 7 |only if walking
Run up the stairs |goto 35.75,78.45 < 5 |only if walking
Enter the building |goto 35.92,78.21 < 3 |walk
use First Mate Jamboya's Medallion##159757
Witness the Throne Room Memory |q 51056/1 |goto 36.05,78.02
step
Leave the building |goto 35.93,78.22 < 3 |walk
Follow the path |goto 35.74,78.46 < 5 |only if walking
clicknpc Gunner Bosanya##136435
Free Gunner Bosanya |q 51055/2 |goto 35.13,77.98
step
Follow the path up |goto 35.39,76.69 < 7 |only if walking
Follow the path |goto 35.30,76.51 < 5 |only if walking
Enter the building |goto 34.88,76.81 < 3 |walk
clicknpc Jukanga the Snitch##136441
|tip Inside the building.
Free Jukanga the Snitch |q 51055/3 |goto 34.65,77.13
step
Leave the building |goto 34.89,76.79 < 3 |walk
Follow the path up |goto 35.41,75.96 < 7 |only if walking
use First Mate Jamboya's Medallion##159757
Witness the Battlefield Memory |q 51056/2 |goto 35.83,75.31
step
Follow the path |goto 35.89,74.91 < 7 |only if walking
Follow the path |goto 35.88,72.18 < 7 |only if walking
Run up the stairs |goto 35.88,70.76 < 5 |only if walking
Enter the building |goto 35.72,70.77 < 3 |walk
kill Taz'raka the Traitor##136595 |q 51162/1 |goto 35.50,70.86
|tip Inside the building.
|tip You may need help with this.
step
Leave the building |goto 35.74,70.76 < 3 |walk
Follow the path |goto 35.91,70.75 < 5 |only if walking
Follow the path down |goto 35.91,72.22 < 7 |only if walking
Follow the path |goto 36.35,73.39 < 7 |only if walking
Follow the path down |goto 37.99,75.85 < 7 |only if walking
Follow the path |goto 38.22,76.46 < 7 |only if walking
Follow the path |goto 38.56,76.87 < 7 |only if walking
talk Norah##125904
turnin WANTED: Taz'raka the Traitor##51162 |goto 38.88,77.31
step
Follow the path |goto 38.87,78.43 < 7 |only if walking
Follow the path down |goto 37.92,79.87 < 7 |only if walking
Run up the stairs |goto 36.64,81.66 < 5 |only if walking
Follow the path |goto 36.44,81.98 < 5 |only if walking
talk First Mate Jamboya##136309
turnin The Yard Arm of the Law##51055 |goto 35.31,83.20
turnin My Last Day Alive##51056 |goto 35.31,83.20
accept The Grinning Idols##47499 |goto 35.31,83.20
accept Maroon 'em with Fire##51057 |goto 35.31,83.20
stickystart "Burn_Pillaging_Canoes"
step
Jump down here |goto 35.48,82.89 < 5 |only if walking
Follow the path |goto 35.35,81.57 < 7 |only if walking
Follow the path |goto 35.39,80.88 < 7 |only if walking
click Captain Gulnaku's Treasure Map##289728
accept Captain Gulnaku's Treasure##49138 |goto 35.04,80.41
step
Run up the stairs |goto 34.93,80.86 < 5 |only if walking
Follow the path |goto 34.82,80.98 < 5 |only if walking
kill Quartermaster Boonzali##128346
collect Idol of Binding##153351 |q 47499/1 |goto 33.87,81.25
step
Run down the stairs |goto 34.08,79.86 < 5 |only if walking
Follow the path |goto 34.15,79.70 < 5 |only if walking
Follow the path |goto 34.25,79.12 7 |only if walking
kill Da Cabin Boy##128454
collect Idol of Immortality##151021 |q 47499/2 |goto 34.36,77.60
step
Run up the stairs |goto 33.63,77.30 < 5 |only if walking
Follow the path |goto 33.48,77.46 < 5 |only if walking
kill Master Gunner Torwec##136446
|tip He walks around this area.
collect Idol of Sacrifice##153352 |q 47499/3 |goto 32.95,78.09
step
Run down the stairs |goto 32.33,79.18 < 5 |only if walking
Follow the path |goto 32.19,79.32 < 5 |only if walking
Follow the path |goto 32.03,79.42 < 5 |only if walking
Jump down here |goto 31.87,79.36 < 5 |only if walking
Find the Buried Treasure |q 49138/1 |goto 31.76,79.28
step
kill Captain Gulnaku##128299
collect Captain Gulnaku's Key##153419 |q 49138/2 |goto 31.75,79.26
step
click Captain Gulnaku's Treasure##277530
turnin Captain Gulnaku's Treasure##49138 |goto 31.76,79.28
step
label "Burn_Pillaging_Canoes"
Run up the stairs |goto 31.51,79.57 < 5 |only if walking
Follow the path |goto 31.40,79.79 < 5 |only if walking
Follow the path |goto 31.35,80.11 < 5 |only if walking
Jump down here |goto 31.73,80.62 < 5 |only if walking
use the Undying Torch##159774
|tip Use it on Pillaging Canoes around this area.
|tip They look like large wooden canoes in the water along the shore around this area.
Burn #8# Pillaging Canoes |q 51057/1 |goto 32.69,80.37
step
Follow the path |goto 33.02,81.32 < 7 |only if walking
talk First Mate Jamboya##136310
|tip Under the bridge.
turnin The Grinning Idols##47499 |goto 33.28,81.77
turnin Maroon 'em with Fire##51057 |goto 33.28,81.77
accept The Golden Isle##51059 |goto 33.28,81.77
step
clicknpc Jamboya's Boat##136773
|tip Under the bridge.
Begin Riding Jamboya's Boat |invehicle |goto 33.25,81.85 |q 51059
step
Watch the dialogue
Ride Jamboya's Boat |q 51059/1 |goto 30.28,86.36 |notravel
step
talk First Mate Jamboya##136779
turnin The Golden Isle##51059 |goto 30.24,86.51
accept Our Share of the Plunder##51060 |goto 30.24,86.51
accept The First Time I Died##51061 |goto 30.24,86.51
stickystart "Collect_Cursed_Treasure_of_Zem'lan"
step
click Cursed Altar of Zem'lan##289734
Place the Idols on the Altar |q 51061/1 |goto 29.73,87.95
step
click Idol of Binding##288154
Attack the Idol of Binding |q 51061/2 |goto 29.71,87.98
step
_Next to you:_
talk First Mate Jamboya
turnin The First Time I Died##51061
step
label "Collect_Cursed_Treasure_of_Zem'lan"
Kill enemies around this area
click Cursed Treasure##287493+
|tip They look like large and small brown sacks with treasure in them on the ground around this area.
collect 12 Cursed Treasure of Zem'lan##152659 |q 51060/1 |goto 29.63,87.57
step
_Next to you:_
talk First Mate Jamboya
turnin Our Share of the Plunder##51060
accept This Be Mutiny##48326
step
click Gong of Zem'lan##289733
Ring the Gong of Zem'lan |q 48326/1 |goto 28.59,88.68
step
Watch the dialogue
kill Pirate-King Zem'lan##127025 |q 48326/2 |goto 28.58,88.37
step
Follow the path down |goto 29.36,88.33 < 7 |only if walking
Follow the path |goto 29.57,87.79 < 7 |only if walking
Follow the path |goto 30.24,86.85 < 7 |only if walking
talk First Mate Jamboya##136779
turnin This Be Mutiny##48326 |goto 30.24,86.51
accept Escaping Zem'lan##51062 |goto 30.24,86.51
step
clicknpc Jamboya's Boat##136773
Begin Riding Jamboya's Boat |invehicle |goto 30.27,86.32 |q 51062
step
Watch the dialogue
Ride Jamboya's Boat |q 51062/1 |goto 37.69,82.68 |notravel
step
Follow the path |goto 38.13,81.77 < 7 |only if walking
Follow the path up |goto 38.55,80.25 < 7 |only if walking
Follow the path |goto 38.57,79.05 < 7 |only if walking
Follow the path |goto 38.90,78.16 < 7 |only if walking
talk Norah##125904
turnin Escaping Zem'lan##51062 |goto 38.88,77.31
accept A Strange Delivery##48327 |goto 38.88,77.31
step
Run up the stairs |goto 43.39,75.84 < 5 |only if walking
Follow the path |goto 43.44,75.55 < 5 |only if walking
Run up the stairs |goto 44.38,75.42 < 5 |only if walking
Follow the path |goto 44.59,75.34 < 5 |only if walking
Follow the path |goto 44.83,73.97 < 7 |only if walking
Run down the stairs |goto 45.40,73.35 < 5 |only if walking
Run up the stairs |goto 46.45,73.35 < 5 |only if walking
Follow the path |goto 46.60,73.36 < 5 |only if walking
Enter the building |goto 47.01,73.34 < 5 |walk
kill Za'roco the Grifter##136601 |q 51161/1 |goto 47.30,73.70
|tip Inside the building.
|tip You may need help with this.
step
Leave the building |goto 47.02,73.46 < 5 |only if walking
Run down the stairs |goto 46.60,73.36 < 5 |only if walking
Follow the path |goto 46.43,73.35 < 5 |only if walking
Run up the stairs |goto 45.58,73.34 < 5 |only if walking
Follow the path |goto 45.38,73.36 < 5 |only if walking
Follow the path up |goto 44.86,73.94 < 7 |only if walking
Follow the path |goto 44.68,74.49 < 7 |only if walking
Run down the stairs |goto 44.55,75.42 < 5 |only if walking
Follow the path |goto 44.39,75.42 < 5 |only if walking
talk Razgaji##126576
turnin WANTED: Za'roco##51161 |goto 43.39,75.37
step
Run down the stairs |goto 43.40,75.64 < 5 |only if walking
Follow the path |goto 43.40,75.85 < 5 |only if walking
Follow the path |goto 43.57,77.13 < 7 |only if walking
Run down the stairs |goto 44.14,77.72 < 5 |only if walking
Follow the path |goto 44.16,78.13 < 5 |only if walking
Jump down here |goto 44.37,78.33 < 5 |only if walking
Run down the stairs |goto 45.44,79.02 < 5 |only if walking
Follow the path |goto 45.46,79.41 < 5 |only if walking
Follow the path up |goto 45.39,79.90 < 7 |only if walking
Follow the path up |goto 45.21,81.08 < 7 |only if walking
Follow the path |goto 45.87,81.77 < 7 |only if walking
Follow the path |goto 45.82,82.08 < 7 |only if walking
talk Randall Redmond##124468
turnin The Ashvane Threat##51773 |goto 45.65,82.32
accept Dead Men Tell No Tales##47870 |goto 45.65,82.32
accept Seafaring Necessities##47871 |goto 45.65,82.32
step
Follow the path down |goto 45.52,82.98 < 5 |only if walking
Follow the path up |goto 45.45,83.75 < 7 |only if walking
Follow the path |goto 46.19,85.22 < 7 |only if walking
Follow the path |goto 46.35,85.98 < 7 |only if walking
kill Expedition Leader Augustus##124593
collect Seafaring Hat##151628 |q 47871/1 |goto 46.18,86.47
step
Follow the path up |goto 46.35,86.48 < 5 |only if walking
Follow the path |goto 46.46,86.84 < 5 |only if walking
kill Gunner Erikson##124647 |q 47870/1 |goto 46.72,87.36
step
click Weathered Spyglass##272294
collect Weathered Spyglass##151631 |q 47871/3 |goto 46.72,87.29
step
kill First Mate Perry##124650
|tip She walks around this area.
Slay First Mate Perry |q 47870/3 |goto 46.89,87.95
step
kill Boatswain Hendricks##124648 |q 47870/2 |goto 48.08,86.90
step
click Nautical Map##272292
collect Nautical Map##151629 |q 47871/2 |goto 47.97,87.05
step
Follow the path |goto 47.58,86.50 < 7 |only if walking
talk Keerin##128422
accept If the Key Fits...##47939 |goto 47.60,86.16
stickystart "Collect_Ashvane_Garb"
step
Kill enemies around this area
collect 6 Ashvane Trader Key##151777 |q 47939/1 |goto 47.52,87.23
step
label "Collect_Ashvane_Garb"
Kill enemies around this area
collect 5 Ashvane Garb##160735 |goto 47.52,87.23 |q 47939
step
talk Keerin##128422
turnin If the Key Fits...##47939 |goto 47.60,86.15
accept The Master Key##49227 |goto 47.60,86.15
step
Follow the path |goto 47.58,86.46 < 7 |only if walking
Enter the cave |goto 47.89,88.18 < 5 |walk
Follow the path |goto 48.32,88.81 < 5 |walk
Follow the path |goto 48.52,88.68 < 5 |walk
Follow the path down |goto 48.68,88.29 < 5 |walk
Follow the path |goto 48.84,87.85 < 5 |walk
Follow the path |goto 49.39,87.86 < 5 |walk
kill Overseer Morrison##128418
|tip Inside the cave.
collect Morrison's Master Key##153420 |q 49227/1 |goto 49.67,88.35
step
use the Ashvane Garb##160735+
Wear the Ashvane Disguise |havebuff 236448 |q 49227
step
Follow the path |goto 49.39,87.84 < 5 |walk
Follow the path up |goto 48.91,87.82 < 5 |walk
Follow the path |goto 48.67,88.31 < 5 |walk
clicknpc Vulpera Captive##128421+
|tip They look like friendly fox NPC's mining around this area.
|tip Inside the cave.
Free #8# Vulpera Captives |q 49227/2 |goto 48.50,88.90
step
Follow the path |goto 48.21,88.79 < 5 |walk
Leave the cave |goto 47.87,88.11 < 5 |walk
Follow the path |goto 47.58,86.48 < 7 |only if walking
talk Keerin##128422
turnin The Master Key##49227 |goto 47.60,86.15
step
Follow the path |goto 47.23,86.29 < 7 |only if walking
Follow the path down |goto 46.76,86.04 < 7 |only if walking
Follow the path down |goto 46.21,85.81 < 7 |only if walking
Follow the path |goto 44.92,86.58 < 7 |only if walking
talk Randall Redmond##124468
turnin Dead Men Tell No Tales##47870 |goto 44.65,86.99
turnin Seafaring Necessities##47871 |goto 44.65,86.99
accept Captain Hartford##51810 |goto 44.65,86.99
step
Follow the path down |goto 45.03,86.98 < 7 |only if walking
Follow the path |goto 45.67,87.39 < 7 |only if walking
Follow the path |goto 45.30,88.06 < 7 |only if walking
Kill enemies around this area
collect 5 Ashvane Garb##160735 |goto 47.52,87.23 |q 51810
step
use the Ashvane Garb##160735+
Wear the Ashvane Disguise |havebuff 236448 |q 51810
step
Follow the path down |goto 45.19,89.49 < 7 |only if walking
Follow the path |goto 44.71,90.45 < 7 |only if walking
Follow the path |goto 44.31,90.47 < 7 |only if walking
Cross the bridge |goto 43.99,90.40 < 7 |only if walking
Cross the bridge |goto 43.66,90.16 < 5 |only if walking
Follow the path |goto 43.56,90.11 < 3 |only if walking
Follow the path |goto 43.43,90.35 < 3 |walk
Follow the path |goto 43.21,90.63 < 3 |walk
kill Captain Hartford##139164 |q 51810/1 |goto 43.14,90.80
|tip Inside the ship.
step
Follow the path |goto 43.19,90.65 < 3 |walk
Follow the path |goto 43.42,90.37 < 3 |c |q 51810
step
Run up the stairs |goto 43.22,90.12 < 3 |only if walking
Follow the path |goto 43.17,90.29 < 3 |only if walking
Follow the path |goto 43.29,90.46 < 5 |only if walking
Follow the path |goto 43.29,90.75 < 3 |walk
talk Captain Redmond##139070
|tip Upstairs inside the ship.
turnin Captain Hartford##51810 |goto 43.16,90.89
accept The Captain's Cache##47873 |goto 43.16,90.89
step
click Captain Hartford's Lockbox##282746
|tip Upstairs inside the ship.
turnin The Captain's Cache##47873 |goto 43.20,90.77
step
Follow the path |goto 43.28,90.79 < 3 |walk
Jump down here |goto 43.41,90.35 < 5 |only if walking
Jump down here |goto 43.58,90.12 < 5 |only if walking
Follow the path |goto 44.31,89.37 < 15 |only if walking
Follow the path |goto 44.46,88.49 < 7 |only if walking
talk Dockmaster Herrington##128618
accept Crabby Crew Stew##49261 |goto 44.60,88.23
accept Gang Bustin'##49262 |goto 44.60,88.23
stickystart "Confront_Shady_Deckhands"
step
kill Sand Scuttler##124567+
collect 8 Lumpy Crab Meat##151627 |q 49261/1 |goto 44.42,89.12
step
label "Confront_Shady_Deckhands"
Follow the path up |goto 44.62,89.25 < 7 |only if walking
Follow the path up |goto 45.01,89.69 < 7 |only if walking
Run up the stairs |goto 45.29,89.56 < 5 |only if walking
Follow the path |goto 45.28,89.82 < 5 |only if walking
Run up the stairs |goto 45.19,90.11 < 5 |only if walking
Follow the path |goto 45.14,90.37 < 5 |only if walking
talk Shady Deckhand##128617+
|tip Avoid Ashvane Overseers, they can see through your disguise.
Tell them _"I know you've been stealing from the company. I'm here to make sure it doesn't happen again..."_
Confront #8# Shady Deckhands |q 49262/1 |goto 45.05,90.68
step
Jump down here |goto 45.12,90.32 < 5 |only if walking
Follow the path down |goto 44.83,89.61 < 7 |only if walking
Follow the path |goto 44.56,89.01 < 7 |only if walking
Follow the path |goto 44.47,88.44 < 7 |only if walking
talk Dockmaster Herrington##128618
turnin Crabby Crew Stew##49261 |goto 44.60,88.23
turnin Gang Bustin'##49262 |goto 44.60,88.23
step
Run up the stairs |goto 43.38,75.84 < 5 |only if walking
Follow the path |goto 43.45,75.52 < 5 |only if walking
Run up the stairs |goto 44.37,75.41 < 5 |only if walking
Follow the path |goto 44.52,75.42 < 5 |only if walking
Run down the stairs |goto 44.86,75.40 < 5 |only if walking
Follow the path |goto 45.11,75.41 < 5 |only if walking
Jump down here |goto 45.59,75.44 < 5 |only if walking
Follow the path up |goto 46.34,75.44 < 7 |only if walking
clicknpc Serrik's Pterrordax##134544
Mount the Pterrordax |q 47324/1 |goto 46.79,75.45
step
Watch the dialogue
Fly to the Sanctuary of the Devoted |q 47324/2 |goto 27.24,54.09 |notravel
step
Watch the dialogue
talk Serrik##128687
turnin Unlikely Allies##47324 |goto 27.22,53.94
accept A Powerful Prisoner##49334 |goto 27.22,53.94
step
talk Zissiah##128696
accept Break Their Ranks##50641 |goto 27.20,53.86
accept Push Them Back!##49327 |goto 27.20,53.86
step
Enter the building |goto 27.21,53.73 < 5 |walk
Follow the path |goto 27.30,53.26 < 3 |walk
click Wanted: Sandscout Vesarik##287441
|tip Inside the building.
accept WANTED: Sandscout Vesarik##51165 |goto 27.36,53.29
step
Follow the path |goto 26.93,52.50 < 5 |walk
talk Issik##128693
|tip Inside the building.
home Sanctuary of the Devoted |goto 26.87,52.22 |q 51772 |future
step
Follow the path |goto 26.92,52.45 < 5 |walk
Follow the path |goto 27.07,52.44 < 5 |walk
Leave the building |goto 27.24,51.40 < 5 |walk
Run up the stairs |goto 27.59,50.52 < 5 |only if walking
talk Vethiss##128695
fpath Sanctuary of the Devoted |goto 27.65,50.33
stickystart "Burn_Sethrak_Banners"
stickystart "Crush_Sethrak_Cannons"
stickystart "Shatter_Sethrak_Spires"
stickystart "Slay_Faithless"
step
Run down the stairs |goto 28.06,50.99 < 5 |only if walking
Follow the path |goto 28.31,51.01 < 5 |only if walking
Run down the stairs |goto 28.64,51.02 < 5 |only if walking
Follow the path |goto 28.88,51.04 < 5 |only if walking
Follow the path |goto 29.82,51.96 < 7 |only if walking
click Sethrak Cage##277910
Rescue Vorrik |q 49334/1 |goto 30.02,51.98
step
Follow the path |goto 29.87,52.02 < 7 |only if walking
Follow the path |goto 29.25,53.95 < 7 |only if walking
click Desert Flute##282498
accept A Lost Flute##50818 |goto 28.97,54.65
step
label "Burn_Sethrak_Banners"
click Sethrak War Banner##277899+
|tip They look like wooden poles with red flags on the ground around this area.
Burn #4# Banners |q 49327/1 |goto 29.38,53.59
step
label "Crush_Sethrak_Cannons"
clicknpc Sethrak Cannon##129076+
|tip They look like stone cannons on the ground around this area.
Crush #2# Cannons |q 49327/2 |goto 29.38,53.59
step
label "Shatter_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone towers with lighting striking them on the ground around this area.
Shatter #2# Spires |q 49327/3 |goto 29.38,53.59
step
label "Slay_Faithless"
Kill Faithless enemies around this area
Slay #10# Faithless |q 50641/1 |goto 29.38,53.59
step
Run up the stairs |goto 28.83,54.05 < 5 |only if walking
Follow the path |goto 28.63,54.04 < 5 |only if walking
Run up the stairs |goto 28.29,54.05 < 5 |only if walking
Follow the path |goto 28.05,54.05 < 5 |only if walking
talk Zissiah##128696
turnin Break Their Ranks##50641 |goto 27.20,53.85
turnin Push Them Back!##49327 |goto 27.20,53.85
step
Enter the building |goto 27.22,53.66 < 5 |walk
Follow the path |goto 27.36,52.68 < 5 |walk
talk Vorrik##129519
|tip Inside the building.
turnin A Powerful Prisoner##49334 |goto 27.62,52.57
accept The Keepers' Keys##49340 |goto 27.62,52.57
step
talk Vorrik##129519
|tip Inside the building.
Choose _<Give Vorrik Sulthis' Stone.>_
Watch the dialogue
Speak to Vorrik |q 49340/1 |goto 27.62,52.57
step
talk Vorrik##128694
|tip Upstairs inside the building.
turnin The Keepers' Keys##49340 |goto 27.12,52.56
accept The Missing Key##49662 |goto 27.12,52.56
step
Run up the stairs |goto 27.51,52.57 < 5 |walk
Leave the building |goto 27.61,52.55 < 5 |walk
Run down the stairs |goto 27.87,52.56 < 5 |only if walking
Run down the stairs |goto 28.55,52.57 < 5 |only if walking
Run down the stairs |goto 28.86,52.63 < 5 |only if walking
Follow the path |goto 29.24,52.71 < 5 |only if walking
Follow the path |goto 29.31,53.24 < 7 |only if walking
Follow the path |goto 29.26,54.37 < 7 |only if walking
Run down the stairs |goto 29.48,54.67 < 5 |only if walking
Follow the path |goto 29.95,54.67 < 5 |only if walking
Cross the bridge |goto 30.67,54.95 < 7 |only if walking
Follow the path |goto 31.98,56.98 < 7 |only if walking
Follow the path down |goto 32.41,58.13 < 7 |only if walking
Follow the path down |goto 32.46,58.70 < 7 |only if walking
Continue down the path |goto 32.10,59.22 < 7 |only if walking
Follow the path up |goto 30.32,58.80 < 5 |only if walking
Follow the path up |goto 30.08,59.11 < 5 |only if walking
Follow the path up |goto 29.89,59.15 < 7 |only if walking
talk Jenoh##135400
turnin A Lost Flute##50818 |goto 29.52,59.35
accept A Charming Tail##50817 |goto 29.52,59.35
accept Just a Nip##50979 |goto 29.52,59.35
stickystart "Collect_Atrivax_Gel_Samples"
step
Follow the path |goto 29.96,59.24 < 7 |only if walking
Follow the path up |goto 30.03,61.04 < 7 |only if walking
Follow the path up |goto 30.34,62.34 < 7 |only if walking
Follow the path up |goto 29.93,62.97 < 7 |only if walking
use the Charming Flute##158883
|tip Use it near Strand Cobra Hatchlings around this area.
|tip They look like small friendly snakes on the ground around this area.
Send #15# Strand Cobras Home |q 50817/1 |goto 29.14,63.02
step
label "Collect_Atrivax_Gel_Samples"
Kill Atrivax enemies around this area
collect 10 Atrivax Gel Sample##159675 |q 50979/1 |goto 29.14,63.02
step
Follow the path down |goto 29.00,61.99 < 7 |only if walking
Follow the path |goto 29.77,61.01 < 7 |only if walking
Follow the path up |goto 30.02,59.44 < 7 |only if walking
Follow the path up |goto 29.88,59.13 < 5 |only if walking
talk Jenoh##135400
turnin A Charming Tail##50817 |goto 29.52,59.35
turnin Just a Nip##50979 |goto 29.52,59.35
accept My Hungry Neighbor##50980 |goto 29.52,59.35
step
Follow the path |goto 29.99,59.25 < 7 |only if walking
Follow the path up |goto 29.67,61.14 < 5 |only if walking
Follow the path up |goto 28.90,62.02 < 5 |only if walking
Follow the path |goto 28.49,61.94 < 7 |only if walking
Follow the path up |goto 28.30,61.90 < 7 |only if walking
kill Territorial Hydra##140050 |q 50980/1 |goto 27.92,61.20
step
Follow the path |goto 28.19,61.80 < 7 |only if walking
Follow the path down |goto 28.49,61.92 < 7 |only if walking
Follow the path down |goto 29.01,61.96 < 5 |only if walking
Follow the path |goto 29.83,60.92 < 7 |only if walking
Follow the path up |goto 30.01,59.35 < 7 |only if walking
Follow the path |goto 29.84,59.16 < 5 |only if walking
talk Jenoh##135400
turnin My Hungry Neighbor##50980 |goto 29.52,59.35
accept Keep It Down!##50834 |goto 29.52,59.35
step
Follow the path |goto 30.00,59.24 < 7 |only if walking
Follow the path up |goto 30.05,61.15 < 7 |only if walking
Follow the path up |goto 30.35,62.19 < 7 |only if walking
Follow the path |goto 30.17,63.13 < 7 |only if walking
Follow the path down |goto 29.97,63.61 < 7 |only if walking
Follow the path down |goto 29.39,64.25 < 7 |only if walking
Follow the path |goto 28.76,64.94 < 7 |only if walking
Follow the path |goto 27.79,65.47 < 7 |only if walking
Continue following the path |goto 26.71,68.18 < 7 |only if walking
Continue following the path |goto 26.74,69.43 < 7 |only if walking
Continue following the path |goto 26.33,71.18 < 7 |only if walking
Continue following the path |goto 25.71,71.97 < 7 |only if walking
Continue following the path |goto 25.76,72.78 < 7 |only if walking
talk Merd Archfeld##135179
turnin Keep It Down!##50834 |goto 26.20,73.65
accept Calldown: Cleaner##50771 |goto 26.20,73.65
accept Get Us Some Beach##50775 |goto 26.20,73.65
accept Power Problems##52129 |goto 26.20,73.65
stickystart "Collect_Piles_Of_Sand"
step
Follow the path |goto 27.21,73.68 < 7 |only if walking
Follow the path up |goto 28.05,72.23 < 7 |only if walking
Follow the path up |goto 29.30,72.13 < 7 |only if walking
Continue up the path |goto 29.98,71.47 < 7 |only if walking
Continue up the path |goto 30.11,70.56 < 5 |only if walking
Follow the path |goto 30.40,69.89 < 7 |only if walking
Follow the path |goto 29.95,68.84 < 7 |only if walking
Follow the path down |goto 29.09,68.17 < 7 |only if walking
talk Rozzy##140046
|tip She walks around this area.
turnin Power Problems##52129 |goto 28.45,68.59
accept Charging the Batteries##51991 |goto 28.45,68.59
stickystop "Collect_Piles_Of_Sand"
step
clicknpc Lectric Frequency Modulator##143377
Use the Lectric Frequency Modulator |q 51991/1 |goto 28.66,68.69
step
Kill enemies around this area
|tip Roll over them to kill them.
Feed Lashers to the Ranishu |q 51991/2 |goto 29.45,67.68
step
talk Rozzy##140046
|tip She walks around this area.
turnin Charging the Batteries##51991 |goto 28.44,68.60
stickystart "Collect_Piles_Of_Sand"
step
Follow the path down |goto 28.52,68.28 < 7 |only if walking
Follow the path down |goto 28.22,67.94 < 7 |only if walking
Continue down the path |goto 27.94,67.37 < 7 |only if walking
Continue down the path |goto 27.63,67.06 < 7 |only if walking
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 27.63,66.60 |count 1
step
Follow the path |goto 27.06,65.83 < 7 |only if walking
Follow the path up |goto 26.47,65.66 < 7 |only if walking
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 26.09,65.93 |count 2
step
Follow the path down |goto 26.13,66.52 < 7 |only if walking
Follow the path |goto 26.06,67.05 < 7 |only if walking
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 25.43,68.08 |count 3
step
Follow the path |goto 25.25,67.69 < 7 |only if walking
Follow the path |goto 24.47,67.48 < 7 |only if walking
Follow the path |goto 24.08,66.94 < 7 |only if walking
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 24.20,66.48 |count 4
step
Follow the path |goto 24.06,66.91 < 7 |only if walking
Continue following the path |goto 23.80,68.18 < 7 |only if walking
Continue following the path |goto 23.87,68.84 < 7 |only if walking
Continue following the path |goto 24.64,69.92 < 7 |only if walking
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 25.41,70.21 |count 5
step
label "Collect_Piles_Of_Sand"
kill Siroccan##135006+
collect 20 Pile of Sand##158707 |q 50775/1 |goto 25.77,70.89
step
Follow the path |goto 25.66,72.63 < 7 |only if walking
talk Merd Archfeld##135179
turnin Calldown: Cleaner##50771 |goto 26.20,73.65
turnin Get Us Some Beach##50775 |goto 26.20,73.65
step
talk Nerin Solvis##135180
accept Awakened Elements##50812 |goto 26.19,73.70
step
Follow the path |goto 25.68,72.67 < 7 |only if walking
Continue following the path |goto 25.38,70.63 < 7 |only if walking
Continue following the path |goto 23.85,68.90 < 7 |only if walking
Continue following the path |goto 23.86,68.03 < 7 |only if walking
Continue following the path |goto 24.03,66.49 < 7 |only if walking
Follow the path |goto 24.23,65.73 < 7 |only if walking
Follow the path up |goto 25.27,64.40 < 7 |only if walking
Investigate the Disturbance to the North |q 50812/1 |goto 25.57,64.62
step
kill Enraged Azermental##135349 |q 50812/2 |goto 25.79,64.85
step
Follow the path down |goto 25.55,64.62 < 5 |only if walking
Follow the path |goto 25.22,64.36 < 7 |only if walking
Continue following the path |goto 24.12,66.23 < 7 |only if walking
Continue following the path |goto 23.82,68.07 < 7 |only if walking
Continue following the path |goto 23.88,68.84 < 7 |only if walking
Continue following the path |goto 24.53,69.77 < 7 |only if walking
Continue following the path |goto 25.46,70.74 < 7 |only if walking
Continue following the path |goto 25.73,72.73 < 7 |only if walking
talk Nerin Solvis##135180
turnin Awakened Elements##50812 |goto 26.19,73.70
step
Follow the path |goto 26.93,52.45 < 5 |walk
Follow the path |goto 27.07,52.45 < 5 |walk
Leave the building |goto 27.24,51.41 < 5 |walk
Follow the path |goto 27.39,51.07 < 7 |only if walking
Run down the stairs |goto 28.08,51.01 < 5 |only if walking
Follow the path |goto 28.31,51.01 < 5 |only if walking
Run down the stairs |goto 28.63,51.01 < 5 |only if walking
Follow the path |goto 28.86,50.98 < 5 |only if walking
Run down the stairs |goto 29.46,50.54 < 5 |only if walking
Follow the path |goto 29.98,50.48 < 5 |only if walking
Cross the bridge |goto 30.64,50.20 < 7 |only if walking
Follow the path |goto 31.98,48.25 < 7 |only if walking
Follow the path |goto 32.24,48.09 < 5 |only if walking
talk Izarn##128691
accept Building Our Arsenal##49333 |goto 32.31,48.39
accept Skycaller Slaughter##49335 |goto 32.31,48.39
step
talk Seriah##134611
accept Risky Rescue##50656 |goto 32.68,48.44
stickystart "Collect_Sethrak_Weapons"
stickystart "Kill_Faithless_Skycallers"
step
Follow the path |goto 32.55,47.80 < 7 |only if walking
Follow the path |goto 32.59,47.24 < 7 |only if walking
Follow the path up |goto 33.56,46.44 < 7 |only if walking
Follow the path |goto 34.25,45.51 7 |only if walking
Follow the path |goto 35.13,45.14 < 7 |only if walking
Follow the path up |goto 35.66,45.25 < 7 |only if walking
Follow the path up |goto 35.79,45.94 < 7 |only if walking
Follow the path up |goto 36.02,46.29 < 7 |only if walking
Follow the path |goto 36.08,46.84 < 7 |only if walking
Follow the path |goto 36.32,47.32 < 7 |only if walking
click Sethrak Cage##273680+
|tip They look like metal cages on the ground around this area.
Rescue #4# Temple Defenders |q 50656/1 |goto 36.65,47.58
step
label "Collect_Sethrak_Weapons"
click Sethrak Weapon##278190
|tip They look weapons on racks on the ground around this area.
collect 20 Sethrak Weapon##153556 |q 49333/1 |goto 36.65,47.58
step
label "Kill_Faithless_Skycallers"
kill 6 Faithless Skycaller##128678 |q 49335/1 |goto 36.65,47.58
step
Follow the path |goto 36.20,47.05 < 7 |only if walking
Follow the path down |goto 36.02,46.54 < 7 |only if walking
Follow the path down |goto 35.75,45.84 < 7 |only if walking
Follow the path |goto 35.57,45.18 < 7 |only if walking
Continue following the path |goto 35.11,45.17 < 7 |only if walking
Continue following the path |goto 34.25,45.54 < 7 |only if walking
Continue following the path |goto 33.39,46.58 < 7 |only if walking
Continue following the path |goto 32.57,47.25 < 7 |only if walking
Continue following the path |goto 32.31,47.85 < 7 |only if walking
talk Izarn##128691
turnin Building Our Arsenal##49333 |goto 32.31,48.39
turnin Skycaller Slaughter##49335 |goto 32.31,48.39
step
talk Seriah##134611
turnin Risky Rescue##50656 |goto 32.68,48.44
step
Follow the path |goto 32.55,47.79 < 7 |only if walking
Follow the path |goto 32.56,47.27 < 7 |only if walking
Follow the path up |goto 33.55,46.46 < 7 |only if walking
Follow the path |goto 34.22,45.56 < 7 |only if walking
Follow the path |goto 35.10,45.16 < 7 |only if walking
Continue following the path |goto 35.94,44.97 < 7 |only if walking
Continue following the path |goto 36.47,44.57 < 7 |only if walking
Continue following the path |goto 37.51,44.40 < 7 |only if walking
Continue following the path |goto 38.37,44.94 < 7 |only if walking
Continue following the path |goto 39.87,44.99 < 7 |only if walking
Continue following the path |goto 40.43,45.41 < 7 |only if walking
kill Sandscout Vesarik##136596 |q 51165/1 |goto 42.34,46.09
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
|tip You may need help with this.
step
Follow the path |goto 42.99,43.27 < 7 |only if walking
Run down the stairs |goto 42.84,42.60 < 5 |only if walking
Follow the path |goto 42.63,42.15 < 5 |only if walking
Follow the path |goto 42.49,41.63 < 7 |only if walking
Run down the stairs |goto 42.95,40.43 < 5 |only if walking
Follow the path |goto 42.96,40.02 < 5 |only if walking
Cross the bridge |goto 42.96,39.15 < 7 |only if walking
Follow the path |goto 42.96,37.37 < 7 |only if walking
talk Vorrik##137970
turnin The Missing Key##49662 |goto 42.92,35.75
accept Infiltrating the Empire##50745 |goto 42.92,35.75
step
Run up the stairs |goto 42.96,35.49 < 5 |only if walking
Follow the path |goto 42.95,35.35 < 5 |only if walking
Follow the path |goto 42.78,34.19 < 7 |only if walking
Run up the stairs |goto 42.89,33.90 < 5 |only if walking
Follow the path |goto 43.39,33.91 < 5 |only if walking
Cross the bridge |goto 44.07,34.52 < 5 |only if walking
Follow the path |goto 44.88,34.74 < 5 |only if walking
Follow the path |goto 46.01,34.66 < 7 |only if walking
Follow the path up |goto 47.06,34.92 < 7 |only if walking
talk Lugo the Windrider##135385
fpath Vorrik's Sanctum |goto 47.30,35.23
step
Follow the path |goto 47.72,35.15 < 7 |only if walking
Follow the path |goto 47.88,35.30 < 7 |only if walking
Enter the cave |goto 47.95,35.57 < 3 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Infiltrating the Empire##50745 |goto 47.96,36.39
accept Allies in Anarchy##49664 |goto 47.96,36.39
step
talk Meerah##135355
|tip Inside the cave.
accept The Little Ones##49667 |goto 47.99,36.51
step
talk Zareen##134613
|tip He walks around this area.
|tip Inside the building.
turnin WANTED: Sandscout Vesarik##51165 |goto 26.79,52.86
step
Follow the path |goto 27.07,52.46 < 5 |walk
Leave the building |goto 27.24,51.42 < 5 |walk
Run up the stairs |goto 27.57,50.53 < 5 |only if walking
Follow the path down |goto 46.66,34.31 < 7 |only if walking
talk Nisha##135090
turnin Allies in Anarchy##49664 |goto 46.14,33.22
accept Ready to Riot##49665 |goto 46.14,33.22
accept Make Them Fear Us##49666 |goto 46.14,33.22
stickystart "Plant_Vulpera_Banners"
stickystart "Arm_Slaves"
step
Follow the path down |goto 46.39,33.19 < 5 |only if walking
Follow the path |goto 47.16,33.82 < 7 |only if walking
Follow the path |goto 48.18,33.01 < 7 |only if walking
Follow the path |goto 48.83,32.59 < 7 |only if walking
Follow the path |goto 48.79,32.30 < 7 |only if walking
kill Appraiser Versik##130396 |q 49667/1 |goto 48.47,32.19
step
label "Plant_Vulpera_Banners"
Kill Faithless enemies around this area
use the Vulpera Banners##158884
|tip Use it near their corpses.
Plant #12# Vulpera Banners |q 49666/1 |goto 47.60,32.31
step
label "Arm_Slaves"
click Faithless Weapon Rack##287006+
|tip They look like wooden racks of weapons on the ground around this area.
collect Faithless Scimitar##159470+ |n
talk Vulpera Slave##130342+
Choose _<Free the slave and give them a weapon to fight with.>_
|tip They look like friendly fox NPC's around this area.
|tip You must have a Faithless Scimitar to be able to arm them.
Arm #8# Slaves |q 49665/1 |goto 47.60,32.31
step
Follow the path up |goto 47.34,33.72 < 7 |only if walking
Follow the path up |goto 47.11,33.83 < 7 |only if walking
Follow the path |goto 46.33,33.20 < 5 |only if walking
talk Nisha##135090
turnin Ready to Riot##49665 |goto 46.15,33.22
turnin Make Them Fear Us##49666 |goto 46.15,33.22
accept Crater Conquered##50746 |goto 46.15,33.22
step
talk Kiro##137981
accept Light Up the Gulch##49668 |goto 46.10,33.26
step
Follow the path up |goto 46.29,33.59 < 7 |only if walking
Follow the path up |goto 46.88,34.68 < 7 |only if walking
Follow the path |goto 47.74,35.16 < 5 |only if walking
Follow the path |goto 47.88,35.33 < 5 |only if walking
Enter the cave |goto 47.95,35.61 < 3 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Crater Conquered##50746 |goto 47.96,36.39
accept Diplomacy and Dominance##49141 |goto 47.96,36.39
accept Don't Drop It... Yet##50748 |goto 47.96,36.39
step
talk Meerah##135355
|tip Inside the cave.
turnin The Little Ones##49667 |goto 47.99,36.51
stickystart "Collect_Volatile_Lightning_Bombs"
step
Follow the path |goto 47.97,36.07 < 3 |walk
Leave the cave |goto 47.94,35.55 < 3 |walk
Follow the path |goto 47.98,35.27 < 5 |only if walking
Continue following the path |goto 48.26,35.18 < 5 |only if walking
Continue following the path |goto 48.76,34.36 < 7 |only if walking
Follow the path up |goto 49.68,34.95 < 7 |only if walking
Follow the path up |goto 48.77,36.09 < 7 |only if walking
Follow the path |goto 48.23,36.94 < 7 |only if walking
click Suppression Spire##290707+
|tip They look like tall stone towers on the ground around this area.
Drain #6# Suppression Spires |q 49141/1 |goto 47.80,36.98
step
label "Collect_Volatile_Lightning_Bombs"
Kill Ridge enemies around this area
collect 6 Volatile Lightning Bomb##154896 |q 50748/1 |goto 47.80,36.98
step
Follow the path up |goto 47.77,37.87 < 5 |only if walking
Follow the path up |goto 48.03,39.00 < 5 |only if walking
Follow the path |goto 47.93,39.15 < 5 |only if walking
click Faithless Trapper's Spear##278447
accept Forced Grounding##49002 |goto 47.10,38.71
step
use the Faithless Trapper's Spear##154893
|tip Use it on Hrillik's Pterrordax.
|tip He's flying in the air nearby.
|tip He will appear on your minimap as a yellow dot.
kill Hrillik's Pterrordax##129856
kill Fangcaller Hrillik##129848 |q 49002/1 |goto 47.33,38.54
step
talk Vorrik##135110
turnin Diplomacy and Dominance##49141 |goto 47.20,39.15
turnin Don't Drop It... Yet##50748 |goto 47.20,39.15
accept Vengeance From Above##49003 |goto 47.20,39.15
step
talk Rakjan the Unbroken##129763
turnin Forced Grounding##49002 |goto 47.16,39.34
step
clicknpc Rakjan the Unbroken##138547
Mount Rakjan the Unbroken |q 49003/1 |goto 47.16,39.34
step
Kill Faithless enemies around this area
|tip Use the "Lightning Bomb" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #60# Faithless |q 49003/2 |goto 48.13,32.14
step
Destroy the Spire Barrier |q 49003/3 |goto 51.95,32.61
|tip Use the "Vorrik's Barrage" ability on your action bar.
step
talk Vorrik##135111
turnin Vengeance From Above##49003 |goto 51.95,28.69
accept Infuriating the Emperor##50750 |goto 51.95,28.69
accept Relics of Sethraliss##50752 |goto 51.95,28.69
stickystart "Purge_Faithless"
step
Follow the path |goto 51.74,28.87 < 7 |only if walking
Run up the stairs |goto 50.99,28.38 < 5 |only if walking
Follow the path |goto 50.68,28.37 < 5 |only if walking
Follow the path |goto 50.20,28.23 < 7 |only if walking
click Rebirth Creed##282451
collect Rebirth Creed##158722 |q 50752/1 |goto 49.89,28.50
step
Follow the path |goto 50.12,28.10 < 7 |only if walking
click Skull of the First Skycaller##290755
collect Skull of the First Skycaller##160526 |q 50752/2 |goto 50.25,26.69
step
Follow the path |goto 49.80,27.17 < 7 |only if walking
Run up the stairs |goto 49.46,27.25 < 5 |only if walking
Follow the path |goto 49.11,26.96 < 5 |only if walking
Follow the path |goto 48.49,26.42 < 7 |only if walking
click Sethraliss Sight Stone##290756
collect Sethraliss Sight Stone##160527 |q 50752/3 |goto 48.24,26.15
step
Follow the path |goto 48.53,26.42 < 7 |only if walking
Follow the path |goto 48.85,26.17 < 7 |only if walking
Follow the path |goto 49.01,25.67 < 7 |only if walking
click Blood of the Fallen Loa##290757
collect Blood of the Fallen Loa##160528 |q 50752/4 |goto 49.56,24.36
step
label "Purge_Faithless"
Kill Faithless enemies around this area
|tip Simply run near them.
|tip Run over the Lightning Orbs that appear on the ground to recharge the ability bar.
Purge #75# Faithless |q 50750/1 |goto 49.66,25.28
step
Run down the stairs |goto 50.60,26.35 < 5 |only if walking
Follow the path |goto 51.05,26.54 < 5 |only if walking
Follow the path |goto 51.23,26.97 < 7 |only if walking
Run up the stairs |goto 51.26,27.74 < 5 |only if walking
Follow the path |goto 51.27,28.00 < 5 |only if walking
Follow the path |goto 51.52,28.73 < 7 |only if walking
Follow the path |goto 51.82,28.87 < 7 |only if walking
talk Vorrik##135111
turnin Infuriating the Emperor##50750 |goto 51.94,28.69
turnin Relics of Sethraliss##50752 |goto 51.94,28.69
step
Watch the dialogue
talk Vorrik##135111
accept The Fall of Emperor Korthek##50550 |goto 51.94,28.69
step
talk Vorrik##138411
Tell him _"Vorrik, I'm ready to face Emperor Korthek."_
Watch the dialogue
Speak with Vorrik |q 50550/1 |goto 51.95,28.69
step
kill Emperor Korthek##134601 |q 50550/2 |goto 51.96,27.25
step
Watch the dialogue
talk Vorrik##135390
turnin The Fall of Emperor Korthek##50550 |goto 51.98,27.72
accept Sanctuary Under Siege##50751 |goto 51.98,27.72
step
Follow the path |goto 52.11,28.04 < 5 |only if walking
Run up the stairs |goto 51.96,28.44 < 5 |only if walking
Follow the path |goto 51.95,28.64 < 5 |only if walking
Run down the stairs |goto 51.94,29.43 < 7 |only if walking
Follow the path |goto 51.94,30.30 < 7 |only if walking
Run down the stairs |goto 51.94,30.67 < 7 |only if walking
Follow the path |goto 51.91,31.14 < 7 |only if walking
Jump down here |goto 51.67,32.21 < 5 |only if walking
Jump down here |goto 50.87,32.78 < 5 |only if walking
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the West Slave Market |q 49668/1 |goto 50.75,32.84
step
Follow the path |goto 51.05,33.18 < 7 |only if walking
Follow the path |goto 51.95,33.37 < 7 |only if walking
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the Central Slave Market |q 49668/2 |goto 52.32,33.05
step
Follow the path |goto 52.66,33.51 < 7 |only if walking
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the East Slave Market |q 49668/3 |goto 53.46,33.22
step
Follow the path |goto 53.96,33.64 < 7 |only if walking
click Tattered Note##278368
accept Tattered Note##49437 |goto 54.36,34.27
step
Follow the path |goto 54.58,34.23 < 7 |only if walking
Follow the path up |goto 55.14,34.71 < 7 |only if walking
talk Kiro##135099
turnin Light Up the Gulch##49668 |goto 55.43,35.03
accept Unleash the Beasts##49669 |goto 55.43,35.03
accept Untame Slaughter##50757 |goto 55.43,35.03
stickystart "Slay_Faithless_3"
step
Follow the path |goto 55.71,34.93 < 5 |only if walking
Follow the path |goto 55.92,34.48 < 7 |only if walking
Follow the path up |goto 55.92,34.23 < 7 |only if walking
Follow the path |goto 55.58,33.96 < 7 |only if walking
Follow the path |goto 55.10,33.77 < 7 |only if walking
kill Shath'kar##129754 |q 49437/1 |goto 54.46,33.16
|tip He walks around this area.
step
Follow the path |goto 54.72,33.34 < 7 |only if walking
Continue following the path |goto 55.15,33.77 < 7 |only if walking
Follow the path down |goto 55.64,33.97 < 7 |only if walking
Follow the path |goto 56.04,34.13 < 7 |only if walking
Follow the path |goto 56.12,33.85 < 7 |only if walking
Continue following the path |goto 55.93,33.13 < |only if walking
Continue following the path |goto 55.98,32.44 < 7 |only if walking
Enter the cave |goto 55.84,32.17 < 5 |walk
Follow the path |goto 55.51,31.88 < 5 |walk
kill Crawg Tamer Traskniss##135042 |q 49669/1 |goto 55.29,30.75
|tip Inside the cave.
step
Follow the path |goto 55.41,31.56 < 5 |walk
Follow the path |goto 55.65,32.01 < 5 |walk
Leave the cave |goto 55.97,32.25 < 5 |c |q 50757
step
label "Slay_Faithless_3"
Follow the path |goto 56.02,32.70 < 7 |only if walking
Follow the path |goto 55.97,33.11 < 7 |only if walking
Kill Faithless enemies around this area
Slay #8# Faithless |q 50757/1 |goto 56.26,33.81
step
Follow the path |goto 56.20,33.94 < 15 |only if walking
Follow the path |goto 55.94,34.55 < 7 |only if walking
Follow the path down |goto 55.76,34.89 < 5 |only if walking
talk Kiro##135099
turnin Unleash the Beasts##49669 |goto 55.43,35.03
turnin Untame Slaughter##50757 |goto 55.43,35.03
accept Free Ride##50749 |goto 55.43,35.03
step
clicknpc Battle Krolusk##135998
Steal the Battle Krolusk |q 50749/1 |goto 55.24,35.22
step
Follow the path |goto 55.52,35.72 < 7 |only if walking
Continue following the path |goto 56.25,36.20 < 7 |only if walking
Continue following the path |goto 57.92,36.32 < 10 |only if walking
Continue following the path |goto 59.07,35.82 < 7 |only if walking
Continue following the path |goto 59.82,34.81 < 7 |only if walking
Follow the path |goto 60.47,34.20 < 7 |only if walking
Follow the path up |goto 60.58,33.02 < 7 |only if walking
Follow the path up |goto 60.51,30.95 < 7 |only if walking
Follow the path |goto 61.50,29.49 < 7 |only if walking
Continue following the path |goto 61.93,27.00 < 7 |only if walking
Cross the bridge |goto 61.54,24.48 < 7 |only if walking
Follow the path |goto 61.77,22.57 < 7 |only if walking
talk Torka##134098
turnin The Tortaka Tribe##51772 |goto 62.03,22.33
accept They Came From The Sea##47577 |goto 62.03,22.33
accept Hidden Motives##47570 |goto 62.03,22.33
step
talk Churka##134128
accept Crab Trapping##47943 |goto 61.98,22.15
step
talk Scroll of Flight##135387
fpath Tortaka Refuge |goto 61.90,21.66
step
talk Tuka##138917
home Tortaka Refuge |goto 61.50,20.54
stickystart "Trap_Clampclaw_Clackers"
stickystart "Interrogate_Spirits"
step
Jump down here |goto 62.03,22.53 < 5 |only if walking
Follow the path |goto 62.92,23.03 < 7 |only if walking
Follow the path up |goto 63.96,22.73 < 7 |only if walking
Follow the path up |goto 64.22,22.64 < 7 |only if walking
kill Overseer Zarjish##134250
collect Invasion Plans##157866 |q 47570/1 |goto 64.57,22.94
step
label "Trap_Clampclaw_Clackers"
use the Crab Trap##151763
|tip Use it on Clampclaw Clackers around this area.
|tip They look like red crabs on the ground around this area.
Trap #8# Clampclaw Clackers |q 47943/1 |goto 64.41,24.14
step
label "Interrogate_Spirits"
Kill Stormcoil enemies around this area
use the Soulcaller Scroll##160585
|tip Use it on their corpses.
Interrogate #8# Spirits |q 47577/1 |goto 64.41,24.14
step
Follow the path up |goto 62.55,23.20 < 7 |only if walking
Follow the path up |goto 62.05,23.42 < 5 |only if walking
Continue up the path |goto 61.44,23.20 < 5 |only if walking
Continue up the path |goto 61.22,22.42 < 5 |only if walking
Follow the path |goto 61.57,21.82 < 7 |only if walking
talk Churka##134128
turnin Crab Trapping##47943 |goto 61.98,22.15
step
talk Torka##134098
turnin Hidden Motives##47570 |goto 62.03,22.33
turnin They Came From The Sea##47577 |goto 62.03,22.33
accept The Elder's Wisdom##47571 |goto 62.03,22.33
step
Follow the path |goto 61.79,21.67 < 7 |only if walking
talk Elder Kuppaka##123063
Tell him _"Torka asked me to deliver this to you."_
Deliver the Plans |q 47571/1 |goto 61.60,20.54
step
talk Elder Kuppaka##123063
turnin The Elder's Wisdom##47571 |goto 61.60,20.54
accept The Ruined Temple##47965 |goto 61.60,20.54
step
Follow the path |goto 61.44,20.91 < 5 |only if walking
Cross the bridge |goto 61.00,21.00 < 7 |only if walking
Follow the path |goto 59.81,20.21 < 7 |only if walking
Follow the path up |goto 59.27,19.83 < 7 |only if walking
Follow the path up |goto 58.87,18.42 < 7 |only if walking
Continue up the path |goto 58.31,17.38 < 7 |only if walking
Follow the path |goto 58.08,16.71 < 7 |only if walking
Follow the path |goto 57.26,16.31 < 7 |only if walking
Follow the path down |goto 57.36,15.53 < 7 |only if walking
Follow the path down |goto 57.61,14.75 < 7 |only if walking
Follow the path down |goto 57.28,13.50 < 7 |only if walking
Follow the path |goto 57.70,13.05 < 7 |only if walking
talk Teekcha##134133
turnin The Ruined Temple##47965 |goto 58.55,11.82
accept Blessing of Kimbul##47581 |goto 58.55,11.82
step
talk Tulu##134134
accept Jungleweb Infestation##47573 |goto 58.50,11.73
accept All Webbed Up##47574 |goto 58.50,11.73
stickystart "Squish_Hatchlings"
stickystart "Free_Tortakas"
stickystart "Kill_Jungleweb_Crawlers"
step
Run down the stairs |goto 58.41,12.90 < 5 |only if walking
Follow the path |goto 58.72,13.44 < 5 |only if walking
Run down the stairs |goto 59.08,14.06 < 5 |only if walking
Follow the path |goto 59.32,14.42 < 5 |only if walking
Run down the stairs |goto 59.98,14.54 < 5 |only if walking
Follow the path |goto 60.38,14.01 < 5 |only if walking
Follow the path |goto 60.66,13.99 < 7 |only if walking
Run up the stairs |goto 60.93,14.80 < 5 |only if walking
Enter the building |goto 61.02,14.95 < 3 |walk
click Statue of Eraka No Kimbul##281536
|tip Inside the building.
Tell it _"I seek the loa's blessing."_
Tell it _"Act with courage in all matters."_
Tell it _"An indomitable will."_
Tell it _"A life lived with honor."_
Tell it _"They see that they belong to nature."_
Complete the Trial of Wisdom |q 47581/1 |goto 61.14,15.14
step
clicknpc Ring of Tides##138797
|tip Inside the building.
Gain the Ring of Tides |q 47581/2 |goto 61.15,15.16
step
Leave the building |goto 61.01,14.93 < 3 |c |q 47573
step
label "Squish_Hatchlings"
Squish #30# Hatchlings |q 47573/2 |goto 60.76,14.54
|tip They look like small baby spiders on the ground around this area.
|tip Walk over them.
step
label "Free_Tortakas"
kill Jungleweb Victim##137167+
|tip They look like squirming white cocoons on the ground around this area.
|tip Some will contain enemies.
Free #8# Tortakas |q 47574/1 |goto 60.76,14.54
step
label "Kill_Jungleweb_Crawlers"
kill 6 Jungleweb Crawler##123813 |q 47573/1 |goto 60.76,14.54
step
Run up the stairs |goto 60.35,13.98 < 5 |only if walking
Follow the path |goto 59.98,14.55 < 5 |only if walking
Run up the stairs |goto 59.32,14.43 < 5 |only if walking
Follow the path |goto 59.07,14.06 < 5 |only if walking
Run up the stairs |goto 58.69,13.47 < 5 |only if walking
Follow the path |goto 58.38,12.84 < 5 |only if walking
talk Tulu##134134
turnin Jungleweb Infestation##47573 |goto 58.50,11.73
turnin All Webbed Up##47574 |goto 58.50,11.73
step
talk Teekcha##134133
turnin Blessing of Kimbul##47581 |goto 58.55,11.82
accept Offering for the Loa##47928 |goto 58.55,11.82
step
Run up the stairs |goto 58.02,12.35 < 5 |only if walking
Enter the building |goto 57.45,11.57 < 5 |walk
Run up the stairs |goto 56.70,10.45 < 5 |walk
talk Kimbul##123052
|tip Inside the building.
Tell him _"Great loa, this offering is from the Tortaka tribe."_
Deliver the Offering |q 47928/1 |goto 56.57,10.24
step
talk Kimbul##123052
|tip Inside the building.
turnin Offering for the Loa##47928 |goto 56.57,10.24
accept The Curse of Mepjila##47580 |goto 56.57,10.24
step
use the Spirit Mask##151826
Wear the Spirit Mask |q 47580/1
step
Follow the path |goto 57.06,10.99 < 5 |walk
Leave the building |goto 57.45,11.56 < 5 |walk
Run down the stairs |goto 57.56,11.73 < 5 |only if walking
Follow the path |goto 58.00,12.40 < 5 |only if walking
Run down the stairs |goto 58.38,12.99 < 5 |only if walking
Follow the path |goto 58.69,13.46 < 5 |only if walking
Run down the stairs |goto 59.09,14.07 < 5 |only if walking
Follow the path |goto 59.36,14.43 < 5 |only if walking
Run down the stairs |goto 59.95,14.56 < 5 |only if walking
Follow the path |goto 60.35,13.97 < 5 |only if walking
kill Summoner Mepjila##131633 |q 47580/2 |goto 60.89,13.19
step
Run up the stairs |goto 60.35,13.99 < 5 |only if walking
Follow the path |goto 59.94,14.58 < 5 |only if walking
Run up the stairs |goto 59.34,14.42 < 5 |only if walking
Follow the path |goto 59.08,14.07 < 5 |only if walking
Run up the stairs |goto 58.69,13.47 < 5 |only if walking
Follow the path |goto 58.36,12.96 < 5 |only if walking
Run up the stairs |goto 57.98,12.40 < 5 |only if walking
Return to the Realm of the Living |nobuff 135462 |goto 57.55,11.73 |q 47580
step
Enter the building |goto 57.44,11.56 < 5 |walk
Run up the stairs |goto 56.70,10.44 < 5 |walk
talk Kimbul##123052
|tip Inside the building.
turnin The Curse of Mepjila##47580 |goto 56.57,10.24
accept Wrath of the Tiger##47576 |goto 56.57,10.24
step
talk Kimbul##123052
|tip Inside the building.
Tell him _"Send me to the battlefield."_
Speak with Kimbul |q 47576/1 |goto 56.57,10.24
step
Watch the dialogue
Reach the Battlefield |goto 61.89,13.15 < 7 |c |q 47576 |notravel
step
Kill Stormcoil enemies around this area
|tip Use the abilities on your action bar.
Slay #45# Naga |q 47576/2 |goto 62.42,13.18
step
Watch the dialogue
Return to the Temple of Kimbul |goto 56.66,10.38 < 7 |c |q 47576 |notravel
step
talk Kimbul##123052
|tip Inside the building.
turnin Wrath of the Tiger##47576 |goto 56.57,10.24
accept Mark of the Loa##47578 |goto 56.57,10.24
step
Run up the stairs |goto 56.36,9.94 < 5 |walk
click Altar of Kimbul##292535
|tip Inside the building.
Receive the Blessing |q 47578/1 |goto 56.27,9.80
step
talk Kimbul##123052
|tip Inside the building.
turnin Mark of the Loa##47578 |goto 56.57,10.24
step
Follow the path |goto 47.55,35.10 < 5 |only if walking
Follow the path |goto 47.80,35.20 < 5 |only if walking
Enter the cave |goto 47.94,35.59 < 3 |walk
talk Kiro##137982
|tip Inside the cave.
turnin Free Ride##50749 |goto 48.02,36.44
step
talk Meerah##135355
|tip Inside the cave.
turnin Tattered Note##49437 |goto 47.98,36.51
step
Follow the path |goto 47.98,36.07 < 3 |walk
Leave the cave |goto 47.94,35.54 < 3 |walk
Follow the path |goto 47.81,35.20 < 5 |only if walking
Follow the path |goto 47.53,35.09 < 7 |only if walking
Enter the building |goto 27.27,51.40 < 5 |only if walking
Follow the path |goto 27.14,51.86 < 5 |only if walking
Run up the stairs |goto 26.98,51.97 < 3 |only if walking
Follow the path |goto 26.55,51.98 < 3 |only if walking
Follow the path |goto 26.43,52.25 < 5 |only if walking
Run up the stairs |goto 26.50,52.55 < 5 |only if walking
Enter the building |goto 26.73,52.56 < 3 |walk
talk Vorrik##129588
|tip Upstairs inside the building.
turnin Sanctuary Under Siege##50751 |goto 27.10,52.56
accept Atul'Aman##50617 |goto 27.10,52.56
step
Run up the stairs |goto 26.89,52.56 < 3 |walk
Leave the building |goto 26.78,52.56 < 3 |walk
Run down the stairs |goto 26.62,52.56 < 5 |only if walking
Follow the path |goto 26.45,52.49 < 5 |only if walking
Run down the stairs |goto 26.56,51.97 < 5 |only if walking
Follow the path |goto 26.98,51.96 < 5 |only if walking
Follow the path |goto 27.17,51.83 < 5 |only if walking
Leave the building |goto 27.27,51.37 < 5 |only if walking
Run up the stairs |goto 27.59,50.53 < 5 |only if walking
Follow the path |goto 43.86,75.53 < 7 |only if walking
Jump down here |goto 43.84,75.12 < 5 |only if walking
Run up the stairs |goto 43.41,73.00 < 5 |only if walking
Follow the path |goto 43.40,72.62 < 5 |only if walking
Run down the stairs |goto 43.19,71.92 < 5 |only if walking
Follow the path |goto 42.76,71.83 < 5 |only if walking
Jump down here |goto 42.69,71.27 < 5 |only if walking
Follow the path |goto 42.82,68.71 < 7 |only if walking
talk Vorrik##135625
turnin Atul'Aman##50617 |goto 43.05,68.21
accept The Abandoned Passage##50904 |goto 43.05,68.21
step
talk Vorrik##135625
Tell him _"I'm ready. Let's go find the others."_
Speak with Vorrik |q 50904/1 |goto 43.05,68.21
step
Enter the cave |goto Vol'dun/1 30.77,82.26 < 3 |walk
Follow the path up |goto Vol'dun/1 32.48,79.26 < 5 |walk
Follow the path |goto Vol'dun/1 36.86,76.82 < 5 |walk
Follow the path |goto Vol'dun/1 40.43,82.36 < 5 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Kaja |q 50904/2 |goto Vol'dun/1 42.87,91.97
step
Follow the path |goto 46.70,80.07 < 5 |walk
Continue following the path |goto 46.03,75.54 < 5 |walk
Continue following the path |goto 44.03,70.52 < 5 |walk
Continue following the path |goto 46.29,66.18 < 5 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Rakera |q 50904/3 |goto 51.65,67.31
step
Follow the path |goto 50.66,62.47 < 5 |walk
Continue following the path |goto 50.82,54.99 < 5 |walk
Continue following the path |goto 50.51,46.28 < 5 |walk
Continue following the path |goto 52.67,39.47 < 5 |walk
talk Warguard Rakera##134803
|tip Inside the cave.
turnin The Abandoned Passage##50904 |goto 55.62,36.28
accept Defeat Jakra'zet##50702 |goto 55.62,36.28
step
Watch the dialogue
kill General Jakra'zet##134846 |q 50702/1 |goto 67.86,35.89
|tip Inside the cave.
step
Watch the dialogue
talk Warguard Rakera##135133
|tip Upstairs inside the building.
turnin Defeat Jakra'zet##50702 |goto Vol'dun/0 27.09,52.64
|tip You will only be able to accept one of these quests.
|tip Pick any one, it doesn't matter.
accept Informing the Horde##50703 |goto 27.09,52.64 |or
accept Informing the Horde##52023 |goto 27.09,52.64 |or
accept Informing the Horde##52024 |goto 27.09,52.64 |or
step
talk Vorrik##129588
|tip Upstairs inside the building.
accept Temple of Sethraliss: Avatar of the Loa##50551 |goto 27.09,52.56
step
Run up the stairs |goto 26.89,52.56 < 3 |walk
Leave the building |goto 26.78,52.56 < 3 |walk
Run down the stairs |goto 26.62,52.56 < 5 |only if walking
Follow the path |goto 26.45,52.49 < 5 |only if walking
Run down the stairs |goto 26.56,51.97 < 5 |only if walking
Follow the path |goto 26.98,51.96 < 5 |only if walking
Follow the path |goto 27.17,51.83 < 5 |only if walking
Leave the building |goto 27.27,51.37 < 5 |only if walking
Run up the stairs |goto 27.59,50.53 < 5 |only if walking
Follow the path |goto 43.86,75.53 < 7 |only if walking
Jump down here |goto 43.84,75.12 < 5 |only if walking
Run up the stairs |goto 43.41,73.00 < 5 |only if walking
Follow the path |goto 43.40,72.62 < 5 |only if walking
Run down the stairs |goto 43.19,71.92 < 5 |only if walking
Follow the path |goto 42.76,71.83 < 5 |only if walking
Jump down here |goto 42.69,71.27 < 5 |only if walking
Follow the path up |goto 43.58,69.53 < 7 |only if walking
Follow the path down |goto 43.84,65.86 < 10 |only if walking
Follow the path down |goto 43.95,62.44 < 7 |only if walking
Follow the path |goto 43.11,61.40 < 7 |only if walking
Enter the cave |goto 43.08,60.82 < 3 |walk
talk Rhan'ka##122723
|tip Inside the cave.
turnin A Strange Delivery##48327 |goto 43.51,60.21
accept Meet the Goldtusk Gang##47497 |goto 43.51,60.21
step
click Volni##271744
|tip Inside the cave.
Ask her _"Umm... Hello?"_
Meet Volni |q 47497/2 |goto 43.38,60.15
step
click Man'zul##271792
|tip Inside the cave.
Tell him _"Your eyepatch is very fearsome."_
Meet Man'zul |q 47497/3 |goto 43.64,59.93
step
click Wanted: Cobra Excursion Participants##287442
|tip Inside the cave.
accept WANTED: Cobra Excursion Participants##51164 |goto 43.65,59.95
step
click Grenja##271793
|tip Inside the cave.
Tell her _"Well met!"_
Meet Grenja |q 47497/1 |goto 43.65,60.34
step
talk Rhan'ka##122723
|tip Inside the cave.
turnin Meet the Goldtusk Gang##47497 |goto 43.51,60.21
accept Dirty Work for Dirty Drinks##47501 |goto 43.51,60.21
accept Rhan'ka's Lost Friend##47498 |goto 43.51,60.21
step
Follow the path |goto 43.31,60.50 < 3 |walk
Leave the cave |goto 43.07,60.84 < 3 |walk
Follow the path up |goto 43.11,61.39 < 5 |only if walking
Follow the path up |goto 43.97,61.84 < 7 |only if walking
Follow the path |goto 44.22,61.44 < 7 |only if walking
Continue following the path |goto 43.29,59.58 < 10 |only if walking
Continue following the path |goto 41.52,59.15 < 10 |only if walking
kill Sevriss##136593 |q 51164/1 |goto 39.90,59.16
|tip It looks like a large orange and white snake that slithers around this area.
|tip It will appear on your minimap as a yellow dot.
|tip You may need help with this.
stickystart "Collect_Caustic_Scorpid_Blood"
step
Follow the path |goto 39.56,59.33 < 15 |only if walking
Follow the path |goto 38.41,58.32 < 10 |only if walking
Follow the path up |goto 37.00,55.91 < 7 |only if walking
Follow the path up |goto 36.57,54.82 < 7 |only if walking
Continue up the path |goto 36.49,53.78 < 7 |only if walking
Follow the path |goto 36.45,53.24 < 5 |only if walking
Follow the path |goto 36.57,52.91 < 7 |only if walking
Enter the cave |goto 36.69,50.77 < 5 |walk
click Zulsan##271794
|tip Inside the cave.
collect Zulsan's Cracked Skull##150916|q 47498/1 |goto 36.92,50.45
step
Leave the cave |goto 36.70,50.76 < 5 |c |q 47501
step
label "Collect_Caustic_Scorpid_Blood"
Kill Deathsnap enemies around this area
collect 20 Caustic Scorpid Blood##150923 |q 47501/1 |goto 36.43,51.42
step
Follow the path |goto 36.77,51.47 < 7 |only if walking
talk Rhan'ka##138749
turnin Dirty Work for Dirty Drinks##47501 |goto 37.41,51.10
turnin Rhan'ka's Lost Friend##47498 |goto 37.41,51.10
accept The Great Cranium Caper##47502 |goto 37.41,51.10
accept Gozda'kun the Slaver##47503 |goto 37.41,51.10
accept The Best Honey In Vol'dun##51717 |goto 37.41,51.10
step
Follow the path down |goto 37.51,51.32 < 5 |only if walking
Follow the path down |goto 37.93,51.36 < 7 |only if walking
Follow the path |goto 38.93,50.84 < 7 |only if walking
Continue following the path |goto 39.37,51.91 < 7 |only if walking
Continue following the path |goto 40.18,54.48 < 7 |only if walking
Continue following the path |goto 40.22,55.08 < 7 |only if walking
talk Rikati##133833
turnin The Best Honey In Vol'dun##51717 |goto 40.45,55.35
accept Harvesting "Honey"##51718 |goto 40.45,55.35
step
Follow the path |goto 40.14,55.07 < 10 |only if walking
Continue following the path |goto 40.19,54.59 < 10 |only if walking
Continue following the path |goto 40.72,54.28 < 10 |only if walking
Kill Bilewing enemies around this area
collect 12 Bilewing Stinger##157541 |q 51718/1 |goto 40.57,56.14
step
talk Rikati##133833
turnin Harvesting "Honey"##51718 |goto 40.45,55.35
accept Unconventional Aromatics##50328 |goto 40.45,55.35
step
Follow the path |goto 40.62,56.07 < 7 |only if walking
Continue following the path |goto 41.13,56.70 < 7 |only if walking
Continue following the path |goto 43.73,57.70 < 15 |only if walking
Follow the path down |goto 45.58,57.63 < 10 |only if walking
click Volni##271795
collect Volni's Skull##151219 |q 47502/2 |goto 46.46,57.87
step
Follow the path |goto 47.12,58.16 < 7 |only if walking
click Grenja##271793
collect Grenja's Skull##151220 |q 47502/3 |goto 47.39,58.09
step
kill Gozda'kun the Slaver##133924 |q 47503/1 |goto 47.33,58.81
step
Follow the path up |goto 47.08,59.13 < 7 |only if walking
Follow the path up |goto 47.00,59.64 < 7 |only if walking
click Man'zul##271792
collect Man'zul's Skull##151218 |q 47502/1 |goto 47.09,59.74
step
Follow the path |goto 46.12,59.85 < 10 |only if walking
Continue following the path |goto 44.87,59.89 < 7 |only if walking
Follow the path down |goto 44.33,61.49 7 |only if walking
Follow the path down |goto 44.00,61.81 < 7 |only if walking
Follow the path |goto 43.17,61.48 < 7 |only if walking
Enter the cave |goto 43.10,60.79 < 3 |walk
Follow the path |goto 43.30,60.49 < 5 |walk
talk Rhan'ka##122723
|tip Inside the cave.
turnin The Great Cranium Caper##47502 |goto 43.70,60.24
turnin WANTED: Cobra Excursion Participants##51164 |goto 43.70,60.24
turnin Gozda'kun the Slaver##47503 |goto 43.70,60.24
turnin Unconventional Aromatics##50328 |goto 43.70,60.24
step
Watch the dialogue
talk Rhan'ka##122723
|tip Inside the cave.
accept Powerful Spirits##47638 |goto 43.53,60.39
step
click Boiled Scorpid Blood##271869
|tip Inside the cave.
Drink the Boiled Scorpid Blood |q 47638/1 |goto 43.51,60.43
step
Watch the dialogue
talk Rhan'ka##122723
|tip Inside the cave.
turnin Powerful Spirits##47638 |goto 43.51,60.21
step
talk Man'zul##123730
|tip Inside the cave.
accept Creative Marketing##48321 |goto 43.58,59.88
step
talk Zulsan##122725
|tip Inside the cave.
accept Restocking the Buffet##47564 |goto 43.71,60.22
step
Follow the path |goto 43.30,60.49 < 3 |walk
Leave the cave |goto 43.06,60.86 < 3 |walk
talk Volni##123729
accept The Best Kill is Overkill##48320 |goto 42.75,61.07
stickystart "Collect_Whistlebloom_Juicy_Fruit"
stickystart "Slay_Whistlebloom_Predators"
step
Follow the path up |goto 42.57,63.21 < 7 |only if walking
kill Bloodcrest##133853
|tip He will jump down onto you.
collect Bloodcrest's Giant Rib##153593 |q 48321/1 |goto 42.52,63.69
step
label "Collect_Whistlebloom_Juicy_Fruit"
click Whistlebloom Juicy Fruit##278242+
|tip They look like green plants with purple bulbs on them on the ground around this area.
collect 10 Whistlebloom Juicy Fruit##151022 |q 47564/1 |goto 42.45,62.35
step
label "Slay_Whistlebloom_Predators"
Kill Whistlebloom enemies around this area
Slay #15# Whistlebloom Predators |q 48320/1 |goto 42.45,62.35
step
talk Volni##123729
turnin The Best Kill is Overkill##48320 |goto 42.75,61.07
step
talk Volni##129365
fpath Goldtusk Inn |goto 42.75,61.07
step
Enter the cave |goto 43.10,60.79 < 3 |walk
Follow the path |goto 43.32,60.48 < 5 |walk
talk Zulsan##122725
|tip Inside the cave.
turnin Restocking the Buffet##47564 |goto 43.71,60.22
step
talk Man'zul##123730
|tip Inside the cave.
turnin Creative Marketing##48321 |goto 43.58,59.88
step
talk Rhan'ka##122723
|tip Inside the cave.
accept A Goldtusk Greeting##48322 |goto 43.51,60.21
step
Follow the path |goto 43.30,60.50 < 3 |walk
Leave the cave |goto 43.06,60.85 < 3 |walk
Follow the path |goto 43.06,61.27 < 5 |only if walking
clicknpc Bladeguard Tarkaj##129319
Resuscitate Bladeguard Tarkaj |q 48322/1 |goto 43.17,61.51
step
Follow the path |goto 43.07,61.31 < 5 |only if walking
Enter the cave |goto 43.10,60.79 < 3 |walk
Follow the path |goto 43.32,60.48 < 5 |walk
click Oasis Water##278276
|tip Inside the cave.
Hydrate Bladeguard Tarkaj |q 48322/2 |goto 43.50,60.41
step
click Sandy Tortillas##278277
|tip Inside the cave.
Feed Bladeguard Tarkaj |q 48322/4 |goto 43.39,60.09
step
click Box of Slightly Used Bandages##278278
|tip Inside the cave.
Bandage Bladeguard Tarkaj |q 48322/3 |goto 43.67,60.08
step
click Very Uncomfortable Bed##278279
|tip Inside the cave.
Show Bladeguard Tarkaj His Bed |q 48322/5 |goto 43.41,59.96
step
talk Rhan'ka##122723
|tip Inside the cave.
turnin A Goldtusk Greeting##48322 |goto 43.51,60.21
accept Ruins-Level Marketing##48840 |goto 43.51,60.21
step
Follow the path |goto 43.30,60.49 < 3 |walk
Leave the cave |goto 43.07,60.86 < 3 |walk
Follow the path up |goto 43.09,61.36 < 5 |only if walking
Follow the path up |goto 43.58,61.73 < 7 |only if walking
Follow the path up |goto 44.13,61.73 < 7 |only if walking
Follow the path |goto 44.26,61.43 < 7 |only if walking
Continue following the path |goto 44.98,58.61 < 10 |only if walking
Continue following the path |goto 45.94,56.51 < 10 |only if walking
Continue following the path |goto 46.46,52.40 < 10 |only if walking
Follow the path up |goto 46.24,50.06 < 10 |only if walking
Follow the path |goto 45.10,46.83 < 7 |only if walking
Follow the path |goto 45.11,46.44 < 7 |only if walking
talk Kenzou##129453
turnin Ruins-Level Marketing##48840 |goto 45.39,46.18
accept Inconvenient Spirits##49001 |goto 45.39,46.18
step
talk Tacha##129450
accept They've Got Golems##48334 |goto 45.39,46.15
step
talk Omi##129451
accept Ranishu Are Resources##48332 |goto 45.37,46.16
stickystart "Collect_Ranishu_Stomachs"
stickystart "Kill_Tortured_Spirits"
step
Follow the path down |goto 45.10,46.61 < 7 |only if walking
Follow the path down |goto 45.24,47.11 < 7 |only if walking
kill Malfunctioning Golem##138923
|tip It walks around this area.
Reveal the Golem Power Source |q 48334/1 |goto 47.05,50.54
step
label "Collect_Ranishu_Stomachs"
Kill Ranishu enemies around this area
collect 25 Ranishu Stomach##154713 |q 48332/1 |goto 46.66,49.27
step
label "Kill_Tortured_Spirits"
kill 8 Tortured Spirit##129672 |q 49001/1 |goto 46.66,49.27
step
Follow the path |goto 45.10,46.83 < 7 |only if walking
Follow the path |goto 45.11,46.44 < 7 |only if walking
talk Kenzou##129453
turnin Inconvenient Spirits##49001 |goto 45.39,46.18
step
talk Tacha##129450
turnin They've Got Golems##48334 |goto 45.39,46.15
step
talk Omi##129451
turnin Ranishu Are Resources##48332 |goto 45.37,46.16
accept An Army's Arsenal##49139 |goto 45.37,46.16
step
talk Tacha##129450
accept Siphoning Souls##48331 |goto 45.39,46.15
step
talk Kenzou##129453
accept The Strongest Rope in Vol'dun##48335 |goto 45.39,46.18
stickystart "Siphon_Golem_Souls"
stickystart "Collect_Sandspinner_Silk"
step
Follow the path |goto 45.19,46.09 < 5 |only if walking
Follow the path |goto 45.25,45.80 < 7 |only if walking
Follow the path |goto 45.82,45.35 < 7 |only if walking
Run up the stairs |goto 46.40,44.65 < 5 |only if walking
Follow the path |goto 46.40,44.26 < 5 |only if walking
Run up the stairs |goto 46.06,43.33 < 5 |only if walking
Enter the building |goto 46.06,43.01 < 3 |walk
kill Specter of Mugabu##129506 |q 49139/2 |goto 46.11,42.69
|tip Inside the building.
step
Leave the building |goto 46.06,43.02 < 3 |walk
Follow the path |goto 46.07,43.36 < 5 |only if walking
Run down the stairs |goto 46.42,44.26 < 5 |only if walking
Follow the path |goto 46.44,44.67 < 5 |only if walking
Follow the path |goto 46.64,45.04 < 7 |only if walking
Follow the path |goto 47.47,45.12 < 7 |only if walking
Run up the stairs |goto 47.98,44.39 < 5 |only if walking
Enter the building |goto 48.13,44.39 < 3 |walk
kill Specter of Jam'jen##129507 |q 49139/1 |goto 48.33,44.41
|tip Inside the building.
step
Leave the building |goto 48.14,44.40 < 3 |c |q 48331
step
label "Siphon_Golem_Souls"
use the Salvaged Soulcatcher Totem##154051
kill Soul-Trapped Guardian##129436+
|tip Kill them near the totems you place on the ground.
Siphon #5# Golem Souls |q 48331/1 |goto 47.73,44.41
step
label "Collect_Sandspinner_Silk"
Kill Sandspinner enemies around this area
collect 6 Sandspinner Silk##153699 |q 48335/1 |goto 47.73,44.41
step
Follow the path |goto 45.85,45.33 < 7 |only if walking
Follow the path |goto 45.32,45.64 < 7 |only if walking
Continue following the path |goto 45.19,46.01 < 7 |only if walking
Continue following the path |goto 45.24,46.23 < 5 |only if walking
talk Kenzou##129453
turnin The Strongest Rope in Vol'dun##48335 |goto 45.39,46.18
step
talk Tacha##129450
turnin Siphoning Souls##48331 |goto 45.39,46.15
step
talk Omi##129451
turnin An Army's Arsenal##49139 |goto 45.37,46.15
accept Zandalari Treasure Trove##48330 |goto 45.37,46.15
step
Follow the path |goto 45.21,46.18 < 5 |only if walking
Follow the path |goto 45.22,45.90 < 7 |only if walking
Follow the path |goto 45.85,45.31 < 7 |only if walking
Run up the stairs |goto 46.40,44.66 < 5 |only if walking
Follow the path |goto 46.44,44.24 < 5 |only if walking
Run up the stairs |goto 46.91,42.90 < 5 |only if walking
Follow the path |goto 46.95,42.62 < 5 |only if walking
Enter the building |goto 47.28,42.10 < 3 |walk
Watch the dialogue
kill Zak'rajan the Undying##129434 |q 48330/1 |goto 47.27,41.67
|tip Inside the building.
step
Leave the building |goto 47.27,42.10 < 3 |walk
Run down the stairs |goto 46.95,42.60 < 5 |only if walking
Follow the path |goto 46.92,42.90 < 5 |only if walking
Run down the stairs |goto 46.42,44.26 < 5 |only if walking
Follow the path |goto 46.36,44.68 < 5 |only if walking
Follow the path |goto 45.78,45.31 < 7 |only if walking
Follow the path |goto 45.31,45.62 < 7 |only if walking
Continue following the path |goto 45.18,46.00 < 7 |only if walking
Continue following the path |goto 45.21,46.20 < 5 |only if walking
Continue following the path |goto 45.33,46.21 < 5 |only if walking
talk Omi##129451
turnin Zandalari Treasure Trove##48330 |goto 45.37,46.15
step
Run up the stairs |goto Dazar'alor/0 51.75,19.09 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.41,20.98 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 49.99,21.26 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.35,21.45 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 48.70,21.99 < 5 |only if walking
Follow the path |goto Dazar'alor/0 47.80,23.23 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 47.27,23.23 < 5 |only if walking
Follow the path |goto Dazar'alor/0 46.72,22.53 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 46.31,22.59 < 5 |only if walking
Follow the path |goto Dazar'alor/0 45.42,23.73 < 5 |only if walking
Continue following the path |goto Dazar'alor/0 43.61,24.21 < 7 |only if walking
Continue following the path |goto Dazar'alor/0 42.18,23.13 < 7 |only if walking
Continue following the path |goto Dazar'alor/0 40.26,20.02 < 7 |only if walking
talk B'wizati##127664
turnin Fond Farewells##49040 |goto Dazar'alor/0 40.35,19.10
step
Follow the path |goto 40.27,20.11 < 7 |only if walking
Continue following the path |goto 42.23,23.05 < 7 |only if walking
Continue following the path |goto 43.67,24.16 < 7 |only if walking
Run down the stairs |goto 45.45,23.73 < 5 |only if walking
Follow the path |goto 46.31,22.60 < 5 |only if walking
Run down the stairs |goto 46.76,22.55 < 5 |only if walking
Follow the path |goto 47.29,23.15 < 5 |only if walking
Run down the stairs |goto 47.71,23.31 < 5 |only if walking
Follow the path |goto 48.73,22.05 < 5 |only if walking
Run down the stairs |goto 49.34,21.49 < 5 |only if walking
Follow the path |goto 50.01,21.32 < 5 |only if walking
Run down the stairs |goto 50.43,20.95 < 5 |only if walking
Follow the path |goto 51.90,19.05 < 5 |only if walking
Follow the path |goto 50.20,41.64 < 5 |only if walking
Enter the building |goto 49.93,42.13 < 5 |walk
Follow the path |goto Dazar'alor/1 47.32,29.15 < 5 |walk
Run up the stairs |goto Dazar'alor/1 42.17,46.02 < 5 |walk
Follow the path |goto Dazar'alor/2 41.14,56.28 < 3 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Informing the Horde##50703 |goto Dazar'alor/2 41.38,72.34 |only if havequest(50703) or completedq(50703)
turnin Informing the Horde##52023 |goto Dazar'alor/2 41.38,72.34 |only if havequest(52023) or completedq(52023)
turnin Informing the Horde##52024 |goto Dazar'alor/2 41.38,72.34 |only if havequest(52024) or completedq(52024)
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign",{
author="support@zygorguides.com",
description="This guide will walk you through the Horde War Campaign for Battle for Azeroth.",
condition_suggested=function() return level>=110 end,
},[[
step
Unlock the War Campaign |condition completedq(52131)
|tip Use the "Intro & Quest Zone Choice" guide to accomplish this.
step
talk Nathanos Blightcaller##120170
|tip Inside the building.
accept The War Campaign##52749 |goto Dazar'alor/2 40.18,71.70
step
Run down the stairs |goto 41.15,56.64 < 5 |walk
Follow the path |goto Dazar'alor/1 42.86,46.29 < 5 |walk
Follow the path |goto Dazar'alor/1 48.62,26.69 < 5 |walk
Leave the building |goto Dazar'alor/0 49.96,42.12 < 5 |walk
Follow the path |goto Dazar'alor/0 50.30,41.58 < 7 |only if walking
Jump down here |goto Dazar'alor/0 50.71,88.40 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.96,89.06 < 7 |only if walking
Run down the stairs |goto Dazar'alor/0 49.65,91.01 < 5 |only if walking
Follow the path |goto Dazar'alor/0 49.41,93.01 < 5 |only if walking
Follow the path |goto Dazar'alor/0 50.01,96.07 < 7 |only if walking
Run up the ramp |goto Dazar'alor/0 50.54,99.95 < 5 |only if walking
Run up the stairs |goto Dazar'alor/0 51.23,99.88 < 3 |only if walking
Follow the path |goto Zuldazar/0 58.39,62.43 < 3 |only if walking
talk Nathanos Blightcaller##135691
turnin The War Campaign##52749 |goto Zuldazar/0 58.44,62.67
accept The War Cache##52746 |goto Zuldazar/0 58.44,62.67
step
Gather #100# War Resources |q 52746/1
|tip Gather these mainly from treasure chests.
|tip You will also occasionally get some from completing quests as you level.
|tip Treasure chests appear in random locations in leveling zones.
|tip As you complete quests, look for silver treasure chest icons on your minimap.
|tip Also look for silver arrows around the edge of your minimap.
|tip These silver arrows point you to nearby treasure chests.
step
Click the Complete Quest Box:
turnin The War Cache##52746
accept Time for War##53333
step
talk Nathanos Blightcaller##135691
turnin Time for War##53333 |goto 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept Mission from the Warchief##51770 |goto 58.44,62.67
step
Run down the stairs |goto 58.38,62.42 < 3 |only if walking
Follow the path |goto Dazar'alor/0 51.25,99.83 < 5 |only if walking
Watch the dialogue
talk Garona Halforcen##138708
|tip She walks to this spot on the deck of the ship.
turnin Mission from the Warchief##51770 |goto Dazar'alor/0 51.69,99.68
accept War of Shadows##51771 |goto Dazar'alor/0 51.69,99.68
step
clicknpc Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
Complete "The Shadow War" Mission |q 51771/1 |goto 51.60,99.55
|tip This mission will take 2 hours to complete.
step
talk Garona Halforcen##138708
turnin War of Shadows##51771 |goto 51.69,99.68
accept Reinforcements##53079 |goto 51.69,99.68
step
talk Garona Halforcen##138708
Tell her _"I require reinforcements."_
|tip Recruit 1 Horde Troop.
Order Troops |q 53079/1 |goto 51.69,99.69
step
talk Garona Halforcen##138708
turnin Reinforcements##53079 |goto 51.69,99.68
step
Reach Level 112 |ding 112
|tip You must be at least level 112 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Run up the stairs |goto 51.22,99.90 < 3 |only if walking
Follow the path |goto Zuldazar/0 58.39,62.42 < 5 |only if walking
talk Nathanos Blightcaller##135691
|tip On the deck of the ship.
accept The Kul Tiras Campaign##51803 |goto Zuldazar/0 58.44,62.67
stickystart "Choose_A_Foothold"
step
click Kul Tiras Campaign
|tip Choose the Tiragarde Sound zone.
accept Foothold: Tiragarde Sound##51800 |goto 58.44,62.62
step
Click the Complete Quest Box:
turnin Foothold: Tiragarde Sound##51800
step
label "Choose_A_Foothold"
Choose a Foothold |q 51803/2 |goto 58.44,62.62
step
talk Nathanos Blightcaller##135691
turnin The Kul Tiras Campaign##51803 |goto 58.44,62.67
accept Shiver Me Timbers##51421 |goto 58.44,62.67
step
Run up the stairs |goto 58.38,62.74 < 3 |only if walking
Follow the path |goto 58.38,62.81 < 3 |only if walking
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Tiragarde Sound."_
Speak with Tattersail to Sail to to Tiragarde Sound |q 51421/1 |goto 58.46,62.99
step
Travel to Tiragarde Sound |goto Tiragarde Sound/0 89.40,53.54 < 7 |noway |c |q 51421
step
talk Shadow Hunter Ty'jin##137675
turnin Shiver Me Timbers##51421 |goto 89.34,53.39
accept Swashbuckling in Style##51435 |goto 89.34,53.39
step
click Pirate Garb
Acquire Pirate Garb |q 51435/1 |goto 89.45,53.67
step
talk Shadow Hunter Ty'jin##137675
turnin Swashbuckling in Style##51435 |goto 89.34,53.38
accept Parleyin' Wit Pirates##51436 |goto 89.34,53.38
step
click Canoe Rope##291139
Begin Riding the Boat to Shore |goto 89.33,53.35 > 10 |c |q 51436
step
Watch the dialogue
Use the Mala's Fortune Rope |q 51436/1 |goto 88.22,51.17
step
talk Shadow Hunter Ty'jin##137675
Tell him _"I'm ready to parley, Ty'jin."_
Begin Following Shadow Hunter Ty'jin |goto 88.21,51.11 > 7 |c |q 51436
step
Run up the stairs |goto 88.12,50.70 < 5 |only if walking
Run up the stairs |goto 87.97,50.57 < 5 |only if walking
Follow the path |goto 87.87,50.71 < 5 |only if walking
Enter the building |goto 87.32,50.13 < 3 |walk
Watch the dialogue
|tip Follow Shadow Hunter Ty'jin as he walks.
Walk with Ty'jin |q 51436/2 |goto 87.28,50.02
step
talk First Mate Owings##137727
|tip Inside the building.
turnin Parleyin' Wit Pirates##51436 |goto 87.31,49.98
accept Spike the Punch##51437 |goto 87.31,49.98
step
talk Shadow Hunter Ty'jin##137742
|tip Inside the building.
accept Cannonball Collection##51439 |goto 87.28,50.01
stickystart "Collect_Fogsail_Cannonballs"
step
Leave the building |goto 87.32,50.12 < 3 |walk
click Keg of Grog##289675+
|tip They look like brown barrels on the ground around this area.
Spike #6# Kegs of Grog |q 51437/1 |goto 87.55,50.59
step
label "Collect_Fogsail_Cannonballs"
kill Fogsail Cannoneer##138430+
collect 3 Fogsail Cannonball##160260 |q 51439/1 |goto 87.55,50.59
step
Enter the building |goto 87.32,50.13 < 3 |walk
talk Shadow Hunter Ty'jin##137742
|tip Inside the building.
turnin Cannonball Collection##51439 |goto 87.28,50.01
step
talk First Mate Owings##137727
|tip Inside the building.
turnin Spike the Punch##51437 |goto 87.31,49.99
accept A Change in Direction##51440 |goto 87.31,49.99
step
talk Shadow Hunter Ty'jin##137742
|tip Inside the building.
accept Thar She Blows!##51441 |goto 87.28,50.01
stickystart "Sink_Fogsail_Rowboats"
step
Leave the building |goto 87.32,50.12 < 3 |walk
Run down the stairs |goto 87.46,50.11 < 5 |only if walking
Follow the path |goto 87.55,49.83 < 5 |only if walking
talk Navigator Swink##137807
Tell him _"Orders from the captain, sir. He has decided against siding with the Ashvanes!"_
Watch the dialogue
kill Navigator Swink##137807
Order Navigator Swink |q 51440/3 |goto 87.28,49.57
step
Follow the path |goto 87.45,49.67 < 7 |only if walking
Run up the stairs |goto 87.56,49.92 < 5 |only if walking
Follow the path |goto 87.46,50.09 < 5 |only if walking
Follow the path |goto 87.56,50.38 < 7 |only if walking
Jump up here |goto 87.79,50.41 < 3 |only if walking
Follow the path |goto 87.83,50.31 < 3 |only if walking
talk Boatswain Taryn##137798
Tell her _"Got some new orders from the captain for you, boatswain."_
Watch the dialogue
kill Boatswain Taryn##137798
Order Boatswain Taryn |q 51440/1 |goto 87.85,50.08
step
label "Sink_Fogsail_Rowboats"
Jump down here |goto 87.82,50.35 < 5 |only if walking
Follow the path |goto 87.73,50.57 < 5 |only if walking
Run down the stairs |goto 87.87,50.69 < 5 |only if walking
Run down the stairs |goto 88.03,50.59 < 5 |only if walking
use the Goblin-Engineered Hand Cannon##160405
|tip Use it on Fogsail Rowboats in the water around this area.
|tip They look like wooden boats moving with pirates on them in the water around this area.
Sink #3# Fogsail Rowboats |q 51441/1 |goto 88.19,50.75
step
Run up the stairs |goto 88.12,50.68 < 5 |only if walking
Run up the stairs |goto 87.97,50.58 < 5 |only if walking
Follow the path |goto 87.85,50.68 < 5 |only if walking
Run up the stairs |goto 87.61,50.97 < 5 |only if walking
Follow the path |goto 87.56,51.08 < 5 |only if walking
Cross the bridge |goto 87.40,51.34 < 5 |only if walking
Follow the path |goto 87.15,51.75 < 5 |only if walking
talk Quartermaster Killian##137800
Tell him _"We're saying no to the Ashvane. Here are orders from the captain."_
Watch the dialogue
Order Quartermaster Killian |q 51440/2 |goto 87.00,52.01
step
Cross the bridge |goto 87.15,51.73 < 5 |only if walking
Follow the path |goto 87.40,51.32 < 5 |only if walking
Run down the stairs |goto 87.56,51.07 < 5 |only if walking
Follow the path |goto 87.60,50.93 < 5 |only if walking
Enter the building |goto 87.32,50.12 < 3 |walk
talk Shadow Hunter Ty'jin##137742
|tip Inside the building.
turnin Thar She Blows!##51441 |goto 87.28,50.01
step
talk First Mate Owings##137727
|tip Inside the building.
turnin A Change in Direction##51440 |goto 87.31,49.99
accept I'm the Captain Now##51442 |goto 87.31,49.99
step
Leave the building |goto 87.32,50.12 < 3 |walk
Run up the stairs |goto 87.61,50.97 < 5 |only if walking
Follow the path |goto 87.56,51.07 < 5 |only if walking
Cross the bridge |goto 87.40,51.34 < 5 |only if walking
Follow the path |goto 87.16,51.75 < 5 |only if walking
Run up the stairs |goto 87.16,52.22 < 5 |only if walking
Follow the path |goto 87.14,52.46 < 5 |only if walking
Enter the cave |goto 87.05,52.84 < 5 |only if walking
kill Captain Rhenik##137776 |q 51442/1 |goto 86.91,53.17
|tip Inside the cave.
step
Leave the cave |goto 87.05,52.86 < 5 |walk
Run down the stairs |goto 87.13,52.45 < 5 |only if walking
Follow the path |goto 87.16,52.22 < 5 |only if walking
Cross the bridge |goto 87.15,51.73 < 5 |only if walking
Follow the path |goto 87.40,51.32 < 5 |only if walking
Run down the stairs |goto 87.56,51.07 < 5 |only if walking
Follow the path |goto 87.60,50.93 < 5 |only if walking
Enter the building |goto 87.32,50.12 < 3 |walk
talk First Mate Owings##137727
|tip Inside the building.
turnin I'm the Captain Now##51442 |goto 87.31,49.99
step
talk Shadow Hunter Ty'jin##137742
|tip Inside the building.
accept Marking our Territory##51438 |goto 87.28,50.01
step
Leave the building |goto 87.32,50.12 < 3 |walk
click Horde Banner##292390
Watch the dialogue
Plant the Horde Banner |q 51438/1 |goto 87.46,50.41
step
talk Skrash##138265
fpath Plunder Harbor |goto 87.28,50.66
step
Enter the building |goto 87.32,50.12 < 3 |walk
talk Shadow Hunter Ty'jin##137742
|tip Inside the building.
turnin Marking our Territory##51438 |goto 87.28,50.01
accept Champion: Shadow Hunter Ty'jin##51975 |goto 87.28,50.01 |instant
accept Return to Zuldazar##51984 |goto 87.28,50.01
step
Leave the building |goto 87.32,50.12 < 3 |walk
Follow the path |goto 87.49,50.74 < 7 |only if walking
Jump down here |goto 87.69,51.01 < 5 |only if walking
talk Erul Dawnbrook##139524
Tell him _"Take us back to Zuldazar."_
Speak to Erul Dawnbrook |q 51984/1 |goto 87.84,51.18
step
Return to Zuldazar |goto Zuldazar/0 58.40,62.50 < 7 |noway |c |q 51438
step
talk Nathanos Blightcaller##135691
turnin Return to Zuldazar##51984 |goto 58.44,62.67
step
Reach Level 114 |ding 114
|tip You must be at least level 114 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
accept The Ongoing Campaign##51979 |goto 58.44,62.67
stickystart "Choose_A_Foothold_2"
step
click Kul Tiras Campaign
|tip Choose the Drustvar zone.
accept Foothold: Drustvar##51801 |goto 58.44,62.62
step
Click the Complete Quest Box:
turnin Foothold: Drustvar##51801
step
label "Choose_A_Foothold_2"
Choose a Foothold |q 51979/1 |goto 58.44,62.62
step
talk Nathanos Blightcaller##135691
turnin The Ongoing Campaign##51979 |goto 58.44,62.67
accept A Trip Across the Ocean##51332 |goto 58.44,62.67
step
talk Eitrigg##143913
accept Adapting Our Tactics##53602 |goto 58.56,62.72
step
talk Eitrigg##143913
Tell him _"Show me our research options."_
Choose an Upgrade to Pursue |q 53602/1 |goto 58.56,62.72
step
talk Eitrigg##143913
turnin Adapting Our Tactics##53602 |goto 58.56,62.72
step
Follow the path |goto 58.51,62.78 < 3 |walk
Run down the stairs |goto 58.49,62.86 < 3 |walk
Follow the path |goto 58.37,62.82 < 3 |walk
talk Trade Prince Gallywix##136683
|tip Downstairs inside the ship.
turnin A Trip Across the Ocean##51332 |goto 58.45,62.65
accept Drustvar Ho!##51340 |goto 58.45,62.65
accept The MOTHERLODE!!: Raw Deal##53437 |goto 58.45,62.65
step
Follow the path |goto 58.38,62.79 < 3 |walk
Run up the stairs |goto 58.40,62.85 < 3 |walk
Follow the path |goto 58.51,62.81 < 3 |walk
talk Eitrigg##136725
Tell him _"Yes, I'm ready to go to Drustvar."_
Speak with Eitrigg |q 51340/1 |goto 58.55,62.72
step
Follow the path |goto 58.44,62.69 < 5 |only if walking
Run up the stairs |goto 58.38,62.74 < 3 |only if walking
Follow the path |goto 58.38,62.81 < 3 |only if walking
talk Dread-Admiral Tattersail##135690
Tell her _"Set sail for Drustvar."_
Speak with Tattersail to Sail to Drustvar |q 51340/2 |goto 58.46,62.99
step
Travel to Drustvar |goto Drustvar/0 20.61,43.69 < 7 |noway |c |q 51340
step
talk Eitrigg##136725
turnin Drustvar Ho!##51340 |goto Drustvar/0 20.79,43.85
accept Profit and Reconnaissance##51224 |goto Drustvar/0 20.79,43.85
step
Cross the bridge |goto 20.43,43.75 < 5 |only if walking
Run up the stairs |goto 19.80,43.77 < 5 |only if walking
Follow the path |goto 19.72,43.79 < 3 |only if walking
Run up the stairs |goto 19.50,43.94 < 3 |only if walking
Follow the path |goto 19.40,43.97 < 3 |only if walking
Run up the stairs |goto 19.27,43.35 < 3 |only if walking
Follow the path |goto 19.09,43.35 < 3 |only if walking
Run up the stairs |goto 19.06,43.62 < 3 |c |q 51224
step
Follow the path up |goto 19.22,43.65 < 3 |only if walking
Run up the stairs |goto 19.26,43.34 < 3 |only if walking
talk Eitrigg##136725
fpath Anyport |goto 19.14,43.31
step
Jump down here |goto 19.50,43.69 < 5 |only if walking
Run down the stairs |goto 19.71,43.74 < 3 |only if walking
Cross the bridge |goto 19.84,43.76 < 5 |only if walking
Follow the path |goto 20.43,43.74 < 5 |only if walking
clicknpc Gallywix's War Trike##136723
Control Gallywix's War Trike |invehicle |goto 20.72,43.73 |q 51224
step
Follow the path up |goto 21.05,44.24 < 5 |only if walking
Follow the path up |goto 21.07,44.88 < 5 |only if walking
Follow the path |goto 20.78,45.69 < 5 |only if walking
Follow the path up |goto 20.65,46.42 < 5 |only if walking
Continue up the path |goto 20.30,47.15 < 5 |only if walking
Continue up the path |goto 20.63,47.41 < 5 |only if walking
Continue up the path |goto 21.54,46.03 < 5 |only if walking
Follow the path |goto 21.97,45.83 < 7 |only if walking
clicknpc Bilgewater Azerite Drudge##137079
Watch the dialogue
Search for a Goblin Scout |q 51224/1 |goto 22.28,46.29
step
clicknpc Gallywix's War Trike##137090
|tip It will be parked nearby, where you got out.
Control Gallywix's War Trike |invehicle |goto 22.28,46.29 |q 51224
step
Follow the path |goto 22.84,46.90 < 7 |only if walking
clicknpc Bilgewater Azerite Drudge##137079
Watch the dialogue
kill Wildwood Slaverer##137362
Search Deeper Into the Woods |q 51224/2 |goto 25.45,46.32
step
clicknpc Gallywix's War Trike##137090
|tip It will be parked nearby, where you got out.
Control Gallywix's War Trike |invehicle |goto 25.45,46.32 |q 51224
step
Follow the road |goto 26.07,47.13 < 7 |only if walking
Cross the bridge |goto 26.55,48.76 < 7 |only if walking
Follow the road |goto 26.89,49.79 < 7 |only if walking
Continue following the road |goto 27.82,51.91 < 7 |only if walking
Follow the path |goto 28.14,53.46 < 7 |only if walking
clicknpc Bilgewater Azerite Drudge##137079
Find Another Goblin Scout |q 51224/3 |goto 29.46,54.83
step
clicknpc Gallywix's War Trike##137090
|tip It will be parked nearby, where you got out.
Control Gallywix's War Trike |invehicle |goto 29.46,54.83 |q 51224
step
Follow the path up |goto 30.14,54.49 < 7 |only if walking
Follow the path up |goto 30.63,55.15 < 7 |only if walking
Continue up the path |goto 31.12,55.05 < 7 |only if walking
Continue up the path |goto 31.58,54.38 < 7 |only if walking
Find the Final Goblin Scout |q 51224/4 |goto 32.26,54.27
step
Stop Controlling Gallywix's War Trike |outvehicle |goto 32.33,54.63 |q 51224
step
talk Eitrigg##136725
turnin Profit and Reconnaissance##51224 |goto 32.33,54.57
accept Wiccaphobia##51231 |goto 32.33,54.57
step
Watch the dialogue
Kill the enemies that attack in waves
kill Sister Redweather##136715
Protect Eitrigg and Gallywix |q 51231/1 |goto 32.30,54.57
step
talk Eitrigg##136725
turnin Wiccaphobia##51231 |goto 32.33,54.57
step
talk Trade Prince Gallywix##136683
accept I Hope There's No Witches In The Mountains##51233 |goto 32.36,54.60
step
clicknpc Gallywix's War Trike##136723
Control Gallywix's War Trike |invehicle |goto 32.32,54.76 |q 51233
step
Follow the path |goto 32.21,54.32 < 7 |only if walking
Follow the path up |goto 31.90,53.73 < 7 |only if walking
Follow the path |goto 31.64,52.77 < 7 |only if walking
Follow the path |goto 30.52,52.40 < 7 |only if walking
Follow the path up |goto 29.78,51.62 < 7 |only if walking
Continue up the path |goto 29.14,49.53 < 7 |only if walking
Cross the bridge |goto 28.89,46.38 < 7 |only if walking
Follow the path |goto 28.25,44.69 < 7 |only if walking
Follow the road |goto 28.44,43.50 < 7 |only if walking
Follow the road |goto 31.04,41.91 < 7 |only if walking
Continue following the road |goto 30.82,40.16 < 7 |only if walking
Continue following the road |goto 31.26,38.23 < 7 |only if walking
Follow the path |goto 31.20,36.46 < 7 |only if walking
Follow the path up |goto 32.99,35.55 < 7 |only if walking
Follow the path up |goto 33.44,36.44 < 7 |only if walking
talk Hobart Grapplehammer##137613
Tell him _"Your friends were all tortured and killed by witches."_
Drive Eitrigg and Gallywix to the Mountains |q 51233/1 |goto 33.58,37.88
step
Follow the path up |goto 34.30,37.91 < 7 |only if walking
Follow the path |goto 35.81,35.77 < 7 |only if walking
Continue following the path |goto 37.28,33.72 < 7 |only if walking
Follow the path up |goto 37.62,32.63 < 7 |only if walking
Follow the path up |goto 37.69,29.56 < 7 |only if walking
Watch the dialogue
Bring Eitrigg and Gallywix to Krazzlefrazz Outpost |q 51233/2 |goto 37.19,27.45
step
Stop Controlling Gallywix's War Trike |outvehicle |goto 37.27,27.27 |q 51233
step
talk Eitrigg##136725
turnin I Hope There's No Witches In The Mountains##51233 |goto 37.23,27.20
step
talk Hobart Grapplehammer##137613
accept Krazzlefrazz Outpost##51234 |goto 36.90,27.11
step
click Kyanite-Laser Embiggener
|tip You will gain the "Kyanite-Laser Embiggener" ability.
|tip Use the "Kyanite-Laser Embiggener" ability.
|tip It appears as a button on the screen.
Watch the dialogue
Construct the Supply Hut |q 51234/1 |goto 36.80,26.36
step
Follow the path |goto 36.95,25.88 < 7 |only if walking
click Boom Button
Construct the Engineering Works |q 51234/2 |goto 36.74,25.13
step
clicknpc Wormhole##137397
Choose _<Reach inside and pull something out.>_
kill Interdimensional Abomination##137454
clicknpc Wormhole##137397
Choose _<Reach inside and pull out something that feels more like a building.>_
Construct the Inn |q 51234/4 |goto 37.63,25.50
step
Leave the building |goto 37.56,25.51 < |walk
Follow the path |goto 37.43,25.36 < 5 |only if walking
click Plunger##288630
Watch the dialogue
Construct the Fishing Hut |q 51234/3 |goto 37.75,24.62
step
Follow the path |goto 37.37,25.28 < 7 |only if walking
talk Trade Prince Gallywix##136683
turnin Krazzlefrazz Outpost##51234 |goto 37.18,27.18
step
talk Hobart Grapplehammer##137613
accept Champion: Hobart Grapplehammer##51987 |goto 36.90,27.11 |instant
step
talk Trade Prince Gallywix##136683
accept Return to Zuldazar##51985 |goto 37.18,27.18
step
Follow the path |goto 37.32,24.62 < 7 |only if walking
talk Rixi Rocketboom##138022
fpath Krazzlefrazz Outpost |goto 37.37,24.04
step
Jump down here |goto 19.51,43.72 < 5 |only if walking
Run down the stairs |goto 19.70,43.76 < 5 |only if walking
Cross the bridge |goto 19.86,43.77 < 5 |only if walking
Follow the path |goto 20.54,43.70 < 5 |only if walking
Follow the path |goto 20.63,43.51 < 5 |only if walking
talk Swellthrasher##139519
Tell her _"Take us back to Zuldazar."_
Speak to Swellthrasher in Anyport |q 51985/1 |goto 20.60,43.35
step
Return to Zuldazar |goto Zuldazar/0 58.40,62.50 < 7 |noway |c |q 51985
step
talk Nathanos Blightcaller##135691
turnin Return to Zuldazar##51985 |goto Zuldazar/0 58.44,62.67
step
Reach Level 118 |ding 118
|tip You must be at least level 118 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
accept The Final Foothold##52444 |goto 58.44,62.67
stickystart "Review_The_Final_Foothold"
step
click Kul Tiras Campaign
|tip Choose the Stormsong Valley zone.
accept Foothold: Stormsong Valley##51802 |goto 58.44,62.62
step
Click the Complete Quest Box:
turnin Foothold: Stormsong Valley##51802
step
label "Review_The_Final_Foothold"
Review the Final Foothold |q 52444/1 |goto 58.44,62.62
step
talk Nathanos Blightcaller##135691
turnin The Final Foothold##52444 |goto 58.44,62.67
accept The Warlord's Call##51526 |goto 58.44,62.67
step
talk High Warlord Cromush##138352
turnin The Warlord's Call##51526 |goto 58.44,62.46
accept Storming In##51532 |goto 58.44,62.46
step
Run up the stairs |goto 58.37,62.74 < 3 |only if walking
Follow the path |goto 58.38,62.81 3 |only if walking
talk Dread-Admiral Tattersail##135690
Tell her _"Set sail for Stormsong Valley."_
Speak with Tattersail to Sail to Stormsong Valley |q 51532/1 |goto 58.46,62.99
step
Travel to Stormsong Valley |goto Stormsong Valley/0 51.03,20.91 < 7 |noway |c |q 51532
step
talk High Warlord Cromush##138365
turnin Storming In##51532 |goto 51.10,21.15
accept A Wall of Iron##51643 |goto 51.10,21.15
step
Run down the stairs |goto 51.11,20.79 < 3 |only if walking
Follow the path |goto 51.20,20.74 < 3 |only if walking
Run down the stairs |goto 51.39,20.86 < 3 |walk
Run down the stairs |goto 51.50,20.72 < 5 |c |q 51643
step
Follow the path |goto 51.36,20.76 < 5 |walk
clicknpc Banshee's Wail Cannon##138312
|tip Downstairs inside the ship.
Man the Cannon |q 51643/1 |goto 51.18,21.12
step
Kill enemies around this area
|tip Use the ability on your action bar.
Slay #40# Kul Tiran Forces |q 51643/2 |goto 51.18,21.12
step
Run up the stairs |goto 51.35,20.75 < 3 |walk
Run up the stairs |goto 51.52,20.80 < 5 |c |q 51643
step
Follow the path |goto 51.39,20.85 < 3 |walk
Run up the stairs |goto 51.20,20.76 < 3 |only if walking
Follow the path |goto 51.10,20.82 < 3 |only if walking
talk High Warlord Cromush##138365
turnin A Wall of Iron##51643 |goto 51.10,21.15
accept On the Hunt##51536 |goto 51.10,21.15
step
click Rope Coil
Board the Landing Craft |q 51536/1 |goto 51.00,21.24
step
Ride the Boat to Shore |goto 51.66,24.42 < 7 |c |q 51536
step
Follow the path up |goto 51.38,25.55 < 7 |only if walking
Follow the path |goto 51.06,26.58 < 5 |only if walking
Run up the stairs |goto 50.90,26.68 < 5 |only if walking
Follow the path |goto 50.80,26.67 < 5 |only if walking
clicknpc Huelo##138137
Choose _Pull the harpoon free._
Investigate Seawatch Point |q 51536/2 |goto 50.38,26.19
step
Watch the dialogue
talk Rexxar##138131
turnin On the Hunt##51536 |goto 50.41,26.17
accept Onward!##51587 |goto 50.41,26.17
step
Run down the stairs |goto 50.78,26.66 < 7 |only if walking
Follow the path up |goto 51.35,27.27 < 7 |only if walking
Follow the path up |goto 51.58,28.45 < 7 |only if walking
Continue up the path |goto 52.41,29.25 < 7 |only if walking
Continue up the path |goto 52.27,30.04 < 7 |only if walking
Watch the dialogue
|tip Follow Rexxar as he runs.
Travel with Rexxar |q 51587/1 |goto 51.99,30.20
step
talk Centurion Kaga Warmstone##138688
turnin Onward!##51587 |goto 51.66,29.83
accept Hunt Them Down##51675 |goto 51.66,29.83
accept Almost Worth Saving##51691 |goto 51.66,29.83
step
talk Rexxar##138677
accept Douse the Flames##51674 |goto 51.68,29.89
stickystart "Douse_Flames"
stickystart "Rescue_Frightened_Peons"
stickystart "Kill_Storms_Wake_Footmen"
step
Follow the path up |goto 51.53,30.36 < 7 |only if walking
Follow the path |goto 50.96,31.27 < 7 |only if walking
Follow the path |goto 50.96,31.89 < 7 |only if walking
Follow the path up |goto 51.28,32.61 < 7 |only if walking
Follow the path up |goto 51.54,33.02 < 7 |only if walking
Run up the stairs |goto 51.57,33.45 < 5 |only if walking
kill Captain Ara##137910 |q 51675/1 |goto 51.75,33.54
step
label "Douse_Flames"
Follow the path down |goto 51.54,32.89 < 7 |only if walking
kill Storm's Wake Tidesage##137894+
collect Fading Umbral Wand##160565 |n
use Fading Umbral Wand##160565+
|tip Use them on the fires on buildings around this area.
Douse #5# Flames |q 51674/1 |goto 50.74,32.16
step
label "Rescue_Frightened_Peons"
clicknpc Frightened Peon##137922+
|tip They look like friendly Orcs cowering on the ground around this area.
Rescue #6# Frightened Peons |q 51691/1 |goto 50.74,32.16
step
label "Kill_Storms_Wake_Footmen"
kill 12 Storm's Wake Footman##137893 |q 51675/2 |goto 50.74,32.16
step
Follow the path up |goto 49.96,32.50 < 7 |only if walking
Follow the path up |goto 49.52,32.55 < 7 |only if walking
Cross the bridge |goto 49.29,32.99 < 7 |only if walking
Follow the path |goto 49.21,33.91 < 7 |only if walking
talk Centurion Kaga Warmstone##138869
turnin Hunt Them Down##51675 |goto 49.19,34.21
turnin Almost Worth Saving##51691 |goto 49.19,34.21
step
talk Rexxar##138867
turnin Douse the Flames##51674 |goto 49.25,34.26
accept Reclaiming What's Ours##51696 |goto 49.25,34.26
step
Enter the building |goto 49.40,34.60 < 3 |walk
Run up the stairs |goto 49.33,34.71 < 3 |walk
click Warhorn of the Hold
|tip At the top of the tower.
Sound the Warhorn of the Hold |q 51696/1 |goto 49.59,34.78
step
Watch the dialogue
talk Rexxar##138876
|tip Inside the building.
turnin Reclaiming What's Ours##51696 |goto 52.12,33.66
accept Champion: Rexxar##51753 |goto 52.12,33.66 |instant
accept Return to Zuldazar##51986 |goto 52.12,33.66
step
Leave the building |goto 51.80,33.57 < 3 |walk
Follow the path |goto 51.54,33.52 < 5 |only if walking
talk Muka Stormbreaker##138097
fpath Warfang Hold |goto 51.43,33.74
step
talk Muka Stormbreaker##138097
Tell her _"Take us back to Zuldazar."_
Speak to Muka Stormbreaker |q 51986/1 |goto 51.43,33.74
step
talk Nathanos Blightcaller##135691
turnin Return to Zuldazar##51986 |goto Zuldazar/0 58.44,62.67
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
accept Uniting Zandalar##51916 |goto 58.44,62.67 |instant
step
talk Nathanos Blightcaller##135691
accept Breaking Kul Tiran Will##51589 |goto 58.44,62.67
step
Run up the stairs |goto 58.37,62.74 < 3 |only if walking
Follow the path |goto 58.38,62.80 < 3 |only if walking
talk Dread-Admiral Tattersail##135690
Tell her _"Set sail for Tiragarde Sound."_
Speak with Tattersail to Sail to Tiragarde Sound |q 51589/1 |goto 58.46,62.98
step
Travel to Tirigarde Sound |goto Tiragarde Sound/0 88.20,51.16 < 7 |noway |c |q 51589
step
Run up the stairs |goto 88.11,50.71 < 5 |only if walking
Run up the stairs |goto 87.97,50.60 < 5 |only if walking
Follow the path |goto 87.85,50.70 < 5 |only if walking
talk Nathanos Blightcaller##138285
turnin Breaking Kul Tiran Will##51589 |goto 87.37,50.51
accept Into the Heart of Tiragarde##51590 |goto 87.37,50.51
step
Run up the stairs |goto 87.60,50.97 < 5 |only if walking
Follow the path |goto 87.56,51.08 < 5 |only if walking
Cross the bridge |goto 87.40,51.34 < 5 |only if walking
Follow the path |goto 87.15,51.76 < 5 |only if walking
Follow the path up |goto 86.90,51.75 < 5 |only if walking
Follow the path up |goto 86.31,51.23 < 7 |only if walking
Follow the path up |goto 85.65,51.82 < 7 |only if walking
Cross the bridge |goto 85.21,51.75 < 5 |only if walking
Follow the path up |goto 84.80,51.67 < 5 |only if walking
Follow the path |goto 84.09,50.64 < 7 |only if walking
Follow the path down |goto 83.47,50.03 < 7 |only if walking
Continue down the path |goto 82.69,51.27 < 7 |only if walking
Continue down the path |goto 81.80,51.53 < 7 |only if walking
Follow the path |goto 80.59,51.63 < 7 |only if walking
Follow the path down |goto 79.12,51.81 < 7 |only if walking
Follow the path down |goto 78.35,51.92 < 7 |only if walking
Jump down here |goto 76.78,52.91 < 7 |only if walking
Follow the path |goto 75.63,53.93 < 7 |only if walking
Continue following the path |goto 74.95,54.12 < 7 |only if walking
Follow the road |goto 74.18,53.08 < 7 |only if walking
Continue following the road |goto 73.02,49.66 < 7 |only if walking
Continue following the road |goto 72.86,48.53 < 7 |only if walking
Continue following the road |goto 72.13,48.27 < 7 |only if walking
Follow the path up |goto 70.97,48.46 < 7 |only if walking
Follow the path up |goto 70.61,49.08 < 7 |only if walking
Follow the path |goto 70.90,50.04 < 7 |only if walking
talk Nathanos Blightcaller##138285
turnin Into the Heart of Tiragarde##51590 |goto 71.19,50.91
accept Our Mountain Now##51591 |goto 71.19,50.91
step
Follow the path |goto 71.26,51.42 < 7 |only if walking
Kill Roughneck enemies around this area
Slay #10# Roughneck Goons |q 51591/1 |goto 71.95,51.67
step
Watch the dialogue
talk Nathanos Blightcaller##138285
turnin Our Mountain Now##51591 |goto 72.02,51.85
accept Making Ourselves at Home##51592 |goto 72.02,51.85
step
talk Lilian Voss##138287
accept Bridgeport Investigation##51593 |goto 72.05,51.77
step
talk Michaela Reed##133861
fpath Timberfell Outpost |goto 72.18,51.91
stickystart "Collect_Lenghts_of_Chain"
stickystart "Collect_Sail_Canvas"
step
Follow the path |goto 71.97,51.24 < 7 |only if walking
Follow the path down |goto 72.06,50.61 < 7 |only if walking
Jump down here |goto 72.26,49.94 < 7 |only if walking
Follow the path |goto 72.91,48.94 < 7 |only if walking
Follow the path |goto 72.98,48.75 < |only if walking
Enter the building |goto 73.37,48.53 < 3 |walk
Watch the dialogue
|tip Inside the building.
Investigate the Watchpost Cabin |q 51593/2 |goto 73.45,48.26
step
Leave the building |goto 73.38,48.53 < 3 |walk
Cross the bridge |goto 73.52,48.89 < 7 |only if walking
Jump down here |goto 74.28,49.38 < 5 |only if walking
Follow the path up |goto 74.62,49.42 < 3 |only if walking
Jump up here |goto 74.63,49.60 < 3 |only if walking
Watch the dialogue
Investigate the Harbor Terrace |q 51593/1 |goto 74.63,49.68
step
Follow the path |goto 74.53,49.71 < 3 |only if walking
Follow the path |goto 74.45,50.18 < 3 |only if walking
Jump down here |goto 74.81,50.36 < 5 |only if walking
Follow the path |goto 74.94,51.12 < 7 |only if walking
Jump up here |goto 75.17,51.15 < 3 |only if walking
Jump up here |goto 75.27,51.11 < 3 |only if walking
Watch the dialogue
|tip Watch out for the Bridgeport Guards that patrol around this area.
Investigate the Outdoor Workshop |q 51593/3 |goto 75.31,51.13
step
label "Collect_Lenghts_of_Chain"
click Anchor Chains##290708+
|tip They look like brown rectangular boxes on the ground around this area.
click Anchor Chain+
|tip They look like metal chains with anchors hanging from them on the backs of boats and on the docks around this area.
collect 7 Length of Chain##160511 |q 51592/1 |goto 75.31,51.11
step
label "Collect_Sail_Canvas"
click Crate of Canvas##290709+
|tip They look like brown square boxes on the ground around this area.
click Canvas Bolt##290710+
|tip They look like purple pieces of fabric wrapped around planks of wood on the ground around this area.
collect 7 Sail Canvas##160512 |q 51592/2 |goto 75.31,51.11
step
talk Nathanos Blightcaller##138285
turnin Making Ourselves at Home##51592 |goto 72.02,51.85
step
talk Lilian Voss##138287
turnin Bridgeport Investigation##51593 |goto 72.05,51.77
accept Explosives in the Foundry##51594 |goto 72.05,51.77
step
Follow the path |goto 71.91,52.14 < 7 |only if walking
Follow the path |goto 71.85,52.66 < 7 |only if walking
Jump down here |goto 72.60,54.18 < 7 |only if walking
Jump down here |goto 74.36,54.88 < 7 |only if walking
Follow the path |goto 75.68,53.93 < 7 |only if walking
Follow the path |goto 76.18,53.06 < 7 |only if walking
Follow the path up |goto 76.23,52.17 < 7 |only if walking
Follow the path |goto 76.85,51.37 < 7 |only if walking
talk Lilian Voss##138287
turnin Explosives in the Foundry##51594 |goto 77.50,49.93
accept Explosivity##51595 |goto 77.50,49.93
step
Test the Bomb's Explosiveness |q 51595/1 |goto 77.69,49.78
|tip Use the "Torch" ability.
|tip It appears as a button on the screen.
step
talk Lilian Voss##138287
turnin Explosivity##51595 |goto 77.50,49.93
accept Ammunition Acquisition##51596 |goto 77.50,49.93
accept Gunpowder Research##51597 |goto 77.50,49.93
accept A Bit of Chaos##51598 |goto 77.50,49.93
stickystart "Slay_Ashvane_Workers"
stickystart "Collect_Ashvane_Explosives"
step
Follow the path |goto 77.73,49.61 < 7 |only if walking
Continue following the path |goto 78.27,49.43 < 7 |only if walking
Continue following the path |goto 79.34,48.14 < 7 |only if walking
Jump down here |goto 79.29,47.87 < 5 |only if walking
Enter the building |goto 79.19,47.02 < 3 |walk
kill Taskmaster Williams##123264
|tip He walks around this area inside the building.
collect Gunpowder Manufacturing Guide##160552 |q 51597/2 |goto 79.11,46.94
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
collect Ashvane Explosives Formula##160553 |q 51597/1 |goto 82.18,48.63
step
label "Slay_Ashvane_Workers"
Kill enemies around this area
Slay #15# Ashvane Workers |q 51598/1 |goto 81.78,49.02
step
label "Collect_Ashvane_Explosives"
click Gunpowder Crate##290776+
|tip They look like open brown crates with bombs in them on the ground around this area.
collect 8 Ashvane Explosives##160555 |q 51596/1 |goto 81.78,49.02
step
Follow the path |goto 81.66,49.45 < 10 |only if walking
Follow the path up |goto 80.95,50.47 < 7 |only if walking
Follow the path |goto 80.71,51.59 < 7 |only if walking
Follow the path down |goto 78.85,51.81 < 7 |only if walking
Follow the path down |goto 78.38,51.83 < 7 |only if walking
Follow the path |goto 77.75,51.24 < 7 |only if walking
talk Lilian Voss##138287
turnin Ammunition Acquisition##51596 |goto 77.50,49.92
turnin Gunpowder Research##51597 |goto 77.50,49.92
turnin A Bit of Chaos##51598 |goto 77.50,49.92
accept Death Trap##51599 |goto 77.50,49.92
step
Follow the path |goto 77.19,50.43 < 7 |only if walking
Follow the path down |goto 76.90,51.50 < 7 |only if walking
Follow the path |goto 76.33,52.01 < 7 |only if walking
Continue following the path |goto 76.06,53.34 < 7 |only if walking
Continue following the path |goto 75.67,53.86 < 7 |only if walking
Continue following the path |goto 74.95,54.11 < 7 |only if walking
click Gunpowder Crate##290776+
Place #8# Gunpowder Crates |q 51599/1 |goto 74.24,52.93
step
Follow the path |goto 75.02,54.11 < 7 |only if walking
Follow the path |goto 75.66,53.91 < 7 |only if walking
Continue following the path |goto 76.15,53.19 7 |only if walking
Follow the path up |goto 76.26,52.22 < 7 |only if walking
Follow the road |goto 76.85,51.28 < 7 |only if walking
Follow the path down |goto 76.96,50.08 < 7 |only if walking
talk Lilian Voss##138287
turnin Death Trap##51599 |goto 77.01,49.19
accept The Bridgeport Ride##51601 |goto 77.01,49.19
step
clicknpc Stolen Horse##138552
Ride the Stolen Horse |invehicle |goto 76.99,49.22 |q 51601
stickystart "Ride_Past_Captain_Amalia_Stone"
step
Follow the path |goto 76.45,48.95 < 7 |only if walking
Continue following the path |goto 76.18,49.10 < 7 |only if walking
Continue following the path |goto 75.59,49.66 < 7 |only if walking
Continue following the path |goto 75.21,49.11 < 7 |only if walking
Continue following the path |goto 74.97,49.49 < 7 |only if walking
Continue following the path |goto 74.98,49.94 < 7 |only if walking
Continue following the path |goto 75.31,50.14 < 7 |only if walking
Ride Past #10# Bridgeport Guards |q 51601/1 |goto 75.66,50.99
|tip You will ride past the guards as you follow the path.
step
label "Ride_Past_Captain_Amalia_Stone"
Ride Past Captain Amalia Stone |q 51601/2 |goto 75.63,49.85
step
Follow the path |goto 75.80,51.36 < 7 |only if walking
Cross the bridge |goto 75.65,51.79 < 7 |only if walking
Follow the path |goto 74.94,52.77 < 7 |only if walking
Watch the dialogue
Complete the Bridgeport Ride |q 51601/3 |goto 74.49,53.29
step
Follow the path |goto 71.57,51.59 < 7 |only if walking
talk Nathanos Blightcaller##138285
turnin The Bridgeport Ride##51601 |goto 72.02,51.85
step
Follow the path down |goto 71.85,52.66 < 7 |only if walking
Follow the path down |goto 71.93,54.48 < 7 |only if walking
Continue down the path |goto 73.47,55.93 < 7 |only if walking
Follow the road |goto 74.33,56.22 < 7 |only if walking
Follow the road |goto 74.45,57.75 < 7 |only if walking
Continue following the road |goto 74.24,59.65 < 7 |only if walking
Continue following the road |goto 74.09,61.43 < 7 |only if walking
Follow the path |goto 73.67,62.65 < 7 |only if walking
Continue following the path |goto 74.11,63.03 < 7 |only if walking
Continue following the path |goto 76.42,63.50 < 7 |only if walking
Continue following the path |goto 77.39,64.09 < 7 |only if walking
Continue following the path |goto 77.65,64.91 < 7 |only if walking
Continue following the path |goto 77.25,66.37 < 7 |only if walking
Follow the path |goto 78.20,69.08 < 7 |only if walking
Follow the path |goto 78.62,70.70 < 7 |only if walking
Follow the path down |goto 78.96,71.40 < 7 |only if walking
Follow the path down |goto 79.88,72.06 < 7 |only if walking
Follow the path up |goto 81.00,72.45 < 7 |only if walking
Continue up the path |goto 81.74,74.69 < 7 |only if walking
Follow the path down |goto 82.38,76.02 < 7 |only if walking
Follow the path down |goto 82.80,76.39 < 7 |only if walking
Continue down the path |goto 84.12,75.42 < 7 |only if walking
Continue down the path |goto 84.63,75.37 < 7 |only if walking
Follow the path |goto 85.01,76.05 < 7 |only if walking
Follow the path up |goto 85.22,77.38 < 7 |only if walking
Follow the path up |goto 85.17,78.46 < 7 |only if walking
Follow the path |goto 85.42,79.52 < 7 |only if walking
Follow the path |goto 85.45,80.25 < 5 |only if walking
talk Tall Hasani##143777
accept Blood in the Tides##53439 |goto 85.29,80.50
step
talk Hungry Sam##128228
accept Local Flavor##53446 |goto 85.47,80.72
step
talk Stabby Jane##128229
accept My Favorite Things##53443 |goto 85.47,80.82
accept Silencing the Sisters##53445 |goto 85.47,80.82
step
talk Hungry Sam##128228
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Hungry Sam |q 53443/1 |goto 85.47,80.72
step
talk Friendly Pete##128233
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Friendly Pete |q 53443/2 |goto 85.26,80.32
step
Cross the bridge |goto 85.75,80.74 < 7 |only if walking
Follow the path |goto 86.11,81.12 < 7 |only if walking
talk Handy Bill##128227
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Handy Bill |q 53443/3 |goto 86.44,81.30
step
talk Skinny Tim##128224
fpath Castaway Point |goto 86.42,80.81
stickystart "Collect_Juicy_Lurker_Tails"
stickystart "Kill_Wailing_Sirens"
step
Jump down here |goto 86.27,80.81 < 5 |only if walking
Follow the path |goto 86.46,79.77 < 7 |only if walking
Follow the path |goto 87.56,79.33 < 7 |only if walking
click Silver Compass
collect Silver Compass##153186 |q 53443/5 |goto 88.26,78.15
step
Follow the path |goto 88.09,77.52 < 7 |only if walking
Follow the path |goto 88.12,76.53 < 7 |only if walking
click Tin Robot
collect Tin Robot##153187 |q 53443/6 |goto 87.69,75.12
step
click Glimmering Seaweed
accept Glimmering Locket##53444 |goto 87.97,75.01
step
Follow the path |goto 87.75,74.48 < 7 |only if walking
Follow the path |goto 87.66,73.97 < 7 |only if walking
Continue following the path |goto 87.74,73.41 < 7 |only if walking
Continue following the path |goto 88.13,72.83 < 7 |only if walking
click Steel Lunchbox
collect Steel Lunchbox##153185 |q 53443/4 |goto 88.28,72.92
stickystart "Kill_Patheope"
step
Enter the cave |goto 87.03,72.56 < 5 |walk
Follow the path |goto 86.57,72.68 < 7 |walk
kill Nolpe##128408 |q 53445/2 |goto 86.44,72.93
|tip Inside the cave.
step
label "Kill_Patheope"
kill Patheope##128407 |q 53445/1 |goto 86.48,72.55
|tip Inside the cave.
step
Leave the cave |goto 87.03,72.56 < 7 |c |q 53446
step
label "Collect_Juicy_Lurker_Tails"
Follow the path |goto 87.42,73.36 < 7 |only if walking
kill Tide Lurker##126237+
collect 5 Juicy Lurker Tail##153348 |q 53446/1 |goto 88.03,75.07
step
label "Kill_Wailing_Sirens"
kill 8 Wailing Siren##126440 |q 53439/1 |goto 88.03,75.07
step
Cross the bridge |goto 86.09,81.08 < 7 |only if walking
Follow the path |goto 85.71,80.75 < 7 |only if walking
talk Stabby Jane##128229
turnin My Favorite Things##53443 |goto 85.47,80.82
turnin Silencing the Sisters##53445 |goto 85.47,80.82
turnin Glimmering Locket##53444 |goto 85.47,80.82
step
talk Hungry Sam##128228
turnin Local Flavor##53446 |goto 85.46,80.72
step
talk Tall Hasani##143777
turnin Blood in the Tides##53439 |goto 85.29,80.49
step
Follow the path down |goto 85.46,80.17 < 7 |only if walking
Follow the path down |goto 85.40,79.32 < 7 |only if walking
Follow the path down |goto 85.19,77.12 < 7 |only if walking
Follow the path up |goto 85.01,75.97 < 7 |only if walking
Follow the path up |goto 84.47,75.30 < 7 |only if walking
Continue up the path |goto 83.70,75.74 < 7 |only if walking
Continue up the path |goto 82.96,76.43 < 7 |only if walking
Follow the path |goto 82.44,76.09 < 7 |only if walking
Follow the path |goto 81.63,74.53 < 7 |only if walking
Follow the path |goto 81.14,74.28 < 7 |only if walking
Follow the path down |goto 80.75,74.72 < 7 |only if walking
Follow the path |goto 80.40,75.35 < 7 |only if walking
Continue following the path |goto 80.40,77.90 < 7 |only if walking
Follow the path up |goto 80.01,78.93 < 7 |only if walking
Continue following the path |goto 79.93,80.25 < 7 |only if walking
Cross the bridge |goto 79.70,82.13 < 5 |only if walking
Follow the path |goto 77.84,84.25 < 5 |only if walking
Follow the path |goto 77.65,84.20 < 5 |only if walking
Continue following the path |goto 77.31,83.70 < 5 |only if walking
Cross the bridge |goto 77.19,83.64 < 3 |only if walking
Run up the stairs |goto 77.11,83.49 < 5 |only if walking
Follow the path |goto 77.08,83.23 < 5 |only if walking
talk Rodrigo##129098
fpath Freehold |goto 77.04,82.89
step
Follow the path |goto 71.58,51.60 < 7 |only if walking
Follow the path down |goto 71.19,51.42 < 7 |only if walking
Follow the path down |goto 71.17,50.70 < 7 |only if walking
Follow the path down |goto 70.73,49.40 < 7 |only if walking
Continue down the path |goto 70.27,48.82 < 7 |only if walking
Jump down here |goto 69.32,48.08 < 5 |only if walking
Follow the path |goto 67.54,45.74 < 15 |only if walking
Follow the path |goto 65.00,43.18 < 15 |only if walking
Continue following the path |goto Boralus/0 26.14,90.48 < 10 |only if walking
Continue following the path |goto Boralus/0 20.25,81.07 < 15 |only if walking
Continue following the path |goto Tiragarde Sound/0 61.28,36.31 < 15 |only if walking
Follow the path up |goto Tiragarde Sound/0 60.19,31.84 < 7 |only if walking
Follow the path up |goto Tiragarde Sound/0 59.87,30.75 < 7 |only if walking
Follow the path up |goto Tiragarde Sound/0 59.37,30.43 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 59.25,29.69 < 7 |only if walking
Follow the road |goto Tiragarde Sound/0 59.17,29.14 < 7 |only if walking
Follow the road |goto Tiragarde Sound/0 58.00,28.15 < 7 |only if walking
Continue following the road |goto Tiragarde Sound/0 57.19,27.99 < 7 |only if walking
Continue following the road |goto Tiragarde Sound/0 56.76,26.83 < 7 |only if walking
Continue following the road |goto Tiragarde Sound/0 56.03,26.02 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 55.14,25.59 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 54.12,24.23 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 53.34,24.83 < 7 |only if walking
Continue following the path |goto Tiragarde Sound/0 51.93,24.60 < 7 |only if walking
Continue following the path |goto Tiragarde Sound/0 51.42,23.51 < 7 |c |q 53451
step
Follow the path up |goto 50.94,23.45 < 7 |only if walking
Follow the path |goto 50.40,24.04 < 7 |only if walking
Jump down here |goto 49.53,23.89 < 7 |only if walking
Follow the path |goto 48.93,24.03 < 7 |only if walking
Continue following the path |goto 47.95,24.43 < 7 |only if walking
Follow the path up |goto 47.36,25.08 < 7 |only if walking
Follow the path up |goto 47.03,25.26 < 7 |only if walking
Follow the path |goto 46.59,26.10 < 7 |only if walking
Follow the path up |goto 45.99,26.61 < 7 |only if walking
Follow the path up |goto 44.85,25.79 < 7 |only if walking
Follow the path up |goto 44.07,24.84 < 7 |only if walking
Follow the path |goto 43.62,24.05 < 7 |only if walking
Continue following the path |goto 41.99,24.10 < 7 |only if walking
Follow the path up |goto 41.28,23.28 < 7 |only if walking
Follow the path up |goto 41.45,22.28 < 7 |only if walking
Follow the path up |goto 40.96,21.48 < 7 |only if walking
Continue up the path |goto 40.53,21.19 < 7 |only if walking
Continue up the path |goto 39.74,19.78 < 7 |only if walking
Continue up the path |goto 39.42,18.92 < 5 |only if walking
Continue up the path |goto 39.15,18.79 < 5 |only if walking
Continue up the path |goto 39.35,18.36 < 5 |only if walking
Follow the path |goto 39.44,17.85 < 5 |only if walking
click Wanted Poster
accept WANTED: Raging Earthguard##53451 |goto 39.78,17.87
accept WANTED: Quartermaster Ssylis##53454 |goto 39.78,17.87
step
Follow the path |goto 39.67,18.03 < 5 |only if walking
talk Kip Wingnut##142740
fpath Waning Glacier |goto 39.68,18.55
step
Jump down here |goto 39.54,18.32 < 5 |only if walking
Follow the path down |goto 39.36,18.45 < 7 |only if walking
Follow the path down |goto 39.64,19.54 < 7 |only if walking
Continue down the path |goto 40.57,21.24 < 7 |only if walking
Continue down the path |goto 41.39,22.46 < 7 |only if walking
Follow the path |goto 41.37,23.44 < 7 |only if walking
Follow the path |goto 41.99,24.06 < 7 |only if walking
Follow the path |goto 43.77,24.19 < 7 |only if walking
Follow the path down |goto 44.23,25.06 < 7 |only if walking
Follow the path down |goto 45.01,25.88 < 7 |only if walking
Follow the path |goto 45.73,26.18 < 7 |only if walking
Follow the road |goto 47.14,28.84 < 7 |only if walking
Follow the path up |goto 48.06,29.98 < 7 |only if walking
Follow the path up |goto 47.83,31.24 < 7 |only if walking
Continue up the path |goto 47.91,32.09 < 7 |only if walking
Continue up the path |goto 47.66,32.46 < 7 |only if walking
kill Living Earthguard##137426 |q 53451/1 |goto 47.25,32.35
|tip You may need help with this.
step
Enter the cave |goto 39.48,17.27 < 5 |walk
Follow the path |goto 39.20,16.92 < 5 |walk
talk Qiz Slickcopper##143785
|tip He walks around this area inside the cave.
turnin WANTED: Raging Earthguard##53451 |goto 39.02,16.35
step
Follow the path |goto 39.20,16.92 < 5 |walk
Leave the cave |goto 39.52,17.33 < 5 |walk
Follow the path |goto 39.55,17.55 < 7 |only if walking
Follow the path down |goto 39.40,17.92 < 7 |only if walking
Follow the path down |goto 39.25,18.58 < 7 |only if walking
Follow the path up |goto 39.08,18.76 < 5 |only if walking
Follow the path down |goto 38.73,19.57 < 5 |only if walking
Jump down here |goto 38.44,19.75 < 5 |only if walking
Follow the path |goto 38.13,19.92 < 7 |only if walking
Continue following the path |goto 37.15,19.99 < 7 |only if walking
Continue following the path |goto 36.16,20.11 < 7 |only if walking
Jump down carefully here |goto 35.29,19.82 < 7 |only if walking
Jump down carefully here |goto 34.93,19.93 < 5 |only if walking
Follow the path |goto 33.88,20.11 < 7 |only if walking
Continue following the path |goto 33.49,19.67 < 7 |only if walking
Continue following the path |goto 32.54,19.20 < 7 |only if walking
Enter the cave |goto 30.78,18.10 < 7 |walk
kill Quartermaster Ssylis##137519 |q 53454/1 |goto 30.40,17.99
|tip He walks around this area inside the cave.
|tip You may need help with this.
step
Enter the cave |goto 39.48,17.27 < 5 |walk
Follow the path |goto 39.20,16.92 < 5 |walk
talk Qiz Slickcopper##143785
|tip He walks around this area inside the cave.
turnin WANTED: Quartermaster Ssylis##53454 |goto 39.02,16.35
step
Follow the path |goto 39.18,16.86 < 5 |walk
Leave the cave |goto 39.52,17.31 < 5 |walk
Follow the path |goto Drustvar/0 37.25,24.73 < 7 |only if walking
click Wanted Poster
accept WANTED: The Rime Huntress##53456 |goto Drustvar/0 37.52,25.59
accept WANTED: Rindlewoe##53458 |goto Drustvar/0 37.52,25.59
accept WANTED: Sister Lilias##53459 |goto Drustvar/0 37.52,25.59
step
Follow the path |goto 36.81,25.74 < 7 |only if walking
talk Reez Grimelock##143878
accept Precious Metals##53461 |goto 36.35,25.84
step
Follow the path |goto 36.50,26.40 < 7 |only if walking
Follow the path |goto 37.06,27.13 < 7 |only if walking
Follow the path down |goto 37.23,27.87 < 7 |only if walking
Follow the path down |goto 37.64,29.54 < 7 |only if walking
Follow the path |goto 37.60,31.30 < 5 |only if walking
Follow the path down |goto 37.37,31.25 < 5 |only if walking
Follow the path |goto 37.15,30.52 < 5 |only if walking
Jump down here |goto 36.79,30.81 < 5 |only if walking
Follow the path |goto 36.03,30.71 < 7 |only if walking
Follow the path |goto 35.49,31.26 < 7 |only if walking
Follow the path down |goto 34.51,31.42 < 7 |only if walking
Run up the stairs |goto 34.14,30.81 < 5 |only if walking
Enter the building |goto 34.40,30.73 < 3 |walk
talk Foreman Cogbutton##143871
|tip Inside the building.
accept An Eight-Legged Curse##53463 |goto 34.60,30.73
accept All Wrapped Up##53462 |goto 34.60,30.73
step
Leave the building |goto 34.39,30.74 < 3 |walk
Follow the path up |goto 34.26,31.23 < 5 |only if walking
kill Writhing Cocoon##132345+
|tip They look like large squirming white eggs on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Rescue #8# Miners |q 53462/1 |goto 35.15,31.52
You can find more in the mine at [36.01,31.68]
step
label "Slay_Bilefang_Spiders"
Kill Bilefang enemies around this area
Slay #20# Bilefang Spiders |q 53463/1 |goto 35.15,31.52
step
label "Collect_Silver_Nuggets"
click Silver Nugget+
|tip They look like groups of small silver rocks on objects and on the ground around this area.
collect 10 Silver Nugget##156722 |q 53461/1 |goto 35.15,31.52
You can find more in the mine at [36.01,31.68]
step
Run up the stairs |goto 34.14,30.82 < 5 |only if walking
Enter the building |goto 34.40,30.74 < 3 |walk
talk Foreman Cogbutton##143871
|tip Inside the building.
turnin An Eight-Legged Curse##53463 |goto 34.60,30.73
turnin All Wrapped Up##53462 |goto 34.60,30.73
step
Leave the building |goto 34.40,30.74 < 3 |walk
Follow the path |goto 33.77,30.84 < 7 |only if walking
Follow the path |goto 33.20,30.65 < 7 |only if walking
Follow the path |goto 32.85,30.24 < 7 |only if walking
Follow the path down |goto 32.60,29.19 < 7 |only if walking
Follow the path down |goto 32.17,28.12 < 7 |only if walking
Follow the path |goto 30.08,25.49 < 7 |only if walking
Follow the road |goto 28.80,24.59 < 7 |only if walking
Follow the road |goto 27.47,22.33 < 7 |only if walking
Cross the bridge |goto 27.05,21.20 < 5 |only if walking
Follow the path |goto 27.05,20.77 < 5 |only if walking
kill Sister Lilias##137371
|tip You may need help with this.
collect Sister Lilias' Head##160026 |q 53459/1 |goto 27.07,19.54
step
Follow the road |goto 26.06,20.26 < 7 |only if walking
Follow the path up |goto 25.62,18.04 < 7 |only if walking
Follow the path up |goto 25.48,16.97 < 7 |only if walking
talk Bertram##135025
fpath Whitegrove Chapel |goto 25.75,16.56
step
Follow the path |goto 37.27,24.72 < 7 |only if walking
Follow the path |goto 37.30,25.47 < 7 |only if walking
talk Suzie Boltwrench##143800
turnin WANTED: Sister Lilias##53459 |goto 37.69,25.93
step
Follow the path |goto 36.81,25.73 < 7 |only if walking
talk Reez Grimelock##143878
turnin Precious Metals##53461 |goto 36.35,25.85
step
Follow the path |goto 36.50,26.34 < 7 |only if walking
Follow the path |goto 37.03,27.00 < 7 |only if walking
Follow the path down |goto 37.29,27.73 < 7 |only if walking
Follow the path |goto 37.65,32.27 < 7 |only if walking
Continue following the path |goto 38.00,33.81 < 7 |only if walking
Continue following the path |goto 38.57,35.25 < 7 |only if walking
Continue following the path |goto 39.31,36.92 < 7 |only if walking
Continue following the path |goto 41.13,39.24 < 7 |only if walking
Continue following the path |goto 41.97,40.07 < 7 |only if walking
kill The Rime Huntress##136697 |q 53456/1 |goto 44.21,40.35
|tip She looks like a large wolf that walks stealthed around this area.
|tip She will appear as a yellow dot on your minimap.
step
Follow the road |goto 43.45,38.91 < 7 |only if walking
Follow the road |goto 43.90,38.29 < 7 |only if walking
Follow the road |goto 45.58,36.65 < 7 |only if walking
Continue following the road |goto 46.25,35.62 < 7 |only if walking
Continue following the road |goto 46.21,32.43 < 7 |only if walking
Continue following the road |goto 47.19,30.36 < 7 |only if walking
Jump down carefully here |goto 49.05,30.45 < 5 |only if walking
Follow the path |goto 49.72,30.32 < 7 |only if walking
Jump down carefully here |goto 50.68,29.92 < 5 |only if walking
Follow the path |goto 51.94,29.49 < 7 |only if walking
kill Rindlewoe##129783 |q 53458/1 |goto 52.54,28.77
|tip He walks in the water around this area.
|tip You may need help with this.
step
Follow the path |goto 37.27,24.72 < 7 |only if walking
Follow the path |goto 37.30,25.47 < 7 |only if walking
talk Suzie Boltwrench##143800
turnin WANTED: The Rime Huntress##53456 |goto 37.69,25.94
turnin WANTED: Rindlewoe##53458 |goto 37.69,25.94
step
Follow the path |goto 37.43,25.67 < 7 |only if walking
Follow the path |goto 37.30,24.69 < 7 |only if walking
Jump down here |goto 19.30,43.38 < 5 |only if walking
click Wanted Poster
accept WANTED: Anchorface##51240 |goto 19.55,43.61
accept WANTED: The Crimson Cutthroats##53455 |goto 19.55,43.61
step
Run up the stairs |goto 19.52,43.95 < 3 |only if walking
Follow the path |goto 19.40,43.96 < 3 |only if walking
Jump down here |goto 19.21,43.77 < 5 |only if walking
kill Anchorface##137011 |q 51240/1 |goto 18.00,43.79
|tip He looks like a large shark that swims underwater around this area.
step
Follow the path |goto 18.85,44.30 10 |only if walking
Run up the stairs |goto 19.65,44.72 < 5 |only if walking
Follow the path |goto 19.77,44.58 < 5 |only if walking
Jump across here |goto 19.93,44.20 < 5 |only if walking
Run up the stairs |goto 19.80,43.77 < 5 |only if walking
Follow the path |goto 19.71,43.78 < 5 |only if walking
Run up the stairs |goto 19.50,43.95 < 3 |only if walking
Follow the path |goto 19.41,43.97 < 3 |only if walking
Run up the stairs |goto 19.26,43.36 < 3 |only if walking
Follow the path |goto 19.08,43.36 < 3 |only if walking
Enter the building |goto 19.12,43.49 < 3 |walk
talk Cesi Loosecannon##136579
|tip Inside the building.
turnin WANTED: Anchorface##51240 |goto 19.20,43.51
step
Leave the building |goto 19.12,43.49 < 3 |walk
Run down the stairs |goto 19.10,43.33 < 3 |only if walking
Follow the path |goto 19.28,43.36 < 3 |only if walking
Jump down here |goto 19.51,43.69 < 5 |only if walking
Run down the stairs |goto 19.72,43.76 < 5 |only if walking
Cross the bridge |goto 19.88,43.77 < 5 |only if walking
Follow the path |goto 20.53,43.73 < 5 |only if walking
Follow the path up |goto 21.04,44.19 < 7 |only if walking
Follow the path up |goto 21.09,44.85 < 7 |only if walking
Follow the path |goto 20.80,45.64 < 7 |only if walking
Follow the path up |goto 20.66,46.44 < 7 |only if walking
Follow the path up |goto 20.31,47.14 < 5 |only if walking
Continue up the path |goto 20.62,47.42 < 5 |only if walking
Continue up the path |goto 21.74,45.85 < 7 |only if walking
Follow the path |goto 22.24,46.03 < 7 |only if walking
Follow the road |goto 23.18,47.30 < 7 |only if walking
Continue following the road |goto 24.22,51.25 < 7 |only if walking
Continue following the road |goto 24.59,53.96 < 7 |only if walking
Continue following the road |goto 26.03,54.11 < 7 |c |q 53455
stickystart "Kill_Thorn_Sutton"
stickystart "Kill_Wallis_Crowder"
step
Follow the path up |goto 27.63,55.27 < 7 |only if walking
Follow the path up |goto 28.57,56.41 < 7 |only if walking
Cross the bridge |goto 28.90,57.53 < 7 |only if walking
Follow the path up |goto 29.09,58.60 < 7 |only if walking
Follow the path |goto 29.41,60.18 < 7 |only if walking
Follow the path |goto 29.63,61.31 < 7 |only if walking
Follow the road |goto 29.06,62.51 < 7 |only if walking
Follow the path |goto 28.20,63.56 < 7 |only if walking
Jump down here |goto 28.37,65.53 < 5 |only if walking
Jump down here |goto 28.33,66.22 < 5 |only if walking
Enter the cave |goto 28.86,66.46 < 5 |walk
Follow the path |goto 29.12,65.99 < 5 |walk
kill Mareen Sherwood##137551 |q 53455/1 |goto 29.77,65.50
|tip Inside the cave.
|tip Try to pull her by herself to fight her alone.
|tip You may need help with this.
step
label "Kill_Thorn_Sutton"
kill Thorn Sutton##137548 |q 53455/3 |goto 29.79,65.60
|tip Inside the cave.
|tip Try to pull him by himself to fight him alone.
|tip You may need help with this.
step
label "Kill_Wallis_Crowder"
kill Wallis Crowder##137550 |q 53455/2 |goto 29.90,65.34
|tip He walks around inside the cave.
|tip Try to pull him by himself to fight him alone.
|tip You may need help with this.
step
Follow the path |goto 29.15,65.95 < 5 |walk
Leave the cave |goto 28.85,66.48 < 5 |c |q 53455
step
Run down the stairs |goto 19.23,43.32 < 3 |only if walking
Follow the path down |goto 19.28,43.48 < 3 |only if walking
Run down the stairs |goto 19.20,43.67 < 3 |only if walking
Follow the path |goto 19.06,43.63 < 3 |only if walking
Enter the building |goto 19.12,43.49 < 3 |walk
talk Cesi Loosecannon##136579
|tip Inside the building.
turnin WANTED: The Crimson Cutthroats##53455 |goto 19.20,43.51
step
Leave the building |goto 19.12,43.49 < 3 |walk
Run up the stairs |goto 19.08,43.62 < 3 |only if walking
Follow the path up |goto 19.22,43.64 < 3 |only if walking
Run up the stairs |goto 19.27,43.36 < 3 |only if walking
Follow the path down |goto Stormsong Valley/0 51.52,33.10 < 7 |only if walking
Follow the path |goto Stormsong Valley/0 51.28,32.69 < 7 |only if walking
Follow the path |goto Stormsong Valley/0 51.00,32.70 < 7 |only if walking
Enter the building |goto Stormsong Valley/0 50.83,33.27 < 3 |walk
click Bulletin Board
|tip Inside the building.
accept WANTED: Razorclaw Alpha##53330 |goto Stormsong Valley/0 51.02,33.64
accept WANTED: Thundersnout##53348 |goto Stormsong Valley/0 51.02,33.64
step
Leave the building |goto 50.83,33.31 < 3 |walk
Follow the path |goto 50.68,32.94 < 7 |only if walking
Run up the stairs |goto 50.37,31.77 < 5 |only if walking
Enter the building |goto 50.20,31.72 < 3 |walk
click Crumbling Letter
|tip Inside the building.
accept Ruin Has Come##50417 |goto 49.95,31.79
step
Leave the building |goto 50.23,31.71 < 3 |walk
Follow the path |goto 50.43,31.89 < 7 |only if walking
Cross the bridge |goto 50.37,33.57 < 7 |only if walking
Follow the path |goto 50.30,34.29 < 7 |only if walking
Continue following the path |goto 50.47,36.56 < 7 |only if walking
Continue following the path |goto 49.65,37.42 < 7 |only if walking
Continue following the path |goto 48.13,40.19 < 7 |only if walking
Follow the path down |goto 47.95,42.22 < 7 |only if walking
Follow the path down |goto 47.73,43.26 < 7 |only if walking
Follow the path down |goto 48.16,45.35 < 7 |only if walking
Continue down the path |goto 48.30,45.97 < 7 |only if walking
Continue down the path |goto 48.97,46.99 < 7 |only if walking
Follow the road |goto 49.37,50.32 < 7 |only if walking
Follow the road |goto 51.66,52.56 < 7 |only if walking
Follow the road |goto 53.50,53.03 < 7 |only if walking
Follow the path |goto 54.76,52.84 < 7 |only if walking
Follow the path up |goto 54.99,50.91 < 7 |only if walking
Follow the path |goto 54.53,49.42 < 7 |only if walking
talk Kudra Windblade##134848
fpath Diretusk Hollow |goto 54.27,49.35
step
Follow the path down |goto 54.57,49.45 < 7 |only if walking
Follow the path down |goto 54.95,50.72 < 7 |only if walking
Follow the path |goto 54.75,53.05 < 7 |only if walking
Follow the road |goto 53.91,53.72 < 7 |only if walking
Continue following the road |goto 54.46,56.01 < 7 |only if walking
Continue following the road |goto 54.27,58.49 < 7 |only if walking
Continue following the road |goto 53.86,59.46 < 7 |only if walking
Continue following the road |goto 52.49,61.58 < 7 |only if walking
Follow the road |goto 51.11,61.96 < 7 |only if walking
Continue following the road |goto 48.75,60.63 < 7 |only if walking
Continue following the road |goto 47.48,61.46 < 7 |only if walking
Continue following the road |goto 46.53,60.91 < 7 |only if walking
Continue following the road |goto 45.84,60.90 < 7 |only if walking
Follow the path up |goto 44.19,62.37 < 7 |only if walking
Follow the path up |goto 43.98,65.10 < 7 |only if walking
Follow the path up |goto 43.72,65.85 < 7 |c |q 53348
step
Follow the path up |goto 42.52,66.93 < 7 |only if walking
Follow the path up |goto 42.48,67.59 < 5 |only if walking
Follow the path |goto 42.74,68.91 < 5 |only if walking
Follow the path |goto 43.09,69.76 < 5 |only if walking
Follow the path down |goto 43.27,70.62 < 5 |only if walking
Follow the path |goto 43.72,71.63 < 7 |only if walking
Follow the path up |goto 43.40,72.64 < 7 |only if walking
Follow the path |goto 42.54,73.68 < 5 |only if walking
Follow the path |goto 42.20,73.71 < 7 |only if walking
Enter the cave |goto 41.02,72.70 < 5 |walk
kill Thundersnout##135293
|tip She walks around this area inside the cave.
|tip You may need help with this.
collect Thundersnout's Snout##158300 |q 53348/1 |goto 40.40,71.27
step
Leave the cave |goto 41.00,72.66 5 |walk
Follow the path |goto 42.13,73.69 < 7 |only if walking
Follow the path |goto 42.57,73.62 < 7 |only if walking
Follow the path |goto 43.22,72.88 < 7 |only if walking
Follow the path up |goto 43.78,71.73 < 7 |only if walking
Follow the path |goto 43.31,70.75 < 5 |only if walking
Follow the path down |goto 43.20,70.19 < 5 |only if walking
Follow the path down |goto 43.08,69.72 < 5 |only if walking
Follow the path down |goto 42.74,68.97 < 5 |only if walking
Follow the path |goto 42.46,67.54 < 5 |only if walking
Jump down here |goto 41.96,66.04 < 7 |only if walking
Follow the road |goto 40.72,63.21 < 7 |only if walking
Follow the road |goto 39.07,62.86 < 7 |only if walking
Continue following the road |goto 38.28,62.98 < 7 |only if walking
Continue following the road |goto 37.07,64.18 < 7 |only if walking
Follow the path |goto 35.19,65.30 < 7 |only if walking
Follow the path up |goto 35.35,67.67 < 7 |only if walking
Follow the path |goto 34.83,69.11 < 7 |only if walking
Jump down here |goto 33.62,71.24 < 7 |only if walking
Follow the path up |goto 31.48,72.58 < 7 |only if walking
Follow the path up |goto 31.01,73.69 < 7 |only if walking
Follow the path up |goto 29.92,74.80 < 7 |only if walking
Follow the path |goto 27.93,75.92 < 7 |only if walking
Follow the path up |goto 27.34,76.55 < 7 |only if walking
Follow the path |goto 27.49,77.20 < 7 |only if walking
Enter the cave |goto 28.00,77.92 < 5 |walk
kill Razorclaw Alpha##136417
|tip Inside the cave.
|tip You may need help with this.
collect Razorclaw Alpha Pelt##163636 |q 53330/1 |goto 28.03,79.73
step
Leave the cave |goto 27.99,77.87 < 5 |c |q 53330
step
Run up the stairs |goto 51.57,33.48 < 5 |only if walking
Enter the building |goto 51.79,33.56 < 3 |walk
talk Centurion Kaga Warmstone##138886
|tip Inside the building.
turnin WANTED: Razorclaw Alpha##53330 |goto 52.10,33.74
turnin WANTED: Thundersnout##53348 |goto 52.10,33.74
step
Leave the building |goto 51.79,33.56 < 3 |walk
Follow the path down |goto 54.57,49.45 < 7 |only if walking
Follow the path down |goto 54.95,50.72 < 7 |only if walking
Follow the road |goto 54.62,53.07 < 7 |only if walking
Continue following the road |goto 53.42,53.10 < 7 |only if walking
Continue following the road |goto 51.93,52.77 < 7 |only if walking
Continue following the road |goto 49.27,50.33 < 7 |only if walking
Continue following the road |goto 47.21,50.63 < 7 |only if walking
Continue following the road |goto 44.81,50.00 < 7 |only if walking
Follow the road |goto 42.74,50.58 < 7 |only if walking
Follow the path |goto 40.30,49.46 < 7 |only if walking
Follow the path |goto 40.55,47.80 < 7 |only if walking
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
Leave the underwater cave |goto 37.31,32.81 < 7 |c |q 50417
step
Follow the path down |goto 54.67,49.67 < 7 |only if walking
Follow the road |goto 55.02,53.55 < 7 |only if walking
Follow the road |goto 55.92,54.32 < 7 |only if walking
Continue following the road |goto 58.10,53.14 < 7 |only if walking
Continue following the road |goto 58.74,53.17 < 7 |only if walking
Continue following the road |goto 59.90,54.46 < 7 |only if walking
Cross the bridge |goto 61.17,53.52 < 7 |only if walking
Follow the path |goto 61.62,53.94 < 7 |only if walking
Follow the path |goto 62.87,53.64 < 7 |only if walking
Continue following the path |goto 63.92,52.59 < 7 |only if walking
Follow the path up |goto 66.50,53.84 < 7 |only if walking
Follow the path |goto 67.69,53.76 < 7 |only if walking
Follow the path up |goto 69.15,54.35 < 7 |only if walking
Follow the path up |goto 69.90,55.08 < 7 |only if walking
Follow the path down |goto 71.09,55.30 < 7 |only if walking
Jump down here |goto 71.40,55.75 < 7 |only if walking
Follow the path |goto 72.01,56.75 < 7 |only if walking
Follow the path |goto 72.29,58.51 < 15 |only if walking
Follow the path |goto 72.32,61.19 < 7 |only if walking
Follow the path up |goto 72.40,61.71 < 7 |only if walking
Follow the path up |goto 72.86,61.74 < 7 |only if walking
Follow the path up |goto 73.12,62.16 < 7 |only if walking
Continue up the path |goto 74.24,62.77 < 7 |only if walking
Continue up the path |goto 74.73,64.49 < 7 |only if walking
Follow the path |goto 75.31,65.05 < 7 |only if walking
Follow the path up |goto 76.04,64.63 < 7 |only if walking
talk Chulani Cloudbreath##134850
fpath Ironmaw Overlook |goto 75.87,64.14
step
Follow the path down |goto 75.53,63.43 < 7 |only if walking
Jump down carefully here |goto 75.37,62.69 < 7 |only if walking
Follow the path |goto 76.94,54.87 < 7 |only if walking
Follow the path up |goto 77.18,53.84 < 7 |only if walking
Follow the path down |goto 78.07,53.55 < 7 |only if walking
Follow the path |goto 78.56,53.25 < 7 |only if walking
Follow the path up |goto 79.00,53.30 < 7 |only if walking
Follow the path |goto 79.40,53.98 < 7 |only if walking
Enter the building |goto 79.01,54.38 < 5 |walk
Jump down here |goto 78.82,54.68 < 5 |walk
talk Wayne the Ancestral##143565
|tip He walks around this area inside the building.
turnin Ruin Has Come##50417 |goto 78.69,54.99
accept Flush Them Out##50386 |goto 78.69,54.99
step
Run up the stairs |goto 78.82,55.02 < 5 |c |q 50386
step
Follow the path |goto 78.94,54.86 < 5 |walk
Leave the building |goto 78.97,54.42 < 3 |walk
Follow the path up |goto 79.56,54.02 < 7 |only if walking
Follow the path down |goto 80.56,54.64 < 7 |only if walking
Follow the path down |goto 80.96,55.56 < 7 |only if walking
Follow the path |goto 80.95,56.42 < 7 |only if walking
Enter the cave |goto 80.51,56.57 < 7 |walk
Kill enemies around this area
|tip Inside the cave.
Purge the Area |q 50386/1 |goto 79.92,55.55 |count 1
step
Leave the cave |goto 80.51,56.52 < 7 |walk
Follow the path up |goto 81.06,56.35 < 7 |only if walking
Follow the path up |goto 81.60,55.63 < 5 |only if walking
Continue up the path |goto 82.41,55.28 < 5 |only if walking
Follow the path |goto 82.51,54.14 < 7 |only if walking
Run up the stairs |goto 82.94,54.04 < 5 |only if walking
Run up the stairs |goto 83.42,53.97 < 5 |only if walking
Enter the building |goto 83.75,53.93 < 5 |walk
Kill enemies around this area
|tip Inside the building.
Purge the Area |q 50386/1 |goto 84.47,53.83 |count 2
step
Follow the path up |goto 84.44,53.20 < 5 |walk
Leave the building |goto 84.40,51.82 < |walk
Follow the path |goto 84.40,51.30 < 5 |only if walking
Follow the path down |goto 84.35,50.31 < 5 |only if walking
Follow the path down |goto 84.74,49.42 < 7 |only if walking
Follow the path down |goto 85.70,49.29 < 7 |only if walking
Follow the path down |goto 86.35,50.32 < 7 |only if walking
Run up the stairs |goto 86.66,51.81 < 5 |only if walking
Enter the building |goto 86.48,52.22 < 5 |walk
Kill enemies around this area
|tip Inside the building.
Purge the Area |q 50386/1 |goto 86.02,53.09 |count 3
step
Leave the building |goto 86.48,52.21 < 3 |walk
Follow the path |goto 86.64,51.74 < 5 |only if walking
Follow the path up |goto 86.66,51.35 < 7 |only if walking
Follow the path up |goto 86.13,49.91 < 7 |only if walking
Continue up the path |goto 85.61,49.26 < 7 |only if walking
Continue up the path |goto 84.63,49.45 < 7 |only if walking
Follow the path |goto 84.31,50.29 < 7 |only if walking
Follow the path down |goto 83.82,50.96 < 7 |only if walking
Follow the path down |goto 82.62,51.83 < 7 |only if walking
Follow the path |goto 80.72,52.25 < 7 |only if walking
Run up the stairs |goto 80.68,51.05 < 5 |only if walking
Enter the building |goto 80.91,50.76 < 5 |walk
Kill enemies around this area
|tip Inside the building.
Purge the Area |q 50386/1 |goto 81.52,50.21 |count 4
step
Leave the building |goto 80.90,50.78 < 3 |walk
Follow the path up |goto 80.36,52.23 < 7 |only if walking
Follow the path up |goto 79.45,52.67 < 7 |only if walking
Follow the path up |goto 79.11,53.35 < 7 |only if walking
Follow the path |goto 79.40,53.98 < 7 |only if walking
Enter the building |goto 79.01,54.38 < 5 |walk
Jump down here |goto 78.82,54.68 < 5 |walk
talk Wayne the Ancestral##143565
|tip He walks around this area inside the building.
turnin Flush Them Out##50386 |goto 78.69,54.99
accept Despondent Ablutions##53097 |goto 78.69,54.99
step
Run up the stairs |goto 78.82,55.02 < 5 |c |q 53097
step
Follow the path |goto 78.94,54.89 < 5 |walk
Leave the building |goto 78.99,54.40 < 3 |walk
Follow the path down |goto 79.36,53.70 < 7 |only if walking
Follow the path |goto 77.87,52.60 < 7 |only if walking
Follow the path |goto 77.27,52.26 < 7 |only if walking
click Purifying Effigy
Inspect the Purifying Effigy |q 53097/1 |goto 76.25,50.64
step
Watch the dialogue
kill Violent Expurgation##142996 |q 53097/2 |goto 76.29,50.70
step
Follow the path up |goto 77.34,52.28 < 7 |only if walking
Follow the path up |goto 79.03,53.38 < 7 |only if walking
Follow the path |goto 79.40,53.98 < 7 |only if walking
Enter the building |goto 79.01,54.38 < 5 |walk
Jump down here |goto 78.82,54.68 < 5 |walk
talk Wayne the Ancestral##143565
|tip He walks around this area inside the building.
turnin Despondent Ablutions##53097 |goto 78.69,54.99
step
Run up the stairs |goto 78.82,55.02 < 5 |walk
Follow the path |goto 78.94,54.89 < 5 |walk
Leave the building |goto 78.99,54.40 < 3 |walk
Follow the path down |goto 79.36,53.70 < 7 |only if walking
Follow the path |goto 77.87,52.60 < 7 |only if walking
Follow the path |goto 77.27,52.26 < 7 |only if walking
Jump down here |goto 77.05,51.31 < 7 |only if walking
Follow the path |goto 76.56,49.78 < 7 |only if walking
Follow the path |goto 76.18,47.50 < 7 |only if walking
Continue following the path |goto 75.12,44.86 < 15 |only if walking
Continue following the path |goto 73.51,40.99 < |only if walking
Continue following the path |goto 72.09,37.34 < 15 |only if walking
Continue following the path |goto 70.77,33.33 < 15 |only if walking
Follow the path up |goto 70.27,31.37 < 7 |only if walking
Follow the path |goto 70.36,30.23 < 7 |only if walking
Follow the path up |goto 70.79,28.34 < 7 |only if walking
Follow the path up |goto 71.47,27.86 < 7 |only if walking
Continue up the path |goto 71.90,27.98 < 7 |only if walking
Continue up the path |goto 71.95,28.79 < 7 |only if walking
Follow the path |goto 71.76,29.38 < 7 |only if walking
Run up the stairs |goto 71.97,29.78 < 5 |only if walking
Run up the stairs |goto 72.45,29.68 < 5 |only if walking
Follow the path |goto 72.84,29.95 < 5 |only if walking
Run up the stairs |goto 73.71,30.99 < 5 |only if walking
Run up the stairs |goto 74.02,30.81 < 5 |only if walking
Enter the building |goto 74.33,30.61 < 5 |c |q 53207
step
Follow the path |goto 74.55,30.45 < 5 |only if walking
Follow the path up |goto 74.79,29.57 < 5 |only if walking
Follow the path |goto 74.53,28.65 < 5 |only if walking
Leave the building |goto 74.43,28.31 < 5 |only if walking
Follow the path up |goto 73.56,25.97 < 7 |only if walking
Follow the path |goto 73.67,25.21 < 7 |only if walking
Run up the stairs |goto 73.91,24.86 < 5 |only if walking
Run up the stairs |goto 74.57,24.86 < 5 |only if walking
Run up the stairs |goto 75.00,24.84 < 5 |only if walking
Follow the path |goto 75.36,25.22 < 5 |only if walking
Run up the stairs |goto 75.52,25.97 < 5 |only if walking
Follow the path |goto 75.66,26.22 < 5 |only if walking
Cross the bridge |goto 75.97,26.54 < 7 |only if walking
Follow the path |goto 76.60,26.73 < 7 |only if walking
Cross the bridge |goto 76.89,26.78 < 7 |only if walking
Follow the path |goto 77.51,26.74 < 7 |only if walking
Follow the path up |goto 78.04,25.75 < 7 |only if walking
Follow the path up |goto 78.04,24.49 < 7 |only if walking
talk Dark Ranger Allanah##134853
fpath Shrine of the Storm |goto 77.90,24.06
step
Reach Friendly Reptuation with The Honorbound |condition rep('The Honorbound') >= Friendly
|tip Use the "BFA World Quests Guide" to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
|tip Complete Warfronts to gain reputation.
|tip Complete Missions at your mission table that reward reputation with The Honorbound.
step
accept The Warfront Looms##53207
|tip You will automatically accept this quest.
step
talk Throk##138949
turnin The Warfront Looms##53207 |goto Dazar'alor/0 52.93,94.49
accept To the Front##53208 |goto Dazar'alor/0 52.93,94.49
step
Follow the path |goto 52.42,94.42 < 5 |only if walking
talk Druza Netherfang##143388
Tell her _"Send me to Arathi Highlands!"_ |goto 51.83,94.46
Teleport to Ar'gorok |goto Arathi Highlands/0 27.40,29.97 < 7 |noway |c |q 53208
step
talk Wistel Silversnitch##143019
turnin To the Front##53208 |goto 27.53,31.84
accept Touring the Front##53210 |goto 27.53,31.84
step
talk Flightgineer Krazzle##143323
Tell him _"Wistel said you could give me a tour of the area."_
Begin Riding the Rocket |invehicle |goto 25.88,29.61 |q 53210
step
Watch the dialogue
View the Battleground with Flightgineer Krazzle |q 53210/3 |goto 25.68,35.79
step
Watch the dialogue
Return to the Ground |outvehicle |goto 25.89,29.97 |q 53210
step
Enter the mine |goto 33.70,36.73 < 5 |walk
Follow the path down |goto 34.17,36.05 < 5 |walk
Follow the path down |goto 34.27,35.35 < 5 |walk
Follow the path down |goto 33.98,34.79 < 5 |walk
Jump down here |goto 32.94,35.52 < 5 |walk
Follow the path |goto 33.06,36.93 < 5 |walk
talk Foreman Drogg##143372
|tip Inside the mine.
Tell him _"Thank you."_
Check on Foreman Drogg |q 53210/1 |goto 33.25,38.04
step
Run up the stairs |goto 32.80,36.70 < 5 |walk
Run up the stairs |goto 32.69,36.10 < 5 |walk
Run up the stairs |goto 32.67,35.60 < 5 |walk
Follow the path |goto 32.90,35.39 < 5 |walk
Follow the path up |goto 33.36,35.15 < 5 |walk
Follow the path up |goto 34.07,34.86 < 5 |walk
Follow the path up |goto 34.31,35.57 < 5 |walk
Leave the mine |goto 33.72,36.72 < 5 |walk
talk Graul##143373
Tell him _"Thank you."_
Check on Graul |q 53210/2 |goto 18.14,28.76
step
Follow the path |goto 20.49,27.45 < 10 |only if walking
Continue following the path |goto 21.31,29.20 < 10 |only if walking
Continue following the path |goto 24.40,33.80 < 10 |only if walking
talk Wistel Silversnitch##143019
turnin Touring the Front##53210 |goto 27.53,31.84
accept Back to Zuldazar##53212 |goto 27.53,31.84
step
talk Druza Netherfang##143381
Tell her _"Send me to Zuldazar!"_  |goto 27.29,29.80
Return to Zuldazar |goto Dazar'alor/0 51.93,94.20 < 7 |noway |c |q 53212
step
talk Throk##138949
turnin Back to Zuldazar##53212 |goto 52.92,94.52
accept Warfront: The Battle for Stromgarde##53416 |goto 52.92,94.52
step
clicknpc War Table##131752
View the War Table in Zuldazar |q 53416/1 |goto 52.93,94.48
step
clicknpc War Table##131752
|tip Click the "Join Queue" button to queue for a warfront.
|tip If the Horde currently controls Ar'gorok, you will have to wait until the Alliance gains control.
Click Here After Entering the Warfront |confirm |goto 52.93,94.48 |q 53416
step
Defeat the Alliance at the Battle for Stromgarde |q 53416/2
|tip Move around with other players and kill enemies.
|tip Collect Iron and Wood to help build buildings and recruit troops to help you fight.
step
talk Throk##138949
turnin Warfront: The Battle for Stromgarde##53416 |goto Dazar'alor/0 52.92,94.52
step
Reach #4500# Reptuation into Friendly with The Honorbound |condition repval('The Honorbound','Friendly')>=4500
|tip Use the "BFA World Quests Guide" to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
accept Operation: Grave Digger##53065 |goto 72.02,51.85
|tip You will automatically accept this quest.
step
talk Nathanos Blightcaller##135691
|tip On the deck of the ship.
turnin Operation: Grave Digger##53065 |goto Zuldazar/0 58.44,62.67
accept A Stroll Through a Cemetery##51784 |goto Zuldazar/0 58.44,62.67
step
Run up the stairs |goto 58.37,62.74 < 3 |only if walking
Follow the path |goto 58.38,62.80 < 3 |only if walking
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Drustvar."_
Sail to Drustvar |q 51784/1 |goto 58.46,62.99
step
Follow the path |goto Drustvar/0 37.25,24.77 < 7 |only if walking
Follow the path down |goto Drustvar/0 37.27,27.58 < 7 |only if walking
Follow the path |goto Drustvar/0 37.63,32.19 < 7 |only if walking
Follow the path |goto Drustvar/0 38.17,34.36 < 7 |only if walking
Follow the path down |goto Drustvar/0 38.67,35.21 < 7 |only if walking
Follow the path down |goto Drustvar/0 39.34,36.96 < 7 |only if walking
Continue down the path |goto Drustvar/0 41.12,39.18 < 7 |only if walking
Follow the road |goto Drustvar/0 42.66,40.60 < 7 |only if walking
Follow the road |goto Drustvar/0 43.66,38.53 < 7 |only if walking
Follow the road |goto Drustvar/0 45.60,36.67 < 7 |only if walking
Continue following the road |goto Drustvar/0 46.27,35.40 < 7 |only if walking
Continue following the road |goto Drustvar/0 46.19,32.61 < 7 |only if walking
Continue following the road |goto Drustvar/0 47.16,30.37 < 7 |only if walking
Continue following the road |goto Drustvar/0 48.07,30.42 < 7 |only if walking
Continue following the road |goto Drustvar/0 48.83,31.81 < 7 |only if walking
Continue following the road |goto Drustvar/0 49.17,34.09 < 7 |only if walking
Follow the road |goto Drustvar/0 50.72,35.59 < 7 |only if walking
Follow the road |goto Drustvar/0 51.02,37.56 < 7 |only if walking
Follow the path |goto Drustvar/0 51.86,38.83 < 7 |only if walking
Follow the path |goto Drustvar/0 52.51,39.23 < 7 |only if walking
Continue following the path |goto Drustvar/0 53.38,39.10 < 7 |only if walking
Continue following the path |goto Drustvar/0 53.81,39.29 < 7 |only if walking
Follow the road |goto Drustvar/0 56.16,39.18 < 7 |only if walking
Continue following the road |goto Drustvar/0 59.24,39.74 < 7 |only if walking
Continue following the road |goto Drustvar/0 61.53,39.87 < 7 |c |q 51784
step
Follow the road |goto 62.79,40.99 < 7 |only if walking
Follow the road |goto 63.73,41.75 < 7 |only if walking
Follow the path |goto 65.03,44.68 < 7 |only if walking
Follow the path |goto 64.33,46.68 < 7 |only if walking
Follow the path |goto 64.19,48.69 < 7 |only if walking
Follow the path up |goto 64.09,49.65 < 7 |only if walking
Follow the path up |goto 63.94,50.16 < 7 |only if walking
Continue up the path |goto 63.72,50.51 < 7 |only if walking
Follow the path |goto 63.00,50.58 < 7 |only if walking
Follow the path |goto 62.28,50.39 < 7 |only if walking
Follow the path up |goto 61.84,50.57 < 7 |only if walking
Follow the path up |goto 61.61,50.69 < 5 |only if walking
Meet Nathanos at Barrowknoll Cemetery |q 51784/2 |goto 61.37,51.10
step
talk Nathanos Blightcaller##139061
turnin A Stroll Through a Cemetery##51784 |goto 61.37,51.09
accept Examining the Epitaphs##51785 |goto 61.37,51.09
accept State of Unrest##51786 |goto 61.37,51.09
step
talk Lilian Voss##139062
accept Our Lot in Life##51787 |goto 61.32,51.03
stickystart "Collect_Graveblooms"
stickystart "Kill_Enraged_Spirits"
step
Follow the path up |goto 61.21,50.14 < 5 |only if walking
Follow the path up |goto 61.12,49.94 < 5 |only if walking
Follow the path |goto 60.91,49.60 < 5 |only if walking
Follow the path |goto 60.83,49.22 < 5 |only if walking
Follow the path |goto 61.03,48.81 < 5 |only if walking
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 61.11,48.87 |count 1
step
Run up the stairs |goto 61.82,47.86 < 5 |only if walking
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 61.91,47.86 |count 2
step
Follow the path |goto 61.33,47.30 < 7 |only if walking
Follow the path |goto 60.82,47.28 < 7 |only if walking
Follow the path up |goto 60.44,47.25 < 7 |only if walking
Follow the path |goto 60.08,47.30 < 7 |only if walking
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 59.55,47.30 |count 3
step
Follow the path |goto 59.82,46.41 < 7 |only if walking
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 60.32,44.97 |count 4
step
label "Collect_Graveblooms"
click Gravebloom##273537+
|tip They look like small plants with blue flowers and purple leaves on the ground around this area.
collect 10 Gravebloom##152480 |q 51787/1 |goto 60.67,45.44
step
label "Kill_Enraged_Spirits"
kill 8 Enraged Spirit##126264 |q 51786/1 |goto 60.67,45.44
step
Follow the path |goto 61.34,47.31 < 7 |only if walking
Follow the path |goto 61.54,48.38 < 7 |only if walking
Cross the bridge |goto 61.94,49.04 < 7 |only if walking
Follow the path |goto 62.16,49.35 < 7 |only if walking
Follow the path |goto 62.21,49.82 < 7 |only if walking
Follow the path up |goto 61.81,50.47 < 7 |only if walking
Follow the path up |goto 61.61,50.67 < 5 |only if walking
talk Nathanos Blightcaller##139061
turnin Examining the Epitaphs##51785 |goto 61.37,51.10
turnin State of Unrest##51786 |goto 61.37,51.10
step
talk Lilian Voss##139062
turnin Our Lot in Life##51787 |goto 61.32,51.03
step
talk Nathanos Blightcaller##139061
accept The Crypt Keeper##51788 |goto 61.37,51.09
step
Follow the path |goto 61.06,51.03 < 5 |only if walking
Follow the path up |goto 60.78,50.84 < 5 |only if walking
Follow the path |goto 60.57,50.48 < 5 |only if walking
Follow the path |goto 60.04,50.08 < 7 |only if walking
kill Brutus Thornton##139136
|tip He walks around this area.
collect Valentine's Key##160736 |q 51788/1 |goto 59.17,49.19
step
Follow the path |goto 60.00,50.03 < 7 |only if walking
Follow the path |goto 60.57,50.50 < 5 |only if walking
Jump across here |goto 60.87,50.77 < 5 |only if walking
Follow the path |goto 61.02,50.87 < 5 |only if walking
talk Nathanos Blightcaller##139061
turnin The Crypt Keeper##51788 |goto 61.37,51.09
accept What Remains of Marshal M. Valentine##51789 |goto 61.37,51.09
step
Follow the path up |goto 61.20,50.16 < 5 |only if walking
Follow the path up |goto 61.12,49.94 < 5 |only if walking
Follow the path |goto 60.96,49.64 < 5 |only if walking
Follow the path |goto 60.84,49.24 < 5 |only if walking
Follow the path |goto 61.03,48.81 < 5 |only if walking
click Crypt Door##278295
Open the Crypt Door |q 51789/1 |goto 61.11,48.87
step
Kill the enemies that attack in waves
kill Echo of Marshal M. Valentine##140124 |q 51789/2 |goto 61.13,48.63
step
Watch the dialogue
Search the Crypt |q 51789/3 |goto 61.11,48.87
step
Watch the dialogue
Uncover Valentine's Log |q 51789/4 |goto 61.11,48.87
step
Enter the building |goto 61.11,48.88 < 3 |walk
click Valentine's Log##291277
|tip Inside the building.
collect Valentine's Log##160939 |q 51789/5 |goto 61.11,48.99
step
Leave the building |goto 61.11,48.90 < 3 |walk
talk Nathanos Blightcaller##140105
turnin What Remains of Marshal M. Valentine##51789 |goto 61.18,48.74
step
Reach #3000# Reptuation into Honored with The Honorbound |condition repval('The Honorbound','Honored')>=3000
|tip Use the "BFA World Quests Guide" to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
_Under Construction!_
This guide will be updated to continue the War Campaign questline very soon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Nightborne Race Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the new Nightborne allied race.",
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
Load the "Suramar (110)" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Suramar (110)"
|tip Click the line above to load the guide.
|tip You must progress through the Suramar guide until you earn the Insurrection achievement.
Earn the "Insurrection" Achievement |achieve 11340
step
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Complete world quests in Suramar to gain reputation.
About Ancient Mana:
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (110) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
Feed Ancient Mana to These Nightfallen NPC's:
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (110) leveling guide.
Gain Exalted Reputation with the Nightfallen |goto Suramar/0 36.51,46.80 |region suramar_shalaran |achieve 10778
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will automatically accept this quest.
|tip If not, press Shift + J and check your Adventure Journal.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Liadrin##126062
accept Thalyssra's Estate##49973 |goto 37.98,80.56
step
talk Lady Liadrin##131478
turnin Thalyssra's Estate##49973 |goto Suramar/0 65.88,63.72
accept Silvermoon City##49613 |goto 65.88,63.72
step
talk Lady Liadrin##130133
turnin Silvermoon City##49613 |goto Silvermoon City/0 58.12,19.88
accept Remember the Sunwell##49354 |goto 58.12,19.88
step
click Portal to the Sunwell |goto 53.95,19.49
Enter the Scenario |scenariostart |q 49354 |future |q 49354 |future
step
Meet with Liadrin |scenariogoal Meet with Liadrin.##1/38106 |goto Shrine of the Eclipse/1 61.10,71.48 |q 49354 |future
step
Follow the path |goto 56.52,73.29 < 7 |walk
Walk with Thalyssra |scenariogoal Walk with Thalyssra##2/38160 |goto 50.09,66.13 |q 49354 |future
step
Kill enemies around this area
Defeat the Sunwell Guardians |scenariogoal Defeat the Sunwell Guardians##3/38161 |goto 50.09,66.13 |q 49354 |future
step
kill Aruun the Darkener##129659 |scenariogoal Aruun the Darkener slain##4/38162 |goto 48.69,66.06 |q 49354 |future
step
Close the Void Rift |scenariogoal Void rift closed##5/38519 |q 49354 |future
|tip Wait for the dialogue to complete.
step
Follow the path |goto 58.09,65.52 < 7 |walk
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |q 49354 |future
step
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |goto Silvermoon City/0 58.25,19.35 < 1000 |noway |c |q 49354 |future
step
talk Lady Liadrin##130133
turnin Remember the Sunwell##49354 |goto 58.45,19.09
accept The Nightborne##49614 |goto 58.45,19.09
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Nightborne##49614 |goto 37.77,81.16
step
Congratulations!
You Unlocked the "Nightborne" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Highmountain Tauren Race Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the new Highmountain Tauren allied race.",
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
Load the "Highmountain" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip You must progress through the Highmountain guide until you earn the "Ain't No Mountain High Enough" achievement.
Earn the "Ain't No Mountain High Enough" Achievement |achieve 10059
step
Load the "Highmountain" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip Completing certain quests in Highmountain award reputation with the Highmountain Tribe.
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Highmountain award reputation with the Highmountain Tribe.
Use Highmountain Tribe Reputation Insignias
|tip These are awarded from Order Hall missions, Highmountain Tribe emissary quests, and world quests in Highmountain.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##141341 |only if itemcount(141341) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##139024 |only if itemcount(139024) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146944 |only if itemcount(146944) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146938 |only if itemcount(146938) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##141990 |only if itemcount(141990) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##147412 |only if itemcount(147412) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##150928 |only if itemcount(150928) >= 1
Gain Exalted Reputation with the Highmountain Tribe |achieve 12292
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will automatically accept this quest.
|tip If not, press Shift + J and check your Adventure Journal.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(49614)
step
talk Baine Bloodhoof##125285
accept A Feast for Our Kin##48066 |goto 38.17,81.10
step
Enter the building |goto Thunder Bluff/0 59.84,51.69 < 7 |walk
talk Baine Bloodhoof##93844
turnin A Feast for Our Kin##48066 |goto 61.65,52.10
step
talk Baine Bloodhoof##129914
|tip Wait for the dialogue to complete.
accept Shadow Over Thunder Bluff##48067 |goto Thunder Bluff/0 61.52,51.75
stickystart "Dark_Tendril"
step
kill Shadow of Uul##125141+ |q 48067/2 |goto 55.36,51.33
step
label "Dark_Tendril"
kill Dark Tendril##125136+ |q 48067/1 |goto 55.36,51.33
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Shadow Over Thunder Bluff##48067 |goto 55.20,51.05
accept Dark Forces##49756 |goto 55.20,51.05
step
kill Qy'telek##130726
|tip He walks around.
Slay Qy'telek |q 49756/1 |goto 38.17,61.81
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Dark Forces##49756 |goto 38.04,60.65
accept Return to Highmountain##48079 |goto 38.04,60.65
step
talk Mayla Highmountain##108434
turnin Return to Highmountain##48079 |goto Thunder Totem/6 68.82,71.21
step
talk Spiritwalker Graysky##105085
accept Dark Tales##41884 |goto 68.38,72.97
step
Follow the path |goto Highmountain/0 36.58,65.92 < 10 |only if walking
Follow the path |goto 37.43,66.55 < 15 |only if walking
Follow the path |goto 38.73,67.99 < 15 |only if walking
Enter the building |goto 38.65,68.66 < 7 |walk
talk Spiritwalker Graysky##125454
turnin Dark Tales##41884 |goto 38.51,69.10
accept Walking in Their Footsteps##41764 |goto 38.51,69.10
step
click Water of Vision##248865
Use the Water of Vision |q 41764/1 |goto 38.53,69.17
stickystart "Shadow_Lurker"
step
Leave the building |goto 38.66,68.64 < 7 |walk
Follow the path |goto 39.57,69.43 < 7 |walk
Follow the path |goto 40.28,71.22 < 15 |only if walking
Enter the cave |goto 41.45,72.57 < 10 |walk
Follow the path |goto 42.01,72.77 < 10 |walk
Follow the path |goto 42.34,72.33 < 10 |walk
kill Shadow of Uul##125141 |q 41764/3 |goto 43.52,73.29
step
label "Shadow_Lurker"
kill Shadow Lurker##105069 |q 41764/2 |goto 43.52,73.29
step
Follow the path |goto 43.67,74.02 < 10 |walk
Follow the path up |goto 44.19,74.95 < 7 |walk
Follow the path |goto 44.12,75.96 < 7 |walk
Follow the path |goto 44.98,76.40 < 10 |walk
Follow the path |goto 45.64,75.85 < 10 |walk
Follow the path |goto 46.25,74.80 < 10 |walk
click Bitestone Ward
Place the Bitestone Ward |q 41764/4 |goto 46.16,73.66
step
talk Spiritwalker Graysky##125454
turnin Walking in Their Footsteps##41764 |goto 38.51,69.10
accept Shadow of the Sepulcher##48185 |goto 38.51,69.10
step
Follow the path |goto 53.17,45.95 < 10 |only if walking
Follow the path |goto 54.36,46.73 < 10 |only if walking
Follow the path down |goto 54.63,45.69 < 10 |only if walking
Follow the path |goto 56.31,45.61 < 10 |only if walking
Enter the building |goto 56.81,46.05 < 7 |walk
talk Spiritwalker Graysky##125459
turnin Shadow of the Sepulcher##48185 |goto 57.01,46.21
accept Minions of the Darkness##41799 |goto 57.01,46.21
step
click Water of Vision##248865
Use the Water of Vision |q 41799/1 |goto 57.05,46.16
step
kill Dark Spirit##104872+
|tip Use the abilities on your bar.
Slay #12# Dark Spirits |q 41799/2 |goto 55.98,45.52
step
Enter the cave |goto 55.15,44.27 < 7 |walk
Follow the path |goto 54.61,43.62 < 7 |walk
Follow the path |goto 54.46,43.11 < 7 |walk
Follow the path |goto 54.65,42.71 < 7 |walk
Follow the path |goto 55.11,41.88 < 7 |walk
Follow the path |goto 54.53,41.71 < 7 |walk
Follow the path |goto 54.37,42.83 < 7 |walk
Follow the path |goto 54.98,43.34 < 7 |walk
Follow the path |goto 55.31,42.14 < 7 |walk
Follow the path |goto 55.01,41.24 < 7 |walk
kill 6 Shadowy Tendril##130418 |q 41799/3 |goto 54.74,41.15
step
Enter the cave |goto 55.21,41.84 < 7 |walk
kill Shadow of the Darkness##132090 |q 41799/4 |goto 55.36,40.85
step
click Sepulcher Ward
Place the Sepulcher Ward |q 41799/5 |goto 54.74,40.62
step
talk Spiritwalker Graysky##125459
turnin Minions of the Darkness##41799 |goto 57.01,46.21
accept Huln's Mountain##48190 |goto 57.01,46.21
step
Follow the path |goto 58.56,64.47 < 7 |only if walking
Cross the bridge |goto 57.92,63.60 < 7 |only if walking
Follow the path up |goto 57.22,63.34 < 10 |only if walking
Follow the path up |goto 56.11,63.55 < 10 |only if walking
Follow the path up |goto 54.83,63.69 < 10 |only if walking
Follow the path |goto 53.42,63.46 < 10 |only if walking
talk Spiritwalker Graysky##125466
turnin Huln's Mountain##48190 |goto 53.32,64.01
accept Servants of the Darkness##41800 |goto 53.32,64.01
step
clicknpc Spiritwalker Graysky##125829
Use the Water of Vision |q 41800/1 |goto 53.32,64.01
step
Follow the path |goto 53.97,64.84 < 10 |only if walking
Cross the bridge |goto 53.70,65.84 < 7 |only if walking
kill 10 Necrodark Defiler##104888 |q 41800/2 |goto 53.16,66.45
step
Follow the path |goto 52.63,66.61 < 10 |walk
kill Necrogg the Darkspeaker##104890
|tip He patrols up and down the hill
Slay Necrogg the Darkspeaker |q 41800/3 |goto 52.46,67.44
step
Follow the path up |goto 52.39,69.08 < 10 |only if walking
Follow the path up |goto 52.98,69.43 < 10 |only if walking
Enter the building |goto 53.23,69.35 < 7 |only if walking
click Snowmane Ward##3365
Place the Snowmane Ward |q 41800/4 |goto 53.33,69.48
step
talk Spiritwalker Graysky##125466
turnin Servants of the Darkness##41800 |goto 53.32,64.01
accept How Fares Ebonhorn?##48434 |goto 53.32,64.01
step
talk Spiritwalker Ebonhorn##124252
turnin How Fares Ebonhorn?##48434 |goto Thunder Totem/6 67.77,71.40
step
talk Mayla Highmountain##108434
accept Curse of the Necrodark##41815 |goto 68.72,71.03
step
Follow the path down |goto Highmountain/0 56.00,85.20 < 7 |only if walking
Cross the water |goto 55.34,84.21 < 15 |only if walking
Follow the path up |goto 56.07,82.00 < 10 |only if walking
Follow the path |goto 56.46,80.99 < 10 |only if walking
Follow the path |goto 56.03,80.03 < 10 |only if walking
Follow the path |goto 54.61,80.33 < 10 |only if walking
Follow the path up |goto 52.38,83.64 < 10 |only if walking
Follow the path up |goto 52.38,85.75 < 10 |only if walking
Follow the path up |goto 53.60,87.50 < 10 |only if walking
Cross the bridge |goto 56.22,89.05 < 7 |only if walking
talk Baine Bloodhoof##130423
turnin Curse of the Necrodark##41815 |goto 56.49,89.23
accept Ice and Shadow##41840 |goto 56.49,89.23
step
talk Jale Rivermane##97662
accept Whispers of the Darkness##41882 |goto 56.46,89.33
stickystart "Collect_Shadowice_Shards"
step
clicknpc Highmountain Protector##132212+
Free #6# Highmountain Protectors |q 41882/1 |goto 57.01,90.90
step
label "Collect_Shadowice_Shards"
Kill Necrodark enemies around this area
collect 20 Shadowice Shard##136400 |q 41840/1 |goto 57.67,92.72
step
talk Spiritwalker Ebonhorn##105213
turnin Whispers of the Darkness##41882 |goto 57.55,92.34
turnin Ice and Shadow##41840 |goto 57.55,92.34
accept The Final Ward##41841 |goto 57.55,92.34
step
Enter the cave |goto 57.40,92.28 < 7 |walk
Follow the path |goto 57.12,92.13 < 7 |walk
click Summit Ward
Place the Summit Ward |q 41841/1 |goto 56.49,91.44
step
talk Spiritwalker Ebonhorn##105213
turnin The Final Ward##41841 |goto 56.81,92.02
accept The Darkness##48403 |goto 56.81,92.02
step
Leave the cave |goto 57.49,92.32 < 7 |walk
kill Uul'gyneth##126001 |q 48403/1 |goto 57.87,91.07
step
Follow the path |goto 57.43,92.71 < 7 |only if walking
Follow the path up |goto 57.10,92.17 < 7 |only if walking
Follow the path up |goto 56.86,92.63 < 7 |only if walking
talk Mayla Highmountain##104997
turnin The Darkness##48403 |goto 56.66,92.71
step
talk Baine Bloodhoof##126134
accept Together We Are the Horde!##48433 |goto 56.71,92.76
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin Together We Are the Horde!##48433 |goto 37.77,81.16
step
_Congratulations!_
You Unlocked the "Highmountain Tauren" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Mag'har Orc Race Unlock",{
author="support@zygorguides.com",
description="To unlock the new Mag'har Orc allied race, you will need to earn exalted reputation with The Honorbound and complete the Horde War Campaign.",
condition_suggested=function() return level >= 120 and not achieved(12518) end,
condition_end=function() return achieved(12518) end,
},[[
step
Load the "BFA World Quest Unlock" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock"
|tip Click the line above to load the guide.
|tip You must complete the "Uniting Zandalar" quest in this guide.
Complete the "Uniting Zandalar" Quest |condition completedq(51918) |goto Zuldazar/0 58.44,62.67
step
Load the "War Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign"
|tip Click the line above to load the guide.
|tip You must complete all of the quests in this guide.
Complete the Quest "A Cycle of Hatred" |condition completedq(53003)
step
Load the "Zuldazar World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Zuldazar World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Drustvar, Stormsong Valley, and Tiragarde Sound that indicate the 7th Legion award reputation with them.
|tip Completing the emissary quest "Horde War Effort" will award bonus reputation.
_Island Expeditions and Warfronts:_
|tip Each successful Warfront awards 500 reputation with the The Honorbound.
|tip Completing the island expedition quest "Azerite for the Horde" will award 1,500 reputation.
Gain Exalted Reputation with The Honorbound |achieve 12957
step
_Congratulations!_
You Unlocked the "Mag'har Orc" Allied Race.
]])
