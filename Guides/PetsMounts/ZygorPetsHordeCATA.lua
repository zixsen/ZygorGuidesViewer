local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHCATA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Magical Crawdad",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Magical Crawdad.",
model={18269},
pet=132,
},[[
#include "Mr_Pinchy"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Pengu",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Pengu.",
model={28216},
pet=198,
},[[
step
Completing all normal quests should make you revered with the Kalu'ak before having to do daily quests.
confirm
#include "Kaluak_Rep"
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
talk Matty##63086
Tell him you're interested in catching some rare pets.
learnpet Shore Crawler##63097 |goto Orgrimmar 37.6,79.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Small Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Small Frog.",
model={6297},
pet=419,
},[[
step
Challenge one to a pet battle and capture it
|tip The Small Frog is level 3.
learnpet Small Frog##61071 |goto Northern Barrens 36.2,44.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Speedy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Speedy.",
model={16259},
pet=125,
},[[
step
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Turtle Box##23002
|tip Back to the Orphanage (Shattrath)
step
learnpet Speedy##16547 |use Turtle Box##23002 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crawler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Strand Crawler.",
model={45880},
pet=211,
},[[
step
label "select"
Click here to do the Undercity Daily Quests. |next "undfish" |confirm
Click here to do the Dalaran Daily Quests. |next "dalfish" |confirm
|tip You must complete the Fishing Daily quests in Undercity or Dalaran to obtain this pet
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
You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
accept Blood Is Thicker##13833 |goto Dalaran,53.1,64.9 |or
accept Dangerously Delicious##13834 |goto Dalaran,53.1,64.9 |or
accept Jewel Of The Sewers##13832 |goto Dalaran,53.1,64.9 |or
accept Disarmed!##13836 |goto Dalaran,53.1,64.9 |or
accept The Ghostfish##13830 |goto Dalaran,53.1,64.9 |or
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
Obtain the Animal Blood buff |havebuff Ability_Seal |q 13833 |goto Borean Tundra,54.6,41.8
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
The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7 < 5 |c |q 13832 |walk
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
collect 1 Phantom Ghostfish##45902 |n
Click the Phantom Ghostfish in your bags to eat it |use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q 13830/1 |goto Sholazar Basin,49.3,61.8
only if havequest (13830)
step
talk Marcia Chase##28742
You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
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
label "undfish"
In order to earn the achievement Fish or Cut Bait: Darnassus, you will need to complete 5 daily quests from the NPC Armand Cromwell.
You will only be able to accept 1 of the 5 quests per day.
Click here to proceed. |confirm
step
Below are the following quests you will have to complete in order to earn the achievement:
Fish Head |achieve 5850/1
Tadpole Terror |achieve 5850/2
Like Pike? |achieve 5850/3
Time for Slime |achieve 5850/4
Moat Monster |achieve 5850/5
Click here to proceed. |confirm
step
Go to Undercity |goto Undercity |noway|c
step
label "dailies"
talk Armand Cromwell##4573
You will only be able to accept one of the five quests listed.
accept Fish Head##29317 |goto Undercity,81.6,30.8 |or
accept Like Pike?##29320 |goto Undercity,81.6,30.8 |or
accept Moat Monster!##29361 |goto Undercity,81.6,30.8 |or
accept Tadpole Terror##29319 |goto Undercity,81.6,30.8 |or
accept Time for Slime##29322 |goto Undercity,81.6,30.8 |or
step
Use your Fishing skill at the edge of the wooden dock to fish up a Severed Abomination Head |cast Fishing##7620
collect Severed Abomination Head##69901 |q 29317/1 |goto 81.6,31.5
only if havequest(29317)
step
Click on the graves here to collect a Corpse Worm |goto Undercity,67.3,15.2
|tip It looks like sparkling dirt in front of a grave stone
confirm
only if havequest(29320)
step
Use your Fishing skill in the water here to fish up Corpse-Fed Pike |cast Fishing##7620
collect Corpse-Fed Pike##69909 |q 293320/1 |goto Tirisfal Glades,67.1,50.8
only if havequest(29320)
step
Open your Moat Monster Feeding Kit |use Moat Monster Feeding Kit##69999
Lure the Moat Monster out with the Alliance Decoy |use Alliance Decoy Ki##69998
Feed the Moat Monster with your Bloated Frogs! |use Bloated Frog##69995
Feed Bloated Frogs to the Moat Monster |q 29361/1 |goto Undercity,64.7,16.5
only if havequest(29361)
step
Use your Fishing skill to fish up Giant Flesh-Eating Tadpoles |cast Fishing##7620
collect 8 Giant Flesh-Eating Tadpole##69905 |q 29319/1 |goto Tirisfal Glades,50.6,56.5
only if havequest(29319)
step
Click on the Squirming Slime Mold in the green, slimy water all over Undercity
|tip These are a bit hard to see, so, to see them better, you can dive into the water, or turn on your display health bars by pushing [V]
collect 10 Squirming Slime Mold##69911 |q 29322/1 |goto Undercity,81.1,32.0
only if havequest(29322)
step
talk Armand Cromwell##4573
turnin Like Pike?##29320 |goto Undercity,81.6,30.8 |or
turnin Moat Monster!##29361 |goto Undercity,81.6,30.8 |or
turnin Tadpole Terror##29319 |goto Undercity,81.6,30.8 |or
turnin Time for Slime##29322 |goto Undercity,81.6,30.8 |or
only if havequest(29320) or havequest(29361) or havequest(29319) or havequest(29322)
step
talk Master Apothecary Faranell##2055 |or
turnin Fish Head##29317  |goto Undercity,48.4,69.4
only if havequest(29317)
step
Below are the following quests you will have to complete in order to earn the achievement:
Fish Head |achieve 5850/1
Tadpole Terror |achieve 5850/2
Like Pike? |achieve 5850/3
Time for Slime |achieve 5850/4
Moat Monster |achieve 5850/5
Click here to go to the beginning of this dailies guide |next "select" |confirm
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
talk Xan'tish##8404
buy 1 Black Kingsnake##10360 |goto Orgrimmar,33.0,67.4
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
#include "auctioneer"
buy 1 Cat Carrier (Bombay)##8485
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Bombay Cat##7385  |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Brown Snake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Brown Snake.",
model={2957},
pet=77,
},[[
step
talk Xan'tish##8404
buy 1 Brown Snake##10361 |goto Orgrimmar,33.0,67.4
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
#include "auctioneer"
buy 1 Cat Carrier (Cornish Rex)##8486
|tip This pet must be bought with an Alliance character or through the Auction House
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
talk Xan'tish##8404
buy 1 Crimson Snake##10392 |goto Orgrimmar,33.0,67.4
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
#include "auctioneer"
buy 1 Dun Morogh Cub##44970
|tip This pet must be bought with an Alliance character or through the Auction House
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
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are an Orc.
confirm always
step
Proceeding to Pre Quests. |next |only if default
Click here for Aspirant Rank Daily quests. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here for Valiant Rank Dailies. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here if you are already at the rank of Champion. |next "buy" |confirm
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown,69.7,22.9
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto 76.3,24.4
accept Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13829 |goto 75.6,23.7
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto 72.5,19.3
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto 72.7,18.9
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto 73.2,19.2
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto 73.1,19.0
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto 72.9,18.8
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13829/2 |goto 72.6,19.7
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
label "buy"
talk Mokra the Skullcrusher##33361
accept Valiant Of Orgrimmar##13707 |goto Icecrown,76.5,24.6
turnin Valiant Of Orgrimmar##13707 |goto Icecrown,76.5,24.6
accept The Valiant's Charge##13697 |goto Icecrown,76.5,24.6
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13762 |goto 76.5,24.6 |or
accept A Worthy Weapon##13763 |goto 76.5,24.6 |or
accept The Edge Of Winter##13764 |goto 76.5,24.6 |or
step
talk Akinos##33405
accept A Valiant's Field Training##13765 |goto 76.5,24.5
step
talk Morah Worgsister##33544
accept The Grand Melee##13767 |goto 76.4,24.6
accept At The Enemy's Gates##13856 |goto 76.4,24.6
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13763 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord,42.2,19.7
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13856 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13856/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13856/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13856/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13765/1 |goto 44.3,54.2
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.5,24.0
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them |tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.3,26.0
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13762 |goto 76.5,24.6
turnin A Worthy Weapon##13763 |goto 76.5,24.6
turnin The Edge Of Winter##13764 |goto 76.5,24.6
step
talk Akinos##33405
turnin A Valiant's Field Training##13765 |goto 76.5,24.5
step
talk Morah Worgsister##33544
turnin The Grand Melee##13767 |goto 76.4,24.6
turnin At The Enemy's Gates##13856 |goto 76.4,24.6
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13697/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Charge##13697 |goto 76.5,24.6
accept The Valiant's Challenge##13726 |goto 76.5,24.6
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.2,22.5
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13726/1 |goto 68.6,21.0
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Challenge##13726 |goto 76.5,24.6
step
Become a Champion of Orgrimmar |achieve 2783
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Freka Bloodaxe##33553
buy 1 Durotar Scorpion##44973 |goto Icecrown,76.4,24.2
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
talk Chub##53757
buy Feline Familiar##70908 |goto Undercity,67.8,6.8
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
You will have to do the Firelands dailies quests to complete the quest "Calling the Ancients"
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
talk Commander Aggro'gosh##2464
accept The Defense of Grom'gol: Raptor Risk##26278 |goto Northern Stranglethorn,38.4,50.4
step
talk Innkeeper Thulbek##5814
home Grom'gol Base Camp |goto 37.4,51.9
step
kill 12 Lashtail Egg##42620+ |q 26278/1 |goto 36.0,43.5
|tip They look like small white eggs on the ground around this area.
You will automatically accept a quest:
accept A Lashtail Hatchling##26317
step
talk Commander Aggro'gosh##2464
turnin The Defense of Grom'gol: Raptor Risk##26278 |goto 38.4,50.4
step
talk Far Seer Mok'thardin##2465
turnin A Lashtail Hatchling##26317 |goto 38.4,51.1
accept I Think She's Hungry##26321 |goto 38.4,51.1
step
If your Lashtail Hatchling isn't next to you, use your Lashtail Raptor Egg Fragment |use Lashtail Raptor Egg Fragment##58165
kill Murkgill Oracle##4459+, Murkgill Warrior##4461+ |q 26280/1 |goto 43.1,40.9
Feed the Lashtail Hatchling 40 Bites of Murkgill Meat |q 26321/1 |goto 43.1,40.9
step
talk Far Seer Mok'thardin##2465
turnin I Think She's Hungry##26321 |goto 38.4,51.1
step
talk Lashtail Hatchling##42736
accept Favored Skull##26323 |goto 33.7,37.2
step
talk Nimboya##2497
turnin Favored Skull##26323 |goto 38.4,48.7
step
click Bubbling Cauldron##243855
accept A Nose for This Sort of Thing##26325 |goto 38.5,48.6
step
Use your Lashtail Raptor Egg Fragment |use Lashtail Raptor Egg Fragment##58165
Follow your Lashtail Hatchling around
collect 8 Zuuldaian Fetish##58171 |q 26325/1 |goto 20.7,23.5
step
click Bubbling Cauldron##243855
turnin A Nose for This Sort of Thing##26325 |goto 38.5,48.6
accept Who's a Big Troll?##26330 |goto 38.5,48.6
step
kill Gan'zulah##1061
collect Gan'zulah's Body##58179 |q 26330/1 |goto 24.9,18.2
step
click Bubbling Cauldron##243855
turnin Who's a Big Troll?##26330 |goto 38.5,48.6
accept Skullsplitter Mojo##26332 |goto 38.5,48.6
step
kill Skullsplitter Warrior##667+, Skullsplitter Mystic##780+, Skullsplitter Axe Thrower##696+
collect 6 Skullsplitter Mojo##58201 |q 26332/1 |goto 54.5,62.1
step
click Bubbling Cauldron##243855
turnin Skullsplitter Mojo##26332 |goto 38.5,48.6
step
talk Bloodlord Mandokir##42790
accept Bloodlord Mandokir##26334 |goto 38.5,48.6
turnin Bloodlord Mandokir##26334 |goto 38.5,48.6
step
talk Nimboya##2497
accept Priestess Hu'rala##26350 |goto 38.4,48.7
step
talk Priestess Hu'rala##42812
turnin Priestess Hu'rala##26350 |goto 63.5,39.0
accept Mind Vision##26351 |goto 63.5,39.0
step
kill Jungle Stalker##687+
collect 5 Jungle Stalker Feather##3863 |q 26351/1 |goto 58.6,49.1
You can find more Jungle Stalkers around [53.7,48.8]
step
talk Priestess Hu'rala##42812
turnin Mind Vision##26351 |goto 63.5,39.0
accept See Raptor##26359 |goto 63.5,39.0
step
talk Priestess Hu'rala##42812
Tell her you are ready for the Mind Vision ritual
Complete the Mind Vision |q 26359/1 |goto 63.5,39.0
step
talk Priestess Hu'rala##42812
turnin See Raptor##26359 |goto 63.5,39.0
accept Mind Control##26360 |goto 63.5,39.0
step
kill Braddok##42858
collect Braddok's Big Brain##58225 |q 26360/1 |goto 62.8,74.5
step
talk Priestess Hu'rala##42812
turnin Mind Control##26360 |goto 63.5,39.0
accept Be Raptor##26362 |goto 63.5,39.0
step
talk Priestess Hu'rala##42812
Tell her you are ready for the Mind Control ritual
Become the Captured Lashtail Hatchling |invehicle |q 26362 |goto 63.5,39.0
step
Stay away from the trolls as you walk, or you will have to start over
talk Tan'shang##42881
<Learn to bite through nets from the elder raptor.>
Speak with Tan'shang |q 26362/1 |goto 89.1,46.3
step
Stay away from the trolls as you walk, or you will have to start over
talk Tenjiyu##42882 |goto 86.9,44.6
Tell him you'll go get him some food from the sleeping trolls
confirm
step
Stay away from the trolls as you walk, or you will have to start over
clicknpc Gurubashi Soldier##42871
Steal Raptor Food |havebuff Interface\Icons\INV_Misc_Bag_10_Blue |q 26362 |goto 86.9,50.0
step
Stay away from the trolls as you walk, or you will have to start over
talk Tenjiyu##42882
Tell him you've brought some food for him, then learn to light fires from the elder raptor
Help Tenjiyu |q 26362/2 |goto 86.9,44.6
step
click Gurubashi Brazier
|tip It's a square metal container with fire in it on the ground in the middle of the path.
Get a Burning Twig |goto 86.9,41.2
Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.
The guards blocking the path will run to put out the burning tiki
Run past the guards into the next area
confirm
step
Click the Gurubashi Brazier
|tip It's a square metal container with fire in it on the ground in the middle of the path.
Get a Burning Twig |goto 86.4,39.3
Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [86.1,38.0]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards into the next area
confirm
step
Click the Gurubashi Brazier
|tip It's a square metal container with fire in it on the ground in the middle of the path.
Get a Burning Twig |goto 85.3,37.7
Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [83.9,38.3]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards
confirm
step
talk Chiyu##42883
<Learn to drop skulls from the elder raptor.>
Speak with Chiyu |q 26362/3 |goto 82.8,37.5
step
Click the Giant Skullpile |goto 82.5,33.9
|tip It looks like a big pile of skulls sitting in this small troll hut.
Walk onto the bridge to [81.7,34.0]
Use your Drop Skull ability to put the skull on the bridge
The troll will trip on the skull and fall off the bridge
Run to the other side of the bridge
confirm
step
Click the Giant Skullpile |goto 79.9,34.2
|tip It looks like a big pile of skulls sitting in this small troll hut.
Walk onto the bridge to [79.0,33.5]
Use your Drop Skull ability to put the skull on the bridge
The troll will trip on the skull and fall off the bridge
Run to the other side of the bridge
confirm
step
Click the Gurubashi Brazier |goto 74.3,31.2
|tip It's a square metal container with fire in it on the ground in the middle of the path.
Get a Burning Twig
Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [74.7,32.0]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards
Run up the big staircase
Escape from Zul'Gurub |q 26362/4
step
talk Priestess Hu'rala##42812
turnin Be Raptor##26362 |goto 63.5,39.0
accept Surkhan##26386 |goto 63.5,39.0
step
talk Surkhan##42811
turnin Surkhan##26386 |goto 63.2,38.8
step
kill Bloodlord Mandokir##52151 |goto Zul'Gurub,60.6,80.6
step
Talk to Lashtail Hatchling
turnin An Old Friend##29208 |goto 61.2,81.6
collect 1 Lashtail Hatchling##69251 |goto 61.2,81.6
confirm
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
#include "auctioneer"
buy 1 Cat Carrier (Orange Tabby)##8487
|tip This pet must be bought with an Alliance character or through the Auction House
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
talk Bwemba##53081
accept Bwemba's Spirit##29219 |goto Orgrimmar,32.6,68.1
accept To Bambala##29220 |goto Orgrimmar,32.6,68.1
step
talk Kil'karil##52980
turnin To Bambala##29220 |goto Northern Stranglethorn,64.6,40.0
accept Serpents and Poison##29221 |goto Northern Stranglethorn,64.6,40.0
step
kill 10 Jungle Serpent |q 29221/1 |goto 61.2,39.8
Click Injured Bambala Headhunters
|tip They look like green bodies laying on the ground around this area.
Heal 10 Headhunters |q 29221/2 |goto 61.2,39.8
step
talk Kil'karil##52980
turnin Serpents and Poison##29221 |goto 64.6,40.0
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29222
step
Click the Bonfire |tip It looks like a big pile of burning sticks.
Watch the dialogue
Use the Bonfire near Bambala |q 29222/1 |goto 65.1,39.9
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29222
step
talk Kil'karil##52980
accept Nesingwary Will Know##29223 |goto 64.6,40.0
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29223 |goto 44.1,22.9
accept Track the Tracker##29226 |goto 44.1,22.9
step
talk Grent Direhammer##52346
turnin Track the Tracker##29226 |goto 50.4,21.7
accept The Hunter's Revenge##29227 |goto 50.4,21.7
step
kill Mauti?##52349
Bring Grent Direhammer to the body of Mauti |q 29227/1 |goto 64.0,19.6
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29227
You will automatically accept a new quest:
accept Follow That Cat##29228
step
Go to this spot
Find Mauti's Lair |q 29228/1 |goto 77.7,68.4
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29228
accept Mauti##29230
step
kill Mauti##52372
Let Bwemba Inspect the Cat |q 29230/1 |goto 77.2,69.0
step
Next to you:
talk Bwemba##52234
turnin Mauti##29230
accept How's the Hunter Holding Up?##29231
step
Enter the cave |goto 76.5,67.5,0.5 |c
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29231 |goto 76.1,66.7
accept Bury Me With Me Boots...##29232 |goto 76.1,66.7
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
collect Direhammer's Boots##68937 |q 29232/1 |goto 76.0,66.5
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29232 |goto 76.1,66.7
step
Talk to Panther Cub
accept Some Good Will Come##29268 |goto 76.1,66.7
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
#include "auctioneer"
buy 1 Cat Carrier (Silver Tabby)##8488
tip This pet must be bought with an Alliance character or through the Auction House
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
This pet requires your guild to have the achievement "Critter Kill Squad" completed
|tip kill 50,000 critters |achieve 5144
step
talk Goram##46572
buy 1 Armadillo Pup##63398 |goto Orgrimmar,48.38,75.79
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
talk Halpa##8401
buy 1 Prarie Dog Whistle##10394 |goto Thunder Bluff 62.8,58.2
step
learnpet Brown Prairie Dog##14421 |use Prarie Dog Whistle##10394
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
learnpet Dung Beetle##62115 |goto Orgrimmar 42.4,46.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Egbert",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Egbert.",
model={21382},
pet=158,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Egbert's Egg##32616 |tip Warden of the Horde
step
learnpet Egbert##23258 |use Egbert's Egg##32616
|tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elwynn Lamb",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Elwynn Lamb.",
model={16205},
pet=209,
},[[
step
#include "auctioneer"
buy 1 Elwynn Lamb##44974
|tip This pet must be bought with an Alliance character or through the Auction House
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
|tip The Hares around this area are level 1.
learnpet Hare##61751 |goto Durotar 47.3,30.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mr. Wiggles",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mr. Wiggles.",
model={16257},
pet=126,
},[[
step
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Piglet's Collar##23007 |tip Warden of the Horde
step
learnpet Mr. Wiggles##16548 |use Piglet's Collar##23007 |tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mulgore Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mulgore Hatchling.",
model={28502},
pet=210,
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Tauren.
confirm always
step
Proceeding to Pre Quests. |next |only if default
Click here Aspirant Rank Daily quests. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here for Valiant Rank Dailies |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here if you are already at the rank of Champion. |next "buy" |confirm
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown,69.7,22.9
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto 76.3,24.4
accept Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13829 |goto 75.6,23.7
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto 72.5,19.3
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto 72.7,18.9
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto 73.2,19.2
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto 73.1,19.0
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto 72.9,18.8
step
Target a Melee Target
|tip If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13829/2 |goto 72.6,19.7
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
label "buy"
talk Runok Wildmane##33403
accept Valiant Of Thunder Bluff##13709 |goto Icecrown,76.2,24.6
turnin Valiant Of Thunder Bluff##13709 |goto Icecrown,76.2,24.6
accept The Valiant's Charge##13720 |goto Icecrown,76.2,24.6
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13773 |goto 76.2,24.6 |or
accept A Worthy Weapon##13774 |goto 76.2,24.6 |or
accept The Edge Of Winter##13775 |goto 76.2,24.6 |or
step
talk Dern Ragetotem##33539
accept A Valiant's Field Training##13776 |goto 76.3,24.7
step
talk Anka Clawhoof##33549
accept The Grand Melee##13777 |goto 76.1,24.6
accept At The Enemy's Gates##13858 |goto 76.1,24.6
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13774 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord,42.2,19.7
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13858 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13858/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13858/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13858/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13776/1 |goto 44.3,54.2
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.5,24.3
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.3,26.0
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13773 |goto 76.2,24.6
turnin A Worthy Weapon##13774 |goto 76.2,24.6
turnin The Edge Of Winter##13775 |goto 76.2,24.6
step
talk Dern Ragetotem##33539
turnin A Valiant's Field Training##13776 |goto 76.3,24.7
step
talk Anka Clawhoof##33549
turnin The Grand Melee##13777 |goto 76.1,24.6
turnin At The Enemy's Gates##13858 |goto 76.1,24.6
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13720/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Runok Wildmane##33403
turnin The Valiant's Charge##13720 |goto 76.2,24.6
accept The Valiant's Challenge##13728 |goto 76.2,24.6
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 71.9,22.4
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13728/1 |goto 68.6,21.0
step
talk Runok Wildmane##33403
turnin The Valiant's Challenge##13728 |goto 76.2,24.6
step
Become a Champion of Thunder Bluff |achieve 2786
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Doru Thunderhorn##33556
buy 1 Mulgore Hatcling##44980 |goto Icecrown,76.2,24.4
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
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
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
This _pet_ is _only availiable_ during the _Brewfest_ Holiday
collect 100 Brewfest Prize Tokens##37829
Click here if you need to do the quests leading up to the dailies. |next "Zygor's Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Quests" |confirm |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here if you have completed the quests and only need the dailies. |next "Zygor's Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesHCATA"]
step
Go to Durotar and talk to Blix Fixwidget
talk Blix Fixwidget##24495
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
talk Stone Cold Trixxy##66466
accept Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
step
talk Stone Cold Trixxy##66466
Tell her you want to fight!
She uses level 19 Flying, Beast and Dragonkin pets.
Defeat Stone Cold Trixxy |q 31909/1 |goto Winterspring 65.6,64.4
step
talk Stone Cold Trixxy##66466
turnin Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
step
talk Bloodknight Antari##66557
accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
only if completedq(31920)
step
talk Bloodknight Antari##66557
|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet.
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
|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
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
|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
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
|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2
only if completedq(31970)
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
only if completedq(31970)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
only if completedq(31970)
step
talk Farmer Nishi##66734
|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7
only if completedq(31970)
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
only if completedq(31970)
step
talk Mo'ruk##66733
accept Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
only if completedq(31970)
step
talk Mo'ruk##66733
|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.2,45.9
only if completedq(31970)
step
talk Mo'ruk##66733
turnin Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
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
|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
Defeat Seeker Zusshi |q 31991/1 |goto Townlong Steppes 36.3,52.2
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
|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6
only if completedq(31970)
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
only if completedq(31970)
step
talk Aki the Chosen##66741
accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
only if completedq(31970)
step
talk Aki the Chosen##66741
|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.2,74.0
only if completedq(31970)
step
talk Aki the Chosen##66741
turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
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
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Snail Shell##66073
|tip Warden of the Horde
step
learnpet Scooter the Snail##51635 |use Snail Shell##66073 |tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Snowshoe Rabbit.",
model={328},
pet=72,
},[[
step
#include "auctioneer"
buy 1 Rabbit Crate (Snowshoe)##8497
|tip This pet must be bought with an Alliance character or through the Auction House
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
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Rat Cage##23015 |tip Warden of the Horde
step
learnpet Whiskers the Rat##16549 |use Rat Cage##23015 |tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\White Kitten",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: White Kitten.",
model={9990},
pet=46,
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (White Kitten)##8489
|tip This pet must be bought with an Alliance character or through the Auction House
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
These pets are only availiable during the Winter Veil Holiday
|tip Receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Orgrimmar
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
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37599 |n
Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37599
accept Brew of the Month Club##12306
Buy the Wolpertinger's Tankard and click it to learn it. |achieve 1683/6 |goto Durotar 40.3,17.9
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
talk Jilanne##16860
buy 1 Golden Dragonhawk Hatchling##29953 |goto Eversong Woods 44.8,71.6
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
This pet is a reward for complete the achievement _"Dragonwrath, Tarecgosa's Rest - Guild Edition"_
|tip In order to earn this you must have somebody in your guild with the Legendary weapon "Dragonwrath, Tarecgosa's Rest"
Earn _"Dragonwrath, Tarecgosa's Rest - Guild Edition"_ |achieve 5840
step
talk Goram##46572
buy 1 Lil' Tarecgosa##71033 |goto Orgrimmar 48.2,75.6
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
talk Jilanne##16860
buy 1 Red Dragonhawk Hatchling##29956 |goto Eversong Woods 44.8,71.6
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
talk Jilanne##16860
buy 1 Silver Dragonhawk##29957 |goto Eversong Woods 44.8,71.6
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
talk Goram##46572
buy 1 Thundering Serpent Hatchling##85513 |goto Orgrimmar 48.2,75.6
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
#include "auctioneer"
buy 1 Ammen Vale Lashling##44984
|tip This pet must be bought with an Alliance character or through the Auction House
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
55 Exalted Reputations |achieve 5892
step
talk Goram##46572
buy 1 Dark Phoenix Hatchling##63138 |goto Orgrimmar,48.38,75.79
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
talk Auctioneer Ralinza##44867
collect 1 Elementium Geode##67282 |goto Orgrimmar/1 53.9,73.1
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
accept You're a Mean One...##6983 |goto Hillsbrad Foothills,42.3,41.1
step
kill The Abominable Greench##13602
|tip This will require a group to kill, but you do not have to be in a party.
Free Metzen the Reindeer |q 6983/1 |goto 43.6,39.0
collect Stolen Treats##17662 |q 6983/2 |goto 43.6,39.0
|tip You can pick this up if someone has killed The Abominable Grinch recently.
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar,52.6,77.4
collect 1 Stolen Present##73792 |goto Orgrimmar,52.6,77.4
Open your Stolen Present |use Stolen Present##73792
collect 1 Lump of Coal##73797 |goto Orgrimmar,52.6,77.4
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
If you have done the Pre-Quests for Therazane, click here. |next "daily" |only if completedq(26709)
If you need to do the Pre-Quests, click here. |next "pre" |only if not completedq(26709)
step
label "pre"
To earn Pubble, you must do the _Rock Lover_ achievement, which means you will have to do Lost in the Deeps 10 times.
Since the daily quest isn't available every day, this pet may take a while to earn.
click Warchief's Command Board##207325
accept Warchief's Command: Deepholm!##27722 |goto Orgrimmar,49.7,76.5
step
talk Farseer Krogar##45244
turnin The War Has Many Fronts##27442 |goto 50.5,38.4
|tip You will only be able to turn in this quest if you completed the Vashj'ir guide section.  It will be marked completed if you have already completed the similar Mount Hyjal breadcrumb quest.
turnin Warchief's Command: Deepholm!##27722 |goto 50.5,38.4
accept The Maelstrom##27203 |goto 50.5,38.4
step
click Portal to the Maelstrom##5231 |goto 50.1,37.8
Teleport to The Maelstrom |goto The Maelstrom |noway |c
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
kill Rockslice Flayer##42606+
collect 5 Quartzite Resin##58501 |q 26410/1 |goto 45.5,57.9
step
talk Initiate Goldmine##42574
turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
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
talk Seer Kormo##43397
turnin Elemental Energy##27136 |goto 49.7,52.9
step
talk Initiate Goldmine##42574
turnin Something that Burns##27135 |goto 46.5,57.3
accept Apply and Flash Dry##26411 |goto 46.5,57.3
step
Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
|tip He's laying on the ground next to Initiate Goldmine.
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
clicknpc Slain Cannoneer##43032
Receive the Second Clue |q 26245/2 |goto 56.1,74.2
step
clicknpc Captain Skullshatter##43048
Receive the First Clue |q 26245/1 |goto 53.5,73.8
step
click Captain's Log##211413
accept Captain's Log##26246 |goto 53.6,73.8
stickystart "depele"
step
clicknpc Unexploded Artillery Shell##43044
|tip You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
Receive the Third Clue |q 26245/3 |goto 56.7,76.4
step
label "depele"
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
|tip They look like dead Alliance soldiers all over this airship.
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
kill 6 Twilight Saboteur##42885+ |q 26251/1
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin Take No Prisoners##26251
turnin On Second Thought, Take One Prisoner##26250
accept Some Spraining to Do##26254
step
Next to Stormcaller Mylra:
clicknpc Stormbeak##42716
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
stickystart "blodnelth"
step
click Slavemaster's Coffer##205097
collect Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
step
label "blodnelth"
kill Living Blood##43123+
collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.2,60.1
step
click Ball and Chains##207079
|tip They are attached to the feet of the Enslaved Miners around this area.
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
collect Maziel's Research##60816 |n
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
kill Scalesworn Cultist##44221+
collect Twilight Snare##60383 |q 26768/1 |goto 68.2,77.9
step
talk Stormcaller Mylra##44010
turnin To Catch a Dragon##26768 |goto 64.5,82.1
step
kill Jadecrest Basilisk##43981+
Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto 59.9,83.6
step
talk Stormcaller Mylra##44010
turnin Big Game, Big Bait##26766 |goto 64.5,82.1
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
stickystart "abyunderl"
step
Use your Stormstone next to the swirling blue portal |use Stormstone##60501
Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
step
Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
step
label "abyunderl"
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
|tip They look like glowing giants that walk around this area.
kill 5 Sundered Emerald Colossus##44229+ |q 27932/1 |goto 32.2,79.1
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
kill 12 Stone Trogg Ambusher |q 26500/1 |goto 29.7,68.8
Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
|tip They look like dwarves.  Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
step
talk Earthbreaker Dolomite##43160
turnin We're Surrounded##26500 |goto 28.2,69.6
accept Thunder Stones##26502 |goto 28.2,69.6
step
talk Crag Rockcrusher##43071
turnin Stonefather's Boon##26499 |goto 27.9,68.7
accept Sealing the Way##26501 |goto 27.9,68.7
stickystart "thundstone"
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Shrine |q 26501/4 |goto 27.3,67.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Barracks |q 26501/3 |goto 26.0,68.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Inn |q 26501/2 |goto 26.2,69.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Armory |q 26501/1 |goto 27.3,70.1
step
label "thundstone"
All around this area:
click Thunder Stone##204348
collect 12 Thunder Stone##58886 |q 26502/1
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
|tip They look like dwarves laying on the ground around this area.
Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
click Catapult Part##204378
collect 6 Catapult Part##58944 |q 26564/1 |goto 23.9,60.3
kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+ |q 26537/1
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
Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
step
talk Pyrium Lodestone##43897
turnin Close Escort##26632 |goto 22.7,52.0
accept Keep Them off the Front##26755 |goto 22.7,52.0
step
clicknpc Earthen Catapult##43952
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
kill 5 Needlerock Mystic##43995+ |q 26770/1 |goto 22.6,47.6
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
stickystart "irecore"
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
label "irecore"
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
stickystart "delchain"
stickystart "lorgatecult"
step
kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.2,39.4
step
label "delchain"
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
label "lorgatecult"
kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+ |q 26376/2 |goto 59.3,40.6
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
|tip He's a big white rock giant.
Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
step
Fly to the mouth of this cave
Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Violent Gale##26426
accept Depth of the Depths##26869
step
Enter the cave |goto 58.7,25.9 < 5 |walk
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
accept Putting the Pieces Together##26439 |goto 34.6,34.2
step
kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+ |q 26438/1
click Chalky Crystal Formation##204297
collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto 30.5,46.8
clicknpc Dormant Stonebound Elemental##43115+
Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
step
talk Kor the Immovable##42469
turnin Intervention##26438 |goto 34.3,34.3
turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
step
talk Berracite##43344
turnin Putting the Pieces Together##26439 |goto 34.5,34.4
step
talk Kor the Immovable##42469
accept Pebble##28869 |goto 34.3,34.3
step
Next to you:
talk Pebble##43116
turnin Pebble##28869
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
stickystart "petstonbat"
step
kill Gorgonite##43339 |q 26575/1 |goto 47.6,26.8
step
label "petstonbat"
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
|tip Be careful not to fly to quickly or you the rock elementals will disappear when you get too far away from them.
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
talk Terrath the Steady##42466
turnin Fragile Values##26658 |goto 39.9,19.4
step
kill 6 Stone Drake##42522+ |q 26657/1 |goto 36.5,18.8
|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
talk Terrath the Steady##42466
turnin Hard Falls##26657 |goto 40.0,19.4
accept Resonating Blow##26659 |goto 40.0,19.4
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
|tip It's a huge green crystal sitting on the ground.
Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
Defeat Aeosera |q 26659/2 |goto 32.7,24.3
step
talk Terrath the Steady##42466
turnin Resonating Blow##26659 |goto 33.1,24.1
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
|tip They look like orange mushrooms around this area.
Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
Gather a sample of the red mist |q 26581/1 |goto 73.6,40.8
|tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
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
Tell her you're ready when she is
kill Fungalmancer Glop##43372 |q 26583/2 |goto 69.8,31.9
|tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
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
ding 83
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
talk Hargoth Dimblaze##44644 |goto 49.9,50.1
Tell him you are joining an assault on Lorthuna's Gate and he is needed.
confirm
step
talk Stormcaller Jalara##44633 |goto 51.5,51.8
Tell her you are joining an assault on Lorthuna's Gate and she is needed.
confirm
step
talk Hargoth Dimblaze##44644
Tell him you are joining an assault on Lorthuna's Gate and he is needed.
|tip You will probably need to wait for him to respawn.
Rally 5 Earthen Ring |q 26827/1 |goto 49.9,50.1
step
talk Examiner Rowe##44823
accept The Twilight Plot##27005 |goto 51.3,50.1
step
talk Reliquary Jes'ca Darksun##44818
accept Fly Over##27008 |goto 51.3,50.0
step
talk Maruut Stonebinder##43065
turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
accept Our Part of the Bargain##26828 |goto 49.6,53.0
step
Go to this spot next to the big white portal
Investigate the Master's Gate |q 27008/1 |goto 39.0,74.2
step
kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
collect Masters' Gate Plans##60745 |q 27005/1 |goto 40.1,72.2
step
talk Examiner Rowe##44823
turnin The Twilight Plot##27005 |goto 51.3,50.1
step
talk Reliquary Jes'ca Darksun##44818
turnin Fly Over##27008 |goto 51.3,50.0
accept Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
step
talk Examiner Rowe##44823
accept Decryption Made Easy##27041 |goto 51.3,50.1
stickystart "decryplan"
step
kill Bound Water Elemental##44886
Acquire the Water Ward |q 27043/2 |goto 40.8,66.3
step
kill Bound Fire Elemental##44887
Acquire the Fire Ward |q 27043/1 |goto 36.0,67.4
step
kill Bound Air Elemental##44885
Acquire the Air Ward |q 27043/3 |goto 40.5,72.4
step
label "decryplan"
click One-Time Decryption Engine##205145
Decrypt 6 Plans |q 27041/1 |goto 40.2,67.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Decryption Made Easy##27041
accept The Wrong Sequence##27059
step
click Waygate Controller##205161
Destroy the Waygate |q 27059/1 |goto 39.1,73.9
step
kill Haethen Kaul##44835 |q 27043/4 |goto 39.9,62.2
|tip He's up on a huge floating rock.
step
talk Examiner Rowe##44823
turnin The Wrong Sequence##27059 |goto 51.3,50.0
accept That's No Pyramid!##28293 |goto 51.3,50.0
step
talk Reliquary Jes'ca Darksun##44818
turnin Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
step
talk Therazane##44025
turnin Our Part of the Bargain##26828 |goto 63.3,25.0
accept The Stone March##26829 |goto 63.3,25.0
accept Therazane's Mercy##26832 |goto 63.3,25.0
step
talk Boden the Imposing##44080
accept The Twilight Flight##26831 |goto 62.6,26.9
stickystart "twiprecult"
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
label "twiprecult"
kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+ |q 26829/1 |goto 60.3,33.2
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
kill Twilight Heretic##44681+ |q 26875/1 |goto 50.7,49.6
kill Desecrated Earthrager##44683+ |q 26875/2 |goto 50.7,49.6
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
To earn Pubble, you must do the _Rock Lover_ achievement, which means you will have to do Lost in the Deeps 10 times.
Since the daily quest isn't available every day, this pet may take a while to earn.
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
This pet requires you to have done the Firelands Pre-quests and dailies to enter the Molten Front
Routing to proper section |next "prequests" |only if not completedq(25372)
Routing to proper section |next "buy" |only if completedq(25372)
step
Go to the Molten Front |goto Molten Front |noway |c
earn 30 Mark of the World Tree##416
step
label "prequests"
#include "H_Firelands_PreQuests"
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
#include "auctioneer"
buy 1 Teldrassil Sproutling##44965
|tip This pet must be bought with an Alliance character or through the Auction House
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
These pets are only availiable during the Winter Veil Holiday
|tip Receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Orgrimmar.
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
Enter this cave |goto Darkshore,56.8,31.2 < 5 |walk
talk Apothecary Furrows##33980
|tip He's at the bottom of this cave and to the left with an imp walking around him
buy 1 Withers##46325 |goto 57.2,33.8
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
Horde can not earn this pet because it is gathered from an Alliance only quest.
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
click Warchief's Command Board##207325
accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar,49.7,76.5
You will automatically accept a quest by entering Orgrimmar
accept A Personal Summons##28790
step
talk Farseer Krogar##45244
turnin A Personal Summons##28790 |goto 50.5,38.4
accept The Eye of the Storm##28805 |goto 50.5,38.4
step
clicknpc Waters of Farseeing##50088
Witness the Vision of the Farseer |q 28805/1 |goto 50.8,37.8
step
talk Farseer Krogar##45244
turnin The Eye of the Storm##28805 |goto 50.5,38.4
step
talk Cenarion Emissary Blackhoof##15188 |goto 39.9,50.9
Ask him to please send you to Moonglade
You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c
step
talk Emissary Windsong##39865
turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade,45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal,63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto 62.0,24.9
accept Protect the World Tree##25317 |goto 62.0,24.9
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.6
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.0,22.5
step
kill 8 Scalding Rock Elemental##40229+ |q 25460/1 |goto 65.8,20.8
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
|tip They look like small blue flying dragons around this area.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926+  |q 25370/1 |goto 65.8,20.8
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.0,22.5
accept Flames from Above##25574 |goto 64.0,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.6
step
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.9,15.8
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.0,22.5
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.7,35.5
step
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto 47.2,25.6
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto 47.2,25.6
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.2,25.6
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit##40080 |q 25323/1 |goto 44.7,33.2
You can find more Blazebound Revenants at [48.5,29.2]
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto 47.7,35.5
accept The Return of Baron Geddon##25464 |goto 47.7,35.5
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto 44.1,27.0
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.7,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,19.0
accept The Captured Scout##25320 |goto 48.4,19.0
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.4,20.7
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,19.0
accept A Prisoner of Interest##25324 |goto 48.4,19.0
step
Enter the cave |goto 52.6,17.3 < 5 |walk
Follow the path in the cave
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
Leave the cave
Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.6,17.3
step
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
accept End of the Supply Line##25233 |goto 35.8,19.7
accept In the Rear With the Gear##25234 |goto 35.8,19.7
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 34.6,24.5
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 34.6,24.5
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
click Twilight Supplies##202652
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 34.6,24.5
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.8,19.7
turnin In the Rear With the Gear##25234 |goto 35.8,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
step
talk Takrik Ragehowl##39432
turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
accept Howling Mad##25270 |goto 30.1,31.7
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25270/1 |goto 29.0,31.4
step
talk Takrik Ragehowl##39432
turnin Howling Mad##25270 |goto 30.1,31.7
accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25272/1 |goto 32.4,37.3
step
talk Spirit of Lo'Gosh##39622
turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
step
talk Spirit of Lo'Gosh##39622
accept The Shrine Reclaimed##25279 |goto 29.6,29.3
step
talk Takrik Ragehowl##39432
turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
accept Cleaning House##25277 |goto 28.4,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.3,30.0
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.1
step
click a Stonebloom##9386
collect Stonebloom##52726 |q 25297/1 |goto 26.5,35.0
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.4,36.5
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.5
step
Enter the cave |goto 26.9,36.3 < 5 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto 25.8,41.6
accept Elementary!##25303 |goto 25.8,41.6
stickystart "twiserv"
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.6,41.7
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
step
label "twiserv"
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay 8 Minions of Gar'gol |q 25277/1 |goto 26.7,39.2
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1 |goto 26.7,39.2
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto 25.8,41.6
accept Return to Duskwhisper##25312 |goto 25.8,41.6
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
accept Get Me Outta Here!##25332 |goto 27.2,40.8
step
Leave the cave
Escort Kristoff Out |q 25332/1 |goto 27.1,36.0
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Takrik Ragehowl##39432
turnin Cleaning House##25277 |goto 28.4,29.9
accept Sweeping the Shelf##25354 |goto 28.4,29.9
accept Lightning in a Bottle##25355 |goto 28.4,29.9
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
step
kill 8 Twilight Stormcaller##39843+ |q 25354/1 |goto 29.1,40.7
kill 5 Howling Riftdweller##39844+ |q 25354/2 |goto 29.1,40.7
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25355/1 |goto 29.1,40.7
step
Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
talk Spirit of Lo'Gosh##39622
turnin Lightning in a Bottle##25355
accept Into the Maw!##25617 |goto 26.2,41.0 |n
Go inside the blue portal |goto 25.8,41.5 < 5 |noway |c |walk
step
talk Jordan Olafson##40834
turnin Into the Maw!##25617 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
kill 12 Dark Iron Laborer##40838+ |q 25576/1 |goto 29.6,41.8
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1 |goto 29.6,41.8
Click Twilight Arms Crates
|tip They look like wooden boxes sitting on the ground around this area.
Destroy 10 Twilight Arms Crates |q 25575/1 |goto 29.6,41.8
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
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.9,46.3
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25612 |goto 26.3,41.9
Go inside the blue portal |goto 26.3,40.9 < 5 |noway |c |walk
step
talk Takrik Ragehowl##39432
turnin Sweeping the Shelf##25354 |goto 28.4,29.9
turnin Return from the Firelands##25612 |goto 28.4,29.9
step
talk Vision of Ysera##46987
accept Aviana's Legacy##27874 |goto 28.4,29.8
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
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.1,42.6
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.5,45.3
step
Next to you:
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
stickystart "panbunny"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.7,41.5
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step
label "panbunny"
kill 10 Raging Firestorm##39939+ |q 25381/1 |goto 11.3,38.2
kill 6 Twilight Inferno Lord##39974+  |q 25382/1 |goto 11.3,38.2
Click Panicked Bunnies and Terrified Squirrels
|tip They are small and run around this area.
collect 10 Frightened Animal##53060 |q 25385/1 |goto 11.3,38.2
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
stickystart "leadfawn"
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 14.6,42.2
step
label "leadfawn"
click 3 Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.2,37.9]
Escort 3 Injured Fawns Home |q 25392/1 |goto 12.5,44.6
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
accept Good News... and Bad News##29066 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Matoclaw##39928
turnin Good News... and Bad News##29066 |goto 19.0,37.0
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.7,32.8
accept The Bears Up There##25462 |goto 13.7,32.8
step
clicknpc Climbing Tree##40190
clicknpc Hyjal Bear Cub##40240+
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow spot at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 13.9,34.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.7,32.8
accept Smashing Through Ashes##25490 |goto 13.7,32.8
step
kill 8 Charbringer##40336+ |q 25490/1 |goto 16.4,51.8
step
talk Arch Druid Hamuul Runetotem##5769
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto 34.0,53.2
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 34.0,53.2
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 34.0,53.2
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.4
accept Scrambling for Eggs##25656 |goto 42.2,45.4
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.4,44.3
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.4,44.3
accept A Plea From Beyond##25665 |goto 40.4,44.3
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Slay 10 Wormwing Harpies |q 25655/1 |goto 36.9,43.4
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 36.9,43.4
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.4
turnin Scrambling for Eggs##25656 |goto 42.2,45.4
accept A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
Click the Harpy Signal Fire
|tip It's a brazier with red fire in it.
Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.4,44.2
talk Marion Wormwing##41112
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2 |goto 38.4,44.2
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 39.2,37.1
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
Go upstairs in the Shrine of Aviana
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Arch Druid Hamuul Runetotem##5769
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
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.7
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.7
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
step
Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883
|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto 31.1,76.7
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.1,76.7
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
kill Sethria##41255
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.4,52.3
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.3,48.0
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
Go inside the blue portal |goto 38.8,58.0 < 5 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.2
step
Equip the Twilight Firelance |use Twilight Firelance##52716
Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660 |q 25544/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto 33.3,56.9
You can find more Firelands Eggs all around [35.8,53.6]
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
Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly around this area
kill 10 Twilight Lancer##40660+ |q 29177/1 |goto 36.6,53.4
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto 37.2,56.2 |tip You may choose only one Jouster.
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
#include "auctioneer"
buy 1 Blue Moth Egg##29901
|tip This pet must be bought with an Alliance character or through the Auction House
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
Click here to do Darkmoon Faire Dailies |confirm |next "Zygor's Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies" |only if ZGV.guidesets["DailiesHCATA"]
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
This pet is only available to Alliance characters.
learnpet Gilnean Raven##63098
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
click Warchief's Command Board##207325
accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar,49.7,76.5
You will automatically accept a quest by entering Orgrimmar
accept A Personal Summons##28790
step
talk Farseer Krogar##45244
turnin A Personal Summons##28790 |goto 50.5,38.4
accept The Eye of the Storm##28805 |goto 50.5,38.4
step
clicknpc Waters of Farseeing##50088
Witness the Vision of the Farseer |q 28805/1 |goto 50.8,37.8
step
talk Farseer Krogar##45244
turnin The Eye of the Storm##28805 |goto 50.5,38.4
step
talk Cenarion Emissary Blackhoof##15188 |goto 39.9,50.9
Ask him to please send you to Moonglade
You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c
step
talk Emissary Windsong##39865
turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade,45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal,63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto 62.0,24.9
accept Protect the World Tree##25317 |goto 62.0,24.9
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.6
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.0,22.5
step
kill 8 Scalding Rock Elemental##40229+ |q 25460/1 |goto 65.8,20.8
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
|tip They look like small blue flying dragons around this area.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926+  |q 25370/1 |goto 65.8,20.8
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.0,22.5
accept Flames from Above##25574 |goto 64.0,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.6
step
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.9,15.8
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.0,22.5
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.7,35.5
step
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto 47.2,25.6
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto 47.2,25.6
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.2,25.6
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit##40080 |q 25323/1 |goto 44.7,33.2
You can find more Blazebound Revenants at [48.5,29.2]
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto 47.7,35.5
accept The Return of Baron Geddon##25464 |goto 47.7,35.5
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto 44.1,27.0
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.7,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,19.0
accept The Captured Scout##25320 |goto 48.4,19.0
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.4,20.7
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,19.0
accept A Prisoner of Interest##25324 |goto 48.4,19.0
step
Enter the cave |goto 52.6,17.3 < 5 |walk
Follow the path in the cave
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
Leave the cave
Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.6,17.3
step
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
accept End of the Supply Line##25233 |goto 35.8,19.7
accept In the Rear With the Gear##25234 |goto 35.8,19.7
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 34.6,24.5
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 34.6,24.5
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
click Twilight Supplies##202652
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 34.6,24.5
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.8,19.7
turnin In the Rear With the Gear##25234 |goto 35.8,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
step
talk Takrik Ragehowl##39432
turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
accept Howling Mad##25270 |goto 30.1,31.7
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25270/1 |goto 29.0,31.4
step
talk Takrik Ragehowl##39432
turnin Howling Mad##25270 |goto 30.1,31.7
accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25272/1 |goto 32.4,37.3
step
talk Spirit of Lo'Gosh##39622
turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
step
talk Spirit of Lo'Gosh##39622
accept The Shrine Reclaimed##25279 |goto 29.6,29.3
step
talk Takrik Ragehowl##39432
turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
accept Cleaning House##25277 |goto 28.4,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.3,30.0
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.1
step
click a Stonebloom##9386
collect Stonebloom##52726 |q 25297/1 |goto 26.5,35.0
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.4,36.5
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.5
step
Enter the cave |goto 26.9,36.3 < 5 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto 25.8,41.6
accept Elementary!##25303 |goto 25.8,41.6
stickystart "hovbrute"
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.6,41.7
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
step
label "hovbrute"
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay 8 Minions of Gar'gol |q 25277/1 |goto 26.7,39.2
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1 |goto 26.7,39.2
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto 25.8,41.6
accept Return to Duskwhisper##25312 |goto 25.8,41.6
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
accept Get Me Outta Here!##25332 |goto 27.2,40.8
step
Leave the cave
Escort Kristoff Out |q 25332/1 |goto 27.1,36.0
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Takrik Ragehowl##39432
turnin Cleaning House##25277 |goto 28.4,29.9
accept Sweeping the Shelf##25354 |goto 28.4,29.9
accept Lightning in a Bottle##25355 |goto 28.4,29.9
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
step
kill 8 Twilight Stormcaller##39843+ |q 25354/1 |goto 29.1,40.7
kill 5 Howling Riftdweller##39844+ |q 25354/2 |goto 29.1,40.7
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25355/1 |goto 29.1,40.7
step
Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
talk Spirit of Lo'Gosh##39622
turnin Lightning in a Bottle##25355
accept Into the Maw!##25617 |goto 26.2,41.0 |n
Go inside the blue portal |goto 25.8,41.5 < 5 |noway |c |walk
step
talk Jordan Olafson##40834
turnin Into the Maw!##25617 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
kill 12 Dark Iron Laborer##40838+ |q 25576/1 |goto 29.6,41.8
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1 |goto 29.6,41.8
Click Twilight Arms Crates
|tip They look like wooden boxes sitting on the ground around this area.
Destroy 10 Twilight Arms Crates |q 25575/1 |goto 29.6,41.8
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
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.9,46.3
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25612 |goto 26.3,41.9 |goto 25.9,40.9 |n
Go inside the blue portal |goto 26.3,40.9 < 5 |noway |c |walk
step
talk Takrik Ragehowl##39432
turnin Sweeping the Shelf##25354 |goto 28.4,29.9
turnin Return from the Firelands##25612 |goto 28.4,29.9
step
talk Vision of Ysera##46987
accept Aviana's Legacy##27874 |goto 28.4,29.8
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
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.1,42.6
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.5,45.3
step
Next to you:
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
stickystart "ragefire"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.7,41.5
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step
label "ragefire"
kill 10 Raging Firestorm##39939+ |q 25381/1 |goto 11.3,38.2
kill 6 Twilight Inferno Lord##39974+  |q 25382/1 |goto 11.3,38.2
Click Panicked Bunnies and Terrified Squirrels
|tip They are small and run around this area.
collect 10 Frightened Animal##53060 |q 25385/1 |goto 11.3,38.2
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
stickystart "fawnback"
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 14.6,42.2
step
label "fawnback"
click 3 Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.2,37.9]
Escort 3 Injured Fawns Home |q 25392/1 |goto 12.5,44.6
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
accept Good News... and Bad News##29066 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Matoclaw##39928
turnin Good News... and Bad News##29066 |goto 19.0,37.0
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.7,32.8
accept The Bears Up There##25462 |goto 13.7,32.8
step
clicknpc Climbing Tree##40190
clicknpc Hyjal Bear Cub##40240+
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow spot at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 13.9,34.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.7,32.8
accept Smashing Through Ashes##25490 |goto 13.7,32.8
step
kill 8 Charbringer##40336+ |q 25490/1 |goto 16.4,51.8
step
talk Arch Druid Hamuul Runetotem##5769
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto 34.0,53.2
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 34.0,53.2
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 34.0,53.2
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.4
accept Scrambling for Eggs##25656 |goto 42.2,45.4
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.4,44.3
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.4,44.3
accept A Plea From Beyond##25665 |goto 40.4,44.3
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Slay 10 Wormwing Harpies |q 25655/1 |goto 36.9,43.4
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 36.9,43.4
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.4
turnin Scrambling for Eggs##25656 |goto 42.2,45.4
accept A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
Click the Harpy Signal Fire
|tip It's a brazier with red fire in it.
Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.4,44.2
talk Marion Wormwing##41112 |goto 38.4,44.2
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 39.2,37.1
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
Go upstairs in the Shrine of Aviana
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Arch Druid Hamuul Runetotem##5769
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
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.7
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.7
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
step
Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883
|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto 31.1,76.7
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.1,76.7
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
kill Sethria##41255
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.4,52.3
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.3,48.0
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
|goto 39.2,58.1 |n
Go inside the blue portal |goto 38.8,58.0 < 5 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.2
step
Equip the Twilight Firelance |use Twilight Firelance##52716
Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660 |q 25544/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto 33.3,56.9
You can find more Firelands Eggs all around 35.8,53.6
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
Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
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
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Great Horned Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Great Horned Owl.",
model={4615},
pet=68,
},[[
step
#include "auctioneer"
buy 1 Great Horned Owl##8500
|tip This pet must be bought with an Alliance character or through the Auction House
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
#include "auctioneer"
buy 1 Hawk Owl##8501
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Hawk Owl##7555 |use Hawk Owl##8501
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Plump Turkey",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Plump Turkey.",
model={45968},
pet=201,
},[[
#include "Pilgrim's_Bounty_Quests"
#include "Pilgrim's_Bounty_Achievements"
#include "Pilgrim's_Bounty_Dailies"
step
Check your _mailbox_ for your _prize_!
collect 1 Turkey Cage##44810
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
This pet is a _rare Archaeology "Fossil"_ solve
talk Belloc Brightblade##47571 |goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Pterrodax Hatchling"_. Solve this Archaeology puzzle
collect 1 Pterrodax Hatchling##69821
step
learnpet Pterrordax Hatchling##53225 |use Pterrodax Hatchling##69821
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Rustberg Gull",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Rustberg Gull.",
model={36499},
pet=271,
},[[
step
label "begin"
This will require that you be Honored with the Hellscream's Reach.
Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
You will need 40 Tol Barad Commendations.
earn 40 Tol Barad Commendation##391
_Honored_ with Hellscream's Reach |condition rep("Hellscream's Reach")>=Honored |next "buy"
Click here to move on to the daillies. |confirm
If you have 40 Tol Barad Commendations and are Honored with Baradin's Wardens, click here. |next "buy" |confirm
step
This will require you to be _honored_ with _Hellscream's Reach_
Honored with Hellscream's Reach |condition rep("Hellscream's Reach")>=Honored
earn 40 Tol Barad Commendation##391
step
You will only be able to accept a total of 6 quests in the following guide steps.
confirm
step
talk 3rd Officer Kronkar##48360
accept A Sticky Task##28684 |goto Tol Barad Peninsula,55.2,81.3
accept Boosting Morale##28680 |goto Tol Barad Peninsula,55.2,81.3
accept Captain P. Harris##28678 |goto Tol Barad Peninsula,55.2,81.3
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula,55.2,81.3
accept Shark Tank##28681 |goto Tol Barad Peninsula,55.2,81.3
accept Thinning the Brood##28683 |goto Tol Barad Peninsula,55.2,81.3
step
talk Commander Larmash##48358
accept Claiming The Keep##28682 |goto 53.5,80.6
accept Leave No Weapon Behind##28685 |goto 53.5,80.6
accept Not The Friendliest Town##28686 |goto 53.5,80.6
accept Teach A Man To Fish.... Or Steal##28687 |goto 53.5,80.6
accept Walk A Mile In Their Shoes##28721 |goto 53.5,80.6
step
talk Captain Prug##48363
accept Finish The Job##28693 |goto 54.9,79.3
accept First Lieutenant Connor##28691 |goto 54.9,79.3
accept Magnets, How Do They Work?##28692 |goto 54.9,79.3
accept Salvaging the Remains##28690 |goto 54.9,79.3
accept The Forgotten##28689 |goto 54.9,79.3
step
talk Private Sarlosk##48361
accept Bomb's Away!##28696 |goto 55.8,78.5
accept Cannonball!##28698 |goto 55.8,78.5
accept Ghostbuster##28697 |goto 55.8,78.5
accept Taking the Overlook Back##28700 |goto 55.8,78.5
accept WANTED: Foreman Wellson##28695 |goto 55.8,78.5
accept Watch Out For Splinters!##28694 |goto 55.8,78.5
stickystart "stakcannon"
step
Follow the path up |goto 74.3,42.8 < 5 |walk
kill Commander Largo |q 28700/1 |goto 78.6,42.0
|tip He's at the top of the tower.
step
label "stakcannon"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
Slay 14 Largo's Overlook Ghosts |q 28697/1 |goto 78.2,49.0
Click Stacks of Cannonballs
|tip They look like piles of cannonballs shaped like pyramids on the ground around this area.
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto 78.2,49.0
step
click String of Fish##206754
|tip They look like small fish hanging from simple wooden structures on the docks around this area.
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto 69.3,23.1
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto 67.6,37.1
step
kill 12 Darkwood Lurker |q 28683/1 |goto 54.2,47.0
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto 54.2,47.0
step
kill Captain P. Harris |q 28678/1 |goto 47.9,8.1
|tip He's walking around on this broken boat.
step
kill Tank |q 28681/1 |goto 49.4,19.8
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
Click Barrels of Southsea Rum
|tip They look like barrels underwater around this area.
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto 49.4,19.8
step
kill 8 Shipwrecked Sailor |q 28679/1 |goto 49.0,29.4
step
kill Keep Lord Farson |q 28682/1 |goto 36.1,27.3
|tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto 37.8,29.1
|tip Follow the Farson Hold Prisoner and protect him.
step
click Racks of Rifles##206664
|tip They look like wooden stands with guns on them around this area.
collect 12 Rusty Rifle##62921 |q 28685/1 |goto 41.2,35.8
step
kill Foreman Wellson |q 28695/1 |goto 27.2,47.7
step
click a Cannon##113531
|tip They look like black cannons on this small dock.
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28696/1 |goto 22.2,36.3
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto 30.1,43.9
step
kill 5 Restless Soldier |q 28693/1 |goto 40.2,57.9
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
Click Siege Scraps##206644
|tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector.
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto 40.2,57.9
stickystart "curfemur"
step
kill First Lieutenant Connor |q 28691/1 |goto 38.4,77.6
|tip He's a big skeleton that walks around this area, so you may need to search for him.
step
label "curfemur"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 28690/1 |goto 38.1,71.5
click Forgotten Soldier's Tombstones##206570
|tip They look like taller and slimmer gravestones around this area.
Release 6 Tortured Souls |q 28689/1 |goto 38.1,71.5
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto 55.2,81.3
turnin Boosting Morale##28680 |goto 55.2,81.3
turnin Captain P. Harris##28678 |goto 55.2,81.3
turnin Rattling Their Cages##28679 |goto 55.2,81.3
turnin Shark Tank##28681 |goto 55.2,81.3
turnin Thinning the Brood##28683 |goto 55.2,81.3
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto 53.5,80.6
turnin Leave No Weapon Behind##28685 |goto 53.5,80.6
turnin Not The Friendliest Town##28686 |goto 53.5,80.6
turnin Teach A Man To Fish.... Or Steal##28687 |goto 53.5,80.6
turnin Walk A Mile In Their Shoes##28721 |goto 53.5,80.6
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto 54.9,79.3
turnin First Lieutenant Connor##28691 |goto 54.9,79.3
turnin Magnets, How Do They Work?##28692 |goto 54.9,79.3
turnin Salvaging the Remains##28690 |goto 54.9,79.3
turnin The Forgotten##28689 |goto 54.9,79.3
step
talk Private Sarlosk##48361
turnin Bomb's Away!##28696 |goto 55.8,78.5
turnin Cannonball!##28698 |goto 55.8,78.5
turnin Ghostbuster##28697 |goto 55.8,78.5
turnin Taking the Overlook Back##28700 |goto 55.8,78.5
turnin WANTED: Foreman Wellson##28695 |goto 55.8,78.5
turnin Watch Out For Splinters!##28694 |goto 55.8,78.5
step
|goto Tol Barad Peninsula,66.9,79.8 |n
Cross the bridge to Tol Barad. |goto Tol Barad |noway|c
These daily quests will only be available if the Horde faction currently controls Tol Barad.
confirm
step
You will only be able to accept a total of 6 quests in the following guide steps
confirm
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad,50.9,49.7
accept Swamp Bait##28658 |goto Tol Barad,50.9,49.7
accept The Leftovers##28659 |goto Tol Barad,50.9,49.7
step
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto 51.5,49.7
accept Svarnos##28664 |goto 51.5,49.7
accept Cursed Shackles##28665 |goto 51.5,49.7
step
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto 51.5,49.7
accept Learning From The Past##28662 |goto 51.5,49.7
accept The Imprisoned Archmage##28661 |goto 51.5,49.7
step
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto 51.5,49.7
accept Prison Revolt##28668 |goto 51.5,49.7
accept The Warden##28669 |goto 51.5,49.7
stickystart "curshack"
step
Enter the underground jail |goto 42.7,39.1 < 5 |walk
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto 48.3,30.7
step
label "curshack"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
Slay 10 Demons |q 28663/1 |goto 44.4,30.5
Click Cursed Shackles##28665
|tip They look like gray metal ball and chains laying on the ground all around this area.
collect 8 Cursed Shackles##63149 |q 28665/1 |goto 44.4,30.5
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto 42.1,41.8
stickystart "cellration"
step
Enter the underground jail |goto 44.0,69.2 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto 37.5,71.7
step
label "cellration"
kill Imprisoned Worker##47550+, Exiled Mage##47552+
Slay 10 Prisoners |q 28668/1 |goto 40.9,78.2
click Crates of Cellblock Rations##206996
|tip They look like slim square wooden boxes on the ground around this area.
collect 12 Cellblock Ration##63315 |q 28670/1 |goto 40.9,78.2
step
Enter the underground jail |goto 60.8,50.1 < 5 |walk
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto 56.8,54.8
step
label "dustprison"
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay 9 Ghosts |q 28660/1 |goto 51.4,49.5
click Dusty Prison Journals##206890
|tip They are books laying on the ground around this area.
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto 51.4,49.5
stickystart "allinfan"
step
kill Problim |q 28657/1 |goto 52.8,36.7
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
label "allinfan"
kill Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
kill 12 Alliance Infantry |q 28659/1 |goto Tol Barad,35.8,67.8
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto 50.9,49.7
turnin Swamp Bait##28658 |goto 50.9,49.7
turnin The Leftovers##28659 |goto 50.9,49.7
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto 51.5,49.7
turnin Svarnos##28664 |goto 51.5,49.7
turnin Cursed Shackles##28665 |goto 51.5,49.7
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto 51.5,49.7
turnin Learning From The Past##28662 |goto 51.5,49.7
turnin The Imprisoned Archmage##28661 |goto 51.5,49.7
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto 51.5,49.7
turnin Prison Revolt##28668 |goto 51.5,49.7
turnin The Warden##28669 |goto 51.5,49.7
|next "begin"
step
label "buy"
talk Pogg##48531
buy 1 Rustberg Gull##64996 |goto Tol Barad Peninsula,54.6,81.0
step
learnpet Rustberg Gull##48107 |use Rustberg Gull##64996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tiny Flamefly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Tiny Flamefly.",
model={28435},
pet=287,
},[[
step
talk Ariok##48559
accept Burning Vengeance##28418 |goto Burning Steppes 17.5,51.6
step
talk Mouton Flamestar##47779
turnin Mouton Flamestar##28515 |goto 17.0,51.3
accept Done Nothing Wrong##28417 |goto 17.0,51.3
step
talk Hans Oreflight##48318
fpath Flamestar Post |goto 17.6,52.6
step
clicknpc Fettered Green Whelpling##47820
Free a Green Whelpling |q 28417/2 |goto 17.5,60.5
step
clicknpc Fettered Blue Whelpling##47821
Free a Blue Whelpling |q 28417/3 |goto 19.2,61.6
step
Follow the path up |goto 17.8,61.4 < 5 |only if walking
clicknpc Fettered Bronze Whelpling##47822
Free a Bronze Whelpling |q 28417/4 |goto 15.1,69.7
step
clicknpc Fettered Red Whelpling##47814
Free a Red Whelpling |q 28417/1 |goto 14.2,66.8
step
kill 5 Blackrock Whelper##47782+ |q 28418/1 |goto 16.0,66.0
kill 5 Flamescale Broodling##7049+ |q 28418/2 |goto 16.0,66.0
step
talk Ariok##48559
turnin Burning Vengeance##28418 |goto 17.5,51.6
accept Stocking Up##28419 |goto 17.5,51.6
accept A Future Project##28420 |goto 17.5,51.6
accept Mud Hunter##28421 |goto 17.5,51.6
step
talk Mouton Flamestar##47779
turnin Done Nothing Wrong##28417 |goto 17.0,51.3
step
click Obsidian-Flecked Mud##206853
collect 9 Obsidian-Flecked Mud##63124 |q 28421/1 |goto 15.5,45.0
step
kill Ember Worg##9690+
collect 11 Ember Worg Hide##63136 |q 28420/1 |goto 11.8,47.7
kill Venomtip Scorpid##9691+
collect 5 Razor-Sharp Scorpid Barb##63135 |q 28419/1 |goto 11.8,47.7
step
talk Ariok##48559
turnin Stocking Up##28419 |goto 17.5,51.6
turnin A Future Project##28420 |goto 17.5,51.6
turnin Mud Hunter##28421 |goto 17.5,51.6
accept The Sand, the Cider, and the Orb##28422 |goto 17.5,51.6
step
talk Gorzeeki Wildeyes##14437
turnin The Sand, the Cider, and the Orb##28422 |goto 8.4,35.8
accept Warlocks Have the Neatest Stuff##28423 |goto 8.4,35.8
accept Shadow Boxing##28424 |goto 8.4,35.8
step
kill Ner'gosh the Shadow##47805+ |q 28424/1 |goto 9.9,29.7
step
click Slumber Sand##206881
collect Slumber Sand##3434 |q 28423/2 |goto 5.4,32.0
step
click Fel Slider Cider##206882
collect Fel Slider Cider##63133 |q 28423/3 |goto 5.2,30.9
step
kill Blackrock Warlock##7028+
collect Clear Glass Orb##63134 |q 28423/1 |goto 6.8,31.8
step
talk Gorzeeki Wildeyes##14437
turnin Warlocks Have the Neatest Stuff##28423 |goto 8.4,35.8
turnin Shadow Boxing##28424 |goto 8.4,35.8
accept Return to Ariok##28425 |goto 8.4,35.8
step
talk Ariok##48559
turnin Return to Ariok##28425 |goto 17.5,51.6
accept Chiselgrip, the Heart of the Steppes##28426 |goto 17.5,51.6
step
kill Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+ |q 28426/1 |goto 31.5,52.1
step
talk Stebben Oreknuckle##48033
turnin Chiselgrip, the Heart of the Steppes##28426 |goto 46.8,44.1
accept Prove Yer Allegiance##28225 |goto 46.8,44.1
accept Scrapped Golems##28226 |goto 46.8,44.1
step
talk Grimly Singefeather##48321
fpath Chiselgrip |goto 46.1,41.8
step
talk Eitrigg##48568
accept A Needle in a Hellhole##28427 |goto 44.5,44.4
step
talk Thelaron Direneedle##48001
turnin A Needle in a Hellhole##28427
He will offer you one of the following four quests:
accept A Perfect Costume##28428 |goto 45.5,46.4 |or
accept A Perfect Costume##28429 |goto 45.5,46.4 |or
accept A Perfect Costume##28430 |goto 45.5,46.4 |or
accept A Perfect Costume##28431 |goto 45.5,46.4 |or
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
confirm
only Orc
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 3 Hides
Take 2 Handfuls of Mud
Take 1 Spool of Thread
confirm
only Troll
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 1 Hide
Take 3 Handfuls of Mud
Take 4 Spools of Thread
confirm
only Goblin
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
confirm
only Scourge
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
confirm
only Tauren
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 3 Hides
Take 2 Handfuls of Mud
Take 1 Spool of Thread
confirm
only BloodElf
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
confirm
only Pandaran
step
talk Thelaron Direneedle##48001
Tell him you brought him some hides, mud, and thread
Create the Perfect Costume |q 28428/1 |goto 45.5,46.4
Create the Perfect Costume |q 28429/1 |goto 45.5,46.4
Create the Perfect Costume |q 28430/1 |goto 45.5,46.4
Create the Perfect Costume |q 28431/1 |goto 45.5,46.4
step
talk Eitrigg##48568
turnin A Perfect Costume##28428 |goto 44.5,44.4
turnin A Perfect Costume##28429 |goto 44.5,44.4
turnin A Perfect Costume##28430 |goto 44.5,44.4
turnin A Perfect Costume##28431 |goto 44.5,44.4
accept Into the Black Tooth Hovel##28432 |goto 44.5,44.4
step
Use your Blackrock Disguise |use Blackrock Disguise##63357
You will get a different disguise, depending on the costume you had to make:
Wear your Blackrock Orc Disguise |havebuff 236452 |q 28432 |or
Wear your Blackrock Orc Disguise |havebuff 236451 |q 28432 |or
Wear your Blackrock Orc Disguise |havebuff 236456 |q 28432 |or
Wear your Blackrock Orc Disguise |havebuff 236455 |q 28432 |or
Wear your Blackrock Ogre Disguise |havebuff 236695 |q 28432 |or
step
talk Quartermaster Kaoshin##48085
turnin Into the Black Tooth Hovel##28432 |goto 45.3,51.7
accept Grunt Work##28433 |goto 45.3,51.7
accept Strategic Cuts##28434 |goto 45.3,51.7
step
Go to the very top of the tower
Use your Razor-Sharp Scorpid Barb on Voodooist Timan |use Razor-Sharp Scorpid Barb##63350
kill Voodooist Timan##48100 |q 28434/3 |goto 45.0,52.5
step
Use your Razor-Sharp Scorpid Barb on Worgmistress Othana |use Razor-Sharp Scorpid Barb##63350
kill Worgmistress Othana##48099 |q 28434/2 |goto 39.2,56.1
step
Use your Razor-Sharp Scorpid Barb on Gorlop |use Razor-Sharp Scorpid Barb##63350
kill Gorlop##9176 |q 28434/1 |goto 42.1,60.1
|tip He's an ogre that runs back and forth between the 2 lava pools here, so you may need to search for him.
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Strategic Cuts##28434
step
click Blackrock Boots##206977
Polish 7 Pairs of Blackrock Boots |q 28433/1 |goto 39.7,55.7
step
talk Quartermaster Kaoshin##48085
turnin Grunt Work##28433 |goto 45.3,51.7
accept The Kodocaller's Horn##28435 |goto 45.3,51.7
step
Use your Horn of the Callers next to Blackrock War Kodos |use Horn of the Callers##63356
kill Blackrock War Kodo##48111+
Summon 7 Blackrock War Kodos back to camp |q 28435/1 |goto 44.9,58.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Kodocaller's Horn##28435
accept Taking the Horn For Ourselves##28436
step
talk Eitrigg##48568
turnin Taking the Horn For Ourselves##28436 |goto 44.5,44.4
step
kill Thaurissan Agent##7038+, Thaurissan Firewalker##7037+, Thaurissan Spy##7036+ |q 28225/1 |goto 45.7,39.1
kill War Reaver##7039+
click War Reaver Parts##206974
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
|tip They are metal golems all around town.
Tell them you are here to help them with their combat training, golem
kill Chiseled Golem##48037+
|tip You will have to beat them 3 times in a row to train them.
Train 4 Chiseled Golems |q 28227/1 |goto 46.4,45.2
step
talk Stebben Oreknuckle##48033
turnin Golem Training##28227 |goto 46.8,44.1
step
talk Eitrigg##48568
accept General Thorg'izog##28437 |goto 44.5,44.4
step
Use your Blackrock Disguise |use Blackrock Disguise##63357
You will get a different disguise, depending on the costume you had to make:
Wear your Blackrock Orc Disguise |havebuff 236452 |q 28437 |or
Wear your Blackrock Orc Disguise |havebuff 236451 |q 28437 |or
Wear your Blackrock Orc Disguise |havebuff 236456 |q 28437 |or
Wear your Blackrock Orc Disguise |havebuff 236455 |q 28437 |or
Wear your Blackrock Ogre Disguise |havebuff 236695 |q 28437 |or
step
talk General Thorg'izog##48133
turnin General Thorg'izog##28437 |goto 30.7,33.7
accept Trial by Magma##28438 |goto 30.7,33.7
step
talk Wyrtle Spreelthonket##48159
Tell him you'd like to challenge his magma lord to a fight
kill Magma Lord Kolob##48156 |q 28438/1 |goto 30.8,33.4
step
talk General Thorg'izog##48133
turnin Trial by Magma##28438 |goto 30.7,33.7
accept I Am the Law and I Am the Lash##28439 |goto 30.7,33.7
accept Abuse of Power##28440 |goto 30.7,33.7
step
Use your Blackrock Cudgel of Discipline on Smolderthorn Assassins, Firegut Flamespeakers, and Blackrock Soldiers |use Blackrock Cudgel of Discipline##63390
|tip If they discover you are wearing a mask, spam use the Blackrock Cudgel of Discipline on them to kill them.
Cudgel 20 Blackrock Minions |q 28439/1 |goto 33.6,36.3
Use your Blackrock Cudgel of Discipline repeatedly on Blackrock Sergeants |use Blackrock Cudgel of Discipline##63390
|tip Spam use the Blackrock Cudgel of Discipline, so you kill them quickly.
kill 5 Blackrock Sergeant##48201+ |q 28440/1 |goto 33.6,36.3
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Abuse of Power##28440
accept Enough Damage For One Day##28441
step
talk General Thorg'izog##48133
turnin I Am the Law and I Am the Lash##28439 |goto 30.7,33.7
step
talk Eitrigg##48568
turnin Enough Damage For One Day##28441 |goto 44.5,44.4
accept Flame Crest##28442 |goto 44.5,44.4
step
talk Kibler##10260
turnin Flame Crest##28442 |goto 54.9,22.5
accept Not Fireflies, Flameflies##28491 |goto 54.9,22.5
step
clicknpc Flamefly##48671+
collect 7 Flamefly##64409 |q 28491/1 |goto 54.9,31.4
step
talk Kibler##10260
turnin Not Fireflies, Flameflies##28491 |goto 54.9,22.5
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
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are an Undead.
confirm always
step
Proceeding to Pre Quests. |next |only if default
Click here Aspirant Rank Daily quests. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here for |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here if you are already at the rank of Champion. |next "buy" |confirm
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown,69.7,22.9
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto 76.3,24.4
accept Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13829 |goto 75.6,23.7
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto 72.5,19.3
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto 72.7,18.9
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto 73.2,19.2
step
Target a Ranged Target from a distance
|tip Use Shield-Breaker ability on Ranged Target to bring it's shields down
|tip Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto 73.1,19.0
step
Target a Charge Target from a distance
|tip Use Shield-Breaker ability until you notice the targets Defend is gone
|tip Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto 72.9,18.8
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13829/2 |goto 72.6,19.7
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
label "buy"
talk Deathstalker Visceri##33373
accept Valiant Of Undercity##13710 |goto Icecrown,76.5,24.2
turnin Valiant Of Undercity##13710 |goto Icecrown,76.5,24.2
accept The Valiant's Charge##13721 |goto Icecrown,76.5,24.2
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13778 |goto 76.5,24.2 |or
accept A Worthy Weapon##13779 |goto 76.5,24.2 |or
accept The Edge Of Winter##13780 |goto 76.5,24.2 |or
step
talk Sarah Chalke##33541
accept A Valiant's Field Training##13781 |goto 76.6,24.1
step
talk Handler Dretch##33547
accept The Grand Melee##13782 |goto 76.5,24.3
accept At The Enemy's Gates##13860 |goto 76.5,24.3
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you're glad to help
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13779 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord,42.2,19.7
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13860 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13860/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13860/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13860/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13781/1 |goto 44.3,54.2
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.6,23.9
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.3,26.0
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13778 |goto 76.5,24.2
turnin A Worthy Weapon##13779 |goto 76.5,24.2
turnin The Edge Of Winter##13780 |goto 76.5,24.2
step
talk Sarah Chalke##33541
turnin A Valiant's Field Training##13781 |goto 76.6,24.1
step
talk Handler Dretch##33547
turnin The Grand Melee##13782 |goto 76.5,24.3
turnin At The Enemy's Gates##13860 |goto 76.5,24.3
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13721/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Deathstalker Visceri##33373
turnin The Valiant's Charge##13721 |goto 76.5,24.2
accept The Valiant's Challenge##13729 |goto 76.5,24.2
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.1,22.4
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13729/1 |goto 68.6,21.0
step
talk Deathstalker Visceri##33373
turnin The Valiant's Challenge##13729 |goto 76.5,24.2
step
Become a Champion of Undercity |achieve 2787
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Eliza Killian##33555
buy 1 Tirisfal Batling##44971 |goto Icecrown,76.4,24.0
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
talk William Saldean##33996
buy 1 Special Chicken Feed##11109 |goto Tirisfal Glades 61.2,52.0
step
Perform the "Chicken" emote on a Chicken: |script ZGV:DoEmote("Chicken")
|tip Do this until the Chicken gives you a quest
talk Chicken##620
accept CLUCK!##3861 |goto 38.0,51.4
step
talk Chicken##620
turnin CLUCK!##3861
step
Click on the Chicken Egg on the ground to loot your new pet
collect 1 Chicken Egg##11110
step
learnpet Westfall Chicken##30379 |use Chicken Egg##11110
|tip Yes... the Tirisfal Glades chicken gives you a Westfall Chicken!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: White Moth.",
model={19999},
pet=141,
},[[
step
#include "auctioneer"
buy 1 White Moth Egg##29904
|tip This pet must be bought with an Alliance character or through the Auction House
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
#include "auctioneer"
buy 1 Yellow Moth Egg##29903
|tip This pet must be bought with an Alliance character or through the Auction House
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
This pet is only available to Alliance Characters.
learnpet Argent Squire##33238
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Gruntling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Argent Gruntling.",
model={28948},
pet=216,
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(13838)
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown,69.7,22.9
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto 76.3,24.4
accept Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13829 |goto 75.6,23.7
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto 72.5,19.3
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto 72.7,18.9
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto 73.2,19.2
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto 73.1,19.0
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto 72.9,18.8
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13829/2 |goto 72.6,19.7
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
label "dailies"
collect 1 Argent Gruntling##45022
step
learnpet Argent Gruntling##33239 |use Argent Gruntling##45022
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Oracle Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Curious Oracle Hatchling.",
model={25173},
pet=225,
},[[
step
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
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
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
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
These pets are only availiable during the _Winter Veil_ Holiday
|tip Receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Orgrimmar
use Gaily Wrapped Present##21310
collect 1 Green Helper Box##21301
step
learnpet Father Winter's Helper##15698 |use Green Helper Box##21301
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Horde)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Herald.",
model={37196},
pet=283,
},[[
step
Your guild needs have the achievement "Profit Sharing"
|tip Loot 100,000 gold from creatures |achieve 5201
step
talk Goram##46572
buy 1 Guild Herald##65364 |goto Orgrimmar,48.38,75.79
step
learnpet Guild Herald##49590 |use Guild Herald##65364
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Alliance)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Herald.",
model={37196},
pet=282,
},[[
step
This pet model is only available to Alliance Characters.
learnpet Guild Herald##49587
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Horde)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Page.",
model={37199},
pet=281,
},[[
step
Your guild needs have the achievement "Alliance Slayer"
|tip Complete the Slayer guild achievements |achieve 5179
step
talk Goram##46572
buy 1 Guild Page##65362 |goto Orgrimmar,48.38,75.79
step
learnpet Guild Page##49588 |use Guild Page##65362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Alliance)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Guild Page.",
model={37200},
pet=280,
},[[
step
This pet model is only available to Alliance Characters.
learnpet Guild Page##49586
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Horde)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Moonkin Hatchling.",
model={37527},
pet=298,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Moonkin Egg##68384
Open the Moonkin Egg |use Moonkin Egg##68384
collect Moonkin Hatchling##68619
step
learnpet Moonkin Hatchling##51649 |use Moonkin Hatchling##68619
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Alliance)",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Moonkin Hatchling.",
model={37526},
pet=296,
},[[
step
This pet model is only available to Alliance characters.
learnpet Moonkin Hatchling##51601
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Peddlefeet",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Peddlefeet.",
model={15992},
pet=122,
},[[
step
This pet is sold by Lovely Merchants during the Love is in the Air Holiday
|tip The merchants are in the captial cities
To earn tokens, click here. |next "Zygor's Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
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
|tip Receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Orgrimmar.
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
These pets are only availiable during the Winter Veil Holiday
|tip Receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Orgrimmar
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
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.
|tip You cannot complete this section if you are a Blood Elf.
confirm always
step
Proceeding to Pre Quests. |next |only if default
Click here Aspirant Rank Daily quests. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here for Valiant Rank Dailies |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here if you are already at the rank of Champion. |next "buy" |confirm
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown,69.7,22.9
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto 76.3,24.4
accept Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13829 |goto 75.6,23.7
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto 72.5,19.3
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto 72.7,18.9
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto 73.2,19.2
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto 73.1,19.0
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto 72.9,18.8
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13829/2 |goto 72.6,19.7
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
label "buy"
talk Eressea Dawnsinger##33379
accept Valiant Of Silvermoon##13711 |goto Icecrown,76.5,23.9
turnin Valiant Of Silvermoon##13711 |goto Icecrown,76.5,23.9
accept The Valiant's Charge##13722 |goto Icecrown,76.5,23.9
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13783 |goto 76.5,23.9 |or
accept A Worthy Weapon##13784 |goto 76.5,23.9 |or
accept The Edge Of Winter##13785 |goto 76.5,23.9 |or
step
talk Kethiel Sunlance##33538
accept A Valiant's Field Training##13786 |goto 76.4,23.8
step
talk Aneera Thuron##33548
accept The Grand Melee##13787 |goto 76.5,23.9
accept At The Enemy's Gates##13859 |goto 76.5,23.9
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13784 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord,42.2,19.7
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13859 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13859/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13859/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13859/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13786/1 |goto 44.3,54.2
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.5,24.1
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.3,26.0
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13783 |goto 76.5,23.9
turnin A Worthy Weapon##13784 |goto 76.5,23.9
turnin The Edge Of Winter##13785 |goto 76.5,23.9
step
talk Kethiel Sunlance##33538
turnin A Valiant's Field Training##13786 |goto 76.4,23.8
step
talk Aneera Thuron##33548
turnin The Grand Melee##13787 |goto 76.5,23.9
turnin At The Enemy's Gates##13859 |goto 76.5,23.9
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13722/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Charge##13722 |goto 76.5,23.9
accept The Valiant's Challenge##13731 |goto 76.5,23.9
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.2,22.4
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13731/1 |goto 68.6,21.0
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Challenge##13731 |goto 76.5,23.9
step
Become a Champion of Silvermoon City |achieve 2785
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Trellis Morningsun##33557
buy 1 Enchanted Broom##44982 |goto Icecrown,76.2,23.8
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
Skipping to the next step |next |only if skill("Enchanting")<525
talk Kithas##3346 |only if skill("Enchanting")>=525
buy 1 Formula: Enchanted Lantern##67308 |goto Orgrimmar,53.2,48.8 |only if skill("Enchanting")>=525
Click here if you do not wish to make this pet yourself |confirm |only if skill("Enchanting")>=525
step
You can either _buy_ this _pet_ from the _Auction House_ or craft it:
collect 1 Enchanted Lantern##67274 |next "bought"
Click here to craft this pet |confirm
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
|tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(93841)==false
create Enchanted Lantern##93841,Enchanting,1 total |only if _G.IsSpellKnown(93841)==true
collect 1 Enchanted Lantern##67274
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
You may only get three of these pets per year from completing the quest lines Back to the Orphanage (Shattrath), Warden of the Horde, and Back to the Orphanage (Dalaran)
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
confirm
step
collect 1 Legs##69648 |tip Back to the Orphanage (Shattrath)
step
learnpet Legs##53048 |use Legs##69648 |tip Back to the Orphanage (Shattrath)
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
#include "auctioneer"
buy 1 Magic Lamp##67275
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Magic Lamp##50545 |use Magic Lamp##67275
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shimmering Wyrmling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Shimmering Wyrmling.",
model={70232},
pet=229,
},[[
step
Use the Icecrown Dailies section of this guide to complete the Argent Tournament Grounds and The Sunreavers pre-quest_ and dailies
Exalted with The Sunreavers |condition rep("The Sunreavers")>=Exalted
Click here for The Pre Quests. |next |only if not completedq(13838) |confirm
|next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
|next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"] and completedq(13678)
|next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |confirm |only DeathKnight |only if ZGV.guidesets["DailiesHCATA"] and completedq(13795)
|next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |only if not DeathKnight |only if ZGV.guidesets["DailiesHCATA"] and completedq(13794)
Click here if you have completed the Pre Quests. |next "buy" |confirm
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown,69.7,22.9
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto 76.3,24.4
accept Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13829 |goto 75.6,23.7
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto 72.5,19.3
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto 72.7,18.9
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto 73.2,19.2
step
Target a Ranged Target from a distance
|tip Use Shield-Breaker ability on Ranged Target to bring it's shields down
|tip Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto 73.1,19.0
step
Target a Charge Target from a distance
|tip Use Shield-Breaker ability until you notice the targets Defend is gone
|tip Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto 72.9,18.8
step
Target a Melee Target
|tip If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
|tip Use your Thrust ability to attack the target 5 times |q 13829/2 |goto 72.6,19.7
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
label "buy"
earn 50 Champion's Seal##241 |goto Icecrown,76.2,24.0
talk Vasarin Redmorn##34772
buy 1 Shimmering Wyrmling##46821 |goto Icecrown,76.2,24.0
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
If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
For the Shattrath Daily set, click here. |next "Zygor's Events Guides\\Children's Week (April 27th - May 4th)\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10967 |goto Shattrath City 74.9,47.9
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
talk Belloc Brightblade##47571 |goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
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
accept You're a Mean One...##6983 |goto Hillsbrad Foothills,42.3,41.1
step
kill The Abominable Greench##13602
|tip This will require a group to kill, but you do not have to be in a party.
Free Metzen the Reindeer |q 6983/1 |goto Hillsbrad Foothills,43.6,39.0
collect Stolen Treats##17662 |q 6983/2 |goto Hillsbrad Foothills,43.6,39.0
|tip You can pick this up if someone has killed The Abominable Grinch recently.
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar,52.6,77.4
accept A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar,52.6,77.4
step
talk Great-father Winter##13445
turnin A Smokywood Pastures' Thank You!##6984 |goto 49.6,78.0
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
_Click here_ to farm for this pet |confirm
step
You can either _buy_ these from the _Auction House_ or _farm_ for them:
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
collect 2 Jasper##52182 |tip These can be very hard to come by.
collect 8 Volatile Air##52328 |tip These can be very hard to come by.
Click here to continue by just buying the Jasper and/or Volatile Air.|confirm
step
create Obsidium Bar##54849,Mining,17 total |goto Orgrimmar/1 44.9,77.9
confirm
step
create Handful of Obsidium Bolts##60216,Engineering,2 total
step
talk Auctioneer Ralinza##44867
buy 2 Jasper##52182 |goto 53.9,73.1 |or 2
buy 8 Volatile Air##52328 |goto 53.9,73.1 |or 2
buy 8 Electrified Ether##67749 |goto 53.9,73.1 |or 2 |next "aa"
|next |only if default
step
create Electrified Ether##94748,Engineering,4 total
step
label "aa"
Have an Engineer create this pet for you
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
|tip This is a very difficult schematic to obtain, but it is doable  |next "a" |only if skill("Engineering")>265 |next
step
You will have to go to _Blackwing Lair_ and farm _Nefarian_ every week
|tip He has a .8% chance to drop this item so you may be farming for a while |only if skill("Engineering")>265
kill Nefarian##11583 |only if skill("Engineering")>265
collect 1 Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
use Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
step
label "a"
You can either buy this from the Auction House or farm for it:
collect 1 Lifelike Mechanical Toad##15996 |next "bought"
Click here to _farm_ for this _pet_ |confirm
step
You can either _buy_ these items from the _Auction House_ or _farm_ for them:
collect 1 Living Essence##12803
collect 4 Thorium Widget##15994
collect 1 Gold Power Core##10558
collect 1 Rugged Leather##8170
Click here to farm your own materials. |confirm
|next "b"
step
map Felwood
path	60.4,21.9	55.7,18.6	44.5,16.2
path	40.5,26.6	39.6,33.7	37.9,43.3
path	45.6,46.0	47.2,41.3	51.9,34.3
path	56.8,28.9
Follow the provided path, mining _Gold_ ore and _Thorium_ ore.
collect 1 Gold Ore##2776
collect 12 Thorium Ore##10620
step
talk Auctioneer Ralinza##44867
buy 4 Runecloth##14047 |goto Orgrimmar/1 53.9,73.1
step
label "b"
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
description="This guide will walk you through obtaining the Mechanical pet: Lil' Smoky.",
model={8910},
pet=86,
},[[
step
Skipping to the next step |next "lazy" |only if skill("Engineering")<205
Click here if you would like to farm the pattern. |confirm |only if skill("Engineering")>=205
Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=205
step
kill Peacekeeper Security Suit##6230+,Arcane Nullifier X-21##6232+,Crowd Pummeler 9-60##6229+
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
Mine inside of the cave here.
collect 6 Copper Ore##2770 |goto Durotar 54.5,8.7
step
map Desolace
path	79.2,15.2	79.2,22.0	77.5,34.8
path	74.5,44.2	73.7,57.0	68.9,63.4
path	67.5,58.0	65.5,49.6	63.9,41.2
path	67.6,36.5	69.5,27.8
collect 1 Gold Ore##2776
collect 2 Iron Ore##2772
step
map Felwood
path	48.1,92.8	44.4,88.5	40.6,84.2
path	40.3,79.4	43.8,81.5	46.1,88.4
Follow the path provided and collect _Mithril Ore_.
collect 2 Mithril Ore##3858
step
map Winterspring
path	22.6,58.2	22.3,62.4	26.6,57.6
path	32.7,57.6	31.5,53.5	29.1,52.2
path	27.3,48.0	23.5,46.1	23.6,50.0
Follow the provided path, mining _Truesiler Ore_.
collect 1 Truesilver Ore##7911
step
create Truesilver Bar##10098,Mining,1 total |goto Orgrimmar/1 44.9,77.8
step
create Gold Bar##3308,Mining,1 total
step
create Mithril Bar##10097,Mining,2 total
step
create Copper Bar##2657,Mining,6 total
step
talk Auctioneer Ralinza##44867
buy 1 Core of Earth##7075 |goto 53.9,73.1
buy 2 Essence of Fire##7078 |goto 53.9,73.1
step
label "makeit"
Have an Engineer create this pet for you
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
You can either create this battle pet, or purchase it from an Auction House. You must be a level 575 Engineer to create this pet.
talk Roxxik##11017
learn Mechanical Pandaren Dragonling##127135 |goto Orgrimmar/1 56.8,56.5
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
create Ghost Iron Bar##102165,Mining,4 total |goto Vale of Eternal Blossoms/3 25.8,40.6
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
To get this recipe you can fish in Orgrimmar, Stormwind City, Elwynn Forest, Ironforge, Durotar, Northern Barrens, and Wailing Caverns, or you can kill any mob in the world under level 16 |only if skill("Engineering")>=75
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
collect 2 Copper Ore##2770 |goto Durotar 54.5,8.7
collect 2 Malachite##774 |goto Durotar 54.5,8.7
step
create Handful of Copper Bolts##3922,Engineering,1 total |goto Orgrimmar/1 44.9,77.9
step
create Copper Bar##2657,Mining,1 total
step
label "make"
Have an Engineer make this pet for you
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
#include "auctioneer"
buy 1 Mechanopeep##45002
|tip This pet must be bought with an Alliance character or through the Auction House
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
create Obsidium Bar##84038,Mining,18 total |goto Orgrimmar/1 44.9,78.0
step
create Handful of Obsidium Bolts##84403,Engineering,4 total
step
create Electrified Ether##94748,Engineering,4 total
step
Have an Engineer create this pet for you
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
Kill Mekgineer Thermaplugg |goto Gnomeregan,31.2,31.0 |only if skill("Engineering")>=205
collect 1 Schematic: Pet Bombling##11828 |n |only if skill("Engineering")>=205
learn Pet Bombling##15628 |use Schematic: Pet Bombling##11828 |only if skill("Engineering")>=205
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
map Felwood
path	48.1,92.8	44.4,88.5	40.6,84.2
path	40.3,79.4	43.8,81.5	46.1,88.4
Follow the path provided and collect _Mithril Ore_.
collect 6 Mithril Ore##3858
step
Mine inside of the cave here.
collect 6 Copper Ore##2770 |goto Durotar 54.5,8.7
step
map Desolace
path	79.2,15.2	79.2,22.0	77.5,34.8
path	74.5,44.2	73.7,57.0	68.9,63.4
path	67.5,58.0	65.5,49.6	63.9,41.2
path	67.6,36.5	69.5,27.8
Follow the provided path to collect _Iron Ore, Heavy Stones and Silver Ore_.
collect 3 Iron Ore##2772
collect 3 Heavy Stone##2838
collect 1 Silver Ore##2775
step
create Mithril Bar##10097,Mining,6 total |goto Orgrimmar/1 44.9,78.0
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
talk Belloc Brightblade##47571 |goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Kalimdor_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
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
#include "Hallow's_End_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fossilized Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Fossilized Hatchling.",
model={34413},
pet=266,
},[[
step
This pet is a rare Archaeology "Fossil" solve
talk Belloc Brightblade##47571 |goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
confirm |only if default
step
Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
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
talk Innkeeper Gryshka##6929
buy Ice Cold Milk##1179 |goto Orgrimmar/1 53.5,78.8
step
talk Suja##46708
buy Simple Flour##30817 |goto Orgrimmar/1 56.5,61.1
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
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Troll.
confirm always
step
Proceeding to Pre Quests. |next |only if default
Click here Aspirant Rank Daily quests. |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here for |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click here if you are already at the rank of Champion. |next "buy" |confirm
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown,69.7,22.9
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto 76.3,24.4
accept Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle|q 13829 |goto 75.6,23.7
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto 72.5,19.3
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto 72.7,18.9
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto 73.2,19.2
step
Target a Ranged Target from a distance
|tip Use Shield-Breaker ability on Ranged Target to bring it's shields down
|tip Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto 73.1,19.0
step
Target a Charge Target from a distance
|tip Use Shield-Breaker ability until you notice the targets Defend is gone
|tip Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto 72.9,18.8
step
Target a Melee Target
|tip If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
|tip Use your Thrust ability to attack the target 5 times |q 13829/2 |goto 72.6,19.7
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto 76.3,24.4
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto 76.3,24.4
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto 76.2,24.4
step
label "buy"
talk Zul'tore##33372
accept Valiant Of Sen'jin##13708 |goto Icecrown,76.0,24.5
turnin Valiant Of Sen'jin##13708 |goto Icecrown,76.0,24.5
accept The Valiant's Charge##13719 |goto Icecrown,76.0,24.5
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13768 |goto 76.0,24.5 |or
accept A Worthy Weapon##13769 |goto 76.0,24.5 |or
accept The Edge Of Winter##13770 |goto 76.0,24.5 |or
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto 76.0,24.6
step
talk Gahju##33545
accept The Grand Melee##13772 |goto 75.9,24.4
accept At The Enemy's Gates##13857 |goto 75.9,24.4
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13769 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord,42.2,19.7
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13857 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13857/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13857/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13857/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857 |goto 49.1,71.4
step
kill 10 Converted Hero##32255 |q 13771/1 |goto 44.3,54.2
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.6,23.8
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.3,26.0
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13768 |goto 76.0,24.5
turnin A Worthy Weapon##13769 |goto 76.0,24.5
turnin The Edge Of Winter##13770 |goto 76.0,24.5
step
talk Shadow Hunter Mezil-kree##33540
turnin A Valiant's Field Training##13771 |goto 76.0,24.6
step
talk Gahju##33545
turnin The Grand Melee##13772 |goto 75.9,24.4
turnin At The Enemy's Gates##13857 |goto 75.9,24.4
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13719/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Zul'tore##33372
turnin The Valiant's Charge##13719 |goto 76.0,24.5
accept The Valiant's Challenge##13727 |goto 76.0,24.5
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.0,22.5
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13727/1 |goto 68.6,21.0
step
talk Zul'tore##33372
turnin The Valiant's Challenge##13727 |goto 76.0,24.5
step
Become a Champion of Sen'jin |achieve 2784
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Samamba##33554
buy 1 Sen'jin Fetish##45606 |goto Icecrown,76.0,24.4
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
This pet is a rare Archaeology "Troll" solve
talk Belloc Brightblade##47571 |goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Troll"_ tab called _"Voodoo Figurine"_. Solve this Archaeology puzzle
collect 1 Voodoo Figurine##69824
step
learnpet Voodoo Figurine##53232 |use Voodoo Figurine##69824
]])
