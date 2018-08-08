local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\The Battle for Lordaeron",{
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
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Nightborne Race Unlock",{
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
|tip You will accept this quest automatically.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Highmountain Tauren Race Unlock",{
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
|tip You will accept this quest automatically.
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
