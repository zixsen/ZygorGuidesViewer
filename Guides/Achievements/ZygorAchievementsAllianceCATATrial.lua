local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Represent",{
condition_end=function() return achieved(5755) end,
achieveid={621,1020,1021,5755},
description="Equip a tabard.",
},[[
step
You can obtain various tabards through reputation, achievements, PvP, and questing
Please refer to our reputation and achievment guides to earn your tabards
What follows is the seven faction tabards to get you on your way to 30 tabards
confirm
step
talk Captain Lancy Revshon##49877 |goto Stormwind City 67.7,73.0
buy Stormwind Tabard##45574 |n
Equip Stormwind Tabard |use Stormwind Tabard##45574
confirm
step
talk Old Whitenose##65068 |goto Stormwind City 67.8,18.6
buy Tushui Tabard##83079 |n
Equip Tushui Tabard |use Tushui Tabard##83079
confirm
step
talk Master Tinker Trini##50308 |goto Ironforge 55.3,48.2
buy Gnomeregan Tabard##45578 |n
Equip Gnomeregan Tabard |use Gnomeregan Tabard##45578
confirm
step
talk Captain Stonehelm##50309 |goto Ironforge 55.6,47.3
buy Ironforge Tabard##45577 |n
Equip Ironforge Tabard |use Ironforge Tabard##45577
confirm
step
talk Moon Priestess Lasara##50305 |goto Darnassus 36.2,48.5
buy Darnassus Tabard##45579 |n
Equip Darnassus Tabard |use Darnassus Tabard##45579
confirm
step
talk Lord Candren##50307 |goto Darnassus 37.1,47.5
buy Gilneas Tabard##64882 |n
Equip Gilneas Tabard |use Gilneas Tabard##64882
confirm
step
talk Kadu##50306 |goto The Exodar 54.8,36.8
buy Exodar Tabard##45580 |n
Equip Exodar Tabard |use Exodar Tabard##45580
confirm
step
Congratulations, you have earned the Represent achievement! |only if achieved(621)
Congratulations, you have earned the Ten Tabards achievement! |only if achieved(1020)
Congratulations, you have earned the Twenty-Five Tabards achievement! |only if achieved(1021)
Congratulations, you have earned the Thirty Tabards achievement! |only if achieved(5755)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Eastern Kingdoms\\Eastern Kingdoms Explorer",{
condition_end=function() return achieved(42) end,
achieveid={4825,4864,4866,775,761,765,766,775,627,778,772,779,780,768,859,774,769,858,781,4995,782,773,802,841,777,770,771,868,776,42},
description="Explore all regions of Eastern Kingdoms.",
},[[
step
Discover Booty Bay |achieve 4995/1 |goto The Cape of Stranglethorn 39.7,71.0
step
Discover The Wild Shore |achieve 4995/10 |goto The Cape of Stranglethorn 43.5,81.4
step
Discover Jaquero Isle |achieve 4995/5 |goto The Cape of Stranglethorn 60.8,81.6
step
Discover Mistvale Valley |achieve 4995/6 |goto The Cape of Stranglethorn 50.5,58.1
step
Discover Nek'mani Wellspring |achieve 4995/7 |goto The Cape of Stranglethorn 43.0,49.1
step
Discover Hardwrench Hideaway |achieve 4995/4 |goto The Cape of Stranglethorn 34.1,32.4
step
Discover Gurubashi Arena |achieve 4995/3 |goto The Cape of Stranglethorn 46.3,22.5
step
Discover Ruins of Jubuwal |achieve 4995/9 |goto The Cape of Stranglethorn 54.4,30.3
step
Discover Ruins of Aboraz |achieve 4995/8 |goto The Cape of Stranglethorn 62.2,43.7
step
Discover Crystalvein Mine |achieve 4995/2 |goto The Cape of Stranglethorn 62.4,28.1
step
Explore The Cape of Stranglethorn |achieve 4995
step
Discover Lake Nazferiti |achieve 781/12 |goto Northern Stranglethorn 51.48,34.05
step
Discover Fort Livingston |achieve 781/4 |goto Northern Stranglethorn 53.2,66.0
step
Discover Balia'mah Ruins |achieve 781/2 |goto Northern Stranglethorn 59.0,55.2
step
Discover Mosh'Ogg Ogre Mound |achieve 781/11 |goto Northern Stranglethorn 66.9,50.9
step
Discover Bambala |achieve 781/3 |goto Northern Stranglethorn 64.7,39.7
step
Discover Zul'Gurub |achieve 781/16 |goto Northern Stranglethorn 83.9,32.5
step
Discover Kurzen's Compound |achieve 781/8 |goto Northern Stranglethorn 60.2,19.9
step
Discover Rebel Camp |achieve 781/7 |goto Northern Stranglethorn 46.7,9.5
step
Discover Nesingwary's Expedition |achieve 781/6 |goto Northern Stranglethorn 44.1,19.8
step
Discover Kal'ai Ruins |achieve 781/9 |goto Northern Stranglethorn 42.2,38.4
step
Discover Mizjah Ruins |achieve 781/10 |goto Northern Stranglethorn 46.1,52.9
step
Discover Grom'gol Base Camp |achieve 781/1 |goto Northern Stranglethorn 37.8,48.4
step
Discover The Vile Reef |achieve 781/14 |goto Northern Stranglethorn 33.0,42.5
step
Discover Bal'lal Ruins |achieve 781/13 |goto Northern Stranglethorn 34.3,36.2
step
Discover Zuuldaia Ruins |achieve 781/5 |goto Northern Stranglethorn 19.2,25.6
step
Discover Ruins of Zul'Kunda |achieve 781/15 |goto Northern Stranglethorn 26.4,20.2
step
Explore Northern Stranglethorn |achieve 781 |goto Northern Stranglethorn
step
Discover The Dagger Hills |achieve 802/11 |goto Westfall 44.9,82.0
step
Discover Demont's Place |achieve 802/10 |goto Westfall 33.9,73.6
step
Discover Moonbrook |achieve 802/8 |goto Westfall 42.4,65.5
step
Discover Alexston Farmstead |achieve 802/9 |goto Westfall 38.2,52.3
step
Discover The Raging Chasm |achieve 802/12 |goto Westfall 39.2,43.2
step
Discover the Molsen Farm |achieve 802/6 |goto Westfall 45.3,34.9
step
Discover Jangolode Mine |achieve 802/5 |goto Westfall 44.9,23.9
step
Discover Furlbrow's Pumpkin Farm |achieve 802/3 |goto Westfall 51.0,21.4
step
Discover The Jansen Stead |achieve 802/4 |goto Westfall 57.7,15.8
step
Discover Saldean's Farm |achieve 802/2 |goto Westfall 54.4,32.3
step
Discover Sentinel Hill |achieve 802/1 |goto Westfall 55.9,49.3
step
Discover The Dead Acre |achieve 802/7 |goto Westfall 61.5,59.2
step
Discover The Dust Plains |achieve 802/13 |goto Westfall 64,72
step
Explore Westfall |achieve 802
step
Discover The Hushed Bank |achieve 778/1 |goto Duskwood 10.1,44.3
step
Discover Raven Hill Cemetery |achieve 778/4 |goto Duskwood 19.6,41.3
step
Discover Raven Hill |achieve 778/3 |goto Duskwood 19.8,55.2
step
Discover Addle's Stead |achieve 778/2 |goto Duskwood 21.4,69.9
step
Discover Vul'Gol Ogre Mound |achieve 778/5 |goto Duskwood 35.8,72.7
step
Discover The Yorgen Farmstead |achieve 778/7 |goto Duskwood 51.0,74.0
step
Discover The Rotting Orchard |achieve 778/9 |goto Duskwood 63.8,71.9
step
Discover Twilight Grove |achieve 778/6 |goto Duskwood 46.8,38.6
step
Discover The Darkened Bank |achieve 778/13 |goto Duskwood 54.6,21.2
step
Discover Brightwood Grove |achieve 778/8 |goto Duskwood 64.7,37.7
step
Discover Manor Mistmantle |achieve 778/12 |goto Duskwood 77.1,35.9
step
Discover Darkshire |achieve 778/11 |goto Duskwood 74.5,46.2
step
Discover Tranquil Gardens Cemetery |achieve 778/10 |goto Duskwood 79.7,66.1
step
Explore Duskwood |achieve 778
step
Discover Deadman's Crossing |achieve 777/1 |goto Deadwind Pass 45.1,35.8
step
Discover Karazhan |achieve 777/3 |goto Deadwind Pass 42.6,68.8
step
Discover The Vice |achieve 777/2 |goto Deadwind Pass 58.6,64.7
step
Explore Deadwind Pass |achieve 777
step
Discover Dreadmaul Hold |achieve 766/1 |goto Blasted Lands 39.5,12.9
step
Discover Rise of the Defiler |achieve 766/9 |goto Blasted Lands 45.1,26.7
step
Discover the Altar of Storms |achieve 766/6 |goto Blasted Lands 39,32
step
Discover Dreadmaul Post |achieve 766/7 |goto Blasted Lands 47.1,40.1
step
Discover The Tainted Scar |achieve 766/8 |goto Blasted Lands 32.3,45.7
step
Discover The Tainted Forest |achieve 766/14 |goto Blasted Lands 34.2,72.3
step
Discover Surwich |achieve 766/12 |goto Blasted Lands 44.5,86.1
step
Discover Sunveil Excursion |achieve 766/11 |goto Blasted Lands 50.7,70.9
step
Discover The Red Reaches |achieve 766/13 |goto Blasted Lands 65.8,78.0
step
Discover The Dark Portal |achieve 766/5 |goto Blasted Lands 54.4,52.9
step
Discover Shattershore |achieve 766/10 |goto Blasted Lands 69.1,33.5
step
Discover Serpent's Coil |achieve 766/4 |goto Blasted Lands 60.3,28.4
step
Discover Nethergarde Keep |achieve 766/3 |goto Blasted Lands 64.3,15.8
step
Discover Nethergarde Supply Camps |achieve 766/2 |goto 52.61,18.63
step
Explore Blasted Lands |achieve 766
step
Discover Stagalbog |achieve 782/7 |goto Swamp of Sorrows 67.8,74.9
step
Discover Sorrowmurk |achieve 782/8 |goto Swamp of Sorrows 84.2,38.9
step
Discover Misty Reed Strand |achieve 782/10 |goto Swamp of Sorrows 77.3,13.7
step
Discover Bogpaddle |achieve 782/9 |goto Swamp of Sorrows 72.3,12.8
step
Discover Marshtide Watch |achieve 782/12 |goto Swamp of Sorrows 68.4,35.8
step
Discover Pool of Tears |achieve 782/6 |goto Swamp of Sorrows 62.6,50.0
step
Discover The Shifting Mire |achieve 782/4 |goto Swamp of Sorrows 48.8,42.1
step
Discover Stonard |achieve 782/5 |goto Swamp of Sorrows 47.1,54.2
step
Discover Purespring Cavern |achieve 782/11 |goto Swamp of Sorrows 18.6,68.1
step
Discover Splinterspear Junction |achieve 782/3 |goto Swamp of Sorrows 22.3,49.4
step
Discover Misty Valley |achieve 782/1 |goto Swamp of Sorrows 14.7,35.8
step
Discover The Harborage |achieve 782/2 |goto Swamp of Sorrows 28.8,32.1
step
Explore Swamp of Sorrows |achieve 782
step
Discover Lakeridge Highway |achieve 780/4 |goto Redridge Mountains 38.2,68.5
step
Discover Lake Everstill |achieve 780/2 |goto Redridge Mountains 41.9,52.6
step
Discover Camp Everstill |achieve 780/13 |goto Redridge Mountains 53.4,54.7
step
Discover Stonewatch Keep |achieve 780/10 |goto Redridge Mountains 60.9,52.5
step
Discover Render's Valley |achieve 780/8 |goto Redridge Mountains 64.7,71.3
step
Discover Shalewind Canyon |achieve 780/12 |goto Redridge Mountains 81.0,62.4
step
Discover Stonewatch Falls |achieve 780/7 |goto Redridge Mountains 71.25,54.57
step
Discover Galardell Valley |achieve 780/11 |goto Redridge Mountains 70.28,34.66
step
Discover Alther's Mill |achieve 780/6 |goto Redridge Mountains 47.2,39.2
step
Discover Render's Camp |achieve 780/9 |goto Redridge Mountains 35.1,12.8
step
Discover Redridge Canyons |achieve 780/5 |goto Redridge Mountains 30.2,26.1
step
Discover Lakeshire |achieve 780/1 |goto Redridge Mountains 25.5,43.4
step
Discover Three Corners |achieve 780/3 |goto Redridge Mountains 19.7,59.1
step
Explore Redridge Mountains |achieve 780
step
Discover Eastvale Logging Camp |achieve 776/8 |goto Elwynn Forest 83.5,66.9
step
Discover Ridgepoint Tower |achieve 776/9 |goto Elwynn Forest 84.8,79.4
step
Discover Brackwell Pumpkin Patch |achieve 776/7 |goto Elwynn Forest 69.4,79.4
step
Discover Tower of Azora |achieve 776/6 |goto Elwynn Forest 64.6,69.3
step
Discover Crystal Lake |achieve 776/10 |goto Elwynn Forest 52.9,66.2
step
Discover Jerod's Landing |achieve 776/5 |goto Elwynn Forest 48.5,85.8
step
Discover Fargodeep Mine |achieve 776/4 |goto Elwynn Forest 39.5,80.3
step
Discover Westbrook Garrison |achieve 776/2 |goto Elwynn Forest 24.5,73.3
step
Discover Goldshire |achieve 776/3 |goto Elwynn Forest 42.1,64.7
step
Discover Northshire Valley |achieve 776/1 |goto Elwynn Forest 50.4,42.5
step
Discover Stone Cairn Lake |achieve 776/11 |goto Elwynn Forest 74.0,51.5
step
Explore Elwynn Forest |achieve 776
step
Discover Blackrock Pass |achieve 775/4 |goto Burning Steppes 66.7,77.5
step
Discover Morgan's Vigil |achieve 775/2 |goto Burning Steppes 73.5,68.0
step
Discover Terror Wing Path |achieve 775/3 |goto Burning Steppes 73.9,53.4
step
Discover Dreadmaul Rock |achieve 775/1 |goto Burning Steppes 69.7,40.5
step
Discover Ruins of Thaurissan |achieve 775/5 |goto Burning Steppes 56.6,37.4
step
Discover Black Tooth Hovel |achieve 775/6 |goto Burning Steppes 36.1,53.5
step
Discover The Whelping Downs |achieve 775/8 |goto Burning Steppes 24.3,57.7
step
Discover Blackrock Stronghold |achieve 775/7 |goto Burning Steppes 32.3,36.5
step
Discover Blackrock Mountain |achieve 775/10 |goto Burning Steppes 20.7,29.2
step
Discover Altar of Storms |achieve 775/9 |goto Burning Steppes 9.4,27.5
step
Explore Burning Steppes |achieve 775
step
Discover Lethlor Ravine |achieve 765/1 |goto Badlands 68.0,48.2
step
Discover Camp Kosh |achieve 765/8 |goto Badlands 60.1,20.7
step
Discover Uldaman |achieve 765/3 |goto Badlands 38.3,11.6
step
Discover Angor Fortress |achieve 765/7 |goto Badlands 41.1,26.5
step
Discover The Dustbowl |achieve 765/6 |goto Badlands 27.4,38.0
step
Discover New Kargath |achieve 765/10 |goto Badlands 17.7,41.7
step
Discover Camp Cagg |achieve 765/4 |goto Badlands 17.2,63.0
step
Discover Scar of the Worldbreaker |achieve 765/5 |goto Badlands 31.7,54.6
step
Discover Agmond's End |achieve 765/2 |goto Badlands 46.5,57.4
step
Discover Bloodwatcher Point |achieve 765/9 |goto Badlands 52.3,51.2
step
Explore Badlands |achieve 765
step
Discover Blackrock Mountain |achieve 774/8 |goto Searing Gorge 39.9,82.9
step
Discover The Sea of Cinders |achieve 774/4 |goto Searing Gorge 48,70
step
Discover Blackchar Cave |achieve 774/3 |goto Searing Gorge 21.2,80.1
step
Discover Firewatch Ridge |achieve 774/1 |goto Searing Gorge 23.8,31.8
step
Discover Thorium Point |achieve 774/7 |goto Searing Gorge 37.7,29.9
step
Discover The Cauldron |achieve 774/2 |goto Searing Gorge 52.7,49.6
step
Discover Dustfire Valley |achieve 774/6 |goto Searing Gorge 71.8,26.8
step
Discover Grimesilt Dig Site |achieve 774/5 |goto Searing Gorge 62,62.3
step
Explore Searing Gorge |achieve 774
step
Discover Helm's Bed Lake |achieve 627/10 |goto Dun Morogh 84.1,51.8
step
Discover Gol'Bolar Quarry |achieve 627/11 |goto Dun Morogh 76.5,57.2
step
Discover Amberstill Ranch |achieve 627/9 |goto Dun Morogh 71.5,46.2
step
Discover The Tundrid Hills |achieve 627/8 |goto Dun Morogh 67.2,53.9
step
Discover Frostmane Front |achieve 627/3 |goto Dun Morogh 58.6,57.7
step
Discover Kharanos |achieve 627/7 |goto Dun Morogh 53.6,50.5
step
Discover Coldridge Pass |achieve 627/1 |goto Dun Morogh 43.9,64.5
step
Discover Coldridge Valley |achieve 627/2 |goto Dun Morogh 34.6,75.6
step
Discover Frostmane Hold |achieve 627/13 |goto Dun Morogh 31.5,51.9
step
Discover New Tinkertown |achieve 627/4 |goto Dun Morogh 33.8,37.5
step
Discover Iceflow Lake |achieve 627/14 |goto Dun Morogh 41.4,40.2
step
Discover Shimmer Ridge |achieve 627/6 |goto Dun Morogh 48.3,37.9
step
Discover Gates of Ironforge |achieve 627/15 |goto Dun Morogh 59.6,33.8
step
Discover Ironforge Airfield |achieve 627/5 |goto Dun Morogh 78.0,24.2
step
Discover North Gate Outpost |achieve 627/12 |goto Dun Morogh 90.3,37.6
step
Explore Dun Morogh |achieve 627
step
Discover Valley of Kings |achieve 779/11 |goto Loch Modan 20.3,78.5
step
Discover Stonesplinter Valley |achieve 779/10 |goto Loch Modan 32.5,78.3
step
Discover Grizzlepaw Ridge |achieve 779/8 |goto Loch Modan 38.0,60.7
step
Discover Thelsamar |achieve 779/9 |goto Loch Modan 35.2,47.6
step
Discover Ironband's Excavation Site |achieve 779/7 |goto Loch Modan 69.4,65.3
step
Discover The Farstrider Lodge |achieve 779/6 |goto Loch Modan 82.3,65.0
step
Discover Mo'grosh Stronghold |achieve 779/3 |goto Loch Modan 71.0,23.8
step
Discover The Loch |achieve 779/1 |goto Loch Modan 48.40,17.55
step
Discover Stonewrought Dam |achieve 779/2 |goto Loch Modan 48.0,11.4
step
Discover Silver Stream Mine |achieve 779/4 |goto Loch Modan 34.8,21.5
step
Discover North Gate Pass |achieve 779/5 |goto Loch Modan 20.2,17.1
step
Explore Loch Modan |achieve 779
step
Discover Raptor Ridge |achieve 841/16 |goto Wetlands 67.9,34.9
step
Discover Direforge Hill |achieve 841/13 |goto Wetlands 60.87,25.46
step
Discover Greenwarden's Grove |achieve 841/11 |goto Wetlands 57.9,40.6
step
Discover Mosshide Fen |achieve 841/12 |goto Wetlands 61.9,56.6
step
Discover Slabchisel's Survey |achieve 841/15 |goto Wetlands 58.4,71.0
step
Discover Dun Algaz |achieve 841/14 |goto Wetlands 50.0,76.4
step
Discover Thelgen Rock |achieve 841/10 |goto Wetlands 52.2,61.4
step
Discover Angerfang Encampment |achieve 841/9 |goto Wetlands 48.5,48.0
step
Discover Whelgar's Excavation Site |achieve 841/4 |goto Wetlands 35.8,48.9
step
Discover Menethil Harbor |achieve 841/1 |goto Wetlands 10.2,58.2
step
Discover Black Channel Marsh |achieve 841/2 |goto Wetlands 19.3,46.9
step
Discover Bluegill Marsh |achieve 841/3 |goto Wetlands 18.9,36.0
step
Discover Sundown Marsh |achieve 841/5 |goto Wetlands 24.5,24.3
step
Discover Saltspray Glen |achieve 841/6 |goto Wetlands 32.5,17.6
step
Discover Ironbeard's Tomb |achieve 841/7 |goto Wetlands 43.6,25.9
step
Discover Dun Modr |achieve 841/8 |goto Wetlands 46.9,16.5
step
Explore Wetland |achieve 841
step
Discover Thandol Span |achieve 761/8 |goto Arathi Highlands 41.3,91.0
step
Discover Boulderfist Hall |achieve 761/9 |goto Arathi Highlands 49.1,78.9
step
Discover Witherbark Village |achieve 761/12 |goto Arathi Highlands 61.6,70.3
step
Discover Go'Shek Farm |achieve 761/13 |goto Arathi Highlands 56.4,57.6
step
Discover Hammerfall |achieve 761/16 |goto Arathi Highlands 69.3,37.2
step
Discover Circle of East Binding |achieve 761/15 |goto Arathi Highlands 59.3,32.8
step
Discover Dabyrie's Farmstead |achieve 761/14 |goto Arathi Highlands 49.9,41.3
step
Discover Circle of Outer Binding |achieve 761/11 |goto Arathi Highlands 47.3,51.4
step
Discover Refuge Pointe |achieve 761/10 |goto Arathi Highlands 39.8,46.4
step
Discover Circle of Inner Binding |achieve 761/7 |goto Arathi Highlands 30.1,59.3
step
Discover Faldir's Cove |achieve 761/6 |goto Arathi Highlands 23.8,81.8
step
Discover Stromgarde Keep |achieve 761/5 |goto Arathi Highlands 16.5,64.1
step
Discover Boulder'gor |achieve 761/3 |goto Arathi Highlands 27.5,44.2
step
Discover Northfold Manor |achieve 761/2 |goto Arathi Highlands 27.0,27.1
step
Discover Circle of West Binding |achieve 761/1 |goto Arathi Highlands 18.97,30.99
step
Discover Galen's Fall |achieve 761/4 |goto Arathi Highlands 13.0,36.4
step
Explore Arathi Highlands |achieve 761
step
Discover Durnholde Keep |achieve 772/10 |goto Hillsbrad Foothills 68.3,60.0
step
Discover Chillwind Point |achieve 772/5 |goto Hillsbrad Foothills 68.1,32.9
step
Discover Sofera's Naze |achieve 772/20 |goto Hillsbrad Foothills 55.6,38.5
step
Discover Strahnbrad |achieve 772/22 |goto Hillsbrad Foothills 58.3,23.4
step
Discover Crushridge Hold |achieve 772/4 |goto Hillsbrad Foothills 50.16,24.37
step
Discover Slaughter Hollow |achieve 772/19 |goto Hillsbrad Foothills 49.43,18.88
step
Discover The Uplands |achieve 772/26 |goto Hillsbrad Foothills 52.4,12.6
step
Discover Dandred's Fold |achieve 772/7 |goto Hillsbrad Foothills 44.9,9.1
step
Discover Ruins of Alterac |achieve 772/17 |goto Hillsbrad Foothills 45.3,29.0
step
Discover Growless Cave |achieve 772/13 |goto Hillsbrad Foothills 43.2,38.5
step
Discover Gallows' Corner |achieve 772/11 |goto Hillsbrad Foothills 49.88,32.59
step
Discover Tarren Mill |achieve 772/23 |goto Hillsbrad Foothills 56.7,46.9
step
Discover Corrahn's Dagger |achieve 772/3 |goto Hillsbrad Foothills 49.6,46.7
step
Discover Nethander Stead |achieve 772/15 |goto Hillsbrad Foothills 57.51,74.96
step
Discover Dun Garok |achieve 772/9 |goto Hillsbrad Foothills 62.83,84.80
step
Discover Ruins of Southshore |achieve 772/18 |goto Hillsbrad Foothills 48.97,71.89
step
Discover Darrow Hill |achieve 772/8 |goto Hillsbrad Foothills 46.3,54.1
step
Discover The Headland |achieve 772/24 |goto Hillsbrad Foothills 44.2,48.6
step
Discover Gavin's Naze |achieve 772/12 |goto Hillsbrad Foothills 40.0,47.6
step
Discover Misty Shore |achieve 772/14 |goto Hillsbrad Foothills 35.06,26.14
step
Discover Brazie Farmstead |achieve 772/2 |goto Hillsbrad Foothills 33.8,46.5
step
Discover Dalaran Crater |achieve 772/6 |goto Hillsbrad Foothills 30.4,36.2
step
Discover Southpoint Gate |achieve 772/21 |goto Hillsbrad Foothills 29.5,63.6
step
Discover The Sludge Fields |achieve 772/25 |goto Hillsbrad Foothills 36.56,58.04
step
Discover Azurelode Mine |achieve 772/1 |goto Hillsbrad Foothills 34.0,73.8
step
Discover Purgation Isle |achieve 772/16 |goto Hillsbrad Foothills 27.0,85.6
step
Explore Hillsbrad Foothills |achieve 772
step
Discover The Battlefront |achieve 769/1 |goto Silverpine Forest 46.1,79.5
step
Discover Shadowfang Keep |achieve 769/12 |goto Silverpine Forest 42.2,63.2
step
Discover The Forsaken Front |achieve 769/3 |goto Silverpine Forest 50.9,66.6
step
Discover Ambermill |achieve 769/11 |goto Silverpine Forest 61.2,62.4
step
Discover Olsen's Farthing |achieve 769/10 |goto Silverpine Forest 46.1,51.0
step
Discover The Sepulcher |achieve 769/8 |goto Silverpine Forest 45.0,40.0
step
Discover North Tide's Beachead |achieve 769/5 |goto Silverpine Forest 37.3,28.0
step
Discover The Skittering Dark |achieve 769/4 |goto Silverpine Forest 34.8,12.4
step
Discover Forsaken Rear Guard |achieve 769/15 |goto Silverpine Forest 44.9,18.8
step
Discover North Tide's Run |achieve 769/14 |goto Silverpine Forest 44.66,21.64
step
Discover Valgan's Field |achieve 769/7 |goto Silverpine Forest 53.2,25.6
step
Discover The Decrepit Fields |achieve 769/2 |goto Silverpine Forest 56.5,34.7
step
Discover Deep Elem Mine |achieve 769/9 |goto Silverpine Forest 59.3,45.4
step
Discover Fenris Isle |achieve 769/6 |goto Silverpine Forest 69.1,26.8
step
Discover Forsaken High Command |achieve 769/13 |goto Silverpine Forest 62.0,8.7
step
Explore Silverpine Forest |achieve 769
step
Discover Deathknell |achieve 768/1 |goto Tirisfal Glades 32.2,63.8
step
Discover Nightmare Vale |achieve 768/4 |goto Tirisfal Glades 45.1,65.4
step
Discover Cold Hearth Manor |achieve 768/5 |goto Tirisfal Glades 53.8,58.7
step
Discover Calston Estate |achieve 768/16 |goto Tirisfal Glades 46.2,51.4
step
Discover Solliden Farmstead |achieve 768/2 |goto Tirisfal Glades 38.4,48.9
step
Discover Agamand Mills |achieve 768/3 |goto Tirisfal Glades 45.6,32.9
step
Discover Garren's Haunt |achieve 768/7 |goto Tirisfal Glades 56.9,35.6
step
Discover Brill |achieve 768/6 |goto Tirisfal Glades 59.7,50.9
step
Discover Brightwater Lake |achieve 768/8 |goto Tirisfal Glades 68.3,45.0
step
Discover Scarlet Watch Post |achieve 768/11 |goto Tirisfal Glades 78.4,26.9
step
Discover Scarlet Monastery Entrance |achieve 768/14 |goto Tirisfal Glades 85.08,31.34
step
Discover Venomweb Vale |achieve 768/12 |goto Tirisfal Glades 87.00,47.2
step
Discover Crusader Outpost |achieve 768/10 |goto Tirisfal Glades 79.1,54.7
step
Discover Balnir Farmstead |achieve 768/9 |goto Tirisfal Glades 73.7,60.0
step
Discover Ruins of Lordaeron |achieve 768/13 |goto Tirisfal Glades 61.87,67.55
step
Discover The Bulwark |achieve 768/15 |goto Tirisfal Glades 84.9,69.4
step
Explore Tirisfal Glades |achieve 768
step
Discover The Bulwark |achieve 770/5 |goto Western Plaguelands 27.0,57.7
step
Discover Felstone Field |achieve 770/6 |goto Western Plaguelands 36.5,54.6
step
Discover Dalson's Farm |achieve 770/7 |goto Western Plaguelands 45.1,51.2
step
Discover Redpine Dell |achieve 770/11 |goto Western Plaguelands 46.0,45.5
step
Discover Northridge Lumber Camp |achieve 770/9 |goto Western Plaguelands 47.2,33.4
step
Discover Hearthglen |achieve 770/10 |goto Western Plaguelands 44.9,17.0
step
Discover The Weeping Cave |achieve 770/13 |goto Western Plaguelands 64.4,40.1
step
Discover Thondroril River |achieve 770/14 |goto Western Plaguelands 69.6,50.7
step
Discover Gahrron's Withering |achieve 770/12 |goto Western Plaguelands 63.9,58.2
step
Discover The Writhing Haunt |achieve 770/8 |goto Western Plaguelands 54.9,66.2
step
Discover Andorhal |achieve 770/4 |goto Western Plaguelands 47.63,67.18
step
Discover Sorrow Hill |achieve 770/3 |goto Western Plaguelands 54.6,85.5
step
Discover Darrowmere Lake |achieve 770/1 |goto Western Plaguelands 60.03,74.66
step
Discover Caer Darrow |achieve 770/2 |goto Western Plaguelands 68.3,81.1
step
Explore Western Plaguelands |achieve 770
step
Discover Aerie Peak |achieve 773/1 |goto The Hinterlands 13.9,45.0
step
Discover Plaguemist Ravine |achieve 773/2 |goto The Hinterlands 23.1,33.5
step
Discover Zun'watha |achieve 773/3 |goto The Hinterlands 23.46,58.21
step
Discover Quel'Danil Lodge |achieve 773/4 |goto The Hinterlands 33.3,45.6
step
Discover Shadra'Alor |achieve 773/5 |goto The Hinterlands 34.6,72.0
step
Discover Valorwind Lake |achieve 773/6 |goto The Hinterlands 40.5,59.3
step
Discover The Altar of Zul |achieve 773/9 |goto The Hinterlands 48.4,66.9
step
Discover The Creeping Ruin |achieve 773/8 |goto The Hinterlands 49.0,52.1
step
Discover Agol'watha |achieve 773/7 |goto The Hinterlands 46.59,39.68
step
Discover Jintha'Alor |achieve 773/13 |goto The Hinterlands 63.1,74.7
step
Discover The Overlook Cliffs |achieve 773/14 |goto The Hinterlands 72.7,66.1
step
Discover Shaol'watha |achieve 773/12 |goto The Hinterlands 73.2,54.2
step
Discover Skulk Rock |achieve 773/11 |goto The Hinterlands 57.6,42.6
step
Discover Seradane |achieve 773/10 |goto The Hinterlands 62.7,24.1
step
Explore The Hinterlands |achieve 773
step
Discover Darrowshire |achieve 771/6 |goto Eastern Plaguelands 35.1,84.2
step
Discover The Undercroft |achieve 771/3 |goto Eastern Plaguelands 24.0,78.8
step
Discover The Marris Stead |achieve 771/2 |goto Eastern Plaguelands 22.6,66.0
step
Discover Thondroril River |achieve 771/1 |goto Eastern Plaguelands 08.63,66.20
step
Discover Terrordale |achieve 771/20 |goto Eastern Plaguelands 12.5,26.3
step
Discover Statholme |achieve 771/22 |goto Eastern Plaguelands 26.8,9.8
step
Discover Plaguewood |achieve 771/21 |goto Eastern Plaguelands 33.6,24.4
step
Discover The Fungal Vale |achieve 771/5 |goto Eastern Plaguelands 36.1,44.8
step
Discover Crown Guard Tower |achieve 771/4 |goto Eastern Plaguelands 35.7,68.5
step
Discover Lake Mereldar |achieve 771/9 |goto Eastern Plaguelands 57.4,74.1
step
Discover Corin's Crossing |achieve 771/8 |goto Eastern Plaguelands 55.6,62.9
step
Discover The Infectis Scar |achieve 771/12 |goto Eastern Plaguelands 48.90,62.25
step
Discover Blackwood Lake |achieve 771/15 |goto Eastern Plaguelands 46.3,43.5
step
Discover Quel'Lithien Lodge |achieve 771/19 |goto Eastern Plaguelands 48.1,13.1
step
Discover Northpass Tower |achieve 771/18 |goto Eastern Plaguelands 50.5,20.5
step
Discover Eastwall Tower |achieve 771/14 |goto Eastern Plaguelands 62.4,41.7
step
Discover Pestilent Scar |achieve 771/7 |goto Eastern Plaguelands 68.7,56.5
step
Discover Tyr's Hand |achieve 771/10 |goto Eastern Plaguelands 75.6,75.2
step
Discover Ruins of the Scarlet Enclave |achieve 771/23 |goto Eastern Plaguelands 87.1,78.5
step
Discover Light's Hope Chapel |achieve 771/11 |goto Eastern Plaguelands 76.8,53.9
step
Discover The Noxious Glade |achieve 771/13 |goto Eastern Plaguelands 78.1,35.8
step
Discover Northdale |achieve 771/16 |goto Eastern Plaguelands 66.1,25.0
step
Discover Zul'Mashar |achieve 771/17 |goto Eastern Plaguelands 66.4,10.3
step
Explore Eastern Plaguelands |achieve 771
step
Discover Thalassian Pass |achieve 858/16 |goto Ghostlands 48.2,84.3
step
Discover Deatholme |achieve 858/10 |goto Ghostlands 33.1,79.9
step
Discover Windrunner Spire |achieve 858/13 |goto Ghostlands 12.4,57.0
step
Discover Windrunner Village |achieve 858/4 |goto Ghostlands 17.9,41.4
step
Discover Goldenmist Village |achieve 858/3 |goto Ghostlands 25.0,15.0
step
Discover Sanctum of the Moon |achieve 858/5 |goto Ghostlands 33.4,32.2
step
Discover Bleeding Ziggurat |achieve 858/14 |goto Ghostlands 34.3,47.6
step
Discover Howling Ziggurat |achieve 858/9 |goto Ghostlands 40.4,49.8
step
Discover Tranquillien |achieve 858/1 |goto Ghostlands 47.12,32.8
step
Discover Sanctum of the Sun |achieve 858/6 |goto Ghostlands 54.7,49.7
step
Discover Zeb'Nowa |achieve 858/11 |goto Ghostlands 66.6,58.9
step
Discover Amani Pass |achieve 858/12 |goto Ghostlands 77.3,64.4
step
Discover Farstrider Enclave |achieve 858/8 |goto Ghostlands 77.2,32.1
step
Discover Dawnstar Spire |achieve 858/7 |goto Ghostlands 78.6,18.7
step
Discover Suncrown Village |achieve 858/2 |goto Ghostlands 60.46,11.7
step
Discover Elrendar Crossing |achieve 858/15 |goto Ghostlands 48.39,11.51
step
Explore Ghostlands |achieve 858
step
Discover The Scorched Grove |achieve 859/13 |goto Eversong Woods 36.2,86.0
step
Discover Runestone Falithas |achieve 859/19 |goto Eversong Woods 44.1,85.8
step
Discover Rusestone Shan'dor |achieve 859/20 |goto Eversong Woods 55.8,84.2
step
Discover Zeb'Watha |achieve 859/25 |goto Eversong Woods 62.2,79.3
step
Discover Lake Elrendar |achieve 859/18 |goto Eversong Woods 65.9,78.6
step
Discover Tor'Watha |achieve 859/12 |goto Eversong Woods 72.0,79.3
step
Discover Elreandar Falls |achieve 859/16 |goto Eversong Woods 64.6,73.1
step
Discover Farstrider Rereat |achieve 859/7 |goto Eversong Woods 61.2,63.7
step
Discover Stillwhisper Pond |achieve 859/8 |goto Eversong Woods 55.7,56.4
step
Discover Thuron's Livery |achieve 859/23 |goto Eversong Woods 60.6,54.2
step
Discover Duskwither Grounds |achieve 859/9 |goto Eversong Woods 69.27,46.54
step
Discover Azurebreeze Coast |achieve 859/15 |goto Eversong Woods 71.6,45.3
step
Discover Silvermoon City |achieve 859/14 |goto Eversong Woods 52.4,39.4
step
Discover Sunstrider Isle |achieve 859/1 |goto Eversong Woods 31.3,16.0
step
Discover Ruins of Silvermoon |achieve 859/2 |goto Eversong Woods 42.9,39.3
step
Discover North Sanctum |achieve 859/5 |goto Eversong Woods 42.7,50.4
step
Discover West Sanctum |achieve 859/3 |goto Eversong Woods 35.3,57.6
step
Discover Tranquil Shore |achieve 859/24 |goto Eversong Woods 28.5,57.8
step
Discover Sunsail Anchorage |achieve 859/4 |goto Eversong Woods 29.4,69.3
step
Discover Golden Strand |achieve 859/22 |goto Eversong Woods 23.5,74.8
step
Discover Goldenbough Pass |achieve 859/17 |goto Eversong Woods 33.4,77.6
step
Discover Saltheril's Haven |achieve 859/21 |goto Eversong Woods 38.3,73.5
step
Discover Fairbreeze Village |achieve 859/10 |goto Eversong Woods 43.9,73.7
step
Discover East Sanctum |achieve 859/6 |goto Eversong Woods 52.3,73.1
step
Discover The Living Wood |achieve 859/11 |goto Eversong Woods 54.2,71.9
step
Explore Eversong Woods |achieve 859
step
Explore Isle of Quel'Danas |achieve 868 |goto Isle of Quel'Danas 47.4,30.6
step
Congratulations!
You have earned the _Explore Eastern Kingdoms_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Kalimdor\\Kalimdor Explorer",{
condition_end=function() return achieved(43) end,
achieveid={46,4868,4863,4865,728,736,842,860,750,857,4996,844,861,845,846,847,848,850,849,851,852,853,854,855,856,43},
description="Explore the regions of Kalimdor.",
},[[
step
This guide is optimized for flying
|tip You can do this without a flying mount, but it will be much more efficient with one
|confirm
step
label "start"
_Click here_ to explore Ashenvale |achieve 845 |confirm |next "ashenvale"
_Click here_ to explore Azshara |achieve 852 |confirm |next "azshara"
_Click here_ to explore Azuremyst Isle |achieve 860 |confirm |next "azure"
_Click here_ to explore Bloodmyst Isle |achieve 861 |confirm |next "blood"
_Click here_ to explore Darkshore |achieve 844 |confirm |next "darkshore"
_Click here_ to explore Desolace |achieve 848 |confirm |next "desolace"
_Click here_ to explore Durotar |achieve 728 |confirm |next "durotar"
_Click here_ to explore Dustwallow Marsh |achieve 850 |confirm |next "dustwallow"
_Click here_ to explore Felwood |achieve 853 |confirm |next "felwood"
_Click here_ to explore Feralas |achieve 849 |confirm |next "feralas"
_Click here_ to explore Moonglade |achieve 855 |confirm |next "moon"
_Click here_ to explore Mulgore |achieve 736 |confirm |next "mulgore"
_Click here_ to explore Northern Barrens |achieve 750 |confirm |next "n_barrens"
_Click here_ to explore Silithus |achieve 856 |confirm |next "silithus"
_Click here_ to explore Southern Barrens |achieve 4996 |confirm |next "s_barrens"
_Click here_ to explore Stonetalon Mountains |achieve 847 |confirm |next "stonetalon"
_Click here_ to explore Tanaris |achieve 851 |confirm |next "tanaris"
_Click here_ to explore Teldrassil |achieve 842 |confirm |next "teldrassil"
_Click here_ to explore Thousand Needles |achieve 846 |confirm |next "thousand"
_Click here_ to explore Un'Goro Crater |achieve 854 |confirm |next "ungoro"
_Click here_ to explore Winterspring |achieve 857 |confirm |next "winter"
_OR_
_Click here_ to complete Zygor's suggested path through all of the above zones |confirm |next
step
label "durotar"
_Skipping_ to the next part of guide |next "+n_barrens" |only if step:Find("+durotar1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Orgrimmar |achieve 728/12 |goto Orgrimmar 45.4,8.5
step
Discover Skull Rock |achieve 728/11 |goto Durotar 54.0,9.0
step
Discover Drygulch Ravine |achieve 728/10 |goto Durotar 52.4,24.2
step
Discover Razor Hill |achieve 728/7 |goto Durotar 53.5,43.4
step
Discover Tiragarde Keep |achieve 728/6 |goto Durotar 58.1,60.2
step
Discover Echo Isles |achieve 728/5 |goto Durotar 66.6,82.9
step
Discover Sen'jin Village |achieve 728/4 |goto Durotar 56.1,75.8
step
Discover Northwatch Foothold |achieve 728/2 |goto Durotar 48.5,79.1
step
Discover Valley of Trials |achieve 728/1 |goto Durotar 44.5,62.2
step
Discover Razormane Grounds |achieve 728/8 |goto Durotar 44.6,50.6
step
Discover Southfury Watershed |achieve 728/3 |goto Durotar 40.5,40.0
step
Discover Thunder Ridge |achieve 728/9 |goto Durotar 40.3,24.7
step
label "durotar1"
Explore Durotar |achieve 728
step
label "n_barrens"
_Skipping_ to the next part of guide |next "+s_barrens" |only if step:Find("+n_barrens1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Boulder Lode Mine |achieve 750/1 |goto Northern Barrens 67.2,12.1
step
Discover The Sludge Fen |achieve 750/4 |goto Northern Barrens 55.7,18.5
step
Discover The Mor'shan Rampart |achieve 750/3 |goto Northern Barrens 39.6,14.1
step
Discover The Dry Hills |achieve 750/6 |goto Northern Barrens 25.5,31.7
step
Discover The Forgotten Pools |achieve 750/7 |goto Northern Barrens 36.8,45.9
step
Discover Dreadmist Peak |achieve 750/5 |goto Northern Barrens 43.1,35.4
step
Discover Grol'dom Farm |achieve 750/8 |goto Northern Barrens 54.9,41.1
step
Discover Far Watch Post |achieve 750/9 |goto Northern Barrens 67.0,41.3
step
Discover Thorn Hill |achieve 750/10 |goto Northern Barrens 58.8,50.0
step
Discover The Crossroads |achieve 750/11 |goto Northern Barrens 50.2,57.3
step
Discover Lushwater Oasis |achieve 750/2 |goto Northern Barrens 40.3,73.9
step
Discover The Stagnant Oasis |achieve 750/12 |goto Northern Barrens 55.7,78.6
step
Discover Ratchet |achieve 750/13 |goto Northern Barrens 67.9,72.4
step
Discover The Merchant Coast |achieve 750/14 |goto Northern Barrens 70.3,84.1
step
label "n_barrens1"
Explore Northern Barrens |achieve 750
step
label "s_barrens"
_Skipping_ to the next part of guide |next "+dustwallow" |only if step:Find("+s_barrens1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Northwatch Hold |achieve 4996/7 |goto Southern Barrens 68.8,49.1
step
Discover Forward Command |achieve 4996/3 |goto Southern Barrens 52.2,48.6
step
Discover The Overgrowth |achieve 4996/10 |goto Southern Barrens 47.8,33.68
step
Discover Hunter's Hill |achieve 4996/6 |goto Southern Barrens 39.3,22.3
step
Discover Honor's Stand |achieve 4996/5 |goto Southern Barrens 36.5,11.1
step
Discover Vendetta Point |achieve 4996/11 |goto Southern Barrens 42.4,44.0
step
Discover Ruins of Taurajo |achieve 4996/9 |goto Southern Barrens 44.9,54.3
step
Discover Battlescar |achieve 4996/2 |goto Southern Barrens 46.17,68.15
step
Discover Frazzlecraz Motherlode |achieve 4996/4 |goto Southern Barrens 41.0,78.2
step
Discover Razorfen Kraul |achieve 4996/8 |goto Southern Barrens 38.51,88.95
step
Discover Bael Modan |achieve 4996/1 |goto Southern Barrens 50.7,84.00
step
label "s_barrens1"
Explore Southern Barrens |achieve 4996
step
label "dustwallow"
_Skipping_ to the next part of guide |next "+thousand" |only if step:Find("+dustwallow1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Shady Rest Inn |achieve 850/5 |goto Dustwallow Marsh 29.7,49.0
step
Discover Brackenwall Village |achieve 850/7 |goto Dustwallow Marsh 36.3,30.4
step
Discover Blackhoof Village |achieve 850/2 |goto Dustwallow Marsh 41.4,12.4
step
Discover Alcaz Island |achieve 850/9 |goto Dustwallow Marsh 76.0,17.5
step
Discover Dreadmurk Shore |achieve 850/6 |goto Dustwallow Marsh 61.5,30.2
step
Discover Theramore Isle |achieve 850/1 |goto Dustwallow Marsh 67.1,49.8
step
Discover Direhorn Post |achieve 850/3 |goto Dustwallow Marsh 46.6,46.1
step
Discover Mudsprocket |achieve 850/4 |goto Dustwallow Marsh 41.4,75.1
step
Discover Wyrmbog |achieve 850/8 |goto Dustwallow Marsh 43.4,75.5
step
label "dustwallow1"
Explore Dustwallow Marsh |achieve 850
step
label "thousand"
_Skipping_ to the next part of guide |next "+tanaris" |only if step:Find("+thousand1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Razorfen Downs |achieve 846/2 |goto Thousand Needles 51.7,30.0
step
Discover The Great Lift |achieve 846/1 |goto Thousand Needles 32.1,18.3
step
Discover Darkcloud Pinnacle |achieve 846/8 |goto Thousand Needles 33.6,38.6
step
Discover Westreach Summit |achieve 846/7 |goto Thousand Needles 13.4,10.3
step
Discover Highperch |achieve 846/12 |goto Thousand Needles 13.1,37.5
step
Discover Twilight Bulwark |achieve 846/6 |goto Thousand Needles 31.1,58.8
step
Discover Freewind Post |achieve 846/9 |goto Thousand Needles 47.0,50.7
step
Discover The Twilight Withering |achieve 846/5 |goto Thousand Needles 54.9,63.2
step
Discover Sunken Dig Site |achieve 846/3 |goto Thousand Needles 67.1,85.7
step
Discover The Shimmering Deep |achieve 846/11 |goto Thousand Needles 70.44,61.19
step
Discover Splithoof Heights |achieve 846/10 |goto Thousand Needles 88.4,47.8
step
Discover Southsea Holdfast |achieve 846/4 |goto Thousand Needles 92.4,78.8
step
label "thousand1"
Explore Thousand Needles |achieve 846
step
label "tanaris"
_Skipping_ to the next part of guide |next "+ungoro" |only if step:Find("+tanaris1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Zul'Farrak |achieve 851/15 |goto Tanaris 37.3,14.3
step
Discover Sandsorrow Watch |achieve 851/2 |goto Tanaris 40.9,27.3
step
Discover Gadgetzan  |achieve 851/1 |goto Tanaris 50,28
step
Discover Broken Pillar |achieve 851/6 |goto Tanaris 52.3,45.4
step
Discover Abyssal Sands |achieve 851/5 |goto Tanaris 55.1,40.9
step
Discover Caverns of Time |achieve 851/16 |goto Tanaris 64.2,50.0
step
Discover Lost Rigger Cove |achieve 851/4 |goto Tanaris 71.6,49.4
step
Discover Southbreak Shore |achieve 851/9 |goto Tanaris 63.0,59.2
step
Discover The Gaping Chasm |achieve 851/10 |goto Tanaris 53.7,67.6
step
Discover Land's End Beach |achieve 851/12 |goto Tanaris 53.6,91.7
step
Discover Valley of the Watchers |achieve 851/3 |goto Tanaris 37.8,77.7
step
Discover Southmoon Ruins |achieve 851/13 |goto Tanaris 40.8,70.6
step
Discover Eastmoon Ruins |achieve 851/11 |goto Tanaris 47.2,64.9
step
Discover Thistleshrub Valley |achieve 851/14 |goto Tanaris 30.4,66.4
step
Discover Dunemaul Compound |achieve 851/8 |goto Tanaris 41.0,55.5
step
Discover The Noxious Lair |achieve 851/7 |goto Tanaris 34.3,45.3
step
label "tanaris1"
Explore Tanaris |achieve 851
step
label "ungoro"
_Skipping_ to the next part of guide |next "+uldum" |only if step:Find("+ungoro1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Ironstone Plateau |achieve 854/11 |goto Un'Goro Crater 77.1,39.2
step
Discover The Roiling Gardens |achieve 854/5 |goto Un'Goro Crater 39.2,34.3
step
Discover Fungal Rock |achieve 854/2 |goto Un'Goro Crater 65.7,14.3
step
Discover Lakkari Tar Pits |achieve 854/12 |goto Un'Goro Crater 51.4,25.6
step
Discover Mossy Pile |achieve 854/4 |goto Un'Goro Crater 42.2,41.7
step
Discover The Screaming Reaches |achieve 854/6 |goto Un'Goro Crater 29.0,35.8
step
Discover Golakka Hot Springs |achieve 854/7 |goto Un'Goro Crater 34.4,54.0
step
Discover Terror Run |achieve 854/8 |goto Un'Goro Crater 33.2,70.7
step
Discover Fire Plume Ridge |achieve 854/1 |goto Un'Goro Crater 54.5,48.0
step
Discover Marshal's Stand |achieve 854/3 |goto Un'Goro Crater 54.0,60.9
step
Discover The Marshlands |achieve 854/10 |goto Un'Goro Crater 67.9,54.8
step
Discover The Slithering Scar |achieve 854/9 |goto Un'Goro Crater 51.1,77.5
step
label "ungoro1"
Explore Un'Goro Crater |achieve 854
step
label "silithus"
_Skipping_ to the next part of guide |next "+feralas" |only if step:Find("+silithus1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Hive'Regal |achieve 856/5 |goto Silithus 60.0,71.7
step
Discover The Scarab Wall |achieve 856/6 |goto Silithus 32.0,78.9
step
Discover Hive'Zora |achieve 856/4 |goto Silithus 31.4,53.8
step
Discover The Crystal Vale |achieve 856/1 |goto Silithus 30.9,16.0
step
Discover Hive'Ashi |achieve 856/7 |goto Silithus 49.4,22.4
step
Discover Cenarion Hold |achieve 856/3 |goto Silithus 54.4,34.2
step
Discover Southwind Village |achieve 856/2 |goto Silithus 65.3,47.4
step
Discover Valor's Rest |achieve 856/8 |goto Silithus 81.3,17.8
step
label "silithus1"
Explore Silithus |achieve 856
step
label "feralas"
_Skipping_ to the next part of guide |next "+desolace" |only if step:Find("+feralas1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover The Writhing Deep |achieve 849/8 |goto Feralas 75.9,62.4
step
Discover Lower Wilds |achieve 849/1 |goto Feralas 83.0,40.9
step
Discover Camp Mojache |achieve 849/9 |goto Feralas 76.5,44.4
step
Discover Gordunni Outpost |achieve 849/11 |goto Feralas 75.6,29.8
step
Discover Grimtotem Compound |achieve 849/10 |goto Feralas 68.7,40.3
step
Discover Dire Maul |achieve 849/5 |goto Feralas 60.4,35.6
step
Discover Darkmist Ruins |achieve 849/12 |goto Feralas 67.7,58.5
step
Discover Ruins of Isildien |achieve 849/7 |goto Feralas 58.6,73.0
step
Discover Feral Scar Vale |achieve 849/6 |goto Feralas 55.4,56.2
step
Discover The Forgotten Coast |achieve 849/4 |goto Feralas 49.7,49.2
step
Discover Feathermoon Stronghold |achieve 849/13 |goto Feralas 45.8,49.6
step
Discover Ruins of Feathermoon |achieve 849/2 |goto Feralas 28.5,49.1
step
Discover The Twin Colossals |achieve 849/3 |goto Feralas 46.3,17.9
step
label "feralas1"
Explore Feralas |achieve 849
step
label "desolace"
_Skipping_ to the next part of guide |next "+mulgore" |only if step:Find("+desolace1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Gelkis Village |achieve 848/12 |goto Desolace 36.1,88.6
step
Discover Mannoroc Coven |achieve 848/13 |goto Desolace 51.3,78.5
step
Discover Thargad's Camp |achieve 848/2 |goto Desolace 36.5,69.9
step
Discover Shadowprey Village |achieve 848/11 |goto Desolace 24.2,70.9
step
Discover Valley of Spears |achieve 848/9 |goto Desolace 35.34,57.2
step
Discover Slitherblade Shore |achieve 848/16 |goto Desolace 29.9,29.4
step
Discover Ranazjar Isle |achieve 848/8 |goto Desolace 28.7,9.01
step
Discover Tethris Aran |achieve 848/1 |goto Desolace 51.5,10.0
step
Discover Thunder Axe Fortress |achieve 848/5 |goto Desolace 54.5,25.2
step
Discover Nijel's Point |achieve 848/3 |goto Desolace 66.7,8.7
step
Discover Sargeron |achieve 848/4 |goto Desolace 78.2,21.6
step
Discover Magram Territory |achieve 848/7 |goto Desolace 74.7,45.6
step
Discover Cenarion Wildlands |achieve 848/6 |goto Desolace 56.1,47.3
step
Discover Kodo Graveyard |achieve 848/10 |goto Desolace 50.7,59.0
step
Discover Shok'Thokar |achieve 848/14 |goto Desolace 70.6,74.8
step
Discover Shadowbreak Ravine |achieve 848/15 |goto Desolace 80.3,79.3
step
label "desolace1"
Explore Desolace |achieve 848
step
label "mulgore"
_Skipping_ to the next part of guide |next "+stonetalon" |only if step:Find("+mulgore1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Bael'dun Digsite |achieve 736/10 |goto Mulgore 32.3,50.6
step
Discover Palemane Rock |achieve 736/2 |goto Mulgore 35.5,61.3
step
Discover Red Cloud Mesa |achieve 736/1 |goto Mulgore 53.8,85.8
step
Discover Winterhoof Water Well |achieve 736/4 |goto Mulgore 53.7,66.7
step
Discover Bloodhoof Village |achieve 736/3 |goto Mulgore 47.8,58.4
step
Discover The Rolling Plains |achieve 736/5 |goto Mulgore 61.1,60.5
step
Discover The Venture Co. Mine |achieve 736/6 |goto Mulgore 62.7,42.6
step
Discover Ravaged Caravan |achieve 736/7 |goto Mulgore 54.2,47.9
step
Discover Thunderhorn Water Well |achieve 736/9 |goto Mulgore 44.9,43.5
step
Discover Red Rocks |achieve 736/11 |goto Mulgore 59.82,19.9
step
Discover The Golden Plains |achieve 736/8 |goto Mulgore 54.2,20.9
step
Discover Windfury Ridge |achieve 736/12 |goto Mulgore 51.14,09.25
step
Discover Wildmane Water Well |achieve 736/13 |goto Mulgore 43.1,14.2
step
label "mulgore1"
Explore Mulgore |achieve 736
step
label "stonetalon"
_Skipping_ to the next part of guide |next "+ashenvale" |only if step:Find("+stonetalon1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Malaka'jin |achieve 847/9 |goto Stonetalon Mountains 72.6,92.4
step
Discover Unearthed Grounds |achieve 847/5 |goto Stonetalon Mountains 76.7,75.8
step
Discover Greatwood Vale |achieve 847/12 |goto Stonetalon Mountains 69.6,85.1
step
Discover Boulderslide Ravine |achieve 847/11 |goto Stonetalon Mountains 63.4,88.7
step
Discover Webwinder Path |achieve 847/10 |goto Stonetalon Mountains 59.6,78.9
step
Discover Webwinder Hollow |achieve 847/6 |goto Stonetalon Mountains 57.2,72.7
step
Discover Ruins of Eldre'thar |achieve 847/3 |goto Stonetalon Mountains 48.8,76.3
step
Discover Sun Rock Retreat |achieve 847/14 |goto Stonetalon Mountains 49.3,63.4
step
Discover The Charred Vale |achieve 847/15 |goto Stonetalon Mountains 31.6,71.5
step
Discover Battlescar Valley |achieve 847/1 |goto Stonetalon Mountains 37.0,54.3
step
Discover Thal'darah Overlook |achieve 847/4 |goto Stonetalon Mountains 35.8,31.5
step
Discover Stonetalon Peak |achieve 847/17 |goto Stonetalon Mountains 40.9,19.9
step
Discover Cliffwalker Post |achieve 847/8 |goto Stonetalon Mountains 45.1,30.2
step
Discover Mirkfallon Lake |achieve 847/16 |goto Stonetalon Mountains 51.6,47.3
step
Discover Windshear Hold |achieve 847/7 |goto Stonetalon Mountains 59.1,57.7
step
Discover Krom'gar Fortress |achieve 847/2 |goto Stonetalon Mountains 66.9,66.2
step
Discover Windshear Crag |achieve 847/13 |goto Stonetalon Mountains 66.9,49.3
step
label "stonetalon1"
Explore Stonetalon Mountains |achieve 847
step
label "ashenvale"
_Skipping_ to the next part of guide |next "+hyjal" |only if step:Find("+ashenvale1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Silverwind Refuge |achieve 845/3 |goto Ashenvale 50.15,67.08
step
Discover Fallen Sky Lake |achieve 845/13 |goto Ashenvale 66,82
step
Discover The Ruins of Stardust |achieve 845/10 |goto Ashenvale 32.6,65.6
step
Discover Astranaar |achieve 845/9 |goto Ashenvale 35.9,50.2
step
Discover The Shrine of Aessina |achieve 845/8 |goto Ashenvale 21.4,55.3
step
Discover Lake Falathim |achieve 845/5 |goto Ashenvale 20.2,41.1
step
Discover Maestra's Post |achieve 845/6 |goto Ashenvale 27.5,37.7
step
Discover The Zoram Strand |achieve 845/1 |goto Ashenvale 14,23
step
Discover Orendil's Retreat |achieve 845/2 |goto Ashenvale 26.0,19.7
step
Discover Thistlefur Village |achieve 845/7 |goto Ashenvale 37.0,32.9
step
Discover Thunder Peak |achieve 845/4 |goto Ashenvale 48.9,46.4
step
Discover The Howling Vale |achieve 845/11 |goto Ashenvale 53.2,32.6
step
Discover Raynewood Retreat |achieve 845/12 |goto Ashenvale 59.7,50.0
step
Discover Splintertree Post |achieve 845/14 |goto Ashenvale 68.2,47.9
step
Discover Satyrnaar |achieve 845/15 |goto Ashenvale 80.4,49.7
step
Discover Felfire Hill |achieve 845/18 |goto Ashenvale 83.1,65.3
step
Discover Warsong Lumber Camp |achieve 845/17 |goto Ashenvale 87.4,58.6
step
Discover Bough Shadow |achieve 845/16 |goto Ashenvale 93.4,39.2
step
label "ashenvale1"
Explore Ashenvale |achieve 845
step
label "winter"
_Skipping_ to the next part of guide |next "+azshara" |only if step:Find("+winter1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Frostwhisper Gorge |achieve 857/12 |goto Winterspring 59.8,85.5
step
Discover Owl Wing Thicket |achieve 857/7 |goto Winterspring 64.5,77.2
step
Discover Ice Thistle Hills |achieve 857/8 |goto Winterspring 67.8,64.4
step
Discover Winterfall Village |achieve 857/9 |goto Winterspring 68.1,48.5
step
Discover Everlook |achieve 857/6 |goto Winterspring 59.9,48.9
step
Discover The Hidden Grove |achieve 857/10 |goto Winterspring 62.7,24.7
step
Discover Frostsaber Rock |achieve 857/11 |goto Winterspring 45.3,15.4
step
Discover Starfall Village |achieve 857/4 |goto Winterspring 47.7,39.1
step
Discover Lake Kel'Theril |achieve 857/3 |goto Winterspring 51.1,55.1
step
Discover Mazthoril |achieve 857/5 |goto Winterspring 54.8,62.9
step
Discover Timbermaw Post |achieve 857/2 |goto Winterspring 36.4,56.7
step
Discover Frostfire Hot Springs |achieve 857/1 |goto Winterspring 31.9,49.3
step
label "winter1"
Explore Winterspring |achieve 857
step
label "azshara"
_Skipping_ to the next part of guide |next "+moon" |only if step:Find("+azshara1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Darnassian Base Camp |achieve 852/7 |goto Azshara 52.25,26.95
step
Discover Bitter Reaches |achieve 852/4 |goto Azshara 73.69,20.98
step
Discover Tower of Eldara |achieve 852/5 |goto Azshara 80.90,32.34
step
Discover Ruins of Arkkoran |achieve 852/6 |goto Azshara 69.89,34.83
step
Discover Bilgewater Harbor |achieve 852/3 |goto Azshara 58.29,51.00
step
Discover Southridge Beach |achieve 852/13 |goto Azshara 68.41,75.62
step
Discover Ravencrest Monument |achieve 852/14 |goto Azshara 64.65,79.31
step
Discover Storm Cliffs |achieve 852/17 |goto Azshara 56.99,76.50
step
Discover The Secret Lab |achieve 852/8 |goto Azshara 46.54,76.25
step
Discover The Ruined Reaches |achieve 852/16 |goto Azshara 39.83,84.67
step
Discover Lake Mennar |achieve 852/15 |goto Azshara 35.72,73.99
step
Discover Orgrimmar Rear Gate |achieve 852/11 |goto Azshara 26.75,77.96
step
Discover Gallywix Pleasure Palace |achieve 852/1 |goto Azshara 21.04,57.1
step
Discover The Shattered Strand |achieve 852/2 |goto Azshara 39.21,55.46
step
Discover Ruins of Eldarath |achieve 852/12 |goto Azshara 31.95,50.02
step
Discover Bear's Head |achieve 852/9 |goto Azshara 25.47,38.00
step
Discover Blackmaw Hold |achieve 852/10 |goto Azshara 33.06,32.76
step
label "azshara1"
Explore Azshara |achieve 852
step
label "moon"
_Skipping_ to the next part of guide |next "+felwood" |only if step:Find("+moon1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Stormrage Barrow Dens |achieve 855/4 |goto Moonglade 67.8,53.8
step
Discover Lake Elune'ara |achieve 855/1 |goto Moonglade 52.5,55.4
step
Discover Nighthaven |achieve 855/2 |goto Moonglade 48.2,37.9
step
Discover Shrine of Remulos |achieve 855/3 |goto Moonglade 36.3,38.8
step
label "moon1"
Explore Moonglade |achieve 855
step
label "felwood"
_Skipping_ to the next part of guide |next "+darkshore" |only if step:Find("+felwood1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Felpaw Village |achieve 853/1 |goto Felwood 61.2,11.5
step
Discover Talonbranch Glade |achieve 853/2 |goto Felwood 62.6,26.7
step
Discover Irontree Woods |achieve 853/3 |goto Felwood 50.3,26.0
step
Discover Jadefire Run |achieve 853/4 |goto Felwood 43.6,18.6
step
Discover Shatter Scar Vale |achieve 853/5 |goto Felwood 43.1,41.9
step
Discover Bloodvenom Falls |achieve 853/6 |goto Felwood 41,47
step
Discover Emerald Sanctuary |achieve 853/10 |goto Felwood 52.2,78.2
step
Discover Morlos'Aran |achieve 853/12 |goto Felwood 56.6,86.8
step
Discover Deadwood Village |achieve 853/11 |goto Felwood 48.0,89.2
step
Discover Jadefire Glen |achieve 853/9 |goto Felwood 41.8,85.4
step
Discover Ruins of Constellas |achieve 853/8 |goto Felwood 38.0,72.3
step
Discover Jaedenar |achieve 853/7 |goto Felwood 37.0,59.1
step
label "felwood1"
Explore Felwood |achieve 853
step
label "darkshore"
_Skipping_ to the next part of guide |next "+teldrassil" |only if step:Find("+darkshore1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover The Master's Glaive |achieve 844/11 |goto Darkshore 40.3,86.2
step
Discover Nazj'vel |achieve 844/10 |goto Darkshore 32.0,84.0
step
Discover Wildbend River |achieve 844/4 |goto Darkshore 42.5,69.5
step
Discover Ameth'Aran |achieve 844/8 |goto Darkshore 43.7,60.5
step
Discover Withering Thicket |achieve 844/5 |goto Darkshore 43.96,39.82
step
Discover The Eye of the Vortex |achieve 844/7 |goto Darkshore 42.9,54.9
step
Discover Ruins of Auberdine |achieve 844/1 |goto Darkshore 37.9,44.1
step
Discover Lor'danel |achieve 844/9 |goto Darkshore 51.2,19.2
step
Discover Ruins of Mathystra |achieve 844/6 |goto Darkshore 63.9,21.9
step
Discover Shatterspear Vale |achieve 844/2 |goto Darkshore 72.5,17.3
step
Discover Shatterspear War Camp |achieve 844/3 |goto Darkshore 65.9,7.0
step
label "darkshore1"
Explore Darkshore |achieve 844
step
label "teldrassil"
_Skipping_ to the next part of guide |next "+azure" |only if step:Find("+teldrassil1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Lake Al'Ameth |achieve 842/6 |goto Teldrassil 55.0,61.0
step
Discover Dolanaar |achieve 842/3 |goto Teldrassil 55.6,51.2
step
Discover Starbreeze Village |achieve 842/8 |goto Teldrassil 64.7,49.1
step
Discover Rut'theran Village |achieve 842/12 |goto Teldrassil 55.0,91.0
step
Discover Shadowglen |achieve 842/1 |goto Teldrassil 58.4,33.0
step
Discover The Cleft |achieve 842/2 |goto Teldrassil 50.7,38.0
step
Discover Ban'ethil Hollow |achieve 842/4 |goto Teldrassil 46.16,50.68
step
Discover Wellspring Lake |achieve 842/10 |goto Teldrassil 44.4,34.4
step
Discover The Oracle Glade |achieve 842/9 |goto Teldrassil 40.0,26.7
step
Discover Darnassus |achieve 842/11 |goto Teldrassil 30.4,50.1
step
Discover Pools of Arlithrien |achieve 842/7 |goto Teldrassil 41.9,56.9
step
Discover Gnarlpine Hold |achieve 842/5 |goto Teldrassil 44.8,67.4
step
label "teldrassil1"
Explore Teldrassil |achieve 842
step
label "azure"
_Skipping_ to the next part of guide |next "+blood" |only if step:Find("+azure1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Valaar's Berth |achieve 860/16 |goto Azuremyst Isle 23.7,54.0
step
Discover Bristlelimb Village |achieve 860/4 |goto Azuremyst Isle 26.5,65.1
step
Discover Silvermyst Isle |achieve 860/13 |goto Azuremyst Isle 12.7,78.6
step
Discover Wrathscale Point |achieve 860/17 |goto Azuremyst Isle 32.0,79.3
step
Discover Pod Cluster |achieve 860/10 |goto Azuremyst Isle 37.0,58.4
step
Discover Azure Watch |achieve 860/3 |goto Azuremyst Isle 49.3,50.7
step
Discover Odesyus' Landing |achieve 860/9 |goto Azuremyst Isle 46.6,72.4
step
Discover Pod Wreckage |achieve 860/11 |goto Azuremyst Isle 52.7,61.3
step
Discover Geezle's Camp |achieve 860/7 |goto Azuremyst Isle 58.3,67.0
step
Discover Ammen Ford |achieve 860/2 |goto Azuremyst Isle 61.3,53.6
step
Discover Ammen Vale |achieve 860/1 |goto Azuremyst Isle 77.6,43.7
step
Discover Moongraze Woods |achieve 860/8 |goto Azuremyst Isle 52.7,41.8
step
Discover The Exodar |achieve 860/15 |goto Azuremyst Isle 29.2,35.1
step
Discover Silting Shore |achieve 860/12 |goto Azuremyst Isle 35.3,12.4
step
Discover Stillpine Hold |achieve 860/14 |goto Azuremyst Isle 46.0,20.0
step
Discover Emberglade |achieve 860/5 |goto Azuremyst Isle 58.8,17.6
step
Discover Fairbridge Strand |achieve 860/6 |goto Azuremyst Isle 47.7,6.6
step
label "azure1"
Explore Azuremyst Isle |achieve 860
step
label "blood"
_Skipping_ to the next part of guide |next "+end" |only if step:Find("+blood1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
Discover Kessel's Crossing |achieve 861/8 |goto Bloodmyst Isle 61.9,90.0
step
Discover The Lost Fold |achieve 861/22 |goto Bloodmyst Isle 57.4,81.0
step
Discover Bristlelimb Enclave |achieve 861/7 |goto Bloodmyst Isle 67.0,78.2
step
Discover Wrathscale Lair |achieve 861/27 |goto Bloodmyst Isle 69.0,66.6
step
Discover Bloodcurse Isle |achieve 861/5 |goto Bloodmyst Isle 85.4,52.8
step
Discover Wyrmscar Island |achieve 861/28 |goto Bloodmyst Isle 72.0,29.6
step
Discover Talon Stand |achieve 861/14 |goto Bloodmyst Isle 73.4,20.9
step
Discover The Bloodcursed Reef |achieve 861/16 |goto Bloodmyst Isle 81.0,20.1
step
Discover Veridian Point |achieve 861/25 |goto Bloodmyst Isle 74.4,7.5
step
Discover The Crimson Reach |achieve 861/18 |goto Bloodmyst Isle 62.6,25.4
step
Discover The Warp Piston |achieve 861/24 |goto Bloodmyst Isle 54.2,17.1
step
Discover Ragefeather Ridge |achieve 861/12 |goto Bloodmyst Isle 56.1,34.9
step
Discover Ruins of Loreth'Aran |achieve 861/13 |goto Bloodmyst Isle 61.6,45.2
step
Discover Blood Watch |achieve 861/6 |goto Bloodmyst Isle 54.6,55.4
step
Discover Middenvale |achieve 861/9 |goto Bloodmyst Isle 51.7,76.6
step
Discover Mystwood |achieve 861/10 |goto Bloodmyst Isle 43.9,84.7
step
Discover Blacksilt Shore |achieve 861/3 |goto Bloodmyst Isle 33.2,90.3
step
Discover Nazzivian |achieve 861/11 |goto Bloodmyst Isle 37.9,75.7
step
Discover The Cryo-Core |achieve 861/19 |goto Bloodmyst Isle 38.5,59.5
step
Discover Bladewood |achieve 861/4 |goto Bloodmyst Isle 45.9,45.1
step
Discover Axxarien |achieve 861/2 |goto Bloodmyst Isle 40.8,33.0
step
Discover The Bloodwash |achieve 861/17 |goto Bloodmyst Isle 38.7,21.9
step
Discover The Hidden Reef |achieve 861/21 |goto Bloodmyst Isle 32.7,19.8
step
Discover The Foul Pool |achieve 861/20 |goto Bloodmyst Isle 29.2,36.8
step
Discover Vindicator's Rest |achieve 861/26 |goto Bloodmyst Isle 30.2,46.2
step
Discover Tel'athion's Camp |achieve 861/15 |goto Bloodmyst Isle 24.4,41.2
step
Discover Amberweb Pass |achieve 861/1 |goto Bloodmyst Isle 18.8,30.9
step
Discover The Vector Coil |achieve 861/23 |goto Bloodmyst Isle 18.0,53.4
step
label "blood1"
Explore Bloodmyst Isle |achieve 861
step
label "end"
Congratulations, you have _earned_ the _Explore Kalimdor_ Achievement! |only if achieved(43)
Congratulations, you have _earned_ the _World Explorer_ Achievement! |only if achieved(46)
You _have not_ explored all of Kalimdor yet |only if not achieved(43)
confirm |next "start" |only if not achieved(43)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Friend or Fowl?",{
achieveid={1254},
description="This guide will walk you through slaying 15 turkeys in 3 minutes.",
},[[
step
kill Fjord Turkey##24746+ |goto Howling Fjord 66.3,71.1
Slay #15# Turkeys in 3 Minutes |achieve 1254
|tip Kill them as fast as you can, then hurry to kill another one each time.
step
Congratulations, you have earned the Friend or Fowl? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Going Down?",{
achieveid={964},
description="This guide will walk you through falling 65 yards without dying.",
},[[
step
You can do this in several different waysdepending on yoiur class, but we listed the easiest way regardless of level and class
Ride up to the Elevator to the Terrace of Light and jump off either the right or the left side of the Terrace to the flat ground |goto Shattrath City 63.8,41.6 |achieve 964
|tip MAKE SURE TO JUMP.
step
Congratulations, you have earned the Going Down? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Higher Learning",{
achieveid={1956},
description="This guide will walk you through reading the volumes of 'The Schools of Arcane Magic' found in Dalaran.",
},[[
step
Warning: These books have respawn timers of about 3-4 hours (it seems to be random between those times) so this achievement may take you a while to get
|tip The book you want won't always be there. Fake trash books spawn to make the achievement even harder to get, but keep at it. Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
This is an achievement that you may want to dedicate a lot of time to if you want it
|tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide
Good luck!
confirm |only if not achieved(1956)
step
label "RestartHigherLearning"
click The Schools of Arcane Magic - Illusion##192865
|tip It looks like a brown book laying on a wooden crate.
Read The Schools of Arcane Magic - Illusion |achieve 1956/6 |goto Dalaran 64.4,52.4
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Introduction##192708
|tip It looks like a blue book laying on ground next to a bookshelf inside this building.
Read The Schools of Arcane Magic - Introduction |achieve 1956/1 |goto Dalaran 56.6,45.6
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Abjuration##192709
|tip It looks like a brown book laying on ground next to a small table inside this building.
Read The Schools of Arcane Magic - Abjuration |achieve 1956/2 |goto Dalaran 52.3,54.8
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Enchantment##192713
|tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
Read The Schools of Arcane Magic - Enchantment |achieve 1956/5 |goto Dalaran 43.6,46.7
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Transmutation##192867
|tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.
Read The Schools of Arcane Magic - Transmutation |achieve 1956/8 |goto Dalaran 46.8,40.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Necromancy##192866
|tip It looks like a blue book laying on a bookshelf upstairs in this building.
Read The Schools of Arcane Magic - Necromancy |achieve 1956/7 |goto Dalaran 46.8,39.1
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Conjuration##192710
|tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
Read The Schools of Arcane Magic - Conjuration |achieve 1956/3 |goto Dalaran 30.8,46.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Divination##192711
|tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
Read The Schools of Arcane Magic - Divination |achieve 1956/4 |goto Dalaran 26.5,52.1
_Click here_ if this book isn't available |confirm
step
Looks like you still need more education! _Click here_ to start the guide over |confirm |next "RestartHigherLearning" |only if not achieved(1956)
Congratulations, you have earned the Higher Learning achievement! |only if achieved(1956)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\It's Happy Hour Somewhere",{
achieveid={1833},
description="This guide will walk you through drinking 25 different types of beverages.",
},[[
stickystart "tracker"
step
talk Innkeeper Allison##6740 |goto Stormwind City 60.4,75.3
buy 1 Refreshing Spring Water##159 |condition itemcount(159) >= 1
buy 1 Ice Cold Milk##1179 |condition itemcount(1179) >= 1
buy 1 Melon Juice##1205 |condition itemcount(1205) >= 1
buy 1 Sweet Nectar##1708 |condition itemcount(1708) >= 1
buy 1 Moonberry Juice##1645 |condition itemcount(1645) >= 1
buy 1 Morning Glory Dew##8766 |condition itemcount(8766) >= 1
buy 1 Filtered Draenic Water##28399 |condition itemcount(28399) >= 1
buy 1 Fresh Water##58274 |condition itemcount(58274) >= 1
buy 1 Pugnent Seal Whey##33444 |condition itemcount(33444) >= 1
buy 1 Honeymint Tea##33445 |condition itemcount(33445) >= 1
buy 1 Sparkling Oasis Water##58256 |condition itemcount(58256) >= 1
buy 1 Highland Spring Water##58257 |condition itemcount(58257) >= 1
only if not achieved(1833)
step
Drink the Refreshing Spring Water |use Refreshing Spring Water##159
Drink the Ice Cold Milk |use Ice Cold Milk##1179
Drink the Melon Juice |use Melon Juice##1205
Drink the Sweet Nectar |use Sweet Nectar##1708
Drink the Moonberry Juice |use Moonberry Juice##1645
Drink the Morning Glory Dew |use Morning Glory Dew##8766
Drink the Filtered Draenic Water |use Filtered Draenic Water##28399
Drink the Pugnent Seal Whey |use Pugnent Seal Whey##33444
Drink the Fresh Water |use Fresh Water##58274
Drink the Honeymint Tea |use Honeymint Tea##33445
Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256
Drink the Highland Spring Water |use Highland Spring Water##58257
_Click here_ to continue |confirm
step
talk Daisy##40832 |goto Thousand Needles 76.5,74.8
buy 1 Bottle of Pinot Noir##2723 |condition itemcount(2723) >= 1
buy 1 Glass of Eversong Wine##44570 |condition itemcount(44570) >= 1
buy 1 Honey Mead##40035 |condition itemcount(40035) >= 1
buy 1 Flask of Port##2593 |condition itemcount(2593) >= 1
buy 1 Bottle of Silvermoon Port##44571 |condition itemcount(44571) >= 1
buy 1 Skin of Dwarven Stout##2596 |condition itemcount(2596) >= 1
buy 1 Flask of Bitter Cactus Cider##44575 |condition itemcount(44575) >= 1
buy 1 Snowplum Brandy##40036 |condition itemcount(40036) >= 1
buy 1 Flagon of Mead##2594 |condition itemcount(2594) >= 1
buy 1 Cup of Frog Venom Brew##44573 |condition itemcount(44573) >= 1
buy 1 Caraway Burnwine##40042 |condition itemcount(40042) >= 1
buy 1 Jug of Bourbon##2595 |condition itemcount(2595) >= 1
buy 1 Skin of Mulgore Firewater##44574 |condition itemcount(44574) >= 1
only if not achieved(1833)
step
Drink the Bottle of Pinot Noir |use Bottle of Pinot Noir##2723
Drink the Glass of Eversong Wine |use Glass of Eversong Wine##44570
Drink the Honey Mead |use Honey Mead##40035
Drink the Flask of Port |use Flask of Port##2593
Drink the Bottle of Silvermooon Port |use Bottle of Silvermoon Port##44571
Drink the Skin of Dwarven Stout |use Skin of Dwarven Stout##2596
Drink the Flask of Bitter Cactus |use Flask of Bitter Cactus Cider##44575
Drink the Snowplum Brandy |use Snowplum Brandy##40036
Drink the Flagon of Mead |use Flagon of Mead##2594
Drink the Cup of Frog Venom Brew |use Cup of Frog Venom Brew##44573
Drink the Caraway Burnwine |use Caraway Burnwine##40042
Drink the Jug of Bourbon |use Jug of Bourbon##2595
Drink the Skin of Mulgore Firewater |use Skin of Mulgore Firewater##44574
_Click here_ to continue |confirm
step
label "tracker"
Drink #25# different types of beverages |achieve 1833 |only if not achieved(1833)
Congratulations, you have earned the It's Happy Hour Somewhere Achievement! |only if achieved(1833)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Shave and a Haircut",{
achieveid={545},
description="This guide will walk you through visiting a Barber Shop and get your hair cut.",
},[[
step
Click on the Barbershop Chair |goto Stormwind City 61.6,64.6 |only if not achieved(545)
|tip It looks like a mechanical chair with a foot rest.
Change your hair style or hair color then click "Okay." |achieve 545
|tip This will cost money to do so be sure you have the extra gold to purchase a hair style.
step
Congratulations, you have earned the Shave and a Haircut achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Tastes Like Chicken",{
achieveid={1832},
description="This guide will walk you through sampling 50 different kinds of Azeroth's delectable dishes.",
},[[
stickystart "tracker"
step
talk Innkeeper Firebrew##5111 |goto Ironforge 18.6,51.6
buy 1 Tough Jerky##117 |condition itemcount(117) >= 1
buy 1 Haunch of Meat##2287 |condition itemcount(2287) >= 1
buy 1 Mutton Chop##3770 |condition itemcount(3770) >= 1
buy 1 Wild Hog Shank##3771 |condition itemcount(3771) >= 1
buy 1 Cured Ham Steak##4599 |condition itemcount(4599) >= 1
buy 1 Roasted Quail##8952 |condition itemcount(8952) >= 1
buy 1 Smoked Talbuk Venison##27854 |condition itemcount(27854) >= 1
buy 1 Salted Venison##33454 |condition itemcount(33454) >= 1
buy 1 Mead Basted Caribou##35953 |condition itemcount(35953) >= 1
buy 1 Roasted Beef##58268 |condition itemcount(58268) >= 1
buy 1 Massive Turkey Leg##58269 |condition itemcount(58269) >= 1
only if not achieved(1832)
step
talk Myra Tyrngaarde##5109 |goto Ironforge 27.8,72.2
|tip She patrols the auction house area.
buy 1 Tough Hunk of Bread##4540 |condition itemcount(4540) >= 1
buy 1 Freshly Baked Bread##4541 |condition itemcount(4541) >= 1
buy 1 Moist Cornbread##4542 |condition itemcount(4542) >= 1
buy 1 Mulgore Spice Bread##4544 |condition itemcount(4544) >= 1
buy 1 Soft Banana Bread##4601 |condition itemcount(4601) >= 1
buy 1 Homemade Cherry Pie##8950 |condition itemcount(8950) >= 1
buy 1 Mag'har Grainbread##27855 |condition itemcount(27855) >= 1
buy 1 Crusty Flatbread##33449 |condition itemcount(33449) >= 1
buy 1 Sweet Potato Bread##35950 |condition itemcount(35950) >= 1
buy 1 Pine Nut Bread##58260 |condition itemcount(58260) >= 1
buy 1 Buttery Wheat Roll##58261 |condition itemcount(58261) >= 1
only if not achieved(1832)
step
Eat the Tough Jerky |use Tough Jerky##117
Eat the Tough Hunk of Bread |use Tough Hunk of Bread##4540
Eat the Haunch of Meat |use Haunch of Meat##2287
Eat the Freshly Baked Bread |use Freshly Baked Bread##4541
Eat the Mutton Chop |use Mutton Chop##3770
Eat the Moist Cornbread |use Moist Cornbread##4542
Eat the Wild Hog Shank |use Wild Hog Shank##3771
Eat the Mulgore Spice Bread |use Mulgore Spice Bread##4544
Eat the Cured Ham Steak |use Cured Ham Steak##4599
Eat the Soft Banana Bread |use Soft Banana Bread##4601
_Click here_ to continue |confirm
step
Eat the Roasted Quail |use Roasted Quail##8952
Eat the Homemade Cherry Pie |use Homemade Cherry Pie##8950
Eat the Smoked Talbuk Venison |use Smoked Talbuk Venison##27854
Eat the Mag'har Grainbread |use Mag'har Grainbread##27855
Eat the Salted Venison |use Salted Venison##33454
Eat the Crusty Flatbread |use Crusty Flatbread##33449
Eat the Mead Basted Cariboy |use Mead Basted Caribou##35953
Eat the Sweet Potato Bread |use Sweet Potato Bread##35950
Eat the Roasted Beef |use Roasted Beef##58268
Eat the Pine Nut Bread |use Pine Nut Bread##58260
Eat the Massive Turkey |use Massive Turkey Leg##58269
Eat the Buttery Wheat Roll |use Buttery Wheat Roll##58261
_Click here_ to continue |confirm
step
talk Thaegra Tillstone##44235 |goto Stormwind City 64.9,32.0
buy 1 Forest Mushroom Cap##4604 |condition itemcount(4604) >= 1
buy 1 Red-Speckeled Mushroom##4605 |condition itemcount(4605) >= 1
buy 1 Spongy Morel##4606 |condition itemcount(4606) >= 1
buy 1 Delicious Cave Mold##4607 |condition itemcount(4607) >= 1
buy 1 Raw Black Truffle##4608 |condition itemcount(4608) >= 1
buy 1 Dried King Bolete##8948 |condition itemcount(8948) >= 1
only if not achieved(1832)
step
Eat the Forest Mushroom |use Forest Mushroom Cap##4604
Eat the Red-Speckeled Mushroom |use Red-Speckeled Mushroom##4605
Eat the Spongy Morel |use Spongy Morel##4606
Eat the Delicious Cave Mold |use Delicious Cave Mold##4607
Eat the Raw Black Truffle |use Raw Black Truffle##4608
Eat the Dried King Bolete |use Dried King Bolete##8948
_Click here_ to continue |confirm
step
talk Talaelar##4221 |goto Darnassus 48.8,61.3
buy 1 Slitherskin Mackerel##787 |condition itemcount(787) >= 1
buy 1 Longjaw Mud Snapper##4592 |condition itemcount(4592) >= 1
buy 1 Bristle Whisker Catfish##4593 |condition itemcount(4593) >= 1
buy 1 Rockscale Cod##4594 |condition itemcount(4594) >= 1
buy 1 Striped Yellowtail##21552 |condition itemcount(21552) >= 1
buy 1 Spinefin Halibut##8957 |condition itemcount(8957) >= 1
buy 1 Sunspring Carp##27858 |condition itemcount(27858) >= 1
buy 1 Fillet of Icefin##33451 |condition itemcount(33451) >= 1
buy 1 Poached Emperor Salmon##35951 |condition itemcount(35951) >= 1
buy 1 Sliced Raw Billfish##58262 |condition itemcount(58262) >= 1
buy 1 Grilled Shark##58263 |condition itemcount(58263) >= 1
only if not achieved(1832)
step
talk Innkeeper Saelienne##6735 |goto Darnassus 62.5,32.8
buy 1 Shiny Red Apple##4536 |condition itemcount(4536) >= 1
buy 1 Tel'Abim Banana##4537 |condition itemcount(4537) >= 1
buy 1 Snapvine Watermelon##4538 |condition itemcount(4538) >= 1
buy 1 Goldenbark Apple##4539 |condition itemcount(4539) >= 1
buy 1 Moon Harvest Pumpkin##4602 |condition itemcount(4602) >= 1
buy 1 Deep Fried Plantains##8953 |condition itemcount(8953) >= 1
buy 1 Skethyl Berries##27856 |condition itemcount(27856) >= 1
buy 1 Tundra Berries##35949 |condition itemcount(35949) >= 1
buy 1 Savory Snowplum##35948 |condition itemcount(35948) >= 1
buy 1 Sour Green Apple##58264 |condition itemcount(58264) >= 1
buy 1 Highland Pomegranate##58265 |condition itemcount(58265) >= 1
only if not achieved(1832)
step
Eat the Slitherskin Mackerel |use Slitherskin Mackerel##787
Eat the Shiny Red Apple |use Shiny Red Apple##4536
Eat the Longjaw Mud Snapper |use Longjaw Mud Snapper##4592
Eat the Tel'Abim Banana |use Tel'Abim Banana##4537
Eat the Bristle Whisker Catfish |use Bristle Whisker Catfish##4593
Eat the Snapvine Watermelon |use Snapvine Watermelon##4538
Eat the Rockscale Cod |use Rockscale Cod##4594
Eat the Goldenbark Apple |use Goldenbark Apple##4539
Eat the Striped Yellowtail |use Striped Yellowtail##21552
Eat the Moon Harvest Pumpkin |use Moon Harvest Pumpkin##4602
_Click here_ to continue |confirm
step
Eat the Spinefin Hailibut |use Spinefin Halibut##8957
Eat the Deep Fried Plantains |use Deep Fried Plantains##8953
Eat the Sunspring Carp |use Sunspring Carp##27858
Eat the Skethyl Berries |use Skethyl Berries##27856
Eat the Fillet of Icefin |use Fillet of Icefin##33451
Eat the Tundra Berries |use Tundra Berries##35949
Eat the Poached Emperor |use Poached Emperor Salmon##35951
Eat the Savory Snowplum |use Savory Snowplum##35948
Eat the Sliced Raw Billfish |use Sliced Raw Billfish##58262
Eat the Sour Green Apple |use Sour Green Apple##58264
Eat the Grilled Shark |use Grilled Shark##58263
Eat the Highland Pomegranate |use Highland Pomegranate##58265
_Click here_ to continue |confirm
step
label "tracker"
Sample #50# different kinds of Azeroth's delectable dishes |achieve 1832 |only if not achieved(1832)
Congratulations, you have earned the Tastes Like Chicken Achievement! |only if achieved(1832)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\To All The Squirrels (Loved, Shared, Cared)/Pest Control",{
condition_end=function() return achieved(5548) end,
achieveid={1206,2557,2556,5548},
description="This guide will walk you through showing the critters of Azeroth how much you /love them and slaying the pests.",
},[[
step
label "start"
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City 60.4,75.3
only if not achieved(5548)
step
clicknpc Rockchewer Whelk##48848
Use the Love emote on a Rockchewer Whelk |script DoEmote("LOVE")
Love a Rockchewer Whelk |achieve 5548/9 |goto Shimmering Expanse 41.3,53.9
step
clicknpc Sea Cucumber##48802
Use the Love emote on a Sea Cucumber |script DoEmote("LOVE")
Love a Sea Cucumber |achieve 5548/11 |goto Shimmering Expanse 41.3,53.9
step
kill Rat##4075 |achieve 2556/18 |goto The Cape of Stranglethorn 40.0,67.7
step
kill Roach##4076 |achieve 2556/9 |goto The Cape of Stranglethorn 42.2,69.5
step
clicknpc Wharf Rat##47667
Use the Love emote on a Wharf Rat |script DoEmote("LOVE")
Love a Wharf Rat |achieve 5548/12 |goto The Cape of Stranglethorn 42.7,72.8
step
clicknpc Parrot##9600
Use the Love emote on a Parrot |script DoEmote("LOVE")
Love a Parrot |achieve 1206/11 |goto Northern Stranglethorn 50.5,66.4
step
kill Scorpion##61326 |achieve 2556/14 |goto Blasted Lands 42.5,21.9
step
kill Fire Beetle##9699 |achieve 2556/16 |goto Blasted Lands 44.4,32.9
step
clicknpc Huge Toad##61368
Use the Love emote on a Huge Toad |script DoEmote("LOVE")
Love a Huge Toad |achieve 2557/7 |goto Swamp of Sorrows 39.7,51.0
step
clicknpc Skunk##17467
Use the Love emote on a Skunk |script DoEmote("LOVE")
|tip It looks like a small skunk that walks around this area.
Love a Skunk |achieve 1206/16 |goto Duskwood 12.3,65.8
step
clicknpc Rabbit##61080
Use the Love emote on a Rabbit |script DoEmote("LOVE")
Love a Rabbit |achieve 1206/12 |goto Elwynn Forest 36.3,85.8
step
clicknpc Deer##883
Use the Love emote on a Deer |script DoEmote("LOVE")
|tip Be sure not to get it mixed up with the fawn also in the area.
Love a Deer |achieve 1206/5 |goto Elwynn Forest 24.9,83.0
step
clicknpc Fawn##890
Use the Love emote on a Fawn |script DoEmote("LOVE")
Love a Fawn |achieve 1206/7 |goto Elwynn Forest 24.9,83.0
step
clicknpc Cow##2442
Use the Love emote on a Cow |script DoEmote("LOVE")
Love a Cow |achieve 1206/4 |goto Elwynn Forest 32.3,77.2
step
clicknpc Chicken##620
Use the Love emote on a Chicken |script DoEmote("LOVE")
Love a Chicken |achieve 1206/3 |goto Elwynn Forest 36.5,60.1
step
clicknpc Cat##6368
Use the Love emote on a Cat |script DoEmote("LOVE")
Love a Cat |achieve 1206/2 |goto Elwynn Forest 44.5,53.8
step
kill Gold Beetle##32258 |achieve 2556/17 |goto Badlands 50.4,43.9
step
clicknpc Lava Crab##9700
Use the Love emote on a Lava Crab |script DoEmote("LOVE")
Love a Lava Crab |achieve 2557/8 |goto Searing Gorge 31.1,43.7
step
clicknpc Sheep##1933
Use the Love emote on a Sheep |script DoEmote("LOVE")
Love a Sheep |achieve 1206/14 |goto Loch Modan 20.9,71.9
step
clicknpc Ram##2098
Use the Love emote on a Ram |script DoEmote("LOVE")
Love a Ram |achieve 1206/13 |goto Loch Modan 25.1,37.8
step
clicknpc Squirrel##1412
Use the Love emote on a Squirrel |script DoEmote("LOVE")
Love a Squirrel |achieve 1206/17 |goto Loch Modan 29.0,66.3
step
kill Squirrel##1412 |achieve 2556/4 |goto Loch Modan 29.0,66.3
step
label "travel_twilight"
clicknpc Yellow-Bellied Marmot##48683
Use the Love emote on a Yellow-Bellied Marmot |script DoEmote("LOVE")
Love a Yellow-Bellied Marmot |achieve 5548/13 |goto Twilight Highlands 29.3,33.1
step
clicknpc Highlands Turkey##48706
Use the Love emote on a Highlands Turkey |script DoEmote("LOVE")
Love a Highlands Turkey |achieve 5548/4 |goto Twilight Highlands 29.3,33.1
step
clicknpc Shore Crab##60761
Use the Love emote on a Shore Crab |script DoEmote("LOVE")
Love a Shore Crab |achieve 1206/15 |goto Twilight Highlands 71.2,41.2
step
kill Maggot##16030 |achieve 2556/13 |goto The Hinterlands 31.9,57.9
step
kill Larva##16068 |achieve 2556/1 |goto Ghostlands 45.3,31.1
step
clicknpc Ewe##19665
Use the Love emote on a Ewe |script DoEmote("LOVE")
Love an Ewe |achieve 1206/6 |goto Shattrath City 58.8,23.3
step
clicknpc Borean Marmot##31685
Use the Love emote on a Borean Marmot |script DoEmote("LOVE")
Love a Borean Marmot |achieve 2557/2 |goto Borean Tundra 36.0,55.9
step
clicknpc Tundra Penguin##28440
Use the Love emote on a Tundra Penguin |script DoEmote("LOVE")
Love a Tundra Penguin |achieve 2557/12 |goto Borean Tundra 24.5,61.8
step
clicknpc Steam Frog##25679
Use the Love emote on a Steam Frog |script DoEmote("LOVE")
Love a Steam Frog |achieve 1206/18 |goto Borean Tundra 61.0,51.8
step
clicknpc Borean Frog##25677
Use the Love emote on a Borean Frog |script DoEmote("LOVE")
Love a Borean Frog |achieve 1206/1 |goto Borean Tundra 72.7,41.0
step
clicknpc Sholazar Tickbird##28093
Use the Love emote on a Sholazar Tickbird |script DoEmote("LOVE")
Love a Sholazar Tickbird |achieve 2557/11 |goto Sholazar Basin 27.1,60.5
step
clicknpc Glacier Penguin##32498
Use the Love emote on a Glacier Penguin |script DoEmote("LOVE")
Love a Glacier Penguin |achieve 2557/5 |goto Icecrown 60.9,18.8
step
kill Underbelly Rat##32428 |achieve 2556/5 |goto Dalaran/2 41.0,50.4
step
kill Zul'Drak Rat##28202 |achieve 2556/8 |goto Zul'Drak 42.4,63.1
step
clicknpc Arctic Hare##29328
Use the Love emote on an Arctic Hare |script DoEmote("LOVE")
Love an Artic Hare |achieve 2557/1 |goto Zul'Drak 71.8,69.8
step
clicknpc Grizzly Squirrel##31889
Use the Love emote on a Grizzly Squirrel |script DoEmote("LOVE")
Love a Grizzly Squirrel |achieve 2557/6 |goto Grizzly Hills 66.7,13.1
step
clicknpc Mountain Skunk##31890
Use the Love emote on a Mountain Skunk |script DoEmote("LOVE")
Love a Mountain Skunk |achieve 2557/9 |goto Grizzly Hills 68.6,11.8
step
kill Fjord Rat##24174 |achieve 2556/15 |goto Howling Fjord 45.0,30.3
step
clicknpc Fjord Penguin##28407
Use the Love emote on a Fjord Penguin |script DoEmote("LOVE")
Love a Fjord Penguin |achieve 2557/3 |goto Howling Fjord 20.8,61.8
step
clicknpc Scalawag Frog##26503
Use the Love emote on a Scalawag Frog |script DoEmote("LOVE")
Love a Scalawag Frog |achieve 2557/10 |goto Howling Fjord 35.6,81.8
step
Follow the path to the bottom of the catacombs
kill Devouring Maggot##24270 |achieve 2556/6 |goto Howling Fjord 57.1,56.8
step
clicknpc Fjord Turkey##24746
Use the Love emote on a Fjord Turkey |script DoEmote("LOVE")
Love a Fjord Turkey |achieve 2557/4 |goto Howling Fjord 66.4,71.1
step
clicknpc Sassy Cat##47682
Use the Love emote on a Sassy Cat |script DoEmote("LOVE")
Love a Sassy Cat |achieve 5548/10 |goto Tol Barad Peninsula 61.2,35.5
step
clicknpc Baradin Fox Kit##48630
Use the Love emote on a Baradin Fox Kit |script DoEmote("LOVE")
Love a Baradin Fox Kit |achieve 5548/2 |goto Tol Barad 44.5,25.8
step
clicknpc Toad##1420
Use the Love emote on a Toad |script DoEmote("LOVE")
Love a Toad |achieve 1206/20 |goto Darnassus 42.4,46.9
step
clicknpc Alpine Chipmunk##49779
Use the Love emote on an Alpine Chipmunk |script DoEmote("LOVE")
Love an Alpine Chipmunk |achieve 5548/1 |goto Winterspring 51.5,47.9
step
kill Crystal Spider##32261 |achieve 2556/11 |goto Winterspring 48.8,54.8
step
clicknpc Grotto Vole##50419
Use the Love emote on a Grotto Vole |script DoEmote("LOVE")
Love a Grotto Vole |achieve 5548/3 |tip Inside of the cave |goto Mount Hyjal 54.5,17.1
step
clicknpc Rock Viper##50481
Use the Love emote on a Rock Viper |script DoEmote("LOVE")
Love a Rock Viper |achieve 5548/8 |goto Mount Hyjal 38.4,56.6
step
clicknpc Gazelle##4166
Use the Love emote on a Gazelle |script DoEmote("LOVE")
Love a Gazelle |achieve 1206/9 |goto Northern Barrens 51.8,56.4
step
clicknpc Small Frog##13321
Use the Love emote on a Small Frog |script DoEmote("LOVE")
Love a Small Frog |achieve 1206/8 |goto Northern Barrens 37.9,46.1
step
clicknpc Prairie Dog##2620
Use the Love emote on a Prairie Dog |script DoEmote("LOVE")
Love a Prairie Dog |achieve 1206/21 |goto Northern Barrens 66.0,42.1
step
kill Water Snake##4953 |achieve 2556/2 |goto Durotar 36.4,40.8
step
clicknpc Hare##5951
Use the Love emote on a Hare |script DoEmote("LOVE")
Love a Hare |achieve 1206/10 |goto Durotar 50.5,30.2
step
kill Adder##3300 |achieve 2556/12 |goto Durotar 45.6,16.0
step
clicknpc Swine##10685
Use the Love emote on a Swine |script DoEmote("LOVE")
Love a Swine |achieve 1206/19 |goto Durotar 43.7,30.1
step
kill Spider##14881 |achieve 2556/3 |goto Dustwallow Marsh 35.0,24.0
step
kill Mouse##6271 |achieve 2556/7 |goto Dustwallow Marsh 46.2,56.9
step
kill Snake##2914 |achieve 2556/10  |goto Dustwallow Marsh 50.0,57.6
step
clicknpc Rattlesnake##48686
Use the Love emote on a Rattlesnake |script DoEmote("LOVE")
Love a Rattlesnake |achieve 5548/7 |goto Tanaris 46.9,26.9
step
clicknpc Mac Frog##50491
Use the Love emote on a Mac Frog |script DoEmote("LOVE")
Love a Mac Frog |achieve 5548/5 |goto Uldum 56.6,35.1
step
clicknpc Oasis Moth##50496
Use the Love emote on an Oasis Moth |script DoEmote("LOVE")
Love an Oasis Moth |achieve 5548/6 |goto Uldum 55.0,36.1
step
Congratulations, you have earned the To All The Squirrels I've Loved Before achievement! |only if achieved(1206)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(1206)
Congratulations, you have earned the To All The Squirrels Who Shared My Life achievement! |only if achieved(2557)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(2557)
Congratulations, you have earned the To All the Squirrels Who Cared for Me achievement! |only if achieved(5548)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(5548)
Congratulations, you have earned the Pest Control achievement! |only if achieved(2556)
You've missed some pests! _Click here_ to start over |confirm |next "start" |only if not achieved(2556)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Well Read",{
achieveid={1244},
description="This guide will walk you through reading the scattered books of Azeroth.",
},[[
step
click The World Tree and the Emerald Dream##268087 |achieve 1244/42 |goto Stormwind City 85.4,23.3
|tip It's on the table.
step
click The War of the Ancients##268086 |achieve 1244/38 |goto Stormwind City 85.3,23.2
|tip It's on the table.
step
click Aegwynn and the Dragon Hunt##268044 |achieve 1244/1 |goto Stormwind City 85.8,23.7
|tip On the pillar base next to the candles.
step
click The New Horde##268079 |achieve 1244/32 |goto Stormwind City 86.1,25.5
|tip On the pillar base.
step
click The Guardians of Tirisfal##268074 |achieve 1244/27 |goto Stormwind City 85.0,26.1
|tip On the table.
step
click Aftermath of the Second War##268045 |achieve 1244/2 |goto Stormwind City 85.2,26.1
|tip On the table.
step
click The Alliance of Lordaeron##268066 |achieve 1244/21 |goto Stormwind City 85.2,26.1
|tip On the table.
step
click The Kaldorei and the Well of Eternity##268076 |achieve 1244/29 |goto Stormwind City 84.7,25.9
|tip On the pillar base next to the candles.
step
click Beyond the Dark Portal##268048 |achieve 1244/5 |goto Stormwind City 84.6,24.3
|tip On the chair.
step
click Civil War in the Plaguelands##175761 |achieve 1244/7 |goto Stormwind City 85.0,23.4
|tip On the pillar base next to the candles.
step
click War of the Spider##175753 |achieve 1244/40 |goto Stormwind City 86.7,35.8
|tip On the command table.
step
click The Battle of Grim Batol##268067 |achieve 1244/22 |goto Stormwind City 86.5,36.0
|tip On the command table.
step
click The Dark Portal and the Fall of Stormwind##268072 |achieve 1244/25 |goto Stormwind City 87.1,35.9
|tip On the command table.
step
click Archimonde's Return and the Flight to Kalimdor##268047 |achieve 1244/4 |goto Stormwind City 51.8,74.5
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Mount Hyjal and Illidan's Gift##268057 |achieve 1244/15 |goto Stormwind City 51.8,74.6
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Rise of the Blood Elves##268059 |achieve 1244/17 |goto Elwynn Forest 64.6,69.5
|tip On top of the bookshelf on the top floor of the tower.
step
click Lethargy of the Orcs##175751 |achieve 1244/14 |goto Elwynn Forest 85.3,69.7
|tip Upstairs on the table.
step
click The Birth of the Lich King##267991 |achieve 1244/24 |goto Duskwood 72.1,46.6
|tip In the town hall on a table next to Role Dreuger.
step
click Kil'jaeden and the Shadow Pact##268055 |achieve 1244/13 |goto Duskwood 74.2,45.3
|tip In the inn on the bookshelf on the second floor.
step
click The Founding of Quel'Thalas##268073 |achieve 1244/26 |goto Duskwood 73.7,45.1
|tip In the next room over on the table.
step
click The Last Guardian##268077 |achieve 1244/30 |goto Loch Modan 37.2,47.0
|tip Downstairs inside the home on the nightstand next to the bed.
step
click The Old Gods and the Ordering of Azeroth##268080 |achieve 1244/33 |goto Ironforge 76.5,10.6
|tip On the center table.
step
click Charge of the Dragonflights##268049 |achieve 1244/6 |goto Ironforge 76.5,10.6
|tip On the center table.
step
click Ironforge - the Awakening of the Dwarves##268053 |achieve 1244/11 |goto Ironforge 75.1,9.1
|tip On the table.
step
click War of the Three Hammers##175739 |achieve 1244/41 |goto Ironforge 75.1,9.2
|tip On the table.
step
click Arathor and the Troll Wars##268046 |achieve 1244/3 |goto Ironforge 77.0,9.5
|tip On the table.
step
click Rise of the Horde##268060 |achieve 1244/18 |goto Ironforge 76.8,12.3
|tip On the table.
step
click The Invasion of Draenor##175747 |achieve 1244/28 |goto Scholomance/2 56.1,41.2
|tip This book is found after fighting Lilian Voss on the floor in the corner.
step
Make your way into The Scarlet Bastion |goto Stratholme/1 31.9,34.8 < 10 |walk
click The Seven Kingdoms##268083 |achieve 1244/36 |goto Stratholme/1 30.1,41.3
|tip On the table next to Commander Malor.
step
click Kel'Thuzad and the Forming of the Scourge##268054 |achieve 1244/12 |goto Stratholme/1 25.1,70.3
|tip On the table between the bookshelves.
step
click The Lich King Triumphant##268078 |achieve 1244/31 |goto Stratholme/1 25.5,70.5
|tip On the table between the bookshelves.
step
click Icecrown and the Frozen Throne##268043 |achieve 1244/10 |goto Stratholme/1 25.8,71.5
|tip On the table between the bookshelves.
step
click Sunwell - The Fall of Quel'Thalas##268065 |achieve 1244/20 |goto The Cape of Stranglethorn 41.0,74.4
|tip Inside the inn on the corner table right up the stairs.
step
click The Twin Empires##268084 |achieve 1244/37 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Empires' Fall##268051 |achieve 1244/8 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Wrath of Soulflayer##175856 |achieve 1244/42 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click The Scourge of Lordaeron##268081 |achieve 1244/34 |goto The Cape of Stranglethorn 41.9,73.5
|tip All the way downstairs on a bookshelf under the stairs in the same room as the auctioneer.
step
click The Sentinels and the Long Vigil##175732 |achieve 1244/35 |goto The Cape of Stranglethorn 42.1,73.6
|tip All the way upstairs on the nightstand next to the bed.
step
click Sargeras and the Betrayal##268061 |achieve 1244/19 |goto Northern Barrens 67.0,74.9
|tip In the Ratchet Inn on the nightstand between two beds.
step
click Exile of the High Elves##268052 |achieve 1244/9 |goto Northern Barrens 67.1,73.4
|tip In the Ratchet Blacksmith second floor on a barrel sitting on the balcony.
step
click Old Hatreds - The Colonization of Kalimdor##268058 |achieve 1244/16 |goto Tanaris 51.0,30.2
|tip In Godgetzan laying on the sand next to a set of baskets.
step
click The Betrayer Ascendant##268068 |achieve 1244/23 |goto Darnassus 62.0,74.6
|tip On the counter against the south west wall.
step
_Congratulations!_
You Earned the "Well Read" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\You'll Feel Right as Rain",{
achieveid={5779},
description="This guide will walk you through feeling 1000% better by eating Chocolate Cookies.",
},[[
step
_Click here_ to buy them from the Auction House |confirm |next "buy"
_Click here_ to make them yourself  |confirm |next "cook"
step
label "buy"
talk Auctioneer Fitch##8719
buy 91 Chocolate Cookie##62680 |n |goto Stormwind City 61.0,70.7
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779 |next "end"
step
label "cook"
Use the Stormwind City Cooking Dailies guide to
earn 6 Epicurean's Award##81 |tip Three for the recipe and the rest for the cocoa beans you'll need.
step
talk Bario Matalli##49701
buy Recipe: Chocolate Cookie##65431 |n
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |goto Stormwind City 50.4,71.8
step
talk Bario Matalli##49701
buy 2 Imported Supplies##68689 |n |tip If you need more buy another until you have 91 beans.
collect 91 Cocoa Beans##62786 |use Imported Supplies##68689 |goto Stormwind City 50.4,71.8
step
talk Erika Tate##5483
buy 91 Simple Flour##30817 |condition itemcount(30817) >= 91 |goto Stormwind City 77.6,53.1
step
Make a Cooking Fire |cast Cooking Fire##818
create 91 Chocolate Cookie##88013,Cooking,91 total |n
collect 91 Chocolate Cookie##62680
step
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779
step
label "end"
Congratulations, you have earned the You'll Feel Right as Rain achievement!
]])
ZGV.BETAEND()
