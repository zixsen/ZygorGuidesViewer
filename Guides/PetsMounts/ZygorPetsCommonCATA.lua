local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCCATA") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Biletoad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Biletoad",
model={1924},
pet=649,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Biletoads in this area are around level 18.
learnpet Biletoad##62815 |goto Sholazar Basin 45.6,53.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Chuck",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Chuck",
model={23506},
pet=174,
},[[
step
In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
Click here to continue. |confirm
step
label "daily"
talk Old Man Barlo##25580
This is 1 of 5 dailies Old Man Barlo can give you.
accept Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
collect Baby Crocolisk##34864 |q 11665/1 |goto Stormwind City,54.9,69.7
only if havequest(11665)
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
use Bag of Fishing Treasures##35348
collect 1 Chuck's Bucket##35350
collect 1 Muckbreath's Bucket##33818
collect 1 Snarly's Bucket##35349
collect 1 Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
If you got one of the buckets above, click here. |next "use" |confirm
step
label "use"
learnpet Chuck##26056 |use Chuck's Bucket##35350
learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
learnpet Snarly##26050 |use Snarly's Bucket##35349
learnpet Toothy##24388 |use Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Darkmoon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Darkmoon Turtle",
model={38809},
pet=335,
},[[
step
This pet requires Darkmoon Island to be accessible.
confirm
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |walk
Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
earn 90 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy 1 Darkmoon Turtle##73765 |goto Darkmoon Island,48.2,69.6
step
learnpet Darkmoon Turtle##54487 |use Darkmoon Turtle##73765
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Frog",
model={6297},
pet=495,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Frogs in this area are around level 5.
learnpet Frog##62312 |goto Ashenvale 71.5,54.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Horny Toad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Horny Toad",
model={36583},
pet=483,
},[[
step
Challenge one to a pet battle and capture it
|tip The Horny Toads in this area are level 7.
learnpet Horny Toad##62185 |goto Desolace 41.2,25.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Huge Toad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Huge Toad",
model={5379},
pet=648,
},[[
step
Challenge one to a pet battle and capture it
|tip The Huge Toads in this area are level 23.
learnpet Huge Toad##61368 |goto Hillsbrad Foothills 64.4,38.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Jubling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Jubling",
model={14938},
pet=106,
},[[
step
This pet requires that the _Darkmoon Faire_ is in town
|tip The Darkmoon Faire is in town every first week of the month
|tip You can either buy these items from the Auction House or go to _Blackrock Depths_ to buy them from Plugger Spazzring.
talk Plugger Spazzring##9499
collect 10 Dark Iron Ale Mug##11325 |goto Blackrock Depths 50.0,61.6
|tip Buy all that he has to offer.
step
Go to the _Darkmoon Faire_ and find _Morja_
|tip She's a female orc wearing a green outfit
Throw your Dark Iron Ale Mug down at the little frog, _Jubjub_, that is running around this area
|tip Do not throw this near Morja, or else you'll waste a Dark Iron Ale Mug
The frog will go to _Morja_, when he does, _Morja_ will offer the quest
talk Morja##14871
accept Spawn of Jubjub##7946 |goto Darkmoon Island 55.8,70.6
turnin Spawn of Jubjub##7946 |goto Darkmoon Island 55.8,70.6
collect 1 Unhatched Jubling Egg##19462 |goto Darkmoon Island 55.8,70.6
step
Wait 7 days for your new pet
use Unhatched Jubling Egg##19462
collect 1 A Jubling's Tiny Home##19450
step
learnpet Jubling##14878 |use A Jubling's Tiny Home##19450
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mac Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Mac Frog",
model={6297},
pet=542,
},[[
step
Challenge one to a pet battle and capture it
|tip The Mac Frogs are around level 23.
learnpet Mac Frog##62892 |goto Uldum 55.8,29.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mojo",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Mojo",
model={22459},
pet=165,
},[[
step
Amani Hex Sticks can drop from any mobs within Zul'Aman.
Use your Amani Hex Sticks on the Forest Frogs down in the water of Zul'Aman |use Amani Hex Stick##33865
collect 1 Mojo##33993 |goto Zul'Aman 48.8,48.9
|tip This pet may take several Amani Hex Sticks to obtain.
step
learnpet Mojo##24480 |use Mojo##33993
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mr. Chilly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Mr. Chilly",
model={26452},
pet=192,
},[[
step
This pet is available to all players who merge their World of Warcraft account with a Battle.net account
learnpet Mr. Chilly##29726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Muckbreath",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Muckbreath",
model={22389},
pet=164,
},[[
step
In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
Click here to continue. |confirm
step
label "daily"
talk Old Man Barlo##25580
This is 1 of 5 dailies Old Man Barlo can give you.
accept Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
collect Baby Crocolisk##34864 |q 11665/1 |goto Stormwind City,54.9,69.7
only if havequest(11665)
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
use Bag of Fishing Treasures##35348
collect 1 Chuck's Bucket##35350
collect 1 Muckbreath's Bucket##33818
collect 1 Snarly's Bucket##35349
collect 1 Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
If you got one of the buckets above, click here. |next "use" |confirm
step
label "use"
learnpet Chuck##26056 |use Chuck's Bucket##35350
learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
learnpet Snarly##26050 |use Snarly's Bucket##35349
learnpet Toothy##24388 |use Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Purple Puffer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Purple Puffer",
model={38777},
pet=328,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Purple Puffer##54383
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shore Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Shore Crab",
model={45880},
pet=388,
},[[
step
Challenge one to a pet battle and capture it
|tip The Shore Crabs in the area are around level 3.
learnpet Shore Crab##61158 |goto Azshara 47.3,87.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Snarly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Snarly",
model={23507},
pet=173,
},[[
step
In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
Click here to continue. |confirm
step
label "daily"
talk Old Man Barlo##25580
This is 1 of 5 dailies Old Man Barlo can give you.
accept Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
collect Baby Crocolisk##34864 |q 11665/1 |goto Stormwind City,54.9,69.7
only if havequest(11665)
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
use Bag of Fishing Treasures##35348
collect 1 Chuck's Bucket##35350
collect 1 Muckbreath's Bucket##33818
collect 1 Snarly's Bucket##35349
collect 1 Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
If you got one of the buckets above, click here. |next "use" |confirm
step
label "use"
learnpet Chuck##26056 |use Chuck's Bucket##35350
learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
learnpet Snarly##26050 |use Snarly's Bucket##35349
learnpet Toothy##24388 |use Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spotted Bell Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Spotted Bell Frog",
model={6297},
pet=502,
},[[
step
Challenge one to a pet battle and capture it
|tip The Spotted Bell Frogs in this area are around level 15.
learnpet Spotted Bell Frog##62370 |goto Un'Goro Crater 66.4,64.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Strand Crab",
model={32789},
pet=401,
},[[
step
Challenge one to a pet battle and capture it
|tip The Strand Crabs are around level 7.
learnpet Strand Crab##61312 |goto Northern Stranglethorn 34.8,48.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Toad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Toad",
model={901},
pet=420,
},[[
step
Challenge one to a pet battle and capture it
|tip The Toads in this area are around level 3-4.
learnpet Toad##61369 |goto Silverpine Forest 76.8,23.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Toothy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Toothy",
model={22388},
pet=163,
},[[
step
In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
Click here to continue. |confirm
step
label "daily"
talk Old Man Barlo##25580
This is 1 of 5 dailies Old Man Barlo can give you.
accept Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
collect Baby Crocolisk##34864 |q 11665/1 |goto Stormwind City,54.9,69.7
only if havequest(11665)
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest,38.7,12.8 |or
step
use Bag of Fishing Treasures##35348
collect 1 Chuck's Bucket##35350
collect 1 Muckbreath's Bucket##33818
collect 1 Snarly's Bucket##35349
collect 1 Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
If you got one of the buckets above, click here. |next "use" |confirm
step
label "use"
learnpet Chuck##26056 |use Chuck's Bucket##35350
learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
learnpet Snarly##26050 |use Snarly's Bucket##35349
learnpet Toothy##24388 |use Toothy's Bucket##33816
Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tree Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Tree Frog",
model={6295},
pet=65,
},[[
step
This pet requires that the _Darkmoon Faire_ is in town
|tip The Darkmoon Faire is in town every first week of the month
Go to the Darkmoon Faire and find _Flik_
|tip He's a child orc walking around with frogs following him
talk Flik##14860
buy 1 Tree Frog Box##11026
step
learnpet Tree Frog##7549 |use Tree Frog Box##11026
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tundra Penguin",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Tundra Penguin",
model={25390},
pet=536,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tundra Penguins in this area are level 22.
learnpet Tundra Penguin##62835 |goto Dragonblight 11.4,62.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Turquoise Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Turquoise Turtle",
model={27881},
pet=473,
},[[
step
Challenge one to a pet battle and capture it
|tip The Turquiose Turtles are level 3.
learnpet Turquoise Turtle##62121 |goto Azshara 60.0,89.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Wood Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Wood Frog",
model={901},
pet=64,
},[[
step
This pet requires that the _Darkmoon Faire_ is in town
|tip The Darkmoon Faire is in town every first week of the month
Go to the _Darkmoon Faire_ and find _Flik_
|tip He's a child orc walking around with frogs following him
talk Flik##14860
buy 1 Wood Frog Box##11027
step
learnpet Wood Frog##7550 |use Wood Frog Box##11027
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Adder",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Adder",
model={1986},
pet=635,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Adders in this area are level 1.
learnpet Adder##61325 |goto Durotar 45.4,25.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Albino Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Albino Snake",
model={2955},
pet=74,
},[[
step
talk Breanni##28951
buy 1 Albino Snake##44822 |goto Dalaran 58.6,39.6
step
learnpet Albino Snake##7561 |use Albino Snake##44822
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Alterac Brew-Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Alterac Brew-Pup",
model={51988},
pet=1363,
},[[
step
This pet can be purchased from the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Alterac Brandy##106240
step
learnpet Alterac Brew-Pup##74402 |use Alterac Brew-Pup##106240
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Arctic Fox Kit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Arctic Fox Kit",
model={42757},
pet=558,
},[[
step
This pet can only be obtained when it is snowing in The Storm Peaks
confirm
step
Challenge one to a pet battle and capture it.
|tip The Arctic Foxes in this area are level 21.
learnpet Arctic Fox Kit##62864 |goto The Storm Peaks 45.8,56.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Lizard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ash Lizard",
model={36583},
pet=632,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Ash Lizards in this are are around level 15.
learnpet Ash Lizard##62364 |goto Un'Goro Crater 52.3,42.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Spiderling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ash Spiderling",
model={45904},
pet=427,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Ash Spiderlings in this area are around level 13-15.
learnpet Ash Spiderling##61420 |goto Searing Gorge 62.1,35.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Viper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ash Viper",
model={4268},
pet=425,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Ash Vipers in this area are around level 15.
learnpet Ash Viper##61385 |goto Burning Steppes 50.3,34.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Ape",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Baby Ape",
model={21362},
pet=411,
},[[
step
This pet can only be obtained when it is raining in _The Cape of Stranglethorn_
Challenge one to a pet battle and capture it.
|tip The Baby Apes in this area are around level 11.
learnpet Baby Ape##61324 |goto The Cape of Stranglethorn 60.1,83.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Blizzard Bear",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Baby Blizzard Bear",
model={16189},
pet=202,
},[[
step
Reward for being logged in during the World of Warcraft 4th Anniversary Event.
learnpet Baby Blizzard Bear##32841
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bananas",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Bananas",
model={21362},
pet=156,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Bananas##23234
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black Tabby Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Black Tabby Cat",
model={5448},
pet=42,
},[[
step
Kill any and all mobs in Hillsbrad Foothills
|tip Every mob here has a chance to drop the Black Tabby Cat's carrier.
collect 1 Cat Carrier (Black Tabby)##8491 |goto Hillsbrad Foothills 58.8,74.6
step
learnpet Black Tabby Cat##7383 |use Cat Carrier (Black Tabby)##8491
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Calico Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Calico Cat",
model={11709},
pet=224,
},[[
step
talk Breanni##28951
buy 1 Calico Cat##46398 |goto Dalaran 58.6,39.6
step
learnpet Calico Cat##34364 |use Calico Cat##46398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Cat",
model={5585},
pet=459,
},[[
step
Challenge one to a pet battle and capture it
|tip The Cat is level 1.
learnpet Cat##62019 |goto Elwynn Forest 44.6,53.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cheetah Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Cheetah Cub",
model={42362},
pet=474,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Cheetah Cubs are level 3..
learnpet Cheetah Cub##62129 |goto Northern Barrens 66.5,71.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Clefthoof Runt",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Clefthoof Runt",
model={42575},
pet=518,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Clefthoof Runts in this area are level 18.
learnpet Clefthoof Runt##62620 |goto Nagrand 59.5,60.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cobra Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Cobra Hatchling",
model={28084},
pet=197,
},[[
step
In order to get the Cobra Hatchling, you will need to be aligned with the Oracles.
|tip Do the Pre-Quests in the section below.
Routing to proper section |next "prequests" |only if not completedq(12695)
Routing to proper section |next "daily" |only if completedq(12695)
step
label "prequests"
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin,50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
stickystart "softknucklepoker"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
label "softknucklepoker"
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
|tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
step
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 5 |walk
Follow the path down |goto 57.1,79.3
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
Go outside |goto 55.0,69.1
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533
turnin The Sapphire Queen##12534
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
step
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
step
When you jump off the crocodile:
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
stickystart "empcobtre"
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
label "empcobtre"
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
stickystart "frenzspear"
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
label "frenzspear"
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave here
Follow the path inside the cave up to 72.2,57.3
kill Artruis the Heartless |q 12581/1 |goto 70.8,58.7
|tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
Click Artruis's Phylactery that spawns after the fight
turnin A Hero's Burden##12581
If you kill Zepik the Gorloc Hunter:
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582
accept Return of the Lich Hunter##12692
If you kill Jaloot:
talk Jaloot##28667
accept Hand of the Oracles##12689
accept Return of the Friendly Dryskin##12695
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4
step
At this point, you will need to dailies to get to revered.
Click here to continue. |confirm
step
label "daily"
Enter the cave here |goto Sholazar Basin,70.8,58.7 < 5 |c |walk
only if rep ('The Oracles') < Friendly
step
Follow the path inside the cave up to 72.2,57.3
kill Artruis the Heartless##28659
|tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
talk Jaloot##28667
accept Hand of the Oracles##12689 |instant
accept Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
accept Appeasing the Great Rain Stone##12704
Tell him you need to find Lafoo
collect Lafoo's Bug Bag##38622 |q 12704 |goto 54.6,56.4
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Cleansing Song##12735 |goto 53.3,56.5 |or
accept Song of Fecundity##12737 |goto 53.3,56.5 |or
accept Song of Reflection##12736 |goto 53.3,56.5 |or
accept Song of Wind and Water##12726 |goto 53.3,56.5 |or
step
talk Oracle Soo-dow##29149
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Mastery of the Crystals##12761 |goto 54.2,53.8 |or
accept Power of the Great Ones##12762 |goto 54.2,53.8 |or
accept Will of the Titans##12705 |goto 54.2,53.8 |or
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12704/1 |goto 52.4,53.2
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Atha |q 12735/1 |goto 42.7,42.8
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Ha-Khalan |q 12735/2 |goto 49.4,62.7
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Koosu |q 12735/3 |goto 48.8,70.5
step
Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
Play the Song of Fecundity 8 Times |q 12737/1 |goto 26.2,37.1
step
Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Glimmering Pillar |q 12736/1 |goto 50.0,37.4
step
Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.6,52.3
step
Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.4,74.7
step
Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.3,79.4
step
Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
Devour 3 Aqueous Spirits |q 12726/1 |goto 26.2,37.1
Devour 3 Storm Revenants |q 12726/2 |goto 26.2,37.1
step
Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.0,75.7
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.0,75.7
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.0,75.7
step
Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
Use your crystals near Frenzyheart mobs around this area
Kill 50 Frenzyheart Attackers |q 12761/1 |goto 22.2,78.0
step
Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.5,60.2
stickystart "frenzattack"
step
kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
collect 1 Tainted Crystal##39266 |q 12705 |goto 22.9,76.0
step
label "frenzattack"
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
step
Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
Take control of Soo-holu |invehicle |c |q 12705 |goto 33.7,75.0
step
Use Soo-holu's abilities to kill Frenzyheart mobs around this area
kill 50 Frenzyheart Attacker |q 12705/1 |goto 22.2,78.0
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |goto 33.5,74.8
turnin Power of the Great Ones##12762 |goto 33.5,74.8
turnin Will of the Titans##12705 |goto 33.5,74.8
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Cleansing Song##12735 |goto 53.3,56.5
turnin Song of Fecundity##12737 |goto 53.3,56.5
turnin Song of Reflection##12736 |goto 53.3,56.5
turnin Song of Wind and Water##12726 |goto 53.3,56.5
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
step
Click here to reset the daily quests. |next "daily" |confirm
Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
talk Geen##31910
buy 1 Mysterious Egg##39878 |goto Sholazar Basin,54.6,56.2
step
You will have to wait _3 days (real time)_ for this to hatch.
|tip The drop rate for these pets is random. To get both pets you have to do this at least twice
use Cracked Egg##39883
collect 1 White Tickbird Hatchling##39899
collect 1 Tickbird Hatchling##39896
collect 1 Cobra Hatchling##39898
step
learnpet White Tickbird Hatchling##32590 |use White Tickbird Hatchling##39899
learnpet Tickbird Hatchling##32589 |use Tickbird Hatchling##39896
learnpet Cobra Hatchling##32591 |use Cobra Hatchling##39898
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Coral Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Coral Snake",
model={36580},
pet=488,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Coral Snakes in this area are around level 5.
learnpet Coral Snake##62190 |goto Stonetalon Mountains 33.1,17.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crystal Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Crystal Spider",
model={45909},
pet=634,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Crystal Spiders in this area are around level 14.
learnpet Crystal Spider##62435 |goto Winterspring 66.6,54.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkmoon Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Darkmoon Cub",
model={39137},
pet=343,
},[[
step
This pet requires Darkmoon Island to be accessible.
confirm
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |walk
Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
earn 90 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy 1 Darkmoon Cub##74981 |goto Darkmoon Island,48.2,69.6
step
learnpet Darkmoon Cub##56031 |use Darkmoon Cub##74981
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkmoon Monkey",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Darkmoon Monkey",
model={46001},
pet=330,
},[[
step
This pet requires Darkmoon Island to be accessible.
confirm
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |walk
Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
earn 90 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy 1 Darkmoon Monkey##73764 |goto Darkmoon Island,48.2,69.6
step
learnpet Darkmoon Monkey##54491 |use Darkmoon Monkey##73764
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkshore Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Darkshore Cub",
model={42412},
pet=508,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Darkshore Cubs are around level 5.
learnpet Darkshore Cub##62250 |goto Darkshore 40.6,74.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darting Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Darting Hatchling",
model={29805},
pet=232,
},[[
step
click Dart's Nest##202080
collect Darting Hatchling##48112 |goto Dustwallow Marsh 48.0,14.2
|tip There are more Dart's Nests at [49.1,17.5],[47.9,19.0],[46.5,17.2]
step
learnpet Darting Hatchling##35396 |use Darting Hatchling##48112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Desert Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Desert Spider",
model={45906},
pet=484,
},[[
step
Challenge one to a pet battle and capture it
|tip The Desert Spiders in this area are around level 16.
learnpet Desert Spider##62186 |goto Silithus 46.7,73.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Deviate Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Deviate Hatchling",
model={29807},
pet=233,
},[[
step
Traverse throughout the instance
kill Deviate Ravager##3636+, Deviate Guardian##3637+
collect 1 Deviate Hatchling##48114 |goto Wailing Caverns 45.8,59.7
|tip This has a .2% drop rate, you might be farming here for a while
|tip Note that if you clear the instance once, you will likely need to reset the instance.
|tip Do this by going to your character portrait and right clicking.
|tip The sixth option down should be _Reset all instances_.
step
learnpet Deviate Hatchling##35395 |use Deviate Hatchling##48114
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Devouring Maggot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Devouring Maggot",
model={45885},
pet=523,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Devouring Maggots in this area are around level 21.
learnpet Devouring Maggot##62640 |goto Howling Fjord 50.1,53.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Diemetradon Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Diemetradon Hatchling",
model={45913},
pet=504,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Diemetradon Hatchlings are around level 13.
learnpet Diemetradon Hatchling##62375 |goto Un'Goro Crater 35.1,61.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dusk Spiderling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Dusk Spiderling",
model={2536},
pet=396,
},[[
step
Challenge one to a pet battle and capture it
|tip The Dusk Spiderlings are level 5-6.
learnpet Dusk Spiderling##61253 |goto Duskwood 63.8,26.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Emerald Boa",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Emerald Boa",
model={36578},
pet=631,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Emerald Boas in this area are around level 15.
learnpet Emerald Boa##62127 |goto Un'Goro Crater 65.4,71.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Festering Maggot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Festering Maggot",
model={9904},
pet=457,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Festering Maggots in this area are around level 12-13.
learnpet Festering Maggot##61830 |goto Eastern Plaguelands 72.6,63.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fjord Worg Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Fjord Worg Pup",
model={42617},
pet=529,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fjord Worg Pups are around level 21.
learnpet Fjord Worg Pup##62669 |goto Howling Fjord 27.4,56.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Forest Spiderling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Forest Spiderling",
model={45902},
pet=407,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Forest Spiderling is level 9.
learnpet Forest Spiderling##61320 |goto The Cape of Stranglethorn 40.7,48.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fox Kit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Fox Kit",
model={33217},
pet=278,
},[[
step
map Tol Barad Peninsula
path	50.6,75.0	50.6,68.6	52.6,59.0
path	40.8,53.4	34.0,58.6	34.6,43.6
path	47.4,39.0	52.0,39.4	50.6,46.6
path	71.0,61.0	67.6,66.6	67.6,77.6
path	56.6,73.6
Follow the path and kill any Baradin Fox you come across.
kill Baradin Fox##47676+
collect 1 Fox Kit##64403
|tip This has a .1% drop rate
step
learnpet Fox Kit##48641 |use Fox Kit##64403
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Giraffe Calf",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Giraffe Calf",
model={45896},
pet=475,
},[[
step
Challenge one to a pet battle and capture it.
|tip This pet is relatively rare and has a chance to spawn with Giraffe mothers, these are Barrens Giraffes that have calves walking behind them.
|tip Once these pets spawn they despawn shortly after.
|tip The Giraffe Calfs are level 9.
learnpet Giraffe Calf##62130 |goto Southern Barrens 51.0,55.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Gundrak Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Gundrak Hatchling",
model={29803},
pet=234,
},[[
step
kill Gundrak Raptor##29334+
|tip This has a .1% drop rate, you might be farming here for a while
collect 1 Gundrak Hatchling##48116 |goto Zul'Drak 71.6,30.2
step
learnpet Gundrak Hatchling##35400 |use Gundrak Hatchling##48116
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Horned Lizard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Horned Lizard",
model={36583},
pet=851,
},[[
step
Challenge one to a pet battle and capture it
|tip The Horned Lizards are around level 23.
learnpet Horned Lizard##62894 |goto Uldum 64.5,22.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\King Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: King Snake",
model={2954},
pet=438,
},[[
step
Challenge one to a pet battle and capture it
The King Snakes are around level 13.
learnpet King Snake##61443 |goto Badlands 12.9,29.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Larva",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Larva",
model={9906},
pet=461,
},[[
step
Challenge one to a pet battle and capture it
|tip The Larva is level 3.
learnpet Larva##62022 |goto Ghostlands 29.4,47.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leaping Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Leaping Hatchling",
model={29802},
pet=235,
},[[
step
click Takk's Nest##202081
collect 1 Leaping Hatchling##48118 |goto Northern Barrens 62.8,20.2
step
learnpet Leaping Hatchling##35387 |use Leaping Hatchling##48118
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leopard Scorpid",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Leopard Scorpid",
model={15469},
pet=545,
},[[
step
Challenge one to a pet battle and capture it
The Leopard Scorpids are around level 23.
learnpet Leopard Scorpid##62896 |goto Uldum 67.1,36.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Little Black Ram",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Little Black Ram",
model={42068},
pet=437,
},[[
step
Challenge one to a pet battle and capture it
|tip The Little Black Rams are level 3.
learnpet Little Black Ram##61459 |goto Loch Modan 58.1,68.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lizard Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Lizard Hatchling",
model={36583},
pet=408,
},[[
step
Challenge one to a pet battle and capture it
|tip The Lizard Hatchlings in this area are level 8.
learnpet Lizard Hatchling##61321 |goto Northern Stranglethorn 62.1,52.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Maggot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Maggot",
model={9904},
pet=450,
},[[
step
Challenge one to a pet battle and capture it
|tip The Maggots in this area are level 21.
learnpet Maggot##61753 |goto Howling Fjord 50.6,54.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Moccasin",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Moccasin",
model={1986},
pet=422,
},[[
step
Challenge one to a pet battle and capture it
|tip The Moccasins are level 14.
learnpet Moccasin##61372 |goto Swamp of Sorrows 54.3,52.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Molten Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Molten Hatchling",
model={42051},
pet=428,
},[[
step
Challenge one to a pet battle and capture it
|tip The Molten Hatchlings in this area are around level 13-15.
learnpet Molten Hatchling##61425 |goto Searing Gorge 43.6,40.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Nightsaber Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Nightsaber Cub",
model={37846},
pet=303,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Nightsaber Cub##52344
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Obsidian Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Obsidian Hatchling",
model={29809},
pet=236,
},[[
step
talk Breanni##28951
buy 1 Obsidian Hatchling##48120 |goto Dalaran,58.6,39.6
step
learnpet Obsidian Hatchling##35399 |use Obsidian Hatchling##48120
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Panda Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Panda Cub",
model={10990},
pet=92,
},[[
step
These pets are available only to people who bought the Collector's Edition of World of Warcraft.
|tip You may only choose one.
|tip If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Panda Cub##11325
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Poley",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Poley",
model={16189},
pet=124,
},[[
step
This pet was only available to those in China during the iCoke event.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Poley##16456
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rat Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Rat Snake",
model={3126},
pet=399,
},[[
step
Challenge one to a pet battle and capture it
|tip The Rat Snake is level 6.
learnpet Rat Snake##61258 |goto Duskwood 34.0,37.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rattlesnake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Rattlesnake",
model={35804},
pet=431,
},[[
step
Challenge one to a pet battle and capture it
|tip The Rattlesnakes are around level 13.
learnpet Rattlesnake##61439 |goto Badlands 72.5,43.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ravager Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ravager Hatchling",
model={42344},
pet=465,
},[[
step
Challenge one to a pet battle and capture it
|tip The Ravager Hatchlings in this area are level 3-5.
learnpet Ravager Hatchling##62051 |goto Bloodmyst Isle 65.1,52.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ravasaur Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ravasaur Hatchling",
model={29810},
pet=237,
},[[
step
click Ravasaur Matriarch's Nest##202082
collect 1 Ravasaur Hatchling##48122 |goto Un'Goro Crater 68.9,61.2
They can also be found at
[68.9,66.9]
[62.0,73.6]
[62.2,65.3]
[63.0,63.2]
step
learnpet Ravasaur Hatchling##35397 |use Ravasaur Hatchling##48122
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Razormaw Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Razormaw Hatchling",
model={29808},
pet=238,
},[[
step
click Ravasaur Matriarch's Nest##202082
collect 1 Razormaw Hatchling##48124 |goto Wetlands 69.9,29.1
step
learnpet Razormaw Hatchling##35398 |use Razormaw Hatchling##48124
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Razzashi Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Razzashi Hatchling",
model={29806},
pet=239,
},[[
step
Kill any and all mobs here to farm for your _Razzashi Hatchling_
collect 1 Razzashi Hatchling##48126 |goto Northern Stranglethorn 28.0,23.1
step
learnpet Razzashi Hatchling##35394 |use Razzashi Hatchling##48126
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rock Viper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Rock Viper",
model={4268},
pet=482,
},[[
step
Challenge one to a pet battle and capture it
|tip The Rock Vipers in this area are around level 23.
learnpet Rock Viper##62184 |goto Mount Hyjal 78.1,59.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sand Kitten",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Sand Kitten",
model={5586},
pet=491,
},[[
step
Challenge one to a pet battle and capture it
|tip The Sand Kittens are level 13.
learnpet Sand Kitten##62257 |goto Tanaris 33.1,71.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scalded Basilisk Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Scalded Basilisk Hatchling",
model={45953},
pet=528,
},[[
step
Challenge one to a pet battle and capture it
|tip The Scalded Basilisk Hatchlings in this area are around level 18.
learnpet Scalded Basilisk Hatchling##62628 |goto Blade's Edge Mountains 75.8,20.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scorpid",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Scorpid",
model={15469},
pet=414,
},[[
step
Challenge one to a pet battle and capture it
|tip The Scorpids in this area are around level 13.
learnpet Scorpid##61326 |goto Thousand Needles 79.0,94.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scorpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Scorpling",
model={41960},
pet=416,
},[[
step
Challenge one to a pet battle and capture it
|tip The Scorplings are around level 16.
learnpet Scorpling##61329 |goto Blasted Lands 58.8,59.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Siamese Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Siamese Cat",
model={5585},
pet=44,
},[[
step
talk Dealer Rashaad##20980
buy 1 Cat Carrier (Siamese)##8490 |goto Netherstorm 43.4,35.2
step
learnpet Siamese Cat##7380 |use Cat Carrier (Siamese)##8490
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sidewinder",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Sidewinder",
model={35804},
pet=511,
},[[
step
Challenge one to a pet battle and capture it
|tip The Sidewinders in this area are around level 16.
learnpet Sidewinder##62523 |goto Silithus 66.9,64.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silithid Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Silithid Hatchling",
model={42416},
pet=494,
},[[
step
Challenge one to a pet battle and capture it
|tip This pet can only be obtained in Tanaris during a Sandstorm.
|tip The Silithid Hatchlings are level 13.
learnpet Silithid Hatchling##62258 |goto Tanaris 54.8,64.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Skittering Cavern Crawler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Skittering Cavern Crawler",
model={20923},
pet=637,
},[[
step
Challenge one to a pet battle and capture it
|tip The Skittering Cavern Crawlers are around level 18.
learnpet Skittering Cavern Crawler##62638 |goto Blade's Edge Mountains 35.1,85.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Smolderweb Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Smolderweb Hatchling",
model={27718},
pet=90,
},[[
step
Enter Lower Blackrock Spire |goto Blackrock Spire/4 37.9,43.3 |c |or
Click here to continue. |confirm |or
step
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 5
path	38.9,48.3	40.6,47.1	42.4,45.2
path	42.2,47.8	Blackrock Spire/3 41.9,51.1	Blackrock Spire/2 47.3,52.5
Follow the path and jump down onto the second ledge |goto Blackrock Spire/2 47.3,52.5 < 8 |c |noway
step
Jump off the ledge down to the floor |goto Blackrock Spire/1 49.0,53.0 |c
step
map Blackrock Spire/1
path follow smart; loop off; ants curved; dist 8
path	48.1,57.3	49.0,63.7	53.8,69.9
path	59.6,70.3
Follow the path to Mother Smolderweb's area |goto 59.6,70.3 |c |noway
step
Once you get to the ramp go up and on the right will be _Mother Smolderweb_.
kill Mother Smolderweb##10596
collect Smolderweb Egg##68673 |goto 58.4,70.5
step
learnpet Smolderweb Hatchling##10598 |use Smolderweb Egg##68673
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Snake",
model={1206},
pet=387,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Snakes in this area are around level 11.
learnpet Snake##61142 |goto Feralas 38.3,20.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snow Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Snow Cub",
model={42203},
pet=440,
},[[
step
Challenge one to a pet battle and capture it
|tip The Snow Cubs are level 1.
learnpet Snow Cub##61689 |goto Dun Morogh 51.1,44.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Spider",
model={45902},
pet=412,
},[[
step
Challenge one to a pet battle and capture it
Enter the cave here. |goto Hillsbrad Foothills 33.9,72.3 < 10 |c
|tip The Spiders in this area are level 6.
learnpet Spider##61327 |goto Hillsbrad Foothills 34.2,71.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spiky Lizard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Spiky Lizard",
model={36585},
pet=433,
},[[
step
Challenge one to a pet battle and capture it
|tip The Spiky Lizards are around level 16.
learnpet Spiky Lizard##61441 |goto Silithus 39.8,38.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spiny Lizard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Spiny Lizard",
model={36583},
pet=466,
},[[
step
Challenge one to a pet battle and capture it
|tip The Spiny Lizards in this area are level 1-2.
learnpet Spiny Lizard##62114 |goto Durotar 45.8,20.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Stripe-Tailed Scorpid",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Stripe-Tailed Scorpid",
model={15469},
pet=432,
},[[
step
Challenge one to a pet battle and capture it
|tip The Stripe-Tailed Scorpids in this area are around level 18.
learnpet Stripe-Tailed Scorpid##61440 |goto Terokkar Forest 24.9,29.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Stunted Shardhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Stunted Shardhorn",
model={42708},
pet=532,
},[[
step
Challenge one to a pet battle and capture it
|tip The Stunted Shardhorn in this area are around level 21.
learnpet Stunted Shardhorn##62816 |goto Sholazar Basin 27.5,56.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Tree Python",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Tree Python",
model={36578},
pet=405,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tree Pythons in this area around around level 15.
learnpet Tree Python##61318 |goto Un'Goro Crater 60.1,80.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight Iguana",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Twilight Iguana",
model={42415},
pet=505,
},[[
step
Challenge one to a pet battle and capture it
|tip The Twilight Iguanas in this area are around level 13.
learnpet Twilight Iguana##62255 |goto Thousand Needles 35.1,58.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Twilight Spider",
model={36236},
pet=470,
},[[
step
Challenge one to a pet battle and capture it
|tip The Twilight Spiders in this area are level 23.
learnpet Twilight Spider##62117 |goto Twilight Highlands 66.5,69.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Venomspitter Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Venomspitter Hatchling",
model={45908},
pet=506,
},[[
step
Challenge one to a pet battle and capture it
|tip The Venomspitter Hatchlings in this area are around level 5.
learnpet Venomspitter Hatchling##62191 |goto Stonetalon Mountains 55.4,74.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Warpstalker Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Warpstalker Hatchling",
model={45998},
pet=517,
},[[
step
Challenge one to a pet battle and capture it
|tip The Warpstalker Hatchlings in this area are around level 18.
learnpet Warpstalker Hatchling##62583 |goto Terokkar Forest 49.8,21.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Water Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Water Snake",
model={1986},
pet=418,
},[[
step
Challenge one to a pet battle and capture it
|tip The Water Snakes in this area are level 1.
learnpet Water Snake##61367 |goto Durotar 44.2,33.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Widow Spiderling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Widow Spiderling",
model={45905},
pet=400,
},[[
step
Challenge a Dusk Spiderling to a pet battle and if the Widow Spiderling is there capture it
|tip The Widow Spiderling can be found only at night or sometimes when challenging Dusk Spiderlings.
learnpet Widow Spiderling##61259 |goto Duskwood 31.2,39.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Wind Rider Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Wind Rider Cub",
model={30413},
pet=246,
},[[
step
This pet can be purchased for $25.00 from the official Blizzard Store.
|tip It also includes an out of game plushie.
|tip After purchasing, check your in-game mailbox
collect Wind Rider Cub##49663
step
learnpet Wind Rider Cub##36909 |use Wind Rider Cub##49663
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Winterspring Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Winterspring Cub",
model={37712},
pet=306,
},[[
step
talk Michelle De Rum##52830
buy 1 Winterspring Cub##69239 |goto Winterspring 59.8,51.6
step
learnpet Winterspring Cub##52831 |use Winterspring Cub##69239
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Worg Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Worg Pup",
model={9563},
pet=89,
},[[
step
Enter Lower Blackrock Spire |goto Blackrock Spire/4 37.9,43.3 |c |or
Click here to continue. |confirm |or
step
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 5
path	38.9,48.3	40.6,47.1	42.4,45.2
path	42.2,47.8	Blackrock Spire/3 41.9,51.1	Blackrock Spire/2 47.3,52.5
Follow the path and jump down onto the second ledge |goto Blackrock Spire/2 47.3,52.5 < 8 |c |noway
step
Jump off the ledge down to the floor |goto Blackrock Spire/1 49.0,53.0 |c
step
map Blackrock Spire/1
path follow smart; loop off; ants curved; dist 8
path	48.1,57.3	49.0,63.7	53.8,69.9
path	59.6,70.3	Blackrock Spire/2 65.7,72.4
path	Blackrock Spire/2 56.7,73.2	Blackrock Spire/2 54.2,75.3
path	Blackrock Spire/2 50.4,74.3	Blackrock Spire/3 47.3,71.0
path	Blackrock Spire/4 44.6,59.7	Blackrock Spire/4 42.5,62.6
path	Blackrock Spire/4 42.8,73.4	Blackrock Spire/5 42.9,79.8
path	Blackrock Spire/5 52.6,80.1
Follow the path to Quartermaster Zigris' area |goto Blackrock Spire/5 52.6,80.1 < 8 |c |noway
step
kill Quartermaster Zigris##9736
collect 1 Worg Carrier##12264 |goto 54.8,85.2
|tip This has a 25% chance to drop from this mob
step
learnpet Worg Pup##10259 |use Worg Carrier##12264
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Alpine Chipmunk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Alpine Chipmunk",
model={36620},
pet=487,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Alpine Chipmunks in this area are level 6.
learnpet Alpine Chipmunk##62189 |goto Stonetalon Mountains 74.5,70.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Alpine Hare",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Alpine Hare",
model={36342},
pet=441,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Alpine Hare is level 1.
learnpet Alpine Hare##61690 |goto Dun Morogh 52.6,58.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Arctic Hare",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Arctic Hare",
model={328},
pet=641,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Arctic Hares in this area are level 20-21.
learnpet Arctic Hare##62693 |goto Borean Tundra 77.9,24.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Beetle",
model={7511},
pet=406,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Beetles in this area are level 9.
learnpet Beetle##61319 |goto The Cape of Stranglethorn 48.3,35.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Black Lamb",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Black Lamb",
model={42906},
pet=374,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Black Lamb is level 1.
learnpet Black Lamb##60649 |goto Elwynn Forest 72.4,76.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Black Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Black Rat",
model={1141},
pet=398,
},[[
step
Enter the crypt here |goto Duskwood 23.5,35.2 < 5
Challenge one to a pet battle and capture it.
|tip The Black Rat is level 5 or 6.
learnpet Black Rat##61257 |goto 25.6,34.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Blighted Squirrel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Blighted Squirrel",
model={42334},
pet=455,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Blighted Squirrels in this area are around level 4-5.
learnpet Blighted Squirrel##61890 |goto Silverpine Forest 76.8,22.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Borean Marmot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Borean Marmot",
model={1072},
pet=639,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Borean Marmots in this area are level 20-21.
learnpet Borean Marmot##62695 |goto Borean Tundra 44.9,41.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Marmot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Brown Marmot",
model={45899},
pet=449,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Brown Marmots in this area are around level 11.
learnpet Brown Marmot##61752 |goto The Hinterlands 69.6,55.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Brown Rabbit",
model={4626},
pet=137,
},[[
step
talk Dealer Rashaad##20980
buy 1 Brown Rabbit Crate##29364 |goto Netherstorm,43.4,35.2
step
learnpet Brown Rabbit##20472 |use Brown Rabbit Crate##29364
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Carrion Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Carrion Rat",
model={1141},
pet=540,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Carrion Rats in this area are around level 23.
learnpet Carrion Rat##62885 |goto Mount Hyjal 78.5,49.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Cockroach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Cockroach",
model={2177},
pet=393,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Cockroaches in this area are around level 11.
learnpet Cockroach##61384 |goto The Hinterlands 60.6,67.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Creepy Crawly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Creepy Crawly",
model={46940},
pet=468,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Creepy Crawly is level 1.
learnpet Creepy Crawly##62116 |goto Durotar 50.0,29.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Crystal Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Crystal Beetle",
model={15467},
pet=556,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Crystal Beetles in this area are level 22-23.
learnpet Crystal Beetle##62925 |goto Deepholm 55.9,47.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Darkmoon Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Darkmoon Hatchling",
model={46163},
pet=1061,
},[[
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |walk
Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
earn 90 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy 1 Darkmoon Hatchling##91003 |goto Darkmoon Island,48.2,69.6
step
learnpet Darkmoon Hatchling##67319 |use Darkmoon Hatchling##91003
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Darkmoon Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Darkmoon Rabbit",
model={45957},
pet=848,
},[[
step
This pet is only available to players during the _Darkmoon Faire_.
confirm
step
kill Darkmoon Rabbit##58336
|tip The Darkmoon Rabbit is an Elite mob with over 150 Million health. Having a medium sized group is suggested.
collect Darkmoon Rabbit##80008 |n
learnpet Darkmoon Rabbit##59358 |goto Darkmoon Island 78.0,82.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Death's Head Cockroach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Death's Head Cockroach",
model={2177},
pet=755,
},[[
step
Challenge one to a pet battle and capture it
|tip The Death's Head Cockroaches in this area are around level 23.
learnpet Death's Head Cockroach##62887 |goto Mount Hyjal 58.6,69.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Deepholm Cockroach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Deepholm Cockroach",
model={45897},
pet=555,
},[[
step
Challenge one to a pet battle and capture it
|tip The Deepholm Cockroaches in this area are level 22-23.
learnpet Deepholm Cockroach##62924 |goto Deepholm 56.7,55.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elfin Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Elfin Rabbit",
model={328},
pet=479,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Elfin Rabbits in this area are around level 23.
learnpet Elfin Rabbit##62178 |goto Mount Hyjal 48.8,25.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fawn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Fawn",
model={654},
pet=447,
},[[
step
Challenge one to a pet battle and capture it
|tip The Fawn is level 1.
learnpet Fawn##61165 |goto Elwynn Forest 45.1,67.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fire Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Fire Beetle",
model={8971},
pet=415,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fire Beeltes in this area are around level 14.
learnpet Fire Beetle##61328 |goto Searing Gorge 43.6,40.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fire-Proof Roach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Fire-Proof Roach",
model={2177},
pet=541,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fire-Proof Roaches in this area are around level 23.
learnpet Fire-Proof Roach##62886 |goto Mount Hyjal 87.2,56.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fjord Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Fjord Rat",
model={22175},
pet=644,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fjord Rats are around level 21.
learnpet Fjord Rat##62641 |goto Howling Fjord 57.6,54.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gazelle Fawn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Gazelle Fawn",
model={45958},
pet=477,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Gazelle Fawns are level 1.
learnpet Gazelle Fawn##62176 |goto Mulgore 33.8,31.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Giant Sewer Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Giant Sewer Rat",
model={27627},
pet=193,
},[[
step
Cast your _fishing line_ in the _water down here_ and click on the _bobber_ when it bobs |cast Fishing##7620
collect 1 Giant Sewer Rat##43698 |goto Dalaran 44.3,66.5
|tip This has a very low drop rate. You may be fishing here for a while.
|tip Obtaining this pet will require you to have fishing
step
learnpet Giant Sewer Rat##31575 |use Giant Sewer Rat##43698
|tip You recieve "I Smell a Rat" achievement when you fish up this pet.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gold Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Gold Beetle",
model={15467},
pet=430,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Gold Beetles are around level 13.
learnpet Gold Beetle##61438 |goto Badlands 46.0,57.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Golden Pig",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Golden Pig",
model={21304},
pet=170,
},[[
step
This pet is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
learnpet Golden Pig##25146
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grasslands Cottontail",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Grasslands Cottontail",
model={328},
pet=443,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Grasslands Cottontails are level 7.
learnpet Grasslands Cottontail##61704 |goto Arathi Highlands 59.3,47.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grizzly Squirrel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Grizzly Squirrel",
model={134},
pet=647,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Grizzly Squirrels are level 21.
learnpet Grizzly Squirrel##62818 |goto Grizzly Hills 13.9,69.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grotto Vole",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Grotto Vole",
model={4959},
pet=539,
},[[
step
Enter the cave here |goto Mount Hyjal 52.5,17.3 < 10 |walk
Challenge one to a pet battle and capture it.
|tip The Grotto Vole is level 23.
learnpet Grotto Vole##62884 |goto 54.4,19.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Highlands Mouse",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Highlands Mouse",
model={4959},
pet=550,
},[[
step
Challenge one to a pet battle and capture it
|tip The Highlands Mouse is around level 23.
learnpet Highlands Mouse##62905 |goto Twilight Highlands 20.1,16.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Highlands Skunk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Highlands Skunk",
model={22447},
pet=823,
},[[
step
Challenge one to a pet battle and capture it
|tip The Highlands Skunks in this area are around level 23.
learnpet Highlands Skunk##62907 |goto Twilight Highlands 24.3,19.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Irradiated Roach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Irradiated Roach",
model={2177},
pet=442,
},[[
step
Challenge one to a pet battle and capture it
|tip The Irradiated Roaches are level 1.
learnpet Irradiated Roach##61691 |goto New Tinkertown 41.1,47.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lava Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Lava Beetle",
model={41981},
pet=429,
},[[
step
Challenge one to a pet battle and capture it
|tip The Lava Beetles in this area are around level 15.
learnpet Lava Beetle##61386 |goto Burning Steppes 66.3,44.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Little Fawn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Little Fawn",
model={28397},
pet=203,
},[[
step
Obtain _75 pets_ using our Pets and Mounts guide.
_Lil' Game Hunter_ |achieve 2516
step
Check your mailbox for your prize!
collect 1 Little Fawn's Salt Lick##44841
step
learnpet Little Fawn##32939 |use Little Fawn's Salt Lick##44841
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Locust",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Locust",
model={2177},
pet=543,
},[[
step
Challenge one to a pet battle and capture it
|tip The Locusts are around level 23.
learnpet Locust##62893 |goto Uldum 56.1,23.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Long-tailed Mole",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Long-tailed Mole",
model={4959},
pet=404,
},[[
step
Challenge one to a pet battle and capture it
|tip The Long-tailed Moles in this area are around level 9-10.
learnpet Long-tailed Mole##61317 |goto The Cape of Stranglethorn 40.0,67.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lucky",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Lucky",
model={21328},
pet=155,
},[[
step
This pet is available only to people who attended the 2007 Blizzrd Worldwide Invitational Event.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Lucky##23198
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lucky Quilen Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Lucky Quilen Cub",
model={43255},
pet=671,
},[[
step
This pet is available only to people who bought the Collector's Edition of the Mists of Pandaria expansion pack.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Lucky Quilen Cub##63832
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mountain Cottontail",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mountain Cottontail",
model={328},
pet=391,
},[[
step
Challenge one to a pet battle and capture it
|tip The Mountain Cottontails in this area are level 4-5.
learnpet Mountain Cottontail##61167 |goto Redridge Mountains 42.1,68.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mountain Skunk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mountain Skunk",
model={16633},
pet=633,
},[[
step
Challenge one to a pet battle and capture it
|tip The Mountain Skunks in this area are around level 6.
learnpet Mountain Skunk##61677 |goto Stonetalon Mountains 74.3,68.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mouse",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mouse",
model={4959},
pet=385,
},[[
step
Challenge one to a pet battle and capture it
|tip The Mouse is level 5 or 6.
learnpet Mouse##61143 |goto Duskwood 22.1,37.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mr. Grubbs",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mr. Grubbs",
model={9905},
pet=286,
},[[
step
talk Fiona##45417
turnin Into the Woods##27683 |goto Eastern Plaguelands 9.0,66.3
accept Gidwin Goldbraids##27367 |goto Eastern Plaguelands 9.0,66.3
accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands 9.0,66.3
only if not completedq(27372)
step
talk Gidwin Goldbraids##45428
turnin Gidwin Goldbraids##27367 |goto 4.1,36.0
accept Just Encased##27368 |goto 4.1,36.0
only if not completedq(27372)
step
Enter the tunnel |goto 4.7,35.6 < 5 |c |walk
only if not completedq(27372)
step
kill Crypt Stalker##8555+, Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+
|tip All inside this tunnel.
collect 8 Crypt Bile##60983 |q 27368/1 |goto 5.1,33.4
only if not completedq(27372)
step
Leave the tunnel |goto 4.7,35.6 < 5 |c |walk
only if not completedq(27372)
step
talk Gidwin Goldbraids##45428
turnin Just Encased##27368 |goto Eastern Plaguelands,4.1,36.0
accept Greasing the Wheel##27369 |goto Eastern Plaguelands,4.1,36.0
only if not completedq(27372)
step
click Banshee's Bell##9889+
|tip They are located right along the edge of the water
collect 10 Banshee's Bells##60984 |q 27369/1 |goto 3.4,38.0
only if not completedq(27372)
step
talk Fiona##45417
turnin Greasing the Wheel##27369 |goto 9.0,66.5
only if not completedq(27372)
step
talk Tarenar Sunstrike##45429
turnin Tarenar Sunstrike##27370 |goto 18.4,74.8
accept What I Do Best##27371 |goto 18.4,74.8
only if not completedq(27372)
step
kill 5 Death's Step Miscreation##45444+ |q 27371/1 |goto 18.6,76.9
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin What I Do Best##27371
accept A Gift For Fiona##27372
only if not completedq(27372)
step
kill Plaguehound Runt##8596+
|tip They share spawn locations with the Carrion Grubs.  So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
collect 10 Plaguehound Blood##60986 |q 27372/1 |goto 17.2,68.7
You can find more Plague Hound Runts around [Eastern Plaguelands,14.4,63.0].
only if not completedq(27372)
step
talk Fiona##45417
turnin A Gift For Fiona##27372 |goto 9.0,66.5
only if not completedq(27372)
step
talk Fiona's Caravan##45400
turnin Fiona's Lucky Charm##27555
|tip To see the dropped item for Mr. Grubbs you must have the buff "Fiona's Lucky Charm" on you. In order to receive this buff you must have Fiona's Caravan active. See the Full Caravan achievement section of this guide for more guidance.
step
kill Carrion Grub##8603+
collect 1 Hidden Stash##61387 |n
use Hidden Stash##61387
collect Mr. Grubbs##66076 |goto Eastern Plaguelands,72.2,63.3
|tip This has a small chance of dropping from this item, you may be farming for a while
step
learnpet Mr. Grubbs##50586 |use Mr. Grubbs##66076
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Nether Roach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Nether Roach",
model={2177},
pet=638,
},[[
step
Challenge one to a pet battle and capture it
|tip The Nether Roaches in this area are around level 18.
learnpet Nether Roach##62625 |goto Netherstorm 64.9,41.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Nuts",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Nuts",
model={38693},
pet=323,
},[[
step
Obtain _100 pets_ using our Pets and Mounts guide.
_Petting Zoo_ |achieve  5876
step
Check your mailbox for your prize!
collect Nut's Acorn##71140
step
learnpet Nuts##54227 |use Nut's Acorn##71140
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Perky Pug",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Perky Pug",
model={31174},
pet=250,
},[[
step
Use the _Dungeon Finder_ to take you to _complete random heroic dungeons_
Use the _Dungeon Finder_ to group with _100 random players total_ |achieve 4478
step
Check your mailbox for your prize!
collect 1 Perky Pug##49912
step
learnpet Perky Pug##37865 |use Perky Pug##49912
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Prairie Dog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Prairie Dog",
model={1072},
pet=386,
},[[
step
Challenge one to a pet battle and capture it
|tip The Prairie Dogs in this area are level 1.
learnpet Prairie Dog##61141 |goto Mulgore 35.0,7.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Rabbit",
model={328},
pet=378,
},[[
step
Challenge one to a pet battle and capture it
|tip The Rabbit is level 1.
learnpet Rabbit##61080 |goto Elwynn Forest 61.2,68.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Rat",
model={1141},
pet=417,
},[[
step
Challenge one to a pet battle and capture it
|tip The Rats in this area are level 7-8.
learnpet Rat##61366 |goto Desolace 51.1,58.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Red-Tailed Chipmunk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Red-Tailed Chipmunk",
model={36620},
pet=452,
},[[
step
Challenge one to a pet battle and capture it
|tip The Red-Tailed Chipmunk is level 6.
learnpet Red-Tailed Chipmunk##61757 |goto Hillsbrad Foothills 56.3,65.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Redridge Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Redridge Rat",
model={1141},
pet=392,
},[[
step
Challenge one to a pet battle and capture it
|tip The Redridge Rats are around level 5.
learnpet Redridge Rat##61168 |goto Redridge Mountains 67.6,31.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Roach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Roach",
model={2177},
pet=424,
},[[
step
Challenge a Rat Snake or Dusk Spiderling to a pet battle and if the Roach is there capture it
|tip The Roach can be found when challenging Rat Snakes and Dusk Spiderlings.
|tip The Roach is level 5 or 6.
learnpet Roach##61169 |goto Duskwood 34.0,37.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rusty Snail",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Rusty Snail",
model={42409},
pet=496,
},[[
step
Challenge one to a pet battle and capture it
|tip The Rusty Snails are level 4.
learnpet Rusty Snail##62313 |goto Ashenvale 14.8,25.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sand Scarab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Sand Scarab",
model={39694},
pet=665,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Sand Scarab##54745
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scarab Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Scarab Hatchling",
model={35113},
pet=512,
},[[
step
Challenge one to a pet battle and capture it
|tip The Scarab Hatchlings are around level 16.
learnpet Scarab Hatchling##62524 |goto Ahn'Qiraj: The Fallen Kingdom 58.2,16.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Shimmershell Snail",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Shimmershell Snail",
model={42407},
pet=493,
},[[
step
Challenge one to a pet battle and capture it
|tip The Shimmershell Snails are around level 5.
learnpet Shimmershell Snail##62246 |goto Darkshore 56.5,16.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Silver Pig",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Silver Pig",
model={22938},
pet=171,
},[[
step
This pet is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
learnpet Silver Pig##25147
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Singing Cricket",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Singing Cricket",
model={43127},
pet=820,
},[[
step
This pet is rewarded for the Achievement: _Pro Pet Mob_.
confirm
step
Raise 75 pets to level 25 |achieve 6582
step
|tip Check your in-game mail for your reward!
collect 1 Singing Cricket Cage##88147
learnpet Singing Cricket##64232 |use Singing Cricket Cage##88147
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Skunk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Skunk",
model={16633},
pet=397,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Skunk is level 5 or 6.
learnpet Skunk##61255 |goto Duskwood 23.8,29.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Hare",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Snowshoe Hare",
model={328},
pet=640,
},[[
step
Challenge one to a pet battle and capture it
|tip The Snowshoe Hares are around level 6.
learnpet Snowshoe Hare##61755 |goto Hillsbrad Foothills 46.8,20.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Spring Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Spring Rabbit",
model={6302},
pet=200,
},[[
step
This pet is sold by Noble Garden Merchants during the _Noblegarden_ Holiday
|tip The merchants are in the Durotar, Eversong Woods, Mulgore, and Tirisfal Glades
collect 100 Noblegarden Chocolate##44791
step
Go to any Noblegarden Merchant
talk Noblegarden Merchant##32837
buy 1 Spring Rabbit's Foot##44794
step
learnpet Spring Rabbit##32791 |use Spring Rabbit's Foot##44794
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Squirrel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Squirrel",
model={134},
pet=379,
},[[
step
Challenge one to a pet battle and capture it
|tip The Squirrel is level 1.
learnpet Squirrel##61081 |goto Elwynn Forest 46.7,71.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stinkbug",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Stinkbug",
model={7511},
pet=492,
},[[
step
Challenge one to a pet battle and capture it
|tip The Stinkbugs are level 13.
learnpet Stinkbug##62256 |goto Tanaris 40.0,27.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stinker",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Stinker",
model={16633},
pet=160,
},[[
step
Obtain _50 pets_ using our Pets and Mounts guide.
Shop Smart, Shop Pet...Smart |achieve 1250
step
Check your mailbox for your prize!
collect Reeking Pet Carrier##40653
step
learnpet Stinker##23274 |use Reeking Pet Carrier##40653
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stone Armadillo",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Stone Armadillo",
model={42381},
pet=485,
},[[
step
Challenge one to a pet battle and capture it
|tip The Stone Armadillos are level 7.
|tip You can only obtain this pet at night.
learnpet Stone Armadillo##62187 |goto Desolace 57.1,15.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stormwind Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Stormwind Rat",
model={1141},
pet=675,
},[[
step
Challenge one to a pet battle and capture it
|tip The Stormwind Rat is level 2.
learnpet Stormwind Rat##62954 |goto Stormwind City 66.6,73.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stowaway Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Stowaway Rat",
model={1141},
pet=553,
},[[
step
Challenge one to a pet battle and capture it
|tip This pet will normally join the battle with a Topaz Shale Hatchling
learnpet Stowaway Rat##62921 |goto Deepholm 47.6,52.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tainted Cockroach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Tainted Cockroach",
model={2177},
pet=497,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tainted Cockroaches in this area are around level 18.
learnpet Tainted Cockroach##62314 |goto Shadowmoon Valley 50.1,30.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tainted Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Tainted Rat",
model={1141},
pet=499,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tainted Rats are around level 14.
learnpet Tainted Rat##62316 |goto Felwood 36.5,59.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tol'vir Scarab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Tol'vir Scarab",
model={42771},
pet=546,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tol'vir Scarabs are around level 23.
learnpet Tol'vir Scarab##62899 |goto Uldum 66.8,21.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Twilight Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Twilight Beetle",
model={7511},
pet=469,
},[[
step
Challenge one to a pet battle and capture it
|tip The Twilight Beetles in this area are around level 23.
learnpet Twilight Beetle##62118 |goto Mount Hyjal 44.5,21.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wharf Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Wharf Rat",
model={1141},
pet=410,
},[[
step
Challenge one to a pet battle and capture it
|tip The Wharf Rats in this area are around level 9-10.
learnpet Wharf Rat##61323 |goto The Cape of Stranglethorn 42.9,71.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Yellow-Bellied Marmot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Yellow-Bellied Marmot",
model={45900},
pet=549,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Yellow-Bellied Marmots in this area are level 23.
learnpet Yellow-Bellied Marmot##62904 |goto Twilight Highlands 74.9,67.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Azure Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Azure Whelpling",
model={6293},
pet=57,
},[[
step
Kill any and all mobs here to farm for your _Azure Whelpling_
|tip This has a .01% drop rate, you may be farming for a while
collect 1 Azure Whelpling##34535 |goto Winterspring 50.6,53.2
step
learnpet Azure Whelpling##7547 |use Azure Whelpling##34535
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Blue Dragonhawk Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Blue Dragonhawk Hatchling",
model={20029},
pet=145,
},[[
step
talk Dealer Rashaad##20980
buy 1 Blue Dragonhawk Hatchling##29958 |goto Netherstorm 43.4,35.2
step
learnpet Blue Dragonhawk Hatchling##21056 |use Blue Dragonhawk Hatchling##29958
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Celestial Dragon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Celestial Dragon",
model={31956},
pet=255,
},[[
step
This pet is a reward for completing the Littlest Pet Shop Achievement
|tip You must acquire 150 unique vanity pets in order to earn this
Earn the Littlest Pet Shop Achievement |achieve 5875/1
step
|tip Check your mailbox for Celestial Dragon
collect Celestial Dragon##54810
step
learnpet Celestial Dragon##40624 |use Celestial Dragon##54810
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Chrominius",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Chrominius",
model={46925},
pet=1152,
},[[
step
label "bwl"
click Orb of Command##179879 |goto Burning Steppes/14 64.2,71.0
Place your hand on the orb. |goto Blackwing Lair |noway |c
step
kill Grethok the Controller##12557 |goto Blackwing Lair/1 35.4,67.2
Let Razorgore come to you before clicking the _Orb of Domination_.
click Orb of Domination##177808
Destroy the eggs, then defeat Razorgore.
kill Razorgore the Untamed##12435
confirm
step
Enter the doorway. |goto Blackwing Lair 33.9,43.3 |c
step
talk Vaelastrasz the Corrupt##13020 |goto Blackwing Lair 34.3,28.6
Tell them that you can't.
You will fight after a short speech.
Click here when you have won. |confirm
step
|goto Blackwing Lair 37.1,11.3 |n
Go up the ramp here. |goto Blackwing Lair/2 |noway |c
step
Pass through this hallway. |goto Blackwing Lair/2 35.2,42.7 |c
step
Walk through the Halls of Strife. |goto Blackwing Lair/2 27.7,57.3 |c
step
If you are a rogue, you will be able to deactivate the devices.
For anyone else...
Fight your way to the doorway and up the ramp. _DO NOT STOP!_ |goto Blackwing Lair/2 49.2,79.8 |c
step
kill Broodlord Lashlayer##12017 |goto Blackwing Lair/3 50.6,61.4
|tip This is pretty much a basic fight.
He will have several abilities that knock you back.
confirm
step
Pass through the doorway here. |goto Blackwing Lair/3 47.7,55.4 |c
step
Clear the room and wait for _Firemaw_ to come down the ramp.
kill Firemaw##11983 |goto Blackwing Lair/3 40.4,32.8
confirm
step
|goto Blackwing Lair/3 35.5,37.6
Go up the large ramp here. |goto Blackwing Lair/4 |c
step
Climb the ramp up here. |goto Blackwing Lair/4 31.9,48.8 |c
step
Once you get up the ramp, There will be two dragons.
_Ebonroc_ is a bit tough, you will need heavy DPS to take him down.
_Flamegor_ deals a decent amount of damage.
Pull them one at a time into a corner to avoid pulling both.
kill Ebonroc##14601
kill Flamegor##11981
confirm
step
Go through the door way. |goto Blackwing Lair/4 42.6,56.1 |c
step
click Lever##245102  |goto Blackwing Lair/4 49.8,70.3
kill Chromaggus##14020
You will want to dps him down as fast as possible.
Dispel any effects that you can. He puts up Magic debuffs, curses and diseases.
collect Whistle of Chromatic Bone##93038
step
Use your Whistle of Chromatic Bone. |use Whistle of Chromatic Bone##93038
learnpet Chrominius##68662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Crimson Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Crimson Whelpling",
model={6290},
pet=58,
},[[
step
Kill any and all mobs to farm for your Tiny Crimson Whelpling
|tip This has a .01% drop rate, you may be farming for a while.
collect 1 Tiny Crimson Whelpling##8499 |goto Wetlands 56.2,63.0
step
learnpet Crimson Whelpling##7544 |use Tiny Crimson Whelpling##8499
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Dark Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Dark Whelpling",
model={6288},
pet=56,
},[[
step
kill Ebon Whelp##42042
collect 1 Dark Whelpling##10822 |goto Wetlands 64.6,50.6
|tip This has a .09% drop rate, you may be farming for a while
step
learnpet Dark Whelpling##7543 |use Dark Whelpling##10822
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Death Talon Whelpguard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Death Talon Whelpguard",
model={46905},
pet=1153,
},[[
step
label "bwl"
click Orb of Command##179879 |goto Burning Steppes/14 64.2,71.0
Place your hand on the orb. |goto Blackwing Lair |noway |c
step
kill Grethok the Controller##12557 |goto Blackwing Lair/1 35.4,67.2
Let Razorgore come to you before clicking the _Orb of Domination_.
click Orb of Domination##177808
Destroy the eggs, then defeat Razorgore.
kill Razorgore the Untamed##12435+
confirm
step
Enter the doorway. |goto Blackwing Lair 33.9,43.3 |c
talk Vaelastrasz the Corrupt##13020 |goto Blackwing Lair 34.3,28.6
Tell them that you can't.
You will fight after a short speech.
Click here when you have won. |confirm
step
|goto Blackwing Lair 37.1,11.3 |n
Go up the ramp here. |goto Blackwing Lair/2 |noway |c
step
Pass through this hallway. |goto Blackwing Lair/2 35.2,42.7 |c
step
Walk through the Halls of Strife. |goto Blackwing Lair/2 27.7,57.3 |c
step
If you are a rogue, you will be able to deactivate the devices.
For anyone else...
Fight your way to the doorway and up the ramp. _DO NOT STOP!_ |goto Blackwing Lair/2 49.2,79.8 |c
step
kill Broodlord Lashlayer##12017
|tip This is pretty much a basic fight.
He will have several abilities that knock you back.
collect Blackwing Banner##93037 |goto Blackwing Lair/3 50.6,61.4
step
Use your Blackwing Banner. |use Blackwing Banner##93037
learnpet Death Talon Whelpguard##68663
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emerald Proto-Whelp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Emerald Proto-Whelp",
model={46954},
pet=1167,
},[[
step
Challenge one to a pet battle and capture it
|tip The Emerald Proto-Whelps in the area are around level 22.
learnpet Emerald Proto-Whelp##68850 |goto Sholazar Basin 46.0,24.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emerald Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Emerald Whelpling",
model={6291},
pet=59,
},[[
step
kill Noxious Whelp##39384+
|tip This has a .09% drop rate, you may be farming for a while
collect 1 Emerald Whelpling##8498 |goto Feralas 48.8,9.0
step
learnpet Emerald Whelpling##7545 |use Emerald Whelpling##8498
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Essence of Competition",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Essence of Competition",
model={24620},
pet=180,
},[[
step
This pet is available only to people who participated in the Beijing 2008 Summer Olympics event in World of Warcraft.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Essence of Competition##27346
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Infinite Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Infinite Whelpling",
model={47636},
pet=1161,
},[[
step
Challenge one to a pet battle and capture it
|tip The Infinite Whelplings in the area are around level 14.
learnpet Infinite Whelpling##68820 |goto Tanaris 62.5,50.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Deathwing",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Lil' Deathwing",
model={35338},
pet=268,
},[[
step
This pet is available only to people who bought the Collector's Edition of the Cataclysm expansion pack.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Lil' Deathwing##46896
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Netherwhelp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Netherwhelp",
model={17723},
pet=131,
},[[
step
This pet is available only to people who bought the Collector's Edition of the Burning Crusade expansion pack.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Netherwhelp##18381
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Nexus Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Nexus Whelpling",
model={47635},
pet=1165,
},[[
step
Challenge one to a pet battle and capture it
|tip The Nexus Whelplings around the area are level 21.
learnpet Nexus Whelpling##68845 |goto Borean Tundra 34.1,25.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Onyxian Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Onyxian Whelpling",
model={30356},
pet=243,
},[[
step
This pet was available only to those who attended the World of Warcraft 5th Anniversary Event.
learnpet Onyxian Whelpling##36607
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Proto-Drake Whelp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Proto-Drake Whelp",
model={28217},
pet=196,
},[[
step
This pet requires you to have access to the _Oracle Dailies_ in _Sholazar Basin_, or you can buy it from the Auction House
|tip In order to get a Cobra Hatchling, you will need to be at least Revered with The Oracles.
confirm
step
Routing to proper section. |next "daily" |only if completedq(12695)
Routing to proper section. |next "prequest" |only if not completedq(12695)
Routing to proper section. |next "egg" |only if rep ('The Oracles')>=Revered
step
label "prequest"
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin,50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
stickystart "hardcharge"
stickystart "hardknucklemat"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
label "hardcharge"
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
label "hardknucklemat"
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
|tip A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
step
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 5 |walk
Follow the path down |goto 57.1,79.3
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
Go outside |goto 55.0,69.1
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533
turnin The Sapphire Queen##12534
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
stickystart "skycrys"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
label "skycrys"
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
step
When you jump off the crocodile:
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
stickystart "shincobra"
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
label "shincobra"
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
stickystart "frenzscav"
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
label "frenzscav"
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave here
Follow the path inside the cave up to 72.2,57.3
kill Artruis the Heartless |q 12581/1 |goto 70.8,58.7
|tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.
|tip Killing Zepik the Gorloc Hunter will make you allied with The Oracles.
|tip Killing Jaloot will make you allied with the Frenzyheart Tribe.
Click Artruis's Phylactery that spawns after the fight
turnin A Hero's Burden##12581
If you kill Zepik the Gorloc Hunter:
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582
accept Return of the Lich Hunter##12692
If you kill Jaloot:
talk Jaloot##28667
accept Hand of the Oracles##12689
accept Return of the Friendly Dryskin##12695
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4
step
At this point, you will need to dailies to get to revered.
Click here to continue. |confirm
step
label "daily"
Enter the cave here |goto Sholazar Basin,70.8,58.7 < 5 |c |walk
only if rep ('The Oracles') < Friendly
step
Follow the path inside the cave up to 72.2,57.3
kill Artruis the Heartless##28659
|tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
talk Jaloot##28667
accept Hand of the Oracles##12689 |instant
accept Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4 |only if not ZGV.completedQuests[12695]
accept Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
Tell him you need to find Lafoo
collect Lafoo's Bug Bag##38622 |q 12704 |goto 54.6,56.4
step
talk Oracle Soo-nee##29006
|tip You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Cleansing Song##12735 |goto 53.3,56.5 |or
accept Song of Fecundity##12737 |goto 53.3,56.5 |or
accept Song of Reflection##12736 |goto 53.3,56.5 |or
accept Song of Wind and Water##12726 |goto 53.3,56.5 |or
step
talk Oracle Soo-dow##29149
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Mastery of the Crystals##12761 |goto 54.2,53.8 |or
accept Power of the Great Ones##12762 |goto 54.2,53.8 |or
accept Will of the Titans##12705 |goto 54.2,53.8 |or
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12704/1 |goto 52.4,53.2
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Atha |q 12735/1 |goto 42.7,42.8
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Ha-Khalan |q 12735/2 |goto 49.4,62.7
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Koosu |q 12735/3 |goto 48.8,70.5
step
Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
Play the Song of Fecundity 8 Times |q 12737/1 |goto 26.2,37.1
step
Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Glimmering Pillar |q 12736/1 |goto 50.0,37.4
step
Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.6,52.3
step
Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.4,74.7
step
Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.3,79.4
step
Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
Haiphoon has 2 forms: Water and Air
|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
Devour 3 Aqueous Spirits |q 12726/1 |goto 26.2,37.1
Devour 3 Storm Revenants |q 12726/2 |goto 26.2,37.1
step
Click the Sparktouched Crystal Defenses
|tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.0,75.7
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.0,75.7
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.0,75.7
step
Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
Use your crystals near Frenzyheart mobs around this area
Kill 50 Frenzyheart Attackers |q 12761/1 |goto 22.2,78.0
step
Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.5,60.2
stickystart "taintcry"
step
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
step
label "taintcry"
kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
collect 1 Tainted Crystal##39266 |q 12705 |goto 22.9,76.0
step
Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
Take control of Soo-holu |invehicle |c |q 12705 |goto 33.7,75.0
step
Use Soo-holu's abilities to kill Frenzyheart mobs around this area
kill 50 Frenzyheart Attacker |q 12705/1 |goto 22.2,78.0
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |goto 33.5,74.8
turnin Power of the Great Ones##12762 |goto 33.5,74.8
turnin Will of the Titans##12705 |goto 33.5,74.8
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Cleansing Song##12735 |goto 53.3,56.5
turnin Song of Fecundity##12737 |goto 53.3,56.5
turnin Song of Reflection##12736 |goto 53.3,56.5
turnin Song of Wind and Water##12726 |goto 53.3,56.5
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
step
Click here to reset the daily quests. |next "daily" |confirm
Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
talk Geen##31910
buy 1 Mysterious Egg##39878 |goto Sholazar Basin,54.6,56.2
step
You will have to wait _3 days (real time)_ for this to hatch.
|tip The drop rate for this pet is random. If you don't get it the first time, you have to buy another eggs and wait 3 more days to try again
use Cracked Egg##39883
collect 1 Proto-Drake Whelp##44721
step
learnpet Proto-Drake Whelp##32592 |use Proto-Drake Whelp##44721
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Soul of the Aspects",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Soul of the Aspects",
model={40019},
pet=347,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Soul of the Aspects##78916
step
learnpet Soul of the Aspects##58163 |use Soul of the Aspects##78916
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Spawn of Onyxia",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Spawn of Onyxia",
model={42745},
pet=489,
},[[
step
Challenge one to a pet battle and capture it
|tip The Spawn of Onyxia are around level 12.
|tip They are a rare spawn, so you may have to wait around a while for one.
learnpet Spawn of Onyxia##62201 |goto Dustwallow Marsh 52.2,75.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Spirit of Competition",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Spirit of Competition",
model={24393},
pet=179,
},[[
step
This pet is available only to people who participated in the Beijing 2008 Summer Olympics event in World of Warcraft
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Spirit of Competition##27217
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Sprite Darter Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Sprite Darter Hatchling",
model={6294},
pet=87,
},[[
step
kill Sprite Darter##5278
collect 1 Sprite Darter Egg##11474 |goto Feralas 71.6,43.6
|tip This has a .05% drop rate, you may be farming here for a while
step
learnpet Sprite Darter Hatchling##9662 |use Sprite Darter Egg##11474
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Tiny Green Dragon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Tiny Green Dragon",
model={14778},
pet=757,
},[[
step
This pet was only available to those in China during the iCoke event.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Tiny Green Dragon##14755
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Tiny Red Dragon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Tiny Red Dragon",
model={14779},
pet=758,
},[[
step
This pet was only available to those in China during the iCoke event.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Tiny Red Dragon##14756
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Untamed Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Untamed Hatchling",
model={46903},
pet=1151,
},[[
step
label "bwl"
click Orb of Command##179879 |goto Burning Steppes/14 64.2,71.0
Place your hand on the orb. |goto Blackwing Lair |noway |c
step
kill Grethok the Controller##12557 |goto Blackwing Lair/1 35.4,67.2
Let Razorgore come to you before clicking the _Orb of Domination_.
click Orb of Domination##177808
You will assume control of Razgore. Use your _Destroy Egg_ ability, which is 4 on your bar, toDestroy the Dragon Eggs on the platform that you are on.
Drop off the platform and destroy the eggs closest to you first, moving back towards the other platform as you clear.
When the Orb of Domination starts to end, move Razorgore to the back of the room.
Use any Area of Effect abilities that you have to kill the mobs around you, being careful not to damage Razorgore at all.
Before he reaches your platform again, click the Orb of Domination and continue the pattern that you are on.
_ONLY KILL THE ADDS!_ It's important that you do as little damage to Razorgor the Untamed as possible for now.
_
Once all of the eggs are destroyed, _kill Razorgore the Untamed_.
kill Razorgore the Untamed##12435+
collect Unscathed Egg##93036
step
learnpet Untamed Hatchling##68661 |use Unscathed Egg##93036
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Amethyst Shale Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Amethyst Shale Hatchling",
model={36604},
pet=838,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Amethyst Shale Hatchlings in this area are level 22-23.
learnpet Amethyst Shale Hatchling##62182 |goto Deepholm 56.7,55.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ashstone Core",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Ashstone Core",
model={46902},
pet=1150,
},[[
step
Follow the path into the Molten Core. |goto Molten Core/1 42.7,13.6 |c
step
map Molten Core/1
path follow loose;loop off;ants straight
path 42.8,31.0	39.6,38.6	37.4,45.6
path 34.1,55.8	34.2,63.5	35.6,69.2
path 43.1,71.8	47.2,72.3	54.0,75.0
path 61.1,70.8	66.1,65.9	69.8,66.1
path 72.3,72.3	74.5,71.9	75.3,65.5
path 76.5,61.3	78.1,58.1	78.0,54.3
path 75.4,50.9	72.2,51.2	69.7,53.4
path 68.5,56.6
Follow the path to _Golemagg the Incinerator_. |goto Molten Core/1 68.49,57.00 |noway |c
step
kill Golemagg the Incinerator##11988
collect Core of the Hardened Ash##93035 |goto Molten Core/1 68.5,57.0
step
Use the Core of Hardened Ash. |use Core of Hardened Ash##93035
learnpet Ashstone Core##68666
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Blossoming Ancient",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Blossoming Ancient",
model={48934},
pet=1248,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect 1 Blossoming Ancient##98550
step
learnpet Blossoming Ancient##71488 |use Blossoming Ancient##98550
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Core Hound Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Core Hound Pup",
model={30462},
pet=244,
},[[
step
This is pet is only awarded for owners of the Blizzard Authenticator.
confirm
step
|tip Check your mailbox for your prize.
collect 1 Core Hound Pup##49646
step
learnpet Core Hound Pup##36871 |use Core Hound Pup##49646
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Geode",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Crimson Geode",
model={45879},
pet=559,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Crimson Geodes in this area are level 22-23..
learnpet Crimson Geode##62927 |goto Deepholm 62.9,33.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Lasher",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Crimson Lasher",
model={38429},
pet=318,
},[[
step
You will have to do the _Firelands dailies_ quests to complete the quest _"Filling the Moonwell"_
Click here for the Firelands Pre Quests and Dailies guide. |next "Zygor's Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests" |only if ZGV.guidesets["DailiesACATA"]
Click here for the Pre Quests. |confirm
Click here if you already have the quest _Filling the Moonwell_ |next "buy" |only if completedq(29279)
step
talk Ayla Shadowstorm##53881
accept Filling the Moonwell##29279 |goto Molten Front,44.8,86.6
step
label "buy"
Earn 125 Marks of the World tree to doing Firelands daily quests.
earn 125 Mark of the World Tree##416
step
talk Matoclaw##52669
turnin Filling the Moonwell##29279 |goto Mount Hyjal 27.2,63.6
step
talk Ayla Shadowstorm##53881
buy 1 Crimson Lasher##70160 |goto Molten Front,44.8,86.6
step
learnpet Crimson Lasher##53661 |use Crimson Lasher##70160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Shale Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Crimson Shale Hatchling",
model={36605},
pet=554,
},[[
step
Enter the cave here. |goto Deepholm 58.2,25.6 < 10 |c |walk
Challenge one to a pet battle and capture it.
|tip The Crimson Shale Hatchlings in this area are level 22-23.
learnpet Crimson Shale Hatchling##62922 |goto Deepholm 62.4,27.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Emerald Shale Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Emerald Shale Hatchling",
model={36603},
pet=837,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Emerald Shale Hatchlings in this area are level 22-23..
learnpet Emerald Shale Hatchling##62915 |goto Deepholm 50.0,54.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fel Flame",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Fel Flame",
model={45923},
pet=519,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fel Flames in this area are around level 18.
learnpet Fel Flame##62621 |goto Shadowmoon Valley 49.4,36.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Frigid Frostling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Frigid Frostling",
model={31722},
pet=253,
},[[
step
Kill Ahune to get your prize
|tip This will appear in your bags once you kill Ahune and can only be won once a day
collect 1 Satchel of Chilled Goods##54536 |goto The Slave Pens 32.6,50.8
|tip Please note that this requires the Midsummer Fire Festival Holiday.
step
use Satchel of Chilled Goods##54536
collect 1 Ice Chip##53641
|tip This has a 4% chance to drop from this item
step
learnpet Frigid Frostling##40198 |use Ice Chip##53641
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Jade Tentacle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Jade Tentacle",
model={45987},
pet=856,
},[[
step
This pet can only be obtained by completing the _"Time to Open a Pet Store"_ Achievement.
learnpet Jade Tentacle##66450
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Kirin Tor Familiar",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Kirin Tor Familiar",
model={45937},
pet=199,
},[[
step
The Kirin Tor Familiar requires that you do the _Higher Learning_ achievement.
Click here to begin. |confirm
step
Warning: These books have respawn timers of about 3-4 hours (it seems to be random between those times), so this achievement may take you a while to get.
|tip The book you want won't always be there.  Fake trash books spawn to make the achievement even harder to get, but keep at it.  Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
|tip This is an achievement that you may want to dedicate a lot of time to, if you want it.
|tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide.
Good luck!
confirm
step
label "RestartHigherLearning"
Click The Schools of Arcane Magic - Illusion
|tip It looks like a brown book laying on a wooden crate.
Read The Schools of Arcane Magic - Illusion |achieve 1956/6 |goto Dalaran,64.4,52.4
Click here if the correct book isn't there |confirm
step
Click The Schools of Arcane Magic - Introduction
|tip It looks like a blue book laying on ground next to a bookshelf inside this building.
Read The Schools of Arcane Magic - Introduction |achieve 1956/1 |goto 56.6,45.6
Click here if the correct book isn't there |confirm
step
Click The Schools of Arcane Magic - Abjuration
|tip It looks like a brown book laying on ground next to a small table inside this building.
Read The Schools of Arcane Magic - Abjuration |achieve 1956/2 |goto 52.3,54.8
Click here if the correct book isn't there |confirm
step
Click The Schools of Arcane Magic - Enchantment
|tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
Read The Schools of Arcane Magic - Enchantment |achieve 1956/5 |goto 43.6,46.7
Click here if the correct book isn't there |confirm
step
Click The Schools of Arcane Magic - Transmutation
|tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.  It will be the only book on the bookshelf.
Read The Schools of Arcane Magic - Transmutation |achieve 1956/8 |goto 46.8,40.0
Click here if the correct book isn't there |confirm
step
Click The Schools of Arcane Magic - Necromancy
|tip It looks like a blue book laying on a bookshelf upstairs in this building.  It will be the only book on the bookshelf.
Read The Schools of Arcane Magic - Necromancy |achieve 1956/7 |goto 46.8,39.1
Click here if the correct book isn't there |confirm
step
Click The Schools of Arcane Magic - Conjuration
|tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
Read The Schools of Arcane Magic - Conjuration |achieve 1956/3 |goto 30.8,46.0
Click here if the correct book isn't there |confirm
step
Click The Schools of Arcane Magic - Divination
|tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
Read The Schools of Arcane Magic - Divination |achieve 1956/4 |goto 26.5,52.1
Click here if the correct book isn't there |confirm
step
Click here to proceed. |confirm
Or
Click here to go back to the beginning of this guide. |confirm |next "RestartHigherLearning"
step
use The Schools of Arcane Magic - Mastery##43824
|tip You should receive this in your mailbox
confirm
step
talk Archmage Vargoth##19481
Tell him you have _a book that may interest him_
Say _"Thank you!"_
collect 1 Kirin Tor Familiar##44738 |goto Dalaran,21.8,55.3
step
learnpet Kirin Tor Familiar##32643 |use Kirin Tor Familiar##44738
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lava Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Lava Crab",
model={28507},
pet=423,
},[[
step
Challenge one to a pet battle and capture it
|tip The Lava Crabs in this area are around level 15.
learnpet Lava Crab##61383 |goto Burning Steppes 27.2,58.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lil' Ragnaros",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Lil' Ragnaros",
model={37541},
pet=297,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Lil' Ragnaros##68385
step
learnpet Lil' Ragnaros##51600 |use Lil' Ragnaros##68385
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Oily Slimeling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Oily Slimeling",
model={42781},
pet=530,
},[[
step
Challenge one to a pet battle and capture it
|tip The Oily Slimelings in this area are around level 20-21.
learnpet Oily Slimeling##62697 |goto Borean Tundra 57.5,25.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Phoenix Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Phoenix Hatchling",
model={23574},
pet=175,
},[[
step
Use the _Dungeon Finder_ to queue for the Magisters' Terrace dungeon, or go there directly.
Click here to continue |confirm
step
kill Kael'thas Sunstrider##24664
collect Phoenix Hatchling##35504 |goto Magisters' Terrace,8.6,50.6
step
learnpet Phoenix Hatchling##26119 |use Phoenix Hatchling##35504
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ruby Sapling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Ruby Sapling",
model={42335},
pet=460,
},[[
step
Challenge one to a pet battle and capture it
|tip The Ruby Saplings are level 1.
learnpet Ruby Sapling##62020 |goto Eversong Woods 52.2,58.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Singing Sunflower",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Singing Sunflower",
model={37154},
pet=291,
},[[
step
talk Brazie the Botanist##49687
accept Basic Botany##28733 |goto Hillsbrad Foothills 33.6,49.2
step
Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_
|tip Right click on the orbs that fall onto the field
When you _gather_ enough _energy_, you can place a _plant_ on the _field_ to help your _fight against the undead_
_Sunflowers_ are used to _gather more sunlight_ that can be collected, _spitters_ are your _primary offense_ in starting out
|tip Plant at least 3 Sunflowers before any offense. The initial undead are very slow and can be killed easily. It's best to plant as many sunflowers as you can in this beginning time in order to have enough for the waves later. If you fail, you can always try again!
Massive Wave Survived |q 28733/1
step
talk Brazie the Botanist##49687
turnin Basic Botany##28733 |goto 33.6,49.2
step
talk Brazie the Botanist##49687
accept Flower Power##28617 |goto 33.6,49.2
step
Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_
|tip Right click on the orbs that fall onto the field
When you _gather_ enough _energy_, you can place a _plant_ on the _field_ to help your _fight against the undead_
_Sunflowers_ are used to _gather more sunlight_ that can be collected, _spitters_ are your _primary offense_ in starting out
|tip Plant at least 3 Sunflowers before any offense. The initial undead are very slow and can be killed easily. It's best to plant as many sunflowers as you can in this beginning time in order to have enough for the waves later. If you fail, you can always try again!
_ Massive Wave Survived_ |q 28617/1
step
talk Brazie the Botanist##49687
turnin Flower Power##28617 |goto 33.6,49.2
step
talk Brazie the Botanist##49687
accept Ghouls Hate My Grains##28744 |goto 33.6,49.2
step
Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_
|tip Right click on the orbs that fall onto the field
When you _gather_ enough _energy_, you can place a _plant_ on the _field_ to help your _fight against the undead_
_Sunflowers_ are used to _gather more sunlight_ that can be collected, _spitters_ are your _primary offense_ in starting out
|tip Plant at least 3 Sunflowers before any offense. The initial undead are very slow and can be killed easily. It's best to plant as many sunflowers as you can in this beginning time in order to have enough for the waves later. If you fail, you can always try again!
_Massive Wave Survived_ (1)|q 28744/1
_Massive Wave Survived_ (2) |q 28744/2
step
talk Brazie the Botanist##49687
turnin Ghouls Hate My Grains##28744 |goto 33.6,49.2
step
talk Brazie the Botanist##49687
accept Someone Setup the Pumpkin Bomb##28747 |goto 33.6,49.2
step
Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_
|tip Right click on the orbs that fall onto the field
Create _3 Sunflowers_ in the _back rows_ of your _field_. By then you should be dealing with about _3 undead_. Build _a few Rocknuts_ to hold them off
Next, you'll want to plant _Spitters_ to kill those _undead_, once you have enough _solar power_
Start planting more _Sunflowers_, the _key_ to _winning_ is making_ two full rows of Sunflowers_
_Balance_ making those with a _full row of Spitters_ and a _full row of Freezyas_. You should also place a _full row of Rocknuts_ for extra _protection_
Then try and _stockpile_ solar power for _Pumpkin Bombs_ and _Strangler Vines_
_Massive Wave Survived_ (1) |q 28747/1
_Massive Wave Survived_ (2) |q 28747/2
step
talk Brazie the Botanist##49687
turnin Someone Setup the Pumpkin Bomb##28747 |goto 33.6,49.2
step
talk Brazie the Botanist##49687
accept Lawn of the Dead##28748 |goto 33.6,49.2
step
Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_
|tip Right click on the orbs that fall onto the field
Create _3 Sunflowers_ in the _back rows_ of your _field_. By then you should be dealing with about _3 undead_. Build _a few Rocknuts_ to hold them off
Next, you'll want to plant _Spitters_ to kill those _undead_, once you have enough _solar power_
Start planting more _Sunflowers_, the _key_ to _winning_ is making_ two full rows of Sunflowers_
_Balance_ making those with a _full row of Spitters_ and a _full row of Freezyas_. You should also place a _full row of Rocknuts_ for extra _protection_
Then try and _stockpile_ solar power for _Pumpkin Bombs_ and _Strangler Vines_
_Warden Stillwater Defeated_ |q 28748/1
step
talk Brazie the Botanist##49687
turnin Lawn of the Dead##28748 |goto 33.6,49.2
collect 1 Brazie's Sunflower Seeds##66067 |goto 33.6,49.2
step
learnpet Singing Sunflower##51090 |use Brazie's Sunflower Seeds##66067
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Sinister Squashling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Sinister Squashling",
model={21900},
pet=162,
},[[
step
This requires the _Hallow's End_ Holiday
Use the _Dungeon Finder_ to go to the _World Event Dungeon - Headless Horsemen_ |goto Scarlet Monastery |noway |c
step
kill Headless Horseman##23682
collect 1 Loot-Filled Pumpkin##117392
|tip This will appear in your bags once you kill the Headless Horsemen and can only be won once a day
use Loot-Filled Pumpkin##54516
collect 1 Sinister Squashling##33154
step
learnpet Sinister Squashling##23909 |use Sinister Squashling##33154
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Spirit of Summer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Spirit of Summer",
model={16587},
pet=128,
},[[
step
This pet is _only availiable_ during the _ Midsummer Fire Festival_ Holiday
collect 350 Burning Embers##23247
step
Go to any Midsummer Merchant in your capital cities
talk Midsummer Merchant##26124
buy 1 Captured Flame##23083
step
learnpet Spirit of Summer##16701 |use Captured Flame##23083
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Bog Beast",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Tiny Bog Beast",
model={42202},
pet=509,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tiny Bog Beasts are around level 6.
learnpet Tiny Bog Beast##61686 |goto Wetlands 51.6,30.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Shale Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Tiny Shale Spider",
model={36637},
pet=279,
},[[
step
talk Ricket##44968
accept Underground Economy##27048 |goto Deepholm 61.3,26.2
|tip You need the quest item from this quest in order to reach this pet. If this quest isn't here you'll have to try another day, and if the mob isn't there you can keep this quest for the quest item to try again later.
step
This is up on the ledge where Pebble would be
_Face_ to the _southwest_ where you can see some _Deep Spiders_ walking around on a _ledge_ |goto 63.1,20.9
Use _Ricket's Tickers_ to _blast yourself_ over to that _ledge_ |use Ricket's Tickers##65514
|tip Be sure that you are in front of the bomb and facing the way you want to go
Reach the ledge |goto 62.3,22.1,0.5 |noway |c
step
kill Jadefang##49822
collect 1 Tiny Shale Spider##64494 |goto 61.2,22.6
|tip If this mob isn't here you'll have to try again later
step
learnpet Tiny Shale Spider##48982 |use Tiny Shale Spider##64494
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Twister",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Tiny Twister",
model={45936},
pet=445,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tiny Twisters are around level 7.
learnpet Tiny Twister##61703 |goto Arathi Highlands 46.0,52.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Topaz Shale Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Topaz Shale Hatchling",
model={36648},
pet=480,
},[[
step
Challenge one to a pet battle and capture it
|tip The Topaz Shale Hatchlings in this area are level 22-23.
learnpet Topaz Shale Hatchling##62181 |goto Deepholm 47.4,52.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Venus",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Venus",
model={45195},
pet=855,
},[[
step
Obtain 400 _unique pets_ using our Pets and Mounts guide.
That's a Lot of Pet Food |achieve 7501
step
Check your mailbox for your prize!
collect 1 Venus##89736
step
learnpet Venus##66491 |use Venus##89736
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Water Waveling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Water Waveling",
model={30159},
pet=535,
},[[
step
Challenge one to a pet battle and capture it
|tip The Water Wavelings are around level 22.
learnpet Water Waveling##62820 |goto Zul'Drak 40.1,74.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Ancona Chicken",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Ancona Chicken",
model={5369},
pet=52,
},[[
step
talk "Plucky" Johnson##41135
buy 1 Ancona Chicken##11023 |goto Thousand Needles 85.6,91.6
step
learnpet Ancona Chicken##7394 |use Ancona Chicken##11023
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Bat",
model={4732},
pet=626,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Bats in this area are around level 12-13.
learnpet Bat##61829 |goto Eastern Plaguelands 62.2,26.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Brilliant Kaliri",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Brilliant Kaliri",
model={38776},
pet=325,
},[[
step
Obtain 125 pets using our Pets and Mounts guide.
achieve 5877/1
step
|tip Check your mailbox for your prize!
collect 1 Brilliant Kaliri##71387
step
learnpet Brilliant Kaliri##54374 |use Brilliant Kaliri##71387
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cenarion Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Cenarion Hatchling",
model={16943},
pet=316,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Cenarion Hatchling##70099
step
learnpet Cenarion Hatchling##53623 |use Cenarion Hatchling##70099
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Chicken",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Chicken",
model={304},
pet=646,
},[[
step
Challenge one to a pet battle and capture it
|tip The Chicken is level 1.
learnpet Chicken##62664 |goto Elwynn Forest 77.6,66.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cockatiel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Cockatiel",
model={6191},
pet=47,
},[[
step
talk Narkk##2663
buy 1 Parrot Cage (Cockatiel)##8496. |goto The Cape of Stranglethorn 42.6,69.2
step
learnpet Cockatiel##7390 |use Parrot Cage (Cockatiel)##8496
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crested Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Crested Owl",
model={6300},
pet=507,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Crested Owl is level 1.
learnpet Crested Owl##62242 |goto Teldrassil 45.2,64.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimson Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Crimson Moth",
model={36671},
pet=421,
},[[
step
This pet will only join into a different pet battle.
confirm
step
The Crimson Moth will be attached to a Polly.
|tip They are both level 7. Defeat Polly and capture the Crimson Moth when it is below 35% health.
learnpet Crimson Moth##61314 |goto Northern Stranglethorn
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crow",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Crow",
model={36743},
pet=1068,
},[[
step
map Darkmoon Island
path follow loose;loop on;ants straight
path 59.8,65.2	58.6,69.6	63.0,76.4
path 71.0,79.6	71.8,69.6	71.6,59.6
path 64.0,57.2	61.6,43.0	53.6,23.8
path 45.2,26.0	34.8,36.4	45.8,50.8
path 44.8,60.8	35.6,74.4
Follow the path provided, killing Darkmoon Glowflies at each spot.
|tip They share spawn points with the glowflies, so wait around after you kill a group.
|tip The Crows will be around level 10.
learnpet Crow##67443
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkmoon Glowfly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Darkmoon Glowfly",
model={46171},
pet=1062,
},[[
step
Challenge one to a pet battle and capture it
|tip The Darkmoon Glowflies in the area are around level 10.
learnpet Darkmoon Glowfly##67329 |goto Darkmoon Island 58.6,63.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dragon Kite",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Dragon Kite",
model={22966},
pet=169,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Dragon Kite##25110
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dragonbone Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Dragonbone Hatchling",
model={42735},
pet=537,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Dragonbone Hatchlings are around level 22.
learnpet Dragonbone Hatchling##62852 |goto Dragonblight 62.8,67.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Firefly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Firefly",
model={20042},
pet=146,
},[[
step
kill Bogflare Needler##20197+
collect 1 Captured Firefly##29960 |goto Zangarmarsh 42.2,34.6
step
learnpet Firefly##21076 |use Captured Firefly##29960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Buzzard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Fledgling Buzzard",
model={41887},
pet=395,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fledgling Buzzards in this area are level 3-5.
learnpet Fledgling Buzzard##61171 |goto Redridge Mountains 28.9,28.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Nether Ray",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Fledgling Nether Ray",
model={45988},
pet=521,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fledgling Nether Rays in this area are around level 19.
learnpet Fledgling Nether Ray##62627 |goto Netherstorm 64.9,41.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Forest Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Forest Moth",
model={36944},
pet=478,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Forest Moth in this area are level 8.
learnpet Forest Moth##62177 |goto Desolace 56.9,46.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fungal Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Fungal Moth",
model={36944},
pet=756,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Fungal Moths are around level 23.
learnpet Fungal Moth##62916 |goto Deepholm 68.7,24.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Green Balloon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Green Balloon",
model={38340},
pet=344,
},[[
step
talk Carl Goodup##55305
buy Flimsy Green Balloon##75041 |goto Darkmoon Island 49.6,81.4
step
learnpet Green Balloon##56082 |use Flimsy Green Balloon##75041
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Green Wing Macaw",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Green Wing Macaw",
model={5207},
pet=50,
},[[
step
Traverse through the _Deadmines_
kill Defias Pirate##657+
collect 1 Parrot Cage (Green Wing Macaw)##8492 |goto The Deadmines 30.3,28.6
|tip This has a 2% drop rate. If you go through to the end of the instance, exit it and reset the dungeon. To reset a dungeon right click on your protrait and click "Reset all instances".
step
learnpet Green Wing Macaw##7387 |use Parrot Cage (Green Wing Macaw)##8492
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Grey Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Grey Moth",
model={42343},
pet=464,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Grey Moths in this area are level 1.
learnpet Grey Moth##62050 |goto Azuremyst Isle 53.1,52.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gryphon Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Gryphon Hatchling",
model={30412},
pet=245,
},[[
step
This pet can be purchased for $25.00 from the official Blizzard Store.
|tip It also includes an out of game plushie.
|tip After purchasing, check your in-game mailbox
collect Gryphon Hatchling##49662
step
learnpet Gryphon Hatchling##36908 |use Gryphon Hatchling##49662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Guardian Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Guardian Cub",
model={38359},
pet=311,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Guardian Cub##98736
step
learnpet Guardian Cub##53283 |use Guardian Cub##98736
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Highlands Turkey",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Highlands Turkey",
model={45970},
pet=645,
},[[
step
Challenge one to a pet battle and capture it
|tip The Highlands Turkeys are level 23.
learnpet Highlands Turkey##62906 |goto Twilight Highlands 29.6,31.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hippogryph Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Hippogryph Hatchling",
model={16943},
pet=130,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Hippogryph Hatchling##17255
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Horde Balloon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Horde Balloon",
model={38342},
pet=332,
},[[
step
talk Jaga##54004
accept Blown Away##29401 |goto Orgrimmar,48,47
step
Click on the _Windswept Balloon_
|tip They look like red balloons all over Orgrimmar
collect 5 Windswept Balloon##71034 |q 29401/1 |goto 50.2,49.8
step
talk Jaga##54004
turnin Blown Away##29401 |goto Orgrimmar,48,47
collect 1 Horde Balloon##72045 |goto Orgrimmar,48,47
step
learnpet Horde Balloon##54541 |use Horde Balloon##72045
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hyacinth Macaw",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Hyacinth Macaw",
model={6192},
pet=49,
},[[
step
_Kill any and all mobs here_
|tip This pet is a zone drop and it has a very low drop rate. You might be farming for this for a while.
collect 1 Parrot Cage (Hyacinth Macaw)##8494 |goto Northern Stranglethorn 60.0,70.4
step
learnpet Hyacinth Macaw##7391 |use Parrot Cage (Hyacinth Macaw)##8494
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Imperial Eagle Chick",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Imperial Eagle Chick",
model={42709},
pet=534,
},[[
step
Challenge one to a pet battle and capture it
|tip The Imperial Eagle Chick is level 21.
learnpet Imperial Eagle Chick##62819 |goto Grizzly Hills 15.2,58.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Miniwing",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Miniwing",
model={20996},
pet=149,
},[[
step
talk Skywing##22424
accept Skywing##10898 |goto Terokkar Forest 53.7,72.3
Follow Skywing and protect him
Escort Skywing |q 10898/1
step
talk Rilak the Redeemed##22292
turnin Skywing##10898 |goto Shattrath City 52.6,21.0
collect Miniwing##31760 |goto Shattrath City 52.6,21.0
step
learnpet Miniwing##22445 |use Miniwing##31760
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nether Faerie Dragon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Nether Faerie Dragon",
model={42467},
pet=557,
},[[
step
Challenge one to a pet battle and capture it
|tip The Nether Faerie Dragons are around level 11.
learnpet Nether Faerie Dragon##62395 |goto Feralas 58.8,47.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nether Ray Fry",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Nether Ray Fry",
model={25457},
pet=186,
},[[
step
In order to get this pet, you must be Exalted with the _Sha'Tari Skyguard_.
Routing to Pre Quests. |next |only if rep("Sha'tari Skyguard")<=Revered
Routing... |next "exalt" |only if rep("Sha'tari Skyguard")==Exalted
step
talk Yuula##23449
accept Threat from Above##11096 |goto Shattrath City,64.3,42.3
step
kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.8,16.1
You can find more around here [24.4,8.9]
step
talk Yuula##23449
turnin Threat from Above##11096 |goto Shattrath City,64.3,42.3
accept To Skettis!##11098 |goto Shattrath City,64.3,42.3
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest,64.5,66.7
step
talk Skyguard Handler Deesak##23415
accept Hungry Nether Rays##11093 |goto 63.5,65.8
step
talk Severin##23042
accept World of Shadows##11004 |goto 64.0,66.9
stickystart "shadodust"
step
Use your Nether Ray Cage |use Nether Ray Cage##32834
|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
kill Blackwind Warp Chaser##23219+
You can find more Warp Chasers here [64.5,84.4]
Provide Nether Ray Meals |q 11093/1 |goto 61.4,81.8
step
label "shadodust"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 6 Shadow Dust##32388 |q 11004/1 |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here[73.2,87.9]
Here[75.2,81.3]
And here [69.2,74.1]
step
talk Severin##23042
turnin World of Shadows##11004 |goto Terokkar Forest,64.0,66.9
step
talk Skyguard Handler Deesak##23415
turnin Hungry Nether Rays##11093 |goto 63.5,65.8
step
talk Sky Commander Adaris##23038
accept Secrets of the Talonpriests##11005 |goto 64.1,66.9
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |havebuff 136152 |goto 69.7,74.7
step
kill Talonpriest Zellek##23068 |q 11005/3 |goto 70.1,74.5
step
kill Talonpriest Ishaal##23066+ |q 11005/1 |goto 69.3,78.1
collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
accept Ishaal's Almanac##11021
step
kill Talonpriest Skizzik##23067+ |q 11005/2 |goto 69.8,81.8
step
talk Sky Commander Adaris##23038
turnin Secrets of the Talonpriests##11005 |goto 64.1,66.9
turnin Ishaal's Almanac##11021 |goto 64.1,66.9
accept An Ally in Lower City##11024 |goto 64.1,66.9
step
talk Rilak the Redeemed##22292
turnin An Ally in Lower City##11024 |goto Shattrath City 52.5,21.0
accept Countdown to Doom##11028 |goto Shattrath City 52.5,21.0
step
talk Nutral##18940
turnin Countdown to Doom##11028 |goto Terokkar Forest,64.1,66.9
step
talk Hazzik##23306
accept Hazzik's Bargain##11056 |goto 64.2,66.9
step
click Hazzik's Package##185954
collect Hazzik's Package##32687 |q 11056/1 |goto 74.8,80.1
step
talk Hazzik##23306
turnin Hazzik's Bargain##11056 |goto 64.3,66.9
accept A Shabby Disguise##11029 |goto 64.3,66.9
step
Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
Wear the Shabby Arakkoa Disguise |havebuff 133707 |goto 66.2,77.5
step
talk Sahaak##23363
buy Adversarial Bloodlines##32742 |q 11029 |goto 67.0,79.7
step
talk Hazzik##23306
turnin A Shabby Disguise##11029 |goto 64.3,66.9
accept Adversarial Blood##11885 |goto 64.3,66.9
step
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388 |q 11885 |goto Terokkar Forest,61.6,75.3 |future
You can find more here [69.5,85.5]
Here[73.2,87.9]
Here[75.2,81.3]
And here [69.2,74.1]
step
talk Severin##23042
accept More Shadow Dust##11006 |goto 64.0,66.9 |instant
collect 2 Elixir of Shadows##32446+ |q 11885 |goto 64.0,66.9 |future
step
This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
confirm always
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |havebuff 136152
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here[73.2,87.9]
Here[75.2,81.3]
And here [69.2,74.1]
step
click Skull Pile##185913
|tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161 |q 11885/1 |goto 69.7,74.7
collect Akkarai's Talons##32715
kill Karrog##23165 |q 11885/2 |goto 69.7,74.7
collect Karrog's Spine##32717
kill Gezzarak the Huntress##23163 |q 11885/3 |goto 69.7,74.7
collect Gezzarak's Claws##32716
kill Vakkiz the Windrager##23204 |q 11885/4 |goto 69.7,74.7
collect Vakkiz's Scale##32718
You can find more skull piles here: [70.1,79.5]
Here [73.5,80.7]
Here [70.2,83.3]
step
talk Hazzik##23306
turnin Adversarial Blood##11885 |goto 64.2,66.9
accept Tokens of the Descendants##11074 |goto 64.2,66.9 |instant
step
talk Sky Commander Adaris##23038
accept Terokk's Downfall##11073 |goto 64.1,66.9
step
click Skull Pile##185913 |goto 66.2,77.5
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
confirm always
step
talk Sky Commander Adaris##23038
turnin Terokk's Downfall##11073 |goto 64.1,66.9
step
label "menu"
You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
Click here to do the Dailys and then grind |confirm always |next "dailies" |or
or
Click here to grind for reputation |confirm always |next "grind" |or
step
label "dailies"
talk Sky Sergeant Doryn##23048
accept Fires Over Skettis##11008 |goto Terokkar Forest,64.5,66.7
step
Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto 63.1,80.0
You can find more eggs here:  goto [61.3,79.9]
Here [67.5,79.3]
Here [68.0,85.6]
And here [70.3,84.5]
step
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto 64.5,66.7
step
talk Skyguard Prisoner##23383
accept Escape from Skettis##11085 |goto 61.0,75.6
He can also be found here: [68.4,74.0]
And here: [75.0,86.5]
step
Escort the Skyguard Prisoner to the bottom of the bridge
|tip Help him kill any mobs on the way down.
Rescue the Skyguard Prisoner. |q 11085/1
step
talk Sky Sergeant Doryn##23048
turnin Escape from Skettis##11085 |goto 64.5,66.7
step
label "grind"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388 |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here[73.2,87.9]
Here[75.2,81.3]
And here [69.2,74.1]
step
talk Severin##23042
accept More Shadow Dust##11006 |instant |n
collect 2 Elixir of Shadows##32446 |goto 64.0,66.9
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |havebuff 136152
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here[73.2,87.9]
Here[75.2,81.3]
And here [69.2,74.1]
step
click Skull Pile##185913
|tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161
collect Akkarai's Talons##32715 |goto 69.7,74.7
kill Karrog##23165
collect Karrog's Spine##32717 |goto 69.7,74.7
kill Gezzarak the Huntress##23163
collect Gezzarak's Claws##32716 |goto 69.7,74.7
kill Vakkiz the Windrager##23204
collect Vakkiz's Scale##32718 |goto 69.7,74.7
You can find more skull piles here: [70.1,79.5]
Here [73.5,80.7]
Here [70.2,83.3]
step
talk Hazzik##23306
accept Tokens of the Descendants##11074 |instant |n
collect Time-Lost Offering##32720 |goto Terokkar Forest,64.3,66.9
step
click Skull Pile##185913 |goto 66.2,77.5
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
|tip Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
confirm always
|next "menu" |only if rep("Sha'tari Skyguard")<=Revered
|next |only if rep("Sha'tari Skyguard")==Exalted
step
label "exalt"
talk Grella##23367
buy Nether Ray Fry##38628 |goto 64.3,66.2
step
learnpet Nether Ray Fry##28470 |use Nether Ray Fry##38628
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Oasis Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Oasis Moth",
model={36944},
pet=544,
},[[
step
Challenge one to a pet battle and capture it
|tip The Oasis Moths are around level 23.
learnpet Oasis Moth##62895 |goto Uldum 57.9,24.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Parrot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Parrot",
model={6189},
pet=403,
},[[
step
Challenge one to a pet battle and capture it
|tip The Parrots in this area are around level 15.
learnpet Parrot##61313 |goto Un'Goro Crater 73.0,69.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Polly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Polly",
model={42509},
pet=409,
},[[
step
Challenge one to a pet battle and capture it
|tip Polly is a level 8 Creature flying in circles around this point.
learnpet Polly##61322 |goto Northern Stranglethorn 50.8,66.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Red Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Red Moth",
model={19986},
pet=139,
},[[
step
talk Dealer Rashaad##20980
buy 1 Red Moth Egg##29902 |goto Netherstorm 43.4,35.2
step
learnpet Red Moth##21009 |use Red Moth Egg##29902
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sea Gull",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Sea Gull",
model={45995},
pet=560,
},[[
step
Challenge one to a pet battle and capture it
|tip The Sea Gulls are around level 13.
learnpet Sea Gull##62953 |goto Tanaris 57.1,33.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Senegal",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Senegal",
model={6190},
pet=51,
},[[
step
talk Narkk##2663
buy 1 Parrot Cage (Senegal)##8495 |goto The Cape of Stranglethorn 42.6,69.2
step
learnpet Senegal##7389 |use Parrot Cage (Senegal)##8495
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Silky Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Silky Moth",
model={36944},
pet=503,
},[[
step
Challenge one to a pet battle and capture it
|tip The Silky Moths in this are are around level 15.
learnpet Silky Moth##62373 |goto Un'Goro Crater 51.8,72.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Snowy Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Snowy Owl",
model={6298},
pet=69,
},[[
step
This pet is only available during the Winter season.
confirm
step
Challenge one to a pet battle and capture it
|tip The Snowy Owls in this area are around level 13.
learnpet Snowy Owl##7554 |goto Winterspring
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Swamp Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Swamp Moth",
model={36944},
pet=402,
},[[
step
Challenge one to a pet battle and capture it
|tip The Swamp Moths are level 14.
learnpet Swamp Moth##61370 |goto Swamp of Sorrows 39.6,52.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tainted Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Tainted Moth",
model={36944},
pet=498,
},[[
step
Challenge one to a pet battle and capture it
|tip The Tainted Moths are around level 14.
learnpet Tainted Moth##62315 |goto Felwood 39.0,68.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tickbird Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Tickbird Hatchling",
model={62217},
pet=194,
},[[
step
In order to get the _Tickbird Hatchling_, you will need to be aligned with the Oracles.  Do the Pre-Quests in the section below.
Routing to proper section |next "prequests" |only if not completedq(12695)
Routing to proper section |next "daily" |only if completedq(12695)
step
label "prequests"
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin,50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
stickystart "chargehard"
stickystart "knuckmat"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
label "chargehard"
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
label "knuckmat"
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
|tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
step
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 5 |walk
Follow the path down |goto 57.1,79.3
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
Go outside |goto 55.0,69.1
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533
turnin The Sapphire Queen##12534
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
stickystart "skycry"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
label "skycry"
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
step
When you jump off the crocodile:
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
stickystart "shintrea"
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
label "shintrea"
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
stickystart "frenhart"
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
label "frenhart"
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave here
Follow the path inside the cave up to |goto 72.2,57.3
kill Artruis the Heartless |q 12581/1 |goto 70.8,58.7
|tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
Click Artruis's Phylactery that spawns after the fight
turnin A Hero's Burden##12581
If you kill Zepik the Gorloc Hunter:
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582
accept Return of the Lich Hunter##12692
If you kill Jaloot:
talk Jaloot##28667
accept Hand of the Oracles##12689
accept Return of the Friendly Dryskin##12695
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4
step
At this point, you will need to dailies to get to revered.
Click here to continue. |confirm
step
label "daily"
Enter the cave here |goto Sholazar Basin,70.8,58.7 < 5 |c |walk
only if rep ('The Oracles') < Friendly
step
Follow the path inside the cave up to |goto 72.2,57.3
kill Artruis the Heartless##28659
|tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
talk Jaloot##28667
accept Hand of the Oracles##12689 |instant
accept Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4 |only if not ZGV.completedQuests[12695]
accept Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
Tell him you need to find Lafoo
collect Lafoo's Bug Bag##38622 |q 12704
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Cleansing Song##12735 |goto 53.3,56.5 |or
accept Song of Fecundity##12737 |goto 53.3,56.5 |or
accept Song of Reflection##12736 |goto 53.3,56.5 |or
accept Song of Wind and Water##12726 |goto 53.3,56.5 |or
step
talk Oracle Soo-dow##29149
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Mastery of the Crystals##12761 |goto 54.2,53.8 |or
accept Power of the Great Ones##12762 |goto 54.2,53.8 |or
accept Will of the Titans##12705 |goto 54.2,53.8 |or
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12704/1 |goto 52.4,53.2
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Atha |q 12735/1 |goto 42.7,42.8
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Ha-Khalan |q 12735/2 |goto 49.4,62.7
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Koosu |q 12735/3 |goto 48.8,70.5
step
Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
Play the Song of Fecundity 8 Times |q 12737/1 |goto 26.2,37.1
step
Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Glimmering Pillar |q 12736/1 |goto 50.0,37.4
step
Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.6,52.3
step
Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.4,74.7
step
Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.3,79.4
step
Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
Haiphoon has 2 forms: Water and Air
|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
Devour 3 Aqueous Spirits |q 12726/1 |goto 26.2,37.1
Devour 3 Storm Revenants |q 12726/2 |goto 26.2,37.1
step
Click the Sparktouched Crystal Defenses
|tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.0,75.7
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.0,75.7
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.0,75.7
step
Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
Use your crystals near Frenzyheart mobs around this area
Kill 50 Frenzyheart Attackers |q 12761/1 |goto 22.2,78.0
step
Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.5,60.2
stickystart "frenatt"
step
kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
collect 1 Tainted Crystal##39266 |q 12705 |goto 22.9,76.0
step
label "frenatt"
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
step
Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
Take control of Soo-holu |invehicle |c |q 12705 |goto 33.7,75.0
step
Use Soo-holu's abilities to kill Frenzyheart mobs around this area
kill 50 Frenzyheart Attacker |q 12705/1 |goto 22.2,78.0
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |goto 33.5,74.8
turnin Power of the Great Ones##12762 |goto 33.5,74.8
turnin Will of the Titans##12705 |goto 33.5,74.8
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Cleansing Song##12735 |goto 53.3,56.5
turnin Song of Fecundity##12737 |goto 53.3,56.5
turnin Song of Reflection##12736 |goto 53.3,56.5
turnin Song of Wind and Water##12726 |goto 53.3,56.5
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
step
Click here to reset the daily quests. |next "daily" |confirm
Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
talk Geen##31910
buy 1 Mysterious Egg##39878 |goto Sholazar Basin,54.6,56.2
step
You will have to wait _3 days (real time)_ for this to hatch.
|tip The drop rate for these pets is random. To get both pets you have to do this at least twice
use Cracked Egg##39883
collect 1 White Tickbird Hatchling##39899
collect 1 Tickbird Hatchling##39896
collect 1 Cobra Hatchling##39898
step
learnpet White Tickbird Hatchling##32590 |use White Tickbird Hatchling##39899
learnpet Tickbird Hatchling##32589 |use Tickbird Hatchling##39896
learnpet Cobra Hatchling##32591 |use Cobra Hatchling##39898
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tiny Sporebat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Tiny Sporebat",
model={22855},
pet=167,
},[[
step
You will need to complete the Sporeggar quest chain and dailies in Zangarmarsh to reach Exalted.
Routing to exalted section. |next "exalted" |only if rep('Sporeggar')==Exalted
Click here to continue to Sporeggar reputation section |confirm
step
label "back up"
talk Fahssn##17923
accept The Sporelings' Plight##9739 |goto Zangarmarsh,19.1,64.2 |repeatable
accept Natural Enemies##9743 |goto Zangarmarsh,19.1,64.2 |repeatable
Turn in these two quests 4 times to go from unfriendly to friendly.
only if rep('Sporeggar')<=Neutral
step
kill Starving Fungal Giant##18125+, Starving Bog Lord##19519+
collect 6 Bog Lord Tendril##24291 |goto 16.0,60.3
collect Mature Spore Sac##24290 |goto 16.0,60.3 |tip They are on the ground throughout the area.
only if rep('Sporeggar')<=Neutral
step
talk Fahssn##17923
turnin The Sporelings' Plight##9739 |goto Zangarmarsh,19.1,64.2 |repeatable
turnin Natural Enemies##9743 |goto Zangarmarsh,19.1,64.2 |repeatable
only if rep('Sporeggar')<=Neutral
|next "back up" |only if rep('Sporeggar')<=Neutral
step
Once you have reached honored, you can farm the quest _Now That We're Friends..._ and _Bring Me A Shrubbery!_
Click here if you want to grind out Sanguine Hibiscus. |confirm always |next "hibiscus_1"
or
Click here if you want to grind Naga mobs.|confirm always |next "grind_1"
step
label "hibiscus"
|goto 50.3,40.9 |n
Swim down through the pipe underwater to the other side. |goto 51.9,38.1 < 5 |c |walk
step
Enter the Underbog |goto Zangarmarsh,54.2,34.4 < 5 |c |walk
only if rep('Sporeggar')>=Friendly
step
label "hibiscus_1"
talk T'shu##54674
accept Bring Me A Shrubbery!##29691 |goto The Underbog 31.5,65.3
step
You can find the Sanguine Hibiscus on the ground scattered through out the Underbog, they look like red flowers.
You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
collect 5 Sanguine Hibiscus##24246 |q 29691/1
step
talk T'shu##54674
turnin Bring Me A Shrubbery!##29691 |goto The Underbog 31.5,65.3
step
label "hibiscus_r"
Click here to go farming for more _Sanguine Hibiscus_ |confirm
or
Click here if you would like to farm Naga for more reputation |confirm |next "grind_1"
step
You can find the Sanguine Hibiscus on the ground scattered through out the instance, they look like red flowers.
You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
collect Sanguine Hibiscus##24246 |n
You need 5 Sanguine Hibiscus for 750 Reputation.
40 Sanguine Hibiscus = 6,000 Reputation.
80 Sanguine Hibiscus = 12,000 Reputation.
Click when you are ready to turn in |confirm
only if rep('Sporeggar')>=Friendly
step
talk T'shu##54674
accept Bring Me Another Shrubbery!##29692 |goto The Underbog 31.5,65.3 |instant |repeatable
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
step
label "grind_1"
talk Gzhun'tt##17856
accept Now That We're Friends...##9726 |goto Zangarmarsh 19.5,50.0
only if rep('Sporeggar')>=Friendly
step
label "grind_r"
talk Gzhun'tt##17856
accept Now That We're Still Friends...##9727 |goto 19.5,50.0 |repeatable
or
Click here to go farming for _Sanguine Hibiscus_ |confirm |next "hibiscus_1"
only if rep('Sporeggar')>=Friendly
step
kill 12 Bloodscale Slavedriver##18089+ |q 9726/1 |goto Zangarmarsh,26.9,41.7
kill 6 Bloodscale Enchantress##18088+ |q 9726/2 |goto Zangarmarsh,26.9,41.7
only if havequest (9726)
step
kill 12 Bloodscale Slavedriver##18089+ |q 9727/1 |goto Zangarmarsh,26.9,41.7
kill 6 Bloodscale Enchantress##18088+ |q 9727/2 |goto Zangarmarsh,26.9,41.7
only if havequest (9727)
|next "grind_2"
step
talk Gzhun'tt##17856
turnin Now That We're Friends...##9726 |goto 19.5,50.0
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
only if havequest (9726)
step
label "grind_2"
talk Gzhun'tt##17856
turnin Now That We're Still Friends...##9727 |goto 19.5,50.0
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
only if havequest (9727)
step
label "exalted"
#include "misc_rep_mount",rep="Sporeggar"
|tip You will have to complete the Sporeggar quest chain and dailies in Zangarmarsh to reach Exalted
collect 30 Glowcap##24245 |tip These can be found all over Zangarmarsh, or you can pick them in The Underbog
step
talk Mycah##18382
buy 1 Tiny Sporebat##34478 |goto Zangarmarsh,17.8,51.2
step
learnpet Tiny Sporebat##25062 |use Tiny Sporebat##34478
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Turkey",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Turkey",
model={45968},
pet=525,
},[[
step
Challenge one to a pet battle and capture it
|tip The Turkeys in this area are level 21.
learnpet Turkey##62648 |goto Howling Fjord 59.8,61.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tuskarr Kite",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Tuskarr Kite",
model={30157},
pet=241,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Tuskarr Kite##36482
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Tickbird Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: White Tickbird Hatchling",
model={28215},
pet=195,
},[[
step
In order to get the Tickbird Hatchling, you will need to be aligned with the Oracles.  Do the Pre-Quests in the section below.
If you have done the Pre-quest, click here to go to the daily quests. |next "daily" |confirm
If you need to do the Pre-Quests in order to unlock the daily quests, click here. |next "prequest" |confirm
step
label "prequest"
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin,50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
stickystart "knuckchar"
stickystart "sofmat"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
label "knuckchar"
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
label "sofmat"
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
step
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 5 |walk
Follow the path down |goto 57.1,79.3
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
Go outside |goto 55.0,69.1
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533
turnin The Sapphire Queen##12534
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
stickystart "skyclust"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
label "skyclust"
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
step
When you jump off the crocodile:
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
stickystart "mistgor"
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
label "mistgor"
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
stickystart "epcobra"
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
label "epcobra"
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
stickystart "frensc"
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
label "frensc"
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave here
Follow the path inside the cave up to 72.2,57.3
kill Artruis the Heartless |q 12581/1 |goto 70.8,58.7
|tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
Click Artruis's Phylactery that spawns after the fight
turnin A Hero's Burden##12581
If you kill Zepik the Gorloc Hunter:
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582
accept Return of the Lich Hunter##12692
If you kill Jaloot:
talk Jaloot##28667
accept Hand of the Oracles##12689
accept Return of the Friendly Dryskin##12695
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4
step
At this point, you will need to dailies to get to revered.
Click here to continue. |confirm
step
label "daily"
Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
only if rep ('The Oracles') < Friendly
step
Follow the path inside the cave up to 72.2,57.3
kill Artruis the Heartless##28659
|tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
talk Jaloot##28667
accept Hand of the Oracles##12689 |instant
accept Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
accept Appeasing the Great Rain Stone##12704
Tell him you need to find Lafoo
collect Lafoo's Bug Bag##38622 |q 12704 |goto 54.6,56.4
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Cleansing Song##12735 |goto 53.3,56.5 |or
accept Song of Fecundity##12737 |goto 53.3,56.5 |or
accept Song of Reflection##12736 |goto 53.3,56.5 |or
accept Song of Wind and Water##12726 |goto 53.3,56.5 |or
step
talk Oracle Soo-dow##29149
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Mastery of the Crystals##12761 |goto 54.2,53.8 |or
accept Power of the Great Ones##12762 |goto 54.2,53.8 |or
accept Will of the Titans##12705 |goto 54.2,53.8 |or
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12704/1 |goto 52.4,53.2
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Atha |q 12735/1 |goto 42.7,42.8
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Ha-Khalan |q 12735/2 |goto 49.4,62.7
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Koosu |q 12735/3 |goto 48.8,70.5
step
Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
Play the Song of Fecundity 8 Times |q 12737/1 |goto 26.2,37.1
step
Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Glimmering Pillar |q 12736/1 |goto 50.0,37.4
step
Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.6,52.3
step
Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.4,74.7
step
Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.3,79.4
step
Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
Haiphoon has 2 forms: Water and Air
|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
Devour 3 Aqueous Spirits |q 12726/1 |goto 26.2,37.1
Devour 3 Storm Revenants |q 12726/2 |goto 26.2,37.1
step
Click the Sparktouched Crystal Defenses
|tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.0,75.7
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.0,75.7
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.0,75.7
step
Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
Use your crystals near Frenzyheart mobs around this area
Kill 50 Frenzyheart Attackers |q 12761/1 |goto 22.2,78.0
step
Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.5,60.2
stickystart "heartattack"
step
kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
collect 1 Tainted Crystal##39266 |q 12705 |goto 22.9,76.0
step
label "heartattack"
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
step
Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
Take control of Soo-holu |invehicle |c |q 12705 |goto 33.7,75.0
step
Use Soo-holu's abilities to kill Frenzyheart mobs around this area
kill 50 Frenzyheart Attacker |q 12705/1 |goto 22.2,78.0
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |goto 33.5,74.8
turnin Power of the Great Ones##12762 |goto 33.5,74.8
turnin Will of the Titans##12705 |goto 33.5,74.8
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Cleansing Song##12735 |goto 53.3,56.5
turnin Song of Fecundity##12737 |goto 53.3,56.5
turnin Song of Reflection##12736 |goto 53.3,56.5
turnin Song of Wind and Water##12726 |goto 53.3,56.5
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
step
Click here to reset the daily quests. |next "daily" |confirm
Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
talk Geen##31910
buy 1 Mysterious Egg##39878 |goto Sholazar Basin,54.6,56.2
step
You will have to wait _3 days (real time)_ for this to hatch.
|tip The drop rate for these pets is random. To get both pets you have to do this at least twice
use Cracked Egg##39883
collect 1 White Tickbird Hatchling##39899
collect 1 Tickbird Hatchling##39896
collect 1 Cobra Hatchling##39898
step
learnpet White Tickbird Hatchling##32590 |use White Tickbird Hatchling##39899
learnpet Tickbird Hatchling##32589 |use Tickbird Hatchling##39896
learnpet Cobra Hatchling##32591 |use Cobra Hatchling##39898
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wildhammer Gryphon Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Wildhammer Gryphon Hatchling",
model={30412},
pet=548,
},[[
step
Challenge one to a pet battle and capture it
|tip The Wildhammer Gryphon Hatchlings are level 23.
learnpet Wildhammer Gryphon Hatchling##62900 |goto Twilight Highlands 55.5,15.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Yellow Balloon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Yellow Balloon",
model={38341},
pet=345,
},[[
step
talk Carl Goodup##55305
buy Flimsy Yellow Balloon##75042 |goto Darkmoon Island 49.6,81.4
step
learnpet Yellow Balloon##56083 |use Flimsy Yellow Balloon##75042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Anubisath Idol",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Anubisath Idol",
model={46922},
pet=1155,
},[[
step
map Ahn'Qiraj/2
path follow loose;loop off;ants straight
path 43.6,41.4	46.9,41.4	48.4,46.7
path 49.1,57.0	52.8,64.1	52.8,64.1
path 49.6,64.7
Go down the ramp. |goto Ahn'Qiraj/3 |noway |c
step
map Ahn'Qiraj/3
path follow loose;loop off;ants straight
path 42.8,29.6	42.9,40.8	45.7,49.2
path 45.7,62.3
Follow the ramp down. |goto Ahn'Qiraj/1 |noway |c
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path 32.5,50.0	33.3,47.4	32.4,43.6
path 32.5,40.6	35.6,39.9	38.0,38.5
path 41.5,36.2	43.5,33.0	44.7,28.1
path 45.5,22.4	47.2,19.1	49.8,15.9
path 52.7,13.8	55.2,14.1	57.8,16.3
path 59.6,18.7	61.9,24.6	56.6,33.6
path 56.0,43.9	54.6,49.5	52.1,51.2
path 49.1,51.2	45.9,52.6	45.0,54.7
path 46.1,59.5	47.3,61.0	50.3,65.6
path 56.0,67.8
Go into the open area here. |goto Ahn'Qiraj/1 57.1,70.4 <5 |noway |c
step
kill Emperor Vek'lor##15276+
kill Emperor Vek'nilash##15275+
collect Anubisath Idol##93040
step
Use your Anubisath Idol. |use Anubisath Idol##93040
learnpet Anubisath Idol##68659
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Corefire Imp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Corefire Imp",
model={46923},
pet=1149,
},[[
step
Follow the path into the Molten Core. |goto Molten Core/1 42.7,13.6 |c
step
Cross the bridge here. |goto Molten Core/1 49.5,29.9 |c
step
Cross the bridge here. |goto Molten Core/1 53.3,30.3 |c
step
Cross through the tunnel. |goto Molten Core/1 58.3,35.2 |c
step
Cross through the tunnel. |goto Molten Core/1 61.9,40.0 |c
step
kill Magmadar##11982
collect Blazing Rune##93034 |goto Molten Core/1 69.8,21.6
step
Use the Blazing Rune. |use Blazing Rune##93034
learnpet Corefire Imp##68664
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Wolvar Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Curious Wolvar Pup",
model={25384},
pet=226,
},[[
step
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
collect 1 Curious Wolvar Pup##46544
|tip Back to the Orphanage (Dalaran)
step
learnpet Curious Wolvar Pup##33529 |use Curious Wolvar Pup##46544
|tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Deathy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Deathy",
model={36896},
pet=294,
},[[
step
This pet is available only to people who attended the live stream of BlizzCon 2010.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Deathy##51122
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Feral Vermling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Feral Vermling",
model={45894},
pet=821,
},[[
step
This pet is a reward for completing the achievement "Going to Need More Leashes"
|tip Check your mailbox for the pet after gathering 250 unique pets.
learnpet Feral Vermling##63621
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Flayer Youngling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Flayer Youngling",
model={42553},
pet=514,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Flayer Younglings in this area are level 18.
learnpet Flayer Youngling##62555 |goto Terokkar Forest 58.0,13.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Gregarious Grell",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Gregarious Grell",
model={38919},
pet=333,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Gregarious Grell##54730
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Grunty",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Grunty",
model={29348},
pet=228,
},[[
step
This pet is available only to people who attended the live stream of BlizzCon 2009.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Grunty##34694
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Gurky",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Gurky",
model={15984},
pet=121,
},[[
step
This pet was offered as a fan website's gift around Christmas 2006, in Europe.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Gurky##16069
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Harbinger of Flame",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Harbinger of Flame",
model={46900},
pet=1147,
},[[
step
Follow the path into the Molten Core. |goto Molten Core/1 42.7,13.6
kill Gehennas##12259
collect Mark of Flame##93033 |goto Molten Core/1 34.7,48.3
step
Use your Mark of Flame. |use Mark of Flame##93033
learnpet Harbinger of Flame##68665
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Harpy Youngling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Harpy Youngling",
model={46936},
pet=1157,
},[[
step
Challenge one to a pet battle and capture it
|tip The Harpy Younglings in the area are around level 3.
learnpet Harpy Youngling##68804 |goto Northern Barrens 31.1,40.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Hopling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Hopling",
model={43597},
pet=835,
},[[
step
For this pet, you will need complete an achievement that requires access to the _Stormstout Brewery_, a level 85 Mists of Pandaria instance.
This achievement takes place throughout the _Stormstout Brewery_ and involves _Auntie Stormstout_, who can be found at the start of the instance.
It is recommended that you wait until the instance is cleared before doing this achievement.
confirm
step
talk Auntie Stormstout##59822 |goto Stormstout Brewery/1 76.8,35.8
buy 5 Ling-Ting's Favorite Tea##80313 |n
Ling-Ting's Favorite Tea costs 5 gold each and grants a buff that will allow you to see the _Golden Hopling_.
confirm
step
_Trickling Passage_
Use Ling-Ting's Favorite Tea |use Ling-Ting's Favorite Tea##80313
The first is at [Stormstout Brewery/1 75.6,34.3]
The second is at [Stormstout Brewery/1 72.1,56.0]
The third is at [Stormstout Brewery/1 68.5,37.6]
confirm
step
_Grain Cellar_
The fourth is at [Stormstout Brewery/1 55.6,46.0]
The fifth is at [Stormstout Brewery/1 55.8,53.4]
The sixth is at [Stormstout Brewery/1 43.8,42.5]
The seventh is at [Stormstout Brewery/1 34.9,42.2]
The eighth is at [Stormstout Brewery/1 41.7,63.1]
The ninth is at [Stormstout Brewery/1 40.9,72.7]
confirm
step
_Mama's Pantry_
The tenth is at [Stormstout Brewery/1 34.4,65.1]
The eleventh is at [Stormstout Brewery/1 30.9,86.5]
confirm
step
_Stormstout Brewhall_
The twefth is at [Stormstout Brewery/1 18.9,73.9]
The thirteenth is at [Stormstout Brewery/1 16.1,57.5]
The fourteenth is at [Stormstout Brewery/2 33.4,44.6]
The fifthteenth is at [Stormstout Brewery/2 48.3,73.3]
The sixteenth is at [Stormstout Brewery/2 69.7,34.0]
The seventeenth is at [Stormstout Brewery/2 74.8,64.9]
confirm
step
_Stormstout Brewery_
The eighteenth is at [Stormstout Brewery/2 87.5,81.7]
confirm
step
_Stormstout Brewhall_
The nineteenth is at [Stormstout Brewery/3 29.8,86.6]
the twentieth is at [Stormstout Brewery/3 26.4,44.0]
confirm
step
_Stormstout Brewery_
The twenty-first is at [Stormstout Brewery/3 42.4,24.9]
The twenty-second is at [Stormstout Brewery/3 57.6,31.1]
confirm
step
_The Great Wheel_
The twenty-third is at [Stormstout Brewery/3 59.0,48.0]
The twenty-fourth is at [Stormstout Brewery/3 69.7,33.3]
The twenty-fifth is at [Stormstout Brewery/3 63.2,68.8]
confirm
step
_Stormstout Brewery_
The twenty-sixth is at [Stormstout Brewery/3 85.0,32.1]
confirm
step
_The Tasting Room_
The twenty-seventh is at [Stormstout Brewery/4 52.8,22.5]
The twenty-eighth is at [Stormstout Brewery/4 43.0,81.1]
The twenty-ninth is at [Stormstout Brewery/4 63.9,73.5]
The thirtieth is at [Stormstout Brewery/4 48.6,52.4]
Earn the Ling-Ting's Herbal Journey achievement |achieve 6402
learnpet Hopling##64632
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Kun-Lai Runt",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Kun-Lai Runt",
model={46953},
pet=1166,
},[[
step
Challenge one to a pet battle and capture it
|tip The Kun-Lai Runts in the area are around level 23.
learnpet Kun-Lai Runt##68846 |goto Kun-Lai Summit 50.7,53.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Lurky",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Lurky",
model={15398},
pet=111,
},[[
step
This pet is available only to people who bought the European Collector's Edition of the Burning Crusade expansion pack.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Lurky##15358
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Mini Tyrael",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Mini Tyrael",
model={25900},
pet=189,
},[[
step
This pet is available only to people who attended the Blizzard World Wide Invitational 2008 in France.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Mini Tyrael##29089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkablo",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Murkablo",
model={38803},
pet=329,
},[[
step
This pet is available only to people who attended the live stream of BlizzCon 2011.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Murkablo##54438
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkalot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Murkalot",
model={51990},
pet=1364,
},[[
step
This pet is available only to people who purchase a ticket to the live stream of BlizzCon 2013.
|tip If you desperately want this pet, but did not attend the event, you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Murkalot##74405
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkimus the Gladiator",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Murkimus the Gladiator",
model={28734},
pet=217,
},[[
step
This pet was available only to those who participated in at least 200 matches in the 2009 Arena Tournament.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Murkimus the Gladiator##33578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murki",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Murki",
model={15395},
pet=1168,
},[[
step
This pet was available to Korean players during one of their promotional events.
|tip This pet is no longer available to players.
learnpet Murki##15361
confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murky",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Murky",
model={15369},
pet=107,
},[[
step
This pet is available only to people who attended the live stream of BlizzCon 2005.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Murky##15186
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Pandaren Monk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Pandaren Monk",
model={30414},
pet=248,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Pandaren Monk##49665
step
learnpet Pandaren Monk##36911 |use Pandaren Monk##49665
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Qiraji Guardling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Qiraji Guardling",
model={42523},
pet=513,
},[[
step
You can only get this pet during summer.
confirm
step
Challenge one to a pet battle and capture it
|tip The Qiraji Guardlings are around level 16.
learnpet Qiraji Guardling##62526 |goto Silithus 34.3,78.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Sporeling Sprout",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Sporeling Sprout",
model={42554},
pet=515,
},[[
step
Challenge one to a pet battle and capture it
|tip The Sporeling Sprouts are around level 18.
learnpet Sporeling Sprout##62564 |goto Zangarmarsh 15.9,61.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Stunted Yeti",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Stunted Yeti",
model={46937},
pet=1158,
},[[
step
The _Stunted Yetis_ in the area are around level 12.
learnpet Stunted Yeti##68805 |goto Feralas 53.3,56.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Arcane Eye",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Arcane Eye",
model={46941},
pet=1160,
},[[
step
Challenge one to a pet battle and capture it
|tip The Arcane Eyes in the area are around level 18.
learnpet Arcane Eye##68819 |goto Deadwind Pass 46.0,78.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Baneling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Baneling",
model={45527},
pet=903,
},[[
step
This pet is available only to people who bought the Collector's Edition of Starcraft II: Heart of the Swarm.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Baneling##66984
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Darkmoon Eye",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Darkmoon Eye",
model={46174},
pet=1063,
},[[
step
talk Jeremy Feasel##67370
accept Darkmoon Pet Battle!##32175 |goto Darkmoon Island 47.8,62.6
step
Tell him, 'Let's fight!'
Defeat Jeremy Feasel |q 32175/1
|tip His pets are all level 25 epic, so you will need to have level 25 pets in order to defeat him.
step
talk Jeremy Feasel##67370
turnin Darkmoon Pet Battle!##32175 |goto Darkmoon Island 47.8,62.6
step
Open your Darkmoon Pet Supplies |use Darkmoon Pet Supplies##91086
|tip You may not get this right away. If you don't, you will have to come back the next day and re-do this daily.
collect 1 Darkmoon Eye##91040
step
learnpet Darkmoon Eye##67332 |use Darkmoon Eye##91040
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Disgusting Oozeling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Disgusting Oozeling",
model={15436},
pet=114,
},[[
step
map Swamp of Sorrows
path follow loose; loop; ants curved
path	29.6,39.0	28.0,43.6	26.6,48.2
path	29.8,52.8	33.4,49.2	37.8,45.6
path	38.0,38.6	37.2,35.0	33.6,41.4
kill Shifting Mireglob##46997
collect Oozing Bag##20768
Open the Oozing Bag |use Oozing Bag##20768
collect 1 Disgusting Oozeling##20769
|tip This has a very low drop rate, you may be farming here for a while
step
learnpet Disgusting Oozeling##15429 |use Disgusting Oozeling##20769
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Ethereal Soul-Trader",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Ethereal Soul-Trader",
model={25002},
pet=183,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Ethereal Soul-Trader##27914
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jade Oozeling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Jade Oozeling",
model={42218},
pet=446,
},[[
step
Challenge one to a pet battle and capture it
|tip The Jade Oozelings in this area are around level 11.
learnpet Jade Oozeling##61718 |goto The Hinterlands 57.4,43.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jade Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Jade Tiger",
model={29605},
pet=231,
},[[
step
This pet is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
learnpet Jade Tiger##34930
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lofty Libram",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Lofty Libram",
model={46938},
pet=1159,
},[[
step
Challenge one to a pet battle and capture it
|tip The Lofty Librams in the area are level 6.
learnpet Lofty Libram##68806 |goto Hillsbrad Foothills/0 31.9,40.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mana Wyrmling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Mana Wyrmling",
model={19600},
pet=136,
},[[
step
talk Dealer Rashaad##20980
buy 1 Mana Wyrmling##29363 |goto Netherstorm 43.4,35.2
step
learnpet Mana Wyrmling##20408 |use Mana Wyrmling##29363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Minfernal",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Minfernal",
model={46003},
pet=500,
},[[
step
Challenge one to a pet battle and capture it
|tip The Minfernals are around level 14.
|tip These are rare spawns.
learnpet Minfernal##62317 |goto Felwood 41.9,42.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mini Diablo",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Mini Diablo",
model={10992},
pet=93,
},[[
step
These pets are available only to people who bought the Collector's Edition of World of Warcraft.
|tip You may only choose one.
|tip If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Mini Diablo##11326
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mini Mindslayer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Mini Mindslayer",
model={46909},
pet=1156,
},[[
step
kill The Prophet Skeram##15263
collect Jewel of Maddening Whispers##93041 |goto Ahn'Qiraj/2 43.4,41.5
|tip Please note that this item has an extremely low drop rate and will likely take a while to obtain.
step
Click the Jewel of Maddening Whispers |use Jewel of Maddening Whispers##93041
learnpet Mini Mindslayer##68658
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Nordrassil Wisp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Nordrassil Wisp",
model={45820},
pet=547,
},[[
step
Challenge one to a pet battle and capture it
|tip The Nordrassil Wisps in this area are around level 22.
learnpet Nordrassil Wisp##62888 |goto Mount Hyjal 58.6,27.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Onyx Panther",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Onyx Panther",
model={29819},
pet=240,
},[[
step
This pet is only available to players on the Korean servers during the 2007 Korea World Event.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Onyx Panther##35468
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Spectral Tiger Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Spectral Tiger Cub",
model={30409},
pet=242,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Spectral Tiger Cub##36511
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Toxic Wasteling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Toxic Wasteling",
model={31073},
pet=251,
},[[
step
Obtaining this pet requires the _"Love is in the Air" Holiday_
|tip Use the Dungeon Finder to go to the Crown Chemical Co. event |goto Shadowfang Keep |noway |c
step
kill Apothecary Hummel##36296, Apothecary Frye##36272, Apothecary Baxter##36565
collect 1 Toxic Wasteling##50446 |goto 39.4,50.4
|tip This has a low drop rate, you may be farming here for a while.
step
learnpet Toxic Wasteling##38374 |use Toxic Wasteling##50446
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Twilight Fiendling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Twilight Fiendling",
model={42783},
pet=552,
},[[
step
Challenge one to a pet battle and capture it
|tip The Twilight Fiendlings are level 23.
learnpet Twilight Fiendling##62914 |goto Twilight Highlands 60.0,47.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Viscidus Globule",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Viscidus Globule",
model={46924},
pet=1154,
},[[
step
map Ahn'Qiraj/2
path follow loose;loop off;ants straight
path 43.6,41.4	46.9,41.4	48.4,46.7
path 49.1,57.0	52.8,64.1	52.8,64.1
path 49.6,64.7
Go down the ramp. |goto Ahn'Qiraj/3 |noway|c
step
map Ahn'Qiraj/3
path follow loose;loop off;ants straight
path 42.8,29.6	42.9,40.8	45.7,49.2
path 45.7,62.3
Follow the ramp down. |goto Ahn'Qiraj/1 |noway |c
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path 32.7,44.6	32.3,41.0	35.0,39.4
path 37.7,38.5	40.6,36.8	42.8,35.0
path 43.8,32.2	44.7,28.3	45.5,21.8
path 47.3,19.0	50.4,15.6	52.7,14.0
path 54.9,13.9	57.3,15.7	59.4,18.2
path 61.5,21.4	64.3,21.9	66.9,21.8
path 67.2,20.1	65.7,19.4	65.9,17.7
path 67.7,18.0	68.9,18.2
Follow the path. |goto Ahn'Qiraj/1 |noway |c
step
kill Viscidus##15299
In order to defeat this boss, you will need to Freeze him.
For melee, the enchant _Elemental Force_ paired with a fast weapon will be your friend.
When he gets frozen, unleash all of your attacks until he breaks.
The first time he should split into multiple tiny blobs. Kill all that you can to prevent massive health regeneration.
Repeat this, and the second time he shatters he should die.
collect Viscidus Globule##93039 |goto Ahn'Qiraj/1 70.4,18.8
step
Use your Viscidus Globule. |use Viscidus Globule##93039
learnpet Viscidus Globule##68660
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Zergling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Zergling",
model={10993},
pet=94,
},[[
step
These pets are available only to people who bought the Collector's Edition of World of Warcraft.
|tip You may only choose one.
|tip If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Zergling##11327
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Zipao Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Zipao Tiger",
model={30402},
pet=247,
},[[
step
This pet is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
learnpet Zipao Tiger##36910
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Anodized Robo Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Anodized Robo Cub",
model={46948},
pet=1163,
},[[
step
Challenge one to a pet battle and capture it
|tip You will need to camp most likely for this pet to appear.
|tip Fight other battle pets in the area to try and force it's spawn.
|tip The Anodized Robo Cub is level 18. [58.74,45.63]
learnpet Anodized Robo Cub##68839 |goto Winterspring 61.07,50.12
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Blue Clockwork Rocket Bot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Blue Clockwork Rocket Bot",
model={22778},
pet=254,
},[[
step
talk Clockwork Assistant##29716
buy 1 Blue Clockwork Rocket Bot##54436 |goto Dalaran 44.8,46.2
step
learnpet Blue Clockwork Rocket Bot##40295 |use Blue Clockwork Rocket Bot##54436
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Cogblade Raptor",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Cogblade Raptor",
model={47021},
pet=1164,
},[[
step
Challenge one to a pet battle and capture it
|tip The Cogblade Raptors in the area are level 19.
learnpet Cogblade Raptor##68841 |goto Blade's Edge Mountains 59.6,64.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Darkmoon Tonk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Darkmoon Tonk",
model={15381},
pet=338,
},[[
step
This pet requires Darkmoon Island to be accessible.
confirm
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |walk
Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
earn 90 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy 1 Darkmoon Tonk##73903 |goto Darkmoon Island,48.2,69.6
step
learnpet Darkmoon Tonk##55356 |use Darkmoon Tonk##73903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Darkmoon Zeppelin",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Darkmoon Zeppelin",
model={17192},
pet=339,
},[[
step
This pet requires Darkmoon Island to be accessible.
confirm
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |walk
Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
earn 90 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy 1 Darkmoon Zeppelin##73905 |goto Darkmoon Island,48.2,69.6
step
learnpet Darkmoon Zeppelin##55367 |use Darkmoon Zeppelin##73905
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\De-Weaponized Mechanical Companion",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: De-Weaponized Mechanical Companion",
model={33559},
pet=262,
},[[
step
Skipping to the next step |only if skill("Engineering")<475 |next
talk Oglethorpe Obnoticus##7406 |only if skill("Engineering")>=475
learn De-Weaponized Mechanical Companion##84413 |goto The Cape of Stranglethorn,43.0,72.0 |only if skill("Engineering")>=475
Click here if you do not wish to learn this schematic |confirm |only if skill("Engineering")>=475
step
You can either _buy_ this from the _Auction House_ or _farm_ for it:
collect 1 De-Weaponized Mechanical Companion##60216 |next "bought"
Click here to farm for this pet |confirm
step
You can either _buy_ these from the _Auction House_ or _farm_ for them:
collect 12 Obsidium Bar##54849
collect 4 Handful of Obsidium Bolts##60224
collect 8 Electrified Ether##67749
collect 2 Jasper##52182
step
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(84413)==false
create De-Weaponized Mechanical Companion##84413,Engineering,1 total |only if knowspell(84413)==true
collect 1 De-Weaponized Mechanical Companion##60216
step
learnpet De-Weaponized Mechanical Companion##43916 |use De-Weaponized Mechanical Companion##60216
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Fluxfire Feline",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Fluxfire Feline",
model={46947},
pet=1162,
},[[
step
Challenge one to a pet battle and capture it
|tip The Fluxfire Felines in the area are around level 1.
learnpet Fluxfire Feline##68838 |goto New Tinkertown 36.6,52.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Landro's Lil' XT",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Landro's Lil' XT",
model={32031},
pet=285,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Landro's Lil' XT##50468
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lifelike Toad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Lifelike Toad",
model={901},
pet=95,
},[[
step
Skipping to the next _step_ |only if skill("Engineering")<1 and skill("Engineering")<265 |next
This is a very difficult _schematic_ to obtain, but it is _doable_ |only if skill("Engineering")>265
You will have to go to _Blackwing Lair_ and farm _Nefarian_ every week
|tip He has a .8% chance to drop this item so you may be farming for a while |only if skill("Engineering")>265
kill Nefarian##11583 |only if skill("Engineering")>265
collect 1 Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
use Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
Click here if you'd rather buy it or have someone else make it for you |confirm |only if skill("Engineering")>265
step
You can either buy this from the Auction House or farm for it:
collect 1 Lifelike Mechanical Toad##15996 |next "bought"
Click here to _farm_ for this _pet_ |confirm
step
You can either buy these items from the Auction House or farm for them:
collect 1 Living Essence##12803
collect 4 Thorium Widget##15994
collect 1 Gold Power Core##10558
collect 1 Rugged Leather##8170
step
Have an Engineer make this pet for you
|tip Ask in your guild or in trade chat |only if knowspell(19793)==false
create Lifelike Mechanical Toad##19793,Engineering,1 total |only if knowspell(19793)==true
collect 1 Lifelike Mechanical Toad##15996
step
label "bought"
learnpet Lifelike Toad##12419 |use Lifelike Mechanical Toad##15996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' Smoky",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Lil' Smoky",
model={8910},
pet=86,
},[[
step
Skipping to the next step |only if skill("Engineering")<205 |next
kill Peacekeeper Security Suit##6230+,Arcane Nullifier X-21##6232+,Crowd Pummeler 9-60##6229+ |only if skill("Engineering")>=205
collect 1 Schematic: Lil' Smoky##11827 |n |only if skill("Engineering")>=205
learn Lil' Smoky##15633 |goto Gnomeregan,30.2,84.4 |use Schematic: Lil' Smoky##11827 |only if skill("Engineering")>=205
Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=205
step
You can either buy this from the Auction House or farm for it:
collect 1 Lil' Smoky##11826 |next "bought"
Click here to make this pet |confirm
step
You can either buy these from the Auction House or farm for them:
collect 1 Core of Earth##7075
collect 2 Gyrochronatom##4389
collect 1 Fused Wiring##7191
collect 2 Mithril Bar##3860
collect 1 Truesilver Bar##6037
step
Have an Engineer create this pet for you
|tip Ask in your guild or in Trade Chat |only if knowspell(15633)==false
create Lil' Smoky##15633,Engineering,1 total |only if knowspell(15633)==true
collect 1 Lil' Smoky##11826
step
label "bought"
learnpet Lil' Smoky##9657 |use Lil' Smoky##11826
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' XT",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Lil' XT",
model={32031},
pet=256,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Lil' XT##54847
step
learnpet Lil' XT##40703 |use Lil' XT##54847
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Chicken",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Mechanical Chicken",
model={7920},
pet=83,
},[[
step
Going to _Find OOX-17/TN!_ |only if not completedq(351) |next "find1"
Going to next step |next |only if completedq(351)
step
Going to _Find OOX-22/FE!_ |only if not completedq(25475) |next "find2"
Going to next step |next |only if completedq(25475)
step
Going to _Find OOX-09/HL!_ |only if not completedq(485) |next "find3"
Going to the end |next "end" |only if completedq(485)
step
label "find1"
kill Centipaar Swarmer##5457+,Centipaar Sandreaver##5460+,Centipaar Worker##5458+,Centipaar Tunneler##5459+,Centipaar Wasp##5455+
collect 1 OOX-17/TN Distress Beacon##8623 |goto Tanaris 33.6,47.8
|tip This also has a high chance of dropping off of scarabs and Trolls in Zul Farrak
step
use OOX-17/TN Distress Beacon##8623
accept Find OOX-17/TN!##351
step
talk Homing Robot OOX-17/TN##7784
turnin Find OOX-17/TN!##351 |goto 59.8,64
accept Rescue OOX-17/TN!##648 |goto 59.8,64
step
_Follow_ Homing Robot OOX-17/TN and _protect_ it
Escort OOX-17/TN to safety |q 648/1
step
Going to _Find OOX-22/FE!_ |only if not completedq(25475) |next "find2"
Going to next step |next |only if completedq(25475)
step
Going to _Find OOX-09/HL!_ |only if not completedq(485) |next "find3"
Going to the end |next "end" |only if completedq(485)
step
label "find2"
kill Feral Scar Yeti##39896+
collect 1 OOX-22/FE Distress Beacon##8705 |goto Feralas,55.3,56.4
step
use OOX-22/FE Distress Beacon##8705
accept Find OOX-22/FE!##25475
step
talk Homing Robot OOX-22/FE##7807
turnin Find OOX-22/FE!##25475 |goto Feralas,53.3,55.7
accept Rescue OOX-22/FE##25476 |goto Feralas,53.3,55.7
step
_Follow_ Homing Robot OOX-22/FE and _protect_ it
Escort OOX-22/FE to safety |q 25476/1
step
Going to _Find OOX-09/HL!_ |only if not completedq(485) |next "find3"
Going to the _end_ |next "end" |only if completedq(485)
step
label "find3"
kill Saltwater Snapjaw##2505+
|tip This has a very low drop rate, you may be killing these for a while
collect 1 OOX-09/HL Distress Beacon##8704 |goto The Hinterlands,80.4,58.0
step
use OOX-09/HL Distress Beacon##8704
accept Find OOX-09/HL##485
step
talk Homing Robot OOX-09/HL##7806
turnin Find OOX-09/HL##485 |goto 49.4,37.8
accept Rescue OOX-09/HL##836 |goto 49.4,37.8
step
Follow Homing Robot OOX-09/HL and protect it
Escort OOX-09/HL to safety |q 836/1
step
label "end"
talk Oglethorpe Obnoticus##648
turnin Rescue OOX-22/FE##25476 |goto The Cape of Stranglethorn 43.0,72.0
turnin Rescue OOX-17/TN!##648 |goto The Cape of Stranglethorn 43.0,72.0
turnin Rescue OOX-09/HL##836 |goto The Cape of Stranglethorn 43.0,72.0
step
talk Oglethorpe Obnoticus##648
turnin An OOX of Your Own##3721 |goto 43.0,72.0
collect 1 Mechanical Chicken##10398 |goto 43.0,72.0
step
learnpet Mechanical Chicken##8376 |use Mechanical Chicken##10398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Pandaren Dragonling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Mechanical Pandaren Dragonling",
model={45386},
pet=844,
},[[
step
You can either create this battle pet, or purchase it from an Auction House.
|tip You must be a level 575 Engineer to create this pet.
learnpet Mechanical Pandaren Dragonling##64899
confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Squirrel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Mechanical Squirrel",
model={7937},
pet=39,
},[[
step
To get this recipe you can fish in Orgrimmar, Stormwind City, Elwynn Forest, Ironforge, Durotar, Northern Barrens, and Wailing Caverns.
|tip You can kill any mob in the world under level 16 |only if skill("Engineering")>=75
collect 1 Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
use Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
Click here if _you don't want to get the recipe_ yourself |confirm
only if skill("Engineering")>=75
step
You can either buy this item from the Auction House or farm for it:
buy 1 Mechanical Squirrel Box##4401 |next "bought"
Click here to make the Mechanical Squirrel |confirm
step
You can either buy these items from the Auction House or farm for them:
collect 1 Handful of Copper Bolts##4359
collect 1 Copper Bar##2840
collect 2 Malachite##774
step
Have an Engineer make this pet for you
|tip Ask in your guild or in trade chat |only if knowspell(3928)==false
create Mechanical Squirrel Box##3928,Engineering,1 total |only if knowspell(3928)==true
collect 1 Mechanical Squirrel Box##4401
step
label "bought"
learnpet Mechanical Squirrel##2671 |use Mechanical Squirrel Box##4401
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mini Thor",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Mini Thor",
model={32670},
pet=258,
},[[
step
This pet is available only to people who bought the Collector's Edition of Starcraft 2.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Mini Thor##42078
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Personal World Destroyer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Personal World Destroyer",
model={33512},
pet=261,
},[[
step
Skipping to the next step |next |only if skill("Engineering")<475 |next
talk Nixx Sprocketspring##8126 |only if skill("Engineering")>=475
learn Personal World Destroyer##84412 |goto Tanaris,52.2,28.2 |only if skill("Engineering")>=475
Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=475
step
You can either buy this from the Auction House or farm for it:
collect 1 Personal World Destroyer##59597 |next "bought"
Click here to make this pet |confirm
step
You can either buy these from the Auction House or farm for them:
collect 10 Obsidium Bar##54849
collect 8 Handful of Obsidium Bolts##60224
collect 8 Electrified Ether##67749
step
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(84412)==false
create Personal World Destroyer##84412,Engineering,1 total |only if knowspell(84412)==true
collect 1 Personal World Destroyer##59597
step
label "bought"
learnpet Personal World Destroyer##43800 |use Personal World Destroyer##59597
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pet Bombling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Pet Bombling",
model={8909},
pet=85,
},[[
step
Skipping to next step |only if skill("Engineering")<205 |next
Kill Mekgineer Thermaplugg |only if skill("Engineering")>=205
collect 1 Schematic: Pet Bombling##11828 |n |only if skill("Engineering")>=205
learn Pet Bombling##15628 |goto Gnomeregan,31.2,31.0 |use Schematic: Pet Bombling##11828 |only if skill("Engineering")>=205
Click here if you do not want to get this schematic |confirm |only if skill("Engineering")>=205
step
You can either buy this from the Auction House or farm for it:
collect 1 Pet Bombling##11825 |next "bought"
Click here to make this pet |confirm
step
You can either buy these from the Auction House or farm for them:
collect 1 Big Iron Bomb##4394
collect 1 Heart of Fire##7077
collect 1 Fused Wiring##7191
collect 6 Mithril Bar##3860
step
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(15628)==false
create Pet Bombling##15628,Engineering,1 total |only if knowspell(15628)==true
collect 1 Pet Bombling##11825
step
learnpet Pet Bombling##9656 |use Pet Bombling##11825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rabid Nut Varmint 5000",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Rabid Nut Varmint 5000",
model={26532},
pet=472,
},[[
step
Challenge one to a pet battle and capture it
|tip The Rabid Nut Varmint 5000s in this area are around level 5.
learnpet Rabid Nut Varmint 5000##62120 |goto Stonetalon Mountains 68.5,58.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Robo-Chick",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Robo-Chick",
model={7920},
pet=471,
},[[
step
Challenge one to a pet battle and capture it
|tip The Robo-Chicks in this area are level 17.
learnpet Robo-Chick##62119 |goto Winterspring 68.6,53.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rocket Chicken",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Rocket Chicken",
model={22903},
pet=168,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Rocket Chicken##25109
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tiny Harvester",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Tiny Harvester",
model={41886},
pet=389,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Tiny Harvester is level 3.
learnpet Tiny Harvester##61160 |goto Westfall 40.6,52.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tranquil Mechanical Yeti",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Tranquil Mechanical Yeti",
model={10269},
pet=116,
},[[
step
The recipe to make this was removed with the quest line back in 2014.
Old Engineers may still have this recipe you can either find one of these or purchase it from the AH.
confirm
step
Click here to _buy_ the  _Tranquil Mechanical Yeti_ from the AH |next "AH Yeti"
Click here to _make_ the _Tranquil Mechanical Yeti_ |next "make"
|confirm
step
label "AH Yeti"
Go to one of your main cities and talk to an Auctioneer
|tip These may be somewhat expensive as the recipe has been removed from the game.
buy 1 Tranquil Mechanical Yeti##21277 |n
learnpet Tranquil Mechanical Yeti##15699 |use Tranquil Mechanical Yeti##21277
|next "Tranquil Yeti"
step
label "make"
You can buy these items from the Auction House
collect 1 Cured Rugged Hide##15407
collect 4 Thorium Widget##15994
collect 2 Globe of Water##7079
collect 2 Truesilver Transformer##18631
collect 1 Gold Power Core##10558
step
Have an Engineer make this pet for you
|tip Ask in your guild or in trade chat |only if knowspell(26011)==false
create Tranquil Mechanical Yeti##26011,Engineering,1 total |only if knowspell(26011)==true
collect 1 Tranquil Mechanical Yeti##21277 |n
learnpet Tranquil Mechanical Yeti##15699 |use Tranquil Mechanical Yeti##21277
|next "Tranquil Yeti"
step
label "Tranquil Yeti"
Congratulations you are now the proud owner of a _Tranquil Mechanical Yeti_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Warbot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Warbot",
model={29279},
pet=227,
},[[
step
This pet was available only to players during the World of Warcraft Mountain Dew Promotion.
|tip If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Warbot##34587
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Blighthawk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Blighthawk",
model={42265},
pet=456,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Blighthawks in this area are around level 13-15.
learnpet Blighthawk##61826 |goto Western Plaguelands 47.1,67.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Eye of the Legion",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Eye of the Legion",
model={40538},
pet=348,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Eye of the Legion##59020
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fetish Shaman",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Fetish Shaman",
model={39380},
pet=346,
},[[
step
This pet is available only to people who bought the Collector's Edition of Diablo 3.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Fetish Shaman##56266
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Frosty",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Frosty",
model={28456},
pet=188,
},[[
step
This pet is available only to people who bought the Collector's Edition of the Wrath of the Lich King expansion pack.
|tip If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
learnpet Frosty##28883
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fungal Abomination",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Fungal Abomination",
model={46896},
pet=1144,
},[[
step
Go through the doorway here. |goto Naxxramas/5 55.4,52.9 |c
step
Go through the doorway here. |goto Naxxramas/4 33.7,36.7 |c
step
kill Noth the Plaguebringer##15954 |goto Naxxramas/4 34.8,56.4
|tip This is a basic tank and spank fight.
confirm
step
Go through the doorway here. |goto Naxxramas/4 39.1,56.5 |c
step
Enter the room here. |goto Naxxramas/4 49.7,39.4
kill Heigan the Unclean##15936 |goto Naxxramas/4 49.4,44.2
|tip Pay attention to the ground and avoid the poison.
confirm
step
map Naxxramas/4
path follow loose;loop off;ants straight
path 55.1,45.2	55.3,41.9	55.0,37.9
path 55.1,33.7	55.2,28.7	60.6,28.4
Follow the path into the Outer Ring hallway. |goto 60.6,28.4 <5 |noway |c
step
Enter the Necrotic Vault. |goto Naxxramas/4 71.9,28.5
kill Loatheb##16011 |goto Naxxramas/4 75.9,29.6
|tip During the fight, there will be spores that spawn.
|tip Killing them while in melee range will give you a buff that increases your critical strike chance by 50%.
|tip Get the buff to help you dps him down.
|tip Throughout the duration of the fight, he will likely debuff you so that you can recieve no healing.
|tip That said, try and keep yourself shielded at all times if possible.
collect Blighted Spore##93032
step
Use your Blighted Spore. |use Blighted Spore##93032
learnpet Fungal Abomination##68657
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ghostly Skull",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Ghostly Skull",
model={28089},
pet=190,
},[[
step
talk Darahir##29537
buy 1 Ghostly Skull##39973 |goto Dalaran 63.8,16.6
step
learnpet Ghostly Skull##29147 |use Ghostly Skull##39973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Giant Bone Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Giant Bone Spider",
model={46898},
pet=1143,
},[[
step
|goto Naxxramas/5 55.1,47.1
Go down the ramp here. |goto Naxxramas/2 |noway |c
step
Go through doorway. |goto Naxxramas/2 33.0,64.6 |c
step
kill Anub'Rekhan##15956+ |goto Naxxramas/2 30.7,44.7
|tip Note that a slow fall mechanic will be useful here, as he knocks you into the air and will take significant fall damage depending on your class.
confirm
step
map Naxxramas/2
path follow loose;loop off;ants straight
path 39.5,64.8	46.3,54.6	50.2,48.8
path 50.8,39.1
Clear the room of _Naxxramas Cultists_ once you get to the room.
confirm
step
kill Grand Widow Faerlina##15953 |goto Naxxramas/2 44.4,35.8
|tip Killing the adds will help mitigate damage.
confirm
step
Follow through the door here. |goto Naxxramas/2 59.5,66.7 |c
step
Go up the web ramp here. |goto Naxxramas/2 62.8,29.6 |c
step
kill Maexxna##15952
collect Dusty Clutch of Eggs##93030 |goto Naxxramas/2 70.6,16.8
step
Use the Dusty Clutch of Eggs. |use Dusty Clutch of Eggs##93030
learnpet Giant Bone Spider##68656
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infected Fawn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Infected Fawn",
model={37686},
pet=628,
},[[
step
Challenge one to a pet battle and capture it
|tip The Infected Fawn in this area are around level 12-13.
learnpet Infected Fawn##61827 |goto Eastern Plaguelands 71.7,65.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infected Squirrel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Infected Squirrel",
model={10090},
pet=627,
},[[
step
Challenge one to a pet battle and capture it
|tip The Infected Squirrels in this area are around level 12-13.
learnpet Infected Squirrel##61828 |goto Eastern Plaguelands 37.4,80.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infested Bear Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Infested Bear Cub",
model={42229},
pet=453,
},[[
step
Challenge one to a pet battle and capture it
|tip The Infested Bears are level 6.
learnpet Infested Bear Cub##61758 |goto Hillsbrad Foothills 31.6,71.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Landro's Lichling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Landro's Lichling",
model={30507},
pet=302,
},[[
step
This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
learnpet Landro's Lichling##52343
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lil' K.T.",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Lil' K.T.",
model={30507},
pet=249,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Lil' Phylactery##49693
step
learnpet Lil' K.T.##36979 |use Lil' Phylactery##49693
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lost of Lordaeron",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Lost of Lordaeron",
model={45952},
pet=458,
},[[
step
Challenge one to a pet battle and capture it
|tip The Lost of Lordaeron is level 1.
learnpet Lost of Lordaeron##61905 |goto Tirisfal Glades 79.7,55.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Mr. Bigglesworth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Mr. Bigglesworth",
model={46897},
pet=1145,
},[[
step
This pet is obtained through getting the Raiding with Leases Achievement.
confirm
step
Capture a Mini Mindslayer |achieve 7934/1
Capture an Anubisath Idol |achieve 7934/2
Capture a Giant Bone Spider |achieve 7934/3
Capture a Fungal Abomination |achieve 7934/4
Capture a Stitched Pup |achieve 7934/5
Capture a Harbinger of Flame |achieve 7934/6
Capture a Corefire Imp |achieve 7934/7
Capture an Ashstone Core |achieve 7934/8
Capture an Untamed Hatchling |achieve 7934/9
Capture a Chrominius |achieve 7934/10
Capture a Death Talon Whelpguard |achieve 7934/11
Capture a Viscidus Globule |achieve 7934/12
step
Check your in-game mailbox for your new pet!
collect 1 Mr. Bigglesworth##93031
step
learnpet Mr. Bigglesworth##68655 |use Mr. Bigglesworth##93031
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Restless Shadeling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Restless Shadeling",
model={45917},
pet=439.,
},[[
step
Challenge one to a pet battle and capture it
|tip This pet only spawns at 12 midnight server time.
|tip The Restless Shadelings are around level 15.
learnpet Restless Shadeling##61375 |goto Deadwind Pass 54.1,78.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Scourged Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Scourged Whelpling",
model={42737},
pet=538,
},[[
step
Challenge one to a pet battle and capture it
|tip The Scourged Whelplings in this area are level 22.
learnpet Scourged Whelpling##62854 |goto Icecrown 74.2,42.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Spirit Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Spirit Crab",
model={42342},
pet=463,
},[[
step
Challenge one to a pet battle and capture it
|tip The Spirit Crabs are level 3.
learnpet Spirit Crab##62034 |goto Ghostlands 13.7,33.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Stitched Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Stitched Pup",
model={46921},
pet=1146,
},[[
step
Enter the construct quarter. |goto Naxxramas/5 51.5,46.8 |c
step
Clear all the mobs across the river of poison.
kill Patchwerk##16028 |goto Naxxramas/1 41.8,72.4
|tip Keep an eye out for him, as he patrols the path where the slimes are moving.
|tip You will need to DPS him down quickly, as he'll deal more damage over time.
confirm
step
Go through the doorway here. |goto Naxxramas/1 56.1,40.8 |c
step
kill Stitched Giant##16025+ |goto Naxxramas/1 62.4,42.7
Clear the room of all enemies.
confirm
step
kill Grobbulus##15931 |goto Naxxramas/1 60.6,48.6
This is a basic fight.
confirm
step
Go up the ramp here. |goto Naxxramas/1 63.8,53.4 |c
step
|goto Naxxramas/1 59.9,60.6
Cross the pipe over into the passage. Be careful not to fall. |goto Naxxramas/1 57.7,61.0 |noway|c
step
Go to the end of the tunnel and drop down. |goto Naxxramas/1 50.1,49.8 |c
step
Gluth is sort of a tough fight, not recommended for anyone solo but DPS.
|tip You will need to have significantly decent dps in order to out do the heals he will be getting from his summoned minions.
kill Gluth##15932
collect Gluth's Bone##93029
step
Use Gloth's Bone. |use Gluth's Bone##93029
learnpet Stitched Pup##68654
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Vampiric Batling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Vampiric Batling",
model={4185},
pet=187,
},[[
step
This pet was only available to players during the Scourge Invasion event for Wrath of the Lich King.
learnpet Vampiric Batling##28513
]])
