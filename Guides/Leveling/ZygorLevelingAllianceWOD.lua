local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Tanaan Jungle (90-90)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Shadowmoon Valley (90-92)",
image=ZGV.DIR.."\\Guides\\Images\\TanaanJungle",
condition_suggested_exclusive=true,
startlevel=90,
},[[
step
accept The Dark Portal##34398 |goto Stormwind City 62.93,72.17
step
talk Archmage Khadgar##78558
Tell him _FOR AZEROTH!_
Speak with Archmage Khadgar |q The Dark Portal##34398/1 |goto Blasted Lands/0 54.9,50.3
step
talk Archmage Khadgar##78558
turnin The Dark Portal##34398 |goto Assault on the Dark Portal 54.8,48.3
accept Azeroth's Last Stand##35933 |goto Assault on the Dark Portal 54.8,48.3
step
kill Iron Horde Grunt##78883+, Shadowmoon Ritualist##81711+
collect Iron Horde Missive##113579 |q Azeroth's Last Stand##35933/1 |goto 52.50,48.14
step
Click the _Quest Complete_ Box:
turnin Azeroth's Last Stand##35933 |goto Assault on the Dark Portal 52.9,48.1
accept Onslaught's End##34392 |goto 52.9,48.1
step
_Enter_ the doorway |goto Assault on the Dark Portal 52.2,41.9 < 10 |walk
click Mark of the Shadowmoon##233056
|tip It looks like a huge stone with a blue glowing symbol on it, sitting in a metal base.
Disable the Northern Fel Spire |q Onslaught's End##34392/1 |goto 51.03,41.99
step
_Leave_ the doorway |goto Assault on the Dark Portal 52.2,41.9 < 10 |walk
_Enter_ the doorway |goto Assault on the Dark Portal 52.2,54.6 < 10 |walk
click Mark of the Bleeding Hollow##233057
|tip It looks like a huge stone with a orange glowing symbol on it, sitting in a metal base.
Disable the Southern Fel Spire |q Onslaught's End##34392/2 |goto 51.12,54.58
step
_Leave_ the doorway |goto Assault on the Dark Portal 52.2,54.6 < 10 |walk
_Go up_ the stairs |goto Assault on the Dark Portal 52.9,48.3 < 20 |only if walking
talk Archmage Khadgar##78558
|tip He's at the top of the stone stairs.
turnin Onslaught's End##34392 |goto 54.72,48.27
accept The Portal's Power##34393 |goto 54.72,48.27
step
Enter the Soul Engine beneath the Dark Portal |q The Portal's Power##34393/1 |goto 54.91,46.76
|tip It's a doorway on the side of the large stairs. If you're at the top of the stairs, jump down.
step
click Mark of the Burning Blade##229598
|tip It's a large stone with a giant sword stuck in it.
Destroy the Mark of the Burning Blade |q The Portal's Power##34393/2 |goto 56.01,46.32
step
click Mark of the Shattered Hand##229599
|tip It's a large stone with a red rune painted on the front of it.
Destroy the Mark of the Shattered Hand |q The Portal's Power##34393/3 |goto 57.26,48.18
step
click Mark of the Blackrock##229600
|tip It's a large stone with a rune painted on the front of it.
Destroy the Mark of the Blackrock |q The Portal's Power##34393/4 |goto Assault on the Dark Portal 56.0,50.1
step
clicknpc Stasis Rune##233104
|tip It looks like a purple and yellow swirling symbol on the ground at the top of the stairs.
Destroy the Stasis Rune |q The Portal's Power##34393/5 |goto 55.94,48.23
step
_Leave_ the Soul Engine area |goto Assault on the Dark Portal 54.9,50.8 < 10 |walk
_Go up_ the stairs |goto Assault on the Dark Portal 55.5,51.4 < 10 |only if walking
_Run up_ the stairs |goto Assault on the Dark Portal 56.9,50.8 < 10 |only if walking
talk Archmage Khadgar##78558
turnin The Portal's Power##34393 |goto 54.72,48.27
accept The Cost of War##34420 |goto 54.72,48.27
step
_Go down_ the stairs |goto Assault on the Dark Portal 58.9,49.8 < 10 |only if walking
_Enter_ the building |goto Assault on the Dark Portal 61.2,54.5 < 10 |walk
talk Archmage Khadgar##78558
|tip He's inside the small house.
turnin The Cost of War##34420 |goto 60.28,56.31
accept Blaze of Glory##34422 |goto 60.28,56.31
step
talk Rephuura##81763
accept Vengeance for the Fallen##35242 |goto 62.21,52.99
step
talk Taag##81762
accept Bled Dry##35240 |goto 62.21,52.99
stickystart "bleedingholloworcs"
step
click Bleeding Hollow Cage##229353
Open the Eastern Cage |q Bled Dry##35240/2 |goto 65.70,54.17
step
use Lucifrium Bead##113191
|tip Use the Lucifrium Bead quest item near huts around this area.
Burn #3# Bleeding Hollow Huts |q Blaze of Glory##34422/1 |count 3 |goto 66.61,55.67
step
click Bleeding Hollow Cage##229353
Open the Southern Cage |q Bled Dry##35240/1 |goto 61.01,62.74
step
use Lucifrium Bead##113191
|tip Use the Lucifrium Bead quest item near huts around this area.
Burn #6# Bleeding Hollow Huts |q Blaze of Glory##34422/1 |count 6 |goto 61.01,62.74
step
use Lucifrium Bead##113191
|tip Use the Lucifrium Bead quest item near huts around this area.
Burn #8# Bleeding Hollow Huts |q Blaze of Glory##34422/1 |goto Assault on the Dark Portal 63.8,50.2
step
label "bleedingholloworcs"
kill Bleeding Hollow Hatchet##78510+, Bleeding Hollow Savage##78507+
Slay #6# Bleeding Hollow Orcs |q Vengeance for the Fallen##35242/1 |goto 61.47,61.66
step
_Follow_ the road |goto Assault on the Dark Portal 65.0,59.5 < 20 |only if walking
talk Vindicator Maraad##78554
turnin Vengeance for the Fallen##35242 |goto 71.50,62.70
step
talk Archmage Khadgar##78558
turnin Blaze of Glory##34422 |goto 71.53,62.37
turnin Bled Dry##35240 |goto 71.53,62.37
accept Altar Altercation##34423 |goto 71.53,62.37
step
talk Ariok##78556
Tell him _"Khadgar has asked us to go distract the Eye of Kilrogg."_
Speak with Ariok |q Altar Altercation##34423/1 |goto 71.98,62.16
step
_Go down_ the path |goto 73.9,58.9 < 20 |only if walking
Escort Ariok to the Bleeding Altar |q Altar Altercation##34423/2 | goto 75.9,55.7
step
clicknpc Blood Ritual Orb##83670
|tip It looks like a big floating red ball.
Destroy the Blood Ritual Orb |q Altar Altercation##34423/3 |count 1 |goto Assault on the Dark Portal 76.7,53.9
step
clicknpc Blood Ritual Orb##83670
|tip It looks like a big floating red ball.
Destroy the Blood Ritual Orb |q Altar Altercation##34423/3 |count 2 |goto Assault on the Dark Portal 78.2,53.5
step
_Follow the path_ around the temple |goto Assault on the Dark Portal 76.4,50.4 < 20 |only if walking
_Go up_ the stairs |goto Assault on the Dark Portal 78.4,49.9 < 10 |only if walking
clicknpc Blood Ritual Orb##83670
|tip It looks like a big floating red ball.
Destroy the Blood Ritual Orb |q Altar Altercation##34423/3 |goto 78.8,53.3
step
_Go down_ the stairs |goto 78.6,51.7 < 10 |only if walking
_Follow_ the path |goto 76.2,51.1 < 10 |only if walking
_Cross_ the bridge |goto 72.3,46.3 < 20 |only if walking
Find Khadgar on the Tar'thog Bridge |q Altar Altercation##34423/4 |goto 71.9,41.0
step
talk Archmage Khadgar##78558
turnin Altar Altercation##34423 |goto 72.0,40.6
accept The Kargathar Proving Grounds##34425 |goto 71.93,40.37
step
Follow Khadgar |q The Kargathar Proving Grounds##34425/1 |goto 73.0,38.1
step
talk Archmage Khadgar##78558
turnin The Kargathar Proving Grounds##34425 |goto 73.0,38.1
accept A Potential Ally##34478 |goto 73.0,38.1
step
use Frostflurry Focus##110799
|tip Use the Frostflurry Focus quest item next to the fire.
Free Exarch Maladaar |q A Potential Ally##34478/1 |goto 69.0,33.8
step
talk Exarch Maladaar##79537
|tip You may have to wait for him to run back to camp.
turnin A Potential Ally##34478 |goto 73.1,38.9
step
talk Archmage Khadgar##78560
accept Kill Your Hundred##34429 |goto 73.1,38.1
step
Enter the Arena |q Kill Your Hundred##34429/1 |goto 73.4,28.0
step
kill Shattered Hand Brawler##16593+
Kill #100# Combatants |q Kill Your Hundred##34429/2 |goto 73.5,28.1
step
_Run out_ of the arena |goto Assault on the Dark Portal 73.6,23.4 < 10 |only if walking
Escape Kargath's Arena |q Kill Your Hundred##34429/3 |goto 65.9,20.6
step
talk Archmage Khadgar##78561
turnin Kill Your Hundred##34429 |goto Assault on the Dark Portal/1 81.4,50.2
step
talk Vindicator Maraad##78554
accept The Shadowmoon Clan##34432 |goto 80.79,45.27
step
talk Luuka##79661
accept Masters of Shadow##34431 |goto Assault on the Dark Portal/1 82.8,44.5
stickystart "shadowmoonclan"
step
_Enter_ the doorway |goto Assault on the Dark Portal/1 79.8,40.9 < 10 |walk
_Go around_ the corner |goto Assault on the Dark Portal/1 76.0,45.2 < 10 |walk
_Go up_ the flight of stairs |goto Assault on the Dark Portal/1 63.0,51.5 < 10 |walk
Go up the _2nd flight of stairs_ |goto Assault on the Dark Portal/1 54.4,60.9 < 10 |walk
kill Ungra##79583 |q Masters of Shadow##34431/1 |goto Assault on the Dark Portal/1 43.7,77.8
step
label "shadowmoonclan"
kill Shadowmoon Voidaxe##79589+, Shadowmoon Ritualist##79590+
Kill #10# Shadowmoon Clan |q The Shadowmoon Clan##34432/1 |goto 59.19,48.59
step
_Enter_ the hallway |goto Assault on the Dark Portal/1 46.4,35.4 < 10 |walk
kill Taskmaster Gurran##79585 |q Masters of Shadow##34431/2 |goto 52.23,24.73
step
_Jump down_ the hole in the floor |goto Assault on the Dark Portal/1 54.4,22.9 < 5 |walk
Find Ankova the Fallen |q Masters of Shadow##34431/3 |goto 45.24,15.94
step
talk Yrel##78994
accept Yrel##34434 |goto 45.11,15.82
step
_Follow_ the path |goto 52.8,16.9 < 10 |walk
_Go around_ the corner |goto 60.3,30.7 < 10 |walk
Escort Yrel to Safety |q Yrel##34434/1 |goto Assault on the Dark Portal/1 57.9,38.7
step
_Go up_ the stairs |goto 54.9,40.7 < 10 |walk
talk Qiana Moonshadow##79316
|tip She walks around.
turnin The Shadowmoon Clan##34432 |goto 52.47,53.93
step
talk Yrel##78994
turnin Yrel##34434 |goto 50.59,48.52
step
talk Exarch Maladaar##79537
turnin Masters of Shadow##34431 |goto 50.28,48.22
accept Keli'dan the Breaker##34436 |goto 50.28,48.36
step
kill Keli'dan the Breaker##79702 |q Keli'dan the Breaker##34436/1 |goto 35.19,50.25
step
talk Archmage Khadgar##78562
turnin Keli'dan the Breaker##34436 |goto Assault on the Dark Portal/0 49.5,14.4
step
talk Vindicator Maraad##78554
accept Prepare for Battle##35019 |goto 48.55,14.17
step
click Iron Horde Weapon Rack##231816
|tip Weapon racks are large wooden racks with weapons on them.
click Iron Horde Weapon##231818
|tip These can be gathered around the area or looting from corpses of the fallen.
kill Blackrock Forgeworker##81367+, Blackrock Slaghauler##81357+
collect 30 Blackrock Weapon##112337 |q Prepare for Battle##35019/1 |goto 42.92,15.94
step
talk Vindicator Maraad##78554
turnin Prepare for Battle##35019 |goto 48.54,14.17
step
talk Cordana Felsong##78430
accept The Battle of the Forge##34439 |goto 49.49,14.21
stickystart "ogronwarcrushers"
step
kill 15 Blackrock Grunt##80786 |q The Battle of the Forge##34439/1 |goto Assault on the Dark Portal 44.3,17.8
step
label "ogronwarcrushers"
kill 3 Ogron Warcrusher##80775 |q The Battle of the Forge##34439/2 |goto Assault on the Dark Portal 44.3,17.8
step
talk Farseer Drek'Thar##78996
turnin The Battle of the Forge##34439 |goto 43.1,26.4
accept Ga'nar of the Frostwolf##34442 |goto 43.1,26.4
step
talk Hansel Heavyhands##78569
accept The Gunpowder Plot##34987 |goto Assault on the Dark Portal 44.1,29.5
step
talk Thaelin Darkanvil##78568
accept The Shadow of the Worldbreaker##34958 |goto Assault on the Dark Portal 44.1,29.7
step
kill Blackrock Laborer##81063+, Blackrock Machinist##80468+
collect Worldbreaker Schematics##117978 |q The Shadow of the Worldbreaker##34958/1 |goto Assault on the Dark Portal 43.0,35.7
step
_Enter_ the building |goto Assault on the Dark Portal 45.6,31.7 < 10 |walk
click Blackrock Powder Keg##231119
|tip It looks like a brown wooden barrel with a metal lid on it.
collect Blackrock Powder Keg##112323 |q The Gunpowder Plot##34987/1 |goto 46.9,32.1
step
_Leave_ the building |goto Assault on the Dark Portal 45.6,31.7 < 10 |walk
click Makeshift Plunger##231066
|tip It looks like a small box with a wooden handle on it on the ground.
Depress the _Makeshift Plunger_ |q The Gunpowder Plot##34987/2 |goto 44.1,29.6
step
talk Hansel Heavyhands##78569
turnin The Gunpowder Plot##34987 |goto 44.0,29.5
step
talk Thaelin Darkanvil##78568
turnin The Shadow of the Worldbreaker##34958 |goto 44.0,29.7
step
talk Ga'nar##79917
turnin Ga'nar of the Frostwolf##34442 |goto 41.9,41.6
accept Polishing the Iron Throne##34925 |goto 41.9,41.6
step
_Enter_ the building and go down the stairs |goto 44.1,38.0 < 10 |walk
kill Overseer Gotrigg##80574
collect Ga'nar's Shackle Key##112243 |q Polishing the Iron Throne##34925/1 |goto 45.6,39.8
step
_Go up_ the stairs to leave the building |goto 45.1,38.4 < 10 |walk
talk Ga'nar##79917
turnin Polishing the Iron Throne##34925 |goto 41.9,41.7
accept The Prodigal Frostwolf##34437 |goto 41.9,41.7
step
talk Farseer Drek'Thar##78996
turnin The Prodigal Frostwolf##34437 |goto 43.0,26.4
step
talk Archmage Khadgar##78563
accept Taking a Trip to the Top of the Tank##35747 |goto 43.1,28.7
step
talk Thaelin Darkanvil##78568
Tell him _"Yes. I need you to help me operate that enormous tank."_
Speak with Thaelin |q 35747/1 |goto 44.0,29.7
step
_Follow_ the path up |goto 38.4,37.4 < 20 |only if walking
kill Gogluk##86039 |q 35747/2 |goto 37.8,48.5
step
_Go up_ the large chain |goto Assault on the Dark Portal 37.9,47.4 < 10 |only if walking
Climb the Rear Chains of the Iron Worldbreaker |q Taking a Trip to the Top of the Tank##35747/3 |goto 40.04,48.25
step
talk Thaelin Darkanvil##80521
turnin Taking a Trip to the Top of the Tank##35747 |goto 40.1,48.4
accept A Taste of Iron##34445 |goto 40.1,48.4
step
click Worldbreaker Side Turret##231261
|tip It's a large cannons on wheels.
Enter the Worldbreaker Side Turret |q A Taste of Iron##34445/1 |goto 40.2,49.1
step
Use the abilities on your action bar to:
Slay #200# Iron Horde |q A Taste of Iron##34445/2
step
click Main Cannon Trigger##232538
|tip It looks like a wooden cylinder with a metal top on the ground.
Press the Main Cannon Trigger |q 34445/3 |goto 40.2,48.3
step
talk Thaelin Darkanvil##80521
turnin A Taste of Iron##34445 |goto 40.1,48.4
accept The Home Stretch##35884 |goto 40.11,48.39
step
_Go down_ the chain |goto 37.3,48.4 < 30 |only if walking
_Follow_ the path towards the docks |goto Assault on the Dark Portal 39.5,55.1 < 20 |only if walking
Get to the Docks |q The Home Stretch##35884/1 |goto 44.4,80.5
step
talk Archmage Khadgar##78563
turnin The Home Stretch##35884 |goto 44.38,80.65
step
talk Prophet Velen##79206
accept Step Three: Prophet!##34575 |goto Shadowmoon Valley D 27.0,8.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Shadowmoon Valley (90-92)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Gorgrond (92-94)",
image=ZGV.DIR.."\\Guides\\Images\\ShadowmoonValleyDraenor",
condition_suggested_exclusive=true,
startlevel=90.5,
},[[
step
Be sure to save up at least _200 Garrison Resources_ as you progress through the zone
confirm |future |q 36592
step
talk Prophet Velen##79206
turnin Step Three: Prophet!##34575 |goto Shadowmoon Valley D 27.0,8.1
accept Finding a Foothold##34582 |goto 26.98,8.09
step
_Go up_ the path |goto Shadowmoon Valley D 27.4,13.5 < 10 |only if walking
Accompany Prophet Velen to Lunarfall Ruins |q Finding a Foothold##34582/1 |goto Shadowmoon Valley D 28.9,16.3
step
talk Vindicator Maraad##79470
turnin Finding a Foothold##34582 |goto 28.80,16.22
accept For the Alliance!##34583 |goto 28.80,16.22
step
clicknpc Alliance Banner##120954
|tip It's a large wooden T-shape banner illuminated in a yellowish tone with an Alliance logo in the center.
Plant the Alliance Banner |q For the Alliance!##34583/1 |goto 29.04,16.15
step
talk Baros Alexston##79243
turnin For the Alliance!##34583 |goto 29.05,16.22
|tip You will not be able to turn this quest in until he walks around and says his dalogue for a few moments.
accept Looking for Lumber##34584 |goto 29.05,16.22
accept Ravenous Ravens##34616 |goto 29.05,16.22
stickystart "lunarfallraven"
step
click Tree Marking##230527
|tip They look like wooden poles with white flags on them planted in the ground around this area.
Mark #8# Trees for Lumberjacks |q Looking for Lumber##34584/1 |goto 29.87,18.87
step
label "lunarfallraven"
kill 6 Lunarfall Raven##82037 |q Ravenous Ravens##34616/1 |goto 29.78,18.86
step
talk Baros Alexston##79243
turnin Looking for Lumber##34584 |goto 29.04,16.21
turnin Ravenous Ravens##34616 |goto 29.04,16.21
step
talk Yrel##79567
accept Quakefist##34585 |goto 28.92,16.39
step
_Go down_ into the tree stump |goto Shadowmoon Valley D 30.0,21.0 < 10 |walk
kill Quakefist##81360 |q Quakefist##34585/1 |goto 30.14,21.80
step
_Leave_ the tree stump |goto Shadowmoon Valley D 29.9,20.9 < 10 |walk
talk Yrel##79567
turnin Quakefist##34585 |goto 28.91,16.38
step
talk Baros Alexston##79243
accept Establish Your Garrison##34586 |goto 29.05,16.20
step
talk Baros Alexston##79243
Tell him _"We have everything we need. It's time to build the garrison."_
Speak with Baros to Build your Garrison |q Establish Your Garrison##34586/1 |goto 29.05,16.22
step
_Enter_ the doorway |goto Lunarfall 40.8,45.4 < 10 |only if walking
talk Baros Alexston##77209
turnin Establish Your Garrison##34586 |goto 41.31,49.25
accept Keeping it Together##35176 |goto 41.31,49.25
accept Ship Salvage##35166 |goto 41.31,49.25
step
talk Vindicator Maraad##79457
accept Pale Moonlight##35174 |goto 44.06,53.40
step
talk Assistant Brightstone##84455
Tell her _"Time to get back to work."_
Speak with Assistant Brightstone About Her Work Ethic |q Keeping it Together##35176/1 |goto 44.81,53.43
step
click Garrison Cache##236916
|tip The cache is a wooden crate bearing an Alliance logo sitting next to a small pile of logs.
Check the Garrison Cache |q Keeping it Together##35176/3 |goto 49.19,43.59
step
_Go through_ the doorway |goto Lunarfall 40.9,45.5 < 10 |only if walking
talk Shelly Hamby##81441
Tell her _"Gather Shelly's report."_
Gather Shelly's Report |q Keeping it Together##35176/2 |goto 32.53,34.43
step
_Go through_ the doorway |goto Lunarfall 40.8,45.4 < 10 |only if walking
talk Baros Alexston##77209
turnin Keeping it Together##35176 |goto 41.31,49.22
stickystart "paledevourers"
stickystart "drudgeboatsalvage"
step
_Go through_ the doorway |goto Lunarfall 40.9,45.5 < 10 |only if walking
_Follow_ the road towards the beach |goto Lunarfall 21.4,38.4 < 20 |only if walking
kill Gnaw Bloodseeker##81670 |q Pale Moonlight##35174/1 |goto Shadowmoon Valley D 25.7,5.7
step
label "paledevourers"
kill 8 Pale Devourer##79205 |q Pale Moonlight##35174/2 |goto Shadowmoon Valley D 26.55,8.76
step
label "drudgeboatsalvage"
click Drudgeboat Salvage##231851
|tip They look like half-buried wooden barrels on the ground around this area.
collect 15 Drudgeboat Salvage##112696 |q Ship Salvage##35166/1 |goto Shadowmoon Valley D 28.19,6.80
You can find more around [Shadowmoon Valley D 27.1,6.4]
step
Take the _road back_ to your Garrison |goto Shadowmoon Valley D 27.2,14.5 < 20 |only if walking
_Go through_ the doorway |goto Lunarfall 40.8,45.4 < 20 |only if walking
talk Baros Alexston##77209
turnin Ship Salvage##35166 |goto Lunarfall 41.20,49.29
step
talk Vindicator Maraad##79457
turnin Pale Moonlight##35174 |goto 44.09,53.44
step
talk Baros Alexston##77209
accept Build Your Barracks##34587 |goto 41.20,49.39
step
click Garrison Blueprint: Barracks##231855
|tip It looks like a white unrolled scroll laying flat on the ground.
Find the Blueprints |q Build Your Barracks##34587/1 |goto 45.42,40.59
step
confirm |condition completedq(34587)
|tip This step is needed for the next step to function correctly.
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Blueprints |q Build Your Barracks##34587/2 |goto 45.56,41.08
step
confirm |condition completedq(34587)
|tip This step is needed for the next step to function correctly.
step
#include "Garrison_ArchitectTable"
Select the _Large_ tab at the top
Drag _Barracks_ to a _Large Plot_
Build your Barracks |q Build Your Barracks##34587/3 |goto 41.22,48.96
step
confirm |condition completedq(34587)
|tip This step is needed for the next step to function correctly.
step
click Finalize Garrison Plot##236262
|tip It looks like a huge floating white scroll.
Finalize Your Plot |q Build Your Barracks##34587/4 |goto 44.62,44.11
step
talk Vindicator Maraad##79457
turnin Build Your Barracks##34587 |goto 44.12,53.25
accept Qiana Moonshadow##34646 |goto 44.12,53.25
step
_Follow_ the road out of the Garrison |goto Lunarfall 61.0,85.0 < 30 |only if walking
talk Qiana Moonshadow##79446
Speak with Qiana Moonshadow |q Qiana Moonshadow##34646/1 |goto Shadowmoon Valley D 29.94,29.21
stickystart "bonusbloodthorncave1"
stickystart "bonusbloodthorncave2"
step
talk Roona##70902
accept A Matter of Life and Death##33419 |goto Shadowmoon Valley D/15 60.0,32.0
step
_Follow_ the path down |goto Shadowmoon Valley D/15 55.3,38.8 < 10 |walk
talk Diaani##78889
Save Diaani |q A Matter of Life and Death##33419/2 |goto Shadowmoon Valley D/15 52.3,54.3
step
_Follow_ the path |goto Shadowmoon Valley D/15 46.5,41.3 < 10 |walk
_Go around_ and to the left |goto Shadowmoon Valley D/15 30.8,27.3 < 10 |walk
_Go up_ and immediately left here |goto Shadowmoon Valley D/15 23.8,57.5 < 10 |walk
talk Arekk##78890
Save Arekk |q A Matter of Life and Death##33419/1 |goto Shadowmoon Valley D/15 32.8,52.7
step
_Follow_ the path around to the left |goto Shadowmoon Valley D/15 22.4,63.8 < 10 |walk
_Go through_ here |goto Shadowmoon Valley D/15 44.3,78.6 < 10 |walk
talk Zuulo##78891
Save Zuulo |q A Matter of Life and Death##33419/3 |goto Shadowmoon Valley D/15 50.2,68.3
step
_Go up_ and around on this path |goto Shadowmoon Valley D/15 59.5,67.5 < 10 |walk
talk Roona##70902
turnin A Matter of Life and Death##33419 |goto Shadowmoon Valley D/15 60.0,32.0
step
label "bonusbloodthorncave1"
accept Bonus Objective: Bloodthorn Cave##34504
kill 12 Pale Crawler##76382 |q Bonus Objective: Bloodthorn Cave##34504/1 |goto Shadowmoon Valley D/15 60.0,32.0
step
label "bonusbloodthorncave2"
accept Bonus Objective: Bloodthorn Cave##34504
clicknpc Juicy Mushroom##78904
|tip They're red-capped mushrooms that grow in small or large sizes.
Collect #20# Mushroom Juice |q Bonus Objective: Bloodthorn Cave##34504/2 |goto Shadowmoon Valley D/15 60.0,32.0
step
_Cross_ the open field |goto Shadowmoon Valley D/0 27.6,31.2 < 30 |only if walking
_Run back_ towards your garrison |goto Lunarfall 62.4,89.4 < 20 |only if walking
_Go through_ the doorway |goto Lunarfall 49.6,63.9 < 10 |only if walking
_Enter_ the small house |goto Lunarfall 42.2,53.1 < 10 |walk
#include "Garrison_QMoonshadow"
turnin Qiana Moonshadow##34646 |goto 40.48,53.99
step
#include "Garrison_LtThorn"
accept Delegating on Draenor##34692 |goto Lunarfall 40.29,53.76
step
#include "Garrison_CommandTable"
Click the _Killing the Corrupted_ mission
Assign _Qiana Moonshadow_ to the mission and start it
Use the Command Table |q Delegating on Draenor##34692/1 |goto 40.47,53.53
step
#include "Garrison_LtThorn"
turnin Delegating on Draenor##34692 |goto 40.23,53.58
step
#include "Garrison_Yrel"
accept A Hero's Welcome##33075 |goto 47.11,51.05
step
Find Samaara at Embaari Village |q A Hero's Welcome##33075/1 |goto Shadowmoon Valley D 45.67,38.84
step
talk Samaara##75005
turnin A Hero's Welcome##33075 |goto 46.04,38.92
accept Dark Enemies##33765 |goto 46.04,38.92
step
talk Efee##80196
accept Think of the Children!##33070 |goto 46.64,37.74
step
talk Vindicator Tenuum##74343
accept Closing the Door##33905 |goto 46.65,37.29
stickystart "voidmancers"
step
kill Shadowmoon Portalmaster##80181+
Close #3# Void Portals |q Closing the Door##33905/1 |goto 47.53,34.45
You can find another portal here [Shadowmoon Valley D 48.4,33.4]
You can find another portal here [Shadowmoon Valley D 48.9,31.8]
step
talk Hakaam##62769
Save Hakaam |q Think of the Children!##33070/1 |goto 48.98,30.89
step
_Follow_ the path around the cliff |goto Shadowmoon Valley D 49.4,32.0 < 20 |only if walking
_Run into_ the small village |goto Shadowmoon Valley D 51.2,31.7 < 20 |only if walking
talk Ariaana##71502
accept In Need of a Hero##33813 |goto 52.04,32.68
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around a fountain.
Collect a Draenei Bucket |goto Shadowmoon Valley D 51.8,32.5 < 10
use Draenei Bucket##111908
|tip Use the bucket on the blue fires.
Douse the Bookshelf fire |q In Need of a Hero##33813/1 |goto 52.04,32.83
Douse the Floor fire |q In Need of a Hero##33813/2 |goto 52.04,32.83
Douse the Table fire |q In Need of a Hero##33813/3 |goto 52.04,32.83
Get more Draenei Buckets at [Shadowmoon Valley D 51.8,32.5]
step
talk Ariaana##71502
turnin In Need of a Hero##33813 |goto 52.04,32.68
Save Ariaana |q Think of the Children!##33070/3 |goto 52.04,32.68
step
talk Rastaak##64224
Save Rastaak |q Think of the Children!##33070/2 |goto 51.94,35.99
step
label "voidmancers"
kill Shadowmoon Voidmancer##80162+
Slay #8# Shadowmoon Voidmancers |q Dark Enemies##33765/1 |goto 52.48,34.20
step
_Swim_ across and go up the hill |goto Shadowmoon Valley D 47.6,35.8 < 20 |only if walking
_Continue_ running up the hill and to the left |goto 47.5,39.7 < 20 |only if walking
talk Prophet Velen##74043
turnin Dark Enemies##33765 |goto 49.12,38.51
turnin Think of the Children!##33070 |goto 49.12,38.51
turnin Closing the Door##33905 |goto 49.12,38.51
accept Shadows Awaken##34019 |goto 49.12,38.51
step
Confront Ner'zhul |q Shadows Awaken##34019/1
kill Karnoth##75043 |q Shadows Awaken##34019/2 |goto 49.43,36.87
|tip He will drop an item for each crafting profession you have that will start a quest for that profession.
|tip Gathering and Secondary professions do not get a quest item. You will do the quest(s) for your item(s) later in the guide.
step
talk Prophet Velen##74043
turnin Shadows Awaken##34019 |goto 49.30,37.40
accept Into Twilight##33072 |goto 49.30,37.40
step
talk Farmer Gehaar##82256
accept The Southern Wilds##35444 |goto 49.04,38.64
step
Open all of the profession windows below for all of the professions you have:
|tip You must do this in order for the following steps to work correctly.
Open your Alchemy window |cast Alchemy##2259
Open your Engineering window |cast Engineering##4036
Open your Jewelcrafting window |cast Jewelcrafting##25229
Open your Blacksmithing window |cast Blacksmithing##2018
Open your Enchanting window |cast Enchanting##7411
Open your Tailoring window |cast Tailoring##3908
Open your Leatherworking window |cast Leatherworking##2108
Open your Inscription window |cast Inscription##45357
Click to go to the next guide step |confirm
only if not completedq(36100)
step
use Drained Crystal Fragment##115507
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept A Power Lost##36408
only if skill("Jewelcrafting") >= 1
step
talk Artificer Baleera##84830
turnin A Power Lost##36408 |goto Shadowmoon Valley D 47.0,38.6
accept Restoration##36409 |goto 47.0,38.6
only if skill("Jewelcrafting") >= 1
step
kill Morakh Chillwhisper##85394
Retrieve the Empowered Crystal |q Restoration##36409/1 |goto 50.44,20.09
only if skill("Jewelcrafting") >= 1
step
talk Artificer Baleera##84830
turnin Restoration##36409 |goto 46.96,38.63
only if skill("Jewelcrafting") >= 1
step
use Gnomish Location Transponder##115278
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept Transponder 047-B##36286
only if skill("Engineering") >= 1
step
talk Goggles##84825
turnin Transponder 047-B##36286 |goto 60.75,32.69
accept Snatch 'n' Grab##36287 |goto 60.75,32.69
only if skill("Engineering") >= 1
step
click Pilfered Parts##234235
|tip They look like full tan bags laying on the ground.
collect Pilfered Parts##115279 |q Snatch 'n' Grab##36287/1 |goto 66.9,27.5
only if skill("Engineering") >= 1
step
talk Goggles##84825
turnin Snatch 'n' Grab##36287 |goto 60.78,32.68
only if skill("Engineering") >= 1
step
use Mysterious Flask##113103
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept The Mysterious Flask##35342
only if skill("Alchemy") >= 1
step
talk Aenir##82466
turnin The Mysterious Flask##35342 |goto Lunarfall 47.64,45.51
accept The Young Alchemist##35343 |goto 47.61,45.46
only if skill("Alchemy") >= 1
step
talk Abatha##82497
turnin The Young Alchemist##35343 |goto Shadowmoon Valley D 55.89,41.03
accept The Missing Father##35344 |goto Shadowmoon Valley D 55.93,41.06
only if skill("Alchemy") >= 1
step
talk Telos##82496
turnin The Missing Father##35344 |goto Shadowmoon Valley D 54.02,45.74
accept Shocking Assistance##35345 |goto Shadowmoon Valley D 54.02,45.74
only if skill("Alchemy") >= 1
step
kill Shockscale Eel##80653+
collect 100 Shockscale##113248 |q Shocking Assistance##35345/1 |goto Shadowmoon Valley D 54.0,45.1
only if skill("Alchemy") >= 1
step
talk Abatha##82497
turnin Shocking Assistance##35345 |goto Shadowmoon Valley D 55.88,41.03
only if skill("Alchemy") >= 1
step
use Haephest's Satchel##115343
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept The Strength of Iron##36309
only if skill("Blacksmithing") >= 1
step
_Follow_ the road |goto Shadowmoon Valley D 47.4,41.7 < 20 |only if walking
talk Haephest##80827
turnin The Strength of Iron##36309 |goto Shadowmoon Valley D 45.22,38.88
accept Father and Son##36311 |goto Shadowmoon Valley D 45.22,38.88
only if skill("Blacksmithing") >= 1
step
_Follow_ the road |goto Shadowmoon Valley D 47.4,41.7 < 20 |only if walking
talk Duna##85083
Tell him _"Yes, come with me."_
Find Duna |q Father and Son##36311/1 |goto Shadowmoon Valley D 51.09,36.93
only if skill("Blacksmithing") >= 1
step
_Follow_ the road |goto Shadowmoon Valley D 47.4,41.7 < 20 |only if walking
talk Haephest##80827
turnin Father and Son##36311 |goto Shadowmoon Valley D 45.22,38.87
only if skill("Blacksmithing") >= 1
step
use Mysterious Satchel##114984
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept A Mysterious Satchel##36239
only if skill("Inscription") >= 1
step
talk Sha'la##84724
turnin A Mysterious Satchel##36239 |goto Shadowmoon Valley D 57.9,21.7
accept Slow and Steady##36240 |goto Shadowmoon Valley D 57.86,21.59
only if skill("Inscription") >= 1
step
kill Moonglow Sporebat##82323+
collect 5 Toxic Umbrafen Herbs##114986 |q Slow and Steady##36240/1 |goto Shadowmoon Valley D 55.78,20.45
only if skill("Inscription") >= 1
step
talk Sha'la##84724
turnin Slow and Steady##36240 |goto Shadowmoon Valley D 57.90,21.63
accept The Power of Preservation##36241 |goto Shadowmoon Valley D 57.88,21.61
only if skill("Inscription") >= 1
step
talk Ardule D'na##84728
turnin The Power of Preservation##36241 |goto 58.31,20.84
only if skill("Inscription") >= 1
step
use Dirty Note##114877
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept A Call for Huntsman##36176
only if skill("Leatherworking") >= 1
step
talk Fanara##84385
turnin A Call for Huntsman##36176 |goto Shadowmoon Valley D 44.23,40.94
accept Friendly Competition##36177 |goto Shadowmoon Valley D 44.23,40.94
only if skill("Leatherworking") >= 1
stickystart "silverwingtalon"
step
kill Shadowmoon Stalker##82308+
|tip They fly around this area overhead.
collect 4 Shadowmooon Hide##114900 |q Friendly Competition##36177/1 |goto Shadowmoon Valley D 41.62,44.76
only if skill("Leatherworking") >= 1
step
label "silverwingtalon"
kill Silverwing Kaliri##82175+
|tip They fly around this area overhead.
collect 3 Silverwing Talon##114901 |q Friendly Competition##36177/2 |goto Shadowmoon Valley D 41.62,44.76
only if skill("Leatherworking") >= 1
step
talk Fanara##84385
turnin Friendly Competition##36177 |goto Shadowmoon Valley D 44.23,40.94
accept Fair Trade##36185 |goto Shadowmoon Valley D 44.23,40.94
only if skill("Leatherworking") >= 1
step
talk Garaal##84492
turnin Fair Trade##36185 |goto Shadowmoon Valley D 44.98,39.18
only if skill("Leatherworking") >= 1
step
use Cryptic Tome of Tailoring##114972
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept The Cryptic Tome of Tailoring##36236
only if skill("Tailoring") >= 1
step
talk Aerun##84776
turnin The Cryptic Tome of Tailoring##36236 |goto Lunarfall 43.0,54.8
accept Ameeka, Master Tailor##36262 |goto Lunarfall 43.0,54.8
only if skill("Tailoring") >= 1
step
talk Ameeka##84523
turnin Ameeka, Master Tailor##36262 |goto Shadowmoon Valley D 58.26,26.58
accept The Clothes on Their Backs##36266 |goto Shadowmoon Valley D 58.26,26.56
only if skill("Tailoring") >= 1
step
_Run up_ the path |goto Shadowmoon Valley D 38.2,66.5 < 20 |only if walking
kill Shadowmoon Darkcaster##78789+, Shadowmoon Ritualist##78788+
|tip Kill the totems they put on the ground as fast as you can. They will make them harder to kill.
collect 10 Ceremonial Shadowmoon Robes##115013 |q The Clothes on Their Backs##36266/1 |goto Shadowmoon Valley D 36.9,64.3
only if skill("Tailoring") >= 1
step
talk Ameeka##84523
turnin The Clothes on Their Backs##36266 |goto Shadowmoon Valley D 58.27,26.56
accept Hexcloth##36269 |goto Shadowmoon Valley D 58.27,26.56
only if skill("Tailoring") >= 1
step
click Flytrap Ichor##236445
|tip It's a small bucket filled with green stuff, sitting under the wheelbarrow handles.
Create the Hexweave Swatch |q Hexcloth##36269/1 |goto Shadowmoon Valley D 58.3,26.6
only if skill("Tailoring") >= 1
step
talk Ameeka##84523
turnin Hexcloth##36269 |goto Shadowmoon Valley D 58.26,26.56
only if skill("Tailoring") >= 1
step
use Enchanted Highmaul Bracer##115281
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept Enchanted Highmaul Bracer##36308
only if skill("Enchanting") >= 1
step
talk Eileese Shadowsong##83491
turnin Enchanted Highmaul Bracer##36308 |goto Lunarfall 50.1,42.1
accept The Arakkoan Enchanter##36310 |goto Lunarfall 50.1,42.1
only if skill("Enchanting") >= 1
step
talk Arcanist Delath##84966
turnin The Arakkoan Enchanter##36310 |goto Shadowmoon Valley D 37.34,72.59
accept Failed Apprentice##36313 |goto Shadowmoon Valley D 37.34,72.59
only if skill("Enchanting") >= 1
step
talk Deema##84961
|tip She can be in any of the bubbles around this area, so you will have to search for her.
Free Deema |q Failed Apprentice##36313/1 |goto Shadowmoon Valley D 36.0,72.8
only if skill("Enchanting") >= 1
step
talk Deema##84961
turnin Failed Apprentice##36313 |goto Shadowmoon Valley D 35.70,73.80
accept Oru'kai's Staff##36315 |goto Shadowmoon Valley D 35.70,73.80
only if skill("Enchanting") >= 1
step
use Oru'kai's Ember Ring##115372
Use Oru'kai's Ember Ring to Counter the Time Field |q Oru'kai's Staff##36315/1 |goto 35.85,72.79
only if skill("Enchanting") >= 1
step
talk Arcanist Delath##84966
turnin Oru'kai's Staff##36315 |goto 37.34,72.60
only if skill("Enchanting") >= 1
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto Lunarfall 41.23,49.30
only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
Use _Garrison Blueprint: Gem Boutique, Level 1_ in your inventory |use Garrison Blueprint: Gem Boutique, Level 1##111814 |only if skill("Jewelcrafting") >= 1
Use _Garrison Blueprint: Engineering Works, Level 1_ in your inventory |use Garrison Blueprint: Engineering Works, Level 1##109258 |only if skill("Engineering") >= 1
Use _Garrison Blueprint: Alchemy Lab, Level 1_ in your inventory |use Garrison Blueprint: Alchemy Lab, Level 1##111812 |only if skill("Alchemy") >= 1
Use _Garrison Blueprint: The Tannery, Level 1_ in your inventory |use Garrison Blueprint: The Tannery, Level 1##111818 |only if skill("Leatherworking") >= 1
Use _Garrison Blueprint: Scribe's Quarters, Level 1_ in your inventory |use Garrison Blueprint: Scribe's Quarters, Level 1##111815 |only if skill("Inscription") >= 1
Use _Garrison Blueprint: Tailoring Emporium, Level 1_ in your inventory |use Garrison Blueprint: Tailoring Emporium, Level 1##111816 |only if skill("Tailoring") >= 1
Use _Garrison Blueprint: The Forge, Level 1_ in your inventory |use Garrison Blueprint: The Forge, Level 1##111813 |only if skill("Blacksmithing") >= 1
Use _Garrison Blueprint: Enchanter's Study, Level 1_ in your inventory |use Garrison Blueprint: Enchanter's Study, Level 1##111817 |only if skill("Enchanting") >= 1
Click to go to the next guide step |confirm
only if (skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1) and not completedq(36100)
step
clicknpc Architect Table##86017
|tip It looks like a wooden table with a slanted tabletop with a blueprint laying on it.
While using the table, _click the Small tab_ and _drag the profession building of your choice_ to the highlighted small empty plot
Build a Profession Building |q Building for Professions##36100/1 |goto 41.09,48.90
only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
talk Vindicator Maraad##79457
accept Migrant Workers##34778 |goto 44.08,53.23
step
talk Foreman Zipfizzle##81912
Tell him _"Very good, Zipfizzle. Move out."_
Speak with Zipfizzle  |q Migrant Workers##34778/1 |goto 44.34,51.01
step
talk Foreman Zipfizzle##81912
turnin Migrant Workers##34778 |goto Shadowmoon Valley D 55.98,32.61
accept Circle the Wagon##34779 |goto 55.98,32.61
step
Locate the Missing Wagon |q Circle the Wagon##34779/1 |goto 51.32,28.50
|tip When you get here, fight the incoming forces but be careful not to draw too many.
Kill the enemies that attack
Defend the Camp |q Circle the Wagon##34779/2 |goto 51.32,28.50
step
Follow Vindicator Maraad and help them fight while they run back
|tip It will take a few moments until they leave, so wait for them.
Escort the Laborers |q Circle the Wagon##34779/3 |goto Shadowmoon Valley D 55.7,32.9
step
talk Exarch Akama##80078
turnin Circle the Wagon##34779 |goto 55.97,32.85
step
talk Exarch Hataaru##80075
accept Invisible Ramparts##34780 |goto 56.24,32.62
step
click Charged Resonance Crystal
|tip They look like pink crystals on pedastals.
Get a Crystal |havebuff 132885 |q 34780 |goto Shadowmoon Valley D 56.8,34.3
step
Carry a Crystal to the Tertiary Pylon |q Invisible Ramparts##34780/3 |goto 56.18,33.44
step
click Charged Resonance Crystal
|tip They look like pink crystals on pedastals.
Get a Crystal |havebuff 132885 |q 34780 |goto Shadowmoon Valley D 56.8,34.3
step
Carry a Crystal to the Secondary Pylon |q Invisible Ramparts##34780/2 |goto 56.62,33.13
step
click Charged Resonance Crystal
|tip They look like pink crystals on pedastals.
Get a Crystal |havebuff 132885 |q 34780 |goto Shadowmoon Valley D 56.8,34.3
step
Carry a Crystal to the Primary Pylon |q Invisible Ramparts##34780/1 |goto 56.25,32.76
step
click Defense Pylon Central Control Console##230933
|tip It's a big purple crystal in this small building.
turnin Invisible Ramparts##34780 |goto 56.94,34.73
accept Defenstrations##34781 |goto 56.94,34.73
step
kill Shadowmoon Raider##82111+, Shadowmoon Dark Priestess##82112+
Slay #8# Shadowmoon Invaders |q Defenstrations##34781/1 |goto 55.59,34.03
step
click Defense Pylon Central Control Console##230933
|tip It's a big purple crystal in this small building.
turnin Defenstrations##34781 |goto 56.94,34.73
step
talk Vindicator Maraad##82348
accept The Exarch Council##34782 |goto 56.20,32.37
step
_Go up_ the stone path into the small town |goto Shadowmoon Valley D 56.8,28.6 < 20 |only if walking
talk Exarch Othaar##80076
turnin The Exarch Council##34782 |goto 59.36,26.57
accept Naielle, The Rangari##34783 |goto 59.36,26.57
accept Hataaru, the Artificer##34785 |goto 59.36,26.57
step
_Run along_ the path and follow it to the left |goto Shadowmoon Valley D 59.6,28.4 < 20 |only if walking
talk Exarch Hataaru##80075
turnin Hataaru, the Artificer##34785 |goto 61.91,29.69
accept Shut 'er Down##35070 |goto 61.91,29.69
step
talk Apprentice Artificer Andren##81140
accept Engorged Goren##34786 |goto 61.87,29.14
stickystart "gorenscales"
step
_Enter_ the cave |goto Shadowmoon Valley D 62.0,28.1 < 20 |walk
click Override Lever##231657
Disable the Crystal |q Shut 'er Down##35070/1 |goto 64.44,26.23 |indoors Elodor Dig
step
label "gorenscales"
kill Crystalmaw Goren##81156+, Crystalmaw Spitter##81157+
collect 20 Crystallized Goren Scale##112738 |q Engorged Goren##34786/1 |goto 62.62,25.54 |indoors Elodor Dig
step
_Go up_ the ramp in the cave |goto Shadowmoon Valley D 63.2,27.5 < 20 |walk |indoors Elodor Dig
_Leave_ the cave |goto 62.1,27.9 < 20 |walk
talk Apprentice Artificer Andren##81140
turnin Engorged Goren##34786 |goto 61.87,29.15
step
talk Exarch Hataaru##80075
turnin Shut 'er Down##35070 |goto 61.91,29.69
step
talk Traevar Gunnermark##74233
accept The Big Haul##33084 |goto Shadowmoon Valley D 62.5,36.8
stickystart "bighaul"
step
accept Bonus Objective: The Hills of Valuun##34496 |goto Shadowmoon Valley D 61.9,31.4
kill 12 Shaded Plainsstalker##75483 |q Bonus Objective: The Hills of Valuun##34496/1 |goto Shadowmoon Valley D 61.9,31.4
|tip They are purple and all around this area, spread out, so you'll have to run around a little to find more.
kill 12 Seacliff Kaliri##82354 |q Bonus Objective: The Hills of Valuun##34496/2 |goto Shadowmoon Valley D 61.9,31.4
|tip They are all around this area, and they fly, so look up in the air also.
You can find more around [Shadowmoon Valley D 65.2,34.6]
step
label "bighaul"
kill Rockhide Calf##87699+, Rockhide Bull##87698+, Rockhide Grazer##87700+
collect 1000 Raw Elekk Steak##108670 |q The Big Haul##33084/1 |goto Shadowmoon Valley D 62.5,35.6
step
talk Traevar Gunnermark##74233
turnin The Big Haul##33084 |goto Shadowmoon Valley D 62.5,36.8
step
_Follow_ the path |goto Shadowmoon Valley D 62.3,32.4 < 20 |only if walking
talk Exarch Naielle##80079
turnin Naielle, The Rangari##34783 |goto 56.50,23.54
accept Fun with Fungus##34784 |goto 56.50,23.54
step
talk Rangari Chel##82537
accept The Sting##34790 |goto 56.71,22.98
stickystart "stinger"
step
click Shimmershroom
|tip They look like orange glowing mushrooms on the ground all around this area. Continue clicking Shimmershrooms to maintain the Shimmershroom Aura.
Gain the Shimmershroom Aura |havebuff 464341 |q 34784
While you have the buff:
clicknpc Volatile Spore##82328
Collect the Volatile Spores |q Fun with Fungus##34784/1 |goto 53.82,21.81
step
label "stinger"
kill Moonglow Sporebat##82323+
collect Pristine Sporebat Stinger##113256 |q The Sting##34790/1 |goto 55.04,19.23
step
talk Rangari Chel##82537
turnin The Sting##34790 |goto 56.72,23.00
step
talk Exarch Naielle##80079
turnin Fun with Fungus##34784 |goto 56.50,23.51
step
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto 56.51,23.59
step
_Follow_ the winding pathway up |goto Shadowmoon Valley D 57.4,24.8 |only if walking
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
_Go up_ the stairs |goto Shadowmoon Valley D 60.0,26.6 < 20 |only if walking
_Enter_ the cave |goto Shadowmoon Valley D 61.3,25.6 < 10 |walk
|tip Follow the trail of yellow light on the ground.
Discover the Infiltrator's Hideout |q Trust No One##35552/1 |goto 61.32,25.19
step
click Shadow Council Tome of Curses##233229
|tip It looks like an open book laying on a stone altar.
turnin Trust No One##35552 |goto 60.94,24.44
accept Warning the Exarchs##34791 |goto 60.94,24.44
step
_Leave_ the cave |goto Shadowmoon Valley D 61.3,25.6 < 10 |walk
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
_Go up_ the stairs |goto Shadowmoon Valley D 62.9,27.0 < 20 |only if walking
_Follow_ the path around to the back of the building |goto Shadowmoon Valley D 64.8,27.2 < 20 |only if walking
talk Exarch Maladaar##80073
Begin the Ritual |q Speaker for the Dead##34789/1 |goto 66.44,26.16
Kill the creatures that attack in waves
Defend Hataaru's Spirit |q Speaker for the Dead##34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
_Follow_ the road in front of the building |goto Shadowmoon Valley D 64.3,25.2 < 20 |only if walking
_Cross_ the bridge and _go up_ the hill |goto Shadowmoon Valley D 62.9,21.8 < 20 |only if walking
click Maladaar's Focusing Lens##
|tip It looks like a big half-invisible crystal sitting upright in a stand on the ground.
Plant the Focusing Lens |q The Traitor's True Name##34792/1 |goto 60.58,20.56
Reveal the Traitor |q The Traitor's True Name##34792/2 |goto 60.48,20.7
step
kill Exarch Othaar##80076
Deal with the Traitor |q The Traitor's True Name##34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
You can choose one of these NPC's:
|tip The NPC you choose will become a follower for your Garrison.
talk Apprentice Artificer Andren##82489
talk Rangari Chel##82491
talk Vindicator Onaala##82492
|tip We recommend choosing Vindicator Onaala, since she can counter Magic Debuffs on garrison missions, which is a rare ability for followers.
Choose a Follower |q Friend of the Exarchs##34788/1 |goto 62.41,26.22
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
accept Supply Drop##35905 |goto 62.48,26.22
step
talk Baros Alexston##77209
turnin Supply Drop##35905 |goto Lunarfall 41.30,49.36
step
talk Lieutenant Thorn##79953
accept Ashran Appearance##36624 |goto 40.23,53.58
step
talk Dungar Longdrink##81103
Tell him _"Take me to Stormshield in Ashran."_
Speak to Dungar Longdrink |q Ashran Appearance##36624/1 |goto Lunarfall 48.0,49.8
step
talk Private Tristan##86065
turnin Ashran Appearance##36624 |goto Stormshield 32.0,50.0
accept Host Howell##36626
step
_Enter_ the building |goto Stormshield 36.1,72.8 < 10 |walk
talk Lieutenant Howell##86069
turnin Host Howell##36626 |goto Stormshield 35.5,75.9
accept Inspiring Ashran##36629 |goto Stormshield 35.5,75.9
step
talk Jaesia Rosecheer##85956
Speak with Jaesia Rosecheer |q Inspiring Ashran##36629/1 |goto Stormshield 35.7,77.9
step
_Leave_ the building |goto Stormshield 36.1,72.8 < 10 |walk
_Go up_ the hill |goto Stormshield 39.4,68.8 < 20 |only if walking
_Enter_ the building |goto Stormshield 43.9,70.8 < 10 |walk
talk Vindicator Nuurem##85932
Speak with Vindicator Nuurem |q Inspiring Ashran##36629/3 |goto Stormshield 46.6,76.7
step
_Leave_ the building |goto Stormshield 43.9,70.8 < 10 |walk
_Follow_ the path |goto Stormshield 47.2,50.1 < 20 |only if walking
_Go up_ the hill |goto Stormshield 53.3,39.9 < 20 |only if walking
talk Knewbie McGreen##86148
Speak with a New Recruit |q Inspiring Ashran##36629/2 |goto Stormshield 62.7,41.7
step
_Follow_ the path left |goto Stormshield 53.3,39.9 < 20 |only if walking
_Follow_ the path |goto Stormshield 47.2,50.1 < 20 |only if walking
_Enter_ the building |goto Stormshield 36.1,72.8 < 10 |walk
talk Lieutenant Howell##86069
turnin Inspiring Ashran##36629 |goto Stormshield 35.5,75.8
accept A Surly Dwarf##36630 |goto Stormshield 35.5,75.8
step
_Leave_ the building |goto Stormshield 36.1,72.8 < 10 |walk
_Follow_ the path |goto Stormshield 47.2,50.1 < 20 |only if walking
_Enter_ the building |goto Stormshield 47.4,32.0 < 10 |walk
talk Delvar Ironfist##86084
turnin A Surly Dwarf##36630 |goto Stormshield 48.0,30.6
accept Delvar Ironfist##36633 |instant |goto Stormshield 48.0,30.6
step
talk Prophet Velen##79043
turnin Into Twilight##33072 |goto Shadowmoon Valley D 40.54,54.92
accept The Clarity Elixir##33076 |goto Shadowmoon Valley D 40.53,54.89
step
talk Rangari Veka##73425
accept Going Undercover##33080 |goto 40.58,54.84
step
talk Sylene##73106
Tell her _"I need a Shadowmoon orc illusion."_
Obtain an Orc Disguise From Sylene |q Going Undercover##33080/1 |goto 40.65,54.61
step
talk Old Loola##71641
accept Loola's Lost Love##34876 |goto Shadowmoon Valley D 41.30,55.12
accept A Grandmother's Remedy##33077 |goto Shadowmoon Valley D 41.30,55.12
stickystart "mud"
stickystart "frogs"
stickystart "hearts"
stickystart "dust"
step
talk Rangari Navra##80378
|tip She is stealthed and you won't see an "!" on your minimap until you are right next to her.
accept Rangari Roundup##34897 |goto Shadowmoon Valley D 43.69,51.66
step
talk Gotuun##76839
fpath Twilight Glade |goto Shadowmoon Valley D 40.7,55.3
step
talk Hidden Rangari##80387
Find 1 Hidden Rangari |q Rangari Roundup##34897/1 |count 1 |goto Shadowmoon Valley D 43.9,52.7
step
talk Hidden Rangari##80387
Find 2 Hidden Rangari |q Rangari Roundup##34897/1 |count 2 |goto Shadowmoon Valley D 44.8,51.2
step
talk Hidden Rangari##80387
Find 3 Hidden Rangari |q Rangari Roundup##34897/1 |count 3 |goto Shadowmoon Valley D 45.0,50.4
step
talk Hidden Rangari##80387
Find 4 Hidden Rangari |q Rangari Roundup##34897/1 |count 4 |goto Shadowmoon Valley D 47.4,48.9
step
talk Hidden Rangari##80387
Find 5 Hidden Rangari |q Rangari Roundup##34897/1 |count 5 |goto Shadowmoon Valley D 46.4,51.6
step
click Pristine Star Lily##223824
|tip It's a large white flower inside a tree.
collect Pristine Star Lily##111024 |q The Clarity Elixir##33076/3 |goto 47.33,52.09
step
label "mud"
click Loose Mud##230952
|tip They look like piles of brown dirt on the ground around this area.
Search #5# Loose Mud |q Loola's Lost Love##34876/1 |goto Shadowmoon Valley D 46.7,49.3
step
label "frogs"
clicknpc Belly Toad##75470
collect 6 Vial of Toad Juice##110723 |q A Grandmother's Remedy##33077/1 |goto Shadowmoon Valley D 46.3,50.2
step
label "hearts"
kill Echidnian Hydra##79020+
collect 3 Engorged Heart##105716 |q The Clarity Elixir##33076/2 |goto 45.26,50.96
step
label "dust"
kill Frenzied Swamplighter##75471+
collect 6 Swamplighter Dust##104350 |q The Clarity Elixir##33076/1 |goto 45.26,50.96
step
talk Rangari Veka##73425
turnin Rangari Roundup##34897 |goto 40.6,54.8
step
talk Old Loola##71641
turnin Loola's Lost Love##34876 |goto 41.28,55.12
turnin A Grandmother's Remedy##33077 |goto 41.28,55.12
step
_Follow_ the trail up through the cliffs |goto Shadowmoon Valley D 39.3,53.7 < 20 |only if walking
_Follow_ the path to the right |goto Shadowmoon Valley D 38.0,55.3 < 20 |only if walking
_Continue_ over the bridge |goto 37.2,52.4 < 20 |only if walking
talk Prophet Velen##79043
turnin The Clarity Elixir##33076 |goto 35.27,49.12
accept The Fate of Karabor##33059 |goto 35.27,49.12
step
use Clarity Elixir##111591
Drink the Clarity Elixir |q The Fate of Karabor##33059/1 |goto 35.28,49.12
step
confirm |condition completedq(33059)
|tip Wait until your character has entered the scenario, then click to proceed to the next step. This is necessary for the next few steps to function correctly.
step
Enter the Scenario |goto Shadowmoon Valley D 79.0,46.6 < 20 |c |q 33059
step
Follow Prophet Velen |scenariogoal 24541 |goto Shadowmoon Valley D 79.9,46.6
step
kill Krull##77767 |scenariogoal 24539 |goto Shadowmoon Valley D 80.0,46.6
step
Witness Commander Vorka's Arrival |scenariogoal 24542
step
talk Prophet Velen##79522
Tell him _"Prophet, we're being overrun!"_
Speak to Velen on the Karabor Stairs |scenariogoal 24543 |goto Shadowmoon Valley D 79.2,46.6
step
Watch the dialogue
Witness the fate of Karabor |q The Fate of Karabor##33059/2 |goto Shadowmoon Valley D 79.2,46.6
step
_Follow_ the path back down |goto Shadowmoon Valley D 37.5,54.5 < 20 |only if walking
talk Prophet Velen##79043
turnin The Fate of Karabor##33059 |goto Shadowmoon Valley D 40.52,54.91
step
_Enter_ Shaz'gul through the wooden gates |goto Shadowmoon Valley D 38.6,60.5 < 20 |only if walking
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |only if _G.UnitSex("player")==2
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |only if _G.UnitSex("player")==3
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Supply Hut |q Going Undercover##33080/2 |goto Shadowmoon Valley D 37.17,59.25
step
_Enter_ the building |goto Shadowmoon Valley D 36.7,61.3 < 10 |walk
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |only if _G.UnitSex("player")==2
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |only if _G.UnitSex("player")==3
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Main Lodge |q Going Undercover##33080/3 |goto Shadowmoon Valley D 36.37,61.44
step
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |only if _G.UnitSex("player")==2
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |only if _G.UnitSex("player")==3
_Head_ through the gates to the Chieftains' seat |goto Shadowmoon Valley D 37.8,62.6 < 20
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground behind a huge stone.
Plant Explosives at the Chieftain's Seat |q Going Undercover##33080/4 |goto Shadowmoon Valley D 39.1,62.9
step
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |only if _G.UnitSex("player")==2
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |only if _G.UnitSex("player")==3
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Training Pit |q Going Undercover##33080/5 |goto Shadowmoon Valley D 36.5,65.5
step
talk Yrel##74877
turnin Going Undercover##33080 |goto 34.22,63.24
accept Escape From Shaz'gul##33081 |goto 34.22,63.24
step
talk Yrel##74877
_Choose any of the dialogue options_
Inspire Yrel |q Escape From Shaz'gul##33081/1 |goto 34.22,63.24
Watch the dialogue and wait for Yrel to start running
Follow and protect her as she runs
Escape Shaz'gul with Yrel |q Escape From Shaz'gul##33081/2
step
talk Yrel##74877
turnin Escape From Shaz'gul##33081 |goto 40.60,54.97
step
talk Prophet Velen##79043
accept Chasing Shadows##33586 |goto 40.52,54.91
step
talk Scout Valdez##81152
accept Fast Expansion##33814 |goto 40.65,54.88
step
talk Loreseeker Heidii##74121
accept The Dark that Blinds Us##33078 |goto 42.14,57.37
stickystart "burialfields"
stickystart "Treas_Info"
step
click Peaceful Offering##225503
clicknpc Tribal Stone##224708
|tip The stones are huge verical pillars through the area.
Collect the Northern Stone Rubbing |q 33078/2 |goto 44.48,58.94
step
click Peaceful Offering##225503
click Tribal Stone##224708
|tip The stones are huge verical pillars through the area.
Collect the Western Stone Rubbing |q 33078/3 |goto Shadowmoon Valley D 43.8,60.6
step
click Peaceful Offering##225503
click Tribal Stone##224708
|tip The stones are huge verical pillars through the area.
Collect the Eastern Stone Rubbing |q 33078/1 |goto Shadowmoon Valley D 45.2,60.5
step
click Peaceful Offering##225503
|tip It's a small vase at the base of the Tribal Stone
click Tribal Stone##224708
|tip The stones are huge verical pillars through the area.
Collect the Southern Stone Rubbing |q 33078/4 |goto Shadowmoon Valley D 44.5,63.6
step
label "Treas_Info"
The Peaceful Offerings at the base of each Tribal Stone offer a significant amount of experience
step
label "burialfields"
accept Bonus Objective: The Burial Fields##34076 |goto Shadowmoon Valley D 44.2,62.6
kill 6 Shadowmoon Void Priestess##82196 |q Bonus Objective: The Burial Fields##34076/1 |goto Shadowmoon Valley D 43.5,64.2
You can find more Shadowmoon Void Priestesses around [Shadowmoon Valley D 45.7,59.3]
kill Void-Torn Spirit##82220+, Shadowmoon Spirit##77920+
kill 6 Orc spirits |q Bonus Objective: The Burial Fields##34076/2 |goto Shadowmoon Valley D 43.5,64.2
kill 3 Phantom Pearltusk##79148 |q Bonus Objective: The Burial Fields##34076/3 |goto Shadowmoon Valley D 43.5,64.2
step
talk Loreseeker Heidii##74121
turnin The Dark that Blinds Us##33078 |goto Shadowmoon Valley D 42.15,57.38
step
_Enter_ the building |goto Shadowmoon Valley D 57.2,57.5 < 10 |walk
talk Prelate Reenu##76200
turnin The Southern Wilds##35444 |goto Shadowmoon Valley D 57.0,57.5
accept Crippled Caravan##33786
step
_Leave_ the building |goto Shadowmoon Valley D 57.2,57.5 < 10 |walk
Find Fiona |q Crippled Caravan##33786/1 |goto Shadowmoon Valley D 53.61,57.27
step
talk Fiona##76204
turnin Crippled Caravan##33786 |goto Shadowmoon Valley D 53.61,57.27
accept Fiona's Solution##33787 |goto Shadowmoon Valley D 53.61,57.27
accept Swamplighter Queen##33808 |goto Shadowmoon Valley D 53.61,57.27
step
talk Rangari Duula##80859
accept Rotting Riverbeasts##34996 |goto Shadowmoon Valley D 52.60,59.70
stickystart "swamplightervenom"
stickystart "riotvine"
stickystart "moonlitherb"
stickystart "riverbeastheart"
step
_Enter_ the cave |goto Shadowmoon Valley D 51.4,56.5 < 20 |walk
kill 1 Swamplighter Queen##77314
collect Swamplighter Queen's Tail##108410 |q Swamplighter Queen##33808/1 |goto Shadowmoon Valley D 51.71,54.93
step
label "swamplightervenom"
kill Swamplighter Drone##82371+
collect 2 Swamplighter Venom##108395 |q Fiona's Solution##33787/2 |goto Shadowmoon Valley D 51.25,60.48
step
label "riotvine"
kill Riot Blossom##82427+
collect 4 Riotvine##108396 |q Fiona's Solution##33787/3 |goto 51.66,60.51
step
label "moonlitherb"
click Moonlit Herb##225998
|tip They look like thin plants with blue leaves.
collect 3 Moonlit Herb##108409 |q Fiona's Solution##33787/4 |goto Shadowmoon Valley D 51.8,65.1
step
label "riverbeastheart"
kill Twilight Riverbeast##83455+
collect 1 Riverbeast Heart##108394 |q Fiona's Solution##33787/1 |goto 51.87,60.00
step
kill 5 Blooming Mandragora##80752 |q Rotting Riverbeasts##34996/1 |goto 52.06,64.95
step
talk Rangari Duula##80859
turnin Rotting Riverbeasts##34996 |goto 52.59,59.71
step
talk Fiona##76204
turnin Fiona's Solution##33787 |goto 53.61,57.27
turnin Swamplighter Queen##33808 |goto 53.61,57.27
accept Cooking With Unstable Herbs##33788 |goto 53.61,57.27
step
talk Fiona##76204
Tell her _"I'm ready, Fiona."_
Speak with Fiona |q Cooking With Unstable Herbs##33788/1 |goto 53.59,57.31
Listen to Fiona and throw in the herbs that she needs as she cooks:
click Swamplighter Venom##108395
|tip The venom is in two small bottles on the table to the left.
click Riotvine##108396
|tip The Riotvine is four tentacles in a barrel in front of Fiona.
click Riverbeast Heart##108394
|tip The hearts are in a wooden bowl on the ground to the right of the Riotvine.
click Moonlit Herb##225998
|tip Off to the right beside the cauldron in a wooden box.
Complete the Elixir |q Cooking With Unstable Herbs##33788/2 |goto 53.59,57.31
step
clicknpc Gidwin Goldbraids##80862
Use the Elixir on Gidwin |q Cooking With Unstable Herbs##33788/3 |goto 53.63,57.25
step
talk Fiona##76204
turnin Cooking With Unstable Herbs##33788 |goto 53.61,57.27
accept Poison Paralysis##35006 |goto 53.61,57.26
step
talk Tarenar Sunstrike##80865
accept Punishing the Primals##34995 |goto 53.66,57.25
step
talk Rangari Arepheon##80727
accept Blademoon Bloom##35014 |goto 53.69,57.28
step
talk Beezil Linkspanner##80761
accept Forever Young##34994 |goto 53.45,57.30
step
talk Sleepy Rangari##80707
accept Slumberbloom##34997 |goto 53.12,65.37
stickystart "botani"
stickystart "slumberbloom"
step
_Follow_ the path up |goto Shadowmoon Valley D 54.7,67.0 < 10 |only if walking
talk Rimblat Earthshatter##80894
Cure Rimblat |q Poison Paralysis##35006/1 |goto 55.08,68.15
step
talk Argus Highbeacon##80903
Cure Argus |q Poison Paralysis##35006/2 |goto Shadowmoon Valley D 56.8,70.4
stickystart "youthvine"
step
talk Talren Highbeacon##80906
Cure Talren |q Poison Paralysis##35006/3 |goto Shadowmoon Valley D 54.1,70.8
step
label "youthvine"
click Youthvine##231152
|tip They look like green plants with red flowers on the ground around this area.
collect 5 Youngroot##112328 |q Forever Young##34994/1 |goto 54.87,71.70
step
talk Rangari Arepheon##80781
Speak with Rangari Arepheon |q Blademoon Bloom##35014/1 |goto 55.66,71.98
step
talk Rangari Arepheon##80781
turnin Blademoon Bloom##35014 |goto 55.66,71.98
accept Gestating Genesaur##35015 |goto 55.67,71.98
step
kill Blooming Genesaur##80662 |q Gestating Genesaur##35015/1 |goto 56.13,73.27
step
talk Rangari Arepheon##80781
turnin Gestating Genesaur##35015 |goto 55.67,71.98
step
label "slumberbloom"
clicknpc Slumberbloom##80642
|tip They look like small red and white plants on the ground around this area.
use Gathered Pebbles##112332
|tip Use your Gatherd Pebbles on Slumberblooms.
Destroy #8# Slumberblooms |q Slumberbloom##34997/1 |goto 54.37,70.83
step
label "botani"
kill Botani Bloomkeeper##80766+, Blademoon Botani##80606+
Kill #5# Blademoon Botani |q Punishing the Primals##34995/1 |goto 54.91,69.01
|tip They walk around, but you can also find them laying down in the small tree houses around this area. So check there if you're having trouble finding them.
step
Click the _Complete Quest_ Box:
turnin Slumberbloom##34997
step
talk Tarenar Sunstrike##80865
turnin Punishing the Primals##34995 |goto 53.66,57.24
step
talk Fiona##76204
turnin Poison Paralysis##35006 |goto 53.61,57.28
accept Fiona##35617 |goto 53.61,57.27
step
talk Beezil Linkspanner##80761
turnin Forever Young##34994 |goto 53.44,57.32
step
talk Morfax##81284
fpath The Draakorium |goto Shadowmoon Valley D 57.0,56.6
stickystart "shimmermoor"
step
_Follow_ the dirt path up |goto Shadowmoon Valley D 58.0,58.1 < 20 |only if walking
_Go through_ the forest and _follow_ the dirt path |goto Shadowmoon Valley D 58.9,64.5 < 20 |only if walking
_Continue following_ the dirt path |goto Shadowmoon Valley D 60.5,66.7 < 20 |only if walking
accept Bonus Objective: The Shimmer Moor##34728
kill Sargerei Netherbinder##79681 |q Bonus Objective: The Shimmer Moor##34728/3	|goto Shadowmoon Valley D 62.8,62.7
step
label "shimmermoor"
accept Bonus Objective: The Shimmer Moor##34728
click Lost Iridescent Egg##230613
|tip They look like big white eggs sitting on the ground next to trees around this area.
collect 14 Iridescent Egg##111559 |q Bonus Objective: The Shimmer Moor##34728/1 goto Shadowmoon Valley D 59.4,65.4
kill 8 Arcane Anomaly##79658 |q Bonus Objective: The Shimmer Moor##34728/2 |goto Shadowmoon Valley D 59.4,65.4
step
_Follow_ the path up |goto Shadowmoon Valley D 45.1,28.1 < 20 |only if walking
talk Rulkan##75884
turnin Chasing Shadows##33586 |goto 45.69,26.31
accept Ancestor's Memory##33082 |goto 45.70,26.31
step
talk Wargra##76850
fpath Exile's Rise |goto Shadowmoon Valley D 45.6,25.5
step
talk Dulga##77211
accept Forbidden Love##34847 |goto 46.11,25.48
step
talk Zukaza##80248
accept Lunarblossom##34836 |goto 46.40,25.25
step
_Jump down_ and _Enter_ the cave |goto Shadowmoon Valley D 46.3,27.2 < 20 |walk
click Ancestor's Totem##225918
|tip The Totem is a large jagged runestone in the back of the cave.
Find the Ancestor's Totem |q Ancestor's Memory##33082/1 |goto 45.71,25.39
step
Watch the dialogue:
talk Rulkan##75884
turnin Ancestor's Memory##33082 |goto Shadowmoon Valley D 45.8,25.6
accept Darkest Night##34043 |goto Shadowmoon Valley D 45.8,25.6
accept Rulkan##35631 |goto Shadowmoon Valley D 45.8,25.6
stickystart "lunarblossom"
step
_Leave_ the cave |goto Shadowmoon Valley D 46.3,27.2 < 20 |walk
_Continue_ along the path going up the hill |goto Shadowmoon Valley D 51.0,25.2 < 20 |only if walking
_Follow_ the path through the cliffs |goto Shadowmoon Valley D 50.4,15.2 < 20 |only if walking
_Enter_ the cave |goto Shadowmoon Valley D 48.3,14.1 < 10 |walk
Find Kral'za |q Forbidden Love##34847/1 |goto 48.12,14.96 |indoors Dol'mak's Hideout
kill Dol'mak##80250 |q Forbidden Love##34847/2 |goto 48.12,14.96 |indoors Dol'mak's Hideout
kill Dark Apparition##76295 |q Forbidden Love##34847/3 |goto 48.12,14.96 |indoors Dol'mak's Hideout
step
label "lunarblossom"
_Leave_ the cave |goto Shadowmoon Valley D 48.2,14.1 < 10 |walk
click Lunarblossom##230901
|tip The are small red flowers next to the rocks.
collect 5 Lunarblossom##111937 |q Lunarblossom##34836/1 |goto 51.50,19.54
step
talk Zukaza##80296
turnin Lunarblossom##34836 |goto 46.41,25.23
step
talk Dulga##77211
turnin Forbidden Love##34847 |goto 46.11,25.47
step
talk Lost Packmule##79966
accept Gloomshade Game Hunter##33461 |goto Shadowmoon Valley D 39.5,30.1
stickystart "shadowribs"
stickystart "ossifiedvenom"
step
kill Gloomshade Gulper##74176+
collect 3 Gulper Leg##111888 |q Gloomshade Game Hunter##33461/3 |goto 39.35,23.30
step
label "shadowribs"
kill Gloomshade Howler##74169+
collect 5 Shadowstalker Ribs##111884 |q Gloomshade Game Hunter##33461/1 |goto 39.10,25.65
step
label "ossifiedvenom"
kill Gloomshade Fungi##74175+
collect 5 Ossified Venom Gland##106869 |q Gloomshade Game Hunter##33461/2 |goto 41.41,17.34
step
talk Baros Alexston##77209
turnin Fast Expansion##33814 |goto Lunarfall 41.3,49.3
accept Bigger is Better##36592 |goto 41.39,49.36
step
clicknpc Architect Table##86017
Click your _Town Hall_
Click _Upgrade_
Upgrade your Garrison to Level 2 |condition garrisonlvl()>=2 |goto 41.09,48.90
step
_Enter_ the building |goto Lunarfall 35.8,34.9 < 10 |walk
talk Baros Alexston##77209
turnin Bigger is Better##36592 |goto Lunarfall 31.6,31.2
step
_Leave_ the building |goto Lunarfall 35.8,34.9 < 10 |walk
_Go through_ the doorway |goto Lunarfall 49.6,63.9 < 20 |only if walking
talk Arsenio Zerep##80159
turnin Gloomshade Game Hunter##33461 |goto Lunarfall 37.3,64.5
step
#include "Garrison_KenLoggin"
accept Lost Lumberjacks##34820
step
talk Lost Packmule##79966
|tip The Packmule patrols a short area around the road.
turnin Lost Lumberjacks##34820 |goto Shadowmoon Valley D/0 39.82,30.07
accept Gloomshade Grove##33263 |goto Shadowmoon Valley D/0 39.82,30.07
stickystart "Gloomshade"
step
Search Gloomshade Grove for Clues |q Gloomshade Grove##33263/1 |goto Shadowmoon Valley D/0 39.4,26.7
step
talk Phlox##74667
Speak With Phlox |q Gloomshade Grove##33263/2 |goto 39.27,25.64
step
_Follow_ the path up |goto 38.9,25.0 < 20 |only if walking
click Alliance Sword##224229
|tip It looks like a sword, shield, and boot laying on a big rock in the water.
Investigate the Pond |q Gloomshade Grove##33263/3 |goto 39.54,22.65
step
talk Phlox##74667
Speak With Phlox |q Gloomshade Grove##33263/4 |goto 39.56,22.78
step
_Follow_ the path up |goto 39.1,22.7 < 20 |only if walking
click Alliance Shield##223720
|tip It looks like a shield laying on the ground.
Investigate the Field |q Gloomshade Grove##33263/5 |goto 39.84,19.92
step
talk Phlox##74667
Speak With Phlox |q Gloomshade Grove##33263/6 |goto 39.86,19.98
step
clicknpc Dead Packmule##74193
|tip It looks like a donkey laying on the ground with a bunch of supplies strapped to its back.
Investigate the Beach |q Gloomshade Grove##33263/7 |goto 41.83,18.00
step
talk Phlox##74667
Speak With Phlox |q Gloomshade Grove##33263/8 |goto 41.93,18.01
step
_Enter_ the cave |goto 46.4,15.3 < 10 |walk
Investigate Gloomshade Grotto |q Gloomshade Grove##33263/9 |goto Shadowmoon Valley D/0 47.0,15.1
step
kill Phlox##74667 |q Gloomshade Grove##33263/10 |goto 47.1,14.8
step
talk Jarrod Hamby##73877
turnin Gloomshade Grove##33263 |goto 47.09,14.41
accept Game of Thorns##33271 |goto 47.09,14.41
step
talk Ryan Metcalf##74547
accept Prune the Podlings##34806 |goto 47.04,14.35
step
label "Gloomshade"
_Leave_ the cave |goto 46.4,15.3 < 10 |only if walking
kill Podling Spitter##74147++, Podling Squirt##74148++, Podling Nibbler##74146++, Podling Tender##74149++
Kill #15# Podlings |q Prune the Podlings##34806/1 |goto 46.25,15.41
step
Click the _Quest Complete_ Box:
turnin Prune the Podlings##34806
step
_Follow_ the path up |goto 36.8,21.9 < 20 |only if walking
kill King Deathbloom##73888 |q Game of Thorns##33271/1 |goto 35.7,19.8
step
talk Shelly Hamby##76748
turnin Game of Thorns##33271 |goto 36.39,19.28
accept Shelly Hamby##35625 |instant |goto 36.39,19.28
step
talk Prophet Velen##77282
turnin Darkest Night##34043 |goto Shadowmoon Valley D 35.72,36.88
accept Into Anguish##35032 |goto 35.72,36.88
step
talk Rangari Saa'to##81176
accept On the Offensive##33083 |goto 35.84,36.95
accept Harbingers of the Void##33793 |goto 35.84,36.95
accept The Great Salvation##33794 |goto 35.84,36.95
step
talk Illuminate Praavi##81173
accept Across the Stars##33795 |goto 35.38,36.95
step
use Fragment of Anguish##112386
|tip Use the Fragment of Anguish next to the Portal.
Open the Doorway |q Into Anguish##35032/1 |goto Shadowmoon Valley D 35.03,37.89
stickystart "starreading"
stickystart "shadowforces"
stickystart "draeneiprisoners"
step
clicknpc Mark of Shadow##80742
|tip It looks like a swirling pink orb with a purple rune inside.
Deactivate the Mark of Shadows |q Into Anguish##35032/3 |goto 34.49,41.40
step
kill Shadowmoon Prophet##80787+
|tip They will release the Essence, allowing you to attack it.
kill Essence of Shadow##76209 |q Harbingers of the Void##33793/1 |goto 33.89,43.48
step
_Go through_ the stone gate |goto Shadowmoon Valley D 34.9,42.2 < 20 |only if walking
_Enter_ the cave |goto 35.3,44.0 < 20 |walk
kill Essence of Anguish##76210 |q Harbingers of the Void##33793/3 |goto Shadowmoon Valley D 34.8,45.5 |indoors Ancestor's Grotto
step
_Leave_ the cave |goto 35.3,44.0 < 20 |walk
_Go through_ the stone gate |goto Shadowmoon Valley D 34.9,42.2 < 20 |only if walking
clicknpc Mark of Anguish##80950
|tip It looks like a swirling pink orb with a purple rune inside.
Deactivate the Mark of Anguish |q Into Anguish##35032/4 |goto 32.65,38.75
step
kill Shadowmoon Prophet##80787+
|tip They will release the Essence, allowing you to attack it.
kill Essence of Darkness##74519 |q Harbingers of the Void##33793/2 |goto 31.28,39.48
step
clicknpc Mark of Darkness##80741
|tip It looks like a swirling pink orb with a purple rune inside.
Deactivate the Mark of Darkness |q Into Anguish##35032/2 |goto Shadowmoon Valley D 29.5,39.8
step
Click the _Quest Complete_ Box:
turnin Into Anguish##35032
accept The Dark Side of the Moon##34054
step
_Go up_ the dirt path through the stone pillars |goto Shadowmoon Valley D 29.4,41.0 < 20 |only if walking
_Continue following_ the path |goto Shadowmoon Valley D 29.1,41.9 < 20 |only if walking
Find Velen and Yrel at the Terrace of the Stars |q The Dark Side of the Moon##34054/1 |goto Shadowmoon Valley D 30.2,43.3
step
Watch the dialogue
kill Arkeddon##74632 |q The Dark Side of the Moon##34054/2 |goto 31.00,43.85
step
label "starreading"
click Star Reading##223508
|tip They look like purple rugs laying on the ground all around this area.
collect 5 Star Reading##112385 |q Across the Stars##33795/1 |goto 33.54,39.96
step
label "shadowforces"
kill Shadowmoon Voidclaw##74374+, Shadowmoon Necrolyte##80788+, Shadowmoon Voidaxe##74373+
Kill #15# Shadowmoon Forces |q On the Offensive##33083/1 |goto 33.83,39.59
step
label "draeneiprisoners"
click Shadowmoon Cage##225924
|tip They look like wooden cages all around this area.
Rescue #8# Draenei Prisoners |q The Great Salvation##33794/1 |goto 33.94,40.26
step
Watch the dialogue:
talk Prophet Velen##77282
turnin On the Offensive##33083 |goto Shadowmoon Valley D 46.37,38.70
turnin Harbingers of the Void##33793 |goto Shadowmoon Valley D 46.37,38.70
turnin Across the Stars##33795 |goto Shadowmoon Valley D 46.37,38.70
step
talk Yrel##73395
turnin The Great Salvation##33794 |goto Shadowmoon Valley D 46.38,38.62
turnin The Dark Side of the Moon##34054 |goto Shadowmoon Valley D 46.38,38.62
step
talk Prophet Velen##77282
accept Darkness Falls##33837 |goto Shadowmoon Valley D 46.37,38.69
step
Enter the Waning Crescent |q Darkness Falls##33837/1 |goto Shadowmoon Valley D 46.48,45.25
step
_Follow_ the path through the cave |goto Shadowmoon Valley D 49.2,46.4 < 10 |walk |indoors Waning Crescent
_Leave_ the cave |goto Shadowmoon Valley D/0 49.83,46.24 < 10 |indoors Waning Crescent
Find Ner'zhul |q Darkness Falls##33837/2 |goto Shadowmoon Valley D 51.55,46.22
step
kill Ner'zhul##76172
|tip Fight him and then kill the pink spirits when he summons them, so you can hit him again. Then, kill the voidwalker that he summons.
Defeat Ner'zhul |q Darkness Falls##33837/3 |goto Shadowmoon Valley D 51.82,46.14
step
talk Yrel##73395
turnin Darkness Falls##33837 |goto Shadowmoon Valley D 52.23,46.15
step
talk Vindicator Maraad##77312
accept The Righteous March##33255 |goto Shadowmoon Valley D 52.23,46.05
Tell him _"I am ready to join the attack against the Iron Horde."_
Use the ability on your hot bar to help defeat the forces
Escort Your Garrison Army to Karabor |q The Righteous March##33255/1
step
talk Vindicator Akama##72413
turnin The Righteous March##33255 |goto Shadowmoon Valley D 77.46,37.62
accept The Defense of Karabor##33256 |goto Shadowmoon Valley D 77.46,37.61
step
kill Arnokk the Burner##75358
|tip He runs around this area burning stuff.
Defeat Arnokk the Burner |scenariogoal 24515 |goto Shadowmoon Valley D 76.8,40.5 |condition completedq(33256)
step
_Run through_ the doorway |goto Shadowmoon Valley D 77.2,41.7 < 10 |only if walking
_Keep running_ and killing waves of enemies |goto 78.0,42.9 < 10 |only if walking
_Go down_ the stairs |goto 79.6,46.6 < 20 |only if walking
Clear a path to Karabor Harbor |scenariogoal 24596 |goto 79.6,46.6
|tip Do this by killing enemies.
Meet Yrel at the Karabor Harbor |scenariogoal 24516 |goto Shadowmoon Valley D 79.7,46.9 |condition completedq(33256)
|tip Getting here is pretty rough, currently. It's okay if you die, you'll basically resurrect where you need to be anyway.
step
scenariogoal 24517 |goto 79.6,46.6 |condition completedq(33256)
step
kill Commander Vorka##74715
|tip You will spend the entire fight trying to dodge AoE attacks he throws at you. Watch the ground and make sure to move out of the various circular markers that appear before the attacks hit. He also summons adds that will attack you, try to kill them as quickly as possible, so you can get back to concentrating on him.
Defeat Commander Vorka |scenariogoal 24585 |goto Shadowmoon Valley D 80.6,46.6 |condition completedq(33256)
step
clicknpc Raindash##80300
_Ride_ the Fey Drake |goto Shadowmoon Valley D 80.5,47.0
Arrive at Embaari Village |goto Shadowmoon Valley D 46.3,38.5 < 30 |noway |c |q 33256
step
talk Yrel##73395
turnin The Defense of Karabor##33256 |goto 46.38,38.62
accept The Secrets of Gorgrond##33533 |goto 46.37,38.62 |only if not havequest(35556) and not completedq(35556)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Gorgrond (92-94)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)",
image=ZGV.DIR.."\\Guides\\Images\\Gorgrond",
condition_suggested_exclusive=true,
startlevel=92,
},[[
step
talk Dungar Longdrink##81103
_Speak with Dungar Longdrink to fly to Gorgrond_ |goto Lunarfall 48.0,49.8
Arrive at Wildwood Wash in Gorgrond |goto Gorgrond 64.1,57.5 < 30 |noway |c |q 33533 |only if havequest(33533) or completedq(33533)
Arrive at Wildwood Wash in Gorgrond |goto Gorgrond 64.1,57.5 < 30 |noway |c |q 35556 |only if havequest(35556) or completedq(35556)
step
talk Yrel##80978
turnin The Secrets of Gorgrond##33533 |goto Gorgrond 63.99,57.20 |only if havequest(33533) or completedq(33533)
turnin The Secrets of Gorgrond##35556 |goto Gorgrond 63.99,57.20 |only if havequest(35556) or completedq(35556)
accept Welcome to Gorgrond##35033 |goto Gorgrond 63.99,57.20
step
Scout Ahead For Naielle's Watch |q Welcome to Gorgrond##35033/1 |goto 63.67,53.45
step
_Go up_ the dirt path |goto Gorgrond 63.4,51.9 < 20 |only if walking
_Find_ the Rangari Survivors |q Welcome to Gorgrond##35033/2 |goto 64.23,51.87
|tip They are located inside a cave.
step
talk Rangari D'kaan##80921
|tip Inside this small cave.
turnin Welcome to Gorgrond##35033 |goto 64.21,51.94
accept A Harvester Has Come##35065 |goto 64.21,51.94
step
talk Rangari Kaalya##80922
|tip Inside this small cave.
accept Wake of the Genesaur##35834 |goto 64.20,51.77
stickystart "wildovergrowth"
step
_Enter_ the cave |goto Gorgrond 63.7,48.9 < 10 |walk
kill Harvester Ommru##84373 |q A Harvester Has Come##35065/1 |goto 63.1,46.8 |indoors Rangari Hollow
step
label "wildovergrowth"
kill Podling Trapper##84862+, Podling Scavenger##84402+, Crimson Mandragora##84391+
Destroy #9# Wild Overgrowth |q Wake of the Genesaur##35834/1 |goto 64.37,50.04
step
talk Rangari D'kaan##75146
turnin A Harvester Has Come##35065 |goto 63.22,52.24
accept He Drew Aggro...culture##36595 |goto 63.22,52.24
step
talk Rangari Kaalya##80987
turnin Wake of the Genesaur##35834 |goto 63.14,52.29
step
kill Aggressive Growth##84451
talk Thaelin Darkanvil##80874
Find the Pilot of the Dark Iron Tank |q He Drew Aggro...culture##36595/1 |goto 64.98,48.55
step
talk Thaelin Darkanvil##75136
turnin He Drew Aggro...culture##36595 |goto 63.17,52.40
accept Lost Mole Machines##35055 |goto 63.17,52.40
step
talk Rangari D'kaan##75146
accept Rescue Rangari##35050 |goto 63.23,52.28
step
accept Bonus Objective: Iyun Weald##36571 |goto 62.73,53.46
|tip Avoid Biolante as you do this quest. It's an elite that patrols around this area.
clicknpc Thorny Leafling##85809
|tip They are small enemies on the ground around this area.
Punt #20# Thorny Leafling |q Bonus Objective: Iyun Weald##36571/2 |goto 62.73,53.46
kill 6 Weald Stinger##85807 |q Bonus Objective: Iyun Weald##36571/3 |goto 63.08,52.74
kill 12 Thorny Stabber##80744 |q Bonus Objective: Iyun Weald##36571/1 |goto 62.73,53.46
step
talk Rangari Kolaan##81018
Tell him _"D'kaan is coming with help."_
Find Rangari Kolaan |q Rescue Rangari##35050/1 |goto 59.46,53.18
step
talk Rangari Rajess##81013
Tell her _"D'kaan is coming with help."_
Find Rangari Rajess |q Rescue Rangari##35050/2 |goto 57.71,54.30
step
_Head up_ the path on the side of the hill |goto Gorgrond 56.9,55.4 < 20 |only if walking
talk Rangari Jonaa##81020
Tell him _"D'kaan is coming with help."_
Find Rangari Jonaa |q Rescue Rangari##35050/3 |goto 55.06,58.56
step
talk Glirin##84766
Find the Lost Mole Machine |q Lost Mole Machines##35055/1 |goto 53.96,60.13
Tell him _"Thaelin is on his way soon."_
Wait For Thaelin's Arrival |q Lost Mole Machines##35055/2 |goto 53.96,60.13
step
talk Rangari D'kaan##75146
turnin Rescue Rangari##35050 |goto 53.48,60.43
step
talk Thaelin Darkanvil##75136
turnin Lost Mole Machines##35055 |goto 53.43,60.33
accept We Need An Outpost##35063 |goto 53.43,60.33
step
clicknpc Drafting Table##81119
|tip It looks like a wooden table with a slanted top, with a tan blueprint laying on it.
Select a Building |q We Need An Outpost##35063/1 |goto 53.46,60.31
Click here if you chose the _Highpass Logging Camp_ |confirm always |goto 53.46,60.31 |next "loggingcamp" |or |condition completedq(35686)
_Or_
Click here if you chose the _Highpass Sparring Ring_ |confirm always |goto 53.46,60.31 |next "sparringring" |or |condition completedq(35212)
step
label "sparringring"
talk Thaelin Darkanvil##75136
turnin We Need An Outpost##35063 |goto 53.00,59.79
step
talk Rangari Jonaa##81076
accept A Rediscovered Legend##34704 |goto Gorgrond 52.8,59.9
step
talk Vindicator Maraad##75127
accept Rage and Wisdom##35686 |goto 52.85,59.68
step
talk Rangari Rajess##81074
fpath Highpass |goto Gorgrond 52.8,59.3
step
talk Rangari D'kaan##75146
accept Rangari in the Red##35666 |goto 53.31,59.89
accept Seeking the Scout##36432 |goto 53.31,59.89
step
talk Trader Yula##85968 |goto Gorgrond 53.2,59.8
home Highpass
step
talk Rangari Rajess##81074
Tell her _"I need to meet with Rangari Erdanii"_
Ask Rangari Rajess to Fly You to Rangari Erdanii |q Rage and Wisdom##35686/1 |goto 52.83,59.34
step
talk Rangari Erdanii##82610
turnin Rage and Wisdom##35686 |goto 46.27,66.70
accept Seedbearers of Bad News##35664 |goto 46.27,66.70
accept A Harsh Reminder##35693 |goto 46.27,66.70
stickystart "ancientseedbearers_SR"
step
kill Gronn Rockthrower##80689+, Gronnling Bonebreaker##80685+, Goren Gouger##80690+
Kill #8# Denziens of the Wasteland |q A Harsh Reminder##35693/1 |goto 45.28,65.11
step
label "ancientseedbearers_SR"
clicknpc Ancient Seedbearer##82392+
|tip They look like big tree ents with leafy green plants as hair laying on the ground around this area.
Burn #5# Ancient Seedbearers |q Seedbearers of Bad News##35664/1 |goto 45.28,65.11
step
talk Rangari Erdanii##82610
|tip She's stealthed, standing on top of this stack of rocks.
turnin A Harsh Reminder##35693 |goto 44.91,63.93
turnin Seedbearers of Bad News##35664 |goto 44.91,63.93
accept We Have Company##35665 |goto 44.91,63.93
step
talk Dying Beast##81056
Select _Release the creature from its chains._
Investigate the Iron Horde Camp |q We Have Company##35665/1 |goto 44.29,61.64
step
talk Rexxar##82832
turnin We Have Company##35665 |goto 44.29,61.64
accept Cauterizing Wounds##35730 |goto 44.29,61.64
step
click Iron Horde Bonfire##233180
|tip It looks like a fire with 3 big logs sticking out of it, in a metal base.
collect Burning Log##113398 |q Cauterizing Wounds##35730/1 |goto 44.38,61.34
step
clicknpc Nisha##83933
Cauterize Nisha's Wounds |q Cauterizing Wounds##35730/2 |goto 44.29,61.64
step
talk Rexxar##82832
turnin Cauterizing Wounds##35730 |goto 44.29,61.64
accept On the Mend##35026 |goto 44.29,61.64
accept Basilisk Butcher##35870 |goto 44.29,61.64
step
talk Gladiator Akaani##79322
turnin A Rediscovered Legend##34704 |goto 42.76,62.97
accept Getting Gladiators##34699 |goto 42.76,62.97
step
talk Kash'drakor##79320
accept Slave Hunters##34698 |goto 42.78,63.08
accept Nazgrel##34700 |goto 42.78,63.08
step
talk Beatface##79331
accept Krav'ogra##34702 |goto 42.71,63.06
step
talk Prowler Sasha##75008
accept Need More Teeth##34012 |goto 41.42,66.10
stickystart "ogreteeth"
step
_Run up_ the wooden ramp |goto Gorgrond 41.0,66.2 < 10 |only if walking
kill Slave Hunter Krag##79623
collect Pendant of Krag##111527 |q Slave Hunters##34698/2 |goto 41.08,66.28
step
kill Slave Hunter Brol##79621
collect Pendant of Brol##108899 |q Slave Hunters##34698/1 |goto 40.52,66.70
step
_Run up_ the rocks |goto Gorgrond 39.7,68.1 < 10 |only if walking
_Enter_ the building |goto Gorgrond 39.0,68.2 < 10 |walk
kill Slave Hunter Mol##79626
collect Pendant of Mol##111528 |q Slave Hunters##34698/3 |goto 38.98,68.75
step
_Enter_ the building |goto Gorgrond 39.3,66.8 < 10 |walk
click Shackle##233308
|tip It's a silver chain connected to the wall.
Free Pitfighter Vaandaam |q Getting Gladiators##34699/1 |goto 39.16,67.25
step
_Leave_ the building |goto Gorgrond 39.3,66.8 < 10 |walk
click Shackle##233308
|tip It's a silver lock on a wooden cage.
Free Y'kish |q Getting Gladiators##34699/2 |goto 39.77,67.84
step
_Enter_ the building |goto Gorgrond 40.4,65.1 < 10 |walk
click Shackle##233308
|tip It's a large silver ring around the prisoner's wrist.
Free Bruto |q Getting Gladiators##34699/3 |goto 40.30,64.82
step
You will have to battle several enemies before Slavemaster Ok'mok appears:
click Challenge Gong##215697
kill Kigli'ak##79727
click Challenge Gong##215697
kill Stribit##79728
click Challenge Gong##215697
kill Jabberback##79726
click Challenge Gong##215697
kill Slavemaster Ok'mok##75864
Slay Slavemaster Ok'mok in the Stonemaul Arena |q Krav'ogra##34702/1 |goto Gorgrond 40.4,67.6
step
_Follow_ the dirt path |goto Gorgrond 39.1,65.8 < 20 |only if walking
_Enter_ Kor'gall's Hovel |goto 38.55,67.38 < 20 |walk
_Follow_ the path |goto Gorgrond 37.6,69.4 < 20 |walk |indoors Kor'gall's Hovel
click Nazgrel's Cage##233369
|tip It's a large cage made of stone and wood.
Rescue Nazgrel |q Nazgrel##34700/1 |goto 36.85,70.58 |indoors Kor'gall's Hovel
step
_Follow_ the path |goto Gorgrond 37.6,69.4 < 20 |walk |indoors Kor'gall's Hovel
talk Bruto##77014
turnin Getting Gladiators##34699 |goto 36.87,67.90 |indoors Kor'gall's Hovel
accept The Axe of Kor'gall##34703 |goto 36.87,67.90 |indoors Kor'gall's Hovel
step
click Ogre Barricade##224709 |goto Gorgrond/0 36.8,68.1 < 5 |indoors Kor'gall's Hovel
|tip It's a wooden gate.
kill Kor'gall##77020
collect Serathil##109023 |q The Axe of Kor'gall##34703/1 |goto 36.46,70.07 |indoors Kor'gall's Hovel
step
label "ogreteeth"
kill Stonemaul Slaver##75835+, Stonemaul Guard##75819+
collect 30 Ogre Tooth##108898 |q Need More Teeth##34012/1 |goto Gorgrond 37.1,68.2 |indoors Kor'gall's Hovel
step
_Leave_ Kor'gall's Hovel |goto 38.55,67.38 < 20 |walk
talk Prowler Sasha##75008
turnin Need More Teeth##34012 |goto 41.42,66.10
step
talk Beatface##79331
turnin Krav'ogra##34702 |goto 42.71,63.06
step
talk Kash'drakor##79320
turnin Slave Hunters##34698 |goto 42.78,63.08
turnin Nazgrel##34700 |goto 42.78,63.08
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto 42.76,62.97
accept The Sparring Arena##35137 |goto 42.76,62.97
step
talk Pitfighter Vaandaam##79337
accept The Fists of Vaandaam##35883 |instant |goto 42.76,62.97
step
kill Rippling Steamfury##83458+, Turbulent Steamfury##81685+
collect 100 Quenching Waters##113009 |q On the Mend##35026/1 |goto Gorgrond 43.4,61.5
You can find more around [Gorgrond 45.03,60.84]
step
kill Stoneshamble Basilisk##74962+
clicknpc Decaying Basilisk##83405+
|tip They look like dead basilisks on the ground around this area.
collect 9 Basilisk Meat##113504 |q Basilisk Butcher##35870/1 |goto Gorgrond 43.6,60.8
stickystart "lesserbrimfury"
stickystart "Grievousdepthworm"
stickystart "Brimstone"
step
label "Brimstone"
_Go up_ the hill |goto Gorgrond/0 44.0,55.9 < 20 |only if walking
accept Bonus Objective: Brimstone Springs##36603 |goto Gorgrond/0 40.4,57.5
kill 15 Sulfuric Ooze##85960 |q Bonus Objective: Brimstone Springs##36603/2 |goto Gorgrond/0 40.4,57.5
|tip They are found in the pools of water around the area.
You can find more around [Gorgrond 40.3,60.7]
step
label "Grievousdepthworm"
kill 3 Grievous Depthworm##85942 |q Bonus Objective: Brimstone Springs##36603/3 |goto Gorgrond/0 40.3,53.4
step
label "lesserbrimfury"
kill 8 Lesser Brimfury##85924 |q Bonus Objective: Brimstone Springs##36603/1 |goto Gorgrond 42.5,55.2
step
_Go up_ the path |goto Gorgrond 45.1,55.4 < 10 |only if walking
talk Nisha##81674
turnin On the Mend##35026 |goto 45.86,54.96
turnin Basilisk Butcher##35870 |goto 45.86,54.96
step
talk Rexxar##83569
accept Is This One of Yours?##36508 |goto 46.03,54.75
Tell Rexxar _"This is one of my allies."_
Vouch For Rangari Erdanii |q Is This One of Yours?##36508/1 |goto 46.03,54.75
step
talk Rangari Erdanii##82610
turnin Is This One of Yours?##36508 |goto 46.20,55.09
accept The Crystal Shard##36208 |goto 46.20,55.09
accept Hard Shell##36210 |goto 46.20,55.09
step
talk Rexxar##80856
accept Bad at Breaking##35037 |goto 46.03,54.75
accept Nisha's Vengeance##35934 |goto 46.03,54.75
stickystart "gromkargrunts"
step
kill Mangled Boulderbreaker##85988 |q Bad at Breaking##35037/1 |goto 48.02,54.36
step
_Run up_ the hill |goto Gorgrond 47.8,53.0 < 20 |only if walking
_Enter_ the camp up on the hill |goto Gorgrond 48.2,51.8 < 20 |only if walking
kill Gronnslaver Raz##83774 |q Bad at Breaking##35037/2 |goto 47.75,51.62
step
click Weaponization Orders##233391
|tip It looks like a large book laying inside of a wagon.
accept The Gronn Strategy##35925 |goto 47.73,52.07
step
label "gromkargrunts"
kill 10 Grom'kar Grunt##75091 |q Nisha's Vengeance##35934/1 |goto 47.78,53.11
stickystart "gorencrystals_SR"
step
kill Boneyard Gorger##81206+, Boneyard Tunneler##81518+
|tip Get close to the rumbling fissures on the ground to get a group of Boneyard Gorgers to spawn, if you need more mobs to kill.
collect 9 Goren Shell##112786 |q Hard Shell##36210/1 |goto 45.23,52.39
step
label "gorencrystals_SR"
clicknpc Longtooth Gorger##83489+
|tip They look like dead bodies on the ground around this area.
collect 25 Goren Crystal##112911 |q The Crystal Shard##36208/1 |goto 45.23,52.39
step
_Run up_ the path |goto Gorgrond 45.0,55.3 < 20 |only if walking
talk Rexxar##80856
turnin Bad at Breaking##35037 |goto 46.03,54.75
turnin Nisha's Vengeance##35934 |goto 46.03,54.75
turnin The Gronn Strategy##35925 |goto 46.03,54.75
step
talk Rangari Erdanii##82610
turnin The Crystal Shard##36208 |goto 46.20,55.09
turnin Hard Shell##36210 |goto 46.20,55.09
accept What's Under There?##36209 |goto 46.20,55.09
step
use Goren Disguise##112958
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the First Tunnel Leads |q What's Under There?##36209/1 |goto 46.87,55.37
step
clicknpc Bluff Rylak##86022
|tip It looks like a large two-headed winged creature laying on the ground.
Consume the Rylak |q What's Under There?##36209/2 |goto Gorgrond 45.8,50.4
step
use Goren Disguise##112958
|tip Make sure your Goren Disguise is still active.
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the Second Tunnel Leads |q What's Under There?##36209/3 |goto Gorgrond/0 45.8,50.4
See Where the Third Tunnel Leads |q What's Under There?##36209/4 |goto Gorgrond/0 45.8,50.4
step
Make sure your _Goren Disguise_ is still active |use Goren Disguise##112958
clicknpc Grom'kar Messenger##84503
|tip It looks like a dead brown orc laying on the ground.
collect Grom'kar Dispatch##114963 |q What's Under There?##36209/5 |goto 43.16,42.29
step
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
Take the Tunnel Back to Breaker's Crown |q What's Under There?##36209/6 |goto 43.04,42.49
step
talk Rangari Erdanii##82610
turnin What's Under There?##36209 |goto 46.20,55.09
accept Leave Every Soldier Behind##36223 |goto 46.20,55.09
step
talk Rexxar##80856
accept Fair Warning##35128 |goto 46.03,54.75
step
talk Nisha##81674 |goto 45.88,54.97
Select _Ride Nisha to Fissure of Fury._
Fly to Fissure of Fury |goto 43.95,48.77 < 20 |noway |c
only if havequest(35128) or havequest(36223)
stickystart "ogronspinecrushers"
step
_Continue_ following the path down |goto Gorgrond/18 39.7,41.8 < 30 |walk
talk Corporal Thukmar##81213
|tip He's at the bottom of the cave.  Follow the spiral path down.
Select _Put the Corporal out of his misery._
Find Corporal Thukmar |q Leave Every Soldier Behind##36223/1 |goto Gorgrond/19 45.0,85.4
step
click Thukmar's Research##233594
|tip It's a large book on the ground.
collect Thukmar's Intel##113629 |q Leave Every Soldier Behind##36223/2 |goto Gorgrond/19 45.0,85.4
step
kill Borogahn##81043 |q Fair Warning##35128/2 |goto  Gorgrond/19 31.3,74.9
step
label "ogronspinecrushers"
kill 8 Ogron Spinecrusher##81240 |q Fair Warning##35128/1 |goto Gorgrond/19 55.3,80.2
step
click Goren Tunnel##235115
|tip It looks like a raised mound of dirt.
accept A Great Escape##35210 |goto Gorgrond/19 35.18,67.64
step
click Goren Tunnel##235115
|tip It looks like a raised mound of dirt.
Take the Tunnel to Rexxar |q A Great Escape##35210/1 |goto Gorgrond/19 34.6,66.6
step
talk Rexxar##84131
turnin Leave Every Soldier Behind##36223 |goto Gorgrond 43.9,48.9
turnin Fair Warning##35128 |goto Gorgrond 43.9,48.9
turnin A Great Escape##35210 |goto Gorgrond 43.9,48.9
accept Eye in the Sky##35139 |goto Gorgrond 43.9,48.9
step
talk Nisha##83933
Select _Place your hand on Nisha's head._
Scout with Nisha |q Eye in the Sky##35139/1 |goto 43.86,48.86
step
talk Rexxar##84131
turnin Eye in the Sky##35139 |goto 43.94,48.83
accept Chains of Iron##35702 |goto 43.94,48.83
step
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 44.7,48.2 < 15
kill 5 Canyon Boulderbreaker##81246 |q Bonus Objective: Valley of Destruction##36480/1 |goto 44.69,47.82
kill 20 Goren Nibbler##81775 |q Bonus Objective: Valley of Destruction##36480/2 |goto 46.07,47.61
Break #15# Goren Eggs |q Bonus Objective: Valley of Destruction##36480/3 |goto 46.22,47.20
|tip They look like clusters of gray-ish eggs on the ground around this area. Walk on them to break them.
step
_Follow_ the path |goto Gorgrond 48.1,45.8 < 20 |only if walking
kill Captain Brak##81254 |q Chains of Iron##35702/1 |goto 49.22,44.81
|tip You will need to fight through waves of enemies before she appears. You will have help killing the waves, though.
step
click Heart of the Magnaron##231775
|tip It's a giant disk with a yellow core laying against the mountainside.
collect Heart of the Magnaron##112680 |q Chains of Iron##35702/2 |goto 49.73,43.85
step
talk Rangari Jonaa##81076
turnin The Sparring Arena##35137 |goto Gorgrond 52.8,59.9
step
talk Vindicator Maraad##75127
turnin Chains of Iron##35702 |goto 52.86,59.70
step
talk Rangari Erdanii##85278
accept May I Be of Service?##36833 |instant |goto Gorgrond/0 53.3,59.7
step
accept Bonus Objective: Mistcreep Mire##36563 |goto 52.42,67.57
kill 5 Lernaea Vilescale##85693 |q Bonus Objective: Mistcreep Mire##36563/1 |goto 52.42,67.57
clicknpc Hydra Egg##85786+
|tip They look like big white eggs on the ground around this area.
Break #25# Hydra Eggs |q Bonus Objective: Mistcreep Mire##36563/2 |goto 52.42,67.57
stickystart "infestedtoxic"
step
accept Bonus Objective: The Razorbloom##36500
_Follow_ the path up |goto Gorgrond 50.4,70.8 < 20 |only if walking
_Go up_ the small hill |goto Gorgrond 49.2,73.0 < 20 |only if walking
_Enter_ the small house |goto Gorgrond 49.3,71.4 < 10 |only if walking
kill Voice of Iyu##81634 |q Bonus Objective: The Razorbloom##36500/2 |goto 49.43,71.66
step
label "infestedtoxic"
accept Bonus Objective: The Razorbloom##36500
kill Infested Orc##81617+, Infested Behemoth##82841+
kill 12 Infested |q Bonus Objective: The Razorbloom##36500/1 |goto Gorgrond 48.3,71.4
Squish #25# Toxic Slimemold |q Bonus Objective: The Razorbloom##36500/3 |goto Gorgrond 48.3,71.4
|tip They are small green slimes all over the area in groups. Walk on them to squish them.
stickystart "tangle1"
step
accept Bonus Objective: Tangleheart##36564
_Follow_ the path |goto Gorgrond 52.2,68.4 < 20 |only if walking
_Go through_ the path of huge thorny vines |goto Gorgrond 56.1,71.5 < 10 |only if walking
kill Ontogen the Harvester##82372 |q Bonus Objective: Tangleheart##36564/3 |goto Gorgrond 59.9,71.1
step
label "tangle1"
accept Bonus Objective: Tangleheart##36564 |goto Gorgrond/0 60.6,67.0
click Pollen Pod##235903
|tip They are yellow-orange spiky looking plant blulbs on the ground around this area.
Destroy #10# Pollen Pods |q Bonus Objective: Tangleheart##36564/2 |goto Gorgrond/0 60.6,67.0
kill 15 Tangleheart Cultivator##82322 |q Bonus Objective: Tangleheart##36564/1 |goto Gorgrond/0 61.7,64.5
|tip They aren't heavily packed together, so just run around this whole area and kill them when you find them.
step
_Go down_ the path |goto Gorgrond 60.2,66.3 < 20 |only if walking
talk Khaano##80762
turnin Rangari in the Red##35666 |goto 59.32,56.35
accept Scout Forensics##35633 |goto 59.32,56.35
step
talk Dying Rangari##82499
accept Vengeance for the Fallen##35640 |goto 59.51,57.92
stickystart "fungallurcher"
step
clicknpc Dead Rangari##80809
|tip They are laying on the ground in this area.
Recover #5# Rangari Pouches |q Scout Forensics##35633/1 |goto 59.44,59.57
step
label "fungallurcher"
kill 7 Fungal Lurcher##80714 |q Vengeance for the Fallen##35640/1 |goto 59.44,59.57
collect Glowing Red Pod##113260 |n
use Glowing Red Pod##113260
accept Mysterious Pod##35642 |goto 59.42,59.34
step
talk Khaano##82476
turnin Scout Forensics##35633 |goto 58.26,59.90
turnin Vengeance for the Fallen##35640 |goto 58.26,59.90
turnin Mysterious Pod##35642 |goto 58.26,59.90
accept Mercy for the Living##35644 |goto 58.26,59.89
accept The Secret of the Fungus##35645 |goto 58.26,59.89
step
click Glowing Mushroom##231769
|tip They look like huge mushrooms with brown tops.
collect 5 Glowing Mushroom##112672 |q The Secret of the Fungus##35645/1 |goto 57.18,60.30
kill 6 Fungus Covered Shambler##80721 |q Mercy for the Living##35644/1 |goto 57.18,60.30
step
talk Khaano##82476
turnin Mercy for the Living##35644 |goto 58.26,59.89
turnin The Secret of the Fungus##35645 |goto 58.26,59.89
accept A Grim Harvest##35647 |goto 58.26,59.90
accept A Heartfelt Search##35656 |goto 58.26,59.90
stickystart "enlargedspore"
step
click Drained Fungal Heart##233046
|tip It's a large red flower with yellow petals.
Inspect the Strange Fungus Site |q A Heartfelt Search##35656/1 |goto 58.91,62.53
step
talk Khaano##82477
turnin A Heartfelt Search##35656 |goto 58.96,62.51
step
label "enlargedspore"
kill Fungal Stomper##80739+
collect 3 Enlarged Stomper Spore Pod##112394 |q A Grim Harvest##35647/1 |goto 59.03,63.88
step
talk Khaano##82477
turnin A Grim Harvest##35647 |goto 58.96,62.51
accept Heart of the Fen##35659 |goto 58.95,62.51
step
kill Khaano##86282
Stop Khaano |q Heart of the Fen##35659/1 |goto 61.19,61.84
step
_Go up_ the big hill with rocks |goto Gorgrond 53.7,62.2 < 20 |only if walking
talk Rangari D'kaan##75146
turnin Heart of the Fen##35659 |goto 53.32,59.89
step
_Follow_ the path |goto Gorgrond 52.4,68.1 < 30 |only if walking
_Go up_ the path between the hills |goto Gorgrond 50.5,70.5 < 30 |only if walking
_Run up_ the hill |goto Gorgrond 49.6,74.2 < 20 |only if walking
_Follow_ the path up the hill |goto Gorgrond 51.0,77.0 < 20 |only if walking
_Enter_ the cave |goto Gorgrond 51.4,77.6 < 10 |walk
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.72
stickystart "bonuscaves"
step
accept Bonus Objective: The Forgotten Caves##34724
_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10 |walk
_Run or jump_ up the path next to the cave pillar |goto Gorgrond 53.4,79.5 < 10 |walk
kill Gorg the Host##76496 |q Bonus Objective: The Forgotten Caves##34724/3 |goto Gorgrond/0 53.7,79.5
step
label "bonuscaves"
accept Bonus Objective: The Forgotten Caves##34724
All around in the cave:
kill 15 Spider Egg Sac##76548 |q Bonus Objective: The Forgotten Caves##34724/2 |goto Gorgrond/0 51.5,78.8
|tip They looks like big white wriggling cocoons.
kill Pale Spiderwalker##76534+, Pale Flinger##76465+
Kill #12# Pale |q Bonus Objective: The Forgotten Caves##34724/1 |goto Gorgrond/0 51.5,78.8
stickystart "podlingsjars"
step
_Leave_ the cave |goto Gorgrond 51.4,77.6 < 10 |walk
_Follow_ the path into the valley |goto Gorgrond 50.5,77.9 < 10 |only if walking
_Go up_ and _follow_ the path |goto Gorgrond 50.7,80.0 < 20 |only if walking
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q Bonus Objective: Ruins of the First Bastion##35881/3 |goto Gorgrond 52.1,81.3
step
label "podlingsjars"
accept Bonus Objective: Ruins of the First Bastion##35881
kill Frenzied Spitter##83450+, Frenzied Forager##83449+
Kill #20# Frenzied Podlings |q Bonus Objective: Ruins of the First Bastion##35881/1 |goto Gorgrond 50.4,80.0
click Ancient Ogre Hoard Jar##233296
|tip They look like brown and white containers that look like vases on the ground around this area.
Loot #8# Ancient Jars |q Bonus Objective: Ruins of the First Bastion##35881/2 |goto Gorgrond 50.4,80.0
stickystart "tailthrasheraxebreak"
step
_Follow_ the path to _leave_ the valley |goto Gorgrond 49.8,80.3 < 10 |only if walking
_Follow_ the path to the road |goto Gorgrond 48.7,81.8 < 20 |only if walking
_Run up_ the hill |goto Gorgrond 48.3,86.1 < 20 |only if walking
_Enter_ the cave |goto Gorgrond 44.7,90.1 < 10 |walk
accept Bonus Objective: Tailthrasher Basin##36520
kill Skull Thrash##85733 |q Bonus Objective: Tailthrasher Basin##36520/3 |goto Gorgrond 44.4,88.8
step
label "tailthrasheraxebreak"
kill Tailthrasher Brute##85724+, Tailthrasher Stalker##85718+, Tailthrasher Ambusher##85703+, Tailthrasher Vinebender##85725+
Kill #12# Tailthrasher Saberon |q Bonus Objective: Tailthrasher Basin##36520/1 |goto Gorgrond 44.9,90.9
clicknpc Rope Spike##85810
|tip They look like bundles of wooden sticks standing upright around this area, with various colored toucan birds flying in circles above them.
Free #6# Jungle Axebreaks |q Bonus Objective: Tailthrasher Basin##36520/2 |goto Gorgrond 44.9,90.9
step
talk Rangari Yaval##84507
fpath Bastion Rise |goto Gorgrond 46.4,92.4
stickystart "bloomweavers"
step
_Go around_ the huge rocks |goto Gorgrond 46.8,88.6 < 20 |only if walking
_Follow_ the path |goto Gorgrond 45.1,84.9 < 20 |only if walking
_Jump up_ into the opening of this tree house |goto Gorgrond 43.8,84.2 < 10 |walk
accept Bonus Objective: Evermorn Springs##36504
kill Infested Ogron##82062 |q Bonus Objective: Evermorn Springs##36504/2 |goto Gorgrond 42.8,80.6
step
_Run up_ the path |goto Gorgrond 42.5,81.9 < 20 |only if walking
_Follow_ the green path |goto Gorgrond 40.9,84.0 < 20 |only if walking
kill 3 Dew Master##81553 |q Bonus Objective: Evermorn Springs##36504/3 |goto Gorgrond 39.6,81.7
step
label "bloomweavers"
accept Bonus Objective: Evermorn Springs##36504
kill 10 Bloom Weaver##81575 |q Bonus Objective: Evermorn Springs##36504/1 |goto Gorgrond 43.5,80.0
step
_Follow_ the path to leave the area |goto Gorgrond 44.1,79.6 < 10 |only if walking
_Follow_ the road |goto Gorgrond 46.0,78.3 < 20 |only if walking
talk Rangari Nogo##81888
fpath Deeproot |goto Gorgrond 46.5,76.6
step
talk Vindicator Maraad##75127
accept Strike While the Iron is Hot##36576 |goto Gorgrond 52.85,59.69
step
talk Rangari Rajess##81074
Tell her _"I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q Strike While the Iron is Hot##36576/1 |goto Gorgrond 52.8,59.3
Enter the scenario |goto Gorgrond 45.1,18.5 < 50 |noway |c |only if havequest(36576)
step
talk Yrel##85619
Tell her _"Let's go."_
Follow Yrel
Watch the dialogue
Confront Commander Gar |scenariogoal 1/25388 |goto Gorgrond/0 44.7,17.8
step
Use the Artifact to Eliminate your Enemies |scenariogoal 25389 |goto Gorgrond 44.4,16.7
|tip It's a button that appears in the middle of your screen. Use it whenever you can when enemies are near.
step
Defeat the Incoming Enemies |scenariogoal 25390 |goto Gorgrond 44.3,16.2
|tip Continue using your Access Artifact skill whenever you can.
step
kill Goc##85580 |goto Gorgrond 44.0,15.6
|tip Continue using your Access Artifact skill whenever you can. Your helpers will do most of the work killing Goc, so just help them.
Defeat Goc |scenariogoal 25391 |goto Gorgrond 44.0,15.6
step
kill Commander Gar##85571 |goto Gorgrond 44.1,15.7
|tip Stay close to Yrel while fighting, she will cast bubbles of healing that will keep you healed up so you don't die. You will no longer be able to use your Access Artifact skill.
Defeat Commander Gar |scenariogoal 25392 |goto Gorgrond 44.1,15.7
Complete the Iron Approach |q Strike While the Iron is Hot##36576/2 |goto 44.30,16.58
step
_Follow_ the path |goto Gorgrond 44.5,19.3 < 30 |only if walking
talk Nisha##84700
fpath Iron Docks |goto Gorgrond 43.1,20.2
step
talk Vindicator Maraad##75127
turnin Strike While the Iron is Hot##36576 |goto 52.84,59.68
step
_Follow_ the cliff around the mountain |goto Gorgrond 48.4,51.5 < 20 |only if walking
talk Altauur##85426
turnin Seeking the Scout##36432 |goto 49.40,49.64
accept Plant Pruning##36436 |goto 49.40,49.64
accept Ambassador to the Ancient##36437 |goto 49.40,49.64
stickystart "dionordefendersLC"
step
talk Birchus##81723
Tell him _"Thank you for not killing me. What duty have you failed?"_
Talk to Birchus |q Ambassador to the Ancient##36437/1 |goto 50.33,47.51
step
label "dionordefendersLC"
kill Dionor Seedpriest##81721+, Primal Growth##81769+
Slay #12# Dionor Defenders |q Plant Pruning##36436/1 |goto 50.75,46.16
step
talk Altauur##85432
|tip He's inside this small cave.
turnin Plant Pruning##36436 |goto 51.32,47.97
turnin Ambassador to the Ancient##36437 |goto 51.32,47.97
accept Beatface vs. Boulder##36438 |goto 51.32,47.97
step
Go through _rock archway_ |goto 50.26,49.73 < 10 |only if walking
_Run up_ to the _Large Boulder_ |goto 50.59,51.44 < 5 |only if walking
click Large Boulder
|tip It's a large rock blocking the path.
Breach the Saberon Camp |q Beatface vs. Boulder##36438/1 |goto 50.59,51.44
step
talk Altauur##85431
turnin Beatface vs. Boulder##36438 |goto Gorgrond 50.9,51.4
accept Saberon Population Reduction##36440 |goto Gorgrond 50.9,51.4
step
click Saberon Stash##234474
|tip It's a pot covered with leather tied by a rope.
accept Reclaiming Property##36441 |goto Gorgrond 51.0,51.6
stickystart "steamscar_primalistsLC"
step
click Saberon Stash##234474
|tip They look like pots covered with leather tied by a rope on the ground around this area. They can also be inside the small caves.
collect 8 Saberon Herb Bundle##115442 |q Reclaiming Property##36441/1 |goto 51.12,51.04
step
label "steamscar_primalistsLC"
kill 10 Steamscar Primalist##81747 |q Saberon Population Reduction##36440/1 |goto Gorgrond/0 52.3,50.4
step
_Run up_ the path |goto Gorgrond 52.1,50.5 < 20 |only if walking
talk Altauur##85436
turnin Saberon Population Reduction##36440 |goto 52.86,51.80
accept Taking the Death Bloom##36442 |goto 52.86,51.78
turnin Reclaiming Property##36441 |goto 52.86,51.80
step
_Enter_ the cave |goto Gorgrond 53.8,51.9 < 10 |walk
kill Smokemaster Snarl##81749
Acquire the Death Bloom |q Taking the Death Bloom##36442/1 |goto 54.31,52.65
step
talk Birchus##82302
turnin Taking the Death Bloom##36442 |goto 50.32,47.50
accept Laying Dionor to Rest##36443 |goto 50.32,47.50
|tip Wait for the ritual to complete.
turnin Laying Dionor to Rest##36443 |goto 50.33,47.49
step
talk Vindicator Maraad##75127
accept News from Talador##36495 |goto 52.87,59.71
step
talk Bodrick Grey##81492
turnin News from Talador##36495 |goto Lunarfall 38.31,36.78
accept The Critical Path##37183 |goto Lunarfall 38.31,36.78
step
talk Cordana Felsong##80645
accept Meet Us at Starfall Outpost##33359 |goto Lunarfall 42.9,45.0
step
_Go through_ the doorway |goto Lunarfall 49.6,63.7 < 10 |only if walking
_Follow_ the path |goto Shadowmoon Valley D 30.3,25.8 < 10 |only if walking
talk Archmage Khadgar##77184
turnin Meet Us at Starfall Outpost##33359 |goto Shadowmoon Valley D/0 29.2,25.7
accept Catching His Eye##33062 |goto 29.21,25.73
step
talk Delas Moonfang##72623
accept Shadowmoonwell##33113 |goto Shadowmoon Valley D 29.5,24.5
step
_Run on_ this road |goto Shadowmoon Valley D 27.3,27.5 < 20 |only if walking
click Lunar Rock##223239
|tip It's a huge white rock sitting in the water.
collect Chunk of Lunar Rock##102491 |q Shadowmoonwell##33113/1 |goto Shadowmoon Valley D 23.2,20.9
step
_Get out_ of the water |goto Shadowmoon Valley D 23.7,19.6 < 10 |only if walking
_Follow_ the grassy path |goto Shadowmoon Valley D 23.9,17.9 < 20 |only if walking
_Enter_ the cave |goto Shadowmoon Valley D 23.0,16.9 < 20 |walk
kill All-Seeing Eye##72783
Capture the All-Seeing Eye |q Catching His Eye##33062/1 |goto Shadowmoon Valley D 21.77,16.13
step
_Leave_ the cave |goto Shadowmoon Valley D 23.0,16.9 < 20 |walk
_Run on_ this road |goto Shadowmoon Valley D 25.4,19.2 < 20 |only if walking
_Turn and run_ in the grass here |goto Shadowmoon Valley D 25.7,26.2 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 27.7,24.4 < 10 |only if walking
talk Archmage Khadgar##77184
turnin Catching His Eye##33062 |goto 29.21,25.72
accept Shrouding Stones##33115 |goto 29.21,25.72
step
talk Delas Moonfang##72623
turnin Shadowmoonwell##33113 |goto Shadowmoon Valley D 29.5,24.5
accept A Curse Upon the Woods##33120 |goto Shadowmoon Valley D 29.5,24.5
stickystart "curseuponthewoods"
step
_Run on_ this road |goto Shadowmoon Valley D 27.3,27.5 < 30 |only if walking
_Continue_ following the road |goto Shadowmoon Valley D/0 24.7,25.2 < 30 |only if walking
_Run down_ the path |goto Shadowmoon Valley D 25.3,16.9 < 20 |only if walking
click Shrouding Stone##222690
|tip It looks like a large stone pillar with runes carved in them.
Destroy the Northern Shrouding Stone |q Shrouding Stones##33115/2 |goto 25.99,15.88
step
_Run on_ this road |goto Shadowmoon Valley D 25.1,17.5 < 10 |only if walking
_Follow_ the path down |goto Shadowmoon Valley D 24.7,21.6 < 10 |only if walking
click Shrouding Stone##227272
|tip It looks like a large stone pillar with runes carved in them.
Destroy the Central Shrouding Stone |q Shrouding Stones##33115/1 |goto 23.07,24.48
step
_Run up_ the hill |goto Shadowmoon Valley D 22.9,25.4 < 10 |only if walking
_Go up_ the path |goto Shadowmoon Valley D 23.0,27.1 < 10 |only if walking
click Shrouding Stone##227272
|tip It looks like a large stone pillar with runes carved in them.
Destroy the Southern Shrouding Stone |q Shrouding Stones##33115/3 |goto Shadowmoon Valley D 23.8,28.7
step
label "curseuponthewoods"
kill Corrupted Toad##73805+, Cursed Wolf##73101+
Kill #10# Fel-cursed creatures |q A Curse Upon the Woods##33120/1 |goto Shadowmoon Valley D 22.8,27.2
step
_Run back_ to the road |goto Shadowmoon Valley D 25.3,26.2 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 27.7,24.4 < 10 |only if walking
talk Archmage Khadgar##77184
turnin Shrouding Stones##33115 |goto 29.20,25.72
accept Ominous Portents##33112 |goto 29.20,25.72
step
talk Delas Moonfang##72623
turnin A Curse Upon the Woods##33120 |goto Shadowmoon Valley D 29.5,24.5
step
talk All-Seeing Eye##72871
Tell him _"Begin the compulsion of the All-Seeing Eye."_
Use the abilities on your action bar
|tip Use the Vial of Moon Water ability until the Scripture of Elune ability is available, then use the Scripture of Elune ability. Repeat until you complete the objective.
Compel the All-Seeing Eye |q Ominous Portents##33112/1 |goto 28.74,25.21
step
talk Archmage Khadgar##77184
turnin Ominous Portents##33112 |goto 29.20,25.72
accept Soul Shards of Summoning##33066 |goto 29.21,25.73
step
talk Cordana Felsong##72637
accept Cleaning Up Gul'var##33269 |goto 29.27,25.69
stickystart "gul'varorcs"
step
_Run on_ the road |goto Shadowmoon Valley D 27.0,27.3 < 20 |only if walking
_Follow_ the path |goto Shadowmoon Valley D 24.4,24.5 < 20 |only if walking
_Enter_ the doorway |goto Shadowmoon Valley D 20.8,25.6 < 20 |only if walking
kill Corruptor Kurgoth##72647
collect Kurgoth's Shard##106986 |q Soul Shards of Summoning##33066/3 |goto 18.27,24.15
step
_Run up_ the path |goto Shadowmoon Valley D 19.6,26.0 < 20 |only if walking
_Go up_ the hill |goto Shadowmoon Valley D 18.6,27.3 < 20 |only if walking
kill Fel Mistress Hagra##72677
collect Hagra's Shard##109186 |q Soul Shards of Summoning##33066/1 |goto 20.88,27.31
step
kill Grogal the Harvester##72674
collect Grogal's Shard##109187 |q Soul Shards of Summoning##33066/2 |goto 20.88,31.54
step
label "gul'varorcs"
kill Shadow Warrior##77518+, Gul'var Peon##77522+, Lesser Warlock##77517+
kill 20 Gul'var orcs |q Cleaning Up Gul'var##33269/1 |goto Shadowmoon Valley D 20.8,28.9
step
_Follow_ the path up |goto Shadowmoon Valley D 20.3,29.2 < 10 |only if walking
talk Image of Archmage Khadgar##77417
turnin Soul Shards of Summoning##33066 |goto 19.08,28.56
accept Heart On Fire##33168 |goto 19.08,28.56
step
kill Krosnis##77488
collect Dulled Claw##106867 |q Heart On Fire##33168/1 |goto 17.83,27.57
step
_Run up_ the hill |goto Shadowmoon Valley D 18.9,27.6 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 20.3,29.2 < 10 |only if walking
talk Image of Archmage Khadgar##77417
turnin Heart On Fire##33168 |goto 19.08,28.57
accept Forging the Soul Trap##33114 |goto 19.08,28.57
step
use Gul'var Soul Shards##109224
Forge the Gul'dan Soul Trap |q Forging the Soul Trap##33114/1 |goto 19.08,28.57 |only if walking
step
talk Image of Archmage Khadgar##77417
turnin Forging the Soul Trap##33114 |goto 19.08,28.57
accept To Catch a Shadow##33116 |goto 19.08,28.57
step
_Follow_ the path up |goto Shadowmoon Valley D 19.4,29.6 < 20 |only if walking
Use Gul'dan's Soul Trap on Gul'dan
Use Gul'dan's Soul Trap |use Gul'dan's Soul Trap##109246 |q To Catch a Shadow##33116/1 |goto 18.01,30.37
step
kill Razuun##72793 |q To Catch a Shadow##33116/2 |goto 17.90,30.09
step
_Jump down_ here |goto Shadowmoon Valley D 21.4,27.4 < 10 |only if walking
_Run up_ the hill |goto Shadowmoon Valley D 23.7,24.6 < 20 |only if walking
_Follow_ the road |goto Shadowmoon Valley D 24.6,25.0 < 10 |only if walking
_Turn and run_ in the grass here |goto Shadowmoon Valley D 25.7,26.2 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 27.7,24.4 < 10 |only if walking
talk Archmage Khadgar##77184
turnin To Catch a Shadow##33116 |goto Shadowmoon Valley D/0 29.2,25.7
step
talk Cordana Felsong##72637
turnin Cleaning Up Gul'var##33269 |goto 29.26,25.71
step
#include "Garrison_Crowler"
accept Shadowmoon Invasion!##37289
Speak with Sergeant Crowler and choose _"Prepare to battle the Shadowmoon Clan"_ |q Shadowmoon Invasion!##37289/1
step
Follow Sergeant Crowler |scenariogoal 25172 |goto Lunarfall/0 45.6,52.0
scenariostage 1
only if not completedq(37289)
step
kill Shadowmoon Voidaxe##88604
kill 1 Shadowmoon Ritualist##88605
Repel the Shadowmoon Invaders |scenariogoal 27281 |goto Lunarfall/0 45.6,52.0
scenariostage 2
only if not completedq(37289)
step
kill Shadowmoon Voidaxe##88604+
kill Shadowmoon Ritualist##88605+, Horde Opportunist##87025+, Darkwing Scavenger##89224+
Defend against the Shadowmoon Invaders for _5:00_ |scenariogoal 26775 |goto Lunarfall/0 45.6,52.0
|tip Kill the Horde Opportunist quckly when it spawns.
scenariostage 3
only if not completedq(37289)
step
Clean up the remaining Shadowmoon Forces |scenariogoal 27227 |goto Lunarfall/0 45.6,52.0
|tip You can revive fallen garrison soldiers by clicking on them before the red drop over them goes empty.
scenariostage 4
only if not completedq(37289)
step
Return to the center of your garrison |scenariogoal 24584 |goto Lunarfall/0 45.6,52.0
scenariostage 5
only if not completedq(37289)
step
kill Primordial Horror##88597
Defeat the Void Spawn |scenariogoal 24735 |goto Lunarfall/0 45.6,52.0
scenariostage 6
only if not completedq(37289)
step
#include "Garrison_Crowler"
turnin Shadowmoon Invasion!##37289 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)"
step
label "loggingcamp"
talk Glirin##85119
accept Tangleheart##35708 |goto Gorgrond 53.0,59.8
step
talk Thaelin Darkanvil##75136
turnin We Need An Outpost##35063 |goto 53.00,59.79
accept Deeproot##35212 |goto 53.00,59.79
step
talk Rangari Rajess##81074
fpath Highpass |goto Gorgrond 52.8,59.3
step
talk Rangari D'kaan##75146
accept Rangari in the Red##35666 |goto 53.31,59.89
accept Seeking the Scout##36432 |goto 53.31,59.89
step
talk Trader Yula##85968 |goto Gorgrond 53.2,59.8
home Highpass
step
accept Bonus Objective: Mistcreep Mire##36563 |goto 52.42,67.57
kill 5 Lernaea Vilescale##85693 |q Bonus Objective: Mistcreep Mire##36563/1 |goto 52.42,67.57
clicknpc Hydra Egg##85786+
|tip They look like big white eggs on the ground around this area.
Break #25# Hydra Eggs |q Bonus Objective: Mistcreep Mire##36563/2 |goto 52.42,67.57
step
talk Glirin##82575
turnin Tangleheart##35708 |goto 55.92,71.55
accept Growing Wood##35652 |goto 55.92,71.55
accept Lost Lumberjack##36368 |goto 55.92,71.55
step
talk Frenna##82569
turnin Lost Lumberjack##36368 |goto 57.05,71.93
accept Chapter I: Plant Food##35654 |goto 57.05,71.93
accept Chapter II: The Harvest##35651 |goto 57.05,71.93
accept Chapter III: Ritual of the Charred##35650 |goto 57.05,71.93
stickystart "TH1"
step
kill Ontogen the Harvester##82372 |q Chapter II: The Harvest##35651/1 |goto 59.88,71.07
step
label "TH1"
click Pollen Pod##235903
|tip They are yellow-orange spiky looking plant blulbs on the ground around this area.
Destroy #8# Pollen Pods |q Chapter I: Plant Food##35654/1 |goto 59.02,70.50
kill Greenbough Ancient##82360+, Emberbark Ancient##82284+, Tangleheart Cultivator##82322+
Kill #4# Ancients |q Chapter III: Ritual of the Charred##35650/1 |goto 59.02,70.50
collect 100 Ancient Growth Sap##113136 |q Growing Wood##35652/1 |goto 59.62,70.10
step
talk Glirin##85130
turnin Growing Wood##35652 |goto 60.71,64.77
turnin Chapter I: Plant Food##35654 |goto 60.71,64.77
turnin Chapter II: The Harvest##35651 |goto 60.71,64.77
turnin Chapter III: Ritual of the Charred##35650 |goto 60.71,64.77
step
_Jump_ over the big green vines and then _jump down_ |goto Gorgrond 60.6,64.1 < 10 |only if walking
talk Khaano##80762
turnin Rangari in the Red##35666 |goto 59.32,56.35
accept Scout Forensics##35633 |goto 59.32,56.35
step
talk Dying Rangari##82499
accept Vengeance for the Fallen##35640 |goto 59.51,57.92
stickystart "fungallurcher"
step
clicknpc Dead Rangari##80809
|tip They are laying on the ground in this area.
Recover #5# Rangari Pouches |q Scout Forensics##35633/1 |goto 59.44,59.57
step
label "fungallurcher"
kill 7 Fungal Lurcher##80714 |q Vengeance for the Fallen##35640/1 |goto 59.44,59.57
collect Glowing Red Pod##113260 |n
use Glowing Red Pod##113260
accept Mysterious Pod##35642 |goto 59.42,59.34
step
talk Khaano##82476
turnin Scout Forensics##35633 |goto 58.26,59.90
turnin Vengeance for the Fallen##35640 |goto 58.26,59.90
turnin Mysterious Pod##35642 |goto 58.26,59.90
accept Mercy for the Living##35644 |goto 58.26,59.89
accept The Secret of the Fungus##35645 |goto 58.26,59.89
step
click Glowing Mushroom##231769
|tip They look like huge mushrooms with brown tops.
collect 5 Glowing Mushroom##112672 |q The Secret of the Fungus##35645/1 |goto 57.18,60.30
kill 6 Fungus Covered Shambler##80721 |q Mercy for the Living##35644/1 |goto 57.18,60.30
step
talk Khaano##82476
turnin Mercy for the Living##35644 |goto 58.26,59.89
turnin The Secret of the Fungus##35645 |goto 58.26,59.89
accept A Grim Harvest##35647 |goto 58.26,59.90
accept A Heartfelt Search##35656 |goto 58.26,59.90
stickystart "enlargedspore"
step
click Drained Fungal Heart##233046
|tip It's a large red flower with yellow petals.
Inspect the Strange Fungus Site |q A Heartfelt Search##35656/1 |goto 58.91,62.53
step
talk Khaano##82477
turnin A Heartfelt Search##35656 |goto 58.96,62.51
step
label "enlargedspore"
kill Fungal Stomper##80739+
collect 3 Enlarged Stomper Spore Pod##112394 |q A Grim Harvest##35647/1 |goto 59.03,63.88
step
talk Khaano##82477
turnin A Grim Harvest##35647 |goto 58.96,62.51
accept Heart of the Fen##35659 |goto 58.95,62.51
step
kill Khaano##86282
Stop Khaano |q Heart of the Fen##35659/1 |goto 61.19,61.84
step
talk Rangari D'kaan##75146
turnin Heart of the Fen##35659 |goto 53.32,59.89
step
talk Glirin##85119
accept Lumber, I Hardly Knew 'Er##36828 |goto Gorgrond 53.0,59.8
step
_Run up_ the path |goto Gorgrond 50.2,71.2 < 30 |only if walking
_Go up_ the hill |goto Gorgrond 49.6,74.2 < 20 |only if walking
_Follow_ the path up the hill |goto Gorgrond 51.0,77.0 < 20 |only if walking
_Enter_ the cave |goto Gorgrond 51.4,77.6 < 10 |walk
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.72
stickystart "bonuscaves"
step
accept Bonus Objective: The Forgotten Caves##34724
_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10 |walk
_Run or jump_ up the path next to the cave pillar |goto Gorgrond 53.4,79.5 < 10 |walk
kill Gorg the Host##76496 |q Bonus Objective: The Forgotten Caves##34724/3 |goto Gorgrond/0 53.7,79.5
step
label "bonuscaves"
accept Bonus Objective: The Forgotten Caves##34724
All around in the cave:
kill 15 Spider Egg Sac##76548 |q Bonus Objective: The Forgotten Caves##34724/2 |goto Gorgrond/0 51.5,78.8
|tip They looks like big white wriggling cocoons.
kill Pale Spiderwalker##76534+, Pale Flinger##76465+
Kill #12# Pale |q Bonus Objective: The Forgotten Caves##34724/1 |goto Gorgrond/0 51.5,78.8
stickystart "podlingsjars"
step
_Leave_ the cave |goto Gorgrond 51.4,77.6 < 10 |walk
_Follow_ the path into the valley |goto Gorgrond 50.5,77.9 < 10 |only if walking
_Go up_ and _follow_ the path |goto Gorgrond 50.7,80.0 < 20 |only if walking
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q Bonus Objective: Ruins of the First Bastion##35881/3 |goto Gorgrond 52.1,81.3
step
label "podlingsjars"
accept Bonus Objective: Ruins of the First Bastion##35881
kill Frenzied Spitter##83450+, Frenzied Forager##83449+
Kill #20# Frenzied Podlings |q Bonus Objective: Ruins of the First Bastion##35881/1 |goto Gorgrond 50.4,80.0
click Ancient Ogre Hoard Jar##233296
|tip They look like brown and white containers that look like vases on the ground around this area.
Loot #8# Ancient Jars |q Bonus Objective: Ruins of the First Bastion##35881/2 |goto Gorgrond 50.4,80.0
stickystart "tailthrasheraxebreak"
step
_Follow_ the path to _leave_ the valley |goto Gorgrond 49.8,80.3 < 10 |only if walking
_Follow_ the path to the road |goto Gorgrond 48.7,81.8 < 20 |only if walking
_Run up_ the hill |goto Gorgrond 48.3,86.1 < 20 |only if walking
_Enter_ the cave |goto Gorgrond 44.7,90.1 < 10 |walk
accept Bonus Objective: Tailthrasher Basin##36520
kill Skull Thrash## |q Bonus Objective: Tailthrasher Basin##36520/3 |goto Gorgrond 44.4,88.8
step
label "tailthrasheraxebreak"
accept Bonus Objective: Tailthrasher Basin##36520
kill Tailthrasher Brute##85724+, Tailthrasher Stalker##85718+, Tailthrasher Ambusher##85703+, Tailthrasher Vinebender##85725+
Kill #12# Tailthrasher Saberon |q Bonus Objective: Tailthrasher Basin##36520/1 |goto Gorgrond 44.9,90.9
clicknpc Rope Spike##85810
|tip They look like bundles of wooden sticks standing upright around this area, with various colored toucan birds flying in circles above them.
Free #6# Jungle Axebreaks |q Bonus Objective: Tailthrasher Basin##36520/2 |goto Gorgrond 44.9,90.9
step
talk Rangari Yaval##84507
fpath Bastion Rise |goto Gorgrond 46.4,92.4
step
_Go around_ the huge rocks |goto Gorgrond 46.8,88.6 < 20 |only if walking
_Run on_ this road |goto Gorgrond 47.2,80.9 < 20 |only if walking
talk Thaelin Darkanvil##81588
turnin Deeproot##35212 |goto 46.07,76.85
accept The Razorbloom##35213 |goto 46.07,76.85
step
talk Rangari Kaalya##81589
accept The Infested##35214 |goto 46.12,76.66
step
talk Rangari Nogo##81888
fpath Deeproot |goto Gorgrond 46.5,76.6
stickystart "infestedbehemoth"
step
_Enter_ the vine area |goto Gorgrond 47.3,74.7 < 20 |only if walking
clicknpc Razzlebeard##81659
Find Razzlebeard |q The Razorbloom##35213/3 |goto 47.60,72.78
step
click Razzlebeard's Report##231903
|tip It's a small book laying next to Razzlebeard.
accept The Voice of Iyu##35215 |goto 47.56,72.72
step
_Follow_ the path through here |goto Gorgrond 48.3,71.5 < 20 |only if walking
kill Voice of Iyu##81634 |q The Voice of Iyu##35215/1 |goto 49.4,71.7
|tip He's inside a small house in a tree.
step
click Enriched Seeds##235129
|tip It's a large bowl full of green and red seeds.
accept Super Seeds##35216 |goto 49.46,70.92
step
_Follow_ the path through here |goto Gorgrond 48.3,71.5 < 20 |only if walking
clicknpc Lera Ashtoes##81676
Find Lera Ashtoes |q The Razorbloom##35213/1 |goto 47.38,73.40
step
clicknpc Nori Sootstash##81675
Find Nori Sootstash |q The Razorbloom##35213/2 |goto 48.13,73.57
step
label "infestedbehemoth"
kill Infested Orc##81617+, Infested Behemoth##82841+
Kill #6# Infested |q The Infested##35214/1 |goto Gorgrond 47.6,72.8
step
_Leave_ the vine area |goto Gorgrond 47.3,74.7 < 20 |only if walking
talk Rangari Kaalya##81589
turnin The Infested##35214 |goto 46.12,76.65
step
talk Thaelin Darkanvil##81588
turnin The Razorbloom##35213 |goto 46.07,76.85
turnin The Voice of Iyu##35215 |goto 46.07,76.85
turnin Super Seeds##35216 |goto 46.07,76.85
accept Dark Iron Down##35208 |goto 46.07,76.85
step
talk Yrel##81590
accept Bushwhacker##35206 |goto 46.04,76.68
step
talk Rangari Kaalya##81589
accept Pollen Power##35204 |goto 46.11,76.67
stickystart "bloomweaversLC"
step
kill Golden Pollinator##81557+, Thicket Ravager##81561+
collect 20 Potent Pollen##112909 |q Pollen Power##35204/1 |goto 45.01,78.56
step
_Follow_ the path |goto Gorgrond 44.6,79.3 < 20 |only if walking
_Go up_ the hill |goto Gorgrond 42.5,81.9 < 20 |only if walking
_Run up_ the ramp into the small tree house |goto Gorgrond 42.4,83.1 < 10 |walk
talk Burrian Coalpart##81600
turnin Dark Iron Down##35208 |goto 42.09,83.40
accept Burn the Bodies##35205 |goto 42.09,83.40
accept A Green Ogron?##36523 |goto 42.09,83.40
stickystart "burnbodies"
step
kill Infested Ogron##82062 |q A Green Ogron?##36523/1 |goto 43.00,80.66
step
Next to you:
|tip If you are in Evermorn Springs, he will be standing next to you.
talk Burrian Coalpart##81601
turnin A Green Ogron?##36523
step
label "burnbodies"
clicknpc Mulching Body##85593+
|tip They are laying on the ground all around this area. They are commonly be in the tree houses, so be sure to check those.
Burn #6# Bodies |q Burn the Bodies##35205/1 |goto 42.92,81.99
step
Next to you:
|tip If you are in Evermorn Springs, he will be standing next to you.
talk Burrian Coalpart##81601
turnin Burn the Bodies##35205
accept Coalpart's Revenge##35207
step
_Run up_ the path |goto Gorgrond 42.5,81.8 < 20 |only if walking
_Go through_ the large vines up the hill |goto Gorgrond 41.4,83.3 < 20 |only if walking
kill 3 Dew Master##81553 |q Coalpart's Revenge##35207/1 |goto 39.70,81.81
step
Next to you:
|tip If you are in Evermorn Springs, he will be standing next to you.
talk Burrian Coalpart##81601
turnin Coalpart's Revenge##35207 |goto 39.73,81.52
accept The Life Spring##35209 |goto 39.73,81.52
step
kill Utrophis##75094
collect Waters of Utrophis##112905 |q The Life Spring##35209/1 |goto 40.68,81.79
step
label "bloomweaversLC"
kill 9 Bloom Weaver##81575 |q Bushwhacker##35206/1 |goto 42.82,82.76
step
_Jump down_ the waterfall |goto Gorgrond 41.4,81.8 < 20 |only if walking
_Continue_ through the opening in the large vines |goto 44.2,79.5 < 20 |only if walking
talk Yrel##81590
turnin The Life Spring##35209 |goto 46.05,76.68
turnin Bushwhacker##35206 |goto 46.05,76.68
step
talk Rangari Kaalya##81589
turnin Pollen Power##35204 |goto 46.11,76.67
step
talk Thaelin Darkanvil##81588
accept A Heavy Helping Hand##35225 |goto 46.07,76.86
step
_Go up_ the hill into Bastion Rise |goto Gorgrond 46.6,92.9 < 20 |only if walking
_Enter_ Bastion Rise |goto 47.9,93.7 < 10 |walk
Find the Dark Iron Dwarf Survivors |q A Heavy Helping Hand##35225/1 |goto 47.55,94.10
step
talk Dark Iron Dwarf##81991
turnin A Heavy Helping Hand##35225 |goto 47.55,94.10
accept Will of the Genesaur##35234 |goto 47.55,94.10
accept Down the Goren Hole##35229 |goto 47.55,94.10
accept Just In Case##35233 |goto 47.55,94.10
stickystart "acidmouth"
stickystart "doomshot"
step
_Follow_ the path down |goto Gorgrond/0 48.3,96.1 < 10 |walk
click Will of the Genesaur##231961
|tip It's a large silver box with a yellow dome on top.
collect Will of the Genesaur##11299 |q Will of the Genesaur##35234/1 |goto Gorgrond/0 48.3,94.2
step
label "doomshot"
click Doomshot##232492
|tip They are bullet shaped containers on the ground around this area.
collect 5 Doomshot##112990 |q Just In Case##35233/1 |goto Gorgrond/0 48.5,95.5
step
label "acidmouth"
kill 5 Acidmouth Breacher##81690 |q Down the Goren Hole##35229/1 |goto Gorgrond/0 48.5,95.5
step
talk Hansel Heavyhands##75710
turnin Down the Goren Hole##35229 |goto Gorgrond/0 48.0,94.2
turnin Will of the Genesaur##35234 |goto Gorgrond/0 48.0,94.2
turnin Just In Case##35233 |goto Gorgrond/0 48.0,94.2
accept Iyu##35235 |goto Gorgrond/0 48.0,94.2
step
_Follow_ the path up |goto Gorgrond/0 48.5,95.8 < 10 |walk
_Continue following_ the path to the exit |goto Gorgrond/0 48.4,95.3 < 10 |walk
kill Iyu##78819 |q Iyu##35235/1 |goto Gorgrond/0 47.42,92.31
step
talk Yrel##75878
turnin Iyu##35235 |goto Gorgrond 47.7,93.3
accept Power of the Genesaur##35255 |goto Gorgrond 47.7,93.3
step
talk Rangari Kaalya##81772
accept Service of Rangari Kaalya##35262 |goto 47.78,93.27
stickystart "bonusstonemaul"
step
_Cross_ this bridge and _follow_ the road |goto Gorgrond 44.6,71.8 < 20 |only if walking
_Enter_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30 |only if walking
accept Bonus Objective: Stonemaul Arena##36566
step
accept Bonus Objective: Stonemaul Arena##36566
_Run up_ the wooden ramp |goto Gorgrond 41.0,66.2 < 10 |only if walking
kill Slave Hunter Krag##79623 |q Bonus Objective: Stonemaul Arena##36566/3 |goto Gorgrond/0 41.1,66.2
step
accept Bonus Objective: Stonemaul Arena##36566
kill Slave Hunter Brol##79621 |q Bonus Objective: Stonemaul Arena##36566/4 |goto Gorgrond/0 40.5,66.7
step
accept Bonus Objective: Stonemaul Arena##36566
_Run up_ the rocks |goto Gorgrond 39.7,68.1 < 10 |only if walking
_Enter_ the building |goto Gorgrond 39.0,68.2 < 10 |walk
kill Slave Hunter Mol##79626 |q Bonus Objective: Stonemaul Arena##36566/5 |goto Gorgrond/0 39.0,68.8
step
label "bonusstonemaul"
accept Bonus Objective: Stonemaul Arena##36566
click Keg of Grog##235916
|tip They look like large wooden barrels laying on the ground around this area. They can be in buildings, so be sure to check those.
Destroy #15# Grog Kegs |q Bonus Objective: Stonemaul Arena##36566/2 |goto Gorgrond/0 40.2,66.0
kill Stonemaul Guard##75819+, Stonemaul Slaver##75835+
Slay #20# Stonemaul Ogres |q Bonus Objective: Stonemaul Arena##36566/1 |goto Gorgrond/0 40.2,66.0
step
_Leave_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30 |only if walking
accept Bonus Objective: Affliction Ridge##36473
kill Goren Gouger##80690+, Botani Greensworn##80696+, Gronnling Bonebreaker##80685+, Goren Gouger##80690+, Gronn Rockthrower##80689+, Mandragora Lifedrinker##80699+, Creeping Vine##85538+
Slay #25# Monsters |q Bonus Objective: Affliction Ridge##36473/1 |goto Gorgrond 43.6,64.4
clicknpc Ancient Seedbearer##82392+
|tip They look like big tree ents with leafy green plants as hair laying on the ground around this area.
Burn #5# Ancient Seedbearers |q Bonus Objective: Affliction Ridge##36473/2 |goto Gorgrond 43.6,64.4
stickystart "lesserbrimfury"
step
_Go up_ the hill |goto Gorgrond/0 44.0,55.9 < 20 |only if walking
accept Bonus Objective: Brimstone Springs##36603 |goto Gorgrond/0 40.4,57.5
kill 15 Sulfuric Ooze##85960 |q Bonus Objective: Brimstone Springs##36603/2 |goto Gorgrond/0 40.4,57.5
|tip They are found in the pools of water around the area.
You can find more around [Gorgrond 40.3,60.7]
step
accept Bonus Objective: Brimstone Springs##36603 |goto Gorgrond/0 40.3,53.4
kill 3 Grievous Depthworm##85942 |q Bonus Objective: Brimstone Springs##36603/3 |goto Gorgrond/0 40.3,53.4
step
label "lesserbrimfury"
accept Bonus Objective: Brimstone Springs##36603 |goto Gorgrond 42.5,55.2
kill 8 Lesser Brimfury##85924 |q Bonus Objective: Brimstone Springs##36603/1 |goto Gorgrond 42.5,55.2
step
_Run up_ the path |goto Gorgrond 40.9,53.9 < 20 |only if walking
_Leave_ the Brimstone Springs area |goto Gorgrond 42.6,57.0 < 30 |only if walking
_Follow_ the path up |goto Gorgrond 45.0,55.4 < 20 |only if walking
talk Nisha##86492
fpath Breaker's Crown |goto Gorgrond 45.8,54.9
step
accept Bonus Objective: South Gronn Canyon##36476
kill Drywind Bonepicker##81207+, Boneyard Tunneler##81518+
Kill #15# Goren or Gronnling |q Bonus Objective: South Gronn Canyon##36476/1 |goto Gorgrond 47.4,53.8
kill 10 Grom'kar Grunt##75091 |q Bonus Objective: South Gronn Canyon##36476/2 |goto Gorgrond 47.4,53.8
talk Grom'kar Peon##85540
|tip They look like orcs laying on the ground around this area.
Execute #8# Dying Grom'kar Peons |q Bonus Objective: South Gronn Canyon##36476/3 |goto Gorgrond 47.4,53.8
step
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 44.7,48.2 < 15
kill 5 Canyon Boulderbreaker##81246 |q Bonus Objective: Valley of Destruction##36480/1 |goto 44.69,47.82
kill 20 Goren Nibbler##81775 |q Bonus Objective: Valley of Destruction##36480/2 |goto 46.07,47.61
Break #15# Goren Eggs |q Bonus Objective: Valley of Destruction##36480/3 |goto 46.22,47.20
|tip They look like clusters of gray-ish eggs on the ground around this area. Walk on them to break them.
step
talk Vindicator Maraad##75127
turnin Power of the Genesaur##35255 |goto 52.85,59.69
accept Strike While the Iron is Hot##36575
step
talk Rangari Rajess##81074
Tell her _"I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q Strike While the Iron is Hot##36575/1 |goto Gorgrond 52.8,59.3
Enter the scenario |goto Gorgrond 45.1,18.5 < 50 |noway |c |only if havequest(36575)
step
talk Yrel##85619
Tell her _"Let's go."_
Follow Yrel
Watch the dialogue
Confront Commander Gar |scenariogoal 1/25388 |goto Gorgrond/0 44.7,17.8
step
Use the Artifact to Eliminate your Enemies |scenariogoal 25389 |goto Gorgrond 44.4,16.7
|tip It's a button that appears in the middle of your screen. Use it whenever you can when enemies are near.
step
Defeat the Incoming Enemies |scenariogoal 25390 |goto Gorgrond 44.3,16.2
|tip Continue using your Access Artifact skill whenever you can.
step
kill Goc##85580 |goto Gorgrond 44.0,15.6
|tip Continue using your Access Artifact skill whenever you can. Your helpers will do most of the work killing Goc, so just help them.
Defeat Goc |scenariogoal 25391 |goto Gorgrond 44.0,15.6
step
kill Commander Gar##85571 |goto Gorgrond 44.1,15.7
|tip Stay close to Yrel while fighting, she will cast bubbles of healing that will keep you healed up so you don't die. You will no longer be able to use your Access Artifact skill.
Defeat Commander Gar |scenariogoal 25392 |goto Gorgrond 44.1,15.7
Complete the Iron Approach |q Strike While the Iron is Hot##36575/2 |goto 44.30,16.58
step
_Follow_ the path |goto Gorgrond 44.5,19.3 < 30 |only if walking
talk Nisha##84700
fpath Iron Docks |goto Gorgrond 43.1,20.2
step
talk Vindicator Maraad##75127
turnin Strike While the Iron is Hot##36575 |goto 52.84,59.68
step
_Follow_ the cliff around the mountain |goto Gorgrond 48.4,51.5 < 20 |only if walking
talk Altauur##85426
turnin Seeking the Scout##36432 |goto 49.40,49.64
accept Plant Pruning##36436 |goto 49.40,49.64
accept Ambassador to the Ancient##36437 |goto 49.40,49.64
stickystart "dionordefendersLC"
step
talk Birchus##81723
Tell him _"Thank you for not killing me. What duty have you failed?"_
Talk to Birchus |q Ambassador to the Ancient##36437/1 |goto 50.33,47.51
step
label "dionordefendersLC"
kill Dionor Seedpriest##81721+, Primal Growth##81769+
Kill #12# Dionor defenders |q Plant Pruning##36436/1 |goto 50.75,46.16
step
talk Altauur##85432
|tip He's inside this small cave.
turnin Ambassador to the Ancient##36437 |goto 51.32,47.97
turnin Plant Pruning##36436 |goto 51.32,47.97
accept Shredder vs. Saberon##36439 |goto 51.32,47.97
step
_Run up_ the large hill |goto Gorgrond 52.0,46.0 < 20 |only if walking
_Follow_ the path |goto Gorgrond 52.6,46.7 < 10 |only if walking
click Strong Vine Barricade##235381
|tip It's a large rock and vice wall.
Shred the Vine Barrier and Enter the Saberon Camp |q Shredder vs. Saberon##36439/1 |goto 52.22,48.62
step
talk Altauur##85431
turnin Shredder vs. Saberon##36439 |goto Gorgrond/0 52.0,49.5
accept Saberon Population Reduction##36440 |goto 50.86,51.39
step
click Saberon Stash##232311
|tip It's a pot covered with leather tied by a rope.
accept Reclaiming Property##36441 |goto Gorgrond/0 51.9,50.0
step
click Saberon Stash##232311
|tip It's a pot covered with leather tied by a rope.
collect 8 Saberon Herb Bundle##115442 |q Reclaiming Property##36441/1 |goto 51.12,51.04
kill 10 Steamscar Primalist##81747 |q Saberon Population Reduction##36440/1 |goto Gorgrond/0 52.3,50.4
step
_Run up_ the path |goto Gorgrond 52.1,50.5 < 20 |only if walking
talk Altauur##85436
turnin Saberon Population Reduction##36440 |goto 52.86,51.80
accept Taking the Death Bloom##36442 |goto 52.86,51.78
turnin Reclaiming Property##36441 |goto 52.86,51.80
step
_Enter_ the cave |goto Gorgrond 53.8,51.9 < 10 |walk
kill Smokemaster Snarl##81749
collect Dionor's Death Bloom##113187 |q Taking the Death Bloom##36442/1 |goto 54.31,52.65
step
talk Birchus##82302
turnin Taking the Death Bloom##36442 |goto 50.32,47.50
accept Laying Dionor to Rest##36443 |goto 50.32,47.50
|tip Wait for the ritual to complete.
turnin Laying Dionor to Rest##36443 |goto 50.33,47.49
step
talk Vindicator Maraad##75127
accept News from Talador##36495 |goto 52.87,59.71
step
talk Bodrick Grey##81492
turnin News from Talador##36495 |goto Lunarfall 38.31,36.78
accept The Critical Path##37183 |goto Lunarfall 38.31,36.78
step
talk Cordana Felsong##80645
accept Meet Us at Starfall Outpost##33359 |goto Lunarfall 42.9,45.0
step
_Go through_ the doorway |goto Lunarfall 49.6,63.7 < 10 |only if walking
_Follow_ the path |goto Shadowmoon Valley D 30.3,25.8 < 10 |only if walking
talk Archmage Khadgar##77184
turnin Meet Us at Starfall Outpost##33359 |goto Shadowmoon Valley D/0 29.2,25.7
accept Catching His Eye##33062 |goto 29.21,25.73
step
talk Delas Moonfang##72623
accept Shadowmoonwell##33113 |goto Shadowmoon Valley D 29.5,24.5
step
_Run on_ this road |goto Shadowmoon Valley D 27.3,27.5 < 20 |only if walking
click Lunar Rock##223239
|tip It's a huge white rock sitting in the water.
collect Chunk of Lunar Rock##102491 |q Shadowmoonwell##33113/1 |goto Shadowmoon Valley D 23.2,20.9
step
_Get out_ of the water |goto Shadowmoon Valley D 23.7,19.6 < 10 |only if walking
_Follow_ the grassy path |goto Shadowmoon Valley D 23.9,17.9 < 20 |only if walking
_Enter_ the cave |goto Shadowmoon Valley D 23.0,16.9 < 20 |walk
kill All-Seeing Eye##72783 |q Catching His Eye##33062/1 |goto Shadowmoon Valley D 21.77,16.13
step
_Leave_ the cave |goto Shadowmoon Valley D 23.0,16.9 < 20 |walk
_Run on_ this road |goto Shadowmoon Valley D 25.4,19.2 < 20 |only if walking
_Turn and run_ in the grass here |goto Shadowmoon Valley D 25.7,26.2 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 27.7,24.4 < 10 |only if walking
talk Archmage Khadgar##77184
turnin Catching His Eye##33062 |goto 29.21,25.72
accept Shrouding Stones##33115 |goto 29.21,25.72
step
talk Delas Moonfang##72623
turnin Shadowmoonwell##33113 |goto Shadowmoon Valley D 29.5,24.5
accept A Curse Upon the Woods##33120 |goto Shadowmoon Valley D 29.5,24.5
stickystart "curseuponthewoods"
step
_Follow_ the path |goto Shadowmoon Valley D 28.0,24.7 < 10 |only if walking
_Follow_ the road around |goto Shadowmoon Valley D 25.4,18.9 < 10 |only if walking
_Run down_ the path |goto Shadowmoon Valley D 25.3,16.9 < 10 |only if walking
click Shrouding Stone##227272
|tip It looks like a large stone pillar with runes carved in them.
Destroy the Northern Shrouding Stone |q Shrouding Stones##33115/2 |goto 25.99,15.88
step
_Run on_ this road |goto Shadowmoon Valley D 25.1,17.5 < 10 |only if walking
_Follow_ the path down |goto Shadowmoon Valley D 24.7,21.6 < 10 |only if walking
click Shrouding Stone##227272
|tip It looks like a large stone pillar with runes carved in them.
Destroy the Central Shrouding Stone |q Shrouding Stones##33115/1 |goto 23.07,24.48
step
_Run up_ the hill |goto Shadowmoon Valley D 22.9,25.4 < 10 |only if walking
_Go up_ the path |goto Shadowmoon Valley D 23.0,27.1 < 10 |only if walking
click Shrouding Stone##227272
|tip It looks like a large stone pillar with runes carved in them.
Destroy the Southern Shrouding Stone |q Shrouding Stones##33115/3 |goto Shadowmoon Valley D 23.8,28.7
step
label "curseuponthewoods"
kill Corrupted Toad##73805+, Cursed Wolf##73101+
Kill #10# Fel-cursed Creatures |q A Curse Upon the Woods##33120/1 |goto Shadowmoon Valley D 22.8,27.2
step
_Run back_ to the road |goto Shadowmoon Valley D 25.3,26.2 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 27.7,24.4 < 10 |only if walking
talk Archmage Khadgar##77184
turnin Shrouding Stones##33115 |goto 29.20,25.72
accept Ominous Portents##33112 |goto 29.20,25.72
step
talk Delas Moonfang##72623
turnin A Curse Upon the Woods##33120 |goto Shadowmoon Valley D 29.5,24.5
step
talk All-Seeing Eye##72871
Tell him _"Begin the compulsion of the All-Seeing Eye."_
Use the abilities on your action bar
|tip Use the Vial of Moon Water ability until the Scripture of Elune ability is available, then use the Scripture of Elune ability. Repeat until you complete the objective.
Compel the All-Seeing Eye |q Ominous Portents##33112/1 |goto 28.74,25.21
step
talk Archmage Khadgar##77184
turnin Ominous Portents##33112 |goto 29.20,25.72
accept Soul Shards of Summoning##33066 |goto 29.21,25.73
step
talk Cordana Felsong##72637
accept Cleaning Up Gul'var##33269 |goto 29.27,25.69
stickystart "gul'varorcs"
step
_Run on_ the road |goto Shadowmoon Valley D 27.0,27.3 < 20 |only if walking
_Enter_ the doorway |goto Shadowmoon Valley D 20.8,25.6 < 20 |only if walking
_Follow_ the path |goto Shadowmoon Valley D 24.4,24.5 < 20 |only if walking
kill Corruptor Kurgoth##72647
collect Kurgoth's Shard##106986 |q Soul Shards of Summoning##33066/3 |goto 18.27,24.15
step
_Run up_ the path |goto Shadowmoon Valley D 19.6,26.0 < 20 |only if walking
_Go up_ the hill |goto Shadowmoon Valley D 18.6,27.3 < 20 |only if walking
kill Fel Mistress Hagra##72677
collect Hagra's Shard##109186 |q Soul Shards of Summoning##33066/1 |goto 20.88,27.31
step
kill Grogal the Harvester##72674
collect Grogal's Shard##109187 |q Soul Shards of Summoning##33066/2 |goto 20.88,31.54
step
label "gul'varorcs"
kill Shadow Warrior##77518+, Gul'var Peon##77522+, Lesser Warlock##77517+
Kill #20# Gul'var orcs |q Cleaning Up Gul'var##33269/1 |goto Shadowmoon Valley D 20.8,28.9
step
_Follow_ the path up |goto Shadowmoon Valley D 20.3,29.2 < 10 |only if walking
talk Image of Archmage Khadgar##77417
turnin Soul Shards of Summoning##33066 |goto 19.08,28.56
accept Heart On Fire##33168 |goto 19.08,28.56
step
kill Krosnis##77488
collect Dulled Claw##106867 |q Heart On Fire##33168/1 |goto 17.83,27.57
step
_Run up_ the hill |goto Shadowmoon Valley D 18.9,27.6 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 20.3,29.2 < 10 |only if walking
talk Image of Archmage Khadgar##77417
turnin Heart On Fire##33168 |goto 19.08,28.57
accept Forging the Soul Trap##33114 |goto 19.08,28.57
step
use Gul'var Soul Shards##109224
Forge the Gul'dan Soul Trap |q Forging the Soul Trap##33114/1 |goto 19.08,28.57
step
talk Image of Archmage Khadgar##77417
turnin Forging the Soul Trap##33114 |goto 19.08,28.57
accept To Catch a Shadow##33116 |goto 19.08,28.57
step
_Follow_ the path up |goto Shadowmoon Valley D 19.4,29.6 < 20 |only if walking
Use Gul'dan's Soul Trap on Gul'dan
Use Gul'dan's Soul Trap |use Gul'dan's Soul Trap##109246 |q To Catch a Shadow##33116/1 |goto 18.01,30.37
step
kill Razuun##72793 |q To Catch a Shadow##33116/2 |goto 17.90,30.09
step
_Jump down_ here |goto Shadowmoon Valley D 21.4,27.4 < 10 |only if walking
_Run up_ the hill |goto Shadowmoon Valley D 23.7,24.6 < 20 |only if walking
_Follow_ the road |goto Shadowmoon Valley D 24.6,25.0 < 10 |only if walking
_Turn and run_ in the grass here |goto Shadowmoon Valley D 25.7,26.2 < 20 |only if walking
_Follow_ the path up |goto Shadowmoon Valley D 27.7,24.4 < 10 |only if walking
talk Archmage Khadgar##77184
turnin To Catch a Shadow##33116 |goto Shadowmoon Valley D/0 29.2,25.7
step
talk Cordana Felsong##72637
turnin Cleaning Up Gul'var##33269 |goto 29.26,25.71 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)",
image=ZGV.DIR.."\\Guides\\Images\\Talador",
startlevel=94,
},[[
step
talk Bodrick Grey##81492
accept The Critical Path##37183 |goto Lunarfall 38.31,36.78
step
talk Dungar Longdrink##81103
Tell him _"Take me to my base in Talador."_ |goto 47.89,49.68 < 5
Arrive in Talador |goto Talador 68.3,20.6 < 50 |noway |c |q 37183 |only if havequest(37183) or completedq(37183)
Arrive in Talador |goto Talador 68.3,20.6 < 50 |noway |c |q 34676 |only if havequest(34676) or completedq(34676)
|only if not completedq(37183) or not completedq(34676)
step
talk Foreman Eksos##79133
turnin The Critical Path##34676 |goto Talador 69.88,20.81 |only if havequest(34676) or completedq(34676)
turnin The Critical Path##37183 |goto Talador 69.88,20.81 |only if havequest(37183) or completedq(37183)
accept At Your Command##34558 |goto 69.88,20.81
step
clicknpc Drafting Table##81119
|tip It looks like a wooden table with a slanted top and blueprints laying on it.
Use the Drafting Table |q At Your Command##34558/1 |goto 69.78,20.72
step
clicknpc Drafting Table##81119
|tip It looks like a wooden table with a slanted top and blueprints laying on it.
Select a Building |q At Your Command##34558/2 |goto 69.78,20.72
|tip You can choose between the "Arcane Sanctum" and the "Arsenal" buildings. We recommend choosing the Arsenal building, since it gives you an artillery special ability that is powerful, and will help with leveling, as well as later in the Tanaan Jungle level 100 zone.
step
talk Foreman Eksos##79133
turnin At Your Command##34558 |goto 69.87,20.81
accept An Audience With The Archmage##34631 |goto 69.87,20.81 |next "arcaneAS" |or
accept The Quarry Quandary##34563 |goto Talador 69.87,20.81 |next "artilleryAT" |or
|tip You will only be able to accept one of these quests, depending on which building you chose.
step
label "artilleryAT"
_Go through_ the doorway |goto Talador 69.0,20.8 < 10 |only if walking
Find Master Smith Ared |q The Quarry Quandary##34563/1 |goto 69.24,19.34
step
talk Apprentice Miall##79159
turnin The Quarry Quandary##34563 |goto 69.24,19.34
accept In Ared's Memory##35045 |goto 69.24,19.34
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
talk Olivia Abbington##81358
home Fort Wrynn |goto Talador 69.7,21.8
step
_Enter_ the big metal building |goto Talador 69.8,20.6 < 10 |walk
Meet with Miall at the Armory |q In Ared's Memory##35045/1 |goto 70.14,20.10
step
talk Miall##79329
turnin In Ared's Memory##35045 |goto Talador 70.2,20.1
accept Out of Jovite##34571 |goto Talador 70.2,20.1
accept Iridium Recovery##34573 |goto Talador 70.2,20.1
accept Gas Guzzlers##34624 |goto Talador 70.2,20.1
stickystart "joviteAT"
stickystart "gorengasAT"
stickystart "Igneous"
step
label "gorengasAT"
_Leave_ the big metal building |goto Talador 69.8,20.6 < 10 |walk
_Enter_ the mine |goto 75.31,22.37 < 20 |walk
kill Glowgullet Devourer##79190+, Glowgullet Shardshedder##80013+
use Goren Gas Extractor##111910
|tip Use the Goren Gas Extractor on their corpses.
Gather #6# Goren Gas Samples |q Gas Guzzlers##34624/1 |goto 75.70,21.09 |indoors Kuuro's Claim
step
label "Igneous"
kill Iridium Geode##80072
collect 8 Igneous Elemental Chunk##107472 |q Iridium Recovery##34573/1 |goto 75.70,21.09 |indoors Kuuro's Claim
step
label "joviteAT"
click Jovite Ore##230268
|tip They look like bright green ore nodes all along the cave walls.
collect 12 Jovite Ore##111906 |q Out of Jovite##34571/1 |goto 75.70,21.09 |indoors Kuuro's Claim
step
_Enter_ the big metal building |goto Talador 69.8,20.6 < 10 |walk
talk Miall##79329
turnin Out of Jovite##34571 |goto Talador 70.2,20.1
turnin Iridium Recovery##34573 |goto Talador 70.2,20.1
turnin Gas Guzzlers##34624 |goto Talador 70.2,20.1
accept Going to the Gordunni##34578 |goto Talador 70.2,20.1
step
talk Sloan McCoy##86442
accept One Step Ahead##36801 |goto 69.61,20.81
step
talk Quartermaster O'Riley##79963
accept Why Is The Brew Gone?##34773 |goto 69.60,21.57
stickystart "footman"
step
click Thunderbrew Keg##230753
|tip They look like wooden barrels with metal rings around this on the ground around this area.
collect 5 Thunderbrew Keg##111809 |q Why Is The Brew Gone?##34773/2 |goto 72.18,21.57
step
label "footman"
click Footman's Longsword##230752+
|tip They look like swords that are sticking out of, or laying around on the ground around this area.
collect 5 Footman Longsword##111808 |q Why Is The Brew Gone?##34773/1 |goto 73.04,19.30
step
_Go through_ the doorway |goto Talador 70.2,21.4 < 20 |only if walking
talk Quartermaster O'Riley##79963
turnin Why Is The Brew Gone?##34773 |goto 69.60,21.59
accept Not In Your House##34804 |goto 69.60,21.59
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
_Run up_ the path |goto Talador 68.1,20.5 < 10 |only if walking
kill Ripgut##80058 |q Not In Your House##34804/1 |goto 67.29,20.91
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
talk Quartermaster O'Riley##79963
turnin Not In Your House##34804 |goto 69.60,21.58
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
Head out towards the _crossroad_ |goto Talador 66.5,22.7 < 30 |only if walking
talk Vindicator Maraad##75803
turnin One Step Ahead##36801 |goto 63.05,25.89
accept Through the Looking Glass##34087 |goto 63.05,25.89
step
talk Nomaeaa##81061
fpath Redemption Rise |goto Talador 63.3,25.7
step
clicknpc Thaelin's Observicopter##77335
|tip It's a small helicopter machine flying near the ground.
Look through Thaelin's Observicopter |q Through the Looking Glass##34087/1 |goto 63.07,26.20
step
talk Vindicator Maraad##75803
turnin Through the Looking Glass##34087 |goto 63.05,25.88
accept Too Many Irons in the Fire##34088 |goto 63.05,25.88
step
talk Yrel##75804
accept In Short Supply##34089 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept Thaelin's Quick Fix##34090 |goto 63.09,26.14
stickystart "hordeexplosive"
stickystart "killpeons"
step
use Thaelin's Quick Fix##109161
Destroy the Thunderlord Cache |q Thaelin's Quick Fix##34090/1 |goto Talador 66.5,26.7
step
use Thaelin's Quick Fix##109161
Destroy the Forge |q Thaelin's Quick Fix##34090/2 |goto 64.84,32.72
step
click Iron Shredder Decommission Orders##225726
|tip It's a brown book laying on a large stone.
accept Decommissioned Mission##34091 |goto 61.80,27.53
step
use Thaelin's Quick Fix##109161
Destroy the Log Storage |q Thaelin's Quick Fix##34090/3 |goto Talador 60.9,26.8
step
label "hordeexplosive"
click Iron Horde Explosives##225731
|tip They look like wooden boxes with metal bands around them.
collect 6 Iron Horde Explosives##107855 |q In Short Supply##34089/1 |goto 63.23,31.07
step
label "killpeons"
kill Peon##80313+, Grom'kar Shadowblade##75753+, Iron Shredder##75815+, Grom'kar Deadeye##75749+
Kill #15# Iron Horde |q Too Many Irons in the Fire##34088/1 |goto 63.46,31.06
step
_Go up_ the hill |goto Talador 62.1,23.3 < 10 |only if walking
_Continue following_ the path up |goto Talador 62.5,22.5 < 10 |only if walking
kill Engineer Trak##77387 |q Decommissioned Mission##34091/1 |goto 63.03,23.68
step
clicknpc Decommissioned Iron Shredder##75809
|tip It looks like a bulky metal humanoid machine.
Steal the Decommissioned Iron Shredder |q Decommissioned Mission##34091/2 |goto 63.19,23.68
step
Transport the Decommissioned Iron Shredder to Redemption Rise |q Decommissioned Mission##34091/3 |goto 63.20,25.87
step
talk Yrel##75804
turnin In Short Supply##34089 |goto 63.06,25.83
accept Iron Them Out##34095 |goto 63.06,25.83
step
talk Vindicator Maraad##75803
turnin Too Many Irons in the Fire##34088 |goto 63.04,25.89
accept Dreadpiston##34959 |goto 63.04,25.89
step
talk Thaelin Darkanvil##75874
turnin Thaelin's Quick Fix##34090 |goto 63.09,26.14
turnin Decommissioned Mission##34091 |goto 63.09,26.14
accept Vol. X Pages ?##34094 |goto 63.09,26.14
stickystart "ironshreddermanual"
step
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy #6# Siege Weapons |q Iron Them Out##34095/1 |goto 58.35,29.39
step
kill Dreadpiston##80576 |q Dreadpiston##34959/1 |goto 56.49,27.19
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.90,25.97
step
kill Blademaster Bralok##76981
|tip He's jumping around like a lunatic, slicing things in this building.
collect Ahm's Heirloom##108825 |q Dying Wish##33973/1 |goto 57.05,24.25
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.99
step
label "ironshreddermanual"
kill Burning Blademaster##75794+, Grom'kar Siegesmith##80552+, Fireblade Invoker##77047+
collect 20 Iron Shredder Operation Manual Vol. X Page ?##107843 |q 34094/1 |goto 56.35,26.56
step
talk Thaelin Darkanvil##75874
turnin Vol. X Pages ?##34094 |goto 63.09,26.15
step
talk Vindicator Maraad##75803
turnin Dreadpiston##34959 |goto 63.05,25.90
step
talk Yrel##75804
turnin Iron Them Out##34095 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept An Eye for a Spy##34096 |goto 63.09,26.15
step
clicknpc Thaelin's Observicopter##77335
|tip It's a small helicopter machine hovering near the ground.
Look through Thaelin's Observicopter |q An Eye for a Spy##34096/1 |goto 63.06,26.20
step
talk Thaelin Darkanvil##75874
turnin An Eye for a Spy##34096 |goto 63.09,26.14
accept Born to Shred##34097 |goto 63.09,26.14
step
clicknpc Iron Shredder Prototype##75721
|tip It's a big shaking humanoid metal machine.
Take control of the Iron Shredder |q Born to Shred##34097/1 |goto 63.08,26.34
step
_Enter_ the Tuurem area |goto Talador 63.2,39.6 < 20 |only if walking
Use the abilities on your hot bar:
kill Grom'kar Vanguard##75948+, Grom'kar Deadeye##75943+, Burning Blademaster##75945+, Grom'kar Shadowblade##75946+, Grom'kar Grimshot##75947+, Fireblade Invoker##77066+
Kill #100# Iron Horde |q Born to Shred##34097/2 |goto 61.98,39.32
step
talk Iron Shredder Prototype##75968
|tip Click yourself, since you're riding in the Iron Shredder Prototype.
turnin Born to Shred##34097
accept Engineering Her Demise##34098
step
kill Ketya Shrediron##75986 |q Engineering Her Demise##34098/1 |goto 61.08,38.83
step
talk Vindicator Maraad##75803
turnin Engineering Her Demise##34098 |goto 63.04,25.89
accept Khadgar's Plan##34963 |goto 63.04,25.89
step
accept Bonus Objective: Orunai Coast##35236 |goto 60.31,21.13
step
accept Bonus Objective: Orunai Coast##35236
kill 6 Iron Shredder##75815 |q Bonus Objective: Orunai Coast##35236/1 |goto Talador/0 59.7,13.3
click Lumber##231962
|tip They look like cut logs on the ground in stacks of three around this area.
collect 20 Lumber##112994 |q Bonus Objective: Orunai Coast##35236/2 |goto Talador/0 59.7,13.3
step
_Follow_ the road up |goto Talador 61.0,19.0 < 20 |only if walking
_Cross_ the bridge |goto Talador 56.7,34.0 < 20 |only if walking
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34963 |goto 54.18,36.43
accept The Battle for Shattrath##34099 |goto 54.18,36.43
step
Go to _The Battle for Shattrath_ |goto 50.81,35.30 < 40 |c |only if havequest(34099)
talk Thaelin Darkanvil##77192
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Thaelin |scenariogoal 1/25835 |goto 50.48,34.89
step
clicknpc Iron Star##86671
|tip It's a giant metal wheel of destruction.
Enter the Iron Star |scenariogoal 2/25177 |goto Talador 50.4,34.9
step
_Roll through_ the area towards the Harbor |goto Talador 45.6,34.8 < 20
Reach the Harbor |scenariogoal 3/25176 |goto 45.4,25.1
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto 45.4,24.6
step
Kill enemies while Khadgar casts his spell
Protect Khadgar |scenariogoal 4/24351 |goto Talador 45.4,23.5
|tip Stand in the circles of light to gain healing.
step
Confront Blackhand |scenariogoal 5/25178 |goto Talador 46.7,20.9
step
Watch the dialogue
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Khadgar to Teleport to the Battleship |scenariogoal 5/24679 |goto Talador 46.7,20.8
step
kill Machinist B'randt##80962
Defeat Machinist B'randt |scenariogoal 5/24352 |goto Talador 48.5,12.8
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Khadgar to Teleport to the Flagship |scenariogoal 6/24680 |goto Talador 48.5,12.9
step
kill Blackhand##77256
Survive Blackhand's Onslaught |scenariogoal 6/24678 |goto Talador 46.5,19.1
Complete the Battle for Shattrath |q The Battle for Shattrath##34099/1 |goto Talador 46.5,19.1
step
clicknpc Portal to Talador##45454 |goto Talador 46.6,20.9
Teleport back to _Fort Wrynn_ |goto 69.7,21.0 < 100 |noway |c |q 34099
only if havequest(34099)
step
talk Yrel##79608
turnin The Battle for Shattrath##34099 |goto 69.68,21.09
step
_Run through_ the building and _cross the bridge_ |goto Talador 50.9,46.0 < 10 |only if walking
_Jump down_ the cliff |goto 52.7,49.9 < 20 |only if walking
_Go through_ the doorway |goto Talador 57.0,53.1 < 10 |only if walking
talk Defender Illona##79979
accept Gatekeepers of Auchindoun##34777 |goto 57.43,51.11
step
talk Soulbinder Halaari##79977
Tell her _"So be it."_
kill Soulbinder Halaari##79977
|tip She heals herself when she gets low on health. Save any interrupts you have for when she tries to heal.
Defeat Soulbinder Halaari |q Gatekeepers of Auchindoun##34777/2 |goto 57.33,52.65
step
talk Vindicator Dalu##79970
Tell him _"Very well. Let us fight."_
kill Vindicator Dalu##79970
Defeat Vindicator Dalu |q Gatekeepers of Auchindoun##34777/1 |goto 57.39,52.77
step
talk Defender Illona##79979
turnin Gatekeepers of Auchindoun##34777 |goto 57.43,51.11
accept The True Path##36519 |goto 57.42,51.12
step
_Run along_ the path to the left |goto Talador 52.2,63.0 < 20 |only if walking
talk Niaa##81077
fpath Exarch's Refuge | goto Talador 54.8,68.8
step
_Follow_ the stone path |goto Talador 59.3,68.3 < 20 |only if walking
talk Miall##80628
turnin Going to the Gordunni##34578 |goto 62.56,67.83
accept Dropping Bombs##34976 |goto 62.56,67.83
step
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Base Catapult |q Dropping Bombs##34976/1|goto 63.61,68.98
step
_Run up_ the path |goto Talador 63.9,69.8 < 20 |only if walking
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Central Catapult |q Dropping Bombs##34976/2 |goto Talador 65.5,68.8
step
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Summit Catapult |q Dropping Bombs##34976/3 |goto Talador 66.8,67.9
step
_Run up_ the path |goto Talador 67.5,68.6 < 20 |only if walking
click Grappling Hook and Rope##241659
|tip It looks like a small rope coiled around a tiny wooden post on the ground.
Use the Grappling Hook |q Dropping Bombs##34976/4 |goto 69.00,69.06
step
talk Miall##80628
|tip She's on the ground, next to the stone pillar.
turnin Dropping Bombs##34976 |goto 69.63,69.82
accept Supply Recovery##34977 |goto 69.63,69.82
accept Punching Through##34979 |goto 69.63,69.82
accept Prized Repossessions##34978 |goto 69.63,69.82
stickystart "ironhorde"
stickystart "guardianmace"
step
_Cross_ the bridge |goto Talador 69.5,73.7 < 20 |only if walking
_Go up_ the stairs |goto Talador 68.5,79.0 < 10 |only if walking
kill Vizier Vorgorsh##80294 |q Punching Through##34979/1 |goto 68.53,82.94
|tip He's inside the stone building.
step
_Run up_ the stairs |goto Talador 67.8,79.5 < 10 |only if walking
kill Vizier Zulmork##80292 |q Punching Through##34979/2 |goto 67.1,77.0
|tip He's inside the stone building.
step
kill Vizier Cromaug##80295 |q Punching Through##34979/3 |goto 66.30,80.94
|tip He's inside the stone building.
step
label "ironhorde"
clicknpc Iron Horde Shipment##80957
|tip They look like wooden and metal chests on the ground all around this area.
Obtain #6# Iron Horde Shipment |q Supply Recovery##34977/1 |goto 69.13,77.64
step
label "guardianmace"
kill Gordunni Cleaver##79234+, Gordunni Basher##79231+, Gordunni Warcrier##81764+
collect 6 Shattrath Guardian Mace##112504 |q Prized Repossessions##34978/1 |goto 65.99,79.47
step
Next to you:
|tip If you are in Gordal Fortress, she will be next to you.
talk Miall##80630
turnin Supply Recovery##34977
turnin Punching Through##34979
turnin Prized Repossessions##34978
accept The Lord of the Gordunni##34980
step
_Go up_ the stairs |goto Talador 65.5,80.1 < 10 |only if walking
kill Witch Lord Morkurk##80335 |q The Lord of the Gordunni##34980/1 |goto 64.07,81.79
use Emergency Rocket Pack##112307
|tip Use this when he is almost done casting Astral Annihilation.
collect Fury of the Forge##112308 |q The Lord of the Gordunni##34980/2 |goto 64.07,81.79
step
talk Miall##80630
turnin The Lord of the Gordunni##34980 |goto 64.51,81.77
accept The Only Way to Travel##34981 |goto 64.51,81.77
Wait For Miall to Fly You |goto Talador 69.7,20.8 < 100 |noway |c |q 34981 |only if havequest(34981)
step
talk Miall##80968
turnin The Only Way to Travel##34981 |goto 69.78,20.75
accept Armor Up##34982 |goto 69.78,20.75
turnin Armor Up##34982 |goto 69.78,20.75
step
talk Kalaam##79573
accept As the Smoke Rises##34685 |goto 69.47,21.47
step
talk Vindicator Icia##79618
accept Speaker for the Dead##34701 |goto 69.65,21.61
step
_Go through_ the doorway |goto Talador 70.1,21.3 < 10 |only if walking
_Cross_ the bridge |goto Talador 73.1,26.4 < 20 |only if walking
_Follow_ the path up |goto Talador 75.0,30.8 < 10 |only if walking
_Continue following_ the path |goto Talador 77.4,29.5 < 10 |only if walking
accept Bonus Objective: Zangarra##37422 |goto Talador 79.3,27.5
step
talk Dominic Arlington##80932
fpath Zangarra |goto Talador 80.4,25.3
step
clicknpc Khadgar's Portal##95699 |goto Talador/0 80.6,26.1
|tip It's a small blue swirling portal.
Teleport to Khadgar's Tower |goto Talador 83.6,31.0 < 50 |noway |c
only if havequest(37422)
step
accept Bonus Objective: Zangarra##37422
kill 6 Invasive Shambler##79335 |q Bonus Objective: Zangarra##37422/1 |goto Talador 81.1,29.2
kill Encroaching Giant##79333 |q Bonus Objective: Zangarra##37422/2 |goto Talador 81.1,29.2
|tip They are rarer, so just walk around until you find one.
step
_Follow_ the path up |goto Talador 82.4,30.7 < 20 |only if walking
_Continue following_ the path |goto Talador 83.1,30.1 < 20 |only if walking
clicknpc Khadgar's Portal##95699 |goto Talador 83.6,31.0 < 5 |only if walking
|tip It's a small blue swirling portal.
Teleport to Leave Khadgar's Tower |goto Talador 80.6,26.1 < 50 |noway |c
only if dist("Talador",83.6,31.0) < 200
step
_Run up_ the path through the mountains |goto Talador 79.7,27.0 < 10 |only if walking
_Follow_ the road |goto Talador 74.8,31.3 < 30 |only if walking
talk Crystal-Shaper Barum##75896
turnin As the Smoke Rises##34685 |goto 73.07,38.73
accept Burning Sky##33740 |goto 73.07,38.73
accept Pieces of Us##33734 |goto 73.07,38.73
stickystart "adherentkilledAT"
step
_Cross_ the bridge |goto Talador 75.3,40.6 < 10 |only if walking
click Barum's Notes##225778
|tip It looks like an open book laying on the ground.
accept Barum's Notes##33761 |goto 76.27,42.80
step
_Enter_ the building |goto Talador 75.9,43.9 < 10 |walk
click Annals of Aruuna##225748
|tip It's a floating crystal shaped like a triangle.
collect Annals of Aruuna##107859 |q Pieces of Us##33734/3 |goto Talador 75.4,44.1
step
_Leave_ the building |goto Talador 75.9,43.9 < 10 |walk
click Honed Crystal##225773
|tip It's a small red crystal laying on the ground.
Test the Honed Crystal |q Barum's Notes##33761/1 |goto 76.69,42.54
step
click Harmonic Crystal##225776
|tip It's a small bright green bunch of crystals sitting on a wooden barrel.
Test the Harmonic Crystal |q Barum's Notes##33761/3 |goto Talador 77.3,42.1
step
click Polished Crystal##225774
|tip It's a small white crystal laying on the ground.
Test the Polished Crystal |q Barum's Notes##33761/2 |goto Talador 77.5,41.4
step
click Crystal-Shaper's Tools##225745
|tip It's a small metal lockbox sitting on a table.
collect Crystal-Shaper's Tools##107851 |q Pieces of Us##33734/1 |goto Talador 77.5,41.2
step
_Run up_ the stairs |goto Talador 76.9,42.8 < 20 |only if walking
talk Raksi##75311
accept Pyrophobia##33578 |goto 77.73,43.95
step
click Melani's Doll##225746
|tip It looks like a small white doll sitting in a chair.
collect Melani's Doll##107856 |q Pieces of Us##33734/2 |goto Talador 77.9,43.0
step
_Go up_ the stairs and _into_ the building |goto Talador 77.7,44.1 < 10 |walk
kill Sun-Sage Kairyx##75302 |q Pyrophobia##33578/1 |goto 78.29,44.97
step
_Leave_ the building |goto Talador 77.9,44.4 < 10 |walk
talk Raksi##75311
turnin Pyrophobia##33578 |goto 77.74,43.96
accept What the Draenei Found##33579 |goto 77.74,43.96
step
label "adherentkilledAT"
kill 12 Adherent Wing-Guard##75283+, Adherent Squallbringer##75290+, Adherent Sun-Caller##85434+
Slay #12# Adherent Invaders |q Burning Sky##33740/1 |goto Talador 77.2,43.4
step
_Enter_ the mine |goto Talador 78.3,35.5 < 20 |walk
_Follow_ the path in the mine |goto Talador 80.3,34.7 < 10 |walk |indoors Aruuna Crystal Mine
_Cross_ the plank bridge |goto 81.4,37.6 < 10 |walk |indoors Aruuna Crystal Mine
click Ancient Prism##224825
|tip It's a big floating crystal that changes colors.
Examine the Ancient Prism |q What the Draenei Found##33579/1 |goto 82.70,37.89 |indoors Aruuna Crystal Mine
step
talk Raksi##75469
turnin What the Draenei Found##33579 |goto Talador 82.6,37.8 |indoors Aruuna Crystal Mine
step
talk Shadow-Sage Iskar##75288
accept The Purge of Veil Shadar##33580 |goto 70.48,56.83
step
talk Skytalon Inuz##81354
fpath Terokkar Refuge |goto Talador 70.3,57.1
step
talk Darkscryer Raastok##75323
accept Forbidden Knowledge##33581 |goto 70.51,57.33
step
talk Kura the Blind##75324
accept Kura's Vengeance##33582 |goto 70.77,56.80
step
talk Elumm##79724
|tip He walks on this road, so you may have to search for him.
accept Seek Out the Seer##33871 |goto Talador 71.4,47.6
He _travels the road_ between these 2 points:
Point _A_: [Talador 71.4,47.6]
Point _B_: [Talador 67.2,42.9]
step
talk Torben Zapblast##79901
accept Clear!##34761 |goto Talador/0 62.9,50.3
step
kill Lakebottom Zapper##79636+
|tip They're underwater.
collect 6 Zapper Sac##111637 |q Clear!##34761/1 |goto Talador/0 61.7,48.6
step
talk Torben Zapblast##79901
turnin Clear!##34761 |goto Talador/0 62.9,50.3
step
talk Pleasure-Bot 8000##79853
accept New Owner##35239 |goto Talador/0 62.9,50.4
|tip It may take a few seconds before you can accept this quest.
step
talk Seer Malune##76665
turnin Seek Out the Seer##33871 |goto Talador 65.4,50.7
accept Dust of the Dead##33872 |goto Talador 65.4,50.7
accept Cure of Aruunem##33873 |goto Talador 65.4,50.7
stickystart "aruunem_berriesAT"
step
kill Agitated Duskwing##76668+, Duskwing Flutterer##77331+, Elder Duskwing##77328+
collect 7 Handful of Duskwing Dust##108645 |q Dust of the Dead##33872/1 |goto Talador 65.8,52.1
step
label "aruunem_berriesAT"
click Aruunem Berry Bush##226888
|tip They look like leafy bushes with small red berries on them.
collect 60 Aruunem Berries##108655 |q Cure of Aruunem##33873/1 |goto Talador 65.8,52.1
step
talk Seer Malune##76665
turnin Dust of the Dead##33872 |goto Talador 65.4,50.7
turnin Cure of Aruunem##33873 |goto Talador 65.4,50.7
accept Aruumel's Rest##33874 |goto Talador 65.4,50.7
step
use Elixir of Memories##108749
Enter the Spirit Realm |havebuff 460857 |q Aruumel's Rest##33874 |c |goto Talador/0 65.4,50.7
|only if havequest(33874)
step
kill Aruumel##76824 |q Aruumel's Rest##33874/1 |goto Talador 68.9,55.0
step
talk Seer Malune##76665
turnin Aruumel's Rest##33874 |goto Talador 65.4,50.7
stickystart "young_prowlersAT"
step
accept Bonus Objective: Aruuna's Desolation##34639
kill Frenzied Ancient##79409 |q Bonus Objective: Aruuna's Desolation##34639/1 |goto 76.18,48.67
|tip He's a burning tree that walks around this area, so you may have to search for him.
step
label "young_prowlersAT"
accept Bonus Objective: Aruuna's Desolation##34639
clicknpc Panicked Young Prowler##79432+
Calm #7# Young Prowlers |q Bonus Objective: Aruuna's Desolation##34639/2 |goto 75.80,49.12
step
talk Crystal-Shaper Barum##75913
turnin Burning Sky##33740 |goto 76.71,55.25
turnin Pieces of Us##33734 |goto 76.71,55.25
turnin Barum's Notes##33761 |goto 76.71,55.25
stickystart "shadowtomeAT"
stickystart "evacuateoutcastAT"
step
_Enter_ the cave |goto Talador 80.2,61.6 < 20 |walk
kill Wing-Guard Kuuan##75353 |q Kura's Vengeance##33582/1 |goto 80.34,64.03
step
label "shadowtomeAT"
_Leave_ the cave |goto Talador 80.2,61.6 < 20 |walk
click Eat, Scry, Love##225513
|tip The books have many different names. They look like small red books on the ground and under blue canopies all around this area. There's also one in the cave where you kill Wing-Guard Kuuan.
Collect #6# Shadow Tomes |q Forbidden Knowledge##33581/1 |goto 74.64,62.34
step
label "evacuateoutcastAT"
talk Outcast Shadeweaver##75336+
|tip There are multiple Outcast named mobs. They are arrakoas standing all around this area.
Evacuate #8# Outcasts |q The Purge of Veil Shadar##33580/1 |goto Talador 75.9,62.7
step
talk Shadow-Sage Iskar##75288
turnin The Purge of Veil Shadar##33580 |goto 70.66,57.39
step
talk Darkscryer Raastok##75323
turnin Forbidden Knowledge##33581 |goto 70.51,57.35
step
talk Kura the Blind##75324
turnin Kura's Vengeance##33582 |goto 70.77,56.79
step
talk Aeun##79689
accept Every Bit Counts##34709 |goto 55.97,68.30
step
talk Exarch Maladaar##75119
turnin Speaker for the Dead##34701 |goto 55.65,67.73 |only if havequest(34701)
accept Holding the Line##34407 |goto 55.66,67.74
step
talk Vindicator Kaluud##81789
accept Powering the Defenses##34458 |goto 55.64,67.77
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.14
stickystart "killinvadersAT"
step
talk Vindicator Nobundo##78482
accept Disrupting the Flow##33917 |goto 56.75,65.95
step
kill O'mogg Blackheart##76876 |q The Heart of Auchindoun##33920/1 |goto 56.49,62.84
step
click Karab'uun##229269
|tip It's a big pink crystal suspended in chains.
collect Karab'uun##108733 |q The Heart of Auchindoun##33920/2 |goto 56.68,62.50
step
click Burning Resonator##229139
|tip They look like green glowing crystals floating above spiked altars.
Destroy #4# Burning Resonators |q Disrupting the Flow##33917/1 |goto 56.29,63.28
step
label "killinvadersAT"
kill Abyssal Invader##78433+, Burning Hunter##78457+, Legion Assailant##76883+
Slay #15# Demons |q Holding the Line##34407/1 |goto 56.34,64.08
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.70,65.96
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.14
step
talk Exarch Maladaar##75119
turnin Holding the Line##34407 |goto 55.65,67.71
step
_Enter_ the tomb and _follow_ the path |goto Talador/13 46.9,21.5 < 10 |walk
_Go through_ the doorway |goto Talador/13 54.5,29.7 < 10 |walk
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##34458 |goto Talador/13 68.38,19.36
accept We Must Construct Additional Pylons##34351 |goto Talador/13 62.14,63.70
step
_Go through_ the doorway |goto Talador/13 54.5,29.7 < 10 |walk
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto Talador/13 52.17,38.65
stickystart "arkoniteAT"
step
Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto Talador/13 59.0,54.4
step
kill Tagar Spinebreaker##76745 |q Nightmare in the Tomb##33530/2 |goto Talador/13 63.71,68.14
step
_Run up_ the ramp |goto Talador/13 57.2,49.3 < 10 |walk
_Go through_ the doorway |goto Talador/13 47.3,35.7 < 10 |walk
click Arkonite Pylon##229034
|tip It looks like a large floating slab of stone.
collect Arkonite Pylon##110271 |q We Must Construct Additional Pylons##34351/2 |goto 32.02,48.82
step
label "arkoniteAT"
click Arkonite Crystal##229422
|tip They look like big purple crystals all over the ground around this area.
collect 6 Arkonite Crystal##110253 |q We Must Construct Additional Pylons##34351/1 |goto Talador/13 53.8,34.6
step
_Go through_ the doorway |goto Talador/13 48.6,25.5 < 10 |walk
_Run up_ the stairs |goto Talador/13 43.0,22.2 < 10 |walk
talk Exarch Maladaar##75119
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.7,67.7
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.13,67.41
step
talk Exarch Maladaar##75119
accept Light's Rest##34452 |goto 55.66,67.70
step
talk Exarch Maladaar##75250
turnin Light's Rest##34452 |goto 57.23,77.03
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33958 |goto 57.19,76.94
step
talk Soulbinder Tuulani##78028
accept Antivenin##33967 |goto 57.23,76.91
step
talk Vindicator Namuun##78102
accept Vile Defilers##33969 |goto 57.55,76.70
stickystart "deathwebfangAT"
step
_Enter_ the cave |goto Talador/0 61.1,84.0 < 20 |walk
_Follow_ the path in the cave |goto Talador/0 62.4,83.9 < 20 |walk |indoors Deathweb Hollow
kill Xanatos the Defiler##75294 |q Into the Hollow##33958/1 |goto 65.44,86.64 |indoors Deathweb Hollow
stickystop "deathwebfangAT"
step
click Sha'tari##229596
|tip It looks like a pink crystal with a shield around it floating next to the eggs.
collect Sha'tari##110683 |q Into the Hollow##33958/2 |goto 65.79,86.87 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 1 Defiling Crystal |q Vile Defilers##33969/1 |count 1 |goto Talador 64.8,86.9 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 2 Defiling Crystals |q Vile Defilers##33969/1 |count 2 |goto 65.3,85.4 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 3 Defiling Crystals |q Vile Defilers##33969/1 |count 3 |goto 64.0,85.6 |indoors Deathweb Hollow
stickystart "deathwebfangAT"
step
_Enter_ the hallway |goto Talador/0 63.3,84.4 < 10 |walk |indoors Deathweb Hollow
_Follow_ the path |goto Talador/0 62.3,84.0 < 10 |walk |indoors Deathweb Hollow
_Leave_ the cave |goto Talador/0 61.1,84.0 < 10 |walk
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 4 Defiling Crystals |q Vile Defilers##33969/1 |count 4 |goto Talador 58.7,82.7
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy 5 Defiling Crystals |q Vile Defilers##33969/1 |count 5 |goto Talador 61.6,81.7
step
label "deathwebfangAT"
kill Deathweb Egg Tender##76947+, Deathweb Hatchling##75258+
collect 9 Deathweb Fang##109744 |q Antivenin##33967/1 |goto 60.18,81.1
step
talk Vindicator Namuun##78102
turnin Vile Defilers##33969 |goto 57.55,76.70
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33967 |goto 57.23,76.91
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33958 |goto 57.18,76.92
step
talk Exarch Maladaar##75250
accept Scheduled Pickup##34240 |goto 57.23,77.04
stickystart "shattered_hand_gruntsAT"
step
accept Bonus Objective: Zorkra's Fall##34660
clicknpc Zorka's Void Gate##79520+
|tip They look like big blue and pink swirling portals around this area.
Seal #4# of Zorka's Void Gates |q Bonus Objective: Zorkra's Fall##34660/1 |goto Talador/0 53.9,87.5
step
label "shattered_hand_gruntsAT"
accept Bonus Objective: Zorkra's Fall##34660
kill 6 Shattered Hand Grunt##79544 |q Bonus Objective: Zorkra's Fall##34660/2
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34240 |goto 50.42,87.50
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.50
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.51,87.54
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
step
_Run up_ the stairs |goto Talador/0 50.0,87.6 < 10 |only if walking
click Hastily Written Note##227069
|tip It looks like a scroll laying on the ground next to the fountain.
accept Invasion of the Soul Eaters##33988 |goto 49.20,88.07
stickystart "telmorinvadors"
step
click Telmor Registry##227054
|tip It looks like an open book laying on some white sacks, next to a pile of boxes.
collect Telmor Registry##108896 |q Never Forget##34013/1 |goto 49.23,87.82
step
click Forge##227067
|tip It looks like a metal hooded object with fire inside of it.
collect Auchenai Torch##108886 |q Invasion of the Soul Eaters##33988/1 |goto 49.23,87.82
stickystart "pilesofbodies"
step
_Run up_ the stairs |goto Talador 49.0,89.4 < 10 |only if walking
_Go through_ the dooway |goto Talador 48.9,90.5 < 10 |walk
click Auchenai Prayerbook##227959
|tip It looks like a floating book with a blue glowing symbol on it inside the building.
collect Auchenai Prayerbook##109622 |q Never Forget##34013/2 |goto 49.32,90.79
step
_Leave_ the building |goto Talador 48.9,90.5 < 10 |walk
_Go through_ the doorway |goto Talador 47.8,89.5 < 10 |walk
click Leafshadow##227055
|tip It looks like a large greyish green pointed stone inside the building.
collect Leafshadow##108897 |q Never Forget##34013/3 |goto 47.54,88.96
step
_Leave_ the building |goto Talador 47.8,89.5 < 10 |walk
_Run up_ the stairs |goto Talador 47.4,90.0 < 10 |only if walking
_Enter_ the building |goto Talador 45.3,90.4 < 10 |walk
talk Restalaan##77082
turnin Restalaan, Captain of the Guard##34508 |goto 44.85,90.50
accept The Final Piece##33976 |goto 44.85,90.50
step
kill Vorpil Ribcleaver##77051 |q The Final Piece##33976/1 |goto 44.45,90.89
click Auch'naaru##229654
|tip It looks like a big floating pink crystal with a shield around it.
collect Auch'naaru##109197 |q The Final Piece##33976/2 |goto 44.45,90.89
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.86,90.52
accept Changing the Tide##34326 |goto 44.86,90.52
step
label "pilesofbodies"
clicknpc Body Pile##77003+
|tip They looks like piles of blue bodies on the ground around this whole area.
Burn #4# Piles of Bodies |q Invasion of the Soul Eaters##33988/2 |goto 49.57,89.07
step
label "telmorinvadors"
kill Demon Conjurer##77901+, Fervid Adherent##77022+, Depraved Hunter##77026+, Wrathguard Destroyer##75382+
Slay #12# Telmor Invaders |q Payback##34234/1 |goto Talador 48.6,88.2
step
Click the _Quest Complete_ Box:
turnin Invasion of the Soul Eaters##33988
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.39,87.30
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.51,87.54
step
_Follow_ the road |goto Talador 46.9,81.5 < 20 |only if walking
talk Beldos##81068
fpath Retribution Point |goto Talador 42.1,76.8
step
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.95
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Exarch Maladaar##75392
accept Ogre Diplomacy##35227 |goto 42.92,76.10
stickystart "killango'rosh"
step
_Enter_ the ogre area here |goto Talador 41.4,80.3 < 20 |only if walking
_Go up_ the stairs |goto Talador 40.2,83.3 < 10 |only if walking
kill Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto Talador 39.5,83.7
step
_Follow_ the path |goto Talador 40.1,83.3 < 10 |only if walking
kill Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto Talador 42.7,84.9
step
_Follow_ the path |goto Talador 41.8,84.2 < 10 |only if walking
clicknpc Altar of Ango'rosh##77393
|tip It looks like a big torch with skulls on it, standing in a pile of rocks.
Perform the Ritual |q Desperate Measures##34092/3 |goto 41.18,82.44
|tip Make sure you DO NOT move until the objective completes after you start ritual.
step
label "killango'rosh"
kill Ango'rosh Spellweaver##77362+, Ango'rosh Crusher##77352+, Ango'rosh Hunter##77402+
Kill #10# Ango'rosh |q Ogre Diplomacy##35227/1 |goto 41.00,82.61
step
_Leave_ the ogre area here |goto Talador 41.4,80.3 < 20 |only if walking
talk Exarch Maladaar##75392
turnin Ogre Diplomacy##35227 |goto 42.93,76.12
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.94
step
talk Exarch Maladaar##75392
accept Retribution for the Light##35254 |goto 42.93,76.11
accept Into the Heart of Madness##34157 |goto 42.93,76.11
step
_Follow_ the path |goto Talador 38.0,78.5 < 20 |only if walking
click Shadow Council Communicator##227737
|tip It looks like a purple orb floating in a metal stand.
accept Hiding in the Shadows##34163 |goto 37.25,79.39
stickystart "gorebounddemons"
step
clicknpc Shadow Orb##40469
|tip It's a big floating purple orb at the top of this wooden tower.
Destroy the Eastern Shadow Orb |q Hiding in the Shadows##34163/1 |goto 37.79,77.32
step
_Run up_ the small hill |goto Talador 37.0,78.8 < 10 |only if walking
_Go up_ the hills and _follow_ the path up |goto Talador 36.4,79.8 < 10 |only if walking
clicknpc Shadow Orb##40469
|tip It's a big floating purple orb at the top of this wooden tower.
Destroy the Southern Shadow Orb |q Hiding in the Shadows##34163/2 |goto 35.62,79.85
step
_Follow_ the path |goto Talador 35.0,79.3 < 10 |only if walking
talk Kor'thos Dawnfury##77629
accept Book Burning##34164 |goto 34.01,73.97
stickystart "shadowcouncil"
step
_Run up_ the path |goto Talador 34.2,73.1 < 10 |only if walking
clicknpc Shadow Orb##40469
|tip It's a big floating purple orb at the top of this wooden tower.
Destroy the Northern Shadow Orb |q Hiding in the Shadows##34163/3 |goto 34.46,70.38
step
Click the _Complete Quest_ Box:
turnin Hiding in the Shadows##34163
step
label "shadowcouncil"
kill Shadowborne Dementor##77548+
collect 3 Shadow Council Spellbook##109259 |goto Talador 34.6,73.0 |q 34164
step
click Roaring Fire
|tip It looks like a huge green-yellow bonfire.
Burn #3# Books |q Book Burning##34164/1 |goto 34.15,74.21
step
talk Kor'thos Dawnfury##77629
turnin Book Burning##34164 |goto 34.01,73.97
step
label "gorebounddemons"
kill Gorebound Legionnaire##79127+, Shadowborne Dementor##79187+, Gorebound Demonguard##77541+, Ravenous Mongrel##79110+, Eye of Gul'dan##77563+, Gorebound Vessel##79125+, Felwrought Annihilator##77528+
Slay #15# Demons |q Retribution for the Light##35254/1 |goto 34.53,73.91
step
_Run up_ the path |goto Talador 32.5,75.1 < 10 |only if walking
_Continue following_ the dirt path |goto Talador 32.1,75.7 < 10 |only if walking
_Enter_ the cave |goto Talador 31.9,74.6 < 10 |walk
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.22,73.61
accept Destination: Unknown##34154 |goto 31.22,73.61
step
clicknpc Demonic Gateway##77571
|tip It looks like a big green portal.
Take the Portal |q Destination: Unknown##34154/1 |goto 30.92,73.15
step
While you are inside the Portal:
kill Mongrethod##77579 |q Destination: Unknown##34154/2
|tip You will have a lot of help killing him.
step
While you are inside the Portal:
clicknpc Demonic Gateway##77571
|tip It looks like a swirling portal with a demon skull above it.
Take the Portal |q Destination: Unknown##34154/3
step
clicknpc Exarch Maladaar##75250
turnin Retribution for the Light##35254 |goto 45.69,74.05
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34154 |goto 46.32,74.08
accept Together We Are Strong##36512 |goto 46.32,74.08
step
talk Exarch Maladaar##77581
accept Come Together##34707 |goto 45.69,74.07
step
_Follow the stairs_ up |goto Talador/0 44.6,74.6 < 20 |only if walking
_Follow_ the path |goto Talador/0 42.8,74.4 < 20 |only if walking
talk Caleb##76826
accept Just Peachicky##33882 |goto Talador/0 36.2,65.0
accept Sher'KHAAAAAAANNNN!##33884 |goto Talador/0 36.2,65.0
stickystart "sharpfang_stalkersAT"
stickystart "peachicksAT"
step
_Follow_ the path up |goto Talador/0 34.7,64.1 < 20 |only if walking
_Run up_ the grassy path |goto Talador/0 32.7,66.0 < 20 |only if walking
_Continue_ up the path |goto Talador/0 32.3,67.4 < 20 |only if walking
_Enter_ the cave |goto Talador/0 32.0,69.1 < 20 |walk
kill Sher'khaan##76687 |q Sher'KHAAAAAAANNNN!##33884/2 |goto Talador/0 31.0,71.2
|tip There are 3 Frightened Peachicks next to Sher'khan in the cave.
step
click Ricky##226987
|tip It looks like a tiny blue elephant on the ground inside this cave.
accept And the Elekk Too?!##33944 |goto Talador/0 30.9,70.8
step
label "sharpfang_stalkersAT"
kill 8 Sharpfang Stalker##76685 |q Sher'KHAAAAAAANNNN!##33884/1 |goto Talador/0 32.0,68.0
|tip They look like black tigers with red stripes all around this area.
step
label "peachicksAT"
clicknpc Frightened Peachick##76722+
|tip They look like tiny pink-feathered birds running quickly on the ground around this whole area. They are kind of hard to spot, so keep an eye out.
Rescue #7# Frightened Peachicks |q Just Peachicky##33882/1 |goto Talador/0 32.0,68.0
step
_Follow_ the road |goto Talador/0 33.4,61.4 < 30 |only if walking
talk Caleb##76826
turnin Just Peachicky##33882 |goto Talador/0 36.2,65.0
turnin Sher'KHAAAAAAANNNN!##33884 |goto Talador/0 36.2,65.0
turnin And the Elekk Too?!##33944 |goto Talador/0 36.2,65.0
step
_Follow_ the path |goto Talador/0 37.3,67.6 < 30 |only if walking
accept Bonus Objective: Court of Souls##34667 |goto Talador/0 43.8,63.5
stickystart "bonuscourtAT"
step
accept Bonus Objective: Court of Souls##34667
clicknpc Auchenai Ballista##79523
|tip They look like machines made of wood and stone aimed at the sky.
Left-click to target Shadowgaze Batriders
|tip They are flying around in the sky.
Use the ballista's abilities to shoot them down
Shoot Down #4# Shadowgaze Batriders |q Bonus Objective: Court of Souls##34667/3 |goto Talador/0 43.8,63.5
step
accept Bonus Objective: Court of Souls##34667
|tip Click the yellow arrow to release from the ballista.
kill Warlock Soulstealer##79482+
Release #8# Draenei Spirits |q Bonus Objective: Court of Souls##34667/1 |goto Talador 43.2,60.9
step
label "bonuscourtAT"
accept Bonus Objective: Court of Souls##34667
kill Doombringer##79503+, Searing Ravager##79506+, Tormenting Concubine##79540+
Slay #10# Demons |q Bonus Objective: Court of Souls##34667/2 |goto Talador/0 43.2,60.9
step
_Leave_ the Court of Souls area |goto Talador 44.7,60.5 < 10 |only if walking
talk Ageilaa##78534
turnin Every Bit Counts##34709 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390+
|tip Don't kill them, just get them to 35% Health or less, then stop attacking them.
use Dissipation Crystal##110468
|tip Use the Dissipation Crystal on weakened Frenzied Manafeeders. You have to be close to them to be able to use the item.
Soothe #8# Frenzied Manafeeders |q Frenzied Manafeeders##34400/1 |goto 51.43,55.25
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.17
step
_Enter_ the cave |goto Talador 51.2,51.4 < 20 |walk
talk Vindicator Doruu##78538
turnin Trouble In The Mine##34399 |goto 51.62,50.46 |indoors Jorune Mine
step
talk Archmage Elandra##78513
accept Arcane Essence##34403 |goto 51.64,50.52 |indoors Jorune Mine
accept Caught In The Chaos##34406 |goto 51.64,50.53 |indoors Jorune Mine
stickystart "injured_minersAT"
step
kill Arcane Wraith##78326+, Crystal Rager##78327+
collect 6 Arcane Essence##110390|q Arcane Essence##34403/1 |goto 52.07,48.50 |indoors Jorune Mine
step
label "injured_minersAT"
kill Arcane Wraith##78326+, Crystal Rager##78327+
Save #8# Injured Miners |q Caught In The Chaos##34406/1	|goto 52.07,48.50 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 10 |indoors Jorune Mine
talk Archmage Elandra##78513
turnin Arcane Essence##34403 |goto 51.64,50.51 |indoors Jorune Mine
turnin Caught In The Chaos##34406 |goto 51.64,50.51 |indoors Jorune Mine
accept An'dure The Giant##34415 |goto 51.64,50.51 |indoors Jorune Mine
step
kill An'dure the Awakened##78372
collect Crystal Giant Heart##110418 |q An'dure The Giant##34415/1 |goto Talador 54.3,50.0 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 10 |walk |indoors Jorune Mine
talk Archmage Elandra##78513
turnin An'dure The Giant##34415 |goto 51.64,50.52 |indoors Jorune Mine
accept Kaelynara Sunchaser##34448 |goto 51.64,50.52 |indoors Jorune Mine
step
talk Archmage Elandra##78513
Tell her _"I am ready to confront Kaelynara."_
Speak With Elandra |q Kaelynara Sunchaser##34448/1 |goto 51.65,50.51 |indoors Jorune Mine
step
Wait to be teleported:
kill Kaelynara Sunchaser##78501 |q Kaelynara Sunchaser##34448/2 |goto 52.08,47.54 |indoors Jorune Mine
step
talk Archmage Elandra##78741 |goto Talador 52.1,47.7 |indoors Jorune Mine
Tell her _"I am ready to return to the Jorune Mine."_
Teleport back into Jorune Mine |goto Talador 51.6,50.5 < 10 |noway |c |q 34448 |indoors Jorune Mine
only if havequest(34448)
step
talk Vindicator Doruu##78538
turnin Kaelynara Sunchaser##34448 |goto 51.62,50.48 |indoors Jorune Mine
step
talk Vindicator Icia##79618
turnin Come Together##34707 |goto 69.65,21.60
accept News from Spires of Arak##35554 |goto 69.65,21.60 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)"
step
label "arcaneAS"
talk Olivia Abbington##81358
home Fort Wrynn |goto Talador 69.7,21.8
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
_Run up_ the path |goto Talador 68.0,20.4 < 10 |only if walking
_Cross over_ the mountain here and _jump down carefully_ |goto Talador 63.7,18.0 < 10 |only if walking
accept Bonus Objective: Orunai Coast##35236 |goto Talador 60.1,17.6
step
accept Bonus Objective: Orunai Coast##35236
kill 6 Iron Shredder##75815 |q Bonus Objective: Orunai Coast##35236/1 |goto Talador/0 59.7,13.3
click Lumber##231962
|tip They look like cut logs on the ground in stacks of three around this area.
collect 20 Lumber##112994 |q Bonus Objective: Orunai Coast##35236/2 |goto Talador/0 59.7,13.3
step
_Follow_ the path out of Fort Wrynn |goto Talador 70.1,21.4 < 20 |only if walking
accept Bonus Objective: Kuuro's Claim##37421 |goto Talador 74.0,23.6
step
accept Bonus Objective: Kuuro's Claim##37421
_Enter_ the cave |goto Talador 75.3,22.4 < 10 |walk
_Follow_ the path in the cave |goto Talador 76.3,19.5 < 10 |walk |indoors Kuuro's Claim
kill Glowgullet Shardshedder##80013+, Glowgullet Devourer##79190+
Kill #8# Goren |q Bonus Objective: Kuuro's Claim##37421/1 |goto Talador 77.5,18.2 |indoors Kuuro's Claim
kill 6 Iridium Geode##80072 |q Bonus Objective: Kuuro's Claim##37421/2 |goto Talador 78.4,18.6 |indoors Kuuro's Claim
You can find more Iridium Geodes if you run up the path at [Talador 77.5,19]
step
_Follow_ the path toward the cave exit |goto Talador 76.3,19.5 < 10 |walk |indoors Kuuro's Claim
_Leave_ the cave |goto Talador 75.3,22.4 < 10 |walk
_Follow_ the road |goto Talador 72.9,25.3 < 20 |only if walking
talk Archmage Khadgar##80142
turnin An Audience With The Archmage##34631 |goto Talador 75.0,31.2
accept Making Acquaintances##34815 |goto Talador 75.0,31.2
step
_Follow_ the path up |goto Talador 75.5,30.9 < 10 |only if walking
_Continue following_ the path |goto Talador 77.4,29.5 < 10 |only if walking
talk Dominic Arlington##80932
fpath Zangarra |goto 80.4,25.3
step
clicknpc Khadgar's Portal##45454
|tip It's a small blue swirling portal.
Take Khadgar's Portal |q Making Acquaintances##34815/1 |goto 80.63,26.11
step
talk Magister Serena##79392
turnin Making Acquaintances##34815 |goto 84.96,30.97
accept Creating the Ink##34609 |goto 84.96,30.97
accept Forming the Scroll##34612 |goto 84.96,30.97
accept Gathering the Spark##34619 |goto 84.96,30.97
stickystart "pustuleAS"
stickystart "pruneprotectorsAS"
step
clicknpc Arcane Vortex##87570
|tip They look like blue or purple balls of swirling energy.
Harvest the Energy |q Gathering the Spark##34619/1 |count 1 |goto Talador/0 83.3,28.7
step
clicknpc Arcane Vortex##87570
|tip They look like blue or purple balls of swirling energy.
Harvest the Energy |q Gathering the Spark##34619/1 |count 2 |goto 81.7,29.1
step
clicknpc Arcane Vortex##87570
|tip They look like blue or purple balls of swirling energy.
Harvest the Energy |q Gathering the Spark##34619/1 |goto 82.8,27.1
step
label "pruneprotectorsAS"
clicknpc Slumbering Protector##79330
|tip They look like big tree ents either standing still, or laying on the ground around this area.
Prune #3# Slumbering Protectors |q Forming the Scroll##34612/1 |goto Talador 81.5,28.2
step
label "pustuleAS"
kill Encroaching Giant##79333+, Invasive Shambler##79335+
collect 30 Pulsating Pustule##111322 |q Creating the Ink##34609/1 |goto Talador 81.5,28.2
step
Next to you:
|tip If you are in Zangarra she will be standing next to you.
talk Magister Serena##80260
turnin Creating the Ink##34609
turnin Forming the Scroll##34612
turnin Gathering the Spark##34619
accept Next Steps##34875
step
talk Magister Serena##80966
turnin Next Steps##34875 |goto 69.60,21.07
accept The Foot of the Fortress##34908 |goto 69.60,21.07
step
talk Sloan McCoy##86442
accept One Step Ahead##36801 |goto 69.61,20.81
step
talk Quartermaster O'Riley##79963
accept Why Is The Brew Gone?##34773 |goto 69.60,21.57
stickystart "footman"
step
click Thunderbrew Keg##230753
|tip They look like wooden barrels with metal rings around this on the ground around this area.
collect 5 Thunderbrew Keg##111809 |q Why Is The Brew Gone?##34773/2 |goto 72.18,21.57
step
label "footman"
click Footman's Longsword##230752
|tip They look like swords that are sticking out of, or laying around on the ground around this area.
collect 5 Footman Longsword##111808 |q Why Is The Brew Gone?##34773/1 |goto 73.04,19.30
step
_Go through_ the doorway |goto Talador 70.2,21.4 < 20 |only if walking
talk Quartermaster O'Riley##79963
turnin Why Is The Brew Gone?##34773 |goto 69.60,21.59
accept Not In Your House##34804 |goto 69.60,21.59
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
_Run up_ the path |goto Talador 68.1,20.5 < 10 |only if walking
kill Ripgut##80058 |q Not In Your House##34804/1 |goto 67.29,20.91
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
talk Quartermaster O'Riley##79963
turnin Not In Your House##34804 |goto 69.60,21.58
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20 |only if walking
Head out towards the _crossroad_ |goto Talador 66.5,22.7 < 30 |only if walking
talk Vindicator Maraad##75803
turnin One Step Ahead##36801 |goto 63.05,25.89
accept Through the Looking Glass##34087 |goto 63.05,25.89
step
talk Nomaeaa##81061
fpath Redemption Rise |goto Talador 63.3,25.7
step
clicknpc Thaelin's Observicopter##77335
|tip It's a small helicopter machine flying near the ground.
Look Through Thaelin's Observicopter |q Through the Looking Glass##34087/1 |goto 63.07,26.20
step
talk Vindicator Maraad##75803
turnin Through the Looking Glass##34087 |goto 63.05,25.88
accept Too Many Irons in the Fire##34088 |goto 63.05,25.88
step
talk Yrel##75804
accept In Short Supply##34089 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept Thaelin's Quick Fix##34090 |goto 63.09,26.14
stickystart "hordeexplosive"
stickystart "killpeons"
step
use Thaelin's Quick Fix##109161
Destroy the Thunderlord Cache |q Thaelin's Quick Fix##34090/1 |goto Talador 66.5,26.7
step
use Thaelin's Quick Fix##109161
Destroy the Forge |q Thaelin's Quick Fix##34090/2 |goto 64.84,32.72
step
click Iron Shredder Decommission Orders##225726
|tip It's a brown book laying on a large stone.
accept Decommissioned Mission##34091 |goto 61.80,27.53
step
use Thaelin's Quick Fix##109161
Destroy the Log Storage |q Thaelin's Quick Fix##34090/3 |goto Talador 60.9,26.8
step
label "hordeexplosive"
click Iron Horde Explosives##225731
|tip They look like wooden boxes with metal bands around them.
collect 6 Iron Horde Explosives##107855 |q In Short Supply##34089/1 |goto 63.23,31.07
step
label "killpeons"
kill Peon##80313+, Grom'kar Shadowblade##75753+, Iron Shredder##75815+, Grom'kar Deadeye##75749+
Kill #15# Iron Horde |q Too Many Irons in the Fire##34088/1 |goto 63.46,31.06
step
_Go up_ the hill |goto Talador 62.1,23.3 < 10 |only if walking
_Continue following_ the path up |goto Talador 62.5,22.5 < 10 |only if walking
kill Engineer Trak##77387 |q Decommissioned Mission##34091/1 |goto 63.03,23.68
step
clicknpc Decommissioned Iron Shredder##75809
|tip It looks like a bulky metal humanoid machine.
Steal the Decommissioned Iron Shredder |q Decommissioned Mission##34091/2 |goto 63.19,23.68
step
Transport the Decommissioned Iron Shredder to Redemption Rise |q Decommissioned Mission##34091/3 |goto 63.20,25.87
step
talk Yrel##75804
turnin In Short Supply##34089 |goto 63.06,25.83
accept Iron Them Out##34095 |goto 63.06,25.83
step
talk Vindicator Maraad##75803
turnin Too Many Irons in the Fire##34088 |goto 63.04,25.89
accept Dreadpiston##34959 |goto 63.04,25.89
step
talk Thaelin Darkanvil##75874
turnin Thaelin's Quick Fix##34090 |goto 63.09,26.14
turnin Decommissioned Mission##34091 |goto 63.09,26.14
accept Vol. X Pages ?##34094 |goto 63.09,26.14
stickystart "ironshreddermanual"
step
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy #6# Siege Weapons |q Iron Them Out##34095/1 |goto 58.35,29.39
step
kill Dreadpiston##80576 |q Dreadpiston##34959/1 |goto 56.49,27.19
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.90,25.97
step
kill Blademaster Bralok##76981
|tip He's jumping around like a lunatic, slicing things in this building.
collect Ahm's Heirloom##108825 |q Dying Wish##33973/1 |goto 57.05,24.25
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.99
step
label "ironshreddermanual"
kill Burning Blademaster##75794+, Grom'kar Siegesmith##80552+, Fireblade Invoker##77047+
collect 20 Manual Pages##107843 |q Vol. X Pages ?##34094/1 |goto 56.35,26.56
step
talk Thaelin Darkanvil##75874
turnin Vol. X Pages ?##34094 |goto 63.09,26.15
step
talk Vindicator Maraad##75803
turnin Dreadpiston##34959 |goto 63.05,25.90
step
talk Yrel##75804
turnin Iron Them Out##34095 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept An Eye for a Spy##34096 |goto 63.09,26.15
step
clicknpc Thaelin's Observicopter##77335
|tip It's a small helicopter machine hovering near the ground.
Look through Thaelin's Observicopter |q An Eye for a Spy##34096/1 |goto 63.06,26.20
step
talk Thaelin Darkanvil##75874
turnin An Eye for a Spy##34096 |goto 63.09,26.14
accept Born to Shred##34097 |goto 63.09,26.14
step
clicknpc Iron Shredder Prototype##75721
|tip It's a big shaking humoid metal machine.
Take Control of the Iron Shredder |q Born to Shred##34097/1 |goto 63.08,26.34
step
_Enter_ the Tuurem area |goto Talador 63.2,39.6 < 20 |only if walking
Use the abilities on your hot bar:
kill Grom'kar Vanguard##75948+, Grom'kar Deadeye##75943+, Burning Blademaster##75945+, Grom'kar Shadowblade##75946+, Grom'kar Grimshot##75947+, Fireblade Invoker##77066+
Slay #100# Iron Horde |q Born to Shred##34097/2 |goto 61.98,39.32
step
talk Iron Shredder Prototype##75968
|tip Click yourself, since you're riding in the Iron Shredder Prototype.
turnin Born to Shred##34097
accept Engineering Her Demise##34098
step
kill Ketya Shrediron##75986 |q Engineering Her Demise##34098/1 |goto 61.08,38.83
step
talk Vindicator Maraad##75803
turnin Engineering Her Demise##34098 |goto 63.04,25.89
accept Khadgar's Plan##34963 |goto 63.04,25.89
step
_Cross_ the bridge |goto Talador 56.7,34.0 < 20 |only if walking
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34963 |goto 54.18,36.43
accept The Battle for Shattrath##34099 |goto 54.18,36.43
step
Go to _The Battle for Shattrath_ |goto 50.81,35.30 < 40 |c |only if havequest(34099)
talk Thaelin Darkanvil##77192
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Thaelin |scenariogoal 1/25835 |goto 50.48,34.89
step
clicknpc Iron Star##86671
|tip It's a giant metal wheel of destruction.
Enter the Iron Star |scenariogoal 2/25177 |goto Talador 50.4,34.9
scenariostage 2 |q 34099
step
_Roll through_ the area towards the Harbor |goto Talador 45.6,34.8 < 20 |only if walking
Reach the Harbor |scenariogoal 3/25176 |goto 45.4,25.1
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto 45.4,24.6
scenariostage 3 |q 34099
step
Kill enemies while Khadgar casts his spell
Protect Khadgar |scenariogoal 4/24351 |goto Talador 45.4,23.5
|tip Stand in the circles of light to gain healing.
scenariostage 4
step
Confront Blackhand |scenariogoal 5/25178 |goto Talador 46.7,20.9
step
Watch the dialogue
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Khadgar to Teleport to the Battleship |scenariogoal 5/24679 |goto Talador 46.7,20.8
step
kill Machinist B'randt##80962
Defeat Machinist B'randt |scenariogoal 5/24352 |goto Talador 48.5,12.8
scenariostage 5 |q 34099
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Khadgar to Teleport to the Flagship |scenariogoal 6/24680 |goto Talador 48.5,12.9
step
kill Blackhand##77256
Survive Blackhand's onslaught |scenariogoal 6/24678 |goto Talador 46.5,19.1
Complete the Battle for Shattrath |q The Battle for Shattrath##34099/1 |goto Talador 46.5,19.1
scenariostage 6 |q 34099
step
clicknpc Portal to Talador##45454 |goto Talador 46.6,20.9 < 5
Teleport back to _Fort Wrynn_ |goto 69.7,21.0 < 100 |noway |c |q 34099
only if havequest(34099)
step
talk Yrel##79608
turnin The Battle for Shattrath##34099 |goto 69.68,21.09
step
_Run through_ the building and _cross the bridge_ |goto Talador 50.9,46.0 < 10 |only if walking
_Jump down_ the cliff |goto 52.7,49.9 < 20 |only if walking
_Go through_ the doorway |goto Talador 57.0,53.1 < 10 |only if walking
talk Defender Illona##79979
accept Gatekeepers of Auchindoun##34777 |goto 57.43,51.11
step
talk Soulbinder Halaari##79977
Tell her _"So be it."_
kill Soulbinder Halaari##79977
|tip She heals herself when she gets low on health. Save any interrupts you have for when she tries to heal.
Defeat Soulbinder Halaari |q Gatekeepers of Auchindoun##34777/2 |goto 57.33,52.65
step
talk Vindicator Dalu##79970
Tell him _"Very well. Let us fight."_
kill Vindicator Dalu##79970
Defeat Vindicator Dalu |q Gatekeepers of Auchindoun##34777/1 |goto 57.39,52.77
step
talk Defender Illona##79979
turnin Gatekeepers of Auchindoun##34777 |goto 57.43,51.11
accept The True Path##36519 |goto 57.42,51.12
step
_Run along_ the path to the left |goto Talador 52.2,63.0 < 20 |only if walking
talk Niaa##81077
fpath Exarch's Refuge | goto Talador 54.8,68.8
step
_Follow_ the stone path |goto Talador 59.3,68.3 < 20 |only if walking
talk Magister Serena##80607
turnin The Foot of the Fortress##34908 |goto Talador 62.3,68.3
accept Dropping In##34913 |goto Talador 62.3,68.3
step
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Catapult |q Dropping In##34913/1 |count 1 |goto 63.61,68.98
step
_Run up_ the path |goto Talador 63.9,69.8 < 10 |only if walking
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Catapults |q Dropping In##34913/1 |count 2 |goto Talador 65.5,68.8
step
clicknpc Gordunni Boulderthrower##80428
|tip It looks like a big stone and wooden contraption.
Destroy the Catapults |q Dropping In##34913/1 |count 3 |goto Talador 66.8,67.9
step
_Run up_ the path |goto Talador 67.5,68.6 < 10 |only if walking
Meet Serena at the Gate |q Dropping In##34913/2 |goto 69.16,69.46
step
clicknpc Serena's Portal##45454
|tip It's a blue swirling portal.
Take the Portal |q Dropping In##34913/3 |goto 69.15,69.45
step
talk Magister Serena##80608
turnin Dropping In##34913 |goto 69.94,69.46
accept While We're in the Neighborhood##34909 |goto 69.94,69.46
accept Vicious Viziers##34910 |goto 69.94,69.46
accept Orbs of Power##34911 |goto 69.94,69.46
stickystart "gordunnibeadsAS"
step
click Astral Ward##230960
|tip It looks like a big blue orb floating over a stone pedastal.
Destroy the Astral Ward |q Orbs of Power##34911/1 |count 1 |goto Talador 70.2,72.3
step
_Cross_ the bridge |goto Talador 69.5,73.7 < 20 |only if walking
_Run over_ the small hill |goto Talador 68.8,75.9 < 10 |only if walking
click Astral Ward##230960
|tip It looks like a big blue orb floating over a stone pedastal.
Destroy the Astral Ward |q Orbs of Power##34911/1 |count 2 |goto Talador 68.2,76.4
step
click Astral Ward##230960
|tip It looks like a big blue orb floating over a stone pedastal.
Destroy the Astral Ward |q Orbs of Power##34911/1 |count 3 |goto Talador 69.4,79.7
step
_Go up_ the stairs |goto Talador 68.5,79.0 < 10 |only if walking
kill Vizier Vorgorsh##80294 |q Vicious Viziers##34910/1 |goto 68.53,82.94
|tip He's inside the stone building.
step
click Astral Ward##230960
|tip It looks like a big blue orb floating over a stone pedastal.
Destroy the Astral Ward |q Orbs of Power##34911/1 |count 4 |goto Talador 69.0,82.1
step
_Run up_ the stairs |goto Talador 67.8,79.5 < 10 |only if walking
click Astral Ward##230960
|tip It looks like a big blue orb floating over a stone pedastal.
Destroy the Astral Ward |q Orbs of Power##34911/1 |goto Talador 67.5,78.0
step
kill Vizier Zulmork##80292 |q Vicious Viziers##34910/2 |goto 67.1,77.0
|tip He's inside the stone building.
step
kill Vizier Cromaug##80295 |q Vicious Viziers##34910/3 |goto 66.30,80.94
|tip He's inside the stone building.
step
label "gordunnibeadsAS"
kill Gordunni Cleaver##79234+, Gordunni Basher##79231+
collect 8 Gordunni Runebeads##112088 |q While We're in the Neighborhood##34909/1 |goto Talador 66.0,79.9
step
Next to you:
|tip If you are in Gordal Fortress, she will be next to you.
talk Magister Serena##80617
turnin While We're in the Neighborhood##34909 |goto 66.48,78.92
turnin Vicious Viziers##34910 |goto 66.63,78.87
turnin Orbs of Power##34911 |goto 66.63,78.87
accept The Final Step##34912 |goto 66.63,78.87
step
_Go up_ the stairs |goto Talador 65.5,80.1 < 10 |only if walking
use Scroll of Mass Teleportation##112543
kill Witch Lord Morkurk##80335 |q The Final Step##34912/1 |goto 64.07,81.79
|tip Run into the blue bubble when your helpers tell you to take cover within the shield. This will protect you from Witch Lord Morkurk's powerful AoE attack.
step
click Arcane Nexus##231056
|tip It looks like a glowing stone floating in the center of the golden aura on the ground.
collect Arcane Nexus##112196 |q The Final Step##34912/2 |goto Talador 64.2,81.8
step
Next to you:
|tip If you are in Gordal Fortress, she will be next to you.
talk Magister Serena##80617
turnin The Final Step##34912 |goto 64.28,81.85
accept Due Cause to Celebrate##34711 |goto 64.28,81.85
Wait For Magister Serena to Teleport You |goto Talador 69.7,20.8 < 100 |c |q 34711 |only if havequest(34711)
step
talk Magister Serena##80672
turnin Due Cause to Celebrate##34711 |goto 69.73,20.79
accept Joining the Ranks##34993 |goto 69.73,20.79
step
talk Kalaam##79573
accept As the Smoke Rises##34685 |goto 69.47,21.47
step
talk Vindicator Icia##79618
accept Speaker for the Dead##34701 |goto 69.65,21.61
step
_Leave_ Fort Wrynn |goto Talador 70.1,21.4 < 10 |only if walking
_Cross_ the bridge |goto Talador 73.0,25.9 < 20	|only if walking
_Follow_ the road |goto Talador 74.8,31.3 < 20 |only if walking
talk Crystal-Shaper Barum##75896
turnin As the Smoke Rises##34685 |goto 73.07,38.73
accept Burning Sky##33740 |goto 73.07,38.73
accept Pieces of Us##33734 |goto 73.07,38.73
stickystart "adherentkilledAS"
step
_Cross_ the bridge |goto Talador 75.3,40.6 < 10 |only if walking
click Barum's Notes##225778
|tip It looks like an open book laying on the ground.
accept Barum's Notes##33761 |goto 76.27,42.80
step
_Enter_ the building |goto Talador 75.9,43.9 < 10 |walk
click Annals of Aruuna##225748
|tip It's a floating crystal shaped like a triangle.
collect Annals of Aruuna##107859 |q Pieces of Us##33734/3 |goto Talador 75.4,44.1
step
_Leave_ the building |goto Talador 75.9,43.9 < 10 |walk
click Honed Crystal##225773
|tip It's a small red crystal laying on the ground.
Test the Honed Crystal |q Barum's Notes##33761/1 |goto 76.69,42.54
step
click Harmonic Crystal##225776
|tip It's a small bright green bunch of crystals sitting on a wooden barrel.
Test the Harmonic Crystal|q Barum's Notes##33761/3 |goto Talador 77.3,42.1
step
click Polished Crystal##225774
|tip It's a small white crystal laying on the ground.
Test the Polished Crystal |q Barum's Notes##33761/2 |goto Talador 77.5,41.4
step
click Crystal-Shaper's Tools##225745
|tip It's a small metal lockbox sitting on a table.
collect Crystal-Shaper's Tools##107851 |q Pieces of Us##33734/1 |goto Talador 77.5,41.2
step
_Run up_ the stairs |goto Talador 76.9,42.8 < 20 |only if walking
talk Raksi##75311
accept Pyrophobia##33578 |goto 77.73,43.95
step
click Melani's Doll##225746
|tip It looks like a small white doll sitting in a chair.
collect Melani's Doll##107856 |q Pieces of Us##33734/2 |goto Talador 77.9,43.0
step
_Go up_ the stairs and _into_ the building |goto Talador 77.7,44.1 < 10 |walk
kill Sun-Sage Kairyx##75302 |q Pyrophobia##33578/1 |goto 78.29,44.97
step
_Leave_ the building |goto Talador 77.9,44.4 < 10 |walk
talk Raksi##75311
turnin Pyrophobia##33578 |goto 77.74,43.96
accept What the Draenei Found##33579 |goto 77.74,43.96
step
label "adherentkilledAS"
kill 12 Adherent Wing-Guard##75283+, Adherent Squallbringer##75290+, Adherent Sun-Caller##85434+
Slay #12# Adherent Invaders |q Burning Sky##33740/1 |goto Talador 77.2,43.4
step
_Enter_ the mine |goto Talador 78.3,35.5 < 20 |walk
_Follow_ the path in the mine |goto Talador 80.3,34.7 < 10 |walk |indoors Aruuna Crystal Mine
_Cross_ the plank bridge |goto 81.4,37.6 < 10 |walk |indoors Aruuna Crystal Mine
click Ancient Prism##224825
|tip It's a big floating crystal that changes colors.
Examine the Ancient Prism |q What the Draenei Found##33579/1 |goto 82.70,37.89 |indoors Aruuna Crystal Mine
step
talk Raksi##75469
turnin What the Draenei Found##33579 |goto Talador 82.6,37.8 |indoors Aruuna Crystal Mine
step
talk Shadow-Sage Iskar##75288
accept The Purge of Veil Shadar##33580 |goto 70.48,56.83
step
talk Skytalon Inuz##81354
fpath Terokkar Refuge |goto Talador 70.3,57.1
step
talk Darkscryer Raastok##75323
accept Forbidden Knowledge##33581 |goto 70.51,57.33
step
talk Kura the Blind##75324
accept Kura's Vengeance##33582 |goto 70.77,56.80
step
talk Elumm##79724
|tip He walks on this road, so you may have to search for him.
accept Seek Out the Seer##33871 |goto Talador 71.4,47.6
He _travels the road_ between these 2 points:
Point _A_: [Talador 71.4,47.6]
Point _B_: [Talador 67.2,42.9]
step
talk Seer Malune##76665
turnin Seek Out the Seer##33871 |goto Talador 65.4,50.7
accept Dust of the Dead##33872 |goto Talador 65.4,50.7
accept Cure of Aruunem##33873 |goto Talador 65.4,50.7
stickystart "cureofaruunem_AS"
step
kill Agitated Duskwing##76668+, Duskwing Flutterer##77331+, Elder Duskwing##77328+
collect 7 Handful of Duskwing Dust##108645 |q Dust of the Dead##33872/1 |goto Talador 65.8,52.1
step
label "cureofaruunem_AS"
click Aruunem Berry Bush##226888
|tip They look like leafy bushes with small red berries on them.
collect 60 Aruunem Berries##108655 |q Cure of Aruunem##33873/1 |goto Talador 65.8,52.1
step
talk Seer Malune##76665
turnin Dust of the Dead##33872 |goto Talador 65.4,50.7
turnin Cure of Aruunem##33873 |goto Talador 65.4,50.7
accept Aruumel's Rest##33874 |goto Talador 65.4,50.7
step
use Elixir of Memories##108749
Enter the spirit realm |havebuff 460857 |q Aruumel's Rest##33874 |c
only if havequest(33874)
step
kill Aruumel##76824 |q Aruumel's Rest##33874/1 |goto Talador 68.9,55.0
step
talk Seer Malune##76665
turnin Aruumel's Rest##33874 |goto Talador 65.4,50.7
step
accept Bonus Objective: Aruuna's Desolation##34639
kill Frenzied Ancient##79409 |q Bonus Objective: Aruuna's Desolation##34639/1 |goto 76.18,48.67
|tip He's a burning tree that walks around this area, so you may have to search for him.
clicknpc Panicked Young Prowler##79432+
Calm #7# Young Prowlers |q Bonus Objective: Aruuna's Desolation##34639/2 |goto 75.80,49.12
step
talk Crystal-Shaper Barum##75913
turnin Burning Sky##33740 |goto 76.71,55.25
turnin Pieces of Us##33734 |goto 76.71,55.25
turnin Barum's Notes##33761 |goto 76.71,55.25
stickystart "shadowtomeAS"
stickystart "evacuateoutcastAS"
step
_Enter_ the cave |goto Talador 80.2,61.6 < 10 |walk
kill Wing-Guard Kuuan##75353 |q Kura's Vengeance##33582/1 |goto 80.34,64.03
step
label "shadowtomeAS"
_Leave_ the cave |goto Talador 80.2,61.6 < 10 |walk
click Eat, Scry, Love##225513
|tip The books have many different names. They look like small red books on the ground and under blue canopies all around this area. There's also one in the cave where you kill Wing-Guar Kuuan.
Collect #6# Shadow Tomes |q Forbidden Knowledge##33581/1 |goto 74.64,62.34
step
label "evacuateoutcastAS"
talk Outcast Shadeweaver##75336
|tip There are multiple Outcast named mobs. They are arrakoas standing all around this area.
Evacuate #8# Outcasts |q The Purge of Veil Shadar##33580/1 |goto Talador 75.9,62.7
step
talk Shadow-Sage Iskar##75288
turnin The Purge of Veil Shadar##33580 |goto 70.66,57.39
step
talk Darkscryer Raastok##75323
turnin Forbidden Knowledge##33581 |goto 70.51,57.35
step
talk Kura the Blind##75324
turnin Kura's Vengeance##33582 |goto 70.77,56.79
step
talk Aeun##79689
accept Every Bit Counts##34709 |goto 55.97,68.30
step
talk Exarch Maladaar##75119
turnin Speaker for the Dead##34701 |goto 55.65,67.73 |only if havequest(34701)
accept Holding the Line##34407 |goto 55.66,67.74
step
talk Vindicator Kaluud##81789
accept Powering the Defenses##34458 |goto 55.64,67.77
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.14
stickystart "killinvadersAS"
step
talk Vindicator Nobundo##78482
accept Disrupting the Flow##33917 |goto 56.75,65.95
step
kill O'mogg Blackheart##76876 |q The Heart of Auchindoun##33920/1 |goto 56.49,62.84
step
click Karab'uun##229269
|tip It's a big pink crystal suspended in chains.
collect Karab'uun##108733 |q The Heart of Auchindoun##33920/2 |goto 56.68,62.50
step
click Burning Resonator##229139
|tip They look like green glowing crystals floating above spiked altars.
Destroy #4# Burning Resonators |q Disrupting the Flow##33917/1 |goto 56.29,63.28
step
label "killinvadersAS"
kill Abyssal Invader##78433+, Burning Hunter##78457+, Legion Assailant##76883+
Slay #15# Demons |q Holding the Line##34407/1 |goto 56.34,64.08
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.70,65.96
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.14
step
talk Exarch Maladaar##75119
turnin Holding the Line##34407 |goto 55.65,67.71
step
_Enter_ the tomb and _follow_ the path |goto Talador/13 46.9,21.5 < 10 |walk
_Go through_ the doorway |goto Talador/13 54.5,29.7 < 10 |walk
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##34458 |goto Talador/13 68.38,19.36
accept We Must Construct Additional Pylons##34351 |goto Talador/13 62.14,63.70
step
_Go through_ the doorway |goto Talador/13 54.5,29.7 < 10 |walk
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto Talador/13 52.17,38.65
stickystart "arkoniteAS"
step
Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto Talador/13 59.0,54.4
step
kill Tagar Spinebreaker##76745 |q Nightmare in the Tomb##33530/2 |goto Talador/13 63.71,68.14
step
_Run up_ the ramp |goto Talador/13 57.2,49.3 < 10 |walk
_Go through_ the doorway |goto Talador/13 47.3,35.7 < 10 |walk
click Arkonite Pylon##229034
|tip It looks like a large floating slab of stone.
collect Arkonite Pylon##110271 |q We Must Construct Additional Pylons##34351/2 |goto 32.02,48.82
step
label "arkoniteAS"
click Arkonite Crystal##229422
|tip They look like big purple crystals all over the ground around this area.
collect 6 Arkonite Crystal##110253 |q We Must Construct Additional Pylons##34351/1 |goto Talador/13 53.8,34.6
step
_Go through_ the doorway |goto Talador/13 48.6,25.5 < 10 |walk
_Run up_ the stairs |goto Talador/13 43.0,22.2 < 10 |walk
talk Exarch Maladaar##75119
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.7,67.7
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.13,67.41
step
talk Exarch Maladaar##75119
accept Light's Rest##34452 |goto 55.66,67.70
step
talk Exarch Maladaar##75250
turnin Light's Rest##34452 |goto 57.23,77.03
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33958 |goto 57.19,76.94
step
talk Soulbinder Tuulani##78028
accept Antivenin##33967 |goto 57.23,76.91
step
talk Vindicator Namuun##78102
accept Vile Defilers##33969 |goto 57.55,76.70
stickystart "deathwebfangAS"
step
_Enter_ the cave |goto Talador/0 61.1,84.0 < 20 |walk
_Follow_ the path in the cave |goto Talador/0 62.4,83.9 < 10 |walk |indoors Deathweb Hollow
kill Xanatos the Defiler##75294 |q Into the Hollow##33958/1 |goto 65.44,86.64 |indoors Deathweb Hollow
stickystop "deathwebfangAS"
step
click Sha'tari##229596
|tip It looks like a pink crystal with a shield around it floating next to the eggs.
collect Sha'tari##110683 |q Into the Hollow##33958/2 |goto 65.79,86.87 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33969/1 |count 1 |goto Talador 64.8,86.9 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33969/1 |count 2 |goto 65.3,85.4 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33969/1 |count 3 |goto 64.0,85.6 |indoors Deathweb Hollow
stickystart "deathwebfangAS"
step
_Enter_ the hallway |goto Talador/0 63.3,84.4 < 10 |walk |indoors Deathweb Hollow
_Follow_ the path |goto Talador/0 62.3,84.0 < 10 |walk |indoors Deathweb Hollow
_Leave_ the cave |goto Talador/0 61.1,84.0 < 10 |walk
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33969/1 |count 4 |goto Talador 58.7,82.7
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33969/1 |count 5 |goto Talador 61.6,81.7
step
label "deathwebfangAS"
kill Deathweb Egg Tender##76947+, Deathweb Hatchling##75258+
collect 9 Deathweb Fang##109744 |q Antivenin##33967/1 |goto 60.18,81.1
step
talk Vindicator Namuun##78102
turnin Vile Defilers##33969 |goto 57.55,76.70
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33967 |goto 57.23,76.91
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33958 |goto 57.18,76.92
step
talk Exarch Maladaar##75250
accept Scheduled Pickup##34240 |goto 57.23,77.04
step
accept Bonus Objective: Zorkra's Fall##34660
clicknpc Zorka's Void Gate##79520
|tip They look like big blue and pink swirling portals around this area.
Seal #4# of Zorka's Void Gates |q Bonus Objective: Zorkra's Fall##34660/1 |goto Talador/0 53.9,87.5
kill 6 Shattered Hand Grunt##79544 |q Bonus Objective: Zorkra's Fall##34660/2
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34240 |goto 50.42,87.50
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.50
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.51,87.54
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
step
_Run up_ the stairs |goto Talador/0 50.0,87.6 < 10 |only if walking
click Hastily Written Note##227069
|tip It looks like a scroll laying on the ground next to the fountain.
accept Invasion of the Soul Eaters##33988 |goto 49.20,88.07
stickystart "telmorinvadors"
step
click Telmor Registry##227054
|tip It looks like an open book laying on some white sacks, next to a pile of boxes.
collect Telmor Registry##108896 |q Never Forget##34013/1 |goto 49.23,87.82
step
click Forge##227067
|tip It looks like a metal hooded object with fire inside of it.
collect Auchenai Torch##108886 |q Invasion of the Soul Eaters##33988/1 |goto 49.23,87.82
stickystart "pilesofbodies"
step
_Run up_ the stairs |goto Talador 49.0,89.4 < 10 |only if walking
_Go through_ the dooway |goto Talador 48.9,90.5 < 10 |walk
click Auchenai Prayerbook##227959
|tip It looks like a floating book with a blue glowing symbol on it inside the building.
collect Auchenai Prayerbook##109622 |q Never Forget##34013/2 |goto 49.32,90.79
step
_Leave_ the building |goto Talador 48.9,90.5 < 10 |walk
_Go through_ the doorway |goto Talador 47.8,89.5 < 10 |walk
click Leafshadow##227055
|tip It looks like a large greyish green pointed stone inside the building.
collect Leafshadow##108897 |q Never Forget##34013/3 |goto 47.54,88.96
step
_Leave_ the building |goto Talador 47.8,89.5 < 10 |walk
_Run up_ the stairs |goto Talador 47.4,90.0 < 10 |only if walking
_Enter_ the building |goto Talador 45.3,90.4 < 10 |walk
talk Restalaan##77082
turnin Restalaan, Captain of the Guard##34508 |goto 44.85,90.50
accept The Final Piece##33976 |goto 44.85,90.50
step
kill Vorpil Ribcleaver##77051 |q The Final Piece##33976/1 |goto 44.45,90.89
click Auch'naaru##229654
|tip It looks like a big floating pink crystal with a shield around it.
collect Auch'naaru##109197 |q The Final Piece##33976/2 |goto 44.45,90.89
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.86,90.52
accept Changing the Tide##34326 |goto 44.86,90.52
step
label "pilesofbodies"
clicknpc Body Pile##77003
|tip They looks like piles of blue bodies on the ground around this whole area.
Burn #4# Piles of Bodies |q Invasion of the Soul Eaters##33988/2 |goto 49.57,89.07
step
label "telmorinvadors"
kill Demon Conjurer##77901+, Fervid Adherent##77022+, Depraved Hunter##77026+, Wrathguard Destroyer##75382+
Kill #12# Telmor invaders |q Payback##34234/1 |goto Talador 48.6,88.2
step
Click the _Quest Complete_ Box:
turnin Invasion of the Soul Eaters##33988
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.39,87.30
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.51,87.54
step
_Follow_ the road |goto Talador 46.9,81.5 < 20 |only if walking
talk Beldos##81068
fpath Retribution Point |goto Talador 42.1,76.8
step
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.95
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Exarch Maladaar##75392
accept Ogre Diplomacy##35227 |goto 42.92,76.10
stickystart "killango'rosh"
step
_Enter_ the ogre area here |goto Talador 41.4,80.3 < 20 |only if walking
_Go up_ the stairs |goto Talador 40.2,83.3 < 10 |only if walking
kill Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto Talador 39.5,83.7
step
_Follow_ the path |goto Talador 40.1,83.3 < 10 |only if walking
kill Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto Talador 42.7,84.9
step
_Follow_ the path |goto Talador 41.8,84.2 < 10 |only if walking
clicknpc Altar of Ango'rosh##77393
|tip It looks like a big torch with skulls on it, standing in a pile of rocks.
Perform the Ritual |q Desperate Measures##34092/3 |goto 41.18,82.44
|tip Make sure you DO NOT move until the objective completes after you start ritual.
step
label "killango'rosh"
kill Ango'rosh Spellweaver##77362+, Ango'rosh Crusher##77352+, Ango'rosh Hunter##77402+
Kill #10# Ango'rosh |q Ogre Diplomacy##35227/1 |goto 41.00,82.61
step
_Leave_ the ogre area here |goto Talador 41.4,80.3 < 20 |only if walking
talk Exarch Maladaar##75392
turnin Ogre Diplomacy##35227 |goto 42.93,76.12
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.94
step
talk Exarch Maladaar##75392
accept Retribution for the Light##35254 |goto 42.93,76.11
accept Into the Heart of Madness##34157 |goto 42.93,76.11
step
_Follow_ the path |goto Talador 38.0,78.5 < 20 |only if walking
click Shadow Council Communicator##227737
|tip It looks like a purple orb floating in a metal stand.
accept Hiding in the Shadows##34163 |goto 37.25,79.39
stickystart "gorebounddemons"
step
clicknpc Shadow Orb##40469
|tip It's a big floating purple orb at the top of this wooden tower.
Destroy the Eastern Shadow Orb |q Hiding in the Shadows##34163/1 |goto 37.79,77.32
step
_Run up_ the small hill |goto Talador 37.0,78.8 < 10 |only if walking
_Go up_ the hills and _follow_ the path up |goto Talador 36.4,79.8 < 10 |only if walking
clicknpc Shadow Orb##40469
|tip It's a big floating purple orb at the top of this wooden tower.
Destroy the Southern Shadow Orb |q Hiding in the Shadows##34163/2 |goto 35.62,79.85
step
_Follow_ the path |goto Talador 35.0,79.3 < 10 |only if walking
talk Kor'thos Dawnfury##77629
accept Book Burning##34164 |goto 34.01,73.97
stickystart "shadowcouncil"
step
_Run up_ the path |goto Talador 34.2,73.1 < 10 |only if walking
clicknpc Shadow Orb##40469
|tip It's a big floating purple orb at the top of this wooden tower.
Destroy the Northern Shadow Orb |q Hiding in the Shadows##34163/3 |goto 34.46,70.38
step
Click the _Complete Quest_ Box:
turnin Hiding in the Shadows##34163
step
label "shadowcouncil"
kill Shadowborne Dementor##77548+
collect 3 Shadow Council Spellbook##109259 |goto Talador 34.6,73.0 |q 34164
step
click Roaring Fire
|tip It looks like a huge green-yellow bonfire.
Burn #3# Books |q Book Burning##34164/1 |goto 34.15,74.21
step
talk Kor'thos Dawnfury##77629
turnin Book Burning##34164 |goto 34.01,73.97
step
label "gorebounddemons"
kill Gorebound Legionnaire##79127+, Shadowborne Dementor##79187+, Gorebound Demonguard##77541+, Ravenous Mongrel##79110+, Eye of Gul'dan##77563+, Gorebound Vessel##79125+, Felwrought Annihilator##77528+
Slay #15# Demons |q Retribution for the Light##35254/1 |goto 34.53,73.91
step
_Run up_ the path |goto Talador 32.5,75.1 < 10 |only if walking
_Continue following_ the dirt path |goto Talador 32.1,75.7 < 10 |only if walking
_Enter_ the cave |goto Talador 31.9,74.6 < 10 |walk
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.22,73.61
accept Destination: Unknown##34154 |goto 31.22,73.61
step
clicknpc Demonic Gateway##77571
|tip It looks like a big green portal.
Take the Portal |q Destination: Unknown##34154/1 |goto 30.92,73.15
step
While you are inside the Portal:
kill Mongrethod##77579 |q Destination: Unknown##34154/2
|tip You will have a lot of help killing him.
step
While you are inside the Portal:
clicknpc Demonic Gateway##77571
|tip It looks like a swirling portal with a demon skull above it.
Take the Portal |q Destination: Unknown##34154/3
step
clicknpc Exarch Maladaar##75250
turnin Retribution for the Light##35254 |goto 45.69,74.05
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34154 |goto 46.32,74.08
accept Together We Are Strong##36512 |goto 46.32,74.08
step
talk Exarch Maladaar##77581
accept Come Together##34707 |goto 45.69,74.07
step
_Follow the stairs_ up |goto Talador/0 44.6,74.6 < 20
_Follow_ the path |goto Talador/0 42.8,74.4 < 20
talk Caleb##76826
accept Just Peachicky##33882 |goto Talador/0 36.2,65.0
accept Sher'KHAAAAAAANNNN!##33884 |goto Talador/0 36.2,65.0
stickystart "sharpfang_stalkersAS"
stickystart "peachicksAS"
step
_Follow_ the path up |goto Talador/0 34.7,64.1 < 20 |only if walking
_Run up_ the grassy path |goto Talador/0 32.7,66.0 < 20 |only if walking
_Continue_ up the path |goto Talador/0 32.3,67.4 < 20 |only if walking
_Enter_ the cave |goto Talador/0 32.0,69.1 < 20 |walk
kill Sher'khaan##76687 |q Sher'KHAAAAAAANNNN!##33884/2 |goto Talador/0 31.0,71.2
|tip There are 3 Frightened Peachicks next to Sher'khan in the cave.
step
click Ricky##226987
|tip It looks like a tiny blue elephant on the ground inside this cave.
accept And the Elekk Too?!##33944 |goto Talador/0 30.9,70.8
step
label "sharpfang_stalkersAS"
kill 8 Sharpfang Stalker##76685 |q Sher'KHAAAAAAANNNN!##33884/1 |goto Talador/0 32.0,68.0
|tip They look like black tigers with red stripes all around this area.
step
label "peachicksAS"
clicknpc Frightened Peachick##76722+
|tip They look like tiny pink-feathered birds running quickly on the ground around this whole area. They are kind of hard to spot, so keep an eye out.
Rescue #7# Frightened Peachicks |q Just Peachicky##33882/1 |goto Talador/0 32.0,68.0
step
_Follow_ the road |goto Talador/0 33.4,61.4 < 30 |only if walking
talk Caleb##76826
turnin Just Peachicky##33882 |goto Talador/0 36.2,65.0
turnin Sher'KHAAAAAAANNNN!##33884 |goto Talador/0 36.2,65.0
turnin And the Elekk Too?!##33944 |goto Talador/0 36.2,65.0
step
_Follow_ the path |goto Talador/0 37.3,67.6 < 30 |only if walking
accept Bonus Objective: Court of Souls##34667 |goto Talador/0 43.8,63.5
stickystart "bonuscourtAS"
step
accept Bonus Objective: Court of Souls##34667
clicknpc Auchenai Ballista##79523
|tip They look like machines made of wood and stone aimed at the sky.
Left-click to target Shadowgaze Batriders
|tip They are flying around in the sky.
Use the ballista's abilities to shoot them down
Shoot Down #4# Shadowgaze Batriders |q Bonus Objective: Court of Souls##34667/3 |goto Talador/0 43.8,63.5
step
accept Bonus Objective: Court of Souls##34667
_Click the yellow arrow_ to release from the ballista
kill Warlock Soulstealer##79482+
Release #8# Draenei Spirits |q Bonus Objective: Court of Souls##34667/1 |goto Talador 43.2,60.9
step
label "bonuscourtAS"
accept Bonus Objective: Court of Souls##34667
kill Doombringer##79503+, Searing Ravager##79506+, Tormenting Concubine##79540+
Slay #10# Demons |q Bonus Objective: Court of Souls##34667/2 |goto Talador/0 43.2,60.9
step
_Leave_ the Court of Souls area |goto Talador 44.7,60.5 < 10 |only if walking
talk Ageilaa##78534
turnin Every Bit Counts##34709 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390+
|tip Don't kill them, just get them to 35% Health or less, then stop attacking them.
use Dissipation Crystal##110468
|tip Use the Dissipation Crystal on weakened Frenzied Manafeeders. You have to be close to them to be able to use the item
Soothe #8# Frenzied Manafeeders |q Frenzied Manafeeders##34400/1 |goto 51.43,55.25
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.17
step
_Enter_ the cave |goto Talador 51.2,51.4 < 20 |walk
talk Vindicator Doruu##78538
turnin Trouble In The Mine##34399 |goto 51.62,50.46 |indoors Jorune Mine
step
talk Archmage Elandra##78513
accept Arcane Essence##34403 |goto 51.64,50.52 |indoors Jorune Mine
accept Caught In The Chaos##34406 |goto 51.64,50.53 |indoors Jorune Mine
stickystart "injured_minersAS"
step
kill Arcane Wraith##78326+, Crystal Rager##78327+
collect 6 Arcane Essence##110390|q Arcane Essence##34403/1 |goto 52.07,48.50 |indoors Jorune Mine
step
label "injured_minersAS"
kill Arcane Wraith##78326+, Crystal Rager##78327+
Save #8# Injured Miners |q Caught In The Chaos##34406/1 |goto 52.07,48.50 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 10 |walk |indoors Jorune Mine
talk Archmage Elandra##78513
turnin Arcane Essence##34403 |goto 51.64,50.51 |indoors Jorune Mine
turnin Caught In The Chaos##34406 |goto 51.64,50.51 |indoors Jorune Mine
accept An'dure The Giant##34415 |goto 51.64,50.51 |indoors Jorune Mine
step
kill An'dure the Awakened##78372
collect Crystal Giant Heart##110418 |q An'dure The Giant##34415/1 |goto Talador 54.3,50.0 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 10 |walk |indoors Jorune Mine
talk Archmage Elandra##78513
turnin An'dure The Giant##34415 |goto 51.64,50.52 |indoors Jorune Mine
accept Kaelynara Sunchaser##34448 |goto 51.64,50.52 |indoors Jorune Mine
step
talk Archmage Elandra##78513
Tell her _"I am ready to confront Kaelynara."_
Speak With Elandra |q Kaelynara Sunchaser##34448/1 |goto 51.65,50.51 |indoors Jorune Mine
step
Wait to be teleported:
kill Kaelynara Sunchaser##78501 |q Kaelynara Sunchaser##34448/2 |goto 52.08,47.54 |indoors Jorune Mine
step
talk Archmage Elandra##78741 |goto Talador 52.1,47.7 |indoors Jorune Mine
Tell her _"I am ready to return to the Jorune Mine."_
Teleport Back Into Jorune Mine |goto Talador 51.6,50.5 < 10 |noway |c |q 34448 |indoors Jorune Mine
only if havequest(34448)
step
talk Vindicator Doruu##78538
turnin Kaelynara Sunchaser##34448 |goto 51.62,50.48 |indoors Jorune Mine
step
talk Vindicator Icia##79618
turnin Come Together##34707 |goto 69.65,21.60
accept News from Spires of Arak##35554 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)",
image=ZGV.DIR.."\\Guides\\Images\\SpiresOfArak",
condition_suggested_exclusive=true,
startlevel=96,
},[[
step
talk Bodrick Grey##81492
turnin News from Spires of Arak##35554 |goto Lunarfall 38.3,36.7
accept Arakkoa Exodus##34653
step
talk Dungar Longdrink##81103 |goto Lunarfall 48.0,49.8 |walk
Tell him _"Please fly me to Spires of Arak."_
Fly to Spires of Arak |goto Spires of Arak 37.3,14.9 < 50 |noway |c
only if havequest(34653) or havequest(36951)
step
talk Azik##79539
turnin Arakkoa Exodus##36951 |goto 37.88,18.01 |only if havequest(36951) or completedq(36951)
turnin Arakkoa Exodus##34653 |goto 37.88,18.01 |only if havequest(34653) or completedq(34653)
accept The Shadows of Skettis##34655 |goto 37.88,18.01
step
_Follow_ the dirt path around the cliffs |goto Spires of Arak 37.6,20.3 < 20 |only if walking
_Continue_ along the path through the pillars |goto Spires of Arak 41.4,16.9 < 20 |only if walking
_Go through_ the doorway |goto Spires of Arak 42.3,15.3 < 10 |only if walking
talk Reshad##79519
Tell him _"Shadows gather..."_
Speak the Password to Reshad |q The Shadows of Skettis##34655/1 |goto 43.65,12.94
step
talk Reshad##79519
turnin The Shadows of Skettis##34655 |goto 43.65,12.91
accept Hidden in Plain Sight##34656 |goto 43.65,12.91
accept Adherents of the Sun God##34657 |goto 43.65,12.91
stickystart "bladewing"
step
click Ragged Mask##230568
|tip It looks like a white cloth on the face of an Arrakoa scarecrow.
collect Ragged Mask##111524 |q Hidden in Plain Sight##34656/2 |goto 44.94,15.14
step
_Follow_ the path |goto Spires of Arak 44.1,14.3 < 10 |only if walking
_Go through_ the doorway |goto Spires of Arak 42.4,15.3 < 10 |only if walking
click Weathered Wingblades##230529
|tip They look like 2 blade weapons held by an Arrakoa scarecrow.
collect Weathered Wingblades##111485 |q Hidden in Plain Sight##34656/1 |goto 41.23,16.27
step
label "bladewing"
kill 8 Adherent Bladewing##79598 |q Adherents of the Sun God##34657/1 |goto 42.83,15.48
step
talk Reshad##79519
turnin Hidden in Plain Sight##34656 |goto 43.65,12.94
turnin Adherents of the Sun God##34657 |goto 43.65,12.94
accept Orders From On High##34658 |goto 43.65,12.94
step
_Go through_ the crumbled hole in the wall |goto Spires of Arak 46.2,14.5 < 10 |only if walking
kill Sun-Sage Rathyx##79516
collect Adherent Proclamation##111575 |q Orders From On High##34658/1 |goto 45.93,15.49
step
talk Reshad##79519
turnin Orders From On High##34658 |goto 45.39,18.26
accept The Crone##34659 |goto 45.39,18.26
step
_Cross_ the bridge and follow the road |goto Spires of Arak 45.4,20.0 < 20 |only if walking
_Go down_ the large hill and follow the dirt road |goto 49.0,24.6 < 20 |only if walking
talk Ornekka##79890
Tell him _"Shadows gather..."_
Speak the Password to Ornekka |q The Crone##34659/1 |goto 51.62,31.39
step
talk Ornekka##79890
turnin The Crone##34659 |goto 51.61,31.35
accept A Charming Deception##34756 |goto 51.61,31.35
accept All Due Respect##35636 |goto 51.61,31.35
step
talk Reshad##79519
accept Echo Hunters##34805 |goto 51.56,31.34
step
talk Darkscreech##84515
fpath Crow's Crook |goto Spires of Arak 51.8,31.1
stickystart "illusioncharms"
stickystart "echohunters"
step
clicknpc Syth##80047
|tip It looks like a dead arrakoa laying on the ground.
collect Feather of Syth##111850 |q All Due Respect##35636/1 |goto 50.26,36.36
step
click Syth's Bookcase##233073
|tip It looks like a hanging nest inside the hut.
Kill the enemies that attack in waves
collect The Saga of Terokk##111892 |q All Due Respect##35636/2 |goto 50.02,36.73
step
talk Reshad##82621
turnin All Due Respect##35636 |goto 50.28,36.71
accept Syth's Secret##35668 |goto 50.28,36.71
step
label "illusioncharms"
click Illusion Charm##230714
|tip They look like purple and brown wooden objects leaning against trees around this area.
Collect #5# Illusion Charm |q A Charming Deception##34756/1 |goto 51.34,33.77
|tip You can use the Shatter Illusion button that appears to damage and stun enemies that attack you.
step
label "echohunters"
kill 10 Echo Hunter##79895 |q Echo Hunters##34805/1 |goto 51.29,37.23
step
_Enter_ the Den |goto Spires of Arak 49.0,41.4 < 10 |walk
kill Sun-Talon Oberyx##82623
collect The Eye of Anzu##113282 |q Syth's Secret##35668/1 |goto 48.35,42.93
step
_Leave_ the den |goto Spires of Arak 49.1,41.2 < 10 |walk
_Follow_ the road |goto Spires of Arak 48.7,40.7 < 20 |only if walking
talk Reshad##81770
turnin A Charming Deception##34756 |goto 48.56,44.48
turnin Syth's Secret##35668 |goto 48.56,44.48
turnin Echo Hunters##34805 |goto 48.56,44.48
accept A Gathering of Shadows##35671 |goto 48.56,44.48
step
Enter Veil Terokk with Reshad |q A Gathering of Shadows##35671/1 |goto Spires of Arak 46.6,45.6
step
talk Shadow-Sage Iskar##80153
turnin A Gathering of Shadows##35671 |goto 46.50,45.60
step
talk Skytalon Meshaal##84498
fpath Veil Terokk |goto Spires of Arak 46.2,44.1
step
talk Jasper Fel##81891
accept One of Our Own##35274 |goto 45.89,46.36
step
talk Shadow-Sage Iskar##80153
Tell him _"Your prisoner is with me. He means your people no harm."_
Convince Shadow-Sage Iskar |q One of Our Own##35274/1 |goto 46.52,45.61
step
talk Jasper Fel##81891
turnin One of Our Own##35274 |goto 45.89,46.37
accept Inspecting the Troops##35276 |goto 45.89,46.37
step
Start following _the hill down_ |goto Spires of Arak 43.9,48.6 < 20 |only if walking
Take the _crossroads left_ |goto 41.7,50.0 < 20 |only if walking
talk Jasper Fel##81915
turnin Inspecting the Troops##35276 |goto 40.00,60.46
step
talk Lieutenant Willem##81929
accept Orders, Commander?##35286 |goto 39.86,60.82
step
talk Elria Willowfall##84134
home Southport |goto Spires of Arak/0 40.1,61.5
step
clicknpc Drafting Table##81119
Use the Drafting Table |q Orders, Commander?##35286/1 |goto 39.72,60.81
Select the building you would like to make.
Click here if you chose to build the _Stoktron Brewery_ |confirm always |next "brew1"
Or
Click here if you chose to build the _Smuggler's Den_ |confirm always |next "smug1"
Select a Building |q Orders, Commander?##35286/2 |goto 39.72,60.81
step
label "brew1"
talk Lieutenant Willem##81929
turnin Orders, Commander?##35286 |goto 39.84,60.81
accept Befriending the Locals##37327 |goto 39.86,60.77
step
talk Jasper Fel##81949
accept Old Friends##35293 |goto 39.79,60.67
|next "merge1"
step
label "smug1"
talk Lieutenant Willem##81929
turnin Orders, Commander?##35286 |goto 39.84,60.81
step
talk Jasper Fel##81949
accept Old Friends##35293 |goto 39.79,60.67
step
_Enter_ the building |goto Spires of Arak 39.6,61.0 < 10 |walk
talk Milly Osworth##82709
accept Peace Offering##35699 |goto 39.51,61.3
|next "merge1"
step
label "merge1"
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.17,60.27
step
talk Firn Swiftbreeze##83567
fpath Southport |goto Spires of Arak 39.1,61.8
step
_Run on the sand_ along the edge of the water |goto Spires of Arak 38.4,63.0 < 10 |only if walking
_Keep following_ the path and _go over_ this hill |goto Spires of Arak 42.3,65.5 < 10 |only if walking
accept Bonus Objective: Bloodmane Pridelands##36660 |goto Spires of Arak 44.0,66.2
stickystart "bmb1"
stickystart "prisonerposts"
step
accept Bonus Objective: Bloodmane Pridelands##36660
kill Brokenfang##86076 |q Bonus Objective: Bloodmane Pridelands##36660/3 |goto Spires of Arak/0 45.1,65.0
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak 46.6,68.5 < 20 |only if walking
kill Ralshira##86135 |q Bonus Objective: Bloodmane Pridelands##36660/4 |goto Spires of Arak/0 49.4,70.2
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak 48.7,71.3 < 10 |only if walking
_Jump down_ these rocky hills |goto Spires of Arak 49.2,74.0 < 10 |only if walking
kill Shadowclaw##86138 |q Bonus Objective: Bloodmane Pridelands##36660/5 |goto Spires of Arak/0 50.5,77.1
step
label "bmb1"
accept Bonus Objective: Bloodmane Pridelands##36660
kill Bloodmane Bonereaver##85896+, Bloodmane Shortfang##85892+, Bloodmane Earthbinder##85897+, Bloodmane Longclaw##85900+
Kill #15# Bloodmane Saberon |q Bonus Objective: Bloodmane Pridelands##36660/1 |goto Spires of Arak/0 46.4,68.5
step
label "prisonerposts"
accept Bonus Objective: Bloodmane Pridelands##36660
clicknpc Prisoner Post##86159+
|tip They look like tan wooden pillars with arrakoas tied to them all around this area. They can be in the caves also, so be sure to check those as well.
Free #6# Captured Ravenspeakers |q Bonus Objective: Bloodmane Pridelands##36660/2 |goto Spires of Arak/0 48.3,70.0
step
_Follow the road_ out of the town |goto Spires of Arak 42.0,56.3 < 20 |only if walking
Take the _crossroads left_ |goto 41.0,48.8 < 20 |only if walking
talk Jasper Fel##81960
turnin Old Friends##35293 |goto 39.15,48.94
accept I See Dead People##35329 |goto 39.15,48.94
step
kill Spectral Laborer##82055+
collect Bryan Finn's Schematic##113095 |q See Dead People##35329/1 |goto Spires of Arak/0 37.5,49.3
step
talk Bryan Finn##82065
Select _Show the Schematic to Bryan_
Show the Schematic to Bryan Finn |q See Dead People##35329/2 |goto 38.94,48.79
step
talk Bryan Finn##82065
turnin I See Dead People##35329 |goto 38.92,48.79
accept A Parting Favor##35339 |goto 38.92,48.79
step
kill Renegade Cannoneer##82232+, Tormented Villager##82027+, Haunted Hound##82040+, Lingering Rifleman##82029+
collect 6 Spectral Essence##113106 |q A Parting Favor##35339/1 |goto 37.86,51.60
step
_Enter_ the building |goto Spires of Arak 37.7,51.3 < 10 |walk
_Go up_ the stairs |goto Spires of Arak 37.6,50.7 < 10 |walk
talk Alice Finn##82110
|tip She is upstairs in a bed.
Select _Show the spectral essences to Alice_
Free Alice Finn's Mind |q A Parting Favor##35339/2 |goto 37.67,51.07
step
talk Alice Finn##82110
turnin A Parting Favor##35339 |goto 37.66,51.08
accept A Piece of the Puzzle##35353 |goto 37.66,51.08
step
_Go down_ the stairs |goto Spires of Arak 37.5,50.6 < 5 |walk
_Run down_ the stairs to the basement |goto Spires of Arak 37.4,50.8 < 5 |walk
_Continue_ going down the stairs |goto Spires of Arak 37.6,50.7 < 5 |walk
kill Watch Commander Branson##82136 |q A Piece of the Puzzle##35353/1 |goto 37.41,51.04
|tip He's all the way in the basement of the inn.
step
_Run up_ the stairs |goto Spires of Arak 37.7,50.9 < 10 |walk
talk Alice Finn##82126
|tip She's in the Kitchen of the inn.
turnin A Piece of the Puzzle##35353 |goto 37.54,50.76
accept Second in Command##35380 |goto 37.54,50.76
step
_Run up_ the stairs |goto Spires of Arak 37.4,50.8 < 7 |walk
_Leave_ the building |goto Spires of Arak 37.7,51.3 < 7 |walk
_Enter_ the building |goto Spires of Arak 37.4,53.5 < 10 |walk
talk Sir Edward##82194
turnin Second in Command##35380 |goto 37.70,53.81
accept Punishable by Death##35407 |goto 37.70,53.81
step
talk Lady Claudia##82212
accept Prime the Cannons##35408 |goto 37.66,53.87
stickystart "killtraitors"
stickystart "armorycannonballs"
step
_Leave_ the building |goto Spires of Arak 37.4,53.5 < 10 |walk
click Armory Cannon##232401
|tip It looks like a gray cannon sitting in a building doorway.
collect Armory Cannon##113127 |q Prime the Cannons##35408/2 |goto 36.43,53.53
step
label "armorycannonballs"
click Cannonball##232360
|tip They looks like dark gray balls laying on the ground around this area.
collect 10 Armory Cannonball##113122 |q Prime the Cannons##35408/1 |goto 36.95,53.25
step
label "killtraitors"
kill Complicit Guard##82235+, Renegade Cannoneer##82232+
Slay #8# Traitors |q Punishable by Death##35407/1 |goto 36.93,53.20
step
_Enter_ the building |goto Spires of Arak 37.4,53.5 < 10 |walk
talk Sir Edward##82194
turnin Punishable by Death##35407 |goto 37.68,53.78
step
talk Lady Claudia##82212
turnin Prime the Cannons##35408 |goto 37.64,53.85
accept Admiral Taylor##35482 |goto 37.64,53.85
step
_Leave_ the building |goto Spires of Arak 37.4,53.5 < 10 |walk
_Go through_ the doorway |goto Spires of Arak 37.0,55.2 < 10 |only if walking
Find Admiral Taylor |q Admiral Taylor##35482/1 |goto 36.82,56.90
Watch the dialogue
kill Soulscythe##82314 |q Admiral Taylor##35482/2 |goto 36.82,56.90
kill Ephial##82320 |q Admiral Taylor##35482/3 |goto 36.81,57.42
step
talk Admiral Taylor##82375
turnin Admiral Taylor##35482 |goto 36.82,56.94
step
talk Jasper Fel##82403
|tip It will take a bit for him to show up.
accept Honoring a Hero##35549 |goto 36.86,56.75
step
_Go through_ the doorway |goto Spires of Arak 37.0,55.2 < 10 |only if walking
_Follow_ the road |goto Spires of Arak 37.4,52.3 < 10 |only if walking
_Go through_ the doorway |goto Spires of Arak 38.9,50.0 < 10 |only if walking
_Follow_ the road |goto Spires of Arak 39.0,48.0 < 20 |only if walking
_Run around_ the hills |goto Spires of Arak 38.0,45.3 < 10 |only if walking
accept Bonus Objective: The Writhing Mire##35649 |goto 36.70,45.36
stickystart "bonusmire"
stickystart "toxinbarrels"
step
accept Bonus Objective: The Writhing Mire##35649
kill Taskmaster Banegore##85219 |q Bonus Objective: The Writhing Mire##35649/1 |goto Spires of Arak/0 32.3,47.4
step
accept Bonus Objective: The Writhing Mire##35649
kill 5 Varashian Vilefang##85429 |q Bonus Objective: The Writhing Mire##35649/3 |goto Spires of Arak/0 32.1,43.9
step
label "toxinbarrels"
accept Bonus Objective: The Writhing Mire##35649
click Barrel of Harvested Toxin##233035
|tip They look like wooden barrels with an orange ring in the middle.
Destroy #3# Barrels of Harvested Toxin |q Bonus Objective: The Writhing Mire##35649/2 |goto Spires of Arak/0 33.3,43.3
step
label "bonusmire"
accept Bonus Objective: The Writhing Mire##35649
kill Shattered Hand Blade##82130+, Shattered Hand Flesh-Sculpter##85214+, Shattered Hand Grunt##85461+
Slay #20# Shattered Hand |q Bonus Objective: The Writhing Mire##35649/4 |goto Spires of Arak/0 32.1,43.9
step
_Run up_ the path |goto Spires of Arak 30.9,38.0 < 20 |only if walking
accept Bonus Objective: Bladefist Hold##36792 |goto 31.17,34.04
|tip There are Elite kills here. If you find you cannot handle them you may need to ask for help.
stickystart "bonusbladefist1"
stickystart "bonusbladefist2"
stickystart "iron grenades"
step
accept Bonus Objective: Bladefist Hold##36792
_Enter_ the cave |goto Spires of Arak/0 30.0,31.6 < 10 |walk
kill Brood Mother Xylax##86455 |q Bonus Objective: Bladefist Hold##36792/4 |goto Spires of Arak/0 30.7,29.7 |indoors The Thorn Pits
|tip She's Elite so you may need a group.
step
label "bonusbladefist1"
accept Bonus Objective: Bladefist Hold##36792
_Leave_ the cave |goto Spires of Arak/0 30.0,31.6 < 10 |walk
kill 12 Bladefist Skitterer##86294 |q Bonus Objective: Bladefist Hold##36792/2 |goto Spires of Arak/0 30.1,32.9
step
accept Bonus Objective: Bladefist Hold##36792
_Follow the path_ up the mountain |goto Spires of Arak 30.3,31.7 < 10 |only if walking
_Turn left_ to the arena |goto Spires of Arak/0 31.6,29.4 < 20 |only if walking
kill Bagdoth Goredrinker##86461 |q Bonus Objective: Bladefist Hold##36792/5 |goto Spires of Arak/0 30.5,27.4
|tip He's Elite so you may need a group.
step
label "iron grenades"
accept Bonus Objective: Bladefist Hold##36792
clicknpc Iron Grenade##86524
|tip They look like spiked metal balls laying on the ground all around this area.
Detonate #6# Iron Grenades |q Bonus Objective: Bladefist Hold##36792/3 |goto Spires of Arak/0 30.5,28.9
|tip Click the button that appears in the center of your screen and THROW IT FAST! before it explodes.
You can find more around [Spires of Arak 29.1,27.5]
step
accept Bonus Objective: Bladefist Hold##36792
_Follow_ the path |goto Spires of Arak 29.2,27.4 < 20 |only if walking
_Enter_ the building |goto Spires of Arak 28.0,27.3 < 10 |walk
_Run up_ the stairs all the way to the top |goto Spires of Arak 27.7,27.1 < 10 |walk
kill Val'dune Fleshcrafter##86482 |q Bonus Objective: Bladefist Hold##36792/6 |goto Spires of Arak/0 27.9,26.9
|tip He's Elite so you may need a group.
step
label "bonusbladefist2"
accept Bonus Objective: Bladefist Hold##36792
kill Shattered Hand Brawler##86285+, Shattered Hand Cutter##86296+, Bladefist Ravager##86286+, Shattered Hand Blood-Twister##86295+, Shattered Hand Dominator##86416+, Shattered Hand Orc##86399+
Slay #25# Shattered Hand Orcs |q Bonus Objective: Bladefist Hold##36792/1 |goto Spires of Arak/0 30.5,27.4
step
talk Lieutenant Willem##81929
turnin Honoring a Hero##35549 |goto 39.86,60.83
step
talk Admiral Taylor##85080
accept For Old Times' Sake##36353 |goto 39.97,60.66
turnin For Old Times' Sake##36353 |goto 39.97,60.66
step
talk Watchman Kovak##85550
accept Pinchwhistle Gearworks##35619 |goto 39.65,60.63
step
talk Firn Swiftbreeze##83567 |goto Spires of Arak 39.1,61.8
Tell him _"Take me to the Pinchwhistle Gearworks."_
Travel to Pinchwhistle Gearworks |q Pinchwhistle Gearworks##35619/1
step
talk Kwiven Quickcog##82511
fpath Pinchwhistle Gearworks |goto Spires of Arak 60.9,73.3
step
_Go through_ the doorway |goto Spires of Arak 61.0,72.5 < 10 |only if walking
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto Spires of Arak 61.5,73.0
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35619 |goto Spires of Arak 61.5,72.9
accept Defungination##35077 |goto Spires of Arak 61.5,72.9
step
talk Exterminator Lemmy##85062
accept Unwanted Pests##36179 |goto 62.57,73.90
stickystart "activateturrets"
stickystart "sporecreatures"
step
use QR58 Flame Blaster##112683
|tip Use the QR58 Flame Blaster next to Spore Pustules. They looks like yellow round formations on the ground around this area.
Burn #20# Spore Pustules |q Defungination##35077/1 |goto 63.48,75.10
step
label "activateturrets"
clicknpc Spore-be-Gone Turret##81135+
|tip They look like metal objects creating sparks on the ground around this area.
Activate #6# Turrets |q Spore-be-Gone##35079/1 |goto 63.00,76.69
step
label "sporecreatures"
kill Fungal Hulk##82243+, Spore Drifter##81138+
Slay #10# Spore Creatures |q Unwanted Pests##36179/1 |goto 63.22,75.28
step
_Follow_ the path |goto Spires of Arak 62.8,74.0 < 10 |only if walking
_Run up_ the path |goto Spires of Arak 61.8,72.5 < 10 |only if walking
talk Engineer Gazwitz##81128
turnin Spore-be-Gone##35079 |goto 61.45,72.96
turnin Unwanted Pests##36179 |goto 61.45,72.96
step
talk Kimzee Pinchwhistle##81109
turnin Defungination##35077 |goto 61.47,72.93
accept The Mother Lode##35080 |goto 61.47,72.93
step
_Follow_ the road |goto Spires of Arak 60.1,73.2 < 20 |only if walking
_Run up_ the path |goto Spires of Arak 59.1,77.5 < 20 |only if walking
Meet Up with Kimzee Pinchwhistle |q The Mother Lode##35080/1 |goto 59.13,79.18
step
talk Kimzee Pinchwhistle##81773
turnin The Mother Lode##35080 |goto 59.13,79.18
accept Getting the Crew Back Together##35082 |goto 59.13,79.18
step
talk Engineer Gazwitz##81784
accept Clearing Out Before Cleaning Up##35081 |goto 59.09,79.22
stickystart "crimsonwing"
step
clicknpc Injured Crewman##81131
|tip They look like goblins laying on the ground around this area.
Revive #6# Injured Crew |q Getting the Crew Back Together##35082/1 |goto 60.13,81.51
step
label "crimsonwing"
kill 8 Crimsonwing Wasp##85403 |q Clearing Out Before Cleaning Up##35081/1 |goto 60.03,82.11
step
_Run up_ the path |goto Spires of Arak 59.9,81.1 < 20 |only if walking
talk Kimzee Pinchwhistle##81773
turnin Getting the Crew Back Together##35082 |goto 59.12,79.19
step
talk Engineer Gazwitz##81784
turnin Clearing Out Before Cleaning Up##35081 |goto 59.10,79.24
accept Follow that Hotrod!##35285 |goto 59.10,79.22
step
_Run along_ the beach path |goto Spires of Arak 60.2,83.5 < 20 |only if walking
_Follow_ the path up |goto Spires of Arak 58.3,91.3 < 10 |only if walking
talk Kimzee Pinchwhistle##81972
turnin Follow that Hotrod!##35285 |goto 58.49,92.33
accept The Right Parts for the Job##35090 |goto 58.49,92.33
accept Skimming Off The Top##35089 |goto 58.49,92.33
step
talk Krixel Pinchwhistle##81443
accept Field Trial##36384 |goto 58.48,92.21
stickystart "stickyicky"
stickystart "brokenshredders"
step
use Vial of Untested Serum##115475
|tip Use your Vial of Untested Serum on an Infested Lumberjack. They look like goblins around this area.
Test the Serum |q Field Trial##36384/1 |goto Spires of Arak/0 57.6,88.6
step
label "brokenshredders"
use G-14 Buster Rocket##112698
|tip Use your G-14 Buster Rocket next to Broken Shredders. They look like big metal machines standing or laying on the ground around this area.
click Serviceable Gear##231811
|tip They look like metal parts that appear on the ground after you use your G-14 Buster Rocket.
collect 16 Serviceable Gear##112634 |q The Right Parts for the Job##35090/1 |goto 58.85,88.42
step
label "stickyicky"
kill Volatile Sludge##81524+
collect 6 Volatile Oil##112906 |q Skimming Off The Top##35089/1 |goto 59.71,89.31
step
_Follow_ the path up |goto Spires of Arak 58.3,91.3 < 20 |only if walking
talk Krixel Pinchwhistle##81443
turnin Field Trial##36384 |goto 58.49,92.20
step
talk Kimzee Pinchwhistle##81978
turnin The Right Parts for the Job##35090 |goto 58.82,92.83
turnin Skimming Off The Top##35089 |goto 58.82,92.83
accept Sporicide##35091 |goto 58.82,92.83
step
talk Krixel Pinchwhistle##81443
accept Preventing the Worst##35211 |goto 58.48,92.20
accept Curing With Force##36428 |goto 58.48,92.20
step
kill 6 Spore Shambler##82265 |q Sporicide##35091/1 |goto 56.73,93.62
step
_Follow_ the path |goto Spires of Arak 57.4,92.8 < 20 |only if walking
_Run up_ the path |goto Spires of Arak 57.7,91.5 < 20 |only if walking
talk Kimzee Pinchwhistle##81978
turnin Sporicide##35091 |goto 58.82,92.83
stickystart "infectedpatrons"
step
_Run up_ the path |goto Spires of Arak 57.1,90.8 < 20 |only if walking
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb inside this small hut.
Place the Firebomb |q Preventing the Worst##35211/1 |count 1 |goto 56.74,91.56
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb inside this small hut.
Place the Firebombs |q Preventing the Worst##35211/1 |count 2 |goto Spires of Arak 56.3,91.6
step
_Enter_ the building |goto Spires of Arak 55.7,91.0 < 10 |walk
_Run up_ the stairs |goto Spires of Arak 55.4,90.9 < 10 |walk
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb.
Place the Firebombs |q Preventing the Worst##35211/1 |count 3 |goto Spires of Arak 55.7,91.0
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb sitting on the ground.
Place the Firebombs |q Preventing the Worst##35211/1 |count 4 |goto Spires of Arak 56.5,89.5
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb inside this small hut.
Place the Firebombs |q Preventing the Worst##35211/1 |count 5 |goto Spires of Arak 56.6,90.0
step
label "infectedpatrons"
kill Infected Bruiser##81184
|tip Fight them until they get to about 35% health, then stop fighting them. Don't kill them.
use Vial of Refined Serum##115533
|tip Use your Vial of Refined Serum on Infected Bruisers.
Cure #6# Infected Goblins |q Curing With Force##36428/1 |goto 56.12,90.82
step
_Follow_ the path up |goto Spires of Arak 58.3,91.3 < 20 |only if walking
talk Krixel Pinchwhistle##81443
turnin Preventing the Worst##35211 |goto Spires of Arak 58.5,92.2
turnin Curing With Force##36428 |goto Spires of Arak 58.5,92.2
accept Flame On##35298 |goto Spires of Arak 58.5,92.2
step
click Firebomb Plunger##231910
|tip It's a small metal box with a wooden handle on it.
Activate the Plunger |q Flame On##35298/1 |goto 58.51,92.22
step
clicknpc Repaired Flying Machine##81567
|tip It looks like an airplane.
Ride On Kimzee's Flying Machine |q Flame On##35298/2 |goto 58.84,92.84
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto 61.60,72.84
accept Kimzee Pinchwhistle##36062 |goto 61.60,72.84
step
talk Reshad##81770
turnin Return to Veil Terokk##35611 |goto 45.88,45.73
accept Talon Watch##34998 |goto 45.88,45.73
accept The Kaliri Whisperer##34884 |goto 45.88,45.73
step
talk Shadow-Sage Iskar##80153
accept Last of the Talonpriests##34827 |goto 45.94,45.76
step
_Follow_ the dirt road |goto Spires of Arak 47.1,42.2 < 20 |only if walking
clicknpc Skizzik##80233
|tip It's an arrakoa laying on the ground.
Select _Search him for the Worn Gavel._
collect Worn Gavel##115482 |q The Kaliri Whisperer##34884/1 |goto 45.42,36.32
step
clicknpc Skizzik##80233
|tip It's an arrakoa laying on the ground.
accept Mother of Thorns##34885 |goto 45.42,36.32
step
clicknpc Kaliri Egg##80470
|tip It looks like a big white egg sitting upright in a nest.
accept Ikky's Egg##34838 |goto 45.39,36.74
step
clicknpc Kaliri Egg##80470
|tip It looks like a big white egg sitting upright in a nest.
Hatch Ikky |q Ikky's Egg##34838/1 |goto 45.39,36.74
step
talk Ikky##80469
turnin Ikky's Egg##34838 |goto 45.39,36.73
accept Baby Bird##34886 |goto 45.39,36.73
stickystart "ravagergrub"
stickystart "shadebackthorns"
step
kill Shadeback Thornmother##80224 |q Mother of Thorns##34885/2 |goto 44.43,38.58
step
label "ravagergrub"
clicknpc Ravager Grub##80472+
|tip They are small white slugs on the ground around this area.
collect 8 Ravager Grub##111934 |q Baby Bird##34886/1 |goto 45.28,38.11
step
label "shadebackthorns"
kill 5 Shadeback Ravager##78931 |q Mother of Thorns##34885/1 |goto 45.28,38.76
step
talk Ikky##80469
turnin Baby Bird##34886 |goto 45.40,36.75
step
use Elixir of Shadows##112100
Imbibe the Elixir of Shadows |q Last of the Talonpriests##34827/1 |goto 48.02,34.63
step
talk Talonpriest Ishaal##80232
turnin Last of the Talonpriests##34827 |goto 48.01,34.76
accept Ishaal's Orb##34828 |goto 48.01,34.76
accept New Neighbors##34829 |goto 48.01,34.76
stickystart "killshattered"
step
_Follow_ the path |goto Spires of Arak 47.1,32.8 < 20 |only if walking
clicknpc Ravager Egg##85425
|tip It looks like a spiked blue egg sitting on the ground.
accept Egg Punt##36425 |goto 47.14,31.67
stickystart "kickravagereggs"
step
_Run up_ the path |goto Spires of Arak 47.0,29.2 < 20 |only if walking
click Ishaal's Orb##230988
|tip It looks like a white orb in a metal stand, in a leather tent.
collect Ishaal's Orb##112101 |q Ishaal's Orb##34828/1 |goto 48.09,28.47
step
label "kickravagereggs"
clicknpc Ravager Egg##85425
|tip They look like spiked blue eggs sitting on the ground around this area.
Kick #10# Ravager Eggs |q Egg Punt##36425/1 |goto 47.15,30.88
step
Click the _Quest Complete_ Box:
turnin Egg Punt##36425
step
label "killshattered"
kill Shattered Hand Flayer##80430+, Shattered Hand Cutthroat##80178+
Slay #15# Shattered Hand Orcs |q New Neighbors##34829/1 |goto 47.26,31.37
step
_Follow_ the path |goto Spires of Arak 47.1,33.1 < 20 |only if walking
talk Talonpriest Ishaal##80232
turnin Ishaal's Orb##34828 |goto 48.01,34.75
turnin New Neighbors##34829 |goto 48.01,34.75
accept Behind the Veil##34830 |goto 48.01,34.75
step
_Enter_ the wooded area of Veil Akraz |goto Spires of Arak 44.6,29.1 < 20 |only if walking
use Major Elixir of Shadows##112099
Imbibe the Major Elixir of Shadows |q Behind the Veil##34830/1 |goto 44.52,23.82
step
talk Talonpriest Zellek##80508
turnin Behind the Veil##34830 |goto 44.49,24.00
accept Blades in the Dark##34882 |goto 44.49,24.00
accept A Feast of Shadows##34883 |goto 44.49,24.00
stickystart "shadowdust"
step
_Follow_ the path |goto Spires of Arak 43.3,26.6 < 20 |only if walking
kill Malrok Thornscar##80509 |q Blades in the Dark##34882/1 |goto 42.46,26.72
step
label "shadowdust"
kill Essence Fiend##80512+, Face-Stealer##79973+
|tip Kill them outside of the purple circles that are on the ground, because they will heal themselves on the purple circles.
collect 10 Shadow Dust##112195 |q A Feast of Shadows##34883/1 |goto 44.10,27.08
step
talk Talonpriest Zellek##80508
turnin Blades in the Dark##34882 |goto 44.49,24.00
turnin A Feast of Shadows##34883 |goto 44.49,24.00
accept Back from Beyond##34942 |goto 44.49,24.00
step
talk Darkscryer Raastok##85598
accept Power Unearthed##35257 |goto 44.40,23.99
step
_Follow_ the road |goto Spires of Arak 43.1,26.5 < 20 |only if walking
_Follow_ the path |goto Spires of Arak 37.8,25.3 < 20 |only if walking
talk Darkscryer Raastok##80157
turnin Power Unearthed##35257 |goto 36.87,24.54
accept Hardly Working##35260 |goto 36.87,24.54
accept Legacy of the Apexis##35258 |goto 36.87,24.54
step
talk Kura the Blind##80155
accept Sol Sisters##35259 |goto 36.95,24.45
step
talk Skytalon Kuris##84509
fpath Apexis Excavation |goto Spires of Arak 37.0,24.6
stickystart "outcast"
stickystart "apexiscore"
step
_Run up_ the path |goto Spires of Arak 34.0,25.4 < 10 |only if walking
_Continue following_ the path |goto Spires of Arak 33.8,26.6 < 10 |only if walking
_Follow_ the path up |goto Spires of Arak 33.4,25.7 < 10 |only if walking
_Follow_ the path |goto Spires of Arak 33.4,27.0 < 10 |only if walking
_Enter_ the chamber |goto Spires of Arak 32.6,26.1 < 10 |walk
kill Sol-Shaper Krashyx##81934 |q Sol Sisters##35259/2 |goto 32.13,25.67
step
_Jump down_ here |goto Spires of Arak 33.9,27.7 < 10 |only if walking
_Enter_ the cave |goto Spires of Arak 34.0,28.3 < 10 |walk
_Follow_ the path in the cave |goto Spires of Arak 33.1,27.4 < 10 |walk
kill Sol-Shaper Veoryx##81933 |q Sol Sisters##35259/1 |goto Spires of Arak 32.8,28.8 |indoors Apexis Chamber
step
talk Inactive Apexis Destroyer##82123
turnin Sol Sisters##35259 |goto Spires of Arak/0 32.6,29.0 |indoors Apexis Chamber
accept Shot-Caller##35261 |goto Spires of Arak/0 32.6,29.0 |indoors Apexis Chamber
step
_Follow_ the path in the cave |goto Spires of Arak 33.1,27.4 < 10 |walk |indoors Apexis Chamber
_Leave_ the cave |goto Spires of Arak 34.0,28.3 < 10 |walk |indoors Apexis Chamber
_Follow_ the path up |goto Spires of Arak 33.4,25.7 < 10 |only if walking
_Follow_ the path |goto Spires of Arak 33.4,27.0 < 10 |only if walking
kill Overseer Akrath##82145
collect Apexis Interface##113121 |q Shot-Caller##35261/1 |goto 33.48,30.22
step
click Overseer's Chair##232362
|tip It looks like a chair with a golden bird at the top.
turnin Shot-Caller##35261 |goto 35.50,32.08
accept Hot Seat##35273 |goto 35.50,32.08
step
click Overseer's Chair##232362
|tip It looks like a chair with a golden bird at the top.
Use the abilities on your hot bar to kill the enemies that attack from all directions
|tip If you "die", you can just click the chair again and try again.
kill 30 Adherent Sol-Shaper##82245 |q Hot Seat##35273/2 |goto 35.48,32.03
kill 20 Apexis Destroyer##82229 |q Hot Seat##35273/1 |goto 35.48,32.03
step
label "outcast"
use Illusion Effigies##113084
|tip Use the Illusion Effigies on Enslaved Outcasts. They are arrakoas all around this area.
Free #10# Enslaved Outcasts |q Hardly Working##35260/1 |goto Spires of Arak 34.4,27.4
You can find a few more in the cave at [Spires of Arak 34.6,25.9]
step
label "apexiscore"
kill Apexis Guardian##81875
collect 5 Apexis Core##113081 |q Legacy of the Apexis##35258/1 |goto Spires of Arak 34.4,27.4
step
talk Kura the Blind##80155
turnin Hot Seat##35273 |goto 36.95,24.45
step
talk Darkscryer Raastok##80157
turnin Hardly Working##35260 |goto 36.87,24.56
turnin Legacy of the Apexis##35258 |goto 36.87,24.56
accept Control is King##35634 |goto 36.87,24.54
step
talk Shadow-Sage Iskar##80153
turnin Back from Beyond##34942 |goto 46.58,46.60
step
talk Reshad##81770
turnin The Kaliri Whisperer##34884 |goto 46.49,46.65
turnin Mother of Thorns##34885 |goto 46.49,46.65
accept Rites of the Talonpriests##35733 |goto 46.49,46.65
step
talk Effigy of Terokk##82813
turnin Rites of the Talonpriests##35733 |goto 46.62,46.74
accept The Talon King##35734 |goto 46.62,46.74
step
talk Effigy of Terokk##82813
Select _Touch the wingblades to witness one of Terokk's legends._
Take Control of the Talon King |invehicle |q 35734
only if havequest(35734)
stickystart "20bloodmane"
stickystart "30bloodmane"
step
_Follow_ the beach |goto Spires of Arak 49.5,75.6 < 20 |only if walking
kill Pridelord Karash##82950 |q The Talon King##35734/3 |goto 45.86,66.48
step
label "20bloodmane"
kill 20 Bloodmane Hunter##82938 |q The Talon King##35734/2 |goto 45.86,66.48
step
label "30bloodmane"
kill 30 Bloodmane Shortfang##82946 |q The Talon King##35734/1 |goto 45.86,66.48
step
talk Reshad##81770
turnin The Talon King##35734 |goto 46.50,46.66
step
talk Ikky##85320
accept Ikky##34898 |goto 46.20,45.69
step
talk Darkscryer Raastok##82509
turnin Control is King##35634 |goto 47.12,45.86
step
_ Follow_ the road out |goto Spires of Arak 48.9,49.1 < 20 |only if walking
_Run over_ the terrain to the left as needed |goto Spires of Arak 53.0,52.8 < 30 |only if walking
|tip There is no straight forward route from here.
_Continue up_ the winding path here |goto Spires of Arak 61.4,45.7 < 20 |only if walking
talk Skytalon Karaz##84504
fpath Talon Watch |goto Spires of Arak 61.9,42.6
step
talk Talon Guard Kurekk##80758
turnin Talon Watch##34998 |goto 62.22,42.67
accept Banished From the Sky##35000 |goto 62.22,42.67
step
talk Kazu##81514
accept Hatred Undying##34999 |goto 61.91,42.24
stickystart "congealedblood"
step
clicknpc Cursed Arakkoa##81584+
Rescue #8# Cursed Arakkoa |q Banished From the Sky##35000/1 |goto 62.91,39.82
step
label "congealedblood"
kill Spiteful Animate##80637+
collect 15 Congealed Blood of Sethe##112335 |q Hatred Undying##34999/1 |goto 63.66,41.14
step
talk Kazu##81514
turnin Hatred Undying##34999 |goto 61.92,42.22
step
talk Talon Guard Kurekk##80758
turnin Banished From the Sky##35000 |goto 62.22,42.66
accept Gaze of the Raven God##35001 |goto 62.22,42.66
accept Sons of Sethe##35002 |goto 62.22,42.66
stickystart "windserpent"
step
use The Eye of Anzu##117396
|tip Use the Eye of Anzu at Wind Serpent Nests. They are nests on the ground near water with red globes on them around this area.
Destroy #4# Wind Serpent Nests |q Gaze of the Raven God##35001/1 |goto 67.03,44.43
step
label "windserpent"
kill Sethekk Wind Serpent##80643+
collect 6 Wind Serpent Wing##112336 |q Sons of Sethe##35002/1 |goto 67.11,44.66
step
click Offering Bowl##231184
|tip It looks like a mostly flat hexagonal metal bowl.
turnin Sons of Sethe##35002 |goto 66.79,51.37
step
click Place Eye of Anzu##231183
|tip It looks like a brown stand with claws on top of it.
turnin Gaze of the Raven God##35001 |goto 66.62,51.74
step
talk Talon Guard Kurekk##86475
accept The False Talon King##35011 |goto 66.76,51.58
step
talk Anzu##80648 |tip Anzu is above you.
accept Servants of a Dead God##35004 |goto 66.82,51.73
accept Ritual Severance##35003 |goto 66.82,51.73
stickystart "sethekk_chosen"
stickystart "sethekk_prophets"
step
_Run up_ this small hill at the crossroads |goto Spires of Arak 68.1,43.1 < 30 |only if walking
_Follow_ the path up |goto Spires of Arak 68.6,41.4 < 10 |only if walking
kill Talon King Ikiss##80815
collect Scuffed Bangle##117493 |q The False Talon King##35011/1 |goto 70.03,40.95
step
Stomp out the Southern Ritual |q Ritual Severance##35003/1 |goto 68.94,41.86
|tip Run around on the red symbol on the ground.
step
_Run up_ the path |goto Spires of Arak 67.6,41.3 < 10 |only if walking
Stomp out the Central Ritual |q Ritual Severance##35003/2 |goto 67.54,40.52
|tip Run around on the red symbol on the ground.
step
_Follow_ the path |goto Spires of Arak 67.2,41.1 < 20 |only if walking
_Run up_ the hills |goto Spires of Arak 66.8,40.0 < 20 |only if walking
Stomp out the Northern Ritual |q Ritual Severance##35003/3 |goto 67.00,38.24
|tip Run around on the red symbol on the ground.
step
label "sethekk_chosen"
kill 6 Sethekk Chosen##80640 |q Servants of a Dead God##35004/1 |goto Spires of Arak 66.6,39.4
step
label "sethekk_prophets"
kill 6 Sethekk Prophet##80638 |q Servants of a Dead God##35004/2 |goto Spires of Arak 66.6,39.4
step
talk Anzu##86355
|tip Anzu is above you.
turnin Servants of a Dead God##35004 |goto 64.33,37.05
turnin Ritual Severance##35003 |goto 64.33,37.05
step
talk Talon Guard Kurekk##86475
turnin The False Talon King##35011 |goto 64.10,37.01
accept Lithic's Gift##35013 |goto 64.10,37.01
step
talk Anzu##86355
accept Sethe, the Dead God##35012 |goto 64.32,37.06
step
_Go up_ the hill |goto Spires of Arak 63.4,36.4 < 20 |only if walking
talk Anzu##85614 |goto Spires of Arak/0 62.5,35.9 < 10 |only if walking
Tell him _"I am ready Anzu, we will not fall."_
kill Sethe##80644 |q Sethe, the Dead God##35012/1 |goto 62.22,34.81
|tip Kill the Arrakoas that run up on the left and the right. They will offer help keep Sethe alive. Kill the Seething Blood that attacks Anzu. Avoid Sethe's powerful blue laser type attack.
step
Travel to Lithic's Rest |q Lithic's Gift##35013/1 |goto 60.47,38.74
step
talk Memory of Lithic##80834
turnin Lithic's Gift##35013 |goto 60.47,38.74
accept A Sentimental Relic##35245 |goto 60.47,38.74
step
talk Anzu##80648
turnin Sethe, the Dead God##35012 |goto 60.48,39.00
step
_Follow_ the path |goto Spires of Arak 60.6,38.2 < 10 |only if walking
_Run through_ the hills, avoiding mobs |goto Spires of Arak 60.0,37.9 < 10 |only if walking
_Follow_ the path |goto Spires of Arak 58.6,32.5 < 20 |only if walking
_Run on_ the road |goto Spires of Arak 59.0,27.4 < 20 |only if walking
accept Bonus Objective: The Howling Crag##36590 |goto 61.5,25.1
stickystart "pale_orcs_spires"
step
accept Bonus Objective: The Howling Crag##36590
_Go down_ the ramp |goto Spires of Arak/0 63.8,25.3 < 20 |only if walking
_Follow_ the path |goto Spires of Arak 65.0,25.1 < 20 |only if walking
_Enter_ the cave |goto 64.8,24.1 < 20 |walk
kill Insane Nullifier##85902
Distrupt the Ritual of the Void |q Bonus Objective: The Howling Crag##36590/4 |goto Spires of Arak/0 63.0,23.2
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak 65.0,24.2 < 20 |walk
_Enter_ the cave |goto Spires of Arak/0 64.8,25.8 |walk
_Follow_ the path in the cave |goto Spires of Arak 63.8,25.8 < 10 |walk
kill Apexis Assault Construct##77767+
|tip There are 3 of them in the corners of this room in the cave.
collect 3 Apexis Keystone##116766 |n
Click 3 Apexis Pylons |goto Spires of Arak/0 63.9,27.8
|tip They look like huge rotating floating crystals with yellow light beams shooting from them.
kill Stored Projection##85887 |q Bonus Objective: The Howling Crag##36590/6 |goto 64.0,27.6
step
accept Bonus Objective: The Howling Crag##36590
_Follow_ the path in the cave |goto Spires of Arak 63.8,25.8 < 10 |walk
_Leave_ the cave |goto Spires of Arak/0 64.8,25.8 |walk
_Enter_ the cave |goto Spires of Arak/0 66.7,26.5 < 20 |walk
kill Vile Siphonmaster##77767
Disrupt the Ritual of Siphoning |q Bonus Objective: The Howling Crag##36590/3 |goto Spires of Arak/0 68.5,26.3
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak/0 66.7,26.5 < 20 |walk
_Enter_ the cave |goto 65.2,27.0 < 20 |walk
kill Crazed Obliterator##85901
Disrupt the Ritual of Destruction |q Bonus Objective: The Howling Crag##36590/5 |goto Spires of Arak/0 63.7,26.2
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak 65.5,27.2 < 20 |walk
_Follow_ the path up |goto Spires of Arak 66.8,30.8 < 10 |only if walking
click Rylak Egg##236010
|tip They look like a big gray eggs in nests on the ground around this area.
Destroy #5# Rylak Eggs |q Bonus Objective: The Howling Crag##36590/2 |goto Spires of Arak 67.2,28.0
More eggs on this cliff: [64.2,26.9]
Even more eggs on this cliff: [63.2,23.6]
step
label "pale_orcs_spires"
accept Bonus Objective: The Howling Crag##36590
kill Irradiated Jawbreaker##86044+, Raving Venomslasher##85893+, Twisted Bilecaster##85894+
Slay #15# Pale Orcs |q Bonus Objective: The Howling Crag##36590/1
step
talk Reshad##81770
turnin A Sentimental Relic##35245 |goto 46.49,46.66
accept The Missing Piece##35897 |goto 46.49,46.66
step
talk Effigy of Terokk##82813
turnin The Missing Piece##35897 |goto 46.62,46.73
accept Terokk's Fall##35895 |goto 46.62,46.73
step
talk Effigy of Terokk##82813 |goto Spires of Arak 46.6,46.7
Select _Touch the bangle to witness Terokk's fall._
Enter the Memory |invehicle |q 35895
only if havequest(35895)
step
Find Lithic |q Terokk's Fall##35895/1 |goto 64.00,40.47
stickystart "rally_talon_guards"
step
Use the abilities on your hotbar to:
kill 20 Crazed Outcast##83600 |q Terokk's Fall##35895/3 |goto 64.14,41.97
step
label "rally_talon_guards"
clicknpc Outcast Talon Guard##88766
Use the _Talon Kings Command_ ability on your hotbar to:
Rally #5# Talon Guards |q Terokk's Fall##35895/2 |goto 64.07,42.12
step
click The Eye of Anzu##233382
|tip It looks like an orb sitting on a small golden stand on the ground.
Use the Eye of Anzu |q Terokk's Fall##35895/4 |goto 66.92,45.25
step
talk Reshad##81770
turnin Terokk's Fall##35895 |goto 46.49,46.67
step
talk Shadow-Sage Iskar##80153
accept A Worthy Vessel##36059 |goto 46.59,46.54
step
talk Effigy of Terokk##82813 |goto Spires of Arak 46.6,46.7
Select _Call upon Terokk._
Enter the Spirit Realm |goto Spires of Arak 46.4,45.7 < 20 |noway |c |q 36059
only if havequest(36059)
step
kill Terokk##83960
Subdue Terokk |q A Worthy Vessel##36059/1 |goto 46.62,46.73
step
talk Shade of Terokk##84122
turnin A Worthy Vessel##36059 |goto 46.64,46.80
accept The Avatar of Terokk##35896 |goto 46.64,46.80
step
talk Shade of Terokk##84122 |goto 46.64,46.80
Select _Accept Terokk's power._
Enter the Memory |invehicle |q 35896
only if havequest(35896)
stickystart "shattered_pit_masters"
stickystart "kargath_bladefist_spires"
step
kill 25 Shattered Hand Gladiator##84032 |q The Avatar of Terokk##35896/1 |goto 30.69,27.86
step
label "shattered_pit_masters"
kill 4 Shattered Hand Pit-Master##84052 |q The Avatar of Terokk##35896/2 |goto 30.69,27.86
step
label "kargath_bladefist_spires"
kill Kargath Bladefist##84053 |q The Avatar of Terokk##35896/3 |goto 30.69,27.86
|tip You will be able to kill him once you kill the Gladiators and Pit-Masters.
step
talk Reshad##81770
turnin The Avatar of Terokk##35896 |goto 46.49,46.67
|next "tavern2" |only if havequest(37327) or completedq(37327)
|next "smug2" |only if havequest(35699) or completedq(35699)
step
label "tavern2"
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37327 |goto 43.89,48.89
accept A Lack of Wasps##37296 |goto 43.89,48.89
only if havequest(37327) or completedq(37327)
step
kill 8 Widow Wasp##84865 |q A Lack of Wasps##37296/1 |goto 43.58,47.01
You can find more around [44.6,49.5]
only if completedq(37327)
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.91,48.90
accept Not Here, Not Now##37329 |goto 43.91,48.90
only if completedq(37327)
step
_Follow_ the road down the path |goto Spires of Arak 41.7,49.7 < 30 |only if walking
_Continue_ along the road to town |goto 41.7,58.0 < 20 |only if walking
talk Lieutenant Willem##81929
turnin Not Here, Not Now##37329 |goto 39.91,60.86
step
talk Hulda Shadowblade##83549
accept Attempted Murder##35915 |goto 39.66,60.84
step
_Run behind_ the building |goto Spires of Arak 39.4,60.9 < 10 |only if walking
talk Firn Swiftbreeze##83567
Tell him _"Take me to Shadow's Vigil."_
Secure a Flight to Shadow's Vigil |q Attempted Murder##35915/1 |goto Spires of Arak/0 39.1,61.8
step
talk Hulda Shadowblade##83609
turnin Attempted Murder##35915 |goto 52.10,23.54
accept Assassin's Mark##35926 |goto 52.10,23.54
step
clicknpc Vigilant Outcast##83633
|tip They look like dead arrakoa on the ground around this area.
collect Assassin's Mark##113577 |q Assassin's Mark##35926/1 |goto Spires of Arak 53.5,23.2
step
_Run down_ the path |goto Spires of Arak 53.5,25.2 < 20 |only if walking
talk Hulda Shadowblade##83773
turnin Assassin's Mark##35926 |goto 53.57,27.48
accept The Power of Poison##35959 |goto 53.57,27.48
accept Extrinsic Motivation##36023 |goto 53.57,27.48
stickystart "shattered_harvesters"
stickystart "shattered_blood_singer"
step
use Vial of Wracking Poison##113587
Kill enemies around this area
|tip As you attack, you will question them to gain information.
Learn the Name and Location of G.V. |q The Power of Poison##35959/1 |goto 54.10,28.58
step
kill 4 Shattered Hand Sightless##83749 |q Extrinsic Motivation##36023/1 |goto 54.10,28.58
step
label "shattered_harvesters"
kill 3 Shattered Hand Harvester##83706 |q Extrinsic Motivation##36023/2 |goto 54.10,28.58
step
label "shattered_blood_singer"
kill Shattered Hand Blood-Singer##83760 |q Extrinsic Motivation##36023/3 |goto 54.10,28.58
step
_Follow_ the path up |goto Spires of Arak 54.2,28.6 < 10 |only if walking
talk Hulda Shadowblade##83773
turnin The Power of Poison##35959 |goto 53.54,27.49
turnin Extrinsic Motivation##36023 |goto 53.54,27.49
accept Gardul Venomshiv##36029 |goto 53.54,27.49
step
_Follow_ the road |goto Spires of Arak 53.9,29.9 < 20 |only if walking
kill Gardul Venomshiv##83834
Defeat Gardul Venomshiv |q Gardul Venomshiv##36029/1 |goto 56.24,33.98
step
talk Hulda Shadowblade##83900
turnin Gardul Venomshiv##36029 |goto 57.13,34.50
accept We Have Him Now##36048 |goto 57.13,34.50
stickystart "poisonbarrels"
step
_Run up_ the path |goto Spires of Arak 58.7,36.1 < 10 |only if walking
kill Gardul Venomshiv##83923
collect Venomshiv's Secret Formula##113635 |q We Have Him Now##36048/1 |goto 58.16,33.35
step
label "poisonbarrels"
kill Shattered Hand Brewer##83940+
click Poison Barrel##233599
|tip They look like wooden barrels with a green ring around the middle of them on the ground around this area.
collect 6 Poison Barrel##113630 |q We Have Him Now##36048/2 |goto 58.42,34.51
step
talk Hulda Shadowblade##83904
turnin We Have Him Now##36048 |goto 57.14,34.49
accept No Time to Waste##36165 |goto 57.14,34.49
step
talk Kolrigg Stoktron##84261
Select _Administer the antidote to Kolrigg._
Administer the Spiresalve |q No Time to Waste##36165/1 |goto 39.67,60.84
step
talk Kolrigg Stoktron##84261
turnin No Time to Waste##36165 |goto 39.67,60.84
step
talk Hulda Shadowblade##88195
|tip It takes a moment for her to walk out.
accept Standing United##37281 |goto 39.73,60.88
turnin Standing United##37281 |goto 39.73,60.88
|next "merge2"
step
label "smug2"
talk Dusk-Seer Irizzar##83463
Tell him _"I have brought this as a peace offering. I hope we can become close allies."_
Deliver the Peace Offering |q Peace Offering##35699/1 |goto 43.90,48.90
step
talk Dusk-Seer Irizzar##83463
turnin Peace Offering##35699 |goto 43.89,48.89
accept A Lack of Wasps##37296 |goto 43.89,48.89
step
kill 8 Widow Wasp##84865 |q A Lack of Wasps##37296/1 |goto 43.58,47.01
You can find more around [44.6,49.5]
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.91,48.90
accept Not Here, Not Now##37331 |goto 43.91,48.90
step
_Follow_ the road down the path |goto Spires of Arak 41.7,49.7 < 20 |only if walking
_Continue_ along the road to town |goto 41.7,58.0 < 20 |only if walking
talk Lieutenant Willem##81929
turnin Not Here, Not Now##37331 |goto 39.91,60.86
step
talk Milly Osworth##82709
accept The Tinkertoss Twins##35713 |goto 39.52,61.32
step
_Run down_ the path to the road |goto Spires of Arak 59.6,43.4 < 10 |only if walking
_Follow_ the path |goto Spires of Arak 57.6,43.9 < 20 |only if walking
talk Filbert Tinkertoss##82759
turnin The Tinkertoss Twins##35713 |goto 56.21,42.48
accept Sticky Situation##35716 |goto 56.21,42.48
accept Safety Measures##35878 |goto 56.21,42.48
stickystart "surlybogwallow"
step
click Submerged Battery##233147
|tip They look like big yellow objects with red tops and bottoms sitting in the pools of water around this area.
Save #5# Submerged Batteries |q Sticky Situation##35716/1 |goto 57.01,49.06
step
label "surlybogwallow"
kill Surly Bogwallow##82726+, Putrid Mandragora##82722+, Electrified Stingtail##83444+, Putrid Axebeak##83436+
Slay #15# Bog Denizens |q Safety Measures##35878/1 |goto Spires of Arak 56.5,47.6
step
talk Filbert Tinkertoss##82759
turnin Sticky Situation##35716 |goto 56.21,42.48
turnin Safety Measures##35878 |goto 56.21,42.48
accept Back on Track##35719 |goto 56.21,42.48
step
talk Dilbert Tinkertoss##82788
turnin Back on Track##35719 |goto 60.19,53.16
accept All Natural##35739 |goto 60.19,53.16
accept I See Dead Arakkoa##35782 |goto 60.24,53.16
stickystart "freshcharcoal"
step
_Follow_ the path around the crater |goto Spires of Arak 61.3,55.1 < 20 |only if walking
_Continue following_ the path |goto Spires of Arak 61.5,56.6 < 20 |only if walking
use Ghostogrifier 12000##113438
kill Talonpriest Zekk##82887 |q I See Dead Arakkoa##35782/1 |goto 60.92,58.17
step
label "freshcharcoal"
kill Smoldering Ancient##82805+
collect 30 Fresh Charcoal##113404 |q All Natural##35739/1 |goto 60.52,54.33
step
talk Dilbert Tinkertoss##82788
turnin All Natural##35739 |goto 60.20,53.15
turnin I See Dead Arakkoa##35782 |goto 60.20,53.15
accept The Ebon Hunter##35835 |goto 60.20,53.15
step
kill The Ebon Hunter##82933
collect Organic Laser Apparatus##113441 |q The Ebon Hunter##35835/1 |goto 65.23,61.34
step
talk Dilbert Tinkertoss##82788
turnin The Ebon Hunter##35835 |goto 60.08,53.65
step
label "merge2"
talk Anzu##80648
accept Cult of the Ravenspeakers##34921 |goto 46.90,46.07
step
Take the _road to the right_ |goto Spires of Arak 47.7,45.7 < 10
click Offering Basket##231118
|tip It looks like a small woven basket sitting on a stone next to the side of the road.
Place the Offering |q Cult of the Ravenspeakers##34921/1 |goto 48.93,48.92
step
talk Iktis of the Flock##80639
turnin Cult of the Ravenspeakers##34921 |goto 48.98,48.98
accept To the... Rescue?##34991 |goto 48.98,48.98
step
_Run up_ the hill |goto Spires of Arak 48.8,49.4 < 10 |only if walking
kill Stonescale##80694
collect "Tillik" of the Flock##112331
Rescue "Tillik" |q To the... Rescue?##34991/1 |goto 48.73,51.52
step
talk Iktis of the Flock##80639
turnin To the... Rescue?##34991 |goto 48.99,48.97
accept The High Ravenspeaker##35010 |goto 48.99,48.97
step
Locate High Ravenspeaker Krikka |q The High Ravenspeaker##35010/1 |goto 52.12,49.92
step
talk High Ravenspeaker Krikka##80481
turnin The High Ravenspeaker##35010 |goto 52.12,49.92
accept Rendezvous with the Ritualists##35007 |goto 52.12,49.92
step
_Go up_ the curvy road |goto Spires of Arak 52.5,52.9 < 20 |only if walking
_Follow_ the road |goto Spires of Arak 53.4,53.7 < 20 |only if walking
talk Ravenspeaker Sekara##80740
turnin Rendezvous with the Ritualists##35007 |goto 54.86,54.23
accept The Bloodmane##34923 |goto 54.87,54.24
accept Words of the Raven Mother##34922 |goto 54.87,54.24
stickystart "ravenspeakerscroll"
stickystart "bloodmaneclaw"
step
kill Huntmaster Sorrowfang##83896 |q The Bloodmane##34923/2 |goto 56.89,57.15
|tip He walks around this area with a hog, so you may have to search for him.
step
label "ravenspeakerscroll"
click Ravenspeaker Scroll##231065
|tip They are white rolled up scrolls next to dead arakkoa on the ground around this area. They're also in the huge nests.
collect 8 Ravenspeaker Scroll Fragment##112199 |q Words of the Raven Mother##34922/1 |goto 56.27,55.36
step
label "bloodmaneclaw"
kill 10 Bloodmane Razorclaw##80455 |q The Bloodmane##34923/1 |goto 56.09,54.49
step
talk Ravenspeaker Sekara##80740
turnin The Bloodmane##34923 |goto 54.86,54.24
turnin Words of the Raven Mother##34922 |goto 54.86,54.24
accept Ralshiara's Demise##34938 |goto 54.86,54.24
step
talk Vakora of the Flock##80863
accept The Egg Thieves##34924 |goto 54.83,54.14
step
talk High Ravenspeaker Krikka##80860
accept Declawing The Bloodmane##34939 |goto 54.85,54.33
step
_Go along_ the winding dirt road |goto Spires of Arak 53.7,54.4 < 20 |only if walking
Keep going _over the rocky ground_ |goto 51.1,54.3 < 20 |only if walking
talk Mortally Wounded Initiate##86381
accept The Initiate's Revenge##36790 |goto 50.99,55.96
stickystart "dread_raven_eggs"
stickystart "bloodmane_saberons_spires_end"
stickystart "bloodmane_paws"
step
_Follow_ the path around |goto Spires of Arak 49.4,57.8 < 20 |only if walking
_Run up_ the path |goto Spires of Arak 49.3,59.3 < 20 |only if walking
clicknpc Ralshiara##80502
use Strange Crystal Shard##112681
|tip Use the Strange Crystal Shard to distract Ralshiara, so it's easier to kill him.
kill Ralshiara##80502 |q Ralshiara's Demise##34938/1 |goto 50.08,59.77
step
label "dread_raven_eggs"
click Dread Raven Egg##231016
|tip They look like big dark gray eggs with blue swirls on them scattered on the ground around this area. They can be in the caves around this area, also, so be sure to check in those.
collect 8 Dread Raven Egg##112135 |q The Egg Thieves##34924/1 |goto 48.77,58.24
step
label "bloodmane_saberons_spires_end"
kill Bloodmane Earthbinder##80448+, Bloodmane Gutripper##80450+
Kill #18# Bloodmane Saberon |q The Initiate's Revenge##36790/1 |goto 50.31,56.11
step
label "bloodmane_paws"
kill Bloodmane Earthbinder##80448+
collect 6 Bloodmane Earthbinder Paw##112204 |q Declawing The Bloodmane##34939/1 |goto 50.28,56.13
step
_Follow_ the path |goto Spires of Arak 51.0,55.5 < 20 |only if walking
talk High Ravenspeaker Krikka##80481
turnin Ralshiara's Demise##34938 |goto 52.12,49.93
turnin Declawing The Bloodmane##34939 |goto 52.12,49.93
step
talk Vakora of the Flock##80746
turnin The Egg Thieves##34924 |goto 52.09,49.42
turnin The Initiate's Revenge##36790 |goto 52.09,49.42
step
talk High Ravenspeaker Krikka##80481
accept Call of the Raven Mother##35009 |goto 52.11,49.92
step
talk High Ravenspeaker Krikka##80481
Tell him _"I'm ready, High Ravenspeaker."_
Speak to Krikka |q Call of the Raven Mother##35009/1 |goto 52.11,49.92
step
Click the items when Ravenspeaker calls them out:
click Blessed Waters
|tip It looks like a purple jug in a woven basket to the far right.
click Sacred Feathers
|tip They look like tiny blue feathers on a table to the right.
click Scroll of the Ravens
|tip It looks like a scroll on a table to the left.
click Aromatic Incense
|tip It looks like a woven basket with smoke coming out of it on the far left.
Complete the Ritual |q Call of the Raven Mother##35009/2 |goto 51.64,50.39
step
talk Ka'alu##77857
turnin Call of the Raven Mother##35009 |goto 51.23,50.53
step
talk Reshad##84276
accept On Ebon Wings##36085 |goto 51.35,50.29
step
talk Ka'alu##77857
Tell him _"I am ready to fly, Ka'alu."_
Speak to Ka'alu |q On Ebon Wings##36085/1 |goto 51.22,50.55
stickystart "adherentskystrikers"
step
kill Windkeeper Koreyx##84001 |q On Ebon Wings##36085/3 |goto 45.80,53.53
step
label "adherentskystrikers"
kill 8 Adherent Skystriker##84111 |q On Ebon Wings##36085/2 |goto 45.96,53.53
step
talk Reshad##84262
turnin On Ebon Wings##36085 |goto 46.52,54.29
accept When All Is Aligned##35704 |goto 46.52,54.29
step
clicknpc Ka'alu##86254
Ride Ka'alu |invehicle |goto Spires of Arak 46.6,54.6 |q 35704
only if havequest(35704)
step
kill 80 Adherent Wind-Thrasher##82817 |q When All Is Aligned##35704/1 |goto 52.67,42.30
|tip Use your screech ability on your hotbar.
step
talk Reshad##81770
turnin When All Is Aligned##35704 |goto 46.50,46.66
step
talk Talonpriest Ishaal##83959
accept Talonpriest Ishaal##37141 |goto 46.52,46.81
step
talk Lieutenant Willem##81929
accept News from Nagrand##36606 |goto 39.88,60.83
|next "Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)",{
condition_suggested_exclusive=true,
image=ZGV.DIR.."\\Guides\\Images\\NagrandDraenor",
startlevel=98,
endlevel=100,
},[[
step
talk Bodrick Grey##81492
turnin News from Nagrand##36606 |goto Lunarfall 38.24,36.75
accept Taking the Fight to Nagrand##37184 |goto Lunarfall 38.24,36.75
step
talk Dungar Longdrink##81103|goto Lunarfall 47.9,49.7 |walk
Tell him _"I need a flight to the border of Nagrand."_
Fly to Nagrand |goto Nagrand D 92.3,72.2 < 50 |noway |c
only if havequest(37184) or havequest(34674)
step
talk Lieutenant Balfor##79263
turnin Taking the Fight to Nagrand##37184 |goto 86.39,66.19 |or |only if havequest(37184) or completedq(37184)
turnin Taking the Fight to Nagrand##34674 |goto 86.39,66.19 |or |only if havequest(34674) or completedq(34674)
accept The Might of the Warsong##34675 |goto 86.39,66.19
step
_Run along_ this long road |goto Nagrand D 83.5,64.7 < 20 |only if walking
_Continue_ through the pillars |goto 80.4,60.0 < 30 |only if walking
_Keep following_ the dirt road |goto 75.3,55.6 < 30 |only if walking
Go towards _Telaari Station_ |goto 69.0,58.0 < 30 |only if walking
_Follow_ the path into town |goto Nagrand D 63.8,59.0 < 20 |only if walking
talk John Shelby##82309
fpath Telaari Station |goto 63.6,61.6
step
talk Rangari D'kaan##79576
turnin The Might of the Warsong##34675 |goto 63.52,61.90
accept Up and Running##34678 |goto 63.52,61.90
step
click Prop Rotor##231884
|tip It looks like a big gray cog leaning on a pile of boxes on the ground.
collect Prop Rotor##112957 |q Up and Running##34678/2 |goto 63.77,61.57
step
_Enter_ the building |goto Nagrand D 63.5,62.2 < 10 |walk
click Transmission Flywheel##231885
|tip It looks like a thin cog sitting on top of a crate inside the building.
collect Transmission Flywheel##112962 |q Up and Running##34678/3 |goto 63.69,62.38
step
_Leave_ the building |goto Nagrand D 63.5,62.2 < 10 |walk
click Assorted Engineering Parts##231886
|tip It looks like a wooden crate sitting on the ground.
collect Assorted Engineering Parts##112963 |q Up and Running##34678/1 |goto 62.08,62.13
step
talk Thaelin Darkanvil##79674
turnin Up and Running##34678 |goto 63.06,61.95
accept Operation: Surprise Party##34682 |goto 63.06,61.95
step
clicknpc Thaelin's Copter##79676
|tip It looks like a helicopter.
Use Thaelin's Copter |q Operation: Surprise Party##34682/1 |goto 63.02,62.00
step
talk Rangari Ogir##79722
turnin Operation: Surprise Party##34682 |goto 65.87,68.63
accept Mo'mor Might Know##34716 |goto 65.87,68.63
accept Operation: Just Arrowhead##34717 |goto 65.87,68.63
stickystart "killwarsong"
step
click Rappelling Rope##215689
|tip It looks like a rope wound around a stump of wood on the ground.
Take the rope down the cliff |invehicle |q 34716 |goto Nagrand D 65.9,68.6
only if havequest(34716)
step
_Enter_ the building |goto Nagrand D 66.8,68.3 < 10 |walk
talk Vindicator Mo'mor##79743
turnin Mo'mor Might Know##34716 |goto 66.75,68.66
accept The Others##34718 |goto 66.75,68.66
accept ... and My Hammer##34719 |goto 66.75,68.66
step
_Leave_ the building |goto Nagrand D 66.8,68.3 < 10 |walk
_Enter_ the building |goto Nagrand D 68.2,66.9 < 10 |walk
talk Caregiver Felaani##79758
Rescue Caregiver Felaani & Isel |q The Others##34718/2 |goto 68.50,67.05
step
_Leave_ the building |goto Nagrand D 68.2,66.9 < 10 |walk
_Cross_ the bridge |goto Nagrand D 67.8,65.6 < 10 |only if walking
talk Hansel Heavyhands##79762
Rescue Hansel Heavyhands |q The Others##34718/3 |goto 67.63,64.49
step
click Mo'mor's Holy Hammer##230652
|tip It looks like a glowing hammer, leaning against a crate.
collect Mo'mor's Holy Hammer##111577 |q ... and My Hammer##34719/1 |goto 65.86,62.92
step
_Enter_ the building |goto Nagrand D 65.6,65.5 < 10 |walk
talk Arbiter Khan##79761
Select _Check for a pulse._
Rescue Arbiter Khan |q The Others##34718/1 |goto 65.27,65.07
step
label "killwarsong"
kill Warsong Raider##79744+, Invading Warsinger##79753+
Kill #15# Warsong Forces at Telaar |q Operation: Just Arrowhead##34717/1 |goto 67.85,66.60
step
_Run up_ the path |goto Nagrand D 67.7,67.6 < 10 |only if walking
_Enter_ the building |goto Nagrand D 66.8,68.3 < 10 |walk
talk Vindicator Mo'mor##79743
turnin The Others##34718 |goto 66.76,68.65
turnin ... and My Hammer##34719 |goto 66.76,68.65
accept Shields Down!##34746 |goto 66.76,68.65
step
kill Packleader Kargora##79839
collect Garrison Blueprints##111619 |q Shields Down!##34746/2 |goto 66.80,65.63
step
clicknpc Arkonite Crystal##79919
|tip It looks like a huge pink floating crystal.
Destroy the Arkonite Crystal |q Shields Down!##34746/1 |goto 66.81,65.50
step
_Carefully_ jump down this cliff on the rocks |goto Nagrand D 64.9,64.1 < 10 |only if walking
talk Rangari D'kaan##79576
turnin Operation: Just Arrowhead##34717 |goto 63.52,61.88
step
_Enter_ the building |goto Nagrand D 63.5,62.2 < 10 |walk
talk Caregiver Felaani##80006
home Trading Post |goto Nagrand D 63.6,62.5
step
_Leave_ the building |goto Nagrand D 63.5,62.2 < 10 |walk
talk Thaelin Darkanvil##79674
turnin Shields Down!##34746 |goto 63.06,61.94
accept A Choice to Make##34769 |goto 63.06,61.94
step
clicknpc Drafting Table##81119
Choose to build the Rangari Corral or Telaari Tankworks |q A Choice to Make##34769/1 |goto 63.08,61.95
|tip We recommend choosing the Rangari Corral, since it gives you a mount that you can ride even while in combat. This will increase your leveling speed.
step
talk Rangari D'kaan##79576
turnin A Choice to Make##34769 |goto 63.51,61.89
step
talk Hansel Heavyhands##79954
accept Trouble at the Overwatch##35148 |goto 63.53,61.84
accept The Friend o' My Enemy##34952 |goto 63.53,61.84
step
talk Vindicator Mo'mor##80624
accept They Call Him Lantresor of the Blade##34951 |goto 63.49,61.86
step
talk Kia Herman##82092
accept That Pounding Sound##35337 |goto 63.54,61.42
step
talk Rangari Laara##82094
accept Shooting the Breeze##35338 |goto 63.49,61.40
stickystart "shootingthebreeze"
stickystart "rangariarrow"
step
_Go through_ the doorway |goto Nagrand D 63.4,60.8 < 10 |only if walking
_Follow_ the road |goto Nagrand D 67.5,58.8 < 20 |only if walking
kill Leatherhide Bull##81898+, Ancient Leatherhide##78574+
collect 12 Pair of Leatherhide Ears##113100 |q That Pounding Sound##35337/1 |goto 69.65,55.82
step
label "shootingthebreeze"
kill Breezestrider Colt##78277+, Breezestrider Talbuk##78278+
collect 24 Breezestrider Horn##113102 |q Shooting the Breeze##35338/1 |goto 68.79,56.81
step
label "rangariarrow"
kill Breezestrider Colt##78277+, Breezestrider Talbuk##78278+, Breezestrider Stallion##78279+
collect Rangari Arrow##113107 |n
use Rangari Arrow##113107
accept Someone's Missing Arrow##35356 |goto 68.79,56.81
step
_Follow_ the road |goto 69.0,58.0 < 30 |only if walking
_Follow_ the path into town |goto Nagrand D 63.8,59.0 < 20 |only if walking
talk Rangari Laara##82094
turnin Shooting the Breeze##35338 |goto 63.48,61.40
turnin Someone's Missing Arrow##35356 |goto 63.48,61.40
accept King of the Breezestriders##35357 |goto 63.48,61.40
step
talk Kia Herman##82092
turnin That Pounding Sound##35337 |goto 63.55,61.41
accept Queen of the Clefthoof##35350 |goto 63.55,61.41
step
_Go through_ the doorway |goto Nagrand D 61.9,62.1 < 10 |only if walking
kill Tall Buck##82116
collect Tall Buck's Tail##113104 |q King of the Breezestriders##35357/1 |goto 57.82,69.03
step
map Nagrand D
path loose; loop; curved
path	62.9,57.3	61.6,53.6	63.4,49.8
path	64.6,45.4	67.7,44.2	71.5,47.1
path	72.4,51.5	69.2,56.4	65.5,57.8
Follow the path around the cliff's to find Banthar
kill Banthar##82119
|tip He looks like a giant dark colored clefthoof that wanders around this area.
collect Horn of Banthar##113105 |q Queen of the Clefthoof##35350/1
step
_Follow_ the path into town |goto Nagrand D 63.8,59.0 < 20 |only if walking
talk Kia Herman##82092
turnin Queen of the Clefthoof##35350 |goto 63.54,61.43
step
talk Rangari Laara##82094
turnin King of the Breezestriders##35357 |goto 63.54,61.43
step
_Go up_ the path through the mountain area |goto Nagrand D 69.4,58.4 < 30 |only if walking
_Continue on the path_ then go left |goto 72.5,67.6 < 20 |only if walking
_Pass_ under the _stone bridge_ |goto 77.7,67.8 < 20 |only if walking
talk Rangari Eleena##79282
turnin Trouble at the Overwatch##35148 |goto 78.79,69.22
accept Obtaining Ogre Offensive Orders##34593 |goto 78.79,69.22
accept Obliterating Ogres##34572 |goto 78.79,69.22
step
click Ogre Scrolls##231901
|tip It looks like a wooden box on the ground with white scrolls sticking up out of it.
accept Removing the Paper Trail##34597 |goto 81.33,70.34
stickystart "ogreresearch"
stickystart "margokogres"
step
kill Thulgork##79266
|tip He's inside the building.
collect Thulgork's Orders##111065 |q Obtaining Ogre Offensive Orders##34593/2 |goto 83.17,70.42
step
_Go up_ the stone stairs |goto Nagrand D 82.0,72.0 < 10 |only if walking
_Enter_ the building |goto Nagrand D 83.8,72.9 < 10 |walk
kill Crulgorosh##79267
collect Crulgorosh's Orders##111066 |q Obtaining Ogre Offensive Orders##34593/1 |goto 84.15,73.70
step
label "ogreresearch"
click Box of Ogre Research##230650
|tip They look like a wooden boxes with white scrolls sticking up out of them on the ground around this area.
Destroy #8# Boxes of Ogre Research |q Removing the Paper Trail##34597/1 |goto Nagrand D 82.1,75.9
step
label "margokogres"
kill Gorian Arcanist##79023+, Gorian Cohort##79070+
Kill #15# Ogres at Mar'gok's Overwatch |q Obliterating Ogres##34572/1 |goto Nagrand D 82.4,75.
step
_Run up_ the stone stairs |goto Nagrand D 83.4,73.7 < 10 |only if walking
_Go up_ the stairs |goto Nagrand D 83.6,76.1 < 20 |only if walking
talk Rangari Mirana##81144
turnin Obtaining Ogre Offensive Orders##34593 |goto 84.06,76.84
turnin Obliterating Ogres##34572 |goto 84.06,76.84
turnin Removing the Paper Trail##34597 |goto 84.06,76.84
accept Reglakk's Research##34596 |goto 84.06,76.84
accept Removing the Reinforcements##34877 |goto 84.06,76.84
step
Go all the way _up the stairs_ |goto Nagrand D 83.7,78.2 < 20 |only if walking
kill Grand Magister Reglakk##79105 |q Reglakk's Research##34596/1 |goto 81.51,76.65
step
clicknpc Portal to Highmaul##81374
|tip It looks like a swirling blue portal.
Destroy the Portal to Highmaul |q Removing the Reinforcements##34877/1 |goto 82.60,81.04
step
talk Rangari D'kaan##79576
turnin Reglakk's Research##34596 |goto 63.52,61.88
step
talk Thaelin Darkanvil##79674
turnin Removing the Reinforcements##34877 |goto 63.10,61.94
step
_Go through_ the doorway |goto Nagrand D 63.4,60.9 < 10 |only if walking
_Follow_ the dirt road |goto Nagrand D 69.2,58.0 < 30 |only if walking
click Bounty Board##230303
|tip It looks like a small scroll laying on a box next to the road.
accept WANTED: Razorpaw!##34513 |goto 78.99,58.94
step
_Follow_ the path up |goto Nagrand D 74.2,59.7 < 20 |only if walking
_Run out_ of the canyon |goto Nagrand D 77.2,59.4 < 20 |only if walking
talk Digrem Orebar##81955
accept Tastes Like Chicken##34869 |goto 79.20,52.63
step
talk Dexyl Deadblade##79188
accept Ring of Trials: Crushmaul##34662 |goto 79.46,50.30
step
talk Biggy Warprofits##83924
fpath The Ring of Trials |goto Nagrand D 79.8,49.7
step
talk Gabby Goldsnap##80184
accept Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 79.85,48.84
step
talk Pyxni Pennypocket##79310
accept The Missing Caravan##34598 |goto 78.58,48.57
accept Declawing The Competition##34512 |goto 78.58,48.57
step
talk Marybelle Walsh##84632
accept The Good Doctor##35146 |goto 77.44,47.36
accept Whacking Weeds##36273 |goto 77.44,47.36
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the first Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Crushmaul##34662/1 |goto 77.64,49.56
|tip You can't be in the Telaari Siege Engine.
step
kill Crushmaul##76702 |q Ring of Trials: Crushmaul##34662/2 |goto 78.00,50.38
|tip Save your cooldowns until the end of the fight when he enrages.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Crushmaul##34662 |goto 79.46,50.30
accept Ring of Trials: Raketalon##34663 |goto 79.46,50.30
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the second Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Raketalon##34663/1 |goto 77.63,49.58
step
kill Raketalon##82670 |q Ring of Trials: Raketalon##34663/2 |goto 77.97,50.31
|tip He summons some birds to help fight, but if you can kill him fast enough, you can just focus on the boss and the adds will dissappear when he dies. Also, avoid the tornados he casts. You can see where they will be on the ground, so avoid the swirling gray circles.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Raketalon##34663 |goto 79.46,50.28
accept Ring of Trials: Hol'yelaa##34664 |goto 79.46,50.28
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the third Trial of The Ring."_
Speak with Guzrug to begin the fight |q Ring of Trials: Hol'yelaa##34664/1 |goto 77.63,49.57
step
kill Hol'yelaa##86146 |q Ring of Trials: Hol'yelaa##34664/2 |goto 78.00,50.36
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Hol'yelaa##34664 |goto 79.46,50.31
accept Ring of Trials: Captain Boomspark##34665 |goto 79.46,50.31
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the fourth Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Captain Boomspark##34665/1 |goto 77.63,49.57
step
kill The Burninator##79690 |q Ring of Trials: Captain Boomspark##34665/2 |goto 77.97,50.29
|tip When the machine dies, it will immediately explode, dealing about 15k damage, so be careful.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Captain Boomspark##34665 |goto 79.47,50.30
accept Ring of Trials: Roakk the Zealot##34666 |goto 79.47,50.30
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the fifth Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Roakk the Zealot##34666/1 |goto 77.62,49.56
step
kill Roakk the Zealot##79490 |q Ring of Trials: Roakk the Zealot##34666/2 |goto 77.97,50.57
|tip Turn away from him whenever he casts Blinding Radiance.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 10
talk Dexyl Deadblade##79188
turnin Ring of Trials: Roakk the Zealot##34666 |goto 79.46,50.30
step
talk Greezlex Fizzpinch##79312
turnin The Missing Caravan##34598 |goto 78.99,58.91
accept Gobnapped##34515 |goto 78.99,58.91
accept They've Got The Goods!##34514 |goto 78.99,58.91
step
_Enter_ the canyon |goto Nagrand D 77.4,59.3 < 20 |only if walking
talk Bazwix##79899
accept My Precious!##34516 |goto 76.47,59.31
step
_Enter_ the cave |goto Nagrand D 75.0,61.9 < 10 |walk
kill Razorpaw##79002 |q WANTED: Razorpaw!##34513/1 |goto 75.18,62.47
|tip He's inside this small cave.
stickystart "saberonclaw"
stickystart "stolengoods"
stickystart "goblintraders"
step
_Run up_ the narrow path through the rocks |goto Nagrand D 74.2,62.1 < 10 |only if walking
click Bazwix's Treasure##230712
|tip It looks like a sexy goblin calendar up on the ledge. Haha.
Find Bazwix's Stolen Treasure |q My Precious!##34516/1 |goto 74.73,61.56
step
talk Bazwix##79897
turnin My Precious!##34516 |goto 74.75,61.55
step
label "goblintraders"
click Sabermaw Cage##230115
|tip They look like wooden cages on the ground around this area. They can also be in the caves, so check those as well.
Rescue #6# Goblin Traders |q Gobnapped##34515/1 |goto 74.71,60.04
step
label "stolengoods"
clicknpc Stolen Goods##87389
|tip They look like small tan sacks laying on the ground around this area. They can also be in the caves, so check those as well.
collect 10 Stolen Goods##110719 |q They've Got The Goods!##34514/1 |goto 74.55,60.02
step
label "saberonclaw"
kill Sabermaw Scarfang##78976+, Sabermaw Mauler##78990+
collect 10 Saberon Claw##110714 |q Declawing The Competition##34512/1 |goto 74.27,60.41
step
_Leave_ the canyon |goto Nagrand D 71.5,61.2 < 20 |only if walking
_Follow_ the path up |goto Nagrand D 70.9,64.0 < 20 |only if walking
kill Windroc##79398+
collect 10 Raw Windroc##113085 |q Tastes Like Chicken##34869/1 |goto Nagrand D 72.0,65.6
You can find more around [Nagrand D 71.3,69.4]
step
_Follow_ the dirt path to the road |goto Nagrand D 72.2,67.2 < 20 |only if walking
_Run on_ the road |goto Nagrand D 69.5,57.8 < 20 |only if walking
talk Digrem Orebar##81955
turnin Tastes Like Chicken##34869 |goto 79.22,52.66
accept Fruitful Ventures##34819 |goto 79.22,52.66
step
talk Pyxni Pennypocket##79310
turnin WANTED: Razorpaw!##34513 |goto 78.58,48.57
turnin Declawing The Competition##34512 |goto 78.59,48.57
turnin They've Got The Goods!##34514 |goto 78.59,48.57
turnin Gobnapped##34515 |goto 78.59,48.57
stickystart "nagrandcherry"
step
talk Gazmolf Futzwangler##79201
turnin Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto Nagrand D 71.1,52.4
accept A Lesson in Minerology##34809 |goto Nagrand D 71.1,52.4
step
talk Trixi Leroux##82658
accept Good Help is Hard to Find##34811 |goto Nagrand D 71.1,52.4
stickystart "earthencore"
step
click Loose Soil##241606
|tip They look like brown piles of dirt with shovels stuck in them on the ground around this area.
collect 8 Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |goto Nagrand D 66.1,54.0
step
label "earthencore"
kill Raging Crusher##80144+
collect 4 Earthen Core##111874 |q A Lesson in Minerology##34809/1 |goto Nagrand D 66.1,54.0
step
_Follow_ the path up |goto Nagrand D 66.8,53.7 < 20 |only if walking
_Continue following_ the path |goto Nagrand D 69.8,52.8 < 20 |only if walking
_Leave_ the canyon |goto Nagrand D 71.5,49.9 |only if walking
_Run alongside_ the canyon |goto Nagrand D 73.0,49.7 < 20 |only if walking
talk Trixi Leroux##82658
turnin Good Help is Hard to Find##34811 |goto 71.13,52.43
step
click Gold-O-Matic 9000##230882
|tip It looks like a bouncy, shaking metal macine.
turnin A Lesson in Minerology##34809 |goto 71.05,52.32
step
label "nagrandcherry"
click Nagrand Cherry##232100
|tip They look like big orange-ish red round fruits sitting on the ground at the base of trees all around this area.
collect 15 Nagrand Cherry##113083 |q Fruitful Ventures##34819/1 |goto Nagrand D 69.8,54.4
step
talk Gazmolf Futzwangler##79201
accept A Lesson in Teamwork##35663 |goto Nagrand D 71.1,52.3
accept A Lesson in Archaeology##35632 |goto Nagrand D 71.1,52.3
stickystart "mysteriousartifacts"
step
_Jump down_ into the canyon and _go over these rocks_ |goto Nagrand D 66.9,51.3 < 10 |only if walking
Follow the path inside to the _right over the bridge_ |goto Nagrand D/11 57.5,70.7 < 10 |only if walking
use Teleportation Beacon##113217
Place the Beacon |q A Lesson in Archaeology##35632/1 |goto Nagrand D/11 67.4,42.5
step
Watch the scene:
Recover the Mysterious Artifact |q A Lesson in Archaeology##35632/2 |goto 69.81,42.27
step
label "mysteriousartifacts"
_Follow_ the path |goto 31.9,61.9 < 10 |only if walking
kill Highmaul Laborer##79402+, Highmaul Archaeologian##82619+
click Ancient Reliquary##233053
|tip They look like square stone cases and small stone eagles on the ground inside and outside of the mine.
collect 10 Mysterious Artifact##113272 |q A Lesson in Teamwork##35663/1 |goto Nagrand D 66.6,49.8
step
_Jump up_ the rocks |goto Nagrand D/0 66.9,51.2 < 20 |only if walking
_Follow_ the path up |goto Nagrand D 69.5,53.0 < 20 |only if walking
_Leave_ the canyon and go up the _grassy hill_ |goto 72.3,50.2 < 20 |only if walking
talk Gazmolf Futzwangler##79201
turnin A Lesson in Teamwork##35663 |goto 71.1,52.3
turnin A Lesson in Archaeology##35632 |goto 71.1,52.3
step
talk Digrem Orebar##81955
turnin Fruitful Ventures##34819 |goto Nagrand D/0 79.2,52.6
accept New Babies##34900 |goto 79.21,52.66
step
clicknpc Tenderhoof Meadowstomper##78459+
|tip They look like small elephants that wander around this area. They are uncommon, so you'll have to run around a bit to find some. Stay in the blue areas of your minimap, or else you will only be able to attack them.
Coax #5# Tenderhoof Meadowstompers |q New Babies##34900/1 |goto Nagrand D/0 75.4,56.5
step
talk Digrem Orebar##81955
turnin New Babies##34900 |goto 79.22,52.66
step
_Follow_ the path |goto Nagrand D 82.8,48.6 < 20 |only if walking
_Run up_ the path |goto Nagrand D 85.2,48.2 < 20 |only if walking
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D 85.8,48.2
stickystart "nagrandprowlers"
step
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379
_Run up_ the path |goto Nagrand D 87.8,48.5 < 10 |only if walking
_Cross_ the bridge |goto Nagrand D 88.0,46.9 < 10 |only if walking
kill Lupe##82205 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/2 |goto 87.46,45.94
kill Loup##82209 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/3 |goto 87.46,45.94
step
kill Big Pete##82202 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/4 |goto 88.72,43.75
step
label "nagrandprowlers"
kill 15 Nagrand Prowler##81902 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/1 |goto 88.49,47.46
step
_Follow_ the path up |goto Nagrand D 84.3,51.6 < 10 |only if walking
_Go up_ the hill |goto 83.0,52.3 |only if walking
_Follow_ the grassy path |goto Nagrand D 83.2,51.2 < 10 |only if walking
_Jump down_ here |goto Nagrand D 84.9,53.3 < 10 |only if walking
_Enter_ the building |goto Nagrand D 85.5,55.0 < 10 |walk
talk Lantresor of the Blade##80161
turnin They Call Him Lantresor of the Blade##34951 |goto 85.43,54.60
accept The Blade Itself##34954 |goto 85.43,54.60
accept Not Without My Honor##34955 |goto 85.43,54.60
stickystart "forces_at_hallvalor"
step
_Leave_ the building |goto Nagrand D 85.5,55.0 < 10 |walk
kill Instructor Luhk##80236
collect Lantresor's Blade##111938 |q The Blade Itself##34954/1 |goto 85.99,53.76
step
_Enter_ the building |goto Nagrand D 85.8,53.5 < 10 |walk
click Burning Blade Locker##233815
|tip They look like wooden and steel chests. The Blademaster's Banner can be in any of the chests.
collect Blademaster's Banner##111947 |q Not Without My Honor##34955/1 |goto 84.86,55.30
There are 2 chests in the building at [Nagrand D 88.8,53.0]
There is 1 chest in the building at [Nagrand D 84.8,55.5]
There is 1 chest in the building at [Nagrand D 85.8,57.1]
There is 1 chest in the building at [Nagrand D 87.4,58.2]
step
label "forces_at_hallvalor"
kill Blademaster Trainee##80191+, Hallvalor Villager##80205+, Burning Flameseer##80197+
Slay #15# Burning Blade Forces at Hallvalor |q The Friend o' My Enemy##34952/1 |goto 86.23,54.64
step
talk Lantresor of the Blade##80161
|tip He's inside the building.
turnin The Blade Itself##34954 |goto 85.42,54.62
turnin Not Without My Honor##34955 |goto 85.42,54.62
accept Meet Me in the Cavern##34956 |goto 85.42,54.62
step
talk Lantresor of the Blade##80319
turnin Meet Me in the Cavern##34956 |goto Nagrand D/10 44.74,19.96
accept Challenge of the Masters##34957 |goto 44.74,19.96
step
_Make your way_ through the cave |goto Nagrand D/10 39.3,29.7 < 10 |walk
click Burning Blade Sword##230948
|tip It looks like a sword stuck in the ground in the center of the steel circle.
Win the Challenge |q Challenge of the Masters##34957/2 |goto 53.2,68.5
|tip Kill the enemies that you have to fight one at a time.
step
talk Rangari D'kaan##79576
turnin Challenge of the Masters##34957 |goto Nagrand D/0 63.5,61.9
accept Along the Riverside##35059 |goto Nagrand D/0 63.5,61.9
accept Nobundo Sends Word##35332 |goto Nagrand D/0 63.5,61.9
step
talk Hansel Heavyhands##79954
turnin The Friend o' My Enemy##34952 |goto 63.54,61.84
step
_Go through_ the doorway |goto Nagrand D 63.4,61.0 < 10 |only if walking
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34747 |goto 64.23,59.56
turnin The Honor of a Blademaster##34747 |goto 64.23,59.56
step
Take the _dirt path through the hills_ |goto Nagrand D/0 59.1,51.6 < 30 |only if walking
talk Vindicator Yrel##81039
turnin Along the Riverside##35059 |goto 61.98,40.56
accept Terms of Surrender##35060 |goto 61.98,40.56
step
talk Felicia Maline##81250
fpath Yrel's Watch |goto Nagrand D 62.7,40.6
step
_Go through_ the doorway |goto Nagrand D 56.1,43.7 < 10 |only if walking
_Enter_ the building |goto Nagrand D 55.5,42.9 < 10 |walk
talk Uruk Foecleaver##81086
turnin Terms of Surrender##35060 |goto 55.50,42.09
accept The Pride of Lok-rath##35061 |goto 55.50,42.09
step
talk Lieutenant K. K. Lee##81097
accept Silence the War Machines##35067 |goto 55.44,42.09
accept If They Won't Surrender...##35068 |goto 55.44,42.09
stickystart "lok-rathforces"
step
_Leave_ the building |goto Nagrand D 55.5,42.9 < 10 |walk
clicknpc Fallen Alliance Soldier##81134
accept Terror of Nagrand##35069 |goto 56.10,43.80
step
clicknpc Iron Horde War Machine##81050
|tip It looks like a huge metal cannon.
Destroy the War Machine |q Silence the War Machines##35067/1 |count 1 |goto 55.98,43.03
step
_Go through_ the doorway |goto Nagrand D 56.2,43.7 < 10 |only if walking
_Enter_ the cave |goto Nagrand D/0 57.2,42.6 < 10 |walk
kill Shagor##80263
collect Shagor's Collar##112620 |q Terror of Nagrand##35069/1 |goto 58.21,43.37
step
_Leave_ the cave |goto Nagrand D/0 57.2,42.6 < 10 |walk
_Go through_ the doorway |goto Nagrand D 56.2,43.7 < 10 |only if walking
clicknpc Iron Horde War Machine##81050
|tip It looks like a huge metal cannon.
Destroy the War Machine |q Silence the War Machines##35067/1 |count 2 |goto Nagrand D/0 55.8,46.5
step
kill Uruk Foecleaver##80264 |q The Pride of Lok-rath##35061/1 |goto 55.64,47.76
|tip He's inside a small round building.
step
clicknpc Iron Horde War Machine##81050
|tip It looks like a huge metal cannon.
Destroy the War Machine |q Silence the War Machines##35067/1 |count 3 |goto Nagrand D/0 54.5,44.9
step
label "lok-rathforces"
kill Warsong Wolf Master##80253+, Lok-rath Windtamer##80255+, Iron Cannoneer##80964+, Nagrand Raider##80254+
Slay #10# Lok-rath Enemy Forces |q If They Won't Surrender...##35068/1	|goto 55.60,43.89
step
Follow the road up _out of the camp_ |goto Nagrand D 57.3,46.2 < 20 |only if walking
_Go through_ the doorway |goto Nagrand D 58.4,45.2 < 20 |only if walking
talk Vindicator Yrel##81039
turnin The Pride of Lok-rath##35061 |goto 61.96,40.56
accept Lok-rath is Secured##35062 |goto 61.96,40.56
accept THAELIN!##35140 |goto 61.96,40.56
step
talk Captain "Victorious" Chong##81123
turnin Silence the War Machines##35067 |goto 62.11,40.40
turnin If They Won't Surrender...##35068 |goto 62.11,40.40
turnin Terror of Nagrand##35069 |goto 62.11,40.40
step
clicknpc Baby Goren##81255+
|tip They are small creatures on the ground around this camp.
Capture #15# Baby Goren |q THAELIN!##35140/1 |goto 62.07,40.46
step
talk Vindicator Yrel##81039
turnin THAELIN!##35140 |goto 61.97,40.55
accept Carrier Has Arrived##35141 |goto 61.97,40.55
step
talk Thaelin Darkanvil##79674
turnin Carrier Has Arrived##35141 |goto 63.10,61.94
step
talk Rangari D'kaan##79576
turnin Lok-rath is Secured##35062 |goto 63.51,61.90
accept And Justice for Thrall##35169 |goto 63.51,61.90
step
_Go through_ the doorway |goto Nagrand D 63.4,61.0 < 20 |only if walking
_Follow_ the dirt path |goto Nagrand D/0 65.3,59.0 < 30 |only if walking
_Continue_ up the hill and follow the path |goto 69.7,59.2 < 20 |only if walking
_Continue_ over the hill |goto 71.7,66.1 < 20 |only if walking
talk Vindicator Yrel##81404
Tell  her _"Yrel, let's blow open those gates and take Grommashar."_
Speak with Vindicator Yrel at the Gates of Grommashar |q And Justice for Thrall##35169/1 |goto 74.56,69.55
step
_Go through_ the doorway |goto Nagrand D 74.2,70.5 < 20 |only if walking
talk Rangari D'kaan##81405
Tell him _"I agree. A flanking maneuver will buy you the time you need to move most of our forces closer to Garrosh."_
Speak with Rangari D'kaan Inside Grommashar |scenariogoal 25156 |goto Nagrand D 74.7,76.3
step
_Follow_ the path |goto Nagrand D 73.2,76.6 < 20 |only if walking
_Go through_ the doorway |goto Nagrand D 72.7,78.3 < 20 |only if walking
kill Packmaster Grokglok##82131
Defeat Packmaster Grokglok |scenariogoal 24795 |goto Nagrand D/0 72.2,78.9
step
_Go through_ the doorway |goto Nagrand D 71.3,79.7 < 20 |only if walking
_Follow_ the winding path up |goto Nagrand D/0 70.2,81.4 < 20 |only if walking
_Keep heading up_ the hill |goto Nagrand D/0 73.0,80.9 < 20 |only if walking
_Continue following_ the path |goto Nagrand D 74.5,80.1 < 20 |only if walking
talk Vindicator Yrel##83407 |goto 75.18,77.51
Tell her _"Like it or not, we need to move ahead. What's the situation?"_
Speak with Vindicator Yrel at the Rally Point Up the Hill |scenariogoal 25130 |goto Nagrand D/0 75.2,77.6
step
_Follow_ the path up |goto Nagrand D 75.7,78.1 < 20 |only if walking
kill Durn the Hungerer##82132
|tip Use the ability that pops up in the middle of your screen.
Slay Durn the Hungerer |scenariogoal 24796 |goto Nagrand D/0 75.6,81.7
step
_Run down_ the stairs |goto Nagrand D 74.5,81.9 < 20 |only if walking
talk Vindicator Yrel##83407
Tell her _"Give the order, Yrel. Destroy the gates and get us in there."_
Speak with Vindicator Yrel at the Final Gate |scenariogoal 25160 |goto Nagrand D/0 72.9,81.8
step
_Go through_ the doorway |goto Nagrand D 72.6,82.2 < 20 |only if walking
kill Garrosh Hellscream##82133
|tip You will have to attack him to begin the fight.
Watch the dialogue and cutscene
Bring Warlord Garrosh Hellscream to Justice |scenariostage 24797 |goto Nagrand D/0 71.4,84.6
step
talk Vindicator Yrel##81412
turnin And Justice for Thrall##35169 |goto 66.96,33.77
step
talk Joz Navarix##88668
fpath Joz's Rylaks |goto Nagrand D 62.2,32.9
step
_Run up_ the rocky hills |goto Nagrand D 64.1,32.1 < 10 |only if walking
_Cross_ the bridge |goto Nagrand D 73.0,28.4 < 10 |only if walking
talk Gixmo Moneycash##82844
fpath Throne of the Elements |goto Nagrand D 73.7,26.7
step
talk Vindicator Nobundo##82138
turnin Nobundo Sends Word##35332 |goto 71.72,19.66
accept Called to the Throne##35331 |goto 71.72,19.66
step
talk Vindicator Nobundo##82138
Tell him _"I am ready to commune with the furies."_
Speak with Vindicator Nobundo |q Called to the Throne##35331/1 |goto 71.72,19.63
Watch the dialogue
Commune with the Furies |q Called to the Throne##35331/2 |goto 71.72,19.63
step
talk Vindicator Nobundo##82138
turnin Called to the Throne##35331 |goto 71.72,19.63
accept Elemental Attunement##35333 |goto 71.72,19.63
step
talk Kalandrios##80595
accept An Old Friend##34943 |goto 72.72,19.71
step
talk Incineratus##80593
accept Earth, Wind and Fire...and Water##34881 |goto 71.35,17.90
accept Guardians of the Plateau##34893 |goto 71.35,17.90
step
_Travel up_ the hill and over the rock bridge |goto Nagrand D/0 74.4,16.1 < 10 |only if walking
talk Gar'rok##80434
turnin An Old Friend##34943 |goto 75.09,22.73
accept A Rare Bloom##34894 |goto 75.09,22.73
stickystart "earth"
step
_Go up_ the hill |goto Nagrand D 75.9,21.2 < 20 |only if walking
_Follow_ the path |goto Nagrand D 79.5,15.5 < 20 |only if walking
_Continue following_ the path |goto Nagrand D 79.7,13.7 < 20 |only if walking
click Pillar of Earth##230961 |tip It looks like a huge stone.
Attune to the Earth |q Elemental Attunement##35333/1	|goto 79.29,11.67
step
_Follow_ the path |goto Nagrand D 79.6,13.5 < 20 |only if walking
_Run up_ the path |goto Nagrand D 81.5,15.2 < 10 |only if walking
kill Unstable Earth Guardian##80374 |q Guardians of the Plateau##34893/1 |goto 81.6,14.5
step
label "earth"
kill Unstable Earth Spirit##80382+
collect 4 Living Earth##112084 |q Earth, Wind and Fire...and Water##34881/1 |goto Nagrand D/0 80.7,15.0
stickystart "water"
step
_Follow_ the ramp up |goto Nagrand D/0 78.4,15.4 < 15 |only if walking
_Continue_ up the ramp |goto Nagrand D/0 74.9,13.0 < 15 |only if walking
kill Tainted Water Guardian##80377 |q Guardians of the Plateau##34893/4 |goto Nagrand D/0 75.2,13.9
step
click Pillar of Water##230964
|tip It looks like a huge stone.
Attune to the Water |q Elemental Attunement##35333/4 |goto 73.86,10.45
step
label "water"
click Living Water##230979
kill Tumultous Water Spirit##80379+
collect 4 Living Water##112083 |q Earth, Wind and Fire...and Water##34881/4 |goto Nagrand D/0 75.4,10.5
stickystart "fire"
step
_Follow_ the ramp down |goto Nagrand D/0 71.3,8.0 < 15 |only if walking
click Pillar of Flame##230963
|tip It looks like a huge stone.
Attune to the Flame |q Elemental Attunement##35333/3 |goto 67.47,9.06
step
kill Volatile Flame Guardian##80376 |q Guardians of the Plateau##34893/3 |goto Nagrand D/0 66.6,8.5
step
label "fire"
clicknpc Living Flame##80421
kill Volatile Fire Spirit##80380+
collect 4 Living Flame##112082 |q Earth, Wind and Fire...and Water##34881/3 |goto Nagrand D/0 67.1,10.8
stickystart "Ember Blossom"
step
_Enter_ the cave |goto Nagrand D/0 69.00,10.07 < 20 |walk
kill Magmire##80586
collect A Molten Core##113080 |n
use A Molten Core##113080
accept A Wrong of Earth and Fire##33928 |goto Nagrand D/0 70.4,9.9 |indoors Magma Cave
step
label "Ember Blossom"
click Ember Blossom##231093
|tip It looks like some flowers sticking out of a pool of lava.
collect Ember Blossom##112089 |q A Rare Bloom##34894/1 |goto Nagrand D 70.7,10.0 |indoors Magma Cave
stickystart "LWind"
step
_Leave_ the cave |goto Nagrand D/0 68.8,10.4 < 10 |walk
_Go back_ up the winding path |goto 68.9,9.3 < 10 |only if walking
Follow the _cliff up_ |goto 71.1,8.0 < 20 |only if walking
Cross the open area and _through the opening_ |goto 76.8,14.3 < 20 |only if walking
_Run up_ the long stone bridge |goto Nagrand D 81.4,16.3 < 20 |only if walking
click Pillar of Wind##230962
|tip It looks like a huge stone.
Attune to the Wind |q Elemental Attunement##35333/2 |goto 78.29,24.35
step
_Run up_ the path |goto Nagrand D 79.4,24.5 < 10 |only if walking
kill Corrupted Wind Guardian##0 |q Guardians of the Plateau##34893/2 |goto 79.82,25.23
step
label "LWind"
clicknpc Living Wind##82889
|tip They look like small clouds floating around this area.
kill Living Wind##82889+
collect 4 Living Wind##112085 |q Earth, Wind and Fire...and Water##34881/2 |goto Nagrand D/0 80.4,23.0
stickystart "killsnarlpaw"
stickystart "frightenedspirits"
step
_Go down_ the large slanted rock |goto Nagrand D/0 78.5,27.9 < 20 |only if walking
_Jump down_ here |goto Nagrand D 77.6,29.3 < 10 |only if walking
_Jump down_ again |goto Nagrand D 77.7,28.4 < 10 |only if walking
accept Bonus Objective: Snarlpaw Ledge##37280
kill Boneseer Cold-Eye##88361 |q Bonus Objective: Snarlpaw Ledge##37280/3 |goto 79.88,30.08
step
talk Murgok##88500
accept The Dead Do Not Forget...##37318 |goto 79.46,30.31
step
click Ancient Snarlpaw Skull##238850
|tip They look like skulls with big tusks on the ground around this area. They can be in the caves around this area, so be sure to check those as well.
collect 10 Ancient Snarlpaw Skull##119184 |q The Dead Do Not Forget...##37318/1 |goto Nagrand D 78.5,28.8
step
label "killsnarlpaw"
accept Bonus Objective: Snarlpaw Ledge##37280
kill Snarlpaw Shadowfang##88363+, Snarlpaw Razortooth##88358+, Snarlpaw Bloodtracker##88365+
Kill #15# Snarlpaw Saberon |q Bonus Objective: Snarlpaw Ledge##37280/2 |goto 79.11,30.96
step
label "frightenedspirits"
accept Bonus Objective: Snarlpaw Ledge##37280
talk Frightened Spirit##88811
|tip They are ghosts running around scared around this area. You will have to kill the ghost attacking them to release some of them.
Tell them _"The saberon attack is over. Go now, and rest in peace."_
Release #6# Frightened Spirits |q Bonus Objective: Snarlpaw Ledge##37280/1 |goto 78.92,30.10
step
click Boneseer's Cauldron##237705
|tip It looks like a black pot.
turnin The Dead Do Not Forget...##37318 |goto 79.75,30.24
stickystart "spitespitter"
step
_Run through_ the large rocks and follow the path |goto Nagrand D/0 80.5,31.6 < 20 |only if walking
_Jump down_ the rocks and head into the wooded area |goto 82.8,32.8 < 20 |only if walking
_Follow_ the path |goto Nagrand D 84.2,31.0 < 20 |only if walking
_Enter_ the hole in the ground |goto Nagrand D/0 84.0,24.3 < 10 |walk
talk Dr. Hadley Ricard##84633
Rescue Dr. Hadley Ricard |q The Good Doctor##35146/1 |goto 83.20,22.62
step
_Leave_ the hole in the ground |goto Nagrand D/0 84.0,24.3 < 10 |walk
talk Dr. Hadley Ricard##84861
turnin The Good Doctor##35146 |goto 86.66,28.32
accept The Search For Research##36275 |goto 86.66,28.32
accept A Fascinating Fungus##36284 |goto 86.66,28.32
stickystart "fsg"
step
click Expedition Supplies##234176
|tip It looks like a backpack underneath 3 giant mushrooms next to the wall.
collect Expedition Supplies##115275 |q The Search For Research##36275/2 |goto 86.03,20.49
step
click Research Journal##234178
|tip It looks like a small stack of books, sitting on top of a mushrooms sticking out of the water.
collect Research Journal##115272 |q The Search For Research##36275/1 |goto 88.86,19.78
step
click Anti-fungal Boots##234169
|tip It looks like a pair of boots on top of a mushroom.
collect Anti-Fungal Boots##115274 |q The Search For Research##36275/3 |goto 91.77,21.74
step
label "fsg"
click Spore Sac##234101
|tip They look like green sacks growing out of the ground with yellow glowing holes in them on the ground and underwater around this area.
kill Spore Giant##84706+
collect 12 Fungal Spores##115276 |q A Fascinating Fungus##36284/1 |goto 87.24,21.89
step
_Follow_ the path up |goto Nagrand D 86.7,27.0 < 20 |only if walking
talk Dr. Hadley Ricard##84861
turnin The Search For Research##36275 |goto 86.65,28.33
turnin A Fascinating Fungus##36284 |goto 86.65,28.33
accept Dirgemire##36285 |goto 86.65,28.33
step
label "spitespitter"
kill 20 Spiteleaf Spitter##84654+, Spiteleaf Sprout##84653+
Kill #20# Spiteleaf Podlings |q Whacking Weeds##36273/1 |goto 84.99,27.87
step
_Swim underwater_ and enter the cave |goto Nagrand D/0 86.4,16.3 < 20 |walk
kill Dirgemire##84649
collect Fungal Brain##115277 |q Dirgemire##36285/1 |goto 84.38,17.14
step
_Swim underwater_ and leave the cave |goto Nagrand D/0 86.4,16.3 < 20 |walk
_Follow_ the path up |goto Nagrand D 86.7,27.0 < 20 |only if walking
talk Dr. Hadley Ricard##84861
turnin Dirgemire##36285 |goto 86.64,28.33
step
talk Vindicator Nobundo##82138
turnin Elemental Attunement##35333 |goto 71.72,19.65
step
talk Incineratus##80593
turnin Earth, Wind and Fire...and Water##34881 |goto 71.37,17.89
turnin Guardians of the Plateau##34893 |goto 71.37,17.89
turnin A Wrong of Earth and Fire##33928 |goto 71.37,17.89
step
_Follow_ the path up |goto Nagrand D/0 74.3,16.2 < 20 |only if walking
talk Gar'rok##80434
turnin A Rare Bloom##34894 |goto 75.09,22.75
accept Guise of the Deceiver##34932 |goto 75.09,22.75
step
_Run up_ the winding path |goto Nagrand D/0 76.3,19.9 < 10 |only if walking
Follow the path _up and to the right_ |goto 77.4,20.5 < 10 |only if walking
talk Challe##80483
Tell her _"I wish to know the truth about Dahaka. What do you know about her death?"_
Speak with Challe |q Guise of the Deceiver##34932/1 |goto 77.95,23.31
step
kill Challe##80483
Defeat Challe |q Guise of the Deceiver##34932/2 |goto 77.94,23.31
step
_Jump down carefully_ here |goto Nagrand D 77.0,23.4 < 10 |only if walking
talk Gar'rok##80434
turnin Guise of the Deceiver##34932 |goto 75.07,22.74
accept The Debt We Share##34941 |goto 75.07,22.74
step
talk Gar'rok##80434
Tell him _"I stand with you, Gar'rok. Rest with honor."_
Witness the Passing of Gar'rok |q The Debt We Share##34941/1 |goto 75.08,22.74
step
talk Kalandrios##80595
turnin The Debt We Share##34941 |goto 72.75,19.72
step
talk Vindicator Nobundo##82138
accept The Ritual of Binding##35330 |goto 71.73,19.65
step
talk Kalandrios##80595
Tell him _"I am ready to begin the Ritual of Binding."_
Speak with Kalandrios |q The Ritual of Binding##35330/1 |goto 72.72,19.74
step
talk Vindicator Nobundo##82138
turnin The Ritual of Binding##35330 |goto 71.72,19.65
accept The Call of Oshu'gun##35372 |goto 71.72,19.65
step
talk Gixmo Moneycash##82844
Tell him _"Fly me to the Spirit Woods near Oshu'gun."_
Speak with Gixmo Moneycash |q The Call of Oshu'gun##35372/1 |goto 73.69,26.63
step
Meet Nobundo in the Spirit Woods |q The Call of Oshu'gun##35372/2 |goto 55.61,55.86
step
talk Vindicator Nobundo##82179
turnin The Call of Oshu'gun##35372 |goto 55.53,55.91
accept Spiritual Matters##35393 |goto 55.53,55.91
accept The Pale Threat##35397 |goto 55.53,55.91
accept Dark Binding##35398 |goto 55.53,55.91
step
click Shamanstone##233263
|tip It looks like a huge stone.
accept Silence the Call##35084 |goto 55.45,55.91
accept Disrupt the Rituals##35083 |goto 55.45,55.91
stickystart "palesubjugator"
step
Make your way _through the passage_ |goto Nagrand D/0 56.7,58.2 < 20 |only if walking
kill Enslaved Earth Spirit##81409+, Pale Subjugator##81578+
|tip The Pale Subjugators are casting spells next to elementals around this area. Many are stealthed, too, so be careful.
Liberate #8# Elemental spirits |q Dark Binding##35398/1 |goto 58.67,60.34
step
label "palesubjugator"
kill Pale Subjugator##81578+
Kill #6# Pale Orcs |q The Pale Threat##35397/2 |goto 58.51,60.44
step
_Follow_ the path down into the cave |goto Nagrand D/12 72.4,46.1 < 10 |walk
_Continue_ following the path |goto Nagrand D/12 64.9,31.8 < 10 |walk
kill Greyseer##81309 |q The Pale Threat##35397/1 |goto Nagrand D/12 66.06,18.08
step
talk Vindicator Nobundo##82181
turnin The Pale Threat##35397 |goto Nagrand D/12 46.2,32.6
turnin Dark Binding##35398 |goto Nagrand D/12 46.2,32.6
accept The Fate of Gordawg##35395 |goto Nagrand D/12 46.2,32.6
accept The Dark Heart of Oshu'gun##35396 |goto Nagrand D/12 46.2,32.6
step
kill Gordawg##80592
collect Heart of the Fury##113077 |q The Fate of Gordawg##35395/1 |goto 40.22,41.98
step
_Jump down_ and _follow_ the path back |goto Nagrand D/12 32.5,57.7 < 10 |walk
_Go through_ the doorway |goto Nagrand D/12 25.8,57.6 < 10 |walk
Enter the Sanctum of the Naaru |q The Dark Heart of Oshu'gun##35396/1 |goto 18.70,64.77
step
kill Decimatus##81989 |q The Dark Heart of Oshu'gun##35396/2 |goto 14.27,69.39
step
_Go up_ the ramp |goto Nagrand D/12 22.6,65.6 < 10 |walk
_Jump_ down the ledge |goto Nagrand D/0 47.1,62.0 < 10 |walk
_Follow_ the path |goto Nagrand D/0 47.5,60.8 < 20 |only if walking
_Run up_ the hill |goto Nagrand D/0 51.4,62.9 < 10 |only if walking
click Warsong Attack Plans##232024
|tip It looks like a brown rolled-up scroll sitting on top of a barrel.
accept The Warsong Threat##35386 |goto 51.87,62.07
stickystart "killwarsongshamans"
step
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy the Gra'ah Totem |q Disrupt the Rituals##35083/2 |count 1 |goto 52.19,62.99
step
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy 3 Gra'ah Totem |q Disrupt the Rituals##35083/2 |goto Nagrand D/0 52.4,63.9
step
kill Ritualist Kuhlrath##81142 |q Silence the Call##35084/1 |goto 54.53,67.30
|tip He's inside the round building.
step
click Nagrand Scouting Report##232025
|tip It looks like a brown rolled-up scroll sitting on top of a chest next to the doorway of the building.
collect Nagrand Scouting Report##113552 |q The Warsong Threat##35386/4 |goto 54.58,67.05
step
_Enter_ the building |goto Nagrand D/0 51.9,68.0 < 10 |walk
click Warsong Outrider Orders##233349
|tip It looks like a brown rolled-up scroll sitting on a table at the back of the room.
collect Warsong Outrider Orders##113551 |q The Warsong Threat##35386/3 |goto Nagrand D/0 51.9,67.8
step
_Leave_ the building |goto Nagrand D/0 51.9,68.0 < 10 |walk
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy the Kag'ah Totem |q Disrupt the Rituals##35083/3 |count 1 |goto 50.47,70.02
step
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy the Kag'ah Totem |q Disrupt the Rituals##35083/3 |goto Nagrand D/0 50.4,71.0
step
_Follow_ the path |goto Nagrand D/0 51.2,63.0 < 20 |only if walking
_Run up_ the hill |goto Nagrand D/0 49.4,59.2 < 20 |only if walking
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy the Mok'gor Totem |q Disrupt the Rituals##35083/1 |count 1 |goto 48.45,58.70
step
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy the Mok'gor Totem |q Disrupt the Rituals##35083/1 |goto 48.45,58.70 |goto Nagrand D/0 47.8,58.7
step
_Enter_ the building |goto Nagrand D/0 47.2,56.3 < 10 |walk
click Mixed Unit Tactics##233351
|tip It looks like a brown rolled-up scroll sitting on a desk at the back of the room.
collect Mixed Unit Tactics##113549 |q The Warsong Threat##35386/2 |goto 47.07,56.03
step
_Leave_ the building |goto Nagrand D/0 47.2,56.3 < 10 |walk
click Shamanstone##233263
|tip It looks like a huge stone.
turnin Disrupt the Rituals##35083 |goto Nagrand D/0 46.8,57.5
step
_Enter_ the building |goto Nagrand D/0 52.2,55.8 < 10 |walk
click Warsong Command Brief##233350
|tip It looks like a brown rolled-up scroll sitting on a table at the back of the room.
collect Warsong Command Brief##113550 |q The Warsong Threat##35386/1 |goto 52.52,55.80
step
label "killwarsongshamans"
kill Warsong Windcaller##81054+, Warsong Axe-Singer##81019+
Slay #10# Warsong Shamans |q Silence the Call##35084/2 |goto 51.76,58.79
step
_Leave_ the building |goto Nagrand D/0 52.2,55.8 < 10 |walk
click Shamanstone##233263
|tip It looks like a huge stone.
turnin Silence the Call##35084 |goto 51.76,58.79
accept Through the Nether##35085 |goto 51.76,58.79
step
click Nether Beacon##232147
|tip It looks like a purple orb in a metal stand.
Travel Into the Twisting Nether |q Through the Nether##35085/1 |goto 52.08,63.48
step
click Shamanstone##233263
|tip It looks like a huge stone.
turnin Through the Nether##35085 |goto 51.82,58.71
accept The Nether Approaches##35087 |goto 51.82,58.71
accept The Void March##35086 |goto 51.82,58.71
stickystart "voidterrors"
stickystart "voidtendrils"
step
click Void Portal##231892
|tip They look like swirling blue portals around this area.
Collapse #6# Void Portal |q The Nether Approaches##35087/1 |goto Nagrand D/0 51.4,60.5
step
label "voidterrors"
kill 10 Void Terror##81216 |q The Void March##35086/1 |goto 51.38,59.35
step
label "voidtendrils"
kill 15 Void Tendril##81230 |q The Void March##35086/2 |goto 51.38,59.35
step
click Shamanstone##233263
|tip It looks like a huge stone.
turnin The Nether Approaches##35087 |goto Nagrand D/0 51.8,58.8
turnin The Void March##35086 |goto Nagrand D/0 51.8,58.8
accept The Shadow of the Void##35088 |goto Nagrand D/0 51.8,58.8
step
click Void Crystal##232396
|tip It's a blue transparent crystal floating above a stone table
kill Invalidus##81215 |q The Shadow of the Void##35088/1 |goto 48.09,58.57
step
click Shamanstone##233263
|tip It looks like a huge stone.
turnin The Shadow of the Void##35088 |goto 46.76,57.57
step
talk Gar'rok##80864
turnin Spiritual Matters##35393 |goto 40.45,56.76
accept Lighting The Darkness##35022 |goto 40.45,56.76
step
talk Dahaka##80866
accept Echoes of the Past##35023 |goto 40.40,56.72
stickystart "tormentedecho"
step
click Ceremonial Pyre##231210
|tip It looks like a circular stone fire pit.
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 1 |goto Nagrand D/0 39.3,57.3
step
click Ceremonial Pyre##231210
|tip It looks like a circular stone fire pit.
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 2 |goto 38.3,57.2
step
click Ceremonial Pyre##231210
|tip It looks like a circular stone fire pit.
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 3 |goto 38.6,56.1
step
click Ceremonial Pyre##231210
|tip It looks like a circular stone fire pit.
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 4 |goto 38.7,54.6
step
click Ceremonial Pyre##231210
|tip It looks like a circular stone fire pit.
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 5 |goto 39.5,53.1
step
click Ceremonial Pyre##231210
|tip It looks like a circular stone fire pit.
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |goto 37.4,53.0
step
label "tormentedecho"
kill 8 Tormented Echo##80749 |q Echoes of the Past##35023/1 |goto 38.72,56.28
step
talk Dahaka##80866
turnin Echoes of the Past##35023 |goto 40.39,56.73
step
talk Gar'rok##80864
turnin Lighting The Darkness##35022 |goto 40.43,56.77
accept Golmash Hellscream##35024 |goto 40.43,56.77
step
kill Golmash Hellscream##80747 |q Golmash Hellscream##35024/1 |goto 37.16,55.67
step
talk Gar'rok##80864
turnin Golmash Hellscream##35024 |goto 40.43,56.79
step
_Jump down_ the ledge here |goto Nagrand D/0 44.4,74.6 < 20 |only if walking
accept Bonus Objective: Ironfist Harbor##34723 |goto Nagrand D/0 43.2,74.8
stickystart "oss"
step
accept Bonus Objective: Ironfist Harbor##34723
_Enter_ the building |goto Nagrand D/0 38.1,71.2 < 20 |only if walking
_Go up_ the stairs |goto Nagrand D/0 37.4,70.3 < 15 |only if walking
kill General Kull'krosh##79588 |goto Nagrand D/0 37.5,71.6 |q Bonus Objective: Ironfist Harbor##34723/4
|tip He's on top of the building on the roof.
step
accept Bonus Objective: Ironfist Harbor##34723
_Jump down_ here |goto Nagrand D/0 37.3,71.9 < 10 |only if walking
_Follow_ the coast along the water |goto Nagrand D/0 37.4,72.9 < 10 |only if walking
kill Rezlorg##79651 |q Bonus Objective: Ironfist Harbor##34723/3 |goto Nagrand D/0 38.2,73.4
step
accept Bonus Objective: Ironfist Harbor##34723
_Go onto_ the docks |goto Nagrand D/0 39.1,74.8 < 20 |only if walking
click Iron Supply Crate##230653
|tip They look like wooden boxes with metal trimmings on the ground around this area.
Destroy #12# Dock Suppy Crates |q Bonus Objective: Ironfist Harbor##34723/2 |goto Nagrand D/0 37.5,77.6
step
label "oss"
accept Bonus Objective: Ironfist Harbor##34723
kill Warsong Initiate##79754+, Iron Arbalester##79584+, Iron Guard##79581+
Kill #30# Orc Soldiers |q Bonus Objective: Ironfist Harbor##34723/1 |goto Nagrand D/0 39.6,74.0
step
_Leave_ the Ironfist Harbor area |goto Nagrand D/0 43.2,74.8 < 20 |only if walking
_Run up_ the path |goto Nagrand D/0 46.5,75.8 < 10 |only if walking
_Follow_ the dirt path |goto Nagrand D/0 48.1,73.4 < 20 |only if walking
talk Nivek Lee##88653
fpath Nivek's Overlook |goto Nagrand D/0 49.4,75.9
step
talk Captain Washburn##82252
turnin The Warsong Threat##35386 |goto 62.12,62.11
step
talk Marybelle Walsh##84632
turnin Whacking Weeds##36273 |goto 77.42,47.36
step
talk Kalandrios##80595
turnin The Fate of Gordawg##35395 |goto 72.76,19.76
step
talk Vindicator Nobundo##82214
turnin The Dark Heart of Oshu'gun##35396 |goto 71.55,19.76
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Tanaan Jungle (100)",{
description="This guide will walk you through completing the main questline for the level 100 Tanaan Jungle zone.",
},[[
step
Reach Level 100 |ding 100 |or
|tip Use the Leveling guide to accomplish this.
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip Use the Garrison Leveling guide to accomplish this.
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
|tip You will automatically accept this quest.
step
talk King Varian Wrynn##92219
turnin Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
accept We Need a Shipwright##38257 |goto Lunarfall/0 32.0,31.9
step
talk Dungar Longdrink##81103 |goto Lunarfall/0 48.0,49.8
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 52.9,9.6 < 100 |noway |c |q 38257
accept Clearing the Docks##37921
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Exarch Naielle##90180
turnin We Need a Shipwright##38257 |goto Gorgrond/0 52.6,9.8
accept Derailment##38254 |goto Gorgrond/0 52.6,9.8
stickystart "clearing_the_docks"
step
_Run across_ this bridge |goto Gorgrond/0 51.7,13.2 < 30 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q Derailment##38254/2 |goto Gorgrond/0 51.4,14.3
step
_Run across_ this bridge |goto Gorgrond/0 50.1,14.3 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground next to a small wall.
collect Explosive Charges##122515 |q Derailment##38254/1 |goto Gorgrond/0 49.8,12.7
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q Clearing the Docks##37921/1 |goto Gorgrond/0 52.3,11.0
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
talk Exarch Yrel##90177
turnin Derailment##38254 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q The Train Gang##38255/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q The Train Gang##38255/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q The Train Gang##38255/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q The Train Gang##38255/4 |goto Gorgrond/0 56.8,17.2
Watch the dialogue
Recruit Solog Roark |q The Train Gang##38255/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 56.8,17.2
step
_Follow_ the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q Hook, Line, and... Sink Him!##38256/1 |goto Gorgrond/0 50.7,16.1
step
_Enter_ the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q Hook, Line, and... Sink Him!##38256/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38258 |goto Gorgrond/0 50.6,16.7
step
talk King Varian Wrynn##92219
turnin Nothing Remains##38258 |goto Lunarfall/0 32.0,31.9
accept All Hands on Deck##38259 |goto Lunarfall/0 32.0,31.9
step
_Go through_ the doorway |goto Lunarfall/0 26.8,48.9 < 20 |only if walking
talk Solog Roark##91242
turnin All Hands on Deck##38259 |goto Shadowmoon Valley D/0 27.5,11.3
step
talk Merreck Vonder##93822
accept Let's Get To Work##39082 |goto Shadowmoon Valley D/0 28.2,10.6
step
talk Solog Roark##94429
turnin Let's Get To Work##39082 |goto Shadowmoon Valley D/0 29.8,10.6
accept Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q Shipbuilding##39054/1
step
talk Solog Roark##94429
turnin Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
accept Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.6
step
talk Yanas Seastrike##95002
turnin Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.7
accept Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
step
talk Yanas Seastrike##95002
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q Ship Shape##39055/1 |goto Shadowmoon Valley D/0 29.8,10.7
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport Once Construction is Complete |q Ship Shape##39055/2 |goto Shadowmoon Valley D/0 30.0,10.7
|tip It takes 1 minute to build after you begin the work order.
step
talk Yanas Seastrike##95002
turnin Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
accept The Invasion of Tanaan##38435 |goto Shadowmoon Valley D/0 29.8,10.7
step
Meet with Khadgar |q The Invasion of Tanaan##38435/1 |goto Shadowmoon Valley D/0 27.6,10.3
step
talk Exarch Yrel##90177
Tell her _"Let us begin the invasion."_
Speak with Yrel |q The Invasion of Tanaan##38435/2 |goto Shadowmoon Valley D/0 27.6,10.2
step
talk Exarch Yrel##91913
turnin The Invasion of Tanaan##38435 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##38436 |goto Tanaan Jungle/0 73.4,71.1
step
_Follow_ the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q Obstacle Course##38436/1 |goto Tanaan Jungle/0 68.9,64.9
step
_Follow_ the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q Obstacle Course##38436/2 |goto Tanaan Jungle/0 74.0,56.1
step
_Follow_ the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Exarch Naielle##91923
turnin Obstacle Course##38436 |goto Tanaan Jungle/0 69.5,53.0
accept In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 69.5,53.0
step
_Follow_ the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q In, Through, and Beyond!##38444/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q In, Through, and Beyond!##38444/2 |goto Tanaan Jungle/0 64.3,51.6
step
Meet Up with Exarch Naielle |q In, Through, and Beyond!##38444/3 |goto Tanaan Jungle/0 62.5,54.2
step
talk Exarch Naielle##91923
turnin In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 62.5,54.2
accept The Assault Base##38445 |goto Tanaan Jungle/0 62.5,54.2
step
_Follow_ the dirt path up |goto Tanaan Jungle/0 58.0,53.3 < 30 |only if walking
_Continue_ following the path up |goto Tanaan Jungle/0 57.1,55.9 < 20 |only if walking
Follow Naielle |q The Assault Base##38445/1 |goto Tanaan Jungle/0 57.6,59.2
step
clicknpc Alliance Banner##120954
|tip It looks like a yellow hanging flag with the Alliance lion logo on it.
Plant the Flag to Build the Base |q The Assault Base##38445/2 |goto Tanaan Jungle/0 57.5,59.2
step
talk Skyguard Thann##90960
fpath Lion's Watch |goto Tanaan Jungle/0 57.6,58.8
step
talk Angar Steelbellow##90963
accept Bring the Reinforcements##39313 |goto Tanaan Jungle/0 58.1,58.7
step
talk Angar Steelbellow##90963
Tell him _"Call to Arms."_
|tip This will give you one of the zone abilities you earned while questing in Draenor. You can change the ability you choose at any time after this quest by talking to him again.
Choose Your Reinforcements |q Bring the Reinforcements##39313/1 |goto Tanaan Jungle/0 58.1,58.7
step
talk Angar Steelbellow##90963
turnin Bring the Reinforcements##39313 |goto Tanaan Jungle/0 58.1,58.7
step
talk Dawn-Seeker Krisek##95424
accept Unknowable Power##39432 |goto Tanaan Jungle/0 58.0,59.3
step
_Enter_ the building |goto Tanaan Jungle/0 58.2,60.0 < 20 |walk
talk Exarch Yrel##90309
turnin The Assault Base##38445 |goto Tanaan Jungle/0 58.5,60.3
accept The Battle for the West##38581 |goto Tanaan Jungle/0 58.5,60.3
accept Shipyard Report##39422 |goto Tanaan Jungle/0 58.5,60.3 |condition completedq(39056)
step
talk Shima Islebreeze##90971
home The Lion's Den |goto Tanaan Jungle/0 58.6,60.3
step
talk Skyguard Thann##90960
Talk to Thann to Fly to the Iron Front |q The Battle for the West##38581/1 |goto Tanaan Jungle/0 57.5,58.8
Tell him _"Take me to the Iron Front."_
Fly to the Iron Front |goto Tanaan Jungle/0 10.0,53.2 < 100 |noway |c |q 38581
step
talk Skyguard Blann##91940
fpath The Iron Front |goto Tanaan Jungle/0 10.0,53.1
step
talk Exarch Maladaar##91935
Speak with Maladaar |q The Battle for the West##38581/2 |goto Tanaan Jungle/0 9.8,53.6
step
talk Exarch Maladaar##91935
turnin The Battle for the West##38581 |goto Tanaan Jungle/0 9.8,53.6
accept Commander in the Field!##38446 |goto Tanaan Jungle/0 9.8,53.6
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Footsoldier##90443+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags make of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q Battle At The Iron Front##38866/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the road |goto Tanaan Jungle/0 18.5,59.0 < 30 |only if walking
_Run on_ the dirt path |goto Tanaan Jungle/0 28.1,59.1 < 30 |only if walking
talk Rangari Sha'ana##92809
fpath Sha'naari Refuge |goto Tanaan Jungle/0 29.5,63.1
step
talk Altauur##91942
Speak with the Scout in Southwest Tanaan Jungle |q Commander in the Field!##38446/1 |goto Tanaan Jungle/0 29.6,63.0
step
_Follow_ the road |goto Tanaan Jungle/0 28.1,59.0 < 30 |only if walking
_Follow_ the dirt path |goto Tanaan Jungle/0 29.8,50.4 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 27.6,47.0 < 20 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 27.8,44.3 < 20 |only if walking
_Keep following_ the path and head _left_ |goto Tanaan Jungle/0 30.5,42.7 < 20 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 29.0,40.3 < 20 |only if walking
talk Skytalon Kariz##90560
fpath Aktar's Post |goto Tanaan Jungle/0 26.1,38.9
step
talk Rangari Laara##91945
Speak with the Scout in Northwest Tanaan Jungle |q Commander in the Field!##38446/2 |goto Tanaan Jungle/0 26.0,38.8
step
talk Sun-Sage Chakkis##94686
accept Mastery Of Taladite##39176 |goto Tanaan Jungle/0 25.9,39.9
only if skill("Jewelcrafting") >= 1
step
_Follow_ the path |goto Tanaan Jungle/0 24.2,39.7 < 30 |only if walking
_Run down_ the dirt path |goto Tanaan Jungle/0 21.9,40.6 < 20 |only if walking
_Swim_ in the water here |goto Tanaan Jungle/0 19.6,40.9 < 30 |only if walking
_Get out_ of the water here |goto Tanaan Jungle/0 18.0,44.6 < 20 |only if walking
talk Apexis Gemcutter##94605
turnin Mastery Of Taladite##39176 |goto Tanaan Jungle/0 17.5,45.2
accept Ruined Construct##39177 |goto Tanaan Jungle/0 17.5,45.2
only if skill("Jewelcrafting") >= 1
step
talk Apexis Gemcutter##94605
Choose _<Insert 1000 Apexis Crystals.>_
Repair the Apexis Gemcutter Construct |q Ruined Construct##39177/1 |goto Tanaan Jungle/0 17.5,45.2
|tip You need 1,000 Apexis Crystals to do this, but you should have at least that many by now.
only if skill("Jewelcrafting") >= 1
step
_Swim_ in the water here |goto Tanaan Jungle/0 18.0,44.6 < 20 |only if walking
_Get out_ of the water here |goto Tanaan Jungle/0 19.6,40.9 < 20 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 20.3,41.5 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 24.3,39.8 < 30 |only if walking
talk Sun-Sage Chakkis##94686
turnin Ruined Construct##39177 |goto Tanaan Jungle/0 25.9,39.9
only if skill("Jewelcrafting") >= 1
step
_Follow_ the road |goto Tanaan Jungle/0 30.9,62.3 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 35.4,67.3 < 30 |only if walking
_Keep following_ the road |goto Tanaan Jungle/0 42.1,71.5 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 46.0,70.4 < 30 |only if walking
talk Urtol Skyshear##90562
fpath Vault of the Earth |goto Tanaan Jungle/0 47.0,70.3
step
_Follow_ the path |goto Tanaan Jungle/0 47.8,66.6 < 30 |only if walking
_Run along_ the dirt path |goto Tanaan Jungle/0 54.4,69.2 < 30 |only if walking
kill Broodlord Ixkor##92429
|tip It may take a few minutes to respawn if someone else killed it recently.
collect Fel-Corrupted Apexis Fragment##128346 |q Unknowable Power##39432/1 |goto Tanaan Jungle/0 57.8,67.3
step
_Follow_ the path |goto Tanaan Jungle/0 56.2,66.5 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 55.0,63.6 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 55.9,60.4 < 30 |only if walking
talk Dawn-Seeker Krisek##95424
turnin Unknowable Power##39432 |goto Tanaan Jungle/0 58.0,59.4
step
_Run on_ the wide stone road |goto Tanaan Jungle/0 55.6,52.7 < 30 |only if walking
_Follow_ the dirt road |goto Tanaan Jungle/0 48.1,51.0 < 40 |only if walking
_Continue_ following the dirt road |goto Tanaan Jungle/0 43.7,47.5 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 42.8,41.3 < 20 |only if walking
talk Goi'orsh##90584
accept A Message of Terrible Import##38578 |goto Tanaan Jungle/0 44.2,41.5
step
talk Rocketmaster Malo##92808
fpath Malo's Lookout |goto Tanaan Jungle/0 43.4,42.2
step
talk Amber Kearnen##91968
Speak with the Scout in Northeast Tanaan Jungle |q Commander in the Field!##38446/3 |goto Tanaan Jungle/0 43.3,42.1
step
_Enter_ the building |goto Tanaan Jungle/0 58.1,60.0 < 20 |walk
talk Exarch Yrel##90309
turnin Commander in the Field!##38446 |goto Tanaan Jungle/0 58.5,60.4
step
Go to the Vault of the Earth |q A Message of Terrible Import##38578/1 |goto Tanaan Jungle/0 47.1,70.2
step
talk Lagar the Wise##90644
Tell him _"You are Lagar? I bring words from a shaman of your order. He says..."_
Speak with Lagar the Wise |q A Message of Terrible Import##38578/2 |goto Tanaan Jungle/0 47.3,70.5
step
talk Lagar the Wise##90644
turnin A Message of Terrible Import##38578 |goto Tanaan Jungle/0 47.3,70.5
step
Congratulations, you've completed the Tanaan Jungle Main Questline!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\The Loremaster\\Loremaster of Draenor",{
achieveid={9833},
sugGroup="ACHIEVEMENTS\\Draenor Pathfinder",
description="Complete the Draenor quest achievements.",
},[[
step
Use these Draenor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
condition achieved(9833) |next
Shadowmoon Valley |condition achieved(9833,1) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Shadowmoon Valley (90-92)"
Gorgrond |confirm |condition achieved(9833,2) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Gorgrond (92-94)"
Talador |condition achieved(9833,3) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)"
Spires of Arak |condition achieved(9833,4) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)"
Nagrand |condition achieved(9833,5) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)"
step
Congratulations, you earned the _Loremaster of Draenor_ Achievement!
]])
