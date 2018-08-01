local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"

------   SEARCH FOR "--" TO FIND IMPROVEMENTS TO MAKE ONCE FUNCTIONALITY IS IMPLEMENTED


-- show poi table with names visible: /run for k,v in ipairs(ZGV.Poi.Guide.steps) do v.tostring=function(s) return s.poi_rare end end  ;  Spoo(nil,nil,ZGV.Poi.Guide.steps)

ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Rares",{
	hidden=true,
	poi=true,
	poitype="rare",
},[[
--//Shadowmoon Valley\\--
step
	|poi_rare Amaukwa
	|poilvl 91
	|poispot Shadowmoon Valley D 37.20,36.40
	|poiquest 33061
	|poiitem 109060
	|poicurrency GR
	map Shadowmoon Valley D/0
	path follow smart; loop on; ants curved; dist 20
	path	31.7,32.7	34.7,34.6	37.5,36.7
	path	39.5,36.8	41.0,34.9	41.7,31.4
	path	40.0,29.8	36.8,29.6	34.8,28.6
	path	32.8,28.1	30.3,29.3	29.1,31.0
	path	30.9,32.1
	_Follow_ the path, searching for Amaukwa
	kill Amaukwa##77140 |q 33061 |future
	|tip Amaukwa is a chimera that flies in a set path around a small portion of Shadowmoon Valley.
step
	|poi_rare Aqualir
	|poilvl 101
	|poispot Shadowmoon Valley D 50.80,78.80
	|poiquest 37356
	|poiitem 119387
	|poiitem 120945
	|poicurrency AC
	kill Sargerei Binder##86364
	|tip Defeat the Sargerei Binders that are channeling to make Aqualir attackable.
	kill Aqualir##86213 |q 37356 |future |goto Shadowmoon Valley D 50.80,78.80
	|tip Aqualir can be difficult for players under 630 item level.
step
	|poi_rare Avalanche
	|poilvl 100
	|poispot Shadowmoon Valley D 67.8,84.9
	|poiquest 37410
	|poiitem 119400
	|poiitem 120945
	|poicurrency AC
	_Cross the water_ to the island here |goto Shadowmoon Valley D/0 64.3,84.8
	_Follow_ this path around |goto Shadowmoon Valley D/0 66.1,84.4
	_Enter_ the cave |goto Shadowmoon Valley D/0 66.9,86.5
	kill Avalanche##85568 |q 37410 |future |goto Shadowmoon Valley D 67.8,84.9
	|tip Avalanche is a level 100 rare mob with around 950,000 health.
step
	|poi_rare Ba'ruun
	|poilvl 91
	|poispot Shadowmoon Valley D 52.80,16.80
	|poiquest 35731
	|poiitem 113540
	|poicurrency GR
	_Go to_ Deadwalker Pass |goto Shadowmoon Valley D/0 51.1,24.2
	_Follow_ the shore |goto Shadowmoon Valley D/0 52.2,18.0
	_Swim across_ to the island |goto Shadowmoon Valley D 52.80,16.80
	kill Ba'ruun##82326 |q 35731 |future |goto Shadowmoon Valley D 52.80,16.80
	|tip Ba'ruun is a giant Bog Lord standing at the water's edge.
step
	|poi_rare Brambleking Fili
	|poilvl 100
	|poispot Shadowmoon Valley D 45.0,77.0
	|poiquest 33383
	|poiitem 117551
	|poiitem 120945
	|poicurrency AC
	kill Brambleking Fili##81639 |q 33383 |future |goto Shadowmoon Valley D/0 45.0,77.0
step
	|poi_rare Dark Emanation
	|poilvl 90
	|poispot Shadowmoon Valley D 48.60,43.60
	|poiquest 33064
	|poiitem 109075
	|poicurrency GR
	_Enter_ the cave |goto Shadowmoon Valley D/0 46.6,45.4
	_Go down_ the left passage |goto Shadowmoon Valley D/0 48.7,44.8
	_Enter_ the small cavern |goto Shadowmoon Valley D 48.60,43.60
	kill Shadowmoon Voidwhisperer##77086
	|tip Kill the Voidwhisperers to release the Dark Emanation.
	kill Dark Emanation##77085 |q 33064 |future |goto Shadowmoon Valley D 48.60,43.60
step
	|poi_rare Darkmaster Go'vid
	|poilvl 90
	|poispot Shadowmoon Valley D 38.7,83.6
	|poiquest 35448
	|poiitem 113548
	|poicurrency GR
	_Travel to_ the Forgotten Shore |goto Shadowmoon Valley D/0 40.5,75.5
	_Go to_ the Isle of Shadows |goto Shadowmoon Valley D/0 39.9,79.8
	_Go to_ the far shore |goto Shadowmoon Valley D/0 38.7,83.6
	kill Darkmaster Go'vid##82268 |q 35448 |future |goto Shadowmoon Valley D/0 38.7,83.6
step
	|poi_rare Darktalon
	|poilvl 91
	|poispot Shadowmoon Valley D 49.60,42.00
	|poiquest 35555
	|poiitem 113541
	|poicurrency GR
	_Go to_ the hill |goto Shadowmoon Valley D/0 47.6,43.8
	_Continue up_ the hill |goto Shadowmoon Valley D/0 49.6,41.8
	kill Darktalon##82411 |q 35555 |future |goto Shadowmoon Valley D/0 49.6,41.8
	|tip The bird is the word!
step
	|poi_rare Demidos
	|poilvl 103
	|poispot Shadowmoon Valley D 46.00,71.60
	|poiquest 37351
	|poiitem 119377
	|poiitem 119431
	|poiitem 120945
	|poicurrency AC
	_Jump up_ the rocks here |goto Shadowmoon Valley D/0 47.2,73.6
	_Go to_ the area with blue-purple mist on the ground |goto Shadowmoon Valley D 46.00,71.60
	kill Demidos##84911 |q 37351 |future |goto Shadowmoon Valley D 46.00,71.60
	|tip Demidos is extremely difficult to solo. A 3+ person group is recommended.
step
	|poi_rare Enavra
	|poilvl 91
	|poispot Shadowmoon Valley D 67.80,63.80
	|poiquest 35688
	|poiitem 113556
	|poicurrency GR
	_Go to_ the small island |goto Shadowmoon Valley D/0 67.5,62.7
	_Investigate the corpse_ on the ground |goto Shadowmoon Valley D/0 67.9,63.9
	clicknpc Enavra##82742
	kill Enavra##82676 |q 35688 |future |goto Shadowmoon Valley D/0 67.9,63.9
step
	|poi_rare Faebright
	|poilvl 91
	|poispot Shadowmoon Valley D 61.60,61.80
	|poiquest 35725
	|poiitem 113557
	|poicurrency GR
	_Follow_ the small trail |goto Shadowmoon Valley D/0 58.3,60.6
	_Go up_ the hill through the small pass |goto Shadowmoon Valley D/0 60.4,62.5
	_Approach_ Faebright |goto Shadowmoon Valley D 61.60,61.80
	kill Faebright##82207 |q 35725 |future |goto Shadowmoon Valley D 61.60,61.80
step
	|poi_rare Hypnocroak
	|poilvl 91
	|poispot Shadowmoon Valley D 37.40,48.80
	|poiquest 35558
	|poiitem 113631
	|poicurrency GR
	_Climb the rocks_ behind the waterfall up to the cave entrance |goto Shadowmoon Valley D/0 38.7,49.0
	|tip Notice how the rocks make steps leading up the waterfall. You will need to be mounted for some of the longer jumps.
	kill Hypnocroak##79524 |q 35558 |future |goto Shadowmoon Valley D 37.40,48.80
step
	|poi_rare Insha'tar
	|poilvl 91
	|poispot Shadowmoon Valley D 57.40,48.40
	|poiquest 35909
	|poiitem 113571
	|poicurrency GR
	_Go to_ the rocky clearing |goto Shadowmoon Valley D 57.40,48.40
	kill Insha'tar##83553 |q 35909 |future |goto Shadowmoon Valley D 57.40,48.40
step
	|poi_rare Killmaw
	|poilvl 91
	|poispot Shadowmoon Valley D 40.80,44.40
	|poiquest 33043
	|poiitem 109078
	|poicurrency GR
	kill Killmaw##74206 |q 33043 |future |goto Shadowmoon Valley D/0 40.8,44.6
	|tip Killmaw is located between the big rocks.
step
	|poi_rare Ku'targ the Voidseer
	|poilvl 91
	|poispot Shadowmoon Valley D 32.20,35.00
	|poiquest 33039
	|poiitem 109061
	|poicurrency GR
	_Go through_ the gates |goto Shadowmoon Valley D/0 32.7,34.3
	kill Ku'targ the Voidseer##72362 |q 33039 |future |goto Shadowmoon Valley D/0 32.5,35.1
	|tip He is located in the first hut on the left.
step
	|poi_rare Lady Temptessa
	|poilvl 101
	|poispot Shadowmoon Valley D 48.00,77.60
	|poiquest 37355
	|poiitem 119360
	|poiitem 120945
	|poicurrency AC
	kill Lady Temptessa##85121 |q 37355 |future |goto Shadowmoon Valley D 48.00,77.60
	|tip This Rare will only spawn if the Daily Apexus Quest is available.
step
	|poi_rare Leaf-Reader Kurri
	|poilvl 91
	|poispot Shadowmoon Valley D 37.60,14.60
	|poiquest 33055
	|poiitem 108907
	|poicurrency GR
	_Go down_ to the shore |goto Shadowmoon Valley D/0 38.8,17.0
	_Cross_ the water to the small island |goto Shadowmoon Valley D/0 37.9,16.1
	kill Leaf-Reader Kurri##72537 |q 33055 |future |goto Shadowmoon Valley D 37.60,14.60
step
	|poi_rare Mad King Sporeon
	|poilvl 91
	|poispot Shadowmoon Valley D 45.00,20.90
	|poiquest 35906
	|poiitem 113561
	|poicurrency GR
	_Follow_ the path |goto Shadowmoon Valley D/0 44.4,22.9
	_Enter_ the cave |goto Shadowmoon Valley D/0 44.5,21.1
	kill Mad King Sporeon##77310 |q 35906 |future |goto Shadowmoon Valley D 45.00,20.90
step
	|poi_rare Malgosh Shadowkeeper
	|poilvl 100
	|poispot Shadowmoon Valley D 29.60,50.80
	|poiquest 37357
	|poiitem 119369
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Pillars of Fate |goto Spires of Arak/0 70.6,27.2
	_Continue up_ the ramp |goto Spires of Arak/0 74.3,30.1
	_Enter_ the cave |goto Spires of Arak/0 72.1,27.0
	kill Malgosh Shadowkeeper##85451 |q 37357 |future |goto Shadowmoon Valley D 29.60,50.80
step
	|poi_rare Master Sergeant Milgra
	|poilvl 101
	|poispot Shadowmoon Valley D 51.80,79.20
	|poiquest 37353
	|poiitem 119368
	|poiitem 120945
	|poicurrency AC
	|tip Milgra patrols the small ridge, crossing back and forth over the bridge.
	kill Master Sergeant Milgra##85001 |q 37353 |future |goto Shadowmoon Valley D 51.80,79.20
step
	|poi_rare Morva Soultwister
	|poilvl 90
	|poispot Shadowmoon Valley D 38.60,70.20
	|poiquest 35523
	|poiitem 113559
	|poicurrency GR
	_Go to_ the Black Altar of Xan'tish |goto Shadowmoon Valley D/0 38.5,71.6
	kill Morva Soultwister##82362 |q 35523 |future |goto Shadowmoon Valley D/0 38.6,70.5
step
	|poi_rare Mother Om'ra
	|poilvl 91
	|poispot Shadowmoon Valley D 44.00,57.60
	|poiquest 33642
	|poiitem 113527
	|poiitem 119449
	|poicurrency GR
	kill Shadowmoon Darkcaster##78993
	|tip Killing the Darkcasters will release Mother Om'ra.
	kill Mother Om'ra##88831 |q 33642 |future |goto Shadowmoon Valley D/0 44.0,57.7
step
	|poi_rare Nagidna
	|poilvl 100
	|poispot Shadowmoon Valley D/0 60.8,89.9
	|poiquest 37409
	|poiitem 119364
	|poiitem 120945
	|poicurrency AC
	_Climb_ the hill |goto Shadowmoon Valley D/0 59.1,88.1
	_Enter_ the cave |goto Shadowmoon Valley D/0 59.2,89.8
	kill Nagidna##85555 |q 37409 |future |goto Shadowmoon Valley D/0 60.8,89.9
	|tip Nagidna is in the back of the cave.
step
	|poi_rare Quartermaster Hershak
	|poilvl 101
	|poispot Shadowmoon Valley D 50.20,72.40
	|poiquest 37352
	|poiitem 119382
	|poiitem 120945
	|poicurrency AC
	_Follow_ the road |goto Shadowmoon Valley D/0 48.9,73.3
	kill Quartermaster Hershak##84925 |q 37352 |future |goto Shadowmoon Valley D 50.20,72.40
	|tip He is inside the building.
step
	|poi_rare Rai'vosh
	|poilvl 91
	|poispot Shadowmoon Valley D 48.60,22.60
	|poiquest 35553
	|poiitem 113542
	|poicurrency GR
	_Climb_ the hill |goto Shadowmoon Valley D/0 47.7,23.9
	_Cross_ the field |goto Shadowmoon Valley D/0 47.3,23.2
	kill Rai'vosh##82374 |q 35553 |future |goto Shadowmoon Valley D/0 48.8,22.7
step
	|poi_rare Rockhoof
	|poilvl 91
	|poispot Shadowmoon Valley D 53.00,50.60
	|poiquest 34068
	|poiitem 109077
	|poicurrency GR
	_Go to_ the Verdant Mire |goto Shadowmoon Valley D/0 54.1,49.0
	kill Rockhoof##72606 |q 34068 |future |goto Shadowmoon Valley D 53.00,50.60
step
	|poi_rare Shadowspeaker Niir
	|poilvl 101
	|poispot Shadowmoon Valley D 48.20,81.00
	|poiquest 37354
	|poiitem 119396
	|poiitem 120945
	|poicurrency AC
	|tip Clear the area around Niir before engaging him, as you will have to keep moving him out of toxic clouds.
	kill Shadowspeaker Niir##85029 |q 37354 |future |goto Shadowmoon Valley D 48.20,81.00
step
	|poi_rare Shinri
	|poilvl 92
	|poispot Shadowmoon Valley D 61.00,55.20
	|poiquest 35732
	|poiitem 113543
	|poicurrency GR
	|tip Shinri wanders around the area. You may have to search a bit.
	kill Shinri##82415 |q 35732 |future |goto Shadowmoon Valley D 61.00,55.20
step
	|poi_rare Slivermaw
	|poilvl 100
	|poispot Shadowmoon Valley D 61.7,89.0
	|poiquest 37411
	|poiitem 119411
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Shadowmoon Valley D/0 60.9,87.0
	kill Slivermaw##85837 |q 37411 |future |goto Shadowmoon Valley D 61.7,89.0
	|tip Slivermaw is located in the back of the cave.
step
	|poi_rare Sneevel
	|poilvl 92
	|poispot Shadowmoon Valley D 27.60,43.60
	|poiquest 36880
	|poiitem 118734
	|poicurrency GR
	_Follow the trail_ along the wall |goto Shadowmoon Valley D/0 28.1,38.5
	kill Sneevel##86689 |q 36880 |future |goto Shadowmoon Valley D/0 27.5,43.7
	|tip Sneevel is inside the hut.
step
	|poi_rare Veloss
	|poilvl 91
	|poispot Shadowmoon Valley D 21.60,21.00
	|poiquest 33640
	|poiitem 108906
	|poicurrency GR
	_Go up_ the hill here |goto Shadowmoon Valley D/0 23.3,18.7
	_Drop down_ here |goto Shadowmoon Valley D/0 22.2,19.4
	_Swim to_ the small island |goto Shadowmoon Valley D 21.60,21.00
	kill Veloss##75482 |q 33640 |future |goto Shadowmoon Valley D 21.60,21.00
step
	|poi_rare Venomshade
	|poilvl 91
	|poispot Shadowmoon Valley D 54.60,70.60
	|poiquest 33643
	|poiitem 108957
	|poicurrency GR
	_Follow_ the path into the Blademoon Bloom |goto Shadowmoon Valley D/0 53.0,67.7
	kill Venomshade##75492 |q 33643 |future |goto Shadowmoon Valley D/0 54.8,70.2
step
	|poi_rare Voidseer Kalurg
	|poilvl 91
	|poispot Shadowmoon Valley D 32.60,41.40
	|poiquest 35847
	|poiitem 109074
	|poicurrency GR
	_Enter Anguish Fortress_ here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.6,40.1
	kill Shadowmoon Channeller##78135
	|tip Kill the Channellers in each corner to release Kalurg.
	kill Voidseer Kalurg##83385 |q 35847 |future |goto Shadowmoon Valley D 32.60,41.40
step
	|poi_rare Yggdrel
	|poilvl 91
	|poispot Shadowmoon Valley D 48.80,66.40
	|poiquest 33389
	|poiitem 113570
	|poicurrency GR
	kill Yggdrel##75435 |q 33389 |future |goto Shadowmoon Valley D 48.80,66.40
	|tip When Yggdrel casts Entangling Vine kill it as fast as possible, or it will deal massive damage every 2 seconds until you are dead.
--//Frostfire Ridge\\--
step
	|poi_rare Pale Fishmonger
	|poilvl 92
	|poispot Frostfire Ridge 28.29,66.63
	|poiquest 34470
	|poiitem 111666
	|poiitem 109142
	|poicurrency GR
	_Follow_ the road down |goto Frostfire Ridge/0 26.0,59.7
	_Cross_ the water |goto Frostfire Ridge/0 27.5,63.8
	_Enter_ the cave |goto Frostfire Ridge/0 27.8,65.9
	kill Pale Fishmonger##78606 |q 34470 |future |goto Frostfire Ridge 28.29,66.63
step
	|poi_rare Ak'ox the Slaughterer
	|poilvl 100
	|poispot Frostfire Ridge 88.60,57.40
	|poiquest 37525
	|poiitem 119365
	|poiitem 120945
	|poicurrency AC
	_Go up_ the road |goto Frostfire Ridge/0 87.0,56.2
	_Enter_ the building |goto Frostfire Ridge/0 88.2,57.5
	kill Ak'ox the Slaughterer##84378 |q 37525 |future |goto Frostfire Ridge 88.60,57.40
step
	|poi_rare Breathless
	|poilvl 90
	|poispot Frostfire Ridge 27.40,50.00
	|poiquest 34497
	|poiitem 111476
	|poicurrency GR
	Breathless patrols up and down this small ravine |goto Frostfire Ridge 27.40,50.00
	kill Breathless##78867 |q 34497 |future |goto Frostfire Ridge 27.40,50.00
step
	|poi_rare Broodmother Reeg'ak
	|poilvl 92
	|poispot Frostfire Ridge 66.40,31.40
	|poiquest 33843
	|poiitem 111533
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 64.2,32.4
	_Run to_ the bottom of the ramp |goto Frostfire Ridge/0 65.3,31.5
	kill Broodmother Reeg'ak##74613 |q 33843 |future |goto Frostfire Ridge 66.40,31.40
	|tip Reeg'ak patrols around the large central pillar.
step
	|poi_rare Canyon Icemother
	|poilvl 91
	|poispot Frostfire Ridge 34.00,23.20
	|poiquest 32941
	|poiitem 101436
	|poicurrency GR
	kill Canyon Icemother##71721 |q 32941 |future |goto Frostfire Ridge 34.00,23.20
	|tip She is located next to the lava pool in Daggermaw Ravine.
step
	|poi_rare Chillfang
	|poilvl 90
	|poispot Frostfire Ridge 41.20,68.20
	|poiquest 34843
	|poiitem 111953
	|poicurrency GR
	_Go down_ to the water |goto Frostfire Ridge/0 41.3,64.5
	_Cross_ the water |goto Frostfire Ridge/0 40.8,66.6
	_Go to_ the cave |goto Frostfire Ridge/0 40.8,67.6
	kill Chillfang##80242 |q 34843 |future |goto Frostfire Ridge 41.20,68.20
step
	|poi_rare Cindermaw
	|poilvl 90
	|poispot Frostfire Ridge 40.40,47.00
	|poiquest 33014
	|poiitem 111490
	|poicurrency GR
	Cindermaw will be here when you first engage him |goto Frostfire Ridge 40.40,47.00
	At 60% health, Cindermaw will burrow southeast to this location |goto Frostfire Ridge/0 41.5,48.8
	At 30% health, Cindermaw will burrow north to this location |goto Frostfire Ridge/0 41.7,46.3
	kill Cindermaw##72294 |q 33014 |future |goto Frostfire Ridge/0 41.7,46.3
step
	|poi_rare Coldstomp the Griever
	|poilvl 91
	|poispot Frostfire Ridge 25.40,55.00
	|poiquest 34129
	|poiitem 112066
	|poicurrency GR
	kill Coldstomp the Griever##77513 |q 34129 |future |goto Frostfire Ridge 25.40,55.00
	|tip He's in the boneyard.
step
	|poi_rare Coldtusk
	|poilvl 90
	|poispot Frostfire Ridge 54.60,69.40
	|poiquest 34131
	|poiitem 111484
	|poicurrency GR
	kill Coldtusk##76914 |q 34131 |future |goto Frostfire Ridge 54.60,69.40
	|tip Coltusk runs up and down the ravine.
step
	|poi_rare Cyclonic Fury
	|poilvl 93
	|poispot Frostfire Ridge 67.40,78.20
	|poiquest 34477
	|poiitem 112086
	|poicurrency GR
	kill Cyclonic Fury##78621 |q 34477 |future |goto Frostfire Ridge 67.40,78.20
	|tip He patrols a very small area.
step
	|poi_rare Firefury Giant
	|poilvl 90
	|poispot Frostfire Ridge 71.40,46.80
	|poiquest 33504
	|poiitem 107661
	|poicurrency GR
	_Climb up_ onto the cooled magma |goto Frostfire Ridge/0 70.2,53.8
	_Go up_ the left side of the lava |goto Frostfire Ridge/0 70.9,51.2
	_Continue up_ the left side to the stone |goto Frostfire Ridge/0 71.1,48.3
	click Firefury Stone##224620 |goto Frostfire Ridge/0 71.0,47.4
	kill Firefury Giant##74971 |q 33504 |future |goto Frostfire Ridge 71.40,46.80
	|tip Melee must use the little rocks that spawn to stay out of the lava and avoid its damage.
step
	|poi_rare Giant-Slayer Kul
	|poilvl 90
	|poispot Frostfire Ridge 54.60,22.20
	|poiquest 32918
	|poiitem 111530
	|poicurrency GR
	_Go to_ the small camp |goto Frostfire Ridge/0 54.3,21.8
	kill Giant-Slayer Kul##71665 |q 32918 |future |goto Frostfire Ridge 54.60,22.20
step
	|poi_rare Gorg'ak the Lava Guzzler
	|poilvl 100
	|poispot Frostfire Ridge 70.00,36.00
	|poiquest 33512
	|poiitem 111545
	|poiitem 120945
	|poicurrency AC
	kill Gorg'ak the Lava Guzzler##72364 |q 33512 |future |goto Frostfire Ridge 71.00,27.40
	|tip He is located down by the lava. Be sure to clear all of the goren before pulling him, he will call for help.
step
	|poi_rare Gorivax
	|poilvl 101
	|poispot Frostfire Ridge 38.00,14.00
	|poiquest 37388
	|poiitem 119358
	|poiitem 120945
	|poicurrency AC
	kill Minion of Borgal##89164
	|tip Kill the Minions to spawn Gorivax.
	kill Gorivax##82536 |q 37388 |future |goto Frostfire Ridge 38.00,14.00
step
	|poi_rare Grutush the Pillager
	|poilvl 90
	|poispot Frostfire Ridge 38.60,63.00
	|poiquest 34865
	|poiitem 112077
	|poicurrency GR
	_Go around_ the small peak |goto Frostfire Ridge/0 39.4,63.5
	_Enter_ the cave |goto Frostfire Ridge/0 38.2,63.6
	kill Grutush the Pillager##80312 |q 34865 |future |goto Frostfire Ridge 38.60,63.00
step
	|poi_rare Gruuk
	|poilvl 90
	|poispot Frostfire Ridge 50.30,52.60
	|poiquest 34825
	|poiitem 111948
	|poicurrency GR
	kill Gruuk##80190 |q 34825 |future |goto Frostfire Ridge 50.30,52.60
	|tip He's under the rocky overhang.
step
	|poi_rare Gurun
	|poilvl 90
	|poispot Frostfire Ridge 47.00,55.20
	|poiquest 34839
	|poiitem 111955
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 46.0,57.4
	_Continue down_ into the cave |goto Frostfire Ridge/0 45.5,55.5
	kill Gurun##80235 |q 34839 |future |goto Frostfire Ridge 47.00,55.20
	|tip He's in the back of the cave around the right. Beware of the Gronn.
step
	|poi_rare Hoarfrost
	|poilvl 101
	|poispot Frostfire Ridge 68.80,19.40
	|poiquest 37382
	|poiitem 119415
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Frostfire Ridge/0 69.7,23.2
	_Go through_ the narrow pass |goto Frostfire Ridge/0 68.5,22.6
	kill Hoarfrost##87348 |q 37382 |future |goto Frostfire Ridge/0 68.1,19.9
step
	|poi_rare Huntmaster Kuang
	|poilvl 92
	|poispot Frostfire Ridge 58.60,34.20
	|poiquest 34130
	|poicurrency GR
	kill Giantslayer Kimla##78144
	kill Pathfinder Jalog##78134
	kill Cloudspeaker Daber##78169
	kill Gronnstalker Dawarn##78128
	kill Beastcarver Saramor##78150
	kill Giantbane##77519
	kill Huntmaster Kuang##78151 |q 34130 |future |goto Frostfire Ridge 58.60,34.20
	|tip He patrols around a sizeable area. Look around this field of ice. The other mobs go down fast, having very little health.
step
	|poi_rare Jabberjaw
	|poilvl 101
	|poispot Frostfire Ridge 48.20,23.40
	|poiquest 37386
	|poiitem 119390
	|poiitem 120945
	|poicurrency AC
	kill Jabberjaw##82616 |q 37386 |future |goto Frostfire Ridge 48.20,23.40
	|tip He patrols a small area around this spot.
step
	|poi_rare Jehil the Climber
	|poilvl 92
	|poispot Frostfire Ridge 61.60,26.40
	|poiquest 34708
	|poiitem 112078
	_Go up_ the ramp |goto Frostfire Ridge/0 61.0,26.7
	_Turn left_ at the top |goto Frostfire Ridge/0 62.1,27.1
	_Jump onto_ the bones |goto Frostfire Ridge/0 62.0,26.3 < 8
	_Climb up_ this rib bone and jump over to Jehil's area |goto Frostfire Ridge/0 61.5,25.8 < 4
	kill Jehil the Climber##79678 |q 34708 |future |goto Frostfire Ridge 61.60,26.40
step
	|poi_rare Moltnoma
	|poilvl 101
	|poispot Frostfire Ridge 43.00,21.00
	|poiquest 37387
	|poiitem 119356
	|poiitem 120945
	|poicurrency AC
	_Go down_ to the edge of the lava |goto Frostfire Ridge/0 42.8,19.5
	kill Lava Slime##88430
	Gain the the Lava Slimed buff |havebuff 135789 |only if not completedq(37387) --Spell_Fire_Burnout
	kill Moltnoma##82614 |q 37387 |future |goto Frostfire Ridge 43.00,21.00
	|tip You must kill a Lava Slime to gain immunity to the lava damage for 30 seconds. Pay close attention to your buff and kill another Lava Slime when the duration gets low.
step
	|poi_rare Mother of Goren
	|poilvl 101
	|poispot Frostfire Ridge 72.20,22.80
	|poiquest 37381
	|poiitem 119376
	|poiitem 120945
	|poicurrency AC
	kill Mother of Goren##87351 |q 37381 |future |goto Frostfire Ridge 72.20,22.80
	|tip An AoE cooldown will healp greatly with little Burning Slagmaws.
	|tip When she casts Whirling Lava Breath, she will rotate counter-clockwise. Stay away from the breath.
step
	|poi_rare Ogom the Mangler
	|poilvl 100
	|poispot Frostfire Ridge 83.60,47.20
	|poiquest 37402
	|poiitem 119366
	|poiitem 120945
	|poicurrency AC
	kill Ogom the Mangler##87622 |q 37402 |future |goto Frostfire Ridge 83.60,47.20
	|tip Ogom patrols the road around this area.
step
	|poi_rare Primalist Mur'og
	|poilvl 90
	|poispot Frostfire Ridge 36.80,34.00
	|poiquest 33938
	|poiitem 111576
	|poicurrency GR
	_Go up_ this path |goto Frostfire Ridge/0 33.9,30.0
	_Cross_ the stone bridge |goto Frostfire Ridge/0 36.2,32.2
	_Continue following_ the path up and to the right |goto Frostfire Ridge/0 38.0,33.1
	kill Primalist Mur'og##76918 |q 33938 |future |goto Frostfire Ridge 36.80,34.00
step
	|poi_rare Ragore Driftstalker
	|poilvl 100
	|poispot Frostfire Ridge 86.60,48.80
	|poiquest 37401
	|poiitem 119359
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Frostfire Ridge/0 87.1,49.5
	kill Ragore Driftstalker##84392 |q 37401 |future |goto Frostfire Ridge 86.60,48.80
step
	|poi_rare Scout Goreseeker
	|poilvl 93
	|poispot Frostfire Ridge 76.40,63.40
	|poiquest 34132
	|poiitem 112094
	|poicurrency GR
	_Go up_ into the camp |goto Frostfire Ridge/0 74.6,62.6
	_Enter_ the building and go down the stairs |goto Frostfire Ridge/0 75.9,63.0
	kill Scout Goreseeker##77526 |q 34132 |future |goto Frostfire Ridge/0 76.6,63.6
step
	|poi_rare Slogtusk the Corpse-Eater
	|poilvl 101
	|poispot Frostfire Ridge 45.00,15.00
	|poiquest 37385
	|poiitem 119362
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Frostfire Ridge/0 45.9,14.2
	kill Slogtusk the Corpse-Eater##82617 |q 37385 |future |goto Frostfire Ridge 45.00,15.00
step
	|poi_rare Son of Goramal
	|poilvl 101
	|poispot Frostfire Ridge 38.20,16.00
	|poiquest 37383
	|poiitem 119399
	|poiitem 120945
	|poicurrency AC
	kill Son of Goramal##82620 |q 37383 |future |goto Frostfire Ridge 38.20,16.00
	|tip Goramal will pull with him.
step
	|poi_rare The Beater
	|poilvl 90
	|poispot Frostfire Ridge 26.80,31.60
	|poiquest 34133
	|poiitem 111475
	|poicurrency GR
	_Enter_ the cave here |goto Frostfire Ridge/0 27.2,30.8 < 10
	kill The Beater##77527 |q 34133 |future |goto Frostfire Ridge 26.80,31.60
step
	|poi_rare The Bone Crawler
	|poilvl 101
	|poispot Frostfire Ridge 72.20,33.00
	|poiquest 34361
	|poiitem 111534
	|poiitem 120945
	|poicurrency AC
	_Go down_ this hill |goto Frostfire Ridge/0 70.7,32.5
	kill The Bone Crawler##78265 |q 34361 |future |goto Frostfire Ridge 72.20,33.00
step
	|poi_rare Tor'goroth
	|poilvl 101
	|poispot Frostfire Ridge 43.60,09.40
	|poiquest 37384
	|poiitem 119379
	|poiitem 120945
	|poicurrency AC
	_Follow_ the road down |goto Frostfire Ridge/0 45.8,12.7
	_Cross_ the water |goto Frostfire Ridge/0 43.5,10.4
	kill Tor'goroth##82618 |q 37384 |future |goto Frostfire Ridge 43.60,09.40
step
	|poi_rare Ug'lok the Frozen
	|poilvl 100
	|poispot Frostfire Ridge 40.60,12.40
	|poiquest 34522
	|poiitem 119409
	|poiitem 120945
	|poicurrency AC
	kill Frozen Sanctuary##81988
	kill Ug'lok the Frozen##79104 |q 34522 |future |goto Frostfire Ridge 40.60,12.40
	|tip Ug'lok will use Frozen Sanctuary occasionally. Kill it to free him from the ice barrier and make him attackable.
step
	|poi_rare Valkor
	|poilvl 101
	|poispot Frostfire Ridge 72.40,24.20
	|poiquest 37378
	|poiitem 119416
	|poiitem 120945
	|poicurrency AC
	kill Valkor##87357 |q 37378 |future |goto Frostfire Ridge 72.40,24.20
	|tip Valkor patrols a small area up and down the road. He is a high health rare elite, you will need a group to defeat him.
step
	|poi_rare Vrok the Ancient
	|poilvl 103
	|poispot Frostfire Ridge 70.60,39.00
	|poiquest 37379
	|poiitem 119416
	|poiitem 120945
	|poicurrency AC
	_Start up_ the hill |goto Frostfire Ridge/0 74.0,29.8
	_Continue_ going up the hill |goto Frostfire Ridge/0 73.6,34.9
	kill Vrok the Ancient##87356 |q 37379 |future |goto Frostfire Ridge 70.60,39.00
	|tip Avoid the boulders, tornados, and mobs on the way up.
	|tip Vrok will require a group to defeat.
step
	|poi_rare Yaga the Scarred
	|poilvl 92
	|poispot Frostfire Ridge/0 40.6,27.6
	|poiquest 34559
	|poiitem 111477
	|poicurrency GR
	_Go to_ the top ridge |goto Frostfire Ridge/0 41.3,29.0
	kill Yaga the Scarred##79145 |q 34559 |future |goto Frostfire Ridge/0 40.6,27.6
step
	|poi_rare Earthshaker Holar
	|poilvl 100
	|poispot Frostfire Ridge 84.60,46.80
	|poiquest 37403
	|poiitem 119374
	|poiitem 120945
	|poicurrency AC
	kill Earthshaker Holar##84376 |q 37403 |future |goto Frostfire Ridge 84.60,46.80
	|tip He is in the gladiator pit.
step
	|poi_rare Gibblette the Cowardly
	|poilvl 101
	|poispot Frostfire Ridge 66.60,25.40
	|poiquest 37380
	|poiitem 119349
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Frostfire Ridge/0 69.0,23.9 < 10
	_Follow_ the path around to the left |goto Frostfire Ridge/0 66.8,22.2 < 10
	_Go through_ the stone arch |goto Frostfire Ridge/0 65.8,23.3 < 10
	_Enter_ the cave |goto Frostfire Ridge/0 67.1,25.0 < 10
	kill Gibblette the Cowardly##87352 |q 37380 |future |goto Frostfire Ridge 66.60,25.40
	|tip Interrupt or stun him when he casts Dig or he will escape. Cowardly indeed!
step
	|poi_rare Kaga the Ironbender
	|poilvl 100
	|poispot Frostfire Ridge 86.80,45.00
	|poiquest 37404
	|poiitem 119372
	|poiitem 120945
	|poicurrency AC
	_Go up_ the bridge |goto Frostfire Ridge/0 86.1,47.2 < 10
	_Go inside_ and _up the steps_ |goto Frostfire Ridge/0 86.9,45.0 < 10
	kill Kaga the Ironbender##84374 |q 37404 |future |goto Frostfire Ridge 86.80,45.00
--//Gorgrond\\--
step
	|poi_rare Alkali
	|poilvl 100
	|poispot Gorgrond 58.60,41.20
	|poiquest 37371
	|poiitem 119361
	|poiitem 120945
	|poicurrency AC
	kill Alkali##86268 |q 37371 |future |goto Gorgrond 58.60,41.20
	Alkali can also spawn _here_ |goto Gorgrond 56.2,40.8
	Or _here_ |goto Gorgrond 71.3,40.4
	|tip Alkali is a lasher located in the pool. Save an interrupt for his Rejuvinate ability.
step
	|poi_rare Bashiok
	|poilvl 92
	|poispot Gorgrond 40.00,79.00
	|poiquest 35335
	|poiitem 118222
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 39.6,79.9
	kill Bashiok##82085 |q 35335 |future |goto Gorgrond 40.00,79.00
	|tip Cleansing Stream is a heal Bashiok casts. Interrupt this whenever possible.
step
	|poi_rare Basten + Nultra + Valstil
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 69.20,44.60
	|poiquest 37369
	|poiitem 119357
	|poiitem 120945
	|poicurrency GR
	kill Basten##86257
	kill Nultra##86258
	kill Valstil##86259 |q 37369 |future |goto Gorgrond 69.20,44.60
	|tip Valstil is the healer of the group and should be dealt with first. You will most likely need a group for this rare.
step
	|poi_rare Berthora
	|poilvl 92
	|poispot Gorgrond 39.40,74.60
	|poiquest 36597
	|poiitem 118232
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 39.7,76.3 < 20
	kill Berthora##85907 |q 36597 |future |goto Gorgrond 39.40,74.60
step
	|poi_rare Blademaster Ro'gor
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 46.00,33.60
	|poiquest 37368
	|poiitem 119228
	|poiitem 120945
	|poicurrency AC
	kill Blademaster Ro'gor##86579 |q 37368 |future |goto Gorgrond 46.00,33.60
	|tip Ro'gor patrols up and down the hill. You will need a group to kill him.
step
	|poi_rare Char the Burning
	|poilvl 94
	|poispot Gorgrond 53.40,44.60
	|poiquest 35503
	|poiitem 118212
	|poicurrency GR
	kill Char the Burning##82311 |q 35503 |future |goto Gorgrond 53.40,44.60
	|tip He is in the valley between two peaks.
step
	|poi_rare Defector Dazgo
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 48.20,21.00
	|poiquest 37362
	|poiitem 119224
	|poiitem 120945
	|poicurrency AC
	kill Defector Dazgo##86566 |q 37362 |future |goto Gorgrond 48.20,21.00
	|tip He is under the bridge. You will need a group to kill this rare.
step
	|poi_rare Depthroot
	|poilvl 100
	|poispot Gorgrond 72.6,40.9
	|poiquest 37370
	|poiitem 119406
	|poiitem 120945
	|poicurrency AC
	kill Depthroot##82058 |q 37370 |future |goto Gorgrond 72.6,40.9
	|tip Depthroot is an Ancient who wanders a small area.
step
	|poi_rare Durp the Hated
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 50.00,23.80
	|poiquest 37366
	|poiitem 119225
	|poiitem 120945
	|poicurrency AC
	kill Durp the Hated##86571 |q 37366 |future |goto Gorgrond 50.00,23.80
	|tip Durp wanders a small area on the northeast side of The Pit. You will need a group to defeat him.
step
	|poi_rare Firestarter Grash
	|poilvl 100
	|poispot Gorgrond 58.00,36.40
	|poiquest 37373
	|poiitem 119381
	|poiitem 120945
	|poicurrency AC
	kill Firestarter Grash##88580 |q 37373 |future |goto Gorgrond 58.00,36.40
	He can also be found _here_ |goto Gorgrond 72.8,35.8
	|tip Grash is easy to spot. He wanders a very small area setting things on fire.
step
	|poi_rare Fossilwood the Petrified
	|poilvl 92
	|poispot Gorgrond 57.40,68.60
	|poiquest 36387
	|poiitem 118221
	|poicurrency GR
	_Go through_ the opening in the thorns |goto Gorgrond/0 58.1,69.0 < 10
	kill Fossilwood the Petrified##85250 |q 36387 |future |goto Gorgrond 57.40,68.60
step
	|poi_rare Gelgor of the Blue Flame
	|poilvl 93
	|poispot Gorgrond 41.80,45.40
	|poiquest 36391
	|poiitem 118230
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.3,47.8 < 20
	_Go to_ the bottom of the spiraling ramp |goto Gorgrond/18 62.7,74.8 < 15
	_Continue clockwise_ around the chamber |goto Gorgrond/18 40.9,61.2 < 10
	_Take a left_ at the side passage |goto Gorgrond/19 45.7,37.7 < 10
	kill Gelgor of the Blue Flame##81038 |q 36391 |future |goto Gorgrond/19 32.5,38.2
step
	|poi_rare Glut
	|poilvl 93
	|poispot Gorgrond 46.20,50.80
	|poiquest 36204
	|poiitem 118229
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 44.7,50.7 < 20
	kill Glut##80868 |q 36204 |future |goto Gorgrond 46.20,50.80
step
	|poi_rare Gnarljaw
	|poilvl 101
	|poispot Gorgrond/21 54.0,31.0
	|poiquest 37413
	|poiitem 119397
	|poiitem 120945
	|poicurrency AC
	_Start up_ the path here |goto Gorgrond/0 56.0,52.2 < 15
	_Continue up_ |goto Gorgrond/0 54.4,54.9 < 15
	_Enter_ the cave |goto Gorgrond/0 53.8,55.7 < 15
	_Go to_ the bottom of the spiraling path |goto Gorgrond/20 64.8,38.5 < 15
	_Continue down_ |goto Gorgrond/21 54.4,72.0 < 15
	kill Gnarljaw##78269 |q 37413 |future |goto Gorgrond/21 54.0,31.0
step
	|poi_rare Greldrok the Cunning
	|poilvl 93
	|poispot Gorgrond 46.80,43.20
	|poiquest 36186
	|poiitem 118210
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 46.4,45.4
	kill Greldrok the Cunning##84431 |q 36186 |future |goto Gorgrond 46.80,43.20
step
	|poi_rare Grove Warden Yal
	|poilvl 100
	|poispot Gorgrond 59.7,42.9
	|poiquest 37375
	|poiitem 119414
	|poiitem 120945
	|poicurrency AC
	kill Grove Warden Yal##88583 |q 37375 |future |goto Gorgrond 59.7,42.9
	|tip Yal is inside the hut.
step
	|poi_rare Hive Queen Skrikka
	|poilvl 92
	|poispot Gorgrond 52.5,70.1
	|poiquest 35908
	|poiitem 118209
	|poicurrency GR
	kill Hive Queen Skrikka##83522 |q 35908 |future |goto Gorgrond/0 52.5,70.1
	|tip Skrikka is inside the stone building.
step
	|poi_rare Horgg
	|poiaccess Completionist
	|poilvl 101
	|poispot Gorgrond 46.1,27.2
	|poiquest 37365
	|poiitem 119229
	|poiitem 120945
	|poicurrency AC
	kill Horgg##86577 |q 37365 |future |goto Gorgrond/0 46.1,27.2
	|tip Horgg patrols up and down the road a short distance. You will need a group to defeat him.
step
	|poi_rare Hunter Bal'ra
	|poilvl 100
	|poispot Gorgrond 55.00,46.20
	|poiquest 37377
	|poiitem 119412
	|poiitem 120945
	|poicurrency AC
	kill Hunter Bal'ra##88672 |q 37377 |future |goto Gorgrond 55.00,46.20
	|tip She's next to the pond.
step
	|poi_rare Inventor Blammo
	|poiaccess Completionist
	|poilvl 101
	|poispot Gorgrond 47.60,30.60
	|poiquest 37367
	|poiitem 119226
	|poiitem 120945
	|poicurrency AC
	kill Inventor Blammo##86574 |q 37367 |future |goto Gorgrond 47.60,30.60
	|tip Blammo resides on the south side of The Pit. You will need a group to defeat her.
step
	|poi_rare King Slime
	|poilvl 100
	|poispot Gorgrond/21 42.0,75.1
	|poiquest 37412
	|poiitem 119351
	|poiitem 120945
	|poicurrency AC
	_Start up_ the path here |goto Gorgrond/0 56.0,52.2 < 15
	_Continue up_ |goto Gorgrond/0 54.4,54.9 < 15
	_Enter_ the cave |goto Gorgrond/0 53.8,55.7 < 15
	_Go to_ the bottom of the spiraling path |goto Gorgrond/21 59.2,72.6 < 15
	_Continue down_ |goto Gorgrond/21 50.6,41.4 < 15
	kill King Slime##78260 |q 37412 |future |goto Gorgrond/21 42.0,75.1
step
	|poi_rare Mandrakor
	|poilvl 93
	|poispot Gorgrond 50.60,53.20
	|poiquest 36178
	|poiitem 118709
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 49.4,53.4 < 20
	kill Mandrakor##84406 |q 36178 |future |goto Gorgrond 50.60,53.20
step
	|poi_rare Maniacal Madgard
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 49.00,33.80
	|poiquest 37363
	|poiitem 119230
	|poiitem 120945
	|poicurrency AC
	kill Maniacal Madgard##86562 |q 37363 |future |goto Gorgrond 49.00,33.80
	|tip Madgard will require a group to defeat. He deals extreme physical damage.
step
	|poi_rare Mogamago
	|poilvl 100
	|poispot Gorgrond 61.80,39.30
	|poiquest 37376
	|poiitem 119391
	|poiitem 120945
	|poicurrency AC
	kill Mogamago##88586 |q 37376 |future |goto Gorgrond 61.80,39.30
	|tip Mogamago is in the middle of the pond.
step
	|poi_rare Morgo Kain
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 46.3,23.6
	|poiquest 37364
	|poiitem 119227
	|poiitem 120945
	|poicurrency AC
	kill Morgo Kain##86582 |q 37364 |future |goto Gorgrond 46.3,23.6
	|tip Morgo deals heavy damage and will require a group to defeat. He's the Juggernaut!
step
	|poi_rare Mother Araneae
	|poilvl 93
	|poispot Gorgrond 53.40,78.20
	|poiquest 34726
	|poiitem 118208
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 52.4,77.0 < 20
	kill Mother Araneae##76473 |q 34726 |future |goto Gorgrond 53.40,78.20
step
	|poi_rare Riptar
	|poilvl 92
	|poispot Gorgrond 37.60,81.40
	|poiquest 36600
	|poiitem 118231
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 39.5,79.5 < 30
	_Go between_ the stones |goto Gorgrond/0 38.3,79.8
	kill Riptar##85970 |q 36600 |future |goto Gorgrond 37.60,81.40
step
	|poi_rare Rolkor
	|poilvl 93
	|poispot Gorgrond 47.80,41.40
	|poiquest 36393
	|poiitem 118211
	|poicurrency GR
	kill Rolkor##85264 |q 36393 |future |goto Gorgrond 47.80,41.40
step
	|poi_rare Stompalupagus
	|poilvl 92
	|poispot Gorgrond 54.20,72.40
	|poiquest 36837
	|poiitem 118228
	|poicurrency GR
	kill Stompalupagus##86520 |q 36837 |future |goto Gorgrond/0 54.1,72.5
	|tip Stompy wanders up and down this ravine.
step
	|poi_rare Stomper Kreego
	|poilvl 92
	|poispot Gorgrond 38.20,66.20
	|poiquest 35910
	|poiitem 118224
	|poicurrency GR
	_Go up_ this path |goto Gorgrond/0 39.0,65.7
	kill Stomper Kreego##79629 |q 35910 |future |goto Gorgrond 38.20,66.20
step
	|poi_rare Sulfurious
	|poilvl 94
	|poispot Gorgrond 40.20,59.60
	|poiquest 36394
	|poiitem 114227
	|poicurrency GR
	kill Sulfurious##80725 |q 36394 |future |goto Gorgrond/0 39.8,60.6
	|tip Sulfurious moves around this small pool of water.
step
	|poi_rare Sunclaw
	|poilvl 93
	|poispot Gorgrond 44.60,92.20
	|poiquest 36656
	|poiitem 118223
	|poicurrency GR
	kill Sunclaw##86137 |q 36656 |future |goto Gorgrond 44.60,92.20
	|tip Click the climbing ropes to reach to top of the rock.
step
	|poi_rare Swift Onyx Flayer
	|poilvl 100
	|poispot Gorgrond 59.6,32.0
	|poiquest 37374
	|poiitem 119367
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Gorgrond/0 62.1,34.7 < 15
	_Continue up_ the hill |goto Gorgrond/0 61.1,33.5 < 15
	_Enter_ the cave |goto Gorgrond/0 60.0,32.6 < 15
	kill Swift Onyx Flayer##88582 |q 37374 |future |goto Gorgrond 59.6,32.0
step
	|poi_rare Sylldross
	|poilvl 93
	|poispot Gorgrond 64.00,61.80
	|poiquest 36794
	|poiitem 118213
	|poicurrency GR
	_Go through_ the narrow channel in the Cimson Fen |goto Gorgrond/0 62.1,61.8
	kill Sylldross##86410 |q 36794 |future |goto Gorgrond 64.00,61.80
	|tip He swims around the group of large mushrooms.
step
	|poi_rare Typhon
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 76.00,42.00
	|poiquest 37405
	|poicurrency GR
	kill Typhon##80371 |q 37405 |future |goto Gorgrond 76.00,42.00
	|tip Typhon will require a group to kill. He has 5 million health.
step
	|poi_rare Venolasix
	|poiaccess Completionist
	|poilvl 100
	|poispot Gorgrond 63.4,30.7
	|poiquest 37372
	|poiitem 119395
	|poiitem 120945
	|poicurrency AC
	_Go towards_ the large pool of water |goto Gorgrond/0 63.8,33.6
	kill Venolasix##86266 |q 37372 |future |goto Gorgrond 63.4,30.7
	|tip Venolasix is elite and does significant physical damage.
step
	|poi_rare Roardan the Sky Terror (Horde)
	|poilvl 93
	|poispot Gorgrond/0 53.0,63.1
	|poiquest 35818
	|poiitem 113459
	|poicurrency 
	kill Roardan the Sky Terror##77093
	collect 1 Ebony Feather##113459 |n
	accept Trophy of Glory: Roardan the Sky Terror##35818 |use Ebony Feather##113459 |goto Gorgrond/0 53.0,63.1
	|tip Roardan flies all around the basin. Wait here and he will come right to you.
step
	|poi_rare Biolante (Horde)
	|poilvl 93
	|poispot Gorgrond 60.80,54.00
	|poiquest 36503
	|poicurrency
	|poiitem 116160
	kill Biolante##75207
	collect 1 Writhing Green Tendril##116160 |n
	accept Trophy of Glory: Biolante##36503 |use Writhing Green Tendril##116160 |goto Gorgrond 60.80,54.00
	|tip Biolante walks around the perimeter of the lake.
step
	|poi_rare Charl Doomwing (Horde)
	|poilvl 93
	|poispot Gorgrond 46.00,46.80
	|poiquest 35815
	|poicurrency
	|poiitem 113456
	kill Charl Doomwing##81548
	collect 1 Fang of the Doomwing##113456 |n
	accept Trophy of Glory: Charl Doomwing##35815 |use Fang of the Doomwing##113456 |goto Gorgrond/0 45.8,50.0
	|tip Stand here and Charl will come to you. Be sure to aggro him while he is in flight.
step
	|poi_rare Crater Lord Igneous (Horde)
	|poilvl 93
	|poispot Gorgrond 42.80,59.20
	|poiquest 35811
	|poicurrency
	|poiitem 113448
	kill Crater Lord Igneous##81528
	collect 1 Chunk of Crater Lord##113448 |n
	accept Trophy of Glory: Crater Lord Igneous##35811 |use Chunk of Crater Lord##113448 |goto Gorgrond 42.80,59.20
step
	|poi_rare Dessicus of the Dead Pools (Horde)
	|poilvl 93
	|poispot Gorgrond 40.50,51.00
	|poiquest 35810
	|poicurrency
	|poiitem 113447
	kill Dessicus of the Dead Pools##81529
	collect 1 Globe of Dead Water##113447 |n
	accept Trophy of Glory: Dessicus##35810 |use Globe of Dead Water##113447 |goto Gorgrond 40.50,51.00
step
	|poi_rare Erosian the Violent (Horde)
	|poilvl 93
	|poispot Gorgrond 51.80,41.60
	|poiquest 35807
	|poicurrency
	|poiitem 113444
	kill Erosian the Violent##81540
	collect 1 Crystalized Steam##113444 |n
	accept Trophy of Glory: Erosian##35807 |use Crystalized Steam##113444 |goto Gorgrond 51.80,41.60
step
	|poi_rare Fungal Praetorian (Horde)
	|poilvl 93
	|poispot Gorgrond 58.00,63.60
	|poiquest 35814
	|poicurrency
	|poiitem 113454
	kill Fungal Praetorian##80785
	collect 1 Precious Mushroom##113454 |n
	accept Trophy of Glory: Fungal Praetorian##35814 |use Precious Mushroom##113454 |goto Gorgrond 58.00,63.60
step
	|poi_rare Khargax the Devourer (Horde)
	|poilvl 93
	|poispot Gorgrond 52.40,65.80
	|poiquest 35819
	|poicurrency
	|poiitem 113460
	kill Khargax the Devourer##81537
	collect 1 Shimmering Scale##113460 |n
	accept Trophy of Glory: Khargax the Devourer##35819 |use Shimmering Scale##113460 |goto Gorgrond 52.40,65.80
step
	talk Durotan##74594
	turnin Trophy of Glory: Roardan the Sky Terror##35818 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113459) > 0
	turnin Trophy of Glory: Biolante##36503 |goto Gorgrond/0 46.00,70.20 |only if itemcount(116160) > 0
	turnin Trophy of Glory: Charl Doomwing##35815 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113456) > 0
	turnin Trophy of Glory: Crater Lord Igneous##35811 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113448) > 0
	turnin Trophy of Glory: Dessicus##35810 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113447) > 0
	turnin Trophy of Glory: Erosian##35807 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113444) > 0
	turnin Trophy of Glory: Fungal Praetorian##35814 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113454) > 0
	turnin Trophy of Glory: Khargax the Devourer##35819 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113460) > 0
	only if havequest(35818) or havequest(36503) or havequest(35815) or havequest(35811) or havequest(35810) or havequest(35807) or havequest(35814) or havequest(35819)
--//Talador\\--
step
	|poi_rare Avatar of Socrethar
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 46.60,35.20
	|poiquest 37338
	|poiitem 119378
	|poiitem 120945
	|poicurrency AC
	_Enter_ Shattrath Commons |goto Talador/0 50.1,35.1 < 20
	kill Avatar of Socrethar##88043 |q 37338 |future |goto Talador 46.60,35.20
	|tip He patrols a short distance.
step
	|poi_rare Bombardier Gu'gok
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 44.00,38.00
	|poiquest 37339
	|poiitem 119413
	|poiitem 120945
	|poicurrency AC
	kill Gronnling Mount##87601
	kill Bombardier Gu'gok##87597 |q 37339 |future |goto Talador 44.00,38.00
	|tip He patrols a short distance. Killing mobs in the area can cause Gu'gok to spawn.
step
	|poi_rare Cro Fleshrender
	|poilvl 95
	|poispot Talador 37.3,70.5
	|poiquest 34165
	|poiitem 116123
	|poicurrency GR
	kill Cro Fleshrender##77620 |q 34165 |future |goto Talador 37.3,70.5
	|tip He's in the pit.
step
	|poi_rare Dr. Gloom
	|poilvl 94
	|poispot Talador 68.4,15.8
	|poiquest 34142
	|poiitem 112499
	|poicurrency GR
	_Go through_ the pass |goto Talador/0 67.5,17.0 < 20
	kill Dr. Gloom##77561 |q 34142 |future |goto Talador/0 68.4,15.8
step
	|poi_rare Echo of Murmur
	|poilvl 95
	|poispot Talador 34.20,57.00
	|poiquest 34221
	|poiitem 113670
	_Go right_ at the fork in the road |goto Talador/0 33.8,60.2
	kill Shadow Council Summoner##77794
	kill Echo of Murmur##77795 |q 34221 |future |goto Talador/0 34.20,57.00
	|tip Kill the summoners to free Echo of Murmur.
step
	|poi_rare Felbark
	|poilvl 95
	|poispot Talador 50.80,83.80
	|poiquest 35018
	|poiitem 112373
	|poicurrency GR
	kill Felbark##80204 |q 35018 |future |goto Talador 50.80,83.80
	|tip Felbark walks a circle around the big tree.
step
	|poi_rare Felfire Consort
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 50.20,35.20
	|poiquest 37341
	|poiitem 119386
	|poiitem 120945
	|poicurrency AC
	kill Felfire Consort##82992 |q 37341 |future |goto Talador 50.20,35.20
	|tip Felfire Consort is currently bugged and will most often be found in another location evading.
step
	|poi_rare Frenzied Golem
	|poilvl 95
	|poispot Talador 46.2,54.8
	|poiquest 34145
	|poiitem 113287
	|poicurrency GR
	kill Frenzied Golem##77614 |q 34145 |future |goto Talador 46.2,54.8
step
	|poi_rare Gennadian
	|poilvl 94
	|poispot Talador 67.40,80.60
	|poiquest 34929
	|poiitem 116075
	|poicurrency GR
	_Go through_ the stone passage |goto Talador/0 68.4,80.9
	kill Gennadian##80471 |q 34929 |future |goto Talador 67.40,80.60
step
	|poi_rare Glimmerwing
	|poilvl 94
	|poispot Talador 31.80,63.80
	|poiquest 34189
	|poiitem 116113
	|poicurrency GR
	kill Glimmerwing##77719 |q 34189 |future |goto Talador 31.80,63.80
	|tip Glimmerwing patrols the small clearing.
step
	|poi_rare Grrbrrgle
	|poilvl 97
	|poispot Talador 22.2,74.2
	|poiquest 36919
	|poiitem 120436
	|poicurrency GR
	_Go through_ the pass |goto Talador/0 27.7,67.8
	_Cross_ the water |goto Talador/0 24.1,71.5
	click A Restless Crate##235673
	kill Grrbrrgle##85572 |q 36919 |future |goto Talador/0 22.2,74.2
	|tip Opening the crate will spawn Grrbrrgle.
step
	|poi_rare Gug'tol
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 47.60,39.00
	|poiquest 37340
	|poiitem 119402
	|poiitem 120945
	|poicurrency AC
	_Enter_ Shattrath Commons |goto Talador/0 50.0,35.2 < 20
	_Go up_ the steps |goto Talador/0 47.5,36.4 < 15
	_Enter_ the building |goto Talador/0 47.6,37.8 < 10
	kill Gug'tol##83019 |q 37340 |future |goto Talador 47.60,39.00
step
	|poi_rare Haakun the All-Consuming
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 48.00,25.00
	|poiquest 37312
	|poiitem 119403
	|poiitem 120945
	|poicurrency AC
	_Enter_ the building |goto Talador/0 46.9,27.5 < 15
	_Go up_ the stairs |goto Talador/0 47.5,25.8 < 7
	_Go to_ the balcony |goto Talador/0 47.8,25.7 < 10
	kill Haakun the All-Consuming##83008 |q 37312 |future |goto Talador 48.00,25.00
step
	|poi_rare Hammertooth
	|poilvl 94
	|poispot Talador 62.00,46.00
	|poiquest 34185
	|poiitem 116124
	|poicurrency GR
	kill Hammertooth##77715 |q 34185 |future |goto Talador 62.00,46.00
	|tip Hammertooth swims all around this side of the lake.
step
	|poi_rare Hen-Mother Hami
	|poilvl 94
	|poispot Talador 78.00,50.40
	|poiquest 34167
	|poiitem 112369
	|poicurrency GR
	kill Hen-Mother Hami##77626 |q 34167 |future |goto Talador 78.00,50.40
	|tip Hami flies all around this area.
step
	|poi_rare Kharazos the Triumphant + Galzomar + Sikthiss
	|poilvl 95
	|poispot Talador 56.60,63.60
	|poiquest 35219
	|poiitem 116122
	|poicurrency GR
	kill Galzomar##78713
	kill Sikthiss##78715
	kill Kharazos the Triumphant##78710 |q 35219 |future |goto Talador 56.60,63.60
	|tip One of these three rares can spawn at a time. They all share the same quest and rewards.
step
	|poi_rare Klikixx
	|poilvl 95
	|poispot Talador 66.80,85.40
	|poiquest 34498
	|poiitem 116125
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 61.3,84.2 < 15
	_Go up_ the right ramp |goto Talador/0 64.4,86.6 < 15
	_Continue_ going down the side passage with spider eggs |goto Talador/0 66.4,87.9 < 15
	kill Klikixx##78872 |q 34498 |future |goto Talador 66.80,85.40
step
	|poi_rare Kurlosh Doomfang
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 33.5,37.8
	|poiquest 37348
	|poiitem 119394
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Residential District |goto Talador/0 35.7,39.8
	_Enter_ the building |goto Talador/0 35.7,38.3 < 8
	_Go up_ the stairs |goto Talador/0 37.0,38.0 < 8
	kill Kurlosh Doomfang##82988 |q 37348 |future |goto Talador 33.5,37.8
step
	|poi_rare Lady Demlash
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 33.80,37.80
	|poiquest 37346
	|poiitem 119352
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Residential District |goto Talador/0 35.7,39.8
	_Enter_ the building |goto Talador/0 33.8,38.3 < 10
	kill Lady Demlash##82942 |q 37346 |future |goto Talador 33.80,37.80
step
	|poi_rare Legion Vanguard
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 38.0,20.8
	|poiquest 37342
	|poiitem 119385
	|poiitem 120945
	|poicurrency AC
	kill Legion Vanguard##88494 |q 37342 |future |goto Talador 38.0,20.8
	|tip You must first kill around 10 channeling Soulspeakers before the event starts. You will then have to deal with 3 waves of enemies before the Vanguard emerges.
step
	|poi_rare Lo'marg Jawcrusher
	|poilvl 95
	|poispot Talador 49.00,92.00
	|poiquest 34208
	|poiitem 116070
	|poicurrency GR
	_Enter_ Telmor |goto Talador/0 48.7,87.4
	_Ride_ the elevator to the top |goto Talador/0 49.1,91.9
	kill Lo'marg Jawcrusher##77784 |q 34208 |future |goto Talador/0 49.2,92.3
step
	|poi_rare Lord Korinak
	|poiaccess Completionist
	|poilvl 103
	|poispot Talador 30.50,26.40
	|poiquest 37345
	|poiitem 119388
	|poiitem 120945
	|poicurrency AC
	_Ride_ the elevator up |goto Talador/0 32.5,33.5
	_Cross_ the bridge |goto Talador/0 31.3,28.7
	kill Lord Korinak##82920 |q 37345 |future |goto Talador 30.50,26.40
step
	|poi_rare Matron of Sin
	|poiaccess Completionist
	|poilvl 103
	|poispot Talador 39.00,49.60
	|poiquest 37349
	|poiitem 119353
	|poiitem 120945
	|poicurrency AC
	_Go up_ the steps |goto Talador/0 40.8,49.7
	kill Matron of Sin##82998 |q 37349 |future |goto Talador 39.00,49.60
step
	|poi_rare No'losh
	|poilvl 95
	|poispot Talador 86.40,30.40
	|poiquest 34859
	|poiitem 116077
	|poicurrency GR
	kill No'losh##79334 |q 34859 |future |goto Talador 86.40,30.40
	|tip No'losh walks up and down the ravine.
step
	|poi_rare Orumo the Observer
	|poiaccess Completionist
	|poilvl 103
	|poispot Talador 31.40,47.50
	|poiquest 37344
	|poiitem 119375
	|poiitem 120945
	|poicurrency AC
	_Ride_ the elevator up |goto Talador/0 35.7,45.6
	_Go up_ the stairs |goto Talador/0 32.5,47.6
	kill Orumo the Observer##87668 |q 37344 |future |goto Talador 31.40,47.50
	|tip Orumo can only summoned by activating the 5 runes at the same time. These runes have semi-transparent enemies in them. You will need a full group to kill him.
step
	|poi_rare Ra'kahn
	|poilvl 95
	|poispot Talador 59.50,59.60
	|poiquest 34196
	|poiitem 116112
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 60.0,57.7 < 20
	kill Ra'kahn##77741 |q 34196 |future |goto Talador 59.50,59.60
step
	|poi_rare Shadowflame Terrorwalker
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 41.00,42.00
	|poiquest 37347
	|poiitem 119393
	|poiitem 120945
	|poicurrency AC
	kill Shadowflame Terrorwalker##82930 |q 37347 |future |goto Talador 41.00,42.00
	|tip He is at the heart of Shattrath Commons.
step
	|poi_rare Shirzir
	|poilvl 95
	|poispot Talador 41.80,59.40
	|poiquest 34671
	|poiitem 112370
	|poicurrency GR
	_Enter_ the crypt |goto Talador/14 47.6,87.1 < 15
	_Go straight_ into the large room |goto Talador/14 51.4,45.8 < 15
	kill Shirzir##79543 |q 34671 |future |goto Talador/14 67.4,23.3
step
	|poi_rare Steeltusk
	|poilvl 95
	|poispot Talador 67.8,35.5
	|poiquest 36858
	|poiitem 117562
	|poicurrency GR
	kill Steeltusk##86549 |q 36858 |future |goto Talador 67.8,35.5
step
	|poi_rare Strategist Ankor + Archmagus Tekar + Soulbinder Naylana
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 46.00,27.40
	|poiquest 37337
	|poiitem 119350
	|poicurrency GR
	kill Strategist Ankor##88071
	kill Soulbinder Naylana##88083
	kill Archmagus Tekar##88072
	Defeat the trio |q 37337 |future |goto Talador 46.00,27.40
step
	|poi_rare Taladorantula
	|poilvl 95
	|poispot Talador 59.00,88.00
	|poiquest 34171
	|poiitem 116126
	|poicurrency GR
	_Go up_ the hill |goto Talador/0 58.2,85.5
	kill Taladorantula##77634 |q 34171 |future |goto Talador 59.00,88.00
	|tip Run around stomping on little spiders to get Taladorantula to spawn.
step
	|poi_rare Talonpriest Zorkra
	|poilvl 95
	|poispot Talador 53.8,91.4
	|poiquest 34668
	|poiitem 116110
	|poicurrency GR
	_Go up_ the road |goto Talador/0 53.2,89.0
	kill Talonpriest Zorkra##79485 |q 34668 |future |goto Talador 53.8,91.4
step
	|poi_rare Underseer Bloodmane
	|poilvl 94
	|poispot Talador 63.80,20.70
	|poiquest 34945
	|poiitem 112475
	|poicurrency GR
	_Go up_ the hill |goto Talador/0 62.2,22.9 < 20
	_Enter_ the building |goto Talador/0 63.2,22.1 < 10
	kill Underseer Bloodmane##80524 |q 34945 |future |goto Talador 63.80,20.70
step
	|poi_rare Vigilant Paarthos
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 36.80,41.00
	|poiquest 37350
	|poiitem 119383
	|poiitem 120945
	|poicurrency AC
	kill Vigilant Paarthos##88436 |q 37350 |future |goto Talador 36.80,41.00
	|tip Near the fountain in the middle of the park.
step
	|poi_rare Wandering Vindicator
	|poilvl 94
	|poispot Talador 69.7,33.2
	|poiquest 34205
	|poiitem 112261
	|poicurrency GR
	kill Wandering Vindicator##77776 |goto Talador 69.60,33.40
	click Hope##227859 |q 34205 |future |goto Talador/0 69.7,33.2
	|tip Stuck in the ground near a tombstone and shield.
step
	|poi_rare Xothear, the Destroyer
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 38.00,14.60
	|poiquest 37343
	|poiitem 119371
	|poiitem 120945
	|poicurrency AC
	kill Xothear, the Destroyer##82922 |q 37343 |future |goto Talador 38.00,14.60
	|tip He is all the way at the end of Shattrath Port.
step
	|poi_rare Yazheera the Incinerator
	|poilvl 94
	|poispot Talador 53.80,25.80
	|poiquest 34135
	|poiitem 112263
	|poicurrency GR
	kill Yazheera the Incinerator##77529 |q 34135 |future |goto Talador 53.80,25.80
--//Spires of Arak\\--
step
	|poi_rare Betsi Boombasket
	|poilvl 97
	|poispot Spires of Arak 58.20,84.60
	|poiquest 36291
	|poiitem 116907
	|poicurrency GR
	kill Betsi Boombasket##84887 |q 36291 |future |goto Spires of Arak 58.20,84.60
	|tip She's in the grove of trees.
step
	|poi_rare Blade-Dancer Aeryx
	|poilvl 96
	|poispot Spires of Arak 46.80,23.00
	|poiquest 35599
	|poiitem 116839
	|poicurrency GR
	kill Blade-Dancer Aeryx##80614 |q 35599 |future |goto Spires of Arak 46.80,23.00
step
	|poi_rare Blightglow
	|poilvl 97
	|poispot Spires of Arak 64.00,64.80
	|poiquest 36283
	|poiitem 118205
	|poicurrency GR
	_Go to_ the water |goto Spires of Arak/0 63.4,64.0
	kill Blightglow##84856 |q 36283 |future |goto Spires of Arak 64.00,64.80
	|tip Blightglow flies around the area.
step
	|poi_rare Durkath Steelmaw
	|poilvl 96
	|poispot Spires of Arak 46.40,28.60
	|poiquest 36267
	|poiitem 118198
	|poicurrency GR
	kill Durkath Steelmaw##84807 |q 36267 |future |goto Spires of Arak 46.40,28.60
	|tip He is inside the little hut.
step
	|poi_rare Echidna
	|poiaccess Completionist
	|poilvl 103
	|poispot Spires of Arak 69.00,54.00
	|poiquest 37406
	|poiitem 120945
	|poicurrency AC
	_Go around_ the shore |goto Spires of Arak/0 68.3,57.3
	kill Echidna##80372 |q 37406 |future |goto Spires of Arak 69.00,54.00
	|tip Echidna patrols up and down the coast. Some searching may be necessary.
	|tip Echidna is a level 100 elite with 3.9 million health. You will need a group.
step
	|poi_rare Festerbloom
	|poilvl 96
	|poispot Spires of Arak 54.80,39.60
	|poiquest 36297
	|poiitem 118200
	|poicurrency GR
	kill Festerbloom##84890 |q 36297 |future |goto Spires of Arak 54.80,39.60
	|tip Be sure to clear an area to engage Festerbloom, adds can be a problem.
step
	|poi_rare Gaze
	|poilvl 97
	|poispot Spires of Arak 25.20,24.20
	|poiquest 36943
	|poiitem 118696
	|poicurrency GR
	_Go up_ the trail |goto Spires of Arak/0 28.1,24.6 < 10
	click Fel Grimoire##236961 |goto Spires of Arak/0 24.9,25.6 < 8
	kill Gaze##86978 |q 36943 |future |goto Spires of Arak 25.20,24.20
step
	|poi_rare Gluttonous Giant
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 74.40,42.80
	|poiquest 37390
	|poiitem 119404
	|poiitem 120945
	|poicurrency AC
	kill Gluttonous Giant##87019 |q 37390 |future |goto Spires of Arak 74.40,42.80
	|tip The giant is on a long respawn timer.
step
	|poi_rare Gobblefin
	|poilvl 97
	|poispot Spires of Arak 33.00,59.00
	|poiquest 36305
	|poiitem 116836
	|poicurrency GR
	_Swim around_ the rocks |goto Spires of Arak/0 32.5,56.4
	kill Gobblefin##84951 |q 36305 |future |goto Spires of Arak 33.00,59.00
	|tip Gobblefin swims around underwater.
step
	|poi_rare Hermit Palefur
	|poilvl 96
	|poispot Spires of Arak 59.20,15.00
	|poiquest 36887
	|poiitem 118279
	|poicurrency GR
	_Go through_ the pass |goto Spires of Arak/0 60.3,19.8
	kill Hermit Palefur##86724 |q 36887 |future |goto Spires of Arak 59.20,15.00
step
	|poi_rare Jiasska the Sporegorger
	|poilvl 97
	|poispot Spires of Arak 56.60,94.60
	|poiquest 36306
	|poiitem 118202
	|poicurrency GR
	kill Jiasska the Sporegorger##84955 |q 36306 |future |goto Spires of Arak 56.60,94.60
step
	|poi_rare Kalos the Bloodbathed
	|poilvl 96
	|poispot Spires of Arak 62.60,37.40
	|poiquest 36268
	|poiitem 118735
	|poicurrency GR
	kill Kalos the Bloodbathed##84810 |q 36268 |future |goto Spires of Arak 62.60,37.40
	|tip Clearing the slimes around Kalos is a good idea.
step
	|poi_rare Mutafen
	|poilvl 96
	|poispot Spires of Arak 53.20,89.00
	|poiquest 36396
	|poiitem 118206
	|poicurrency GR
	_Go to_ Pinchwhistle Point |goto Spires of Arak/0 55.5,87.0
	kill Mutafen##84417 |q 36396 |future |goto Spires of Arak 53.20,89.00
step
	|poi_rare Nas Dunberlin
	|poilvl 96
	|poispot Spires of Arak 36.40,52.40
	|poiquest 36129
	|poiitem 116837
	|poicurrency GR
	kill Nas Dunberlin##82247 |q 36129 |future |goto Spires of Arak 36.40,52.40
	|tip He is standing on the gallows platform.
step
	|poi_rare Oskiira the Vengeful
	|poilvl 96
	|poispot Spires of Arak 66.00,55.00
	|poiquest 36288
	|poiitem 118204
	|poicurrency GR
	_Go through_ the pass |goto Spires of Arak/0 64.3,51.6
	kill Oskiira the Vengeful##84872 |q 36288 |future |goto Spires of Arak/0 65.0,54.2
step
	|poi_rare Poisonmaster Bortusk
	|poilvl 96
	|poispot Spires of Arak 59.40,37.40
	|poiquest 36279
	|poiitem 118199
	|poicurrency GR
	_Go around_ the shrine |goto Spires of Arak/0 60.5,38.0
	kill Poisonmaster Bortusk##84838 |q 36279 |future |goto Spires of Arak 59.40,37.40
step
	|poi_rare Rotcap
	|poilvl 97
	|poispot Spires of Arak 38.40,27.80
	|poiquest 36470
	|poiitem 118107
	|poicurrency GR
	kill Rotcap##85504 |q 36470 |future |goto Spires of Arak 38.40,27.80
step
	|poi_rare Sangrikass
	|poilvl 96
	|poispot Spires of Arak 69.00,48.80
	|poiquest 36276
	|poiitem 118203
	|poicurrency GR
	kill Sethekk Serpent Tender##84820
	kill Sangrikass##84833 |q 36276 |future |goto Spires of Arak 69.00,48.80
	|tip Sangrikas will appear immediately upon attacking the Serpent Tenders.
step
	|poi_rare Shadow Hulk
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 71.20,33.80
	|poiquest 37392
	|poiitem 119363
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Spires of Arak/0 73.4,34.8
	_Take the center_ passage |goto Spires of Arak/0 71.8,34.6
	kill Shadow Hulk##87027 |q 37392 |future |goto Spires of Arak 71.20,33.80
	|tip This rare should be considered elite. The Shadow Hulk has annoying stuns and heavy damage.
step
	|poi_rare Shadowbark
	|poilvl 96
	|poispot Spires of Arak 52.00,35.40
	|poiquest 36478
	|poiitem 118201
	|poicurrency GR
	kill Shadowbark##79938 |q 36478 |future |goto Spires of Arak 52.00,35.40
step
	|poi_rare Solar Magnifier
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 51.80,07.20
	|poiquest 37394
	|poiitem 119407
	|poiitem 120945
	|poicurrency AC
	kill Solar Magnifier##83990 |q 37394 |future |goto Spires of Arak 51.80,07.20
	|tip Run away when Solar Magnifier casts Excavation.
step
	|poi_rare Stonespite
	|poilvl 96
	|poispot Spires of Arak 33.40,22.00
	|poiquest 36265
	|poiitem 116858
	|poicurrency GR
	_Go up_ the hidden path |goto Spires of Arak/0 33.4,23.8 < 5
	kill Stonespite##84805 |q 36265 |future |goto Spires of Arak 33.40,22.00
step
	|poi_rare Sunderthorn
	|poilvl 96
	|poispot Spires of Arak 58.60,45.20
	|poiquest 36298
	|poiitem 116855
	|poicurrency GR
	from Stingtail Drone##84909+, Stingtail Worker##84905+
	kill Sunderthorn##84912 |q 36298 |future |goto Spires of Arak 58.60,45.20
	|tip Kill Stingtail mobs to spawn Sunderthorn.
step
	|poi_rare Swarmleaf
	|poilvl 97
	|poispot Spires of Arak 52.80,54.80
	|poiquest 36472
	|poiitem 116857
	|poicurrency GR
	kill Swarmleaf##85520 |q 36472 |future |goto Spires of Arak 52.80,54.80
step
	|poi_rare Talonbreaker
	|poilvl 96
	|poispot Spires of Arak 54.60,63.20
	|poiquest 36278
	|poiitem 116838
	|poicurrency GR
	_Go up_ the hidden path |goto Spires of Arak/0 54.9,60.0
	_Continue up_ the path |goto Spires of Arak/0 53.7,62.0
	kill Talonbreaker##84836 |q 36278 |future |goto Spires of Arak 54.60,63.20
	|tip He is in the little cave.
step
	|poi_rare Tesska the Broken
	|poilvl 97
	|poispot Spires of Arak 57.40,74.00
	|poiquest 36254
	|poiitem 116852
	|poicurrency GR
	kill Tesska the Broken##84775 |q 36254 |future |goto Spires of Arak 57.40,74.00
step
	|poi_rare Formless Nightmare
	|poiaccess Completionist
	|poilvl 103
	|poispot Spires of Arak 71.70,20.10
	|poiquest 37360
	|poiitem 119373
	|poiitem 120945
	|poicurrency AC
	_Click_ the portal to enter the shadow realm |goto Spires of Arak/0 72.3,23.6
	kill Formless Nightmare##85036 |q 37360 |future |goto Spires of Arak 71.70,20.10
	|tip When the Void Attunement bar reaches 0, you will return to the normal realm. Formless Nightmare will require a group.
step
	|poi_rare Giga Sentinel
	|poiaccess Completionist
	|poilvl 102
	|poispot Spires of Arak 71.40,45.00
	|poiquest 37393
	|poiitem 119401
	|poiitem 120945
	|poicurrency AC
	kill Giga Sentinel##87029 |q 37393 |future |goto Spires of Arak 71.40,45.00
step
	|poi_rare Kenos the Unraveler
	|poiaccess Completionist
	|poilvl 103
	|poispot Spires of Arak 70.40,23.80
	|poiquest 37361
	|poiitem 119354
	|poiitem 120945
	|poicurrency AC
	_Click_ the portal to enter the shadow realm |goto Spires of Arak/0 72.3,23.6
	kill Kenos the Unraveler##85037 |q 37361 |future |goto Spires of Arak 70.40,23.80
	|tip This rare REQUIRES 3 people to summon. While in the shadow realm, each player must close a portal.
step
	|poi_rare Mecha Plunderer
	|poiaccess Completionist
	|poilvl 101
	|poispot Spires of Arak 74.41,38.64
	|poiquest 37391
	|poiitem 119398
	|poiitem 120945
	|poicurrency AC
	kill Mecha Plunderer##87026 |q 37391 |future |goto Spires of Arak 74.41,38.64
step
	|poi_rare Soul-Twister Torek
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 72.40,19.40
	|poiquest 37358
	|poiitem 119410
	|poiitem 120945
	|poicurrency AC
	kill Soul-Twister Torek##85026 |q 37358 |future |goto Spires of Arak 72.40,19.40
	|tip Run out of melee range when he casts Void Tempest.
step
	|poi_rare Voidreaver Urnae
	|poiaccess Completionist
	|poilvl 101
	|poispot Spires of Arak 72.90,30.90
	|poiquest 37359
	|poiitem 119392
	|poiitem 120945
	|poicurrency AC
	kill Voidreaver Urnae##85078 |q 37359 |future |goto Spires of Arak 72.90,30.90
	|tip Clear nearby adds before engaging Urnae.
--//Nagrand\\--
step
	|poi_rare Ancient Blademaster
	|poilvl 98
	|poispot Nagrand D 84.60,53.40
	|poiquest 35778
	|poiitem 116832
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 83.1,52.5 < 10
	_Cross_ the bridge |goto Nagrand D/0 84.0,52.1 < 10
	Click Blademaster Sword
	kill Ancient Blademaster##82899 |q 35778 |future |goto Nagrand D 84.60,53.40
step
	|poi_rare Aogexon
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 51.00,16.00
	|poiquest 37210
	|poiitem 118654
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 53.4,18.9 < 10
	kill Aogexon##86774 |q 37210 |future |goto Nagrand D 51.00,16.00
	|tip Aogexon will require a group.
step
	|poi_rare Bergruu
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 62.60,16.80
	|poiquest 37211
	|poiitem 118655
	|poicurrency GR
	map Nagrand D/0
	path follow smart; loop on; ants curved; dist 20
	path	62.4,27.4	61.6,18.8	61.2,12.4
	path	62.6,14.6	65.8,21.2	65.6,28.0
	kill Bergruu##86732 |q 37211 |future
	|tip Bergruu wanders a small area. You will need a group to defeat him.
step
	|poi_rare Berserk T-300 Series Mark II
	|poilvl 98
	|poispot Nagrand D 76.9,64.4
	|poiquest 35735
	|poiitem 116823
	|poicurrency GR
	_Climb up_ the hill here |goto Nagrand D/0 77.3,65.1 < 5
	kill Berserk T-300 Series Mark II##82826 |q 35735 |future |goto Nagrand D 76.9,64.4
	|tip Click the detonator in front of the cave to release T-300 Series Mark II.
step
	|poi_rare Bonebreaker
	|poilvl 100
	|poispot Nagrand D 40.00,16.00
	|poiquest 37396
	|poiitem 119370
	|poiitem 120945
	|poicurrency AC
	_Go up_ the steps |goto Nagrand D/0 38.2,16.2 < 10
	kill Bonebreaker##87837 |q 37396 |future |goto Nagrand D 40.00,16.00
	|tip Bonebreaker has a very long respawn timer.
step
	|poi_rare Brutag Grimblade
	|poilvl 100
	|poispot Nagrand D 43.00,36.40
	|poiquest 37400
	|poiitem 119380
	|poiitem 120945
	|poicurrency AC
	kill Brutag Grimblade##87234 |q 37400 |future |goto Nagrand D 43.00,36.40
	|tip He's in front of the big tree.
step
	|poi_rare Captain Ironbeard
	|poilvl 99
	|poispot Nagrand D 34.3,76.9
	|poiquest 34727
	|poiitem 118244
	|poiitem 116809
	|poicurrency GR
	_Swim towards_ the ship |goto Nagrand D/0 35.8,76.4 < 10
	kill Captain Ironbeard##79725 |q 34727 |future |goto Nagrand D 34.3,76.9
	|tip Avoid the mines in the water, they go boom.
	|tip Click the ladder to get on the ship.
step
	|poi_rare Dekorhan
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 64.20,30.00
	|poiquest 37221
	|poiitem 118656
	|poicurrency GR
	kill Dekorhan##86743 |q 37221 |future |goto Nagrand D 64.20,30.00
	|tip Dekorhan sits atop the hill and will require a group to defeat.
step
	|poi_rare Direhoof
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 60.00,38.00
	|poiquest 37222
	|poiitem 118657
	|poicurrency GR
	kill Direhoof##86729 |q 37222 |future |goto Nagrand D/0 60.2,38.7
	|tip Direhoof sits atop the waterfall and will require a group to defeat.
step
	|poi_rare Durg Spinecrusher
	|poilvl 100
	|poispot Nagrand D 38.60,22.40
	|poiquest 37395
	|poiitem 119405
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Broken Precipice |goto Nagrand D/0 39.3,24.3 < 10
	kill Durg Spinecrusher##87788 |q 37395 |future |goto Nagrand D 38.60,22.40
step
	|poi_rare Explorer Nozzand
	|poilvl 98
	|poispot Nagrand D 89.00,41.20
	|poiquest 35623
	|poiitem 118679
	|poicurrency GR
	_Drop down_ from the top of the waterfall here |goto Nagrand D/0 89.4,43.3 < 5
	_Run and jump_ into the cave behind the waterfall |goto Nagrand D/0 88.8,42.7 < 8
	kill Explorer Nozzand##82486 |q 35623 |future |goto Nagrand D 89.00,41.20
step
	|poi_rare Fangler
	|poilvl 98
	|poispot Nagrand D 74.80,11.80
	|poiquest 35836
	|poiitem 116836
	|poicurrency GR
	_Click_ the abandoned fishing rod |goto Nagrand D/0 75.3,10.9
	Select: "_Reel it in!_"
	kill Fangler##82975 |q 35836 |future |goto Nagrand D 74.80,11.80
	|tip You will be pulled into the water in front of Fangler, be prepared.
step
	|poi_rare Flinthide
	|poilvl 99
	|poispot Nagrand D 69.8,42.0
	|poiquest 35893
	|poiitem 116807
	|poicurrency GR
	kill Flinthide##83483 |q 35893 |future |goto Nagrand D 69.8,42.0
	|tip Flinthide resides in the boneyard.
step
	|poi_rare Gagrog the Brutal
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 48.20,22.20
	|poiquest 37223
	|poiitem 118658
	|poicurrency GR
	_Cross_ Earthshaker Gorge |goto Nagrand D/0 49.0,24.9 < 15
	kill Gagrog the Brutal##86771 |q 37223 |future |goto Nagrand D 48.20,22.20
	|tip Gagrog will require a group to defeat.
step
	|poi_rare Gar'lua
	|poilvl 99
	|poispot Nagrand D 52.20,55.80
	|poiquest 35715
	|poiitem 118246
	|poicurrency GR
	kill Gar'lua##82764 |q 35715 |future |goto Nagrand D 52.20,55.80
	|tip Gar'lua is inside the hut.
step
	|poi_rare Gaz'orda
	|poilvl 99
	|poispot Nagrand D 42.20,78.60
	|poiquest 34725
	|poiitem 116798
	|poicurrency GR
	_Enter_ the cave |goto Nagrand D 42.20,78.60 < 10
	kill Gaz'orda##80122 |q 34725 |future |goto Nagrand D/0 43.8,77.7
step
	|poi_rare Gnarlhoof the Rabid
	|poilvl 98
	|poispot Nagrand D 66.60,56.60
	|poiquest 35717
	|poiitem 116824
	|poicurrency GR
	kill Gnarlhoof the Rabid##82778 |q 35717 |future |goto Nagrand D 66.60,56.60
	|tip Gnarlhoof is out on a platform overlooking the canyon.
step
	|poi_rare Gorepetal
	|poilvl 98
	|poispot Nagrand D 93.20,28.20
	|poiquest 35898
	|poiitem 116916
	|poicurrency GR
	_Follow_ the shore |goto Nagrand D/0 92.3,22.2 < 15
	_Enter_ the cave |goto Nagrand D/0 94.1,26.5 < 10
	click Pristine Lily##233310
	kill Gorepetal##83509 |q 35898 |future |goto Nagrand D 93.20,28.20
step
	|poi_rare Gortag Steelgrip
	|poiaccess Completionist
	|poilvl 100
	|poispot Nagrand D 42.00,36.80
	|poiquest 37472
	|poiitem 120945
	|poicurrency AC
	kill Mok'gol Pack-Leader##87584
	collect 1 Secret Meeting Details##120290 |n |only if itemcount(120290) < 1
	_Click_ the horn hanging from the right post of the building to summon Gortag |goto Nagrand D/0 42.1,36.8 |only if itemcount(120290) > 0
	kill Krahl Deadeye##87239
	kill Gortag Steelgrip##87344 |q 37472 |future |goto Nagrand D/0 42.4,36.5
	|tip Deal with Gortag first, as Krahl uses disengage frequenly and will force you to chase him.
step
	|poi_rare Graveltooth
	|poilvl 98
	|poispot Nagrand D 84.60,36.60
	|poiquest 36159
	|poiitem 118689
	|poicurrency GR
	If you see crossed swords on the minimap, Graveltooth can spawn
	kill Greedy Stonemuncher##84255
	kill Graveltooth##84263 |q 36159 |future |goto Nagrand D/0 84.0,36.9
	|tip Killing around 15 Greedy Stonemunchers will spawn Graveltooth.
step
	|poi_rare Greatfeather
	|poilvl 98
	|poispot Nagrand D 66.80,51.20
	|poiquest 35714
	|poiitem 116795
	|poicurrency GR
	_Go out_ onto the isthmus |goto Nagrand D/0 67.9,50.3 < 10
	kill Greatfeather##82758 |q 35714 |future |goto Nagrand D 66.80,51.20
step
	|poi_rare Grizzlemaw
	|poilvl 98
	|poispot Nagrand D 89.5,72.8
	|poiquest 35784
	|poiitem 118687
	|poicurrency GR
	kill Grizzlemaw##82912 |q 35784 |future |goto Nagrand D/0 89.5,72.8
	|tip Around the side of the hut.
step
	|poi_rare Hunter Blacktooth
	|poilvl 98
	|poispot Nagrand D 80.60,30.40
	|poiquest 35923
	|poiitem 118245
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 81.2,27.6 < 10
	kill Hunter Blacktooth##83603 |q 35923 |future |goto Nagrand D 80.60,30.40
	|tip Blacktooth is sitting by a bloody corpse.
step
	|poi_rare Hyperious
	|poilvl 98
	|poispot Nagrand D 87.00,55.00
	|poiquest 34862
	|poiitem 116799
	|poicurrency GR
	click Summoning Brazier##230671
	Light the first Summoning Brazier |goto Nagrand D/0 86.6,56.4 < 5
	Light the second Summoning Brazier |goto Nagrand D/0 86.7,55.4 < 5
	Light the third Summoning Brazier |goto Nagrand D/0 87.1,54.2 < 5
	kill Hyperious##78161 |q 34862 |future |goto Nagrand D/0 87.2,55.2
	|tip Hyperious will spawn from the lava when all 3 braziers are lit.
step
	|poi_rare Karosh Blackwind
	|poilvl 100
	|poispot Nagrand D 45.80,34.80
	|poiquest 37399
	|poiitem 119355
	|poiitem 120945
	|poicurrency AC
	kill Karosh Blackwind##86959 |q 37399 |future |goto Nagrand D 45.80,34.80
	|tip Karosh spawns in front of the giant stone pillar in Mok'gol Watchpost.
step
	|poi_rare Krahl Deadeye
	|poilvl 100
	|poispot Nagrand D 43.80,34.40
	|poiquest 37473
	|poiitem 120945
	|poicurrency AC
	kill Mok'gol Pack-Leader##87584
	collect 1 Secret Meeting Details##120290 |n |only if itemcount(120290) < 1
	_Click_ the horn hanging from the right post of the building to summon Gortag |goto Nagrand D/0 42.1,36.8 < 10 |only if itemcount(120290) > 0
	kill Krahl Deadeye##87239 |q 37473 |future |goto Nagrand D/0 42.4,36.5
	kill Gortag Steelgrip##87344
	|tip Deal with Gortag first, as Krahl uses disengage frequenly and will force you to chase him.
step
	|poi_rare Krud the Eviscerator
	|poiaccess Completionist
	|poilvl 100
	|poispot Nagrand D 58.20,12.00
	|poiquest 37398
	|poiitem 119384
	|poiitem 120945
	|poicurrency AC
	kill Krud the Eviscerator##88210 |q 37398 |future |goto Nagrand D/0 58.2,11.7
	|tip If Krud is available, you will see a tribute counter at the top of the screen.
	|tip Kill mobs until the counter reaches 0, and Krud will become attackable.
step
	|poi_rare Lernaea
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 52.00,90.00
	|poiquest 37408
	|poiitem 120945
	|poicurrency AC
	kill Lernaea##80370 |q 37408 |future |goto Nagrand D 52.00,90.00
	|tip Lernaea resides out in the South Sea and will require a group to defeat.
step
	|poi_rare Malroc Stonesunder
	|poilvl 98
	|poispot Nagrand D 81.20,60.00
	|poiquest 35932
	|poiitem 116796
	|poicurrency GR
	kill Lieutenant Bruna##83668
	kill Malroc Stonesunder##83643 |q 35932 |future |goto Nagrand D 81.20,60.00
	|tip He is located inside the hut at the crossroads.
step
	|poi_rare Mr. Pinchy Sr.
	|poilvl 100
	|poispot Nagrand D 45.80,15.20
	|poiquest 36229
	|poiitem 118690
	|poicurrency GR
	_Go to_ the Cerulean Lagoon |goto Nagrand D/0 49.7,18.6 < 15
	_Continue along_ the shore |goto Nagrand D/0 46.8,17.9 < 15
	kill Mr. Pinchy Sr.##84435 |q 36229 |future |goto Nagrand D 45.80,15.20
step
	|poi_rare Mu'gra
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 34.00,51.00
	|poiquest 37224
	|poiitem 118659
	|poicurrency GR
	kill Mu'gra##87666 |q 37224 |future |goto Nagrand D 34.00,51.00
	|tip Mu'gra will require a group to defeat.
step
	|poi_rare Netherspawn
	|poilvl 99
	|poispot Nagrand D 47.60,70.80
	|poiquest 35865
	|poiitem 116815
	|poicurrency GR
	kill Netherspawn##83401 |q 35865 |future |goto Nagrand D 47.60,70.80
	|tip Netherspawn will summon little slimes, you may need a cooldown for this.
step
	|poi_rare Ophiis
	|poilvl 99
	|poispot Nagrand D 42.80,49.20
	|poiquest 35875
	|poiitem 116765
	|poicurrency GR
	kill Ophiis##83409 |q 35875 |future |goto Nagrand D 42.80,49.20
	|tip Ophiis swims up and down this section of the river.
	|tip Interrupt Ophiis as much as possible, especially Shocking Blast.
step
	|poi_rare Outrider Duretha
	|poilvl 98
	|poispot Nagrand D 61.80,69.00
	|poiquest 35943
	|poiitem 116800
	|poicurrency GR
	_Cross_ the waterfall |goto Nagrand D/0 63.9,71.2 < 10
	kill Outrider Duretha##83680 |q 35943 |future |goto Nagrand D 61.80,69.00
step
	|poi_rare Pit Beast
	|poilvl 100
	|poispot Nagrand D 58.1,18.6
	|poiquest 37637
	|poiitem 120317
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Gorian Proving Grounds |goto Nagrand D/0 56.9,19.4 < 20
	kill Pit Beast##88208 |q 37637 |future |goto Nagrand D 58.1,18.6
step
	|poi_rare Pit Slayer
	|poiaccess Completionist
	|poilvl 101
	|poispot Nagrand D 38.00,19.60
	|poiquest 37397
	|poiitem 119389
	|poiitem 120945
	|poicurrency AC
	As you travel, look for a blue transformation crystal and click it to transform --Jewel of Transformation
	_Enter_ the Broken Precipice |goto Nagrand D/0 39.3,24.3 < 10
	_Go right_ up the path |goto Nagrand D/0 36.9,19.9 < 10
	_Continue_ going right |goto Nagrand D/0 38.3,15.4 < 10
	_Click_ the Pit Slayer's Trophy while under the effects of a transformation crystal |goto Nagrand D/0 39.8,14.5 < 5
	kill Pit Slayer##87846 |q 37397 |future |goto Nagrand D/0 39.8,14.5
	only if havequest(36677) or havequest(36694) or havequest(38193) or havequest(38180)
step
	|poi_rare Redclaw the Feral
	|poilvl 98
	|poispot Nagrand D 73.60,57.80
	|poiquest 35712
	|poiitem 118243
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 73.6,56.8 < 10
	kill Redclaw the Feral##82755 |q 35712 |future |goto Nagrand D 73.60,57.80
	|tip He is inside the cave.
step
	|poi_rare Ru'klaa
	|poilvl 99
	|poispot Nagrand D 58.00,84.00
	|poiquest 35900
	|poiitem 118688
	|poicurrency GR
	_Follow_ the shore |goto Nagrand D/0 54.0,79.5 < 15
	_Continue_ through the canyon |goto Nagrand D/0 56.8,81.6 < 15
	kill Ru'klaa##83526 |q 35900 |future |goto Nagrand D 58.00,84.00
step
	|poi_rare Scout Pokhar
	|poilvl 98
	|poispot Nagrand D 54.80,61.20
	|poiquest 35931
	|poiitem 116797
	|poicurrency GR
	_Jump to_ this platform |goto Nagrand D/0 58.7,60.3 < 10
	_Jump_ to the second platform |goto Nagrand D/0 58.0,60.9 < 10
	_Go up_ the hill |goto Nagrand D/0 56.1,59.4 < 10
	kill Scout Pokhar##83634 |q 35931 |future |goto Nagrand D 54.80,61.20
step
	|poi_rare Sean Whitesea
	|poilvl 99
	|poispot Nagrand D 60.93,47.75
	|poiquest 35912
	|poiitem 116834
	|poicurrency GR
	click Abandoned Chest##233356
	kill Highwayman##83559
	kill Sean Whitesea##83542 |q 35912 |future |goto Nagrand D 60.93,47.75
	|tip After clicking the chest, Sean and 2 Highwaymen will spawn.
step
	|poi_rare Soulfang
	|poilvl 98
	|poispot Nagrand D 75.60,65.00
	|poiquest 36128
	|poiitem 116806
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 75.3,61.6 < 10
	_Cross_ the fallen tree |goto Nagrand D/0 73.9,62.2 < 5
	_Continue_ following the path |goto Nagrand D/0 74.5,62.6 < 10
	_Go over_ the rocks and planks |goto Nagrand D/0 75.5,62.0 < 10
	_Continue_ following the path |goto Nagrand D/0 76.2,61.5 < 10
	_Enter_ the cave |goto Nagrand D/0 74.7,64.0 < 10
	kill Soulfang##80057 |q 36128 |future |goto Nagrand D 75.60,65.00
step
	|poi_rare Thek'talon
	|poiaccess Completionist
	|poilvl 100
	|poispot Nagrand D 58.40,35.80
	|poiquest 37225
	|poiitem 118660
	|poicurrency GR
	kill Thek'talon##86750 |q 37225 |future |goto Nagrand D 58.40,35.80
	|tip Thek'talon patrols around the area and will require a group to kill.
step
	|poi_rare Tura'aka
	|poilvl 99
	|poispot Nagrand D 65.00,39.00
	|poiquest 35920
	|poiitem 116814
	|poicurrency GR
	kill Tura'aka##83591 |q 35920 |future |goto Nagrand D 65.00,39.00
step
	|poi_rare Vileclaw
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 37.00,38.00
	|poiquest 37520
	|poiitem 120172
	|poicurrency GR
	kill Vileclaw##88951 |q 37520 |future |goto Nagrand D 37.00,38.00
	|tip Vileclaw will require a group to defeat.
step
	|poi_rare Warmaster Blugthol
	|poilvl 99
	|poispot Nagrand D 82.60,76.20
	|poiquest 34645
	|poiitem 116805
	|poicurrency GR
	_Enter_ this building |goto Nagrand D/0 82.7,75.6 < 10
	kill Warmaster Blugthol##79024 |q 34645 |future |goto Nagrand D 82.60,76.20
step
	|poi_rare Windcaller Korast
	|poilvl 99
	|poispot Nagrand D 70.60,29.40
	|poiquest 35877
	|poiitem 116808
	|poicurrency GR
	_Go onto_ the ridge |goto Nagrand D/0 77.5,25.2 < 20
	_Follow_ the path |goto Nagrand D/0 75.6,28.2 < 15
	_Continue down_ |goto Nagrand D/0 72.4,31.3 < 15
	kill Windcaller Korast##83428 |q 35877 |future |goto Nagrand D 70.60,29.40
step
	|poi_rare Xelganak
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 41.00,44.00
	|poiquest 37226
	|poiitem 118661
	|poicurrency GR
	kill Xelganak##86835 |q 37226 |future |goto Nagrand D 41.00,44.00
	|tip You will need a group to defeat this rare.
step
	|poi_rare Keravnos
	|poiaccess Completionist
	|poilvl 103
	|poispot Tanaan Jungle 41.40,79.60
	|poiquest 37407
	|poicurrency GR
	kill Keravnos##80398 |q 37407 |future |goto Tanaan Jungle 41.40,79.60
	|tip Keravnos resides at the mouth of the river flowing out of Tanaan Jungle and will require a group to defeat.
--//Garrison/Misc\\--
step
	|poi_rare Bahameye
	|poilvl 90
	|poispot Shadowmoon Valley D 29.60,06.20
	|poiquest 35281
	|poiitem 111666
	|poicurrency GR
	_Swim around_ the boat |goto Shadowmoon Valley D/0 28.6,6.6
	kill Bahameye##81406 |q 35281 |future |goto Shadowmoon Valley D 29.60,06.20
	|tip He is underwater.
step
	|poi_rare Gorum
	|poilvl 91
	|poispot Shadowmoon Valley D 21.60,33.00
	|poiquest 33664
	|poiitem 113082
	|poicurrency GR
	_Enter_ the cave |goto Shadowmoon Valley D/15 79.6,34.4
	_Go straight_ through the cave |goto Shadowmoon Valley D/15 39.0,17.2
	_Go around_ the path |goto Shadowmoon Valley D/15 25.3,60.6
	kill Gorum##76380 |q 33664 |future |goto Shadowmoon Valley D/15 31.1,34.8
step
	|poi_rare Windfang Matriarch
	|poilvl 90
	|poispot Shadowmoon Valley D 42.80,41.00
	|poiquest 33038
	|poiitem 113553
	|poicurrency GR
	To kill this Rare Elite, an Alliance player must start this event
	|tip You can have a friend who is Alliance help you with this.
	kill Windfang Runner##75431+
	kill Windfang Matriarch##75434 |q 33038 |future |goto Shadowmoon Valley D 42.80,41.00
--//Tanaan Jungle\\--
step
	|poi_rare Tho'gar Gorefist
	|poilvl 100
	|poispot Tanaan Jungle 13.60,56.80
	|poiquest 38747
	|poiitem 127310
	|poiitem 120945
	|poicurrency AC
	kill Tho'gar Gorefist##91243 |quest 38747 |goto Tanaan Jungle 13.60,56.80 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare The Iron Houndmaster
	|poilvl 100
	|poispot Tanaan Jungle 12.7,56.9
	|poiquest 38751
	|poiitem 127321
	|poiitem 120945
	|poicurrency AC
	Click the Strongpoint banner |goto Tanaan Jungle/0 12.6,56.9 < 5
	|tip Successfully defending the Strongpoint will spawn the Iron Houndmaster.
	kill The Iron Houndmaster##92977 |goto Tanaan Jungle 12.7,56.9 |quest 38751 |future
step
	|poi_rare Grannok
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 16.00,59.20
	|poiquest 38750
	|poiitem 127649
	|poiitem 120945
	|poicurrency AC
	_Enter_ the building |goto Tanaan Jungle/0 16.4,58.7 < 8
	kill Grannok##93057 |quest 38750 |goto Tanaan Jungle 16.00,59.20 |future
	|tip This rare will require a group to defeat. He is all the way at the top of the tower.
step
	|poi_rare Commander Krag'goth
	|poilvl 100
	|poispot Tanaan Jungle 15.00,54.20
	|poiquest 38746
	|poiitem 127319
	|poiitem 120945
	|poicurrency AC
	_Enter_ the building |goto Tanaan Jungle/0 15.4,54.8 < 8
	kill Commander Krag'goth##91232 |quest 38746 |goto Tanaan Jungle 15.00,54.20 |future
	|tip This rare will require a group to defeat. He is all the way at the top of the tower.
step
	|poi_rare Szirek the Twisted
	|poilvl 100
	|poispot Tanaan Jungle 16.00,57.20
	|poiquest 38752
	|poiitem 127296
	|poiitem 120945
	|poicurrency AC
	Click the Strongpoint banner |goto Tanaan Jungle/0 15.8,57.5 < 5
	|tip Successfully defending the Strongpoint will spawn Szirek.
	kill Szirek the Twisted##93001 |quest 38752 |goto Tanaan Jungle 16.00,57.20 |future
	|tip This rare will require a group to defeat. He sits atop the massive war machine and jumps down when Strongpoint - East is captured.
step
	|poi_rare Podlord Wakkawam
	|poilvl 100
	|poispot Tanaan Jungle 17.0,48.7
	|poiquest 38282
	|poiitem 127336
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 17.1,50.5 < 8
	kill Podlord Wakkawam##91374 |quest 38282 |goto Tanaan Jungle 17.0,48.7 |future
step
	|poi_rare Bilkor the Thrower
	|poilvl 100
	|poispot Tanaan Jungle/0 23.8,51.9
	|poiquest 38262
	|poiitem 127307
	|poiitem 120945
	|poicurrency AC
	kill Bilkor the Thrower##90884 |quest 38262 |goto Tanaan Jungle/0 23.8,51.9 |future
	|tip Bilkor is inside the hut.
step
	|poi_rare Rogond the Tracker
	|poilvl 100
	|poispot Tanaan Jungle 20.5,49.6
	|poiquest 38263
	|poiitem 127314
	|poiitem 120945
	|poicurrency AC
	_Enter_ the hut |goto Tanaan Jungle/0 20.6,50.0 < 6
	kill Rogond the Tracker##90885 |quest 38263 |goto Tanaan Jungle/0 20.5,49.6 |future
step
	|poi_rare Driss Vile
	|poilvl 100
	|poispot Tanaan Jungle 19.80,53.60
	|poiquest 38736
	|poiitem 127331
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 21.0,52.8 < 8
	click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 20.6,53.5 < 5
	|tip Use the Grappling Hook to reach the top of the tower.
	kill Driss Vile##93028 |quest 38736 |goto Tanaan Jungle 19.80,53.60 |future
step
	|poi_rare Drivnul
	|poilvl 100
	|poispot Tanaan Jungle 25.50,46.20
	|poiquest 38264
	|poiitem 127298
	|poiitem 120945
	|poicurrency AC
	_Go up_ the road |goto Tanaan Jungle/0 23.8,47.4 < 20
	kill Drivnul##90888 |quest 38264 |goto Tanaan Jungle 25.50,46.20 |future
	|tip He is in the blood pit.
step
	|poi_rare Dorg the Bloody
	|poilvl 100
	|poispot Tanaan Jungle 23.20,48.40
	|poiquest 38265
	|poiitem 127301
	|poiitem 120945
	|poicurrency AC
	kill Dorg the Bloody##90887 |quest 38265 |goto Tanaan Jungle 23.20,48.40 |future
	|tip Dorg wanders around this area.
step
	|poi_rare Bloodhunter Zulk
	|poilvl 100
	|poispot Tanaan Jungle 24.7,50.1
	|poiquest 38266
	|poiitem 127303
	|poiitem 120945
	|poicurrency AC
	kill Bloodhunter Zulk##90936 |quest 38266 |goto Tanaan Jungle/0 24.7,50.1 |future
	|tip Zulk spawns at the tower and patrolls the paths.
	|tip Zulk wanders around this area.
step
	|poi_rare Remnant of the Blood Moon
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 22.20,50.80
	|poiquest 39159
	|poiitem 127666
	|poiitem 120945
	|poicurrency AC
	kill Remnant of the Blood Moon##91227 |quest 39159 |goto Tanaan Jungle 22.20,50.80 |future
	|tip Drained Blood Crystals are found all over the area.
	|tip This rare will require you and your allies to collect 125 Drained Blood Crystals and use them at this altar. You will see a progress bar at the top of the screen.
	|tip This rare will require a group to defeat.
step
	|poi_rare Rasthe
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 17.3,42.9
	|poiquest 38034
	|poiitem 127661
	|poiitem 120945
	|poicurrency AC
	_Proceed_ through the arch |goto Tanaan Jungle/0 18.2,41.1 < 8
	kill Rasthe##90782 |quest 38034 |goto Tanaan Jungle 17.3,42.9 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare High Priest Ikzan
	|poilvl 100
	|poispot Tanaan Jungle 20.40,40.00
	|poiquest 38028
	|poiitem 122117
	|poiitem 120945
	|poicurrency AC
	kill High Priest Ikzan##90777 |quest 38028 |goto Tanaan Jungle 20.40,40.00 |future
step
	|poi_rare Varyx the Damned
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 27.60,32.80
	|poiquest 37937
	|poiitem 127351
	|poiitem 120945
	|poicurrency AC
	_Note:_ This rare currently has phasing issues and often cannot be engaged! --As of patch 6.2.0
	_Go through_ the arch |goto Tanaan Jungle/0 23.8,36.9 < 8
	_Go up_ the hill |goto Tanaan Jungle/0 25.6,34.1 < 12
	kill Varyx the Damned##92451 |quest 37937 |goto Tanaan Jungle 27.60,32.80 |future
	|tip This rare will require a group to defeat. To release him, the five beams binding him must be interrupted by players standing in their path.
step
	|poi_rare Relgor
	|poilvl 100
	|poispot Tanaan Jungle 26.30,54.20
	|poiquest 38496
	|poiitem 127335
	|poiitem 120945
	|poicurrency AC
	kill Relgor##92197 |quest 38496 |goto Tanaan Jungle 26.30,54.20 |future
step
	|poi_rare Felbore
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 28.60,50.80
	|poiquest 38775
	|poiitem 127350
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 30.9,53.1 < 10
	kill Felbore##93168 |quest 38775 |goto Tanaan Jungle 28.60,50.80 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Ceraxas
	|poilvl 100
	|poispot Tanaan Jungle 31.40,68.00
	|poiquest 38031
	|poiitem 120945
	|poicurrency AC
	_Go up_ the steps |goto Tanaan Jungle/0 30.5,68.6 < 10
	kill Ceraxas##90434 |quest 38031 |goto Tanaan Jungle 31.40,68.00 |future
step
	|poi_rare Jax'zor
	|poilvl 100
	|poispot Tanaan Jungle 26.6,75.3
	|poiquest 38030
	|poiitem 127322
	|poiitem 120945
	|poicurrency AC
	_Enter_ the mine |goto Tanaan Jungle/0 29.3,70.9 < 8
	kill Jax'zor##90437 |quest 38030 |goto Tanaan Jungle 26.6,75.3 |future
	|tip Jax'zor wanders a small area around the bottom floor of the cavern.
step
	|poi_rare Mistress Thavra
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 25.80,79.00
	|poiquest 38032
	|poiitem 127300
	|poiitem 120945
	|poicurrency AC
	_Enter_ the mine |goto Tanaan Jungle/0 29.3,70.9 < 8
	_Go up_ the ramp on the right |goto Tanaan Jungle/0 26.2,74.8 < 10
	_Continue around_ the tunnel |goto Tanaan Jungle/0 24.2,75.7 < 12
	kill Mistress Thavra##90442 |quest 38032 |goto Tanaan Jungle 25.80,79.00 |future
step
	|poi_rare Lady Oran
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 25.40,77.20
	|poiquest 38029
	|poiitem 127316
	|poiitem 120945
	|poicurrency AC
	kill Lady Oran##90438 |quest 38029 |goto Tanaan Jungle 25.40,77.20 |future
step
	|poi_rare Imp-Master Valessa
	|poilvl 100
	|poispot Tanaan Jungle 31.60,72.80
	|poiquest 38026
	|poiitem 127655
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Temple of Sha'naar |goto Tanaan Jungle/0 28.7,67.1 < 8
	kill Imp-Master Valessa##90429 |quest 38026 |goto Tanaan Jungle 31.60,72.80 |future
step
	|poi_rare Belgork
	|poilvl 100
	|poispot Tanaan Jungle 35.40,46.80
	|poiquest 38609
	|poiitem 127650
	|poiitem 126950
	|poiitem 120945
	|poicurrency AC
	_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 32.4,48.9 < 12
	_Go to_ the end of the hallway |goto Tanaan Jungle/0 34.8,47.2 < 12
	kill Belgork##92552 |quest 38609 |goto Tanaan Jungle 35.40,46.80 |future
step
	|poi_rare Thromma the Gutslicer
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.00,44.40
	|poiquest 38620
	|poiitem 127327
	|poiitem 120945
	|poicurrency AC
	_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 32.4,48.9 < 12
	_Go to_ the end of the hallway |goto Tanaan Jungle/0 34.8,47.2 < 12
	_Continue along_ the left passage |goto Tanaan Jungle/0 34.5,45.5 < 12
	_Drop down_ the hole |goto Tanaan Jungle/0 35.0,44.5 < 5
	kill Thromma the Gutslicer##92574 |quest 38620 |goto Tanaan Jungle 34.00,44.40 |future
step
	|poi_rare Gorabosh
	|poilvl 100
	|poispot Tanaan Jungle 33.00,35.70
	|poiquest 38709
	|poiitem 127304
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 31.4,36.4
	kill Gorabosh##92941 |quest 38709 |goto Tanaan Jungle 33.00,35.70 |future
step
	|poi_rare Zoug the Heavy
	|poilvl 100
	|poispot Tanaan Jungle 37.00,32.80
	|poiquest 39045
	|poiitem 127308
	|poiitem 128252
	|poiitem 120945
	|poicurrency AC
	_Go up_ the ramp |goto Tanaan Jungle/0 37.7,35.2
	kill Zoug the Heavy##90122 |quest 39045 |goto Tanaan Jungle 37.00,32.80 |future
step
	|poi_rare Harbormaster Korak
	|poilvl 100
	|poispot Tanaan Jungle 39.60,32.60
	|poiquest 39046
	|poiitem 127309
	|poiitem 120945
	|poicurrency AC
	kill Harbormaster Korak##90094 |quest 39046 |goto Tanaan Jungle 39.60,32.60 |future
step
	|poi_rare Sergeant Mor'grak
	|poilvl 100
	|poispot Tanaan Jungle 42.40,37.30
	|poiquest 37953
	|poiitem 127318
	|poiitem 120945
	|poicurrency AC
	kill Sergeant Mor'grak##90024 |quest 37953 |goto Tanaan Jungle 42.40,37.30 |future
	|tip He wanders around the training grounds.
step
	|poi_rare Cindral the Wildfire
	|poilvl 100
	|poispot Tanaan Jungle 44.60,37.60
	|poiquest 37990
	|poiitem 127660
	|poiitem 128255
	|poiitem 120945
	|poicurrency AC
	kill Remnant of Cindral##90522
	|tip Killing the Remnant will spawn Cindral.
	_Enter_ the building |goto Tanaan Jungle/0 43.9,37.0 < 8
	kill Cindral the Wildfire##90519 |quest 37990 |goto Tanaan Jungle 44.60,37.60 |future
step
	|poi_rare Felsmith Damorka
	|poilvl 100
	|poispot Tanaan Jungle 45.80,47.00
	|poiquest 38634
	|poiitem 127302
	|poiitem 128258
	|poiitem 120945
	|poicurrency AC
	kill Felsmith Damorka##92647 |quest 38634 |goto Tanaan Jungle 45.80,47.00 |future
step
	|poi_rare Executor Riloth
	|poilvl 100
	|poispot Tanaan Jungle 50.00,36.00
	|poiquest 38411
	|poiitem 127323
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Tanaan Jungle/0 47.5,38.8
	_Cross_ the bridge |goto Tanaan Jungle/0 48.6,36.6 < 10
	kill Executor Riloth##91727 |quest 38411 |goto Tanaan Jungle 50.00,36.00 |future
	|tip Riloth patrols a large area. You will have to search around for him.
step
	|poi_rare Grand Warlock Nethekurse
	|poilvl 100
	|poispot Tanaan Jungle 46.20,42.40
	|poiquest 38400
	|poiitem 127299
	|poiitem 120945
	|poicurrency AC
	kill Grand Warlock Nethekurse##16807 |quest 38400 |goto Tanaan Jungle 46.20,42.40 |future
step
	|poi_rare Commander Org'mok
	|poilvl 100
	|poispot Tanaan Jungle 51.00,46.00
	|poiquest 38749
	|poiitem 127313
	|poiitem 120945
	|poicurrency AC
	kill Commander Org'mok##89675 |quest 38749 |goto Tanaan Jungle 51.00,46.00 |future
step
	|poi_rare Captain Grok'mar
	|poilvl 100
	|poispot Tanaan Jungle/0 48.6,57.4
	|poiquest 38820
	|poiitem 127664
	|poiitem 120945
	|poicurrency AC
	kill Captain Grok'mar##93264 |quest 38820 |goto Tanaan Jungle/0 48.6,57.4 |future
	|tip He sits on a chair next to the torch.
step
	|poi_rare Shadowthrash
	|poilvl 100
	|poispot Tanaan Jungle 49.70,61.40
	|poiquest 38812
	|poiitem 127665
	|poiitem 120945
	|poicurrency AC
	kill Shadowthrash##93236 |quest 38812 |goto Tanaan Jungle 49.70,61.40 |future
	|tip Shadowthrash is next to the broken tree.
step
	|poi_rare Magwia
	|poilvl 100
	|poispot Tanaan Jungle 52.20,65.10
	|poiquest 38726
	|poiitem 127332
	|poiitem 120945
	|poicurrency AC
	kill Magwia##93002 |quest 38726 |goto Tanaan Jungle 52.20,65.10 |future
	|tip Magwai is in the small clearing next to the pond.
step
	|poi_rare Bramblefell
	|poilvl 100
	|poispot Tanaan Jungle 40.80,70.00
	|poiquest 38209
	|poiitem 127652
	|poiitem 120945
	|poicurrency AC
	kill Bramblefell##91093 |quest 38209 |goto Tanaan Jungle 40.80,70.00 |future
	|tip Bramblefell wanders around the marsh in a small area.
step
	|poi_rare Kris'kar the Unredeemed
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 39.60,68.10
	|poiquest 38825
	|poiitem 127653
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 42.3,68.9 < 10
	_Go through_ the side passage |goto Tanaan Jungle/0 40.5,69.3 < 8
	kill Kris'kar the Unredeemed##93279 |quest 38825 |goto Tanaan Jungle 39.60,68.10 |future
step
	|poi_rare The Goreclaw
	|poilvl 100
	|poispot Tanaan Jungle 34.30,72.50
	|poiquest 38654
	|poiitem 127305
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 36.1,72.5 < 8
	kill The Goreclaw##92694 |quest 38654 |goto Tanaan Jungle 34.30,72.50 |future
	|tip The Goreclaw is in the back of the cave on the giant rock.
step
	|poi_rare The Night Haunter
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 39.40,73.80
	|poiquest 38632
	|poiitem 127355
	|poiitem 120945
	|poicurrency AC
	clicknpc Mutilated Corpse##92651
	|tip You must click corpses to gain 10 stacks of the night haunter debuff.
	kill The Night Haunter##92636 |quest 38632 |goto Tanaan Jungle 39.40,73.80 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Sylissa
	|poilvl 100
	|poispot Tanaan Jungle 41.00,78.80
	|poiquest 38628
	|poiitem 127311
	|poiitem 120945
	|poicurrency AC
	kill Sylissa##92606 |quest 38628 |goto Tanaan Jungle 41.00,78.80 |future
	|tip Sylissa is at the end of the river by the waterfall.
step
	|poi_rare Rendrak
	|poilvl 100
	|poiaccess Completionist
	|poispot Tanaan Jungle 41.80,73.80
	|poiquest 38631
	|poiitem 127356
	|poiitem 120945
	|poicurrency AC
	kill Direwing Predator##89788
	|tip They fly around Zorammarsh.
	collect 10 Smelly Musk Gland##124045 |only if not completedq(38631)
	Use the Musk Glands to summon Rendrak |use Smelly Musk Gland##124045 |only if itemcount(124045) > 9
	kill Rendrak##92627 |quest 38631 |goto Tanaan Jungle 41.80,73.80 |future
	|tip Rendrak flies around this area.
step
	|poi_rare Captain Ironbeard
	|poilvl 100
	|poispot Tanaan Jungle 36.20,79.70
	|poiquest 38756
	|poiitem 127659
	|poiitem 128257
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10
	_Go down_ the left passage |goto Tanaan Jungle/0 36.9,77.8 < 10
	kill Captain Ironbeard ##93076 |quest 38756 |goto Tanaan Jungle 36.20,79.70 |future
step
	|poi_rare Glub'glok
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.60,78.20
	|poiquest 38764
	|poiitem 127317
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10
	_Go into_ the big cavern |goto Tanaan Jungle/0 35.4,76.3 < 12
	_Swim across_ the pool |goto Tanaan Jungle/0 34.4,79.6
	_Follow_ the ledge |goto Tanaan Jungle/0 34.9,78.8 < 8
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.1,78.1
	click Ironbeard's Treasure##241718
	|tip Opening the chest will spawn Glub'glok, be ready.
	kill Glub'glok##93125 |quest 38764 |goto Tanaan Jungle 34.60,78.20 |future
step
	|poi_rare Bleeding Hollow Horror
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 51.00,74.40
	|poiquest 38696
	|poiitem 127654
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 44.7,77.6
	_Proceed into_ the cavern |goto Tanaan Jungle/0 46.8,76.3 < 12
	_Go up_ the ramp |goto Tanaan Jungle/0 48.8,77.9 < 12
	_Continue around_ the path |goto Tanaan Jungle/0 51.1,77.4 < 15
	kill Bleeding Hollow Horror##92657 |quest 38696 |goto Tanaan Jungle 51.00,74.40 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Broodlord Ixkor
	|poilvl 100
	|poispot Tanaan Jungle 57.60,67.20
	|poiquest 38589
	|poiitem 127349
	|poiitem 120945
	|poicurrency AC
	_Follow_ the path |goto Tanaan Jungle/0 55.6,65.6 < 15
	kill Broodlord Ixkor##92429 |quest 38589 |goto Tanaan Jungle/0 57.8,67.3 |future
step
	|poi_rare Soulslicer
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 62.60,72.00
	|poiquest 38600
	|poiitem 127315
	|poiitem 120945
	|poicurrency AC
	_Follow_ the shore |goto Tanaan Jungle/0 59.4,74.7 < 12
	kill Soulslicer##92495 |quest 38600 |goto Tanaan Jungle/0 62.7,72.2 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Gloomtalon
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 63.60,81.10
	|poiquest 38604
	|poiitem 127306
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 62.6,80.1 < 10
	kill Gloomtalon##92508 |quest 38604 |goto Tanaan Jungle 63.60,81.10 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Krell the Serene
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 52.0,83.9
	|poiquest 38605
	|poiitem 127418
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 51.5,79.8 < 12
	kill Krell the Serene##92517 |quest 38605 |goto Tanaan Jungle 52.0,83.9 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare The Blackfang
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 48.80,72.80
	|poiquest 38597
	|poiitem 127330
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 49.8,74.3 < 10
	kill The Blackfang##92465 |quest 38597 |goto Tanaan Jungle 48.80,72.80 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Zeter'el
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 48.40,28.50
	|poiquest 38207
	|poiitem 127340
	|poiitem 120945
	|poicurrency AC
	_Cross_ the fel water here |goto Tanaan Jungle/0 51.7,32.5 < 12
	_Continue_ along the path |goto Tanaan Jungle/0 49.0,33.0 < 12
	_Enter_ the Blighted Hollow |goto Tanaan Jungle/0 48.1,32.7 < 10
	kill Zeter'el##91087 |quest 38207 |goto Tanaan Jungle 48.40,28.50 |future
step
	|poi_rare Felspark
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 52.80,25.60
	|poiquest 38211
	|poiitem 127656
	|poiitem 120945
	|poicurrency AC
	kill Felspark##91098 |quest 38211 |goto Tanaan Jungle 52.80,25.60 |future
	|tip Felspark is in the fel water pool. This rare will require a group to defeat.
step
	|poi_rare Painmistress Selora
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 53.60,21.70
	|poiquest 38557
	|poiitem 127297
	|poiitem 120945
	|poicurrency AC
	|tip In order to start this event, you must kill the corruptors around the glowing portal before new ones spawn.
	|tip Immediately after, three waves of elite demons will come out. Kill them and Selora will spawn.
	kill Painmistress Selora##92274 |quest 38557 |goto Tanaan Jungle 53.60,21.70 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Putre'thar
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 57.10,22.80
	|poiquest 38457
	|poiitem 127657
	|poiitem 120945
	|poicurrency AC
	kill Putre'thar##91009 |quest 38457 |goto Tanaan Jungle 57.10,22.80 |future
	|tip Putre'thar patrols around the felhunter pit. This rare will require a group to defeat.
step
	|poi_rare Overlord Ma'gruth
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 53.00,20.00
	|poiquest 38580
	|poiitem 127320
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 55.2,22.6
	kill Overlord Ma'gruth##92411 |quest 38580 |goto Tanaan Jungle 53.00,20.00 |future
	|tip He patrols a very small area. This rare will require a group to defeat.
step
	|poi_rare Xanzith the Everlasting
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 60.20,20.90
	|poiquest 38579
	|poiitem 127658
	|poiitem 128232
	|poiitem 120945
	|poicurrency AC
	kill Xanzith the Everlasting##92408 |quest 38579 |goto Tanaan Jungle 60.20,20.90 |future
	|tip Xanzith is just in front of the pool of fel water. This rare will require a group to defeat.
step
	|poi_rare Steelsnout
	|poilvl 100
	|poispot Tanaan Jungle 65.40,36.60
	|poiquest 38700
	|poiitem 127357
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Tanaan Jungle/0 64.0,37.4
	kill Steelsnout##92887 |quest 38700 |goto Tanaan Jungle 65.40,36.60 |future
step
	|poi_rare Terrorfist
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 15.40,63.40
	|poiquest 39288
	|poiitem 128315
	|poiitem 128025
	|poicurrency OIL
	_Go up_ the hill |goto Tanaan Jungle/0 13.7,60.2 < 15
	kill Terrorfist##95044 |quest 39288 |goto Tanaan Jungle 15.40,63.40 |future
	|tip Terrorfist patrols up and down the hill. This rare will require a group to defeat.
step
	|poi_rare Deathtalon
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 23.0,40.2
	|poiquest 39287
	|poiitem 128315
	|poiitem 128025
	|poiitem 120945
	|poicurrency OIL
	kill Deathtalon##95053 |quest 39287 |goto Tanaan Jungle/0 23.0,40.2 |future
	|tip Deathtalon sits atop the broken pillar. This rare will require a group to defeat.
step
	|poi_rare Vengeance
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 32.40,74.00
	|poiquest 39290
	|poiitem 128315
	|poiitem 128025
	|poiitem 120945
	|poicurrency OIL
	kill Vengeance##95054 |quest 39290 |goto Tanaan Jungle 32.40,74.00 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Doomroller
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 47.00,52.60
	|poiquest 39289
	|poiitem 128315
	|poiitem 128025
	|poicurrency OIL
	kill Doomroller##95056 |quest 39289 |goto Tanaan Jungle 47.00,52.60 |future
	|tip This rare will require a group to defeat.
step
	|poi_rare Argosh the Destroyer
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle/0 52.60,40.20
	|poiquest 38430
	|poiitem 120945
	|poiitem 127326
	|poicurrency AC
	_Cross_ the field |goto Tanaan Jungle/0 53.7,44.2
	_Jump across_ the rocks |goto Tanaan Jungle/0 53.3,41.5 < 8
	kill Felblood Warlock##89754 |tip Kill the warlocks to release Argosh.
	kill Argosh the Destroyer##91871 |quest 38430 |goto Tanaan Jungle/0 52.60,40.20 |future
	|tip This rare will require a group to defeat.
--- New with 6.2
step
	|poi_rare Fel Overseer Mudlump
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 40.9,56.4
	|poiquest 40107
	|poiitem 120945
	|poiitem 129295
	|poicurrency AC
	kill Fel Overseer Mudlump##98408 |quest 40107 |goto Tanaan Jungle/0 40.9,56.4 |future
	|tip You must have Draenor Flying to reach this rare.
	|tip This rare will require a group to defeat.
step
	|poi_rare Drakum
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 83.6,43.6
	|poiquest 40105
	|poiitem 120945
	|poiitem 108631
	|poicurrency AC
	_Enter_ the building |goto Tanaan Jungle/0 84.4,43.8 < 10 |walk
	kill Drakum##98283 |quest 40105 |goto Tanaan Jungle/0 83.6,43.6 |future
	|tip You must have Draenor Flying to reach this rare.
	|tip This rare will require a group to defeat.
step
	|poi_rare Smashum Grabb
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 88.1,55.8
	|poiquest 40107
	|poiitem 120945
	|poiitem 108634
	|poicurrency AC
	kill Smashum Grabb##98285 |quest 40104 |goto Tanaan Jungle/0 88.1,55.8 |future
	|tip You must have Draenor Flying to reach this rare.
	|tip This rare will require a group to defeat.
step
	|poi_rare Gondar
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 80.6,56.4
	|poiquest 40107
	|poiitem 120945
	|poiitem 108633
	|poicurrency AC
	_Jump onto_ the temple grounds |goto Tanaan Jungle/0 75.6,55.4 < 10
	_Go up_ the sets of stairs |goto 76.8,55.2 < 15
	_Reach_ the top of the temple |goto 78.8,54.3 < 15
	_Enter_ the building |goto Tanaan Jungle/0 80.7,56.3 < 10 |walk
	kill Gondar##98284 |quest 40106 |goto Tanaan Jungle/0 80.6,56.4 |future
	|tip This rare will require a group to defeat.
]])
