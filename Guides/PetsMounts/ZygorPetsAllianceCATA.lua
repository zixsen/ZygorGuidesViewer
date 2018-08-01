local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsACATA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Magical Crawdad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Magical Crawdad.",
model={18269},
pet=132,
},[[
#include "Mr_Pinchy"
step
learnpet Magical Crawdad##18839
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Pengu",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Pengu.",
model={28216},
pet=198,
},[[
step
Completing all normal quests should make you revered with the _Kalu'ak_ before having to do daily quests.
confirm
#include "Kaluak_rep"
step
#include "dailies_rep_mount",rep="The Kalu'ak"
step
talk Sairuk##32763
buy 1 Nurtured Penguin Egg##44723 |goto Dragonblight 48.6,75.6
step
learnpet Pengu##32595 |use Nurtured Penguin Egg##44723
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sea Pony",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Sea Pony.",
model={39109},
pet=340,
},[[
step
This pet requires Darkmoon Island to be accessible.
confirm
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |walk
This pet can be caught by fishing the waters around Darkmoon Island.
collect Sea Pony##73953
step
learnpet Sea Pony##55386 |use Sea Pony##73953
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shore Crawler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Shore Crawler.",
model={32790},
pet=629,
},[[
step
This pet is only available to Horde characters.
confirm
step
learnpet Shore Crawler##63097
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Small Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Small Frog.",
model={6297},
pet=419,
},[[
step
Challenge one to a pet battle and capture it
|tip The Small Frog is level 1.
learnpet Small Frog##61071 |goto Elwynn Forest 56.0,67.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Speedy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Speedy.",
model={16259},
pet=125,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Turtle Box##23002
|tip Back to the Orphanage (Shattrath)
step
learnpet Speedy##16547 |use Turtle Box##23002
|tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crawler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Strand Crawler.",
model={45880},
pet=211,
},[[
step
label "select"
You must complete the Fishing Daily quests in Stormwind City or Dalaran to obtain this pet
Click here to do the Stormwind Daily Quests. |next "swfish" |confirm
Click here to do the Dalaran Daily Quests. |next "dalfish" |confirm
step
label "dalfish"
In order to earn this Achievement, you will have to complete 5 daily quests.
|tip You will only be able to accept one per day, so this may take longer than 5 days to achieve.
Click here to proceed |confirm
step
Below is a list of the 5 daily quests you will need to complete.
The Ghostfish |achieve 3217/1
Jewel Of The Sewers |achieve 3217/2
Dangerously Delicious |achieve 3217/3
Blood is Thicker |achieve 3217/4
Disarmed! |achieve 3217/5
Click to proceed |confirm
step
talk Marcia Chase##28742
|tip You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
accept Blood Is Thicker##13833 |goto Dalaran,53.1,64.9 |or
accept Dangerously Delicious##13834 |goto Dalaran,53.1,64.9 |or
accept Jewel Of The Sewers##13832 |goto Dalaran,53.1,64.9 |or
accept Disarmed!##13836 |goto Dalaran,53.1,64.9 |or
accept The Ghostfish##13830 |goto Dalaran,53.1,64.9 |or
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
Get the Animal Blood buff |havebuff 132311 |q 13833 |goto Borean Tundra,54.6,41.8
only if havequest (13833)
step
Walk into the water here to create a pool of blood
Fish in the pool of blood
collect 5 Bloodtooth Frenzy##45905 |q 13833/1 |goto 53.7,42.9
only if havequest (13833)
step
Fish in this big lake
collect 10 Terrorfish##45904 |q 13834/1 |goto Wintergrasp,79.9,41.8
only if havequest (13834)
step
The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7 < 5 |c |q 13832 |walk
only if havequest (13832)
step
Fish in the water in the Dalaran sewers
collect 1 Corroded Jewelry##45903 |q 13832/1 |goto 44.4,66.2
only if havequest (13832)
step
Leave the Dalaran sewers |goto Dalaran,60.2,47.7 < 5 |c |q 13832 |walk
only if havequest (13832)
step
Stand on the this circular platform and fish in the water here
collect Bloated Slippery Eel##45328 |n
Click the Bloated Slippery Eel in your bags |use Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q 13836/1 |goto Dalaran,64.8,60.8
only if havequest (13836)
step
Fish in the water here
collect 1 Phantom Ghostfish##45902|n
Click the Phantom Ghostfish in your bags to eat it |use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q 13830/1 |goto Sholazar Basin,49.3,61.8
only if havequest (13830)
step
talk Marcia Chase##28742
|tip You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
turnin Blood Is Thicker##13833 |goto Dalaran,53.1,64.9
turnin Dangerously Delicious##13834 |goto Dalaran,53.1,64.9
turnin Jewel Of The Sewers##13832 |goto Dalaran,53.1,64.9
turnin The Ghostfish##13830 |goto Dalaran,53.1,64.9
|next "use2"
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836 |goto Dalaran,36.6,37.3
|next "use2"
step
label "use2"
use Bag of Fishing Treasures##46007
collect 1 Strand Crawler##44983 |next "use"
Click here to go to the beginning of this daily guide. |next "select" |confirm
step
label "swfish"
In order to earn the achievement Fish or Cut Bait: Stormwind, you will need to complete 5 daily quests from the NPC Catherine Leland.
You will only be able to accept 1 of the 5 quests per day.
Click here to proceed. |confirm
step
talk Catherine Leland##5494
You will only be able to pick up one of these quests.
accept Hitting a Walleye##26414 |goto Stormwind City,55.0,69.7 |or
accept Diggin' For Worms##26420 |goto Stormwind City,55.0,69.7 |or
accept Rock Lobster##26442 |goto Stormwind City,55.0,69.7 |or
accept Big Gulp##26488 |goto Stormwind City,55.0,69.7 |or
accept Thunder Falls##26536 |goto Stormwind City,55.0,69.7 |or
step
Use your fishing ability to fish in the lake. |cast Fishing##7620
collect Hardened Walleye##58503 |q 26414 |goto 56.5,41.6
only if havequest (26414)
step
Look for sparkling mounds in the grass around the pond.
collect Overgrown Earthworm##58788 |q 26420 |n
Use the Overgrown Earthworm |use Overgrown Earthworm##58788
Fish in Olivia's Pond |cast Fishing##7620
collect Crystal Bass##58787 |q 26420/1 |goto 58.3,13.2
only if havequest (26420)
step
Swim around Stormwind Harbor and click The Stormwind Lobster Traps
collect 6 Rock Lobster##58809 |q 26442/1 |goto Stormwind City,22.4,29.0
only if havequest (26442)
step
Use your fishing skill in the moat. |cast Fishing##7620
collect Royal Monkfish##58856 |n
Click the Royal Monkfish |use Royal Monkfish##58856
collect Precious Locket##58864 |goto Stormwind City,69.1,92.2
only if havequest (26488)
step
Use your fishing skill in the water here. |cast Fishing##7620
collect 4 Violet Perch##58899 |q 26536/1 |goto Elwynn Forest,27.1,60.6
only if havequest (26536)
step
talk Catherine Leland##5494
You will only be able to pick up one of these quests.
turnin Hitting a Walleye##26414 |goto Stormwind City,55.0,69.7 |or
turnin Diggin' For Worms##26420 |goto Stormwind City,55.0,69.7 |or
turnin Rock Lobster##26442 |goto Stormwind City,55.0,69.7 |or
turnin Big Gulp##26488 |goto Stormwind City,55.0,69.7 |or
turnin Thunder Falls##26536 |goto Stormwind City,55.0,69.7 |or
step
use Bag of Shiny Things##67414
collect 1 Strand Crawler##44983 |next "use"
Click here to go to the beginning of this daily guide. |next "select" |confirm
step
label "use"
learnpet Strand Crawler##33226 |use Strand Crawler##44983
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black Kingsnake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Black Kingsnake.",
model={1206},
pet=75,
},[[
step
#include "auctioneer"
buy 1 Black Kingsnake##10360
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Black Kingsnake##7565 |use Black Kingsnake##10360
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bombay Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Bombay Cat.",
model={5556},
pet=40,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Bombay)##8485 |goto Elwynn Forest,44.2,53.2
step
learnpet Bombay Cat##7385 |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Brown Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Brown Snake.",
model={2957},
pet=77,
},[[
step
#include "auctioneer"
buy 1 Brown Snake##10361
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Brown Snake##7562 |use Brown Snake##10361
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cornish Rex Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Cornish Rex Cat.",
model={5586},
pet=41,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Cornish Rex)##8486 |goto Elwynn Forest,44.2,53.2
step
learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crimson Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Crimson Snake.",
model={6303},
pet=78,
},[[
step
talk Dealer Rashaad##20980
buy Crimson Snake##10392 |goto Netherstorm,43.4,35.2
step
learnpet Crimson Snake##7567 |use Crimson Snake##10392
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dun Morogh Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Dun Morogh Cub.",
model={28489},
pet=205,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Dwarf.
confirm always
step
label "main"
Click here to unlock the daily quests for the Argent Tournament Grouns. |confirm
If you have achieved champion rank already, click here. |next "pet" |confirm
Click here if you are _Aspirant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Valiant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and not a Death Knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and a Death knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
#include "ArgentT_Quests"
step
Routing back. |next "main" |only if default
step
label "pet"
talk Lana Stouthammer##33312
accept Valiant Of Ironforge##13703 |goto Icecrown,76.3,19.0
turnin Valiant Of Ironforge##13703 |goto Icecrown,76.3,19.0
accept The Valiant's Charge##13714 |goto Icecrown,76.3,19.0
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13741 |goto Icecrown,76.6,19.5 |or
accept A Worthy Weapon##13742 |goto Icecrown,76.6,19.5 |or
accept The Edge Of Winter##13743 |goto Icecrown,76.6,19.5 |or
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto 76.7,19.4
step
talk Clara Tumblebrew##33309
accept The Grand Melee##13745 |goto 76.6,19.6
accept At The Enemy's Gates##13851 |goto 76.6,19.6
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13745 |goto 76.3,20.5
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto 75.3,18.5
step
kill 10 Converted Hero##32255 |q 13744/1 |goto 44.3,54.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13851/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.
|tip You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13851/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.
|tip Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13851/3 |goto 50.1,74.8
|tip They ride horses around this area.
|tip Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.
|tip If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851 |goto 49.1,71.4
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13742 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord,42.2,19.7
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13741 |goto Icecrown,76.6,19.5
turnin A Worthy Weapon##13742 |goto Icecrown,76.6,19.5
turnin The Edge Of Winter##13743 |goto Icecrown,76.6,19.5
step
talk Rollo Sureshot##33315
turnin A Valiant's Field Training##13744 |goto 76.7,19.4
step
talk Clara Tumblebrew##33309
turnin The Grand Melee##13745 |goto 76.6,19.6
turnin At The Enemy's Gates##13851 |goto 76.6,19.6
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13717/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13714 |goto 76.3,19.1
accept The Valiant's Challenge##13713 |goto 76.3,19.1
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13713 |goto 76.3,20.5
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
|tip Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13713/1 |goto 68.6,21.0
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13713 |goto 76.3,19.1
step
Become a Champion of Ironforge |achieve 2780
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Derrick Brindlebeard##33310
buy 1 Dun Morogh Cub##44970 |goto Icecrown,76.4,19.4
step
learnpet Dun Morogh Cub##33194 |use Dun Morogh Cub##44970
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Durotar Scorpion",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Durotar Scorpion.",
model={15470},
pet=207,
},[[
step
#include "auctioneer"
buy 1 Durotar Scorpion##44973
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Durotar Scorpion##33198 |use Durotar Scorpion##44973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Feline Familiar",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Feline Familiar.",
model={38539},
pet=319,
},[[
step
This pet can only be obtained during the Hallows End event.
collect 150 Tricky Treat##33226
step
talk Dorothy##53728
buy Feline Familiar##70908 |goto Elwynn Forest,31.8,50.0
step
learnpet Feline Familiar##53884 |use Feline Familiar##70908
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Hyjal Bear Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Hyjal Bear Cub.",
model={38455},
pet=317,
},[[
step
You will have to do the _Firelands dailies_ quests to complete the quest _"Calling the Ancients"_
talk Varlan Highbough##53882
accept Calling the Ancients##29283 |goto Molten Front,44.8,89.8
step
Earn 125 Marks of the World tree to doing Firelands daily quests.
earn 125 Mark of the World Tree##416
step
talk Elderlimb##52906
turnin Calling the Ancients##29283 |goto Mount Hyjal 26.0,61.2
step
talk Varlan Highbough##53882
buy 1 Hyjal Bear Cub##70140 |goto Molten Front,44.8,89.8
step
learnpet Hyjal Bear Cub##53658 |use Hyjal Bear Cub##70140
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lashtail Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Lashtail Hatchling.",
model={38065},
pet=307,
},[[
step
talk James Stillair##43045
fpath Rebel Camp |goto Northern Stranglethorn,47.9,11.9
step
talk Brother Nimetz##739
accept Bad Medicine##26732 |goto Northern Stranglethorn 47.3,11.1
step
talk Corporal Kaleb##770
accept Krazek's Cookery##26740 |goto 47.1,10.7
step
talk Lieutenant Doren##469
turnin Rebels Without a Clue##26838 |goto 47.6,10.3
accept The Fate of Kurzen##26735 |goto 47.6,10.3
step
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto 44.2,22.1
step
talk Hemet Nesingwary Jr.##715
turnin Welcome to the Jungle##583 |goto 44.0,23.3
accept Raptor Hunting##194 |goto 44.0,23.3
step
talk Drizzlik##2495
accept Supply and Demand##26343 |goto 43.6,23.4
step
talk Krazek##773
turnin Krazek's Cookery##26740 |goto 43.6,23.1
accept Venture Company Mining##26763 |goto 43.6,23.1
step
talk Sir S. J. Erlgadin##718
accept Panther Hunting##190 |goto 43.7,22.3
step
talk Barnil Stonepot##716
accept The Green Hills of Stranglethorn##26269 |goto 44.2,22.1
step
talk Ajeck Rouack##717
accept Tiger Hunting##185 |goto 44.5,22.7
step
kill River Crocolisk##1150+
collect 2 Large River Crocolisk Skin##4053 |q 26343/1 |goto 45.2,20.8
collect Green Hills of Stranglethorn - Page 14##2738 |q 26269/1 |goto 45.2,20.8
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##26269 |goto 44.2,22.1
step
talk Drizzlik##2495
turnin Supply and Demand##26343 |goto 43.6,23.4
accept Some Assembly Required##26344 |goto 43.6,23.4
step
kill 10 Young Stranglethorn Tiger##681+ |q 185/1 |goto 42.3,24.2
You can find more Young Stranglethorn Tigers to kill around [Northern Stranglethorn,38.7,20.3]
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Hunting##185 |goto 42.3,24.2
accept Tiger Stalking##186 |goto 42.3,24.2
step
kill 10 Young Panther##683+ |q 190/1 |goto 52.0,23.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Hunting##190 |goto 52.0,23.8
accept Panther Stalking##191 |goto 52.0,23.8
step
kill Kurzen Jungle Fighter##937+, Kurzen Medicine Man##940+
collect 7 Jungle Remedy##2633 |q 26732/1 |goto 57.7,21.4
Once you get your 7th Jungle Remedy, you will automatically accept a quest:
accept Just Hatched##26738
These Kurzen documents can spawn in random locations all around Kurzen's Compound, so keep an eye out for them while you walk around killing Kurzen mobs.
click Kurzen Compound Officers' Dossier##204827
collect Kurzen Compound Officers' Dossier##60215 |q 26735/2 |goto 57.7,21.4
click Kurzen Compound Prison Records##204826
collect Kurzen Compound Prison Records##60214 |q 26735/1 |goto 57.7,21.4
step
kill 10 Stranglethorn Tiger##682+ |q 186/1 |goto 61.3,27.0
You can find more Stranglethorn Tigers around [Northern Stranglethorn,56.5,28.7]
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Stalking##186 |goto 61.3,27.0
accept Tiger Prowess##187 |goto 61.3,27.0
step
kill Snapjaw Crocolisk##1152+
collect 5 Snapjaw Crocolisk Skin##4104 |q 26344/1 |goto 53.5,30.3
You can find more Snapjaw Crocolisks around [Northern Stranglethorn,51.1,35.8]
step
talk Brother Nimetz##739
turnin Bad Medicine##26732 |goto Northern Stranglethorn,47.3,11.1
accept Control Sample##26733 |goto Northern Stranglethorn,47.3,11.1
step
talk Corporal Sethman##1422
turnin Just Hatched##26738 |goto 47.0,10.8
accept I Think She's Hungry##26739 |goto 47.0,10.8
step
talk Lieutenant Doren##469
turnin The Fate of Kurzen##26735 |goto 47.6,10.3
accept Spared from Madness##26736 |goto 47.6,10.3
stickystart "crybasil"
step
click Kurzen Cage##4154
Rescue Berrin Burnquill |q 26736/1 |goto 56.5,20.3
Rescue Emerine Junis |q 26736/2 |goto 56.5,20.3
Rescue Osborn Obnoticus |q 26736/3 |goto 56.5,20.3
step
label "crybasil"
kill Crystal Spine Basilisk##689+
collect 7 Crystal Spine Basilisk Blood##60213 |q 26733/1 |goto 60.7,21.5
Use your Lashtail Raptor Egg Fragment to summon your Lashtail Hatchling |use Lashtail Raptor Egg Fragment##58165
kill Crystal Spine Basilisk##689+
Let your Lashtail Hatchling eat 40 Bites of Basilisk Meat |q 26739/1 |goto 60.7,21.5
You can find more Crystal Spine Basilisks around [Northern Stranglethorn,62.5,26.0]
step
talk Brother Nimetz##739
turnin Control Sample##26733 |goto 47.3,11.1
accept The Source of the Madness##26734 |goto 47.3,11.1
step
talk Corporal Sethman##1422
turnin I Think She's Hungry##26739 |goto 47.0,10.8
accept Deep Roots##26744 |goto 47.0,10.8
step
talk Lieutenant Doren##469
turnin Spared from Madness##26736 |goto 47.6,10.3
accept Stopping Kurzen's Legacy##26737 |goto 47.6,10.3
stickystart "whispblue"
step
Enter the cave |goto 59.4,18.5 < 5 |walk
Follow the path in the cave
kill Chief Anders##43910 |q 26737/1 |goto 63.7,16.7
step
Follow the path in the cave
kill Chief Miranda##43913 |q 26737/3 |goto 65.8,17.1
step
Follow the path in the cave to the end
kill Chief Esquivel##43912 |q 26737/4 |goto 66.1,11.7
step
Follow the path in the cave back towards the entrance, then down the first ramp you come to
kill Chief Gaulus##43911 |q 26737/2 |goto 62.5,14.1
step
label "whispblue"
kill Kurzen Headshrinker##941+, Kurzen Elite##939+, Kurzen Subchief##978+, Kurzen Shadow Hunter##979+
collect Whispering Blue Stone##60263 |q 26734/1 |goto 64.1,14.2
step
talk Berrin Burnquill##43886
accept Bloodscalp Insight##26742 |goto Northern Stranglethorn,48.0,12.0
step
talk Brother Nimetz##739
turnin The Source of the Madness##26734 |goto 47.3,11.1
step
talk Lieutenant Doren##469
turnin Stopping Kurzen's Legacy##26737 |goto 47.6,10.3
step
talk Emerine Junis##43885
accept Water Elementals##26729 |goto 47.7,10.3
step
talk Drizzlik##2495
turnin Some Assembly Required##26344 |goto 43.6,23.4
accept Excelsior##26345 |goto 43.6,23.4
step
kill 5 Elder Stranglethorn Tiger##1085+ |q 187/1 |goto 38.1,30.1
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Prowess##187
accept Tiger Mastery##188
step
kill Sin'Dall##729
collect Paw of Sin'Dall##3879 |q 188/1 |goto 38.5,32.5
step
kill 10 Panther##736+ |q 191/1 |goto 33.8,28.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Stalking##191
accept Panther Prowess##192
step
kill 10 Stranglethorn Raptor##685+ |q 194/1 |goto 31.7,28.0
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Raptor Hunting##194
accept Raptor Stalking##195
step
click Bloodscalp Lore Tablet##57
collect Bloodscalp Lore Tablet##60295 |q 26744/1 |goto 33.6,36.8
step
Next to you:
talk Lashtail Hatchling##42736
accept Favored Skull##26745
step
kill Bloodscalp Shaman##697+
|tip The Bloodscalp Shamans share spawn locations with the other trolls around this area, so if you can't find any Shamans, kill the other trolls to get them to spawn.
collect Bloodscalp Totem##23679 |q 26742/1 |goto 34.2,36.5
step
kill Lesser Water Elemental##691+
collect 6 Water Elemental Bracers##3923 |q 26729/1 |goto 22.5,40.3
step
Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
talk Emerine Junis##43885
turnin Water Elementals##26729
accept You Can Take the Murloc Out of the Ocean...##26730
step
talk Berrin Burnquill##43886
turnin Bloodscalp Insight##26742 |goto Northern Stranglethorn,48.0,12.0
accept Sacred to the Bloodscalp##26743 |goto Northern Stranglethorn,48.0,12.0
step
talk Corporal Sethman##1422
turnin Deep Roots##26744 |goto 47.0,10.8
step
talk Osborn Obnoticus##43884
turnin Favored Skull##26745 |goto 47.1,10.6
accept A Nose for This Sort of Thing##26746 |goto 47.1,10.6
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto 44.5,22.7
step
Use your Lashtail Raptor Egg Fragment to summon your Lashtail Hatchling |use Lashtail Raptor Egg Fragment##58165
|tip Follow the Lashtail Hatchling around as it digs up fetishes
collect 8 Tkashi Fetish##60291 |q 26746/1 |goto 40.6,26.9
kill Bloodscalp Scavenger##702+
collect Icon of Tsul'Kalu##60270 |q 26743/1 |goto 40.6,26.9
collect Icon of Mahamba##60271 |q 26743/2 |goto 40.6,26.9
collect Icon of Pogeyan##60272 |q 26743/3 |goto 40.6,26.9
step
kill Murkgill Warrior##4461+, Murkgill Hunter##4458+, Murkgill Forager##4457+, Murkgill Oracle##4459+
collect 6 Sea Salt##60274 |q 26730/1 |goto 40.1,34.7
step
Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
talk Emerine Junis##43885
turnin You Can Take the Murloc Out of the Ocean...##26730
accept The Altar of Naias##26731
step
kill 10 Lashtail Raptor##686+ |q 195/1 |goto 45.8,43.1
You can find more Lashtail Raptors around [Northern Stranglethorn,39.3,43.9]
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Raptor Stalking##195
accept Raptor Prowess##196
step
kill Venture Co. Geologist##1096+, Venture Co. Shredder##4260+
collect 5 Tumbled Crystal##4106 |q 26763/1 |goto 54.8,40.5
step
kill 10 Jungle Stalker##687+ |q 196/1 |goto 54.3,47.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Raptor Prowess##196
accept Raptor Mastery##197
step
kill Elder Snapjaw Crocolisk##2635+
collect Elder Crocolisk Skin##4105 |q 26345/1 |goto 50.5,47.4
step
kill 5 Shadowmaw Panther##684+ |q 192/1 |goto 61.9,49.0
|tip They are stealthed, so keep an eye out for them.
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Prowess##192
accept Panther Mastery##193
step
kill Bhag'thera##728
|tip It's a big black panther that walks around near Shadowmaw Panthers around this area.  Bhag'thera is not stealthed, so you should should be fairly easy to find.  Be careful of the Horde town nearby.
collect Fang of Bhag'thera##3876 |q 193/1 |goto 66.0,43.4
Bhag'thera has three spawn points, the second one is at [61.7,50.6]
And the third at [64.4,36.6]
step
kill Tethis##730
|tip He's a blue raptor that walks around this area, so you may need to search for him.
collect Talon of Tethis##3877 |q 197/1 |goto 59.0,58.6
step
talk Wulfred Harrys##44018
accept The Mosh'Ogg Bounty##26782 |goto 53.4,66.3
accept To the Cape!##26805 |goto 53.4,66.3
step
talk Livingston Marshal##44019
accept The Mind's Eye##26781 |goto 53.2,66.9
step
talk Robert Rhodes##43042
fpath Fort Livingston |goto 52.6,66.1
step
talk Berrin Burnquill##43886
turnin Sacred to the Bloodscalp##26743 |goto Northern Stranglethorn 48.0,12.0
step
talk Osborn Obnoticus##43884
turnin A Nose for This Sort of Thing##26746 |goto 47.1,10.6
accept A Physical Specimen##26747 |goto 47.1,10.6
step
talk Sergeant Yohwa##733
accept Population Con-Troll##26751 |goto 47.5,10.8
step
talk Hemet Nesingwary Jr.##715
turnin Raptor Mastery##197 |goto 44.2,23.0
step
talk Drizzlik##2495
turnin Excelsior##26345 |goto 43.6,23.4
step
talk Krazek##773
turnin Venture Company Mining##26763 |goto 43.6,23.1
accept Return to Corporal Kaleb##26765 |goto 43.6,23.1
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto 43.7,22.3
step
talk Hemet Nesingwary Jr.##715
accept Big Game Hunter##208 |goto 44.2,23.0
stickystart "bloodmystic"
step
Enter the Ruins of Zul'Kunda |goto 31.4,23.1 < 5 |walk
Follow the path to the top of the ruins
kill Gan'zulah##1061
collect Gan'zulah's Body##58179 |q 26747/1 |goto 24.9,18.2
step
label "bloodmystic"
kill 7 Bloodscalp Mystic##701+ |q 26751/1 |goto 27.5,23.1
kill 7 Bloodscalp Scout##588+ |q 26751/2 |goto 27.5,23.1
kill 7 Bloodscalp Hunter##595+ |q 26751/3 |goto 27.5,23.1
kill 1 Bloodscalp Beastmaster##699 |q 26751/4 |goto 27.5,23.1
step
Use the Gift of Naias next to the Altar of Naias |use Gift of Naias##23680
kill Naias##17207
collect Heart of Naias##23681 |q 26731/1 |goto 19.1,40.7
step
Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
talk Emerine Junis##43885
turnin The Altar of Naias##26731
step
talk Corporal Kaleb##770
turnin Return to Corporal Kaleb##26765 |goto Northern Stranglethorn,47.1,10.7
step
talk Osborn Obnoticus##43884
turnin A Physical Specimen##26747 |goto 47.1,10.6
step
talk Bloodlord Mandokir##42790
accept Bloodlord Mandokir##26748 |goto 47.2,10.6
turnin Bloodlord Mandokir##26748 |goto 47.2,10.6
step
talk Osborn Obnoticus##43884
accept Priestess Thaalia##26749 |goto 47.1,10.6
step
talk Sergeant Yohwa##733
turnin Population Con-Troll##26751 |goto 47.5,10.7
step
talk Priestess Thaalia##44017
turnin Priestess Thaalia##26749 |goto Northern Stranglethorn 53.5,66.8
accept Mind Vision##26772 |goto Northern Stranglethorn 53.5,66.8
step
kill King Bangalash##731
|tip He's a white tiger that walks around on this big hill.
collect Head of Bangalash##3880 |q 208/1 |goto 47.8,59.0
step
kill Jungle Stalker##687+
collect 5 Jungle Stalker Feather##3863 |q 26772/1 |goto 53.3,50.6
You can find more Jungle Stalkers around [Northern Stranglethorn,55.3,53.8]
step
Enter the cave |goto 66.6,49.1 < 5 |walk
kill Mai'Zoth##818
collect Mind's Eye##3616 |q 26781/1 |goto 70.7,48.6
step
Leave the cave |goto 66.6,49.1 < 5 |walk
click Mosh'Ogg Bounty##204087
collect Mosh'Ogg Bounty##58205 |q 26782/1 |goto 67.2,54.1
step
talk Wulfred Harrys##44018
turnin The Mosh'Ogg Bounty##26782 |goto 53.4,66.3
step
talk Priestess Thaalia##44017
turnin Mind Vision##26772 |goto 53.5,66.8
accept See Raptor##26773 |goto 53.5,66.8
step
talk Priestess Thaalia##44017
Tell her you are ready for the Mind Vision ritual, Hu'rala
Complete the Mind Vision |q 26773/1 |goto 53.5,66.8
step
talk Priestess Thaalia##44017
turnin See Raptor##26773 |goto 53.5,66.8
accept Mind Control##26774 |goto 53.5,66.8
step
talk Livingston Marshal##44019
turnin The Mind's Eye##26781 |goto 53.2,66.9
step
talk Livingston Marshal##44019
home Fort Livingston |goto 53.2,66.9
step
talk Ghaliri##44021
accept Zul'Mamwe Mambo##26779 |goto 52.7,66.8
step
talk Kinnel##44043
accept Nighttime in the Jungle##26780 |goto 53.1,66.5
stickystart "extinzul"
step
kill Braddok##42858
collect Braddok's Big Brain##58225 |q 26774/1 |goto 63.1,74.5
step
label "extinzul"
kill Skullsplitter Spiritchaser##672+, Skullsplitter Berserker##783+, Skullsplitter Headhunter##781+, Skullsplitter Hunter##669+, Skullsplitter Scout##782+, Skullsplitter Witch Doctor##670+
kill 16 Skullsplitter Troll |q 26779/1 |goto 62.7,72.4
click Zul'Mamwe Brazier##204247
Extinguish 8 Zul'Mamwe Braziers |q 26780/1 |goto 62.7,72.4
step
talk Priestess Thaalia##44017
turnin Mind Control##26774 |goto 53.5,66.8
accept Be Raptor##26775 |goto 53.5,66.8
step
talk Priestess Thaalia##44017
Tell her you are ready for the Mind Control ritual, Hu'rala
Become the Captured Lashtail Hatchling |invehicle |q 26775 |goto 53.5,66.8
step
Stay away from the trolls as you walk, or you will have to start over
talk Tan'shang##42881
<Learn to bite through nets from the elder raptor.>
Speak with Tan'shang |q 26775/1 |goto 89.1,46.3
step
Stay away from the trolls as you walk, or you will have to start over
talk Tenjiyu##42882 |goto 86.9,44.6
Tell him you'll go get him some food from the sleeping trolls
Click to proceed. |confirm
step
Stay away from the trolls as you walk, or you will have to start over
clicknpc Gurubashi Soldier##42871
|tip It's a sleeping troll inside this tent.
Steal Raptor Food |havebuff 133641 |q 26775 |goto 86.9,50.0
step
Stay away from the trolls as you walk, or you will have to start over
talk Tenjiyu##42882
Tell him you've brought some food for him, then.learnpet to light fires from the elder raptor
Help Tenjiyu |q 26775/2 |goto 86.9,44.6
step
click Gurubashi Brazier##2570 |goto 86.9,41.2
Get a Burning Twig
Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.
The guards blocking the path will run to put out the burning tiki
Run past the guards into the next area
Click to proceed. |confirm
step
click Gurubashi Brazier##2570 |goto 86.4,39.3
Get a Burning Twig
Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [86.1,38.0]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards into the next area
Click to proceed. |confirm
step
click Gurubashi Brazier##2570 |goto 85.3,37.7
Get a Burning Twig
Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [83.9,38.3]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards
Click to proceed. |confirm
step
talk Chiyu##42883
<Learn to drop skulls from the elder raptor.>
Speak with Chiyu |q 26775/3 |goto 82.8,37.5
step
click Giant Skullpile##293 |goto 82.5,33.9
Walk onto the bridge to 81.7,34.0
Use your Drop Skull ability to put the skull on the bridge
The troll will trip on the skull and fall off the bridge
Run to the other side of the bridge
Click to proceed |confirm
step
click Giant Skullpile##293 |goto 79.9,34.2
Walk onto the bridge to 79.0,33.5
Use your Drop Skull ability to put the skull on the bridge
The troll will trip on the skull and fall off the bridge
Run to the other side of the bridge
Click to proceed |confirm
step
click Gurubashi Brazier##2570
Get a Burning Twig
Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [74.7,32.0]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards
Run up the big staircase
Escape from Zul'Gurub |q 26775/4 |goto 74.3,31.2
step
talk Priestess Thaalia##44017
turnin Be Raptor##26775 |goto 53.5,66.8
accept Ghaliri##26776 |goto 53.5,66.8
step
talk Ghaliri##44021
turnin Ghaliri##26776 |goto 52.7,66.8
turnin Zul'Mamwe Mambo##26779 |goto 52.7,66.8
step
|tip For the pet, you must kill Bloodlord Mandokir in Heroic Zul'Gurub.
Use the _Dungeon Finder_ to go to _Heroic Zul'Gurub_ |goto Zul'Gurub |noway |c
step
kill Bloodlord Mandokir##52151 |goto Zul'Gurub,60.6,80.6
step
Talk to Lashtail Hatchling
turnin An Old Friend##29208 |goto 61.2,81.6
collect 1 Lashtail Hatchling##69251 |goto 61.2,81.6
step
learnpet Lashtail Hatchling##52894 |use Lashtail Hatchling##69251
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Orange Tabby Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Orange Tabby Cat.",
model={5554},
pet=43,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Orange Tabby)##8487 |goto Elwynn Forest,44.2,53.2
step
learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Panther Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Panther Cub.",
model={37814},
pet=301,
},[[
step
talk Bwemba##52654
accept Bwemba's Spirit##29100 |goto Stormwind City,25.9,29.3
accept To Fort Livingston##29102 |goto Stormwind City,25.9,29.3
step
talk Livingston Marshal##52281
turnin To Fort Livingston##29102 |goto Northern Stranglethorn,52.8,66.4
accept Serpents and Poison##29103 |goto Northern Stranglethorn,52.8,66.4
step
kill 10 Jungle Serpent |q 29103/1 |goto 52.0,61.4
Click Fort Livingston Adventurers
|tip They look like green bodies laying on the ground around this area.
Heal 10 Adventurers |q 29103/2 |goto 52.0,61.4
step
talk Livingston Marshal##52281
turnin Serpents and Poison##29103 |goto 52.8,66.4
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29104
step
Click the Bonfire
|tip It's a big pile of sticks on fire in the middle of Fort Livingston.
Watch the dialogue
Use the Bonfire in Fort Livingston |q 29104/1 |goto 52.9,66.5
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29104
step
talk Livingston Marshal##52281
accept Nesingwary Will Know##29105 |goto 52.8,66.4
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29105 |goto 44.1,22.9
accept Track the Tracker##29114 |goto 44.1,22.9
step
talk Grent Direhammer##52346
turnin Track the Tracker##29114 |goto 50.4,21.7
accept The Hunter's Revenge##29115 |goto 50.4,21.7
step
kill Mauti?##52349
Bring Grent Direhammer to the body of Mauti |q 29115/1 |goto 64.0,19.6
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29115
You will automatically accept a new quest:
accept Follow That Cat##29116
step
Go to this spot
Find Mauti's Lair |q 29116/1 |goto 77.7,68.4
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29116
accept Mauti##29120
step
kill Mauti##52372
Let Bwemba Inspect the Cat |q 29120/1 |goto 77.2,69.0
step
Next to you:
talk Bwemba##52234
turnin Mauti##29120
accept How's the Hunter Holding Up?##29213
step
Enter the cave |goto 76.5,67.5 < 5 |walk
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29213 |goto 76.1,66.7
accept Bury Me With Me Boots...##29121 |goto 76.1,66.7
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
collect Direhammer's Boots##68937 |q 29121/1 |goto 76.0,66.5
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29121 |goto 76.1,66.7
step
talk Panther Cub##52374
accept Some Good Will Come##29267 |goto 76.1,66.7
collect 1 Panther Cub##68833 |goto 76.1,66.7
step
learnpet Panther Cub##52226 |use Panther Cub##68833
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silver Tabby Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Silver Tabby Cat.",
model={5555},
pet=45,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Silver Tabby)##8488 |goto Elwynn Forest,44.2,53.2
step
learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Armadillo Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Armadillo Pup.",
model={36220},
pet=272,
},[[
step
This pet requires your guild to have the achievement _"Critter Kill Squad"_ completed
_50,000_ critters killed |achieve 5144
step
talk Shay Pressler##46602
buy 1 Armadillo Pup##63398 |goto Stormwind City 64.6,76.8
step
learnpet Armadillo Pup##48242 |use Armadillo Pup##63398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Prairie Dog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Brown Prairie Dog.",
model={1072},
pet=70,
},[[
step
#include "auctioneer"
buy 1 Prairie Dog Whistle##10394
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Brown Prairie Dog##14421 |use Prairie Dog Whistle##10394
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dung Beetle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Dung Beetle.",
model={7511},
pet=467,
},[[
step
Challenge one to a pet battle and capture it
|tip The Dung Beetle is level 1.
learnpet Dung Beetle##62115 |goto Uldum 64.6,28.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Egbert",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Egbert.",
model={21382},
pet=158,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
confirm
step
collect 1 Egbert's Egg##32616
|tip Warden of the Alliance
step
learnpet Egbert##23258 |use Egbert's Egg##32616 |tip Warden of the Alliance
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elwynn Lamb",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Elwynn Lamb.",
model={16205},
pet=209,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Human.
confirm always
step
label "main"
Click here to unlock the daily quests for the Argent Tournament Grounds. |confirm
If you have achieved champion rank already, click here. |next "pet" |confirm
Click here if you are _Aspirant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Valiant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and not a Death Knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and a Death knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
#include "ArgentT_Quests"
step
Routing back. |next "main" |only if default
step
label "pet"
talk Marshal Jacob Alerius##33225
accept Valiant Of Stormwind##13593 |goto Icecrown,76.6,19.1
turnin Valiant Of Stormwind##13593 |goto Icecrown,76.6,19.1
accept The Valiant's Charge##13718 |goto Icecrown,76.6,19.1
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13603 |goto Icecrown,76.6,19.1 |or
accept A Worthy Weapon##13600 |goto Icecrown,76.6,19.1 |or
accept The Edge Of Winter##13616 |goto Icecrown,76.6,19.1 |or
step
talk Sir Marcus Barlowe##33222
accept A Valiant's Field Training##13592 |goto 76.5,19.1
step
talk Captain Joseph Holley##33223
accept The Grand Melee##13665 |goto 76.6,19.2
accept At The Enemy's Gates##13847 |goto 76.6,19.2
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13600 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13616/1 |goto Howling Fjord,42.2,19.7
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13847 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13847/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13847/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13847/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13592/1 |goto 44.3,54.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13665 |goto 76.1,20.5
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13665/1 |goto 75.3,18.5
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13603 |goto 76.6,19.1
turnin A Worthy Weapon##13600 |goto 76.6,19.1
turnin The Edge Of Winter##13616 |goto 76.6,19.1
step
talk Sir Marcus Barlowe##33222
turnin A Valiant's Field Training##13592 |goto 76.5,19.1
step
talk Captain Joseph Holley##33223
turnin The Grand Melee##13665 |goto 76.6,19.2
turnin At The Enemy's Gates##13847 |goto 76.6,19.2
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13718/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Charge##13718 |goto 76.6,19.2
accept The Valiant's Challenge##13699 |goto 76.6,19.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13699 |goto 76.0,20.4
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.
|tip Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.
|tip Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
|tip Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13699/1 |goto 68.6,21.0
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Challenge##13699 |goto 76.6,19.2
step
Become a Champion of Stormwind |achieve 2781
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Corporal Arthur Flew##33307
buy 1 Elwynn Lamb##44974 |goto Icecrown,76.4,19.2
step
learnpet Elwynn Lamb##33200 |use Elwynn Lamb##44974
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Hare",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Hare.",
model={1560},
pet=448,
},[[
step
Challenge one to a pet battle and capture it
|tip The Hares in this area are around level 11.
learnpet Hare##61751 |goto The Hinterlands 66.9,34.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mr. Wiggles",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mr. Wiggles.",
model={16257},
pet=126,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
confirm
step
collect 1 Piglet's Collar##23007
|tip Warden of the Alliance
step
learnpet Mr. Wiggles##16548 |use Piglet's Collar##23007
|tip Warden of the Alliance
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mulgore Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mulgore Hatchling.",
model={28502},
pet=210,
},[[
step
#include "auctioneer"
buy 1 Mulgore Hatcling##44980
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Mulgore Hatchling##33219 |use Mulgore Hatchling##44980
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Peanut",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Peanut.",
model={21393},
pet=159,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
confirm
step
collect 1 Elekk Training Collar##32622
|tip Back to the Orphanage (Shattrath)
step
learnpet Peanut##23266 |use Elekk Training Collar##32622
|tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Pint-Sized Pink Pachyderm",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Pint-Sized Pink Pachyderm.",
model={22629},
pet=166,
},[[
step
This pet is only availiable during the Brewfest Holiday
|tip You will need to complete the quests, then do the dailies to amass brewest tokens.
collect 100 Brewfest Prize Tokens##37829
Click here if you need to do the quests leading up to the dailies. |next "Zygor's Events Guides\\Brewfest\\Brewfest Quests" |confirm |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you have completed the quests and only need the dailies. |next "Zygor's Events Guides\\Brewfest\\Brewfest Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesACATA"]
step
Go to Dun Morogh and talk to Belbi Quikswitch
talk Belbi Quikswitch##23710
buy 1 Pint-Sized Pink Pachyderm##46707
step
learnpet Pint-Sized Pink Pachyderm##24753 |use Pint-Sized Pink Pachyderm##46707
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Porcupette",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Porcupette.",
model={41833},
pet=381,
},[[
step
label "start"
In order to obtain the rewards that contain the Porcupette, you will need to have defeated all Grand Master pet tamers.
If you haven't done so already, please go back and complete the Battle Pet quest guide.
Otherwise, click here to proceed. |confirm
step
talk Lydia Accoste##66522
accept Grand Master Lydia Accost##31916 |goto Deadwind Pass 40.1,76.4
only if completedq(31915)
step
talk Lydia Accoste##66522
|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Lydia has an Elemental type Pet and 2 Undead type Pets. Use Aquatic type attacks on the Elemental Pet and Critter type attacks on the Undead Pets.
|tip Your pets should be at least level 19 before fighting Lydia.
Defeat Lydia Accoste |q 31916/1 |goto Deadwind Pass 40.1,76.4
only if completedq(31915)
step
talk Lydia Accoste##66522
turnin Grand Master Lydia Accoste##31916 |goto Deadwind Pass 40.1,76.4
only if completedq(31915)
step
talk Bloodknight Antari##66557
accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
only if completedq(31920)
step
talk Bloodknight Antari##66557
|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet.
|tip Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should all be around level 24.
Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.6,42.0
only if completedq(31920)
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
only if completedq(31920)
step
talk Major Payne##66675
accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
only if completedq(31928)
step
talk Major Payne##66675
|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet.
|tip Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
Defeat Major Payne |q 31935/1 |goto Icecrown 77.4,19.6
only if completedq(31928)
step
talk Major Payne##66675
accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
only if completedq(31928)
step
talk Obalis##66824
accept Grand Master Obalis##31971 |goto Uldum 56.5,42.0
only if completedq(31970)
step
talk Obalis##66824
|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter.
|tip Your pets should all be level 25.
Defeat Obalis |q 31971/1 |goto Uldum 56.5,42.0
only if completedq(31970)
step
talk Obalis##66824
turnin Grand Master Obalis##31971 |goto Uldum 56.5,42.0
only if completedq(31970)
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
only if completedq(31970)
step
talk Hyuna of the Shrines##66730
|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet.
|tip Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2
only if completedq(31970)
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
only if completedq(31970)
step
talk Aki the Chosen##66741
accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
only if completedq(31970)
step
talk Aki the Chosen##66741
|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet.
|tip Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.2,74.0
only if completedq(31970)
step
talk Aki the Chosen##66741
turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
only if completedq(31970)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
only if completedq(31970)
step
talk Courageous Yon##66738
|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Courageous Yon has a Flying Pet, and two Critter Pets. Use Beast type attacks on his Critters, and Magic type attacks on his Flying. Your pets should all be level 25.
Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.8,73.8
He can also be found at [44.7,52.4]
only if completedq(31970)
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
only if completedq(31970)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
only if completedq(31970)
step
talk Seeker Zusshi##66918
|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet.
|tip Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
Defeat Seeker Zusshi |q 31991/5 |goto Townlong Steppes 36.3,52.2
only if completedq(31970)
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
only if completedq(31970)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
only if completedq(31970)
step
talk Wastewalker Shu##66739
|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet.
|tip Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6
only if completedq(31970)
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
only if completedq(31970)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
only if completedq(31970)
step
talk Farmer Nishi##66734
|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Farmer Nishi has a Beast Pet, and two Elemental Pets.
|tip Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7
only if completedq(31970)
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
only if completedq(31970)
step
collect Sack of Pet Supplies##89125 |n
Use the _Sack of Pet Supplies_ in your bags for a chance to get the _Porcupette_!
collect 1 Porcupette##89587
learnpet Porcupette##61086 |use Porcupette##89587
Click here if the Porcupette wasn't contained in any of the Sack of Pet Supplies, and you wish to go to the beginning of this guide. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scooter the Snail",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Scooter the Snail.",
model={38135},
pet=289,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
confirm
step
collect 1 Snail Shell##66073
|tip Warden of the Alliance
step
learnpet Scooter the Snail##51635 |use Snail Shell##66073
|tip Warden of the Alliance
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Snowshoe Rabbit.",
model={328},
pet=72,
},[[
step
talk Yarlyn Amberstill##1263
buy 1 Rabbit Crate (Snowshoe)##8497 |goto Dun Morogh 70.6,49.0
step
learnpet Snowshoe Rabbit##7560 |use Rabbit Crate (Snowshoe)##8497
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Cockroach",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Undercity Cockroach.",
model={2177},
pet=55,
},[[
step
talk Dealer Rashaad##20980
buy 1 Undercity Cockroach##10393 |goto Netherstorm 43.4,35.2
step
learnpet Undercity Cockroach##7395 |use Undercity Cockroach##10393
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Undercity Rat.",
model={1141},
pet=454,
},[[
step
This pet is only found inside The Undercity.
|tip You can attempt to capture it yourself, but it is suggested that you use a Horde character to capture it.
confirm
step
Challenge one to a pet battle and capture it
|tip The Undercity Rats are level 2.
learnpet Undercity Rat##61889 |goto Undercity 70.9,35.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Whiskers the Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Whiskers the Rat.",
model={2176},
pet=127,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
confirm
step
collect 1 Rat Cage##23015 |tip Warden of the Alliance
step
learnpet Whiskers the Rat##16549 |use Rat Cage##23015
|tip Warden of the Alliance
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\White Kitten",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: White Kitten.",
model={9990},
pet=46,
},[[
step
map Stormwind City
path follow loose;loop off;
path	69.2,62.0	67.6,59.0	69.6,53.2
path	66.0,50.8	61.8,44.6	58.2,53.6
path	56.0,56.6	53.0,55.2	50.4,56.8
path	46.8,56.0	51.2,63.0	55.4,63.2
path	58.6,64.2	63.6,61.2	67.0,64.6
This pet is purchesed from _Lil Timmy_, who patrols around Stormwind.
Follow the path to find him.
talk Lil Timmy##8666
buy 1 Cat Carrier (White Kitten)##8489
step
learnpet White Kitten##7386 |use Cat Carrier (White Kitten)##8489
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Winter Reindeer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Winter Reindeer.",
model={15901},
pet=118,
},[[
step
These pets are only availiable during the _Winter Veil_ Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Jingling Bell##21308
step
learnpet Winter Reindeer##15706 |use Jingling Bell##21308
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wolpertinger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Wolpertinger.",
model={22349},
pet=153,
},[[
step
You can only obtain this pet during the Brewfest event.
confirm
step
#include "Brewfest_Dailies"
step
Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
collect 200 Brewfest Prize Token##37829 |achieve 2796
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |n
Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420 |goto Ironforge 56.4,37.9
Buy the Wolpertinger's Tankard and click it to learn it. |achieve 1683/6 |goto Ironforge 56.4,37.9
step
learnpet Wolpertinger##22943 |use Wolpertinger's Tankard##32233
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Golden Dragonhawk Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Golden Dragonhawk Hatchling.",
model={20026},
pet=142,
},[[
step
#include "auctioneer"
buy 1 Golden Dragonhawk Hatchling##29953
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Golden Dragonhawk Hatchling##21055 |use Golden Dragonhawk Hatchling##29953
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Tarecgosa",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Lil' Tarecgosa.",
model={38614},
pet=320,
},[[
step
This pet requires that your guild_ has the achievement "Dragonwrath, Tarecgosa's Rest - Guild Edition"
|tip Dragonwrath, Tarecgosa's Rest |achieve 5840
step
talk Shay Pressler##46602
buy 1 Lil' Tarecgosa##71033 |goto Stormwind City,64.6,76.8
step
learnpet Lil' Tarecgosa##54027 |use Lil' Tarecgosa##71033
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Red Dragonhawk Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Red Dragonhawk Hatchling.",
model={20027},
pet=143,
},[[
step
You will have to buy this from a neutral Auction House, as it is not available to Alliance characters
buy 1 Red Dragonhawk Hatchling##29956
step
learnpet Red Dragonhawk Hatchling##21064 |use Red Dragonhawk Hatchling##29956
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Silver Dragonhawk Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Silver Dragonhawk Hatchling.",
model={20037},
pet=144,
},[[
step
#include "auctioneer"
buy 1 Silver Dragonhawk##29957
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Silver Dragonhawk Hatchling##21063 |use Silver Dragonhawk##29957
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Thundering Serpent Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Thundering Serpent Hatchling.",
model={43865},
pet=802,
},[[
step
This pet requires you to be _Revered_ with your guild.
confirm
step
talk Shay Pressler##46602
buy 1 Thundering Serpent Hatchling##85513 |goto Stormwind City 64.6,76.8
step
learnpet Thundering Serpent Hatchling##65313 |use Thundering Serpent Hatchling##85513
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ammen Vale Lashling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Ammen Vale Lashling.",
model={28493},
pet=212,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.
|tip Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Draenei.
confirm always
step
label "main"
Click here to unlock the daily quests for the Argent Tournament Grouns. |confirm
If you have achieved champion rank already, click here. |next "pet" |confirm
Click here if you are _Aspirant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Valiant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and not a Death Knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and a Death knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
#include "ArgentT_Quests"
step
Routing back. |next "main" |only if default
step
label "pet"
talk Colosos##33593
accept Valiant Of The Exodar##13705 |goto Icecrown,76.1,19.1
turnin Valiant Of The Exodar##13705 |goto Icecrown,76.1,19.1
accept The Valiant's Charge##13716 |goto Icecrown,76.1,19.1
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13752 |goto 76.1,19.1 |or
accept A Worthy Weapon##13753 |goto 76.1,19.1 |or
accept The Edge Of Winter##13754 |goto 76.1,19.1 |or
step
talk Saandos##33655
accept A Valiant's Field Training##13755 |goto 76.1,19.2
step
talk Ranii##33656
accept The Grand Melee##13756 |goto 76.2,19.1
accept At The Enemy's Gates##13854 |goto 76.2,19.1
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13752/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13753 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13753/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13754 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord,42.2,19.7
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13854 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13854/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13854/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13854/3 |goto 50.1,74.8
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.
|tip If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13755/1 |goto 44.3,54.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13756 |goto 76.4,20.5
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13756/1 |goto 75.3,18.5
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13752 |goto 76.1,19.1
turnin A Worthy Weapon##13753 |goto 76.1,19.1
turnin The Edge Of Winter##13754 |goto 76.1,19.1
step
talk Saandos##33655
turnin A Valiant's Field Training##13755 |goto 76.1,19.2
step
talk Ranii##33656
turnin The Grand Melee##13756 |goto 76.2,19.1
turnin At The Enemy's Gates##13854 |goto 76.2,19.1
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13716/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Colosos##33593
turnin The Valiant's Charge##13716 |goto 76.1,19.2
accept The Valiant's Challenge##13724 |goto 76.1,19.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13724 |goto 71.7,22.4
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.
|tip Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.
|tip Stay in very close range and spam your Thrust ability.
|tip Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13724/1 |goto 68.6,21.0
step
talk Colosos##33593
turnin The Valiant's Challenge##13724 |goto 76.1,19.2
step
Become a Champion of Exodar |achieve 2778
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Irisee##33657
buy 1 Ammen Vale Lashling##44984 |goto Icecrown,76.2,19.2
step
learnpet Ammen Vale Lashling##33205 |use Ammen Vale Lashling##44984
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Dark Phoenix Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Dark Phoenix Hatchling.",
model={37136},
pet=270,
},[[
step
#include "misc_rep_mount",rep="Guild"
Your guild needs have the achievement "United Nations"
|tip Only 1 person in your guild needs to have 55 Exalted reputations
|tip 55 Exalted Reputations |achieve 5892
step
talk Shay Pressler##46602
buy 1 Dark Phoenix Hatchling##63138 |goto Stormwind City,64.6,76.8
step
learnpet Dark Phoenix Hatchling##47944 |use Dark Phoenix Hatchling##63138
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Elementium Geode",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Elementium Geode.",
model={45878},
pet=293,
},[[
step
You can either farm for this pet using Mining or buy it from the Auction House:
Click here to farm. |confirm
Click here if you just want to buy it. |next "buy" |confirm
step
map Twilight Highlands
path	44.5,85.3	39.8,87.0	35.9,83.4
path	39.9,80.7	37.1,76.2	33.2,71.1
path	28.7,65.3	38.0,58.0	35.9,52.4
path	30.1,47.2	28.5,38.9	26.3,36.7
path	32.2,30.5	37.9,41.3	36.2,46.0
path	37.1,55.0	38.3,61.0	39.9,73.5
path	43.2,76.2
Follow the provided path, mining _ANY_ nodes you come across.
collect 1 Elementium Geode##67282 |next "last"
step
label "buy"
talk Auctioneer Chilton##8670
collect 1 Elementium Geode##67282 |goto Stormwind City/0 60.7,70.8
step
label "last"
learnpet Elementium Geode##50722 |use Elementium Geode##67282
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lumpy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Lumpy.",
model={45939},
pet=337,
},[[
step
talk Strange Snowman##13636
accept You're a Mean One...##7043 |goto Hillsbrad Foothills,42.3,41.1
step
kill The Abominable Greench##54499
collect Stolen Treats##17662 |q 7043/2 |goto Hillsbrad Foothills,43.6,39.0
|tip They are the bags on the ground behind the Abominable Greench.
Free Metzen the Reindeer. |q 7043/1 |goto Hillsbrad Foothills,43.6,39.0
|tip After you defeat The Abominable Greench Metzen is freed.
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge,33.7,67.3
collect 1 Stolen Present##73792 |goto Ironforge,33.7,67.3
Open your Stolen Present |use Stolen Present##73792
collect 1 Lump of Coal##73797 |goto Ironforge,33.7,67.3
step
learnpet Lumpy##55215 |use Lump of Coal##73797
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pebble",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Pebble.",
model={45940},
pet=265,
},[[
step
To earn Pebble, you must do the _Rock Lover_ achievement, which means you will have to do Lost in the Deeps 10 times.
Since the daily quest isn't available every day, this pet may take a while to earn.
If you have done the Pre-Quests for Therazane, click here. |next "daily" |confirm
If you need to do the Pre-Quests, click here. |next "pre" |confirm
step
label "pre"
click Hero's Call Board##250720
accept Hero's Call: Deepholm!##27727 |goto Stormwind City,62.9,71.6
step
talk Naraat the Earthspeaker##45226
turnin Hero's Call: Deepholm!##27727 |goto 74.5,19.0
accept The Maelstrom##27203 |goto 74.5,19.0
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom,33.4,50.2
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.4,50.2
step
clicknpc Wyvern##45005 |goto 32.5,52.0
You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
step
talk Maruut Stonebinder##43065
turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.6,53.0
accept Gunship Down##26245 |goto Deepholm,49.6,53.0
step
talk Seer Kormo##43397
accept Elemental Energy##27136 |goto 49.7,52.9
accept The Earth Claims All##26244 |goto 49.7,52.9
step
talk Earthcaller Yevaa##42573
accept Where's Goldmine?##26409 |goto 49.5,53.3
step
talk Caretaker Nuunwa##45300
home Temple of Earth |goto 49.2,51.9
step
talk Initiate Goldmine##42574
turnin Where's Goldmine?##26409 |goto 46.5,57.3
accept Explosive Bonding Compound##26410 |goto 46.5,57.3
accept Something that Burns##27135 |goto 46.5,57.3
step
kill Rockslice Flayer##42606+, Rockslice Ripper##42607+
collect 5 Quartzite Resin##58501 |q 26410/1 |goto 45.5,57.9
You can find more Rockslice Flayers around [42.5,55.6]
step
Use your Depleted Totem |use Depleted Totem##60835
kill Lodestone Elemental##43258+, Energized Geode##43254+
|tip Kill them next to your Depleted Totems.
Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
step
Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
kill Magmatooth##45099
collect The Burning Heart##60837 |q 27135/1 |goto 52.0,58.9
step
talk Initiate Goldmine##42574
turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
turnin Something that Burns##27135 |goto 46.5,57.3
accept Apply and Flash Dry##26411 |goto 46.5,57.3
step
Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
Apply the Explosive Bonding Compound |q 26411/1 |goto 46.6,57.2
step
talk Initiate Goldmine##42574
turnin Apply and Flash Dry##26411 |goto 46.5,57.3
accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
step
Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
step
talk Earthcaller Yevaa##42573
turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
accept To Stonehearth's Aid##26484 |goto 49.5,53.3
step
talk Seer Kormo##43397
turnin Elemental Energy##27136 |goto 49.7,52.9
stickystart "deepelem"
step
clicknpc Slain Cannoneer##43032
Receive the Second Clue |q 26245/2 |goto 56.1,74.2
step
clicknpc Captain Skullshatter##43048
Receive the First Clue |q 26245/1 |goto 53.5,73.8
step
click Captain's Log##211413
accept Captain's Log##26246 |goto 53.6,73.8
step
clicknpc Unexploded Artillery Shell##43044
Receive the Third Clue |q 26245/3 |goto 56.7,76.4
step
label "deepelem"
kill 5 Deepstone Elemental##43026+ |q 26244/1 |goto 55.9,74.9
step
talk Maruut Stonebinder##43065
turnin Gunship Down##26245 |goto 49.6,52.9
turnin Captain's Log##26246 |goto 49.6,52.9
step
talk Seer Kormo##43397
turnin The Earth Claims All##26244 |goto 49.7,52.9
step
talk Maruut Stonebinder##43065
accept Diplomacy First##26247 |goto 49.6,53.0
step
talk Stormcaller Mylra##42684
turnin Diplomacy First##26247 |goto 62.4,52.6
accept All Our Friends Are Dead##26248 |goto 62.4,52.6
accept The Admiral's Cabin##26249 |goto 62.4,52.6
step
All around on this air ship:
Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
Receive 6 Slain Crew Member Information |q 26248/1
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin The Admiral's Cabin##26249
accept Without a Captain or Crew##26427
step
Leave through the doorway and immediately turn right:
click Bottle of Whiskey##204280
|tip Located on the life boat.
collect Bottle of Whiskey##58798 |q 26427/1
step
All around on the deck of the air ship:
click Spool of Rope##204279
collect Spool of Rope##58806 |q 26427/2
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin Without a Captain or Crew##26427
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin All Our Friends Are Dead##26248
accept Take No Prisoners##26251
accept On Second Thought, Take One Prisoner##26250
step
Go onto the main deck of the ship and go down the stairs to the deck below:
Fight Mor'norokk the Hateful until he surrenders
|tip He's downstairs in the airship, in the very back of the first level you come to.
talk Mor'norokk the Hateful##42801
Subdue Mor'norokk the Hateful |q 26250/1
step
All around on this lower deck of the air ship:
kill 6 Twilight Saboteur##42885 |q 26251/1
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin Take No Prisoners##26251
turnin On Second Thought, Take One Prisoner##26250
accept Some Spraining to Do##26254
step
Next to Stormcaller Mylra:
clicknpc Stormbeak##42887
Interrogate Mok'norrok |q 26254/1
step
When you land on the air ship again:
talk Stormcaller Mylra##42684
turnin Some Spraining to Do##26254
accept Return to the Temple of Earth##26255
step
talk Maruut Stonebinder##43065
turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
accept Deathwing's Fall##26258 |goto 49.6,53.0
step
talk Seer Kormo##43397
accept Blood of the Earthwarder##26259 |goto 49.7,52.9
step
Go to this spot
Reach Deathwing's Fall |q 26258/1 |goto 59.4,58.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Deathwing's Fall##26258
accept Bleed the Bloodshaper##26256
step
kill Twilight Bloodshaper##43218+
collect Twilight Orders##60264 |q 26256/1 |goto 61.5,60.6
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Bleed the Bloodshaper##26256
accept Question the Slaves##26261
stickystart "bloodofnelth"
step
click Slavemaster's Coffer##205097
collect 1 Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
step
label "bloodofnelth"
kill Living Blood##43123+
collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.2,60.1
step
click Ball and Chain##207079
Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Question the Slaves##26261
accept The Forgemaster's Log##26260
step
click Forgemaster's Log##205134
turnin The Forgemaster's Log##26260 |goto 63.7,55.4
accept Silvermarsh Rendezvous##27007 |goto 63.7,55.4
step
Go to this spot
Reach Upper Silvermarsh |q 27007/1 |goto 70.6,61.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Silvermarsh Rendezvous##27007
accept Quicksilver Submersion##27010
step
click Trogg Crate##205197
collect Trogg Crate##60809 |q 27010 |goto 71.8,64.3
kill Murkstone Trogg##44936
collect 1 Maziel's Research##60816 |n
Click Maziel's Research in your bags |use Maziel's Research##60816
accept Twilight Research##27100
step
Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
Watch the dialogue
Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.9,64.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Quicksilver Submersion##27010
accept The Twilight Overlook##27061
step
kill Mercurial Ooze##43158+
collect 4 Twilight Research Notes##60814 |q 27100/1 |goto 72.5,65.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Twilight Research##27100
accept Maziel's Revelation##27101
step
click Maziel's Journal##205207
turnin Maziel's Revelation##27101 |goto 67.2,70.2
accept Maziel's Ascendancy##27102 |goto 67.2,70.2
step
Enter the cave |goto 69.5,68.0 < 5 |walk
kill Maziel##44967 |q 27102/1 |goto 72.8,62.0
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Maziel's Ascendancy##27102
step
Leave the cave |goto 69.5,68.0 < 5 |walk
talk Stormcaller Mylra##44010
turnin The Twilight Overlook##27061 |goto 64.5,82.1
accept Big Game, Big Bait##26766 |goto 64.5,82.1
accept To Catch a Dragon##26768 |goto 64.5,82.1
step
kill Jadecrest Basilisk##43981+
Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto 58.0,84.8
kill Twilight Dragonstalker##43992+
collect Twilight Snare##60383 |q 26768/1 |goto 58.0,84.8
step
talk Stormcaller Mylra##44010
turnin Big Game, Big Bait##26766 |goto 64.5,82.1
turnin To Catch a Dragon##26768 |goto 64.5,82.1
accept Testing the Trap##26771 |goto 64.5,82.1
step
Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
kill Stonescale Matriarch##44148 |q 26771/1 |goto 50.9,85.3
step
talk Stormcaller Mylra##44010
turnin Testing the Trap##26771 |goto 64.5,82.1
accept Abyssion's Minions##26857 |goto 64.5,82.1
step
talk Seer Galekk##44222
accept Block the Gates##26861 |goto 64.6,82.2
stickystart "abyunder"
step
Use your Stormstone next to the swirling blue portal |use Stormstone##60501
Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
step
Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
step
label "abyunder"
kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
Defeat 8 Abyssion's Underlings |q 26857/1 |goto 69.9,76.7
step
talk Seer Galekk##44222
turnin Block the Gates##26861 |goto 64.6,82.2
step
talk Stormcaller Mylra##44010
turnin Abyssion's Minions##26857 |goto 64.5,82.2
accept The World Pillar Fragment##26876 |goto 64.5,82.2
step
Use your Earthen Ring Banner |use Earthen Ring Banner##60810
kill Abyssion##44289
click The First Fragment of the World Pillar##204967
collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto 69.9,76.9
step
talk Maruut Stonebinder##43065
turnin The World Pillar Fragment##26876 |goto 49.6,53.0
step
talk Seer Kormo##43397
turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
step
talk Crag Rockcrusher##43071
turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
accept The Quaking Fields##27931 |goto 27.9,68.7
step
talk Slate Quicksand##47195
turnin The Quaking Fields##27931 |goto 30.6,77.7
accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
accept Elemental Ore##27933 |goto 30.6,77.7
step
Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto 32.2,79.1
kill Jade Rager##44220+
collect 6 Elemental Ore##60487 |q 27933/1 |goto 32.2,79.1
step
talk Slate Quicksand##47195
turnin The Axe of Earthly Sundering##27932 |goto 30.6,77.7
turnin Elemental Ore##27933 |goto 30.6,77.7
accept One With the Ground##27934 |goto 30.6,77.7
step
talk Slate Quicksand##47195
Tell him you are ready for the ritual
Complete the One With the Ground Ritual |q 27934/1 |goto 30.6,77.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin One With the Ground##27934
accept Bring Down the Avalanche##27935
step
kill Avalanchion##44372 |q 27935/1 |goto 46.9,89.1
step
Leave the cave |goto 43.4,82.0 < 5 |walk
talk Crag Rockcrusher##43071
turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
accept Stonefather's Boon##26499 |goto 27.9,68.7
step
talk Earthbreaker Dolomite##43160
accept We're Surrounded##26500 |goto 28.2,69.6
step
kill 12 Stone Trogg Ambusher##43134+ |q 26500/1 |goto 29.7,68.8
Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
step
talk Earthbreaker Dolomite##43160
turnin We're Surrounded##26500 |goto 28.2,69.6
accept Thunder Stones##26502 |goto 28.2,69.6
step
talk Crag Rockcrusher##43071
turnin Stonefather's Boon##26499 |goto 27.9,68.7
accept Sealing the Way##26501 |goto 27.9,68.7
stickystart "thunderstone"
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Shrine |q 26501/4 |goto 27.3,67.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Barracks |q 26501/3 |goto 26.0,68.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Inn |q 26501/2 |goto 26.2,69.8
step
label "thunderstone"
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Armory |q 26501/1 |goto 27.3,70.1
click Thunder Stone##204348
collect 12 Thunder Stone##58886 |q 26502/1 |goto 27.3,70.1
step
talk Gravel Longslab##43168
turnin Sealing the Way##26501 |goto 24.5,62.4
accept Shatter Them!##26537 |goto 24.5,62.4
step
talk Clay Mudaxle##43169
turnin Thunder Stones##26502 |goto 24.8,62.2
accept Fixer Upper##26564 |goto 24.8,62.2
step
talk Earthmender Deepvein##43319
accept Battlefront Triage##26591 |goto 24.6,62.2
step
Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965
Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
Click Catapult Parts |tip They look kind of like big metal parts laying on the ground around this area.
collect 6 Catapult Part##58944 |q 26564/1 |goto 23.9,60.3
kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto 23.9,60.3
You can also look around 23.1,53.9 for more
step
talk Gravel Longslab##43168
turnin Shatter Them!##26537 |goto 24.5,62.4
step
talk Earthmender Deepvein##43319
turnin Battlefront Triage##26591 |goto 24.6,62.2
step
talk Clay Mudaxle##43169
turnin Fixer Upper##26564 |goto 24.8,62.2
step
talk Gravel Longslab##43168
accept Troggzor the Earthinator##26625 |goto 24.5,62.4
step
kill Troggzor the Earthinator##43456
collect The Earthinator's Cudgel##59144 |q 26625/1 |goto 22.6,56.9
step
talk Gravel Longslab##43168
turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
step
talk Clay Mudaxle##43169
accept Rush Delivery##27126 |goto 24.8,62.2
step
talk Peak Grindstone##45043
turnin Rush Delivery##27126 |goto 20.7,61.6
accept Close Escort##26632 |goto 20.7,61.6
step
talk Peak Grindstone##45043
Tell him you're ready to escort the catapult
|tip You need to be near the catapult or it will stop
Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
step
talk Pyrium Lodestone##43897
turnin Close Escort##26632 |goto 22.7,52.0
accept Keep Them off the Front##26755 |goto 22.7,52.0
step
clicknpc Earthen Catapult##43509
Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
Bombard 30 Reinforcements |q 26755/1 |goto 22.4,52.0
step
talk Pyrium Lodestone##43897
turnin Keep Them off the Front##26755 |goto 22.7,52.0
accept Reactivate the Constructs##26762 |goto 22.7,52.0
step
talk Flint Oremantle##43898
accept Mystic Masters##26770 |goto 22.8,52.1
step
clicknpc Deactivated War Construct##43984
Reactivate 5 Deactivated War Constructs |q 26762/1 |goto 22.6,47.6
kill 5 Needlerock Mystic |q 26770/1 |goto 22.6,47.6
|tip Activate the golems before attacking mystics.
step
talk Flint Oremantle##43898
turnin Mystic Masters##26770 |goto 22.8,52.1
step
talk Pyrium Lodestone##43897
turnin Reactivate the Constructs##26762 |goto 22.7,52.0
accept Down Into the Chasm##26834 |goto 22.7,52.0
step
talk Slate Quicksand##44143
turnin Down Into the Chasm##26834 |goto 27.6,44.8
accept Sprout No More##26791 |goto 27.6,44.8
accept Fungal Monstrosities##26792 |goto 27.6,44.8
step
clicknpc War Guardian##44126
Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto 27.6,44.7
Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto 27.6,44.7
step
kill 5 Fungal Monstrosity##44035+ |q 26792/2 |goto 26.8,41.8
clicknpc Giant Mushroom##44049+
Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
step
talk Slate Quicksand##44143
turnin Sprout No More##26791 |goto 27.6,44.8
turnin Fungal Monstrosities##26792 |goto 27.6,44.8
accept A Slight Problem##26835 |goto 27.6,44.8
step
talk Pyrium Lodestone##43897
turnin A Slight Problem##26835 |goto 22.7,52.0
accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
step
kill Bouldergut##44151
Rescue Stonefather Oremantle |q 26836/1 |goto 24.5,31.1
step
talk Pyrium Lodestone##43897
turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
accept The Hero Returns##27937 |goto 22.7,52.0
step
talk Stonefather Oremantle##44204
turnin The Hero Returns##27937 |goto 28.0,68.6
accept The Middle Fragment##27938 |goto 28.0,68.6
step
click The Stonefather's Safe##206562
collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto 28.0,68.7
step
talk Earthcaller Yevaa##42573
turnin The Middle Fragment##27938 |goto 49.5,53.3
step
talk Maruut Stonebinder##43065
accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
step
talk Earthcaller Torunscar##42730
turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
accept Crumbling Defenses##26312 |goto 46.1,45.6
accept On Even Ground##26314 |goto 46.1,45.6
step
talk Earthmender Norsala##42731
accept Core of Our Troubles##26313 |goto 46.2,45.7
stickystart "irestonecore"
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Stormcaller Mylra |q 26312/2 |goto 44.3,43.7
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Tawn Winterbluff |q 26312/1 |goto 44.5,41.3
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Hargoth Dimblaze |q 26312/3 |goto 47.6,42.8
step
label "irestonecore"
kill Irestone Rumbler##42780+
collect 6 Irestone Core##58168 |q 26313/1 |goto 46.2,42.2
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Bring down 3 Servants of Therazane |q 26314/1 |goto 46.2,42.2
step
talk Earthmender Norsala##42731
turnin Core of Our Troubles##26313 |goto 46.2,45.7
step
talk Earthcaller Torunscar##42730
turnin Crumbling Defenses##26312 |goto 46.1,45.6
turnin On Even Ground##26314 |goto 46.1,45.6
step
talk Earthmender Norsala##42731
accept Imposing Confrontation##26315 |goto 46.2,45.7
step
Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
|tip He's a huge rock giant that walks around this area.
Seek Peace with Boden the Imposing |q 26315/1 |goto 49.2,40.1
step
talk Earthmender Norsala##42731
turnin Imposing Confrontation##26315 |goto 46.2,45.7
accept Rocky Relations##26328 |goto 46.2,45.7
step
talk Diamant the Patient##42467
turnin Rocky Relations##26328 |goto 56.5,42.7
accept Hatred Runs Deep##26376 |goto 56.5,42.7
accept Unsolid Ground##26377 |goto 56.5,42.7
step
talk Quartz Stonetender##42899
accept Loose Stones##26375 |goto 56.5,41.0
stickystart "quartzcluster"
stickystart "lorthgate"
step
kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.2,39.4
step
label "quartzcluster"
click Jade Crystal Cluster##204253
collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254
|tip They look like small rock giants around this area.
Release 6 Quartz Rocklings |q 26375/1 |goto 59.5,41.5
step
Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
collect Jade Crystal Composite##58783 |q 26377
step
Use your Jade Crystal Composite |use Jade Crystal Composite##58783
Lure an Agitated Tunneler |q 26377/1 |goto 59.6,41.4
step
label "lorthgate"
kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
step
talk Quartz Stonetender##42899
turnin Loose Stones##26375 |goto 56.5,41.0
step
talk Diamant the Patient##42467
turnin Hatred Runs Deep##26376 |goto 56.5,42.7
turnin Unsolid Ground##26377 |goto 56.5,42.7
accept Violent Gale##26426 |goto 56.5,42.7
step
Get next to Felsen the Enduring
Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
step
Fly to the mouth of this cave
Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Violent Gale##26426
accept Depth of the Depths##26869
step
Follow the path |goto 64.5,21.7 < 5 |walk
Follow the path |goto 65.3,18.4 < 5 |walk
click Gigantic Painite Cluster##204959
turnin Depth of the Depths##26869 |goto 66.4,20.6
accept A Rock Amongst Many##26871 |goto 66.4,20.6
step
Follow the path to this spot, then jump down |goto 64.3,23.5 < 5 |walk
Leave the cave |goto 58.3,25.5 < 5 |walk
talk Diamant the Patient##42467
turnin A Rock Amongst Many##26871 |goto 56.5,42.7
accept Entrenched##26436 |goto 56.5,42.7
step
talk Kor the Immovable##42469
turnin Entrenched##26436 |goto 34.3,34.3
accept Intervention##26438 |goto 34.3,34.3
accept Making Things Crystal Clear##26437 |goto 34.3,34.3
step
talk Berracite##43344
accept Putting the Pieces Together##26439 |goto 34.1,35.2
step
kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
kill 12 Jaspertip flayers |q 26438/1 |goto 30.5,46.8
click Chalky Crystal Formation##204297
collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto 30.5,46.8
clicknpc Dormant Stonebound Elemental##43115
Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
step
talk Kor the Immovable##42469
turnin Intervention##26438 |goto 34.3,34.3
turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
step
talk Berracite##43344
turnin Putting the Pieces Together##26439 |goto 34.1,35.2
step
Next to you:
talk Pebble##43116
accept Clingy##26440
step
Get next to the huge green crystals
Bring Pebble to the crystal formation |q 26440/1 |goto 30.1,47.7
step
Next to you:
talk Pebble##43116
turnin Clingy##26440
accept So Big, So Round...##26441
step
talk Kor the Immovable##42469
turnin So Big, So Round...##26441 |goto 34.3,34.3
accept Petrified Delicacies##26507 |goto 34.3,34.3
accept Rock Bottom##26575 |goto 34.3,34.3
stickystart "petrifstone"
step
kill Gorgonite##43339 |q 26575/1 |goto 47.6,26.8
step
label "petrifstone"
clicknpc Petrified Stone Bat##43182+
collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto 47.5,26.8
step
Next to you:
talk Pebble##43116
turnin Petrified Delicacies##26507
step
talk Kor the Immovable##42469
turnin Rock Bottom##26575 |goto 34.3,34.3
accept Steady Hand##26576 |goto 34.3,34.3
accept Rocky Upheaval##26577 |goto 34.3,34.3
step
talk Terrath the Steady##42466
turnin Steady Hand##26576 |goto 39.9,19.4
accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
step
talk Terrath the Steady##42466
Tell him you are ready to escort a group of elementals across the open.
Speak to Terrath the Steady |q 26656/1 |goto 39.9,19.4
step
Go to this spot
Escort 5 Opalescent Guardians to safety |q 26656/2 |goto 51.1,14.7
|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
step
talk Terrath the Steady##42466
turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
accept Hard Falls##26657 |goto 39.9,19.4
accept Fragile Values##26658 |goto 39.9,19.4
step
kill Stone Trogg Beast Tamer##43598
|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
collect Stonework Mallet##59323 |q 26658/1 |goto 35.4,22.5
step
label "stonedrake"
kill 6 Stone Drake##42522 |q 26657/1 |goto 36.5,18.8
|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
talk Terrath the Steady##42466
turnin Hard Falls##26657 |goto 40.0,19.4
turnin Fragile Values##26658 |goto 40.0,19.4
accept Resonating Blow##26659 |goto 40.0,19.4
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.
|tip When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.
|tip Repeat this until she surrenders.
Defeat Aeosera |q 26659/2 |goto 32.7,24.3
step
talk Terrath the Steady##42466
turnin Resonating Blow##26659 |goto 33.1,24.1
If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.0,19.4]
step
talk Gorsik the Tumultuous##42472
turnin Rocky Upheaval##26577 |goto 72.2,54.0
accept Doomshrooms##26578 |goto 72.2,54.0
accept Gone Soft##26579 |goto 72.2,54.0
accept Familiar Intruders##26580 |goto 72.2,54.0
step
talk Windspeaker Lorvarius##43395
turnin Familiar Intruders##26580 |goto 71.8,47.6
accept A Head Full of Wind##26581 |goto 71.8,47.6
step
kill 8 Fungal Behemoth##42475+ |q 26579/1 |goto 73.6,40.8
kill Doomshroom##43388+
Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
Gather a sample of the red mist |q 26581/1 |goto 73.6,40.8
|tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
step
talk Windspeaker Lorvarius##43395
turnin A Head Full of Wind##26581 |goto 71.8,47.6
accept Unnatural Causes##26582 |goto 71.8,47.6
step
talk Gorsik the Tumultuous##42472
turnin Doomshrooms##26578 |goto 72.2,54.0
turnin Gone Soft##26579 |goto 72.2,54.0
turnin Unnatural Causes##26582 |goto 72.2,54.0
accept Shaken and Stirred##26584 |goto 72.2,54.0
accept Corruption Destruction##26585 |goto 72.2,54.0
step
talk Ruberick##43442
accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
step
Enter the cave |goto 68.6,29.1 < 5 |walk
talk Earthmender Norsala##43503
Tell her you're ready when she is |q 26583/1 |goto 69.8,31.9
kill Fungalmancer Glop##43372 |q 26583/2 |goto 69.8,31.9
|tip Follow him each time he runs away.
|tip Avoid the mushrooms as you walk, they will give you a debuff.
|tip While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
step
Follow the path up |goto 70.2,33.8 < 5 |walk
Leave the cave |goto 68.6,29.1 < 5 |walk
talk Ruberick##43442
turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
step
kill 8 Verlok Pillartumbler##43513+ |q 26584/1 |goto 69.4,24.8
click Verlok Miracle-Grow##204410
collect 8 Verlok Miracle-Grow##59123 |q 26585/1 |goto 69.4,24.8
step
talk Gorsik the Tumultuous##42472
turnin Shaken and Stirred##26584 |goto 72.2,54.0
turnin Corruption Destruction##26585 |goto 72.2,54.0
accept At the Stonemother's Call##26750 |goto 72.2,54.0
step
talk Therazane##42465
turnin At the Stonemother's Call##26750 |goto 56.3,12.2
accept Audience with the Stonemother##26752 |goto 56.3,12.2
step
Watch the dialogue
Attend the Stonemother's Audience |q 26752/1
step
talk Earthcaller Torunscar##43809
turnin Audience with the Stonemother##26752 |goto 56.1,13.5
accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
step
talk Explorer Mowi##44799
accept The Twilight Plot##27004 |goto 47.3,51.4
step
talk Prospector Brewer##44802
accept Fly Over##27006 |goto 47.3,51.4
step
Go to this spot next to the big white portal
Investigate the Master's Gate |q 27006/1 |goto 39.0,74.2
step
kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
collect Masters' Gate Plans##60745 |q 27004/1 |goto 40.1,72.2
step
talk Explorer Mowi##44799
turnin The Twilight Plot##27004 |goto 47.3,51.4
step
talk Prospector Brewer##44802
turnin Fly Over##27006 |goto 47.3,51.4
accept Fight Fire and Water and Air with...##27042 |goto 47.3,51.4
step
talk Explorer Mowi##44799
accept Decryption Made Easy##27040 |goto 47.3,51.4
stickystart "decryptplans"
step
kill Bound Water Elemental##44886
Acquire the Water Ward |q 27042/2 |goto 40.8,66.3
step
kill Bound Fire Elemental##44887
Acquire the Fire Ward |q 27042/1 |goto 36.0,67.4
step
kill Bound Air Elemental##44885
Acquire the Air Ward |q 27042/3 |goto 40.5,72.4
step
label "decryptplans"
click One-Time Decryption Engine##205145
Decrypt 6 Plans |q 27040/1 |goto 40.2,67.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Decryption Made Easy##27040
accept The Wrong Sequence##27058
step
click the Waygate Controller##205161
Destroy the Waygate |q 27058/1 |goto 39.1,73.9
step
kill Haethen Kaul##44835 |q 27042/4 |goto 39.9,62.2
|tip He's up on a huge floating rock.
step
talk Explorer Mowi##44799
turnin The Wrong Sequence##27058 |goto 47.3,51.4
accept That's No Pyramid!##28292 |goto 47.3,51.4
step
talk Prospector Brewer##44802
turnin Fight Fire and Water and Air with...##27042 |goto 47.3,51.4
step
Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
[48.5,50.1]
[47.4,50.9]
[48.1,49.9]
Tell them you are joining an assault on Lorthuna's Gate and they are needed.
Rally 5 Earthen Ring |q 26827/1 |goto 48.0,53.7
step
talk Maruut Stonebinder##43065
turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
accept Our Part of the Bargain##26828 |goto 49.6,53.0
step
talk Therazane##44025
turnin Our Part of the Bargain##26828 |goto 63.3,25.0
accept The Stone March##26829 |goto 63.3,25.0
accept Therazane's Mercy##26832 |goto 63.3,25.0
step
talk Boden the Imposing##44080
accept The Twilight Flight##26831 |goto 62.6,26.9
stickystart "twiprecip"
step
kill High Priestess Lorthuna##42914
|tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
Defeat High Priestess Lorthuna |q 26832/2 |goto 62.4,31.8
step
kill Boldrich Stonerender##42923
Defeat Boldrich Stonerender |q 26832/1 |goto 58.9,32.9
step
kill Zoltrik Drakebane##42918
|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
Defeat Zoltrik Drakebane |q 26831/1 |goto 63.1,38.1
step
talk Terrath the Steady##42614
turnin The Twilight Flight##26831 |goto 64.1,36.9
step
label "twiprecip"
kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
kill 15 Twilight Precipice Cultists |q 26829/1 |goto 60.3,33.2
step
talk Therazane##44025
turnin The Stone March##26829 |goto 63.3,25.0
turnin Therazane's Mercy##26832 |goto 63.3,25.0
accept Word In Stone##26833 |goto 63.3,25.0
step
talk Maruut Stonebinder##43818
turnin Word In Stone##26833 |goto 49.6,53.0
accept Undying Twilight##26875 |goto 49.6,53.0
step
kill 12 Twilight Invaders |q 26875/1 |goto 50.7,49.6
kill Desecrated Earthrager##44683 |q 26875/2 |goto 50.7,49.6
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Undying Twilight##26875
accept The Binding##26971
step
kill High Priestess Lorthuna##43837 |q 26971/1 |goto 49.6,52.9
step
talk Earthcaller Torunscar##43835
turnin The Binding##26971 |goto 49.6,52.9
step
talk Therazane##43792
accept The Stone Throne##26709 |goto 49.8,53.4
step
talk Therazane##42465
turnin The Stone Throne##26709 |goto 56.4,12.1
step
label "daily"
talk Pyrite Stonetender##44945
accept Lost In The Deeps##26710 |goto 55.4,14.2
|tip This quest can be offered at random and may not be offered everyday.
step
Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
Bring Pebble to safety |q 26710/1 |goto 58.3,25.6
step
talk Pyrite Stonetender##44945
turnin Lost In The Deeps##26710 |goto 55.4,14.2
Click here to restart the daily. |next "daily" |confirm always
Once you've done the daily 10 times, click here. |next "buy" |confirm always
step
label "buy"
Check your _mailbox_ for your _prize_!
collect 1 Pebble##60869
step
learnpet Pebble##45247 |use Pebble##60869
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Searing Scorchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Searing Scorchling.",
model={8409},
pet=172,
},[[
step
This _pet_ requires you to have done the _Firelands Pre-quests_ and dailies to enter the _Molten Front_
Routing to proper section |next "prequests" |only if not completedq(25611)
Routing to proper section |next "buy" |only if completedq(25611)
step
Go to the _Molten Front_ |goto Molten Front |noway |c
earn 30 Mark of the World Tree##416
step
label "prequests"
#include "A_Firelands_PreQuests"
step
label "buy"
talk Zen'Vorka##52822
buy 1 Zen'Vorka's Cache##71631 |goto Molten Front 47.0,90.8
step
use Zen'Vorka's Cache##71631
collect 1 Scorched Stone##34955
|tip If you don't get this the first time you will have to earn 30 more Marks of the World Tree to try again
step
learnpet Searing Scorchling##25706 |use Scorched Stone##34955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Teldrassil Sproutling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Teldrassil Sproutling.",
model={28482},
pet=204,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Night Elf.
confirm always
step
label "main"
Click here to unlock the daily quests for the Argent Tournament Grouns. |confirm
If you have achieved champion rank already, click here. |next "pet" |confirm
Click here if you are _Aspirant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Valiant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and not a Death Knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and a Death knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
#include "ArgentT_Quests"
step
Routing back. |next "main" |only if default
step
label "pet"
talk Jaelyne Evensong##33592
accept Valiant Of Darnassus##13706 |goto Icecrown,76.3,19.0
turnin Valiant Of Darnassus##13706 |goto Icecrown,76.3,19.0
accept The Valiant's Charge##13717 |goto Icecrown,76.3,19.0
step
talk Jaelyne Evensong##33592
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13757 |goto Icecrown,76.3,19.0 |or
accept A Worthy Weapon##13758 |goto Icecrown,76.3,19.0 |or
accept The Edge Of Winter##13759 |goto Icecrown,76.3,19.0 |or
step
talk Illestria Bladesinger##33652
accept A Valiant's Field Training##13760 |goto 76.3,19.0
step
talk Airae Starseeker##33654
accept The Grand Melee##13761 |goto 76.4,19.0
accept At The Enemy's Gates##13855 |goto 76.4,19.0
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13757/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13758 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13758/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13759 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13759/1 |goto Howling Fjord,42.2,19.7
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13855 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13855/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13855/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13855/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13760/1 |goto 44.3,54.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13761 |goto 76.0,20.4
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
|tip Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto 75.3,18.5
step
talk Jaelyne Evensong##33592
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13757 |goto 76.3,19.0
turnin A Worthy Weapon##13758 |goto 76.3,19.0
turnin The Edge Of Winter##13759 |goto 76.3,19.0
step
talk Illestria Bladesinger##33652
turnin A Valiant's Field Training##13760 |goto 76.3,19.0
step
talk Airae Starseeker##33654
turnin The Grand Melee##13761 |goto 76.4,19.0
turnin At The Enemy's Gates##13855 |goto 76.4,19.0
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13717/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13717 |goto 76.3,19.1
accept The Valiant's Challenge##13725 |goto 76.3,19.1
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13725 |goto 76.0,20.4
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.
|tip Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
|tip Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13725/1 |goto 68.6,21.0
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13725 |goto 76.3,19.1
step
Become a Champion of Darnassus |achieve 2777
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Rook Hawkfist##33653
buy 1 Teldrassil Sproutling##44965 |goto Icecrown,76.2,19.2
step
learnpet Teldrassil Sproutling##33188 |use Teldrassil Sproutling##44965
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Snowman",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Tiny Snowman.",
model={13610},
pet=117,
},[[
step
These pets are only availiable during the _Winter Veil_ Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Snowman Kit##21309
step
learnpet Tiny Snowman##15710 |use Snowman Kit##21309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Withers",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Withers.",
model={45943},
pet=220,
},[[
step
talk Dentaria Silverglade##32973
turnin Hero's Call: Darkshore!##28490 |goto Darkshore,51.8,18.0 |only Dwarf,Gnome,Human
turnin Breaking Waves of Change##26383 |goto Darkshore,51.8,18.0 |only NightElf,Draenei
turnin Breaking Waves of Change##26385 |goto Darkshore,51.8,18.0 |only Worgen
accept The Last Wave of Survivors##13518 |goto Darkshore,51.8,18.0
step
talk Innkeeper Kyteran##43420
home Lor'danel |goto 51.0,18.6
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept Threat from the Water##13522 |goto 50.2,19.8
stickystart "vilespray"
step
talk Volcor##33094
Rescue Volcor |q 13518/4 |goto 45.0,18.2
step
talk Gershala Nightwhisper##32911
Rescue Gershala Nightwhisper |q 13518/2 |goto 44.1,17.8
step
talk Cerellean Whiteclaw##33093
Rescue Cerellean Whiteclaw |q 13518/1 |goto 44.6,19.9
step
talk Shaldyn##33095
Rescue Shaldyn |q 13518/3 |goto 42.9,21.5
step
label "vilespray"
kill 8 Vile Spray##32928 |q 13522/1 |goto 43.1,20.6
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin Threat from the Water##13522 |goto 50.2,19.8
step
talk Dentaria Silverglade##32973
turnin The Last Wave of Survivors##13518 |goto 51.8,18.0
step
talk Serendia Oakwhisper##32972
accept The Boon of the Seas##13520 |goto 51.8,18.1
step
talk Wizbang Cranktoggle##32977
accept Buzzbox 413##13521 |goto 51.1,19.7
stickystart "corrupttide"
step
click Encrusted Clam##194107
collect 16 Encrusted Clam Muscle##44864 |q 13520/1 |goto 52.4,18.8
step
label "corrupttide"
kill Corrupted Tide Crawler##32935+
collect 4 Corrupted Tide Crawler Flesh##44863 |q 13521/1 |goto 53.4,19.5
step
click Buzzbox 413##194105
turnin Buzzbox 413##13521 |goto 53.3,19.6
accept No Accounting for Taste##13527 |goto 53.3,19.6
step
clicknpc Decomposing Thistle Bear##32975
collect Foul Bear Carcass Sample##44911 |q 13527/1 |goto 55.1,21.0
step
talk Wizbang Cranktoggle##32977
turnin No Accounting for Taste##13527 |goto 51.1,19.7
accept Buzzbox 723##13528 |goto 51.1,19.7
step
talk Serendia Oakwhisper##32972
turnin The Boon of the Seas##13520 |goto 50.8,18.1
step
kill Corrupted Thistle Bear##33009+, Corrupted Thistle Bear Matriarch##33905+
|tip The green ones won't drop loot.
collect 6 Corrupted Thistle Bear Guts##44913 |q 13528/1 |goto 55.0,24.1
step
click Buzzbox 723##194122
turnin Buzzbox 723##13528 |goto 54.2,29.3
accept A Cure In The Dark##13554 |goto 54.2,29.3
step
talk Tharnariun Treetender##32978
accept The Corruption's Source##13529 |goto 51.2,19.6
step
Follow the path up |goto 56.2,27.2 < 5 |only if walking
Enter the cave |goto 56.9,31.3 < 5 |walk
Go to the lower level of the cave
kill Zenn Foulhoof##33020 |q 13529/1 |goto 58.2,33.0
collect Corruptor's Master Key##44927 |n
Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927
accept Bearer of Good Fortune##13557
step
click Secure Bear Cage##194124
Free 8 animals |q 13557/1 |goto 57.4,33.8
click Disgusting Workbench##194714
accept A Troubling Prescription##13831
step
kill Vile Corruptor##33022+, Vile Grell##33021+
collect 6 Foul Ichor##44966 |q 13554/1 |goto 57.0,33.2
kill 8 Vile Grell##33021+ |q 13529/2 |goto 57.0,33.2
click Secure Bear Cage##194124
Free 8 Uncorrupted Animals |q 13557/1 |goto 57.0,33.2
step
talk Wizbang Cranktoggle##32977
turnin A Cure In The Dark##13554 |goto 51.1,19.7
step
talk Tharnariun Treetender##32978
turnin The Corruption's Source##13529 |goto 51.1,19.7
turnin Bearer of Good Fortune##13557 |goto 51.1,19.7
turnin A Troubling Prescription##13831 |goto 51.1,19.7
step
talk Volcor##32960
accept A Lost Companion##13564 |goto 50.9,18.0
step
talk Cerellean Whiteclaw##32959
accept A Love Eternal##13563 |goto 50.8,17.9
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept The Final Flame of Bashal'Aran##13562 |goto 50.2,19.8
step
talk Arya Autumnlight##33177
accept Solace for the Highborne##13561 |goto 46.8,33.3
stickystart "cursedhigh"
step
click The Final Flame of Bashal'Aran##194179
Extinguish the Final Flame of Bashal'Aran |q 13562/1 |goto 45.9,34.2
step
kill Anaya Dawnrunner##33181 |q 13563/1 |goto 48.5,36.6
collect Anaya's Pendant##5382 |q 13563/2 |goto 48.5,36.6
step
label "cursedhigh"
kill 6 Cursed Highborne##33179 |q 13561/1 |goto 48.2,36.4
kill 6 Writhing Highborne##33180 |q 13561/2 |goto 48.2,36.4
step
talk Arya Autumnlight##33177
turnin Solace for the Highborne##13561 |goto 46.8,33.3
step
Go to this spot
Locate Grimclaw |q 13564/1 |goto 42.9,39.0
|tip He's a dead white bear laying on the ground.
step
talk Keeper Karithus##33048
turnin A Lost Companion##13564 |goto 43.0,39.0
accept Unsavory Remedies##13598 |goto 43.0,39.0
accept Ritual Materials##13566 |goto 43.0,39.0
step
talk Seraphine##33126
accept Twice Removed##13565 |goto 42.9,39.0
stickystart "darkscout"
step
clicknpc Moonstalker##33127+
|tip Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
collect 3 Moonstalker Whisker##44969 |q 13566/1 |goto 42.4,39.8
step
clicknpc Mottled Doe##33313
collect 3 Tuft of Mottled Doe Hair##45027 |q 13566/2 |goto 44.1,40.8
step
clicknpc Hungry Thistle Bear##33978+
|tip Only click them when they are neutral, or they will attack you.
collect 3 Thistle Bear Fur##45885 |q 13566/3 |goto 46.6,38.9
step
kill Lady Janira##33207 |q 13565/1 |goto 48.6,40.4
step
label "darkscout"
kill Darkscale Scout##33206+
Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
Call 6 Withered Ents |q 13565/2 |goto 47.7,39.7
click Fuming Toadstool##194209
collect 6 Fuming Toadstool##44976 |q 13598/1 |goto 47.7,39.7
step
talk Keeper Karithus##33048
turnin Unsavory Remedies##13598 |goto 43.0,39.0
turnin Ritual Materials##13566 |goto 43.0,39.0
step
talk Seraphine##33126
turnin Twice Removed##13565 |goto 42.9,39.0
step
talk Keeper Karithus##33048
accept The Ritual Bond##13569 |goto 43.0,39.0
step
Click the Grovekeeper's Incense##8683
Breathe in the smoke to entice visions of the great animal spirits |havebuff 136090 |q 13569 |goto 42.9,39.0
step
talk Great Stag Spirit##33133
|tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.
|tip We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.
|tip If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.
|tip You can only choose one, so pick whichever one you'd like.
accept Spirit of the Stag##13567 |instant |goto 43.8,40.2
step
talk Keeper Karithus##33048
turnin The Ritual Bond##13569 |goto 43.0,39.0
accept Grimclaw's Return##13599 |goto 43.0,39.0
step
talk Serendia Oakwhisper##32972
turnin Grimclaw's Return##13599 |goto 50.9,18.2
step
talk Cerellean Whiteclaw##32959
turnin A Love Eternal##13563 |goto 50.8,17.9
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin The Final Flame of Bashal'Aran##13562 |goto 50.7,19.4
accept The Shatterspear Invaders##13589 |goto 50.7,19.4
step
talk Gorbold Steelhand##32979
accept An Ocean Not So Deep##13560 |goto 51.0,19.2
step
click Decoy Bot Control Console##195006
As the robot, walk north underwater to get near a group of murlocs
Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
kill 50 Scavenging Greymist Murlocs |q 13560/1 |goto 53.0,11.0
step
talk Gorbold Steelhand##32979
turnin An Ocean Not So Deep##13560 |goto 51.0,19.2
step
talk Lieutenant Morra Starbreeze##32963
turnin The Shatterspear Invaders##13589 |goto 58.9,19.4
step
talk Sentinel Tysha Moonblade##32965
accept Shatterspear Laborers##13504 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
accept Remnants of the Highborne##13505 |goto 58.9,19.5
step
kill 10 Shatterspear Laborer##32861 |q 13504/1 |goto 60.5,21.3
click Highborne Relic##194090
collect 8 Highborne Relic##5360 |q 13505/1 |goto 60.5,21.3
kill Shatterspear Overseer##32863
collect Overseer's Orders##44979 |n
Click the Overseer's Orders in your bags |use Overseer's Orders##44979
accept Reason to Worry##13506
step
talk Sentinel Tysha Moonblade##32965
turnin Shatterspear Laborers##13504 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
turnin Remnants of the Highborne##13505 |goto 58.9,19.5
step
talk Lieutenant Morra Starbreeze##32963
turnin Reason to Worry##13506 |goto 58.9,19.4
accept Swift Response##13508 |goto 58.9,19.4
accept War Supplies##13509 |goto 58.9,19.4
step
talk Sentinel Tysha Moonblade##32965
accept Denying Manpower##13507 |goto 58.9,19.4
step
kill 6 Horde Enforcer##32859+ |q 13507/1 |goto 61.6,11.6
kill 6 Shatterspear Mystic##34248+ |q 13507/2 |goto 61.6,11.6
Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999
|tip They look like brown wooden crates around this area.
Burn 12 Shatterspear Armaments |q 13509/1 |goto 61.6,11.6
step
talk Alanndarian Nightsong##33055
turnin Swift Response##13508 |goto 63.8,6.0
accept One Bitter Wish##13511 |goto 63.8,6.0
step
kill Rit'ko##32970 |q 13511/1 |goto 64.1,5.3
collect Shatterspear Torturer's Cage Key##45040 |q 13510 |goto 64.1,5.3 |future
step
click Shatterspear Cage##206830
talk Sentinel Aynasha##32964
accept Timely Arrival##13510 |goto 64.5,5.5
step
Follow Sentinel Aynasha as she runs
|tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
Escort Sentinel Aynasha to the Dock |q 13510/1 |goto 60.2,7.0
step
talk Sentinel Tysha Moonblade##32965
turnin Denying Manpower##13507 |goto 58.9,19.4
step
talk Lieutenant Morra Starbreeze##32963
turnin One Bitter Wish##13511 |goto 58.9,19.4
turnin War Supplies##13509 |goto 58.9,19.4
turnin Timely Arrival##13510 |goto 58.9,19.4
accept Strategic Strikes##13512 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
accept On the Brink##13513 |goto 58.9,19.5
step
talk Mathas Wildwood##34041
accept The Looting of Althalaxx##13844 |goto 59.1,19.6
stickystart "shatteramul"
step
Use your Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995
|tip She's floating above the water in this pit in a blue smokey cyclone.
|tip Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.
|tip Keep alternating between throwing your spear at her and hiding.
kill Sheya Stormweaver##32869 |q 13512/2 |goto 61.2,20.4
step
kill Teegan Holloway##34033 |q 13844/1 |goto 58.2,23.9
step
click Charred Book##194787
collect Narassin's Tome##45944 |q 13844/2 |goto 58.3,24.0
step
Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995
|tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.
|tip Keep using your Dryad spear on him and moving to avoid his spell.
kill Lorenth Thundercall##32868 |q 13512/1 |goto 56.8,25.9
step
label "shatteramul"
kill Shatterspear Shaman##32860+
collect 6 Shatterspear Amulet##44942 |q 13513/1 |goto 57.2,25.1
step
talk Lieutenant Morra Starbreeze##32963
turnin Strategic Strikes##13512 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
turnin On the Brink##13513 |goto 58.9,19.5
step
talk Lieutenant Morra Starbreeze##32963
accept The Front Line##13590 |goto 58.9,19.4
step
talk Mathas Wildwood##34041
turnin The Looting of Althalaxx##13844 |goto 59.1,19.6
step
Follow the path up |goto 63.6,20.0 < 5 |walk
Enter the tunnel |goto 67.5,18.7 < 5 |walk
talk Kerlonian Evershade##33176
accept The Ancients' Ire##13514 |goto 69.1,19.3
step
clicknpc the Vengeful Protector##32851 |invehicle |q 13514 |goto 69.5,18.8
|tip It looks like a big purple tree ent.
step
Use the abilities on your hotbar near the trolls and next to the troll buildings around this area
Kill 30 Shatterspear Vale Trolls |q 13514/1 |goto 70.3,20.1
Destroy 6 Shatterspear Structures |q 13514/2 |goto 70.3,20.1
step
Click the red arrow on your hotbar to stop riding on the Vengeful Protector |outvehicle |q 13514 |goto 69.5,18.8
step
talk Kerlonian Evershade##33176
turnin The Ancients' Ire##13514 |goto 69.1,19.3
step
talk Huntress Sandrya Moonfall##33178
turnin The Front Line##13590 |goto 72.3,19.1
accept Ending the Threat##13515 |goto 72.3,19.1
step
talk Huntress Sandrya Moonfall##33178
Tell you are ready, begin the attack
kill Jor'kil the Soulripper##32862 |q 13515/1 |goto 72.3,19.1
|tip Make sure to loot his corpse.
collect Hellscream's Missive##46318 |n
Click Hellscream's Missive in your bags |use Hellscream's Missive##46318
accept Disturbing Connections##13591
step
talk Huntress Sandrya Moonfall##33178
turnin Ending the Threat##13515 |goto 72.4,18.8
step
talk Ranger Glynda Nal'Shea##32971
turnin Disturbing Connections##13591 |goto 50.7,19.7
step
talk Cerellean Whiteclaw##32959
accept Remembrance of Auberdine##13570 |goto 50.1,19.5 |instant
collect 1 Withers##46325 |goto 50.1,19.5
step
learnpet Withers##34278 |use Withers##46325
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Alliance Balloon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Alliance Balloon.",
model={38343},
pet=331,
},[[
step
talk Vin##54117
accept Blown Away##29412 |goto Stormwind City,58.8,52.8
step
Click on the _Windswept Balloon_
|tip They look like blue balloons all over Stormwind City.
collect 5 Windswept Balloon##71034 |q 29412/1 |goto 61.8,51.5
step
talk Vin##54117
accept Blown Away##29412 |goto Stormwind City,58.8,52.8
collect 1 Alliance Balloon##72042 |goto Stormwind City,58.8,52.8
step
learnpet Alliance Balloon##54539 |use Alliance Balloon##72042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Mini Jouster",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Blue Mini Jouster.",
model={69048},
pet=259,
},[[
step
Going to _Egg Wave_ |only if not completedq(25560) |next "eggwave"
Going to _The 'Unbeatable?' Pterodactyl: BEATEN._ |next "beaten" |only if completedq(25560)
step
label "eggwave"
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City,62.9,71.6
step
talk Cenarion Emissary Jademoon##15187 |goto 82.6,28.2
Ask her to send you to Moonglade
Teleport to Moonglade |goto Moonglade |noway |c
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade,45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto  Mount Hyjal,63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto 62.0,24.9
accept Protect the World Tree##25317 |goto 62.0,24.9
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.7
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.1,22.5
step
kill 8 Scalding Rock Elemental##40229+ |q 25460/1 |goto 67.1,22.6
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
|tip They look like small blue flying dragons around this area.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926+ |q 25370/1 |goto 67.1,22.6
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.1,22.5
accept Flames from Above##25574 |goto 64.1,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.7
step
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.8,15.4
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.1,22.5
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.6,35.5
stickystart "twiflame"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 43.3,27.4
step
label "twiflame"
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto 47.2,25.6
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto 47.2,25.6
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit##40080 |q 25323/1 |goto 48.5,29.2
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto 47.7,35.5
accept The Return of Baron Geddon##25464 |goto 47.7,35.5
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto 44.1,26.8
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.6,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,18.9
accept The Captured Scout##25320 |goto 48.4,18.9
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.5,21.5
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,18.9
accept A Prisoner of Interest##25324 |goto 48.4,18.9
step
Enter the cave |goto 52.5,17.3 < 5 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
Leave the cave |goto 52.5,17.3 < 5 |walk
|tip Follow the path up.
talk Alysra##40178
turnin Through the Dream##25325 |goto 52.2,17.4
accept Return to Nordrassil##25578 |goto 52.2,17.4
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto 62.0,24.9
accept The Return of the Ancients##25584 |goto 62.0,24.9
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.7,19.4
accept Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.7,19.7
accept In the Rear With the Gear##25234 |goto 35.7,19.7
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 38.1,23.0
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 38.1,23.0
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
click Twilight Supplies##202652
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 38.1,23.0
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.7,19.7
turnin In the Rear With the Gear##25234 |goto 35.7,19.7
accept The Voice of Goldrinn##25268 |goto 35.7,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto 30.1,31.3
accept Goldrinn's Ferocity##25271 |goto 30.1,31.3
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto 29.3,30.3
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto 30.1,31.3
accept Lycanthoth the Corruptor##25273 |goto 30.1,31.3
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto 32.4,37.3
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto 32.3,37.0
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto 29.6,29.3
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto 28.2,29.8
accept Cleaning House##25278 |goto 28.2,29.8
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.6,30.2
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.2
step
click a Stonebloom##9386
collect Stonebloom##52726 |q 25297/1 |goto 27.6,34.2
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.4,36.4
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.4
step
Enter the cave |goto 27.0,36.0 < 5 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto 25.8,41.7
accept Elementary!##25303 |goto 25.8,41.7
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.7,41.7
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto 25.8,41.7
accept Return to Duskwhisper##25312 |goto 25.8,41.7
step
While inside the cave do the following:
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay 8 Minion of Gar'gol |q 25278/1
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
accept Get Me Outta Here!##25332 |goto 27.2,40.8
step
Leave the cave |goto 27.1,36.0 < 5 |walk
Escort Kristoff Out |q 25332/1
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto 28.2,29.8
accept Sweeping the Shelf##25352 |goto 28.2,29.8
accept Lightning in a Bottle##25353 |goto 28.2,29.8
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
step
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto 27.4,39.2
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto 27.4,39.2
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25353/1 |goto 27.4,39.2
step
Use your Totem of Goldrinn |use Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Go inside the blue portal |goto 26.2,41.0 < 5 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25618 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
Do the following in the Firelands Forgeworks
kill 12 Dark Iron Laborer##40838+ |q 25576/1
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1
Click Twilight Arms Crates
|tip They look like wooden boxes sitting on the ground around this area.
Destroy 10 Twilight Arms Crates |q 25575/1
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
turnin Crushing the Cores##25577 |goto 26.3,41.9
accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
step
kill Cindermaul##40844 |q 25599/1 |goto 30.7,41.7
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto 30.7,41.7
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
step
Click the Portal Runes
|tip They are brown metal plates on the ground on this small circular island in the lava.
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.6,46.0
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25611 |goto 26.3,41.9
step
Go inside the blue portal |goto 25.9,40.9 < 5 |walk
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto 28.2,29.8
turnin Return from the Firelands##25611 |goto 28.2,29.8
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal,28.3,29.7
|tip Skip if you have completed Wings Over Mount Hyjal
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
accept Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.2,37.9
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.0,37.0
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.6,36.4
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.6,36.4
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.8,43.7
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.4,45.4
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto 14.4,45.4
accept The Name Never Spoken##25412 |goto 14.4,45.4
stickystart "frightanimal"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.6,41.5
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step
label "frightanimal"
kill 10 Raging Firestorm##39939+ |q 25381/1 |goto 13.3,41.4
kill 6 Twilight Inferno Lord##39974+ |q 25382/1 |goto 13.3,41.4
Click Panicked Bunnies and Terrified Squirrels
|tip They are small and run around this area.
collect 10 Frightened Animal##53060 |q 25385/1 |goto 13.3,41.4
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 19.0,40.9
turnin Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.2,37.9
accept Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.3,44.9
accept Black Heart of Flame##25428 |goto 22.3,44.9
stickystart "injfawns"
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 12.9,41.4
step
label "injfawns"
click 3 Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.2,37.9]
Escort 3 Injured Fawns Home |q 25392/1 |goto 14.5,40.8
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.6,32.8
accept The Bears Up There##25462 |goto 13.6,32.8
step
clicknpc Climbing Tree##40190
clicknpc Hyjal Bear Cub##40240+
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 14.2,32.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.6,32.8
accept Smashing Through Ashes##25490 |goto 13.6,32.8
step
kill 8 Charbringer##40336+ |q 25490/1 |goto 21.6,59.1
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto 36.2,58.6
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 36.2,58.6
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 36.2,58.6
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto 27.1,62.6
turnin Fresh Bait##25493 |goto 27.1,62.6
accept Hell's Shells##25507 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.1,63.0
accept Prepping the Soil##25502 |goto 27.1,63.0
step
click Flameward##40460
Activate the Flameward |q 25502/1 |goto 33.0,64.6
Defend the Flameward |q 25502/2 |goto 33.0,64.6
step
Use your Heap of Incendosaur Innards near Nemesis |use Heap of Incendosaur Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##52383
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 39.3,54.1
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto 27.1,62.6
accept Tortolla Speaks##25510 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto 27.1,63.0
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto 24.7,55.7
accept Breaking the Bonds##25514 |goto 24.7,55.7
accept Children of Tortolla##25519 |goto 24.7,55.7
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 1 |q 25514/1 |goto 23.8,56.0
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 2 |q 25514/2 |goto 25.3,54.8
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.7,55.7
step
kill Deep Corruptor##40561+
|tip They are found underwater
Save 6 Tortolla's Eggs |q 25519/1 |goto 24.4,57.4
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.7,55.7
accept An Ancient Awakens##25520 |goto 24.7,55.7
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto 27.1,62.6
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.5
accept Scrambling for Eggs##25656 |goto 42.2,45.5
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.3,44.3
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.3,44.3
accept A Plea From Beyond##25665 |goto 40.3,44.3
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Kill 10 Wormwing Harpies |q 25655/1 |goto 38.5,43.0
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 38.5,43.0
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.5
turnin Scrambling for Eggs##25656 |goto 42.2,45.5
accept A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
Click the Harpy Signal Fire
|tip It's a brazier with red fire in it.
Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.3,44.2
talk Marion Wormwing##41112
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2 |goto 38.3,44.2
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 35.7,42.3
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.9
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.9
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
step
Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883
|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031+ |q 25761/1 |goto 31.6,75.8
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.6,75.8
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
Fight Sethria
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,48.0
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.2,47.8
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
talk Vision of Ysera##47002
accept The Last Living Lorekeeper##25830 |goto 43.8,46.0
If you cannot pick up the quest, go here to get it: [62.0,24.9]
step
|goto 39.1,58.3 |n
Go inside the blue portal |goto 38.77,58.01 < 3 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.1
step
Equip the Twilight Firelance |use Twilight Firelance##52716
Click Aviana's Guardian to ride it |goto 37.4,56.0 |invehicle
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Land next to the Guardian Flag
|tip It's a green flag on this small floating island.
Visit the Guardian Flag |q 25523/1 |goto 36.6,53.4
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto 35.4,51.7
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660 |q 25544/1 |goto 35.4,51.7
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto 36.6,53.3
You can find more Firelands Eggs at [39.3,54.1]
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto 37.2,56.2
step
label "beaten"
|goto Mount Hyjal,39.1,58.3 |n
Go inside the blue portal |goto 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
accept Vigilance on Wings##29177 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect 1 Twilight Firelance##52716 |q 29177 |goto 37.2,56.1
step
Equip the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40723 |invehicle |goto 37.4,56.0
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly around this area
kill 10 Twilight Lancer##40660+ |q 29177/1 |goto 36.6,53.4
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto 37.2,56.2
|tip You may choose only one Jouster.
collect Blue Mini Jouster##65661 |goto 37.2,56.2 |or
collect Gold Mini Jouster##65662 |goto 37.2,56.2 |or
step
learnpet Blue Mini Jouster##42177 |use Blue Mini Jouster##65661 |or
learnpet Gold Mini Jouster##42183 |use Gold Mini Jouster##65662 |or
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Blue Moth.",
model={19987},
pet=138,
},[[
step
talk Sixx##21019
buy 1 Blue Moth Egg##29901 |goto The Exodar 30.8,34.6
step
learnpet Blue Moth##21010 |use Blue Moth Egg##29901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkmoon Balloon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Darkmoon Balloon.",
model={38344},
pet=336,
},[[
step
This pet requires Darkmoon Island to be accessible.
Click here to be taken to the Darkmoon Faire Quests |confirm |next "Zygor's Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests"
Click here to do Darkmoon Faire Dailies |confirm |next "Zygor's Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies" |only if ZGV.guidesets["DailiesACATA"]
earn 90 Darkmoon Prize Ticket##515 |goto Darkmoon Island,56.0,52.9
Click here to buy the pet |confirm |next "buy"
step
label "buy"
talk Lhara##148465
buy 1 Darkmoon Balloon##73762 |goto Darkmoon Island,48.2,69.6
step
learnpet Darkmoon Balloon##55187 |use Darkmoon Balloon##73762
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gilnean Raven",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Gilnean Raven.",
model={42872},
pet=630,
},[[
step
talk Will Larsons##63083
Tell him you are interested in capturing rare pets.
learnpet Gilnean Raven##63098 |goto Darkshore 50.2,20.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gold Mini Jouster",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Gold Mini Jouster.",
model={69047},
pet=260,
},[[
step
Going to _Egg Wave_ |only if not completedq(25560) |next "eggwave"
Going to _The 'Unbeatable?' Pterodactyl: BEATEN._ |next "beaten" |only if completedq(25560)
step
label "eggwave"
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City,62.9,71.6
step
talk Cenarion Emissary Jademoon##15187 |goto 82.6,28.2
Ask her to send you to Moonglade
Teleport to Moonglade |goto Moonglade |noway |c
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade,45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto 63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto Mount Hyjal,62.0,24.9
accept Protect the World Tree##25317 |goto Mount Hyjal,62.0,24.9
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.7
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.1,22.5
step
kill 8 Scalding Rock Elemental##40229+ |q 25460/1 |goto 67.1,22.6
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
|tip They look like small blue flying dragons around this area.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926+ |q 25370/1 |goto 67.1,22.6
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.1,22.5
accept Flames from Above##25574 |goto 64.1,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.7
step
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.8,15.4
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.1,22.5
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.6,35.5
stickystart "twiflame2"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 43.3,27.4
step
label "twiflame2"
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto 47.2,25.6
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto 47.2,25.6
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit##40080 |q 25323/1 |goto 48.5,29.2
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto 47.7,35.5
accept The Return of Baron Geddon##25464 |goto 47.7,35.5
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto 44.1,26.8
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.6,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,18.9
accept The Captured Scout##25320 |goto 48.4,18.9
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.5,21.5
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,18.9
accept A Prisoner of Interest##25324 |goto 48.4,18.9
step
Enter the cave |goto 52.5,17.3 < 5 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
Leave the cave |goto 52.5,17.3 < 5 |walk
|tip Follow the path up.
talk Alysra##40178
turnin Through the Dream##25325 |goto 52.2,17.4
accept Return to Nordrassil##25578 |goto 52.2,17.4
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto 62.0,24.9
accept The Return of the Ancients##25584 |goto 62.0,24.9
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.7,19.4
accept Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.7,19.7
accept In the Rear With the Gear##25234 |goto 35.7,19.7
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 38.1,23.0
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 38.1,23.0
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
click Twilight Supplies##202652
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 38.1,23.0
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.7,19.7
turnin In the Rear With the Gear##25234 |goto 35.7,19.7
accept The Voice of Goldrinn##25268 |goto 35.7,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto 30.1,31.3
accept Goldrinn's Ferocity##25271 |goto 30.1,31.3
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto 29.3,30.3
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto 30.1,31.3
accept Lycanthoth the Corruptor##25273 |goto 30.1,31.3
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto 32.4,37.3
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto 32.3,37.0
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto 29.6,29.3
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto 28.2,29.8
accept Cleaning House##25278 |goto 28.2,29.8
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.6,30.2
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.2
step
click a Stonebloom##9386
collect Stonebloom##52726 |q 25297/1 |goto 27.6,34.2
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.4,36.4
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.4
stickystart "twiserv"
step
Enter the cave |goto 27.0,36.0 < 10 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
click Gar'gol's Personal Treasure Chest##204580
get Rusted Skull Key |q 25328/1 |goto 26.5,38.5
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto 25.8,41.7
accept Elementary!##25303 |goto 25.8,41.7
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.7,41.7
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto 25.8,41.7
accept Return to Duskwhisper##25312 |goto 25.8,41.7
step
label "twiserv"
While inside the cave do the following:
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay 8 Minion of Gar'gol |q 25278/1
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
accept Get Me Outta Here!##25332 |goto 27.2,40.8
step
Leave the cave |goto 27.1,36.0 < 5 |walk
Escort Kristoff Out |q 25332/1
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto 28.2,29.8
accept Sweeping the Shelf##25352 |goto 28.2,29.8
accept Lightning in a Bottle##25353 |goto 28.2,29.8
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
step
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto 27.4,39.2
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto 27.4,39.2
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25353/1 |goto 27.4,39.2
step
Use your Totem of Goldrinn |use Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Go inside the blue portal |goto 26.2,41.0 < 5 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25618 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
Do the following in the Firelands Forgeworks
kill 12 Dark Iron Laborer##40838+ |q 25576/1
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1
Click Twilight Arms Crates
|tip They look like wooden boxes sitting on the ground around this area.
Destroy 10 Twilight Arms Crates |q 25575/1
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
turnin Crushing the Cores##25577 |goto 26.3,41.9
accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
step
kill Cindermaul##40844 |q 25599/1 |goto 30.7,41.7
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto 30.7,41.7
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
step
Click the Portal Runes
|tip They are brown metal plates on the ground on this small circular island in the lava.
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.6,46.0
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25611 |goto 26.3,41.9
step
Go inside the blue portal |goto 25.9,40.9 < 5 |walk
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto 28.2,29.8
turnin Return from the Firelands##25611 |goto 28.2,29.8
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal,28.3,29.7
|tip Skip if you have completed Wings Over Mount Hyjal
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
accept Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.2,37.9
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.0,37.0
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.6,36.4
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.6,36.4
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.8,43.7
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.4,45.4
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto 14.4,45.4
accept The Name Never Spoken##25412 |goto 14.4,45.4
stickystart "twilord"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.6,41.5
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step
label "twilord"
kill 10 Raging Firestorm##39939+ |q 25381/1 |goto 13.3,41.4
kill 6 Twilight Inferno Lord##39974+ |q 25382/1 |goto 13.3,41.4
Click Panicked Bunnies and Terrified Squirrels
|tip They are small and run around this area.
collect 10 Frightened Animal##53060 |q 25385/1 |goto 13.3,41.4
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 19.0,40.9
turnin Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.2,37.9
accept Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.3,44.9
accept Black Heart of Flame##25428 |goto 22.3,44.9
stickystart "fawnmylune"
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 12.9,41.4
step
label "fawnmylune"
click 3 Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.2,37.9]
Escort 3 Injured Fawns Home |q 25392/1 |goto 14.5,40.8
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.6,32.8
accept The Bears Up There##25462 |goto 13.6,32.8
step
clicknpc Climbing Tree##40190
clicknpc Hyjal Bear Cub##40240+
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 14.2,32.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.6,32.8
accept Smashing Through Ashes##25490 |goto 13.6,32.8
step
kill 8 Charbringer##40336+ |q 25490/1 |goto 21.6,59.1
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto 36.2,58.6
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 36.2,58.6
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 36.2,58.6
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto 27.1,62.6
turnin Fresh Bait##25493 |goto 27.1,62.6
accept Hell's Shells##25507 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.1,63.0
accept Prepping the Soil##25502 |goto 27.1,63.0
step
click Flameward##40460
Activate the Flameward |q 25502/1 |goto 33.0,64.6
Defend the Flameward |q 25502/2 |goto 33.0,64.6
step
Use your Heap of Incendosaur Innards near Nemesis |use Heap of Incendosaur Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##52383
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 39.3,54.1
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto 27.1,62.6
accept Tortolla Speaks##25510 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto 27.1,63.0
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto 24.7,55.7
accept Breaking the Bonds##25514 |goto 24.7,55.7
accept Children of Tortolla##25519 |goto 24.7,55.7
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 1 |q 25514/1 |goto 23.8,56.0
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 2 |q 25514/2 |goto 25.3,54.8
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.7,55.7
step
kill Deep Corruptor##40561+
|tip They are found underwater
Save 6 Tortolla's Eggs |q 25519/1 |goto 24.4,57.4
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.7,55.7
accept An Ancient Awakens##25520 |goto 24.7,55.7
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto 27.1,62.6
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.5
accept Scrambling for Eggs##25656 |goto 42.2,45.5
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.3,44.3
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.3,44.3
accept A Plea From Beyond##25665 |goto 40.3,44.3
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Kill 10 Wormwing Harpies |q 25655/1 |goto 38.5,43.0
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 38.5,43.0
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.5
turnin Scrambling for Eggs##25656 |goto 42.2,45.5
accept A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
Click the Harpy Signal Fire
|tip It's a brazier with red fire in it.
Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.3,44.2
talk Marion Wormwing##41112
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2 |goto 38.3,44.2
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 35.7,42.3
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.9
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.9
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
step
Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883  |goto 31.6,75.8
|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031+ |q 25761/1 |goto 32.8,70.8
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto 32.8,70.8
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
Fight Sethria
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,48.0
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.2,47.8
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
talk Vision of Ysera##47002
accept The Last Living Lorekeeper##25830 |goto 43.8,46.0
If you cannot pick up the quest, go here to get it: [62.0,24.9]
step
|goto 39.1,58.3 |n
Go inside the blue portal |goto 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.1
step
Equip the Twilight Firelance |use Twilight Firelance##52716
Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Land next to the Guardian Flag
|tip It's a green flag on this small floating island.
Visit the Guardian Flag |q 25523/1 |goto 36.6,53.4
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto 35.4,51.7
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660 |q 25544/1 |goto 35.4,51.7
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto 36.6,53.3
You can find more Firelands Eggs at [39.3,54.1]
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto 37.2,56.2
step
label "beaten"
|goto Mount Hyjal,39.1,58.3 |n
Go inside the blue portal |goto 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
accept Vigilance on Wings##29177 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect 1 Twilight Firelance##52716 |q 29177 |goto 37.2,56.1
step
Equip the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40723 |invehicle |goto 37.4,56.0 |tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly around this area
kill 10 Twilight Lancer##40660+ |q 29177/1 |goto 36.6,53.4
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto 37.2,56.2
|tip You may choose only one Jouster.
collect Blue Mini Jouster##65661 |goto 37.2,56.2 |or
collect Gold Mini Jouster##65662 |goto 37.2,56.2 |or
step
learnpet Blue Mini Jouster##42177 |use Blue Mini Jouster##65661 |or
learnpet Gold Mini Jouster##42183 |use Gold Mini Jouster##65662 |or
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Great Horned Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Great Horned Owl.",
model={4615},
pet=68,
},[[
step
talk Shylenai##8665
buy 1 Great Horned Owl##8500 |goto Darnassus 64.0,53.6
step
learnpet Great Horned Owl##7553 |use Great Horned Owl##8500
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hawk Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Hawk Owl.",
model={6299},
pet=67,
},[[
step
talk Shylenai##8665
buy 1 Hawk Owl##8501 |goto Darnassus 64.0,53.6
step
learnpet Hawk Owl##7555 |use Hawk Owl##8501
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Plump Turkey",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Plump Turkey.",
model={45968},
pet=201,
},[[
#include "Pilgrim's_Bounty_Dailies"
step
Check your mailbox for your Turkey Cage.
collect Turkey Cage##44810
step
learnpet Plump Turkey##32818 |use Turkey Cage##44810
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Pterrordax Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Pterrordax Hatchling.",
model={38229},
pet=309,
},[[
step
This pet is a rare Archaeology "Fossil" solve
talk Harrison Jones##44238 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Pterrordax Hatchling"_. Solve this Archaeology puzzle
collect 1 Pterrordax Hatchling##69821
step
learnpet Pterrordax Hatchling##53225 |use Pterrordax Hatchling##69821
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Rustberg Gull",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Rustberg Gull.",
model={36499},
pet=271,
},[[
step
This will require that you be Honored with the Baradin's Wardens.
Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
You will need 40 Tol Barad Commendations.
earn 40 Tol Barad Commendation##391
_Honored_ with Baradin's Wardens |condition rep("Baradin's Wardens")>=Honored
Click here to move on to the daillies. |confirm
If you have 40 Tol Barad Commendations and are Honored with Baradin's Wardens, click here. |next "buy" |confirm
step
You will only be able to accept a total of 6 quests in the following guide steps.
Click here to continue |confirm
step
talk Sergeant Gray##48254
accept Bomb's Away!##28275 |goto Tol Barad Peninsula,72.9,60.9
accept Cannonball!##27987 |goto Tol Barad Peninsula,72.9,60.9
accept Ghostbuster##27978 |goto Tol Barad Peninsula,72.9,60.9
accept Taking the Overlook Back##27991 |goto Tol Barad Peninsula,72.9,60.9
accept WANTED: Foreman Wellson##27975 |goto Tol Barad Peninsula,72.9,60.9
accept Watch Out For Splinters!##27973 |goto Tol Barad Peninsula,72.9,60.9
step
talk Commander Marcus Johnson##47240
accept Claiming The Keep##28059 |goto 73.4,59.2
accept Leave No Weapon Behind##28063 |goto 73.4,59.2
accept Not The Friendliest Town##28130 |goto 73.4,59.2
accept Teach A Man To Fish.... Or Steal##28137 |goto 73.4,59.2
accept Walk A Mile In Their Shoes##28065 |goto 73.4,59.2
step
talk Camp Coordinator Brack##48255
accept A Sticky Task##27948 |goto 73.7,57.6
accept Boosting Morale##27972 |goto 73.7,57.6
accept Captain P. Harris##27970 |goto 73.7,57.6
accept Rattling Their Cages##27971 |goto 73.7,57.6
accept Shark Tank##28050 |goto 73.7,57.6
accept Thinning the Brood##27944 |goto 73.7,57.6
step
talk Lieutenant Farnsworth##48250
accept Finish The Job##28046 |goto 74.8,59.6
accept First Lieutenant Connor##27967 |goto 74.8,59.6
accept Magnets, How Do They Work?##27992 |goto 74.8,59.6
accept Salvaging the Remains##27966 |goto 74.8,59.6
accept The Forgotten##27949 |goto 74.8,59.6
stickystart "cannonstack2"
step
Follow the path up |goto 74.3,42.8 < 5 |walk
kill Commander Largo##47304 |q 27991/1 |goto 78.6,42.0
|tip He's at the top of the tower.
step
label "cannonstack2"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
Slay 14 Largo's Overlook Ghosts |q 27978/1 |goto 78.2,49.0
click Cannonball Stack##176215
collect 4 Stack of Cannonballs##62818 |q 27987/1 |goto 78.2,49.0
step
click String of Fish##206754
collect 22 Rustberg Seabass##63047 |q 28137/1 |goto 69.3,23.1
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28130/1 |goto 67.6,37.1
step
kill 12 Darkwood Lurker##46508+ |q 27944/1 |goto 54.2,47.0
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 27948/1 |goto 54.2,47.0
step
kill Captain P. Harris##47287 |q 27970/1 |goto 47.9,8.1
|tip He's walking around on this broken boat.
step
kill Tank##46608 |q 28050/1 |goto 49.4,19.8
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
click Barrel of Southsea Rum##206580
collect 6 Barrel of Southsea Rum##62810 |q 27972/1 |goto 49.4,19.8
step
kill 8 Shipwrecked Sailor##46605+ |q 27971/1 |goto 49.0,29.4
step
kill Keep Lord Farson##47447 |q 28059/1 |goto 36.1,27.3
|tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28065/1 |goto 37.8,29.1
|tip Follow the Farson Hold Prisoner and protect him.
step
click Rack of Rifles##206664
collect 12 Rusty Rifle##62921 |q 28063/1 |goto 41.2,35.8
step
kill Foreman Wellson##46648 |q 27975/1 |goto 27.2,47.7
step
clicknpc Wellson Cannon##48283
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28275/1 |goto 22.2,36.3
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 27973/1 |goto 30.1,43.9
step
kill 5 Restless Infantry##46823 |q 28046/1 |goto 40.2,57.9
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
click Siege Scrap##206652
collect 7 Siege Engine Scrap##52285 |q 27992/1 |goto 40.2,57.9
stickystart "tortsoul"
step
kill First Lieutenant Connor##46571 |q 27967/1 |goto 38.4,77.6
step
label "tortsoul"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 27966/1 |goto 38.1,71.5
click Forgotten Soldier's Tombstone##206570
Release 6 Tortured Souls |q 27949/1 |goto 38.1,71.5
step
talk Sergeant Gray##48254
turnin Bomb's Away!##28275 |goto 72.9,60.9
turnin Cannonball!##27987 |goto 72.9,60.9
turnin Ghostbuster##27978 |goto 72.9,60.9
turnin Taking the Overlook Back##27991 |goto 72.9,60.9
turnin WANTED: Foreman Wellson##27975 |goto 72.9,60.9
turnin Watch Out For Splinters!##27973 |goto 72.9,60.9
step
talk Commander Marcus Johnson##47240
turnin Claiming The Keep##28059 |goto 73.4,59.2
turnin Leave No Weapon Behind##28063 |goto 73.4,59.2
turnin Not The Friendliest Town##28130 |goto 73.4,59.2
turnin Teach A Man To Fish.... Or Steal##28137 |goto 73.4,59.2
turnin Walk A Mile In Their Shoes##28065 |goto 73.4,59.2
step
talk Camp Coordinator Brack##48255
turnin A Sticky Task##27948 |goto 73.7,57.6
turnin Boosting Morale##27972 |goto 73.7,57.6
turnin Captain P. Harris##27970 |goto 73.7,57.6
turnin Rattling Their Cages##27971 |goto 73.7,57.6
turnin Shark Tank##28050 |goto 73.7,57.6
turnin Thinning the Brood##27944 |goto 73.7,57.6
step
talk Lieutenant Farnsworth##48250
turnin Finish The Job##28046 |goto 74.8,59.6
turnin First Lieutenant Connor##27967 |goto 74.8,59.6
turnin Magnets, How Do They Work?##27992 |goto 74.8,59.6
turnin Salvaging the Remains##27966 |goto 74.8,59.6
turnin The Forgotten##27949 |goto 74.8,59.6
step
The quests below will only be able to be done if your faction currently controls Tol Barad.
Click here to proceed to the daillies. |confirm
step
You will only be able to accept a total of 6 quests in the following guide steps.
Click here to proceed. |confirm
step
talk Sergeant Parker##48066
accept A Huge Problem##28122 |goto Tol Barad,50.9,49.7
accept Swamp Bait##28162 |goto Tol Barad,50.9,49.7
accept The Leftovers##28163 |goto Tol Barad,50.9,49.7
step
talk 2nd Lieutenant Wansworth##48061
accept D-Block##28165 |goto 51.4,49.6
accept Svarnos##28185 |goto 51.4,49.6
accept Cursed Shackles##28186 |goto 51.4,49.6
step
talk Commander Stevens##48039
accept Clearing the Depths##28117 |goto 51.5,49.5
accept Learning From The Past##28120 |goto 51.5,49.5
accept The Imprisoned Archmage##28118 |goto 51.5,49.5
step
talk Marshal Fallows##48074
accept Food From Below##28232 |goto 51.5,49.6
accept Prison Revolt##28188 |goto 51.5,49.6
accept The Warden##28223 |goto 51.5,49.6
stickystart "cursedshack"
step
Enter the underground jail |goto 42.7,39.1 < 5 |walk
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28185/1 |goto 48.3,30.7
step
label "cursedshack"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
Slay 10 Demons |q 28165/1 |goto 44.4,30.5
click Cursed Shackle##181
collect 8 Cursed Shackles##63149 |q 28186/1 |goto 44.4,30.5
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28162/1 |goto 42.1,41.8
stickystart "cellration"
step
Enter the underground jail |goto 44.0,69.2 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28223/1 |goto 37.5,71.7
step
label "cellration"
kill Imprisoned Worker##47550+, Exiled Mage##47552+
Slay 10 Prisoners |q 28188/1 |goto 40.9,78.2
click Crate of Cellblock Rations##206996
collect 12 Cellblock Ration##63315 |q 28232/1 |goto 40.9,78.2
step
Enter the underground jail |goto 60.8,50.1,0.5 |c
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28118/1 |goto 56.8,54.8
step
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay 9 Ghosts |q 28117/1 |goto 51.4,49.5
click Dusty Prison Journal##206890
collect 4 Dusty Prison Journal##63034 |q 28120/1 |goto 51.4,49.5
step
kill Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
kill 12 Horde Infantry |q 28163/1 |goto 51.1,29.7
step
kill Problim##47593 |q 28122/1 |goto 52.8,36.7
|tip He patrols around Baradin Hold.  Some searching may be required.
step
talk Sergeant Parker##48066
turnin A Huge Problem##28122 |goto Tol Barad,50.9,49.7
turnin Swamp Bait##28162 |goto Tol Barad,50.9,49.7
turnin The Leftovers##28163 |goto Tol Barad,50.9,49.7
step
talk 2nd Lieutenant Wansworth##48061
turnin D-Block##28165 |goto 51.4,49.6
turnin Svarnos##28185 |goto 51.4,49.6
turnin Cursed Shackles##28186 |goto 51.4,49.6
step
talk Commander Stevens##48039
turnin Clearing the Depths##28117 |goto 51.5,49.5
turnin Learning From The Past##28120 |goto 51.5,49.5
turnin The Imprisoned Archmage##28118 |goto 51.5,49.5
step
talk Marshal Fallows##48074
turnin Food From Below##28232 |goto 51.5,49.6
turnin Prison Revolt##28188 |goto 51.5,49.6
turnin The Warden##28223 |goto 51.5,49.6
earn 40 Tol Barad Commendation##391 |goto 51.5,49.6 |next "buy"
step
This will require you to be _honored_ with _Baradin's Wardens_
Honored with Baradin's Wardens |condition rep("Baradin's Wardens")>=Honored
earn 40 Tol Barad Commendation##391
step
label "buy"
talk Quartermaster Brazie##47328
buy 1 Rustberg Gull##63355 |goto Tol Barad Peninsula,72.6,62.6
step
learnpet Rustberg Gull##48107 |use Rustberg Gull##63355
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tiny Flamefly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Tiny Flamefly.",
model={28435},
pet=287,
},[[
step
talk John J. Keeshan##47811
You will only be able to accept 1 of these 2 quests
|tip Which quest is offered to you depends on whether or not you completed a quest line in Redridge Mountains at a lower level.
accept Burning Vengeance##28416 |goto Burning Steppes 17.3,52.1 |or
accept Burning Vengeance##28174 |goto Burning Steppes 17.3,52.1 |or
step
talk Mouton Flamestar##47779
turnin Mouton Flamestar##28514 |goto 17.0,51.3
accept Done Nothing Wrong##28172 |goto 17.0,51.3
stickystart "blackwhelp"
stickystart "blackflame"
step
clicknpc Fettered Green Whelpling##47820
Free a Green Whelpling |q 28172/2 |goto 17.5,60.5
step
clicknpc Fettered Blue Whelpling##47821
Free a Blue Whelpling |q 28172/3 |goto 19.2,61.6
step
Follow the path up |goto 17.8,61.4 < 5 |only if walking
clicknpc Fettered Bronze Whelpling##47822
Free a Bronze Whelpling |q 28172/4 |goto 15.1,69.7
step
clicknpc Fettered Red Whelpling##47814
Free a Red Whelpling |q 28172/1 |goto 14.2,66.8
step
label "blackwhelp"
kill 5 Blackrock Whelper##47782+ |q 28416/1 |goto 16.0,66.0
kill 5 Flamescale Broodling##7049+ |q 28416/2 |goto 16.0,66.0
only if havequest(28416)
step
label "blackflame"
kill 5 Blackrock Whelper##47782+ |q 28174/1 |goto 16.0,66.0
kill 5 Flamescale Broodling##7049+ |q 28174/2 |goto 16.0,66.0
only if havequest(28174)
step
talk John J. Keeshan##47811
You will only be able to turn in 1 of the 2 Burning Vengeance quests, depending on which one he gave you
turnin Burning Vengeance##28416 |goto 17.3,52.1
turnin Burning Vengeance##28174 |goto 17.3,52.1
accept Stocking Up##28177 |goto 17.3,52.1
accept A Future Project##28178 |goto 17.3,52.1
accept Mud Hunter##28179 |goto 17.3,52.1
step
talk Mouton Flamestar##47779
turnin Done Nothing Wrong##28172 |goto 17.0,51.3
step
click Obsidian-Flecked Mud##206853
collect 9 Obsidian-Flecked Mud##63124 |q 28179/1 |goto 15.5,45.0
step
kill Ember Worg##9690+
collect 11 Ember Worg Hide##63136 |q 28178/1 |goto 11.8,47.7
kill Venomtip Scorpid##9691+
collect 5 Razor-Sharp Scorpid Barb##63135 |q 28177/1 |goto 11.8,47.7
step
talk John J. Keeshan##47811
turnin Stocking Up##28177 |goto 17.3,52.1
turnin A Future Project##28178 |goto 17.3,52.1
turnin Mud Hunter##28179 |goto 17.3,52.1
accept The Sand, the Cider, and the Orb##28180 |goto 17.3,52.1
step
talk Gorzeeki Wildeyes##14437
turnin The Sand, the Cider, and the Orb##28180 |goto 8.4,35.8
accept Warlocks Have the Neatest Stuff##28181 |goto 8.4,35.8
accept Shadow Boxing##28182 |goto 8.4,35.8
step
kill Ner'gosh the Shadow##47805 |q 28182/1 |goto 9.9,29.7
step
click Slumber Sand##206881
collect Slumber Sand##3434 |q 28181/2 |goto 5.4,32.0
step
click Fel Slider Cider##206882
collect Fel Slider Cider##63133 |q 28181/3 |goto 5.2,30.9
step
kill Blackrock Warlock##7028+
collect Clear Glass Orb##63134 |q 28181/1 |goto 6.8,31.8
step
talk Gorzeeki Wildeyes##14437
turnin Warlocks Have the Neatest Stuff##28181 |goto 8.4,35.8
turnin Shadow Boxing##28182 |goto 8.4,35.8
accept Return to Keeshan##28183 |goto 8.4,35.8
step
ding 50
step
talk John J. Keeshan##47811
turnin Return to Keeshan##28183 |goto 17.3,52.1
accept Chiselgrip, the Heart of the Steppes##28184 |goto 17.3,52.1
step
kill Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+ |q 28184/1 |goto 31.5,52.1
step
talk Stebben Oreknuckle##48033
turnin Chiselgrip, the Heart of the Steppes##28184 |goto 46.8,44.1
accept Prove Yer Allegiance##28225 |goto 46.8,44.1
accept Scrapped Golems##28226 |goto 46.8,44.1
step
talk John J. Keeshan##48109
accept A Needle in a Hellhole##28254 |goto 46.4,46.0
step
talk Thelaron Direneedle##48001
turnin A Needle in a Hellhole##28254 |goto 45.5,46.4
accept A Perfect Costume##28202 |goto 45.5,46.4 |or
accept A Perfect Costume##28203 |goto 45.5,46.4 |or
accept A Perfect Costume##28204 |goto 45.5,46.4 |or
accept A Perfect Costume##28205 |goto 45.5,46.4 |or
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
Click to proceed. |confirm
only Human
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
Click to proceed. |confirm
only Dwarf
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 1 Hide
Take 3 Handfuls of Mud
Take 4 Spools of Thread
Click to proceed. |confirm
only Gnome
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
Click to proceed. |confirm
only Draenei
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
Click to proceed. |confirm
only Worgen
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 3 Hides
Take 2 Handfuls of Mud
Take 1 Spool of Thread
Click to proceed. |confirm
only NightElf
step
talk Thelaron Direneedle##48001
Tell him you brought him some hides, mud, and thread
Create the Perfect Costume |q 28202/1 |goto 45.5,46.4
Create the Perfect Costume |q 28203/1 |goto 45.5,46.4
Create the Perfect Costume |q 28204/1 |goto 45.5,46.4
Create the Perfect Costume |q 28205/1 |goto 45.5,46.4
step
talk John J. Keeshan##48109
turnin A Perfect Costume##28202 |goto 46.4,46.0
turnin A Perfect Costume##28203 |goto 46.4,46.0
turnin A Perfect Costume##28204 |goto 46.4,46.0
turnin A Perfect Costume##28205 |goto 46.4,46.0
accept Into the Black Tooth Hovel##28239 |goto 46.4,46.0
step
Use your Blackrock Disguise |use Blackrock Disguise##63357
You will get a different disguise, depending on the costume you had to make:
Wear your Blackrock Disguise |havebuff 236452 |q 28239 |or
Wear your Blackrock Disguise |havebuff 236451 |q 28239 |or
Wear your Blackrock Disguise |havebuff 236456 |q 28239 |or
Wear your Blackrock Disguise |havebuff 236455 |q 28239 |or
Wear your Blackrock Disguise |havebuff 236695 |q 28239 |or
Wear your Blackrock Disguise |havebuff 236424 |q 28239 |or
step
talk Quartermaster Kaoshin##48085
turnin Into the Black Tooth Hovel##28239 |goto 45.3,51.7
accept Grunt Work##28245 |goto 45.3,51.7
step
Click the Quest Accept box that displays on the right side of the screen under your minimap
accept Strategic Cuts##28246 |tip You can also accept this from Colonel Troteman at 46.2,45.8
step
Go to the very top of the tower
Use your Razor-Sharp Scorpid Barb on Voodooist Timan |use Razor-Sharp Scorpid Barb##63350
kill Voodooist Timan##48100 |q 28246/3 |goto 45.0,52.5
step
Use your Razor-Sharp Scorpid Barb on Worgmistress Othana |use Razor-Sharp Scorpid Barb##63350
kill Worgmistress Othana##48099 |q 28246/2 |goto 39.2,56.1
step
Use your Razor-Sharp Scorpid Barb on Gorlop |use Razor-Sharp Scorpid Barb##63350
kill Gorlop##9176 |q 28246/1 |goto 42.1,60.1
|tip He's an ogre that runs back and forth between the two lava pools here, so you may need to search for him.
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Strategic Cuts##28246
step
click Blackrock Boot##10182+
|tip They look like brown pairs of boots sitting on the outside of the huts and buildings all around this area.
Polish 7 Pairs of Blackrock Boots |q 28245/1 |goto 39.7,55.7
step
talk Quartermaster Kaoshin##48085
turnin Grunt Work##28245 |goto 45.3,51.7
accept The Kodocaller's Horn##28252 |goto 45.3,51.7
step
Use your Horn of the Callers next to Blackrock War Kodos |use Horn of the Callers##63356
kill Blackrock War Kodo##48111+
Summon 7 Blackrock War Kodos back to camp |q 28252/1 |goto 44.9,58.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Kodocaller's Horn##28252
accept Taking the Horn For Ourselves##28253
step
talk Colonel Troteman##48110
turnin Taking the Horn For Ourselves##28253 |goto 46.3,46.0
step
kill Thaurissan Agent##7038+, Thaurissan Firewalker##7037+, Thaurissan Spy##7036+ |q 28225/1
kill War Reaver##7039+
click War Reaver Part##449+
You are given a choice on what to salvage from the War Reaver Parts.
|tip Choose to Salvage a Stone Power Core the first chance you get, because you only need one and they are rare.  Otherwise, just salvage the parts you need most.
collect 3 Obsidian Piston##63333 |q 28226/1 |goto 45.7,39.1
collect 3 Flux Exhaust Sieve##63336 |q 28226/2 |goto 45.7,39.1
collect 3 Thorium Gearshaft##63335 |q 28226/3 |goto 45.7,39.1
collect Stone Power Core##63334 |q 28226/4 |goto 45.7,39.1
step
talk Stebben Oreknuckle##48033
turnin Prove Yer Allegiance##28225 |goto 46.8,44.1
turnin Scrapped Golems##28226 |goto 46.8,44.1
accept Golem Training##28227 |goto 46.8,44.1
step
talk Chiseled Golem##48037
Tell them you are here to help them with their combat training, golem
from Chiseled Golems
|tip You will have to beat them 3 times in a row to train them.
Train 4 Chiseled Golems |q 28227/1 |goto 46.4,45.2
step
talk Stebben Oreknuckle##48033
turnin Golem Training##28227 |goto 46.8,44.1
step
talk John J. Keeshan##48109
accept General Thorg'izog##28265 |goto 46.4,46.0
step
Use your Blackrock Disguise |use Blackrock Disguise##63357
You will get a different disguise, depending on the costume you had to make:
Wear your Blackrock Orc Disguise |havebuff 236452 |q 28265 |or
Wear your Blackrock Orc Disguise |havebuff 236451 |q 28265 |or
Wear your Blackrock Orc Disguise |havebuff 236456 |q 28265 |or
Wear your Blackrock Orc Disguise |havebuff 236455 |q 28265 |or
Wear your Blackrock Ogre Disguise |havebuff 236695 |q 28265 |or
Wear your Blackrock Disguise |havebuff 236424 |q 28239 |or
step
talk General Thorg'izog##48133
turnin General Thorg'izog##28265 |goto 30.7,33.7
accept Trial by Magma##28266 |goto 30.7,33.7
step
talk Wyrtle Spreelthonket##48159
Tell him you'd like to challenge his magma lord to a fight
kill Magma Lord Kolob##48156 |q 28266/1 |goto 30.8,33.4
step
talk General Thorg'izog##48133
turnin Trial by Magma##28266 |goto 30.7,33.7
accept I Am the Law and I Am the Lash##28278 |goto 30.7,33.7
accept Abuse of Power##28279 |goto 30.7,33.7
step
Use your Blackrock Cudgel of Discipline on Smolderthorn Assassins, Firegut Flamespeakers, and Blackrock Soldiers |use Blackrock Cudgel of Discipline##63390
|tip If they discover you are wearing a mask, spam use the Blackrock Cudgel of Discipline on them to kill them.
Cudgel 20 Blackrock Minions |q 28278/1 |goto 33.6,36.3
Use your Blackrock Cudgel of Discipline repeatedly on Blackrock Sergeants |use Blackrock Cudgel of Discipline##63390
|tip Spam use the Blackrock Cudgel of Discipline, so you kill them quickly.
kill 5 Blackrock Sergeant##48201+ |q 28279/1 |goto 33.6,36.3
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Abuse of Power##28279
accept Enough Damage For One Day##28286
step
talk General Thorg'izog##48133
turnin I Am the Law and I Am the Lash##28278 |goto 30.7,33.7
step
ding 51
step
talk Colonel Troteman##48110
turnin Enough Damage For One Day##28286 |goto 46.3,46.0
accept Morgan's Vigil##28310 |goto 46.3,46.0
step
talk Oralius##9177
turnin Morgan's Vigil##28310 |goto 71.9,68.0
accept SEVEN! YUP!##28415 |goto 71.9,68.0
step
clicknpc Flamefly##48671
collect 7 Flamefly##64409 |q 28415/1
collect 1 Tiny Flamefly##66080
step
learnpet Tiny Flamefly##51632 |use Tiny Flamefly##66080
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tirisfal Batling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Tirisfal Batling.",
model={4732},
pet=206,
},[[
step
#include "auctioneer"
buy 1 Tirisfal Batling##44971
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Tirisfal Batling##33197 |use Tirisfal Batling##44971
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Westfall Chicken",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Westfall Chicken.",
model={304},
pet=84,
},[[
step
talk Farmer Saldean##233
buy 1 Special Chicken Feed##11109 |goto Westfall 56.0,31.2
step
Perform the "Chicken" emote on a Chicken: |script DoEmote("CHICKEN")
|tip Do this until the Chicken gives you a quest
talk Chicken##620
accept CLUCK!##3861 |goto 55.8,31.4
step
talk Chicken##620
turnin CLUCK!##3861
step
Click on the Chicken Egg on the ground to loot your new pet
learnpet Westfall Chicken##30379
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: White Moth.",
model={19999},
pet=141,
},[[
step
talk Sixx##21019
buy 1 White Moth Egg##29904 |goto The Exodar 30.8,34.6
step
learnpet White Moth##21018 |use White Moth Egg##29904
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Yellow Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Yellow Moth.",
model={19985},
pet=140,
},[[
step
talk Sixx##21019
buy 1 Yellow Moth Egg##29903 |goto The Exodar 30.8,34.6
step
learnpet Yellow Moth##21008 |use Yellow Moth Egg##29903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Squire",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Argent Squire.",
model={28946},
pet=214,
},[[
step
In order to attain this pet, you will need to do Argent Tournament Daily quests.
Click here to proceed to the Pre-Quests. |confirm
Click here if you have completed the Pre-Quests. |next "done" |confirm
#include "ArgentT_Quests"
step
label "done"
Use the _Argent Tournament_ _Valiant_ section of our daily guides to complete the quest _A Champion Rises_ to receive your _Argent Squire_
collect 1 Argent Gruntling##44998
step
learnpet Argent Squire##33238 |use Argent Squire##44998
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Gruntling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Argent Gruntling.",
model={28948},
pet=216,
},[[
step
This pet is only available to Horde Characters
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Oracle Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Curious Oracle Hatchling.",
model={25173},
pet=225,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
confirm
step
collect 1 Curious Oracle Hatchling##46545
|tip Back to the Orphanage (Dalaran)
step
learnpet Curious Oracle Hatchling##33530 |use Curious Oracle Hatchling##46545 |tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Wolvar Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Curious Wolvar Pup.",
model={25384},
pet=226,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
confirm
step
collect 1 Curious Wolvar Pup##46544
|tip Back to the Orphanage (Dalaran)
step
learnpet Curious Wolvar Pup##33529 |use Curious Wolvar Pup##46544 |tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Father Winter's Helper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Father Winter's Helper.",
model={15660},
pet=119,
},[[
step
These pets are only availiable during the Winter Veil Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Green Helper Box##21301
step
learnpet Father Winter's Helper##15698 |use Green Helper Box##21301
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Alliance)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Herald.",
model={37196},
pet=282,
},[[
step
Your guild needs have the achievement "Profit Sharing"
|tip Loot 100,000 gold from creatures |achieve 5201
step
talk Shay Pressler##46602
buy 1 Guild Herald##65363 |goto Stormwind City,64.6,76.8
step
learnpet Guild Herald##49587 |use Guild Herald##65363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Horde)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Herald.",
model={37196},
pet=283,
},[[
step
This pet model is only available to Horde characters.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Alliance)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Page.",
model={37200},
pet=280,
},[[
step
Your _guild_ needs have the achievement _"Horde Slayer"_
Complete the Slayer guild achievements |achieve 5031
step
talk Shay Pressler##46602
buy 1 Guild Page##65361 |goto Stormwind City,64.6,76.8
step
learnpet Guild Page##49586 |use Guild Page##65361
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Horde)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Page.",
model={37199},
pet=281,
},[[
step
This pet model is only available to Horde Characters.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Alliance)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Moonkin Hatchling.",
model={37526},
pet=296,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Moonkin Egg##68384
Open the Moonkin Egg |use Moonkin Egg##68384
collect Moonkin Hatchling##68618
step
learnpet Moonkin Hatchling##51601 |use Moonkin Hatchling##68618
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Horde)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Moonkin Hatchling.",
model={37527},
pet=298,
},[[
step
This pet model is only available to Horde characters.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Peddlefeet",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Peddlefeet.",
model={15992},
pet=122,
},[[
step
This _pet_ is sold by _Lovely Merchants_ during the _Love is in the Air_ Holiday
|tip The merchants are in the captial cities
To earn tokens, click here. |next "Zygor's Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
collect 40 Love Token##49927
confirm
step
talk Lovely Merchant##37674
buy 1 Truesilver Shafted Arrow##22235
step
learnpet Peddlefeet##16085 |use Truesilver Shafted Arrow##22235
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Rotten Little Helper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Rotten Little Helper.",
model={51505},
pet=1349,
},[[
step
These pets are only availiable during the Winter Veil Holiday
|tip Receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Rotten Helper Box##104317
step
learnpet Rotten Little Helper##73741 |use Rotten Helper Box##104317
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Winter's Little Helper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Winter's Little Helper.",
model={15663},
pet=120,
},[[
step
These pets are only availiable during the _Winter Veil_ Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Red Helper Box##21305
step
learnpet Winter's Little Helper##15705 |use Red Helper Box##21305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Broom",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Enchanted Broom.",
model={45960},
pet=213,
},[[
step
#include "auctioneer"
buy 1 Enchanted Broom##44982
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Enchanted Broom##33227 |use Enchanted Broom##44982
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Lantern",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Enchanted Lantern.",
model={36902},
pet=267,
},[[
step
#include "auctioneer"
buy 1 Enchanted Lantern##67274
|tip This pet must be bought with a Horde character or through the Auction House.
step
label "bought"
learnpet Enchanted Lantern##46898 |use Enchanted Lantern##67274
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Festival Lantern",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Festival Lantern.",
model={39333},
pet=342,
},[[
step
This pet can only be obtained during the Lunar Festival event.
collect 50 Coin of Ancestry##21100
Click here for directions to the vendor |confirm |next "vendor"
Click here for our guide on getting the Coins of Ancestry |confirm |next "coins"
step
label "coins"
#include "Lunar_Festival_Main_Quests"
step
#include "Lunar_Festival_Elder_Paths"
step
label "vendor"
talk Valadar Starsong##15864
buy Festival Lantern##74611 |goto Moonglade,54.0,35.0
step
learnpet Festival Lantern##55574 |use Festival Lantern##74611
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Legs",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Legs.",
model={38134},
pet=308,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Legs##69648
|tip Back to the Orphanage (Shattrath)
step
learnpet Legs##53048 |use Legs##69648
|tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lunar Lantern",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Lunar Lantern.",
model={39163},
pet=341,
},[[
step
This pet can only be obtained during the Lunar Festival event.
collect 50 Coin of Ancestry##21100
Click here for directions to the vendor |confirm |next "vendor"
Click here for our guide on getting the Coins of Ancestry |confirm |next "coins"
step
label "coins"
#include "Lunar_Festival_Main_Quests"
step
#include "Lunar_Festival_Elder_Paths"
step
label "vendor"
talk Valadar Starsong##15864
buy Lunar Lantern##74610 |goto Moonglade,54.0,35.0
step
learnpet Lunar Lantern##55571 |use Lunar Lantern##74610
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Magic Lamp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Magic Lamp.",
model={36901},
pet=292,
},[[
step
Skipping to the next step |next |only if skill("Enchanting")<525
talk Jessara Cordell##1318 |only if skill("Enchanting")>=525
buy 1 Formula: Magic Lamp##67312 |goto Stormwind City,53.0,74.2 |only if skill("Enchanting")>=525
Click here if you do not wish to make this pet yourself |confirm |only if skill("Enchanting")>=525
step
You can either _buy_ this _pet_ from the _Auction House_ or make it:
buy 1 Magic Lamp##67275 |next "bought"
Click here to make this pet |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _disenchant gear_ to obtain them:
collect 8 Heavenly Shard##52721+
collect 4 Greater Celestial Essence##52719+
collect 1 Maelstrom Crystal##52722
Click here if you have the means to farm these materials yourself. |confirm
|next "farmed" |only if default
step
Farm Maelstrom Crystals from the dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
Breaking down Maelstrom Crystals will net you 2 Heavenly Shards.
Use _Maelstrom Shatter_ on Maelstrom Crystals to attain Heavenly Shards. |cast Maelstorm Shatter##104698
collect 8 Heavenly Shard##52721+
step
Farm Maelstrom Crystals from the dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
collect 1 Maelstrom Crystal##52722
step
Cataclysm ranked green _Weapons_ will net you Greater Celestial Essences.
Farm Greater Celestial Essence from the normal enemies in dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
collect 4 Greater Celestial Essence##52719+
step
label "farmed"
Have an _Enchanter make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(93843)==false
create Magic Lamp##93843,Enchanting,1 total |only if _G.IsSpellKnown(93843)==true
collect 1 Magic Lamp##67275
step
label "bought"
learnpet Magic Lamp##50545 |use Magic Lamp##67275
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shimmering Wyrmling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Shimmering Wyrmling.",
model={70232},
pet=229,
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds_ and _The Silver Covenant pre-quests_ and _dailies_.
_Exalted_ with _The Silver Covenant_ |condition rep("The Silver Covenant")>=Exalted
earn 50 Champion's Seal##241
confirm
step
label "choose"
For _Aspirant Rank Dailies_, click here. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies" |only if ZGV.guidesets["DailiesACATA"]
For _Valiant Rank Dailies_, click here. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |only if ZGV.guidesets["DailiesACATA"]
For _Champion Ranked Death Knight Dailies_, click here. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |only if ZGV.guidesets["DailiesACATA"]
For _Champion Ranked Dailies_, click here. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |only if ZGV.guidesets["DailiesACATA"]
For _Crusader Ranked Dailies_, click here. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Crusader Dailies" |only if ZGV.guidesets["DailiesACATA"]
Click here if you are exalted with The Silver Covenant. |next "buy" |confirm
step
Routing back to _Ranks_ |next "choose" |only if default
step
label "buy"
talk Hiren Loresong##34881
buy 1 Shimmering Wyrmling##46821 |goto Icecrown,76.2,19.6
step
learnpet Shimmering Wyrmling##34724 |use Shimmering Wyrmling##46821
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Willy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Willy.",
model={21381},
pet=157,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10966 |goto Shattrath City 74.9,47.9
collect 1 Sleepy Willy##32617
|tip This pet will arrive in the mail after completing the Event questline.
step
learnpet Willy##23231 |use Sleepy Willy##32617
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Gnome",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Clockwork Gnome.",
model={36211},
pet=277,
},[[
step
This pet is a rare Archaeology "Dwarf" solve
talk Harrison Jones##44238 |goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your world map, find dig sites in Eastern Kingdoms, and go to them .
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Dwarf"_ tab called _"Clockwork Gnome"_. Solve this Archaeology puzzle
collect 1 Clockwork Gnome##64372
step
learnpet Clockwork Gnome##48609 |use Clockwork Gnome##64372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Rocket Bot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Clockwork Rocket Bot.",
model={22776},
pet=191,
},[[
step
This pet can only be obtained during the Feast of Winter Veil Event.
confirm always
step
talk Strange Snowman##13636
accept You're a Mean One...##7043 |goto Hillsbrad Foothills,42.3,41.1
step
kill The Abominable Greench##54499
collect Stolen Treats##17662 |q 7043/2 |goto Hillsbrad Foothills,43.6,39.0
|tip They are the bags on the ground behind the Abominable Greench.
Free Metzen the Reindeer. |q 7043/1 |goto Hillsbrad Foothills,43.6,39.0
|tip After you defeat The Abominable Greench Metzen is freed.
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge,33.7,67.3
accept A Smokywood Pastures' Thank You!##7045 |goto Ironforge,33.7,67.3
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto 33.1,65.5
step
learnpet Clockwork Rocket Bot##24968
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\De-Weaponized Mechanical Companion",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: De-Weaponized Mechanical Companion.",
model={33559},
pet=262,
},[[
step
Skipping to the next step |next "aa" |only if skill("Engineering")<475
Click here if you do not wish to learn this schematic |next |only if skill("Engineering")>=475
step
talk Oglethorpe Obnoticus##7406 |only if skill("Engineering")>=475
learn De-Weaponized Mechanical Companion##84413 |goto The Cape of Stranglethorn,43.0,72.0 |only if skill("Engineering")>=475
step
label "bb"
You can either buy this from the Auction House or farm for it:
collect 1 De-Weaponized Mechanical Companion##60216 |next "bought"
_Click here_ to _farm_ for this _pet_ |confirm
step
You can either buy these from the Auction House or farm for them:
collect 12 Obsidium Bar##54849
collect 4 Handful of Obsidium Bolts##60224
collect 8 Electrified Ether##67749
collect 2 Jasper##52182
step
map Deepholm
path	59.0,26.5	61.6,20.4	64.3,14.9
path	67.6,20.8	68.9,23.1	65.9,23.5
path	62.5,23.7	62.0,29.6
collect 34 Obsidium Ore##53038
collect 2 Jasper##52182
|tip These can be very hard to come by.
collect 8 Volatile Air##52328
|tip These can be very hard to come by.
Click here to continue by just buying the Jasper and/or Volatile Air.|confirm
step
create Obsidium Bar##54849,Mining,17 total |goto Stormwind City/0 63.0,37.0
confirm
step
create Handful of Obsidium Bolts##60216,Engineering,2 total
step
talk Auctioneer Chilton##8670
buy 2 Jasper##52182 |goto 60.7,70.8 |or 2
buy 8 Volatile Air##52328 |goto 60.7,70.8 |or 2
buy 8 Electrified Ether##67749 |goto 60.7,70.8 |or 2 |next "aa"
|next |only if default
step
create Electrified Ether##94748,Engineering,4 total
step
label "aa"
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(84413)==false
create De-Weaponized Mechanical Companion##84413,Engineering,1 total |only if knowspell(84413)==true
collect 1 De-Weaponized Mechanical Companion##60216
step
learnpet De-Weaponized Mechanical Companion##43916 |use De-Weaponized Mechanical Companion##60216
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lifelike Toad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Lifelike Toad.",
model={901},
pet=95,
},[[
step
_Skipping_ to the next _step_ |next |only if skill("Engineering")<265
This is a _very difficult_ _schematic_ to obtain, but it is _doable_  |next "a" |only if skill("Engineering")>265 |next
step
You will have to go to _Blackwing Lair_ and farm _Nefarian_ every week
|tip He has a .8% chance to drop this item so you may be farming for a while |only if skill("Engineering")>265
from Nefarian##11583 |only if skill("Engineering")>265
collect 1 Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
use Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
step
label "a"
You can either buy this from the Auction House or farm for it:
collect 1 Lifelike Mechanical Toad##15996 |next "bought"
Click here to _farm_ for this _pet_ |confirm
step
You can either buy these items from the Auction House or farm for them:
collect 1 Living Essence##12803
collect 4 Thorium Widget##15994
collect 1 Gold Power Core##10558
collect 1 Rugged Leather##8170
Click here to farm your own materials. |confirm
|next "b"
step
map Swamp of Sorrows
path	10.2,34.0	15.2,30.6	22.3,38.5
path	24.8,57.3	21.8,63.0	18.1,70.9
path	15.5,65.3	16.7,56.6	17.1,49.6
Follow the provided path, mining _Truesilver_ and _Thorium_ ore.
collect 12 Thorium Ore##10620
step
map Burning Steppes
path	67.5,63.5	69.6,62.0	77.8,58.0
path	80.1,49.2	80.1,41.0	81.6,30.3
path	72.4,24.6	65.7,26.6	64.2,40.2
path	62.4,60.2
Follow the provided path, mining _Gold_ ore.
collect 1 Gold Ore##2776
step
talk Auctioneer Chilton##8670
buy 4 Runecloth##14047 |goto Stormwind City/0 60.7,70.8
step
label "b"
Have an _Engineer_ make this _pet_ for you
|tip Ask in your guild or in trade chat |only if knowspell(19793)==false
create Lifelike Mechanical Toad##19793,Engineering,1 total |only if knowspell(19793)==true
collect 1 Lifelike Mechanical Toad##15996
step
label "bought"
learnpet Lifelike Toad##12419 |use Lifelike Mechanical Toad##15996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' Smoky",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Lil' Smoky.",
model={8910},
pet=86,
},[[
step
Skipping to the next step |next "lazy" |only if skill("Engineering")<205
Click here if you would like to farm the pattern. |confirm |only if skill("Engineering")>=205
Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=205
step
from Peacekeeper Security Suit##6230+,Arcane Nullifier X-21##6232+,Crowd Pummeler 9-60##6229+
collect 1 Schematic: Lil' Smoky##11827 |n
learn Lil' Smoky##15633 |goto Gnomeregan,30.2,84.4  |use Schematic: Lil' Smoky##11827
only if skill("Engineering")>=205
step
label "lazy"
You can either buy this from the Auction House or farm for it:
collect 1 Lil' Smoky##11826 |next "bought"
Click here to farm the materials for this pet. |confirm
step
You can either buy these from the Auction House or farm for them:
collect 1 Core of Earth##7075
collect 2 Gyrochronatom##4389
collect 1 Fused Wiring##7191
collect 2 Mithril Bar##3860
collect 1 Truesilver Bar##6037
|next "makeit"
Click here for the raw materials needed to create the above items. |confirm
step
Use your mining ability inside of the cave here.
collect 6 Copper Ore##2770 |goto Elwynn Forest 39.0,78.3
step
Mine inside of the cave and collect the ore needed.
collect 1 Gold Ore##2776 |goto The Cape of Stranglethorn/0 65.0,29.6
collect 2 Iron Ore##2772 |goto The Cape of Stranglethorn/0 65.0,29.6
step
map Burning Steppes
path	69.6,62.0	74.6,60.1	80.5,59.3
path	79.2,46.5	73.7,43.5	72.2,50.1
path	66.9,49.5
Follow the path provided and collect _Mithril Ore_.
collect 2 Mithril Ore##3858
step
map Swamp of Sorrows
path	10.2,34.0	15.2,30.6	22.3,38.5
path	24.8,57.3	21.8,63.0	18.1,70.9
path	15.5,65.3	16.7,56.6	17.1,49.6
Follow the provided path, mining _Truesiler Ore_.
collect 1 Truesilver Ore##7911
step
create Truesilver Bar##10098,Mining,1 total |goto Stormwind City/0 62.9,37.0
step
create Gold Bar##3308,Mining,1 total
step
create Mithril Bar##10097,Mining,2 total
step
create Copper Bar##2657,Mining,6 total
step
talk Auctioneer Chilton##8670
buy 1 Core of Earth##7075 |goto Stormwind City/0 61.0,70.8
buy 2 Essence of Fire##7078 |goto Stormwind City/0 61.0,70.8
step
label "makeit"
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(15633)==false
create Lil' Smoky##15633,Engineering,1 total |only if knowspell(15633)==true
collect 1 Lil' Smoky##11826
step
label "bought"
learnpet Lil' Smoky##9657 |use Lil' Smoky##11826
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Pandaren Dragonling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Mechanical Pandaren Dragonling.",
model={45386},
pet=844,
},[[
step
Routing to the proper section. |next |only if skill("Engineering")>=575
Routing to the proper section. |next "buy" |only if skill("Engineering")<=575
step
You can either create this battle pet, or purchase it from an Auction House. You must be a level _575 Engineer_ to create this pet.
talk Lilliam Sparkspindle##5518
learn Mechanical Pandaren Dragonling##127135 |goto Stormwind City/0 62.8,32.0
step
label "buy"
You can either buy these items from the Auction House or farm for them:
collect 4 Ghost Iron Bar##72096+ |or 3
collect 6 Trillium Bar##72095+ |or 3
collect 2 Spirit of Harmony##76061 |or 3
_or_
buy Mechanical Pandaren Dragonling##87526 |or 1
Click here if you want to farm the materials needed for the above items. |confirm
step
map Kun-Lai Summit
path	59.0,72.6	56.2,70.6	53.7,70.4
path	49.3,71.1	47.1,71.9	45.1,76.0
path	46.7,76.3	48.3,79.6	52.4,79.3
path	54.9,76.3	56.0,75.0	59.6,71.0
Follow the provided path and gather the following materials:
collect 8 Ghost Iron Ore##
collect 12 White Trillium Ore##72103
collect 12 Black Trillium Ore##72094
step
create Ghost Iron Bar##102165,Mining,4 total |goto Vale of Eternal Blossoms/3 71.8,51.9
step
create Trillium Bar##102167,Mining,6 total
step
create Mechanical Pandaren Dragonling##127135,Engineering,1 total
step
learnpet Mechanical Pandaren Dragonling##64899
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Squirrel",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Mechanical Squirrel.",
model={7937},
pet=39,
},[[
step
Routing to the proper section. |next |only if skill("Engineering")>=75
Rouoting to the proper section. |next "buy" |only if skill("Engineering")<=75
step
To get this _recipe_ you can fish in _Orgrimmar, Stormwind City, Elwynn Forest, Ironforge, Durotar, Northern Barrens, and Wailing Caverns_, or you can kill any mob in the world _under level 16_ |only if skill("Engineering")>=75
collect 1 Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
use Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
Click here if _you don't want to get the recipe_ yourself |confirm
only if skill("Engineering")>=75
step
label "buy"
You can either buy this item from the Auction House or farm for it:
buy 1 Mechanical Squirrel Box##4401 |next "bought"
Click here to _make_ the _Mechanical Squirrel_ |confirm
step
You can either buy these items from the Auction House or farm for them:
collect 1 Handful of Copper Bolts##4359
collect 1 Copper Bar##2840
collect 2 Malachite##774
Click here if you want to farm the materials needed for the above items. |confirm
|next "make"
step
Use your mining ability inside of the cave here.
collect 2 Copper Ore##2770 |goto Elwynn Forest 39.0,78.3
collect 2 Malachite##774 |goto Elwynn Forest 39.0,78.3
step
create Handful of Copper Bolts##3922,Engineering,1 total |goto Stormwind City/0 63.0,37.0
step
create Copper Bar##2657,Mining,1 total
step
label "make"
Have an _Engineer_ make this pet for you
|tip Ask in your guild or in trade chat |only if knowspell(3928)==false
create Mechanical Squirrel Box##3928,Engineering,1 total |only if knowspell(3928)==true
collect 1 Mechanical Squirrel Box##4401
step
label "bought"
learnpet Mechanical Squirrel##2671 |use Mechanical Squirrel Box##4401
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanopeep",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Mechanopeep.",
model={28539},
pet=215,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Gnome.
confirm always
step
label "main"
Click here to unlock the daily quests for the Argent Tournament Grouns. |confirm
If you have achieved champion rank already, click here. |next "pet" |confirm
Click here if you are _Aspirant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Valiant Ranked_. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and not a Death Knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you are _Champion Ranked_ and a Death knight. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |confirm |only if ZGV.guidesets["DailiesACATA"]
#include "ArgentT_Quests"
step
Routing back. |next "main" |only if default
step
label "pet"
talk Ambrose Boltspark##33335
accept Valiant Of Gnomeregan##13704 |goto Icecrown,76.5,19.8
turnin Valiant Of Gnomeregan##13704 |goto Icecrown,76.5,19.8
accept The Valiant's Charge##13715 |goto Icecrown,76.5,19.8
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13746 |goto 76.5,19.8 |or
accept A Worthy Weapon##13747 |goto 76.5,19.8 |or
accept The Edge Of Winter##13748 |goto 76.5,19.8 |or
step
talk Tickin Gearspanner##33648
accept A Valiant's Field Training##13749 |goto 76.6,19.8
step
talk Flickin Gearspanner##33649
accept The Grand Melee##13750 |goto 76.5,19.9
accept At The Enemy's Gates##13852 |goto 76.5,19.9
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13747 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13748/1 |goto Howling Fjord,42.2,19.7
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13852 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13852/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13852/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13852/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13749/1 |goto 44.3,54.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto 76.2,20.5
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto 75.3,18.5
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13746 |goto 76.5,19.8
turnin A Worthy Weapon##13747 |goto 76.5,19.8
turnin The Edge Of Winter##13748 |goto 76.5,19.8
step
talk Tickin Gearspanner##33648
turnin A Valiant's Field Training##13749 |goto 76.6,19.8
step
talk Flickin Gearspanner##33649
turnin The Grand Melee##13750 |goto 76.5,19.9
turnin At The Enemy's Gates##13852 |goto 76.5,19.9
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13715/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Ambrose Boltspark##33335
turnin The Valiant's Charge##13715 |goto 76.5,19.8
accept The Valiant's Challenge##13723 |goto 76.5,19.8
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto 71.9,22.5
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.
|tip Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.
|tip Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
|tip Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13723/1 |goto 68.6,21.0
step
talk Ambrose Boltspark##33335
turnin The Valiant's Challenge##13723 |goto 76.5,19.8
step
Become a Champion of Gnomeregan |achieve 2779
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Rillie Spindlenut##33650
buy 1 Mechanopeep##45002 |goto Icecrown,76.4,19.6
step
learnpet Mechanopeep##33274 |use Mechanopeep##45002
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Personal World Destroyer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Personal World Destroyer.",
model={33512},
pet=261,
},[[
step
Routing you to the proper section. |next |only if skill("Engineering")<475 |next
Routing you to the proper section. |only if skill("Engineering")>=475
step
talk Nixx Sprocketspring##8126 |only if skill("Engineering")>=475
learn Personal World Destroyer##84412 |goto Tanaris,52.2,28.2 |only if skill("Engineering")>=475
step
label "lazy"
You can either buy this from the Auction House or farm for it:
collect 1 Personal World Destroyer##59597 |next "bought"
Click here to gather the materials for this pet. |confirm
step
You can either buy these from the Auction House or farm for them:
collect 10 Obsidium Bar##54849
collect 8 Handful of Obsidium Bolts##60224
collect 8 Electrified Ether##67749
step
map Mount Hyjal
path	47.8,53.5	54.6,52.3	58.6,55.0
path	64.5,50.9	60.0,60.5	52.3,56.7
Follow the provided path and mine Obsidium Ore.
collect 36 Obsidium Ore##53038
step
buy 8 Volatile Air##52328
step
create Obsidium Bar##84038,Mining,18 total |goto Stormwind City/0 63.0,37.0
step
create Handful of Obsidium Bolts##84403,Engineering,4 total
step
create Electrified Ether##94748,Engineering,4 total
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
description="This guide will walk you through obtaining the Mechanical pet: Pet Bombling.",
model={8909},
pet=85,
},[[
step
Click here if you want to farm the schematic for this pet. |only if skill("Engineering")<205 |next
Click here if you do not want to get this schematic |next "bluh" |confirm |only if skill("Engineering")>=205
step
Kill Mekgineer Thermaplugg |only if skill("Engineering")>=205
collect 1 Schematic: Pet Bombling##11828 |n |only if skill("Engineering")>=205
learn Pet Bombling##15628 |goto Gnomeregan,31.2,31.0 |use Schematic: Pet Bombling##11828 |only if skill("Engineering")>=205
step
label "bluh"
You can either buy this from the Auction House or farm for it:
collect 1 Pet Bombling##11825 |next "bought"
Click here to make this pet |confirm
step
You can either buy these from the Auction House or farm for them:
collect 1 Big Iron Bomb##4394
collect 1 Heart of Fire##7077
collect 1 Fused Wiring##7191
collect 6 Mithril Bar##3860
|next |only if default
Click here if you're going to farm your own materials |confirm
step
map Burning Steppes
path	69.6,62.0	74.6,60.1	80.5,59.3
path	79.2,46.5	73.7,43.5	72.2,50.1
path	66.9,49.5
Follow the path provided and collect _Mithril Ore_.
collect 6 Mithril Ore##3858
step
collect 6 Copper Ore##2770 |goto Elwynn Forest 39.0,81.2
step
Use your _Mining ability_ inside the Crystalvein Mine.
collect 3 Iron Ore##2772 |goto The Cape of Stranglethorn 65.1,27.7
collect 3 Heavy Stone##2838 |goto The Cape of Stranglethorn 65.1,27.7
collect 1 Silver Ore##2775 |goto The Cape of Stranglethorn 65.1,27.7
step
create Mithril Bar##10097,Mining,6 total |goto Stormwind City/0 62.9,37.0
step
create Iron Bar##3307,Mining,3 total
step
create Silver Bar##2658,Mining,1 total
step
create Copper Bar##2657,Mining,6 total
step
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(15628)==false
create Pet Bombling##15628,Engineering,1 total |only if knowspell(15628)==true
collect 1 Pet Bombling##11825
step
label "bought"
learnpet Pet Bombling##9656 |use Pet Bombling##11825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tranquil Mechanical Yeti",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Tranquil Mechanical Yeti.",
model={10269},
pet=116,
},[[
step
The recipe to make this was removed with the quest line back in 2014.
Old Engineers may still have this recipe you can either find one of these or purchase it from the AH.
confirm
step
Click here to _buy_ the _Tranquil Mechanical Yeti_ from the AH |next "AH Yeti"
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
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Crawling Claw",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Crawling Claw.",
model={34262},
pet=264,
},[[
step
This pet is a rare Archaeology "Tol'vir" solve
talk Harrison Jones##44238 |goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
get Archaeology,525
step
Open your world map, find dig sites in Kalimdor, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Crawling Claw"_. Solve this Archaeology puzzle
collect 1 Crawling Claw##60847
step
learnpet Crawling Claw##45128 |use Crawling Claw##60847
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Creepy Crate",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Creepy Crate.",
model={38638},
pet=321,
},[[
step
This pet can only be obtained during the Hallow's End festival
Click here to continue |confirm
step
talk Human Commoner##18927
accept Costumed Orphan Matron##11310/24/201156 |goto Stormwind City,61.7,74.2
accept A Season for Celebration##29074 |goto Stormwind City,61.7,74.2
step
talk Jesper##15310
accept Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest,32.0,50.4
step
talk Celestine of the Harvest##51665
turnin A Season for Celebration##29074 |goto Elwynn Forest,32.0,50.5
step
talk Gretchen Fenlow##51934
accept A Friend in Need##29430 |goto 32.4,50.9
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest,42.6,64.4
accept Fire Brigade Practice##11360 |goto Elwynn Forest,42.6,64.4
step
Click the Water Barrel |tip It looks like a huge bucket of water.
collect Water Bucket##32971 |q 11360 |goto 42.5,64.5
step
Use your Water Bucket on the burning scarecrows |use Water Bucket##32971
Fight 5 Fires |q 11360/1 |goto 42.6,60.2
Collect more Water Buckets from the Water Barrel at [42.7,62.0]
step
talk Costumed Orphan Matron##24519
You will only be able to accept 1 of the 2 daily quests
turnin Fire Training##11360 |goto 42.6,64.4
accept Stop the Fires!##11131 |goto 42.6,64.4 |or
accept "Let the Fires Come!"##12135 |goto 42.6,64.4 |or
step
Click the Water Barrel
|tip It looks like a huge bucket of water.
collect Water Bucket##32971 |q 11131 |goto 42.5,64.5
step
Use your Water Bucket on the fires all around this area |use Water Bucket##32971
Put Out the Fires |q 11131/1 |goto 42.4,65.6
|tip You will need a group of people to complete this quest.
|tip It is best to do this quest at peak hours.
Collect more Water Buckets from the Water Barrel at [42.5,64.5]
step
Click the Water Barrel |tip It looks like a huge bucket of water.
collect Water Bucket##32971 |q 12135 |goto 42.5,64.5
step
Use your Water Bucket on the fires all around this area |use Water Bucket##32971
|tip Wait until the fires appear on the buildings in Goldshire
Put Out the Fires |q 12135/1 |goto 42.4,65.6
|tip You will need a group of people to complete this quest.
|tip It is best to do this quest at peak hours.
Collect more Water Buckets from the Water Barrel at [42.5,64.5]
step
Click the Large Jack-o'-Lantern
|tip It's a burning pumpkin laying in the road.
accept Smash the Pumpkin##12133 |goto 42.4,65.9
step
talk Costumed Orphan Matron##24519
You will only be able to accept 1 of the 2 daily quests
turnin Stop the Fires!##11131 |goto 42.6,64.4
turnin "Let the Fires Come!"##12135 |goto 42.6,64.4
turnin Smash the Pumpkin##12133 |goto 42.6,64.4
step
talk Innkeeper Allison##6740
accept Flexing for Nougat##8356 |goto Stormwind City 60.4,75.3
step
While targeting Inkeeper Allison:
Flex for Innkeeper Allison |script DoEmote("FLEX") |goto 60.4,75.3 |q 8356/1
step
talk Innkeeper Allison##6740
turnin Flexing for Nougat##8356 |goto 60.4,75.3
step
talk Anson Hastings##53949
turnin A Friend in Need##29430 |goto Stormwind City,60.1,75.1
accept Missing Heirlooms##29392 |goto Stormwind City,60.1,75.1
step
talk Innkeeper Firebrew##5111
accept Chicken Clucking for a Mint##8353 |goto Ironforge,18.1,51.5
step
While targeting Innkeeper Firebrew:
Cluck like a Chicken for Innkeeper Firebrew |script DoEmote("CHICKEN") |q 8353/1 |goto 18.1,51.5
step
talk Innkeeper Firebrew##5111
turnin Chicken Clucking for a Mint##8353 |goto 18.1,51.5
step
talk Talvash del Kissel##6826
accept Incoming Gumdrop##8355 |goto 36.4,3.6
step
While targeting Talvash del Kissel:
Make Train sounds for Talvash del Kissel |script DoEmote("TRAIN") |q 8355/1 |goto 36.4,3.6
step
talk Talvash del Kissel##6826
turnin Incoming Gumdrop##8355 |goto 36.4,3.6
step
talk Hired Courier##53950
turnin Missing Heirlooms##29392 |goto Stormwind City 24.0,44.8
accept Fencing the Goods##29398 |goto Stormwind City 24.0,44.8
step
talk Auctioneer Fitch##8719
Ask if anyone suspicious tried to list a crate of goods recently
turnin Fencing the Goods##29398 |goto 61.2,70.8
accept Shopping Around##29399 |goto 61.2,70.8
step
talk Hudson Barnes##54021
turnin Shopping Around##29399 |goto 64.2,46.3
|tip You will have to wait until he finishes talking and the white question mark turns yellow to turn this in.
accept Taking Precautions##29402 |goto 64.2,46.3
step
talk Brother Cassius##1351
buy 5 Arcane Powder##17020 |q 29402/2 |goto Stormwind City,52.4,45.8
step
Click Blood Nettle
collect 5 Blood Nettle##71035 |q 29402/3 |goto 55.2,14.5
step
talk Maria Lumere##1313
collect 5 Crystal Vial##3371 |q 29402/1 |goto 55.9,85.6
step
talk Hudson Barnes##54021
turnin Taking Precautions##29402 |goto 64.2,46.3
accept The Collector's Agent##29403 |goto 64.2,46.3
step
Enter the Cathedral of Light |goto Stormwind City,52.7,50.5 < 5 |walk
Go down into the Cathedral of Light catacombs |goto 51.3,44.2 |walk
kill Unleashed Void##54114+
Click the Stolen Crate
turnin The Collector's Agent##29403 |goto 55.3,43.5
accept What Now?##29411 |goto 55.3,43.5
step
talk Anson Hastings##53949
turnin What Now?##29411 |goto Stormwind City,60.1,75.1
step
Click Anson's Crate
turnin The Creepy Crate##29413 |goto 60.1,75.1
collect Creepy Crate##71076 |goto 60.1,75.1
step
learnpet Creepy Crate##54128 |use Creepy Crate##71076
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fossilized Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Fossilized Hatchling.",
model={34413},
pet=266,
},[[
step
This pet is a rare Archaeology "Fossil" solve
talk Harrison Jones##44238 |goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
confirm |only if default
step
Open your world map, find dig sites in Kalimdor and Eastern Kingdoms, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Fossilized Hatchling"_. Solve this Archaeology puzzle
collect 1 Fossilized Hatchling##60955
step
learnpet Fossilized Hatchling##45340 |use Fossilized Hatchling##60955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Macabre Marionette",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Macabre Marionette.",
model={29404},
pet=1351,
},[[
step
You can only obtain this pet during the Day of the Dead event, which only runs for one weekend a year.
confirm
step
talk Innkeeper Allison##6740
buy Ice Cold Milk##1179 |goto Stormwind City 60.4,75.2
step
talk Erika Tate##5483
buy Simple Flour##30817 |goto Stormwind City 77.6,53.1
step
talk Chapman##34382
buy Orange Marigold##46718 |goto Dalaran/1 34.7,39.1
|tip You may want to buy a few of these due to their short duration.
buy Recipe: Bread of the Dead##46710 |goto Dalaran/1 34.7,39.1
step
Use the recipe in your bags to learn the Bread of the Dead. |use Recipe: Bread of the Dead##46710
learn Bread of the Dead##65454
step
#include "cooking_fire"
create 1 Bread of the Dead##65454,Cooking,1 total
step
talk Cheerful Dalaran Spirit##35256
accept The Grateful Dead##14166 |goto Dalaran/1 34.5,38.5
turnin The Grateful Dead##14166 |goto Dalaran/1 34.5,38.5
step
Use the Macabre Marionette in your bags. |use Macabre Marionette##46831
learnpet Macabre Marionette##34770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Sen'jin Fetish",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Sen'jin Fetish.",
model={46939},
pet=218,
},[[
step
#include "auctioneer"
buy 1 Sen'jin Fetish##45606
tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Sen'jin Fetish##33810 |use Sen'jin Fetish##45606
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Voodoo Figurine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Voodoo Figurine.",
model={38232},
pet=310,
},[[
step
This pet is a _rare Archaeology "Troll"_ solve
talk Harrison Jones##44238 |goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
|tip Click the Archaeology Fragments that spawn on the ground
|tip You're looking for a rare artifact in the "Troll" tab called "Voodoo Figurine". Solve this Archaeology puzzle
collect 1 Voodoo Figurine##69824
step
learnpet Voodoo Figurine##53232 |use Voodoo Figurine##69824
]])
