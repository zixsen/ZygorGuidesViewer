local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCMOP") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Aqua Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Aqua Strider",
model={45854},
pet=836,
},[[
step
kill Nalash Verdantis##50776+
collect Hollow Reed##86563 |goto Dread Wastes 64.2,58.5
step
learnpet Aqua Strider##64633 |use Hollow Reed##86563
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Emperor Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Emperor Crab",
model={45881},
pet=746,
},[[
step
Challenge one to a pet battle and capture it
|tip The Emperor Crabs are around level 24.
learnpet Emperor Crab##65203 |goto Dread Wastes 34.0,62.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Eternal Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Eternal Strider",
model={43798},
pet=383,
},[[
step
Challenge one to a pet battle and capture it
|tip The Eternal Striders in the area are around level 24.
You can find more [Vale of Eternal Blossoms 69.0,43.8]
[Vale of Eternal Blossoms 72.4,27.6]
learnpet Eternal Strider##61088 |goto Vale of Eternal Blossoms 87.6,45.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Gahz'rooki",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Gahz'rooki",
model={48651},
pet=1237,
},[[
step
This item is a rare drop from Kor'kron mobs in the Northern Barrens.
confirm
step
kill Kor'kron Butcher##71012+, Kor'kron Outrider##73590+
collect Gahz'rooki's Summoning Stone##97821 |goto Northern Barrens/0 44.5,47.5
step
learnpet Gahz'rooki##71159 |use Gahz'rooki's Summoning Stone##97821
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Garden Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Garden Frog",
model={38831},
pet=569,
},[[
step
Challenge one to a pet battle and capture it
|tip The Garden Frog is level 23 or 24.
learnpet Garden Frog##63002 |goto The Jade Forest 54.7,42.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Emerald Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Emerald Turtle",
model={27883},
pet=564,
},[[
step
Challenge one to a pet battle and capture it
|tip The Emerald Turtle is level 23 or 24..
learnpet Emerald Turtle##62994 |goto The Jade Forest 45.0,36.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Golden Civet",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Golden Civet",
model={43428},
pet=749,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Golden Civets are around level 23.
learnpet Golden Civet##63841 |goto Vale of Eternal Blossoms 37.7,31.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Golden Civet Kitten",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Golden Civet Kitten",
model={43259},
pet=750,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Golden Civet Kittens are around level 24.
learnpet Golden Civet Kitten##63842 |goto Vale of Eternal Blossoms 39.8,57.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Gulp Froglet",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Gulp Froglet",
model={47991},
pet=1338,
},[[
step
This pet drops from a Rare Spawn on the Timeless Isle.
kill Bufo##72775
|tip Bufo can spawn in the place of any Gulp Frog in this area.
collect 1 Gulp Froglet##104169 |goto Timeless Isle/0 62.7,74.6
step
Use the _Gulp Froglet_ in your bags. |use Gulp Froglet##104169
learnpet Gulp Froglet##73359
step
Congratulations, you have learned the _Gulp Froglet_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Jungle Darter",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Jungle Darter",
model={6297},
pet=565,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Jungle Darter is level 23 or 24.
learnpet Jungle Darter##62997 |goto The Jade Forest 52.3,67.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Kuitan Mongoose",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Kuitan Mongoose",
model={43347},
pet=680,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Kuitan Mongoose in this area are around level 24-25.
learnpet Kuitan Mongoose##63953 |goto Townlong Steppes 41.4,87.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Leopard Tree Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Leopard Tree Frog",
model={6296},
pet=702,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Leopard Tree Frog is level 23 or 24.
learnpet Leopard Tree Frog##63919 |goto The Jade Forest 45.1,60.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mirror Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Mirror Strider",
model={45852},
pet=566,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Mirror Striders are level 23-24.
learnpet Mirror Strider##62998 |goto The Jade Forest 57.9,78.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mongoose",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Mongoose",
model={43347},
pet=737,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Mongooses are level 23-24.
learnpet Mongoose##65190 |goto Townlong Steppes 38.5,85.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mongoose Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Mongoose Pup",
model={43346},
pet=739,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Mongoose Pups are around level 24.
learnpet Mongoose Pup##63954 |goto Townlong Steppes 21.0,57.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sifang Otter",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Sifang Otter",
model={42856},
pet=711,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Sifang Otter is level 23 or 24.
learnpet Sifang Otter##63057 |goto Valley of the Four Winds 31.2,72.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sifang Otter Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Sifang Otter Pup",
model={42983},
pet=712,
},[[
step
Challenge a Sifang Otter to a pet battle and capture the Sifang Otter Pup that helps it.
|tip The Sifang Otter Pup is level 23 or 24.
learnpet Sifang Otter Pup##63358 |goto Valley of the Four Winds 31.2,72.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Softshell Snapling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Softshell Snapling",
model={27679},
pet=713,
},[[
step
Challenge the Softshell Snapling to a pet battle and capture it.
|tip The Softshell Snapling is level 23.
learnpet Softshell Snapling##63060 |goto Valley of the Four Winds 67.8,38.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spawn of G'nathus",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Spawn of G'nathus",
model={48091},
pet=1201,
},[[
step
To attain this pet, you must kill G'nathus in Townlong Steppes.
|tip It is recommended that you have a group of 5+ for this mob.
confirm
step
kill G'nathus##66467+
collect 1 Spawn of G'nathus##94595 |goto Townlong Steppes/0 29.1,5.0
step
learnpet Spawn of G'nathus##70098 |use Spawn of G'nathus##94595
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spineclaw Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Spineclaw Crab",
model={51278},
pet=1337,
},[[
step
kill Monstrous Spineclaw##73166
|tip This mob is a rare spawn, so you may need to wait a while for it to spawn.
|tip This rare spawn has a chance to spawn in place of the normal elite mobs around the island, so multiple of this rare can spawn at once.
|tip We suggest that you pick a spawn point that has a big cluster of the elite crabs and farm them.
collect 1 Spineclaw Crab##104168 |goto Timeless Isle 22.2,34.6
step
Use the _Spineclaw Crab_ in your bags. |use Spineclaw Crab##104168
learnpet Spineclaw Crab##73366
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spiny Terrapin",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Spiny Terrapin",
model={42859},
pet=723,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Spiny Terrapins are level 23.
learnpet Spiny Terrapin##63293 |goto Krasarang Wilds 81.4,23.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spirebound Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Spirebound Crab",
model={45880},
pet=572,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Spirebound Crabs are level 23 or 24.
learnpet Spirebound Crab##63005 |goto The Jade Forest 66.2,27.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tideskipper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Tideskipper",
model={48855},
pet=1230,
},[[
step
kill Morogrim Tidewalker##21213
collect Shell of Tide-Calling##97552 |goto Serpentshrine Cavern 59.4,27.4
step
Use your _Shell of Tide-Calling_. |use Shell of Tide-Calling##97552
learnpet Tideskipper##71017
step
Congratulations, you have learned the _Tideskipper_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tiny Blue Carp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Tiny Blue Carp",
model={47957},
pet=1207,
},[[
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
collect 1 Tiny Blue Carp##94933 |goto Vale of Eternal Blossoms/0 72.4,48.5
|tip This is a very rare item. You may be fishing here for a while.
step
learnpet Tiny Blue Carp##70258 |use Tiny Blue Carp##94933
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tiny Green Carp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Tiny Green Carp",
model={47958},
pet=1208,
},[[
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
collect 1 Tiny Green Carp##94934 |goto The Jade Forest/0 50.2,21.1
|tip This is a very rare item. You may be fishing here for a while.
step
learnpet Tiny Green Carp##70259 |use Tiny Green Carp##94934
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tiny Red Carp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Tiny Red Carp",
model={47959},
pet=1206,
},[[
step
Stand on the small island here.
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
collect 1 Tiny Red Carp##94932 |goto Townlong Steppes/0 35.9,53.3
|tip This is a very rare item. You may be fishing here for a while.
step
learnpet Tiny Red Carp##70257 |use Tiny Red Carp##94932
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tiny White Carp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Tiny White Carp",
model={47960},
pet=1209,
},[[
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
collect 1 Tiny White Carp##94935 |goto Kun-Lai Summit/0 32.7,43.9
|tip This is a very rare item. You may be fishing here for a while.
step
learnpet Tiny White Carp##70260 |use Tiny White Carp##94935
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Wanderer's Festival Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Wanderer's Festival Hatchling",
model={44779},
pet=1013,
},[[
step
This pet is only obtainable during the Wanderer's Festival every Sunday from 9pm-11pm PST.
confirm
step
Challenge one to a pet battle and capture it.
|tip The Wanderer's Festival Hatchlings in this area are around level 23.
learnpet Wanderer's Festival Hatchling##67022 |goto Krasarang Wilds 78.0,24.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Yellow-Bellied Bullfrog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Yellow-Bellied Bullfrog",
model={6297},
pet=752,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Yellow-Bellied Bullfrogs are around level 24.
learnpet Yellow-Bellied Bullfrog##63849 |goto Vale of Eternal Blossoms 88.6,50.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Alpine Foxling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Alpine Foxling",
model={36388},
pet=724,
},[[
step
Challenge one to a pet battle and capture it
|tip The Alpine Foxlings are around level 23-24.
learnpet Alpine Foxling##63550 |goto Kun-Lai Summit 38.4,75.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Alpine Foxling Kit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Alpine Foxling Kit",
model={42757},
pet=725,
},[[
step
Challenge one to a pet battle and capture it
|tip The Alpine Foxling Kits are around level 23.
learnpet Alpine Foxling Kit##63551 |goto Kun-Lai Summit 39.8,67.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Amethyst Spiderling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Amethyst Spiderling",
model={45910},
pet=716,
},[[
step
Challenge one to a pet battle and capture it
|tip The Amethyst Spiderling is level 23.
learnpet Amethyst Spiderling##63288 |goto Krasarang Wilds 34.6,79.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bucktooth Flapper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Bucktooth Flapper",
model={40713},
pet=380,
},[[
step
Challenge one to a pet battle and capture it
|tip The Bucktooth Flapper is level 23 or 24
learnpet Bucktooth Flapper##62992 |goto The Jade Forest 54.7,78.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Clouded Hedgehog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Clouded Hedgehog",
model={45985},
pet=742,
},[[
step
Challenge one to a pet battle and capture it
|tip The Clouded Hedgehogs are around level 24.
learnpet Clouded Hedgehog##64242 |goto Dread Wastes 33.1,24.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Coral Adder",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Coral Adder",
model={36544},
pet=562,
},[[
step
Challenge one to a pet battle and capture it
|tip The Coral Adder is level 23 or 24.
learnpet Coral Adder##62991 |goto The Jade Forest 67.0,83.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crunchy Scorpion",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Crunchy Scorpion",
model={15469},
pet=745,
},[[
step
Challenge one to a pet battle and capture it
|tip The Crunchy Scorpions are around level 24.
learnpet Crunchy Scorpion##63548 |goto Dread Wastes 65.6,40.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Death Adder Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Death Adder Hatchling",
model={51277},
pet=1330,
},[[
step
This pet drops from The Imperial Python
kill Imperial Python##73163
collect 1 Death Adder Hatchling##104161 |goto Timeless Isle 44.4,65.5
step
Use the _Death Adder Hatchling_ in your bags. |use Death Adder Hatchling##104161
learnpet Death Adder Hatchling##73364
step
Congratulations, you have learned the _Death Adder Hatchling_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Direhorn Runt",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Direhorn Runt",
model={48213},
pet=1205,
},[[
step
kill Primal Direhorn Hatchling##70012+, Primal Direhorn##70016+
|tip You will likely need a group to efficiently kill the Direhorn in the area.
collect Direhorn Runt##94573 |goto Isle of Giants 60.8,74.8
step
learnpet Direhorn Runt##70154 |use Direhorn Runt##94573
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Feverbite Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Feverbite Hatchling",
model={44816},
pet=714,
},[[
step
Challenge one to a pet battle and capture it
|tip The Feverbite Hatchlings in this area are around level 24.
learnpet Feverbite Hatchling##65054 |goto Krasarang Wilds 18.0,43.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Grove Viper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Grove Viper",
model={35802},
pet=571,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Grove Viper is level 23 or 24.
learnpet Grove Viper##63004 |goto The Jade Forest 36.5,53.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Jumping Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Jumping Spider",
model={45911},
pet=699,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Jumping Spider is level 23 or 24.
learnpet Jumping Spider##63715 |goto The Jade Forest 46.8,32.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Kovok",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Kovok",
model={51269},
pet=1334,
},[[
step
You can only obtain this pet from the Siege of Orgrimmar raid.
|tip This can drop from any difficulty.
confirm
step
Complete the _Paragons of the Klaxxi_ encounter.
collect Kovok##104165 |goto Siege of Orgrimmar/11 68.3,35.3
step
learnpet Kovok##73354 |use Kovok##104165
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Moon Moon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Moon Moon",
model={855},
pet=1276,
},[[
step
This pet drops from a Rare Spawn on the Darkmoon Island.
|tip You can only obtain this pet when the Darkmoon Faire is in town.
confirm
step
kill Moonfang##71992+
collect 1 Moon Moon##101570 |goto Darkmoon Island/0 40.0,45.5
step
Use the _Moon Moon_ in your bags. |use Moon Moon##101570
learnpet Moon Moon##72160
step
Congratulations, you have learned the _Moon Moon_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Plains Monitor",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Plains Monitor",
model={45999},
pet=726,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Plains Monitors in this area are level 23-24.
learnpet Plains Monitor##63547 |goto Kun-Lai Summit 67.0,75.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Pygmy Direhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Pygmy Direhorn",
model={48212},
pet=1200,
},[[
step
In order to obtain this pet, you will need to go into the Throne of Thunder raid.
|tip This will require a group to complete.
kill Horridon##68476
collect Spawn of Horridon##94574 |goto Throne of Thunder/2 26.2,78.2
step
learnpet Pygmy Direhorn##70083 |use Pygmy Direhorn##94574
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silent Hedgehog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Silent Hedgehog",
model={45984},
pet=741,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Silent Hedgehogs are around level 24.
learnpet Silent Hedgehog##64804 |goto Dread Wastes 26.9,29.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Stunted Direhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Stunted Direhorn",
model={48211},
pet=1184,
},[[
step
In order to earn this pet, you must win 250 PVP matches using the Find Battle feature with a full team of level 25 pets.
achieve 8300/1
step
|tip Check your in-game mailbox for your new pet.
collect Stunted Direhorn##94191
step
learnpet Stunted Direhorn##69849 |use Stunted Direhorn##94191
step
Congratulations, you have earned the _Stunted Direhorn_ pet!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Summit Kid",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Summit Kid",
model={43485},
pet=679,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Simmit Kids are around level 23.
learnpet Summit Kid##64248 |goto Kun-Lai Summit 40.5,83.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Temple Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Temple Snake",
model={2955},
pet=567,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Temple Snake is level 23 or 24.
learnpet Temple Snake##62999 |goto The Jade Forest 55.3,62.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Tito",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Tito",
model={48667},
pet=1236,
},[[
step
This companion comes from the Opera Event in Karazhan.
|tip Since the boss is random, it's based off of luck that Dorothee appears.
confirm
step
kill Dorothee##17535
collect Tito's Basket##97558 |goto Karazhan/4 18.6,35.6
step
Use _Tito's Basket_. |use Tito's Basket##97558
learnpet Tito##71023
step
Congratulations, you have learned the _Tito_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Vengeful Porcupette",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Vengeful Porcupette",
model={47858},
pet=1344,
},[[
step
Be warned that this pet may require that you do some PVP combat.
confirm
step
In order to earn this pet you will need to acquire the Censer of Eternal Agony, which costs 2500 Timeless Coin to obtain.
|tip There are several caches found throughout the entire isle.
|tip Each enemy drops one coin.
|tip You only receieve a coin if you get the killing blow.
earn 2500 Timeless Coin##777
step
talk Speaker Gulan##73307
buy Censer of Eternal Agony##102467 |goto Timeless Isle 74.9,44.9
step
You will be hostile with BOTH factions once you activate this item.
|tip Note that using this will sacrifice your health by 90%, however this buff is needed to earn Bloody Coins.
Use your Censer of Eternal Agony. |use Censer of Eternal Agony##102467
Killing players as well as npcs will net you _Bloody Coins_.
earn 100 Bloody Coin##789
step
talk Speaker Gulan##73307
buy 1 Vengeful Porcupette##103637 |goto Timeless Isle 74.9,44.9
step
Use the _Vengeful Porcupette_ in your bags. |use Vengeful Porcupette##103637
learnpet Vengeful Porcupette##73688
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Wild Silkworm",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Wild Silkworm",
model={40630},
pet=715,
},[[
step
Break open the Diminutive Cocoons around this area
When you find a Wild Silkworm Challenge one to a pet battle and capture it.
|tip A Wild Silkworm can be level 23 or 24.
learnpet Wild Silkworm##65099 |goto Valley of the Four Winds 66.0,58.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Xu-Fu, Cub of Xuen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Xu-Fu, Cub of Xuen",
model={49846},
pet=1266,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.7,59.6
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.7,59.6
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.0,55.2 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.3,56.5
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.6
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.5
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.0,52.7
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.4
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.4
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.4
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.9,56.7
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.0,55.2
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.0,53.8
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.0,55.2
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have 3 Celestial Coins in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Xu-Fu, Cub of Xuen##101771 |goto Timeless Isle/0 34.8,59.7
step
Use the _Xu-Fu, Cub of Xuen_ in your bags. |use Xu-Fu, Cub of Xuen##101771
learnpet Xu-Fu, Cub of Xuen##71942
step
Congratulations, you have learned the _Xu-Fu, Cub of Xuen_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Zandalari Anklerender",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Zandalari Anklerender",
model={48055},
pet=1211,
},[[
step
To attain this pet, you must kill the Dinomancers on the Isle of Giants.
|tip It is also recommended that you bring a friend for the mobs.
confirm
step
kill Zandalari Dinomancer##69925+
collect Zandalari Anklerender##95422 |goto Isle of Giants 69.5,71.8
step
learnpet Zandalari Anklerender##70451 |use Zandalari Anklerender##95422
step
Congratulations, you have attained the _Zandalari Anklerender_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Zandalari Footslasher",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Zandalari Footslasher",
model={48056},
pet=1212,
},[[
step
To attain this pet, you must kill the Dinomancers on the Isle of Giants.
|tip It is also recommended that you bring a friend for the mobs.
confirm
step
kill Zandalari Dinomancer##69925+
collect Zandalari Footslasher##95423 |goto Isle of Giants 69.5,71.8
step
learnpet Zandalari Footslasher##70452 |use Zandalari Footslasher##95423
step
Congratulations, you have attained the _Zandalari Footslasher_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Zandalari Kneebiter",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Zandalari Kneebiter",
model={47731},
pet=1180,
},[[
step
To attain this pet, you must kill the Dinomancers on the Isle of Giants.
|tip It is also recommended that you bring a friend for the mobs.
confirm
step
kill Zandalari Dinomancer##69925+
collect Zandalari Kneebiter##94126 |goto Isle of Giants 69.5,71.8
step
learnpet Zandalari Kneebiter##69796 |use Zandalari Kneebiter##94126
step
Congratulations, you have attained the _Zandalari Kneebiter_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Zandalari Toenibbler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Zandalari Toenibbler",
model={48057},
pet=1213,
},[[
step
To attain this pet, you must kill the Dinomancers on the Isle of Giants.
|tip It is also recommended that you bring a friend for the mobs.
confirm
step
kill Zandalari Dinomancer##69925+
collect Zandalari Toenibbler##95424 |goto Isle of Giants 69.5,71.8
step
learnpet Zandalari Toenibbler##70453 |use Zandalari Toenibbler##95424
step
Congratulations, you have attained the _Zandalari Toenibbler_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Zao, Calfling of Niuzao",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Zao, Calfling of Niuzao",
model={49845},
pet=1305,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.7,59.6
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.7,59.6
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.0,55.2 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.3,56.5
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.6
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.5
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.0,52.7
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.4
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.4
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.4
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.9,56.7
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.0,55.2
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.0,53.8
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.0,55.2
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have 3 Celestial Coins in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Zao, Calfling of Niuzao##102146 |goto Timeless Isle/0 34.8,59.7
step
Use the _Zao, Calfling of Niuzao_ in your bags. |use Zao, Calfling of Niuzao##102146
learnpet Zao, Calfling of Niuzao##72464
step
Congratulations, you have learned the _Zao, Calfling of Niuzao_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Zooey Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Zooey Snake",
model={4440},
pet=731,
},[[
step
Challenge one to a pet battle and capture it
|tip The Zooey Snakes are level 24..
learnpet Zooey Snake##63555 |goto Kun-Lai Summit 66.3,87.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Bandicoon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Bandicoon",
model={40089},
pet=706,
},[[
step
Challenge one to a pet battle and capture it
|tip The Bandicoon is level 23 or 24.
learnpet Bandicoon##63062 |goto Valley of the Four Winds 54.1,67.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Bandicoon Kit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Bandicoon Kit",
model={41834},
pet=707,
},[[
step
Challenge a Bandicoon to a pet battle and capture the Banidcoon Kit that is with it
|tip The Bandicoon Kit is level 23 or 24.
learnpet Bandicoon Kit##63064 |goto Valley of the Four Winds 54.1,67.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grassland Hopper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Grassland Hopper",
model={43344},
pet=733,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Grassland Hoppers in this area are level 24-25.
learnpet Grassland Hopper##63549 |goto Townlong Steppes 41.7,86.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gu'chi Swarmling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Gu'chi Swarmling",
model={51502},
pet=1345,
},[[
step
Kill Gu'chi the Swarmbringer##72909
|tip He walks around the village here, so some searching may be necessary.
collect 1 Gu'chi Swarmling##104291 |goto Timeless Isle/0 40.4,78.0
step
Use the _Gu'chi Swarmling_ in your bags. |use Gu'chi Swarmling##104291
learnpet Gu'chi Swarmling##73730
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Imperial Silkworm",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Imperial Silkworm",
model={40521},
pet=1040,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 600 Tailoring, or purchase it from the Auction House.
step
label "create"
kill Springtail Leaper##57415+, Springtail Gnasher##57413+
collect 40 Windwool Cloth##72988 |goto Valley of the Four Winds 43.9,38.6
step
create 5 Bolt of Windwool Cloth##82441
step
Farm all enemies on the Isle of Thunder to collect Motes of Harmony.
when you get 10, right click them to collect Spirit of Harmony.
collect 3 Spirit of Harmony##76061+
step
create Song of Harmony##130325,Tailoring,1 total
collect 1 Imperial Silk##82447
step
#include "trainer_Tailoring"
learn Silkworm Cocoon##125557
step
create 1 Silkworm Cocoon##92960
step
Open the Silkworm Cocoon to see what pet it contains! |use Silkworm Cocoon##92960
|tip You have a chance of getting the Imperial Moth or the Imperial Silkworm. If you didn't get the one you wanted, you will have to wait a day and try again.
collect 1 Imperial Moth##67230 |or
collect 1 Imperial Silkworm##67233 |or
|next "done"
step
label "buy"
#include "auctioneer"
buy 1 Imperial Silkworm##90902
|next "done"
step
label "done"
learnpet Imperial Moth##67230 |use Imperial Moth##90900 |or
learnpet Imperial Silkworm##67233 |use Imperial Silkworm##90902 |or
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Jungle Grub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Jungle Grub",
model={40226},
pet=678,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Jungle Grubs are level 23.
learnpet Jungle Grub##63304 |goto Krasarang Wilds 77.8,13.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Malayan Quillrat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Malayan Quillrat",
model={45991},
pet=708,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Malayan Quillrat is level 23 or 24.
learnpet Malayan Quillrat##63094 |goto Valley of the Four Winds 74.4,40.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Malayan Quillrat Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Malayan Quillrat Pup",
model={45990},
pet=709,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Malayan Quillrat Pup is level 23 or 24.
learnpet Malayan Quillrat Pup##63095 |goto Valley of the Four Winds 74.4,40.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Marsh Fiddler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Marsh Fiddler",
model={43360},
pet=710,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Marsh Fiddler is level 23.
learnpet Marsh Fiddler##63096 |goto Valley of the Four Winds 22.4,44.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Masked Tanuki",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Masked Tanuki",
model={40093},
pet=570,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Masked Tanuki is level 23 or 24.
learnpet Masked Tanuki##63003 |goto The Jade Forest 51.5,74.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Masked Tanuki Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Masked Tanuki Pup",
model={43194},
pet=703,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Masked Tanuki Pup is level 23 or 24.
learnpet Masked Tanuki Pup##63716 |goto The Jade Forest 51.5,74.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Prairie Mouse",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Prairie Mouse",
model={4959},
pet=727,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Prairie Mouse is level 23.
learnpet Prairie Mouse##59702 |goto Kun-Lai Summit 71.6,94.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rapana Whelk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Rapana Whelk",
model={45882},
pet=743,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Rapana Whelks are around level 24.
learnpet Rapana Whelk##64352 |goto Dread Wastes 54.3,74.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Red Cricket",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Red Cricket",
model={46385},
pet=1042,
},[[
step
This pet is given as a reward for gaining Best Friends status with Sho in Valley of the Four Winds.
confirm
step
You can only start earning reputation with Sho after completing the Tillers prequests.
|tip Becoming Best Friends with Sho rewards you with a Red Cricket Battle Pet and an Orange Tree for your farm.
confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Sho_ is a _Stranger_ to you. |only if rep("Sho")<=Stranger
_Sho_ is your _Aquaintance_. |only if rep("Sho")==Aquaintance
_Sho_ is your _Buddy_. |only if rep("Sho")==Buddy
_Sho_ is your _Friend_. |only if rep("Sho")==Friend
_Sho_ is your _Best Friend_. |only if rep("Sho")==BestFriend
_ |only if rep("Sho")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Sho")<BestFriend
_ |only if rep("Sho")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Sho")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Sho")==BestFriend
confirm |next "end" |only if rep("Sho")==BestFriend
step
label "cooking"
Click here to continue |confirm |next "eternal_blossom"
Click here to go back to the menu |confirm |next "menu"
|tip In order to create Sho's favorite meal, you must have at least 550 skill points in Cooking.
step
label "eternal_blossom"
talk Kol Ironpaw##58712
learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds 53.0,51.4
step
#include "auctioneer"
buy 5 Jade Lungfish##74856
buy 25 Striped Melon##74848
Or
Click here to farm the ingredients yourself |confirm |next "farm_eternal_blossom_1"
tip You should at least have 525 fishing for this.
step
label "farm_eternal_blossom_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest 55.0,71.1
step
Skipping farming |next "+create_eternal_blossom" |only if step:Find("+farm_eternal_blossom_2"):IsComplete()
Proceeding to Eternal Blossom Fish |next |only if default
step
label "farm_eternal_blossom_2"
kill Slingtail Treeleaper##61562+
collect 25 Striped Melon##74848 |goto The Jade Forest 53.9,81.4
step
label "create_eternal_blossom"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Eternal Blossom Fish##104299,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 43 Lovely Apple##79268
|next "turnin2"
step
label "turnin1"
talk Sho##58708
turnin A Dish For Sho##30408 |goto Valley of the Four Winds 29.5,30.6
|tip You can only turn this quest in once a day.
You can also find Sho in Halfhill at [53.0,52.0]
Click here to be taken back to the beginning of the Cooking Dailies for Sho |confirm |next "cooking"
step
label "turnin2"
talk Sho##58708
turnin A Lovely Apple for Sho##30404 |goto Valley of the Four Winds 29.5,30.6
|tip Keep turning this in until you reach Best Friend status.
You can also find Sho in Halfhill at [53.0,52.0]
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
Become _Best Friends_ with Sho |rep("Sho")==BestFriend |next
step
learnpet Red Cricket##63370 |use Red Cricket##85222
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Resilient Roach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Resilient Roach",
model={45898},
pet=744,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Resilient Roaches are around level 24.
learnpet Resilient Roach##64238 |goto Dread Wastes 41.9,34.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Savory Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Savory Beetle",
model={45996},
pet=717,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Savory Beetles are level 23.
learnpet Savory Beetle##63291 |goto Krasarang Wilds 27.8,50.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Shy Bandicoon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Shy Bandicoon",
model={40089},
pet=677,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Shy Bandicoon is level 23 or 24.
learnpet Shy Bandicoon##64246 |goto Valley of the Four Winds 21.7,47.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Silkbead Snail",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Silkbead Snail",
model={38380},
pet=568,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Silkbead Snails are around level 24.
learnpet Silkbead Snail##63001 |goto The Jade Forest 50.4,90.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tolai Hare",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Tolai Hare",
model={6302},
pet=729,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Tolai Hares are around level 23.
learnpet Tolai Hare##63557 |goto Kun-Lai Summit 55.5,63.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tolai Hare Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Tolai Hare Pup",
model={28998},
pet=730,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Tolai Hare Pups are around level 23.
learnpet Tolai Hare Pup##63558 |goto Kun-Lai Summit 55.5,63.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Yakrat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Yakrat",
model={4959},
pet=740,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Yakrats are level 24.
learnpet Yakrat##63957 |goto Townlong Steppes 83.9,76.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Phoenix Hawk Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Phoenix Hawk Hatchling",
model={48663},
pet=1235,
},[[
step
kill Al'ar##19514
collect Brilliant Phoenix Hawk Feather##97557 |goto Tempest Keep/1 49.6,58.4
step
Use your _Brilliant Phoenix Hawk Feather_. |use Brilliant Phoenix Hawk Feather##97557
learnpet Phoenix Hawk Hatchling##71022
step
Congratulations, you have learned the _Phoenix Hawk Hatchling_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Wild Crimson Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Wild Crimson Hatchling",
model={43874},
pet=819,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Wild Crimson Hatchlings are around level 24.
|tip In order to capture this pet, you must be Exalted with the Order of the Cloud Serpent.
learnpet Wild Crimson Hatchling##65321 |goto The Jade Forest 56.5,42.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Wild Golden Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Wild Golden Hatchling",
model={45064},
pet=818,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Wild Golden Hatchlings are around level 24.
|tip In order to capture this pet, you must be Exalted with the Order of the Cloud Serpent.
learnpet Wild Golden Hatchling##65324 |goto The Jade Forest 56.5,42.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Wild Jade Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Wild Jade Hatchling",
model={43875},
pet=817,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Wild Jade Hatchlings are around level 24.
|tip In order to capture this pet, you must be Exalted with the Order of the Cloud Serpent.
learnpet Wild Jade Hatchling##65323 |goto The Jade Forest 56.5,42.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Yu'la, Broodling of Yu'lon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Yu'la, Broodling of Yu'lon",
model={49836},
pet=1304,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.7,59.6
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.7,59.6
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.0,55.2 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.3,56.5
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.6
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.5
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.0,52.7
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.4
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.4
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.4
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.9,56.7
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.0,55.2
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.0,53.8
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.0,55.2
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have _3 Celestial Coins_ in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Yu'la, Broodling of Yu'lon##102147 |goto Timeless Isle/0 34.8,59.7
step
Use the _Yu'la, Broodling of Yu'lon_ in your bags. |use Yu'la, Broodling of Yu'lon##102147
learnpet Yu'la, Broodling of Yu'lon##72463
step
Congratulations, you have learned the _Yu'la, Broodling of Yu'lon_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Cinder Kitten",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Cinder Kitten",
model={46720},
pet=1117,
},[[
step
This pet is available in both the US and EU Blizzard store.
confirm
step
Check your mailbox for your new in-game pet!
collect 1 Cinder Kitten##92707
step
Use the Cinder Kitten in your bags. |use Cinder Kitten##92707
learnpet Cinder Kitten##68267
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Droplet of Y'Shaarj",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Droplet of Y'Shaarj",
model={51417},
pet=1331,
},[[
step
You can only obtain this pet from the Siege of Orgrimmar raid.
confirm
step
kill Sha of Pride##71734
collect Droplet of Y'Shaarj##104162 |goto Siege of Orgrimmar/3 28.7,67.9
step
learnpet Droplet of Y'Shaarj##73350 |use Droplet of Y'Shaarj##104162
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Electrified Razortooth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Electrified Razortooth",
model={47690},
pet=1179,
},[[
step
Challenge one to a pet battle and capture it.
|tip Electrified Razortooths around the area are around level 24 and 25.
learnpet Electrified Razortooth##69794 |goto Isle of Thunder 45.3,64.7
step
Congratulations, you have learned the Electrified Razortooth pet!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Gooey Sha-ling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Gooey Sha-ling",
model={51267},
pet=1332,
},[[
step
You can only obtain this pet from the Siege of Orgrimmar raid on Raid Finder Difficulty.
confirm
step
kill Sha of Pride##71734
collect Gooey Sha-Ling##104163 |goto Siege of Orgrimmar 54.2,38.2
step
learnpet Gooey Sha-ling##73351 |use Gooey Sha-Ling##104163
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Grinder",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Grinder",
model={45938},
pet=834,
},[[
step
kill Karr the Darkener##50347
|tip He is a level 90 Rare Elite, so you may need to bring a friend or two for help.
collect 1 Imbued Jade Fragment##86564 |goto Dread Wastes 71.9,37.8
step
learnpet Grinder##64634 |use Imbued Jade Fragment##86564
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Jadefire Spirit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Jadefire Spirit",
model={51504},
pet=1348,
},[[
step
kill Spirit of Jadefire##72769
|tip This is a rare spawn, so you may need to wait for it to respawn.
collect 1 Jadefire Spirit##104307 |goto Timeless Isle/22 45.4,38.9
step
Use the Jadefire Spirit in your bags! |use Jadefire Spirit##104307
learnpet Jadefire Spirit##73738
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Jademist Dancer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Jademist Dancer",
model={51270},
pet=1333,
},[[
step
kill Jademist Dancer##72767+
collect 1 Jademist Dancer##104164 |goto Timeless Isle/0 26.3,29.7
|tip This item is a rare drop, so you may need to grind for a while.
step
Use the Jademist Dancer in your bags! |use Jademist Dancer##104164
learnpet Jademist Dancer##73355
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Living Sandling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Living Sandling",
model={47252},
pet=1177,
},[[
step
This pet comes from the Throne of Thunder raid.
|tip This pet has a 4 percent chance to drop off Sand Elementals.
learnpet Living Sandling##69748 |use Living Sandling##94125
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ominous Flame",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Ominous Flame",
model={51272},
pet=1335,
},[[
step
kill Foreboding Flame##73162+
collect 1 Ominous Flame##104166 |goto Timeless Isle/22 53.3,66.0
|tip This item is a rare drop, so you may need to grind for a while.
step
Use the Ominous Flame in your bags! |use Ominous Flame##104166
learnpet Ominous Flame##73357
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ruby Droplet",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Ruby Droplet",
model={51271},
pet=1328,
},[[
step
kill Garnia##73282
|tip This is a rare spawn, so you may need to wait for it to respawn.
collect 1 Ruby Droplet##104159 |goto Timeless Isle/0 64.8,28.8
step
Use the Ruby Droplet in your bags! |use Ruby Droplet##104159
learnpet Ruby Droplet##73356
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Skunky Alemental",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Skunky Alemental",
model={51279},
pet=1336,
},[[
step
This pet drops from a Rare Spawn on the Timeless Isle.
confirm
step
kill Skunky Brew Alemental##71908+ |goto Timeless Isle/0 38.0,77.6
|tip You will have to wait for these to spawn as a random event. After killing 10, Zhu-Gon will spawn.
confirm
step
kill Zhu-Gon the Sour##71919+
collect 1 Skunky Almental##104167 |goto Timeless Isle/0 38.0,77.6
step
Use the Skunky Almental in your bags! |use Skunky Almental##104167
learnpet Skunky Alemental##73367
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tainted Waveling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Tainted Waveling",
model={48666},
pet=1231,
},[[
step
kill Hydross the Unstable##21216
collect Tainted Core##97553 |goto Serpentshrine Cavern 36.8,84.8
step
Use your _Tainted Core_. |use Tainted Core##97553
learnpet Tainted Waveling##71018
step
Congratulations, you have learned the _Tainted Waveling_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Terrible Turnip",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Terrible Turnip",
model={44655},
pet=650,
},[[
step
Routing to pre quests. |next |only if not completedq(31945)
|next "preqfin"
step
In order to attain this pet, you will need to have the Farming Dailies in Halfhill unlocked.
confirm
step
label "preqfin"
You will need to farm every day in order to have a chance at learning this pet.
collect Terrible Turnip##85220
learnpet Terrible Turnip##63365 |use Terrible Turnip##85220
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Amber Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Amber Moth",
model={36956},
pet=732,
},[[
step
Challenge one to a pet battle and capture it
|tip The Amber Moths in this area are level 23-25.
learnpet Amber Moth##65187 |goto Townlong Steppes 47.3,78.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Amorous Rooster",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Amorous Rooster",
model={304},
pet=705,
},[[
step
Challenge one to a pet battle and capture it
|tip The Amorous Roosters are around level 24.
learnpet Amorous Rooster##65029 |goto Valley of the Four Winds 32.2,52.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Ashwing Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Ashwing Moth",
model={51742},
pet=1324,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Ashwing Moths in this area are level 25.
learnpet Ashwing Moth##73542 |goto Townlong Steppes 47.3,78.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Azure Crane Chick",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Azure Crane Chick",
model={51413},
pet=1321,
},[[
step
This pet is looted from Crane Nests on the Timeless Isle.
confirm
step
map Timeless Isle
path	32.6,69.4	29.7,67.2	31.6,64.6
path	33.1,66.2	43.2,66.0	41.4,69.6
click Crane Nest##222685
collect 1 Azure Crane Chick##104157
step
Use the _Azure Crane Chick_ in your bags. |use Azure Crane Chick##104157
learnpet Azure Crane Chick##73534
step
Congratulations, you have learned the _Azure Crane Chick_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Chi-Chi, Hatchling of Chi-Ji",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Chi-Chi, Hatchling of Chi-Ji",
model={49835},
pet=1303,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins.
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.7,59.6
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.7,59.6
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.0,55.2 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.3,56.5
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.6
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.5
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.0,52.7
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.4
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.4
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.4
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.9,56.7
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.0,55.2
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.0,53.8
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.0,55.2
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have 3 Celestial Coins in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Chi-Chi, Hatchling of Chi-Ji##102145 |goto Timeless Isle/0 34.8,59.7
step
Use the _Chi-Chi, Hatchling of Chi-Ji_ in your bags. |use Chi-Chi, Hatchling of Chi-Ji##102145
learnpet Chi-Chi, Hatchling of Chi-Ji##72462
step
Congratulations, you have learned the _Chi-Chi, Hatchling of Chi-Ji_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Effervescent Glowfly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Effervescent Glowfly",
model={46000},
pet=747,
},[[
step
Challenge one to a pet battle and capture it
|tip The Effervescent Glowflies are around level 24.
learnpet Effervescent Glowfly##63850 |goto Vale of Eternal Blossoms 22.8,28.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Flamering Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Flamering Moth",
model={73543},
pet=1325,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Flamering Moths in this area are level 25.
learnpet Flamering Moth##73543 |goto Timeless Isle/0 55.7,60.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Garden Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Garden Moth",
model={36671},
pet=753,
},[[
step
Challenge one to a pet battle and capture it
|tip The Garden Moth is level 23 or 24.
learnpet Garden Moth##65215 |goto The Jade Forest 54.1,45.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gilded Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Gilded Moth",
model={36956},
pet=748,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Gilded Moths in this area are level 24.
learnpet Gilded Moth##63838 |goto Vale of Eternal Blossoms 33.2,65.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Imperial Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Imperial Moth",
model={44551},
pet=1039,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 600 Tailoring, or purchase it from the Auction House.
step
label "create"
kill Springtail Leaper##57415+, Springtail Gnasher##57413+
collect 40 Windwool Cloth##72988 |goto Valley of the Four Winds 43.9,38.6
step
create 5 Bolt of Windwool Cloth##82441
step
Farm all enemies on the Isle of Thunder to collect Motes of Harmony.
when you get 10, right click them to collect Spirit of Harmony.
collect 3 Spirit of Harmony##76061+
step
create Song of Harmony##130325,Tailoring,1 total
collect 1 Imperial Silk##82447
step
#include "trainer_Tailoring"
learn Silkworm Cocoon##125557
step
create 1 Silkworm Cocoon##92960
step
Open the Silkworm Cocoon to see what pet it contains! |use Silkworm Cocoon##92960
|tip You have a chance of getting the Imperial Moth or the Imperial Silkworm. If you didn't get the one you wanted, you will have to wait a day and try again.
collect 1 Imperial Moth##67230 |or
collect 1 Imperial Silkworm##67233 |or
|next "done"
step
label "buy"
#include "auctioneer"
buy 1 Imperial Moth##90900
|next "done"
step
label "done"
learnpet Imperial Moth##67230 |use Imperial Moth##90900 |or
learnpet Imperial Silkworm##67233 |use Imperial Silkworm##90902 |or
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Ji-Kun Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Ji-Kun Hatchling",
model={48001},
pet=1202,
},[[
step
This pet drops in the raid Throne of Thudner, from the boss Ji-Kun.
|tip Note that you will need a raid to reach and defeat him.
learnpet Ji-Kun Hatchling##70144
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Luyu Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Luyu Moth",
model={36955},
pet=718,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Luyu Moths are level 23.
learnpet Luyu Moth##65124 |goto Krasarang Wilds 82.3,20.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Mei Li Sparkler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Mei Li Sparkler",
model={28434},
pet=722,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Mei Li Sparklers are level 23.
learnpet Mei Li Sparkler##65185 |goto Krasarang Wilds 39.5,32.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sandy Petrel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Sandy Petrel",
model={45994},
pet=573,
},[[
step
Challenge one to a pet battle and capture it.
|tip Sandy Petrel are level 23 or 24.
learnpet Sandy Petrel##63006 |goto The Jade Forest 66.2,25.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Shrine Fly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Shrine Fly",
model={20042},
pet=754,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Shrine Flies in this area are around level 24.
learnpet Shrine Fly##65216 |goto The Jade Forest 33.4,50.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sky Lantern",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Sky Lantern",
model={51530},
pet=1350,
},[[
step
In order to earn this pet you will need to acquire 7500 Timeless Coin.
|tip There are several caches found throughout the entire isle.
|tip Each enemy drops between 1 and 80 Timeless Coins.
|tip Rare spawns on the island drops more.
earn 7500 Timeless Coin##777
step
talk Ku-Mo##73819
buy 1 Sky Lantern##104332 |goto Timeless Isle 41.2,63.6
step
learnpet Sky Lantern##73809 |use Sky Lantern##104332
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Skywisp Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Skywisp Moth",
model={51740},
pet=1326,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Skywisp Moths in this area are level 25.
learnpet Skywisp Moth##73368 |goto Timeless Isle/0 65.3,23.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Szechuan Chicken",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Szechuan Chicken",
model={304},
pet=728,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Szechuan Chickens are around level 24.
learnpet Szechuan Chicken##63585 |goto Kun-Lai Summit 60.2,88.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Ashleaf Spriteling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Ashleaf Spriteling",
model={40908},
pet=1323,
},[[
step
This pet drops from a Rare Spawn on the Timeless Isle.
confirm
step
kill Leafmender##73277
collect 1 Ashleaf Spriteling##104156 |goto Timeless Isle 67.3,44.1
step
Use the _Ashleaf Spriteling_ in your bags. |use Ashleaf Spriteling##104156
learnpet Ashleaf Spriteling##73533
step
Congratulations, you have learned the _Ashleaf Spriteling_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Bonkers",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Bonkers",
model={51475},
pet=1343,
},[[
step
This pet requires you to have a lot of Timeless coins, as it is a random drop from a chest.
confirm
step
Enter this cave here |goto Timeless Isle/0 58.5,42.8 < 5 |walk
talk Master Kukuru##72007
buy Kukuru's Cache Key##101538 |goto Timeless Isle/0 59.1,40.6
step
Pick one of the many chests in this room and use your key to open it.
click Timeless Chest##221016
collect 1 Bonkers##104202
|tip This will most likely not drop on your first try. You will need to keep buying keys and opening chests until this drops.
step
learnpet Bonkers##73668 |use Bonkers##104202
step
Congratulations, you have learned the _Bonkers_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Dandelion Frolicker",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Dandelion Frolicker",
model={51408},
pet=1329,
},[[
step
click Neverlasting Crystal |goto Timeless Isle 47.7,73.7
This will provide a limited debuff that will turn all Nice Sprites into Angry Sprites.
confirm
step
kill Nice Sprite##71823+, Angry Sprite##71824+
|tip Kill enough of these in the time allotment and a Scary Sprite will spawn.
kill Scary Sprite##71826
collect 1 Dandelion Frolicker##104160 |goto Timeless Isle 45.5,73.4
step
Use the _Dandelion Frolicker_ in your bags |use Dandelion Frolicker##104160
learnpet Dandelion Frolicker##73532
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Fiendish Imp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Fiendish Imp",
model={48662},
pet=1229,
},[[
step
kill Terestian Illhoof##15688
collect Satyr Charm##97551 |goto Karazhan/11 55.8,76.6
step
Use the _Satyr Charm_. |use Satyr Charm##97551
learnpet Fiendish Imp##71033
step
Congratulations, you have learned the _Fiendish Imp_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Lil' Bad Wolf",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Lil' Bad Wolf",
model={48878},
pet=1226,
},[[
step
kill The Big Bad Wolf##17521
collect Spiky Collar##97548 |goto Karazhan/4 18.0,34.4
step
Use your Spiky Collar. |use Spiky Collar##97548
learnpet Lil' Bad Wolf##71014
step
Congratulations, you have learned the _Lil' Bad Wolf_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Coilfang Stalker",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Coilfang Stalker",
model={48661},
pet=1232,
},[[
step
kill Lady Vashj##21212
collect Dripping Strider Egg##97554 |n
learnpet Coilfang Stalker##71019 |goto Serpentshrine Cavern 71.6,59.0
|tip You will likely need a group for this boss, as the mechanics call for it.
step
Congratulations, you have learned the _Coilfang Stalker_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Filthling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Filthling",
model={48708},
pet=1245,
},[[
step
kill Quivering Filth##69251+
|tip Fight them all around  this area.
collect Half-Empty Food Container##97961 |goto Isle of Thunder 51.2,81.8
step
Use the _Half-Empty Food Container_. |use Half-Empty Food Container##97961
learnpet Filthling##71201
step
Congratulations, you have learned the _Filthling_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Gusting Grimoire",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Gusting Grimoire",
model={47348},
pet=1174,
},[[
step
This pet can only be obtained through the World of Warcraft Trading Card Game Expansion: "Betrayal of the Guardian"..
confirm
step
learnpet Gusting Grimoire##69208
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Harmonious Porcupette",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Harmonious Porcupette",
model={47856},
pet=1346,
},[[
step
kill Ordon Candlekeeper##72875+, Ordon Oathguard##72892+, Ordon Fire-Watcher##72894+ |goto Timeless Isle/0 53.7,79.9
|tip Become Revered with the Shaohao
earn 7500 Timeless Coin##777 |n
confirm
step
talk Mistweaver Ku##73306
buy 1 Harmonious Porcupette##104295 |goto Timeless Isle/0 42.7,54.7
step
Use the _Harmonious Porcupette_ in your bags. |use Harmonious Porcupette##104295
learnpet Harmonious Porcupette##73732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lesser Voidcaller",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Lesser Voidcaller",
model={48668},
pet=1234,
},[[
step
kill High Astromancer Solarian##18805
collect Crystal of the Void##97556 |goto Tempest Keep/1 73.8,49.2
step
Use your _crystal of the Void_. |use Crystal of the Void##97556
learnpet Lesser Voidcaller##71021
step
Congratulations, you have learned the _Lesser Voidcaller_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Living Fluid",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Living Fluid",
model={48704},
pet=1243,
},[[
step
In order to obtain this pet, you will need to defeat _Primordius_ in _Throne of Thunder_.
confirm
step
kill Primordius##69017
collect Quivering Blob##97959 |goto Throne of Thunder/5 57.1,77.6
step
Use your Dark Quivering Blob. |use Dark Quivering Blob##97960
learnpet Viscous Horror##71199
step
Congratulations, you have learned the _Viscous Horror_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Netherspace Abyssal",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Netherspace Abyssal",
model={48856},
pet=1228,
},[[
step
kill Prince Malchezaar##15690
collect Netherspace Portal-Stone##97550 |goto Karazhan/17 48.6,53.6
step
Use your Netherspace Portal-Stone. |use Netherspace Portal-Stone##97550
learnpet Netherspace Abyssal##71016
step
Congratulations, you have learned the _Netherspace Abyssal_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Spectral Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Spectral Cub",
model={30409},
pet=1127,
},[[
step
This pet was a reward for players who attended the Battle.net World Championships in Shanghai.
confirm
step
Check your in-game mail for your Spectral Cub!
collect 1 Spectral Cub##90953
step
learnpet Spectral Cub##68502 |use Spectral Cub##90953
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Spectral Porcupette",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Spectral Porcupette",
model={47732},
pet=1185,
},[[
step
For this pet, you will likely need to have at least 2 people who have _Heroic Level Dungeon Gear_.
|tip avoid Primal enemies, as they hit very hard.
confirm
step
kill Primal Direhorn##70016+, Primal Direhorn Hatchling##70012+, Young Primal Devilsaur##69993+, Primal Devilsaur##70011+, Young Primal Devilsaur##69993+, Pterrorwing Skyscreamer##70020+
collect 1000 Giant Dinosaur Bone##94288
step
Enter the cave here. |goto Isle of Giants/0 27.4,58.0 < 10 |walk
talk Ku'ma##70022
turnin A Large Pile of Giant Dinosaur Bones##32616 |goto Isle of Giants 32.7,53.9
step
collect Spectral Porcupette##94190
learnpet Spectral Porcupette##69848 |use Spectral Porcupette##94190
step
Congratulations, you have attained the _Spectral Porcupette_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Viscous Horror",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Viscous Horror",
model={48705},
pet=1244,
},[[
step
In order to obtain this pet, you will need to defeat _Primordius_ in _Heroic Throne of Thunder_.
confirm
step
kill Primordius##69017
collect Dark Quivering Blob##97960 |goto Throne of Thunder/5 57.1,77.6
step
Use your Dark Quivering Blob. |use Dark Quivering Blob##97960
learnpet Viscous Horror##71200
step
Congratulations, you have learned the _Viscous Horror_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Blackfuse Bombling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Blackfuse Bombling",
model={51268},
pet=1322,
},[[
step
You can only obtain this pet from the Siege of Orgrimmar raid.
|tip It can drop from any difficulty..
confirm
step
kill Siegemaster Blackfuse##71504
collect Blackfuse Bombling##104158 |goto Siege of Orgrimmar/10 58.7,46.5
step
Use the _Blackfuse Bombling_ in your bags.|use Blackfuse Bombling##104158
learnpet Blackfuse Bombling##73352
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' Bling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Lil' Bling",
model={49289},
pet=1320,
},[[
step
This pet will require an _Engineer_ to make. It's suggested you pick up Engineering in order to obtain this item, as it comes from the _Blingtron 4000_ daily.
|tip You may be able to run into the Blingtron 4000 yourself, or ask around in your guild or in Trade Chat if you can use it, but the item needed is an extremely rare spawn from him.
confirm
step
#include "trainer_Engineering"
learn Blingtron 4000##127129
only if skill("Engineering")==600
step
create 1 Blingtron 4000##127129, Engineering,1 total
only if skill("Engineering")==600
step
label "gift"
Call the Blingtron 4000 to you. |use Blingtron 4000##87214 |only if skill("Engineering")==600
Ask around in trade chat or in your guild and see if anyone will summon Blingtron 4000 for you. |only if skill("Engineering")<600
talk Blingtron 4000##43929
accept Blingtron 4000##31752 |instant
collect 1 Blingtron 4000 Gift Package##86623
step
Open the Blingtron 4000 Gift Package in your bags! |use Blingtron 4000 Gift Package##86623
collect 1 Lil' Bling##103670 |next
Click here if you didn't receive the Dusty Old Robot today. |confirm |next "gift"
step
Use the _Lil' Bling_ in your bags. |use Lil' Bling##103670
learnpet Lil'Bling##73011
step
Congratulations, you have learned the _Lil' Bling_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Menagerie Custodian",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Menagerie Custodian",
model={48857},
pet=1227,
},[[
step
kill The Curator##15691
collect Instant Arcane Sanctum Security Kit##97549 |goto Karazhan/9 41.0,22.0
step
Use your _Instant Arcane Sanctum Security Kit_. |use Instant Arcane Sanctum Security Kit##97549
learnpet Menagerie Custodian##71015
step
Congratulations, you have learned the _Menagerie Custodian_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pierre",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Pierre",
model={47711},
pet=1204,
},[[
step
This pet requires you to have level 600 in Engineering.
confirm
step
Kill any mob in the _Vale of Eternal Blossoms_
collect 1 Schematic: Chief Engineer Jard's Journal##100910
step
Use the _Schematic: Chief Engineer Jard's Journal_ in your bags. |use Schematic: Chief Engineer Jard's Journal##100910
accept Chief Engineer Jard's Journal##32630 |instant
step
label "a"
You can either buy these materials from the Auction House or farm to obtain them:
collect 15 Living Steel##72104
collect 15 Jard's Peculiar Energy Source##94113
|next "create"
Click here to farm these materials yourself |confirm |next
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 90 _Spirit of Harmony_
collect 90 Black Trillium Ore##72094
collect 90 White Trillium Ore##72103
or
You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
collect 180 Black Trillium Ore##72094
collect 180 White Trillium Ore##72103
collect 300 Ghost Iron Ore##72092
step
create 45 Trillium Bar##102167 |goto Vale of Eternal Blossoms/3 71.5,51.0
create 90 Trillium Bar##102167 |goto Vale of Eternal Blossoms/3 71.5,51.0
Click here if you choose the _Spirit of Harmony_ route. |confirm
step
For this next part, you will either need to have level 600 Alchemy, or know someone who does.
confirm
step
create 15 Living Steel##130326,Alchemy,30 total
|tip This is for those using the Riddle of Steel spell.
create 15 Living Steel##114780,Alchemy,30 total
|tip This is for those using Transmute: Living Steel
step
create 150 Ghost Iron Bar##102165
step
create 1 Pierre##139196,Engineering,1 total
step
learnpet Pierre##70082 |use Pierre##94903
step
Congratulations, you have learned the _Pierre_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pocket Reaver",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Pocket Reaver",
model={48664},
pet=1233,
},[[
step
kill Void Reaver##19516
collect Tiny Fel Engine Key##97555 |goto Tempest Keep/1 25.3,49.5
step
Use your _Tiny Fel Engine Key_. |use Tiny Fel Engine Key##97555
learnpet Pocket Reaver##71020
step
Congratulations, you have learned the _Pocket Reaver_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rascal-Bot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Rascal-Bot",
model={49084},
pet=1256,
},[[
step
This pet requires you to have level 600 in Engineering.
confirm
step
Kill any mob in the _Vale of Eternal Blossoms_
collect 1 Schematic: Chief Engineer Jard's Journal##100910
step
Use the _Schematic: Chief Engineer Jard's Journal_ in your bags. |use Schematic: Chief Engineer Jard's Journal##100910
accept Chief Engineer Jard's Journal##32630 |instant
step
label "a"
You can either buy these materials from the Auction House or farm to obtain them:
collect 30 Living Steel##72104
collect 30 Jard's Peculiar Energy Source##94113
|next "create"
Click here to farm these materials yourself |confirm |next
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 90 _Spirit of Harmony_
collect 180 Black Trillium Ore##72094
collect 180 White Trillium Ore##72103
or
You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
collect 360 Black Trillium Ore##72094
collect 360 White Trillium Ore##72103
collect 600 Ghost Iron Ore##72092
step
create 90 Trillium Bar##102167 |goto Vale of Eternal Blossoms/3 71.5,51.0
create 180 Trillium Bar##102167 |goto Vale of Eternal Blossoms/3 71.5,51.0
Click here if you choose the _Spirit of Harmony_ route. |confirm
step
For this next part, you will either need to have level _600 Alchemy_, or know someone who does.
confirm
step
create 30 Living Steel##130326,Alchemy,30 total
|tip This is for those using the Riddle of Steel spell.
create 30 Living Steel##114780,Alchemy,30 total
|tip This is for those using Transmute: Living Steel
step
create 300 Ghost Iron Bar##102165
step
create 1 Rascal-Bot##143714,Engineering,1 total
step
learnpet Rascal-Bot##71693 |use Rascal-Bot##100905
step
Congratulations, you have learned the _Rascal-Bot_ companion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Son of Animus",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Son of Animus",
model={47708},
pet=1183,
},[[
step
This pet drops in the raid Throne of Thudner, from the boss Dark Animus.
|tip He is located in the Halls of Flesh-Shaping.
|tip Note that you will need a raid to reach and defeat him.
learnpet Son of Animus##69820 |use Son of Animus##94152
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Sunreaver Micro-Sentry",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Sunreaver Micro-Sentry",
model={47848},
pet=1178,
},[[
step
For this pet, you will need to fight the rare spawn Haywire Sunreaver Construct.
|tip You will likely need at least one other person to kill this rarespawn, unless you can self sustain your health while dpsing him down.
confirm
step
kill Haywire Sunreaver Construct##50358+
collect Sunreaver Construct##94124 |goto Isle of Thunder/0 50.0,91.1
step
learnpet Sunreaver Micro-Sentry##69778 |use Sunreaver Construct##94124
step
Congratulations, you have learned the Sunreaver Micro-Sentry!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Unborn Val'kyr",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Unborn Val'kyr",
model={48650},
pet=1238,
},[[
step
This pet is very rare, so you may be searching for a while.
confirm
step
label "start"
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Borean Tundra 32.6,60.0 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Borean Tundra 80.8,48.2 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Borean Tundra 47.8,8.0 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Sholazar Basin 44.6,69.2 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Sholazar Basin 36.8,19.4 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Sholazar Basin 58.5,22.0 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Icecrown 44.2,33.4 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Icecrown 47.9,86.6 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Icecrown 73.8,64.5 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Crystalsong Forest 17.6,57.2 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Dragonblight 26.8,54.0 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Dragonblight 82.2,65.8 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Dragonblight 65.6,35.8 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Crystalsong Forest 43.4,44.0 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Crystalsong Forest 68.2,49.6 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto The Storm Peaks 42.5,78.5 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto The Storm Peaks 29.0,51.4 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto The Storm Peaks 65.2,41.8 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Zul'Drak 75.0,22.8 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Zul'Drak 57.0,39.8 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Zul'Drak 24.6,64.0 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Grizzly Hills 25.8,56.8 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Grizzly Hills 61.4,18.2 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Grizzly Hills 79.6,51.8 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Howling Fjord 71.8,43.0 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Howling Fjord 68.0,67.6 |next "end"
Click here if the pet is not available at this location. |confirm
step
Challenge it to a pet battle and capture it
|tip The Unborn Val'kyr is level 23.
learnpet Unborn Val'kyr##71163 |goto Howling Fjord 46.0,43.0 |next "end"
Click here if the pet is not available at this location. |confirm |next "start"
step
label "end"
Congratulations, you have obtained the _Unborn Val'kyr_ pet!
]])
