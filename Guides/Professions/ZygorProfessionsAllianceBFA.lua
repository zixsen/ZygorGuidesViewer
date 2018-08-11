local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Alchemy\\Leveling Guides\\Kul Tiran Alchemy 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Alchemy profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Alchemy')>=150 end,
condition_suggested=function() return skill('Kul Tiran Alchemy')>0 and skill('Kul Tiran Alchemy')<150 and level>=110 end,
},[[
step
talk Elric Whalgrene##132228
Train Kul Tiran Alchemy |skillmax Kul Tiran Alchemy,150 |goto Boralus/0 74.21,6.53
step
talk Elric Whalgrene##132228
buy 200 Crystal Vial##3371 |n
|tip They're cheap, so just stock up on a lot now, so you don't have to buy more constantly.
collect 200 Crystal Vial##3371 |goto 74.21,6.53
step
collect 175 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 25 Coastal Healing Potion>_
Reach Level 25 Alchemy |skill Kul Tiran Alchemy,25
step
talk Elric Whalgrene##132228
Train Potion of Concealment (Rank 1) |learn Potion of Concealment##252400 |goto 74.21,6.53
step
collect 225 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potion of Concealment>_
Reach Level 40 Alchemy |skill Kul Tiran Alchemy,40
step
talk Elric Whalgrene##132228
Train Coastal Healing Potion (Rank 2) |learn Coastal Healing Potion##252383 |goto 74.21,6.53
step
collect 50 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 10 Coastal Healing Potion>_
Reach Level 50 Alchemy |skill Kul Tiran Alchemy,50
step
talk Elric Whalgrene##132228
Train Potion of Concealment (Rank 2) |learn Potion of Concealment##252401 |goto 74.21,6.53
step
collect 100 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 10 Potion of Concealment>_
Reach Level 60 Alchemy |skill Kul Tiran Alchemy,60
step
talk Elric Whalgrene##132228
Train Potion of Bursting Blood (Rank 1) |learn Potion of Bursting Blood##252341 |goto 74.21,6.53
step
talk Elric Whalgrene##132228
Train Potion of Bursting Blood (Rank 2) |learn Potion of Bursting Blood##252342 |goto 74.21,6.53
step
collect 150 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 120 Riverbud##152505
|tip You get these by gathering from Riverbud flowers that grow on the ground along rivers, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potion of Bursting Blood>_
Reach Level 75 Alchemy |skill Kul Tiran Alchemy,75
step
talk Elric Whalgrene##132228
Train Battle Potion of Agility (Rank 1) |learn Battle Potion of Agility##279159 |goto 74.21,6.53
step
talk Elric Whalgrene##132228
Train Battle Potion of Agility (Rank 2) |learn Battle Potion of Agility##279160 |goto 74.21,6.53
step
collect 150 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 120 Riverbud##152505
|tip You get these by gathering from Riverbud flowers that grow on the ground along rivers, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 15 Battle Potion of Agility>_
Reach Level 90 Alchemy |skill Kul Tiran Alchemy,90
step
talk Elric Whalgrene##132228
Train Flask of the Vast Horizon (Rank 1) |learn Flask of the Vast Horizon##252354 |goto 74.21,6.53
step
collect 150 Anchor Weed##152510
|tip You get these by gathering from Anchor Weed plants that grow near water, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 225 Winter's Kiss##152508
|tip You get these by gathering from Winter's Kiss plants that grow in snowy areas, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 300 Star Moss##152506
|tip You get these by gathering from Star Moss plants that grow on the sides of walls and bridges, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 15 Flask of the Vast Horizon>_
Reach Level 105 Alchemy |skill Kul Tiran Alchemy,105
step
talk Elric Whalgrene##132228
Train Flask of the Currents (Rank 1) |learn Flask of the Currents##252348 |goto 74.21,6.53
step
collect 150 Anchor Weed##152510
|tip You get these by gathering from Anchor Weed plants that grow near water, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 225 Akunda's Bite##152507
|tip You get these by gathering from Akunda's Bite plants that grow in mountainous areas of Vol'dun, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 300 Sea Stalk##152511
|tip You get these by gathering from Sea Stalk plants that grow on ocean shores, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 15 Flask of the Currents>_
Reach Level 115 Alchemy |skill Kul Tiran Alchemy,115
step
talk Elric Whalgrene##132228
Train Flask of the Undertow (Rank 1) |learn Flask of the Undertow##252357 |goto 74.21,6.53
step
talk Elric Whalgrene##132228
Train Flask of the Undertow (Rank 2) |learn Flask of the Undertow##252358 |goto 74.21,6.53
step
collect 150 Anchor Weed##152510
|tip You get these by gathering from Anchor Weed plants that grow near water, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 300 Akunda's Bite##152507
|tip You get these by gathering from Akunda's Bite plants that grow in mountainous areas of Vol'dun, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 450 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 30 Flask of the Undertow>_
Reach Level 145 Alchemy |skill Kul Tiran Alchemy,145
step
talk Elric Whalgrene##132228
Train Flask of the Currents (Rank 2) |learn Flask of the Currents##252349 |goto 74.21,6.53
step
collect 50 Anchor Weeds##152510
|tip You get these by gathering from Anchor Weed plants that grow near water, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 100 Akunda's Bite##152507
|tip You get these by gathering from Akunda's Bite plants that grow in mountainous areas of Vol'dun, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 150 Sea Stalk##152511
|tip You get these by gathering from Sea Stalk plants that grow on ocean shores, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 10 Flask of the Currents>_
Reach Level 150 Alchemy |skill Kul Tiran Alchemy,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Blacksmithing\\Leveling Guides\\Kul Tiran Blacksmithing 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Blacksmithing profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Blacksmithing')>=150 end,
condition_suggested=function() return skill('Kul Tiran Blacksmithing')>0 and skill('Kul Tiran Blacksmithing')<150 and level>=110 end,
},[[
step
talk Grix "Ironfists" Barlow##133536
Train Kul Tiran Blacksmithing |skillmax Kul Tiran Blacksmithing,150 |goto Boralus/0 73.40,8.45
step
collect 140 Monelite Ore##152512
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Monel-Hardened Armguards>_
Reach Level 15 Blacksmithing |skill Kul Tiran Blacksmithing,15 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Monel-Hardened Waistguard |learn Monel-Hardened Waistguard##253180 |goto 73.40,8.45
step
collect 140 Monelite Ore##152512
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Monel-Hardened Waistguard>_
Reach Level 25 Blacksmithing |skill Kul Tiran Blacksmithing,25 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Monel-Hardened Greaves |learn Monel-Hardened Greaves##253174 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
buy 10 Durable Flux##160298 |n
collect 10 Durable Flux##160298 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Monel-Hardened Greaves>_
Reach Level 35 Blacksmithing |skill Kul Tiran Blacksmithing,35 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Monel-Hardened Breastplate |learn Monel-Hardened Breastplate##253162 |goto 73.40,8.45
step
collect 720 Monelite Ore##152512
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Blacksmithing Crafting Panel:
_<Create 40 Monel-Hardened Breastplate>_
Reach Level 75 Blacksmithing |skill Kul Tiran Blacksmithing,75 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Honorable Combatant's Plate Armguards |learn Honorable Combatant's Plate Armguards##269451 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
buy 200 Elemental Flux##18567 |n
collect 200 Elemental Flux##18567 |goto 73.40,8.45
step
collect 750 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Honorable Combatant's Plate Armguards>_
Reach Level 100 Blacksmithing |skill Kul Tiran Blacksmithing,100 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Honorable Combatant's Plate Boots |learn Honorable Combatant's Plate Boots##269424 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
buy 65 Elemental Flux##18567 |n
collect 65 Elemental Flux##18567 |goto 73.40,8.45
step
collect 200 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Honorable Combatant's Plate Boots>_
Reach Level 105 Blacksmithing |skill Kul Tiran Blacksmithing,105 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Honorable Combatant's Plate Greaves |learn Honorable Combatant's Plate Greaves##269444 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
buy 300 Elemental Flux##18567 |n
collect 300 Elemental Flux##18567 |goto 73.40,8.45
step
collect 1000 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Honorable Combatant's Plate Greaves>_
Reach Level 120 Blacksmithing |skill Kul Tiran Blacksmithing,120 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Stormsteel Dagger (Rank 1) |learn Stormsteel Dagger##253156 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
Train Stormsteel Dagger (Rank 2) |learn Stormsteel Dagger##253157 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
buy 50 Elemental Flux##18567 |n
collect 50 Elemental Flux##18567 |goto 73.40,8.45
step
collect 100 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 45 Platinum Ore##152513
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 10 Expulsom##152668 |goto 77.13,16.32
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Stormsteel Dagger>_
Reach Level 125 Blacksmithing |skill Kul Tiran Blacksmithing,125 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Stormsteel Girdle |learn Stormsteel Girdle##253190 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
buy 125 Elemental Flux##18567 |n
collect 125 Elemental Flux##18567 |goto 73.40,8.45
stickystart "Collect_Expulsom"
stickystart "Collect_Hydrocore"
step
collect 1000 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 450 Platinum Ore##152513
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
label "Collect_Expulsom"
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 750 Expulsom##152668 |goto 77.13,16.32
step
label "Collect_Hydrocore"
collect 375 Hydrocore##162460
|tip These are dropped by the last boss of Mythic dungeons.
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Stormsteel Girdle>_
Reach Level 150 Blacksmithing |skill Kul Tiran Blacksmithing,150 |goto 73.52,8.54
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Cooking\\Leveling Guides\\Kul Tiran Cooking 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Cooking profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Cooking')>=150 end,
condition_suggested=function() return skill('Kul Tiran Cooking')>0 and skill('Kul Tiran Cooking')<150 and level>=110 end,
},[[
step
Follow the path |goto Boralus/0 68.10,15.59 < 10 |walk
Continue following the path |goto 70.57,16.89 < 10 |walk
Continue following the path |goto 71.32,14.63 < 7 |only if walking
Continue following the path |goto 70.56,12.93 < 7 |only if walking
talk "Cap'n" Byron Mehlsack##136052
Learn Kul Tiran Cooking |skillmax Kul Tiran Cooking,150 |goto 71.21,10.70
step
Load the "Aromatic Fish Oil" guide |confirm |next "Zygor's Profession Guides\\Fishing\\Farming Guides\\Aromatic Fish Oil"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 98 Aromatic Fish Oil##160711
|tip These are gathered from using fish caught in Zandalar and Kul Tiras.
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Cooking") < 50
step
Follow the path |goto Boralus/0 70.74,13.55 < 7 |only if walking
Continue following the path |goto 71.37,14.97 < 7 |only if walking
Run down the stairs |goto 71.27,16.40 < 5 |only if walking
Continue down the stairs |goto 71.80,16.78 < 5 |only if walking
talk Sara Bartlett##123635
buy 245 Foosaka##160400 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 50
step
talk Sara Bartlett##123635
buy 196 Powdered Sugar##160712 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 50
step
talk Sara Bartlett##123635
buy 490 Wild Flour##160399 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 50
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 34 Mon'Dazi>_
|tip Be sure to save any Mon'Dazi you craft.
Reach Level 35 Kul Tiran Cooking |skill Kul Tiran Cooking,35
step
Run up the stairs |goto 72.04,16.39 < 5 |only if walking
Continue up the stairs |goto 71.66,16.78 < 5 |only if walking
Follow the path |goto 71.11,16.10 < 7 |only if walking
Continue following the path |goto 71.31,14.65 < 7 |only if walking
Continue following the path |goto 70.87,12.73 < 10 |only if walking
talk "Cap'n" Byron Mehlsack##136052
Learn the Rank 2 Recipe for Mon'Dazi |learn Mon'Dazi##259443 |goto 71.22,10.69
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Mon'Dazi>_
|tip Be sure to save any Mon'Dazi you craft.
Reach Level 50 Kul Tiran Cooking |skill Kul Tiran Cooking,50
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Recipe for Honey-Glazed Haunches |learn Honey-Glazed Haunches##259414 |goto 71.22,10.69
step
Load the "Meaty Haunch" guide |confirm |next "Zygor's Profession Guides\\Cooking\\Leveling Guides\\Meaty Haunch"
|tip Click the line above to load the guide.
collect 600 Meaty Haunch##154898
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Cooking") < 110
step
Follow the path |goto Boralus/0 70.74,13.55 < 7 |only if walking
Continue following the path |goto 71.37,14.97 < 7 |only if walking
Run down the stairs |goto 71.27,16.40 < 5 |only if walking
Continue down the stairs |goto 71.80,16.78 < 5 |only if walking
talk Sara Bartlett##123635
buy 300 Choral Honey##160398 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 110
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 40 Honey-Glazed Haunches>_
Reach Level 90 Kul Tiran Cooking |skill Kul Tiran Cooking,90
step
Run up the stairs |goto 72.04,16.39 < 5 |only if walking
Continue up the stairs |goto 71.66,16.78 < 5 |only if walking
Follow the path |goto 71.11,16.10 < 7 |only if walking
Continue following the path |goto 71.31,14.65 < 7 |only if walking
Continue following the path |goto 70.87,12.73 < 10 |only if walking
talk "Cap'n" Byron Mehlsack##136052
Learn the Rank 2 Recipe for Honey-Glazed Haunches |learn Honey-Glazed Haunches##259415 |goto 71.22,10.69
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Recipe for Kul Tiramisu |learn Kul Tiramisu##259411 |goto 71.22,10.69
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Rank 2 Recipe for Kul Tiramisu |learn Kul Tiramisu##259412 |goto 71.22,10.69
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Honey-Glazed Haunches>_
Reach Level 110 Kul Tiran Cooking |skill Kul Tiran Cooking,110
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Recipe for the Bountiful Captain's Feast |learn Bountiful Captain's Feast##259421 |goto 71.22,10.69
step
collect 480 Mon'Dazi##154885
|tip You can also purchase them from the Auction House.
|tip You should have at least 275 saved from crafting.
|tip To craft the rest, you will need:
|tip 60 Aromatic Fish.
|tip 120 Powdered Sugar.
|tip 150 Foosaka.
|tip 300 Wild Flour.
|only if skill("Kul Tiran Cooking") < 150
step
collect 480 Kul Tiramisu##154881
|tip You can also purchase them from the Auction House.
|tip To craft the rest, you will need:
|tip 690 Wild Flour.
|tip 345 Foosaka.
|tip 138 Aromatic Fish Oil.
|tip 345 Major's Frothy Coffee.
|only if skill("Kul Tiran Cooking") < 150
step
Load the "Redtail Loach" guide |confirm |next "Zygor's Profession Guides\\Fishing\\Farming Guides\\Redtail Loach"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 800 Redtail Loach##152549
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 150
step
Load the "Frenzied Fangtooth" guide |confirm |next "Zygor's Profession Guides\\Fishing\\Farming Guides\\Frenzied Fangtooth"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 800 Frenzied Fangtooth##152545
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 150
step
Load the "Stringy Loins" guide |confirm |next "Zygor's Profession Guides\\Cooking\\Leveling Guides\\Stringy Loins"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 800 Stringy Loins##154897
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 150
step
Load the "Meaty Haunch" guide |confirm |next "Zygor's Profession Guides\\Cooking\\Leveling Guides\\Meaty Haunch"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 800 Meaty Haunch##154898
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 150
step
Load the "Midnight Salmon" guide |confirm |next "Zygor's Profession Guides\\Fishing\\Farming Guides\\Midnight Salmon"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 200 Midnight Salmon##162515
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 150
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 40 Bountiful Captain's Feasts>_
Reach Level 150 Kul Tiran Cooking |skill Kul Tiran Cooking,150
step
_Congratulations!_
You reached level 150 with the Kul Tiran Cooking profession.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Cooking\\Leveling Guides\\Thick Paleo Steak",{
author="support@zygorguides.com",
description="This guide will walk you through farming Thick Paleo Steak for various Cooking recipes.",
startlevel=110.0,
},[[
step
kill Venomous Diemetradon##123098+
|tip If you have the "Skinning" skill, you can gather extra meat.
collect Thick Paleo Steak##154899 |n |goto Zuldazar/0 68.15,25.53
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Cooking\\Leveling Guides\\Meaty Haunch",{
author="support@zygorguides.com",
description="This guide will walk you through farming Meaty Haunch for various Cooking recipes.",
startlevel=110.0,
},[[
step
Kill enemies around this area
|tip If you have the "Skinning" skill, you can gather extra meat.
collect Meaty Haunch##154898 |n |goto Zuldazar/0 69.82,26.34
You can find more around [70.34,23.77]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Cooking\\Leveling Guides\\Stringy Loins",{
author="support@zygorguides.com",
description="This guide will walk you through farming Stringy Loins for various Cooking recipes.",
startlevel=110.0,
},[[
step
kill Shallows Saurolisk##125452
|tip You will need the "Skinning" skill in order to gather these.
collect Stringy Loins##154897 |n |goto Drustvar/0 68.2,40.6
You can find more around [65.33,40.57]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Cooking\\Leveling Guides\\Briny Flesh",{
author="support@zygorguides.com",
description="This guide will walk you through farming Briny Flesh for various Cooking recipes.",
startlevel=110.0,
},[[
step
kill Venomous Coilscale##130232
|tip If you have the "Skinning" skill, you can gather extra meat.
collect Briny Flesh##152631 |n |goto Tiragarde Sound/0 58.4,32.6
You can find more around [57.18,33.28]
confirm
step
kill Razorjaw Chomper##123083
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	55.99,77.68	55.59,76.57	56.96,76.63	57.99,75.50	61.75,71.02
path	63.96,67.56	65.65,60.20
collect Briny Flesh##152631 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Enchanting\\Leveling Guides\\Kul Tiran Enchanting 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Enchanting profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Enchanting')>=150 end,
condition_suggested=function() return skill('Kul Tiran Enchanting')>0 and skill('Kul Tiran Enchanting')<150 and level>=110 end,
},[[
step
talk Emily Fairweather##136041
Train Kul Tiran Enchanting |skillmax Kul Tiran Enchanting,150 |goto Boralus/0 74.02,11.56
step
talk Emily Fairweather##136041
buy 150 Enchanting Vellum##38682 |n
collect 150 Enchanting Vellum##38682 |goto 74.02,11.56
step
talk Emily Fairweather##136041
buy Copper Rod##6217 |n
collect Copper Rod##6217 |condition itemcount(6217) >= 1 or itemcount (6218) >= 1 |goto 74.02,11.56
step
talk Emily Fairweather##136041
buy Strange Dust##10940 |n
collect Strange Dust##10940 |condition itemcount(10940) >= 1 or itemcount (6218) >= 1 |goto 74.02,11.56
step
talk Emily Fairweather##136041
buy Lesser Magic Essence##10938 |n
collect Lesser Magic Essence##10938 |condition itemcount(10938) >= 1 or itemcount (6218) >= 1 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Copper Rod>_
collect Runed Copper Rod##6218
step
collect 225 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 9 Zandari Crafting>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 10 Enchanting |skill Kul Tiran Enchanting,10
step
Open Your Enchanting Crafting Panel:
_<Create 15 Seal of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 25 Enchanting |skill Kul Tiran Enchanting,25
step
talk Emily Fairweather##136041
Train Safe Hearthing |learn Safe Hearthing##271366 |goto 74.02,11.56
step
collect 50 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 10 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 10 Safe Hearthing>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 35 Enchanting |skill Kul Tiran Enchanting,35
step
talk Emily Fairweather##136041
Train Seal of Versatility (Rank 2) |learn Seal of Versatility##255089 |goto 74.02,11.56
step
collect 50 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 5 Seal of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 40 Enchanting |skill Kul Tiran Enchanting,40
step
talk Emily Fairweather##136041
Train Weapon Enchant - Gale-Force Striking |learn Weapon Enchant - Gale-Force Striking##255141 |goto 74.02,11.56
step
collect 400 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 100 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 20 Veiled Crystal##152877
|tip You can get these by disenchanting Battle for Azeroth level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 20 Weapon Enchant - Gale-Force Striking>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 60 Enchanting |skill Kul Tiran Enchanting,60
step
talk Emily Fairweather##136041
Train Weapon Enchant - Deadly Navigation |learn Weapon Enchant - Deadly Navigation##268907 |goto 74.02,11.56
step
collect 300 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 120 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 15 Veiled Crystal##152877
|tip You can get these by disenchanting Battle for Azeroth level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 15 Weapon Enchant - Deadly Navigation>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 75 Enchanting |skill Kul Tiran Enchanting,75
step
talk Emily Fairweather##136041
Train Pact of Critical Strike |learn Pact of Critical Strike##255075 |goto 74.02,11.56
step
collect 500 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 125 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 200 Veiled Crystal##152877
|tip You can get these by disenchanting Battle for Azeroth level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 25 Pact of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 100 Enchanting |skill Kul Tiran Enchanting,100
step
talk Emily Fairweather##136041
Train Pact of Critical Strike (Rank 2) |learn Pact of Critical Strike##255090 |goto 74.02,11.56
step
collect 450 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 100 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 125 Veiled Crystal##152877
|tip You can get these by disenchanting Battle for Azeroth level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 25 Pact of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 125 Enchanting |skill Kul Tiran Enchanting,125
step
talk Emily Fairweather##136041
Train Weapon Enchant - Quick Navigation (Rank 1) |learn Weapon Enchant - Quick Navigation##268894 |goto 74.02,11.56
step
talk Emily Fairweather##136041
Train Weapon Enchant - Quick Navigation (Rank 2) |learn Weapon Enchant - Quick Navigation##268895 |goto 74.02,11.56
step
collect 450 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 150 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 25 Veiled Crystal##152877
|tip You can get these by disenchanting Battle for Azeroth level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 25 Weapon Enchant - Quick Navigation>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 150 Enchanting |skill Kul Tiran Enchanting,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Engineering\\Leveling Guides\\Kul Tiran Engineering 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Engineering profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Engineering')>=150 end,
condition_suggested=function() return skill('Kul Tiran Engineering')>0 and skill('Kul Tiran Engineering')<150 and level>=110 end,
},[[
step
Follow the path |goto Boralus/0 68.18,15.66 < 7 |only if walking
Continue following the path |goto 70.62,16.90 < 10 |only if walking
Continue following the path |goto 72.31,14.46 < 7 |only if walking
Continue following the path |goto 75.35,15.76 < 10 |only if walking
talk Layla Evenkeel##136059
Learn Kul Tiran Engineering |skillmax Kul Tiran Engineering,150 |goto 77.63,14.32
step
Follow the path |goto 75.64,15.50 < 10 |only if walking
Run down the stairs |goto 74.98,17.38 < 5 |only if walking
Continue down the stairs |goto 74.46,17.38 < 5 |only if walking
talk Miri Fiddlewizz##124295
buy 165 Chemical Blasting Cap##160502 |goto 73.65,15.73
|only if skill("Kul Tiran Engineering") < 50
step
talk Miri Fiddlewizz##124295
buy 687 Insulated Wiring##163569 |goto 73.65,15.73
|only if skill("Kul Tiran Engineering") < 85
step
Load the "Monelite Ore" guide |confirm |next "Zygor's Profession Guides\\Mining\\Farming Guides\\Monelite"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 920 Monelite Ore##152512
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 24 F.R.I.E.D.s>_
Reach Level 25 Kul Tiran Engineering |skill Kul Tiran Engineering,25
step
Run up the stairs |goto 74.46,17.38 < 5 |only if walking
Continue up the stairs |goto 74.98,17.38 < 5 |only if walking
Follow the path |goto 75.64,15.50 < 10 |only if walking
talk Layla Evenkeel##136059
Learn the Recipe for the Deployable Attire Rearranger |learn Deployable Attire Rearranger##256154 |goto 77.63,14.32
step
Load the "Storm Silver Ore" guide |confirm |next "Zygor's Profession Guides\\Mining\\Farming Guides\\Storm Silver"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 930 Storm Silver##152579
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Engineering") < 149
step
Open Your Engineering Crafting Panel:
_<Create 10 Deployable Attire Rearrangers>_
Reach Level 35 Kul Tiran Engineering |skill Kul Tiran Engineering,35
step
talk Layla Evenkeel##136059
Learn the Recipe for Crow's Nest Scope |learn Crow's Nest Scope##264960 |goto 77.63,14.32
step
talk Layla Evenkeel##136059
Learn the Rank 2 Recipe for the F.R.I.E.D. |learn F.R.I.E.D.##255393 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 15 F.R.I.E.D.s>_
Reach Level 50 Kul Tiran Engineering |skill Kul Tiran Engineering,50
step
talk Layla Evenkeel##136059
Learn the Rank 2 Recipe for the Deployable Attire Rearranger |learn Deployable Attire Rearrangers##256155 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 35 Deployable Attire Rearrangers>_
|tip You may need to create more to reach 85.
Reach Level 85 Kul Tiran Engineering |skill Kul Tiran Engineering,85
step
talk Layla Evenkeel##136059
Learn the Rank 2 Recipe for the Crow's Nest Scope |learn Crow's Nest Scope##264961 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 15 Crow's Nest Scope>_
Reach Level 100 Kul Tiran Engineering |skill Kul Tiran Engineering,100
step
talk Layla Evenkeel##136059
Learn the Recipe for Honorable Combatant's Discombobulator |learn Honorable Combatant's Discombobulator##269724 |goto 77.63,14.32
step
Load the "Platinum Ore" guide |confirm |next
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 270 Platinum Ore##152513
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Engineering") < 149
step
collect 170 Expulsom##152668
|tip These are obtained from World Quests, Salvaging Gear, Milling Herbs and Disenchanting magical items.
You can find the Shred-Master Mk1 here [77.13,16.34]
|only if skill("Kul Tiran Engineering") < 149
step
Open Your Engineering Crafting Panel:
_<Create 10 Honorable Combatant's Discombobulator>_
Reach Level 110 Kul Tiran Engineering |skill Kul Tiran Engineering,110
step
talk Layla Evenkeel##136059
Learn the Recipe for Precision Attitude Adjuster |learn Precision Attitude Adjuster##253150 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 15 Precision Attitude Adjuster>_
Reach Level 125 Kul Tiran Engineering |skill Kul Tiran Engineering,125
step
talk Layla Evenkeel##136059
Learn the Recipe for AZ3-R1-T3 Bionic Bifocals |learn AZ3-R1-T3 Bionic Bifocals##272062 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 15 AZ3-R1-T3 Bionic Bifocals>_
Reach Level 150 Kul Tiran Engineering |skill Kul Tiran Engineering,150
step
_Congratulations!_
You reached level 150 with the Kul Tiran Engineering profession.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Leveling Guides\\Kul Tiran Fishing 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Fishing profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Fishing')>=150 end,
condition_suggested=function() return skill('Kul Tiran Fishing')>150 and skill('Kul Tiran Fishing')<150 and level>=110 end,
},[[
step
Follow the road |goto Boralus/0 68.11,15.59 < 10 |only if walking
Continue following the road |goto 70.61,16.60 < 10 |only if walking
Continue following the road |goto 71.34,14.73 < 7 |only if walking
Continue following the road |goto 69.86,9.45 < 10 |only if walking
Continue following the road |goto 71.59,7.92 < 7 |only if walking
Continue following the path |goto 72.45,3.49 < 7 |only if walking
Continue following the path |goto 73.74,4.33 < 7 |only if walking
talk Alan Goyle##136102
Learn Kul Tiran Fishing |skillmax Kul Tiran Fishing,150 |goto 74.18,5.51
step
Fish in the open water
|tip You can fish anywhere and gain skill.
|tip If you want to fish up specific fish, refer to one of our farming guides.
Reach Level 150 Kul Tiran Fishing |skill Kul Tiran Fishing,150 |goto 74.18,5.51
step
_Congratulations!_
You reached level 150 with the Kul Tiran Fishing profession.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Farming Guides\\Redtail Loach",{
author="support@zygorguides.com",
description="This guide will walk you through farming Redtail Loach for various Cooking recipes.",
startlevel=110.0,
},[[
step
label "loop"
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
path	52.34,80.48	55.22,81.01	55.99,77.68	55.27,75.45	57.93,76.83
path	57.99,75.50	58.95,74.33	60.40,71.18	60.81,70.35	64.07,68.70
path	65.11,63.06 	65.93,60.32	67.41,57.61	65.46,55.63
Fish in Redtail Loach Schools
|tip They share spawn points with Great Sea Catfish School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the river.
collect Redtail Loach##152549 |n
Click here to continue |confirm
step
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	65.46,55.63	67.41,57.61	65.93,60.32	65.11,63.06	64.07,68.70
path	60.81,70.35	60.40,71.18	58.95,74.33	57.99,75.50	57.93,76.83
path	55.27,75.45	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
Fish in Redtail Loach Schools
|tip They share spawn points with Great Sea Catfish School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the river.
collect Redtail Loach##152549 |n
Click here to continue |confirm |next "loop"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Farming Guides\\Sand Shifter",{
author="support@zygorguides.com",
description="This guide will walk you through farming Sand Shifter for various Cooking recipes.",
startlevel=110.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Slimy Mackerel as well as Sand Shifters.
collect Sand Shifter##152543 |n |goto Nazmir/0 40.78,81.97
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Farming Guides\\Slimy Mackerel",{
author="support@zygorguides.com",
description="This guide will walk you through farming Slimy Mackerel for various Cooking recipes.",
startlevel=110.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Sand Shifters as well as Sand Shifters.
collect Slimy Mackerel##152544 |n |goto Nazmir/0 40.78,81.97
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Farming Guides\\Frenzied Fangtooth",{
author="support@zygorguides.com",
description="This guide will walk you through farming Frenzied Fangtooth for various Cooking recipes.",
startlevel=110.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Lane Snappers as well as Frenzied Fangtooth.
collect Frenzied Fangtooth##152545 |n |goto Stormsong Valley/0 52.51,25.97
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Farming Guides\\Lane Snapper",{
author="support@zygorguides.com",
description="This guide will walk you through farming Lane Snapper for various Cooking recipes.",
startlevel=110.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Lane Snappers as well as Frenzied Fangtooth.
collect Lane Snapper##152546 |n |goto Stormsong Valley/0 52.51,25.97
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Leveling Guides\\Great Sea Catfish",{
author="support@zygorguides.com",
description="This guide will walk you through farming Great Sea Catfish for various Cooking recipes.",
startlevel=110.0,
},[[
step
label "loop"
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
path	52.34,80.48	55.22,81.01	55.99,77.68	55.27,75.45	57.93,76.83
path	57.99,75.50	58.95,74.33	60.40,71.18	60.81,70.35	64.07,68.70
path	65.11,63.06 	65.93,60.32
Fish in Great Sea Catfish Schools
|tip They share spawn points with Redtail Loach School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the coast.
collect Great Sea Catfish##152547 |n
Click here to continue |confirm
step
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	65.46,55.63	67.41,57.61	65.93,60.32	65.11,63.06	64.07,68.70
path	60.81,70.35	60.40,71.18	58.95,74.33	57.99,75.50	57.93,76.83
path	55.27,75.45	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
Fish in Great Sea Catfish Schools
|tip They share spawn points with Redtail Loach School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the coast.
collect Great Sea Catfish##152547 |n
Click here to continue |confirm |next "loop"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Leveling Guides\\Tiragarde Perch",{
author="support@zygorguides.com",
description="This guide will walk you through farming Tiragarde Perch for various Cooking recipes.",
startlevel=110.0,
},[[
step
Fish in the small pond
|tip You will occassionally catch Great Sea Catfish as well as Tiragarde Perch.
collect Tiragarde Perch##152548 |n |goto Tiragarde Sound/0 77.67,67.30
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Farming Guides\\Aromatic Fish Oil",{
author="support@zygorguides.com",
description="This guide will walk you through farming Aromatic Fish Oil for various Cooking recipes.",
startlevel=110.0,
},[[
step
Follow the path |goto Boralus/0 68.05,15.62 < 5 |only if walking
Run down the stairs |goto 71.29,16.44 < 5 |only if walking
Continue down the stairs |goto 71.66,17.04 < 5 |only if walking
Continue following the path |goto 71.40,18.04 < 5 |only if walking
Continue following the path |goto 74.58,18.92 < 7 |only if walking
Continue following the path |goto 75.81,22.01 < 5 |only if walking
Run down the stairs |goto 75.66,22.97 < 5 |only if walking
use the Sand Shifter##152543
use the Slimy Mackerel##152544
collect Aromatic Fish Oil##160711 |n |goto 73.64,23.12
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Fishing\\Farming Guides\\Midnight Salmon",{
author="support@zygorguides.com",
description="This guide will walk you through farming Midnight Salmon for various Cooking recipes.",
startlevel=110.0,
},[[
step
map Stormsong Valley/0
path follow smart; loop off; ants curved; dist 20
path	56.42,19.69	58.70,17.84	61.38,15.17	63.06,14.62	64.28,16.06
path	66.47,18.99	69.95,34.95	69.56,36.85	69.24,40.52	66.68,48.49
path	68.08,50.14	70.34,48.58	72.69,48.96	73.83,52.22	73.82,53.81
path	72.18,57.68	73.81,59.71	75.43,60.95	77.58,61.04	78.25,61.57
path	79.24,61.77	80.76,61.45
Fish in pool found in Stormsong
|tip You can also fish in one spot for these.
|tip Midnight Salmon are rare, so it will take a while to collect them.
collect Midnight Salmon##162515 |n
|tip They look like small circular swirling spots in the water along the coast.
|tip These can be found along the coasts of Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Leveling Guides\\Kul Tiran Herbalism 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Herbalism profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Herbalism')>=150 end,
condition_suggested=function() return skill('Kul Tiran Herbalism')>0 and skill('Kul Tiran Herbalism')<150 and level>=110 end,
},[[
step
talk Declan Senal##136096
|tip He walks around this area.
Train Kul Tiran Herbalism |skillmax Kul Tiran Herbalism,150 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 150 Herbalism |skill Kul Tiran Herbalism,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Quest Guides\\Kul Tiran Herbalism Quest Line",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Kul Tiran Alchemy quest line.",
startlevel=110.0,
condition_end=function() return completedq(48763) end,
condition_suggested=function() return skill('Kul Tiran Herbalism')>0 and level>=110 and not completedq(48763) end,
},[[
step
talk Declan Senal##136096
|tip He walks around this area.
Train Kul Tiran Herbalism |skillmax Kul Tiran Herbalism,150 |goto Boralus/0 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Akunda's Bite |learn Akunda's Bite##252411 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Riverbud |learn Riverbud##252405 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Sea Stalk |learn Sea Stalk##252421 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Siren's Pollen |learn Siren's Pollen##252418 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Star Moss |learn Star Moss##252408 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Winter's Kiss |learn Winter's Kiss##252415 |goto 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 50 Herbalism |skill Kul Tiran Herbalism,50
step
talk Declan Senal##136096
|tip He walks around this area.
Train Anchor Weed |learn Anchor Weed##252424 |goto Boralus/0 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
accept Emergency Transplants##48753 |goto Boralus/0 71.25,5.33
accept An Unusual Mentor##51398 |goto 71.25,5.33
accept Here In Spirit##48756 |goto 71.25,5.33
accept Cultural Significance##51365 |goto 71.25,5.33
accept Meet Sweetflower##48762 |goto 71.25,5.33
step
Follow the path |goto 71.41,6.83 < 10 |only if walking
Continue following the path |goto 69.85,9.34 < 10 |only if walking
Continue following the path |goto 71.49,15.14 < 10 |only if walking
Jump down here |goto 70.42,17.63 < 7 |only if walking
Run up the stairs |goto 69.26,21.35 < 7 |only if walking
Enter the building |goto Tiragarde Sound/0 73.98,24.88 < 5 |walk
Run down the stairs |goto 73.66,24.94 < 5 |walk
Continue following the path |goto 73.69,25.33 < 5 |walk
talk Provisioner Fray##135808
|tip Inside the building.
Ask her _"What can you tell me about this sea stalk?"_
Ask Provisioner Fray About Sea Stalks |q 51365/1 |goto 73.68,24.99
step
Run up the stairs |goto 73.72,25.33 < 5 |walk
Leave the building |goto 73.58,25.41 < 5 |walk
Follow the path |goto Boralus/0 66.63,28.11 < 10 |only if walking
talk Flynn Fairwind##131290
Ask him _"What can you tell me about this sea stalk?"_
Ask Flynn Fairwind About Sea Stalks |q 51365/2 |goto 66.86,33.24
step
Follow the path |goto 66.74,37.38 < 10 |only if walking
talk Joseph Furlong##122072
Ask him _"What can you tell me about this sea stalk?"_
Ask Joseph Furlong About Sea Stalks |q 51365/3 |goto 65.99,37.71
step
Follow the path |goto Boralus/0 66.94,36.58 < 10 |only if walking
Continue following the path |goto 66.68,32.05 < 10 |only if walking
Continue following the path |goto 66.55,26.36 < 10 |only if walking
Run down the stairs |goto 67.44,24.62 < 7 |only if walking
Continue following the path |goto 68.25,24.93 < 5 |only if walking
Run up the stairs |goto 69.51,25.15 < 7 |only if walking
Follow the path |goto 69.85,22.43 < 10 |only if walking
Run up the stairs |goto 71.38,17.96 < 7 |only if walking
Continue up the stairs |goto 71.69,16.80 < 5 |only if walking
Continue following the path |goto 70.26,16.25 < 10 |only if walking
Continue following the path |goto Tiragarde Sound/0 66.12,22.70 < 10 |only if walking
click Rivermud##290136+
|tip They look like small brown mounds of dirt on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
Plant #10# Riverbud Seeds |q 48753/1 |goto 62.82,18.67
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Emergency Transplants##48753 |goto Boralus/0 71.25,5.33
turnin Cultural Significance##51365 |goto 71.25,5.33
step
Cross the bridge |goto Vol'dun/0 61.74,22.54 < 10 |only if walking
Follow the path |goto 61.49,24.58 < 10 |only if walking
Continue following the path |goto 61.85,26.51 < 10 |only if walking
Continue following the path |goto 62.23,26.61 < 7 |only if walking
Enter the cave |goto 62.31,26.00 < 5 |walk
talk Patu##137572
|tip Inside the cave.
turnin An Unusual Mentor##51398 |goto 62.34,25.72
accept Foul Harvest##51399 |goto 62.34,25.72
step
Leave the cave |goto 62.31,26.08 < 5 |walk
Follow the path |goto 61.72,28.62 < 10 |only if walking
Continue following the path |goto 61.45,29.87 < 10 |only if walking
Continue following the path |goto 60.54,30.81 < 10 |only if walking
Continue down the path |goto 60.54,32.77 < 10 |only if walking
Continue down the path |goto 60.94,35.37 < 10 |only if walking
click Sun Baked Dung##289448+
|tip They look like small brown piles of poop with flies coming off them on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
collect 12 Digested Akunda's Bite Seed##160108 |q 51399/1 |goto 59.37,40.63
step
Follow the path |goto 60.47,37.34 < 10 |only if walking
Continue following the path |goto 60.96,35.54 < 10 |only if walking
Continue following the path |goto 60.61,33.83 < 10 |only if walking
Continue up the path |goto 60.52,32.23 < 10 |only if walking
Continue up the path |goto 60.49,30.87 < 10 |only if walking
Continue up the path |goto 61.44,29.83 < 10 |only if walking
Enter the cave |goto 62.31,26.00 < 5 |walk
talk Patu##137572
|tip Inside the cave.
turnin Foul Harvest##51399 |goto 62.34,25.72
accept Giving Back to Nature##51408 |goto 62.34,25.72
step
Leave the cave |goto 62.31,26.08 < 5 |walk
Follow the path |goto 61.72,28.62 < 10 |only if walking
Continue following the path |goto 61.45,29.87 < 10 |only if walking
Continue following the path |goto 60.54,30.81 < 10 |only if walking
Continue down the path |goto 60.54,32.77 < 10 |only if walking
Continue down the path |goto 60.94,35.37 < 10 |only if walking
Continue following the path |goto 60.14,38.19 < 10 |only if walking
use the Akunda's Bite Sapling##160187
Defeat the enemies that attack in waves
Defend Akunda's Bite Sapling |q 51408/1 |goto 59.66,45.16
step
Follow the path |goto 60.47,37.34 < 10 |only if walking
Continue following the path |goto 60.96,35.54 < 10 |only if walking
Continue following the path |goto 60.61,33.83 < 10 |only if walking
Continue up the path |goto 60.52,32.23 < 10 |only if walking
Continue up the path |goto 60.49,30.87 < 10 |only if walking
Continue up the path |goto 61.44,29.83 < 10 |only if walking
Enter the cave |goto 62.31,26.00 < 5 |walk
talk Patu##137572
|tip Inside the cave.
turnin Giving Back to Nature##51408 |goto 62.34,25.72
step
click Star Moss##276236+
|tip They look like green plants with red flowers that grow on the sides of walls and bridges.
|tip Track them on your minimap with "Find Herbs".
collect 10 Fresh Star Moss##159830 |q 48756/1 |goto Tiragarde Sound/0 80.32,49.37
step
Follow the path |goto Drustvar/0 21.11,44.57 < 10 |only if walking
Continue up the path |goto 21.04,45.03 < 10 |only if walking
Continue up the path |goto 20.81,45.60 < 10 |only if walking
talk Xun Xun Sweetflower##136141
turnin Meet Sweetflower##48762 |goto 20.68,45.59
accept Can't Teach on an Empty Stomach##51376 |goto 20.68,45.59
step
Fish in the open water
|tip You will occassionally catch Lane Snappers.
|tip You can also purchase them from the Auction House.
collect 8 Lane Snapper##152546 |q 51376/1 |goto 19.95,44.86
step
Run up the stairs |goto 20.08,45.00 < 7 |only if walking
Follow the path |goto 20.34,45.40 < 7 |only if walking
Continue following the path |goto 20.56,45.92 < 7 |only if walking
talk Xun Xun Sweetflower##136141
turnin Can't Teach on an Empty Stomach##51376 |goto 20.68,45.59
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Here In Spirit##48756 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 100 Herbalism |skill Kul Tiran Herbalism,100
step
talk Declan Senal##136096
|tip He walks around this area.
accept Seeking More Knowledge##51016 |goto Boralus/0 71.25,5.33
step
Press _I_ and Queue for Waycrest Manor or Enter the Dungeon with your Group |goto Waycrest Manor/0 0.00,0.00 < 1000 |q 51016
step
click A Treatise on Anchor Weed##288621
|tip It looks like a small brown book with an anchor symbol on the front in the Waycrest Manor dungeon.
|tip It is in a room with the fourth boss, Lord Waycrest.
collect A Treatise on Anchor Weed##159960 |q 51016/1
step
kill Gorak Tul##144324
|tip It is the last boss of the Waycrest Manor dungeon.
Slay Gorak Tul |q 51016/2
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Seeking More Knowledge##51016 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
click Siren's Sting##281869+
|tip They look like green plants with purple flowers that grow attached to trees on the ground.
use the Dead Pollen-Covered Wasp##160250
accept Aromatic Pollenator##51312
|tip You will eventually accept this quest after looting.
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Aromatic Pollenator##51312 |goto Boralus/0 71.25,5.33
accept Learn From the Best##51313 |goto 71.25,5.33
step
use Jahden's Potion of Plant Shape##159881
Harvest Pollen |q 51313/1 |goto Stormsong Valley/0 72.50,69.76
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Learn From the Best##51313 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 145 Herbalism |skill Kul Tiran Herbalism,145
step
talk Declan Senal##136096
|tip He walks around this area.
accept Breaking The Food Chain##48754 |goto Boralus/0 71.25,5.33
accept Ghost Busting##48757 |goto 71.25,5.33
accept Gathering Mementos##48769 |goto 71.25,5.33
step
Follow the path |goto 71.43,6.83 < 10 |only if walking
Continue following the path |goto 69.90,9.33 < 10 |only if walking
Continue following the path |goto 71.42,15.05 < 10 |only if walking
Continue following the path |goto 70.74,16.94 < 10 |only if walking
Run up the stairs |goto 68.80,16.93 < 5 |only if walking
Continue up the stairs |goto 67.44,21.54 < 5 |only if walking
Continue following the path |goto 67.12,23.43 < 10 |only if walking
Continue following the path |goto 66.88,30.10 < 10 |only if walking
Jump down carefully here |goto 66.39,42.10 < 7 |only if walking
Cross the bridge |goto 59.84,48.09 < 7 |only if walking
Run up the stairs |goto 54.79,50.53 < 5 |only if walking
Continue following the path |goto 54.75,52.51 < 5 |only if walking
Enter the building |goto 53.90,52.26 < 5 |walk
use the Smoldering Bundle of Star Moss##159833
|tip Inside the building.
Summon the Angry Spirit |q 48757/1 |goto 54.04,51.73
step
kill Angry Spirit##137832
|tip Inside the building.
Put the Angry Spirit to Rest |q 48757/2 |goto 54.04,51.73
step
Follow the path |goto Tiragarde Sound/0 66.06,22.53 < 10 |only if walking
Continue following the path |goto 64.60,21.09 < 10 |only if walking
Continue following the path |goto 62.91,18.48 < 10 |only if walking
kill 15 Freshwater Snapper##127626 |q 48754/1 |goto 61.38,17.55
step
click Flotsam##289322+
|tip They look like brown piles of wood and boxes floating in the water around this area.
|tip They will appear on your minimap as a yellow dot.
collect Sailor's Cutlass##160057 |q 48769/1 |goto 86.65,84.96
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Breaking The Food Chain##48754 |goto Boralus/0 71.25,5.33
turnin Ghost Busting##48757 |goto 71.25,5.33
turnin Gathering Mementos##48769 |goto 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 150 Herbalism |skill Kul Tiran Herbalism,150
step
map Tiragarde Sound/0
path follow smart; loop on; ants curved; dist 20
path	53.51,25.36	52.57,24.24	51.38,22.97	51.07,22.30	50.76,22.19
path	49.12,22.09	47.55,24.06	47.77,25.77	48.56,27.47	49.63,29.79
path	50.64,30.76	50.95,31.57	50.94,32.34	51.11,33.86	51.28,35.04
path	52.23,37.41	53.13,37.13	53.54,35.14	54.98,34.75	56.54,33.97
path	56.75,32.19	57.32,31.41	56.89,30.43	56.29,30.69	55.65,30.29
path	55.26,29.30	53.79,26.86
click Anchor Weed##276242+
|tip Track them on your minimap with "Find Herbs".
use the Enormous Anchor Pod##160550
accept Enormous Anchor Pod##51360
|tip You will eventually accept this quest after looting.
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
click Siren's Sting##281869+
|tip Track them on your minimap with "Find Herbs".
use the Disgustingly Damp Flower##160301
accept Disgustingly Damp Flower##48758
|tip You will eventually accept this quest after looting.
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Enormous Anchor Pod##51360 |goto Boralus/0 71.25,5.33
accept More Anchor Pods##51361 |goto 71.25,5.33
turnin Disgustingly Damp Flower##48758 |goto 71.25,5.33
accept Pollen Punching##48755 |goto 71.25,5.33
step
map Tiragarde Sound/0
path follow smart; loop on; ants curved; dist 20
path	53.51,25.36	52.57,24.24	51.38,22.97	51.07,22.30	50.76,22.19
path	49.12,22.09	47.55,24.06	47.77,25.77	48.56,27.47	49.63,29.79
path	50.64,30.76	50.95,31.57	50.94,32.34	51.11,33.86	51.28,35.04
path	52.23,37.41	53.13,37.13	53.54,35.14	54.98,34.75	56.54,33.97
path	56.75,32.19	57.32,31.41	56.89,30.43	56.29,30.69	55.65,30.29
path	55.26,29.30	53.79,26.86
click Anchor Weed##276242+
|tip Track them on your minimap with "Find Herbs".
collect 9 Mature Anchor Pod##160036 |q 51361/1
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
click Siren's Sting##281869+
|tip Track them on your minimap with "Find Herbs".
collect 12 Heaping Handful of Damp Pollen##159957 |q 48755/1
step
Click the Complete Quest Box:
turnin Pollen Punching##48755
step
talk Declan Senal##136096
|tip He walks around this area.
turnin More Anchor Pods##51361 |goto Boralus/0 71.25,5.33
step
map Vol'dun/0
path follow smart; loop off; ants curved; dist 20
path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
click Akunda's Bite##276237+
|tip Track them on your minimap with "Find Herbs".
accept What Happens Next##51404
|tip You will eventually automatically accept this quest after looting.
step
map Vol'dun/0
path follow smart; loop off; ants curved; dist 20
path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
click Akunda's Bite##276237+
|tip Track them on your minimap with "Find Herbs".
Harvest #10# Akunda's Bite Without Being Shocked |q 51404/1
step
Click the Complete Quest Box:
turnin What Happens Next##51404
step
map Drustvar/0
path follow smart; loop on; ants straight
path	37.71,32.38	37.35,33.65	36.33,33.70	35.90,35.33	35.46,37.46
path	36.51,38.06	37.46,37.66	38.32,39.05	39.03,38.22	39.36,36.75
path	39.94,35.21	40.37,32.97	40.21,31.42	39.21,32.37
click Winter's Kiss##276238+
|tip Track them on your minimap with "Find Herbs".
accept The Frigid Boon##48763
|tip You will eventually automatically accept this quest after looting.
step
map Drustvar/0
path follow smart; loop on; ants curved; dist 20
path	37.71,32.38	37.35,33.65	36.33,33.70	35.90,35.33	35.46,37.46
path	36.51,38.06	37.46,37.66	38.32,39.05	39.03,38.22	39.36,36.75
path	39.94,35.21	40.37,32.97	40.21,31.42	39.21,32.37
click Winter's Kiss##276238+
|tip Track them on your minimap with "Find Herbs".
Harvest #10# Winter's Kiss Without Taking Cold Damage |q 48763/1
step
Click the Complete Quest Box:
turnin The Frigid Boon##48763
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Farming Guides\\Sea Stalk",{
author="support@zygorguides.com",
description="This guide will walk you through farming Sea Stalk for various Alchemy recipes.",
startlevel=110.0,
},[[
step
map Zuldazar/0
path	follow smart; loop on; ants curved; dist 20
path	70.56,64.15	71.41,65.42	72.20,65.36	73.23,66.61	73.80,65.36
path	74.88,66.24	76.25,66.34	77.44,66.50	77.35,63.75
path	75.76,64.34	74.96,63.20	73.08,63.26	72.06,62.91
click Sea Stalk##
|tip Track them on your minimap with "Find Herbs".
collect Sea Stalk##152511 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Farming Guides\\Riverbud",{
author="support@zygorguides.com",
description="This guide will walk you through farming Riverbud for various Alchemy recipes.",
startlevel=110.0,
},[[
step
label "loop"
map Tiragarde Sound/0
path	follow smart; loop off; ants curved; dist 20
path	51.69,31.84	51.12,31.38	50.21,30.71	49.57,29.61	49.35,28.68
path	48.77,27.41	48.81,26.17	48.23,23.45	49.07,22.58	50.57,22.86
path	52.15,23.99	53.14,22.64	55.43,22.49	56.43,21.70	58.85,20.89
path	60.12,18.40	61.27,18.03	62.73,18.29	64.03,19.48	64.51,20.95
path	65.38,21.75
click Riverbud
|tip Track them on your minimap with "Find Herbs".
collect Riverbud##152505+ |n
Click here to continue |confirm
step
map Tiragarde Sound/0
path	follow smart; loop off; ants curved; dist 20
path	63.87,19.66	63.23,17.77	62.39,17.21	61.78,16.40	60.28,17.20
path	60.43,18.49	60.10,19.18	59.27,19.94	58.35,21.16	57.25,21.04
path	55.87,22.00	54.73,22.97	53.14,22.66	53.25,24.12	52.35,25.02
path	53.29,26.07	53.54,26.64	54.02,27.35	54.71,28.75	54.96,29.30
path	55.40,30.20	55.60,30.76	54.75,31.73	53.65,32.78	52.72,32.47
click Riverbud
|tip Track them on your minimap with "Find Herbs".
collect Riverbud##152505+ |n
Click here to continue |confirm |next "loop"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Farming Guides\\Star Moss",{
author="support@zygorguides.com",
description="This guide will walk you through farming Star Moss for various Alchemy recipes.",
startlevel=110.0,
},[[
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	50.34,43.91	48.49,43.69	47.64,43.44	47.64,42.48	47.20,42.14
path	46.93,42.62	46.80,43.24	46.41,44.28	45.64,44.84	45.27,45.78
path	45.13,46.85	46.60,47.72	48.10,47.80	49.58,47.00	50.07,45.22
click Star Moss
|tip Track them on your minimap with "Find Herbs".
collect Star Moss##152506 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Farming Guides\\Akunda's Bite",{
author="support@zygorguides.com",
description="This guide will walk you through farming Akunda's Bite for various Alchemy recipes.",
startlevel=110.0,
},[[
step
map Vol'dun/0
path follow smart; loop off; ants curved; dist 20
path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
click Akunda's Bite
|tip Track them on your minimap with "Find Herbs".
collect Akunda's Bite##152507 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Farming Guides\\Winter's Kiss",{
author="support@zygorguides.com",
description="This guide will walk you through farming Winter's Kiss for various Alchemy recipes.",
startlevel=110.0,
},[[
step
map Drustvar/0
path follow smart; loop on; ants curved; dist 20
path	60.97,63.86	61.78,65.57	60.96,67.00	60.65,68.53	58.93,67.74
path	58.69,66.13	58.89,63.16	58.74,62.51	59.45,61.83
click Winter's Kiss
|tip Track them on your minimap with "Find Herbs".
collect Winter's Kiss##152508 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Farming Guides\\Siren's Pollen",{
author="support@zygorguides.com",
description="This guide will walk you through farming Siren's Pollen for various Alchemy recipes.",
startlevel=110.0,
},[[
step
map Zuldazar/0
path follow smart; loop on; ants curved; dist 20
path	53.29,29.09	53.90,28.49	54.76,28.21	55.94,27.53	57.14,26.19
path	58.55,25.49	59.14,24.60	58.52,23.26	58.62,21.68	58.95,21.21
path	59.48,20.31	60.41,20.27	61.04,20.56	61.05,21.94	61.03,24.10
path	61.58,24.56	62.36,24.45	62.99,23.80	63.49,23.68	64.05,23.77
path	64.54,24.42	65.70,25.12	66.63,25.18	67.37,23.75	67.83,23.40
path	68.54,23.34	68.82,21.99
path	68.24,20.37	68.12,19.31	67.49,18.36	66.46,18.11	65.94,17.30
path	65.11,18.00	64.25,18.18	63.40,18.49	62.76,18.29
path	62.50,17.18	62.44,15.74	61.50,16.16	60.83,17.04	60.82,17.52
path	60.50,18.43	59.90,19.26	58.91,18.81	57.67,19.79	56.80,19.71
path	56.11,19.16	55.91,19.37	55.51,19.52	55.33,19.92	54.74,20.13
path	54.36,20.47	54.08,19.83	53.78,19.57	53.53,19.83	52.65,20.71
path	51.19,21.06	51.25,21.74	51.87,22.12	52.53,22.27	52.89,22.81
path	53.57,23.70	54.35,25.18	54.43,26.35
click Siren's Pollen
|tip Track them on your minimap with "Find Herbs".
|tip They grow on trees.
collect Siren's Pollen##152509 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Herbalism\\Farming Guides\\Anchor Weed",{
author="support@zygorguides.com",
description="This guide will walk you through farming Anchor Weed for various Alchemy recipes.",
startlevel=110.0,
},[[
step
map Nazmir/0
path follow smart; loop on; ants curved; dist 20
path	41.31,79.88	42.35,78.69	44.42,78.71	47.60,78.67	48.60,80.32
path	50.17,82.02	51.84,81.36	53.57,76.46	54.89,74.29	55.29,74.00
path	57.19,72.89	58.20,71.35	59.37,69.45	60.23,67.62	61.67,63.67
path	63.04,62.18	64.06,60.53	64.90,59.48	64.39,56.65	63.79,55.18
path	63.28,54.08	63.15,52.14	64.06,51.01	64.03,48.68	64.45,46.84
path	64.42,44.37	61.01,42.16	59.45,39.19	57.75,38.05	55.70,36.87
path	54.24,35.95	54.06,35.01	52.74,34.09	50.38,31.37	49.29,29.24
path	47.90,25.91	46.44,24.92	45.39,28.74	44.84,31.93	44.00,33.91
path	43.70,35.47	43.63,37.42	43.59,39.81	42.54,41.42	41.33,42.08
path	40.15,41.19
click Anchor Weed
|tip Track them on your minimap with "Find Herbs".
collect Anchor Weed##152510 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Inscription\\Leveling Guides\\Kul Tiran Inscription 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Inscription profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Inscription')>=150 end,
condition_suggested=function() return skill('Kul Tiran Inscription')>0 and skill('Kul Tiran Inscription')<150 and level>=110 end,
},[[
step
talk Zooey Inksprocket##130399
Train Kul Tiran Inscription |skillmax Kul Tiran Inscription,150 |goto Boralus/0 73.39,6.32
step
talk Henrick Wyther##142095
buy 500 Distilled Water##158186 |n
collect 500 Distilled Water##158186 |goto 73.22,11.36
step
collect 30 Ultramarine Pigment##153635
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 30 Ultramarine Ink>_
Reach Level 30 Inscription |skill Kul Tiran Inscription,30
step
talk Zooey Inksprocket##130399
Train Scroll of Unlocking |learn Scroll of Unlocking##269065 |goto 73.39,6.32
step
talk Zooey Inksprocket##130399
buy 200 Light Parchment##39354 |n
collect 200 Light Parchment##39354 |goto 73.39,6.32
step
collect 20 Ultramarine Pigment##153635
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 20 Ultramarine Ink>_
collect 50 Ultramarine Ink##158187
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Unlocking>_
Reach Level 50 Inscription |skill Kul Tiran Inscription,50
step
talk Zooey Inksprocket##130399
Train Mass Mill Akunda's Bite |learn Mass Mill Akunda's Bite##256219 |goto 73.39,6.32
step
Open Your Inscription Crafting Panel:
Use _<Mass Mill Akunda's Bite>_
|tip Use it to mill Akunda's Bite herbs you've gathered in Kul Tiras.
|tip You can gather other herbs and use a different Mass Mill ability to level if you want.
|tip You can also purchase them from the Auction House.
Reach Level 75 Inscription |skill Kul Tiran Inscription,75
step
talk Zooey Inksprocket##130399
Train Contract: Order of Embers |learn Contract: Order of Embers##256278 |goto 73.39,6.32
step
talk Zooey Inksprocket##130399
buy Virtuoso Inking Set##39505 |n
collect Virtuoso Inking Set##39505 |goto 73.39,6.32
step
collect 180 Ultramarine Pigment##153635
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 180 Ultramarine Ink>_
collect 180 Ultramarine Ink##158187
step
collect 100 Crimson Pigment##153636
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 100 Crimson Ink>_
collect 100 Crimson Ink##158188
step
Open Your Inscription Crafting Panel:
_<Create 10 Contract: Order of Embers>_
Reach Level 85 Inscription |skill Kul Tiran Inscription,85
step
talk Zooey Inksprocket##130399
Train Darkmoon Card of War (Rank 1) |learn Darkmoon Card of War##278527 |goto 73.39,6.32
step
talk Henrick Wyther##142095
buy 180 Acacia Powder##158205 |n
collect 180 Acacia Powder##158205 |goto 73.22,11.36
step
collect 180 Viridescent Pigment##153669
|tip You get these as a rare drop by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 180 Viridescent Ink>_
collect 180 Viridescent Ink##158189
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 15 Expulsom##152668 |goto 77.13,16.32
step
Open Your Inscription Crafting Panel:
_<Create 15 Darkmoon Card of War>_
Reach Level 100 Inscription |skill Kul Tiran Inscription,100
step
talk Zooey Inksprocket##130399
Train Darkmoon Card of War (Rank 2) |learn Darkmoon Card of War##256245 |goto 73.39,6.32
step
collect 500 Viridescent Pigment##153669
|tip You get these as a rare drop by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 500 Viridescent Ink>_
collect 500 Viridescent Ink##158189
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 50 Expulsom##152668 |goto 77.13,16.32
step
Open Your Inscription Crafting Panel:
_<Create 50 Darkmoon Card of War>_
Reach Level 150 Inscription |skill Kul Tiran Inscription,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Jewelcrafting\\Leveling Guides\\Kul Tiran Jewelcrafting 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Jewelcrafting profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Jewelcrafting')>=150 end,
condition_suggested=function() return skill('Kul Tiran Jewelcrafting')>0 and skill('Kul Tiran Jewelcrafting')<150 and level>=110 end,
},[[
step
talk Samuel D. Colton III##130368
Train Kul Tiran Jewelcrafting |skillmax Kul Tiran Jewelcrafting,150 |goto Boralus/0 75.21,9.87
step
talk Samuel D. Colton III##130368
buy Jeweler's Kit##20815 |n
collect Jeweler's Kit##20815 |goto 75.21,9.87
step
collect 24 Viridium##153704
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 24 Straddling Viridium>_
Reach Level 25 Jewelcrafting |skill Kul Tiran Jewelcrafting,25
step
talk Samuel D. Colton III##130368
Train Rubellite Staff of Intuition |learn Rubellite Staff of Intuition##256254 |goto 75.21,9.87
step
collect 100 Rubellite##153701
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 50 Golden Beryl##153700
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 50 Solstone##153703
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 375 Monelite Ore##152512
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Rubellite Staff of Intuition>_
Reach Level 50 Jewelcrafting |skill Kul Tiran Jewelcrafting,50
step
talk Samuel D. Colton III##130368
Train Royal Quartz Loop |learn Royal Quartz Loop##256513 |goto 75.21,9.87
step
collect 25 Royal Quartz##154125
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 300 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 10 Expulsom##152668 |goto 77.13,16.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Royal Quartz Loop>_
Reach Level 75 Jewelcrafting |skill Kul Tiran Jewelcrafting,75
step
talk Samuel D. Colton III##130368
Train Deadly Amberblaze |learn Deadly Amberblaze##256696 |goto 75.21,9.87
step
collect 30 Amberblaze##154123
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Deadly Amberblaze>_
Reach Level 105 Jewelcrafting |skill Kul Tiran Jewelcrafting,105
step
talk Samuel D. Colton III##130368
Train Honorable Combatant's Staff of Intuition |learn Honorable Combatant's Staff of Intuition##269734 |goto 75.21,9.87
step
collect 200 Scarlet Diamond##154121
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 200 Owlseye##154120
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 200 Amberblaze##154123
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 400 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 200 Platinum Ore##152513
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 60 Expulsom##152668 |goto 77.13,16.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Honorable Combatant's Staff of Intuition>_
Reach Level 125 Jewelcrafting |skill Kul Tiran Jewelcrafting,125
step
talk Samuel D. Colton III##130368
Train Kraken's Eye of Agility |learn Kraken's Eye of Agility##256701 |goto 75.21,9.87
step
collect 25 Kraken's Eye##153706
|tip You get these as an epic drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Kraken's Eye of Agility>_
Reach Level 150 Jewelcrafting |skill Kul Tiran Jewelcrafting,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Leatherworking\\Leveling Guides\\Kul Tiran Leatherworking 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Leatherworking profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Leatherworking')>=150 end,
condition_suggested=function() return skill('Kul Tiran Leatherworking')>0 and skill('Kul Tiran Leatherworking')<150 and level>=110 end,
},[[
step
talk Cassandra Brennor##136063
Train Kul Tiran Leatherworking |skillmax Kul Tiran Leatherworking,150 |goto Boralus/0 75.48,12.61
step
collect 150 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 100 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Coarse Leather Armguards>_
Reach Level 25 Leatherworking |skill Kul Tiran Leatherworking,25
step
talk Cassandra Brennor##136063
Train Coarse Leather Pauldrons |learn Coarse Leather Pauldrons##256754 |goto 75.48,12.61
step
collect 200 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 150 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Coarse Leather Pauldrons>_
Reach Level 50 Leatherworking |skill Kul Tiran Leatherworking,50
step
talk Cassandra Brennor##136063
Train Shimmerscale Diving Helmet |learn Shimmerscale Diving Helmet##256793 |goto 75.48,12.61
step
collect 125 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 250 Shimmerscale##153050
|tip Use the "Shimmerscale" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Shimmerscale Diving Helmet>_
Reach Level 75 Leatherworking |skill Kul Tiran Leatherworking,75
step
talk Cassandra Brennor##136063
Train Drums of the Maelstrom |learn Drums of the Maelstrom##256791 |goto 75.48,12.61
step
collect 250 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 100 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Drums of the Maelstrom>_
Reach Level 85 Leatherworking |skill Kul Tiran Leatherworking,85
step
talk Cassandra Brennor##136063
Train Honorable Combatant's Mail Armguards |learn Honorable Combatant's Mail Armguards##269543 |goto 75.48,12.61
step
collect 300 Mistscale##153051
|tip Use the "Mistscale" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 180 Calcified Bone##154165
|tip Use the "Calcified Bone" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 30 Expulsom##152668 |goto 77.13,16.32
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Honorable Combatant's Mail Armguards>_
Reach Level 100 Leatherworking |skill Kul Tiran Leatherworking,100
step
talk Cassandra Brennor##136063
Train Hardened Tempest Knuckles (Rank 1) |learn Hardened Tempest Knuckles##256782 |goto 75.48,12.61
step
talk Cassandra Brennor##136063
Train Hardened Tempest Knuckles (Rank 2) |learn Hardened Tempest Knuckles##256783 |goto 75.48,12.61
step
collect 390 Tempest Hide##154722
|tip Use the "Tempest Hide" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 270 Calcified Bone##154165
|tip Use the "Calcified Bone" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 45 Expulsom##152668 |goto 77.13,16.32
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Hardened Tempest Knuckles>_
Reach Level 115 Leatherworking |skill Kul Tiran Leatherworking,115
step
talk Cassandra Brennor##136063
Train Hardened Tempest Boots |learn Hardened Tempest Boots##256765 |goto 75.48,12.61
stickystart "Collect_Expulsom"
stickystart "Collect_Hydrocore"
step
collect 630 Hardened Tempest Hide##152542
|tip Use the "Hardened Tempest Hide" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 1400 Calcified Bone##154165
|tip Use the "Calcified Bone" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
label "Collect_Expulsom"
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 110+ gear from the Auction House to use if you don't have any.
collect 1050 Expulsom##152668 |goto 77.13,16.32
step
label "Collect_Hydrocore"
collect 525 Hydrocore##162460
|tip These are dropped by the last boss of Mythic dungeons.
step
Open Your Leatherworking Crafting Panel:
_<Create 35 Hardened Tempest Boots>_
Reach Level 150 Leatherworking |skill Kul Tiran Leatherworking,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Mining\\Quest Guides\\Kul Tiran Mining Quest Line",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Legion Mining quest line.",
startlevel=110.0,
condition_end=function() return completedq(39830) end,
condition_suggested=function() return skill('Mining')>0 and level>=110 and not completedq(39830) end,
},[[
step
Follow the path |goto Boralus/0 68.14,15.61 < 10 |only if walking
Continue following the path |goto 70.70,16.57 < 10 |only if walking
Enter the building |goto 73.52,13.77 < 3 |walk
talk Wesley Rockhold##135153
home Snug Harbor Inn |goto Tiragarde Sound/0 75.28,22.84
step
Leave the building |goto 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
Train Kul Tiran Mining |skillmax Kul Tiran Mining,150 |goto Boralus/0 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Monelite Deposit Mining Technique |learn Monelite Deposit##253333 |goto 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Storm Silver Deposit Mining Technique |learn Storm Silver Deposit##253336 |goto 75.23,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48752 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 25 Kul Tiran Mining |skill Kul Tiran Mining,25
step
Follow the path |goto Boralus/0 68.14,15.66 < 7 |only if walking
Continue following the path |goto 70.91,16.43 < 10 |only if walking
Continue following the path |goto 71.32,14.78 < 7 |only if walking
Continue following the path |goto 70.69,12.51 < 7 |only if walking
Continue following the path |goto 74.63,10.12 < 7 |only if walking
talk Myra Cabot##136091
Learn the Rank 1 Monelite Seam Mining Tichnique |learn Monelite Seam##253342 |goto 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Platinum Deposit Mining Technique |learn Platinum Deposit##253339 |goto 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Storm Silver Seam Mining Technique |learn Storm Silver Seam##253345 |goto 75.23,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48752 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 50 Kul Tiran Mining |skill Kul Tiran Mining,50
step
Leave the building |goto 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
accept A Need For Coal##48752 |goto 75.22,7.55
accept Ritualistic Preparations##51568 |goto 75.22,7.55
step
Follow the path |goto 74.64,10.77 < 10 |only if walking
Continue following the path |goto 71.95,11.09 < 10 |only if walking
Continue following the path |goto 70.70,13.26 < 10 |only if walking
Continue following the path |goto 71.57,15.39 < 10 |only if walking
Continue following the path |goto 70.19,16.59 < 10 |only if walking
Fly to Bridgeport |goto Tiragarde Sound/0 75.79,48.58 < 200 |q 48752 |c |noway
step
Follow the path |goto 75.90,49.05 < 10 |only if walking
Continue following the path |goto 76.66,48.97 < 10 |only if walking
Follow the path up |goto 77.36,49.50 < 10 |only if walking
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 1 Ashvane Coal##160902 |q 48752/1 |goto 78.17,48.97
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 2 Ashvane Coal##160902 |q 48752/1 |goto 79.03,48.20
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 3 Ashvane Coal##160902 |q 48752/1 |goto 79.21,47.29
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 4 Ashvane Coal##160902 |q 48752/1 |goto 79.74,47.42
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 5 Ashvane Coal##160902 |q 48752/1 |goto 80.09,47.07
step
Follow the path up |goto 79.75,46.57 < 10 |only if walking
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 6 Ashvane Coal##160902 |q 48752/1 |goto 79.82,45.91
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 7 Ashvane Coal##160902 |q 48752/1 |goto 80.67,46.71
step
Follow the path |goto 80.57,47.46 < 10 |only if walking
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 8 Ashvane Coal##160902 |q 48752/1 |goto 80.15,48.78
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 9 Ashvane Coal##160902 |q 48752/1 |goto 79.57,49.14
step
Follow the path down |goto 78.89,48.45 < 10 |only if walking
Continue following the path |goto 77.99,48.26 < 10 |only if walking
Continue down the path |goto 77.30,49.47 < 10 |only if walking
Continue down the path |goto 76.59,48.93 < 10 |only if walking
Continue following the path |goto 75.90,49.06 < |only if walking
talk Jeb Johnson##134226
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 51568 |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
|tip These share a spawn with Monelite and Platinum Ore Deposits, so be sure to mine them as well.
collect 20 Unsanctified Storm Silver Ore##160440 |q 51568
step
Leave the building |goto Tiragarde Sound/0 75.13,23.09 < 10 |only if walking
Follow the road |goto Boralus/0 73.39,14.78 < 10 |only if walking
Continue following the road |goto 71.29,14.63 < 10 |only if walking
Run down the stairs |goto 72.95,9.02 < 5 |only if walking
use the Unsanctified Storm Silver Ore##160440
Use Forge to smelt Unsanctified Storm Silver Ore into Ingots |q 51568/1 |goto 73.64,8.40
step
Follow the path up |goto 73.35,9.09 < 5 |only if walking
Follow the path |goto 72.60,9.13 < 7 |only if walking
Continue following the path |goto 70.78,13.11 < 10 |only if walking
Continue following the path |goto 71.37,15.28 < 10 |only if walking
Continue following the path |goto 69.80,16.47 < 10 |only if walking
Fly to the Roughneck Camp |goto Tiragarde Sound/0 42.48,23.02 < 200 |q 51568 |c |noway
step
Follow the path down |goto 43.18,22.57 < 10 |only if walking
Continue down the path |goto 43.37,23.29 < 10 |only if walking
Continue down the path |goto 43.83,24.97 < 10 |only if walking
Continue down the path |goto 44.02,25.93 < 10 |only if walking
Jump down carefully here |goto 44.19,26.29 < 10 |only if walking
Continue following the path |goto 43.25,27.90 < 10 |only if walking
Continue following the path |goto 42.67,29.43 < 7 |only if walking
talk Diligent Tidesage##126667
Ask him _"Could you bless these storm silver ingots?"_
Bless the Storm Silver Ingots |q 51568/2 |goto 41.86,30.04
step
Follow the path |goto 42.72,29.34 < 10 |only if walking
Continue up the path |goto 43.74,27.31 < 10 |only if walking
Continue up the path |goto 44.58,28.17 < 10 |only if walking
Continue up the path |goto 45.94,28.19 < 10 |only if walking
Continue up the path |goto 45.91,26.40 10 |only if walking
Continue up the path |goto 44.49,25.37 < 10 |only if walking
Continue up the path |goto 43.57,23.65 < 10 |only if walking
Continue up the path |goto 43.05,22.37 < 10 |only if walking
talk Dagin##129163
Fly to Boralus Harbor |goto Boralus/0 67.10,15.08 < 200 |q 51568 |c |noway
step
Follow the path |goto 68.11,15.61 < 10 |only if walking
Continue following the path |goto 70.61,16.51 < 10 |only if walking
Continue following the path |goto 71.42,14.87 < 10 |only if walking
Continue following the path |goto 74.61,10.20 < 10 |only if walking
talk Myra Cabot##136091
turnin A Need For Coal##48752 |goto 75.22,7.56
turnin Ritualistic Preparations##51568 |goto 75.22,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48764 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 100 Kul Tiran Mining |skill Kul Tiran Mining,100
step
Leave the building |goto Boralus/0 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
accept Don't Pick a Fight##48764  |goto 75.23,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48764 |c |noway
step
Follow the road up |goto 31.34,68.03 < 10 |only if walking
Continue following the road |goto 32.06,68.47 < 10 |only if walking
Continue following the road |goto 33.41,69.87 < 10 |only if walking
Continue following the road |goto 34.26,70.30 < 10 |only if walking
Continue following the road |goto 35.07,70.40 < 10 |only if walking
Continue following the path |goto 36.08,71.36 < 10 |only if walking
click Myra's Favorite Pick##291260
|tip It looks like a pick axe laying against a cart.
collect Myra's Favorite Pick##160904 |q 48764/1 |goto 36.67,72.00
step
Follow the path |goto 36.08,71.36 < 10 |only if walking
Follow the road down |goto 35.07,70.40 < 10 |only if walking
Continue following the road |goto 34.26,70.30 < 10 |only if walking
Continue following the road |goto 33.41,69.87 < 10 |only if walking
Continue following the road |goto 32.06,68.47 < 10 |only if walking
Continue following the road |goto 31.34,68.03 < 10 |only if walking
talk Alexa Davenport##138180 |goto 30.75,66.57
Fly to Tradewinds Market, Tirigarde Sound |goto Boralus/0 67.10,15.08 |q 48764 |c
step
Follow the road |goto 68.14,15.64 < 7 |only if walking
Continue following the road |goto 70.81,16.40 < 10 |only if walking
Continue following the road |goto 71.35,14.77 < 10 |only if walking
Continue following the road |goto 70.93,12.39 < 10 |only if walking
Continue following the road |goto 74.60,10.14 < 7 |only if walking
talk Myra Cabot##136091
turnin Don't Pick a Fight##48764 |goto 75.22,7.55
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48768 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 135 Kul Tiran Mining |skill Kul Tiran Mining,135
step
Leave the building |goto Boralus/0 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
accept Three Sheets to the Wind##48770 |goto 75.23,7.54
step
Follow the road |goto 74.96,10.72 < 10 |only if walking
Continue following the road |goto 76.84,14.16 < 10 |only if walking
Continue following the road |goto 74.95,15.85 < 10 |only if walking
Enter the building |goto 74.87,14.41 < 3 |walk
talk Harold Atkey##123639
buy Brennadam Apple Brandy##159845 |q 48770 |goto 75.39,14.47
step
Leave the building |goto 74.86,14.40 < 3 |walk
Run down the stairs |goto 74.98,17.37 < 5 |only if walking
Continue down the stairs |goto 74.50,17.83 < 5 |only if walking
Jump down here |goto 74.53,21.68 < 5 |only if walking
Follow the path |goto 74.20,23.43 < 7 |only if walking
talk Franklin The Drunk##139375
Choose _"Offer Brennadam Apple Brandy"
Give Franklin The Drunk his favorite drink |q 48770/1 |goto 75.82,23.69
step
talk Franklin The Drunk##139375
turnin Three Sheets to the Wind##48770 |goto 75.82,23.69
step
Follow the path |goto 74.20,23.23 < 7 |only if walking
Run up the stairs |goto 73.74,21.68 < 5 |only if walking
Continue following the path |goto 73.75,23.02 < 5 |only if walking
Continue up the stairs |goto 74.92,23.03 < 5 |only if walking
Continue following the path |goto 75.84,22.96 < 5 |only if walking
Continue following the road |goto 75.77,20.37 < 10 |only if walking
Continue following the road |goto 73.76,18.44 < 10 |only if walking
Continue up the stairs |goto 71.43,17.86 < 5 |only if walking
Continue up the stairs |goto 71.70,16.81 < 5 |only if walking
Continue following the path |goto 70.99,16.17 < 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 51889 |future |c
stickystart "Accept_Seams_Familiar"
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
click Monelite Seam##276619
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 150 Kul Tiran Mining |skill Kul Tiran Mining,150
step
label "Accept_Seams_Familiar"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Monelite Seam##276619
|tip Track them on your minimap with "Find Minerals".
|tip These are only found in caves.
|tip They are sparse throughout the area.
accept Seams Familiar##48767
|tip You will eventually automatically accept this quest after mining Monelite Seams.
step
Leave the building |goto Boralus/0 73.52,13.73 < 3 |walk
Follow the path |goto 73.40,14.87 < 5 |only if walking
Follow the road |goto 75.69,15.52 < 7 |only if walking
Continue following the road |goto 76.66,13.93 < 7 |only if walking
Continue following the road |goto 74.81,10.07 < 7 |only if walking
talk Myra Cabot##136091
turnin Seams Familiar##48767 |goto 75.23,7.55
accept Spiderphobia##48761 |goto 75.23,7.55
accept Brined Justice##48768 |goto 75.23,7.55
stickystart "Kill_Enthralled_Mossfang"
step
Follow the path |goto 72.48,7.20 < 7 |only if walking
Continue following the path |goto 71.98,4.43 < 7 |only if walking
Continue up the path |goto 73.27,1.64 < 7 |only if walking
Continue up the path |goto Tiragarde Sound/0 74.64,19.08 < 7 |only if walking
Continue down the path |goto 74.25,17.80 < 7 |only if walking
Jump down here |goto 73.40,17.14 < 7 |only if walking
kill 15 Mossfang Egg##129842 |q 48761/2 |goto 71.94,17.40
step
label "Kill_Enthralled_Mossfang"
kill 8 Enthralled Mossfang##129626 |q 48761/1 |goto 71.71,17.56
step
Follow the path up |goto 71.28,18.90 < 10 |only if walking
Continue up the path |goto 71.81,19.52 < 7 |only if walking
Continue up the path |goto 72.59,19.35 < 7 |only if walking
Continue up the path |goto 72.81,19.74 < 7 |only if walking
Jump down here |goto 73.96,20.90 < 7 |only if walking
Follow the road |goto Boralus/0 70.55,6.00 < 7 |only if walking
Continue following the road |goto 71.57,6.45 < 7 |only if walking
Continue following the road |goto 72.86,7.31 < 7 |only if walking
talk Myra Cabot##136091
turnin Spiderphobia##48761 |goto 75.23,7.56
step
Follow the path |goto 74.49,10.61 < 7 |only if walking
Continue following the road |goto 71.61,11.23 < 10 |only if walking
Continue following the road |goto 70.69,13.29 < 10 |only if walking
Continue following the road |goto 71.48,15.37 < 7 |only if walking
Continue following the road |goto 69.98,16.47 < 7 |only if walking
talk Joan Weber##124725 |goto 66.96,15.01
Fly to Freehold, Tiragarde Sound |goto Tiragarde Sound/0 77.08,82.91 < 200 |q 48768 |c
step
Jump down here |goto 76.91,83.56 < 5 |only if walking
kill Ookin Crewman##129140
Kill enemies around this area
collect Stolen Storm Silver Bar##160453 |q 48768/1 |goto 76.61,83.26
You can find more around [75.42,83.13]
step
Run up the stairs |goto 76.79,83.61 < 5 |only if walking
Enter the building |goto 77.00,83.56 < 3 |walk
Run up the stairs |goto 77.07,83.41 < 3 |walk
Run up the stairs |goto 77.06,83.24 < 3 |walk
Leave the building |goto 76.94,83.25 < 3 |walk
Continue following the path |goto 76.86,83.35 < 5 |only if walking
Continue up the stairs |goto 76.94,83.51 < 3 |only if walking
Continue up the stairs |goto 77.09,83.48 < 3 |only if walking
talk Rodrigo##129098 |goto 77.04,82.90
Fly to Tradewinds Market, Tirigarde Sound |goto Boralus/0 67.10,15.08 |q 48768 |c
step
Follow the road |goto Boralus/0 68.08,15.57 < 7 |only if walking
Continue following the road |goto 70.91,16.35 < 7 |only if walking
Continue following the road |goto 71.36,14.67 < 7 |only if walking
Continue following the road |goto 70.87,12.47 < 7 |only if walking
Continue following the road |goto 74.69,9.99 < 7 |only if walking
talk Myra Cabot##136091
turnin Brined Justice##48768 |goto 75.23,7.55
step
Follow the road |goto 74.96,10.72 < 10 |only if walking
Continue following the road |goto 76.84,14.16 < 10 |only if walking
Continue following the road |goto 74.95,15.85 < 10 |only if walking
Run down the stairs |goto 74.98,17.37 < 5 |only if walking
Continue down the stairs |goto 74.50,17.83 < 5 |only if walking
Jump down here |goto 74.53,21.68 < 5 |only if walking
Follow the path |goto 74.20,23.43 < 7 |only if walking
talk Franklin The Drunk##139375
accept The Wrath of Grapes##51889 |goto 75.83,23.66
step
Follow the path |goto 74.21,23.22 < 7 |only if walking
Continue following the path |goto 74.12,21.43 < 3
Run up the stairs |goto 73.74,21.65 < 3 |only if walking
Continue following the path |goto 73.76,22.99 < 5 |only if walking
Run up the stairs |goto 74.91,22.97 < 5 |only if walking
Continue following the path |goto 75.83,22.95 < 7 |only if walking
Continue following the path |goto 75.72,20.97 < 7 |only if walking
Run up the stairs |goto 74.56,18.62 < 3 |only if walking
Continue up the stairs |goto 74.61,17.56 < 3 |only if walking
Continue following the path |goto 75.25,17.30 < 7 |only if walking
Enter the building |goto 73.52,13.74 < 5 |only if walking
click Jar of Pickle Juice
collect Jar of Pickle Juice##160995 |q 51889/1 |goto 74.03,12.80
step
Leave the building |goto 73.51,13.75 < 3 |only if walking
Follow the path |goto 73.37,14.51 < 7 |only if walking
Continue following the path |goto 71.24,14.52 < 7 |only if walking
click Hillock of Eggs
collect Hillock of Eggs##160998 |q 51889/4 |goto 69.38,13.03
step
click Mountain of Bacon
collect Mountain of Bacon##160996 |q 51889/2 |goto 70.49,9.70
step
click Pile of Sausages
collect Pile of Sausages##160997 |q 51889/3 |goto 72.54,11.66
step
Follow the road |goto 72.97,10.81 < 7 |only if walking
Continue following the road |goto 75.78,11.71 < 7 |only if walking
Continue following the road |goto 76.37,13.97 < 7 |only if walking
Run down the stairs |goto 75.00,17.40 < 3 |only if walking
Continue down the stairs |goto 74.54,17.80 < 3 |only if walking
Follow the path |goto 75.78,22.11 < 5 |only if walking
Run down the stairs |goto 75.65,22.96 < 3 |only if walking
Jump down here |goto 74.16,23.94 < 5 |only if walking
Follow the path |goto 74.28,23.34 < 7 |only if walking
talk Franklin The Drunk##139375
turnin The Wrath of Grapes##51889 |goto 75.82,23.68
step
Follow the path |goto 74.22,22.92 < 5 |only if walking
Run up the stairs |goto 73.78,21.52 < 3 |only if walking
Continue following the path |goto 73.78,22.93 < 5 |only if walking
Run up the stairs |goto 74.94,22.99 < 3 |only if walking
Continue following the path |goto 75.81,22.94 < 5 |only if walking
Follow the road |goto 74.52,18.97 < 5 |only if walking
Run up the stairs |goto 71.44,17.82 < 3 |only if walking
Continue up the stairs |goto 71.64,16.77 < 3 |only if walking
Follow the road |goto 71.06,16.24 < 5 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 52049 |future |c
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
click Rich Platinum Deposit##276623
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip Platinum Deposits are rare and share a spawn with other ore around this path.
accept An Exceptional Platinum Shard##52044
|tip You will eventually automatically accept this quest after mining from Platinum Deposits.
step
Leave the building |goto Boralus/0 73.52,13.71 < 3 |only if walking
Follow the road |goto 73.52,14.88 < 7 |only if walking
Continue following the road |goto 75.62,15.45 < 7 |only if walking
Continue following the road |goto 76.45,13.21 < 7 |only if walking
Continue following the road |goto 74.86,10.33 < 7 |only if walking
talk Myra Cabot##136091
turnin An Exceptional Platinum Shard##52044 |goto 75.22,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 52050 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
click Rich Platinum Deposit##276623
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip Platinum Deposits are rare and share a spawn with other ore around this path.
collect Tattered Map##161085
accept X Marks the Plat!##52049
|tip You will eventually automatically accept this quest after mining from Platinum Deposits.
step
Leave the building |goto Boralus/0 73.52,13.68 < 3 |only if walking
Follow the road |goto 73.39,14.39 < 7 |only if walking
Continue following the road |goto 70.00,16.50 < 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Anyport, Drustvar |goto Drustvar/0 19.82,44.57 < 500 |q 52049 |future |c |noway
step
talk First Mate Cinderfuse##139746
turnin X Marks the Plat!##52049 |goto Drustvar/0 19.82,44.57
accept A More Challenging Career##52050
step
Run up the stairs |goto Drustvar/0 19.82,43.78 < 3 |only if walking
Continue up the stairs |goto 19.50,43.93 < 3 |only if walking
Follow the path |goto 19.37,43.95 < 5 |only if walking
Run up the stairs |goto 19.26,43.34 < 3 |only if walking
Continue up the stairs |goto 19.06,43.64 < 3 |only if walking
Continue following the path |goto 19.24,43.64 5 |only if walking
Continue up the stairs |goto 19.25,43.46 < 5 |only if walking
talk Tan Lotuswind##135988 |goto Drustvar/0 19.14,43.31
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 52050 |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
click Rich Platinum Deposit##276623
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip Platinum Deposits are rare and share a spawn with other ore around this path.
collect 20 Platinum Nuggets##161082 |q 52050/1
step
Leave the building |goto Boralus/0 73.52,13.68 < 3 |only if walking
Follow the road |goto 73.39,14.39 < 7 |only if walking
Continue following the road |goto 70.00,16.50 < 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Anyport, Drustvar |goto Drustvar/0 19.82,44.57 < 500 |q 52050 |future |c |noway
step
talk First Mate Cinderfuse##139746
turnin A More Challenging Career##52050
step
_Congratulations!_
You completed the Kul Tiran Mining questline.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Mining\\Farming Guides\\Monelite",{
author="support@zygorguides.com",
description="This guide will walk you through farming Monelite for various Blacksmithing recipes.",
startlevel=110.0,
},[[
step
label "loop"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Monelite Seam##276619
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Monelite Ore##152512 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Mining\\Farming Guides\\Storm Silver",{
author="support@zygorguides.com",
description="This guide will walk you through farming Storm Silver for various Blacksmithing recipes.",
startlevel=110.0,
},[[
step
label "loop"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Storm Silver Ore##152579 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Mining\\Farming Guides\\Platinum",{
author="support@zygorguides.com",
description="This guide will walk you through farming Platinum for various Blacksmithing recipes.",
startlevel=110.0,
},[[
step
label "loop"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are rare spawn nodes, so you likely won't find them in bulk.
collect Platinum Ore##152513 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Leveling Guides\\Kul Tiran Skinning 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Skinning profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Skinning')>=150 end,
condition_suggested=function() return skill('Kul Tiran Skinning')>0 and skill('Kul Tiran Skinning')<150 and level>=110 end,
},[[
step
talk Camilla Darksky##136061
Train Kul Tiran Skinning |skillmax Kul Tiran Skinning,150 |goto Boralus/0 75.66,13.39
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.67,22.53	64.64,20.71	64.18,19.49	63.18,17.74	61.91,17.00
path	61.42,15.95	60.55,17.04	59.21,16.74	58.88,17.93	59.12,19.16
path	58.57,20.86	56.91,21.29	55.34,22.45	53.29,22.73	53.42,25.84
path	53.90,27.15	55.39,29.32	56.01,30.94	56.90,30.44	57.33,31.38
path	58.26,32.14	59.32,31.97	60.26,30.95	61.08,30.67	61.86,29.97
path	63.35,29.04	65.23,26.54	64.99,25.68	65.27,25.09	65.08,24.23
Kill enemies as you follow the path around this area
|tip Only Freshwater Snappers, Hillborn Saurolisks, Cragbound Foxes and Venomous Coilscales are skinnable.
|tip Loot and skin them.
Reach Level 150 Skinning |skill Kul Tiran Skinning,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Quest Guides\\Kul Tiran Skinning Quest Guide",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Kul Tiran Skinning quest line.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Skinning')>=150 end,
condition_suggested=function() return skill('Kul Tiran Skinning')>0 and skill('Kul Tiran Skinning')<150 and level>=110 end,
},[[
step
talk Camilla Darksky##136061
Train Kul Tiran Skinning |skillmax Kul Tiran Skinning,150 |goto Boralus/0 75.66,13.39
step
talk Camilla Darksky##136061
Train Bone Gathering |learn Bone Gathering##257152 |goto 75.66,13.39
step
talk Camilla Darksky##136061
Train Leather Gathering |learn Leather Gathering##257146 |goto 75.66,13.39
step
talk Camilla Darksky##136061
Train Scale Gathering |learn Scale Gathering##257149 |goto 75.66,13.39
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.67,22.53	64.64,20.71	64.18,19.49	63.18,17.74	61.91,17.00
path	61.42,15.95	60.55,17.04	59.21,16.74	58.88,17.93	59.12,19.16
path	58.57,20.86	56.91,21.29	55.34,22.45	53.29,22.73	53.42,25.84
path	53.90,27.15	55.39,29.32	56.01,30.94	56.90,30.44	57.33,31.38
path	58.26,32.14	59.32,31.97	60.26,30.95	61.08,30.67	61.86,29.97
path	63.35,29.04	65.23,26.54	64.99,25.68	65.27,25.09	65.08,24.23
Kill enemies as you follow the path around this area
|tip Only Freshwater Snappers, Hillborn Saurolisks, Cragbound Foxes and Venomous Coilscales are skinnable.
|tip Loot and skin them.
Reach Level 50 Skinning |skill Kul Tiran Skinning,50
step
talk Camilla Darksky##136061
accept Brinepinch##52223 |goto Boralus/0 75.66,13.39
accept In Pursuit of Fashion##52225 |goto 75.66,13.39
accept Bone Needle##52227 |goto 75.66,13.39
step
Follow the path |goto 76.45,14.57 < 10 |only if walking
Continue following the path |goto 75.24,16.07 < 10 |only if walking
Continue following the path |goto 73.98,14.67 < 10 |only if walking
Continue following the path |goto 72.38,14.54 < 10 |only if walking
Continue following the path |goto 70.42,16.95 < 10 |only if walking
Continue following the path |goto Tiragarde Sound/0 53.23,29.28 < 10 |only if walking
Continue following the path |goto 53.73,29.13 < 10 |only if walking
Jump down here |goto 54.06,28.80 < 10 |only if walking
Cross the water |goto 55.45,29.31 < 10 |only if walking
Follow the path up |goto 56.19,29.63 < 10 |only if walking
Jump down here |goto 56.58,30.24 < 7 |only if walking
Follow the path down |goto 57.23,31.16 < 10 |only if walking
Continue following the path |goto 56.77,32.26 < 10 |only if walking
kill Brinepinch##140612
collect Brinepinch's "Head"##161423 |q 52223/1 |goto 56.35,34.58
stickystart "Collect_Pristine_Saurlisk_Skins"
step
Follow the path |goto 56.76,32.30 < 10 |only if walking
Continue following the path |goto 57.31,31.40 < 10 |only if walking
Follow the path up |goto 56.88,30.49 < 10 |only if walking
Continue following the path |goto 56.87,29.55 < 10 |only if walking
Continue following the path |goto 57.22,28.10 < 10 |only if walking
Continue following the path |goto 56.73,26.78 < 10 |only if walking
Continue following the path |goto 56.09,26.03 < 10 |only if walking
Cross the bridge |goto 55.19,25.72 < 10 |only if walking
Cross the bridge |goto 54.30,26.28 < 10 |only if walking
Continue following the path |goto 52.69,27.15 < 10 |only if walking
Continue following the path |goto 51.86,27.97 < 10 |only if walking
Continue following the path |goto 51.14,28.97 < 10 |only if walking
Continue following the path |goto 51.50,29.51 < 10 |only if walking
Continue following the path |goto 52.50,28.61 < 10 |only if walking
Continue following the path |goto Drustvar/0 69.96,41.37 < 10 |only if walking
kill Invasive Quillrat##125401+
collect Immaculate Quill##161427 |q 52227/1 |goto 67.79,41.58
step
label "Collect_Pristine_Saurlisk_Skins"
kill Shallows Saurolisk##125452+
collect 3 Pristine Saurlisk Skin##161425 |q 52225/1 |goto 69.42,39.93
step
talk Camilla Darksky##136061
turnin Brinepinch##52223 |goto Boralus/0 75.66,13.39
turnin In Pursuit of Fashion##52225 |goto 75.66,13.39
turnin Bone Needle##52227 |goto 75.66,13.39
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.67,22.53	64.64,20.71	64.18,19.49	63.18,17.74	61.91,17.00
path	61.42,15.95	60.55,17.04	59.21,16.74	58.88,17.93	59.12,19.16
path	58.57,20.86	56.91,21.29	55.34,22.45	53.29,22.73	53.42,25.84
path	53.90,27.15	55.39,29.32	56.01,30.94	56.90,30.44	57.33,31.38
path	58.26,32.14	59.32,31.97	60.26,30.95	61.08,30.67	61.86,29.97
path	63.35,29.04	65.23,26.54	64.99,25.68	65.27,25.09	65.08,24.23
Kill enemies as you follow the path around this area
|tip Only Freshwater Snappers, Hillborn Saurolisks, Cragbound Foxes and Venomous Coilscales are skinnable.
|tip Loot and skin them.
Reach Level 150 Skinning |skill Kul Tiran Skinning,150
step
talk Camilla Darksky##136061
accept Turtle Soup##52226 |goto Boralus/0 75.66,13.39
accept An Unbreakable Bone Needle##52228 |goto 75.66,13.39
step
Follow the path |goto 76.45,14.57 < 10 |only if walking
Continue following the path |goto 75.24,16.07 < 10 |only if walking
Continue following the path |goto 73.98,14.67 < 10 |only if walking
Continue following the path |goto 72.38,14.54 < 10 |only if walking
Continue following the path |goto 70.42,16.95 < 10 |only if walking
Continue following the path |goto Tiragarde Sound/0 76.03,49.22 < 10 |only if walking
Follow the path up |goto 76.72,48.97 < 10 |only if walking
Continue up the path |goto 77.32,49.51 < 10 |only if walking
Cross the bridge |goto 76.30,50.16 < 10 |only if walking
Continue following the path |goto 73.33,48.76 < 10 |only if walking
Follow the path up |goto 72.27,48.24 < 10 |only if walking
Continue up the path |goto 70.74,48.31 < 10 |only if walking
Continue following the path |goto 70.00,49.17 < 10 |only if walking
Follow the path down |goto 69.19,51.85 < 10 |only if walking
Continue following the path |goto 69.31,53.62 < 10 |only if walking
Continue following the path |goto 68.70,55.26 < 10 |only if walking
Continue following the path |goto 67.55,55.34 < 10 |only if walking
kill Enriched Rockshell##130776+
collect 5 Sulphur Speckled Turtle Skin##161426 |q 52226/1 |goto 66.82,56.37
step
kill Invasive Quillrat##125401+
|tip Loot and skin them.
|tip This item can be looted after skinning any creature in Zandalar or Kul Tiras.
accept Ivory Handled Dagger##52224 |goto Drustvar/0 67.76,41.56
|tip You will eventually automatically accept this quest after looting.
step
Press _I_ and Queue for Atal'Dazar or Enter the Dungeon with your Group |goto Atal'Dazar/0 0.00,0.00 < 1000 |q 52228
step
kill Rezan##143577
|tip It is the third boss of the Atal'Dazar dungeon.
collect Rezan's Bone Splinter##161429 |q 52228/1
step
kill Yazma##122968
|tip She is the last boss of the Atal'Dazar dungeon.
Slay Yazma |q 52228/2
step
talk Camilla Darksky##136061
turnin Ivory Handled Dagger##52224 |goto Boralus/0 75.66,13.39
turnin Turtle Soup##52226 |goto 75.66,13.39
turnin An Unbreakable Bone Needle##52228 |goto 75.66,13.39
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Farming Guides\\Shimmerscale",{
author="support@zygorguides.com",
description="This guide will walk you through farming Shimmerscale for various Leatherworking recipes.",
startlevel=110.0,
},[[
step
map Nazmir/0
path follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Shimmerscale##153050 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Farming Guides\\Mistscale",{
author="support@zygorguides.com",
description="This guide will walk you through farming Mistscale for various Leatherworking recipes.",
startlevel=110.0,
},[[
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Mistscale##153051 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Farming Guides\\Calcified Bone",{
author="support@zygorguides.com",
description="This guide will walk you through farming Calcified Bone for various Leatherworking recipes.",
startlevel=110.0,
},[[
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Calcified Bone##154165 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Farming Guides\\Blood-Stained Bone",{
author="support@zygorguides.com",
description="This guide will walk you through farming Blood-Stained Bone for various Leatherworking recipes.",
startlevel=110.0,
},[[
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Blood-Stained Bone##154164 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Farming Guides\\Coarse Leather",{
author="support@zygorguides.com",
description="This guide will walk you through farming Coarse Leather for various Leatherworking recipes.",
startlevel=110.0,
},[[
step
map Stormsong Valley/0
path	follow smart; loop on; ants curved; dist 20
path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
Kill Coldtooth enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Coarse Leather##152541 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Skinning\\Farming Guides\\Tempest Hide",{
author="support@zygorguides.com",
description="This guide will walk you through farming Tempest Hide for various Leatherworking recipes.",
startlevel=110.0,
},[[
step
map Stormsong Valley/0
path	follow smart; loop on; ants curved; dist 20
path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
Kill Coldtooth enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Tempest Hide##154722  |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Tailoring\\Leveling Guides\\Kul Tiran Tailoring 1-150 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Kul Tiran Tailoring profession from 1-150.",
startlevel=110.0,
condition_end=function() return skill('Kul Tiran Tailoring')>=150 end,
condition_suggested=function() return skill('Kul Tiran Tailoring')>0 and skill('Kul Tiran Tailoring')<150 and level>=110 end,
},[[
step
talk Daniel Brineweaver##136071
Train Kul Tiran Tailoring |skillmax Kul Tiran Tailoring,150 |goto Boralus/0 76.93,11.16
step
talk Henrick Wyther##142095
buy 1400 Nylon Thread##159959 |n
collect 1400 Nylon Thread##159959 |goto 73.22,11.36
step
collect 250 Tidespray Linen##152576
|tip Use the "Tidespray Linen" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Tailoring Crafting Panel:
_<Create 25 Tidespray Linen Bracers>_
Reach Level 25 Tailoring |skill Kul Tiran Tailoring,25
step
talk Daniel Brineweaver##136071
Train Tidespray Linen Cloak |learn Tidespray Linen Cloak##257107 |goto 76.93,11.16
step
collect 325 Tidespray Linen##152576
|tip Use the "Tidespray Linen" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Tailoring Crafting Panel:
_<Create 25 Tidespray Linen Cloak>_
Reach Level 50 Tailoring |skill Kul Tiran Tailoring,50
step
talk Daniel Brineweaver##136071
Train Deep Sea Bandage |learn Deep Sea Bandage##267202 |goto 76.93,11.16
step
collect 50 Deep Sea Satin##152577
|tip Use the "Deep Sea Satin" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Tailoring Crafting Panel:
_<Create 25 Deep Sea Bandage>_
Reach Level 75 Tailoring |skill Kul Tiran Tailoring,75
step
talk Daniel Brineweaver##136071
Train Embroidered Deep Sea Satin |learn Embroidered Deep Sea Satin##272440 |goto 76.93,11.16
step
collect 25 Deep Sea Satin##152577
|tip Use the "Deep Sea Satin" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
collect 25 Tidespray Linen##152576
|tip Use the "Tidespray Linen" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Tailoring Crafting Panel:
_<Create 25 Embroidered Deep Sea Satin>_
Reach Level 100 Tailoring |skill Kul Tiran Tailoring,100
step
talk Daniel Brineweaver##136071
Train Battle Flag: Phalanx Defense (Rank 1) |learn Battle Flag: Phalanx Defense##257134 |goto 76.93,11.16
step
talk Daniel Brineweaver##136071
Train Battle Flag: Phalanx Defense (Rank 2) |learn Battle Flag: Phalanx Defense##257135 |goto 76.93,11.16
step
talk Henrick Wyther##142095
buy 1875 Nylon Thread##159959 |n
collect 1875 Nylon Thread##159959 |goto 73.22,11.36
step
collect 375 Deep Sea Satin##152577
|tip Use the "Deep Sea Satin" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
collect 1375 Tidespray Linen##152576
|tip Use the "Tidespray Linen" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Tailoring Crafting Panel:
_<Create 375 Embroidered Deep Sea Satin>_
collect 400 Embroidered Deep Sea Satin##158378
step
Open Your Tailoring Crafting Panel:
_<Create 50 Battle Flag: Phalanx Defense>_
Reach Level 150 Tailoring |skill Kul Tiran Tailoring,150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Tailoring\\Farming Guides\\Tidespray Linen",{
author="support@zygorguides.com",
description="This guide will walk you through farming Tidespray Linen for various Tailoring recipes.",
startlevel=110.0,
},[[
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
path	49.21,27.05	49.95,27.53	50.61,28.29
Kill enemies around this area
collect Tidespray Linen##152576 |n
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Profession Guides\\Tailoring\\Farming Guides\\Deep Sea Satin",{
author="support@zygorguides.com",
description="This guide will walk you through farming Deep Sea Satin for various Tailoring recipes.",
startlevel=110.0,
},[[
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
path	49.21,27.05	49.95,27.53	50.61,28.29
Kill enemies around this area
|tip These are a rare drop.
collect Deep Sea Satin##152577 |n
]])
