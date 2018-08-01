local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
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
