local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
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
