local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "LEG"

ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\POI Legion Rares",{
	hidden=true,
	poi=true,
	poitype=rare,
},[[
--//Azsuna\\--
step //1
	|poi_rare Cailyn Paledoom
	|poilvl 100
	|poispot Azsuna 52.38,23.04
	|poiquest 38268
	|poicurrency OR
	|poiitem 129063
	Follow the path up |goto Azsuna/0 52.02,17.67 < 10 |only if walking
	kill Cailyn Paledoom##91289 |q 38268 |future |goto Azsuna 52.38,23.04
step //2
	|poi_rare Doomlord Kazrok
	|poilvl 100
	|poispot Azsuna 43.17,28.13
	|poiquest 38352
	|poicurrency OR
	|poiitem 129056
	Go up the path |goto Azsuna/0 46.47,27.73 < 10 |only if walking
	kill Doomlord Kazrok##91579 |q 38352 |future |goto Azsuna 43.17,28.13
step //3
	|poi_rare Arcanist Shal'iman
	|poilvl 100
	|poispot Azsuna 34.96,33.91
	|poiquest 42505
	|poicurrency OR
	|poiitem 141868
	Follow the path |goto Azsuna 41.1,35.3 |only if walking
	kill Arcanist Shal'iman##107657 |q 42505 |future |goto Azsuna 34.96,33.91
step //4
	|poi_rare Houndmaster Stroxis
	|poilvl 100
	|poispot Azsuna 30.77,47.99
	|poiquest 42286
	|poicurrency OR
	|poiitem 141873
	kill Houndmaster Stroxis##107136 |q 42286 |future |goto Azsuna 30.77,47.99
step //5
	|poi_rare Bilebrain
	|poilvl 100
	|poispot Azsuna 29.27,53.66
	|poiquest 42417
	|poicurrency OR
	|poiitem 129079
	Go up the path |goto Azsuna/0 29.40,53.30 < 10 |only if walking
	kill Bilebrain##107327 |q 42417 |future |goto Azsuna 29.27,53.66
step //6
	|poi_rare Vorthax
	|poilvl 100
	|poispot Azsuna 37.37,43.18
	|poiquest 42280
	|poicurrency OR
	|poiitem 141875
	Go up the ramp |goto Azsuna/0 36.57,44.05 < 10 |only if walking
	kill Vorthax##107113 |q 42280 |future |goto Azsuna 37.37,43.18
step //7
	|poi_rare Beacher
	|poilvl 100
	|poispot Azsuna 32.29,29.72
	|poiquest 38238
	|poicurrency OR
	|poiitem 129067
	kill Beacher##91187 |q 38238 |future |goto Azsuna 32.29,29.72
	|tip He walks up and down the beach and may not be in this exact spot.
step //8
	|poi_rare Warbringer Mox'na
	|poilvl 100
	|poispot Azsuna 49.10,55.19
	|poiquest 37909
	|poicurrency OR
	|poiitem 129069
	kill Warbringer Mox'na##90164 |q 37909 |future |goto Azsuna 49.10,55.19
step //9
	|poi_rare Normantis the Deposed
	|poilvl 100
	|poispot Azsuna 49.50,08.80
	|poiquest 37928
	|poicurrency OR
	|poiitem 129061
	Enter the cave |goto Azsuna/0 50.18,7.70 < 10 |walk
	kill Normantis the Deposed##90217 |q 37928 |future |goto Azsuna 49.50,08.80
step //10
	|poi_rare Pridelord Meowl
	|poilvl 100
	|poispot Azsuna 56.10,29.06
	|poiquest 38061
	|poicurrency OR
	|poiitem 138395
	kill Pridelord Meowl##90901 |q 38061 |future |goto Azsuna 56.10,29.06
step //11
	|poi_rare Infernal Lord
	|poilvl 100
	|poispot Azsuna 35.30,50.30
	|poiquest 38037
	|poicurrency OR
	|poiitem 129083
	kill Infernal Lord##90803 |q 38037 |future |goto Azsuna 35.30,50.30
step //12
	|poi_rare Ragemaw
	|poilvl 100
	|poispot Azsuna 32.60,48.80
	|poiquest 44108
	|poicurrency OR
	|poiitem 129075
	Enter the cave |goto Azsuna 34.8,49.8 < 10 |walk
	kill Ragemaw##109504 |q 44108 |future |goto Azsuna 32.60,48.80
step //13
	|poi_rare Valyaka the Stormbringer
	|poilvl 100
	|poispot Azsuna 47.30,34.60
	|poiquest 37726
	|poiitem 129082
	kill Valyaka the Stormbringer##???? |q 37726 |future |goto Azsuna 47.30,34.60
step //14
	|poi_rare Daggerbeak
	|poilvl 100
	|poispot Azsuna 51.08,31.69
	|poiquest 37869
	|poicurrency OR
	|poiitem 129084
	kill Daggerbeak##90057 |q 37869 |future |goto Azsuna 51.08,31.69
step //15
	|poi_rare Arcavellus
	|poilvl 100
	|poispot Azsuna/0 59.84,12.08
	|poiquest 37932
	|poicurrency OR
	|poiitem 129085
	kill Rift Wyrm##90242+
	kill Arcavellus##90244 |q 37932 |future |goto Azsuna/0 59.84,12.08
step //16
	|poi_rare Flog the Captain-Eater
	|poilvl 100
	|poispot Azsuna 45.30,57.80
	|poiquest 37824
	|poicurrency OR
	|poiitem 129090
	kill Flog the Captain-Eater##89884 |q 37824 |future |goto Azsuna 45.30,57.80
	|tip You may need a group to defeat him.
step //17
	|poi_rare Chief Bitterbrine
	|poilvl 100
	|poispot Azsuna 65.54,56.79
	|poiquest 42221
	|poicurrency OR
	|poiitem 129073
	Swim through a window underwater |goto Azsuna/0 65.24,56.80 < 6 |walk
	kill Chief Bitterbrine##106990 |q 42221 |future |goto Azsuna 65.54,56.79
	|tip He is underwater in the back of the ship.
step //18
	|poi_rare Tide Behemoth
	|poilvl 100
	|poispot Azsuna 61.30,62.00
	|poiquest 38217
	|poiitem 129062
	kill Tide Behemoth##91113 |q 38217 |future |goto Azsuna 61.30,62.00
step //19
	|poi_rare The Oracle
	|poilvl 100
	|poispot Azsuna 59.70,55.20
	|poiquest 37822
	|poicurrency OR
	|poiitem 129065
	Go up the stairs |goto Azsuna/0 59.68,54.64 < 10 |only if walking
	kill The Oracle##89850 |q 37822 |future |goto Azsuna 59.70,55.20
step //20
	|poi_rare Ravyn-Drath
	|poilvl 100
	|poispot Azsuna 41.05,41.78
	|poiquest 37537
	|poicurrency OR
	|poiitem 129080
	kill Ravyn-Drath##89016 |q 37537 |future |goto Azsuna 41.05,41.78
step //21
	|poi_rare Syphonus/Leodrath
	|poilvl 100
	|poispot Azsuna 67.10,51.40
	|poiquest 37989
	|poiitem 129064
	kill Syphonus/Leodrath##???? |q 37989 |future |goto Azsuna 67.10,51.40
step //22
	|poi_rare Mrrgrl the Tidereaver
	|poilvl 100
	|poispot Azsuna 50.00,34.40
	|poiquest 37823
	|poiitem 129072
	kill Mrrgrl the Tidereaver##???? |q 37823 |future |goto Azsuna 50.00,34.40
step //23
	|poi_rare Captain Volo'ren
	|poilvl 100
	|poispot Azsuna 53.40,44.00
	|poiquest 37821
	|poicurrency OR
	|poiitem 129066
	Go up the stairs |goto Azsuna/0 51.61,44.69 < 10 |only if walking
	Cross the bridge |goto 52.80,45.32 < 5 |only if walking
	kill Captain Volo'ren##89846 |q 37821 |future |goto Azsuna 53.40,44.00
step //24
	|poi_rare Brawlgoth
	|poilvl 100
	|poispot Azsuna 55.10,45.90
	|poiquest 42450
	|poicurrency OR
	|poiitem 129086
	kill Brawlgoth##107127 |q 42450 |future |goto Azsuna 55.10,45.90
	|tip He is on the upper platform.
step //25
	|poi_rare Golza the Iron Fin
	|poilvl 100
	|poispot Azsuna 65.16,40.00
	|poiquest 37820
	|poicurrency OR
	|poiitem 129091
	click Horn of the Siren##243009
	kill Hatecoil Deepsinger##90774+, Hatecoil Reservist##90778+
	kill Golza the Iron Fin##89816 |q 37820 |future |goto Azsuna 65.16,40.00
step //26
	|poi_rare Brogozog
	|poilvl 100
	|poispot Azsuna 59.30,46.30
	|poiquest 38212
	|poicurrency OR
	|poiitem 129068
	Go up the path |goto Azsuna 58.9,50.0 < 10 |only if walking
	talk Tehd Shoemaker##91097 |goto Azsuna/0 59.30,46.42 < 5
	kill Brogozog##91100 |q 38212 |future |goto Azsuna 59.30,46.30
step //27
	|poi_rare Broodmother Lizax
	|poilvl 100
	|poispot Azsuna 33.40,41.20
	|poiquest 44670
	|poicurrency OR
	|poiitem 141869
	Enter the cave |goto Azsuna/0 33.32,42.50 < 10 |walk
	kill Broodmother Lizax##107105 |q 44670 |future |goto Azsuna 33.40,41.20
step //28
	|poi_rare Felwing
	|poilvl 100
	|poispot Azsuna 43.57,24.44
	|poiquest 42069
	|poiitem 129087
	Go up the path |goto Azsuna/0 39.14,32.84 < 10 |only if walking
	Continue up the mountain |goto Azsuna/0 39.11,26.88 < 10 |only if walking
	Go up the stairs |goto 43.62,24.03 < 10 |only if walking
	talk Tehd Shoemaker##91097 |goto 43.56,24.48 < 5
	kill Felwing##105197 |q 42069 |future |goto Azsuna 43.57,24.44
step //29
	|poi_rare Coura, Mistress of Arcana
	|poilvl 100
	|poispot Azsuna/19 62.52,30.72
	|poiquest 42699
	|poicurrency OR
	|poiitem 141877
	Enter the temple |goto Azsuna/0 56.04,68.69 < 10 |walk
	kill Coura, Mistress of Arcana##108255 |q 42699 |future |goto Azsuna/19 62.52,30.72
step //30
	|poi_rare Inquisitor Tivos
	|poilvl 100
	|poispot Azsuna/0 28.4,52.1
	|poiquest 42376
	|poicurrency OR
	|poiitem 141874
	click Legion Portal##267226 |goto Azsuna/0 26.82,49.06 < 5 |walk
	Go down the path |goto Azsuna/0 27.56,52.19 < 10
	kill Inquisitor Tivos##107269 |q 42376 |future |goto Azsuna/0 28.4,52.1
--//Val'sharah\\--
step //31
	|poi_rare Elindya Featherlight
	|poilvl 100
	|poispot Val'sharah 60.42,90.72
	|poiquest 38887
	|poiitem 130115
	clicknpc Elindya Featherlight##92334 |goto Val'sharah 60.42,90.72 < 5 |walk
	|tip Follow Elindya as she walks.
	kill Skul'vrax##93654 |q 38887 |future |goto Val'sharah 60.88,87.91
step //32
	|poi_rare Gorebeak
	|poilvl 100
	|poispot Val'sharah 59.75,77.59
	|poiquest 38468
	|poicurrency OR
	|poiitem 130154
	talk Lorel Sagefeather##92111 |goto Val'sharah/0 59.80,77.37 < 5 
	kill Gorebeak##92117 |q 38468 |future |goto Val'sharah 59.75,77.59
	|tip You may need a group to defeat him.
step //33
	|poi_rare Shivering Ashmaw Cub
	|poilvl 100
	|poispot Val'sharah 52.78,87.50
	|poiquest 38889
	|poiitem 128690
	Enter the cave |goto Val'sharah/0 53.07,87.78 < 10 |walk
	talk Shivering Ashmaw Cub##93677
	|tip Defeat the waves of enemies that come.
	accept Adopting the Adorable##38889 |future |goto Val'sharah 52.78,87.50
	
step //34
	|poi_rare Grelda the Hag
	|poilvl 100
	|poispot Val'sharah 65.80,53.44
	|poiquest 40126
	|poicurrency OR
	|poiitem 130122
	Enter the cave |goto Val'sharah/0 66.09,52.60 < 10 |walk
	kill Grelda the Hag##95123 |q 40126 |future |goto Val'sharah 65.80,53.44
step //35
	|poi_rare Thondrax
	|poilvl 100
	|poispot Val'sharah 62.60,47.50
	|poiquest 38780
	|poicurrency OR
	|poiitem 130121
	kill Thondrax##93205 |q 38780 |future |goto Val'sharah 62.60,47.50
step //36
	|poi_rare Dreadbog
	|poilvl 100
	|poispot Val'sharah 60.31,44.27
	|poiquest 39858
	|poicurrency OR
	|poiitem 130125
	kill Dreadbog##97517 |q 39858 |future |goto Val'sharah 60.31,44.27
step //37
	|poi_rare Darkshade
	|poilvl 100
	|poispot Val'sharah 44.14,52.09
	|poiquest 38767
	|poicurrency OR
	|poiitem 130166
	Follow the road |goto Val'sharah 37.74,56.26 < 10 |only if walking
	Enter Black Rook Hold |goto Val'sharah/0 39.00,53.73 < 10 |walk
	kill Darkshade##92965 |q 38767 |future |goto Val'sharah 44.14,52.09
	|tip He walks around this area.
step //38
	|poi_rare Perrexx
	|poilvl 100
	|poispot Val'sharah 61.05,69.40
	|poiquest 39596
	|poiitem 130137
	kill Perrexx##95318 |q 39596 |future |goto Val'sharah 61.05,69.40
step //39
	|poi_rare Bahagar
	|poilvl 100
	|poispot Val'sharah 45.59,88.79
	|poiquest 43446
	|poicurrency OR
	|poiitem 130135
	Follow the path |goto Val'sharah 45.9,85.06 < 10 |only if walking
	Enter the cave |goto Val'sharah/0 45.38,88.30 < 10 |walk
	kill Bahagar##110562 |q 43446 |future |goto Val'sharah 45.59,88.79
step //40
	|poi_rare Mad Henryk
	|poilvl 100
	|poispot Val'sharah 47.22,58.02
	|poiquest 39357
	|poicurrency OR
	|poiitem 130214
	Step into the Old Bear Trap
	kill Mad Henryk##95221 |q 39357 |future |goto Val'sharah 47.22,58.02
	|tip When he summons copies of himself walk into them to find the real one.
step //41
	|poi_rare Kiranys Duskwhisper
	|poilvl 100
	|poispot Val'sharah 34.42,58.28
	|poiquest 39121
	|poicurrency OR
	|poiitem 141876
	Go up the path |goto Val'sharah/0 35.03,59.57 < 10 |only if walking
	click Vibrating Arcane Trap##243099
	kill Kiranys Duskwhisper##94414 |q 39121 |future |goto Val'sharah 34.42,58.28
step //42
	|poi_rare Ironbranch
	|poilvl 100
	|poispot Val'sharah 58.77,34.02
	|poiquest 40080
	|poicurrency 1220
	kill Ironbranch##93030 |q 40080 |future |goto Val'sharah 58.77,34.02
step //43
	|poi_rare Lyrath Moonfeather
	|poilvl 100
	|poispot Val'sharah 61.79,29.54
	|poiquest 40079
	|poicurrency OR
	|poiitem 130118
	kill Lyrath Moonfeather##98241 |q 40079 |future |goto Val'sharah 61.79,29.54
step //44
	|poi_rare Wraithtalon
	|poilvl 100
	|poispot Val'sharah 66.87,36.86
	|poiquest 39856
	|poicurrency OR
	|poiitem 130116
	Follow the path |goto Val'sharah/0 65.79,41.01 < 10 |only if walking
	Go up the hill |goto 67.61,37.49 < 10 |only if walking
	kill Wraithtalon##97504 |q 39856 |future |goto Val'sharah 66.87,36.86
step //45
	|poi_rare Undergrell Attack
	|poilvl 100
	|poispot Val'sharah 67.03,69.58
	|poiquest 43176
	|poiitem 130133
	kill Frantic Stag##109695, Crazed Undergrell##109714, Frantic Mauler##109694
	|tip Defeat the enemies that attack in waves.
	kill Undergrell Ringleader##109708 |q 43176 |future |goto Val'sharah 67.03,69.58
step //46
	|poi_rare Theryssia
	|poilvl 100
	|poispot Val'sharah 38.06,52.81
	|poiquest 38772
	|poicurrency OR
	|poiitem 130136
	clicknpc Theryssia##94194 |goto Val'sharah/0 37.95,52.81 < 5 |walk
	kill Theryssia##92423 |q 38772 |future |goto Val'sharah 38.06,52.81
step //47
	|poi_rare Seersei
	|poilvl 100
	|poispot Val'sharah 41.64,78.27
	|poiquest 38479
	|poicurrency OR
	|poiitem 130171
	kill Seersei##92180 |q 38479 |future |goto Val'sharah 41.64,78.27
step //48
	|poi_rare Pollous the Fetid
	|poilvl 100
	|poispot Val'sharah 67.50,45.10
	|poiquest 39130
	|poicurrency OR
	|poiitem 130168
	kill Pollous the Fetid##94485 |q 39130 |future |goto Val'sharah 67.50,45.10
--//Highmountain\\--
step //49
	|poi_rare Devouring Darkness
	|poilvl 100
	|poispot Highmountain 54.44,41.25
	|poiquest 40414
	|poicurrency OR
	|poiitem 131780
	Enter the cave |goto Highmountain/0 55.1,44.3 < 10 |walk
	Follow the path |goto Highmountain/0 55.10,41.88 < 10 |walk
	clicknpc Kobold Candle##97543+ |goto 54.44,41.25 < 5 |walk
	|tip Click all the candles to summon the Devouring Darkness.
	kill Devouring Darkness##100495 |q 40414 |future |goto Highmountain 54.44,41.25
step //50
	|poi_rare Taurson
	|poilvl 100
	|poispot Highmountain 53.75,51.23
	|poiquest 39872
	|poiitem 131800
	Follow the path |goto Highmountain/0 55.41,47.46 < 10 |only if walking
	Enter the cave |goto Highmountain/0 54.20,50.73 < 10 |walk
	talk Taurson##97653
	kill Taurson##97653
	click Taurson's Prize##244628 |q 39872 |future |goto Highmountain 53.75,51.23
step //51
	|poi_rare Slumber
	|poilvl 100
	|poispot Highmountain 41.51,31.84
	|poiquest 40175
	|poicurrency OR
	|poiitem 131921
	kill Slumber##98890 |q 40175 |future |goto Highmountain 41.51,31.84
step //52
	|poi_rare Majestic Elderhorn
	|poilvl 100
	|poispot Highmountain 46.64,31.44
	|poiquest 39646
	|poicurrency OR
	|poiitem 131900
	kill Majestic Elderhorn##96410 |q 39646 |future |goto Highmountain 46.64,31.44
	|tip Majestic Elderhorn runs around a large area. It is easiest to stand in this spot and wait.
step //53
	|poi_rare Mellok, Son of Torok
	|poilvl 100
	|poispot Highmountain 49.20,27.09
	|poiquest 40242
	|poicurrency OR
	|poiitem 131808
	Go up the path |goto Highmountain/0 47.49,29.16 < 10 |only if walking
	kill Mellok, Son of Torok##96621 |q 40242 |future |goto Highmountain 49.20,27.09
step //54
	|poi_rare Flamescale
	|poilvl 100
	|poispot Highmountain 40.97,57.75
	|poiquest 39963
	|poicurrency OR
	|poiitem 131773
	click Abandoned Fishing Pole##244667
	kill Flamescale##97793 |q 39963 |future |goto Highmountain 40.97,57.75
step //55
	|poi_rare Sekhan
	|poilvl 100
	|poispot Highmountain 45.70,55.00
	|poiquest 40681
	|poicurrency OR
	|poiitem 131730
	kill Sekhan##101077 |q 40681 |future |goto Highmountain 45.70,55.00
step //56
	|poi_rare Hartli the Snatcher
	|poilvl 100
	|poispot Highmountain 51.07,48.25
	|poiquest 39802
	|poicurrency OR
	|poiitem 138783
	Follow the path up Windripper Peak |goto Highmountain/0 53.20,48.01 < 10 |only if walking
	kill Hartli the Snatcher##97326 |q 39802 |future |goto Highmountain 51.07,48.25
step //57
	|poi_rare Amateur Hunters
	|poilvl 100
	|poispot Highmountain 43.16,48.00
	|poiquest 40413
	|poiitem 131781
	Enter the cave |goto Highmountain 43.16,48.00 < 10 |walk
	kill Dargok Thunderuin##100231, "Sure-Shot" Arnie##100230, Ryael Dawndrifter##100232
	click Battered Chest##245479 |q 40413 |future |goto Highmountain/0 43.46,47.37
step //58
	|poi_rare Frostshard
	|poilvl 110
	|poispot Highmountain 54.44,74.54
	|poiquest 40773
	|poicurrency OR
	Follow the path |goto Highmountain/0 54.52,73.19 < 25 |only if walking
	kill Frostshard##101649 |q 40773 |future |goto Highmountain 54.44,74.54
	|tip He patrols up and down the ravine.
	|tip You may need a group to defeat him.
step //59
	|poi_rare Skullhat
	|poilvl 100
	|poispot Highmountain 51.46,31.89
	|poiquest 39465
	|poicurrency OR
	|poiitem 131769
	Enter the cave |goto Highmountain 50.85,31.97 < 10 |walk
	kill Skullhat##95872 |q 39465 |future |goto Highmountain 51.46,31.89
step //60
	|poi_rare Tenpak Flametotem
	|poilvl 100
	|poispot Highmountain 41.94,41.49
	|poiquest 39782
	|poicurrency OR
	|poiitem 129175
	Follow the path |goto Highmountain 44.44,32.34 < 10 |only if walking
	Continue on the path up the mountain |goto Highmountain/0 44.66,35.44 < 10 |only if walking
	kill Tenpak Flametotem##97203 |q 39782 |future |goto Highmountain 41.94,41.49
step //61
	|poi_rare Beastmaster Pao'lek
	|poilvl 100
	|poispot Highmountain 48.60,50.00
	|poiquest 39784
	|poiitem 131756
	Go up the steep mountain path |goto Highmountain/0 46.56,49.68 < 10 |only if walking
	talk Beastmaster Pao'lek##97215 |goto Highmountain 48.65,50.09 < 5 
	kill Arru##97220 |q 39784 |future |goto Highmountain 48.91,49.93
step //62
	|poi_rare Bristlemaul
	|poilvl 100
	|poispot Highmountain 38.08,45.59
	|poiquest 40405
	|poicurrency OR
	|poiitem 131761
	Enter the cave |goto Highmountain 37.70,45.70 < 10 |walk
	kill Bristlemaul##97449 |q 40405 |future |goto Highmountain/0 38.08,45.59
step //63
	|poi_rare Crab Rider Grmlrml
	|poilvl 100
	|poispot Highmountain 44.20,12.10
	|poiquest 39994
	|poicurrency OR
	|poiitem 131798
	kill Crab Rider Grmlrml##97933 |q 39994 |future |goto Highmountain 44.20,12.10
step //64
	|poi_rare Mrrklr
	|poilvl 100
	|poispot Highmountain 46.50,07.44
	|poiquest 40096
	|poicurrency OR
	|poiitem 131797
	talk Sloppy "Sloppy Joe" Joe##98754 |goto Highmountain/0 46.64,7.43 < 5
	kill Mrrklr##98311 |q 40096 |future |goto Highmountain 46.69,7.31
step //65
	|poi_rare Gurbog da Basher
	|poilvl 100
	|poispot Highmountain 56.40,60.50
	|poiquest 40347
	|poicurrency OR
	|poiitem 131775
	kill Gurbog da Basher##96590 |q 40347 |future |goto Highmountain 56.40,60.50
	|tip He walks around the area and might not be in this exact spot.
step //66
	|poi_rare Brogul the Mighty
	|poilvl 100
	|poispot Highmountain 56.35,72.50
	|poiquest 39235
	|poiitem 138396
	Follow the path up |goto Highmountain/0 58.97,68.79 < 10 |only if walking
	Continue up the mountain |goto 57.98,73.73 < 10 |only if walking
	kill Brogul the Mighty##94877 |q 39235 |future |goto Highmountain 56.35,72.50
step //67
	|poi_rare Bodash the Hoarder
	|poilvl 100
	|poispot Highmountain 36.74,16.35
	|poiquest 40084
	|poicurrency OR
	|poiitem 131799
	kill Bodash the Hoarder##98299 |q 40084 |future |goto Highmountain 36.74,16.35
step //68
	|poi_rare Majestic Elderhorn
	|poilvl 100
	|poispot Highmountain 48.50,25.46
	|poiquest 39646
	|poicurrency OR
	|poiitem 131900
	kill Majestic Elderhorn##96410 |q 39646 |future |goto Highmountain 48.50,25.46
	|tip It runs around the area and may not be in this exact spot.
step //69
	|poi_rare Shara Felbreath
	|poilvl 100
	|poispot Highmountain 51.06,25.70
	|poiquest 39762
	|poicurrency OR
	|poiitem 131791
	kill Shara Felbreath##97093 |q 39762 |future |goto Highmountain 51.06,25.70
step //70
	|poi_rare Crawshuk the Hungry
	|poilvl 100
	|poispot Highmountain 48.41,40.15
	|poiquest 39806
	|poicurrency OR
	|poiitem 131809
	Go up the path |goto Highmountain/0 49.50,39.71 < 10 |only if walking
	kill Crawshuk the Hungry##97345 |q 39806 |future |goto Highmountain 48.41,40.15
step //71
	|poi_rare Mynta Talonscreech
	|poilvl 100
	|poispot Highmountain 54.50,40.60
	|poiquest 39866
	|poicurrency OR
	|poiitem 131792
	Follow the path up the mountain |goto Highmountain 53.48,35.60 < 10 |only if walking
	talk Scout Harefoot##97579 |goto Highmountain/0 54.54,40.63 < 5 
	kill Vilewing Ambusher##97591+
	kill Mynta Talonscreech##97593 |q 39866 |future |goto Highmountain 54.50,40.60
step //72
	|poi_rare Luggut the Eggeater
	|poilvl 100
	|poispot Highmountain 50.80,34.60
	|poiquest 40406
	|poicurrency OR
	|poiitem 131776
	Enter the cave |goto Highmountain 51.6,37.5 < 10 |walk
	Jump down here |goto Highmountain/0 50.63,35.91 < 10 |walk
	kill Luggut the Eggeater##98024 |q 40406 |future |goto Highmountain 50.80,34.60
	|tip It is at the bottom of the cave.
step //73
	|poi_rare Unethical Adventurers
	|poilvl 100
	|poispot Highmountain 52.56,58.38
	|poiquest 40423
	|poiitem 131767
	Enter the cave |goto Highmountain/0 52.27,58.58 < 10 |walk
	click Seemingly Unguarded Treasure##253994 |goto Highmountain/0 52.76,58.18 < 5 |walk
	kill Xaander##109498, Zenobia##100303, Puck##100302, Darkful##109501, Jak##109500
	Defeat the Unethical Adventurers |q 40423 |future |goto Highmountain 52.56,58.38
step //74
	|poi_rare Oubdob Da Smasher
	|poilvl 100
	|poispot Highmountain 47.6,73.8
	|poiquest 39435
	|poiitem 131793
	|poicurrency OR
	Follow the path |goto Highmountain 48.23,68.96 < 10 |only if walking
	kill Oubdob Da Smasher##95204 |q 39435 |future |goto Highmountain 47.6,73.8
	|tip This Rare is only here when the Danger: Oubdob Da Smasher world quest is active.
--//Stormheim\\--
step //75
	|poi_rare Thane Irglov the Merciless
	|poilvl 100
	|poispot Stormheim 40.67,72.38
	|poiquest 38424
	|poicurrency OR
	|poiitem 129113
	Enter the building |goto Stormheim/0 42.18,70.92 < 10 |walk
	kill Erling the Lightningborn##91893, Asger Jarlborn##91895, Strider Cuyler##91894 |goto Stormheim/0 41.18,71.89 < 5 |walk
	kill Thane Irglov the Merciless##91892 |q 38424 |future |goto Stormheim 40.67,72.38
step //76
	|poi_rare Bloodstalker Alpha
	|poilvl 100
	|poispot Stormheim 38.45,43.05
	|poiquest 38626
	|poicurrency OR
	|poiitem 129101
	kill Bloodstalker Alpha##92599 |q 38626 |future |goto Stormheim 38.45,43.05
	|tip It runs around the area and may not be in this exact spot.
step //77
	|poi_rare Starbuck
	|poilvl 100
	|poispot Stormheim 54.80,29.41
	|poiquest 42437
	|poicurrency OR
	|poiitem 130132
	kill Starbuck##107487 |q 42437 |future |goto Stormheim 54.80,29.41
step //78
	|poi_rare Inquisitor Ernstenbok
	|poilvl 100
	|poispot Stormheim 63.70,74.22
	|poiquest 37908
	|poicurrency OR
	|poiitem 140686
	Enter the cave |goto Stormheim/0 62.35,75.01 < 10 |walk
	kill Inquisitor Ernstenbok##90139 |q 37908 |future |goto Stormheim 63.70,74.22
step //79
	|poi_rare Kottr Vondyr
	|poilvl 100
	|poispot Stormheim 73.45,47.63
	|poiquest 40109
	|poicurrency OR
	|poiitem 138419
	Enter Inkbinder's Rise |goto Stormheim/0 71.44,47.12 < 10
	kill Kottr Vondyr##98421 |q 40109 |future |goto Stormheim 73.45,47.63
step //80
	|poi_rare Grrvrgull the Conqueror
	|poilvl 100
	|poispot Stormheim 78.62,61.16
	|poiquest 40113
	|poicurrency OR
	|poiitem 138421
	kill Grrvrgull the Conqueror##98503 |q 40113 |future |goto Stormheim 78.62,61.16
step //81
	|poi_rare Whitewater Typhoon
	|poilvl 100
	|poispot Stormheim 36.49,51.75
	|poiquest 38472
	|poicurrency OR
	|poiitem 138418
	kill Whitewater Typhoon##92152 |q 38472 |future |goto Stormheim 36.49,51.75
step //82
	|poi_rare Tiptog the Lost
	|poilvl 100
	|poispot Stormheim 47.17,49.83
	|poiquest 38774
	|poicurrency OR
	|poiitem 129163
	kill Tiptog the Lost##93166 |q 38774 |future |goto Stormheim 47.17,49.83
	|tip He walks around the area and may not be in this exact spot.
step //83
	|poi_rare Fathnyr
	|poilvl 100
	|poispot Stormheim 46.82,84.06
	|poiquest 38425
	|poicurrency OR
	|poiitem 129206
	clicknpc Grapple Point##110334 |goto Stormheim/0 45.93,82.54 < 5 |only if walking
	Enter the cave |goto 46.29,82.87 < 10 |walk
	kill Fathnyr##91803 |q 38425 |future |goto Stormheim 46.82,84.06
	|tip It is inside the cave at the top of Thorim's Peak.
step //84
	|poi_rare Urgev the Flayer
	|poilvl 100
	|poispot Stormheim 64.80,51.76
	|poiquest 38847
	|poicurrency OR
	|poiitem 129219
	kill Urgev the Flayer##93401 |q 38847 |future |goto Stormheim 64.80,51.76
step //85
	|poi_rare Dread-Rider Cortis
	|poilvl 100
	|poispot Stormheim 73.90,60.60
	|poiquest 43343
	|poicurrency OR
	|poiitem 130134
	kill Dread-Rider Cortis##94347 |q 43343 |future |goto Stormheim 73.90,60.60
	|tip He flies around the area on a large bat.
	only Alliance
step //86
	|poi_rare Isel the Hammer
	|poilvl 100
	|poispot Stormheim 62.03,60.49
	|poiquest 39120
	|poicurrency OR
	|poiitem 129133
	Enter the building |goto Stormheim 61.8,60.9 < 10 |walk
	kill Isel the Hammer##94413 |q 39120 |future |goto Stormheim 62.03,60.49
step //87
	|poi_rare Ivory Sentinel
	|poilvl 100
	|poispot Stormheim 59.82,68.07
	|poiquest 39031
	|poicurrency OR
	|poiitem 132895
	kill Ivory Sentinel##92751 |q 39031 |future |goto Stormheim 59.82,68.07
step //88
	|poi_rare Glimar Ironfist
	|poilvl 100
	|poispot Stormheim 41.47,67.02
	|poiquest 38333
	|poicurrency OR
	|poiitem 129291
	clicknpc Grapple Point##110334 |goto Stormheim/0 41.43,65.67 < 5 |only if walking
	kill Glimar Ironfist##91529 |q 38333 |future |goto Stormheim/0 41.55,66.56
step //89
	|poi_rare Stormwing Matriarch
	|poilvl 100
	|poispot Stormheim 49.50,71.75
	|poiquest 38423
	|poiitem 129208
	Follow the path up |goto Stormheim/0 51.58,76.58 < 25 |only if walking
	kill Stormwing Matriarch##91795 |q 38423 |future |goto Stormheim 49.50,71.75
step //90
	|poi_rare Hannval the Butcher
	|poilvl 100
	|poispot Stormheim 51.60,74.65
	|poiquest 42591
	|poicurrency OR
	|poiitem 138417
	Follow the path |goto Stormheim/0 56.55,75.63 < 10 |only if walking
	Continue up the path |goto Stormheim/0 57.35,79.10 < 10 |only if walking
	kill Hannval the Butcher##107926 |q 42591 |future |goto Stormheim 51.60,74.65
step //91
	|poi_rare Bladesquall
	|poilvl 100
	|poispot Stormheim 45.87,77.36
	|poiquest 38431
	|poicurrency OR
	|poiitem 129048
	clicknpc Grapple Point##110334 |goto Stormheim/0 46.36,74.37 < 5 |only if walking
	Follow the narrow path up |goto 46.68,75.28 < 10 |only if walking
	kill Bladesquall##91874 |q 38431 |future |goto Stormheim 45.87,77.36
step //92
	|poi_rare Tarben
	|poilvl 100
	|poispot Stormheim 61.53,43.33
	|poiquest 40081
	|poicurrency OR
	|poiitem 129199
	clicknpc Grapple Point##110334 |goto Stormheim/0 60.37,43.81 < 5 |only if walking
	clicknpc Grapple Point##110334 |goto 60.90,43.91 < 5 |only if walking
	kill Tarben##98268 |q 40081 |future |goto Stormheim 61.53,43.33
step //93
	|poi_rare Captain Brvet
	|poilvl 100
	|poispot Stormheim 58.00,45.16
	|poiquest 38642
	|poicurrency OR
	|poiitem 129123
	click Horn of the Hellmouth
	kill Captain Brvet##92685 |q 38642 |future |goto Stormheim 58.00,45.16
	|tip You will need to kill two raiders before Brvet leaves the boat.
step //94
	|poi_rare Roteye
	|poilvl 100
	|poispot Stormheim 58.35,33.92
	|poiquest 43342
	|poicurrency OR
	|poiitem 139387
	Enter the cave |goto Stormheim 57.7,34.8 < 10 |walk
	|tip It's down in Tideskorn Harbor.
	kill Roteye##110363 |q 43342 |future |goto Stormheim 58.35,33.92
step //95
	|poi_rare Mordvigbjorn
	|poilvl 100
	|poispot Stormheim 72.50,49.91
	|poiquest 38837
	|poicurrency OR
	|poiitem 129035
	kill Mordvigbjorn##93371 |q 38837 |future |goto Stormheim 72.50,49.91
step //96
	|poi_rare The Nameless King
	|poilvl 100
	|poispot Stormheim 67.30,39.90
	|poiquest 38685
	|poicurrency OR
	|poiitem 129041
	click Offering Shrine##241568
	kill The Nameless King##92763 |q 38685 |future |goto Stormheim 67.30,39.90
step //97
	|poi_rare Egyl the Enduring
	|poilvl 100
	|poispot Stormheim 41.77,34.11
	|poiquest 40068
	|poicurrency OR
	|poiitem 132898
	Enter the cave |goto Stormheim 41.4,31.9 < 10 |walk
	kill Egyl the Enduring##98188 |q 40068 |future |goto Stormheim 41.77,34.11
step //98
	|poi_rare Fenri
	|poilvl 100
	|poispot Helheim/0 84.83,49.86
	|poiquest 38461
	|poicurrency OR
	|poiitem 129044
	Follow the path down |goto Stormheim/0 72.78,40.59 < 10 |only if completedq(39855)
	Use the portal back to Helheim |goto Stormheim 73.64,39.36 < 10 |only if completedq(39855)
	Enter the cave |goto Helheim/0 82.02,43.54 < 10 |walk
	kill Fenri##92040 |q 38461 |future |goto Helheim/0 84.83,49.86
step //99
	|poi_rare Soulthirster
	|poilvl 100
	|poispot Helheim/0 28.69,63.65
	|poiquest 39870
	|poicurrency OR
	|poiitem 129188
	Follow the path down |goto Stormheim/0 72.78,40.59 < 10 |only if completedq(39855)
	Use the portal back to Helheim |goto Stormheim 73.64,39.36 < 10 |only if completedq(39855)
	kill Soulthirster##97630 |q 39870 |future |goto Helheim/0 28.69,63.65
step //100
	|poi_rare Horde Kill Squad
	|poilvl 100
	|poispot Stormheim 44.20,22.96
	|poiquest 38630
	|poiitem 129266
	Follow the path up |goto Stormheim/0 49.15,31.35 < 20 |only if walking
	Follow the path |goto 47.59,32.28 < 20 |only if walking
	Drop down |goto 43.01,27.99 < 10 |only if walking
	Follow the path |goto 43.78,25.32 < 20 |only if walking
	kill Deathguard Adams##92626, Dark Ranger Jess##92631, Apothecary Perez##92634, Assassin Huwe##92633
	Defeat the Horde Kill Squad |q 38630 |future |goto Stormheim 44.20,22.96
	only Alliance
step //101
	|poi_rare Hook and Sinker
	|poilvl 100
	|poispot Stormheim 42.01,57.67
	|poiquest 38625
	|poiitem 129100
	kill Hook##92590, Sinker##92591
	Defeat Hook and Sinker |q 38625 |future |goto Stormheim 42.01,57.67
	only Alliance
--//Suramar\\--
step //102
	|poi_rare Maia the White
	|poilvl 110
	|poispot Suramar 24.39,35.17
	|poiquest 44071
	|poiitem 139897
	|poicurrency OR
	kill Maia the White##112497 |q 44071 |future |goto Suramar 24.39,35.17
step //103
	|poi_rare Shadowquill
	|poilvl 110
	|poispot Suramar 16.70,27.04
	|poiquest 43996
	|poicurrency AM
	|poiitem 140401
	kill Shadowquill##103841 |q 43996 |future |goto Suramar 16.70,27.04
step //104
	|poi_rare Mar'tura
	|poilvl 110
	|poispot Suramar 13.53,53.44
	|poiquest 44124
	|poicurrency AM
	|poiitem 140949
	kill Mar'tura##112802 |q 44124 |future |goto Suramar 13.53,53.44
step //105
	|poi_rare Tideclaw
	|poilvl 110
	|poispot Suramar/0 18.55,61.14
	|poiquest 43542
	|poicurrency AM
	|poiitem 140399
	kill Tideclaw##110824 |q 43542 |future |goto Suramar/0 18.55,61.14
step //106
	|poi_rare Matron Hagatha
	|poilvl 110
	|poispot Suramar 36.18,33.81
	|poiquest 43718
	|poicurrency OR
	|poiitem 140390
	Follow the path |goto Suramar 40.3,26.2 < 10 |only if walking
	Enter the cave |goto Suramar/0 35.87,34.54 < 10 |walk
	kill Matron Hagatha##111329 |q 43718 |future |goto Suramar 36.18,33.81
step //107
	|poi_rare Artificer Lothaire
	|poilvl 110
	|poispot Suramar 33.78,15.09
	|poiquest 43717
	|poicurrency AM
	|poiitem 140372
	kill Damaged Spell Seeker Construct##106349+
	|tip Kill the constructs as they become active.
	kill Artificer Lothaire##106351 |q 43717 |future |goto Suramar 33.78,15.09
step //108
	|poi_rare Reef Lord Raj'his
	|poilvl 110
	|poispot Suramar 75.52,57.29
	|poiquest 44003
	|poicurrency AM
	|poiitem 121801
	kill Reef Lord Raj'his##103575 |q 44003 |future |goto Suramar 75.52,57.29
step //109
	|poi_rare Rok'nash
	|poilvl 110
	|poispot Suramar 80.15,70.00
	|poiquest 40680
	|poicurrency AM
	|poiitem 140019
	kill Rok'nash##103183 |q 40680 |future |goto Suramar 80.15,70.00
step //110
	|poi_rare Har'kess the Insatiable
	|poilvl 110
	|poispot Suramar 67.67,71.06
	|poiquest 41136
	|poicurrency AM
	|poiitem 140381
	Enter the cave |goto Suramar 72.39,68.08 < 10 |walk
	kill Har'kess the Insatiable##103214 |q 41136 |future |goto Suramar 67.67,71.06
step //111
	|poi_rare Degren
	|poilvl 110
	|poispot Suramar 54.43,56.12
	|poiquest 43792
	|poicurrency AM
	|poiitem 121808
	kill Degren##111651 |q 43792 |future |goto Suramar 54.43,56.12
	|tip Clear the area of enemies before pulling Degren.
step //112
	|poi_rare Ambassador D'vwinn
	|poilvl 110
	|poispot Suramar 54.80,63.76
	|poiquest 43794
	|poicurrency AM
	|poiitem 139918
	Go up the stairs |goto Suramar/0 55.78,62.39 < 10 |only if walking
	kill Ambassador D'vwinn##111649 |q 43794 |future |goto Suramar 54.80,63.76
	|tip He is surrounded by enemies, you will probably need a group to defeat him.
step //113
	|poi_rare Mal'Dreth the Corruptor
	|poilvl 110
	|poispot Suramar 34.17,60.99
	|poiquest 43351
	|poicurrency AM
	|poiitem 140386
	kill Mal'Dreth the Corruptor##110024 |q 43351 |future |goto Suramar 34.17,60.99
step //114
	|poi_rare Cadraeus
	|poilvl 110
	|poispot Suramar 62.56,48.08
	|poiquest 43495
	|poicurrency AM
	|poiitem 139969
	kill Cadraeus##110726 |q 43495 |future |goto Suramar 62.56,48.08
step //115
	|poi_rare Hertha Grimdottir
	|poilvl 110
	|poispot Suramar 61.66,39.58
	|poiquest 43993
	|poicurrency AM
	|poiitem 121737
	Enter the cave |goto Suramar/0 61.75,39.59 < 10 |walk
	kill Hertha Grimdottir##103223 |q 43993 |future |goto Suramar 61.66,39.58
step //116
	|poi_rare Cora'Kar
	|poilvl 110
	|poispot Suramar 68.17,58.96
	|poiquest 41135
	|poiitem 139952
	|poicurrency OR
	Enter the cave |goto Suramar 70.0,56.9 < 10 |walk
	kill Cora'Kar##100864 |q 41135 |future |goto Suramar 68.17,58.96
step //117
	|poi_rare Pinchshank
	|poilvl 110
	|poispot Suramar 66.65,67.13
	|poiquest 43968
	|poicurrency AM
	|poiitem 140314
	kill Pinchshank##107846 |q 43968 |future |goto Suramar 66.65,67.13
step //118
	|poi_rare Myonix
	|poilvl 110
	|poispot Suramar 40.96,32.82
	|poiquest 43358
	|poicurrency AM
	|poiitem 121739
	kill Myonix##110340 |q 43358 |future |goto Suramar 40.96,32.82
step //119
	|poi_rare Anax
	|poilvl 110
	|poispot Suramar 33.72,51.23
	|poiquest 43954
	|poicurrency AM
	|poiitem 140934
	kill Anax##111197 |q 43954 |future |goto Suramar 33.72,51.23
step //120
	|poi_rare Shal'an
	|poilvl 110
	|poispot Suramar 26.24,41.19
	|poiquest 42831
	|poicurrency AM
	|poiitem 139926
	Enter the building |goto Suramar/0 25.94,40.82 < 10 |walk
	kill Shal'an##109054 |q 42831 |future |goto Suramar 26.24,41.19
step //121
	|poi_rare Oreth the Vile
	|poilvl 110
	|poispot Suramar 24.57,47.40
	|poiquest 43449
	|poicurrency AM
	|poiitem 140388
	kill Oreth the Vile##110577 |q 43449 |future |goto Suramar 24.57,47.40
step //122
	|poi_rare Elfbane
	|poilvl 110
	|poispot Suramar 22.13,51.78
	|poiquest 41319
	|poicurrency AM
	|poiitem 121806
	kill Elfbane##99792 |q 41319 |future |goto Suramar 22.13,51.78
	|tip You may need a group to defeat him.
step //123
	|poi_rare King Morgalash
	|poilvl 110
	|poispot Suramar 87.45,62.35
	|poiquest 41786
	|poicurrency OR
	|poiitem 140384
	clicknpc Jandvik Banner##103467
	kill Sashj'tar Wave Crusher##103930+, Sashj'tar Wave Breaker##103929+, Elder Trenchwalker##103932+
	|tip Kill the enemies that attack in waves.
	kill King Morgalash##103827 |q 41786 |future |goto Suramar 87.45,62.35
step //124
	|poi_rare Siegemaster Aedrin
	|poilvl 110
	|poispot Suramar 37.14,21.37
	|poiquest 43369
	|poicurrency AM
	|poiitem 140406
	Cross the bridge |goto Suramar/0 39.19,24.51 < 10 |only if walking
	kill Siegemaster Aedrin##110438 |q 43369 |future |goto Suramar 37.14,21.37
step //125
	|poi_rare Garvrulg
	|poilvl 110
	|poispot Suramar 53.19,30.21
	|poiquest 40897
	|poicurrency AM
	|poiitem 121755
	Enter the cave |goto Suramar 49.5,33.9 < 10 |walk
	Go up the path |goto Suramar/0 51.89,31.83 < 10 |walk
	Continue up the path |goto 51.01,30.67 < 10 |walk
	Follow the path around |goto 50.94,29.94 < 10 |walk
	kill Garvrulg##99610 |q 40897 |future |goto Suramar 53.19,30.21
step //126
	|poi_rare Apothecary Faldren
	|poilvl 110
	|poispot Suramar 42.17,56.41
	|poiquest 43580
	|poicurrency AM
	|poiitem 121754
	kill Apothecary Faldren##110870 |q 43580 |future |goto Suramar 42.17,56.41
step //127
	|poi_rare Lieutenant Strathmar
	|poilvl 110
	|poispot Suramar 48.53,56.68
	|poiquest 40905
	|poicurrency AM
	|poiitem 121735
	Enter the building |goto Suramar/0 47.70,54.52 < 10 |walk
	kill Lieutenant Strathmar##102303 |q 40905 |future |goto Suramar 48.53,56.68
step //128
	|poi_rare Gorgroth
	|poilvl 110
	|poispot Suramar 27.77,65.47
	|poiquest 43992
	|poicurrency AM
	|poiitem 121747
	click Portal Key |goto Suramar 27.77,65.47 < 5 |walk
	kill Gorgroth##110832 |q 43992 |future |goto Suramar 27.29,66.02
step //129
	|poi_rare Miasu
	|poilvl 110
	|poispot Suramar 62.50,63.69
	|poiquest 43793
	|poiitem 121810
	|poicurrency OR
	Go up the stairs |goto Suramar/0 61.16,63.11 < 10 |only if walking
	kill Miasu##111653 |q 43793 |future |goto Suramar 62.50,63.69
step //130
	|poi_rare Arcanist Lylandre
	|poilvl 110
	|poispot Suramar 65.57,59.14
	|poiquest 43481
	|poicurrency AM
	|poiitem 140403
	Go up the stairs |goto Suramar/0 64.82,58.44 < 10 |only if walking
	clicknpc Lylandre's Arcane Crystal##110649 |goto 65.49,58.87 < 5 |walk
	clicknpc Lylandre's Fire Crystal##110652 |goto Suramar/0 65.75,59.00 < 5 |walk
	clicknpc Lylandre's Fel Crystal##110694 |goto 65.67,59.38 < 5 |walk
	clicknpc Lylandre's Frost Crystal##110651 |goto 65.42,59.25 < 5 |walk
	kill Arcanist Lylandre##110656 |q 43481 |future |goto Suramar 65.57,59.14
step //131
	|poi_rare Guardian Thor'el
	|poilvl 110
	|poispot Suramar 61.01,52.98
	|poiquest 43597
	|poicurrency AM
	|poiitem 140404
	kill Guardian Thor'el##110944 |q 43597 |future |goto Suramar 61.01,52.98
	|tip He patrols up and down this road, and may not be in this exact spot.
step //132
	|poi_rare Randril
	|poilvl 110
	|poispot Suramar 49.60,79.00
	|poiquest 43603
	|poicurrency AM
	|poiitem 140396
	Go up the stairs |goto Suramar/0 46.72,76.99 < 10 |only if walking
	Cross the bridge |goto 48.31,77.46 < 10 |only if walking
	kill Randril##111007 |q 43603 |future |goto Suramar 49.60,79.00
step //133
	|poi_rare Rauren
	|poilvl 110
	|poispot Suramar 24.05,25.42
	|poiquest 43484
	|poicurrency AM
	|poiitem 121759
	kill Rauren##105547 |q 43484 |future |goto Suramar 24.05,25.42
step //134
	|poi_rare Magister Phaedris
	|poilvl 110
	|poispot Suramar 42.05,80.05
	|poiquest 43348
	|poicurrency OR
	|poiitem 140405
	Go up the stairs |goto Suramar/0 41.54,78.75 < 10 |only if walking
	kill Magister Phaedris##109954 |q 43348 |future |goto Suramar 42.05,80.05
step //135
	|poi_rare Llorian
	|poilvl 110
	|poispot Suramar 29.39,53.30
	|poiquest 44676
	|poiitem 138839
	|poicurrency OR
	Enter the cave |goto Suramar 29.3,50.8 < 10 |walk
	talk Llorian##113368 |goto Suramar 29.39,53.30 < 5 |walk
	kill Withered Shambler##98555+
	Select _<Feed Llorian 25 Ancient Mana.>_
	|tip Defeat the waves of enemies that attack.
	click Llorian's Supplies##255341 |q 44676 |future |goto Suramar 29.39,53.30
step //136
	|poi_rare Lady Rivantas
	|poilvl 110
	|poispot Suramar 35.23,67.23
	|poiquest 44675
	|poicurrency AM
	|poiitem 141866
	Enter the building |goto Suramar/0 33.92,66.99 < 10 |walk
	Go up the stairs |goto 34.25,68.58 < 10 |walk
	kill Lady Rivantas##106526 |q 44675 |future |goto Suramar 35.23,67.23
--//Mardum, the Shattered Abyss\\--
step //137
	|poi_rare Count Nefarious
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 63.6,23.6
	|poiquest 40231
	|poiitem 128948
	Go up the path |goto Mardum, the Shattered Abyss C/0 63.40,25.82 < 10
	kill Count Nefarious##97058 |q 40231 |future |goto Mardum, the Shattered Abyss C/2 51.43,56.25
	|tip Clicking the Wells of Souls in this room will stun Nefarious for a few seconds.
step //138
	|poi_rare General Volroth
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 68.6,27.6
	|poiquest 40234
	|poiitem 128947
	kill General Volroth##97370 |q 40234 |future |goto Mardum, the Shattered Abyss C/0 68.6,27.6
step //139
	|poi_rare Overseer Brutarg
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 80.8,41.6
	|poiquest 40233
	|poiitem 133580
	kill Overseer Brutarg##97057 |q 40233 |future |goto Mardum, the Shattered Abyss C/0 80.8,41.6
step //140
	|poi_rare King Voras
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 74.4,57.2
	|poiquest 40232
	|poiitem 128944
	Go up the path |goto Mardum, the Shattered Abyss C/0 73.32,56.05 < 10
	kill King Voras##97059 |q 40232 |future |goto Mardum, the Shattered Abyss C/0 74.4,57.2
step //141
	|poi_rare Wrath-Lord Lekos
	|poilvl 98
	|poispot Vault of the Wardens/1 69.0,26.8
	|poiquest 40301
	|poiitem 128958
	kill Wrath-Lord Lekos##97069 |q 40301 |future |goto Vault of the Wardens/1 69.0,26.8
	only if havequest(38672) or completedq(38672)
step //142
	|poi_rare Kethrazor
	|poilvl 98
	|poispot Vault of the Wardens/1 48.8,31.4
	|poiquest 40251
	|poiitem 128945
	Go up the path |goto Vault of the Wardens/1 46.14,34.80 < 10
	kill Kethrazor##96997 |q 40251 |future |goto Vault of the Wardens/1 48.8,31.4
	only if havequest(38672) or completedq(38672)
step --1
	|poi_rare Mother Rosula
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 66.78,17.99
	|poiquest 48970
	|poicurrency 13 VA
	|poiitem 153252
	Follow the path |goto Antoran Wastes/0 72.34,48.14 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.73,46.37 < 15 |only if ditto
	Follow the path |goto 71.17,39.49 < 15 |only if ditto
	Follow the path up |goto 69.90,38.66 < 15 |only if ditto
	Follow the path up |goto 69.42,36.30 < 15 |only if ditto
	Follow the path |goto 68.32,35.03 < 20 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 68.15,33.53 < 15 |only if ditto
	Follow the path |goto 66.58,34.99 < 15 |only if walking
	Follow the path |goto 65.31,31.46 < 15 |only if walking
	Enter the cave |goto 65.62,26.38 < 10 |walk
	Follow the path |goto 66.36,24.64 < 7 |walk
	Follow the path |goto 66.49,22.36 < 7 |walk
	Follow the path |goto 67.66,22.22 < 10 |walk
	Follow the path |goto 67.51,19.97 < 7 |walk
	Follow the path |goto 66.52,19.25 < 7 |walk
	kill Felspawn Imp##126073+
	collect 100 Imp Meat##152999 |goto 66.45,19.54
step
	Use the Imp Meat |use Imp Meat##152999
	collect Disgusting Feast##153013 |goto 66.45,19.54
step
	Use the Disgusting Feast |use Disgusting Feast##153013
	|tip You will need to drop the Imp Meat in the fel lava to summon Mother Rosula.
	Place the Disgusting Feast |condition itemcount(153013) == 0 |goto 66.78,17.99
step
	kill Mother Rosula##127705
	|tip Periodically, Mother Rosula will summon a swarm of imps. Cleave them down.
	|tip Move slightly to the side when she casts Fel Breath or you will be disoriented.
	Defeat Mother Rosula |q 48970 |goto 66.78,17.99 |future
step --2
	|poi_rare Chief Alchemist Munculus
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 61.40,20.85
	|poiquest 48865
	|poicurrency 10 VA
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto Antoran Wastes/0 65.91,29.42 < 20 |only if walking
	Follow the path |goto 61.69,26.87 < 15 |only if walking
	Follow the path up |goto 59.83,27.89 < 15 |only if walking
	Follow the path |goto 59.41,26.31 < 15 |only if walking
	Enter the building |goto 60.98,22.58 < 10 |walk
	kill Chief Alchemist Munculus##127376
	|tip Move out of areas targeted on the ground. He will throw imps that inflict various debuffs.
	Defeat Chief Alchemist Munculus |q 48865 |goto Antoran Wastes/0 61.40,20.85 |future
step --3
	|poi_rare Vrax'thul
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 53.02,36.02
	|poiquest 48810
	|poicurrency 17 VA
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto 65.91,29.42 < 20 |only if walking
	Follow the path |goto 61.69,26.87 < 15 |only if walking
	Follow the path up |goto 59.83,27.89 < 15 |only if walking
	Follow the path |goto Antoran Wastes/0 57.16,28.42 < 20 |only if walking
	Follow the path |goto 55.46,30.67 < 15 |only if walking
	Follow the path down |goto 53.94,31.37 < 15 |only if walking
	Follow the path |goto 52.94,33.77 < 20 |only if walking
	kill Vrax'thul##126199
	|tip The debuff "Prophecy of Calamity" will inflict heavy shadow damage after 12 seconds.
	Defeat Vrax'thul |q 48810 |goto Antoran Wastes/0 53.02,36.02 |future
step --4
	|poi_rare Watcher Aival
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 53.05,29.05
	|poiquest 48822
	|poicurrency 18 VA
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto 65.91,29.42 < 20 |only if walking
	Follow the path |goto 61.69,26.87 < 15 |only if walking
	Follow the path up |goto 59.83,27.89 < 15 |only if walking
	Follow the path |goto 59.10,26.79 < 20 |only if walking
	Follow the path |goto 59.02,25.17 < 15 |only if walking
	Follow the path up |goto 57.45,24.16 < 15 |only if walking
	Follow the path |goto 53.75,27.01 < 15 |only if walking
	kill Watcher Aival##127291
	|tip During Chaos Glare, do not stand in front of Aival and turn your back to him.
	|tip If you fail to turn your back, you will be sleeped, disoriented, polymorphed, or feared.
	Defeat Watcher Aival |q 48822 |goto Antoran Wastes/0 53.05,29.05 |future
step --5
	|poi_rare Admiral Rel'var
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 73.55,72.06
	|poiquest 48817
	|poicurrency 18 VA
	Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 70.43,47.66 < 15 |only if ditto
	Follow the path |goto 70.73,52.45 < 20 |only if ditto
	Follow the path up |goto 72.95,54.41 < 15 |only if ditto
	Follow the path up |goto 73.22,56.47 < 15 |only if ditto
	Follow the path |goto 74.56,61.72 < 20 |only if ditto
	Follow the path |goto 73.66,64.02 < 20 |only if ditto
	Follow the path |goto Antoran Wastes/0 70.29,70.96 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 71.38,66.00 < 20 |only if ditto
	Follow the path |goto 71.23,62.90 < 15 |only if ditto
	Follow the path up |goto 72.64,63.30 < 15 |only if ditto
	Follow the path |goto 74.48,67.74 < 20 |only if walking
	kill Admiral Rel'var##127090
	|tip Don't stand in front of Earthshattering Slash.
	|tip During Enrage, Rel'var's damage will be significantly increased. Use a defensive cooldown.
	Defeat Admiral Rel'var |q 48817 |goto Antoran Wastes/0 73.55,72.06 |future
step --6
	|poi_rare All-Seer Xanarian
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 76.16,56.11
	|poiquest 48818
	|poicurrency 16 VA
	Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
	Follow the path |goto 70.43,47.66 < 15 |only if walking
	Follow the path |goto 70.73,52.45 < 20 |only if walking
	Follow the path up |goto 72.95,54.41 < 15 |only if walking
	Follow the path up |goto 73.22,56.47 < 15 |only if walking
	Follow the path |goto 73.85,57.79 < 15 |only if walking
	kill All-Seer Xanarian##127096
	|tip The debuff "Prophecy of Calamity" will inflict heavy shadow damage after 12 seconds.
	|tip Blast Wave will deal fire damage in a small radius.
	Defeat All-Seer Xanarian |q 48818 |goto Antoran Wastes/0 76.16,56.11 |future
step --7
	|poi_rare Worldsplitter Skuul
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 50.93,55.40
	|poiquest 48820
	|poicurrency 19 VA	
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.07,29.09 < 15 |only if ditto
	Follow the path |goto 62.92,30.20 < 15 |only if ditto
	Follow the path |goto 62.86,37.25 < 15 |only if ditto
	Follow the path |goto 60.72,38.81 < 20 |only if ditto
	Follow the path |goto 61.98,42.12 < 15 |only if ditto
	Follow the path |goto 61.81,44.07 < 15 |only if ditto
	Cross the bridge |goto 57.42,44.54 < 15 |only if ditto
	Follow the path |goto 52.09,48.31 < 20 |only if ditto
	Follow the path |goto 51.82,53.70 < 20 |only if ditto
	Follow the path |goto Antoran Wastes/0 68.26,68.59 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 65.28,65.44 < 20 |only if ditto
	Follow the path |goto 63.31,63.05 < 20 |only if ditto
	Follow the path |goto 62.50,57.79 < 20 |only if ditto
	Follow the path down |goto 60.19,55.96 < 20 |only if ditto
	Cross the lava |goto 59.38,55.46 < 15 |only if ditto
	Cross the lava |goto 58.51,55.36 < 15 |only if ditto
	Cross the lava |goto 57.69,54.53 < 15 |only if ditto
	Follow the path up |goto 55.70,52.15 < 15 |only if ditto
	Follow the path |goto 54.15,55.00 < 20 |only if ditto
	Follow the path |goto 51.71,54.01 < 20 |only if ditto
	kill Worldsplitter Skuul##127118
	|tip Shadowstrike deals damage in a frontal cone.
	|tip During Unholy Frenzy, Skull's damage output will be increased.
	|tip He may be flying a large circle around the area.
	Defeat Worldsplitter Skuul |q 48820 |goto Antoran Wastes/0 50.93,55.40 |future
step --8
	|poi_rare Gar'zoth
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 55.78,45.98
	|poiquest 49241
	|poicurrency 14 VA
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.31,36.04 < 15 |only if ditto
	Follow the path |goto 67.79,38.09 < 15 |only if ditto
	Follow the path |goto 64.56,38.41 < 15 |only if ditto
	Follow the path down |goto 62.87,37.28 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.07,29.09 < 15 |only if ditto
	Follow the path |goto 62.92,30.20 < 15 |only if ditto
	Follow the path |goto 62.86,37.25 < 15 |only if ditto
	Follow the path |goto 60.72,38.81 < 20 |only if walking
	Follow the path |goto 61.98,42.12 < 15 |only if walking
	Follow the path |goto 61.81,44.07 < 15 |only if walking
	Cross the bridge |goto 57.42,44.54 < 15 |only if walking
	kill Gar'zoth##122999
	|tip Move out of areas targeted on the ground.
	|tip Gar'zoth has a frontal cleave.
	|tip Move out of Rain of Fire patches.
	Defeat Gar'zoth |q 49241 |goto Antoran Wastes/0 55.78,45.98 |future
step --9
	|poi_rare Mistress Il'thendra
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 57.35,33.49
	|poiquest 49240
	|poicurrency 16 VA
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto 65.91,29.42 < 20 |only if walking
	Follow the path |goto 61.69,26.87 < 15 |only if walking
	Follow the path up |goto 59.83,27.89 < 15 |only if walking
	Follow the path |goto 59.29,29.13 < 15 |only if walking
	Follow the path |goto 59.22,32.62 < 15 |only if walking
	kill Mistress Il'thendra##122947
	|tip Move out of the area targeted on the ground. It will inflict heavy fire damage and summon Felflame Scavengers.
	Defeat Mistress Il'thendra |q 49240 |goto Antoran Wastes/0 57.35,33.49 |future
step --10
	|poi_rare The Many-Faced Devourer
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 54.81,39.15
	|poiquest 48966
	|poicurrency 12 VA
	|poiitem 153195
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto 61.69,26.87 < 15 |only if walking
	Follow the path up |goto 59.83,27.89 < 15 |only if walking
	Follow the path |goto Antoran Wastes/0 57.16,28.42 < 20 |only if walking
	Follow the path |goto 55.46,30.67 < 15 |only if walking
	Follow the path down |goto 53.94,31.37 < 15 |only if walking
	Follow the path |goto 52.94,33.77 < 20 |only if walking
	kill Tormented Ritualist##126171+, Antoran Defender##126193+
	collect Call of the Devourer##152786 |goto 52.22,36.71
step
	Follow the path |goto Antoran Wastes/0 54.59,41.44 < 15 |only if walking
	Follow the path |goto 53.78,44.52 < 20 |only if walking
	Follow the path |goto 51.55,49.42 < 20 |only if walking
	Follow the path |goto 51.50,54.43 < 20 |only if walking
	click Intact Ur'zul Bone##276426
	collect Ur'zul Bone##152993 |goto 50.39,56.13
step
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 68.17,34.55 < 15 |only if ditto
	Follow the path |goto 66.74,35.22 < 15 |only if walking
	Follow the path |goto 65.35,31.37 < 15 |only if walking
	Enter the cave |goto 65.60,26.38 < 7 |walk
	Follow the path |goto 66.31,24.79 < 7 |walk
	Follow the path |goto 66.55,22.26 < 7 |walk
	Follow the path |goto 67.73,22.04 < 7 |walk
	Follow the path |goto 67.54,19.96 < 7 |walk
	click Intact Imp Bones##276424
	|tip It looks like a small skeletal arm on the ground.
	collect Imp Bone##152992 |goto 65.90,19.40
step
	Follow the path up |goto Antoran Wastes/0 65.00,19.93 < 7 |walk
	Follow the path |goto 64.71,21.03 < 10 |walk
	Follow the path down |goto 66.13,22.08 < 7 |walk
	Follow the path |goto 66.42,24.38 < 7 |walk
	Leave the cave |goto 65.61,26.31 < 7 |walk
	Cross the bridge |goto 65.36,31.74 < 15 |only if walking
	Follow the path |goto 64.19,32.33 < 15 |only if walking
	Cross the bridge |goto 60.00,25.62 < 15 |only if walking
	Follow the path |goto 55.30,30.59 < 15 |only if walking
	Follow the path down |goto 53.28,32.21 < 15 |only if walking
	Follow the path |goto 52.75,34.16 < 15 |only if walking
	click Intact Fiend Bone##276425
	collect Fiend Bone##152991 |goto 52.37,35.33
	|tip It looks like a femur bone on the ground.
step
	Follow the path |goto Antoran Wastes/0 53.30,37.93 < 10 |only if walking
	clicknpc Bone Effigy##127577
	|tip If the Effigy is not there, relog to make it appear.
	|tip You will need to click it twice to summon The Many-Faced Devourer.
	kill The Many-Faced Devourer##127581
	|tip Devour Souls will place a stacking debuff on you, reducing damage and healing and inflicting shadow damage per application.
	|tip Fearsome Howl will deal shadow damage and fear anyone within 30 yards.
	|tip Hexabite is a stacking debuff that inflicts 1% of total health every 2 seconds per application.
	Defeat The Many-Faced Devourer |q 48966 |goto Antoran Wastes/0 54.81,39.15 |future
step --11
	|poi_rare Doomcaster Suprax
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 58.49,11.76
	|poiquest 48968
	|poicurrency 16 VA
	|poiitem 153194
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto 65.91,29.42 < 20 |only if walking
	Follow the path |goto 61.69,26.87 < 15 |only if walking
	Follow the path up |goto 59.83,27.89 < 15 |only if walking
	Follow the path |goto 59.41,26.31 < 15 |only if walking
	Follow the path |goto 58.97,25.22 < 15 |only if walking
	Follow the path |goto 57.54,23.26 < 20 |only if walking
	Follow the path |goto 57.35,20.01 < 20 |only if walking
	Follow the path |goto 58.01,13.93 < 20 |only if walking
	kill Doomcaster Suprax##127703
	|tip There are three individual runes outside of the summoning circle.
	|tip You will need a group of three, one person to stand in each rune.
	|tip When everyone is in position, Suprax will appear.
	|tip DO NOT interrupt Doom Star.
	|tip When you Empowered Doom debuff is nearly finished, run into one of the void zones from Doom Star to refresh it (you will take heavy damage).
	Defeat Doomcaster Suprax |q 48968 |goto Antoran Wastes/0 58.49,11.76 |future
step --12
	|poi_rare Ven'orn
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 63.01,57.35
	|poiquest 48811
	|poicurrency 16 VA
	Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
	Follow the path |goto 70.43,47.66 < 15 |only if walking
	Follow the path |goto 70.74,52.81 < 20 |only if walking
	Follow the path |goto 68.29,54.23 < 15 |only if walking
	Enter the cave |goto Antoran Wastes/0 66.61,54.21 < 15 |walk
	Follow the path down |goto 64.79,56.54 < 15 |walk
	kill Ven'orn##126115
	|tip Interrupt Poison Nova whenever possible.
	Defeat Ven'orn |q 48811 |goto Antoran Wastes/0 63.01,57.35 |future
step --13
	|poi_rare Wrath-Lord Yarez
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 61.32,65.20
	|poiquest 48814
	|poicurrency 11 VA
	|poiitem 153126
	Follow the path |goto Antoran Wastes/0 70.62,72.03 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 68.52,68.81 < 20 |only if ditto
	Follow the path |goto 64.68,65.89 < 15 |only if ditto
	Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 70.43,47.66 < 15 |only if ditto
	Follow the path |goto 70.74,52.81 < 20 |only if ditto
	Follow the path |goto 68.29,54.23 < 15 |only if ditto
	Follow the path |goto 65.71,51.84 < 15 |only if ditto
	Follow the path up |goto 64.52,55.00 < 15 |only if ditto
	Follow the path |goto 62.88,60.46 < 20 |only if ditto
	kill Wrath-Lord Yarez##126338
	|tip Withering Roar will deal a small amount of damage and reduce your maximum health by 10% for 15 seconds.
	Defeat Wrath-Lord Yarez |q 48814 |goto Antoran Wastes/0 61.32,65.20 |future
step --14
	|poi_rare Void Warden Valsuran
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 55.31,21.61
	|poiquest 48824
	|poicurrency 14 VA
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto 65.91,29.42 < 20 |only if walking
	Follow the path |goto 61.69,26.87 < 15 |only if walking
	Follow the path up |goto 59.83,27.89 < 15 |only if walking
	Follow the path |goto 59.41,26.31 < 15 |only if walking
	Follow the path |goto 58.97,25.22 < 15 |only if walking
	kill Void Warden Valsuran##127300
	|tip Interrupt Torrent of Shadow whenever possible.
	|tip During Shadow Rend, avoid standing in front of him.
	Defeat Void Warden Valsuran |q 48824 |goto Antoran Wastes/0 55.31,21.61 |future
step --15
	|poi_rare Lieutenant Xakaar
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 62.21,53.49
	|poiquest 48813
	|poicurrency 11 VA
	Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
	Follow the path |goto 70.43,47.66 < 15 |only if walking
	Follow the path |goto 70.74,52.81 < 20 |only if walking
	Follow the path |goto 68.29,54.23 < 15 |only if walking
	Follow the path |goto 65.71,51.84 < 15 |only if walking
	Follow the path up |goto 64.52,55.00 < 15 |only if walking
	Follow the path |goto 63.48,56.17 < 20 |only if walking
	kill Lieutenant Xakaar##126254
	|tip Withering Roar will deal a small amount of damage and reduce your maximum health by 10% for 15 seconds.
	Defeat Lieutenant Xakaar |q 48813 |goto Antoran Wastes/0 62.21,53.49 |future
step --16
	|poi_rare Commander Texlaz
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 82.71,65.48
	|poiquest 48816
	|poicurrency 14 VA
	Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
	Follow the path |goto 70.43,47.66 < 15 |only if walking
	Follow the path |goto 70.73,52.45 < 20 |only if walking
	Follow the path up |goto 72.95,54.41 < 15 |only if walking
	Follow the path up |goto 73.22,56.47 < 15 |only if walking
	Follow the path |goto Antoran Wastes/0 74.99,64.07 < 15 |only if walking
	Follow the path |goto 78.79,66.08 < 15 |only if walking
	Follow the path |goto 79.62,63.68 < 15 |only if walking
	click Portal##253174 |goto 80.48,62.70
	Board the Ship |goto 81.32,70.06 < 5 |noway |c |sticky
step
	kill Commander Texlaz##127084
	|tip You can jump down to the left or right of the portal and walk along the side of the ship to bypass the elite trash.
	|tip Don't stand in front of him during Burning Breath.
	|tip Intimidating Roar will cause Texlaz's target to be feared in spot and all other players to run around. Interrupt it when possible.
	Defeat Commander Texlaz |q 48816 |goto Antoran Wastes/0 82.71,65.48 |future
step --17
	|poi_rare Inquisitor Vethroz
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 60.67,48.31
	|poiquest 48815
	|poicurrency 16 VA
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking
	Follow the path |goto 70.83,46.66 < 15 |only if walking
	Follow the path |goto Antoran Wastes/0 70.06,44.71 < 20 |only if walking
	Cross the lava |goto 67.73,44.05 < 10 |only if walking
	Cross the lava |goto 66.83,43.32 < 10 |only if walking
	Cross the lava |goto 65.56,43.67 < 10 |only if walking
	Cross the lava |goto 64.53,44.42 < 10 |only if walking
	Follow the path up |goto 63.85,44.29 < 10 |only if walking
	Follow the path |goto 61.39,45.12 < 15 |only if walking
	Follow the path up |goto 60.64,47.37 < 15 |only if walking
	kill Inquisitor Vethroz##126946
	|tip The debuff "Prophecy of Calamity" will inflict heavy shadow damage after 12 seconds.
	|tip Fel Nova will deal fire damage in a small radius.
	Defeat Inquisitor Vethroz |q 48815 |goto Antoran Wastes/0 60.67,48.31 |future
step --18
	|poi_rare Puscilla
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 63.98,20.86
	|poiquest 48809
	|poicurrency 16 VA
	Follow the path |goto Antoran Wastes/0 72.34,48.14 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.73,46.37 < 15 |only if ditto
	Follow the path |goto 68.14,33.19 < 15 |only if ditto
	Follow the path up |goto 69.90,38.66 < 15 |only if ditto
	Follow the path up |goto 69.42,36.30 < 15 |only if ditto
	Follow the path |goto 68.32,35.03 < 20 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 68.15,33.53 < 15 |only if ditto
	Follow the path |goto 66.58,34.99 < 15 |only if walking
	Follow the path |goto 65.31,31.46 < 15 |only if walking
	Enter the cave |goto 65.62,26.38 < 10 |walk
	Follow the path |goto 66.36,24.64 < 7 |walk
	Follow the path |goto 66.49,22.36 < 7 |walk
	Follow the path |goto 67.66,22.22 < 10 |walk
	Follow the path |goto 67.51,19.97 < 7 |walk
	Follow the path |goto 66.48,19.56 < 7 |walk
	Follow the path up |goto 65.10,19.92 < 15 |walk
	kill Puscilla##126040
	|tip Interrupt Chaos Nova whenever possible.
	|tip Periodically, Puscilla will summon a swarm of imps.
	Defeat Puscilla |q 48809 |goto Antoran Wastes/0 63.98,20.86 |future
step --19
	|poi_rare Squadron Commander Vishax
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 84.38,81.10
	|poiquest 48967
	|poicurrency 15 VA
	Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
	Follow the path |goto 70.43,47.66 < 15 |only if walking
	Follow the path |goto 70.73,52.45 < 20 |only if walking
	Follow the path up |goto 72.95,54.41 < 15 |only if walking
	Follow the path up |goto 73.22,56.47 < 15 |only if walking
	kill Immortal Netherwalker##127598+
	collect Smashed Portal Generator##152890 |goto 74.62,63.85 |q 49007 |future
step
	kill Felsworn Myrmidon##127596+, Eredar War-MindEredar War-Mind##127597+
	collect Conductive Sheath##152941 |goto 74.62,63.85 |q 49007 |future
	collect Arc Circuit##152940 |goto 74.62,63.85 |q 49007 |future
	collect Power Cell##152891 |goto 74.62,63.85 |q 49007 |future
step
	Use the Smashed Portal Generator |use Smashed Portal Generator##152890
	collect Vishax's Portal Generator##152965 |n
	accept Commander on Deck!##49007 |goto 74.62,63.85
	|tip You will accept this quest automatically.
step
	Follow the path |goto 71.97,47.26 < 15 |only if walking and completedq(49007)
	Follow the path |goto 70.43,47.66 < 15 |only if walking and completedq(49007)
	Follow the path |goto 70.73,52.45 < 20 |only if walking and completedq(49007)
	Follow the path up |goto 72.95,54.41 < 15 |only if walking and completedq(49007)
	Follow the path up |goto 73.22,56.47 < 15 |only if walking and completedq(49007)
	Follow the path |goto 74.99,64.07 < 15 |only if walking
	Follow the path |goto 78.79,66.08 < 15 |only if walking
	Follow the path |goto 77.47,72.57 < 15 |only if walking
	clicknpc Vishax's Portal##127943 |goto 77.57,74.77
	Use Vishax's Portal |q 49007/1 |goto 77.57,74.78 |only if havequest(49007)
	Board the Ship |goto 87.51,80.18 < 5 |noway |c |only if not havequest(49007)
step
	Click the Complete Quest Box:
	turnin Commander on Deck!##49007 |goto 87.51,80.18
	|only if havequest(49007)
step
	Board the Ship |goto 87.51,80.18 < 5 |noway |c
	|only if havequest(49007)
step
	kill Squadron Commander Vishax##127700
	|tip During the fight, a ship will bomb one side of the ship deck.
	|tip Move to the side that doesn't get bombed.
	Defeat Squadron Commander Vishax |q 48967 |goto Antoran Wastes/0 84.38,81.10 |future
step --20
	|poi_rare Rezira the Seer
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 64.81,82.76
	|poiquest 48971
	|poicurrency 10 VA
	|poiitem 153293
	You currently have a Locus Resonator |condition itemcount(153226) >= 1 |only if itemcount(153226) >= 1
	You currently do not have a Locus Resonator |condition itemcount(153226) < 1 |only if itemcount(153226) < 1
step
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking
	Follow the path |goto 70.83,46.66 < 15 |only if walking
	Follow the path |goto 70.06,44.71 < 20 |only if walking
	Cross the lava |goto 67.73,44.05 < 10 |only if walking
	Cross the lava |goto 66.83,43.32 < 10 |only if walking
	Cross the lava |goto 65.56,43.67 < 10 |only if walking
	Cross the lava |goto 64.53,44.42 < 10 |only if walking
	Follow the path up |goto 63.85,44.29 < 10 |only if walking
	Follow the path |goto 62.78,44.11 < 15 |only if walking
	Follow the path |goto 60.08,44.44 < 20 |only if walking
	Enter the cave |goto 59.59,45.04 < 10 |walk
	|tip The cave is under the bridge.
	clicknpc All-Seer's Focus##128151
	|tip They are large and look like demon eyes floating in a brazier.
	|tip While these spawn randomly around Antoran Wastes, they can typically be found inside caves and buildings.
	|tip Ensure that you have full health and no aggro, as you will lose 90% of your health upon clicking it.
	|tip The buff will make you hostile to Army of the Light NPCs.
	|tip Additionally, you will take 100% increased damage while under the effects of the buff.
	Gain the Agent of the All-Seer Buff |havebuff 237297 |goto Antoran Wastes/0 60.23,45.16
	|only if itemcount(153226) < 1
step
	Kill demon enemies around Antoran Wastes
	|tip If your All-Seer buff falls off, return to the cave to renew it.
	|tip These coordinates are a good place to farm due to fast respawns and dense mobs.
	collect 500 Intact Demon Eye##153021 |goto 62.21,53.49
	|only if itemcount(153226) < 1
step
	Enter the cave |goto Antoran Wastes/0 59.59,45.04 < 10 |walk
	talk Orix the All-Seer##128134
	buy Observer's Locus Resonator##153226 |n
	collect Observer's Locus Resonator##153226 |goto 60.20,45.57
	|only if itemcount(153226) < 1
step
	Use the Locus Resonator |use Observer's Locus Resonator##153226
	|tip Using this near a beacon or other populated area can get you some additional help from other players.
	clicknpc Portal to Observer's Locus##128341
	Take the Portal |goto Antoran Wastes/0 66.92,77.78 < 10 |noway |c
step
	Follow the path |goto Antoran Wastes/0 66.51,78.09 < 15
	Follow the path down |goto 65.91,79.90 < 15 |walk
	kill Rezira the Seer##127706
	|tip If possible, stand to Rezira's side.
	|tip Avoid purple areas on the ground. Try not to stand within their radius.
	Defeat Rezira the Seer |q 48971 |goto Antoran Wastes/0 64.81,82.76 |future
step --21
	|poi_rare Blistermaw
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 61.81,36.93
	|poiquest 49183
	|poiitem 152905
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.20,36.61 < 15 |only if ditto
	Follow the path |goto 67.46,38.59 < 15 |only if ditto
	Follow the path |goto 64.53,38.44 < 15 |only if ditto
	Follow the path down |goto 62.88,37.25 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if ditto
	Follow the path |goto 63.88,28.92 < 15 |only if ditto
	Follow the path |goto 62.59,31.73 < 15 |only if ditto
	Follow the path |goto 62.88,37.25 < 15 |only if ditto
	kill Blistermaw##122958
	|tip Don't stand in front of Blistermaw during Blistering Wave.
	Defeat Blistermaw |q 49183 |goto Antoran Wastes/0 61.81,36.93 |future
step --22
	|poi_rare Houndmaster Kerrax
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 63.01,24.62
	|poiquest 48821
	|poiitem 152790
	Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
	Follow the path |goto 70.83,46.66 < 15 |only if ditto
	Follow the path |goto 71.25,39.77 < 15 |only if ditto
	Follow the path up |goto 69.76,38.57 < 15 |only if ditto
	Follow the path up |goto 69.27,36.20 < 15 |only if ditto
	Follow the path |goto 68.00,34.07 < 15 |only if ditto
	Follow the path |goto 67.72,32.12 < 15 |only if ditto
	Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
	Follow the path |goto 67.72,28.51 < 15 |only if ditto
	Follow the path |goto 66.00,29.09 < 15 |only if walking
	Follow the path |goto 63.84,28.43 < 15 |only if walking
	Follow the path |goto 62.74,26.26 < 15 |only if walking
	Enter the cave |goto 63.01,24.62 < 10 |only if walking
	kill Houndmaster Kerrax##127288
	|tip Don't stand in areas targeted on the ground.
	|tip During Rumbling Slam, anyone standing in Kerrax's path will take damage.
	Defeat Houndmaster Kerrax |q 48821 |goto Antoran Wastes/0 63.94,21.84 |future
step --23
	|poi_rare Varga
	--|poiaccess Completionist
	|poilvl 110
	|poispot Antoran Wastes/0 65.02,51.46
	|poiquest 48812
	|poiitem 153190
	Follow the path up |goto Antoran Wastes/0 72.16,47.78 < 15 |only if walking
	Follow the path |goto 70.58,46.46 < 20 |only if walking
	Follow the path |goto 68.58,43.62 < 20 |only if walking
	Jump across the rocks |goto 67.73,44.04 < 7 |only if walking
	Jump across the rocks |goto 66.83,43.31 < 7 |only if walking
	Jump across the rocks |goto 66.19,43.46 < 7 |only if walking
	Jump across the rocks |goto 65.67,44.75 < 7 |only if walking
	Jump across the rocks |goto 65.16,44.94 < 7 |only if walking
	Jump across the rocks |goto 65.08,45.53 < 7 |only if walking
	Jump across the rocks |goto 64.11,46.67 < 7 |only if walking
	kill Varga##126208
	|tip Stay spread out from other players to avoid damage from Devour Essence.
	|tip Try to avoid the areas targeted by Varga's leap.
	Defeat Varga |q 48812 |goto Antoran Wastes/0 65.02,51.46 |future
step --24
	|poi_rare Talestra the Vile
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 54.73,81.26
	|poiquest 48628
	|poicurrency 14 VA
	Follow the path |goto Krokuun/0 57.92,68.12 < 20 |only if walking
	Follow the path |goto Krokuun/0 59.25,68.51 < 15 |only if walking
	Follow the path |goto Krokuun/0 60.03,70.71 < 15 |only if walking
	Follow the path |goto Krokuun/0 57.46,74.88 < 20 |only if walking
	Follow the path |goto Krokuun/0 56.49,78.41 < 15 |only if walking
	Enter the building |goto Krokuun/0 56.06,79.44 < 15 |walk
	kill Talestra the Vile##123689
	Defeat Talestra the Vile |q 48628 |goto 54.73,81.26 |future
step --25
	|poi_rare Siegemaster Voraan
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 58.30,75.89
	|poiquest 48627
	|poicurrency 17 VA
	Follow the path |goto Krokuun/0 57.92,68.12 < 20 |only if walking
	Follow the path |goto Krokuun/0 59.25,68.51 < 15 |only if walking
	Follow the path |goto Krokuun/0 60.03,70.71 < 15 |only if walking
	Follow the path |goto Krokuun/0 58.52,73.71 < 20 |only if walking
	kill Siegemaster Voraan##120393
	|tip Move out of areas targeted on the ground.
	|tip Avoid standing in front of Voraan during Dread Swing.
	Defeat Siegemaster Voraan |q 48627 |goto Krokuun/0 58.30,75.89 |future
step --26
	|poi_rare Tereck the Selector
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 69.55,56.45
	|poiquest 48664
	|poicurrency 18 VA
	Follow the path |goto Krokuun/0 58.93,68.33 < 20 |only if walking
	Follow the path |goto 59.76,67.66 < 15 |only if walking
	Follow the path |goto 59.71,64.79 < 15 |only if walking
	Follow the path |goto 61.50,62.27 < 15 |only if walking
	Go down the stairs |goto 63.05,62.20 < 15 |only if walking
	Follow the path |goto 65.54,63.36 < 15 |only if walking
	Follow the path |goto 67.73,63.27 < 15 |only if walking
	Follow the path |goto 70.62,66.74 < 15 |only if walking
	Go up the stairs |goto 71.21,64.05 < 15 |only if walking
	Follow the path |goto 69.53,61.28 < 15 |only if walking
	Enter the cave |goto 69.29,59.33 < 10 |walk
	kill Tereck the Selector##124804
	Defeat Tereck the Selector |q 48664 |goto Krokuun/0 69.55,56.45 |future
step --27
	|poi_rare Tar Spitter
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 70.15,81.20
	|poiquest 48665
	|poicurrency 14 VA
	Follow the path |goto Krokuun/0 58.93,68.33 < 20 |only if walking
	Follow the path |goto 59.76,67.66 < 15 |only if walking
	Follow the path |goto 59.71,64.79 < 15 |only if walking
	Follow the path |goto 61.50,62.27 < 15 |only if walking
	Go down the stairs |goto 63.05,62.20 < 15 |only if walking
	Follow the path |goto 65.54,63.36 < 15 |only if walking
	Follow the path |goto Krokuun/0 67.37,66.02 < 20 |only if walking
	Follow the path |goto 70.02,68.95 < 20 |only if walking
	Follow the path |goto 69.16,71.54 < 15 |only if walking
	Follow the path |goto 69.27,76.41 < 15 |only if walking
	Follow the path |goto 68.68,78.75 < 15 |only if walking
	kill Tar Spitter##125479
	|tip Move out of areas targeted on the ground.
	Defeat Tar Spitter |q 48665 |goto Krokuun/0 70.15,81.20 |future
step --28
	|poi_rare Commander Vecaya
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 38.38,59.73
	|poiquest 48563
	|poicurrency 13 VA
	Follow the path |goto Krokuun/0 42.13,60.90 < 15 |only if walking
	Follow the path |goto 42.36,57.22 < 15 |only if walking
	Follow the path up |goto 40.49,56.70 < 10 |only if walking
	Follow the path |goto 39.23,59.52 < 10 |only if walking
	Follow the path |goto 39.12,59.54 < 10 |only if walking
	kill Commander Vecaya##122911
	|tip Move out of areas targeted on the ground.
	|tip Keep your back facing away from the ledge or you may be knocked off.
	Defeat Commander Vecaya |q 48563 |goto Krokuun/0 38.38,59.73 |future
step --29
	|poi_rare Sister Subversia
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 52.83,30.97
	|poiquest 48565
	|poicurrency 18 VA
	|poiitem 153124
	Follow the path |goto Krokuun/0 61.74,46.69 < 15 |only if walking
	Follow the path down |goto 60.95,43.81 < 15 |only if walking
	Follow the path down |goto 58.60,40.18 < 15 |only if walking
	Follow the path down |goto 59.01,37.83 < 15 |only if walking
	Follow the path |goto 55.78,37.70 < 15 |only if walking
	Follow the path |goto 53.31,34.73 < 15 |only if walking
	Follow the path |goto 52.04,32.87 < 15 |only if walking
	kill Sister Subversia##123464
	|tip When she pulls you towards her, RUN AWAY. Failing to run away will result in you being mind controlled.
	|tip Move out of areas targeted on the ground.
	Defeat Sister Subversia |q 48565 |goto Krokuun/0 52.83,30.97 |future
step --30
	|poi_rare Vagath the Betrayed
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 60.82,19.72
	|poiquest 48629
	|poicurrency 11 VA
	Follow the path |goto Krokuun/0 61.74,46.69 < 15 |only if walking
	Follow the path down |goto 60.95,43.81 < 15 |only if walking
	Follow the path down |goto 58.60,40.18 < 15 |only if walking
	Follow the path down |goto 59.01,37.83 < 15 |only if walking
	Follow the path |goto 59.32,33.03 < 20 |only if walking
	Follow the path |goto 60.59,29.86 < 20 |only if walking
	Follow the path |goto 62.17,28.78 < 15 |only if walking
	Follow the path up |goto 62.81,27.19 < 25 |only if walking
	kill Vagath the Betrayed##125388
	Defeat Vagath the Betrayed |q 48629 |goto Krokuun/0 60.82,19.72 |future
step --31
	|poi_rare Imp Mother Laglath
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 42.05,70.09
	|poiquest 48666
	|poicurrency 19 VA
	Follow the path |goto Krokuun/0 41.09,65.01 < 15 |only if walking
	Follow the path |goto 40.52,67.33 < 20 |only if walking
	kill Imp Mother Laglath##125820
	|tip Someone should remain in melee range at all times.
	|tip Anyone in front of her during Matron's Rage will take fire damage.
	Defeat Imp Mother Laglath |q 48666 |goto Krokuun/0 42.05,70.09 |future
step --32
	|poi_rare Commander Sathrenael
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 33.21,76.15
	|poiquest 48562
	|poicurrency 17 VA
	Follow the path |goto Krokuun/0 37.61,67.29 < 20 |only if walking
	Follow the path |goto 35.93,70.11 < 20 |only if walking
	Follow the path |goto 34.88,74.82 < 20 |only if walking
	kill Commander Sathrenael##122912
	Defeat Commander Sathrenael |q 48562 |goto Krokuun/0 33.21,76.15 |future
step --33
	|poi_rare Commander Endaxis
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 45.30,58.81
	|poiquest 48564
	|poicurrency 15 VA
	Follow the path |goto Krokuun/0 42.86,61.11 < 30 |only if walking
	kill Commander Endaxis##124775
	Defeat Commander Endaxis |q 48564 |goto Krokuun/0 45.30,58.81 |future
step --34
	|poi_rare Khazaduum
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/7 38.95,40.23
	|poiquest 48561
	|poicurrency 20 VA
	Follow the path |goto Krokuun/0 61.69,46.67 < 15 |only if walking
	Follow the path down |goto 60.86,43.69 < 15 |only if walking
	Follow the path down |goto 58.58,40.25 < 15 |only if walking
	Follow the path down |goto 59.07,38.34 < 15 |only if walking
	Follow the path |goto 59.36,33.88 < 20 |only if walking
	Follow the path |goto 58.67,31.35 < 15 |only if walking
	Follow the path |goto 57.04,28.42 < 15 |only if walking
	Follow the path down |goto 56.48,27.47 < 15 |only if walking
	Follow the path |goto 54.14,23.54 < 15 |only if walking
	Enter the tunnel |goto 50.38,17.36 < 15 |walk
	Follow the path |goto Krokuun/7 55.50,67.62 < 15 |walk
	Follow the path down |goto 50.76,59.89 < 15 |walk
	kill Khazaduum##125824
	Defeat Khazaduum |q 48561 |goto Krokuun/7 38.95,40.23 |future
step --35
	|poi_rare Naroua
	--|poiaccess Completionist
	|poilvl 110
	|poispot Krokuun/0 71.09,32.75
	|poiquest 48667
	|poiitem 153190
	Follow the path |goto Krokuun/0 61.70,46.66 < 15 |only if walking
	Follow the path |goto 62.56,45.12 < 15 |only if walking
	Follow the path up |goto 63.95,42.45 < 20 |only if walking
	Follow the path |goto 65.21,38.26 < 20 |only if walking
	Follow the path |goto 68.47,36.21 < 20 |only if walking
	kill Naroua##126419
	|tip Naroua will gain a stacking buff increasing his damage.
	|tip You must kill him quickly to avoid taking lethal damage.
	Defeat Naroua |q 48667 |goto Krokuun/0 71.09,32.75 |future
step --36
	|poi_rare Baruut the Bloodthirsty
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 43.84,60.62
	|poiquest 48700
	|poicurrency 13 VA
	|poiitem 153193
	Follow the path |goto Mac'Aree/0 44.89,56.80 < 15 |only if walking
	kill Baruut the Bloodthirsty##126862
	|tip Foul Smash will deal damage and knock you back.
	|tip Avoid standing in dust clouds.
	Defeat Baruut the Bloodthirsty |q 48700 |goto Mac'Aree/0 43.84,60.62 |future
step --37
	|poi_rare Vigilant Thanos
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 36.69,23.86
	|poiquest 48703
	|poicurrency 14 VA
	Follow the path |goto Mac'Aree/0 26.80,40.21 < 30 |only if walking
	Follow the path |goto 27.64,33.46 < 30 |only if walking
	Follow the path |goto 31.94,26.21 < 30 |only if walking
	Follow the path |goto 34.18,24.16 < 20 |only if walking
	kill Vigilant Thanos##126865
	|tip Run against the pull of Crushing Darkness.
	|tip During his Annihlation cast, move away to a safe distance.
	Defeat Vigilant Thanos |q 48703 |goto Mac'Aree/0 36.69,23.86 |future
step --38
	|poi_rare Captain Faruq
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 27.18,30.03
	|poiquest 48707
	|poicurrency 14 VA
	Follow the path |goto Mac'Aree/0 26.51,40.34 < 20 |only if walking
	Follow the path |goto 27.74,36.15 < 20 |only if walking
	kill Captain Faruq##126869
	|tip Occasionally, an image of Faruq will jump to you, dealing shadow damage.
	|tip Negation Blade will deal damage to you and increase you damage taken by 5% per stack.
	|tip Due to the stacking debuff, Faruq should be killed quickly.
	Defeat Captain Faruq |q 48707 |goto Mac'Aree/0 27.18,30.03 |future
step --39
	|poi_rare Ataxon
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 30.12,40.19
	|poiquest 48709
	|poicurrency 16 VA
	Follow the path |goto Mac'Aree/0 28.63,43.63 < 20 |only if walking
	Jump down |goto 29.62,42.49 < 20 |only if walking
	kill Ataxon##126887
	|tip Avoid standing in the dusty areas on the ground targeted by summoned tentacles.
	Defeat Ataxon |q 48709 |goto Mac'Aree/0 30.12,40.19 |future
step --40
	|poi_rare Herald of Chaos
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 35.84,58.63
	|poiquest 48711
	|poicurrency 13 VA
	Follow the path |goto Mac'Aree/0 44.98,56.57 < 15 |only if walking
	Go down the stairs |goto 44.39,58.24 < 15 |only if walking
	Follow the path |goto 41.91,59.47 < 20 |only if walking
	Go down the stairs |goto 40.44,59.55 < 15 |only if walking
	Follow the path |goto 36.71,64.45 < 15 |only if walking
	Follow the path |goto 34.95,63.51 < 15 |only if walking
	Follow the path |goto 35.19,60.40 < 15 |only if walking
	kill Herald of Chaos##126896
	|tip Go up the ramp to the top platform.
	|tip Don't stand in front of it during Void Exhaust.
	|tip Interrupt Dark Bolt whenever possible.
	Defeat Herald of Chaos |q 48711 |goto Mac'Aree/0 35.84,58.63 |future
step --41
	|poi_rare Jed'hin Champion Vorusk
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 48.10,40.61
	|poiquest 48713
	|poicurrency 19 VA
	Follow the path |goto Mac'Aree/0 45.39,53.79 < 15 |only if walking
	Follow the path |goto 45.77,49.98 < 10 |only if walking
	Follow the path |goto 48.05,45.29 < 20 |only if walking
	kill Jed'hin Champion Vorusk##126899
	|tip Move out of the path of Iron Charge.
	|tip Move away during Seismic Stomp.
	Defeat Jed'hin Champion Vorusk |q 48713 |goto Mac'Aree/0 48.10,40.61 |future
step --42
	|poi_rare Overseer Y'Sorna
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 57.16,30.03
	|poiquest 48716
	|poicurrency 17 VA
	Follow the path |goto Mac'Aree/0 57.33,37.61 < 20 |only if walking
	kill Overseer Y'Sorna##125497
	|tip Move out of Consecration on the ground.
	|tip During Frenzy, Y'Sorna's damage will be increased.
	Defeat Overseer Y'Sorna |q 48716 |goto Mac'Aree/0 57.16,30.03 |future
step --43
	|poi_rare Instructor Tarahna
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 61.34,50.37
	|poiquest 48718
	|poicurrency 12 VA
	|poiitem 153181
	Follow the path |goto Mac'Aree/0 63.44,41.97 < 20 |only if walking
	kill Instructor Tarahna##126900
	|tip Interrupt Fel Fireball when possible.
	|tip Move away from Shadow Nova.
	Defeat Instructor Tarahna |q 48718 |goto Mac'Aree/0 61.34,50.37 |future
step --44
	|poi_rare Commander Xethgar
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 56.86,14.64
	|poiquest 48720
	|poicurrency 19 VA
	Follow the path |goto Mac'Aree/0 45.67,17.65 < 15 |only if walking
	Follow the path |goto 47.44,17.22 < 15 |only if walking
	Go down the stairs |goto 48.10,16.32 < 15 |only if walking
	Follow the path |goto 48.90,14.14 < 15 |only if walking
	Go down the stairs |goto 49.79,13.12 < 10 |only if walking
	Go down the stairs |goto 50.87,13.08 < 10 |only if walking
	Follow the path |goto 52.42,14.46 < 15 |only if walking
	Go down the stairs |goto 53.94,12.56 < 15 |only if walking
	kill Commander Xethgar##126910
	|tip Move out of areas targeted on the ground during Chaotic Felburst.
	Defeat Commander Xethgar |q 48720 |goto Mac'Aree/0 56.86,14.64 |future
step --45
	|poi_rare Slithon the Last
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 48.60,52.46
	|poiquest 48935
	|poicurrency 16 VA
	kill Slithon the Last##126913
	|tip Slithon is swimming in the water.
	Defeat Slithon the Last |q 48935 |goto Mac'Aree/0 48.60,52.46 |future
step --46
	|poi_rare Shadowcaster Voruun
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 44.53,71.66
	|poiquest 48692
	Follow the path |goto Mac'Aree/0 50.42,71.93 < 20 |only if walking
	Follow the path |goto 47.95,69.03 < 20 |only if walking
	Follow the path |goto 46.80,69.14 < 15 |only if walking
	kill Shadowcaster Voruun##122838
	|tip Interrupt Shadow Storm whenever possible.
	Defeat Shadowcaster Voruun |q 48692 |goto Mac'Aree/0 44.53,71.66 |future
step --47
	|poi_rare Soultwisted Monstrosity
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 52.92,67.15
	|poiquest 48693
	|poicurrency 12 VA
	kill Soultwisted Monstrosity##126815
	|tip Terror Howl will fear you for a few seconds. Be sure there are no nearby mobs.
	Defeat Soultwisted Monstrosity |q 48693 |goto Mac'Aree/0 52.92,67.15 |future
step --48
	|poi_rare Feasel the Muffin Thief
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 41.14,11.50
	|poiquest 48702
	|poicurrency 18 VA
	Go up the hill |goto Mac'Aree/0 44.01,16.03 < 10 |only if walking
	Go up the hill |goto 43.43,16.75 < 10 |only if walking
	Follow the path |goto 42.16,15.23 < 15 |only if walking
	kill Feasel the Muffin Thief##126864
	|tip Feasel will periodically burrow under the ground. Just wait for him to emerge.
	Defeat Feasel the Muffin Thief |q 48702 |goto Mac'Aree/0 41.14,11.50 |future
step --49
	|poi_rare Vigilant Kuro
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 63.82,64.31
	|poiquest 48704
	|poicurrency 17 VA
	Follow the path |goto Mac'Aree/0 55.76,71.31 < 15 |only if walking
	Go down the stairs |goto 57.06,69.89 < 15 |only if walking
	Follow the path |goto 59.19,65.67 < 15 |only if walking
	Follow the path |goto 60.73,63.91 < 15 |only if walking
	kill Vigilant Kuro##126866
	|tip Don't stand in front of him during Avenging Wave.
	|tip Interrupt Searing Wrath or move out of areas targeted on the ground.
	Defeat Vigilant Kuro |q 48704 |goto Mac'Aree/0 63.82,64.31 |future
step --50
	|poi_rare Turek the Lucid
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 38.23,64.38
	|poiquest 48706
	|poicurrency 20 VA
	Follow the path |goto Mac'Aree/0 44.99,56.58 < 20 |only if walking
	Go down the stairs |goto 44.43,58.15 < 15 |only if walking
	Follow the path |goto 44.07,63.43 < 15 |only if walking
	Follow the path down |goto 44.13,65.79 < 15 |only if walking
	Follow the path down |goto 42.25,67.07 < 15 |only if walking
	Enter the building |goto 39.11,66.58 < 10 |walk
	kill Turek the Lucid##126868
	|tip Interrupt Nether Touch whenever possible.
	Defeat Turek the Lucid |q 48706 |goto Mac'Aree/0 38.23,64.38 |future
step --51
	|poi_rare Umbraliss
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 35.20,37.20
	|poiquest 48708
	|poicurrency 13 VA
	Follow the path |goto Mac'Aree/0 28.63,43.63 < 20 |only if walking
	Jump down |goto 29.62,42.49 < 20 |only if walking
	Follow the path |goto Mac'Aree/0 32.69,40.96 < 20 |only if walking
	Follow the path |goto Mac'Aree/0 34.40,38.96 < 15 |only if walking
	kill Umbraliss##126885
	|tip Don't stand in front of Umbraliss during Dark Breath.
	Defeat Umbraliss |q 48708 |goto Mac'Aree/0 35.20,37.20 |future
step --52
	|poi_rare Sorolis the Ill-Fated
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 70.23,45.96
	|poiquest 48710
	|poicurrency 11 VA
	Go up the hill |goto Mac'Aree/0 64.38,42.20 < 15 |only if walking
	Follow the path |goto 65.96,44.23 < 20 |only if walking
	Follow the path |goto 68.31,46.00 < 15 |only if walking
	kill Sorolis the Ill-Fated##126889
	|tip Interrupt Chaotic Flames whenever possible.
	|tip Dark Rift will summon a small number of Hungering Stalkers.
	Defeat Sorolis the Ill-Fated |q 48710 |goto Mac'Aree/0 70.23,45.96 |future
step --53
	|poi_rare Overseer Y'Beda
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 58.75,37.62
	|poiquest 48714
	|poicurrency 14 VA
	kill Overseer Y'Beda##124440
	|tip Move out of Consecration on the ground.
	Defeat Overseer Y'Beda |q 48714 |goto Mac'Aree/0 58.75,37.62 |future
step --54
	|poi_rare Overseer Y'Morna
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 60.93,29.75
	|poiquest 48717
	|poicurrency 17 VA
	Follow the path |goto Mac'Aree/0 58.84,34.02 < 25 |only if walking
	kill Overseer Y'Morna##125498
	|tip Move out of Consecration on the ground.
	Defeat Overseer Y'Morna |q 48717 |goto Mac'Aree/0 60.93,29.75 |future
step --55
	|poi_rare Zul'tan the Numerous
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 66.76,28.44
	|poiquest 48719
	|poicurrency 18 VA
	Follow the path |goto Mac'Aree/0 63.61,41.36 < 30 |only if walking
	Follow the path up |goto 65.14,40.87 < 20 |only if walking
	Follow the path |goto 63.19,32.38 < 30 |only if walking
	Enter the building |goto 64.00,29.56 < 7 |walk
	kill Zul'tan the Numerous##126908
	|tip Move out of ooze pools on the ground.
	Defeat Zul'tan the Numerous |q 48719 |goto Mac'Aree/0 66.76,28.44 |future
step --56
	|poi_rare Wrangler Kravos
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 55.77,59.34
	|poiquest 48695
	|poiitem 152814
	Follow the path |goto Mac'Aree/0 54.50,73.30 < 15 |only if walking
	Follow the path |goto 56.22,70.90 < 20 |only if walking
	Go down the stairs |goto 57.12,69.82 < 15 |only if walking
	Follow the path |goto 57.64,66.23 < 20
	kill Wrangler Kravos##126852
	|tip Avoid standing in Bladestorm.
	|tip Don't stand in front of Kravos when he charges.
	Defeat Wrangler Kravos |q 48695 |goto Mac'Aree/0 55.77,59.34 |future
step --57
	|poi_rare Venomtail Skyfin
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 33.70,47.50
	|poiquest 48705
	|poiitem 152844
	Follow the path |goto Mac'Aree/0 28.59,43.66 < 10 |only if walking
	Jump down |goto 29.31,42.94 < 10 |only if walking
	Follow the path |goto 34.09,41.95 < 15 |only if walking
	Follow the path |goto 33.84,45.39 < 15 |only if walking
	Jump down |goto 33.64,46.58 < 15 |only if walking
	kill Venomtail Skyfin##126867
	|tip Avoid standing in front during Dark Torrent.
	|tip Interrupt Shattering Screech.
	|tip If a Shattering Screech cast goes of, ensure that you are not actively casting when it completes.
	Defeat Venomtail Skyfin |q 48705 |goto Mac'Aree/0 33.70,47.50 |future
step --58
	|poi_rare Kaara the Pale
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 37.79,54.62
	|poiquest 48697
	|poiitem 153190
	Follow the path |goto Mac'Aree/0 44.97,56.70 < 15 |only if walking
	Go down the stairs |goto 44.41,58.12 < 15 |only if walking
	Follow the path |goto 42.04,59.56 < 15 |only if walking
	Go down the stairs |goto 40.54,58.74 < 15 |only if walking
	Follow the path |goto 38.51,56.76 < 10 |only if walking
	Enter the cave |goto 38.61,55.54 < 10 |walk
	kill Kaara the Pale##126860
	|tip Avoid standing in one spot for too long to prevent being stunned when Kaara pounces.
	Defeat Kaara the Pale |q 48697 |goto Mac'Aree/0 37.79,54.62 |future
step --59
	|poi_rare Sabuul
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 44.06,48.22
	|poiquest 48712
	|poiitem 153190
	Follow the path |goto Mac'Aree/0 44.27,54.48 < 15 |only if walking
	Follow the path |goto 43.60,52.08 < 15 |only if walking
	kill Sabuul##126898
	|tip Avoid standing in one spot for too long to prevent being stunned when Sabuul pounces.
	Defeat Sabuul |q 48712 |goto Mac'Aree/0 44.06,48.22 |future
step --60
	|poi_rare Skreeg the Devourer
	--|poiaccess Completionist
	|poilvl 110
	|poispot Mac'Aree/0 49.70,09.90
	|poiquest 48721
	|poiitem 152904
	Follow the path |goto Mac'Aree/0 45.67,17.65 < 15 |only if walking
	Follow the path |goto 47.44,17.22 < 15 |only if walking
	Go down the stairs |goto 48.10,16.32 < 15 |only if walking
	Follow the path |goto 48.90,14.14 < 15 |only if walking
	Go down the stairs |goto 49.79,13.12 < 10 |only if walking
	Go down the stairs |goto 50.87,13.08 < 10 |only if walking
	Follow the path |goto 52.42,14.46 < 15 |only if walking
	Go down the stairs |goto 53.94,12.56 < 15 |only if walking
	Follow the path |goto 52.96,11.09 < 15 |only if walking
	kill Skreeg the Devourer##126912
	|tip Ravenous Scream will fear everyone within a small radius. Ensure that you are not near additional mobs.
	Defeat Skreeg the Devourer |q 48721 |goto Mac'Aree/0 49.70,09.90 |future
]])