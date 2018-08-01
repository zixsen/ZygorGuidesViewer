local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Tanaan Jungle (90-90)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Frostfire Ridge (90-92)",
image=ZGV.DIR.."\\Guides\\Images\\TanaanJungle",
startlevel=90,
},[[
step
accept The Dark Portal##34398 |goto Orgrimmar 49.9,77.3
step
talk Archmage Khadgar##78558
Tell him _"FOR AZEROTH!"_
Speak with Archmage Khadgar |q The Dark Portal##34398/1 |goto Blasted Lands 55.0,50.3
step
talk Archmage Khadgar##78558
turnin The Dark Portal##34398 |goto Assault on the Dark Portal 54.8,48.3
accept Azeroth's Last Stand##35933 |goto Assault on the Dark Portal 54.7,48.3
step
kill Iron Horde Grunt##78883+, Shadowmoon Ritualist##81711+
collect Iron Horde Missive##113579 |q Azeroth's Last Stand##35933/1 |goto 52.50,48.14
step
Click the _Quest Complete_ Box:
turnin Azeroth's Last Stand##35933
accept Onslaught's End##34392
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
talk Archmage Khadgar##78558 |tip He's at the top of the stone stairs.
turnin Onslaught's End##34392 |goto 54.72,48.27
accept The Portal's Power##34393 |goto 54.72,48.27
step
Enter the Soul Engine Beneath the Dark Portal |q The Portal's Power##34393/1 |goto 54.91,46.76
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
clicknpc Stasis Rune##70406
|tip It looks like a purple and yellow swirling symbol on the ground at the top of the stairs.
Destroy the Stasis Rune |q The Portal's Power##34393/5 |goto 55.94,48.23
step
_Leave_ the Soul Engine area |goto Assault on the Dark Portal 54.9,50.8 < 5 |walk
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
talk Ashka##81761
accept Vengeance for the Fallen##35241 |goto 62.1,53.1
step
talk Korag##78573
accept Bled Dry##34421 |goto 62.3,53.1
stickystart "bleedingholloworcs"
step
click Bleeding Hollow Cage##229353
Open the Eastern Cage |q Bled Dry##34421/1 |goto 65.70,54.17
step
use Lucifrium Bead##113191
|tip Use the Lucifrium Bead near huts around this area.
Burn #3# Bleeding Hollow Huts |q Blaze of Glory##34422/1 |count 3 |goto 66.61,55.67
step
_Run up_ the hills |goto Assault on the Dark Portal 64.8,55.2 < 10 |only if walking
click Bleeding Hollow Cage##229353
Open the Southern Cage |q Bled Dry##34421/2 |goto 61.01,62.74
step
use Lucifrium Bead##113191
|tip Use the Lucifrium Bead near huts around this area.
Burn #6# Bleeding Hollow Huts |q Blaze of Glory##34422/1 |count 6 |goto 61.01,62.74
step
use Lucifrium Bead##113191
|tip Use the Lucifrium Bead near huts around this area.
Burn #8# Bleeding Hollow Huts |q Blaze of Glory##34422/1 |goto Assault on the Dark Portal 63.8,50.2
step
label "bleedingholloworcs"
kill Bleeding Hollow Hatchet##78510+, Bleeding Hollow Savage##78507+
Kill #6# Bleeding Hollow Orcs |q Vengeance for the Fallen##35241/1 |goto 61.47,61.66
step
_Follow_ the road |goto Assault on the Dark Portal 65.0,59.5 < 20 |only if walking
talk Archmage Khadgar##78559
turnin Blaze of Glory##34422 |goto 71.5,62.3
turnin Bled Dry##34421 |goto 71.5,62.3
step
talk Thrall##78553
turnin Vengeance for the Fallen##35241 |goto 72.0,62.1
step
talk Archmage Khadgar##78559
accept Altar Altercation##34423 |goto 71.5,62.3
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
talk Archmage Khadgar##78560
turnin The Kargathar Proving Grounds##34425 |goto 73.0,38.1
accept A Potential Ally##34427 |goto 73.0,38.1
step
use Frostflurry Focus##110799
|tip Use the Frostflurry Focus next to the fire.
Free Farseer Drek'Thar |q A Potential Ally##34427/1 |goto 69.0,33.8
step
talk Farseer Drek'Thar##78996
turnin A Potential Ally##34427 |goto 73.1,38.9
|tip You may have to wait for him to run back to camp.
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
turnin Kill Your Hundred##34429 |goto Assault on the Dark Portal/1 81.3,50.2
step
talk Thrall##78553
accept The Shadowmoon Clan##34739 |goto Assault on the Dark Portal/1 81.5,44.8
step
talk Luuka##79661
accept Masters of Shadow##34737 |goto Assault on the Dark Portal/1 82.8,44.4
stickystart "shadowmoonclan"
step
_Enter_ the doorway |goto Assault on the Dark Portal/1 79.8,40.9 < 10 |walk
_Go around_ the corner |goto 76.0,45.2 < 10 |walk
_Go up_ the flight of stairs |goto Assault on the Dark Portal/1 63.0,51.5 < 10 |walk
Go up the _2nd flight of stairs_ |goto Assault on the Dark Portal/1 54.3,60.9 < 10 |walk
kill Ungra##79583 |q Masters of Shadow##34737/1 |goto Assault on the Dark Portal/1 43.7,77.8
step
_Enter_ the hallway |goto Assault on the Dark Portal/1 46.4,35.4 < 10 |walk
kill Taskmaster Gurran##79585 |q Masters of Shadow##34737/2 |goto 52.23,24.73
step
_Jump down_ the hole in the floor |goto Assault on the Dark Portal/1 54.4,22.9 < 5 |walk
Find Ankova the Fallen |q Masters of Shadow##34737/3 |goto 45.24,15.94
step
talk Yrel##78994
accept Yrel##34740 |goto 45.11,15.82
step
_Follow_ the path |goto 52.8,16.9 < 10 |walk
_Go around_ the corner |goto 60.3,30.7 < 10 |walk
Escort Yrel to Safety |q Yrel##34740/1 |goto Assault on the Dark Portal/1 57.9,38.7
step
label "shadowmoonclan"
kill Shadowmoon Voidaxe##79589+, Shadowmoon Ritualist##79590+
Kill #10# Shadowmoon Clan |q The Shadowmoon Clan##34739/1 |goto 59.19,48.59
step
_Go up_ the stairs |goto 54.9,40.7 < 10 |walk
talk Lady Liadrin##79675
turnin Masters of Shadow##34737 |goto 50.2,49.2
step
talk Yrel##78994
turnin Yrel##34740 |goto 50.8,48.9
step
talk Olin Umberhide##79315
turnin The Shadowmoon Clan##34739 |goto 51.5,47.5
step
talk Lady Liadrin##79675
accept Keli'dan the Breaker##34741 |goto 50.2,49.2
step
kill Keli'dan the Breaker##79702 |q Keli'dan the Breaker##34741/1 |goto Assault on the Dark Portal/1 34.9,50.4
step
talk Archmage Khadgar##78562
turnin Keli'dan the Breaker##34741 |goto Assault on the Dark Portal/0 49.5,14.4
step
talk Thrall##78553
accept Prepare for Battle##35005 |goto 50.1,13.3
step
click Iron Horde Weapon Rack##231816
|tip Weapon racks are large wooden racks with weapons on them.
click Iron Horde Weapon##231818
|tip These can be gathered around the area or looting from corpses of the fallen.
kill Blackrock Forgeworker##81367+, Blackrock Slaghauler##81357+
collect 30 Blackrock Weapon##112337 |q Prepare for Battle##35005/1 |goto 42.92,15.94
step
talk Thrall##78553
turnin Prepare for Battle##35005 |goto 50.1,13.3
step
talk Cordana Felsong##78430
accept The Battle of the Forge##34439 |goto 49.5,14.2
step
kill Ogron Warcrusher##80775+, Blackrock Grunt##80786+
Slay #15# Blackrock Orcs |q The Battle of the Forge##34439/1 |goto Assault on the Dark Portal 44.3,17.8
Slay #3# Ogron Warcrushers |q The Battle of the Forge##34439/2 |goto Assault on the Dark Portal 44.3,17.8
step
talk Farseer Drek'Thar##78996
turnin The Battle of the Forge##34439 |goto 43.0,26.4
accept Ga'nar of the Frostwolf##34442 |goto 43.0,26.4
step
talk Hansel Heavyhands##78569
accept The Gunpowder Plot##34987 |goto 44.1,29.6
step
talk Thaelin Darkanvil##78568
accept The Shadow of the Worldbreaker##34958 |goto 44.1,29.7
step
kill Blackrock Laborer##81063, Blackrock Machinist##80468
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
Depress the Makeshift Plunger |q The Gunpowder Plot##34987/2 |goto 44.1,29.6
step
talk Hansel Heavyhands##78569
turnin The Gunpowder Plot##34987 |goto 44.1,29.7
step
talk Thaelin Darkanvil##78568
turnin The Shadow of the Worldbreaker##34958 |goto 44.1,29.6
step
talk Ga'nar##79917
turnin Ga'nar of the Frostwolf##34442 |goto 41.9,41.7
accept Polishing the Iron Throne##34925 |goto 41.9,41.7
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
_Follow_ the path up | goto 38.4,37.4 < 20 |only if walking
kill Gogluk##86039 |q 35747/2 |goto 37.8,48.5
step
_Go up_ the large chain |goto Assault on the Dark Portal 37.9,47.4 < 10 |only if walking
Climb the rear chains of the Iron Worldbreaker |q Taking a Trip to the Top of the Tank##35747/3 |goto 40.04,48.25
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
Press the Main Cannon Trigger |q 34445/3 |goto 40.3,48.3
step
talk Thaelin Darkanvil##80521
turnin A Taste of Iron##34445 |goto 40.1,48.4
accept The Home Stretch##34446 |goto 40.1,48.4
step
_Go down_ the chain |goto 37.3,48.4 < 30 |only if walking
_Follow_ the path towards the docks |goto Assault on the Dark Portal 39.5,55.1 < 20 |only if walking
Get to the docks |q The Home Stretch##34446/1 |goto 44.4,80.5
step
talk Archmage Khadgar##78563
turnin The Home Stretch##34446 |goto 44.4,80.7
accept The Home of the Frostwolves##33868 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Frostfire Ridge (90-92)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Frostfire Ridge (90-92)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Gorgrond (92-94)",
image=ZGV.DIR.."\\Guides\\Images\\FrostfireRidge",
startlevel=90.5,
},[[
step
Be sure to save up at least _200 Garrison Resources_ as you progress through the zone
|confirm |future |q 36567
step
talk Farseer Drek'Thar##76411
turnin The Home of the Frostwolves##33868 |goto Frostfire Ridge 40.8,67.1
accept A Song of Frost and Fire##33815 |goto 40.8,67.1
step
_Run up_ the path |goto Frostfire Ridge 41.6,66.8 < 20 |only if walking
Get Introduced to Durotan |q A Song of Frost and Fire##33815/1 |goto 41.8,69.7
step
talk Durotan##78272
turnin A Song of Frost and Fire##33815 |goto 41.8,69.7
accept Of Wolves and Warriors##34402 |goto 41.8,69.7
step
_Follow Durotan_ up the path |goto 42.9,69.0 < 20 |only if walking
_Continue_ along the path _through_ the stone doorway |goto Frostfire Ridge 44.7,68.9 < 20 |only if walking
talk Thrall##70859
turnin Of Wolves and Warriors##34402 |goto 48.7,65.3
accept For the Horde!##34364 |goto 48.7,65.3
step
clicknpc Horde Banner##120955
|tip It looks like a large wooden T-shape banner illuminated in a yellowish tone with a Horde logo in the center.
Plant the Horde Banner |q For the Horde!##34364/1 |goto 48.7,64.9
step
talk Gazlowe##78466
turnin For the Horde!##34364 |goto Frostfire Ridge 48.7,64.9
accept Back to Work##34375 |goto Frostfire Ridge 48.7,64.9
accept A Gronnling Problem##34592 |goto Frostfire Ridge 48.7,64.9
stickystart "frostfiregronnlings"
step
click Tree Marking##230527
|tip They look like wooden poles with white flags on them planted in the ground around this area.
Mark #6# Trees for Peons |q Back to Work##34375/1 |goto Frostfire Ridge 48.3,65.8
step
label "frostfiregronnlings"
kill 8 Frostfire Gronnling##79529 |q A Gronnling Problem##34592/1 |goto Frostfire Ridge 48.3,65.8
step
talk Gazlowe##78466
turnin Back to Work##34375 |goto 48.7,64.9
turnin A Gronnling Problem##34592 |goto 48.7,64.9
accept The Den of Skog##34765 |goto 48.8,64.9
step
_Follow_ the path towards the cave |goto 48.8,66.8 < 20 |only if walking
kill Skog##79903 |q The Den of Skog##34765/1 |goto 48.5,70.1
step
talk Gazlowe##78466
turnin The Den of Skog##34765 |goto 48.8,64.9
accept Establish Your Garrison##34378 |goto 48.8,64.9
step
Use the Master Surveyor to Watch your Garrison be Constructed |q Establish Your Garrison##34378/1 |goto 46.9,66.4
step
_Go through_ the doorway |goto Frostwall 44.0,48.7 < 10
talk Bron Skyhorn##79407
fpath Frostwall Garrison |goto Frostwall/0 45.8,50.9
step
talk Gazlowe##78466
turnin Establish Your Garrison##34378 |goto Frostwall/0 52.4,53.2
accept What We Got##34824 |goto Frostwall/0 52.4,53.2
accept What We Need##34822 |goto Frostwall/0 52.4,53.2
step
talk Rokhan##78487
accept The Ogron Live?##34823 |goto Frostwall 51.3,51.4
step
click Garrison Cache##237191
|tip It looks like a wooden crate bearing a Horde logo sitting next to a small pile of logs.
Investigate your Garrison Cache |q What We Got##34824/2 |goto Frostwall 54.8,52.3
step
_Go through_ the doorway |goto Frostwall 51.7,32.0 < 10
talk Senior Peon II##86775
Tell him _"Gazlowe needs you."_
Speak with Senior Peon II |q What We Got##34824/3 |goto Frostwall 49.4,16.4
step
_Follow_ the path |goto Frostwall 41.6,31.4 < 20 |only if walking
talk Skaggit##80225
Tell him _"Get the peons back to work."_
Instruct Skaggit to release the peons |q What We Got##34824/1 |goto Frostwall 41.1,50.9
step
_Go through_ the doorway |goto Frostwall 44.0,48.7 < 10
talk Gazlowe##78466
turnin What We Got##34824 |goto Frostwall 52.4,53.4
step
_Go through_ the doorway |goto Frostwall 51.7,32.0 < 10
_Follow_ the path down |goto Frostfire Ridge 49.2,59.6 < 20
kill Pack Boar##80174+
click Drudgeboat Salvage##230880
|tip The wooden boxes scattered throughout the area.
collect 10 Drudgeboat Salvage##111907 |q What We Need##34822/1 |goto Frostfire Ridge 42.7,62.2
step
_Enter_ the cave |goto Frostfire Ridge 40.2,60.1 < 20 |walk
_Go down_ the path |goto Frostfire Ridge 40.4,58.8 < 10 |walk |indoors Raider's Hideout
kill Groog##80167 |q The Ogron Live?##34823/1 |goto 41.9,59.0 |indoors Raider's Hideout
step
talk Rokhan##78487
turnin The Ogron Live?##34823 |goto Frostwall 51.3,51.3
step
talk Gazlowe##78466
turnin What We Need##34822 |goto Frostwall 52.5,53.3
accept Build Your Barracks##34461 |goto Frostwall 52.5,53.3
step
click Garrison Blueprint: Barracks##231012
|tip It looks like a big white unrolled scroll sitting on a table.
Find Gazlowe's Missing Blueprints |q Build Your Barracks##34461/1 |goto Frostwall 59.8,50.0
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Garrison Blueprints: Barracks 1 |q Build Your Barracks##34461/2
step
clicknpc Architect Table##86017
|tip It looks like a wooden table with a slanted top, with blueprints laying on it.
Select the _Large_ tab at the top
Drag _Barracks_ to the _Large Plot_
Use the Architect's Table to Begin Constructing Your Barracks |q Build Your Barracks##34461/3 |goto Frostwall 52.2,53.3
step
Follow Gazlowe to the Construction Site |q Build Your Barracks##34461/4 |goto 57.8,48.0
step
click Finalize Garrison Plot##233250
|tip The floating scroll in the pillar of light.
Finalize your Plot |q Build Your Barracks##34461/5 |goto Frostwall 58.2,48.4
step
talk Gazlowe##78466
turnin Build Your Barracks##34461 |goto Frostwall 57.4,48.4
accept We Need An Army##34861 |goto Frostwall 57.4,48.4
step
talk Warmaster Zog##79740
|tip He's inside the building.
turnin We Need An Army##34861 |goto Frostwall 53.9,55.0
accept Winds of Change##34462 |goto Frostwall 53.9,55.0
step
_Go through_ the gate |goto Frostwall 51.8,31.4 < 20
_Follow_ the path |goto Frostfire Ridge 53.2,64.1 < 20 |only if walking
click Icevine##231100
|tip White bushes with a few leaves. They have a sparkle around them.
accept The Land Provides##34960 |goto Frostfire Ridge/0 54.2,67.5
step
click Icevine##231100
|tip White bushes with a few leaves. They have a sparkle around them.
collect 30 Frozen Plant Matter##112266 |q The Land Provides##34960/1 |goto Frostfire Ridge/0 54.5,70.6
step
_Follow_ the path |goto Frostfire Ridge 54.1,64.8 < 20 |only if walking
_Run up_ the path |goto Frostfire Ridge 56.1,62.4 < 10 |only if walking
_Enter_ the cave |goto Frostfire Ridge 56.6,62.5 < 10 |walk
clicknpc Olin Umberhide##80577
Rescue Olin Umberhide |q Winds of Change##34462/1 |goto Frostfire Ridge 57.3,62.9
step
_Leave_ the cave |goto Frostfire Ridge 56.7,62.6 < 10 |walk
_Go up_ the hill |goto Frostfire Ridge 53.2,63.4 < 20 |only if walking
_Follow_ the ramp up |goto 49.9,60.5 < 20 |only if walking
_Enter_ the Garrison Gate |goto Frostwall 51.7,32.3 < 20 |only if walking
talk Warmaster Zog##79740
turnin Winds of Change##34462 |goto Frostwall 53.9,54.9
accept Mission Probable##34775 |goto Frostwall 53.9,54.9
step
clicknpc Command Table##80432
|tip It looks like a round table with a map laying on it, and a dagger stabbed through the map into the table.
Click the _Gronnlings Abound_ mission
Assign _Olin Umberhide_ to the mission and start it
Use the Command Table to Send Olin Umberhide on a Mission |q Mission Probable##34775/1 |goto Frostwall 53.7,54.4
step
talk Warmaster Zog##79740
turnin Mission Probable##34775 |goto 53.9,54.9
step
talk Gazlowe##78466
turnin The Land Provides##34960 |goto Frostwall 52.4,53.4
step
talk Farseer Drek'Thar##76411
accept Den of Wolves##34379 |goto Frostwall 49.7,49.7
step
clicknpc Frostwolf Rylak##78320 |goto Frostwall 46.9,49.8 < 5
|tip It looks like a winged creature with 2 heads.
Ride the Frostwolf Rylak to Wor'gol |q Den of Wolves##34379/1
step
talk Pul Windcarver##76782
fpath Wor'gol |goto Frostfire Ridge 21.6,56.1
step
talk Durotan##70860
turnin Den of Wolves##34379 |goto Frostfire Ridge 20.7,58.0
accept Rally the Frostwolves##34380 |goto Frostfire Ridge 20.7,58.0
step
talk Farseer Drek'Thar##80456
|tip You may have to wait for him to run here.
accept Honor Has Its Rewards##33816 |goto Frostfire Ridge 21.0,57.9
step
_Follow_ the path |goto Frostfire Ridge 20.5,56.9 < 25 |only if walking
_Continue following_ the path |goto Frostfire Ridge 19.4,57.6 < 25 |only if walking
click Frostwolf Shamanstone##226468
|tip The Shamanstone is a huge jagged stone behind the campfire.
Select _Spirit of the wolf_
|tip The quest will complete without clicking the stone, but make sure you do this, since you'll get a passive buff that increases your run speed.
Receive the Blessing from the Shamanstone |q Honor Has Its Rewards##33816/1 |goto Frostfire Ridge 17.5,56.7
step
talk Farseer Drek'Thar##76616
turnin Honor Has Its Rewards##33816 |goto 17.68,56.70
step
_Go up_ the hill |goto Frostfire Ridge 19.7,60.2 < 20 |only if walking
talk Draka##78971
Ask Draka to Sound the War Horn |q Rally the Frostwolves##34380/1 |goto Frostfire Ridge 19.4,60.1
step
talk Durotan##76557
turnin Rally the Frostwolves##34380 |goto Frostfire Ridge 20.9,57.9
accept Gormaul Watch##33784 |goto Frostfire Ridge 20.9,57.9
step
_Run up_ the hill |goto Frostfire Ridge 21.6,58.0 < 20 |only if walking
_Go through_ the gate |goto 23.5,56.2 < 20 |only if walking
_Follow_ the hill up |goto Frostfire Ridge 23.9,52.3 < 20 |only if walking
_Follow_ the path |goto Frostfire Ridge 24.1,48.3 < 20 |only if walking
_Follow_ the narrow path up |goto 22.6,46.0 < 20  |only if walking
Meet Durotan at Gormaul Tower |q Gormaul Tower##33784/1 |goto Frostfire Ridge 21.3,44.1
step
kill Bladespire Mauler##73373+, Bladespire Boarbuster##75240+
|tip Start attacking ogres on your own, then follow Durotan to kill all the ogres around this area.
Overrun the Ruin |q Gormaul Tower##33784/3 |goto Frostfire Ridge/0 20.8,43.7
|tip Use your Garrison Call to Arms ability to complete and optional objective.
step
kill Bladespire Ogron##78173+
Defeat the Counter-Attack |q Gormaul Tower##33784/4 |goto Frostfire Ridge/0 19.5,44.4
step
kill Razortusk the Untamed##76208 |q Gormaul Tower##33784/5
|tip He is a giant boar that will appear once you've cleared the area of enemies.
step
talk Durotan##76240
turnin Gormaul Tower##33784 |goto Frostfire Ridge 19.7,44.8
accept These Colors Don't Run##33526 |goto Frostfire Ridge 19.7,44.8
step
_Enter_ the fort |goto Frostfire Ridge 20.9,41.8 < 20 |only if walking
_Follow_ the path |goto Frostfire Ridge/1 5.5,64.2 < 20 |only if walking
kill Bladespire Mauler##73373+, Bladespire Brute##73371+
use Frostwolf Banner##107279
|tip Use the Frostwolf Banner on their corpses.
Plant #8# Frostwolf Banners |q These Colors Don't Run##33526/1 |goto Frostfire Ridge/1 26.0,52.1
step
_Go through_ the doorway |goto Frostfire Ridge/1 31.9,48.1 < 20 |only if walking
talk Durotan##75177
turnin These Colors Don't Run##33526 |goto Frostfire Ridge/1 43.5,23.2
accept Deeds Left Undone##33546 |goto Frostfire Ridge/1 43.5,23.2
step
click Barrel of Frostwolf Oil##225681
|tip They look like wooden barrels on the ground around this area.
collect 5 Frostwolf Oil##107361 |q Deeds Left Undone##33546/1 |goto 40.6,53.4 < 20
step
_Enter_ the doorway |goto Frostfire Ridge/1 53.1,49.4 < 10 |walk
talk Gol'kosh the Axe##75167
Take the Oil to Gol'kosh |q Deeds Left Undone##33546/2 |goto Frostfire Ridge/1 56.0,43.8
step
_Go through_ the door |goto Frostfire Ridge/1 52.8,49.4 < 10 |walk
_Leave_ the building |goto Frostfire Ridge/1 38.0,44.1 < 20 |walk
_Follow_ the path |goto Frostfire Ridge/1 29.3,61.4 < 20 |only if walking
talk Durotan##75177
turnin Deeds Left Undone##33546 |goto Frostfire Ridge/1 34.3,73.0
accept Great Balls of Fire!##33408 |goto Frostfire Ridge/1 34.3,73.0
step
_Go up_ the ramp |goto Frostfire Ridge/1 34.2,76.6 < 15 |only if walking
|tip Avoid the lava boulders as they roll down the ramp.
Ascend the Ramp |q Great Balls of Fire!##33408/1 |goto Frostfire Ridge/1 50.8,88.0
step
_Enter_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10 |walk
talk Thrall##75186
turnin Great Balls of Fire!##33408 | goto Frostfire Ridge/2 70.6,78.6
accept The Butcher of Bladespire##33410 |goto Frostfire Ridge/2 70.7,78.6
step
_Leave_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10 |walk
kill Dorogg the Ruthless##74254 |q The Butcher of Bladespire##33410/1 |goto Frostfire Ridge/2 54.1,73.0
|tip He can drop an item for each crafting profession you have that will start a quest for that profession. Gathering and Secondary professions do not get a quest item.
|tip You will do the quest(s) for your item(s) later in the guide.
step
_Enter_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10 |walk
talk Thrall##75186
turnin The Butcher of Bladespire##33410 |goto Frostfire Ridge/2 70.6,78.6
accept Armed and Dangerous##33344 |goto Frostfire Ridge/2 70.5,78.6
accept To the Slaughter##33622 |goto Frostfire Ridge/2 70.5,78.6
stickystart "spireogres"
step
_Leave_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10 |walk
_Enter_ the building |goto Frostfire Ridge/2 63.5,65.0 < 20 |walk
_Go through_ the door |goto Frostfire Ridge/2 59.4,45.4 < 20 |walk
talk Frostwolf Slave##76543 |tip They look like brown orcs all around on the inside of this building.
Arm #10# Frostwolf Slaves |q Armed and Dangerous##33344/1 |goto Frostfire Ridge/2 51.7,39.0
step
label "spireogres"
kill Bladespire Mauler##73470+, Bladespire Brute##73469+, Bladespire Chef##73555+, Bladespire Boarbuster##75057+
Slay #10# Bladespire Ogres |q To the Slaughter##33622/1 |goto Frostfire Ridge/2 51.7,39.0
step
talk Durotan##75177
turnin To the Slaughter##33622 |goto Frostfire Ridge/2 50.3,32.7
turnin Armed and Dangerous##33344 |goto Frostfire Ridge/2 50.3,32.7
accept Last Steps##33527 |goto Frostfire Ridge/2 50.3,32.7
step
click Ladder##268797
|tip It looks like a wooden ladder laying on a huge metal chain.
Climb the chain |q Last Steps##33527/1 |goto 50.1,31.8
step
kill Gorr'thog##74105 |q Last Steps##33527/2 |goto Frostfire Ridge/3 51.3,69.0
step
talk Durotan##75188
turnin Last Steps##33527 |goto Frostfire Ridge/3 66.4,56.5
accept Moving In##33657 |goto Frostfire Ridge/3 66.4,56.5
step
clicknpc Frost Wolf Howler##78894
Ride the Frost Wolf |q Moving In##33657/1 |goto Frostfire Ridge/3 66.6,55.6
step
talk Durotan##70860
turnin Moving In##33657 |goto Frostfire Ridge/1 43.2,41.3
accept Save Wolf Home##33468 |goto Frostfire Ridge/1 43.2,41.3
step
talk Der'shway##76746
home Bladespire Fortress |goto Frostfire Ridge/1 43.0,44.6 |q The Eldest##32795 |future
step
_Leave_ the building |goto Frostfire Ridge/1 35.7,45.7 |walk
talk Snowrunner Rolga##81678
accept Mopping Up##33412 |goto 28.2,45.7
step
talk Roark the Airwolf##76781
fpath Bladespire Fortress |goto Frostfire Ridge/1 19.9,51.8
step
talk Guse##78222
accept Slavery and Strife##33119 |goto Frostfire Ridge/1 20.1,52.8
step
Open all of the profession windows below for all of the professions you have:
|tip You must do this in order for the following steps to work correctly.
Open your Alchemy window |cast Alchemy##2259 |only if skill("Alchemy")>=1
Open your Engineering window |cast Engineering##4036 |only if skill("Engineering")>=1
Open your Jewelcrafting window |cast Jewelcrafting##25229 |only if skill("Jewelcrafting")>=1
Open your Blacksmithing window |cast Blacksmithing##2018 |only if skill("Blacksmithing")>=1
Open your Enchanting window |cast Enchanting##7411 |only if skill("Enchanting")>=1
Open your Tailoring window |cast Tailoring##3908 |only if skill("Tailoring")>=1
Open your Leatherworking window |cast Leatherworking##2108 |only if skill("Leatherworking")>=1
Open your Inscription window |cast Inscription##45357 |only if skill("Inscription")>=1
Click to go to the next guide step |confirm |q 33898
only if not completedq(37669)
step
use Intricate Crimson Pendant##115287
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept The Intricate Pendant##36314
only if skill("Jewelcrafting") >= 1
step
talk "Appraiser" Sazsel Stickyfingers##84967
turnin The Intricate Pendant##36314 |goto Frostwall 57.2,53.8
accept Locating the Lapidarist##36352 |goto Frostwall 57.2,53.8
only if skill("Jewelcrafting") >= 1
step
_Enter_ the building |goto Frostfire Ridge 20.1,56.6 < 10 |walk
Locate the Pendant Owner |q Locating the Lapidarist##36352/1 |goto Frostfire Ridge 20.1,56.5
only if skill("Jewelcrafting") >= 1
step
talk Gem Grinder Orolak##85106
turnin Locating the Lapidarist##36352 |goto Frostfire Ridge 20.1,56.4
accept No Pressure, No Diamonds##36378 |goto Frostfire Ridge 20.1,56.4
only if skill("Jewelcrafting") >= 1
stickystart "roughlavadiamonds"
step
_Run down_ the ramp |goto Frostfire Ridge/1 20.9,44.0 < 20 |only if walking
_Continue following_ the ramp down |goto Frostfire Ridge/1 26.4,16.6 < 20 |only if walking
_Follow_ the path |goto Frostfire Ridge/1 16.8,33.5 < 20 |only if walking
_Go around_ the ridges into the lava |goto Frostfire Ridge/0 17.8,33.3 < 10 |only if walking
_Follow_ the lava path |goto Frostfire Ridge/0 17.7,32.4 < 10 |only if walking
kill Massive Lava Slime##85185 |q No Pressure, No Diamonds##36378/1 |goto Frostfire Ridge/0 20.5,32.6
|tip Kill Lava Slimes around this area. If you (not your pet, if you have one) get the killing blow, you will get a buff that will protect you from taking damage from the lava.
collect Marvelous Lava Diamond##115461 |q No Pressure, No Diamonds##36378/3 |goto Frostfire Ridge/0 20.5,32.6
only if skill("Jewelcrafting") >= 1
step
label "roughlavadiamonds"
kill Lava Slime##79630+
collect 3 Rough Lava Diamond##115445 |q No Pressure, No Diamonds##36378/2 |goto Frostfire Ridge/0 17.8,32.4
only if skill("Jewelcrafting") >= 1
step
_Enter_ the building |goto Frostfire Ridge 20.1,56.6 < 10 |walk
talk Gem Grinder Orolak##85106
turnin No Pressure, No Diamonds##36378 |goto Frostfire Ridge 20.1,56.4
accept Diamonds Are Forever##36380 |goto Frostfire Ridge 20.1,56.4
only if skill("Jewelcrafting") >= 1
step
Wait for Orolak to Assemble the Pendant |q Diamonds Are Forever##36380/1 |goto Frostfire Ridge 20.1,56.4
only if skill("Jewelcrafting") >= 1
step
talk Gem Grinder Orolak##85106
turnin Diamonds Are Forever##36380 |goto Frostfire Ridge 20.1,56.4
only if skill("Jewelcrafting") >= 1
step
use Burned-Out Hand Cannon##116438
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Heavy Arms##36589
only if skill("Engineering") >= 1
step
talk Blixthraz Blastcharge##85882
turnin Heavy Arms##36589 |goto Frostwall/0 60.1,38.7
accept "Spare" Parts##36594
only if skill("Engineering") >= 1
stickystart "siegecannon"
step
_Go through_ the doorway |goto Frostwall/0 51.8,31.8 < 20 |only if walking
_Go over_ the rocks |goto Frostwall/0 58.7,34.3 < 20 |only if walking
_Jump down_ here |goto Frostwall/0 77.9,50.9 < 20 |only if walking
_Run up_ the snow path |goto Frostfire Ridge/0 55.5,65.5 < 10 |only if walking
kill Iron Cannoneer##85822+
click Iron Horde Ammunition Crate##236012
|tip They look like wooden boxes filled with black balls on the ground around this area.
Collect #20# Black Iron Shells |q "Spare" Parts##36594/1 |goto Frostfire Ridge/0 57.4,71.6
only if skill("Engineering") >= 1
step
label "siegecannon"
use Blixthraz's Tools##116645
|tip Use Blixthraz's Tools next to Siege Cannons. They look like huge metal cannon machines around this area.
click Iron Cannon Scraps##236045
|tip They look like metal parts that appear on the ground when you blow up a Siege Cannon.
Collect #50# Siege Cannon Parts |q "Spare" Parts##36594/2 |goto Frostfire Ridge/0 57.4,71.6
only if skill("Engineering") >= 1
step
_Run down_ the snow path |goto Frostfire Ridge/0 56.0,66.7 < 10 |only if walking
_Follow_ the path up |goto Frostfire Ridge/0 53.5,64.3 < 20 |only if walking
_Follow_ the path |goto Frostfire Ridge/0 49.7,60.3 < 20 |only if walking
_Go through_ the doorway |goto Frostwall/0 51.8,31.8 < 20 |only if walking
talk Blixthraz Blastcharge##85882
turnin "Spare" Parts##36594 |goto Frostwall 60.0,38.9
accept Big Frostfire Gun##36627 |goto Frostwall 60.0,38.9
only if skill("Engineering") >= 1
step
_Go through_ the doorway |goto Frostwall/0 43.9,48.6 < 20 |only if walking
_Follow_ the path |goto Frostwall/0 41.3,54.0 < 20 |only if walking
_Run on_ the dirt path |goto Frostwall/0 62.7,89.1 < 20 |only if walking
_Jump across_ onto the flat rocks |goto Frostwall/0 76.1,88.2 < 20 |only if walking
|tip Make sure you are mounted. If you don't make it, there's a small path that you'll fall on that you can just run back up.
use Blixthraz's Frightening Grudgesolver##116759
|tip Use Blixthraz's Frightening Grudgesolver on Gentle Clefthoofs.
Subdue #5# Clefthoofs |q Big Frostfire Gun##36627/1 |goto Frostfire Ridge/0 52.4,72.4
only if skill("Engineering") >= 1
step
talk Blixthraz Blastcharge##85882
turnin Big Frostfire Gun##36627 |goto Frostwall 60.0,38.9
only if skill("Engineering") >= 1
step
use Mysterious Flask##112566
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept The Mysterious Flask##35058
only if skill("Alchemy") >= 1
step
talk Refugee Lo'nash##81166
turnin The Mysterious Flask##35058 |goto Frostwall 45.2,51.0
accept The Alchemist##35103 |goto Frostwall 45.2,51.0
only if skill("Alchemy") >= 1
step
_Follow_ the path around the chasm |goto Frostfire Ridge 37.1,50.9 < 20 |only if walking
talk Kadar##81209
turnin The Alchemist##35103 |goto Frostfire Ridge 38.0,47.4
accept The Apprentice##35104 |goto Frostfire Ridge 38.0,47.4
only if skill("Alchemy") >= 1
step
_Enter_ the building |goto Frostfire Ridge 37.9,47.6 < 10 |walk
click Rubble##227026
|tip It looks like a pile of wood with a body under it inside this small building.
Remove the Rubble |q The Apprentice##35104/1 |goto Frostfire Ridge 37.9,47.4
only if skill("Alchemy") >= 1
step
talk Ang'kra##81210
turnin The Apprentice##35104 |goto Frostfire Ridge 37.9,47.4
accept Avenge and Reclaim##35106 |goto Frostfire Ridge 37.9,47.4
only if skill("Alchemy") >= 1
step
_Leave_ the building |goto Frostfire Ridge 37.9,47.6 < 10 |walk
_Follow_ the trail of lava |goto Frostfire Ridge 40.5,43.3 < 20 |only if walking
kill Or'Nak##81243 |q Avenge and Reclaim##35106/1 |goto Frostfire Ridge 41.6,40.4
collect Book of Alchemical Secrets##112655 |q Avenge and Reclaim##35106/2 |goto Frostfire Ridge 41.6,40.4
only if skill("Alchemy") >= 1
step
_Enter_ the building |goto Frostfire Ridge 37.9,47.6 < 10 |walk
talk Ang'kra##81210
turnin Avenge and Reclaim##35106 |goto Frostfire Ridge 37.9,47.4
only if skill("Alchemy") >= 1
step
use Fractured Forge Hammer##114965
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept The Fractured Hammer##36205
only if skill("Blacksmithing") >= 1
step
talk Axe-Shaper Kugra##78989
turnin The Fractured Hammer##36205 |goto Frostfire Ridge/0 41.2,52.9
accept Waruk the Frostforger##36207 |goto Frostfire Ridge/0 41.2,52.9
only if skill("Blacksmithing") >= 1
step
_Follow_ the path back |goto Frostfire Ridge/0 42.2,48.9 < 20 |only if walking
_Continue following_ the path |goto Frostfire Ridge 44.5,47.5 < 20 |only if walking
Locate Waruk's Gravesite |q Waruk the Frostforger##36207/1 |goto Frostfire Ridge/0 46.1,48.6
only if skill("Blacksmithing") >= 1
step
talk Waruk the Frostforger##84494
turnin Waruk the Frostforger##36207 |goto Frostfire Ridge/0 46.1,48.8
accept The Restless Spirit##36230 |goto Frostfire Ridge/0 46.1,48.8
only if skill("Blacksmithing") >= 1
step
_Enter_ the huge bone-covered area |goto Frostfire Ridge 58.8,26.6 < 20 |only if walking
kill Kurgthuk the Merciless##84506 |q The Restless Spirit##36230/1 |goto Frostfire Ridge/0 60.5,27.2
|tip He walks around this area, so you may need to search for him. Be careful, this area can be a little tough at this level.
Acquire Kurgthuk's Task Masters |q The Restless Spirit##36230/2 |goto Frostfire Ridge/0 60.5,27.2
only if skill("Blacksmithing") >= 1
step
kill Thunderlord Windreader##78765+, Thunderlord Grappler##72270+, Thunderlord Crag-Leaper##72240+
use Waruk's Fractured Hammer##114969
|tip Use Waruk's Fractured Hammer near their corpses.
Acquire #50# Salvaged Draenic Metal |q The Restless Spirit##36230/3
only if skill("Blacksmithing") >= 1
step
_Follow_ the path |goto Frostfire Ridge 54.9,40.4 < 20 |only if walking
_Run around_ the canyon |goto Frostfire Ridge 49.3,47.6 < 20 |only if walking
talk Waruk the Frostforger##84494
turnin The Restless Spirit##36230 |goto Frostfire Ridge/0 46.1,48.7
accept Mending A Broken Heart##36238 |goto Frostfire Ridge/0 46.1,48.7
only if skill("Blacksmithing") >= 1
step
_Follow_ the path back |goto Frostfire Ridge/0 43.7,48.1 < 20 |only if walking
_Continue following_ the path |goto Frostfire Ridge 41.3,50.4 < 20 |only if walking
talk Axe-Shaper Kugra##78989
turnin Mending A Broken Heart##36238 |goto 41.2,52.9
only if skill("Blacksmithing") >= 1
step
use Illegible Sootstained Notes##115593
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Unintelligible Intelligence##36435
only if skill("Inscription") >= 1
step
_Enter_ the building |goto Frostfire Ridge 21.0,56.8 < 10 |walk
Search Wor'gol For Help Translating the Note |q Unintelligible Intelligence##36435/1 |goto Frostfire Ridge 20.9,56.3
only if skill("Inscription") >= 1
step
talk Raleigh Puule##85439
turnin Unintelligible Intelligence##36435 |goto Frostfire Ridge 21.1,56.1
accept Bypassing Security##36457 |goto Frostfire Ridge 21.1,56.1
only if skill("Inscription") >= 1
step
_Run up_ the snowy path |goto Frostfire Ridge 21.5,57.0 < 10 |only if walking
_Follow_ the path to the left |goto Frostfire Ridge 22.0,56.9 < 10 |only if walking
talk Pul Windcarver##76782
Fly to _Frostwall Garrison, Frostfire Ridge_ |goto Frostfire Ridge 21.6,56.1 < 5 |only if walking
Arrive at your Garrison |goto Frostwall 45.7,50.3 < 20 |q Bypassing Security##36457 |future
|tip DO NOT HEARTH TO YOUR GARRISON. You will need to use your hearthstone soon.
only if skill("Inscription") >= 1
step
_Go through_ the doorway |goto Frostwall/0 51.8,31.8 < 20 |only if walking
_Go over_ the rocks |goto Frostwall/0 58.7,34.3 < 20 |only if walking
_Jump down _ here |goto Frostwall/0 77.9,50.9 < 20 |only if walking
_Run up_ the snow path |goto Frostfire Ridge/0 55.5,65.5 < 10 |only if walking
_Follow_ the path |goto Frostfire Ridge 57.4,71.4 < 10 |only if walking
_Continue following_ the path |goto Frostfire Ridge 58.6,73.7 < 20 |only if walking
_Go through_ the doorway |goto Frostfire Ridge 60.2,73.5 < 10 |only if walking
use Prestige Card: The Turn##116063
|tip Use your Prestige Card: The Turn in the Grom'gar area, you will become disguised.
Locate the Master Scribe |q Bypassing Security##36457/1 |goto Frostfire Ridge 61.3,71.2
only if skill("Inscription") >= 1
step
talk Nicholaus Page##85440
|tip He's in a cage.
turnin Bypassing Security##36457 |goto Frostfire Ridge 61.3,71.2
accept Stealing the Declaration##36475 |goto Frostfire Ridge 61.3,71.2
only if skill("Inscription") >= 1
step
_Follow_ the path |goto Frostfire Ridge 62.6,73.4 < 20 |only if walking
click Uratok's Strongbox##235638
|tip It looks like a wooden and metal chest sitting on a table in this round-ish hut building.
Collect the Misappropriate Draenic Texts |q Stealing the Declaration##36475/1 |goto Frostfire Ridge 63.1,75.8
Collect the Blackened Iron Key |q Stealing the Declaration##36475/2 |goto Frostfire Ridge 63.1,75.8
only if skill("Inscription") >= 1
step
use Prestige Card: The Turn##116063
|tip Use your Prestige Card: The Turn in the Grom'gar area, you will become disguised.
_Follow_ the path |goto Frostfire Ridge 62.6,73.4 < 20
talk Nicholaus Page##85440
|tip He's in a cage.
turnin Stealing the Declaration##36475 |goto Frostfire Ridge 61.3,71.2
only if skill("Inscription") >= 1
step
use Tattered Frostwolf Shroud##116173
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept A Warrior's Shroud##36505
only if skill("Leatherworking") >= 1
step
_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10 |only if walking
_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10 |only if walking
_Run behind_ the building |goto Frostfire Ridge 20.5,61.0 < 10 |only if walking
talk Gaoda Hidecleaver##85751
turnin A Warrior's Shroud##36505 |goto Frostfire Ridge 20.7,60.2
accept Cut 'Em Out!##36516 |goto Frostfire Ridge 20.7,60.2
only if skill("Leatherworking") >= 1
step
_Run up_ the path |goto Frostfire Ridge 21.7,58.0 < 20 |only if walking
_Go through_ the gate |goto Frostfire Ridge 23.3,56.3 < 20 |only if walking
_Cross_ the snowy field |goto Frostfire Ridge 23.9,50.7 < 20 |only if walking
_Jump down_ here |goto Frostfire Ridge 24.3,48.2 < 10 |only if walking
kill Wooly Clefthoof##72162+
use Bloodstained Skinning Knife##116246
|tip Use your Bloodstained Skinning Knife on their corpses.
collect 4 Pristine Clefthoof Hide##116195 |q Cut 'Em Out!##36516/1 |goto Frostfire Ridge 25.8,43.4
only if skill("Leatherworking") >= 1
step
click Sootweed##235888
|tip They look like scraggly plants on the ground around this area.
collect 15 Sootweed Pitch##116351 |q Cut 'Em Out!##36516/2 |goto Frostfire Ridge 26.0,41.9
only if skill("Leatherworking") >= 1
step
_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10 |only if walking
_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10 |only if walking
_Run behind_ the building |goto Frostfire Ridge 20.5,61.0 < 10 |only if walking
talk Gaoda Hidecleaver##85751
turnin Cut 'Em Out!##36516 |goto Frostfire Ridge 20.7,60.2
only if skill("Leatherworking") >= 1
step
use Frostwolf Tailoring Kit##114973
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Trega's Tailoring Kit##36301
only if skill("Tailoring") >= 1
step
_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10 |only if walking
_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10 |only if walking
talk Trega##84689
|tip She's inside the small round building.
turnin Trega's Tailoring Kit##36301 |goto Frostfire Ridge 20.5,60.6
accept From Their Cold Dead Hands##36417 |goto Frostfire Ridge 20.5,60.6
only if skill("Tailoring") >= 1
step
_Run down_ the path |goto Frostfire Ridge 19.8,60.4 < 20 |only if walking
_Jump down_ and _follow_ the path |goto Frostfire Ridge 19.9,59.5 < 20 |only if walking
_Run up_ the path |goto Frostfire Ridge 21.7,58.0 < 20 |only if walking
_Go through_ the gate |goto Frostfire Ridge 23.3,56.3 < 20 |only if walking
_Cross_ the snowy field |goto Frostfire Ridge 23.9,50.7 < 20 |only if walking
_Jump down_ here |goto Frostfire Ridge 24.3,48.2 < 10 |only if walking
kill Sootstained Enforcer##72833+, Sootstained Slaver##72752+, Sootstained Mauler##77767+, Bladespire Chef##73555+
collect 10 Damaged Hexweave##115590 |q From Their Cold Dead Hands##36417/1 |goto Frostfire Ridge 26.0,41.8
only if skill("Tailoring") >= 1
step
_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10 |only if walking
_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10 |only if walking
talk Trega##84689
|tip She's inside the small round building.
turnin From Their Cold Dead Hands##36417 |goto Frostfire Ridge 20.5,60.6
accept Dyed in the Fur##36419 |goto Frostfire Ridge 20.5,60.6
only if skill("Tailoring") >= 1
step
click Flytrap Ichor##236445
|tip It looks like a bucket with a green substance in it sitting on the ground inside this small round building.
Create the Hexweave Swatch |q Dyed in the Fur##36419/1 |goto Frostfire Ridge 20.5,60.7
talk Trega##84689 |tip She's inside the small round building.
turnin Dyed in the Fur##36419 |goto Frostfire Ridge 20.5,60.6
only if skill("Tailoring") >= 1
step
use Enchanted Highmaul Bracer##115008
|tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Enchanted Highmaul Bracer##36255
only if skill("Enchanting") >= 1
step
talk Yu'rina the Mystic##83482
turnin Enchanted Highmaul Bracer##36255 |goto Frostwall 47.2,38.2
accept The Arakkoan Enchanter##36256 |goto Frostwall 47.2,38.2
only if skill("Enchanting") >= 1
step
_Go through_ the doorway |goto Frostwall 51.7,32.2 < 10 |only if walking
_Follow_ the path |goto Frostfire Ridge 50.0,56.7 < 20 |only if walking
talk Arcanist Delath##84739
turnin The Arakkoan Enchanter##36256 |goto Frostfire Ridge 54.4,51.7
accept Failed Apprentice##36257 |goto Frostfire Ridge 54.4,51.7
only if skill("Enchanting") >= 1
step
talk Torag Stonefury##84834
Free Torag Stonefury |q Failed Apprentice##36257/1 |goto Frostfire Ridge 55.9,48.6
only if skill("Enchanting") >= 1
step
talk Torag Stonefury##84747
turnin Failed Apprentice##36257 |goto Frostfire Ridge 55.9,48.6
accept Oru'kai's Scepter##36260 |goto Frostfire Ridge 55.9,48.6
only if skill("Enchanting") >= 1
step
use Oru'kai's Ember Ring##115011
collect Oru'kai's Scepter##114990 |q Oru'kai's Scepter##36260/1 |goto Frostfire Ridge 55.6,49.2
only if skill("Enchanting") >= 1
step
talk Arcanist Delath##84739
turnin Oru'kai's Scepter##36260 |goto Frostfire Ridge 54.4,51.7
only if skill("Enchanting") >= 1
step
talk Gazlowe##78466
accept Building for Professions##37669 |goto Frostwall/0 52.5,53.4
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
Click the _Small tab_ and _drag the profession building of your choice_ to the highlighted small empty plot
Build a Profession Building |q Building for Professions##37669/1 |goto Frostwall 52.3,53.6
only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
talk Gazlowe##78466
turnin Building for Professions##37669 |goto Frostwall/0 52.5,53.4
only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
talk Gol'kosh the Axe##76662
accept Slaying Slavers##33898 |goto Frostfire Ridge 24.1,39.3
stickystart "sootstainedogre"
step
click Ball and Chain##207079
Free #5# Frostwolf Slaves |q Slavery and Strife##33119/1 |goto 26.8,41.3
step
label "sootstainedogre"
kill Sootstained Mauler##73490, Sootstained Enforcer##72833, Sootstained Slaver##72752,
Slay #12# Sootstained Ogres |q Slaying Slavers##33898/1 |goto 25.4,39.8
step
_Go up_ the hill |goto Frostfire Ridge 28.8,42.2 < 20 |only if walking
Find Mulverick |q Slavery and Strife##33119/2 |goto 30.8,41.5
step
talk Mulverick##72890
turnin Slavery and Strife##33119 |goto Frostfire Ridge 30.8,41.5
accept Mulverick's Plight##33483 |goto Frostfire Ridge 30.8,41.5
step
_Enter_ the tunnel |goto Frostfire Ridge 29.7,41.6 < 20 |walk
kill Sootstained Taskmaster##76706
collect Mulverick's Axe##107066 |q Mulverick's Plight##33483/1 |goto Frostfire Ridge/4 58.4,56.1
step
_Go down_ the path |goto Frostfire Ridge/4 49.1,58.0 < 20 |walk
_Continue_ through the path |goto 37.2,30.3 < 20 |walk
kill Slavemaster Turgall##72873
collect Turgall's Key##107075 |q Mulverick's Plight##33483/2 |goto Frostfire Ridge/4 49.8,34.2
step
_Jump down_ the ledge |goto Frostfire Ridge/4 53.4,38.7 < 20 |walk
_Follow_ the path out of the cave |goto Frostfire Ridge/4 66.0,75.5 < 20 |walk
Unlock Mulverick's Cage |q Mulverick's Plight##33483/3 |goto Frostfire Ridge 30.8,41.5
step
talk Mulverick##79047
turnin Mulverick's Plight##33483 |goto Frostfire Ridge 30.75,41.46
accept The Slavemaster's Demise##33484 |goto Frostfire Ridge 30.75,41.46
accept Mulverick's Offer of Service##34732 |goto Frostfire Ridge 30.75,41.46
step
_Follow_ the path |goto Frostfire Ridge 29.2,42.3 |only if walking
_Go down_ the path |goto 27.0,41.6 |only if walking
talk Gol'kosh the Axe##76662
turnin Slaying Slavers##33898 |goto 24.1,39.3
step
_Follow_ the road |goto 23.5,36.6 < 20 |only if walking
_Continue_ along the path |goto 23.3,31.9 < 20 |only if walking
_Enter_ the building |goto 24.5,29.2 < 20 |walk
talk Igrim the Resolute##74635
turnin Mopping Up##33412 |goto 24.5,28.4
accept The Warlord's Guard##33450 |goto 24.5,28.4
accept The Cure##33454 |goto 24.5,28.4
step
_Leave_ the building |goto 24.5,29.2 < 20 |walk
kill Bladespire Geomancer##74697
collect Winterwasp Antidote##106958 |n
clicknpc Frostwolf Gladiator##74672
use Winterwasp Antidote##106958
Cure #5# Frostwolf Gladiators |q The Cure##33454/1 |goto 26.3,26.8
|tip They are found kneeling in pain all over this area.
step
kill Thunk##74704
collect Head of Thunk##106943 |q The Warlord's Guard##33450/1 |goto 26.9,25.1
step
kill Splorg##74706
collect Head of Splorg##106942 |q The Warlord's Guard##33450/3 |goto 28.6,26.1
step
_Enter_ the cave |goto 27.9,24.7 < 20 |walk |indoors Circle of Blood
kill Gullok##74707
collect Head of Gullok##106944 |q The Warlord's Guard##33450/2 |goto 28.0,23.6 |indoors Circle of Blood
step
_Enter_ the building |goto Frostfire Ridge 24.5,29.5 < 15 |walk
talk Igrim the Resolute##74635
turnin The Warlord's Guard##33450 |goto 24.4,29.0
turnin The Cure##33454 |goto 24.4,29.0
accept The Fall of the Warlord##33467 |goto 24.4,29.0
step
_Leave_ the building |goto Frostfire Ridge 24.5,29.5 < 15 |walk
_Follow_ the path around |goto Frostfire Ridge 25.2,29.1 < 15 |only if walking
_Go down_ the stairs |goto Frostfire Ridge 24.3,27.2 |only if walking
click Ogre Spike##227291 |goto Frostfire Ridge/0 23.3,26.1 < 5
|tip The middle of three wooden vertical spikes.
kill Warlord Bult##73763 |q The Fall of the Warlord##33467/1 |goto 23.0,26.6
step
_Go up_ the ramp |goto Frostfire Ridge/0 24.0,27.1 < 20 |only if walking
_Follow_ the path up |goto Frostfire Ridge/1 20.9,31.2 < 20 |only if walking
talk Snowrunner Rolga##81678
turnin The Fall of the Warlord##33467 |goto Frostfire Ridge/1 28.4,45.6
step
talk Guse##78222
turnin The Slavemaster's Demise##33484 |goto Frostfire Ridge/1 20.1,52.8
step
_Cross_ the bridge |goto Frostfire Ridge/1 0.2,69.7 |only if walking
_Go down_ the icy ramp |goto Frostfire Ridge/0 21.3,44.4 < 20 |only if walking
accept Bonus Objective: Forbidden Glacier##34505 |goto Frostfire Ridge/0 26.1,52.3
clicknpc Frost Wolf Howler##78894
clicknpc Frostwolf Grunt##78870
Thaw #12# Frostwolves |q Bonus Objective: Forbidden Glacier##34505/2 |goto Frostfire Ridge 26.1,51.5
kill 10 Malevolent Breath##78791 |q Bonus Objective: Forbidden Glacier##34505/1 |goto Frostfire Ridge 26.1,51.5
step
Go to Wor'gol |q Save Wolf Home##33468/1 |goto Frostfire Ridge 21.6,56.1 < 20
stickystart "thunderlords"
step
kill Giantslayer Zhakta##74702 |q Save Wolf Home##33468/4 |goto Frostfire Ridge 22.2,57.3
|tip She will appear along this road.
step
_Follow_ the path back |goto Frostfire Ridge 20.4,59.0 < 15 |only if walking
kill Gronnstalker Korhol##74700 |q Save Wolf Home##33468/2 |goto 19.1,58.2
step
stickystart "free"
talk Wor'gol Defender##74507
accept Free Our Brothers and Sisters##33807 |goto Frostfire Ridge/0 19.1,58.3
step
_Go up_ the hill |goto Frostfire Ridge 19.7,60.0 < 15 |only if walking
kill Beastmaster Trokar##74708 |q Save Wolf Home##33468/3 |goto 19.8,61.4
step
label "thunderlords"
kill Thunderlord Ranger##76289+, Thunderlord Invader##74329+, Thunderlord Handler##74514+, Thunderlord Seer##78073+
Slay #15# Thunderlords |q Save Wolf Home##33468/5 |goto Frostfire Ridge 20.0,59.0
step
label "free"
clicknpc Wor'gol Villager##84781
clicknpc Frost Wolf##74544
Free #6# Villagers and Frostwolves |q Free Our Brothers and Sisters##33807/1 |goto Frostfire Ridge 20.0,59.0
step
talk Draka##74651
turnin Save Wolf Home##33468 |goto Frostfire Ridge 20.8,57.9
turnin Free Our Brothers and Sisters##33807 |goto Frostfire Ridge 20.8,57.9
accept The Farseer##33469 |goto Frostfire Ridge/0 20.8,57.9
step
_Go down_ the tunnel |goto Frostfire Ridge 18.3,56.0 < 20 |walk
kill Warleader Gargrak##74653 |q The Farseer##33469/1 |goto Frostfire Ridge/0 16.8,57.6
step
talk Farseer Drek'Thar##74272
turnin The Farseer##33469 |goto Frostfire Ridge 16.8,57.8
accept Pool of Visions##33470 |goto Frostfire Ridge 16.8,57.8
step
talk Farseer Drek'Thar##74272
Tell him _"I am ready for the ritual, farseer."_
Witness the Ritual of Vision |q Pool of Visions##33470/1 |goto Frostfire Ridge 16.8,57.8
step
talk Farseer Drek'Thar##74272
turnin Pool of Visions##33470 |goto Frostfire Ridge 16.8,57.8
accept Back to Bladespire Citadel##33473 |goto Frostfire Ridge 16.8,57.8
step
_Leave_ the cave |goto Frostfire Ridge/0 18.3,56.1 < 20 |walk
talk Pul Windcarver##76782
Tell him _"Pul, I need to quickly return to Bladespire Citadel."_
Fly Back to Bladespire Citadel |q Back to Bladespire Citadel##33473/1 |goto Frostfire Ridge 21.6,56.1
step
_Enter_ the building |goto Frostfire Ridge/1 32.9,46.9 < 20 |walk
talk Durotan##70860
turnin Back to Bladespire Citadel##33473 |goto Frostfire Ridge/1 43.1,41.3
accept Ga'nar's Vengeance##32783 |goto Frostfire Ridge/1 43.1,41.3
accept Securing the South##32989 |goto Frostfire Ridge/1 43.1,41.3
step
_Leave_ the building |goto Frostfire Ridge/1 35.5,45.6 < 20 |walk
_Go down_ the winding path |goto Frostfire Ridge/1 20.8,36.8 < 20 |only if walking
_Reach the bottom_ of Bladespire Citadel |goto Frostfire Ridge/1 15.6,32.6 < 10 |only if walking
_Continue_ along the road |goto Frostfire Ridge/0 25.7,29.5 < 20 |only if walking
talk Ga'nar##70909
turnin Ga'nar's Vengeance##32783 |goto 30.9,25.8
accept Let the Hunt Begin!##32791 |goto 30.9,25.8
step
talk Ga'nar##70878
Tell him _"I am ready!"_
Tell Ga'nar you are Ready |q Let the Hunt Begin!##32791/1 |goto 30.9,25.8
step
Watch the dialogue
Confront Grotan |q Let the Hunt Begin!##32791/2 |goto Frostfire Ridge/0 34.4,26.4
step
Kill the enemies that attack in waves
Wait for Kal'gor's Reinforcements to Arrive |q Let the Hunt Begin!##32791/3 |goto Frostfire Ridge/0 36.2,25.9
Wait for Ligra's Reinforcements to Arrive |q Let the Hunt Begin!##32791/4 |goto Frostfire Ridge/0 35.7,26.1
step
talk Ga'nar##74000
turnin Let the Hunt Begin!##32791 |goto Frostfire Ridge/0 36.0,25.8
accept Leave Nothing Behind!##32792 |goto Frostfire Ridge/0 36.0,25.8
step
talk Ligra the Unyielding##74222
accept They Rely on Numbers##32929 |goto Frostfire Ridge/0 35.9,25.7
stickystart "thunderorcs"
step
kill Kur'ak the Binder##71669 |q Leave Nothing Behind!##32792/2 |goto Frostfire Ridge/0 37.9,28.9
step
click Thunderlord Ballista##220568
|tip They are large four wheeled carts with spears loaded.
Destroy the Thunderlord Ballistae |q Leave Nothing Behind!##32792/1 |goto Frostfire Ridge/0 38.8,30.2
step
_Go up_ the hill |goto Frostfire Ridge/0 39.5,29.4 < 20 |only if walking
_Go through_ the passage |goto 41.8,32.2 < 20 |walk
click Thunderlord Supplies##220578
|tip The barrels and supplies are stacked against the wall.
Destroy the Thunderlord Supplies |q Leave Nothing Behind!##32792/3 |goto 42.3,34.3
step
label "thunderorcs"
kill Thunderlord Spearhand##71647+, Thunderlord Beastmaster##74205+, Kur'ak the Binder##71669+
Slay #15# Thunderlord Orcs |q They Rely on Numbers##32929/1 |goto Frostfire Ridge/0 39.1,29.2
step
_Go up_ the path |goto 42.3,30.4 |only if walking
_Continue_ up the hill |goto 43.8,31.3 |only if walking
talk Kal'gor the Honorable##74223
turnin They Rely on Numbers##32929 |goto 46.4,32.0
accept Articles of the Fallen##32804 |goto 46.4,32.0
step
talk Ga'nar##70910
turnin Leave Nothing Behind!##32792 |goto Frostfire Ridge/0 46.4,32.1
accept Wrath of Gronn##32794 |goto Frostfire Ridge/0 46.4,32.1
stickystart "release_gronns"
step
click Frostwolf Traveler's Pack##220621
|tip They're tan sacks on the ground throughout the area.
click Frostwolf Collar##220623
|tip They're dog collars on the ground throughout the area.
click Frostwolf Axe##220622
|tip They're red and silver axes found throughout the area.
collect 10 Fallen Frostwolf Artifact##100899 |q Articles of the Fallen##32804/1 |goto 47.6,33.8
step
label "release_gronns"
kill Thunderlord Beastwrangler##74160+
Release #3# Captive Gronns |q Wrath of Gronn##32794/1 |goto 47.6,33.8
|tip They look like big gronns chained to the ground around this area.
step
talk Kal'gor the Honorable##74223
turnin Articles of the Fallen##32804 |goto Frostfire Ridge/0 46.4,32.0
step
_Go down_ the ramp |goto Frostfire Ridge/7 36.5,23.8 < 20 |only if walking
_Continue down_ the ramp |goto Frostfire Ridge/8 41.3,52.3 < 20 |only if walking
talk Ga'nar##70941
turnin Wrath of Gronn##32794 |goto 50.6,54.4
accept The Eldest##32795 |goto 50.6,54.4
step
talk Ga'nar##70941
Select _<Assist Ga'nar in battle.>_
Watch the dialogue
Confront Hatock |q The Eldest##32795/1 |goto Frostfire Ridge/8 50.6,54.4
step
kill Grulloc##70863 |q The Eldest##32795/2 |goto Frostfire Ridge/8 51.7,64.2
kill Hatock the Gronnmaster##74006 |q The Eldest##32795/3 |goto Frostfire Ridge/8 51.7,64.2
|tip He will die once Grulloc is beaten.
step
talk Ga'nar##70941
turnin The Eldest##32795 |goto Frostfire Ridge/8 49.7,52.0
accept To the Garrison##32796 |goto Frostfire Ridge/8 49.7,52.0
step
talk Lokra##72274
turnin Securing the South##32989 |goto Frostfire Ridge/0 38.5,52.4
accept They Who Held Fast##32990 |goto Frostfire Ridge/0 38.5,52.4
step
talk Skyhunter Donmor'gan##76879
fpath Stonefang Outpost |goto Frostfire Ridge/0 40.1,51.9
step
talk Frostwolf Warrior##72449
Look for Karg Bloodfury |q They Who Held Fast##32990/1 |goto Frostfire Ridge/0 41.4,52.8
step
talk Wounded Frostwolf Shaman##74358
accept Of Fire and Thunder##33013 |goto Frostfire Ridge/0 41.6,52.9
step
talk Matron Suma##72383
Speak with Matron Suma |q They Who Held Fast##32990/2 |goto Frostfire Ridge/0 41.64,52.91
step
talk Rota Surehide##72381
Speak with Rota Surehide |q They Who Held Fast##32990/3 |goto Frostfire Ridge/0 39.9,52.8
step
talk Dungar Frostmane##72380
Speak with Dungar Frostmane |q They Who Held Fast##32990/4 |goto Frostfire Ridge/0 39.2,52.4
step
talk Lokra##72274
turnin They Who Held Fast##32990 |goto Frostfire Ridge/0 38.5,52.4
accept Into the Boneslag##32991 |goto Frostfire Ridge/0 38.5,52.4
step
_Follow_ the path |goto Frostfire Ridge/0 37.8,50.5 < 15 |only if walking
clicknpc Roknor##72400
Find Roknor |q Into the Boneslag##32991/1 |goto 40.4,49.0
step
talk Makar Stonebinder##72399
Find Makar Stonebinder |q Into the Boneslag##32991/2 |goto Frostfire Ridge/0 41.1,44.7
step
click Siege Munitions##221379
|tip A pile of large yellow munitions next to the lava.
Inspect the Siege Munitions |q Of Fire and Thunder##33013/1 |goto Frostfire Ridge/0 43.1,44.4
step
talk Gana Surehide##72494
Select _Break the chains._
Find Gana Surehide |q Into the Boneslag##32991/3 |goto Frostfire Ridge/0 44.3,43.0
step
click Heavy Plating##221378
|tip It's a gray piece of sheet metal laying against an anvil.
Inspect the Heavy Plating |q Of Fire and Thunder##33013/2 |goto Frostfire Ridge/0 44.7,43.4
step
Click the _Quest Complete_ Box:
turnin Of Fire and Thunder##33013
step
talk Lokra##72274
turnin Into the Boneslag##32991 |goto Frostfire Ridge/0 47.6,45.6
accept Moving Target##32992 |goto Frostfire Ridge/0 47.6,45.6
step
_Go up_ the hill |goto Frostfire Ridge/0 48.6,46.4 < 20 |only if walking
_Cross_ the snowfield |goto 50.6,49.9 < 20 |only if walking
Find Lokra in Icewind Drifts |q Moving Target##32992/1 |goto 54.8,56.4
step
talk Lokra##72274
turnin Moving Target##32992 |goto Frostfire Ridge/0 55.5,56.6
accept The Strength of Our Bonds##32993 |goto Frostfire Ridge/0 55.5,56.6
step
_Follow_ the path |goto Frostfire Ridge/0 57.7,58.0 < 20 |only if walking
Locate Karg Bloodfury |q The Strength of Our Bonds##32993/1 |goto Frostfire Ridge/0 63.2,59.9
step
talk Karg Bloodfury##72373
turnin The Strength of Our Bonds##32993 |goto Frostfire Ridge/0 63.2,60.0
step
Standing next to you:
talk Karg Bloodfury##73097
accept Where's My Wolf?!##33826
accept Karg Unchained##33785
stickystart "thunderlordorcs"
step
kill Beastmaster Torash##72864 |q Where's My Wolf?!##33826/1 |goto Frostfire Ridge/0 65.8,61.3
step
clicknpc Nerok##72500
Free Nerok |q Where's My Wolf?!##33826/2 |goto Frostfire Ridge/0 61.0,65.0
step
Standing next to you:
talk Karg Bloodfury##73097
turnin Where's My Wolf?!##33826
accept Enfilade##32994
step
Standing next to you:
talk Lokra##72940
accept The Master Siegesmith##33828
step
_Follow_ the road |goto Frostfire Ridge/0 62.0,69.5 < 20 |only if walking
kill Master Siegesmith Uratok##76594 |q The Master Siegesmith##33828/1 |goto Frostfire Ridge/0 62.5,75.0
step
kill Blackrock Siegesmith##73360+, Thunderlord Apprentice##72328+
collect 5 Blackrock Blasting Powder##104039 |n |goto Frostfire Ridge/0 61.3,72.3
|tip The Blasting Powder is used to destroy the cannons.
clicknpc Iron Horde Cannon##74936
Destroy #5# Iron Horde Cannons |q Enfilade##32994/1 |goto Frostfire Ridge/0 61.3,72.3
step
label "thunderlordorcs"
kill Thunderlord Apprentice##72328+, Thunderlord Giantslayer##78812+, Thunderlord Crag-Leaper##78815+
Slay #25# Thunderlord Orcs |q Karg Unchained##33785/1 |goto Frostfire Ridge/0 61.5,72.5
step
Standing next to you:
talk Karg Bloodfury##73097
turnin Karg Unchained##33785
turnin Enfilade##32994
step
Standing next to you:
talk Lokra##72940
turnin The Master Siegesmith##33828
accept Return to the Pack##33493
step
talk Durotan##74163 |goto Frostwall/0 51.9,49.8 < 20
turnin To the Garrison##32796 |goto Frostwall/0 50.2,37.9
turnin Return to the Pack##33493 |goto 50.2,37.9
step
talk Gazlowe##78466
accept Bigger is Better##36567 |goto 52.5,53.4
step
clicknpc Architect Table##86017
|tip It looks like a stone table with a slanted top and a blueprint laying on it.
Select your _Great Hall_ from the center Garrison map
Click _Upgrade_
Upgrade your Garrison to Level 2 |q Bigger is Better##36567/1 |goto Frostwall/0 52.3,53.5
step
talk Gazlowe##78466
turnin Bigger is Better##36567 |goto Frostwall/0 42.1,55.5
step
talk Gazlowe##78466
accept Ashran Appearance##36706 |goto Frostwall/0 42.2,55.6
step
talk Bron Skyhorn##79407
Tell him _"Take me to Ashran."_
Speak with Bron Skyhorn |q Ashran Appearance##36706/1 |goto Frostwall/0 45.8,50.9
step
talk Stomphoof##86315
turnin Ashran Appearance##36706 |goto Warspear/0 45.6,34.6
accept Warspear Welcome##36707 |goto Warspear/0 45.6,34.6
step
_Enter_ the building |goto Warspear/0 46.6,43.6 < 20 |walk
talk Lieutenant Kragil##86312
turnin Warspear Welcome##36707 |goto Warspear/0 44.1,45.5
accept Inspiring Ashran##36708 |goto Warspear/0 44.1,45.5
step
talk Narnin Dawnglow##86307
Speak with Narnin Dawnglow |q Inspiring Ashran##36708/1 |goto Warspear/0 45.0,43.2
step
_Enter_ the building |goto Warspear/0 52.4,58.0 < 20 |walk
talk Beska Redtusk##86036
Speak with Beska Redtusk |q Inspiring Ashran##36708/3 |goto Warspear/0 53.9,62.6
step
_Enter_ the building |goto Warspear/0 57.6,50.0 < 20 |walk
talk Zarjhin##86318
Speak with Zarjhin |q Inspiring Ashran##36708/2 |goto Warspear/0 58.9,52.0
step
_Enter_ the building |goto Warspear/0 46.6,43.6 < 20 |walk
talk Lieutenant Kragil##86312
turnin Inspiring Ashran##36708 |goto Warspear/0 44.1,45.5
accept Burning Beauty##36709 |goto Warspear/0 44.1,45.5
step
talk Vivianne##81765
turnin Burning Beauty##36709 |goto Warspear/0 62.1,23.0
accept The Dark Lady's Gift##35243 |goto Warspear/0 62.1,23.0
step
talk Sergeant Grimjaw##88228
accept Thunderlord Invasion!##37291 |goto Frostwall/0 43.7,47.8
step
talk Sergeant Grimjaw##88228
Tell him _"Prepare to battle the Iron Horde."_
Speak with Sergeant Grimjaw |q Thunderlord Invasion!##37291/1 |goto Frostwall/0 43.6,47.7
step
Watch the dialogue
Follow the Sergeant |scenariogoal 25172 |goto 50.6,39.3
step
kill Thunderlord Spearhand##88263+, Thunderlord Beastmaster##88265+, Thunderlord Beastmaster##88265+
Repel the Invasion |scenariostage 2 |goto Frostwall/0 52.7,26.9
step
kill Thunderlord Spearhand##88263+, Thunderlord Beastmaster##88265+, Thunderlord Beastmaster##88265+, Thunderlord Giantslayer##88272+
|tip Check all around your Garrison.
Endure the Iron Horde Assault |scenariogoal 26775
|tip Zoom it all the way out, and watch your minimap. Kill the mobs that appear as red dots, and heal the mobs that appear as green crosses.
step
kill Thunderlord Spearhand##88263+, Thunderlord Beastmaster##88265+, Thunderlord Beastmaster##88265+
Defeat the Remaining Forces |scenariogoal 27227 |goto Frostwall/0 49.5,38.7
|tip Zoom it all the way out, and watch your minimap. Kill the mobs that appear as red dots, and heal the mobs that appear as green crosses.
step
Return to the Town Center |scenariostage 5 |goto Frostwall/0 50.6,35.5
step
kill Aggar Thunder-Reaver##79609 |scenariogoal 24735 |goto Frostwall/0 52.7,27.0
Defeat the Boss |q The Thunderlord Clan Approaches...##37291/2 |goto Frostwall/0 52.7,27.0
step
talk Sergeant Grimjaw##88228
turnin Thunderlord Invasion!##37291 |goto Frostwall/0 43.7,47.8
step
talk Durotan##74163
accept The Iron Wolf##33010 |goto Frostwall/0 50.2,37.9
step
_Leave_ your Garrison |goto Frostwall/0 54.5,19.4 < 20 |only if walking
_Cross_ the field |goto Frostfire Ridge/0 50.1,56.2 < 20 |only if walking
_Follow the path_ into Grom'gar |goto 58.0,58.2 < 20 |only if walking
_Continue_ along the path |goto 60.9,61.5 < 20 |only if walking
_Enter_ the building |goto Frostfire Ridge/0 63.3,65.7 < 10 |walk
kill The Iron Wolf##74225 |q The Iron Wolf##33010/1 |goto Frostfire Ridge/6 61.6,58.4
step
talk Thrall##76720
turnin The Iron Wolf##33010 |goto Frostfire Ridge/6 53.2,56.2
accept To Thunder Pass##34123 |goto Frostfire Ridge/6 53.5,56.0
step
talk Windhunter##87707
fpath Wolf's Stand |goto Frostfire Ridge/0 73.6,60.0
step
talk Lokra##76487
turnin To Thunder Pass##34123 |goto 73.4,58.8
step
talk Ja'kana##78699
fpath Darkspear's Edge |goto Frostfire Ridge 51.7,41.1
step
talk Shadow Hunter Mala##78209
accept Frosted Fury##34346 |goto Frostfire Ridge/0 52.5,40.4
step
talk Shadow Hunter Rala##78208
accept Lurkers##34344 |goto 52.6,40.4
accept Poulticide##34345 |goto 52.6,40.4
stickystart "new1"
stickystart "new2"
step
click Frostblossom##228991
|tip Blue plants around the area.
collect 10 Frostbloom Leaves##110227 |q Poulticide##34345/1 |goto Frostfire Ridge/0 53.9,39.1
|tip They look like shriveled up thorny vines.
You can find more around this area |goto 54.7,39.4
step
label "new1"
kill Ice Fury##78214+
collect 3 Frostshard##110228 |q Frosted Fury##34346/1 |goto Frostfire Ridge/0 57.8,38.5
step
label "new2"
kill Snow Lurker##78213+, Ice Lurker##78448+
collect 8 Dose of Lurker Venom##110226 |q Lurkers##34344/1 |goto Frostfire Ridge/0 58.9,35.4
step
talk Shadow Hunter Mala##78209
turnin Frosted Fury##34346 |goto Frostfire Ridge/0 52.5,40.4
step
talk Shadow Hunter Rala##78208
turnin Lurkers##34344 |goto 52.6,40.4
turnin Poulticide##34345 |goto 52.6,40.4
accept The Real Prey##34348 |goto 52.6,40.4
step
Find Iceblister Den |q The Real Prey##34348/1 |goto Frostfire Ridge/0 54.0,29.3
step
use Vial of "Ogron Be-Gone"##110270
kill Grosh the Mighty##78230 |q The Real Prey##34348/2 |goto Frostfire Ridge/0 52.0,29.3
|tip He's an elite, so you will need to use Vial of "Ogron Be-Gone" on him to weaken him.
step
_Leave_ the cave |goto Frostfire Ridge/0 53.7,29.4 < 20 |walk
_Follow_ the path up |goto Frostfire Ridge/0 53.1,24.5 < 20 |only if walking
talk Brenna Skymoor##76787
fpath Bloodmaul Slag Mines |goto 51.5,21.5
step
_Go through_ the grove of trees |goto Frostfire Ridge/0 63.4,16.8 |only if walking
_Enter_ the cave |goto Frostfire Ridge/9 33.5,29.8 < 10 |walk
accept Bonus Objective: Frostbite Hollow##34501 |goto Frostfire Ridge/9 41.8,32.5
stickystart "Hollow"
step
accept Bonus Objective: Frostbite Hollow##34501
kill Maggle##78896
Slay Maggle |q Bonus Objective: Frostbite Hollow##34501/1 |goto Frostfire Ridge/9 55.6,30.4
step
_Proceed deeper_ into the cave |goto Frostfire Ridge/9 75.7,27.6 < 10 |walk
accept Bonus Objective: Frostbite Hollow##34501
kill Frostscreamer Raeger##78764
Slay the Frostscreamer Raeger |q Bonus Objective: Frostbite Hollow##34501/3 |goto Frostfire Ridge/9 68.2,56.9
step
_Enter_ the side cave here |goto Frostfire Ridge/9 54.6,54.9 < 10 |walk
accept Bonus Objective: Frostbite Hollow##34501
kill Feagel the Biter##78893
Slay Feagel the Biter |q Bonus Objective: Frostbite Hollow##34501/2 |goto Frostfire Ridge/9 47.3,45.8
step
label "Hollow"
accept Bonus Objective: Frostbite Hollow##34501
kill Shiverblood Slasher##78758+, Shiverblood Frostbinder##78869+
Slay #10# Shiverblood Pale Ones |q Bonus Objective: Frostbite Hollow##34501/4 |goto Frostfire Ridge/9 60.1,63.8
step
talk Shadow Hunter Rala##78208
turnin The Real Prey##34348 |goto Frostfire Ridge/0 52.6,40.4
accept Oath of Shadow Hunter Rala##34731 |goto 52.6,40.4
step
_Cross_ the Cracking Plains |goto Frostfire Ridge/0 55.2,43.6 < 30 |only if walking
talk Outrider Urukag##72976
accept A Proper Parting##33125 |goto Frostfire Ridge/0 66.0,49.1
accept Gut Guttra##33132 |goto Frostfire Ridge/0 66.0,49.1
stickystart "new3"
stickystart "new4"
step
_Go up_ the hill |goto Frostfire Ridge/0 67.3,48.2 < 20 |only if walking
_Enter_ the building |goto 68.0,46.0 < 20 |walk
kill Guttra Wolfchew##72967 |q Gut Guttra##33132/1 |goto 68.3,45.6
step
label "new3"
accept Bonus Objective: Grimfrost Hill##33145 |goto Frostfire Ridge/0 65.8,46.7
kill Grimfrost Wolfslayer##72953+, Grimfrost Drudge##72955+
kill 8 Grimfrost Ogres |q Bonus Objective: Grimfrost Hill##33145/1 |goto Frostfire Ridge/0 66.7,46.5
step
label "new4"
accept Bonus Objective: Grimfrost Hill##33145 |goto Frostfire Ridge/0 66.7,46.5
clicknpc Captured Frost Wolf##73284
Free #3# Captured Frostwolves |q Bonus Objective: Grimfrost Hill##33145/2 |goto Frostfire Ridge/0 66.7,46.5
step
clicknpc Outrider Balul##73466
Burn Outrider Balulu's Corpse |q A Proper Parting##33125/3 |goto Frostfire Ridge/0 62.6,50.8
step
clicknpc Outrider Vorg##73482
Burn Outrider Vorg's Corpse |q A Proper Parting##33125/1 |goto Frostfire Ridge/0 62.0,50.3
step
clicknpc Outrider Lukar##73467
Burn Outrider Lukar's Corpse |q A Proper Parting##33125/2 |goto Frostfire Ridge/0 61.7,47.1
step
talk Outrider Urukag##72976
turnin A Proper Parting##33125 |goto Frostfire Ridge/0 66.0,49.1
turnin Gut Guttra##33132 |goto Frostfire Ridge/0 66.0,49.1
step
talk Lokra##76487
accept The Battle of Thunder Pass##34124 |goto 73.4,58.8
step
talk Durotan##76484
Speak with Durotan |q The Battle of Thunder Pass##34124/1 |goto Frostfire Ridge/0 75.0,55.8
step
talk Durotan##76484
Tell him _"Let's move forward."_
Speak with Durotan |scenariogoal 24323 |goto Frostfire Ridge/0 75.0,55.8
step
kill Iron Grunt##76960+, Blackrock Ironhusk##76639+
Survive the First Wave |scenariogoal 24324 |goto Frostfire Ridge/0 76.0,55.1
step
kill Iron Grunt##76960+, Blackrock Ironhusk##76639+
Survive the Second Wave |scenariogoal 24325 |goto Frostfire Ridge/0 76.0,55.1
step
kill Iron Clusterpult##76629 |scenariogoal 24315 |goto Frostfire Ridge/0 77.5,54.0
step
kill Blackrock Hammer-Sister##76633+, Iron Horde Grunt##76960+
Survive the Third Wave |scenariogoal 24326 |goto Frostfire Ridge/0 76.0,55.1
step
kill Iron Horde Grunt##76960+, Vicious Longtusk##76624+, Thunderlord Trapper##76587+
Survive the Fourth Wave |scenariogoal 24327 |goto Frostfire Ridge/0 76.0,55.1
step
_Go up_ the hill |goto Frostfire Ridge/0 77.1,55.4 < 10 |only if walking
kill Iron Grunt##76960+, Blackrock Ironhusk##76639+, Blackrock Hammer-Sister##76633+
Protect Drek'Thar |scenariogoal 24317 |goto Frostfire Ridge/0 77.4,55.7
|tip Fight your way up the ramp.
step
kill Iron Horde Grunt##76960+, Vicious Longtusk##76624+, Thunderlord Trapper##76587+
Survive the Fifth Wave |scenariogoal 24329 |goto Frostfire Ridge/0 76.0,55.1
|tip Focus on the Vicious Longtusk.
step
kill Iron Horde Grunt##76960+, Vicious Longtusk##76624+, Thunderlord Trapper##76587+
Survive the Sixth Wave |scenariogoal 24328 |goto Frostfire Ridge/0 76.0,55.1
|tip Focus on the Vicious Longtusk.
step
kill Malgrim Stormhand##76630 |scenariogoal 24319 |goto Frostfire Ridge/0 77.6,54.0
step
kill Blackrock Hammer-Sister##76633+, Iron Horde Grunt##76960+, Blackrock Ironhusk##76639
Survive the Seventh Wave |scenariogoal 24330 |goto Frostfire Ridge/0 76.0,55.1
step
kill Blackrock Hammer-Sister##76633+, Iron Horde Grunt##76960+, Blackrock Ironhusk##76639
Survive the Final Wave |scenariogoal 24331 |goto Frostfire Ridge/0 76.0,55.1
step
kill Maggoc##20600 |scenariogoal 24302 |goto Frostfire Ridge/0 77.3,54.3
Defend Frostfire Ridge from the Iron Horde |q The Battle of Thunder Pass##34124/2 |goto Frostfire Ridge/0 77.3,54.3
step
talk Durotan##76484
turnin The Battle of Thunder Pass##34124 |goto Frostfire Ridge/0 76.2,55.2
accept The Secrets of Gorgrond##34867 |goto Frostfire Ridge/0 76.2,55.2
step
talk Makar Stonebinder##76730
accept The Frostwolves Stand Ready##37563 |goto 76.31,55.00
step
talk Kal'gor the Honorable##76724
talk Greatmother Geyah##88655
talk Lokra##76487
Choose a Follower |q The Frostwolves Stand Ready##37563/1 |goto Frostfire Ridge/0 76.4,54.9
step
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto 76.32,54.98
step
_Enter_ the cave |goto Frostfire Ridge/0 78.5,55.2 < 10 |walk
_Leave_ the cave |goto 79.0,56.1 < 20 |walk
Follow the _path up_ |goto Frostfire Ridge/0 82.3,60.1 < 20 |only if walking
fpath Thunder Pass |goto 83.6,60.9
step
_Go through_ the thin rock passage |goto Frostfire Ridge/0 82.7,61.7 < 20 |only if walking
talk Scout Ruk'Gan##77210
accept Savage Vengeance##34066 |goto Frostfire Ridge/0 83.2,62.8
stickystart "thunderguard"
step
click Barbed Thunderlord Spear##230858
|tip A long wooden spear sticking out of the ground.
accept Getting the Points##34069 |goto Frostfire Ridge/0 84.1,65.1
step
click Barbed Thunderlord Spear##230858
|tip They look like long wooden spears sticking out of the ground all around this area.
collect 5 Barbed Thunderlord Spear##109056 |q Getting the Points##34069/1 |goto Frostfire Ridge/0 85.6,66.0
step
label "thunderguard"
kill 10 Iron Thunderguard##77147 |q Savage Vengeance##34066/1 |goto Frostfire Ridge/0 85.6,66.0
You can find more at [83.4,68.7]
step
_Go through_ the bones |goto 83.4,68.7 < 20 |only if walking
_Follow_ the path |goto Frostfire Ridge/0 82.2,69.3 < 20 |only if walking
talk Scout Ruk'Gan##77210
turnin Savage Vengeance##34066 |goto 82.6,69.8
turnin Getting the Points##34069 |goto 82.6,69.8
accept A Collection of Coils##34264 |goto 82.6,69.8
step
kill Thunderlord Wrangler##77106+
|tip They are located all around this area.
collect 5 Coil of Sturdy Rope##109055 |q A Collection of Coils##34264/1 |goto Frostfire Ridge/0 83.4,65.6
step
_Go up_ the hill |goto Frostfire Ridge/0 83.1,68.7 < 15 |only if walking
_Follow_ the path |goto Frostfire Ridge/0 82.2,69.3 < 20 |only if walking
talk Scout Ruk'Gan##77210
turnin A Collection of Coils##34264 |goto 82.6,69.7
accept Tar Get of Opportunity##34072 |goto 82.6,69.7
accept At the End of Your Rope##34070 |goto 82.6,69.7
step
clicknpc Thunderlord War Rylak##77122
|tip They're flying in the sky above you.
use Barbed Harpoon##109082
|tip Use the Barbed Harpoon on Thunderlord War Rylaks.
kill 5 Thunderlord Sky Rider##77111 |q At the End of Your Rope##34070/1 |goto Frostfire Ridge/0 83.9,67.8
step
kill Black Tar##81692
collect 5 Glob of Sticky Tar##109080 |q Tar Get of Opportunity##34072/1 |goto Frostfire Ridge/0 86.3,70.3
You can find more around [Frostfire Ridge/0 84.5,70.9]
step
_Follow_ the path down |goto Frostfire Ridge/0 84.3,69.3 < 15 |only if walking
_Go up_ the hill |goto 83.2,68.7 < 15 |only if walking
_Follow_ the path |goto Frostfire Ridge/0 82.2,69.3 < 20 |only if walking
talk Scout Ruk'Gan##77210
turnin At the End of Your Rope##34070 |goto 82.6,69.8
turnin Tar Get of Opportunity##34072 |goto 82.6,69.8
accept Burn Them Down##34073 |goto 82.6,69.8
step
click Battle-Worn Frostwolf Banner##227806
|tip A blue flagged banner with the Frostwolf logo.
accept The Mark of Defiance##34102 |goto Frostfire Ridge/0 82.6,69.8
stickystart "ST1"
step
_Go into_ the passage |goto Frostfire Ridge/0 81.7,70.0 < 15 |only if walking
clicknpc North Incubator Cage##77539
|tip A wooden cage with iron wrappings.
Destroy the North Incubator Cage |q Burn Them Down##34073/1 |goto Frostfire Ridge/0 81.8,71.7
step
_Go down_ the ramp |goto Frostfire Ridge/0 83.4,74.2 < 15 |only if walking
clicknpc South Incubator Cage##77703
|tip A wooden cage with iron wrappings.
Burn the South Incubator Cage |q Burn Them Down##34073/3 |goto 83.4,75.1
step
clicknpc West Incubator Cage##77702
|tip A wooden cage with iron wrappings.
Destroy the West Incubator Cage |q Burn Them Down##34073/2 |goto Frostfire Ridge/0 82.0,73.9
step
label "ST1"
kill Iron Thunderguard##77147, Thunderlord Sky-Slasher##77045, Thunderlord Hogbreaker##77046
use Battle-Worn Frostwolf Banner##109196
|tip Use the Battle-Worn Frostwolf Banner near their corpses.
Impale #6# Thunderlord Orc Corpses |q The Mark of Defiance##34102/1 |goto Frostfire Ridge/0 83.4,75.4
step
_Follow_ the path |goto Frostfire Ridge/0 83.3,75.1 < 20 |only if walking
_Continue_ following the path |goto Frostfire Ridge/0 83.5,75.9 < 30 |only if walking
talk Scout Ruk'Gan##77210
turnin Burn Them Down##34073 |goto Frostfire Ridge/0 82.8,76.3
turnin The Mark of Defiance##34102 |goto 82.8,76.3
accept Vul'gaths End##34075 |goto 82.8,76.3
step
_Run up_ the path |goto Frostfire Ridge/0 83.3,75.6 < 20 |only if walking
kill General Vul'gath##77104 |q Vul'gaths End##34075/1 |goto Frostfire Ridge/0 83.9,74.9
step
talk Scout Ruk'Gan##77210
turnin Vul'gaths End##34075 |goto Frostfire Ridge/0 82.8,76.3 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Gorgrond (92-94)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Gorgrond (92-94)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)",
image=ZGV.DIR.."\\Guides\\Images\\Gorgrond",
startlevel=92,
},[[
step
_Run up_ the path |goto Frostfire Ridge/0 83.3,75.6 < 20 |only if walking
_Jump down_ here |goto Frostfire Ridge/0 84.6,74.0 < 20 |only if walking
_Follow_ the road |goto Frostfire Ridge/0 86.1,71.1 < 30 |only if walking
talk Durotan##74594
turnin The Secrets of Gorgrond##34867 |goto Gorgrond/0 37.3,77.0
accept The Laughing Skull##33543 |goto Gorgrond/0 37.3,77.0
step
Peacefully Approach Deadgrin |q The Laughing Skull##33543/1 |goto Gorgrond/0 38.0,75.3
step
talk Ripfist##84176
turnin The Laughing Skull##33543 |goto Gorgrond/0 38.8,73.6
accept Goren, Goren, Gone!##33544 |goto Gorgrond/0 38.8,73.6
stickystart "acidtooth"
step
talk Kaz the Shrieker##76987
accept We Die Laughing!##33548 |goto Gorgrond/0 39.3,72.0
step
clicknpc Dead Laughing Skull##75164
collect 5 Laughing Skull Mask##107338 |q We Die Laughing!##33548/1 |goto Gorgrond/0 38.9,72.3
|tip They look like dead bodies laying on the ground around this town.
step
label "acidtooth"
kill 8 Acidtooth Devourer##79416 |q Goren, Goren, Gone!##33544/1 |goto Gorgrond/0 39.2,72.5
|tip They can be found all around Deadgrin.
step
Click the _Quest Complete_ Box:
turnin Goren, Goren, Gone!##33544
step
talk Limbflayer##74611
accept Eye Candy##33563 |goto Gorgrond/0 40.5,71.9
step
kill Skothwa##79500
collect Skothwa's Eye##114229 |q Eye Candy##33563/1 |goto Gorgrond/0 41.5,72.7
step
talk Kaz the Shrieker##74606
turnin We Die Laughing!##33548 |goto Gorgrond/0 41.45,74.1
step
talk Limbflayer##74611
turnin Eye Candy##33563 |goto 41.5,74.1
step
talk Durotan##74594
accept A Flare for the Dramatic##33593 |goto Gorgrond/0 41.5,74.1
step
use Penny's Flare Gun##115534
Fire Penny's Flare Gun |q A Flare for the Dramatic##33593/1 |goto Gorgrond/0 41.4,74.1
step
talk Durotan##74594
turnin A Flare for the Dramatic##33593 |goto Gorgrond/0 41.5,74.1
accept Penny From Heaven##36434 |goto Gorgrond/0 41.5,74.1
step
_Follow_ the path |goto Gorgrond/0 43.5,73.4 < 30 |only if walking
talk Penny Clobberbottom##85147
turnin Penny From Heaven##36434 |goto 45.7,70.6
accept Just Another Stick in the Wall##36460 |goto 45.7,70.6
step
click Penny's Plunger##234558
|tip It looks like a small metal box with a handle on it.
Use Penny's Plunger |q Just Another Stick in the Wall##36460/1 |goto Gorgrond/0 45.7,70.6
step
talk Durotan##74594
turnin Just Another Stick in the Wall##36460 |goto Gorgrond/0 45.9,70.3
accept Your Base, Your Choice##35151 |goto Gorgrond/0 45.9,70.3
step
talk Durotan##74594
Select a Building |q Your Base, Your Choice##35151/1
|tip Choose either the "Lowlands Lumber Yard" or the "Savage Fight Club". We recommend choosing the "Savage Fight Club", since it gives you an ability that you can use to summon a champion to help you fight, if you get into rough situations, or simply to help you kill faster.
step
talk Durotan##74594
turnin Your Base, Your Choice##35151 |goto Gorgrond/0 46.1,70.2
accept Rage and Wisdom##35880 |goto 46.08,70.19 |or |next "savage_fight_club"
accept The Razorbloom##36474 |goto Gorgrond/0 46.1,70.2 |or |next "lowlands_lumber_yard"
|tip You will only be able to accept one of these quests, since it depends on which building you chose.
step
label "savage_fight_club"
fpath Beastwatch |goto Gorgrond/0 46.0,69.2
step
home Beastwatch |goto Gorgrond/0 46.0,69.7
step
talk Limbflayer##76688
accept A Rediscovered Legend##34697 |goto 46.3,69.7
step
talk Marrow##82732
accept Skulltakers in Crimson Fen##35667 |goto Gorgrond/0 46.3,70.0
step
Travel along the _cobblestone path_ |goto Gorgrond/0 44.5,70.9 < 30 |only if walking
talk Bony Xuk##81202
turnin Rage and Wisdom##35880 |goto 43.55,65.03
accept A Harsh Reminder##35248 |goto 43.55,65.03
accept Seedbearers of Bad News##35035 |goto 43.55,65.03
step
talk Kash'drakor##79320
turnin A Rediscovered Legend##34697 |goto 42.77,63.08
accept Slave Hunters##34698 |goto 42.77,63.08
accept Nazgrel##34700 |goto 42.77,63.08
step
talk Beatface##79331
accept Krav'ogra##34702 |goto 42.71,63.08
step
talk Gladiator Akaani##79322
accept Getting Gladiators##34699 |goto 42.76,62.99
stickystart "rocketthrower"
step
clicknpc Ancient Seedbearer##82392
|tip They look like dead trees laying on the ground around this area.
Burn #5# Ancient Seedbearers |q Seedbearers of Bad News##35035/1 |goto Gorgrond/0 44.1,63.3
step
label "rocketthrower"
kill Gronn Rockthrower##80689+, Goren Gouger##80690+, Gronnling Bonebreaker##80685+
Slay #8# Denizens of the Wasteland |q A Harsh Reminder##35248/1 |goto 43.64,63.76
step
talk Bony Xuk##81202
turnin A Harsh Reminder##35248 |goto 43.57,65.01
turnin Seedbearers of Bad News##35035 |goto 43.57,65.01
accept We Have Company##35025 |goto 43.57,65.01
step
talk Prowler Sasha##75008
accept Need More Teeth##34012 |goto Gorgrond/0 41.4,66.1
stickystart "ogreteeth"
step
_Run up_ the wooden ramp to the top of the hut |goto Gorgrond/0 41.0,66.4 < 10 |only if walking
kill Slave Hunter Krag##79623
collect Pendant of Krag##111527 |q Slave Hunters##34698/2 |goto 41.14,66.21
step
click Shackle##233284
|tip It looks like a big metal cuff around a sitting orc's wrist inside this building.
Free Bruto |q Getting Gladiators##34699/3 |goto 40.31,64.82
step
kill Slave Hunter Brol##79621
collect Pendant of Brol##108899 |q Slave Hunters##34698/1 |goto 40.45,66.72
step
click Challenge Gong##215697
|tip Keep clicking the Challenge Gong after each enemy you kill.
kill Slavemaster Ok'mok##75864
|tip You will have to fight a few enemies until Ok'mok jumps into the arena.
Slay Slavemaster Ok'mok in the Stonemaul Arena |q Krav'ogra##34702/1 |goto Gorgrond/0 40.4,67.5
step
click Shackle##233284
|tip It looks like a metal cuff on a wooden cage outside the arena, near the wall, under a brown canopy.
Free Y'kish |q Getting Gladiators##34699/2 |goto 39.76,67.83
step
_Enter_ the building |goto Gorgrond/0 39.3,66.8 < 20 |walk
click Shackle##233284
|tip It looks like a metal cuff planted in the wall, with a draenei chained to it inside this building.
Free Pitfighter Vaandaam |q Getting Gladiators##34699/1 |goto 39.15,67.23
step
_Run up_ the path |goto Gorgrond/0 39.5,65.9 < 20 |only if walking
_Follow_ the path |goto Gorgrond/0 39.1,65.8 < 20 |only if walking
_Enter_ the building |goto Gorgrond/0 39.0,68.2 < 20 |walk
kill Slave Hunter Mol##79626
collect Pendant of Mol##111528 |q Slave Hunters##34698/3 |goto 38.98,68.71
step
_Enter_ the cave |goto Gorgrond/0 38.5,67.4 < 20 |walk
_Follow_ the path |goto Gorgrond/0 37.9,68.2 < 20 |walk
talk Bruto##77014
turnin Getting Gladiators##34699 |goto 36.87,67.92
accept The Axe of Kor'gall##34703 |goto 36.87,67.92
step
_Run across_ the wooden hanging pathway |goto Gorgrond/0 36.3,68.6 < 20 |walk
|tip Click the Ogre Barricade to break it down, so you can walk through.
kill Kor'gall##77020
collect Serathil##109023 |q The Axe of Kor'gall##34703/1 |goto 36.38,69.77
step
_Jump_ off the ramp |goto Gorgrond/0 37.0,69.1 < 20 |walk
_Enter_ the large room |goto 37.6,69.7 < 20 |walk
click Nazgrel's Cage##233369 |tip It's a large cage made of stone and wood.
Rescue Nazgrel |q Nazgrel##34700/1 |goto 36.85,70.56
step
label "ogreteeth"
kill Stonemaul Slaver##75835+, Stonemaul Guard##75819+
collect 30 Ogre Tooth##108898 |q Need More Teeth##34012/1 |goto Gorgrond/0 37.5,68.5
step
_Follow_ the path |goto Gorgrond/0 37.9,68.2 < 20 |walk
_Exit_ the cave |goto Gorgrond/0 38.5,67.4 < 20 |walk
_Follow_ the path |goto Gorgrond/0 40.3,65.7 < 30 |only if walking
talk Prowler Sasha##75008
turnin Need More Teeth##34012 |goto 41.42,66.12
step
talk Beatface##79331
turnin Krav'ogra##34702 |goto 42.71,63.08
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto 42.76,62.98
step
talk Kash'drakor##79320
turnin Slave Hunters##34698 |goto 42.76,63.07
turnin Nazgrel##34700 |goto 42.76,63.07
accept The Sparring Arena##35152 |goto 42.76,63.07
step
talk Bruto##77014
accept The Interest of Bruto##35882 |goto 42.75,62.92
step
talk Dying Beast##81056
_Release the creature from its chains._
Investigate the Iron Horde Camp |q We Have Company##35025/1 |goto 44.29,61.64
step
talk Rexxar##82832
turnin We Have Company##35025 |goto 44.29,61.64
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
kill Rippling Steamfury##83458+, Turbulent Steamfury##81685+
collect 100 Quenching Waters##113009 |q On the Mend##35026/1 |goto Gorgrond 43.4,61.5
You can find more around [Gorgrond 45.03,60.84]
step
kill Stoneshamble Basilisk##74962+
clicknpc Decaying Basilisk##83405+
|tip They look like dead basilisks on the ground around this area.
collect 9 Basilisk Meat##113504 |q Basilisk Butcher##35870/1 |goto Gorgrond 43.6,60.8
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
_Go up_ the path |goto Gorgrond 45.1,55.4 < 10 |only if walking
talk Nisha##81674
turnin On the Mend##35026 |goto 45.86,54.96
turnin Basilisk Butcher##35870 |goto 45.86,54.96
step
talk Rexxar##83569
accept Is This One of Yours?##35036 |goto 46.03,54.75
Tell Rexxar _"This is one of my allies."_
Vouch for Bony Xuk |q Is This One of Yours?##35036/1 |goto 46.03,54.75
step
talk Bony Xuk##84743
turnin Is This One of Yours?##35036 |goto 46.20,55.09
accept What the Bony Xuk?##35038 |goto 46.20,55.09
accept Xuk Me, Right?##35202 |goto 46.20,55.09
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
stickystart "gorencrystals"
step
kill Boneyard Gorger##81206+, Boneyard Tunneler##81518+
|tip Get close to the rumbling fissures on the ground to get a group of Boneyard Gorgers to spawn, if you need more mobs to kill.
collect 9 Goren Shell##112786 |q Xuk Me, Right?##35202/1 |goto 45.23,52.39
step
label "gorencrystals"
clicknpc Longtooth Gorger##83489+
|tip They look like dead bodies on the ground around this area.
collect 25 Goren Crystal##112911 |q What the Bony Xuk?##35038/1 |goto 45.23,52.39
step
_Run up_ the path |goto Gorgrond 45.0,55.3 < 20 |only if walking
talk Rexxar##80856
turnin Bad at Breaking##35037 |goto 46.03,54.75
turnin Nisha's Vengeance##35934 |goto 46.03,54.75
turnin The Gronn Strategy##35925 |goto 46.03,54.75
step
talk Bony Xuk##84743
turnin What the Bony Xuk?##35038 |goto 46.20,55.09
turnin Xuk Me, Right?##35202 |goto 46.20,55.09
accept Xuk It!##35041 |goto 46.20,55.09
step
use Goren Disguise##112958
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the First Tunnel Leads |q Xuk It!##35041/1 |goto 46.87,55.37
step
clicknpc Bluff Rylak##86022
|tip It looks like a large two-headed winged creature laying on the ground.
Consume the Rylak |q Xuk It!##35041/2 |goto Gorgrond 45.8,50.4
step
use Goren Disguise##112958
|tip Make sure your Goren Disguise is still active.
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
See Where the Second Tunnel Leads |q Xuk It!##35041/3 |goto Gorgrond/0 45.8,50.4
See Where the Third Tunnel Leads |q Xuk It!##35041/4 |goto Gorgrond/0 45.8,50.4
step
use Goren Disguise##112958
|tip Make sure your Goren Disguise is still active.
clicknpc Grom'kar Messenger##84503
|tip It looks like a dead brown orc laying on the ground.
collect Grom'kar Dispatch##114963 |q Xuk It!##35041/5 |goto 43.16,42.29
step
click Goren Tunnel##236140
|tip It looks like a raised mound of dirt.
Take the Tunnel Back to Breaker's Crown |q Xuk It!##35041/6 |goto 43.04,42.49
step
talk Rexxar##80856
turnin Xuk It!##35041 |goto Gorgrond/0 46.0,54.7
accept Leave Every Soldier Behind##35129 |goto Gorgrond/0 46.0,54.7
accept Fair Warning##35128 |goto Gorgrond/0 46.0,54.7
step
talk Nisha##81674 |goto 45.88,54.97
Select _Ride Nisha to Fissure of Fury._
Fly to Fissure of Fury |goto 43.95,48.77 < 20 |noway |c
|only if havequest(35128) or havequest(35129)
step
talk Bony Xuk##84748
accept Zero Xuks Given##35247 |goto Gorgrond/0 43.9,48.9
step
talk Bony Xuk##84748
Tell him _"You may commune with Gro the Uncreator."_
Watch the cutscene
Speak to Bony Xuk |q Zero Xuks Given##35247/1 |goto Gorgrond/0 43.9,48.9
step
talk Spirit of Bony Xuk##85980
turnin Zero Xuks Given##35247 |goto Gorgrond/0 44.1,48.8
accept Get the Xuk Outta Here!##36832 |goto Gorgrond/0 44.1,48.8
stickystart "ogronspinecrushers"
step
_Continue_ following the path down |goto Gorgrond/18 39.7,41.8 < 30 |walk
talk Corporal Thukmar##81213
|tip He's at the bottom of the cave. Follow the spiral path down.
_Put the Corporal out of his misery._
Find Corporal Thukmar |q Leave Every Soldier Behind##35129/1 |goto Gorgrond/19 45.0,85.4
step
click Thukmar's Research##233594
|tip It's a large book on the ground.
collect Thukmar's Intel##113629 |q Leave Every Soldier Behind##35129/2 |goto Gorgrond/19 45.0,85.4
step
kill Borogahn##81043 |q Fair Warning##35128/2 |goto  Gorgrond/19 31.3,74.9
step
label "ogronspinecrushers"
kill 8 Ogron Spinecrusher##81240 |q Fair Warning##35128/1 |goto Gorgrond/19 55.3,80.2
step
click Goren Tunnel##235115
|tip It looks like a raised mound of dirt
accept A Great Escape##35210 |goto Gorgrond/19 35.18,67.64
step
click Goren Tunnel##235115
|tip It looks like a raised mound of dirt.
Take the Tunnel to Rexxar |q A Great Escape##35210/1 |goto Gorgrond/19 34.6,66.6
step
talk Rexxar##84131
turnin Leave Every Soldier Behind##35129 |goto Gorgrond 43.9,48.9
turnin Fair Warning##35128 |goto Gorgrond 43.9,48.9
turnin A Great Escape##35210 |goto Gorgrond 43.9,48.9
accept Eye in the Sky##35139 |goto Gorgrond 43.9,48.9
step
talk Nisha##83933
_Place your hand on Nisha's head._
Scout with Nisha |q Eye in the Sky##35139/1 |goto 43.86,48.86
step
talk Rexxar##84131
turnin Eye in the Sky##35139 |goto 43.94,48.83
accept Chains of Iron##35136 |goto 43.94,48.83
step
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 44.7,48.2 < 15
kill 5 Canyon Boulderbreaker##81246 |q Bonus Objective: Valley of Destruction##36480/1 |goto 44.69,47.82
kill 20 Goren Nibbler##81775 |q Bonus Objective: Valley of Destruction##36480/2 |goto 46.07,47.61
Break #15# Goren Eggs |q Bonus Objective: Valley of Destruction##36480/3 |goto 46.22,47.20
|tip They look like clusters of gray-ish eggs on the ground around this area. Walk on them to break them.
step
_Follow_ the path |goto Gorgrond 48.1,45.8 < 20 |only if walking
kill Captain Brak##81254 |q Chains of Iron##35136/1 |goto 49.22,44.81
|tip You will need to fight through waves of enemies before she appears. You will have help killing the waves, though.
step
click Heart of the Magnaron##231775
|tip It's a giant disk with a yellow core laying against the mountainside.
collect Heart of the Magnaron##112680 |q Chains of Iron##35136/2 |goto 49.73,43.85
step
_Run up_ the dirt hill |goto Gorgrond/0 50.2,43.9 < 20 |only if walking
_Go up and around_ to the grassy area |goto 51.3,44.4 < 20 |only if walking
talk Rakthoth##81731
turnin Reagents from Rakthoth##33694 |goto 49.36,49.70
accept Plant Pruning##33689 |goto 49.35,49.70
accept Ambassador to the Ancient##33685 |goto 49.35,49.70
stickystart "primal_growthFC"
step
talk Birchus##81723
Tell him _"Thank you for not killing me. What duty have you failed?"_
Talk to Birchus |q Ambassador to the Ancient##33685/1 |goto Gorgrond/0 50.3,47.5
step
label "primal_growthFC"
kill Primal Growth##81769+, Dionor Seedpriest##81721+
Slay #12# Dionor Defenders |q Plant Pruning##33689/1 |goto Gorgrond/0 51.2,45.5
step
talk Rakthoth##85089
|tip He's inside this small cave.
turnin Ambassador to the Ancient##33685 |goto 51.3,48.0
turnin Plant Pruning##33689 |goto 51.3,48.0
accept Beatface vs. Boulder##33662 |goto 51.27,47.95
step
Go through _rock archway_ |goto 50.26,49.73 < 10 |only if walking
_Run up_ to the _Large Boulder_ |goto 50.59,51.44 < 5 |only if walking
click Large Boulder##
|tip It's a large rock blocking the path.
Breach the Saberon Camp |q Beatface vs. Boulder##33662/1 |goto 52.22,48.77
step
talk Rakthoth##82222
turnin Beatface vs. Boulder##33662 |goto 50.91,51.43
accept Steamscar "Reagents"##33661 |goto 50.91,51.43
step
click Saberon Stash##234474
|tip It's a pot covered with leather tied by a rope.
accept The Sacking of the Saberon##33660 |goto Gorgrond/0 51.0,51.6
stickystart "saberon_heartsFC"
step
click Saberon Stash##234474
|tip They look like pots covered with leather tied by a rope on the ground around this area. They can also be inside the small caves.
collect 8 Saberon Herb Bundle##115442 |q The Sacking of the Saberon##33660/1 |goto Gorgrond/0 50.7,53.2
step
label "saberon_heartsFC"
kill Steamscar Warrior##81738+, Steamscar Primalist##81747+
collect 10 Saberon Heart##115443 |q Steamscar "Reagents"##33661/1
step
_Go up_ the hill |goto Gorgrond/0 52.2,50.5 |only if walking
talk Rakthoth##82225
turnin Steamscar "Reagents"##33661 |goto 52.9,51.8
turnin The Sacking of the Saberon##33660 |goto 52.9,51.8
accept Taking the Death Bloom##33695 |goto Gorgrond/0 52.9,51.8
step
_Enter_ the cave |goto Gorgrond/0 53.7,51.8 < 20 |walk
kill Smokemaster Snarl##81749
Acquire the Death Bloom |q Taking the Death Bloom##33695/1 |goto Gorgrond/0 54.3,52.6
step
talk Birchus##82302
turnin Taking the Death Bloom##33695 |goto Gorgrond/0 50.3,47.5
accept Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
|tip Wait for the ritual to complete.
turnin Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
step
talk Limbflayer##76688
turnin The Sparring Arena##35152 |goto Gorgrond 46.3,69.7
step
talk Durotan##74594
turnin Chains of Iron##35136 |goto 46.10,70.17
stickystart "infestedFC"
stickystart "squish_toxicFC"
step
accept Bonus Objective: The Razorbloom##36500
kill Voice of Iyu##81634 |q Bonus Objective: The Razorbloom##36500/2 |goto 49.42,71.64
step
label "infestedFC"
accept Bonus Objective: The Razorbloom##36500
kill Infested Orc##81617+, Infested Behemoth##82841+
Slay #12# Infested |q Bonus Objective: The Razorbloom##36500/1 |goto Gorgrond 48.3,71.4
step
label "squish_toxicFC"
accept Bonus Objective: The Razorbloom##36500
Squish #25# Toxic Slimemold |q Bonus Objective: The Razorbloom##36500/3 |goto Gorgrond 48.3,71.4
|tip They are small green slimes all over the area in groups.  Walk on them to squish them.
stickystart "lernaea_vilescaleFC"
step
_Jump down_ and follow the path |goto Gorgrond 47.8,70.5 < 20 |only if walking
accept Bonus Objective: Mistcreep Mire##36563
kill 25 Hydra Egg##85786 |q Bonus Objective: Mistcreep Mire##36563/2 |goto Gorgrond/0 52.5,67.6
step
label "lernaea_vilescaleFC"
accept Bonus Objective: Mistcreep Mire##36563
kill 5 Lernaea Vilescale##85693 |q Bonus Objective: Mistcreep Mire##36563/1 |goto Gorgrond/0 51.7,67.7
step
talk Grulkor##81218
turnin Skulltakers in Crimson Fen##35667 |goto 54.5,66.7
accept Basic Skulltaking##35016 |goto Gorgrond/0 54.5,66.7
step
talk Dying Skulltaker##81185
accept Skulltaker's Revenge##35017 |goto 54.83,65.27
stickystart "skulltakersFC"
step
kill 7 Fungal Lurcher##80714 |q Skulltaker's Revenge##35017/1 |goto Gorgrond/0 56.1,61.8
collect Glowing Red Pod##112378 |n
Use the Glowing Red Pod |use Glowing Red Pod##112378
accept Mysterious Pod##35021
step
label "skulltakersFC"
clicknpc Dead Skulltaker##80807+
|tip They look like dead orcs on the ground around this area.
collect 5 Skulltaker Skull##112640 |q Basic Skulltaking##35016/1 |goto Gorgrond/0 56.4,63.0
step
talk Grulkor##80757
turnin Basic Skulltaking##35016 |goto Gorgrond/0 57.2,62.0
turnin Skulltaker's Revenge##35017 |goto 57.2,62.0
turnin Mysterious Pod##35021 |goto 57.2,62.0
accept Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
accept The Secret of the Fungus##35029 |goto 57.2,62.0
stickystart "coveredshamblerFC"
step
click Glowing Mushroom##231769
|tip They look like large brown-capped mushrooms around this area.
collect 5 Glowing Mushroom##112672 |q The Secret of the Fungus##35029/1 |goto Gorgrond/0 57.7,60.7
step
label "coveredshamblerFC"
kill 6 Fungus Covered Shambler##80721 |q Clearing the Way##35027/1 |goto Gorgrond/0 57.7,60.7
step
talk Grulkor##80757
turnin Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
turnin The Secret of the Fungus##35029 |goto 57.2,62.0
accept A Grim Harvest##35030 |goto Gorgrond/0 57.2,62.0
accept A Heartfelt Search##35031 |goto 57.2,62.0
step
kill Fungal Stomper##80739
collect 3 Enlarged Stomper Spore Pod##112394 |q A Grim Harvest##35030/1 |goto Gorgrond/0 58.6,63.2
step
click Drained Fungal Heart##233046
|tip It looks like an oversized red and orange flower blossom.
Inspect the Strange Fungus Site|q A Heartfelt Search##35031/1 |goto 58.92,62.53
step
talk Grulkor##81241
turnin A Grim Harvest##35030 |goto Gorgrond/0 58.9,62.5
turnin A Heartfelt Search##35031 |goto 58.9,62.5
accept Heart of the Fen##35040 |goto Gorgrond/0 58.9,62.5
step
kill Grulkor##86157
Stop Grulkor |q Heart of the Fen##35040/1 |goto Gorgrond/0 61.2,61.9
stickystart "weald_stingersFC"
stickystart "thorny_stabbersFC"
step
_Run out_ of the area and follow this path |goto Gorgrond/0 59.5,58.3 < 20 |only if walking
_Jump up_ the small hill to the next path |goto 59.5,53.4 < 20 |only if walking
accept Bonus Objective: Iyun Weald##36571
|tip Avoid Biolante as you do this quest.  It's an elite that patrols around this area.
clicknpc Thorny Leafling##85809
|tip They are small enemies on the ground around this area.
Punt #20# Thorny Leaflings |q Bonus Objective: Iyun Weald##36571/2 |goto Gorgrond/0 60.9,54.7
step
label "weald_stingersFC"
accept Bonus Objective: Iyun Weald##36571
kill 6 Weald Stinger##85807 |q Bonus Objective: Iyun Weald##36571/3 |goto Gorgrond/0 60.9,54.7
step
label "thorny_stabbersFC"
accept Bonus Objective: Iyun Weald##36571
kill 12 Thorny Stabber##80744 |q Bonus Objective: Iyun Weald##36571/1 |goto Gorgrond/0 60.9,54.7
step
talk Marrow##82732
turnin Heart of the Fen##35040 |goto 46.29,69.98
step
talk Durotan##74594
accept Strike While the Iron is Hot##36573 |goto 46.10,70.19
step
talk Grinslicer##81055 |goto Gorgrond/0 46.0,69.2
Tell him _"I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q Strike While the Iron is Hot##36573/1 |goto 45.98,69.26
Enter the scenario |goto Gorgrond 45.1,18.5 < 50 |noway |c |only if havequest(36573)
step
|confirm |only if havequest(36573)
step
talk Draka##86401
Tell her _"Let's go."_
Follow Draka
Watch the dialogue
Confront Commander Gar |scenariogoal 1/25388 |goto Gorgrond/0 44.7,17.8
step
Use the Artifact to Eliminate your Enemies |scenariogoal 25389 |goto Gorgrond 44.4,16.7
|tip It's a button that appears in the middle of your screen.  Use it whenever you can when enemies are near.
step
Defeat the Incoming Enemies |scenariogoal 25390 |goto Gorgrond 44.3,16.2
|tip Continue using your Access Artifact skill whenever you can.
step
kill Goc##85580 |goto Gorgrond 44.0,15.6
|tip Continue using your Access Artifact skill whenever you can.  Your helpers will do most of the work killing Goc, so just help them.
Defeat Goc |scenariogoal 25391 |goto Gorgrond 44.0,15.6
step
kill Commander Gar##85571 |goto Gorgrond 44.1,15.7
|tip You will no longer be able to use your Access Artifact skill.
Defeat Commander Gar |scenariogoal 25392 |goto Gorgrond 44.1,15.7
Complete the Iron Approach |q Strike While the Iron is Hot##36573/2 |goto 44.30,16.58
step
_Follow_ the path |goto Gorgrond 44.5,19.3 < 30 |only if walking
talk Nisha##84700
fpath Iron Docks |goto Gorgrond 43.1,20.2
step
talk Durotan##74594
turnin Strike While the Iron is Hot##36573 |goto 46.10,70.20
stickystart "bloom_weaversFC"
stickystart "dew_mastersFC"
step
_Ride along_ the stone road |goto 45.1,73.5 < 30 |only if walking
_Enter_ Evermoon Springs through the vines |goto 44.7,79.2 < 20 |only if walking
accept Bonus Objective: Evermorn Springs##36504
kill Infested Ogron##82062 |q Bonus Objective: Evermorn Springs##36504/2 |goto Gorgrond 42.8,80.6
step
label "bloom_weaversFC"
accept Bonus Objective: Evermorn Springs##36504
kill 10 Bloom Weaver##81575 |q Bonus Objective: Evermorn Springs##36504/1 |goto Gorgrond/0 42.1,79.7
|tip They are all around this area. Be sure to check in the tree houses.
step
label "dew_mastersFC"
accept Bonus Objective: Evermorn Springs##36504
_Go up_ the grassy path |goto Gorgrond/0 42.3,82.2 < 20 |only if walking
_Enter_ The Compost Heap |goto 40.7,83.8 < 20 |only if walking
kill 3 Dew Master##81553 |q Bonus Objective: Evermorn Springs##36504/3 |goto Gorgrond 39.6,81.7
step
_Travel through_ the vines and up the path |goto Gorgrond/0 42.1,86.1 < 20 |only if walking
talk Chucklespine##84495
fpath Evermorn Springs |goto 41.3,87.2
stickystart "tailthrashersFC"
stickystart "jungle_axebreaksFC"
step
_Follow the path_ up and over |goto Gorgrond/0 42.3,88.2 < 20 |only if walking
_Jump down_ here |goto Gorgrond/0 43.2,90.4 < 20 |only if walking
_Follow_ the path |goto Gorgrond/0 43.9,90.7 < 20 |only if walking
_Enter_ the cave |goto Gorgrond 44.7,90.1 < 10 |walk
accept Bonus Objective: Tailthrasher Basin##36520
kill Skull Thrash## |q Bonus Objective: Tailthrasher Basin##36520/3 |goto Gorgrond 44.4,88.8
step
label "tailthrashersFC"
accept Bonus Objective: Tailthrasher Basin##36520
kill Tailthrasher Brute##85724+, Tailthrasher Stalker##85718+, Tailthrasher Ambusher##85703+, Tailthrasher Vinebender##85725+
Slay #12# Tailthrasher Saberon |q Bonus Objective: Tailthrasher Basin##36520/1 |goto Gorgrond 44.9,90.9
step
label "jungle_axebreaksFC"
accept Bonus Objective: Tailthrasher Basin##36520
clicknpc Rope Spike##85810
|tip They look like bundles of wooden sticks standing upright around this area, with various colored toucan birds flying in circles above them.
Free #6# Jungle Axebreaks |q Bonus Objective: Tailthrasher Basin##36520/2 |goto Gorgrond 44.9,90.9
step
talk Windscreamer##84508
fpath Bastion Rise |goto Gorgrond/0 47.4,90.8
stickystart "frenzied_podlingsFC"
stickystart "ancient_jarsFC"
step
_Go along_ the path and leave Deeproot |goto Gorgrond/0 48.3,86.6 < 20 |only if walking
_Continue_ following the road |goto Gorgrond/0 48.3,84.8 < 30 |only if walking
_Follow the cobblestone road_ into the Ruins |goto 49.0,81.1 < 20 |only if walking
_Run up_ the stairs |goto Gorgrond/0 51.1,80.5 < 20 |only if walking
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q Bonus Objective: Ruins of the First Bastion##35881/3 |goto Gorgrond 52.1,81.3
step
label "frenzied_podlingsFC"
accept Bonus Objective: Ruins of the First Bastion##35881
kill Frenzied Spitter##83450+, Frenzied Forager##83449+
Slay #20# Frenzied Podlings |q Bonus Objective: Ruins of the First Bastion##35881/1 |goto Gorgrond 50.4,80.0
step
label "ancient_jarsFC"
accept Bonus Objective: Ruins of the First Bastion##35881
click Ancient Ogre Hoard Jar##233296
|tip They look like brown and white vases on the ground around this area.
Loot #8# Ancient Jars |q Bonus Objective: Ruins of the First Bastion##35881/2 |goto Gorgrond 50.4,80.0
stickystart "spider_egg_sacsFC"
stickystart "palesFC"
step
_Go over_ the hill and leave the ruins |goto Gorgrond/0 50.5,78.4 < 20 |only if walking
_Climb_ the rocky hill |goto Gorgrond/0 51.7,77.3 < 20 |only if walking
_Enter_ The Forgotten Caves |goto 51.3,77.9 < 10 |walk
_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10 |walk
_Jump up_ the path next to the cave pillar |goto Gorgrond 53.4,79.5 < 10 |walk
accept Bonus Objective: The Forgotten Caves##34724
kill Gorg the Host##76496 |q Bonus Objective: The Forgotten Caves##34724/3 |goto Gorgrond/0 53.7,79.5
step
label "spider_egg_sacsFC"
accept Bonus Objective: The Forgotten Caves##34724
kill 15 Spider Egg Sac##76548 |q Bonus Objective: The Forgotten Caves##34724/2 |goto Gorgrond/0 52.3,78.9
|tip They look like big white wriggling cocoons all around inside this cave.
step
label "palesFC"
accept Bonus Objective: The Forgotten Caves##34724
kill Pale Spiderwalker##76534+, Pale Flinger##76465+
Slay #12# Pales |q Bonus Objective: The Forgotten Caves##34724/1 |goto Gorgrond/0 51.5,78.8
stickystart "pollen_podsFC"
stickystart "tangleheart_cultivatorsFC"
step
_Leave_ The Forgotten Caves |goto 51.3,77.9 < 20 |walk
_Run over_ the bumpy terrain |goto Gorgrond/0 53.5,74.9 < 30 |only if walking
_Run up_ the path |goto Gorgrond/0 54.9,71.2 < 30 |only if walking
_Go through_ the path of huge thorny vines |goto Gorgrond 56.1,71.5 < 20 |only if walking
accept Bonus Objective: Tangleheart##36564
kill Ontogen the Harvester##82372 |q Bonus Objective: Tangleheart##36564/3 |goto Gorgrond 59.9,71.1
step
label "pollen_podsFC"
accept Bonus Objective: Tangleheart##36564
click Pollen Pod##235903
|tip They are yellow-orange spiky looking plant bulbs on the ground around this area.
Destroy #10# Pollen Pods |q Bonus Objective: Tangleheart##36564/2 |goto Gorgrond/0 60.6,67.0
step
label "tangleheart_cultivatorsFC"
accept Bonus Objective: Tangleheart##36564
kill 15 Tangleheart Cultivator##82322 |q Bonus Objective: Tangleheart##36564/1 |goto Gorgrond/0 61.7,64.5
|tip They aren't heavily packed together, so just run around this whole area and kill them when you find them.
step
talk Durotan##74594
accept News from Talador##36494 |goto 46.10,70.18
step
talk Rokhan##78487
turnin News from Talador##36494 |goto Frostwall/0 45.9,42.7
accept It's a Matter of Strategy##34681 |goto Frostwall/0 45.9,42.7
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9 < 5
Tell him _"Take me to my base in Talador."_
Fly to Vol'jin's Pride, Talador |goto Talador/0 72.0,28.3 |noway |c |q 34681
step
talk Foreman Grobash##79176
turnin It's a Matter of Strategy##34681 |goto Talador/0 71.1,29.8 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)"
step
label "lowlands_lumber_yard"
fpath Beastwatch |goto Gorgrond/0 46.0,69.2
step
home Beastwatch |q Power of the Genesaur##35416 |future |goto Gorgrond/0 46.0,69.7
step
talk Penny Clobberbottom##85077
accept Tangleheart##35707 |goto Gorgrond 46.4,69.7
step
_Follow_ the path down |goto Gorgrond/0 46.9,69.9 |only if walking
talk Draka##74593
turnin The Razorbloom##36474 |goto 46.6,71.5
accept The Infested##35400 |goto Gorgrond/0 46.6,71.5
step
talk Kaz the Shrieker##74606
accept Mossy Fate##35399 |goto Gorgrond/0 46.6,71.5
accept The Voice of Iyu##35402 |goto 46.6,71.5
stickystart "ST1_LLY"
step
clicknpc Meka the Face Chewer##82215
|tip Her body is hanging from a vine.
Find Meka the Face Chewer |q Mossy Fate##35399/1 |goto Gorgrond/0 47.9,73.0
step
clicknpc Torg Earkeeper##82193
|tip His body is laying on the ground next to a green bush.
Find Torg Earkeeper |q Mossy Fate##35399/3 |goto Gorgrond/0 47.3,73.4
step
clicknpc Chag the Noseless##82217
|tip His body is laying on the ground next to a pool of water.
Find Chag the Noseless |q Mossy Fate##35399/2 |goto Gorgrond/0 48.2,73.8
step
_Follow_ the path |goto Gorgrond/0 48.9,72.9 < 10 |only if walking
kill Voice of Iyu##81634 |q The Voice of Iyu##35402/1 |goto 49.5,71.7
step
click Enriched Seeds##235129
|tip It's a wooden bowl with seeds in it next to the building that Iyu is in.
accept Super Seeds##35406 |goto Gorgrond/0 49.5,70.9
step
label "ST1_LLY"
kill 6 Infested Orc##81617, Infested Behemoth##82841 |q The Infested##35400/1 |goto Gorgrond/0 47.4,72.6
|tip They are all around this area.
step
talk Kaz the Shrieker##74606
turnin Mossy Fate##35399 |goto Gorgrond/0 46.6,71.5
turnin The Voice of Iyu##35402 |goto 46.6,71.5
turnin Super Seeds##35406 |goto 46.6,71.5
accept Pollen Power##35429 |goto 46.6,71.5
step
talk Draka##74593
turnin The Infested##35400 |goto 46.6,71.5
accept Bushwhacker##35432 |goto Gorgrond/0 46.6,71.5
step
talk Kaz the Shrieker##74606
accept Cutter##35430 |goto Gorgrond/0 46.6,71.5
step
_Follow_ the path down |goto Gorgrond/0 46.0,73.3 < 20 |only if walking
from Thicket Ravager##81561, Golden Pollinator##81557
collect 20 Potent Pollen##112909 |q Pollen Power##35429/1 |goto Gorgrond/0 45.6,80.7
stickystart "podlings_LLY"
stickystart "jars_LLY"
step
_Follow_ the cobblestone road |goto Gorgrond 48.6,81.3 < 20 |only if walking
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q Bonus Objective: Ruins of the First Bastion##35881/3 |goto Gorgrond 52.1,81.3
step
label "podlings_LLY"
accept Bonus Objective: Ruins of the First Bastion##35881
kill Frenzied Spitter##83450+, Frenzied Forager##83449+
Slay #20# Frenzied Podlings |q Bonus Objective: Ruins of the First Bastion##35881/1 |goto Gorgrond 50.4,80.0
step
label "jars_LLY"
accept Bonus Objective: Ruins of the First Bastion##35881
click Ancient Ogre Hoard Jar##233296
|tip They look like brown and white vases on the ground around this area.
Loot #8# Ancient Jars |q Bonus Objective: Ruins of the First Bastion##35881/2 |goto Gorgrond 50.4,80.0
step
_Cross through_ the two hills |goto Gorgrond 50.5,78.3 < 20 |only if walking
_Follow_ the path up the hill |goto Gorgrond 51.0,77.0 < 20 |only if walking
_Enter_ the cave |goto Gorgrond 51.4,77.6 < 10 |walk
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.72
stickystart "bonuscaves_LLY"
stickystart "killpale_LLY"
step
accept Bonus Objective: The Forgotten Caves##34724
_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10 |walk
_Run or jump_ up the path next to the cave pillar |goto Gorgrond 53.4,79.5 < 10 |walk
kill Gorg the Host##76496 |q Bonus Objective: The Forgotten Caves##34724/3 |goto Gorgrond/0 53.7,79.5
step
label "bonuscaves_LLY"
accept Bonus Objective: The Forgotten Caves##34724
kill 15 Spider Egg Sac##76548 |q Bonus Objective: The Forgotten Caves##34724/2 |goto Gorgrond/0 51.5,78.8
|tip They looks like big white wriggling cocoons.
step
label "killpale_LLY"
accept Bonus Objective: The Forgotten Caves##34724
kill Pale Spiderwalker##76534+, Pale Flinger##76465+
|tip These are found all around this cave.
Slay #12# Pales |q Bonus Objective: The Forgotten Caves##34724/1 |goto Gorgrond/0 51.5,78.8
step
_Leave_ Beastwatch |goto Gorgrond 45.7,70.5 < 20 |only if walking
_Run along_ the stone path |goto 45.4,74.6 < 20 |only if walking
_Follow_ the path into the opening |goto Gorgrond/0 44.0,79.6 < 20 |only if walking
_Go up_ the hill |goto 43.5,82.7 < 20 |only if walking
talk Cutter##82254
turnin Cutter##35430 |goto 43.7,84.0
accept A Green Ogron?##36482 |goto 43.7,84.0
accept We Burn the Dead##35487 |goto Gorgrond/0 43.7,84.0
stickystart "ST2_LLY"
stickystart "bloomweaver_LLY"
step
kill Infested Ogron##82062 |q A Green Ogron?##36482/1 |goto Gorgrond/0 42.8,80.6
step
label "ST2_LLY"
clicknpc Mulching Body##85563
|tip They are all around the area. Check inside of the huts as well.
Burn #6# Bodies |q We Burn the Dead##35487/1 |goto Gorgrond/0 43.0,78.9
step
label "bloomweaver_LLY"
kill 7 Bloom Weaver##81575 |q Bushwhacker##35432/1 |goto Gorgrond/0 43.0,78.9
step
Next to you:
talk Cutter##82254
|tip He will be standing next to you as long as you are in Evermorn Springs.
turnin A Green Ogron?##36482 |goto Gorgrond/0 42.7,81.5
turnin We Burn the Dead##35487 |goto Gorgrond/0 42.7,81.5
accept Secrets of the Botani##35536 |goto Gorgrond/0 42.7,81.5
step
_Go up_ the hill |goto Gorgrond/0 42.4,82.0 < 20 |only if walking
_Pass through_ the opening |goto 41.1,83.7 < 20 |only if walking
talk Draka##82233
turnin Bushwhacker##35432 |goto Gorgrond/0 42.1,85.8
step
talk Kaz the Shrieker##82228
turnin Secrets of the Botani##35536 |goto 42.1,85.9
turnin Pollen Power##35429 |goto 42.1,85.9
accept The Life Spring##35434 |goto Gorgrond/0 42.1,85.9
step
talk Draka##82233
accept Cut Them Down##35433 |goto Gorgrond/0 42.1,85.8
step
_Follow_ the path up |goto Gorgrond/0 41.9,86.9 < 20 |only if walking
fpath Evermorn Springs |goto Gorgrond/0 41.3,87.2
stickystart "dewmaster_LLY"
step
_Follow_ the path through the field |goto Gorgrond/0 41.2,84.4 < 20 |only if walking
_Enter_ the watery area |goto Gorgrond/0 39.9,82.1 < 20 |only if walking
kill Utrophis##75094
collect Waters of Utrophis##112905 |q The Life Spring##35434/1 |goto Gorgrond/0 40.6,81.8
step
label "dewmaster_LLY"
kill 3 Dew Master##81553+ |q Cut Them Down##35433/1 |goto 39.9,82.0
step
_Go down_ the path |goto Gorgrond/0 40.2,83.3 < 20 |only if walking
talk Kaz the Shrieker##82228
turnin The Life Spring##35434 |goto 42.1,85.9
step
talk Draka##82233
turnin Cut Them Down##35433 |goto 42.0,85.8
step
talk Kaz the Shrieker##82228
accept Thieving Dwarves##36488 |goto Gorgrond/0 42.1,85.9
stickystart "ST3_LLY"
step
_Go up_ the hill |goto Gorgrond/0 41.9,87.1 < 20 |only if walking
_Go through_ the narrow path |goto Gorgrond/0 42.8,88.8 < 20 |only if walking
accept Bonus Objective: Tailthrasher Basin##36520
clicknpc Rope Spike##85810
Free #6# Jungle Axebeak |q Bonus Objective: Tailthrasher Basin##36520/2 |goto Gorgrond/0 45.2,90.6
step
_Enter_ the cave |goto Gorgrond/0 44.7,90.1 < 20 |walk
kill Skull Thrash##85733 |q Bonus Objective: Tailthrasher Basin##36520/3 |goto Gorgrond/0 44.4,88.8
step
label "ST3_LLY"
accept Bonus Objective: Tailthrasher Basin##36520
kill 12 Tailthrasher Stalker##85718, Tailthrasher Ambusher##85703 |q Bonus Objective: Tailthrasher Basin##36520/1 |goto Gorgrond/0 43.8,92.4
step
talk Cutter##85601
turnin Thieving Dwarves##36488 |goto Gorgrond/0 46.5,93.6
accept Will of the Genesaur##35509 |goto 46.48,93.57
accept Down the Goren Hole##35507 |goto 46.48,93.57
stickystart "ST4_LLY"
step
_Go through_ the passage |goto Gorgrond/0 47.8,93.6 < 20 |only if walking
_Enter_ the building |goto Gorgrond/0 47.7,94.4 < 20 |walk
click Doomshot##232492
|tip A large metal casing in the shape of a bullet.
accept Doomshot##35501 |goto Gorgrond/0 48.0,94.4
step
click Doomshot##231954
|tip They look like large metal casings in the shape of a bullet, on the ground all around inside this building.
collect 4 Doomshot##112990 |q Doomshot##35501/1 |goto Gorgrond/0 48.1,94.4
step
_Follow_ the path down |goto Gorgrond/0 48.2,96.1 < 15 |walk
click Will of Genesaur##231961
|tip It's a box shape with two handles and a glowing glass dome on top.
collect Will of the Genesaur##112993 |q Will of the Genesaur##35509/1 |goto Gorgrond/0 48.3,94.2
step
label "ST4_LLY"
kill 7 Acidmouth Breacher##81690 |q Down the Goren Hole##35507/1 |goto Gorgrond/0 48.5,95.5
step
click Weapon Loader##232489
|tip A large wooden crate filled with munitions.
turnin Doomshot##35501 |goto 47.9,94.3
step
talk Cutter##82334
turnin Will of the Genesaur##35509 |goto Gorgrond/0 48.05,94.15
turnin Down the Goren Hole##35507 |goto Gorgrond/0 48.05,94.15
accept Iyu##35510 |goto Gorgrond/0 48.05,94.15
step
_Follow_ the path up and out |goto Gorgrond/0 48.5,95.8 < 20 |walk
_Leave_ the cave |goto Gorgrond/0 48.3,93.9 < 20 |walk
kill Iyu##78819 |q Iyu##35510/1 |goto Gorgrond/0 47.5,92.5
step
talk Draka##82337
turnin Iyu##35510 |goto Gorgrond/0 47.7,93.3
accept Power of the Genesaur##35416 |goto 47.7,93.3
step
talk Kaz the Shrieker##82338
accept Kaz the Shrieker##35511 |goto Gorgrond/0 47.8,93.3
step
talk Durotan##74594
turnin Power of the Genesaur##35416 |goto 46.1,70.2
step
talk Marrow##82732
accept Reagents from Rakthoth##33694 |goto Gorgrond/0 46.3,70.0
accept Skulltakers in Crimson Fen##35667 |goto Gorgrond/0 46.3,70.0
step
_Jump down_ and follow the path |goto Gorgrond 47.8,70.5 < 20 |only if walking
accept Bonus Objective: Mistcreep Mire##36563 |goto Gorgrond/0 50.3,69.4
kill 25 Hydra Egg##85786 |q Bonus Objective: Mistcreep Mire##36563/2 |goto Gorgrond/0 52.5,67.6
kill 5 Lernaea Vilescale##85693 |q Bonus Objective: Mistcreep Mire##36563/1 |goto Gorgrond/0 51.7,67.7
step
talk Grulkor##81218
turnin Skulltakers in Crimson Fen##35667 |goto 54.4,66.6
accept Basic Skulltaking##35016 |goto Gorgrond/0 54.4,66.6
stickystart "skulltaker_LLY"
step
talk Dying Skulltaker##81185
accept Skulltaker's Revenge##35017 |goto 54.83,65.27
step
clicknpc Dead Skulltaker##80807
|tip They are orc corpses laying on the ground.
collect 5 Skulltaker Skull##112640 |q Basic Skulltaking##35016/1 |goto Gorgrond/0 56.4,63.0
step
label "skulltaker_LLY"
kill 7 Fungal Lurcher##80714 |q Skulltaker's Revenge##35017/1 |goto Gorgrond/0 56.1,61.8
collect Glowing Red Pod##112378 |n
use Glowing Red Pod##112378
accept Mysterious Pod##35021
step
talk Grulkor##80757
turnin Basic Skulltaking##35016 |goto Gorgrond/0 57.2,62.0
turnin Skulltaker's Revenge##35017 |goto 57.2,62.0
turnin Mysterious Pod##35021 |goto 57.2,62.0
accept Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
accept The Secret of the Fungus##35029 |goto 57.2,62.0
stickystart "fungusshambler_LLY"
step
click Glowing Mushroom##231769
|tip They look like pale orange and white mushrooms found along the ground.
collect 5 Glowing Mushroom##112672 |q The Secret of the Fungus##35029/1 |goto Gorgrond/0 57.7,60.7
step
label "fungusshambler_LLY"
kill 6 Fungus Covered Shambler##80721 |q Clearing the Way##35027/1 |goto Gorgrond/0 57.7,60.7
step
talk Grulkor##80757
turnin Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
turnin The Secret of the Fungus##35029 |goto 57.2,62.0
accept A Grim Harvest##35030 |goto Gorgrond/0 57.2,62.0
accept A Heartfelt Search##35031 |goto 57.2,62.0
step
from Fungal Stomper##80739
collect 3 Enlarged Stomper Spore Pod##112394 |q A Grim Harvest##35030/1 |goto Gorgrond/0 58.6,63.2
step
click Drained Fungal Heart##233046
|tip An oversized red and orange flower blossom.
Inspect the Strange Fungus Site |q A Heartfelt Search##35031/1 |goto 58.92,62.53
step
talk Grulkor##81241
turnin A Grim Harvest##35030 |goto Gorgrond/0 58.9,62.5
turnin A Heartfelt Search##35031 |goto 58.9,62.5
accept Heart of the Fen##35040 |goto Gorgrond/0 58.9,62.5
step
kill Grulkor##86157
Stop Grulkor |q Heart of the Fen##35040/1 |goto Gorgrond/0 61.2,61.9
stickystart "stinger_LLY"
stickystart "stabber_LLY"
step
_Run out_ of the area and follow this path |goto Gorgrond/0 59.5,58.3 < 20 |only if walking
_Jump up_ the small hill to the next path |goto 59.5,53.4 < 20 |only if walking
accept Bonus Objective: Iyun Weald##36571 |goto 62.73,53.46
|tip Avoid Biolante as you do this quest. It's an elite that patrols around this area.
clicknpc Thorny Leafling##85809
|tip They are small enemies on the ground around this area.
Punt #20# Thorny Leaflings |q Bonus Objective: Iyun Weald##36571/2 |goto Gorgrond/0 60.9,54.7
step
label "stinger_LLY"
accept Bonus Objective: Iyun Weald##36571
kill 6 Weald Stinger##85807+ |q Bonus Objective: Iyun Weald##36571/3 |goto Gorgrond/0 60.9,54.7
step
label "stabber_LLY"
accept Bonus Objective: Iyun Weald##36571
kill 12 Thorny Stabber##80744+ |q Bonus Objective: Iyun Weald##36571/1 |goto Gorgrond/0 60.9,54.7
step
_Run down_ the small hill |goto Gorgrond 59.3,53.6 < 20 |only if walking
_Continue down_ the path |goto 59.6,57.2 < 20 |only if walking
Make your way _through_ the Crimson Fen |goto Gorgrond 58.4,62.7 < 20 |only if walking
_Continue_ along the path |goto 56.1,63.4 < 20 |only if walking
_Climb up_ the hill |goto 54.3,67.7 < 20 |only if walking
_Go up_ the hill |goto 55.5,71.1 < 20 |only if walking
talk Penny Clobberbottom##82574
turnin Tangleheart##35707 |goto Gorgrond/0 55.9,71.5
accept Growing Wood##35506 |goto Gorgrond/0 55.9,71.5
step
talk Thuldren##84811
accept Lost Lumberjack##35505 |goto Gorgrond/0 55.9,71.6
step
talk Frenna##82569
turnin Lost Lumberjack##35505 |goto Gorgrond/0 57.1,71.9
accept Chapter I: Plant Food##35508 |goto Gorgrond/0 57.1,71.9
accept Chapter II: The Harvest##35527 |goto 57.1,71.9
accept Chapter III: Ritual of the Charred##35524 |goto 57.1,71.9
stickystart "growthsap_LLY"
stickystart "pollenpod_LLY"
stickystart "ST5_LLY"
step
kill Ontogen the Harvester##82372 |q Chapter II: The Harvest##35527/1 |goto Gorgrond/0 59.9,71.1
step
label "growthsap_LLY"
kill Tangled Sapling##82437, Greenbough Ancient##82360, Tangleheart Cultivator##82322
collect 100 Ancient Growth Sap##113136 |q Growing Wood##35506/1 |goto Gorgrond/0 60.2,67.5
step
label "pollenpod_LLY"
click Pollen Pod##232491
|tip Red plants with yellow glowing centers.
Destroy #8# Pollen Pods |q Chapter I: Plant Food##35508/1 |goto Gorgrond/0 60.2,67.5
step
label "ST5_LLY"
kill 4 Greenbough Ancient##82360 |q Chapter III: Ritual of the Charred##35524/1 |goto Gorgrond/0 60.2,67.5
step
talk Penny Clobberbottom##82574
turnin Growing Wood##35506 |goto 60.71,64.78
turnin Chapter I: Plant Food##35508 |goto 60.71,64.78
turnin Chapter II: The Harvest##35527 |goto 60.71,64.78
turnin Chapter III: Ritual of the Charred##35524 |goto 60.71,64.78
step
click Dark Iron Mole Machine##237721 |goto Gorgrond/0 60.7,64.8 < 1
Ride the Dark Iron Mole Machine |invehicle |c |q 35040
step
Arrive at Beastwatch |goto Gorgrond/0 46.4,69.8 < 50 |noway |q 35040
step
talk Penny Clobberbottom##85077
accept Penny For Your Thoughts##36812 |goto 46.36,69.64
step
talk Marrow##82732
turnin Heart of the Fen##35040 |goto 46.29,69.99
stickystart "bonusstonemaul_LLY"
stickystart "bonusstonemaul2_LLY"
step
_Leave_ Beastwatch |goto Gorgrond 45.6,70.7 < 20 |only if walking
Continue through the _rocky ruins_ |goto 44.0,69.7 < 20 |only if walking
_Follow_ the rocky path |goto Gorgrond 43.3,66.9 < 20 |only if walking
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
label "bonusstonemaul_LLY"
accept Bonus Objective: Stonemaul Arena##36566
click Keg of Grog##235916
|tip They look like large wooden barrels laying on the ground around this area and in buildings.
Destroy #15# Grog Kegs |q Bonus Objective: Stonemaul Arena##36566/2 |goto Gorgrond/0 40.2,66.0
step
label "bonusstonemaul2_LLY"
accept Bonus Objective: Stonemaul Arena##36566
kill Stonemaul Guard##75819+, Stonemaul Slaver##75835+
Slay #20# Stonemaul Ogres |q Bonus Objective: Stonemaul Arena##36566/1 |goto Gorgrond/0 40.2,66.0
stickystart "brimstone1_LLY"
stickystart "brimstone2_LLY"
step
_Exit_ the Stonemaul Arena |goto Gorgrond 41.8,65.4 < 20 |only if walking
_Cross over_ the moutain path |goto Gorgrond 42.1,62.4 < 20 |only if walking
accept Bonus Objective: Brimstone Springs##36603 |goto 40.74,52.53
kill 3 Grievous Depthworm##85942 |q Bonus Objective: Brimstone Springs##36603/3 |goto 40.74,52.54
step
label "brimstone1_LLY"
accept Bonus Objective: Brimstone Springs##36603
kill 15 Sulfuric Ooze##85960 |q Bonus Objective: Brimstone Springs##36603/2 |goto 40.74,52.54
step
label "brimstone2_LLY"
accept Bonus Objective: Brimstone Springs##36603
kill 8 Lesser Brimfury##85924 |q Bonus Objective: Brimstone Springs##36603/1 |goto 40.74,52.54
stickystart "ST6_LLY"
step
_Follow the path_ around the mountain |goto Gorgrond 41.4,55.8 < 20 |only if walking
accept Bonus Objective: Affliction Ridge##36473
clicknpc Ancient Seedbearer##85524
Burn #5# Ancient Seedbearers |q Bonus Objective: Affliction Ridge##36473/2 |goto Gorgrond/0 44.2,63.4
step
label "ST6_LLY"
accept Bonus Objective: Affliction Ridge##36473
Kill enemies in this area
Slay #25# Monsters |q Bonus Objective: Affliction Ridge##36473/1 |goto 44.1,63.6
step
_Cross_ the basin |goto Gorgrond/0 44.4,61.6 < 40 |only if walking
Continue _across_ the basin |goto 45.3,58.3 < 40 |only if walking
talk Nisha##86492
fpath Breaker's Crown |goto Gorgrond/0 45.86,54.96
stickystart "gronnbonus_LLY"
stickystart "ST7_LLY"
step
accept Bonus Objective: South Gronn Canyon##36476
clicknpc Grom'kar Peon##85540
|tip These are wounded orcs laying on the ground.
Execute #8# Dying Grom'kar Peons |q Bonus Objective: South Gronn Canyon##36476/3 |goto Gorgrond/0 47.3,53.8
step
label "gronnbonus_LLY"
accept Bonus Objective: South Gronn Canyon##36476
kill 10 Grom'kar Grunt##75091 |q Bonus Objective: South Gronn Canyon##36476/2 |goto Gorgrond/0 48.1,52.0
step
label "ST7_LLY"
accept Bonus Objective: South Gronn Canyon##36476
kill 15 Boneyard Gorger##81206, Boneyard Tunneler##81518, Drywind Bonepicker##81207 |q Bonus Objective: South Gronn Canyon##36476/1 |goto Gorgrond/0 45.7,52.0
stickystart "valleybonus1_LLY"
stickystart "valleybonus2_LLY"
step
_Run around_ the rocky formations |goto Gorgrond 44.3,50.9 < 20 |only if walking
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 47.3,47.8
Break #15# Goren Eggs |q Bonus Objective: Valley of Destruction##36480/3 |goto Gorgrond/0 47.3,47.8
|tip You only need to walk over the eggs to break them.
step
label "valleybonus1_LLY"
accept Bonus Objective: Valley of Destruction##36480
kill 20 Goren Nibbler##81775 |q Bonus Objective: Valley of Destruction##36480/2	|goto Gorgrond/0 47.3,47.8
step
label "valleybonus2_LLY"
accept Bonus Objective: Valley of Destruction##36480
kill 5 Canyon Boulderbreaker##81246 |q Bonus Objective: Valley of Destruction##36480/1 |goto Gorgrond/0 45.6,46.0
step
_Climb_ the hill and go along the path |goto Gorgrond 48.0,52.8 < 20 |only if walking
_Keep following_ the path around |goto 48.6,50.5 < 30 |only if walking
talk Rakthoth##81731
turnin Reagents from Rakthoth##33694 |goto 49.4,49.7
accept Plant Pruning##33689 |goto 49.4,49.7
accept Ambassador to the Ancient##33685 |goto Gorgrond/0 49.4,49.7
stickystart "ST8_LLY"
step
talk Birchus##81723
Tell him _"Thank you for not killing me..."_
Talk to Birchus |q Ambassador to the Ancient##33685/1 |goto Gorgrond/0 50.3,47.5
step
label "ST8_LLY"
kill 12 Primal Growth##81769, Dionor Seedpriest##81721 |q Plant Pruning##33689/1 |goto Gorgrond/0 51.2,45.5
step
_Enter_ the cave |goto Gorgrond/0 51.1,47.7 < 20 |walk
talk Rakthoth##85089
turnin Ambassador to the Ancient##33685 |goto 51.3,48.0
turnin Plant Pruning##33689 |goto 51.3,48.0
accept Shredder vs. Saberon##33663 |goto 51.3,48.0
step
_Run up_ the large hill and follow the path |goto Gorgrond 52.6,46.7 < 20 |only if walking
click Strong Vine Barricade##235381
|tip The plant growth blocking your path.
Shred the Vines and Enter the Saberon Camp |q Shredder vs. Saberon##33663/1 |goto 52.22,48.62
step
talk Rakthoth##82222
turnin Shredder vs. Saberon##33663 |goto Gorgrond/0 52.3,49.0
accept Steamscar "Reagents"##33661 |goto Gorgrond/0 52.3,49.0
step
click Saberon Stash##234474
|tip Boxes with leather lids scattered around the area.
accept The Sacking of the Saberon##33660 |goto 51.87,50.01
stickystart "saberonheart_LLY"
step
click Saberon Stash##232311
collect 8 Saberon Herb Bundle##115442 |q The Sacking of the Saberon##33660/1 |goto Gorgrond/0 50.7,53.2
|tip These can also be found inside the huts.
step
label "saberonheart_LLY"
from Steamscar Warrior##81738
collect 10 Saberon Heart##115443, Steamscar Primalist##81747 |q Steamscar "Reagents"##33661/1
step
_Go up_ the hill |goto Gorgrond/0 52.2,50.5 |only if walking
talk Rakthoth##82225
turnin Steamscar "Reagents"##33661 |goto 52.9,51.8
turnin The Sacking of the Saberon##33660 |goto 52.9,51.8
accept Taking the Death Bloom##33695 |goto Gorgrond/0 52.9,51.8
step
_Enter_ the cave |goto Gorgrond/0 53.7,51.8 < 20 |walk
from Smokemaster Snarl##81749
collect Dionor's Death Bloom##113187 |q Taking the Death Bloom##33695/1 |goto Gorgrond/0 54.3,52.6
step
_Leave_ the cave |goto Gorgrond/0 53.8,51.8 < 20 |walk
_Go down_ the hill |goto 52.5,51.0 < 30 |only if walking
_Continue_ down the hill |goto Gorgrond/0 52.2,48.7 < 30 |only if walking
_Jump down_ the ledge |goto 51.9,46.6 < 30 |only if walking
talk Birchus##82302
turnin Taking the Death Bloom##33695 |goto Gorgrond/0 50.3,47.5
accept Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
step
talk Birchus##82302
turnin Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
step
talk Durotan##74594
accept Strike While the Iron is Hot##36574 |goto Gorgrond 46.10,70.17
step
talk Grinslicer##81055
Tell him: "_I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q Strike While the Iron is Hot##36574/1 |goto 45.98,69.23
step
talk Draka##86401
Tell her: "_Let's go."_
scenariogoal 1/25388 |goto Gorgrond/0 44.7,17.8 |q 36574
|tip Follow the group.
step
Use the _Access Artifact_ ability |cast Access Artifact##172674
|tip Use the temporary ability to help kill the waves of enemies.
scenariogoal 2/25389 |goto Gorgrond/0 44.4,16.7 |q 36574
step
Use the _Access Artifact_ ability: |cast Access Artifact##172674
|tip Use the temporary ability to help kill the waves of enemies.
scenariogoal 3/25390 |goto Gorgrond/0 44.4,16.7 |q 36574
step
kill Goc##85580
scenariogoal 4/25391 |goto Gorgrond/0 44.0,15.7 |q 36574
step
kill Commander Gar##85571
scenariogoal 5/25392 |goto Gorgrond/0 44.3,16.5
step
talk Nisha##84700
fpath Iron Docks |goto Gorgrond/0 43.1,20.2
step
talk Durotan##74594
turnin Strike While the Iron is Hot##36574 |goto Gorgrond/0 46.10,70.18
accept News from Talador##36494 |goto Gorgrond/0 46.1,70.2
step
talk Rokhan##78487
turnin News from Talador##36494 |goto Frostwall/0 45.9,42.7
accept It's a Matter of Strategy##34681 |goto Frostwall/0 45.9,42.7
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9 < 5
Tell him _"Take me to my base in Talador."_ |goto Talador/0 72.0,28.3 < 20 |noway |c |q 34681
step
talk Foreman Grobash##79176
turnin It's a Matter of Strategy##34681 |goto Talador/0 71.1,29.8 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)",
image=ZGV.DIR.."\\Guides\\Images\\Talador",
condition_suggested_exclusive=true,
startlevel=94,
},[[
step
talk Foreman Grobash##79176
accept At Your Command##34566 |goto Talador/0 71.1,29.8
step
clicknpc Drafting Table##79177
Use the Drafting Table |q At Your Command##34566/1 |goto Talador/0 71.1,30.0
step
clicknpc Drafting Table##79177
Select a Building |q At Your Command##34566/2 |goto Talador/0 71.1,30.0
|tip You can choose between the "Arcane Sanctum" and the "Vol'jin's Arsenal" buildings. We recommend choosing the Vol'jin's Arsenal building, since it gives you an artillery special ability that is powerful, and will help with leveling, as well as later in the Tanaan Jungle level 100 zone.
step
talk Foreman Grobash##79176
turnin At Your Command##34566 |goto Talador/0 71.1,29.7
accept An Audience With The Archmage##34632 |goto Talador/0 71.1,29.7 |next "arcane_sanctum" |or
accept The Quarry Quandary##34569 |goto Talador/0 71.1,29.7 |next "voljins_arsenal" |or
|tip You will only be able to accept one of these quests, depending on which building you chose.
step
label "arcane_sanctum"
talk Paoni Softhoof##81359
home Vol'jin's Pride |goto Talador/0 72.0,30.0 |q 34803 |future
step
_Go through_ the wooden gate |goto Talador/0 71.8,29.2 < 10 |only if walking
talk Archmage Khadgar##80142
turnin An Audience With The Archmage##34632 |goto 74.98,31.19
accept Making Acquaintances##34814 |goto 74.98,31.19
step
Go _through the cliffs_ to the small camp |goto Talador/0 77.5,29.4 < 20 |only if walking
talk Dominic Arlington##80932
fpath Zangarra |goto Talador/0 80.4,25.3
step
clicknpc Khadgar's Portal##45454
Take Khadgar's Portal |q Making Acquaintances##34814/1 |goto 80.57,26.10
step
talk Magister Krelas##79393
turnin Making Acquaintances##34814 |goto 84.20,30.30
accept Creating the Ink##34634 |goto 84.20,30.30
accept Forming the Scroll##34635 |goto 84.20,30.30
accept Gathering the Spark##34636 |goto 84.20,30.30
stickystart "pustule_AS"
step
clicknpc Arcane Vortex##79390
|tip They look like blue or purple balls of swirling energy.
Harvest the Energy |q Gathering the Spark##34636/1 |goto Talador/0 83.3,28.7 |count 1
step
clicknpc Slumbering Protector##79330
Prune the Slumbering Protector |q Forming the Scroll##34635/1 |goto Talador/0 82.3,31.7 |count 1
step
clicknpc Arcane Vortex##79390
|tip They look like blue or purple balls of swirling energy.
Harvest the Energy |q Gathering the Spark##34636/1 |goto Talador/0 81.8,29.2 |count 2
step
clicknpc Slumbering Protector##79330
Prune the Slumbering Protector |q Forming the Scroll##34635/1 |goto Talador/0 80.7,29.2 |count 2
step
clicknpc Slumbering Protector##79330
Prune the Slumbering Protector |q Forming the Scroll##34635/1 |goto Talador/0 81.7,26.8 |count 3
step
clicknpc Arcane Vortex##79390
|tip They look like blue or purple balls of swirling energy.
Harvest the Energy |q Gathering the Spark##34636/1 |goto Talador/0 82.7,27.1 |count 3
step
label "pustule_AS"
kill Encroaching Giant##79333+, Invasive Shambler##79335+
collect 30 Pulsating Pustule##111322 |q Creating the Ink##34634/1 |goto 81.56,27.96
step
Standing next to you:
talk Magister Krelas##80193
|tip If you are in Zangarra he will be standing next to you.
turnin Gathering the Spark##34636
turnin Forming the Scroll##34635
turnin Creating the Ink##34634
accept Next Steps##34874
step
talk Magister Krelas##80965
turnin Next Steps##34874 |goto Talador/0 71.3,29.6
accept The Foot of the Fortress##34878 |goto Talador/0 71.3,29.6
step
talk Provisioner Naya##79921
accept Logistical Nightmare##34766 |goto 71.19,29.45
step
talk Shadow Hunter Kajassa##79627
accept One Step Ahead##34683 |goto 71.24,29.93
stickystart "recordings_AS"
step
click Sack of Supplies##230729
|tip These are large brown sacks found on the ground and hanging from poles.
collect 5 Sack of Supplies##111735 |q Logistical Nightmare##34766/1 |goto 68.56,30.34
step
label "recordings_AS"
click Garrison Records##230733
|tip It's a pile of books and papers.
collect 5 Garrison Records##111736 |q Logistical Nightmare##34766/2 |goto 68.56,30.34
step
talk Provisioner Naya##79921
turnin Logistical Nightmare##34766 |goto 71.19,29.44
accept Send Them Running##34803 |goto 71.19,29.44
step
kill Vicegnaw##80053 |q Send Them Running##34803/1 |goto 70.59,27.62
step
talk Provisioner Naya##79921
turnin Send Them Running##34803 |goto 71.20,29.44
step
talk Durotan##75806
turnin One Step Ahead##34683 |goto 61.50,10.95
accept Through the Looking Glass##33754 |goto 61.50,10.95
step
click Gazlowe's Eye 'n' Ear##225762
|tip The brass and steel looking glass on a rock.
Look through Gazlowe's Eye 'n' Ear |q Through the Looking Glass##33754/1 |goto 61.55,11.04
step
talk Durotan##75806
turnin Through the Looking Glass##33754 |goto 61.51,10.96
accept Old Friends, New Enemies##35226 |goto 61.51,10.96
accept Too Many Irons in the Fire##33722 |goto 61.51,10.96
step
talk Draka##75808
accept In Short Supply##33735 |goto 62.01,10.99
step
talk Gazlowe##75873
accept Gazlowe's Solution##33721 |goto 62.06,10.41
step
_Go down_ the path from town |goto Talador/0 61.8,9.7 < 20 |only if walking
Meet Durotan at Orunai Village |q Old Friends, New Enemies##35226/1 |goto 54.30,7.01
step
Confront Orgrim |q Old Friends, New Enemies##35226/2 |goto 53.05,7.04
step
kill Lieutenant Dilka##81704 |q Old Friends, New Enemies##35226/3 |goto 53.07,7.03
stickystart "ironexplosive_AS"
stickystart "killironhorde_AS"
step
use Gazlowe's Solution##107899
Destroy the Thunderlord Cache |q Gazlowe's Solution##33721/1 |goto 56.67,9.65
step
use Gazlowe's Solution##107899
Destroy the Munitions Landing |q Gazlowe's Solution##33721/2 |goto Talador/0 56.2,12.7
step
use Gazlowe's Solution##107899
Destroy the Blackrock Forge |q Gazlowe's Solution##33721/3 |goto 57.90,15.39
step
label "ironexplosive_AS"
click Iron Horde Explosives##225731
|tip Wooden boxes with metal straps around them scattered around the beach.
collect 6 Iron Horde Explosives##107855 |q In Short Supply##33735/1 |goto 56.50,12.41
step
label "killironhorde_AS"
kill Warsong Overseer##75745+, Grom'kar Deadeye##77023+, Grom'kar Vanguard##77024+, Iron Shredder##75815+
Slay #15# Iron Horde |q Too Many Irons in the Fire##33722/1 |goto Talador/0 56.2,12.7
step
click Iron Shredder Decommission Orders##225726
|tip It's a brown book laying on a large stone.
accept Decommissioned Mission##33720 |goto 59.95,16.50
step
_Enter_ the cave |goto Talador/0 61.7,14.4 < 20 |walk
kill Engineer Draxen##76791 |q Decommissioned Mission##33720/1 |goto 63.2,14.5
step
clicknpc Decommissioned Iron Shredder##75809
Steal the Decommissioned Iron Shredder |q Decommissioned Mission##33720/2 |goto 63.24,14.56
step
_Leave_ the cave |goto 61.6,14.4 < 20 |walk
_Enter_ the side of the mountain here |goto 59.8,20.2 < 20 |walk
|tip You should see Iron Horde break a hole in the wall.
Transport the Decommissioned Iron Shredder to Draka's Den |q Decommissioned Mission##33720/3 |goto 59.20,20.29
step
talk Gazlowe##75924
turnin Gazlowe's Solution##33721 |goto 58.95,20.71
turnin Decommissioned Mission##33720 |goto 58.95,20.71
accept Vol. X Pages ?##33724 |goto 58.95,20.71
step
talk Draka##75808
turnin In Short Supply##33735 |goto 58.93,20.15
accept Iron Them Out##33736 |goto 58.93,20.15
step
talk Durotan##75958
turnin Too Many Irons in the Fire##33722 |goto 58.92,20.21
turnin Old Friends, New Enemies##35226 |goto 58.92,20.20
accept Dreadpiston##34950 |goto 58.92,20.20
stickystart "ironshredderx_AS"
step
_Leave_ the cave | goto Talador/0 59.8,20.2 < 20 |walk
_Go up_ the cobblestone path |goto Talador/0 60.0,23.2 < 20 |only if walking
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy the Siege Weapon |q Iron Them Out##33736/1 |count 1 |goto 59.56,29.35
step
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy the Siege Weapon |q Iron Them Out##33736/1 |count 2 |goto 58.26,29.27
step
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy the Siege Weapon |q Iron Them Out##33736/1 |count 3 |goto 57.20,31.18
step
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy the Siege Weapon |q Iron Them Out##33736/1 |count 4 |goto 56.42,29.06
step
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy the Siege Weapon |q Iron Them Out##33736/1 |count 5 |goto Talador/0 55.8,28.2
step
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy the Siege Weapon |q Iron Them Out##33736/1 |count 6 |goto Talador/0 55.8,26.9
step
kill Dreadpiston##80576 |q Dreadpiston##34950/1 |goto 56.34,27.25
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.88,25.99
step
from Blademaster Bralok##76981
collect Ahm's Heirloom##108825 |q Dying Wish##33973/1 |goto 57.0,24.4
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.96
step
label "ironshredderx_AS"
kill Grom'kar Siegesmith##85978+, Burning Blademaster##75794+, Fireblade Invoker##77047+
Collect #20# Manual Pages |q Vol. X Pages ?##33724/1 |goto Talador/0 57.1,27.1
step
_Cross_ the small bridge |goto Talador/0 56.7,33.9 < 20 |only if walking
talk Durotan##75959
turnin Dreadpiston##34950 |goto 55.60,40.92
step
talk Draka##75808
turnin Iron Them Out##33736 |goto 55.56,40.96
step
talk Gazlowe##75941
turnin Vol. X Pages ?##33724 |goto 55.68,41.15
accept An Eye for a Spy##33728 |goto 55.68,41.15
step
talk Tega Skyblade##81058
fpath Durotan's Grasp |goto Talador/0 55.4,40.8
step
click Gazlowe's Eye 'n' Ear##225769
|tip The brass and steel looking glass sitting on a box.
Look through Gazlowe's Eye 'n' Ear |q An Eye for a Spy##33728/1 |goto 55.75,41.09
step
talk Gazlowe##75941
turnin An Eye for a Spy##33728 |goto 55.68,41.15
accept Born to Shred##33729 |goto 55.68,41.15
step
clicknpc Iron Shredder Prototype##75721
Take Control of the Iron Shredder |q Born to Shred##33729/1 |goto 55.41,41.11
step
_Cross_ the bridge |goto Talador/0 57.5,37.7 < 20 |only if walking
kill Grom'kar Deadeye##75943+, Grom'kar Vanguard##75948+, Fireblade Invoker##77066+
Slay #100# Iron Horde inside Tuurem |q Born to Shred##33729/2 |goto Talador/0 60.1,40.5
|tip They are all around this area.
step
clicknpc Iron Shredder Prototype##75968
|tip You are inside of it.
turnin Born to Shred##33729
accept Engineering Her Demise##33730
step
kill Ketya Shrediron##75986 |q Engineering Her Demise##33730/1 |goto 61.05,38.69
step
_Cross_ the bridge |goto Talador/0 57.9,37.8 < 20 |only if walking
talk Durotan##75959
turnin Engineering Her Demise##33730 |goto 55.58,40.96
accept Khadgar's Plan##34962 |goto 55.58,40.95
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34962 |goto 54.18,36.43
accept The Battle for Shattrath##33731 |goto 54.19,36.43
step
Meet with Gazlowe |goto Talador/0 50.4,35.0 < 10 |c |q 33731
talk Gazlowe##77191
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Gazlowe |scenariogoal 1/25835 |goto Talador/0 50.5,35.0
step
clicknpc Iron Star##86671
Enter the Iron Star |scenariogoal 2/25177 |goto Talador/0 50.5,34.9
step
_Go down_ the stairs |goto Talador/0 46.3,35.3 < 20 |walk
_Continue_ down the stairs |goto 45.7,33.5 < 20 |walk
Reach the Harbor |scenariogoal 3/25176 |goto 45.4,25.8
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto Talador/0 45.4,24.6
step
kill Grom'kar Vanguard##83806+, Burning Blademaster##83807+, Fireblade Invoker##83811+
Protect Khadgar |scenariogoal 4/24351 |goto Talador/0 45.4,23.6
step
Confront Blackhand |scenariogoal 5/25178 |goto Talador/0 46.7,21.2
step
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Archmage Khadgar |scenariogoal 5/24679 |goto Talador/0 46.7,20.8
step
kill Machinist B'randt##80962
|tip You can pick up Blackrock Bombs off the ground and throw them to deal lots of AoE damage.
Defeat Machinist B'randt |scenariogoal 5/24352 |goto Talador/0 48.6,12.6
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Archmage Khadgar |scenariogoal 6/24680 |goto Talador/0 48.5,12.9
step
kill Blackhand##77256
Survive Blackhand's Onslaught |scenariogoal 6/24678 |goto Talador/0 46.6,19.1
step
Repel the Iron Horde from Shattrath |q The Battle for Shattrath##33731/1
step
clicknpc Portal to Talador##45454
_Enter_ the portal |goto Talador/0 46.6,20.9 < 5 |walk
talk Durotan##79604
turnin The Battle for Shattrath##33731 |goto 71.42,29.61
step
_Go through_ the gate |goto Talador/0 71.7,29.3 < 10 |only if walking
_Follow_ the path back |goto 74.0,33.3 < 20 |only if walking
talk Crystal-Shaper Barum##75896
accept Burning Sky##33740 |goto 73.07,38.76
accept Pieces of Us##33734 |goto 73.07,38.76
stickystart "ST5_AS"
step
_Cross_ the bridge |goto Talador/0 75.5,40.8 < 20 |only if walking
click Barum's Notes##225778
|tip It looks like an open book laying on the ground.
accept Barum's Notes##33761 |goto 76.28,42.74
step
talk Raksi##75311
accept Pyrophobia##33578 |goto 77.74,43.96
step
kill Sun-Sage Kairyx##75302 |q Pyrophobia##33578/1 |goto 78.52,45.38
step
talk Raksi##75311
turnin Pyrophobia##33578 |goto 77.74,43.95
accept What the Draenei Found##33579 |goto 77.74,43.95
step
click Harmonic Crystal##225776
Test the Harmonic Crystal |q Barum's Notes##33761/3 |goto 77.30,42.09
step
click Polished Crystal##241504
Test the Polished Crystal |q Barum's Notes##33761/2 |goto 77.49,41.40
step
click Honed Crystal##225773
Test Honed Crystal |q Barum's Notes##33761/1 |goto 77.82,41.95
step
click Annals of Aruuna##225748
collect Annals of Aruuna##107859 |q Pieces of Us##33734/3 |goto Talador/0 75.5,44.1
step
click Melani's Doll##225746
collect Melani's Doll##107856 |q Pieces of Us##33734/2 |goto 77.90,43.04
step
click Crystal-Shaper's Tools##225745
collect Crystal-Shaper's Tools##107851 |q Pieces of Us##33734/1 |goto Talador/0 77.5,41.2
step
label "ST5_AS"
kill Adherent Wing-Guard##75283+, Adherent Squallbringer##75290+, Adherent Sun-Caller##85434+
Kill #12# Adherent Invaders |q Burning Sky##33740/1 |goto Talador/0 77.0,42.0
stickystart "prowlers"
step
Carefully _jump down_ the side of the cliff |goto Talador/0 75.4,44.9 < 20 |only if walking
accept Bonus Objective: Aruuna's Desolation##34639 |goto 76.11,47.14
kill Frenzied Ancient##79409 |q Bonus Objective: Aruuna's Desolation##34639/1 |goto Talador/0 76.1,48.6
|tip He walks around the area.
step
label "prowlers"
accept Bonus Objective: Aruuna's Desolation##34639
clicknpc Panicked Young Prowler##79432
Calm #7# Young Prowlers |q Bonus Objective: Aruuna's Desolation##34639/2 |goto Talador/0 76.1,48.6
step
talk Crystal-Shaper Barum##75913
turnin Pieces of Us##33734 |goto 76.72,55.24
turnin Burning Sky##33740 |goto 76.72,55.24
turnin Barum's Notes##33761 |goto 76.72,55.24
step
_Exit_ through the gates |goto Talador/0 71.8,29.1 < 10 |only if walking
_Run through_ the grass and trees |goto Talador/0 74.9,33.3 < 20 |only if walking
_Enter_ the cave |goto Talador/0 78.3,35.5 < 20 |walk
_Follow_ the path down |goto Talador/0 80.4,34.9 < 20 |walk |indoors Aruuna Crystal Mine
_Cross_ the bridge |goto 81.6,37.6 < 20 |walk |indoors Aruuna Crystal Mine
click Ancient Prism##224825
Examine the Ancient Prism |q What the Draenei Found##33579/1 |goto 82.70,37.87 |indoors Aruuna Crystal Mine
step
talk Raksi##75469
turnin What the Draenei Found##33579 |goto 82.64,37.78 |indoors Aruuna Crystal Mine
step
talk Skytalon Inuz##81354
fpath Terokkar Refuge |goto 70.3,57.1
step
talk Shadow-Sage Iskar##75288
accept The Purge of Veil Shadar##33580 |goto 70.51,56.85
step
talk Kura the Blind##75324
accept Kura's Vengeance##33582 |goto 70.77,56.78
step
talk Darkscryer Raastok##75323
accept Forbidden Knowledge##33581 |goto 70.51,57.34
stickystart "ST8_AS"
stickystart "ST9_AS"
step
Follow the path |goto Talador/0 72.6,58.7 < 20 |only if walking
_Go up_ the stairs |goto Talador/0 74.9,61.7 < 20 |only if walking
_Continue_ along the path |goto Talador/0 77.0,62.0 < 20 |only if walking
_Enter_ the cave |goto 80.2,61.7 < 20 |walk
kill Wing-Guard Kuuan##75353 |q Kura's Vengeance##33582/1 |goto Talador/0 80.4,63.7
step
label "ST8_AS"
talk Outcast Darktalon##75337+, Outcast Shadeweaver##75336+
Evacuate #8# Outcasts |q The Purge of Veil Shadar##33580/1 |goto Talador/0 78.6,60.6
|tip They are all around this area.
step
label "ST9_AS"
click The Art of Darkness##225509
|tip Some have different titles but they are small red books.
collect 6 Shadow Tome##107391 |q Forbidden Knowledge##33581/1 |goto Talador/0 74.9,63.0
step
_Follow_ the path |goto 72.6,58.6 < 20 |only if walking
talk Kura the Blind##75324
turnin Kura's Vengeance##33582 |goto 70.78,56.78
step
talk Shadow-Sage Iskar##75288
turnin The Purge of Veil Shadar##33580 |goto 70.64,57.41
step
talk Darkscryer Raastok##75323
turnin Forbidden Knowledge##33581 |goto 70.51,57.35
step
talk Seer Malune##76665
accept Dust of the Dead##33872 |goto 65.42,50.74
accept Cure of Aruunem##33873 |goto 65.42,50.74
stickystart "aruunberries_AS"
step
from Agitated Duskwing##76668+, Elder Duskwing##77328+, Duskwing Flutterer##77331+
collect 7 Handful of Duskwing Dust##108645 |q Dust of the Dead##33872/1 |goto Talador/0 66.1,51.0
step
label "aruunberries_AS"
click Aruunem Berry Bush##226888
|tip They look like leafy bushes with small red berries on them.
collect 60 Aruunem Berries##108655 |q Cure of Aruunem##33873/1 |goto Talador/0 67.6,52.6
step
talk Seer Malune##76665
turnin Dust of the Dead##33872 |goto 65.42,50.73
turnin Cure of Aruunem##33873 |goto 65.42,50.73
accept Aruumel's Rest##33874 |goto 65.43,50.73
step
use Elixir of Memories##108749
|tip Use the elixir to cross over into the shadow realm.
kill Aruumel##76824 |q Aruumel's Rest##33874/1 |goto 68.9,55.0
step
talk Seer Malune##76665
turnin Aruumel's Rest##33874 |goto 65.43,50.73
step
_Travel on_ the path towards the bridge |goto Talador/0 63.6,50.5 < 20 |only if walking
_Cross_ the bridge |goto 61.7,52.3 < 20 |only if walking
talk Nadur##80028
accept A Pilgrimage Gone Awry##34801 |goto 61.36,54.39
stickystart "snapdragon_AS"
stickystart "prowblood_AS"
step
from Noxious Riverhopper##78673+, Palebelly Croaker##78671+
collect 1 Riverhopper Eye##111846 |q A Pilgrimage Gone Awry##34801/3 |goto 62.18,54.14
step
label "snapdragon_AS"
click Snapdragon##230820
|tip They look like tall pink flowers.
collect 6 Snapdragon Frond##111845 |q A Pilgrimage Gone Awry##34801/2 |goto 60.65,55.10
step
label "prowblood_AS"
from Ridge Prowler##79703+
collect 6 Prowler Blood##111847 |q A Pilgrimage Gone Awry##34801/1 |goto Talador/0 60.4,57.0
step
talk Nadur##80028
turnin A Pilgrimage Gone Awry##34801 |goto 61.36,54.39
step
_Follow_ the road |goto Talador/0 62.1,55.2 < 20 |only if walking
_Continue_ along the road |goto 63.5,59.9 < 20 |only if walking
_Climb the stairs_ and continue on the road |goto 62.6,65.3 < 20 |only if walking
talk Magister Krelas##80396
turnin The Foot of the Fortress##34878 |goto 62.26,68.30 |only if havequest(34879)
accept Dropping In##34879 |goto 62.26,68.30
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q Dropping In##34879/1 |count 1 |goto 63.59,69.00
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q Dropping In##34879/1 |count 2 |goto Talador/0 65.5,68.8
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q Dropping In##34879/1 |count 3 |goto Talador/0 66.8,67.9
step
Meet Krelas at the Gate |q Dropping In##34879/2 |goto 68.83,69.32
step
click Krelas' Portal##
Take the Portal |q Dropping In##34879/3 |goto 68.63,69.70
step
talk Magister Krelas##80390
turnin Dropping In##34879 |goto 68.31,70.31
accept While We're in the Neighborhood##34887 |goto 68.31,70.31
accept Vicious Viziers##34888 |goto 68.31,70.31
accept Orbs of Power##34889 |goto 68.31,70.31
stickystart "runebeads_AS"
step
_Cross_ the bridge |goto Talador/0 69.5,73.9 < 20 |only if walking
click Astral Ward##230960
Destroy the Astral Ward |q Orbs of Power##34889/1 |count 1 |goto 68.18,76.33
step
click Astral Ward##230960
Destroy the Astral Ward |q Orbs of Power##34889/1 |count 2 |goto Talador/0 69.4,79.7
step
_Run up_ the stone steps |goto Talador/0 68.3,79.5 < 20 |only if walking
click Astral Ward##230960
Destroy the Astral Ward |q Orbs of Power##34889/1 |count 3 |goto 69.0,82.0
step
kill Vizier Vorgorsh##80294 |q Vicious Viziers##34888/1 |goto 68.55,82.87
step
_Go up_ the 2nd set of stone steps |goto Talador/0 67.7,79.4 < 20 |only if walking
click Astral Ward##230960
Destroy the Astral Ward |q Orbs of Power##34889/1 |count 4 |goto Talador/0 67.5,78.0
step
kill Vizier Zulmork##80292 |q Vicious Viziers##34888/2 |goto 67.13,77.03
step
click Astral Ward##230960
Destroy the Astral Ward |q Orbs of Power##34889/1 |count 5 |goto Talador/0 66.0,78.1
step
kill Vizier Cromaug##80295 |q Vicious Viziers##34888/3 |goto 66.18,81.12
step
label "runebeads_AS"
kill Gordunni Warcrier##81764+, Gordunni Basher##79231+, Gordunni Cleaver##79234+
collect 8 Gordunni Runebeads##112088 |q While We're in the Neighborhood##34887/1 |goto 67.94,80.09
step
Standing next to you:
|tip If you are in Gordal Fortress, he will be next to you.
talk Magister Krelas##80389
turnin While We're in the Neighborhood##34887
turnin Vicious Viziers##34888
turnin Orbs of Power##34889
accept The Final Step##34890
step
_Go up_ the stone steps |goto Talador/0 65.4,80.2 < 20 |only if walking
use Scroll of Mass Teleportation##112542
|tip Use the scroll to summon reinforcements.
kill Witch Lord Morkurk##80335 |q The Final Step##34890/1 |goto 64.28,81.78
step
click Arcane Nexus##231056
|tip It looks like a glowing stone floating in the center of the golden aura on the ground.
collect Arcane Nexus##112196 |q The Final Step##34890/2 |goto 64.24,81.80
step
Standing next to you:
|tip If you are in Gordal Fortress, he will be next to you.
talk Magister Krelas##80389
turnin The Final Step##34890
accept Due Cause to Celebrate##34712
step
talk Magister Krelas##80553
turnin Due Cause to Celebrate##34712 |goto 71.17,29.88
accept Joining the Ranks##34949 |goto 71.17,29.88
step
talk Knight-Lord Dranarus##79612
accept The Lady of Light##34696 |goto 71.84,29.75
step
_Cross_ the river |goto Talador/0 64.4,57.0 < 20 |only if walking
_Go up_ the stairs |goto Talador/0 62.5,65.3 < 20 |only if walking
_Continue_ up the stairs |goto Talador/0 60.6,67.4 < 20 |only if walking
_Follow_ the path |goto 57.5,67.2 < 20 |only if walking
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Vindicator Nobundo##78482
accept Disrupting the Flow##33917 |goto 56.72,65.78
|tip He moves around the area.
step
talk Lady Liadrin##75121
turnin The Lady of Light##34696 |goto 55.49,67.67
accept Holding the Line##34418 |goto 55.50,67.65
step
talk Mehlar Dawnblade##78577
accept Powering the Defenses##35249 |goto 55.56,67.04
step
talk Ranger Belonis##79696
accept Every Bit Counts##34710 |goto 55.38,66.78
step
fpath Exarch's Refuge |goto Talador/0 54.5,67.8
step
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##35249 |goto Talador/13 68.38,19.35
accept We Must Construct Additional Pylons##34351 |goto 68.38,19.35
step
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto 52.24,38.94
stickystart "ST10_AS"
step
click Arkonite Pylon##229034
|tip It looks like a large floating slab of stone.
collect Arkonite Pylon##110271 |q We Must Construct Additional Pylons##34351/2 |goto 31.83,48.35
step
_Go down_ the stairs |goto Talador/13 54.7,42.3 < 20 |walk
Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto 58.96,55.01
step
kill Tagar Spinebreaker##76745 |q Nightmare in the Tomb##33530/2 |goto Talador/13 64.1,68.6
step
label "ST10_AS"
click Arkonite Crystal##229419
|tip They look like big purple crystals all over the ground around this area.
collect 6 Arkonite Crystal##110253 |q We Must Construct Additional Pylons##34351/1 |goto 37.82,46.57
stickystart "ST11_AS"
stickystart "ST12_AS"
step
_Leave_ the Tomb of Lights |goto Talador/13 48.2,24.8 < 10 |walk
kill O'mogg Blackheart##76876 |q The Heart of Auchindoun##33920/1 |goto Talador/0 56.5,62.8
step
click Karab'uun##229269
|tip It's a big pink crystal suspended in chains.
collect Karab'uun##108733 |q The Heart of Auchindoun##33920/2 |goto 56.68,62.49
step
label "ST11_AS"
click Burning Resonator##229139
|tip They look like green glowing crystals floating above spiked altars.
Destroy #4# Burning Resonators |q Disrupting the Flow##33917/1 |goto Talador/0 55.1,62.3
step
label "ST12_AS"
Kill enemies in this area
Slay #15# Demons |q Holding the Line##34418/1 |goto Talador/0 56.1,65.2
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.66,65.87
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.50,67.13
step
talk Lady Liadrin##75121
turnin Nightmare in the Tomb##33530 |goto 55.48,67.67
turnin Holding the Line##34418 |goto 55.48,67.67
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.11,67.40
step
talk Lady Liadrin##75121
accept Sunsworn Camp##34451 |goto 55.49,67.66
step
_Follow_ the path |goto 59.5,68.9 < 20 |only if walking
talk Lady Liadrin##75246
turnin Sunsworn Camp##34451 |goto 61.00,72.54
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33970 |goto 60.93,72.46
step
talk Soulbinder Tuulani##78028
accept Antivenin##33971 |goto 60.90,72.53
step
talk Mehlar Dawnblade##75249
accept Vile Defilers##33972 |goto 60.52,72.39
stickystart "ST13_AS"
stickystart "ST14_AS"
step
_Cross_ the bridge |goto 59.3,77.6 < 20 |only if walking
_Follow the path_ back |goto Talador/0 60.4,82.1 < 20 |only if walking
_Enter_ the cave |goto 61.3,84.2 |walk
kill Xanatos the Defiler##75294 |q Into the Hollow##33970/1 |goto Talador/0 65.6,86.8 |indoors Deathweb Hollow
step
click Sha'tari##229596
|tip It's the floating pink crystal with a shield around it.
collect Sha'tari##110683 |q Into the Hollow##33970/2 |goto 65.75,86.87 |indoors Deathweb Hollow
step
label "ST13_AS"
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33972/1 |goto 64.03,85.56
step
label "ST14_AS"
kill Deathweb Crawler##75273, Deathweb Egg Tender##76947
collect 9 Deathweb Fang##109744 |q Antivenin##33971/1 |goto 59.37,79.02
step
_Cross_ the bridge |goto Talador/0 59.3,77.3 < 20 |only if walking
talk Mehlar Dawnblade##75249
turnin Vile Defilers##33972 |goto 60.52,72.40
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33971 |goto 60.91,72.54
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33970 |goto 60.92,72.45
step
talk Lady Liadrin##75246
accept Scheduled Pickup##34242 |goto 61.00,72.54
stickystart "shattered_AS"
step
_Follow_ the path back |goto Talador/0 58.4,78.7 < 20 |only if walking
_Continue_ along the path |goto 55.8,83.2 < 20 |only if walking
accept Bonus Objective: Zorkra's Fall##34660 |goto 54.78,85.62
clicknpc Zorka's Void Gate##79520
|tip They are blue and purple swirling balls of energy.
Seal #4# Zorka's Void Gates |q Bonus Objective: Zorkra's Fall##34660/1 |goto Talador/0 54.1,87.1
step
label "shattered_AS"
accept Bonus Objective: Zorkra's Fall##34660
kill 10 Shattered Hand Grunt##79544 |q Bonus Objective: Zorkra's Fall##34660/2 |goto Talador/0 53.3,89.4
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34242 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.52,87.53
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
step
click Hastily Written Note##227069
|tip It looks like a scroll laying on the ground next to the fountain.
accept Invasion of the Soul Eaters##33988 |goto 49.22,88.04
stickystart "ST15_AS"
step
click Forge##21631
collect Auchenai Torch##108886 |q Invasion of the Soul Eaters##33988/1 |goto 49.32,87.89
step
click Telmor Registry##227054
|tip It looks like an open book laying on some white sacks, next to a pile of boxes.
collect Telmor Registry##108896 |q Never Forget##34013/1 |goto 49.28,87.86
step
clicknpc Body Pile##77003
Burn the Body Pile |q Invasion of the Soul Eaters##33988/2 |count 1 |goto 49.60,89.03
step
clicknpc Body Pile##77003
Burn the Body Pile |q Invasion of the Soul Eaters##33988/2 |count 2 |goto 48.77,89.89
step
clicknpc Body Pile##77003
Burn the Body Pile |q Invasion of the Soul Eaters##33988/2 |count 3 |goto 48.50,88.71
step
clicknpc Body Pile##77003
Burn the Body Pile |q Invasion of the Soul Eaters##33988/2 |goto 47.83,90.28
step
Click the _Quest Complete_ Box:
turnin Invasion of the Soul Eaters##33988
step
click Auchenai Prayerbook##227959
|tip It's a small floating book with a blue rune on the front.
collect Auchenai Prayerbook##109622 |q Never Forget##34013/2 |goto 49.32,90.78
step
click Leafshadow##227055
|tip It looks like a large greyish green pointed stone inside the building.
collect Leafshadow##108897 |q Never Forget##34013/3 |goto 47.52,88.92
step
label "ST15_AS"
kill Wrathguard Destroyer##75382+, Demon Conjurer##77901+, Depraved Hunter##77026+, Zealous Fanatic##77434+, Shadowborne Reverend##77426+, Fervid Adherent##77022+, Depraved Hunter##77026+
Route #12# Telmor Invaders |q Payback##34234/1 |goto 49.37,88.04
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.38,87.32
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.52,87.55
step
_Continue up_ the stairs |goto 47.1,90.0 < 20 |only if walking
_Enter_ the building |goto 45.1,90.5 < 20 |walk
talk Restalaan##77082
turnin Restalaan, Captain of the Guard##34508 |goto 44.85,90.49
accept The Final Piece##33976 |goto 44.83,90.46
step
kill Vorpil Ribcleaver##77051 |q The Final Piece##33976/1 |goto Talador/0 44.5,90.9
step
click Auch'naaru##229654
|tip It looks like a big floating pink crystal with a shield around it.
collect Auch'naaru##109197 |q The Final Piece##33976/2 |goto 44.5,90.9
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.84,90.49
accept Changing the Tide##34326 |goto 44.85,90.50
step
_Follow_ the path down |goto 44.7,87.5 < 20 |only if walking
_Go up_ the hill |goto 42.5,80.0 < 20 |only if walking
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.93
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Lady Liadrin##75389
accept Ogre Diplomacy##34122 |goto 42.96,76.23
step
fpath Retribution Point |goto Talador/0 42.1,76.8
stickystart "ST16_AS"
step
_Follow_ the path back |goto Talador/0 40.8,82.0 < 20 |only if walking
from Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto 39.43,83.52
step
from Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto 42.69,84.87
step
clicknpc Altar of Ango'rosh##77393
Perform the Ritual |q Desperate Measures##34092/3 |goto 41.25,82.46
|tip Be sure not to move as the ritual channels.
step
label "ST16_AS"
kill 10 Ango'rosh Crusher##77352, Ango'rosh Spellweaver##77362, Ango'rosh Hunter##77402 |q Ogre Diplomacy##34122/1 |goto Talador/0 41.7,83.7
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.44,75.93
step
talk Lady Liadrin##75389
turnin Ogre Diplomacy##34122 |goto 42.96,76.23
accept Retribution for the Light##34144 |goto 42.96,76.23
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto 42.93,76.10
step
click Shadow Council Communicator##227737
accept Hiding in the Shadows##34163 |goto 36.67,71.33
stickystart "ST17_AS"
step
_Go up_ the hill |goto Talador/0 34.3,69.6 |only if walking
_Follow_ the path into Gul'rok |goto Talador/0 34.2,72.8 |only if walking
talk Kor'thos Dawnfury##77629
accept Book Burning##34164 |goto 34.00,73.97
step
from Shadowborne Dementor##79187,Shadowborne Dementor##77548 |goto Talador/0 34.2,75.3
collect 3 Shadow Council Spellbook##109259 |q Book Burning##34164 |goto Talador/0 34.2,75.3
step
click Roaring Fire##
|tip It looks like a huge green-yellow bonfire.
|tip You will need to click it three times.
Burn #3# Shadow Council Spellbooks |q Book Burning##34164/1 |goto 34.25,74.23
step
talk Kor'thos Dawnfury##77629
turnin Book Burning##34164 |goto 34.00,73.98
step
_Climb_ the tower |goto Talador/0 34.4,70.3 < 10
click Shadow Orb##236352
|tip It's a purple swirling orb floating above metal column.
Disable the Northern Shadow Orb |q Hiding in the Shadows##34163/3 |goto 34.46,70.37
step
_Pass through_ Gul'rok |goto Talador/0 34.8,74.5 < 20 |only if walking
_Climb_ the tower |goto 37.7,77.4 < 10 |only if walking
click Shadow Orb##236352
|tip It's a purple swirling orb floating above metal column.
Disable the Eastern Shadow Orb |q Hiding in the Shadows##34163/1 |goto 37.79,77.33
step
_Go up_ the hill |goto Talador/0 36.4,80.3 < 20 |only if walking
_Climb_ the tower |goto Talador/0 35.6,79.9 < 10 |only if walking
click Shadow Orb##236352
|tip It's a purple swirling orb floating above metal column.
Disable the Southern Shadow Orb |q Hiding in the Shadows##34163/2 |goto 35.64,79.84
step
Click the _Quest Complete_ Box:
turnin Hiding in the Shadows##34163
step
label "ST17_AS"
kill Gorebound Demonguard##77541+, Felwrought Annihilator##77528+, Gorebound Demonguard##77541+, Shadowborne Dementor##77548+
Slay #15# Demons |q Retribution for the Light##34144/1
step
_Follow_ the path up |goto Talador/0 32.8,74.5 |only if walking
_Enter_ the cave |goto 31.9,74.6 |walk
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.21,73.60
accept Destination: Unknown##34564 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
Use the Demonic Gateway |q Destination: Unknown##34564/1 |goto 30.94,73.19
step
kill Mongrethod##77579 |q Destination: Unknown##34564/2
step
clicknpc Demonic Gateway##77571
Take the Portal |q Destination: Unknown##34564/3
step
talk Lady Liadrin##77580
turnin Retribution for the Light##34144 |goto 45.68,74.47
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Lady Liadrin##77580
accept Come Together##34706 |goto 45.70,74.46
step
_Follow the stairs_ up |goto Talador/0 44.6,74.6 < 20 |only if walking
_Follow_ the path |goto Talador/0 42.8,74.4 < 20 |only if walking
talk Caleb##76826
accept Just Peachicky##33882 |goto Talador/0 36.2,65.0
accept Sher'KHAAAAAAANNNN!##33884 |goto Talador/0 36.2,65.0
stickystart "sharpfang_stalkers_AS"
stickystart "peachicks_AS"
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
label "sharpfang_stalkers_AS"
kill 8 Sharpfang Stalker##76685 |q Sher'KHAAAAAAANNNN!##33884/1 |goto Talador/0 32.0,68.0
|tip They look like black tigers with red stripes all around this area.
step
label "peachicks_AS"
clicknpc Frightened Peachick##76722+
|tip They look like tiny pink-feathered birds running quickly on the ground around this whole area. They are kind of hard to spot, so keep an eye out.
Rescue #7# Frightened Peachicks |q Just Peachicky##33882/1 |goto Talador/0 32.8,66.3
step
_Follow_ the road |goto Talador/0 33.4,61.4 < 30 |only if walking
talk Caleb##76826
turnin Just Peachicky##33882 |goto Talador/0 36.2,65.0
turnin Sher'KHAAAAAAANNNN!##33884 |goto Talador/0 36.2,65.0
turnin And the Elekk Too?!##33944 |goto Talador/0 36.2,65.0
step
_Follow_ the path |goto Talador/0 37.3,67.6 < 30 |only if walking
accept Bonus Objective: Court of Souls##34667 |goto Talador/0 43.8,63.5
stickystart "bonuscourt_AS"
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
label "bonuscourt_AS"
accept Bonus Objective: Court of Souls##34667
kill Doombringer##79503+, Searing Ravager##79506+, Tormenting Concubine##79540+
Slay #10# Demons |q Bonus Objective: Court of Souls##34667/2 |goto Talador/0 43.2,60.9
step
_Leave_ the Court of Souls area |goto Talador 44.7,60.5 < 10 |only if walking
talk Ageilaa##78534
turnin Every Bit Counts##34710 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390+
|tip Don't kill them, just get them to 35% Health or less, then stop attacking them.
use Dissipation Crystal##110468
|tip Use the Dissipation Crystal on weakened Frenzied Manafeeders. You have to be close to them to be able to use the item.
Soothe #8# Frenzied Manafeeders |q Frenzied Manafeeders##34400/1 |goto 51.43,55.25
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.16
step
_Enter_ the mine |goto 51.2,51.6 < 20 |walk
talk Vindicator Doruu##78538
turnin Trouble In The Mine##34399 |goto 51.61,50.47 |indoors Jorune Mine
step
talk Manduil Skycaller##78515
accept Arcane Essence##34401 |goto 51.64,50.51 |indoors Jorune Mine
accept Crystals of Unusual Power##34404 |goto 51.64,50.51 |indoors Jorune Mine
stickystart "jorune_crystals_AS"
step
from Arcane Wraith##78326+, Crystal Rager##78452+
collect 6 Arcane Essence##110390 |q Arcane Essence##34401/1 |goto Talador/0 52.2,49.7 |indoors Jorune Mine
step
label "jorune_crystals_AS"
click Jorune Crystals##229160, Arcane Crystals##3365
|tip They look like pink crystals in mine carts, in small buckets, or on piles on the ground all around inside this cave.
collect 10 Unrefined Power Crystals##110391 |q Crystals of Unusual Power##34404/1 |goto Talador/0 52.2,49.7 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 20 |walk |indoors Jorune Mine
talk Manduil Skycaller##78515
turnin Arcane Essence##34401 |goto 51.64,50.51 |indoors Jorune Mine
turnin Crystals of Unusual Power##34404 |goto 51.64,50.51 |indoors Jorune Mine
accept An'dure The Giant##34414 |goto 51.64,50.51 |indoors Jorune Mine
step
kill An'dure the Awakened##78372
collect Crystal Giant Heart##110418 |q An'dure The Giant##34414/1 |goto Talador/0 54.1,50.0 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 20 |walk |indoors Jorune Mine
talk Manduil Skycaller##78515
turnin An'dure The Giant##34414 |goto 51.64,50.51 |indoors Jorune Mine
accept Kaelynara Sunchaser##34447 |goto 51.64,50.51 |indoors Jorune Mine
step
talk Manduil Skycaller##78515
Tell him "_I am ready to confront Kaelynara._"
Speak With Manduil |q Kaelynara Sunchaser##34447/1 |goto 51.65,50.51 |indoors Jorune Mine
step
kill Kaelynara Sunchaser##78501 |q Kaelynara Sunchaser##34447/2 |goto 52.08,47.54 |indoors Jorune Mine
|tip You will be teleported to her.
step
talk Manduil Skycaller##78515 |goto Talador 52.1,47.7 |indoors Jorune Mine
Tell him "_I am ready to return to the Jorune Mine._"
Teleport back into Jorune Mine |goto Talador 51.6,50.5 < 20 |noway |c |q 34447 |indoors Jorune Mine
only if havequest(34447)
step
talk Vindicator Doruu##78538
turnin Kaelynara Sunchaser##34447 |goto 51.62,50.48 |indoors Jorune Mine
step
talk Knight-Lord Dranarus##79612
turnin Come Together##34706 |goto 71.84,29.74
step
talk Shadow Hunter Kajassa##79627
accept News from Spires of Arak##35537 |goto Talador/0 71.24,29.95 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)"
step
label "voljins_arsenal"
talk Morketh Bladehowl##79210
turnin The Quarry Quandary##34569 |goto 71.88,29.45
accept Unleashed Steel##35102 |goto 71.88,29.45
step
Follow Morketh to the Armory |q Unleashed Steel##35102/1 |goto 70.94,30.40
step
talk Morketh Bladehowl##79356 |tip He will run into the building after you enter.
turnin Unleashed Steel##35102 |goto 70.89,30.49
accept Out of Jovite##34577 |goto 70.90,30.45
accept Iridium Recovery##34576 |goto 70.90,30.45
accept Gas Guzzlers##34579 |goto 70.90,30.45
stickystart "iridium_dustVA"
stickystart "jovite_oreVA"
step
_Go through_ the gate |goto Talador/0 71.8,29.2 < 20 |only if walking
_Cross_ the bridge |goto 73.2,26.7 < 20 |only if walking
_Enter_ the mine |goto Talador/0 75.2,22.4 < 20 |walk
_Follow_ the path |goto Talador/0 76.1,19.6 < 20 |walk |indoors Kuuro's Claim
kill Glowgullet Shardshedder##80013+, Glowgullet Devourer##79190+
use Goren Gas Extractor##111910
|tip Use the Goren Gas Extractor on their corpses.
Obtain #6# Goren Gas Samples |q Gas Guzzlers##34579/1 |goto Talador/0 77.6,17.7 |indoors Kuuro's Claim
step
label "iridium_dustVA"
kill Iridium Geode##80072+
collect 8 Iridium Dust##110898 |q Iridium Recovery##34576/1 |goto 76.73,18.88 |indoors Kuuro's Claim
step
label "jovite_oreVA"
click Jovite Ore##230268
|tip They look like green crystals in the walls all around inside this cave.
collect 12 Jovite Ore##111906 |q Out of Jovite##34577/1 |goto 78.01,17.90 |indoors Kuuro's Claim
step
_Follow_ the path |goto Talador/0 76.3,19.5 < 20 |walk |indoors Kuuro's Claim
_Leave_ the cave |goto 75.2,22.4 < 20 |walk
_Cross_ the bridge |goto Talador/0 73.0,25.9 < 20 |only if walking
_Enter_ the camp |goto 71.8,29.2 < 20 |only if walking
talk Morketh Bladehowl##79356
turnin Out of Jovite##34577 |goto 70.90,30.50
turnin Iridium Recovery##34576 |goto 70.90,30.50
turnin Gas Guzzlers##34579 |goto 70.90,30.50
accept Going to the Gordunni##34837 |goto 70.89,30.50
step
talk Shadow Hunter Kajassa##79627
accept One Step Ahead##34683 |goto 71.24,29.95
step
talk Provisioner Naya##79921
accept Logistical Nightmare##34766 |goto 71.19,29.44
stickystart "garrison_recordsVA"
step
click Sack of Supplies##230729
collect 5 Sack of Supplies##111735 |q Logistical Nightmare##34766/1 |goto 69.11,29.82
step
label "garrison_recordsVA"
click Garrison Records##230735
|tip They look like piles of books and papers on the ground around this area.
collect 5 Garrison Records##111736 |q Logistical Nightmare##34766/2 |goto 68.1,31.3
stickystart "lumberVA"
step
accept Bonus Objective: Mor'gran Logworks##35237
kill 8 Iron Shredder##75815 |q Bonus Objective: Mor'gran Logworks##35237/1 |goto 65.99,31.26
step
label "lumberVA"
accept Bonus Objective: Mor'gran Logworks##35237
click Lumber##231962
|tip Piles of logs around the area.
collect 20 Lumber##112994 |q Bonus Objective: Mor'gran Logworks##35237/2 |goto 65.76,31.57
step
_Cross_ the bridge |goto Talador/0 70.2,29.5 < 20 |only if walking
talk Provisioner Naya##79921
turnin Logistical Nightmare##34766 |goto 71.19,29.43
accept Send Them Running##34803 |goto 71.19,29.43
step
kill Vicegnaw##80053 |q Send Them Running##34803/1 |goto 70.55,27.70
step
talk Provisioner Naya##79921
turnin Send Them Running##34803 |goto 71.19,29.44
step
talk Paoni Softhoof##81359
home Vol'jin's Pride |goto Talador/0 72.0,30.0
step
_Cross_ the bridge |goto Talador/0 70.2,29.4 < 20 |only if walking
_Follow_ the path |goto 68.3,23.8 < 20 |only if walking
_Continue_ along the path |goto Talador/0 66.6,20.6 < 20 |only if walking
_Cross_ the stream |goto 65.1,14.0 < 20 |only if walking
talk Gazlowe##75873
accept Gazlowe's Solution##33721 |goto 62.09,10.40
step
talk Draka##75808
accept In Short Supply##33735 |goto 62.01,10.99
step
talk Durotan##75806
turnin One Step Ahead##34683 |goto 61.51,10.95
accept Through the Looking Glass##33754 |goto 61.51,10.96
step
click Gazlowe's Eye 'n' Ear##225769 |tip The brass and steel looking glass on a a rock.
Look through Gazlowe's Eye 'n' Ear |q Through the Looking Glass##33754/1 |goto 61.57,11.01
step
talk Durotan##75806
turnin Through the Looking Glass##33754 |goto 61.51,10.95
accept Too Many Irons in the Fire##33722 |goto 61.51,10.96
accept Old Friends, New Enemies##35226 |goto 61.51,10.96
stickystart "iron_horde_explosivesVA"
stickystart "slay_iron_hordeVA"
step
_Follow_ the hill down |goto Talador/0 61.9,9.9 < 20 |only if walking
_Continue_ down the path |goto Talador/0 60.1,9.7 < 20 |only if walking
use Gazlowe's Solution##107899
Destroy the Blackrock Forge |q Gazlowe's Solution##33721/3 |goto 57.84,15.39
step
use Gazlowe's Solution##107899
Destroy the Munitions Landing |q Gazlowe's Solution##33721/2 |goto 56.23,12.49
step
label "iron_horde_explosivesVA"
click Iron Horde Explosives##235141
|tip They look like wooden boxes with metal bands around them.
collect 6 Iron Horde Explosives##107855 |q In Short Supply##33735/1 |goto 55.80,10.28
step
use Gazlowe's Solution##107899
Destroy the Thunderlord Cache |q Gazlowe's Solution##33721/1 |goto 56.66,9.68
step
label "slay_iron_hordeVA"
kill Iron Shredder##75815+, Grom'kar Shadowblade##75753+, Grom'kar Grimshot##75752+, Grom'kar Deadeye##75749+, Warsong Overseer##75745+, Grom'kar Vanguard##75747+
Slay #15# Iron Horde |q Too Many Irons in the Fire##33722/1 |goto Talador/0 56.4,10.6
step
_Go up_ the stairs |goto Talador/0 56.1,9.2 |only if walking
Meet Durotan at Orunai Coast |q Old Friends, New Enemies##35226/1 |goto 54.23,7.00
step
Watch the dialogue
Confront Orgrim |q Old Friends, New Enemies##35226/2 |goto 52.92,6.99
step
kill Grom'kar Lieutenant##81704 |q Old Friends, New Enemies##35226/3 |goto 52.90,6.90
step
_Go down_ the stairs |goto Talador/0 56.1,8.6 |only if walking
click Iron Shredder Decommission Orders##225726 |tip It's a brown book laying on a large stone.
accept Decommissioned Mission##33720 |goto 59.96,16.49
step
_Enter_ the cave |goto Talador/0 61.7,14.4 < 20 |walk
kill Engineer Draxen##76791 |q Decommissioned Mission##33720/1 |goto 63.08,14.48
step
clicknpc Decommissioned Iron Shredder##75869
Steal the Decommissioned Iron Shredder |q Decommissioned Mission##33720/2 |goto 63.25,14.56
step
_Leave_ the cave |goto Talador/0 61.7,14.4 < 20 |walk
_Go up_ the hill |goto Talador/0 60.2,17.9 < 20
_Enter_ Draka's Den |goto 60.0,20.2 < 20 |walk
Transport the Decommissioned Iron Shredder to Draka's Den |q Decommissioned Mission##33720/3 |goto 59.20,20.32
step
talk Draka##75808
turnin In Short Supply##33735 |goto 58.92,20.15
accept Iron Them Out##33736 |goto 58.96,20.12
step
talk Durotan##75958
turnin Old Friends, New Enemies##35226 |goto 58.92,20.20
turnin Too Many Irons in the Fire##33722 |goto 58.92,20.20
accept Dreadpiston##34950 |goto 58.94,20.21
step
talk Gazlowe##75924
turnin Gazlowe's Solution##33721 |goto 58.95,20.72
turnin Decommissioned Mission##33720 |goto 58.95,20.72
accept Vol. X Pages ?##33724 |goto 58.95,20.72
stickystart "siege_weaponsVA"
stickystart "manual_pagesVA"
step
_Leave_ the cave |goto Talador/0 59.9,20.2 < 20 |walk
_Go up_ the hill |goto Talador/0 60.0,23.6 < 20 |only if walking
_Follow_ the path |goto Talador/0 58.2,26.9 < 30 |only if walking
kill Dreadpiston##80576 |q Dreadpiston##34950/1 |goto 56.56,27.30
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.90,25.96
step
kill Blademaster Bralok##76981
collect Ahm's Heirloom##108825 |q Dying Wish##33973/1 |goto 56.99,24.48
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.97
step
label "siege_weaponsVA"
click Iron Horde Siege Engine##225760
|tip They look like very large cannons on wheels parked around this area.
Destroy #6# Siege Weapons |q Iron Them Out##33736/1 |goto 55.70,26.86
You can find more around [Talador/0 57.3,29.6]
step
label "manual_pagesVA"
kill Burning Blademaster##75794+, Grom'kar Siegesmith##80552+
Collect #20# Manual Pages |q Vol. X Pages ?##33724/1 |goto 57.27,28.18
step
_Cross_ the bridge |goto 56.8,33.7 < 20 |only if walking
_Follow_ the path|goto Talador/0 55.9,37.9
talk Tega Skyblade##81058
fpath Durotan's Grasp |goto Talador/0 55.4,40.8
step
talk Durotan##75959
turnin Dreadpiston##34950 |goto 55.60,40.94
step
talk Draka##75808
turnin Iron Them Out##33736 |goto 55.55,40.98
step
talk Gazlowe##75941
turnin Vol. X Pages ?##33724 |goto 55.68,41.16
accept An Eye for a Spy##33728 |goto 55.68,41.16
step
click Gazlowe's Eye 'n' Ear##225769
|tip The brass and steel looking glass on a a rock.
Look through Gazlowe's Eye 'n' Ear |q An Eye for a Spy##33728/1 |goto 55.74,41.09
step
talk Gazlowe##75941
turnin An Eye for a Spy##33728 |goto 55.68,41.17
accept Born to Shred##33729 |goto 55.69,41.16
step
clicknpc Iron Shredder Prototype##75721
Take Control of the Iron Shredder |q Born to Shred##33729/1 |goto Talador/0 55.4,41.1
step
_Cross_ the bridge |goto Talador/0 57.5,37.7 < 20 |walk
Use the abilities on your hot bar:
kill Grom'kar Vanguard##75948+, Grom'kar Deadeye##75943+, Burning Blademaster##75945+, Grom'kar Shadowblade##75946+, Grom'kar Grimshot##75947+, Fireblade Invoker##77066+
|tip They are all around this area.
Slay #100# Iron Horde in Tuurem |q Born to Shred##33729/2 |goto Talador/0 60.1,40.5
step
clicknpc Iron Shredder Prototype##75968
|tip Click yourself, since you're riding in the Iron Shredder Prototype.
turnin Born to Shred##33729
accept Engineering Her Demise##33730
step
kill Ketya Shrediron##75986 |q Engineering Her Demise##33730/1 |goto 61.05,38.69
step
_Cross_ the bridge |goto Talador/0 57.9,37.8 |only if walking
talk Durotan##75959
turnin Engineering Her Demise##33730 |goto 55.58,40.96
accept Khadgar's Plan##34962 |goto 55.58,40.95
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34962 |goto 54.18,36.43
accept The Battle for Shattrath##33731 |goto 54.19,36.43
step
Go to _The Battle for Shattrath_ |goto Talador/0 50.4,35.0 < 40 |c |only if walking and havequest(33731)
talk Gazlowe##77191
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Gazlowe |scenariogoal 1/25835 |goto Talador/0 50.5,35.0
step
clicknpc Iron Star##86671
|tip It's a giant metal wheel of destruction.
Enter the Iron Star |scenariogoal 2/25177
step
_Go down_ the stairs |goto Talador/0 46.3,35.3 < 20 |walk
_Continue_ down the stairs |goto 45.7,33.5 < 20 |walk
Reach the Harbor |scenariogoal 3/25176 |goto 45.4,25.8
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto Talador/0 45.4,24.6
step
Kill enemies while Khadgar casts his spell
Protect Khadgar |scenariogoal 4/24351 |goto Talador 45.4,23.5
|tip Stand in the circles of light to gain healing.
step
Confront Blackhand |scenariogoal 5/25178 |goto Talador/0 46.7,21.2
step
Watch the dialogue
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Khadgar to Teleport to the Battleship |scenariogoal 5/24679 |goto Talador/0 46.7,20.8
step
kill Machinist B'randt##80962
Defeat Machinist B'randt |scenariogoal 5/24352 |goto Talador 48.5,12.8
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Khadgar to Teleport to the Flagship |scenariogoal 6/24680 |goto Talador/0 48.5,12.9
step
kill Blackhand##77256
Survive Blackhand's Onslaught |scenariogoal 6/24678 |goto Talador 46.5,19.1
Complete the Battle for Shattrath |q The Battle for Shattrath##33731/1 |goto Talador 46.5,19.1
step
clicknpc Portal to Talador##45454 |goto Talador/0 46.5,20.9
Teleport back to _Vol'jin's Pride_ |goto Talador/0 71.4,29.6 < 100 |noway |c |q 33731 |only if walking
|only if havequest(33731)
step
talk Durotan##79604
turnin The Battle for Shattrath##33731 |goto 71.42,29.61
step
_Go through_ the doorway |goto Talador/0 71.8,28.9 < 20 |only if walking
_Follow_ the path up |goto Talador 75.0,30.8 < 20 |only if walking
_Continue following_ the path |goto Talador 77.4,29.5 < 20 |only if walking
accept Bonus Objective: Zangarra##37422 |goto Talador 79.3,27.5
step
talk Dominic Arlington##80932
fpath Zangarra |goto Talador 80.4,25.3
step
clicknpc Khadgar's Portal##95699 |goto Talador/0 80.6,26.1
|tip It's a small blue swirling portal.
Teleport to Khadgar's Tower |goto Talador 83.6,31.0 < 50 |noway |c
|only if havequest(37422)
stickystart "encroaching_giantVA"
step
accept Bonus Objective: Zangarra##37422
kill 6 Invasive Shambler##79335 |q Bonus Objective: Zangarra##37422/1 |goto Talador 81.1,29.2
step
label "encroaching_giantVA"
accept Bonus Objective: Zangarra##37422
kill Encroaching Giant##79333 |q Bonus Objective: Zangarra##37422/2 |goto Talador 81.1,29.2
|tip They are rarer, so just walk around until you find one.
step
_Follow_ the path up |goto Talador 82.4,30.7 < 10 |only if walking
_Continue following_ the path |goto Talador 83.1,30.1 < 10 |only if walking
clicknpc Khadgar's Portal##95699  |goto Talador 83.6,31.0 < 5 |only if walking
|tip It's a small blue swirling portal.
Teleport to Leave Khadgar's Tower |goto Talador 80.6,26.1 < 50 |noway |c
|only if dist("Talador",83.6,31.0) < 200
step
_Run up_ the path through the mountains |goto Talador 79.7,27.0 < 20 |only if walking
_Follow_ the road |goto Talador 74.8,31.3 < 30 |only if walking
talk Crystal-Shaper Barum##75896
accept Burning Sky##33740 |goto 73.07,38.76
accept Pieces of Us##33734 |goto 73.07,38.76
stickystart "adherent_invadersVA"
step
_Cross_ the bridge |goto Talador/0 75.5,40.8 < 20 |only if walking
click Barum's Notes##225778
|tip It looks like an open book laying on the ground.
accept Barum's Notes##33761 |goto 76.28,42.74
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
click Polished Crystal##241504
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
label "adherent_invadersVA"
kill Adherent Wing-Guard##75283+, Adherent Squallbringer##75290+, Adherent Sun-Caller##85434+
Slay #12# Adherent Invaders |q Burning Sky##33740/1 |goto Talador/0 77.0,42.0
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
accept Seek Out the Seer##34721 |goto Talador 71.4,47.6
He _travels the road_ between these 2 points:
Point _A_: [Talador 71.4,47.6]
Point _B_: [Talador 67.2,42.9]
step
talk Ziz Fizziks##79870
accept Clear!##34751 |goto Talador/0 64.2,47.7
step
kill Lakebottom Zapper##79636+
|tip They're underwater.
collect 6 Zapper Sac##111637 |q Clear!##34751/1 |goto Talador/0 61.7,48.6
step
talk Ziz Fizziks##79870
turnin Clear!##34751 |goto Talador/0 64.2,47.7
step
talk Pleasure-Bot 8000##79853
accept New Owner##35238 |goto Talador/0 64.2,47.8
|tip It may take a few seconds before you can accept this quest.
step
talk Seer Malune##76665
turnin Seek Out the Seer##34721 |goto Talador 65.4,50.7
accept Dust of the Dead##33872 |goto Talador 65.4,50.7
accept Cure of Aruunem##33873 |goto Talador 65.4,50.7
stickystart "aruunem_berriesVA"
step
kill Agitated Duskwing##76668+, Duskwing Flutterer##77331+, Elder Duskwing##77328+
collect 7 Handful of Duskwing Dust##108645 |q Dust of the Dead##33872/1 |goto Talador 65.8,52.1
step
label "aruunem_berriesVA"
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
stickystart "young_prowlersVA"
step
accept Bonus Objective: Aruuna's Desolation##34639
kill Frenzied Ancient##79409 |q Bonus Objective: Aruuna's Desolation##34639/1 |goto 76.18,48.67
|tip He's a burning tree that walks around this area, so you may have to search for him.
step
label "young_prowlersVA"
accept Bonus Objective: Aruuna's Desolation##34639
clicknpc Panicked Young Prowler##79432+
Calm #7# Young Prowlers |q Bonus Objective: Aruuna's Desolation##34639/2 |goto 75.80,49.12
step
talk Crystal-Shaper Barum##75913
turnin Burning Sky##33740 |goto 76.71,55.25
turnin Pieces of Us##33734 |goto 76.71,55.25
turnin Barum's Notes##33761 |goto 76.71,55.25
stickystart "shadowtomeVA"
stickystart "evacuateoutcastVA"
step
_Run around_ the Alliance Camp |goto Talador/0 76.3,58.1 < 30 |only if walking
_Enter_ the cave |goto Talador 80.2,61.6 < 20 |walk
kill Wing-Guard Kuuan##75353 |q Kura's Vengeance##33582/1 |goto 80.34,64.03
step
label "shadowtomeVA"
_Leave_ the cave |goto Talador 80.2,61.6 < 20 |walk
click Eat, Scry, Love##225513
|tip The books have many different names. They look like small red books on the ground and under blue canopies all around this area. There's also one in the cave where you kill Wing-Guard Kuuan.
Collect #6# Shadow Tomes |q Forbidden Knowledge##33581/1 |goto 74.64,62.34
step
label "evacuateoutcastVA"
talk Outcast Shadeweaver##75336+
|tip There are multiple Outcast named mobs.  They are arrakoas standing all around this area.
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
_Cross_ the river |goto Talador/0 64.4,57.0 < 20 |only if walking
_Follow_ the path |goto 63.4,61.8 < 20 |only if walking
_Go up_ the stairs |goto Talador/0 62.4,65.5 < 20 |only if walking
talk Morketh Bladehowl##80229
turnin Going to the Gordunni##34837 |goto 62.15,69.22
accept Dropping Bombs##34840 |goto 62.14,69.23
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Base Catapult |q Dropping Bombs##34840/1 |goto 63.59,69.15
step
_Run up_ the path |goto Talador 63.9,69.8 < 20 |only if walking
clicknpc Gordunni Boulderthrower##80428
Destroy the Central Catapult |q Dropping Bombs##34840/2 |goto Talador/0 65.5,69.0
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Summit Catapult |q Dropping Bombs##34840/3 |goto Talador/0 66.8,68.1
step
_Run up_ the path |goto Talador 67.5,68.6 < 20 |only if walking
click Grappling Hook and Rope##241659
|tip It looks like a small rope coiled around a tiny wooden post on the ground.
Use the Grappling Hook |q Dropping Bombs##34840/4 |goto 68.69,69.76
step
talk Morketh Bladehowl##80339
turnin Dropping Bombs##34840 |goto 68.76,70.53
accept Punching Through##34855 |goto 68.76,70.53
accept Prized Repossessions##34858 |goto 68.76,70.53
accept Supply Recovery##34860 |goto 68.76,70.53
stickystart "ironhordeVA"
stickystart "guardianmaceVA"
step
_Cross_ the bridge |goto Talador 69.5,73.7 < 20 |only if walking
_Go up_ the stairs |goto Talador 68.5,79.0 < 10 |only if walking
kill Vizier Vorgorsh##80294 |q Punching Through##34855/1 |goto 68.53,82.94
|tip He's inside the stone building.
step
_Run up_ the stairs |goto Talador 67.8,79.5 < 10 |only if walking
kill Vizier Zulmork##80292 |q Punching Through##34855/2 |goto 67.1,77.0
|tip He's inside the stone building.
step
kill Vizier Cromaug##80295 |q Punching Through##34855/3 |goto 66.30,80.94
|tip He's inside the stone building.
step
label "ironhordeVA"
clicknpc Iron Horde Shipment##80957
|tip They look like wooden and metal chests on the ground all around this area.
Obtain #6# Iron Horde Shipment |q Supply Recovery##34860/1 |goto 69.13,77.64
step
label "guardianmaceVA"
kill Gordunni Cleaver##79234+, Gordunni Basher##79231+, Gordunni Warcrier##81764+
collect 6 Shattrath Guardian Mace##112504 |q Prized Repossessions##34858/1 |goto 65.99,79.47
step
Next to you:
|tip If you are in Gordal Fortress, he will be next to you.
talk Morketh Bladehowl##80341
turnin Punching Through##34855
turnin Prized Repossessions##34858
turnin Supply Recovery##34860
accept The Lord of the Gordunni##34870
step
_Go up_ the stairs |goto Talador 65.5,80.1 < 10 |only if walking
kill Witch Lord Morkurk##80335 |q The Lord of the Gordunni##34870/1 |goto 64.07,81.79
Use the _Emergency Rocket Pack_ |use Emergency Rocket Pack##112307
|tip Use this when he is almost done casting Astral Annihilation.
collect Fury of the Forge##112308 |q The Lord of the Gordunni##34870/2 |goto 64.07,81.79
step
talk Morketh Bladehowl##80342
turnin The Lord of the Gordunni##34870 |goto 64.50,81.62
accept The Only Way to Travel##34971 |goto 64.50,81.62
step
talk Morketh Bladehowl##80623
turnin The Only Way to Travel##34971 |goto 71.19,29.90
accept Armor Up##34972 |goto 71.19,29.90
step
talk Knight-Lord Dranarus##79612
accept The Lady of Light##34696 |goto 71.84,29.75
step
_Cross_ the river |goto Talador/0 64.4,57.0 < 30 |only if walking
_Go up_ the stairs |goto Talador/0 62.5,65.3 < 30 |only if walking
_Continue_ up the stairs |goto Talador/0 60.6,67.4 < 30 |only if walking
_Follow_ the path |goto 57.5,67.2 < 30 |only if walking
talk Vindicator Nobundo##78482
|tip He moves around the area, so you may need to search for him.
accept Disrupting the Flow##33917 |goto 56.72,65.78
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Lady Liadrin##75121
turnin The Lady of Light##34696 |goto 55.49,67.67
accept Holding the Line##34418 |goto 55.50,67.65
step
talk Mehlar Dawnblade##78577
accept Powering the Defenses##35249 |goto 55.56,67.04
step
talk Ranger Belonis##79696
accept Every Bit Counts##34710 |goto 55.38,66.78
step
talk Roka##81078
fpath Exarch's Refuge |goto Talador/0 54.5,67.8
step
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##35249 |goto Talador/13 68.38,19.35
accept We Must Construct Additional Pylons##34351 |goto 68.38,19.35
step
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto 52.24,38.94
stickystart "arkonite_crystalsVA"
step
click Arkonite Pylon##229034
|tip It looks like a large floating slab of stone.
collect Arkonite Pylon##110271 |q We Must Construct Additional Pylons##34351/2 |goto 31.83,48.35
step
_Go down_ the stairs |goto Talador/13 54.7,42.3 < 20 |only if walking
Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto 58.96,55.01
step
kill Tagar Spinebreaker##76745 |q Nightmare in the Tomb##33530/2 |goto Talador/13 64.1,68.6
step
label "arkonite_crystalsVA"
click Arkonite Crystal##229422
|tip They look like big purple crystals all over the ground around this area.
collect 6 Arkonite Crystal##110253 |q We Must Construct Additional Pylons##34351/1 |goto 37.82,46.57
stickystart "slay_demonsVA"
step
click Burning Resonator##229139
|tip It looks like a green glowing crystal floating above a spiked altar.
Destroy the Burning Resonator |q Disrupting the Flow##33917/1 |goto Talador/0 57.3,64.1 |count 1
step
kill O'mogg Blackheart##76876 |q The Heart of Auchindoun##33920/1 |goto Talador/0 56.5,62.8
step
click Karab'uun##229269
|tip It's a big pink crystal suspended in chains.
collect Karab'uun##108733 |q The Heart of Auchindoun##33920/2 |goto 56.68,62.49
step
click Burning Resonator##229139
|tip It looks like a green glowing crystal floating above a spiked altar.
Destroy the Burning Resonator |q Disrupting the Flow##33917/1 |goto Talador/0 56.4,63.2 |count 2
step
click Burning Resonator##229139
|tip It looks like a green glowing crystal floating above a spiked altar.
Destroy the Burning Resonator |q Disrupting the Flow##33917/1 |goto Talador/0 55.6,64.2 |count 3
step
click Burning Resonator##229139
|tip It looks like a green glowing crystal floating above a spiked altar.
Destroy the Burning Resonator |q Disrupting the Flow##33917/1 |goto Talador/0 54.9,62.4 |count 4
step
label "slay_demonsVA"
kill Legion Assailant##78455+, Abyssal Invader##78458+, Burning Hunter##78457+, Shadow Council Pyromancer##78202+
Slay #15# Demons |q Holding the Line##34418/1 |goto Talador/0 56.1,65.2
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.66,65.87
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.50,67.13
step
talk Lady Liadrin##75121
turnin Holding the Line##34418 |goto 55.48,67.67
turnin Nightmare in the Tomb##33530 |goto 55.48,67.67
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.11,67.40
step
talk Lady Liadrin##75121
accept Sunsworn Camp##34451 |goto 55.49,67.66
step
_Follow_ the path |goto 59.5,68.9 < 20 |only if walking
talk Lady Liadrin##75246
turnin Sunsworn Camp##34451 |goto 61.00,72.54
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33970 |goto 60.93,72.46
step
talk Soulbinder Tuulani##78028
accept Antivenin##33971 |goto 60.90,72.53
step
talk Mehlar Dawnblade##75249
accept Vile Defilers##33972 |goto 60.52,72.39
stickystart "deathweb_fangsVA"
step
_Cross_ the bridge |goto 59.3,77.6 < 20 |only if walking
_Follow the path_ back |goto Talador/0 60.4,82.1 < 20 |only if walking
_Enter_ the cave |goto 61.3,84.2 |walk |only if walking
_Follow_ the path in the cave |goto Talador/0 62.4,83.9 < 20 |indoors Deathweb Hollow
kill Xanatos the Defiler##75294 |q Into the Hollow##33970/1 |goto Talador/0 65.6,86.8 |indoors Deathweb Hollow
stickystop "deathweb_fangsVA"
step
click Sha'tari##229596
|tip It looks like a pink crystal with a shield around it floating next to the eggs.
collect Sha'tari##110683 |q Into the Hollow##33970/2 |goto 65.79,86.87 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33972/1 |count 1 |goto Talador 64.8,86.9 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33972/1 |count 2 |goto 65.3,85.4 |indoors Deathweb Hollow
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33972/1 |count 3 |goto 64.0,85.6 |indoors Deathweb Hollow
stickystart "deathweb_fangsVA"
step
_Enter_ the hallway |goto Talador/0 63.3,84.4 < 10 |walk |indoors Deathweb Hollow
_Follow_ the path |goto Talador/0 62.3,84.0 < 10 |walk |indoors Deathweb Hollow
_Leave_ the cave |goto Talador/0 61.1,84.0 < 10 |walk
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33972/1 |count 4 |goto Talador 58.7,82.7
step
click Defiling Crystal##228051
|tip It looks like a floating gold colored crystal.
Destroy the Defiling Crystal |q Vile Defilers##33972/1 |count 5 |goto Talador 61.6,81.7
step
label "deathweb_fangsVA"
kill Deathweb Crawler##75273+, Deathweb Egg Tender##76947+
collect 9 Deathweb Fang##109744 |q Antivenin##33971/1 |goto 59.37,79.02
step
_Cross_ the bridge |goto Talador/0 59.3,77.3 < 20 |only if walking
talk Mehlar Dawnblade##75249
turnin Vile Defilers##33972 |goto 60.52,72.40 |only if walking
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33971 |goto 60.91,72.54
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33970 |goto 60.92,72.45
step
talk Lady Liadrin##75246
accept Scheduled Pickup##34242 |goto 61.00,72.54
stickystart "shattered_hand_gruntsVA"
step
_Follow_ the path back |goto Talador/0 58.4,78.7 < 20 |only if walking
_Continue_ along the path |goto 55.8,83.2 < 20 |only if walking
accept Bonus Objective: Zorkra's Fall##34660
clicknpc Zorka's Void Gate##79520+
|tip They look like big blue and pink swirling portals around this area.
Seal #4# of Zorka's Void Gates |q Bonus Objective: Zorkra's Fall##34660/1 |goto Talador/0 54.1,87.1
step
label "shattered_hand_gruntsVA"
accept Bonus Objective: Zorkra's Fall##34660
kill 6 Shattered Hand Grunt##79544 |q Bonus Objective: Zorkra's Fall##34660/2 |goto Talador/0 54.7,87.6
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34242 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.52,87.53
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
step
_Run up_ the stairs |goto Talador/0 50.0,87.6 < 10
click Hastily Written Note##227069
|tip It looks like a scroll laying on the ground next to the fountain.
accept Invasion of the Soul Eaters##33988 |goto 49.20,88.07
stickystart "telmorinvadorsVA"
step
click Telmor Registry##227054
|tip It looks like an open book laying on some white sacks, next to a pile of boxes.
collect Telmor Registry##108896 |q Never Forget##34013/1 |goto 49.23,87.82
step
click Forge##227067
|tip It looks like a metal hooded object with fire inside of it.
collect Auchenai Torch##108886 |q Invasion of the Soul Eaters##33988/1 |goto 49.23,87.82
stickystart "pilesofbodiesVA"
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
step
click Auch'naaru##229654
|tip It looks like a big floating pink crystal with a shield around it.
collect Auch'naaru##109197 |q The Final Piece##33976/2 |goto 44.45,90.89
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.86,90.52
accept Changing the Tide##34326 |goto 44.86,90.52
step
label "pilesofbodiesVA"
click Body Pile##227525
|tip They looks like piles of blue bodies on the ground around this whole area.
Burn #4# Piles of Bodies |q Invasion of the Soul Eaters##33988/2 |goto 49.57,89.07
step
label "telmorinvadorsVA"
kill Demon Conjurer##77901+, Fervid Adherent##77022+, Depraved Hunter##77026+, Wrathguard Destroyer##75382+
Route #12# Telmor Invaders |q Payback##34234/1 |goto Talador 48.6,88.2
step
Click the _Quest Complete_ Box:
turnin Invasion of the Soul Eaters##33988
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.38,87.32
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.52,87.55
step
_Follow_ the path |goto Talador/0 45.4,83.1 < 30 |only if walking
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.93
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Lady Liadrin##75389
accept Ogre Diplomacy##34122 |goto 42.96,76.23
step
talk Beldos##81068
fpath Retribution Point |goto Talador/0 42.1,76.8
stickystart "slay_angoroshVA"
step
_Follow_ the path back |goto Talador/0 40.7,83.2 < 20 |only if walking
kill Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto Talador/0 39.5,83.7
step
kill Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto 42.69,84.87
step
clicknpc Altar of Ango'rosh##77393
Perform the Ritual |q Desperate Measures##34092/3 |goto 41.25,82.46
|tip Be sure not to move as the ritual channels
step
label "slay_angoroshVA"
kill Ango'rosh Crusher##77352+, Ango'rosh Spellweaver##77362+, Ango'rosh Hunter##77402+
Slay #10# Ango'rosh |q Ogre Diplomacy##34122/1 |goto Talador/0 41.7,83.7
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.44,75.93
step
talk Lady Liadrin##75389
turnin Ogre Diplomacy##34122 |goto 42.96,76.23
accept Retribution for the Light##34144 |goto 42.96,76.23
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto 42.93,76.10
step
click Shadow Council Communicator##227737
|tip It looks like a purple orb floating in a metal stand.
accept Hiding in the Shadows##34163 |goto 37.25,79.39
stickystart "gorebounddemonsVA"
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
stickystart "shadowcouncilVA"
step
_Run up_ the path |goto Talador 34.2,73.1 < 10 |only if walking
clicknpc Shadow Orb##40469
|tip It's a big floating purple orb at the top of this wooden tower.
Destroy the Northern Shadow Orb |q Hiding in the Shadows##34163/3 |goto 34.46,70.38
step
Click the _Complete Quest_ Box:
turnin Hiding in the Shadows##34163
step
label "shadowcouncilVA"
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
label "gorebounddemonsVA"
kill Gorebound Legionnaire##79127+, Shadowborne Dementor##79187+, Gorebound Demonguard##77541+, Ravenous Mongrel##79110+, Eye of Gul'dan##77563+, Gorebound Vessel##79125+, Felwrought Annihilator##77528+
Slay #15# Demons |q Retribution for the Light##34144/1 |goto 34.53,73.91
step
_Run up_ the path |goto Talador 32.5,75.1 < 20 |only if walking
_Continue following_ the dirt path |goto Talador 32.1,75.7 < 20 |only if walking
_Enter_ the cave |goto Talador 31.9,74.6 < 20 |walk
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.22,73.61
accept Destination: Unknown##34564 |goto 31.22,73.61
step
clicknpc Demonic Gateway##77571
|tip It looks like a big green portal.
Take the Portal |q Destination: Unknown##34564/1 |goto 30.92,73.15
step
While you are inside the Portal:
kill Mongrethod##77579 |q Destination: Unknown##34564/2
|tip You will have a lot of help killing him.
step
While you are inside the Portal:
clicknpc Demonic Gateway##77571
|tip It looks like a swirling portal with a demon skull above it.
Take the Portal |q Destination: Unknown##34564/3
step
talk Lady Liadrin##77580
turnin Retribution for the Light##34144 |goto 45.68,74.47
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Lady Liadrin##77580
accept Come Together##34706 |goto 45.70,74.46
step
_Follow the stairs_ up |goto Talador/0 44.6,74.6 < 20 |only if walking
_Follow_ the path |goto Talador/0 42.8,74.4 < 20 |only if walking
talk Caleb##76826
accept Just Peachicky##33882 |goto Talador/0 36.2,65.0
accept Sher'KHAAAAAAANNNN!##33884 |goto Talador/0 36.2,65.0
stickystart "sharpfang_stalkersVA"
stickystart "peachicksVA"
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
label "sharpfang_stalkersVA"
kill 8 Sharpfang Stalker##76685 |q Sher'KHAAAAAAANNNN!##33884/1 |goto Talador/0 32.0,68.0
|tip They look like black tigers with red stripes all around this area.
step
label "peachicksVA"
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
_Follow_ the path |goto Talador/0 37.3,67.6 < 30
accept Bonus Objective: Court of Souls##34667 |goto Talador/0 43.8,63.5
stickystart "bonuscourtVA"
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
Release 8 Draenei spirits |q Bonus Objective: Court of Souls##34667/1 |goto Talador 43.2,60.9
step
label "bonuscourtVA"
accept Bonus Objective: Court of Souls##34667
kill Doombringer##79503+, Searing Ravager##79506+, Tormenting Concubine##79540+
Slay #10# Demons |q Bonus Objective: Court of Souls##34667/2 |goto Talador/0 43.2,60.9
step
_Leave_ the Court of Souls area |goto Talador 44.7,60.5 < 10
talk Ageilaa##78534
turnin Every Bit Counts##34710 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390+
|tip Don't kill them, just get them to 35% Health or less, then stop attacking them.
use Dissipation Crystal##110468
|tip Use the Dissipation Crystal on weakened Frenzied Manafeeders. You have to be close to them to be able to use the item
Soothe #8# Frenzied Manafeeders |q Frenzied Manafeeders##34400/1 |goto 51.43,55.25
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.16
step
_Enter_ the mine |goto 51.2,51.6 < 20 |walk
talk Vindicator Doruu##78538
turnin Trouble In The Mine##34399 |goto 51.61,50.47 |indoors Jorune Mine
step
talk Manduil Skycaller##78515
accept Arcane Essence##34401 |goto 51.64,50.51 |indoors Jorune Mine
accept Crystals of Unusual Power##34404 |goto 51.64,50.51 |indoors Jorune Mine
stickystart "jorune_crystalsVA"
step
kill Arcane Wraith##78326+, Crystal Rager##78452+
collect 6 Arcane Essence##110390 |q Arcane Essence##34401/1 |indoors Jorune Mine
step
label "jorune_crystalsVA"
click Jorune Crystals##229160
|tip They look like pink crystals in mine carts, in small buckets, or on piles on the ground all around inside this cave.
collect 10 Unrefined Power Crystals##110391 |q Crystals of Unusual Power##34404/1 |goto Talador/0 52.2,49.7 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 10 |walk |indoors Jorune Mine
talk Manduil Skycaller##78515
turnin Arcane Essence##34401 |goto 51.64,50.51 |indoors Jorune Mine
turnin Crystals of Unusual Power##34404 |goto 51.64,50.51 |indoors Jorune Mine
accept An'dure The Giant##34414 |goto 51.64,50.51 |indoors Jorune Mine
step
kill An'dure the Awakened##78372
collect Crystal Giant Heart##110418 |q An'dure The Giant##34414/1 |goto Talador/0 54.1,50.0 |indoors Jorune Mine
step
_Head up_ the ramp |goto Talador 52.7,50.7 < 10 |indoors Jorune Mine
talk Manduil Skycaller##78515
turnin An'dure The Giant##34414 |goto 51.64,50.51 |indoors Jorune Mine
accept Kaelynara Sunchaser##34447 |goto 51.64,50.51 |indoors Jorune Mine
step
talk Manduil Skycaller##78515
Tell him "_I am ready to confront Kaelynara._"
Speak With Manduil |q Kaelynara Sunchaser##34447/1 |goto 51.65,50.51 |indoors Jorune Mine
step
Wait to be teleported:
kill Kaelynara Sunchaser##78501 |q Kaelynara Sunchaser##34447/2 |goto 52.08,47.54 |indoors Jorune Mine
step
talk Manduil Skycaller##78515 |goto Talador 52.1,47.7 |indoors Jorune Mine
Tell him "_I am ready to return to the Jorune Mine._"
Teleport back into Jorune Mine |goto Talador 51.6,50.5 < 10 |noway |c |q 34447 |indoors Jorune Mine
|only if havequest(34447)
step
talk Vindicator Doruu##78538
turnin Kaelynara Sunchaser##34447 |goto 51.62,50.48 |indoors Jorune Mine
step
talk Knight-Lord Dranarus##79612
turnin Come Together##34706 |goto 71.84,29.74
step
talk Shadow Hunter Kajassa##79627
accept News from Spires of Arak##35537 |goto Talador/0 71.24,29.95 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)",{
next="Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)",
image=ZGV.DIR.."\\Guides\\Images\\SpiresOfArak",
startlevel=96,
},[[
step
talk Rokhan##78487
turnin News from Spires of Arak##35537 |goto Frostwall/0 45.90,42.87
accept Arakkoa Exodus##34653 |goto 45.90,42.87
step
talk Bron Skyhorn##79407
Tell him _"Please fly me to Spires of Arak."_ |goto Frostwall/0 45.8,50.9 < 5
Fly to Spires of Arak |goto Spires of Arak 37.3,14.9 < 50 |noway |c
|only if havequest(34653) or havequest(36951)
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
_Follow_ the path |goto Spires of Arak 44.1,14.3 < 20 |only if walking
_Go through_ the doorway |goto Spires of Arak 42.4,15.3 < 20 |only if walking
click Weathered Wingblades##230529
|tip They look like 2 blade weapons held by an Arrakoa scarecrow.
collect Weathered Wingblades##111485 |q Hidden in Plain Sight##34656/1 |goto 41.23,16.27
step
label "bladewing"
kill 8 Adherent Bladewing##79598+ |q Adherents of the Sun God##34657/1 |goto 42.83,15.48
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
|tip You can use the Shatter Illusion button that appears to damage and stun enemies that attack you.
collect 5 Illusion Charm##230714 |q A Charming Deception##34756/1 |goto 51.34,33.77
step
label "echohunters"
kill 10 Echo Hunter##79895 |q Echo Hunters##34805/1 |goto 51.29,37.23
|tip These are bats found flying above you.
step
_Enter_ the den |goto Spires of Arak 49.0,41.4 < 10 |walk
from Sun-Talon Oberyx##82623
collect The Eye of Anzu##113282 |q Syth's Secret##35668/1 |goto 48.3,42.9
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
talk Shadow Hunter Ukambe##81890
accept One of Our Own##35272 |goto 45.90,46.34
step
talk Shadow-Sage Iskar##80153
Tell him "_Your prisoner is with me. He means your people no harm._"
Convince Shadow-Sage Iskar |q One of Our Own##35272/1 |goto 46.52,45.61
step
talk Shadow Hunter Ukambe##81890
turnin One of Our Own##35272 |goto 45.89,46.37
accept Inspecting the Troops##35275 |goto 45.90,46.36
step
_Go down_ the hill |goto Spires of Arak 43.9,48.6 < 20 |only if walking
_Go right_ at the crossroad |goto Spires of Arak 41.6,48.9 < 20 |only if walking
talk Shadow Hunter Ukambe##81913
turnin Inspecting the Troops##35275 |goto 40.07,44.03
step
talk Taskmaster Gornek##81920
accept Orders, Commander?##35277 |goto 40.18,43.49
step
clicknpc Drafting Table##79177
Use the Drafting Table |q Orders, Commander?##35277/1 |goto Spires of Arak/0 40.2,43.4
step
clicknpc Drafting Table##79177
Select a Building |q Orders, Commander?##35277/2 |goto Spires of Arak/0 40.2,43.4
|tip You will be able to choose between the "Hearthfire Tavern" and the "Smuggler's Den" buildings. We recommend choosing the "Hearthfire Tavern", since you get an extra hearthstone, basically, and increased XP gains while in Spires of Arak.
Click here if you chose _Hearthfire Tavern_ |confirm |goto Spires of Arak/0 40.2,43.4 |next "hearthfire" |or
_Or_
Click here if you chose _Smuggler's Den_ |confirm |goto Spires of Arak/0 40.2,43.4 |next "smuggler" |or
step
label "smuggler"
talk Taskmaster Gornek##81920
turnin Orders, Commander?##35277 |goto 40.19,43.50
step
talk Shadow Hunter Ukambe##81959
accept What's Theirs is Ours##35295 |goto 40.27,43.39
step
talk Provisioner Galgar##82691
accept Peace Offering##35697 |goto 40.06,43.20
step
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.09,43.96
|next "spires_merge1"
step
label "hearthfire"
talk Taskmaster Gornek##81920
turnin Orders, Commander?##35277 |goto 40.19,43.50
accept Befriending the Locals##37326 |goto 40.18,43.49
step
talk Shadow Hunter Ukambe##81959
accept What's Theirs is Ours##35295 |goto 40.28,43.38
step
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.09,43.98
step
label "spires_merge1"
talk Taz'jari##84213
home Axefall |goto Spires of Arak/0 40.4,43.0 |future |q 35550
step
talk Hutou Featherwind##82612
fpath Axefall |goto Spires of Arak/0 39.5,43.4
step
_Go down_ the ledge |goto Spires of Arak/0 39.6,45.6 < 20 |only if walking
talk Shadow Hunter Ukambe##81961
turnin What's Theirs is Ours##35295 |goto 39.14,48.94
accept I See Dead People##35322 |goto 39.14,48.94
step
from Spectral Laborer##82055+
collect Bryan Finn's Schematic##113095 |q I See Dead People##35322/1 |goto Spires of Arak/0 37.5,49.3
step
talk Bryan Finn##82100
Select _Show the schematic to Bryan._
Show the Schematic to Bryan Finn |q I See Dead People##35322/2 |goto 38.99,48.72
step
talk Bryan Finn##82065
turnin I See Dead People##35322 |goto 38.99,48.72
accept A Parting Favor##35339 |goto 38.99,48.72
step
kill Renegade Cannoneer##82232+, Tormented Villager##82027+, Haunted Hound##82040+, Lingering Rifleman##82029+
collect 6 Spectral Essence##113106 |q A Parting Favor##35339/1 |goto 37.94,51.26
step
_Enter_ the building |goto Spires of Arak 37.7,51.3 < 10 |walk
_Go up_ the stairs |goto Spires of Arak 37.6,50.7 < 10 |walk
talk Alice Finn##82110
|tip She is upstairs in a bed.
Select _Show the spectral essences to Alice._
Free Alice Finn's Mind |q A Parting Favor##35339/2 |goto 37.67,51.07
step
talk Alice Finn##82124
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
_Run up_ the stairs |goto Spires of Arak 37.4,50.8 < 5 |walk
_Leave_ the building |goto Spires of Arak 37.7,51.3 < 10 |walk
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
talk Benjamin Gibb##86597
|tip He looks like a hooded skeleton buried in the ground, with only his head and shoulders showing above ground.
accept Three Feet Under##36864 |goto Spires of Arak/0 35.8,52.2
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
accept Admiral Taylor##36183 |goto 37.66,53.87
step
_Leave_ the building |goto Spires of Arak 37.4,53.5 < 10 |walk
_Go through_ the doorway |goto Spires of Arak 37.0,55.2 < 10 |only if walking
Find Admiral Taylor |q Admiral Taylor##36183/1 |goto 36.82,56.90
Watch the dialogue
kill Soulscythe##82314 |q Admiral Taylor##36183/2 |goto 36.82,56.90
kill Ephial##82320 |q Admiral Taylor##36183/3 |goto 36.81,57.42
step
talk Admiral Taylor##82375
turnin Admiral Taylor##36183 |goto 36.82,56.94
step
talk Shadow Hunter Ukambe##82402
|tip It will take a bit for him to show up.
accept Surviving in a Savage Land##35550 |goto 36.86,56.74
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
kill 5 Varashian Vilefang##85429+ |q Bonus Objective: The Writhing Mire##35649/3 |goto Spires of Arak/0 32.1,43.9
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
kill 20 Shattered Hand |q Bonus Objective: The Writhing Mire##35649/4 |goto Spires of Arak/0 32.1,43.9
step
_Run up_ the path |goto Spires of Arak 30.9,38.0 < 20 |only if walking
accept Bonus Objective: Bladefist Hold##36792 |goto 31.17,34.04
|tip There are Elite mobs here. If you find you cannot handle them you may need to ask for help.
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
talk Scout Cel##85566
accept Pinchwhistle Gearworks##35620 |goto 40.02,43.97
step
talk Taskmaster Gornek##81920
turnin Surviving in a Savage Land##35550 |goto 40.18,43.50
step
talk Hutou Featherwind##82612
Tell him _"Take me to the Pinchwhistle Gearworks."_
Travel to Pinchwhistle Gearworks |q Pinchwhistle Gearworks##35620/1 |goto 39.51,43.36
step
talk Kwiven Quickcog##82511
fpath Pinchwhistle Gearworks |goto Spires of Arak/0 60.9,73.3
step
_Go through_ the doorway |goto Spires of Arak 61.0,72.5 < 10 |only if walking
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35620 |goto 61.48,72.93
accept Defungination##35077 |goto 61.48,72.93
step
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto 61.45,72.96
step
talk Exterminator Lemmy##85062
accept Unwanted Pests##36179 |goto 62.56,73.90
stickystart "activateturrets"
stickystart "sporecreatures"
step
use QR58 Flame Blaster##112683
|tip Use the QR58 Flame Blaster next to Spore Pustules. They look like yellow round formations on the ground around this area.
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
_Follow_ the path |goto Spires of Arak 62.8,74.0 < 20 |only if walking
_Run up_ the path |goto Spires of Arak 61.8,72.5 < 20 |only if walking
talk Engineer Gazwitz##81128
turnin Spore-be-Gone##35079 |goto 61.45,72.96
turnin Unwanted Pests##36179 |goto 61.45,72.96
step
talk Kimzee Pinchwhistle##81109
turnin Defungination##35077 |goto 61.47,72.93
accept The Mother Lode##35080 |goto 61.47,72.93
step
_Follow_ the road |goto Spires of Arak 60.1,73.2 < 30 |only if walking
_Run up_ the path |goto Spires of Arak 59.1,77.5 < 20 |only if walking
Meet up with Kimzee Pinchwhistle |q The Mother Lode##35080/1 |goto 59.13,79.18
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
_Follow_ the path up |goto Spires of Arak 58.3,91.3 < 20 |only if walking
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
Place the Firebomb |q Preventing the Worst##35211/1 |count 2 |goto Spires of Arak 56.3,91.6
step
_Enter_ the building |goto Spires of Arak 55.7,91.0 < 10 |walk
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb upstairs in this house.
Place the Firebomb |q Preventing the Worst##35211/1 |count 3 |goto Spires of Arak 55.7,91.0
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb sitting on the ground.
Place the Firebomb |q Preventing the Worst##35211/1 |count 4 |goto Spires of Arak 56.5,89.5
step
clicknpc Firebomb##81632
|tip It's a big see-through yellow spiked bomb inside this small hut.
Place the Firebomb |q Preventing the Worst##35211/1 |count 5 |goto Spires of Arak 56.6,90.0
step
label "infectedpatrons"
kill Infected Bruiser##81184+
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
Ride on Kimzee's Flying Machine |q Flame On##35298/2 |goto 58.84,92.84
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto 61.60,72.84
accept Kimzee Pinchwhistle##36062 |goto 61.60,72.84
step
_Follow_ the path |goto Spires of Arak/0 60.0,73.8 < 30 |only if walking
_Follow_ the road |goto Spires of Arak/0 55.5,78.4 < 40 |only if walking
accept Bonus Objective: Bloodmane Pridelands##36660 |goto Spires of Arak/0 52.1,76.5
stickystart "bloodmane_saberons"
stickystart "prisoner_posts"
step
accept Bonus Objective: Bloodmane Pridelands##36660
kill Shadowclaw##86138 |q Bonus Objective: Bloodmane Pridelands##36660/5 |goto Spires of Arak/0 50.5,77.1
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak/0 48.6,74.6 < 30 |only if walking
_Continue_ following the path |goto Spires of Arak/0 48.7,71.3 < 20 |only if walking
kill Ralshira##86135 |q Bonus Objective: Bloodmane Pridelands##36660/4 |goto Spires of Arak/0 49.4,70.2
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak/0 46.5,68.5 < 30 |only if walking
kill Brokenfang##86076 |q Bonus Objective: Bloodmane Pridelands##36660/3 |goto Spires of Arak/0 45.1,65.0
step
label "bloodmane_saberons"
accept Bonus Objective: Bloodmane Pridelands##36660
kill Bloodmane Bonereaver##85896+, Bloodmane Shortfang##85892+, Bloodmane Earthbinder##85897+, Bloodmane Longclaw##85900+
Slay #15# Bloodmane Saberons |q Bonus Objective: Bloodmane Pridelands##36660/1 |goto Spires of Arak/0 46.4,68.5
step
label "prisoner_posts"
accept Bonus Objective: Bloodmane Pridelands##36660
clicknpc Prisoner Post##86159
|tip They look like tan wooden pillars with arrakoas tied to them all around this area. They can be in the caves also, so be sure to check those as well.
Free #6# Captured Ravenspeakers |q Bonus Objective: Bloodmane Pridelands##36660/2 |goto Spires of Arak/0 48.3,70.0
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
|tip It's an Arrakoa laying on the ground.
Select _Search him for the Worn Gavel._
collect Worn Gavel##115482 |q The Kaliri Whisperer##34884/1 |goto 45.42,36.32
step
clicknpc Skizzik##80233
|tip It's an Arrakoa laying on the ground.
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
|tip She's a big blue insect that walks in a circle slowly around this big tree.
step
label "ravagergrub"
clicknpc Ravager Grub##80472+
|tip They are small white slugs on the ground around this area.
collect 8 Ravager Grub##111934+ |q Baby Bird##34886/1 |goto 45.28,38.11
step
label "shadebackthorns"
kill 5 Shadeback Ravager##78931+ |q Mother of Thorns##34885/1 |goto 45.28,38.76
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
kill 15 Shattered Hand Orcs |q New Neighbors##34829/1 |goto 47.26,31.37
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
fpath Apexis Excavation |goto Spires of Arak/0 37.0,24.6
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
_Follow_ the path in the cave |goto Spires of Arak 33.1,27.4 < 10 |walk |indoors Apexis Chamber
kill Sol-Shaper Veoryx##81933 |q Sol Sisters##35259/1 |goto Spires of Arak 32.8,28.8 |indoors Apexis Chamber
step
talk Inactive Apexis Destroyer##82123
turnin Sol Sisters##35259 |goto Spires of Arak/0 32.6,29.0 |indoors Apexis Chamber
accept Shot-Caller##35261 |goto Spires of Arak/0 32.6,29.0 |indoors Apexis Chamber
step
_Follow_ the path in the cave |goto Spires of Arak 33.1,27.4 < 20 |walk |indoors Apexis Chamber
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
|tip If you "die", you can just click the chair and try again.
kill 30 Adherent Sol-Shaper##82245+ |q Hot Seat##35273/2 |goto 35.48,32.03
kill 20 Apexis Destroyer##82229+ |q Hot Seat##35273/1 |goto 35.48,32.03
step
label "outcast"
use Illusion Effigies##113084
|tip Use the Illusion Effigies on Enslaved Outcasts. They are Arrakoas all around this area.
Free #10# Enslaved Outcasts |q Hardly Working##35260/1 |goto Spires of Arak 34.4,27.4
You can find a few more in the cave at [Spires of Arak 34.6,25.9]
step
label "apexiscore"
kill Apexis Guardian##81875+
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
turnin Back from Beyond##34942 |goto 46.59,46.54
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
|only if havequest(35734)
stickystart "20bloodmane"
stickystart "30bloodmane"
step
_Follow_ the beach |goto Spires of Arak 49.5,75.6 < 40 |only if walking
kill Pridelord Karash##82950 |q The Talon King##35734/3 |goto 45.86,66.48
step
label "20bloodmane"
kill 20 Bloodmane Hunter##82938+ |q The Talon King##35734/2 |goto 45.86,66.48
step
label "30bloodmane"
kill 30 Bloodmane Shortfang##82946+ |q The Talon King##35734/1 |goto 45.86,66.48
step
talk Reshad##81770
|tip Click the yellow arrow to stop controlling the Talon King.
turnin The Talon King##35734 |goto 46.50,46.66
step
talk Ikky##85320
accept Ikky##34898 |goto 46.20,45.69
step
talk Darkscryer Raastok##82509
turnin Control is King##35634 |goto 47.12,45.86
step
_Follow_ the road out |goto Spires of Arak 48.9,49.1 < 30 |only if walking
_Run over_ the terrain to the left as needed |goto Spires of Arak 53.0,52.8 < 30 |only if walking
|tip There is no straight forward route from here.
_Continue up_ the winding path here |goto Spires of Arak 61.4,45.7 < 30 |only if walking
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
|tip Use the Eye of Anzu next to Wind Serpent Nests. They are nests on the ground near water with red globes on them around this area.
Destroy #4# Wind Serpent Nests |q Gaze of the Raven God##35001/1 |goto 67.03,44.43
step
label "windserpent"
kill Sethekk Wind Serpent##80643+
collect 6 Wind Serpent Wing##112336 |q Sons of Sethe##35002/1 |goto 67.11,44.66
step
click Offering Bowl##241877
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
talk Anzu##80648
|tip He's a big purple shadow bird sitting up on top of a column above you.
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
Stomp Out the Southern Ritual |q Ritual Severance##35003/1 |goto 68.94,41.86
|tip Run around on the red symbol on the ground.
step
_Run up_ the path |goto Spires of Arak 67.6,41.3 < 10 |only if walking
Stomp Out the Central Ritual |q Ritual Severance##35003/2 |goto 67.54,40.52
|tip Run around on the red symbol on the ground.
step
_Follow_ the path |goto Spires of Arak 67.2,41.1 < 20 |only if walking
_Run up_ the hills |goto Spires of Arak 66.8,40.0 < 20 |only if walking
Stomp Out the Northern Ritual |q Ritual Severance##35003/3 |goto 67.00,38.24
|tip Run around on the red symbol on the ground.
step
label "sethekk_chosen"
kill 6 Sethekk Chosen##80640+ |q Servants of a Dead God##35004/1 |goto Spires of Arak 66.6,39.4
step
label "sethekk_prophets"
kill 6 Sethekk Prophet##80638+ |q Servants of a Dead God##35004/2 |goto Spires of Arak 66.6,39.4
step
talk Anzu##86355
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
_Leave_ the cave | goto Spires of Arak 65.0,24.2 < 20 |walk
_Enter_ the cave |goto Spires of Arak/0 64.8,25.8 < 20 |walk
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
|tip More can be found inside the caves in this area.
Slay #15# Pale Orcs |q Bonus Objective: The Howling Crag##36590/1 |goto Spires of Arak/0 65.0,24.3
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
kill 20 Crazed Outcast##83600 |q Terokk's Fall##35895/3 |goto 65.9,43.9
step
label "rally_talon_guards"
clicknpc Outcast Talon Guard##83716
Use the _Talon Kings Command_ ability on your hotbar to:
Rally #5# Talon Guards |q Terokk's Fall##35895/2 |goto 64.07,42.12
step
click The Eye of Anzu##233382
|tip It looks like an orb sitting on a small golden stand on the ground.
Use the Eye of Anzu |q Terokk's Fall##35895/4 |goto 66.92,45.25
step
talk Reshad##81770
|tip Click the yellow arrow button to stop controlling Terokk.
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
stickystart "bladefist_ravagers"
stickystart "kargath_bladefist_spires"
step
kill Shattered Hand Gladiator##84032+
Slay #25# Shattered Hand Combatants |q The Avatar of Terokk##35896/1 |goto 30.69,27.86
step
label "bladefist_ravagers"
kill 4 Bladefist Ravager##84058 |q The Avatar of Terokk##35896/2 |goto 30.69,27.86
step
label "kargath_bladefist_spires"
kill Kargath Bladefist##84053
|tip You will be able to kill him once you kill the Gladiators and Pit-Masters.
Watch the dialogue
Confront Kargath Bladefist |q The Avatar of Terokk##35896/3 |goto 30.69,27.86
step
talk Reshad##81770
turnin The Avatar of Terokk##35896 |goto 46.49,46.67
|next "tavern2" |only if havequest(37326) or completedq(37326)
|next "smug2" |only if havequest(35697) or completedq(35697)
step
label "tavern2"
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37326 |goto 43.89,48.89
accept A Lack of Wasps##37296 |goto 43.89,48.89
only if havequest(37326) or completedq(37326)
step
kill 8 Widow Wasp##84865 |q A Lack of Wasps##37296/1 |goto 43.58,47.01
You can find more around [44.6,49.5]
only if completedq(37326)
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.91,48.90
accept Not Here, Not Now##37328 |goto 43.91,48.90
only if completedq(37326)
step
_Follow_ the path |goto Spires of Arak/0 41.6,47.9 < 30 |only if walking
_Go through_ the doorway |goto Spires of Arak/0 40.1,44.3 < 20 |only if walking
talk Taskmaster Gornek##81920
turnin Not Here, Not Now##37328 |goto Spires of Arak/0 40.2,43.5
step
talk Dark Ranger Velonara##83529
accept Attempted Murder##35907 |goto Spires of Arak/0 40.1,43.3
step
talk Hutou Featherwind##82612
Tell him _"Take me to Shadow's Vigil."_
Secure a Flight to Shadow's Vigil |q Attempted Murder##35907/1 |goto Spires of Arak/0 39.5,43.4
step
talk Dark Ranger Velonara##83608
turnin Attempted Murder##35907 |goto Spires of Arak/0 52.1,23.6
accept Assassin's Mark##35924 |goto Spires of Arak/0 52.1,23.6
step
clicknpc Vigilant Outcast##83633+
|tip They look like dead arrakoa on the ground around this area.
collect Assassin's Mark##113577 |q Assassin's Mark##35924/1 |goto Spires of Arak 53.5,23.2
step
_Run down_ the path |goto Spires of Arak 53.5,25.2 < 20 |only if walking
talk Dark Ranger Velonara##83772
turnin Assassin's Mark##35924 |goto 53.57,27.48
accept The Power of Poison##35947 |goto 53.57,27.48
accept Extrinsic Motivation##36022 |goto 53.57,27.48
stickystart "shattered_harvesters"
stickystart "shattered_blood_singer"
step
use Vial of Wracking Poison##113587
Kill enemies around this area
|tip As you attack, you will question them to gain information.
Learn the Name and Location of G.V. |q The Power of Poison##35947/1 |goto 54.10,28.58
step
kill 4 Shattered Hand Sightless##83749 |q Extrinsic Motivation##36022/1 |goto 54.10,28.58
step
label "shattered_harvesters"
kill 3 Shattered Hand Harvester##83706 |q Extrinsic Motivation##36022/2 |goto 54.10,28.58
step
label "shattered_blood_singer"
kill Shattered Hand Blood-Singer##83760 |q Extrinsic Motivation##36022/3 |goto 54.10,28.58
step
_Follow_ the path up |goto Spires of Arak 54.2,28.6 < 10 |only if walking
talk Dark Ranger Velonara##83772
turnin The Power of Poison##35947 |goto 53.54,27.49
turnin Extrinsic Motivation##36022 |goto 53.54,27.49
accept Gardul Venomshiv##36028 |goto 53.54,27.49
step
_Follow_ the road |goto Spires of Arak 53.9,29.9 < 20 |only if walking
kill Gardul Venomshiv##83834
Defeat Gardul Venomshiv |q Gardul Venomshiv##36028/1 |goto 56.24,33.98
step
talk Dark Ranger Velonara##83899
turnin Gardul Venomshiv##36028 |goto 57.13,34.50
accept We Have Him Now##36047 |goto 57.13,34.50
stickystart "poisonbarrels"
step
_Run up_ the path |goto Spires of Arak 58.7,36.1 < 10 |only if walking
kill Gardul Venomshiv##83923
collect Venomshiv's Secret Formula##113635 |q We Have Him Now##36047/1 |goto 58.16,33.35
step
label "poisonbarrels"
kill Shattered Hand Brewer##83940+
click Poison Barrel##233599
|tip They look like wooden barrels with a green ring around the middle of them on the ground around this area.
collect 6 Poison Barrel##113630 |q We Have Him Now##36047/2 |goto 58.42,34.51
step
talk Dark Ranger Velonara##83899
turnin We Have Him Now##36047 |goto 57.14,34.49
accept No Time to Waste##36166 |goto 57.14,34.49
step
talk Lunzul##84259
Select _"Administer the antidote to Lunzul."_
Administer the Spiresalve |q No Time to Waste##36166/1 |goto Spires of Arak/0 40.1,43.3
step
talk Lunzul##84259
turnin No Time to Waste##36166 |goto Spires of Arak/0 40.1,43.3
step
talk Dark Ranger Velonara##88179
|tip It takes a moment for her to appear.
accept Standing United##37276 |goto Spires of Arak/0 40.0,43.3
|next "merge2"
step
label "smug2"
talk Dusk-Seer Irizzar##83463
Tell him _"I have brought this as a peace offering. I hope we can become close allies."_
Deliver the Peace Offering |q Peace Offering##35697/1 |goto 43.90,48.90
step
talk Dusk-Seer Irizzar##83463
turnin Peace Offering##35697 |goto 43.89,48.89
accept A Lack of Wasps##37296 |goto 43.89,48.89
step
kill 8 Widow Wasp##84865 |q A Lack of Wasps##37296/1 |goto 43.58,47.01
You can find more around [44.6,49.5]
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.91,48.90
accept Not Here, Not Now##37330 |goto 43.91,48.90
step
_Follow_ the road down the path |goto Spires of Arak 41.7,49.7 < 20 |only if walking
_Continue_ along the road to the town |goto Spires of Arak/0 40.2,45.5 < 20 |only if walking
talk Taskmaster Gornek##81920
turnin Not Here, Not Now##37330 |goto Spires of Arak/0 40.2,43.5
step
talk Provisioner Galgar##82691
accept Best Deals Anywhere##35705 |goto Spires of Arak/0 40.1,43.2
step
_Run down_ the path to the road |goto Spires of Arak 59.6,43.4 < 10 |only if walking
_Follow_ the path |goto Spires of Arak 57.6,43.9 < 20 |only if walking
talk Mixxy Weldblast##82713
turnin Best Deals Anywhere##35705 |goto Spires of Arak/0 56.0,40.9
accept Sticky Situation##35706 |goto Spires of Arak/0 56.0,40.9
accept Safety Measures##35879 |goto Spires of Arak/0 56.0,40.9
stickystart "surlybogwallow"
step
click Submerged Battery##233147
|tip They look like big yellow objects with red tops and bottoms sitting in the pools of water around this area.
Save #5# Submerged Batteries |q Sticky Situation##35706/1 |goto 56.4,45.1
step
label "surlybogwallow"
kill Surly Bogwallow##82726+, Putrid Mandragora##82722+, Electrified Stingtail##83444+, Putrid Axebeak##83436+
Slay #15# Bog Denizens |q Safety Measures##35879/1 |goto Spires of Arak 56.5,47.6
step
talk Mixxy Weldblast##82713
turnin Sticky Situation##35706 |goto 56.0,40.9
turnin Safety Measures##35879 |goto 56.0,40.9
accept Back on Track##35718 |goto 56.0,40.9
step
talk Trixxy Weldblast##82786
turnin Back on Track##35718 |goto 60.19,53.16
accept All Natural##35738 |goto 60.19,53.16
accept I See Dead Arakkoa##35766 |goto 60.24,53.16
stickystart "freshcharcoal"
step
_Follow_ the path around the crater |goto Spires of Arak 61.3,55.1 < 20 |only if walking
_Continue following_ the path |goto Spires of Arak 61.5,56.6 < 20 |only if walking
use Ghostogrifier 12000##113438
kill Talonpriest Zekk##82887 |q I See Dead Arakkoa##35766/1 |goto 60.92,58.17
step
label "freshcharcoal"
kill Smoldering Ancient##82805+, Ignited Ancient##82800+
collect 30 Fresh Charcoal##113404 |q All Natural##35738/1 |goto 60.52,54.33
step
talk Trixxy Weldblast##82786
turnin All Natural##35738 |goto 60.20,53.15
turnin I See Dead Arakkoa##35766 |goto 60.20,53.15
accept The Ebon Hunter##35797 |goto 60.20,53.15
step
kill The Ebon Hunter##82933
collect Organic Laser Apparatus##113441 |q The Ebon Hunter##35797/1 |goto 65.23,61.34
step
talk Trixxy Weldblast##82786
turnin The Ebon Hunter##35797 |goto 60.08,53.65
step
label "merge2"
talk Anzu##80648
accept Cult of the Ravenspeakers##34921 |goto 46.90,46.07
step
_Follow_ the dirt road to the right |goto Spires of Arak/0 47.6,45.4 < 20 |only if walking
click Offering Basket##231118
|tip It looks like a brown wicker basket sitting next to a purple banner on the side of the road.
Place the Offering |q Cult of the Ravenspeakers##34921/1 |goto 48.92,48.94
step
talk Iktis of the Flock##80639
turnin Cult of the Ravenspeakers##34921 |goto 48.98,48.97
accept To the... Rescue?##34991 |goto 48.98,48.97
step
_Run up_ the path |goto Spires of Arak/0 48.4,49.7 < 30 |only if walking
kill Stonescale##80694
collect "Tillik" of the Flock##112331 |q To the... Rescue?##34991/1 |goto 48.73,51.52
step
talk Iktis of the Flock##80639
turnin To the... Rescue?##34991 |goto 48.99,48.96
accept The High Ravenspeaker##35010 |goto 48.99,48.96
step
Locate High Ravenspeaker Krikka |q The High Ravenspeaker##35010/1 |goto 51.32,49.80
step
talk High Ravenspeaker Krikka##80481
turnin The High Ravenspeaker##35010 |goto 52.13,49.92
accept Rendezvous with the Ritualists##35007 |goto 52.13,49.92
step
_Go up_ the curvy road |goto Spires of Arak 52.5,52.9 < 30 |only if walking
_Follow_ the road |goto Spires of Arak 53.4,53.7 < 30 |only if walking
talk Ravenspeaker Sekara##80740
turnin Rendezvous with the Ritualists##35007 |goto 54.87,54.24
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
|tip They are white rolled-up scrolls next to dead arakkoa on the ground around this area. They're also in the huge nests.
collect 8 Ravenspeaker Scroll Fragment##112199 |q Words of the Raven Mother##34922/1 |goto 56.27,55.36
step
label "bloodmaneclaw"
kill 10 Bloodmane Razorclaw##80455+ |q The Bloodmane##34923/1 |goto 56.09,54.49
step
talk Ravenspeaker Sekara##80740
turnin The Bloodmane##34923 |goto 54.88,54.24
turnin Words of the Raven Mother##34922 |goto 54.88,54.24
accept Ralshiara's Demise##34938 |goto 54.88,54.24
step
talk Vakora of the Flock##80863
accept The Egg Thieves##34924 |goto 54.83,54.15
step
talk High Ravenspeaker Krikka##80860
accept Declawing The Bloodmane##34939 |goto 54.85,54.32
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
|tip They look like big dark gray eggs with blue swirls on them scattered on the ground around this area. They can also be in the caves around this area, so be sure to check in those.
collect 8 Dread Raven Egg##112135 |q The Egg Thieves##34924/1 |goto 48.77,58.24
step
label "bloodmane_saberons_spires_end"
kill Bloodmane Earthbinder##80448+, Bloodmane Gutripper##80450+, Bloodmane Raider##80447+
Slay #18# Bloodmane Saberons |q The Initiate's Revenge##36790/1 |goto 50.31,56.11
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
kill 8 Adherent Skystriker##84111+ |q On Ebon Wings##36085/2 |goto 45.96,53.53
step
talk Reshad##84262
turnin On Ebon Wings##36085 |goto 46.52,54.29
accept When All Is Aligned##35704 |goto 46.52,54.29
step
clicknpc Ka'alu##86254
Ride on Ka'alu |invehicle |goto Spires of Arak 46.6,54.6 |q 35704
only if havequest(35704)
step
kill 80 Adherent Wind-Thrasher##82817+ |q When All Is Aligned##35704/1 |goto 52.67,42.30
|tip Use your Screech ability on your hotbar.
step
talk Reshad##81770
turnin When All Is Aligned##35704 |goto 46.50,46.66
step
talk Talonpriest Ishaal##83959
accept Talonpriest Ishaal##37141 |goto 46.52,46.81
step
talk Shadow-Sage Iskar##80153
accept News from Nagrand##36602 |goto 46.58,46.55 |next "Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)",{
image=ZGV.DIR.."\\Guides\\Images\\NagrandDraenor",
startlevel=98,
endlevel=100,
},[[
step
talk Rokhan##78487
turnin News from Nagrand##36602 |goto Frostwall/0 45.93,42.88 |only if havequest(36602) or completedq(36602)
turnin News from Nagrand##36607 |goto 45.93,42.88 |only if havequest(36607) or completedq(36607)
accept Taking the Fight to Nagrand##34794 |goto 45.93,42.88
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.8
Tell him _"I need a flight to the border of Nagrand."_
Fly to Nagrand |goto Nagrand D/0 91.1,72.1 < 50 |noway |c
only if havequest(34794) or havequest(36952)
step
_Follow_ the path |goto Nagrand D/0 89.4,70.5 < 30 |only if walking
talk Stone Guard Brox##80001
turnin Taking the Fight to Nagrand##34794 |goto Nagrand D/0 86.37,66.18 |only if havequest(34794) or completedq(34794)
turnin Taking the Fight to Nagrand##36952 |goto Nagrand D/0 86.37,66.18 |only if havequest(36952) or completedq(36952)
accept The Might of the Warsong##34795 |goto 86.37,66.19
step
_Follow_ the path |goto Nagrand D/0 84.8,66.0 < 30 |only if walking
_Continue_ along the cobblestone path |goto Nagrand D/0 80.9,56.5 < 30 |only if walking
_Go straight_ through the crossroads |goto 81.9,53.3 < 30 |only if walking
talk Thrall##80003
turnin The Might of the Warsong##34795 |goto 82.84,45.07
accept More Lazy Peons##34808 |goto 82.84,45.07
step
talk Tal##82346
fpath Wor'var |goto Nagrand D/0 83.3,44.7
step
talk Elathriel Sunstriker##82345
home Wor'var |goto Nagrand D/0 82.6,45.4 |q 35375 |future
step
clicknpc Lazy Peon##79906+
|tip They look like smaller green orcs all around town. They can be found in buildings, so be sure to check in them.
Motivate #8# Lazy Peons |q More Lazy Peons##34808/1 |goto 82.65,45.31
step
talk Foreman Thazz'ril##80140
turnin More Lazy Peons##34808 |goto 82.93,44.14
accept They Call Him Lantresor of the Blade##34818 |goto 82.93,44.14
step
talk Thrall##80003
accept The Friend of My Enemy##34826 |goto 82.85,45.07
stickystart "nagrand_prowlers"
step
_Run up_ the hill |goto Nagrand D/0 85.1,45.0 < 20 |only if walking
_Follow_ the path up |goto Nagrand D/0 87.8,48.5 < 20 |only if walking
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |only if not havequest(35379)
kill Lupe##82205 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/2 |goto Nagrand D/0 87.6,45.6
kill Loup##82209 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/3 |goto Nagrand D/0 87.6,45.6
step
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |only if not havequest(35379)
kill Big Pete##123 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/4 |goto Nagrand D/0 88.7,43.9
step
label "nagrand_prowlers"
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |only if not havequest(35379)
kill 15 Nagrand Prowler##81902+ |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/1 |goto 87.13,49.16
step
_Travel up_ the dirt road and through the gate |goto Nagrand D/0 87.0,52.6 < 20 |only if walking
_Enter_ the building |goto Nagrand D/0 85.5,55.0 < 10 |walk
talk Lantresor of the Blade##80161
turnin They Call Him Lantresor of the Blade##34818 |goto 85.42,54.59
accept The Blade Itself##34849 |goto 85.42,54.59
accept Not Without My Honor##34850 |goto 85.42,54.59
stickystart "forces_at_hallvalor"
step
kill Instructor Luhk##80236
collect Lantresor's Blade##111938 |q The Blade Itself##34849/1 |goto 86.09,53.90
step
_Enter_ the building |goto Nagrand D 85.8,53.5 < 10 |walk
click Burning Blade Locker##233815
|tip They look like wooden and steel chests. The Blademaster's Banner can be in any of the chests.
collect Blademaster's Banner##111947 |q Not Without My Honor##34850/1 |goto 84.86,55.30
There are 2 chests in the building at [Nagrand D 88.8,53.0]
There is 1 chest in the building at [Nagrand D 84.8,55.5]
There is 1 chest in the building at [Nagrand D 85.8,57.1]
There is 1 chest in the building at [Nagrand D 87.4,58.2]
step
label "forces_at_hallvalor"
kill Blademaster Trainee##80191+, Hallvalor Villager##80205+, Burning Flameseer##80197+
Slay #15# Burning Blade Forces at Hallvalor |q The Friend of My Enemy##34826/1 |goto 86.23,54.64
step
_Enter_ the building |goto Nagrand D/0 85.5,55.0 < 10 |walk
talk Lantresor of the Blade##80161
turnin The Blade Itself##34849 |goto 85.42,54.59
turnin Not Without My Honor##34850 |goto 85.42,54.59
accept Meet Me in the Cavern##34866 |goto 85.42,54.59
step
talk Lantresor of the Blade##80319
turnin Meet Me in the Cavern##34866 |goto Nagrand D/10 44.9,19.8
accept Challenge of the Masters##34868 |goto Nagrand D/10 44.9,19.8
step
_Make your way_ through the cave |goto Nagrand D/10 39.3,29.7 < 20 |walk
click Burning Blade Sword##230948
|tip It looks like a sword stuck in the ground in the center of the steel circle.
Pull the Sword Free |q Challenge of the Masters##34868/1 |goto Nagrand D/10 53.2,68.4
step
kill Packleader Dran'ruk##80326, Gorn##80324, Sesk##80325, Warlord Dharl of the Thrice-Bloodied Blade##80327
|tip Kill the enemies as they appear and challenge you.
Win the Challenge |q Challenge of the Masters##34868/2 |goto 53.2,68.5
step
click Garrison Blueprints##230946
|tip It looks like a cream colored unrolled scroll on the ground inside this cave.
collect Garrison Blueprints##112020 |q Challenge of the Masters##34868/3 |goto 52.88,68.41
step
_Pass_ through the gates |goto Nagrand D/0 87.0,52.5 < 20 |only if walking
_Continue_ traveling between the cliffs |goto Nagrand D/0 86.0,51.5 < 20 |only if walking
_Follow_ the path |goto 84.3,49.3 < 20 |only if walking
talk Thrall##80003
turnin The Friend of My Enemy##34826 |goto 82.85,45.08
step
talk Foreman Thazz'ril##80140
turnin Challenge of the Masters##34868 |goto 82.93,44.14
accept A Choice to Make##34899 |goto 82.93,44.14
step
clicknpc Drafting Table##79177
|tip It looks like a slanted wooden table with blueprints on it.
Choose Between Corral & Tankworks |q A Choice to Make##34899/1 |goto Nagrand D/0 83.0,44.1
|tip You will be able to choose between the "Wor'var Corral" and "Wor'var Tankworks" buildings. We recommend choosing the "Wor'var Corral" building, since you get an ability that allows you to use a mount while in combat, which will help to level your character faster.
step
talk Thrall##80003
turnin A Choice to Make##34899 |goto 82.85,45.07
step
talk Draka##81319
accept Trouble at the Overwatch##35150 |goto 82.86,45.02
step
talk Aggra##81189
accept Target of Opportunity: Telaar##34914 |goto 82.88,45.07
step
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34770 |goto 82.59,46.74
step
_Follow_ the path down |goto Nagrand D/0 81.8,50.0 < 30 |only if walking
_Continue_ along the path |goto 81.3,57.6 < 30 |only if walking
talk Akrosh##79281
turnin Trouble at the Overwatch##35150 |goto 83.05,67.98
accept Obtaining Ogre Offensive Orders##35157 |goto 83.06,67.94
accept Obliterating Ogres##35155 |goto 83.06,67.94
stickystart "ogres_margok_overwatch"
step
_Follow_ the path |goto Nagrand D/0 82.0,68.1 < 20 |only if walking
click Ogre Scrolls##231901
|tip It looks like a wooden box with white scrolls pointing up out of the top of it.
accept Removing the Paper Trail##35156 |goto 81.34,70.33
stickystart "ogre_research"
step
kill Thulgork##79266
collect Thulgork's Orders##111065 |q Obtaining Ogre Offensive Orders##35157/2 |goto 83.17,70.37
step
_Run up_ the stairs |goto Nagrand D/0 82.0,72.0 < 20 |only if walking
_Enter_ the building |goto Nagrand D/0 83.7,72.8 < 20 |walk
kill Crulgorosh##79267
collect Crulgorosh's Orders##111066 |q Obtaining Ogre Offensive Orders##35157/1 |goto 84.11,73.58
step
label "ogres_margok_overwatch"
kill Gorian Cohort##79070+, Gorian Gladiator##79022+, Gorian Arcanist##79023+
Slay #15# Ogres at Mar'gok's Overwatch |q Obliterating Ogres##35155/1 |goto Nagrand D/0 83.4,72.7
step
label "ogre_research"
click Box of Ogre Research##231806
|tip They look like a wooden boxes with white scrolls pointing up out of the top of them around this area.
Destroy #8# Boxes of Ogre Research |q Removing the Paper Trail##35156/1 |goto Nagrand D/0 84.1,72.3
step
_Run up_ the stairs |goto Nagrand D/0 83.4,73.6 < 20 |only if walking
_Continue up_ the stairs |goto 83.4,75.6 < 20 |only if walking
talk Dalgorsh##81361
turnin Obtaining Ogre Offensive Orders##35157 |goto 83.79,76.86
accept Reglakk's Research##35158 |goto 83.84,76.80
turnin Obliterating Ogres##35155 |goto 83.79,76.86
turnin Removing the Paper Trail##35156 |goto 83.79,76.86
accept Removing the Reinforcements##35159 |goto 83.84,76.80
step
_Go up_ the stairs |goto Nagrand D/0 83.9,77.5 < 20 |only if walking
clicknpc Portal to Highmaul##80357
|tip It looks like a swirling blue portal on this stone platform.
Destroy the Portal to Highmaul |q Removing the Reinforcements##35159/1 |goto Nagrand D/0 82.6,81.0
step
kill Grand Magister Reglakk##79105, Bulgorg the Wind Slayer##79927
Stop Reglakk |q Reglakk's Research##35158/1 |goto Nagrand D/0 81.5,76.7
step
talk Thrall##80003
turnin Reglakk's Research##35158 |goto 82.84,45.08
step
talk Foreman Thazz'ril##80140
turnin Removing the Reinforcements##35159 |goto Nagrand D 82.9,44.1
step
talk Shadow Hunter Taz##82078
accept That Pounding Sound##35374 |goto 82.53,43.96
step
talk Stalker Ogka##82080
accept Shooting the Breeze##35376 |goto 82.60,43.95
stickystart "leatherhide_ears"
stickystart "someones_missing_axe"
step
kill Breezestrider Talbuk##78278+, Breezestrider Colt##78277+
collect 24 Breezestrider Horn##113102 |q Shooting the Breeze##35376/1 |goto Nagrand D/0 79.3,39.7
step
label "leatherhide_ears"
kill Leatherhide Bull##81898+, Leatherhide Clefthoof##78575+, Leatherhide Calf##77767+
collect 12 Pair of Leatherhide Ears##113100 |q That Pounding Sound##35374/1 |goto Nagrand D/0 73.8,44.0
step
label "someones_missing_axe"
kill Breezestrider Talbuk##78278+, Breezestrider Colt##78277+, Leatherhide Bull##81898+
use Frostwolf Axe##113109
|tip It drops from any mob around this area.
accept Someone's Missing Axe##35377
step
_Enter_ the camp |goto Nagrand D/0 81.9,42.8 < 20 |only if walking
talk Shadow Hunter Taz##82078
turnin That Pounding Sound##35374 |goto 82.54,43.97
accept Queen of the Clefthoof##35375 |goto 82.54,43.97
step
talk Stalker Ogka##82080
turnin Shooting the Breeze##35376 |goto 82.60,43.94
turnin Someone's Missing Axe##35377 |goto 82.60,43.94
accept King of the Breezestriders##35378 |goto 82.60,43.94
step
_Cross_ the open field |goto Nagrand D/0 80.0,37.9 < 40 |only if walking
_Run on_ the path |goto 79.1,33.2 < 40 |only if walking
talk Murgok##88500
accept The Dead Do Not Forget...##37318 |goto 79.47,30.27
stickystart "releasespirit"
stickystart "snarlpaws"
stickystart "snarlpaw_skulls"
step
accept Bonus Objective: Snarlpaw Ledge##37280 |only if not havequest(37280)
kill Boneseer Cold-Eye##88361 |q Bonus Objective: Snarlpaw Ledge##37280/3 |goto Nagrand D/0 79.8,30.1
step
label "releasespirit"
accept Bonus Objective: Snarlpaw Ledge##37280 |only if not havequest(37280)
kill Saberon Ambusher##88813+
talk Frightened Spirit##88812+
Tell them _"The saberon attack is over. Go now, and rest in peace."_
|tip They look like sparkling ghosts around this area.
Release #6# Frightened Spirits |q Bonus Objective: Snarlpaw Ledge##37280/1 |goto Nagrand D/0 78.4,28.2
step
label "snarlpaws"
accept Bonus Objective: Snarlpaw Ledge##37280 |only if not havequest(37280)
kill Snarlpaw Bloodtracker##88365+, Snarlpaw Shadowfang##88363+
Slay #15# Snarlpaw Saberons |q Bonus Objective: Snarlpaw Ledge##37280/2 |goto 78.64,30.26
step
label "snarlpaw_skulls"
click Ancient Snarlpaw Skull##238850
|tip They look like sabertooth tiger skulls scattered around on the ground. You can find them in the caves around the area, so be sure to check those.
collect 10 Ancient Snarlpaw Skull##119184 |q The Dead Do Not Forget...##37318/1 |goto 79.53,30.95
step
click Boneseer's Cauldron##237705
|tip It looks like a big black metal pot.
turnin The Dead Do Not Forget...##37318 |goto 79.74,30.26
step
_Follow_ the path |goto Nagrand D/0 77.0,30.9 < 40 |only if walking
_Cross_ the bridge |goto Nagrand D/0 73.0,28.2 < 20 |only if walking
talk Gixmo Moneycash##82844
fpath Throne of the Elements |goto Nagrand D/0 73.7,26.7
step
_Cross_ the bridge |goto Nagrand D/0 74.1,21.8 < 20 |only if walking
talk Farseer Drek'Thar##80597
accept Called to the Throne##34965 |goto 71.70,19.63
step
talk Farseer Drek'Thar##80597
Tell him _"I am ready to commune with the furies."_
Speak with Farseer Drek'Thar |q Called to the Throne##34965/1 |goto 71.69,19.65
step
Watch the dialogue
Commune with the Furies |q Called to the Throne##34965/2 |goto Nagrand D/0 71.8,19.6
step
talk Farseer Drek'Thar##80597
turnin Called to the Throne##34965 |goto 71.71,19.64
accept Elemental Attunement##34891 |goto 71.71,19.64
step
talk Kalandrios##80595
|tip It's a giant air elemental.
accept An Old Friend##34943 |goto 72.77,19.73
step
talk Incineratus##80593
|tip It's a giant fire elemental.
accept Earth, Wind and Fire...and Water##34881 |goto 71.34,17.85
accept Guardians of the Plateau##34893 |goto 71.34,17.85
step
_Travel up_ the hill and over the rock bridge |goto Nagrand D/0 74.4,16.1 < 20
talk Gar'rok##80434
turnin An Old Friend##34943 |goto 75.09,22.73
accept A Rare Bloom##34894 |goto 75.09,22.73
stickystart "earth"
step
_Go up_ the hill |goto Nagrand D 75.9,21.2 < 20 |only if walking
_Follow_ the path |goto Nagrand D 79.5,15.5 < 20 |only if walking
_Continue following_ the path |goto Nagrand D 79.7,13.7 < 20 |only if walking
click Pillar of Earth##230961
|tip It looks like a huge stone.
Attune to the Earth |q Elemental Attunement##34891/1 |goto 79.29,11.67
step
_Follow_ the path |goto Nagrand D 79.6,13.5 < 20 |only if walking
_Run up_ the path |goto Nagrand D 81.5,15.2 < 20 |only if walking
kill Unstable Earth Guardian##80374 |q Guardians of the Plateau##34893/1 |goto 81.6,14.5
step
label "earth"
kill Unstable Earth Spirit##80382+
collect 4 Living Earth##112084 |q Earth, Wind and Fire...and Water##34881/1 |goto Nagrand D/0 80.7,15.0
stickystart "water"
step
_Follow_ the ramp up |goto Nagrand D/0 78.4,15.4 < 20 |only if walking
_Continue_ up the ramp |goto Nagrand D/0 74.9,13.0 < 20 |only if walking
kill Tainted Water Guardian##80377 |q Guardians of the Plateau##34893/4 |goto Nagrand D/0 75.2,13.9
step
click Pillar of Water##230964
|tip It looks like a huge stone.
Attune to the Water |q Elemental Attunement##34891/4 |goto 73.86,10.45
step
label "water"
click Living Water##230979
|tip They look like blue smokey clusters in the water around this area.
kill Tumultous Water Spirit##80379+
collect 4 Living Water##112083 |q Earth, Wind and Fire...and Water##34881/4 |goto Nagrand D/0 75.4,10.5
stickystart "fire"
step
_Follow_ the ramp down |goto Nagrand D/0 71.3,8.0 < 20 |only if walking
click Pillar of Flame##230963
|tip It looks like a huge stone.
Attune to the Flame |q Elemental Attunement##34891/3 |goto 67.47,9.06
step
kill Volatile Flame Guardian##80376 |q Guardians of the Plateau##34893/3 |goto Nagrand D/0 66.6,8.5
step
label "fire"
clicknpc Living Flame##80421+
|tip They look like miniature Fire Spirits wandering around this area.
kill Volatile Fire Spirit##80380+
collect 4 Living Flame##112082 |q Earth, Wind and Fire...and Water##34881/3 |goto Nagrand D/0 67.1,10.8
stickystart "Ember Blossom"
step
_Enter_ the cave |goto Nagrand D/0 69.00,10.07 < 20 |walk
kill Magmire##80586
collect A Molten Core##113080 |n
use A Molten Core##113080
accept A Wrong of Earth and Fire##33928 |goto Nagrand D/0 70.3,9.8 |indoors Magma Cave
step
label "Ember Blossom"
click Ember Blossom##231093
|tip It looks like some flowers sticking out of a pool of lava.
collect Ember Blossom##112089 |q A Rare Bloom##34894/1 |goto Nagrand D 70.7,10.0 |indoors Magma Cave
stickystart "LWind"
step
_Leave_ the cave |goto Nagrand D/0 68.8,10.4 < 20 |walk
_Go back_ up the winding path |goto 68.9,9.3 < 20 |only if walking
Follow the _cliff up_ |goto 71.1,8.0 < 20 |only if walking
Cross the open area and _through the opening_ |goto 76.8,14.3 < 20 |only if walking
_Run up_ the long stone bridge |goto Nagrand D 81.4,16.3 < 20 |only if walking
click Pillar of Wind##230962
|tip It looks like a huge stone.
Attune to the Wind |q Elemental Attunement##34891/2 |goto 78.29,24.35
step
_Run up_ the path |goto Nagrand D 79.4,24.5 < 20 |only if walking
kill Corrupted Wind Guardian##0 |q Guardians of the Plateau##34893/2 |goto 79.82,25.23
step
label "LWind"
clicknpc Living Wind##82889+
|tip They look like small clouds floating around this area.
kill Living Wind##82889+
collect 4 Living Wind##112085 |q Earth, Wind and Fire...and Water##34881/2 |goto Nagrand D/0 80.4,23.0
step
_Jump down carefully_ here |goto Nagrand D/0 78.0,23.9 < 20 |only if walking
talk Gar'rok##80434
turnin A Rare Bloom##34894 |goto 75.08,22.74
accept Guise of the Deceiver##34932 |goto 75.08,22.73
step
_Follow_ the path up |goto Nagrand D/0 76.0,20.9 < 20 |only if walking
_Continue_ up the path |goto Nagrand D/0 77.0,19.3 < 20 |only if walking
_Follow_ the path back |goto 77.3,21.5 < 20 |only if walking
_Enter_ the cave |goto 77.6,23.2 < 20 |walk
talk Challe##80483
Tell her _"I wish to know the truth about Dahaka. What do you know of her death?"_
Speak with Challe |q Guise of the Deceiver##34932/1 |goto Nagrand D/0 78.0,23.3
step
Watch the dialogue
kill Challe##80483 |q Guise of the Deceiver##34932/2 |goto Nagrand D/0 78.0,23.3
step
_Jump down_ the cliff |goto Nagrand D/0 76.4,22.7 < 30 |only if walking
talk Gar'rok##80434
turnin Guise of the Deceiver##34932 |goto 75.08,22.74
accept The Debt We Share##34941 |goto 75.08,22.74
step
talk Gar'rok##80434
Tell him _"I stand with you, Gar'rok. Rest with honor."_
Witness the Passing of Gar'rok |q The Debt We Share##34941/1 |goto 75.08,22.75
step
_Run down_ the path |goto Nagrand D/0 75.8,22.5 < 20 |only if walking
_Follow_ the path |goto Nagrand D/0 73.5,18.4 < 20 |only if walking
talk Kalandrios##80595
turnin The Debt We Share##34941 |goto 72.73,19.63
step
talk Incineratus##80593
turnin Earth, Wind and Fire...and Water##34881 |goto 71.34,17.88
turnin Guardians of the Plateau##34893 |goto 71.34,17.88
turnin A Wrong of Earth and Fire##33928 |goto 71.35,17.93
step
talk Farseer Drek'Thar##80597
turnin Elemental Attunement##34891 |goto 71.72,19.65
accept The Ritual of Binding##35265 |goto 71.71,19.65
step
talk Kalandrios##80595
Tell him _"I am ready to begin the Ritual of Binding."_
Watch the cutscene
Speak with Kalandrios |q The Ritual of Binding##35265/1 |goto Nagrand D/0 72.7,19.7
step
talk Farseer Drek'Thar##80597
turnin The Ritual of Binding##35265 |goto 71.71,19.64
accept The Call of Oshu'gun##35232 |goto 71.71,19.64
step
_Cross_ the bridge |goto Nagrand D/0 73.8,21.5 < 20 |only if walking
talk Gixmo Moneycash##82844
Tell him _"Fly me to the Spirit Woods near Oshu'gun."_
Speak with Gixmo Moneycash |q The Call of Oshu'gun##35232/1 |goto 73.70,26.65
step
Meet Drek'Thar in the Spirit Woods |q The Call of Oshu'gun##35232/2 |goto Nagrand D/0 55.6,55.9
step
talk Farseer Drek'Thar##81335
turnin The Call of Oshu'gun##35232 |goto 55.53,55.91
accept Spiritual Matters##35231 |goto 55.53,55.91
accept Dark Binding##35144 |goto 55.53,55.91
accept The Pale Threat##35145 |goto 55.53,55.91
step
click Shamanstone##233263
|tip It looks like a big grey stone with symbols carved into it.
accept Silence the Call##35084 |goto 55.45,55.92
accept Disrupt the Rituals##35083 |goto 55.45,55.92
stickystart "liberate_elemental_spirits"
step
_Go through_ the narrow passage |goto Nagrand D/0 57.0,58.5 < 20 |only if walking
kill 6 Pale Subjugator##81578+ |q The Pale Threat##35145/2 |goto 58.46,61.64
step
label "liberate_elemental_spirits"
kill Enslaved Earth Spirit##81409+, Pale Subjugator##81578+
|tip They are next to purple elementals around this area.
Liberate #10# Elemental Spirits |q Dark Binding##35144/1 |goto Nagrand D/0 56.7,63.6
step
_Follow_ the path down into the cave |goto Nagrand D/12 72.4,46.1 < 20 |walk
_Continue_ following the path |goto Nagrand D/12 64.9,31.8 < 20 |walk
kill Greyseer##81309 |q The Pale Threat##35145/1 |goto 65.84,20.60
step
_Follow this path_ inside the cave |goto Nagrand D/12 58.7,20.8 < 20 |walk
talk Farseer Drek'Thar##81953
turnin Dark Binding##35144 |goto 45.97,32.85
turnin The Pale Threat##35145 |goto 45.97,32.85
accept The Fate of Gordawg##34271 |goto 46.08,32.87
accept The Dark Heart of Oshu'gun##35317 |goto 46.08,32.87
step
kill Gordawg##80592
collect Heart of the Fury##113077 |q The Fate of Gordawg##34271/1 |goto Nagrand D/12 42.7,38.2
step
_Jump down_ and _follow_ the path back |goto Nagrand D/12 32.5,57.7 < 20 |walk
_Go through_ the doorway |goto Nagrand D/12 25.8,57.6 < 20 |walk
Enter the Sanctum of the Naaru |q The Dark Heart of Oshu'gun##35317/1 |goto 20.89,62.07
step
kill Decimatus##81989 |q The Dark Heart of Oshu'gun##35317/2 |goto Nagrand D/12 15.7,66.3
step
_Go up_ the ramp |goto Nagrand D/12 22.6,65.6 < 10 |walk
_Continue_ on the path |goto Nagrand D/12 16.6,73.7 < 20 |walk
_Jump_ down the ledge |goto Nagrand D/0 47.1,62.0 < 20 |walk
_Jump_ to the ground and run along the path |goto Nagrand D/0 47.4,60.8 < 20 |walk
_Run up_ the path |goto Nagrand D/0 50.7,61.1 < 20 |only if walking
click Warsong Attack Plans##232024
|tip It looks like a scroll sitting on top of a barrel.
accept The Warsong Threat##35271 |goto Nagrand D/0 51.89,62.03
stickystart "killwarsongshamans"
step
clicknpc Ritual Totem##81705 |tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy 1 Gra'ah Totem |q Disrupt the Rituals##35083/2 |count 1 |goto 52.19,62.99
step
clicknpc Ritual Totem##81705 |tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy 2 Gra'ah Totems |q Disrupt the Rituals##35083/2 |goto Nagrand D/0 52.4,63.9
step
kill Ritualist Kuhlrath##81142 |q Silence the Call##35084/1 |goto 54.53,67.30
|tip He's inside the round building.
step
click Nagrand Scouting Report##232025
|tip It looks like a brown rolled-up scroll sitting on top of a chest next to the doorway of the building.
collect Nagrand Scouting Report##113552 |q The Warsong Threat##35271/4 |goto 54.58,67.05
step
_Enter_ the building |goto Nagrand D/0 51.9,68.0 < 10 |walk
click Warsong Outrider Orders##233349
|tip It looks like a brown rolled-up scroll sitting on a table at the back of the room.
collect Warsong Outrider Orders##113551 |q The Warsong Threat##35271/3 |goto Nagrand D/0 51.9,67.8
step
_Leave_ the building |goto Nagrand D/0 51.9,68.0 < 10 |walk
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy 1 Kag'ah Totem |q Disrupt the Rituals##35083/3 |count 1 |goto 50.47,70.02
step
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy 2 Kag'ah Totems |q Disrupt the Rituals##35083/3 |goto Nagrand D/0 50.4,71.0
step
_Follow_ the path |goto Nagrand D/0 51.2,63.0 < 20 |only if walking
_Run up_ the hill |goto Nagrand D/0 49.4,59.2 < 20 |only if walking
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy 1 Mok'gor Totem |q Disrupt the Rituals##35083/1 |count 1 |goto 48.45,58.70
step
clicknpc Ritual Totem##81705
|tip It looks like a shaman totem with spikes coming out the sides and a blue aura on the ground beneath it.
Destroy 2 Mok'gor Totems |q Disrupt the Rituals##35083/1 |goto 48.45,58.70 |goto Nagrand D/0 47.8,58.7
step
_Enter_ the building |goto Nagrand D/0 47.2,56.3 < 10 |walk
click Mixed Unit Tactics##233351
|tip It looks like a brown rolled-up scroll sitting on a desk at the back of the room.
collect Mixed Unit Tactics##113549 |q The Warsong Threat##35271/2 |goto 47.07,56.03
step
_Leave_ the building |goto Nagrand D/0 47.2,56.3 < 10 |walk
click Shamanstone##233263
|tip It looks like a huge grey stone with symbols carved into it.
turnin Disrupt the Rituals##35083 |goto Nagrand D/0 46.8,57.5
step
_Enter_ the building |goto Nagrand D/0 52.2,55.8 < 10 |walk
click Warsong Command Brief##233350
|tip It looks like a brown rolled-up scroll sitting on a table at the back of the room.
collect Warsong Command Brief##113550 |q The Warsong Threat##35271/1 |goto 52.52,55.80
step
label "killwarsongshamans"
kill Warsong Windcaller##81054+, Warsong Axe-Singer##81019+
Slay #10# Warsong Shamans |q Silence the Call##35084/2 |goto 51.76,58.79
step
click Shamanstone##233263
|tip It looks like a huge grey stone with symbols carved into it.
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
stickystart "void"
stickystart "terror"
step
click Void Portal##231892
|tip It looks like a swirling blue portal.
Collapse the Void Portal |q The Nether Approaches##35087/1 |count 1 |goto Nagrand D/0 52.6,62.1
step
click Void Portal##231892
|tip It looks like a swirling blue portal.
Collapse the Void Portal |q The Nether Approaches##35087/1 |count 2 |goto Nagrand D/0 52.0,61.8
step
click Void Portal##231892
|tip It looks like a swirling blue portal.
Collapse the Void Portal |q The Nether Approaches##35087/1 |count 3 |goto Nagrand D/0 51.4,60.5
step
click Void Portal##231892
|tip It looks like a swirling blue portal.
Collapse the Void Portal |q The Nether Approaches##35087/1 |count 4 |goto Nagrand D/0 51.6,58.2
step
click Void Portal##231892
|tip It looks like a swirling blue portal.
Collapse the Void Portal |q The Nether Approaches##35087/1 |count 5 |goto Nagrand D/0 50.0,59.5
step
click Void Portal##231892
|tip It looks like a swirling blue portal.
Collapse the Void Portal |q The Nether Approaches##35087/1 |count 6 |goto Nagrand D/0 50.1,61.2
step
label "void"
kill 15 Void Tendril##81230+ |q The Void March##35086/2 |goto Nagrand D/0 52.3,60.1
step
label "terror"
kill 10 Void Terror##81216+ |q The Void March##35086/1 |goto Nagrand D/0 50.1,60.4
step
_Run up_ the path |goto Nagrand D/0 50.7,60.0 < 20 |only if walking
click Shamanstone##233263
turnin The Nether Approaches##35087 |goto 51.85,58.72
turnin The Void March##35086 |goto 51.85,58.72
accept The Shadow of the Void##35088 |goto 51.85,58.72
step
click Void Crystal##231907
|tip It looks like a blue shadow crystal on this small round stone altar.
kill Invalidus##81215 |q The Shadow of the Void##35088/1 |goto 52.4,63.3
step
click Shamanstone##233263
|tip It looks like a huge stone.
turnin The Shadow of the Void##35088 |goto 51.83,58.75
step
_Go towards_ the path |goto Nagrand D/0 50.5,53.9 < 20 |only if walking
_Follow_ the path down |goto 50.4,50.1 < 20 |only if walking
talk Omu Spiritbreeze##82340
fpath Riverside Post |goto Nagrand D/0 49.6,48.0
step
talk Blood Guard Ehanes##81193
turnin The Warsong Threat##35271 |goto 49.43,47.81
step
talk Mankrik##72822
accept Lost in Nagrand##35167 |goto 49.29,47.98
step
talk Durotan##81186
accept Terms of Surrender##35096 |goto 48.59,48.22
step
_Leave_ Riverside Post |goto Nagrand D/0 50.1,49.7 < 20 |only if walking
_Go through_ the gate |goto Nagrand D/0 53.0,46.8 < 20 |only if walking
_Enter_ the round hut |goto Nagrand D/0 55.5,43.0 < 10 |walk
talk Uruk Foecleaver##81086
turnin Terms of Surrender##35096 |goto 55.50,42.08
accept The Pride of Lok-rath##35097 |goto 55.50,42.08
step
talk Senior Sergeant Igerdes##81194
accept Silence the War Machines##35099 |goto 55.44,42.09
accept If They Won't Surrender...##35100 |goto 55.44,42.09
stickystart "lokrath_enemy_forces"
step
clicknpc Iron Horde War Machine##81050
|tip It looks like a big metal cannon.
Destroy the War Machine |q Silence the War Machines##35099/1 |count 1 |goto Nagrand D/0 56.0,43.1
step
clicknpc Fallen Horde Soldier##81195
accept Terror of Nagrand##35101 |goto 56.09,43.77
step
_Enter_ the cave |goto Nagrand D/0 57.1,42.6 < 20 |walk
kill Shagor##80263
|tip He's inside the cave.
collect Shagor's Collar##112620 |q Terror of Nagrand##35101/1 |goto Nagrand D/0 58.1,43.3
step
_Leave_ the cave |goto Nagrand D/0 57.1,42.6 < 20 |walk
clicknpc Iron Horde War Machine##81050
|tip It looks like a big metal cannon.
Destroy the War Machine |q Silence the War Machines##35099/1 |count 2 |goto Nagrand D/0 54.7,44.9
step
clicknpc Iron Horde War Machine##81050
|tip It looks like a big metal cannon.
Destroy the War Machine |q Silence the War Machines##35099/1 |goto Nagrand D/0 55.7,46.4
step
kill Uruk Foecleaver##80264 |q The Pride of Lok-rath##35097/1 |goto Nagrand D/0 55.6,47.8
|tip He's inside the small building.
step
label "lokrath_enemy_forces"
kill Nagrand Raider##80254+, Warsong Wolf Master##80253+, Iron Cannoneer##80964+, Lok-rath Windtamer##80255+
Slay #10# Lok-rath Enemy Forces |q If They Won't Surrender...##35100/1 |goto Nagrand D/0 55.7,44.4
step
_Go through_ the gate |goto Nagrand D/0 53.0,46.8 < 20 |only if walking
_Take_ the path to the right |goto Nagrand D/0 51.1,49.9 < 30 |only if walking
talk Blood Guard Ehanes##81193
turnin Silence the War Machines##35099 |goto 49.43,47.80
turnin If They Won't Surrender...##35100 |goto 49.43,47.80
turnin Terror of Nagrand##35101 |goto 49.43,47.80
step
talk Durotan##81186
turnin The Pride of Lok-rath##35097 |goto 48.59,48.22
accept Lok-rath is Secured##35098 |goto 48.60,48.22
step
_Travel_ through the open field |goto Nagrand D/0 46.7,52.8 < 40 |only if walking
_Cross_ the bridge |goto Nagrand D/0 44.3,57.0 < 20 |only if walking
_Turn right_ on the path |goto Nagrand D/0 42.8,58.4 < 20 |only if walking
talk Gar'rok##80864
turnin Spiritual Matters##35231 |goto 40.43,56.79
accept Lighting The Darkness##35022 |goto 40.43,56.79
step
talk Dahaka##80866
accept Echoes of the Past##35023 |goto 40.40,56.74
stickystart "tormented_echoes"
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 1 |goto Nagrand D/0 39.3,57.3
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 2 |goto Nagrand D/0 39.5,53.1
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 3 |goto Nagrand D/0 38.0,51.6
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 4 |goto 37.5,53.1
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |count 5 |goto Nagrand D/0 38.7,54.6
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q Lighting The Darkness##35022/1 |goto Nagrand D/0 38.6,56.1
step
label "tormented_echoes"
kill 8 Tormented Echo##80749 |q Echoes of the Past##35023/1 |goto 38.72,56.28
step
talk Dahaka##80866
turnin Echoes of the Past##35023 |goto 40.40,56.75
step
talk Gar'rok##80864
turnin Lighting The Darkness##35022 |goto 40.43,56.78
accept Golmash Hellscream##35024 |goto 40.43,56.79
step
_Run up_ the dirt hill |goto Nagrand D/0 38.9,56.8 < 20 |only if walking
kill Golmash Hellscream##80747 |q Golmash Hellscream##35024/1 |goto 37.3,55.6
|tip He's up the hill, standing inside the mouth of a huge stone skull.
step
talk Gar'rok##80864
turnin Golmash Hellscream##35024 |goto 40.43,56.79
step
talk Thrall##80003
turnin Lok-rath is Secured##35098 |goto 82.84,45.08
step
talk Lucy Brokerblast##83606
accept Bread and Circuses##35922 |goto 82.85,46.82
step
talk Gabby Goldsnap##80184
|tip She's standing under a slanted structure with a green roof.
accept Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 79.88,48.85
step
talk Biggy Warprofits##83924
fpath The Ring of Trials |goto Nagrand D/0 79.8,49.7
step
talk Dexyl Deadblade##79188
turnin Bread and Circuses##35922 |goto 79.44,50.30
accept Ring of Trials: Crushmaul##34662 |goto 79.44,50.26
step
talk Digrem Orebar##81955
accept Tastes Like Chicken##34869 |goto 79.23,52.65
step
talk Pyxni Pennypocket##79310
|tip She's standing under a brown leather canopy.
accept The Missing Caravan##34598 |goto 78.57,48.57
accept Declawing The Competition##34512 |goto 78.57,48.57
step
talk Marybelle Walsh##84632
accept The Good Doctor##35146 |goto 77.43,47.35
accept Whacking Weeds##36273 |goto 77.43,47.35
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the first Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Crushmaul##34662/1 |goto 77.64,49.56
step
kill Crushmaul##76702 |q Ring of Trials: Crushmaul##34662/2 |goto 78.00,50.38
|tip Save your cooldowns until the end of the fight when he enrages.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
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
|tip He summons some birds to help fight, but if you can kill him fast enough, you can just focus on the boss and the adds will dissappear when he dies.  Also, avoid the tornados he casts.  You can see where they will be on the ground, so avoid the swirling gray circles.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Raketalon##34663 |goto 79.46,50.28
accept Ring of Trials: Hol'yelaa##34664 |goto 79.46,50.28
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the third Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Hol'yelaa##34664/1 |goto 77.63,49.57
step
kill Hol'yelaa##86146 |q Ring of Trials: Hol'yelaa##34664/2 |goto 78.00,50.36
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Hol'yelaa##34664 |goto 79.46,50.31
accept Ring of Trials: Captain Boomspark##34665 |goto 79.46,50.31
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the fourth Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Captain Boomspark##34665/1 |goto 77.63,49.57
step
kill The Burninator##79690 |q Ring of Trials: Captain Boomspark##34665/2 |goto 77.97,50.29
|tip When the machine dies, it will immediately explode, dealing about 15k damage, so be careful.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Captain Boomspark##34665 |goto 79.47,50.30
accept Ring of Trials: Roakk the Zealot##34666 |goto 79.47,50.30
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the fifth Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q Ring of Trials: Roakk the Zealot##34666/1 |goto 77.62,49.56
step
kill Roakk the Zealot##79490 |q Ring of Trials: Roakk the Zealot##34666/2 |goto 77.97,50.57
|tip Turn away from him whenever he casts Blinding Radiance.
step
_Go through_ the doorway |goto Nagrand D 79.0,49.4 < 20 |only if walking
talk Dexyl Deadblade##79188
turnin Ring of Trials: Roakk the Zealot##34666 |goto 79.46,50.30
step
talk Greezlex Fizzpinch##79312
turnin The Missing Caravan##34598 |goto 78.97,58.86
accept Gobnapped##34515 |goto 78.97,58.86
accept They've Got The Goods!##34514 |goto 78.97,58.86
step
click Bounty Board##232398
accept WANTED: Razorpaw!##34513 |goto 78.97,58.95
step
talk Bazwix##79899
|tip He runs up to you.
accept My Precious!##34516 |goto Nagrand D/0 77.6,59.4
stickystart "save_goblin_traders"
stickystart "saberon_claws"
stickystart "sabermaw_stolen_goods"
step
_Go up_ the ramp |goto Nagrand D/0 75.1,61.2 < 20 |only if walking
_Enter_ the cave |goto Nagrand D/0 75.0,61.9 < 10 |walk
kill Razorpaw##79002 |q WANTED: Razorpaw!##34513/1 |goto Nagrand D/0 75.1,62.5
|tip He's inside the cave.
step
click Bazwix's Treasure##230712
|tip It looks like a sexy goblin calendar up on the ledge. Haha.
Find Bazwix's Stolen Treasure |q My Precious!##34516/1 |goto 74.73,61.51
step
talk Bazwix##79897
turnin My Precious!##34516 |goto Nagrand D/0 74.8,61.6
step
label "save_goblin_traders"
click Sabermaw Cage##230115
|tip They look like shoddy wooden cages around this area. They can also be in caves, so be sure to check in those.
Save #6# Goblin Traders |q Gobnapped##34515/1 |goto Nagrand D/0 74.8,60.2
step
label "saberon_claws"
kill Sabermaw Scarfang##78976+, Sabermaw Mystic##80056+, Sabermaw Mauler##78990+
collect 10 Saberon Claw##110714 |q Declawing The Competition##34512/1 |goto Nagrand D/0 74.8,60.2
step
label "sabermaw_stolen_goods"
click Stolen Goods##237264
|tip They look like small brown bags around this area. Check up on ledges for them as well.
collect 10 Stolen Goods##110719 |q They've Got The Goods!##34514/1 |goto Nagrand D/0 74.8,60.2
step
_Leave_ the canyon |goto Nagrand D 71.5,61.2 < 20 |only if walking
_Follow_ the path up |goto Nagrand D 70.9,64.0 < 20 |only if walking
kill Windroc##79398+, Ravenous Windroc##79851+
|tip They are flying in the air, or resting in nests around this area.
collect 10 Raw Windroc##113085 |q Tastes Like Chicken##34869/1 |goto Nagrand D 72.0,65.6
You can find more around [Nagrand D 71.3,69.4]
step
_Cross_ the water |goto 69.3,64.3 < 30 |only if walking
talk Shadow Hunter Kajassa##80429
|tip She's standing next to a huge rock, next to the water.
turnin Target of Opportunity: Telaar##34914 |goto 68.54,64.53
accept I Help Ya Kill Dem##34915 |goto 68.54,64.53
accept The Blessing of Samedi##34916 |goto 68.54,64.53
step
talk Rangari Keilnei##80451
accept Shields Up!##34917 |goto 68.59,64.56
stickystart "warsong_forces_telaar"
step
_Go up_ the path |goto Nagrand D/0 68.2,64.3 < 10 |only if walking
_Cross_ the bridge |goto Nagrand D/0 67.7,64.8 < 20 |only if walking
_Enter_ the building |goto Nagrand D/0 68.2,66.9 < 10 |walk
use Samedi Fetish##112166
|tip Use the Samedi Fetish on Shadow Hunter Spar'kuhl. He's laying on the floor inside the building.
Bless Shadow Hunter Spar'kuhl |q The Blessing of Samedi##34916/3 |goto 68.50,67.01
step
click Telaari Crystal##231070
|tip It's next to a small purple tent.
Power up the Southeast Crystal |q Shields Up!##34917/3 |goto 68.01,67.95
step
_Enter_ the building |goto Nagrand D/0 66.8,68.3 < 10 |walk
use Samedi Fetish##112166
|tip Use the Samedi Fetish on Shadow Hunter Maloa. He's laying on the floor inside the building.
Bless Shadow Hunter Maloa |q The Blessing of Samedi##34916/2 |goto 66.58,68.63
step
_Leave_ the building |goto Nagrand D/0 66.8,68.3 < 10 |walk
_Follow_ the path |goto Nagrand D/0 66.3,68.5 < 10 |only if walking
click Telaari Crystal##231070
|tip It's sitting up on a ledge, near the top of waterfall.
Power up the Southwest Crystal |q Shields Up!##34917/4 |goto 64.78,67.79
step
_Cross_ the bridge |goto Nagrand D/0 65.9,66.9 < 20 |only if walking
_Enter_ the building |goto Nagrand D/0 65.6,65.5 < 10 |walk
clicknpc Shadow Hunter J'wan##80462
use Samedi Fetish##112166
|tip Use the Samedi Fetish on Shadow Hunter J'wan. He's laying on the ground on the balcony of the building.
Bless Shadow Hunter J'wan |q The Blessing of Samedi##34916/1 |goto 65.24,65.08
step
click Telaari Crystal##231070
|tip It's sitting up on the edge of a cliff.
Power up the Northwest Crystal |q Shields Up!##34917/2 |goto 65.17,63.67
step
click Telaari Crystal##231070
|tip It's sitting up on the edge of a cliff, next to some trees.
Power up the Northeast Crystal |q Shields Up!##34917/1 |goto 66.47,62.26
step
label "warsong_forces_telaar"
kill Warsong Raider##79744+, Invading Warsinger##79753+, Savage Warwolf##79755+
Slay #12# Warsong Forces at Telaar |q I Help Ya Kill Dem##34915/1 |goto 67.8,66.6
step
_Follow_ the road down |goto Nagrand D/0 67.8,64.4 < 20 |only if walking
talk Shadow Hunter Kajassa##80429
|tip She's standing next to a huge rock, next to the water.
turnin I Help Ya Kill Dem##34915 |goto 68.54,64.52
turnin The Blessing of Samedi##34916 |goto 68.54,64.52
turnin Shields Up!##34917 |goto 68.54,64.52
accept Shields Down!##34918 |goto 68.54,64.52
step
_Go up_ the path |goto Nagrand D/0 68.2,64.3 < 10 |only if walking
_Cross_ the bridge |goto Nagrand D/0 67.7,64.8 < 20 |only if walking
_Follow_ the path |goto Nagrand D/0 67.4,66.6 < 20 |only if walking
kill Packleader Kargora##79839 |q Shields Down!##34918/1 |goto 66.91,65.49
step
clicknpc Arkonite Crystal##79919
|tip It's a large floating purple crystal.
Destroy the Arkonite Shield |q Shields Down!##34918/2 |goto 66.90,65.44
step
_Go through_ the doorway |goto Nagrand D/0 66.3,66.7 < 20 |only if walking
_Follow_ the path |goto Nagrand D/0 65.7,67.8 < 30 |only if walking
_Run on_ the road |goto Nagrand D/0 65.5,73.1 < 40 |only if walking
_Go through_ the doorway |goto Nagrand D/0 65.7,70.6 < 20 |only if walking
_Cross_ the bridge |goto 60.1,69.7 < 30 |only if walking
kill Tall Buck##82116
|tip It's a red talbuk standing on the edge of a pond.
collect Tall Buck's Tail##113104 |q King of the Breezestriders##35378/1 |goto 57.82,69.03
step
_Follow_ the road |goto Nagrand D/0 55.0,69.8 < 30 |only if walking
_Cross_ the bridge |goto Nagrand D/0 52.4,72.0 < 20 |only if walking
talk Nivek Lee##88653
fpath Nivek's Overlook |goto Nagrand D/0 49.4,75.9
step
_Follow_ the path |goto Nagrand D/0 47.6,76.9 < 30 |only if walking
accept Bonus Objective: Ironfist Harbor##34723 |goto Nagrand D/0 43.2,74.8
stickystart "orc_soldiers_nagrand"
step
accept Bonus Objective: Ironfist Harbor##34723
_Follow_ the path |goto Nagrand D/0 39.6,73.2 < 30 |only if walking
_Enter_ the building |goto Nagrand D/0 38.1,71.2 < 20 |walk
_Go up_ the stairs |goto Nagrand D/0 37.3,70.1 < 20 |walk
kill General Kull'krosh##79588 |q Bonus Objective: Ironfist Harbor##34723/4 |goto Nagrand D/0 37.5,71.6
|tip He's all the way upstairs on the roof of the building.
step
accept Bonus Objective: Ironfist Harbor##34723
_Jump down_ here |goto Nagrand D/0 37.3,71.9 < 10 |only if walking
_Follow_ the coast along the water |goto Nagrand D/0 37.4,72.9 < 10
kill Rezlorg##79651 |q Bonus Objective: Ironfist Harbor##34723/3 |goto Nagrand D/0 38.2,73.4
|tip He's standing under a brown leather canopy.
step
accept Bonus Objective: Ironfist Harbor##34723
_Go onto_ the docks |goto Nagrand D/0 39.1,74.8 < 20 |only if walking
click Iron Supply Crate##230653
|tip They look like wooden boxes with metal trimmings on the ground around this area.
Destroy #12# Dock Suppy Crates |q Bonus Objective: Ironfist Harbor##34723/2 |goto Nagrand D/0 37.5,77.6
step
label "orc_soldiers_nagrand"
accept Bonus Objective: Ironfist Harbor##34723
kill Warsong Initiate##79754+, Iron Arbalester##79584+, Iron Guard##79581+
Slay #30# Orc Soldiers |q Bonus Objective: Ironfist Harbor##34723/1 |goto Nagrand D/0 39.6,74.0
step
talk Thrall##80003
turnin Shields Down!##34918 |goto 82.84,45.08
accept And Justice for Thrall##35171 |goto 82.84,45.08
step
talk Stalker Ogka##82080
turnin King of the Breezestriders##35378 |goto 82.59,43.94
step
talk Digrem Orebar##81955
turnin Tastes Like Chicken##34869 |goto 79.22,52.65
accept Fruitful Ventures##34819 |goto 79.22,52.65
step
talk Pyxni Pennypocket##79310
|tip She's standing under a brown leather canopy.
turnin Gobnapped##34515 |goto 78.58,48.57
turnin They've Got The Goods!##34514 |goto 78.58,48.57
turnin Declawing The Competition##34512 |goto 78.58,48.57
turnin WANTED: Razorpaw!##34513 |goto 78.58,48.57
step
talk Gazmolf Futzwangler##79201
|tip He's standing up on the edge of a cliff next to a tree.
turnin Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 71.13,52.34
accept A Lesson in Minerology##34809 |goto 71.13,52.34
step
talk Trixi Leroux##82658
accept Good Help is Hard to Find##34811 |goto 71.11,52.42
stickystart "earthen_cores"
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 1 |goto Nagrand D/0 70.7,51.5
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 2 |goto Nagrand D/0 69.4,53.6
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 3 |goto 69.3,52.3
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 4 |goto 68.5,53.5
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 5 |goto 67.7,51.4
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 6 |goto 67.1,51.7
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 7 |goto 67.1,54.5
step
click Loose Soil##241606
collect Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 8 |goto 66.3,54.9
step
label "earthen_cores"
kill Raging Crusher##80144+
collect 4 Earthen Core##111874 |q A Lesson in Minerology##34809/1 |goto 66.5,53.8
step
_Follow_ the path up |goto Nagrand D/0 69.2,52.9 < 30 |only if walking
_Leave_ the canyon |goto Nagrand D/0 72.9,49.5 < 20 |only if walking
talk Trixi Leroux##82658
|tip She's standing up on the edge of a cliff near a tree.
turnin Good Help is Hard to Find##34811 |goto 71.11,52.42
step
click Gold-O-Matic 9000##230882
turnin A Lesson in Minerology##34809 |goto 71.06,52.31
step
talk Gazmolf Futzwangler##79201
accept A Lesson in Teamwork##35663 |goto 71.14,52.35
accept A Lesson in Archaeology##35632 |goto 71.14,52.35
step
map Nagrand D
path follow smart; loop; curved
path	62.9,57.3	61.6,53.6	63.4,49.8
path	64.6,45.4	67.7,44.2	71.5,47.1
path	72.4,51.5	69.2,56.4	65.5,57.8
kill Banthar##82119
|tip She looks like a big blue clefthoof with spikes on her head and back. Follow the path around the cliffs to find her. You will see a gold dot on your map when you are near her.
collect Horn of Banthar##113105 |q Queen of the Clefthoof##35375/1
stickystart "highmaulartifact"
step
_Run down_ the path |goto Nagrand D/0 68.1,45.7 < 20 |only if walking
_Cross_ the bridge |goto Nagrand D/11 64.1,68.6 < 20 |walk
use Teleportation Beacon##113217
Place the Teleport Beacon |q A Lesson in Archaeology##35632/1 |goto Nagrand D/11 67.4,42.5
step
Watch the dialogue
Recover the Mysterious Artifact |q A Lesson in Archaeology##35632/2 |goto 68.38,41.89
step
label "highmaulartifact"
click Ancient Reliquary##233053
|tip They look like square stone containers and small stone bird statues on the ground around this area. You can find these inside the cave, as well as outside the cave.
kill Highmaul Archaeologian##82619+, Highmaul Laborer##79402+, Highmaul Laborer##79402+
collect 10 Mysterious Artifact##113272 |q A Lesson in Teamwork##35663/1 |goto Nagrand D/11 49.5,56.0
step
_Run over_ the rocks |goto Nagrand D/0 66.8,51.1 < 20 |only if walking
_Follow_ the path up |goto Nagrand D/0 69.2,52.9 < 30 |only if walking
_Leave_ the canyon |goto Nagrand D/0 72.9,49.5 < 20 |only if walking
talk Gazmolf Futzwangler##79201
|tip He's standing up on the edge of a cliff near a tree.
turnin A Lesson in Teamwork##35663 |goto Nagrand D/0 71.12,52.34
turnin A Lesson in Archaeology##35632 |goto Nagrand D/0 71.12,52.34
step
click Nagrand Cherry##232100
|tip They look like orange balls on the ground near trees all around this whole area.
collect 15 Nagrand Cherry##113083 |q Fruitful Ventures##34819/1 |goto Nagrand D/0 70.4,54.4
More can be found _around the trees_ here [Nagrand D/0 68.9,59.1]
step
talk Olgra##82688
turnin Lost in Nagrand##35167 |goto 74.16,37.51
accept Consumed by Vengeance##35170 |goto 74.16,37.51
step
kill Worgskin the Savage##82702 |q Consumed by Vengeance##35170/1 |goto Nagrand D/0 70.6,35.6
step
_Run on_ the dirt road |goto Nagrand D/0 73.2,31.2 < 30 |only if walking
_Cross_ the bridge |goto Nagrand D/0 73.1,27.7 < 20 |only if walking
_Follow_ the path |goto 73.5,21.1 < 20 |only if walking
talk Kalandrios##80595
turnin The Fate of Gordawg##34271 |goto 72.79,19.74
step
talk Farseer Drek'Thar##82070
turnin The Dark Heart of Oshu'gun##35317 |goto 71.54,19.76
step
talk Shadow Hunter Taz##82078
turnin Queen of the Clefthoof##35375 |goto 82.54,43.97
stickystart "spiteleaf_podlings"
step
_Follow_ the dirt path |goto Nagrand D/0 79.2,35.2 < 40 |only if walking
_Run down_ the path |goto Nagrand D/0 82.6,33.0 < 30 |only if walking
_Follow_ the path |goto Nagrand D/0 84.3,30.9 < 30 |only if walking
_Enter_ the burrow |goto 84.0,24.4 < 10 |walk
talk Dr. Hadley Ricard##84633
|tip He's inside the underground burrow.
Tell him _"Marybelle Walsh sent me to rescue you. Go and I'll protect you!"_
Rescue Dr. Hadley Ricard |q The Good Doctor##35146/1 |goto 83.21,22.62
step
label "spiteleaf_podlings"
kill Spiteleaf Stabber##84656+, Spiteleaf Sprout##84653+, Spiteleaf Mender##84657+, Spiteleaf Squirt##84655+
Slay #20# Spiteleaf Podlings |q Whacking Weeds##36273/1 |goto 84.84,27.95
step
talk Dr. Hadley Ricard##84861
|tip He's up on a ledge next to a tree.
turnin The Good Doctor##35146
accept A Fascinating Fungus##36284 |goto 86.65,28.34
accept The Search For Research##36275 |goto 86.65,28.32
stickystart "fungal_spores_nagrand"
step
_Follow_ the path |goto Nagrand D/0 86.9,25.7 < 30 |only if walking
click Expedition Supplies##234176
|tip It looks like a backpack underneath 3 giant mushrooms next to the wall.
collect Expedition Supplies##115275 |q The Search For Research##36275/2 |goto 86.03,20.49
step
click Research Journal##234178
|tip It looks like a stack of books, sitting on top of a small green mushroom sticking up out of the surface of the water.
collect Research Journal##115272 |q The Search For Research##36275/1 |goto 88.87,19.77
step
click Anti-fungal Boots##234169
|tip It's a pair of boots on top of a mushroom.
collect Anti-Fungal Boots##115274 |q The Search For Research##36275/3 |goto 91.76,21.78
step
label "fungal_spores_nagrand"
click Spore Sac##234101
|tip They look like green plant growths with holes in them, with yellow light glowing out of them. You can find many of them floating at the bottom of the lake.
kill Spore Giant##84726+
collect 12 Fungal Spores##115276 |q A Fascinating Fungus##36284/1 |goto Nagrand D/0 88.6,21.8
step
_Go up_ the hill |goto Nagrand D/0 85.4,25.2 < 20 |only if walking
talk Dr. Hadley Ricard##84861
|tip He's up on a ledge next to a tree.
turnin The Search For Research##36275 |goto 86.65,28.33
turnin A Fascinating Fungus##36284 |goto 86.65,28.33
accept Dirgemire##36285 |goto 86.66,28.41
step
_Ride around_ the beach |goto Nagrand D/0 86.9,25.3 < 30 |only if walking
_Follow_ the path |goto 86.1,19.2 < 30 |only if walking
_Enter_ the underwater cave |goto Nagrand D/0 86.5,16.2 < 10 |walk
kill Dirgemire##84649
|tip It's inside the underwater cave.
collect Fungal Brain##115277 |q Dirgemire##36285/1 |goto 84.56,17.45
step
_Swim_ out of the cave |goto Nagrand D/0 86.5,16.2 < 20 |walk
_Follow_ the path |goto 86.1,19.2 < 40 |only if walking
_Go up_ the hill |goto Nagrand D/0 85.5,24.9 < 30 |only if walking
talk Dr. Hadley Ricard##84861
|tip He's up on a ledge next to a tree.
turnin Dirgemire##36285 |goto 86.66,28.32
step
talk Mankrik##72822
turnin Consumed by Vengeance##35170 |goto 49.29,47.97
step
talk Marybelle Walsh##84632
turnin Whacking Weeds##36273 |goto 77.43,47.35
step
talk Digrem Orebar##81955
turnin Fruitful Ventures##34819 |goto 79.22,52.66
accept New Babies##34900 |goto 79.23,52.66
step
clicknpc Tenderhoof Meadowstomper##78459+
|tip They look like small elephants that wander around this area. They are uncommon, so you'll have to run around a bit to find some. Stay in the blue areas of your minimap, or else you will only be able to attack them.
Coax #5# Tenderhoof Meadowstompers |q New Babies##34900/1 |goto Nagrand D/0 75.4,56.5
step
talk Digrem Orebar##81955
turnin New Babies##34900 |goto 79.25,52.65
step
_Cross_ the road |goto Nagrand D/0 78.7,58.2 < 40 |only if walking
_Follow_ the path |goto Nagrand D/0 78.0,67.4 < 40 |only if walking
talk Durotan##81414
Tell him _"Durotan, let's blow open those gates and take Grommashar."_
Speak with Durotan at the Gates of Grommashar |q And Justice for Thrall##35171/1 |goto Nagrand D/0 74.6,69.5
step
_Go through_ the doorway |goto Nagrand D 74.2,70.5 < 20 |only if walking
talk Aggra##81416
Tell her _"I agree. A flanking maneuver will buy you the time you need to move most of our forces closer to Garrosh."_
Speak with Aggra inside Grommashar |scenariogoal 25159 |goto Nagrand D/0 74.7,76.3 |condition completedq(35171)
step
_Follow_ the path |goto Nagrand D 73.2,76.6 < 20 |only if walking
_Go through_ the doorway |goto Nagrand D 72.7,78.3 < 20 |only if walking
kill Packmaster Grokglok##82131
Defeat Packmaster Grokglok |scenariogoal 24795 |goto Nagrand D/0 72.3,78.8 |condition completedq(35171)
step
_Go through_ the doorway |goto Nagrand D 71.3,79.7 < 20 |only if walking
_Follow_ the winding path up |goto Nagrand D/0 70.2,81.4 < 20 |only if walking
_Keep heading up_ the hill |goto Nagrand D/0 73.0,80.9 < 20 |only if walking
_Continue following_ the path |goto Nagrand D 74.5,80.1 < 20 |only if walking
talk Durotan##84443
Tell him _"Like it or not, we need to move ahead. What's the situation?"_
Speak with Durotan at the Rally Point up the Hill |scenariogoal 25131 |goto Nagrand D/0 75.2,77.6 |condition completedq(35171)
step
_Follow_ the path up |goto Nagrand D 75.7,78.1 < 20 |only if walking
kill Durn the Hungerer##82132
|tip Use the ability that pops up in the middle of your screen.
Slay Durn the Hungerer |scenariogoal 24796 |goto Nagrand D/0 75.6,81.7 |condition completedq(35171)
step
_Run down_ the stairs |goto Nagrand D 74.5,81.9 < 20 |only if walking
talk Durotan##84443
Tell him _"Give the order, Durotan. Destroy the gates and get us in there."_
Speak with Durotan at the Final Gate |scenariogoal 25161 |goto Nagrand D/0 72.9,81.8 |condition completedq(35171)
step
_Go through_ the doorway |goto Nagrand D 72.6,82.2 < 20 |only if walking
kill Garrosh Hellscream##82133
|tip You will have to attack him to begin the fight.
Watch the dialogue and cutscene
Bring Warlord Garrosh Hellscream to Justice |scenariogoal 24797 |goto Nagrand D/0 71.6,84.1 |condition completedq(35171)
step
talk Durotan##81415
turnin And Justice for Thrall##35171 |goto 66.89,33.70
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Draenor (90-100)\\Tanaan Jungle (100)",{
description="This guide will walk you through completing the main questline for the level 100 Tanaan Jungle zone.",
},[[
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip Use the Garrison Leveling guide to accomplish this.
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38567 |goto Frostwall/0 40.1,54.0
|tip You will automatically accept this quest.
step
talk Vol'jin##92400
turnin Garrison Campaign: War Council##38567 |goto Frostwall/0 39.1,54.8
accept We Need a Shipwright##38568 |goto Frostwall/0 39.1,54.8
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 56.0,6.7 < 100 |noway |c |q 38568
accept Clearing the Docks##38569
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Sammy Fivefingers##89937
turnin We Need a Shipwright##38568 |goto Gorgrond/0 56.1,6.7
accept Derailment##38570 |goto Gorgrond/0 56.1,6.7
stickystart "clearing_the_docks"
step
_Go through_ the doorway |goto Gorgrond/0 56.3,8.2 < 20 |only if walking
_Follow_ the path |goto Gorgrond/0 56.8,10.3 < 30 |only if walking
_Run up_ the ramp |goto Gorgrond/0 56.7,11.5 < 20 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q Derailment##38570/2 |goto Gorgrond/0 56.5,11.6
step
_Run up_ the ramp |goto Gorgrond/0 56.9,14.1 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground between 2 huge metal loops.
collect Explosive Charges##122515 |q Derailment##38570/1 |goto Gorgrond/0 56.4,15.1
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q Clearing the Docks##38569/1 |goto Gorgrond/0 56.9,12.0
|tip You will see a progress bar in your quest tracking area.
step
talk Durotan##92401
turnin Derailment##38570 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q The Train Gang##38571/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q The Train Gang##38571/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q The Train Gang##38571/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q The Train Gang##38571/4 |goto Gorgrond/0 56.8,17.2
Watch the dialogue
Recruit Solog Roark |q The Train Gang##38571/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 56.8,17.2
step
_Follow_ the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q Hook, Line, and... Sink Him!##38572/1 |goto Gorgrond/0 50.7,16.1
step
_Enter_ the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q Hook, Line, and... Sink Him!##38572/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38573 |goto Gorgrond/0 50.6,16.7
step
talk Vol'jin##92400
turnin Nothing Remains##38573 |goto Frostwall/0 39.1,54.8
accept All Hands on Deck##38574 |goto Frostwall/0 39.1,54.8
step
_Follow_ the path |goto Frostwall/0 36.5,40.9 < 30 |only if walking
_Go through_ the dooway |goto Frostwall/0 27.0,55.4 < 20 |only if walking
talk Solog Roark##91242
turnin All Hands on Deck##38574 |goto Frostfire Ridge/0 41.5,69.9
step
talk Rolosh Wavechaser##94789
accept Let's Get To Work##39236 |goto Frostfire Ridge/0 41.6,72.3
step
talk Solog Roark##94429
turnin Let's Get To Work##39236 |goto Frostfire Ridge/0 40.7,70.3
accept Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q Shipbuilding##39241/1
step
talk Solog Roark##94429
turnin Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
accept Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
step
talk Solog Roark##94429
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q Ship Shape##39242/1 |goto Frostfire Ridge/0 40.7,70.3
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport once Construction is Complete |q Ship Shape##39242/2 |goto Frostfire Ridge/0 40.4,70.0
|tip It takes 1 minute to build after you begin the work order.
step
talk Solog Roark##94429
turnin Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
accept The Invasion of Tanaan##37889 |goto Frostfire Ridge/0 40.7,70.3
step
_Follow_ the path |goto Frostfire Ridge/0 41.5,72.1 < 30 |only if walking
Meet With Khadgar |q The Invasion of Tanaan##37889/1 |goto Frostfire Ridge/0 40.8,73.3
step
talk Draka##90481
Tell her _"Let us begin the invasion."_
Speak With Draka |q The Invasion of Tanaan##37889/2 |goto Frostfire Ridge/0 40.7,73.3
step
talk Draka##89822
turnin The Invasion of Tanaan##37889 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##37890 |goto Tanaan Jungle/0 73.4,71.1
step
_Follow_ the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q Obstacle Course##37890/1 |goto Tanaan Jungle/0 68.9,64.9
step
_Follow_ the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q Obstacle Course##37890/2 |goto Tanaan Jungle/0 74.0,56.1
step
_Follow_ the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Shadow Hunter Mutumba##90238
turnin Obstacle Course##37890 |goto Tanaan Jungle/0 69.5,54.2
accept In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 69.5,54.2
step
_Follow_ the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q In, Through, and Beyond!##37934/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q In, Through, and Beyond!##37934/2 |goto Tanaan Jungle/0 64.3,51.6
step
_Run down_ the path |goto Tanaan Jungle/0 63.4,51.6 < 20 |only if walking
Meet up with Shadow Hunter Mutumba |q In, Through, and Beyond!##37934/3 |goto Tanaan Jungle/0 62.6,50.9
step
talk Shadow Hunter Mutumba##90238
turnin In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 62.6,50.9
accept The Assault Base##37935 |goto Tanaan Jungle/0 62.6,50.9
step
_Follow_ the path |goto Tanaan Jungle/0 61.7,51.2 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 60.3,49.9 < 20 |only if walking
Follow Mutumba |q The Assault Base##37935/1 |goto Tanaan Jungle/0 60.9,47.1
step
clicknpc Horde Banner##120955
|tip It looks like a yellow hanging flag with the Horde logo on it.
Plant the Flag to Build the Base |q The Assault Base##37935/2 |goto Tanaan Jungle/0 60.9,47.0
step
talk Gargash the Diver##90550
fpath Vol'mar |goto Tanaan Jungle/0 60.4,46.4
step
talk Dawn-Seeker Krisek##95424
accept Unknowable Power##39432 |goto Tanaan Jungle/0 60.4,46.7
step
_Enter_ the building |goto Tanaan Jungle/0 61.2,46.1 < 10 |walk
talk Draka##90481
turnin The Assault Base##37935 |goto Tanaan Jungle/0 61.5,45.8
accept The Battle for the West##38577 |goto Tanaan Jungle/0 61.5,45.8
accept Shipyard Report##39423 |goto Tanaan Jungle/0 61.5,45.8
step
talk Retho Quillmane##90989
home Vol'mar Hold |goto Tanaan Jungle/0 61.5,46.2
step
talk Fraggs##90993
accept Bring the Reinforcements##39315 |goto Tanaan Jungle/0 59.9,47.5
step
talk Fraggs##90993
Tell him _"Call to Arms."_
|tip This will give you one of the zone abilities you earned while questing in Draenor. You can change the ability you choose at any time after this quest by talking to him again.
Choose your Reinforcements |q Bring the Reinforcements##39315/1 |goto Tanaan Jungle/0 59.9,47.5
step
talk Fraggs##90993
turnin Bring the Reinforcements##39315 |goto Tanaan Jungle/0 59.9,47.5
step
talk Gargash the Diver##90550
Talk to Gargash to Fly to the Iron Front |q The Battle for the West##38577/1 |goto Tanaan Jungle/0 60.4,46.4
Tell him _"Take me to the Iron Front."_
Fly to the Iron Front |goto Tanaan Jungle/0 9.3,55.9 < 100 |noway |c |q 38577
step
talk Durotan##90553
Speak with Durotan |q The Battle for the West##38577/2 |goto Tanaan Jungle/0 9.7,56.2
step
talk Durotan##90553
turnin The Battle for the West##38577 |goto Tanaan Jungle/0 9.7,56.2
accept Commander in the Field!##38001 |goto Tanaan Jungle/0 9.7,56.2
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags make of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q Battle At The Iron Front##38865/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the road |goto Tanaan Jungle/0 18.5,59.0 < 30 |only if walking
_Run on_ the dirt path |goto Tanaan Jungle/0 28.1,59.1 < 30 |only if walking
talk Rangari Sha'ana##92809
fpath Sha'naari Refuge |goto Tanaan Jungle/0 29.5,63.1
step
talk Cutter##90581
Speak with the Scout in Southwest Tanaan Jungle |q Commander in the Field!##38001/1 |goto Tanaan Jungle/0 29.4,63.0
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
talk Shadow Hunter Zel'duk##90563
Speak With the Scout in Northwest Tanaan Jungle |q Commander in the Field!##38001/2 |goto Tanaan Jungle/0 25.9,38.8
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
_Run on_ the dirt path |goto Tanaan Jungle/0 54.8,63.6 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 52.9,58.0 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 59.0,49.8 < 30 |only if walking
talk Dawn-Seeker Krisek##95424
turnin Unknowable Power##39432 |goto Tanaan Jungle/0 60.4,46.8
step
_Run on_ the wide stone road |goto Tanaan Jungle/0 57.5,52.4 < 40 |only if walking
_Follow_ the dirt road |goto Tanaan Jungle/0 48.1,51.0 < 40 |only if walking
_Continue_ following the dirt road |goto Tanaan Jungle/0 43.7,47.5 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 42.8,41.3 < 20 |only if walking
talk Goi'orsh##90584
accept A Message of Terrible Import##38578 |goto Tanaan Jungle/0 44.2,41.5
step
talk Rocketmaster Malo##92808
fpath Malo's Lookout |goto Tanaan Jungle/0 43.4,42.2
step
talk Malgurk##90548
Speak with the Scout in Northeast Tanaan Jungle |q Commander in the Field!##38001/3 |goto Tanaan Jungle/0 43.7,42.4
step
_Enter_ the building |goto Tanaan Jungle/0 61.1,46.1 |walk
talk Draka##90481
turnin Commander in the Field!##38001 |goto Tanaan Jungle/0 61.5,45.8
step
Go to the Vault of the Earth |q A Message of Terrible Import##38578/1 |goto Tanaan Jungle/0 47.1,70.2
step
talk Lagar the Wise##90644
Tell him _"You are Lagar? I bring words from a shaman of your order. He says..."_
Speak With Lagar the Wise |q A Message of Terrible Import##38578/2 |goto Tanaan Jungle/0 47.3,70.5
step
talk Lagar the Wise##90644
turnin A Message of Terrible Import##38578 |goto Tanaan Jungle/0 47.3,70.5
step
Congratulations, you've completed the Tanaan Jungle Main Questline!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\The Loremaster\\Loremaster of Draenor",{
achieveid={9923},
sugGroup="ACHIEVEMENTS\\Draenor Pathfinder",
description="Complete the Draenor quest achievements.",
},[[
step
Use these Draenor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
condition achieved(9923) |next
Frostfire Ridge |condition achieved(9923,4) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Frostfire Ridge (90-92)"
Gorgrond |condition achieved(9923,5) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Gorgrond (92-94)"
Talador |condition achieved(9923,1) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Talador (94-96)"
Spires of Arak |condition achieved(9923,2) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Spires of Arak (96-98)"
Nagrand |condition achieved(9923,3) |confirm always |next "Zygor's Leveling Guides\\Draenor (90-100)\\Nagrand (98-100)"
step
Congratulations, you earned the _Loremaster of Draenor_ Achievement!
]])
