local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Classic Dailies\\Stormwind City\\Main City Cooking Dailies",{
author="support@zygorguides.com",
description="Walks you through completing the Cooking daily quests in Stormwind, Ironforge and Darnassus. You must be at least level 10 to complete the quests in this guide.",
},[[
step
label "menu"
Click here to use the _Stormwind_ daily guide |confirm |next "sw_dailies"
_
Click here to use the _Ironforge_ daily guide |confirm |next "if_dailies"
_
Click here to use the _Darnassus_ daily guide |confirm |next "darn_dailies"
step
label "sw_dailies"
Proceeding to proper section |next
step
#include "SW_Cooking_Dailies"
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
step
label "if_dailies"
Proceeding to proper section next |next
step
#include "IF_Cooking_Dailies"
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
step
label "darn_dailies"
Proceeding to proper section |next
step
#include "Darn_Cooking_Dailies"
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Classic Dailies\\Stormwind City\\Stormwind City Fishing Dailies",{
author="support@zygorguides.com",
description="Walks you through completing the Fishing daily quests in Stormwind City. You must be at least level 10 to complete the quests in this guide.",
},[[
step
talk Catherine Leland##5494
You will only be able to complete 1 of the following quests per day
accept Big Gulp##26488 |goto Stormwind City 55.0,69.7 |or
accept Diggin' For Worms##26420 |goto Stormwind City 55.0,69.7 |or
accept Hitting a Walleye##26414 |goto Stormwind City 55.0,69.7 |or
accept Rock Lobster##26442 |goto Stormwind City 55.0,69.7 |or
accept Thunder Falls##26536 |goto Stormwind City 55.0,69.7 |or
step
Fish in the moat in this spot
collect Royal Monkfish##58856 |n
Click the Royal Monkfish in your bags |use Royal Monkfish##58856
collect Precious Locket##58864 |q 26488/1 |goto 75.4,84.0
|tip You may not always get the item inside the first Royal Monkfish, so you'll need to fish more of them.
step
Click a Worm Mound
|tip They look like tiny gray spots on the ground, almost invisible. Look for sparkles above the ground to find them more easily.
collect 1 Overgrown Earthworm##58788 |q 26420 |goto 58.6,11.5 |n
Use your Overgrown Earthworm |use Overgrown Earthworm##58788
Fish in the lake in this spot
collect Crystal Bass##58787 |q 26420/1 |goto 58.6,11.5
step
Fish in the lake in this spot
collect 8 Hardened Walleye##58503 |q 26414/1 |goto 48.6,39.1
step
Click Stormwind Lobster Traps
|tip They look like gray metal cages on the ground underwater around this area under the Stormwind Harbor docks.
collect 6 Rock Lobster##58809 |q 26442/1 |goto 24.1,49.7
step
Fish in the lake in this spot
collect 4 Violet Perch##58899 |q 26536/1 |goto Elwynn Forest 25.7,59.3
step
talk Catherine Leland##5494
You will only be able to complete 1 of the following quests per day
turnin Big Gulp##26488 |goto Stormwind City 55.0,69.7
turnin Diggin' For Worms##26420 |goto Stormwind City 55.0,69.7
turnin Hitting a Walleye##26414 |goto Stormwind City 55.0,69.7
turnin Rock Lobster##26442 |goto Stormwind City 55.0,69.7
turnin Thunder Falls##26536 |goto Stormwind City 55.0,69.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Classic Dailies\\Stormwind City\\Stormwind City Jewelcrafting Dailies",{
author="support@zygorguides.com",
description="Walks you through completing the Jewelcrafting daily quests in Stormwind City.",
},[[
step
talk Isabel Jones##50480
You will only be able to complete 1 of the following quests per day
accept A Present for Lila##25154 |goto Stormwind City 63.8,61.5 |or
accept Elemental Goo##25156 |goto Stormwind City 63.8,61.5 |or
|tip This quest requires you to be at least level 80.
accept Nibbler! No!##25105 |goto Stormwind City 63.8,61.5 |or
accept Ogrezonians in the Mood##25155 |goto Stormwind City 63.8,61.5 |or
accept The Latest Fashion!##25157 |goto Stormwind City 63.8,61.5 |or
step
Buy 3 Nightstones from the Stormwind City Auction House:
collect 3 Nightstone##52180 |n
|tip You can also try to mine these from any vein type in level 80-85 zones.
Use your Jewelcrafting skill to cut the Nightstones
Cut 3 Timeless Nightstones |q 25154/1
collect 3 Timeless Nightstone##52098 |q 25154/2
If you are unable to cut Timeless Nightstones, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
Buy 3 Zephyrite from the Stormwind City Auction House:
collect 3 Zephyrite##52178 |n
|tip You can also try to mine these from any vein type in level 80-85 zones.
Use your Jewelcrafting skill to cut the Zephyrite
Cut 3 Solid Zephyrite |q 25105/1
collect 3 Solid Zephyrite##52086 |q 25105/2
If you are unable to cut Solid Zephyrite, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
Buy 3 Jasper from the Stormwind City Auction House:
collect 3 Jasper##52182 |n
|tip You can also try to mine these from any vein type in level 80-85 zones.
Use your Jewelcrafting skill to cut the Jasper
Cut 3 Jagged Jasper |q 25155/1
collect 3 Jagged Jasper##52121 |q 25155/2
If you are unable to cut Jagged Jasper, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
Anywhere in Stormwind City:
Use your Stardust No. 2 on any Humanoid |use Stardust No. 2##52507
|tip The Humanoids can be NPCs or players, it doesn't matter.
Perform 10 Tests of Stardust No. 2 |q 25157/1
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25156/1 |goto Mount Hyjal,64.7,22.5
|tip This quest requires you to be at least level 80.
step
talk Isabel Jones##50480
You will only be able to complete 1 of the following quests per day
turnin A Present for Lila##25154 |goto Stormwind City 63.8,61.5
turnin Elemental Goo##25156 |goto Stormwind City 63.8,61.5
turnin Nibbler! No!##25105 |goto Stormwind City 63.8,61.5
turnin Ogrezonians in the Mood##25155 |goto Stormwind City 63.8,61.5
turnin The Latest Fashion!##25157 |goto Stormwind City 63.8,61.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral)", {
author="support@zygorguides.com",
startlevel=80,
description="This guide section will walk you through getting Friendly reputation with the Netherwing faction. You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section in order to be able to complete the quests in this guide section.",
},[[
step
label "hub"
Proceeding to Pre-Quests |next |only if default
Proceeding to Dailies |next "dailies" |only if completedq(11049)
step
Go to Shadowmoon Valley in Outland |goto Shadowmoon Valley |noway |c
step
talk Mordenai##22113
accept Kindness##10804 |goto Shadowmoon Valley,62.9,59.5
step
kill Rocknail Ripper##21478+, Rocknail Flayer##21477+
|tip The Rocknail Flayers will drop Rocknail Flayer Carcasses, instead of Rocknail Flayer Giblets.
collect Rocknail Flayer Giblets##31373 |n
Click the Rocknail Flayer Giblets in your bags, once you have 5 of them, to combine them into a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373
collect 8 Rocknail Flayer Carcass##31372 |q 10804 |goto 60.5,57.7
step
Use the Rocknail Flayer Carcasses in your bags |use Rocknail Flayer Carcass##31372
Feed 8 Netherwing Drakes |q 10804/1 |goto 60.5,57.7
step
talk Mordenai##22113
turnin Kindness##10804 |goto 62.9,59.5
accept Seek Out Neltharaku##10811 |goto 62.9,59.5
step
talk Neltharaku##21657
turnin Seek Out Neltharaku##10811 |goto 68.2,60.4
accept Neltharaku's Tale##10814 |goto 68.2,60.4
talk Neltharaku##21657
Listen to the Tale of Neltharaku |q 10814/1 |goto 68.2,60.4
turnin Neltharaku's Tale##10814 |goto 68.2,60.4
accept Infiltrating Dragonmaw Fortress##10836 |goto 68.2,60.4
step
kill Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
kill 15 Dragonmaw Orc |q 10836/1 |goto 66.4,60.0
step
talk Neltharaku##21657
turnin Infiltrating Dragonmaw Fortress##10836 |goto 68.2,60.4
accept To Netherwing Ledge!##10837 |goto 68.2,60.4
step
Click the Nethervine Crystals
|tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
collect 12 Nethervine Crystal##31504 |q 10837/1 |goto 64.1,80.7
step
talk Neltharaku##21657
turnin To Netherwing Ledge!##10837 |goto 68.2,60.4
accept The Force of Neltharaku##10854 |goto 68.2,60.4
step
Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal
|tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugator after you free them.
Free 5 Enslaved Netherwing Drakes |q 10854/1 |goto 67.4,59.3
step
talk Neltharaku##21657
turnin The Force of Neltharaku##10854 |goto 68.2,60.4
accept Karynaku##10858 |goto 68.2,60.4
step
talk Karynaku##22112
turnin Karynaku##10858 |goto 69.9,61.5
accept Zuluhed the Whacked##10866 |goto 69.9,61.5
step
kill Zuluhed the Whacked |q 10866/2 |goto 70.9,61.5
|tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
collect Zuluhed's Key##31664 |q 10866 |goto 70.9,61.5
step
Click Zuluhed's Chains
|tip It looks like a big metal ball and chain.
Free Karynaku |q 10866/1 |goto 69.8,61.3
step
talk Karynaku##22112
turnin Zuluhed the Whacked##10866 |goto 69.9,61.5
accept Ally of the Netherwing##10870 |goto 69.9,61.5
step
talk Mordenai##22113
turnin Ally of the Netherwing##10870 |goto 62.9,59.5
accept Blood Oath of the Netherwing##11012 |instant |goto 62.9,59.5
accept In Service of the Illidari##11013 |goto 62.9,59.5
step
talk Overlord Mor'ghor##23139
turnin In Service of the Illidari##11013 |goto 66.2,85.7
accept Enter the Taskmaster##11014 |goto 66.2,85.7
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Enter the Taskmaster##11014 |goto 66.1,86.4
step
talk Yarzill the Merc##23141
accept Your Friend on the Inside##11019 |instant |goto 66.0,86.5
accept The Great Netherwing Egg Hunt##11049 |goto 66.0,86.5
step
Click a Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them. They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
collect 1 Netherwing Egg##32506 |q 11049/1 |goto 68.5,61.2
step
talk Yarzill the Merc##23141
turnin The Great Netherwing Egg Hunt##11049 |goto 66.0,86.5
step
label "dailies"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley,66.0,86.5
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley,66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto 66.1,86.4
accept Nethermine Flayer Hide##11016 |goto 66.1,86.4 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350. |or
accept Nethercite Ore##11018 |goto 66.1,86.4 |only if skill ("Mining") >= 350
|tip This quest is only available if you have your Mining skill to at least 350. |or
accept Netherdust Pollen##11017 |goto 66.1,86.4 |only if skill ("Herbalism") >= 350
|tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto 72.1,75.2
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto 60.4,45.2
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto 73.6,80.0
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto 62.6,86.2
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto 70.0,91.4
step
The entrance to the mine starts here |goto Shadowmoon Valley 65.3,90.2 < 10
step
kill Nethermine Flayer##23169+, Black Blood of Draenor##23286+
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto 70.8,84.4
Skin Nethermine Flayers |only if skill ("Skinning") >= 350
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto 70.8,84.4 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350.
step
Leave the mine |goto Shadowmoon Valley 65.3,90.2 < 10
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto 66.0,86.5
turnin The Not-So-Friendly Skies##11035 |goto 66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto 66.1,86.4
turnin Nethermine Flayer Hide##11016 |goto 66.1,86.4
|tip This quest is only available if you have your Skinning skill to at least 350.
turnin Nethercite Ore##11018 |goto 66.1,86.4
|tip This quest is only available if you have your Mining skill to at least 350.
turnin Netherdust Pollen##11017 |goto 66.1,86.4
|tip This quest is only available if you have your Herbalism skill to at least 350.
step
Repeat this process daily until you are Friendly with the Netherwing faction. Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg
You have reached the end of the dailies guide. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly)", {
author="support@zygorguides.com",
startlevel=80,
description="This guide section will walk you through getting Honored reputation with the Netherwing faction. You must have completed the Netherwing Reputation (Friendly) - Pre-Quests guide section in order to be able to complete the quests in this guide section.",
},[[
step
label "hub"
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(11054)
step
talk Taskmaster Varkule Dragonbreath##23140
accept Rise, Overseer!##11053 |goto Shadowmoon Valley,66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Rise, Overseer!##11053 |goto 66.2,85.7
step
talk Taskmaster Varkule Dragonbreath##23140
accept The Netherwing Mines##11075 |goto 66.1,86.4
step
talk Chief Overseer Mudlump##23291
accept Overseeing and You: Making the Right Choices##11054 |goto 66.8,86.1
step
talk Mistress of the Mines##23149
turnin The Netherwing Mines##11075 |goto 65.4,90.2
step
Enter the cave |goto 65.32,89.86 < 5 |walk
talk Ronag the Slave Driver##23166
accept Crazed and Confused##11083 |goto 71.6,87.6
step
kill 1 Crazed Murkblood Foreman |q 11083/1 |goto 73.7,88.1
kill 5 Crazed Murkblood Miner |q 11083/2 |goto 73.7,88.1
step
talk Ronag the Slave Driver##23166
turnin Crazed and Confused##11083 |goto 71.6,87.6
step
kill Black Blood of Draenor##23286+
collect Sludge-covered Object##32724+ |n
Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
collect Murkblood Escape Plans##32726 |n
Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
accept The Great Murkblood Revolt##11081 |goto 64.8,85.6
step
Leave the mine |goto Shadowmoon Valley 65.3,90.2 < 10
step
talk Mistress of the Mines##23149
turnin The Great Murkblood Revolt##11081 |goto 65.4,90.2
accept Seeker of Truth##11082 |goto 65.4,90.2
step
Go inside the mine and follow the path
talk Murkblood Overseer##23309
Tell him you are here for him
Gather Murkblood Information |q 11082/1 |goto 73.0,82.2
collect Hand of the Overseer##32734 |q 11082/2 |goto 73.0,82.2
step
Leave the mine |goto Shadowmoon Valley 65.3,90.2 < 10
step
talk Mistress of the Mines##23149
turnin Seeker of Truth##11082 |goto 65.4,90.2
step
collect 10 Knothide Leather##21887 |q 11054/1
|tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
If you want to get the 10 Knothide Leather by skinning, kill the mobs around [60.4,45.2]
step
kill Tyrantus##20931
collect Hardened Hide of Tyrantus##32666 |q 11054/2 |goto Netherstorm,46.4,10.8
step
talk Chief Overseer Mudlump##23291
turnin Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley,66.8,86.1
step
label "dailies"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley,66.0,86.5
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley,66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto 66.1,86.4
accept Nethermine Flayer Hide##11016 |goto 66.1,86.4 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350. |or
accept Nethercite Ore##11018 |goto 66.1,86.4 |only if skill ("Mining") >= 350
|tip This quest is only available if you have your Mining skill to at least 350. |or
accept Netherdust Pollen##11017 |goto 66.1,86.4 |only if skill ("Herbalism") >= 350
|tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
stickystart "disciplinepeons"
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto 72.1,75.2
step
label "disciplinepeons"
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto 73.6,80.0
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto 73.6,80.0
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto 60.4,45.2
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto 62.6,86.2
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto 70.0,91.4
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto 65.4,90.2
step
Go inside the mine to [65.1,87.5]
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto 66.9,84.0
step
kill 15 Nethermine Flayer |q 11077/1 |goto 71.5,83.9
kill 5 Nethermine Ravager |q 11077/2 |goto 71.5,83.9
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto 71.5,83.9
Skin Nethermine Flayers |only if skill ("Skinning") >= 350
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto 71.5,83.9 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350.
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto 65.1,87.5
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto 65.4,90.2
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto 66.0,86.5
turnin The Not-So-Friendly Skies##11035 |goto 66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto 66.1,86.4
turnin Nethermine Flayer Hide##11016 |goto 66.1,86.4
|tip This quest is only available if you have your Skinning skill to at least 350.
turnin Nethercite Ore##11018 |goto 66.1,86.4
|tip This quest is only available if you have your Mining skill to at least 350.
turnin Netherdust Pollen##11017 |goto 66.1,86.4
|tip This quest is only available if you have your Herbalism skill to at least 350.
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
step
Repeat this process daily until you are Honored with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg
You have reached the end of the dailies guide. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Netherdrake Mount Guide\\Netherwing Reputation (Honored)", {
author="support@zygorguides.com",
startlevel=80,
description="This guide section will walk you through getting Revered reputation with the Netherwing faction. You must have completed the Netherwing Reputation (Honored) - Pre-Quests guide section in order to be able to complete the quests in this guide section.",
},[[
step
label "hub"
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(11071)
step
talk Taskmaster Varkule Dragonbreath##23140
accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley,66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Stand Tall, Captain!##11084 |goto 66.2,85.7
step
talk Ja'y Nosliw##22433
accept Earning Your Wings...##11063 |instant |goto 65.9,87.2
step
talk Murg "Oldie" Muckjaw##23340
accept Dragonmaw Race: The Ballad of Oldie McOld##11064
Follow Murg "Oldie" Muckjaw as he flies
|tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
Defeat Murg "Oldie" Muckjaw |q 11064/1 |goto 65.2,85.7
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto 65.9,87.2
step
talk Trope the Filth-Belcher##23342
accept Dragonmaw Race: Trope the Filth-Belcher##11067
Follow Trope the Filth-Belcher as he flies
|tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
Defeat Trope the Filth-Belcher |q 11067/1 |goto 65.2,85.5
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Trope the Filth-Belcher##11067 |goto 65.9,87.2
step
talk Corlok the Vet##23344
accept Dragonmaw Race: Corlok the Vet##11068
Follow Corlok the Vet as he flies
|tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
Defeat Corlok the Vet |q 11068/1 |goto 65.2,85.2
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Corlok the Vet##11068 |goto 65.9,87.2
step
talk Wing Commander Ichman##13437
accept Dragonmaw Race: Wing Commander Ichman##11069
Follow Wing Commander Ichman as he flies
|tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
Defeat Wing Commander Ichman |q 11069/1 |goto 65.2,85.0
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Ichman##11069 |goto 65.9,87.2
step
talk Wing Commander Mulverick##13181
accept Dragonmaw Race: Wing Commander Mulverick##11070
Follow Wing Commander Mulverick as he flies
|tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
Defeat Wing Commander Mulverick |q 11070/1 |goto 65.2,84.9
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Mulverick##11070 |goto 65.9,87.2
step
talk Captain Skyshatter##23348
accept Dragonmaw Race: Captain Skyshatter##11071
Follow Captain Skyshatter as he flies
|tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
Defeat Captain Skyshatter |q 11071/1 |goto 65.5,85.3
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Captain Skyshatter##11071 |goto 65.9,87.2
step
label "dailies"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley,66.0,86.5
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley,66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto 66.1,86.4
accept Nethermine Flayer Hide##11016 |goto 66.1,86.4 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350. |or
accept Nethercite Ore##11018 |goto 66.1,86.4 |only if skill ("Mining") >= 350
|tip This quest is only available if you have your Mining skill to at least 350. |or
accept Netherdust Pollen##11017 |goto 66.1,86.4 |only if skill ("Herbalism") >= 350
|tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto 66.2,85.7
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto 60.4,45.2
stickystart "netherrelic"
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto 73.6,80.0
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto 73.6,80.0
step
label "netherrelic"
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto 72.1,75.2
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto 62.6,86.2
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto 70.0,91.4
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto 65.4,90.2
step
Go inside the mine to [65.1,87.5]
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto 66.9,84.0
step
kill 15 Nethermine Flayer |q 11077/1 |goto 71.5,83.9
kill 5 Nethermine Ravager |q 11077/2 |goto 71.5,83.9
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto 71.5,83.9
Skin Nethermine Flayers |only if skill ("Skinning") >= 350
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto 71.5,83.9 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350.
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto 65.1,87.5
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto 65.4,90.2
step
kill Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
kill 20 Deathshadow Agent |q 11086/1 |goto Nagrand,12.7,38.9
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley,66.0,86.5
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley,66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto 66.1,86.4
turnin Nethermine Flayer Hide##11016 |goto 66.1,86.4
|tip This quest is only available if you have your Skinning skill to at least 350.
turnin Nethercite Ore##11018 |goto 66.1,86.4
|tip This quest is only available if you have your Mining skill to at least 350.
turnin Netherdust Pollen##11017 |goto 66.1,86.4
|tip This quest is only available if you have your Herbalism skill to at least 350.
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086 |goto 66.2,85.7
step
Repeat this process daily until you are Revered with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg
You have reached the end of the dailies guide. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Netherdrake Mount Guide\\Netherwing Reputation (Revered)", {
author="support@zygorguides.com",
startlevel=80,
description="This guide section will walk you through getting Exalted reputation with the Netherwing faction. You must have completed the Netherwing Reputation (Revered) - Pre-Quests guide section in order to be able to complete the quests in this guide section.",
},[[
step
label "hub"
Proceeding to proper section |next |only if default
Proceeding to proper section |next |only if completedq(11100) or completedq(11095)
step
talk Taskmaster Varkule Dragonbreath##23140
accept Hail, Commander!##11092 |goto Shadowmoon Valley,66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Hail, Commander!##11092
accept Kill Them All!##11094 |goto 66.2,85.7 |only if rep ('The Scryers') >= Friendly
accept Kill Them All!##11099 |goto 66.2,85.7 |only if rep ('The Aldor') >= Friendly
step
kill Arvoar the Rapacious##23267+
|tip He looks like a big Flayer mob that walks in a circle in this spot.
collect Partially Digested Hand##32621 |n
Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
accept A Job Unfinished...##11041 |goto 74.5,86.3
stickystart "overmineflayer"
step
kill Barash the Den Mother |q 11041/2 |goto 70.2,84.3
|tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
label "overmineflayer"
kill 10 Overmine Flayer |q 11041/1 |goto 71.3,85.8
step
talk Overlord Mor'ghor##23139
turnin A Job Unfinished...##11041 |goto 66.2,85.7
step
talk Arcanist Thelis##21955
turnin Kill Them All!##11094 |goto 56.3,59.6
accept Commander Hobb##11095 |goto 56.3,59.6
only if rep ('The Scryers') >= Friendly
step
talk Commander Hobb##23434
turnin Commander Hobb##11095 |goto 56.5,58.7
only if rep ('The Scryers') >= Friendly
step
talk Anchorite Ceyla##21402
turnin Kill Them All!##11099 |goto 62.6,28.4
accept Commander Arcus##11100 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
talk Commander Arcus##23452
turnin Commander Arcus##11100 |goto 62.4,29.3
only if rep ('The Aldor') >= Friendly
step
label "dailies"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley,66.0,86.5
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley,66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto 66.1,86.4
accept Nethermine Flayer Hide##11016 |goto 66.1,86.4 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350. |or
accept Nethercite Ore##11018 |goto 66.1,86.4 |only if skill ("Mining") >= 350
|tip This quest is only available if you have your Mining skill to at least 350. |or
accept Netherdust Pollen##11017 |goto 66.1,86.4 |only if skill ("Herbalism") >= 350
|tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto 66.2,85.7
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto 72.1,75.2
step
talk Commander Hobb##23434
accept The Deadliest Trap Ever Laid##11097
Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
Protect Commander Hobb, he must survive
Defeat the Dragonmaw Forces |q 11097/1 |goto 56.5,58.7
only if rep ('The Scryers') >= Friendly
step
from Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto 60.4,45.2
step
talk Commander Arcus##23452
accept The Deadliest Trap Ever Laid##11101
Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
Protect Commander Arcus, he must survive
Defeat the Dragonmaw Forces |q 11101/1 |goto 62.4,29.3
only if rep ('The Aldor') >= Friendly
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto 73.6,80.0
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto 73.6,80.0
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
get 40 Netherdust Pollen |q 11017/1 |goto 62.6,86.2
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
get 40 Nethercite Ore |q 11018/1 |goto 70.0,91.4
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto 65.4,90.2
step
Go inside the mine to 65.1,87.5
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077
stickystart "netherhide"
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
get 15 Nethermine Cargo |q 11076/1 |goto 66.9,84.0
step
label "netherhide"
kill 15 Nethermine Flayer |q 11077/1 |goto 71.5,83.9
kill 5 Nethermine Ravager |q 11077/2 |goto 71.5,83.9
get 30 Netherwing Crystal |q 11015/1 |goto 71.5,83.9
Skin Nethermine Flayers |only if skill ("Skinning") >= 350
get 35 Nethermine Flayer Hide |q 11016/1 |goto 71.5,83.9 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350.
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto 65.1,87.5
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto 65.4,90.2
step
kill Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
kill 20 Deathshadow Agent |q 11086/1 |goto Nagrand,12.7,38.9
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley,66.0,86.5
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley,66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto 66.1,86.4
turnin Nethermine Flayer Hide##11016 |goto 66.1,86.4
|tip This quest is only available if you have your Skinning skill to at least 350.
turnin Nethercite Ore##11018 |goto 66.1,86.4
|tip This quest is only available if you have your Mining skill to at least 350.
turnin Netherdust Pollen##11017 |goto 66.1,86.4
|tip This quest is only available if you have your Herbalism skill to at least 350.
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086
turnin The Deadliest Trap Ever Laid##11097 |goto 66.2,85.7 |only if rep ('The Scryers') >= Friendly
turnin The Deadliest Trap Ever Laid##11101 |goto 66.2,85.7 |only if rep ('The Aldor') >= Friendly
step
Repeat this process daily until you are Exalted with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg
You have reached the end of the dailies guide. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Netherdrake Mount Guide\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", {
author="support@zygorguides.com",
},[[
description This guide section will walk you through the final steps of getting your Netherdrake Mount,
description once you've earned Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
talk Taskmaster Varkule Dragonbreath##23140
accept Bow to the Highlord##11107 |goto Shadowmoon Valley,66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Bow to the Highlord##11107 |goto 66.2,85.7
accept Lord Illidan Stormrage##11108 |goto 66.2,85.7
Watch the cut scene
You will be taken to Shattrath City |goto Shattrath City 65.8,18.6 < 20 |noway |c
step
talk Barthamus##23433
turnin Lord Illidan Stormrage##11108 |goto Shattrath City,66.6,16.4
step
Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
accept Voranaku the Violet Netherwing Drake##11113 |goto 66.8,17.6 |instant |or
accept Zoya the Veridian Netherwing Drake##11114 |goto 66.8,17.6 |instant |or
accept Suraku the Azure Netherwing Drake##11112 |goto 66.8,17.6 |instant |or
accept Onyxien the Onyx Netherwing Drake##11111 |goto 66.8,17.6 |instant |or
accept Malfas the Purple Netherwing Drake##11110 |goto 66.8,17.6 |instant |or
accept Jorus the Cobalt Netherwing Drake##11109 |goto 66.8,17.6 |instant |or
step
Congratulations, you are now the proud owner of a Netherdrake Mount!  Enjoy!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Netherwing Egg Hunting - Optimized Path", {
author="support@zygorguides.com",
startlevel=80,
description="This guide section will walk you through an optimized path of collecting Netherwing Eggs, which you can turn in for 250 Netherwing rep each. You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.",
},[[
step
There can be an egg here |goto Shadowmoon Valley,69.4,63.6 < 5 |c
|tip At the top of the stairs inside this tower.
step
There can be an egg here |goto Shadowmoon Valley,70.1,62.0 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.4,60.7 < 5 |c
|tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,70.9,62.6 < 5 |c
|tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.3,62.6 < 5 |c
|tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.4,60.8 < 5 |c
|tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,70.0,60.3 < 5  |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,69.7,58.5 < 5 |c
|tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
There can be an egg here |goto Shadowmoon Valley,68.1,59.7 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,68.3,59.8 < 5 |c
|tip Sitting on the ground in this corner.
step
There can be an egg here |goto Shadowmoon Valley,68.5,61.2 < 5 |c
|tip Sitting on the ground in this stall inside the stable.
step
There can be an egg here |goto Shadowmoon Valley,67.2,61.3 < 5 |c
|tip Sitting in this wooden wagon.
step
There can be an egg here |goto Shadowmoon Valley,67.2,62.3 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,68.9,62.5 < 5 |c
|tip Sitting on the ground inside this half burned down hut.
step
There can be an egg here |goto Shadowmoon Valley,76.0,81.2 < 5 |c
|tip Sitting on the corner edge of this wooden landing dock.
step
There can be an egg here |goto Shadowmoon Valley,75.2,82.3 < 5 |c
|tip Sitting on the ground next to this big bunch of blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,73.7,82.3 < 5 |c
|tip Sitting on top of this small mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,73.0,84.0 < 5 |c
|tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,71.0,81.5 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,68.2,81.7 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,66.2,83.8 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.7,84.2 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
There can be an egg here |goto Shadowmoon Valley,63.3,81.5 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.4,76.5 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,63.2,75.6 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,62.2,74.2 < 5 |c
|tip Sitting on this small floating rock.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,61.7,73.3 < 5 |c
|tip Sitting on this big floating rock.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,63.0,71.6 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,61.3,70.7 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,60.6,73.4 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,59.3,74.1 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,60.0,76.7 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,59.6,78.3 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,61.2,77.3 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,62.2,77.8 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,63.3,81.5 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,63.0,83.7 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,63.5,84.8 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.5,84.9 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
talk Yarzill the Merc##23141
Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506 |goto 66.0,86.5
step
There can be an egg here |goto Shadowmoon Valley,64.0,86.1 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
There can be an egg here |goto Shadowmoon Valley,62.5,84.9 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,60.2,87.1 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,62.1,89.5 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,64.9,90.8 < 5 |c
|tip Sitting on the ground near this bunch of big blue crystals.
step
Go inside the mine
There can be an egg here |goto Shadowmoon Valley,64.8,87.2 < 5 |c
|tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
Jump down off the mine cart track here |goto Shadowmoon Valley,68.3,84.0 < 5 |c
step
There can be an egg here |goto Shadowmoon Valley,68.8,86.1 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
There can be an egg here |goto Shadowmoon Valley,72.3,87.3 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
There can be an egg here |goto Shadowmoon Valley,69.9,85.8 < 5 |c
|tip Go back to the mine cart track and follow the track on the right side.
step
There can be an egg here |goto Shadowmoon Valley,73.6,85.2 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,73.0,89.3 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,73.6,85.2 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,68.5,81.6 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,64.8,83.0 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.2,84.2 < 5 |c
step
Leave the cave |goto Shadowmoon Valley,65.3,90.2 < 5 |c
|tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
There can be an egg here |goto Shadowmoon Valley,65.5,94.2 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,68.0,94.9 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,69.6,91.8 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,70.9,89.2 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,71.4,86.6 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
There can be an egg here |goto Shadowmoon Valley,72.2,87.1 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,73.4,90.3 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,75.8,91.6 < 5 |c
|tip Sitting on this small floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.6,92.6 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.4,95.7 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.3,85.9 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,76.5,83.3 < 5 |c
|tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
There can be an egg here |goto Shadowmoon Valley,78.9,83.3 < 5 |c
|tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,78.1,81.2 < 5 |c
|tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,78.8,79.6 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
This is the end of the path.
Click here to go back to the beginning of the path. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Shattrath Cooking Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Cooking daily quests to earn Shattrath Cooking Awards",
},[[
#include "A_Shattrath_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Burning Crusade Dailies\\Shattered Sun Offensive\\Dailies", {
author="support@zygorguides.com",
description="This guide section will walk you through the Shattered Sun Offensive Daily Quests.",
},[[
step
talk Innkeeper Haelthol##19232
home Shattrath City |goto Shattrath City,56.3,81.5
only if rep ("The Scryers")>=Neutral
step
talk Minalei##19046
home Shattrath City |goto Shattrath City,28.2,49.4
only if rep ("The Aldor")>=Neutral
step
talk Exarch Nasuun##24932
accept Maintaining the Sunwell Portal##11514 |goto Shattrath City,49.1,42.5
step
talk Lord Torvos##25140
accept Sunfury Attack Plans##11877 |goto 62.8,36.0
step
talk Emissary Mordin##19202
accept Gaining the Advantage##11875 |goto 62.8,35.6
only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
step
talk Harbinger Haronem##19475
accept The Multiphase Survey##11880 |goto Shattrath City,61.7,52.1
step
Click the Shattrath Portal |goto Shattrath City 48.6,42.0 < 7
Port to the Isle of Quel'Danas |goto Isle of Quel'Danas |noway
step
talk Astromancer Darnarian##25133
accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas,47.5,35.4
step
talk Battlemage Arynna##25057
accept The Air Strikes Must Continue##11533 |goto 47.5,35.1
step
talk Harbinger Inuuro##25061
accept The Battle Must Go On##11537 |goto 47.6,35.1
step
talk Anchorite Ayuri##25112
accept Your Continued Support##11548 |goto 48.8,37.2
This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
turnin Your Continued Support##11548 |goto 48.8,37.2
step
talk Vindicator Kaalan##25108
accept Keeping the Enemy at Bay##11543|goto 50.6,39.0
step
talk Magister Ilastar##25069
accept Crush the Dawnblade##11540 |goto 49.3,40.4
step
talk Smith Hauthaa##25046
accept Don't Stop Now....##11536 |goto 50.6,40.8
accept Ata'mal Armaments##11544 |goto 50.6,40.8
step
talk Mar'nah##24975
accept Rediscovering Your Roots##11521 |goto 51.5,32.5
accept Open for Business##11546 |goto 51.5,32.5
step
talk Captain Valindria##25088
accept Disrupt the Greengill Coast##11541 |goto 53.8,34.3
step
talk Captain Theris Dawnhearth##24967
accept Arm the Wards!##11523 |goto 47.5,30.5
accept The Missing Magistrix##11526 |goto 47.5,30.5
step
talk Vindicator Xayann##24965
accept Further Conversions##11525 |goto 47.1,30.7
stickystart "bloodcrystal"
step
kill Wretched Fiend##24966+
collect 4 Mana Remnants##34338 |q 11523 |goto Isle of Quel'Danas,44.3,28.5
kill Erratic Sentry##24972+ |n
Use Attuned Crystal Cores on the Erratic Sentries corpse |use Attuned Crystal Cores##34368
goal 5 Converted Sentry Deployed |q 11525/1 |goto Isle of Quel'Danas,44.3,28.5
collect 5 Bloodberry##34502 |q 11546/1 |tip They can be found all around this area on the ground.
step
label "bloodcrystal"
kill 6 Dawnblade Summoner |q 11540/1 |goto Isle of Quel'Danas,42.1,35.7
kill 6 Dawnblade Blood Knight |q 11540/2 |goto Isle of Quel'Danas,42.1,35.7
kill 3 Dawnblade Marksman |q 11540/3 |goto Isle of Quel'Danas,42.1,35.7
Use your Astromancer's Crystal to sample the Bloodcrystal's density |use Astromancer's Crystal##34533
Bloodcrystal Reading Taken |q 11547/3 |goto Isle of Quel'Danas,42.1,35.7
step
Use the Mana Remnants to Energize the Crystal Ward |use Mana Remnants##34338
Energize a Crystal Ward |q 11523/1 |goto Isle of Quel'Danas,46.5,35.5
step
talk Ayren Cloudbreaker##25059
Tell him you Need to Intercept the Dawnblade Reinforcements.
Use your Flaming Oil to set fire to the ships in the water. |use Flaming Oil##34489
Sin'loren sails burned |q 11543/1 |goto 48.5,25.2
Bloodoath sails burned |q 11543/2 |goto 48.5,25.2
Dawnchaser sails burned |q 11543/3|goto 48.5,25.2
step
kill Dawnblade Reservist##25087+ |q 11543/4
You can find more at [Isle of Quel'Danas,51.1,9.7]
Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
step
talk Unrestrained Dragonhawk##25236 |goto Isle of Quel'Danas,52.4,17.4 < 10
Ride the dragonhawk to Sun's Reach |goto Isle of Quel'Danas,48.4,25.3 |noway|c
step
talk Ayren Cloudbreaker##25059
Tell him you've been ordered to undertake an airstrike
Use your Arcane Charges on mobs once you get to the Dead Scar |use Arcane Charges##34475
kill 2 Pit Overlord##25031+ |q 11533/1 |goto Isle of Quel'Danas,48.5,25.2
kill 3 Eredar Sorcerer##25033+ |q 11533/2 |goto Isle of Quel'Danas,48.5,25.2
kill 12 Wrath Enforcer##25030+ |q 11533/3 |goto Isle of Quel'Danas,48.5,25.2
step
kill Emissary of Hate##25003 |n
Use your Shattered Sun Banner on his corpse |use Shattered Sun Banner##34414
Impale the Emissary of Hate |q 11537/1 |goto Isle of Quel'Danas,48.5,43.7
kill 6 Burning Legion Demon |q 11537/2 |goto Isle of Quel'Danas,48.5,43.7
Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
Portal Reading Taken |q 11547/1 |goto Isle of Quel'Danas,48.5,43.7
step
Take this path back to they shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
step
kill Darkspine Myrmidon##25060+
collect Darkspine Chest Key##34477 |n
kill Darkspine Siren##25073+
collect Orb of Murloc Control##34483 |n
Use your Orbs of Murloc Control on Greengill Slaves along the shore |use Orb of Murloc Control##34483
Free 10 Greengill Slaves |q 11541/1 |goto Isle of Quel'Danas,64.1,49.9
Use your Darkspine Chest Keys on the Darkspine Ore Chest
collect 3 Darkspine Iron Ore##34479 |q 11536/1 |goto Isle of Quel'Danas,64.1,49.9
step
Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
Shrine Reading Taken |q 11547/2 |goto Isle of Quel'Danas,61.1,62.0
step
kill Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
collect 5 Ata'mal Armament##34500 |q 11544 |goto Shadowmoon Valley,68.5,37.5
step
kill Razorthorn Flayer##24920+
collect Razorthorn Flayer Gland##34255 |q 11521 |goto Terokkar Forest,59.7,10.3
Use your Razorthorn Flayer Gland on Razorthorn Ravagers |use Razorthorn Flayer Gland##34255
Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
collect 5 Razorthorn Root##34254 |q 11521/1 |goto Terokkar Forest,59.7,10.3
step
kill Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
Skin their corpses in order to collect the Nether Residue
collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand,58.8,75.1
only if skill("Skinning")>=300
step
Mine inside the cave and collect Nether Residue
collect 8 Nether Residue##35229 |q 11875/1 |goto 40.8,31.6
You can check [Nagrand,50.0,56.6] for more Mining Nodes
only if skill("Mining")>=300
step
Click the Multiphase Spectographic Goggles to wear them |use Multiphase Spectrographic Goggles##35233
Get the Multiphase Goggles buff |havebuff 135994 |goto Nagrand 38.3,65.3
tip You have to be in the Nagrand zone to correctly get the buff.
only if havequest(11880)
step
Fly around the Spirit Fields looking for Fiery Red Orbs on the ground
Use your Multiphase Spectrographic Goggles on the Orbs |use Multiphase Spectrographic Goggles##35233
goal 6 Multiphase Readings Taken |q 11880/1 |goto Nagrand,38.3,65.3
step
kill Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
collect 1 Bash'ir Phasing Device##34248 |q 11514 |goto Blade's Edge Mountains,54.0,18.1
Use the Bash'ir Phasing Device |use Bash'ir Phasing Device##34248
Collect 10 Smuggled Mana Cell |q 11514/1 |goto Blade's Edge Mountains,54.0,18.1
step
kill Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
collect Sunfury Attack Plans##35231 |q 11877/1 |goto Netherstorm,25.9,66.8
step
talk Magistrix Seyla##24937
accept Blood for Blood##11515 |goto Hellfire Peninsula,58.2,17.6
accept Blast the Gateway##11516 |goto Hellfire Peninsula,58.2,17.6
step
kill Wrath Herald##24919+
collect 4 Demonic Blood##34259
use the Sizzling Embers to summon a Living Flare |use Sizzling Embers##34253
kill Incandescent Fel Spark##22323+ |n
Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7]
Legion Gateway Destroyed |q 11516/1 |goto Hellfire Peninsula,66.4,20.1
step
Use your Fel Siphon on Felblood Initiates |use Fel Siphon##34257
kill 4 Emaciated Felblood##24918 |q 11515/1 |goto 59.9,21.0
step
talk Magistrix Seyla##24937
turnin Blast the Gateway##11516 |goto Hellfire Peninsula,58.2,17.6
turnin Blood for Blood##11515 |goto Hellfire Peninsula,58.2,17.6
step
talk Lord Torvos##25140
turnin Sunfury Attack Plans##11877 |goto Shattrath City,62.8,36.0
step
talk Emissary Mordin##19202
turnin Gaining the Advantage##11875 |goto 62.8,35.6
step
talk Harbinger Haronem##19475
turnin The Multiphas Survey##11880 |goto 61.6,52.2
step
talk Exarch Nasuun##24932
turnin Maintaining the Sunwell Portal##11514 |goto 49.1,42.5
step
Click the Shattrath Portal |goto Shattrath City 48.6,42.0 < 10 |n
Port to the Isle of Qual'Danas |goto Isle of Quel'Danas |noway
step
talk Captain Valindria##25088
turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas,53.8,34.3
step
Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil |use Ata'mal Armament##34500
Cleanse 5 Ata'mal Metals |q 11544/1 |goto 50.6,40.7
step
talk Smith Hauthaa##25046
turnin Don't Stop Now....##11536 |goto 50.6,40.7
turnin Ata'mal Armaments##11544 |goto 50.6,40.7
step
talk Vindicator Kaalan##25108
turnin Keeping the Enemy at Bay##11543 |goto 50.6,39.0
step
talk Magister Ilastar##25069
turnin Crush the Dawnblade##11540 |goto 49.3,40.4
step
talk Mar'nah##24975
turnin Open for Business##11546 |goto 51.5,32.5
turnin Rediscovering Your Roots##11521 |goto 51.5,32.5
step
talk Astromancer Darnarian##25133
turnin Know Your Ley Lines##11547 |goto 47.5,35.3
step
talk Battlemage Arynna##25057
turnin The Air Strikes Must Continue##11533 |goto 47.5,35.1
step
talk Harbinger Inuuro##25061
turnin The Battle Must Go On##11537 |goto 47.6,35.1
step
talk Captain Theris Dawnhearth##24967
turnin Arm the Wards!##11523 |goto 47.5,30.5
step
talk Vindicator Xayann##24965
turnin Further Conversions##11525 |goto 47.1,30.7
step
talk Eldara Dawnrunner##25032
accept A Friend in the Frontlines##11554 |instant |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Friendly
step
talk Eldara Dawnrunner##25032
accept Honored By Your Allies##11555 |instant |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Honored
step
talk Eldara Dawnrunner##25032
accept Revered in the Field of Battle##11556 |instant |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Revered
step
talk Eldara Dawnrunner##25032
accept Exalted Among All Combatants##11557 |instant |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Exalted
step
talk Anchorite Kairthos##25163
accept A Magnanimous Benefactor##11549 |instant |goto Isle of Quel'Danas,51.2,33.1
|tip This quest will cost you 1,000 Gold, but give you the title "Of the Shattered Sun".
only if rep ("Shattered Sun Offensive")==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Coldarra Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Coldarra region of Borean Tundra.",
},[[
step
Routing to proper section |next |only if not completedq(13413)
Routing to proper section |next "dailies" |only if completedq(13413)
step
talk Raelorasz##26117
accept Basic Training##11918 |goto Borean Tundra 33.3,34.5
step
kill Coldarra Spellweaver##25722+ |q 11918/1 |goto 35,28
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.3,34.5
accept Hatching a Plan##11936 |goto 33.3,34.5
step
As you do the following steps:
kill Coldarra Wyrmkin |n
collect 5 Frozen Axe##35586 |q 11936
confirm |only if not completedq(11936)
step
click Blue Dragon Egg##188133
|tip They look like big eggs with blue crystals on them on the ground.
Destroy 5 Dragon Eggs |q 11936/1 |goto 27.8,24.2
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto 33.3,34.5
accept Drake Hunt##11919 |goto 33.3,34.5
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff 134155 |q 11919 |goto 24.6,27.1
step
Stand here until it says Captured Nexus Drake |q 11940/1 |goto 33.3,34.5
talk Raelorasz##26117
turnin Drake Hunt##11919 |goto 33.3,34.5
step
talk Librarian Serrah##26110
accept Corastrasza##13412 |goto 33.5,34.4
|tip You must be at least level 80 to be able to accept this quest.
step
talk Corastrasza##32548
turnin Corastrasza##13412 |goto 29.5,24.8
accept Aces High!##13413 |goto 29.5,24.8
step
Tell Corastrasza you have the courage to face Malygos drakes
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza
To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge
kill 5 Scalesworn Elites |q 13413/1
step
talk Corastrasza##32548
She's standing on a platform floating in the sky
turnin Aces High!##13413 |goto 29.5,24.8
step
label "dailies"
talk Raelorasz##26117
accept Drake Hunt##11940 |goto Borean Tundra 33.3,34.5
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506 |goto 24.6,27.1
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff 134155
step
Stand here until it says Captured Nexus Drake |q 11940/1 |goto 33.3,34.5
talk Raelorasz##26117
turnin Drake Hunt##11940 |goto 33.3,34.5
step
talk Corastrasza##32548
accept Aces High!##13414 |goto 29.5,24.8
step
Tell Corastrasza you are ready
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza
To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge
kill 5 Scalesworn Elites |q 13414/1
step
talk Corastrasza##32548
turnin Aces High!##13414 |goto 29.5,24.8
step
You have reached the end of the Dailies
Click here to return to the beginning |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Kaskala Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Kaskala region of Borean Tundra. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
talk Utaik##26213
accept Preparing for the Worst##11945 |goto Borean Tundra 63.9,45.7
step
Click baskets on the shore
collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 66.7,48.6
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto 63.9,45.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Dalaran Cooking Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Cooking daily quests in Dalaran.",
},[[
step
Routing to proper section |next |only if not completedq(13087)
Routing to proper section |next "dailies" |only if completedq(13087)
step
talk Brom Brewbaster##26905
accept Northern Cooking##13087 |goto Howling Fjord 58.2,62.1
|tip This quest is only available to you if you have 350+ Cooking skill.
step
kill Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
collect 4 Chilled Meat##43013 |q 13087/1 |goto 79.0,73.1
step
talk Brom Brewbaster##26905
turnin Northern Cooking##13087 |goto 58.2,62.1
step
label "dailies"
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |goto Dalaran 40.8,65.4 |or
accept Convention at the Legerdemain##13101 |goto Dalaran 40.8,65.4 |or
accept Infused Mushroom Meatloaf##13100 |goto Dalaran 40.8,65.4 |or
accept Mustard Dogs!##13107 |goto Dalaran 40.8,65.4 |or
accept Sewer Stew##13102 |goto Dalaran 40.8,65.4 |or
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building. They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
step
Use your Empty Cheese Serving Platter in your bags |use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter##43136 |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building. They spawn in random locations.
collect 1 Jug of Wine##43128 |q 13101/2 |goto 55.0,30.8
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight 30.0,49.8
step
Use your Cooking ability to cook 4 Northern Stew
|tip You will need a cooking fire to do this.
collect 4 Northern Stew##34747 |q 13101/1
step
Go into the Dalaran sewers |goto Dalaran 60.2,47.7 < 5 |walk
click Infused Mushroom##192818
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 51.6,41.6
step
Leave the Dalaran sewers |goto Dalaran 60.2,47.7 < 5 |walk
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight 30.0,49.8
step
Use your Meatloaf Pan in your bags |use Meatloaf Pan##43101
|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf##43099 |q 13100/1
step
click Wild Mustard##192827
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area. They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran 67.7,40.0
You can find more Wild Mustard flowers:
At [50.3,48.3]
At [37.2,43.9]
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra 46.7,43.6
step
create 4 Rhino Dogs##45553,Cooking,4 total |n
Use your Cooking ability to cook 4 Rhino Dogs
|tip You will need a cooking fire to do this.
collect 4 Rhino Dogs##34752 |q 13107
step
Use your Empty Picnic Basket in your bags |use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket##43144 |q 13107/1
step
Click the Crystalsong Carrots
|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran. They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest 26.9,45.5
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight 30.0,49.8
step
Use your Stew Cookpot in your bags |use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew##43149 |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran 36.6,27.8
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran 48.6,37.5
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran 52.3,55.6
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran 68.6,42.0
step
Go into the Dalaran sewers |goto Dalaran 60.2,47.7 < 5 |walk
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran 35.5,57.6
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Fishing Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Fishing daily quests in Dalaran.",
},[[
step
label "dailies"
talk Marcia Chase##28742
You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
accept Blood Is Thicker##13833 |goto Dalaran 53.1,64.9 |or
accept Dangerously Delicious##13834 |goto Dalaran 53.1,64.9 |or
accept Jewel Of The Sewers##13832 |goto Dalaran 53.1,64.9 |or
accept Disarmed!##13836 |goto Dalaran 53.1,64.9 |or
accept The Ghostfish##13830 |goto Dalaran 53.1,64.9 |or
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
Get the Animal Blood buff |havebuff 132311 |q 13833 |goto Borean Tundra 54.6,41.8
step
Walk into the water here to create a pool of blood
Fish in the pool of blood
collect 5 Bloodtooth Frenzy##45905 |q 13833/1 |goto 53.7,42.9
step
Fish in this big lake
collect 10 Terrorfish##45904 |q 13834/1 |goto Wintergrasp 79.9,41.8
step
The entrance to the Dalaran sewers starts here |goto Dalaran 60.2,47.7,0.3 |c |q 13832
step
Fish in the water in the Dalaran sewers
collect 1 Corroded Jewelry##45903 |q 13832/1 |goto 44.4,66.2
step
Leave the Dalaran sewers|goto Dalaran 60.2,47.7,0.3 |c |q 13832
step
collect Bloated Slippery Eel##45328 |n
Click the Bloated Slippery Eel in your bags |use Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q 13836/1 |goto Dalaran 64.8,60.8
step
Fish in the water here
collect 1 Phantom Ghostfish##45902 |n
Click the Phantom Ghostfish in your bags to eat it |use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q 13830/1 |goto Sholazar Basin 49.3,61.8
step
talk Marcia Chase##28742
turnin Blood Is Thicker##13833 |goto Dalaran 53.1,64.9 |only if havequest(13833)
turnin Dangerously Delicious##13834 |goto Dalaran 53.1,64.9 |only if havequest(13834)
turnin Jewel Of The Sewers##13832 |goto Dalaran 53.1,64.9 |only if havequest(13832)
turnin The Ghostfish##13830 |goto Dalaran 53.1,64.9 |only if havequest(13830)
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836 |goto Dalaran 36.6,37.3
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Jewelcrafting Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Jewelcrafting daily quests in Dalaran.",
},[[
step
Routing to proper section |next |only if not completedq(13041)
Routing to proper section |next "dailies" |only if completedq(13041)
step
talk Timothy Jones##28701
accept Finish the Shipment##13041 |goto Dalaran,40.7,35.4
|tip This quest is only available once you have 375+ Jewelcrafting skill.
step
Go to the Auction House in a major city:
Buy 1 Chalcedony |q 13041/1
|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
step
talk Timothy Jones##28701
turnin Finish the Shipment##13041 |goto Dalaran,40.7,35.4
step
label "dailies"
talk Timothy Jones##28701
You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
accept Shipment: Blood Jade Amulet##12958 |goto Dalaran 40.7,35.4 |or
accept Shipment: Bright Armor Relic##12962 |goto Dalaran 40.7,35.4 |or
accept Shipment: Glowing Ivory Figurine##12959 |goto Dalaran 40.7,35.4 |or
accept Shipment: Intricate Bone Figurine##12961 |goto Dalaran 40.7,35.4 |or
accept Shipment: Shifting Sun Curio##12963 |goto Dalaran 40.7,35.4 |or
accept Shipment: Wicked Sun Brooch##12960 |goto Dalaran 40.7,35.4 |or
step
kill Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
collect 1 Vrykul Amulet##41989 |q 12958 |goto Icecrown,59.1,54.1
step
Go to the Auction House in a major city:
Buy 1 Dark Jade |collect 1 Dark Jade##36932 |q 12958
|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
Buy 1 Bloodstone |collect 1 Bloodstone##36917 |q 12958
|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
Use your Vrykul Amulet in your bags|use Vrykul Amulet##41989
collect 1 Blood Jade Amulet##43269 |q 12958/1
step
kill Ice Revenant##26283
collect 1 Elemental Armor Scrap##42107 |q 12962 |goto Dragonblight,67.3,52.3
step
Go to the Auction House in a major city:
Buy 1 Huge Citrine |collect 1 Huge Citrine##36929 |q 12962
|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
Buy 1 Bloodstone |collect 1 Bloodstone##36917 |q 12962
|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
Use your Elemental Armor Scrap in your bags |use Elemental Armor Scrap##42107
collect 1 Bright Armor Relic##43275 |q 12962/1
step
kill Emaciated Mammoth Bull##26271+, Emaciated Mammoth Calf##26273+, Emaciated Mammoth##26272+
collect 1 Northern Ivory##42104 |q 12959 |goto Dragonblight,62.5,47.4
step
Go to the Auction House in a major city:
Buy 1 Chalcedony |collect 1 Chalcedony##36923 |q 12959
|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
Buy 1 Shadow Crystal |collect 1 Shadow Crystal##36926 |q 12959
|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
Use your Northern Ivory in your bags|use Northern Ivory##42104
collect 1 Glowing Ivory Figurine##43270 |q 12959/1
step
kill Blighted Proto-Drake##29590+
collect 1 Proto Dragon Bone##42106 |q 12961 |goto The Storm Peaks,23.1,57.7
step
Go to the Auction House in a major city:
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920 |q 12959
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
Buy 1 Dark Jade |collect 1 Dark Jade##36932 |q 12961
|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
step
Use your Proto Dragon Bone in your bags |use Proto Dragon Bone##42106
collect 1 Intricate Bone Figurine##43274 |q 12961/1
step
kill Wastes Taskmaster##26493+, Wastes Digger##26492+
collect 1 Scourge Curio##42108 |q 12963 |goto Dragonblight,56.3,27.5
step
Go to the Auction House in a major city:
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920 |q 12963
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
Buy 1 Shadow Crystal |collect 1 Shadow Crystal##36926 |q 12963
|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
Use your Scourge Curio in your bags |use Scourge Curio##42108
collect 1 Shifting Sun Curio##43276 |q 12963/1
step
The entrance to the cave starts here |goto The Storm Peaks 26.8,66.9 < 10 |c |q 12960
step
kill Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
collect 1 Iron Dwarf Brooch##42105 |q 12960 |goto 26.0,67.2
step
Leave the cave |goto The Storm Peaks 26.8,66.9 < 10 |c |q 12960
step
Go to the Auction House in a major city:
Buy 1 Huge Citrine |collect 1 Huge Citrine##36929 |q 12960
|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920 |q 12960
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
step
Use your Iron Dwarf Brooch in your bags |use Iron Dwarf Brooch##42105
collect 1 Wicked Sun Brooch##43272 |q 12960/1
step
talk Timothy Jones##28701
You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
turnin Shipment: Blood Jade Amulet##12958 |goto Dalaran 40.7,35.4
turnin Shipment: Bright Armor Relic##12962 |goto Dalaran 40.7,35.4
turnin Shipment: Glowing Ivory Figurine##12959 |goto Dalaran 40.7,35.4
turnin Shipment: Intricate Bone Figurine##12961 |goto Dalaran 40.7,35.4
turnin Shipment: Shifting Sun Curio##12963 |goto Dalaran 40.7,35.4
turnin Shipment: Wicked Sun Brooch##12960 |goto Dalaran 40.7,35.4
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Dragonblight\\Wyrmrest Accord Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="This guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight. The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.",
},[[
step
Proceeding to Pre-Quests |next |only if default
Proceeding to Dailies |next "dailies" |only if completedq(12435)
step
#include "WAccord_Quests"
step
label "dailies"
#include "WAccord_Dailies"
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Dragonblight\\Moa'ki Harbor Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Moa'ki Harbor region of Dragonblight. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
talk Trapper Mau'i##26228
accept Planning for the Future##11960 |goto Dragonblight,48.3,74.3
step
Click Snowfall Glade Pups
|tip The Snowfall Glade Pups are small creatures in front of the houses.
collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto 45.3,63.7
step
talk Trapper Mau'i##26228
turnin Planning for the Future##11960 |goto 48.3,74.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blackriver Logging Camp Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
talk Drakuru##26423
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Crystal Vial##3371 |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Scout Captain Carter##27783
accept Blackriver Skirmish##12444 |goto Grizzly Hills,30.0,59.8
step
Kill Horde Players or Conquest Hold Raiders in the Blackriver Logging Camp
Kill 10 Horde in Blackriver |q 12444/1 |goto 28.3,63.4
step
talk Scout Captain Carter##27783
turnin Blackriver Skirmish##12444 |goto 30.0,59.8
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Sergeant Hartsman##27468
accept Kick 'Em While They're Down##12289 |goto Grizzly Hills,39.3,43.9
step
talk Synipus##27371
accept Shredder Repair##12244 |goto 39.5,43.6
step
talk Pipthwack##27416
accept Pieces Parts##12268 |goto 39.6,43.4
step
talk Rheanna##27484
accept Life or Death##12296 |goto 40.5,42.7
step
Use Renewing Bandages on Wounded Wesfall Infantry |use Renewing Bandage##37576
Heal 10 Westfall Infantry |q 12296/1 |goto 34.9,39.8
Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
collect 4 Grooved Cogs##37412 |q 12268/1 |goto 34.9,39.8
collect 3 Notched Sprockets##37413 |q 12268/2 |goto 34.9,39.8
collect 2 High Tension Springs##37416 |q 12268/3 |goto 34.9,39.8
step
Kill Horde Players or Wounded Skirmishers in the area
Eliminate 15 Horde units |q 12289/1 |goto 33.4,35.7
step
Find the Broken-down Shredder that spawns. Blizzards quest helper will mark it on your map for you.
Click the Broken-down Shredder to get inside it
Use your abilities on your hot bar to return the shredder to Synipus |goto Grizzly Hills,39.5,43.6
Deliver 3 Shredders |q 12244/1 |goto 34.9,39.8
step
talk Sergeant Hartsman##27468
turnin Kick 'Em While They're Down##12289 |goto 39.3,43.9
step
talk Synipus##27371
turnin Shredder Repair##12244 |goto 39.5,43.6
step
talk Pipthwack##27416
turnin Pieces Parts##12268 |goto 39.6,43.4
step
talk Rheanna##27484
turnin Life or Death##12296 |goto 40.5,42.7
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Granite Springs Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085|q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Mack Fearsen##26604
accept Seared Scourge##12038 |goto Grizzly Hills,16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 30 Scourge Trolls |q 12038/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12038 |goto Grizzly Hills,16.7,48.3
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Venture Bay Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
get 3 Haze Leaf |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
get Waterweed Frond |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Commander Howser##27759
accept Riding the Red Rocket##12437 |goto Grizzly Hills,14.8,86.6
If he's not there, then you have to take control of Venture Bay for the Alliance
To take control of Venture Bay for the Alliance, go to 15.1,88.0 |tip Hide behind the lighthouse in between the 2 big brown rocks. Flag yourself for PvP and a bar will appear under your minimap. Sit here until the bar marker is all the way to the left, this will make Commander Howser spawn.
step
talk Sergeant Downey##27602
accept Smoke 'Em Out##12323 |goto 22.1,81.2
step
talk Lieutenant Stuart##27562
accept Keep Them at Bay!##12316 |goto 22.1,81.2
step
talk Baron Freeman##27520
accept Down With Captain Zorna##12314 |goto 22.2,81.2
step
Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers |use Smoke Bomb##37621
Building one can be found at [18.0,79.6]
Building two can be found at [16.4,76.6]
Building three can be found at [14.6,76.7]
Smoke out 20 Venture Company Stragglers |q 12323/1 |goto 18.0,79.6
step
Kill Horde Players or Conquest Hold Berserker in Venture Bay
Kill 10 Horde in Venture Bay |q 12316/1 |goto 19.9,76.4
step
kill Captain Zorna##27511|q 12314/1 |goto 13.3,80.2
step
Click the Element 115 in the back room of the ship
|tip It looks like a red canister with a handle on the top
collect Element 115##37664 |q 12437 |goto 16.4,80.3
step
On the next step you will guide a rocket into this Horde Lumberboat
Your target will be the wooden X on the back
Go to 13.6,88.9 |goto Grizzly Hills 13.6,88.9,0.5
You will want to use your keys, not your mouse, to guide the rocket
Avoid icebergs or the rocket will explode and you will have to start over
Click a red rocket to take control of one |invehicle |c |q 12437 |goto 9.6,79.2
step
Hit the wooden X on the back of the Horde Lumberboat
Destroy the Horde Lumberboat |q 12437/1 |goto 9.6,79.1
step
talk Commander Howser##27759
turnin Riding the Red Rocket##12437 |goto 14.8,86.6
step
talk Lieutenant Stuart##27562
turnin Keep Them at Bay!##12316 |goto 22.1,81.2
step
talk Baron Freeman##27520
turnin Down With Captain Zorna##12314 |goto 22.1,81.2
step
talk Sergeant Downey##27602
turnin Smoke 'Em Out##12323 |goto 22.1,81.2
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Steel Gate Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Apothecary Camp region of Howling Fjord.",
},[[
step
Proceeding to the proper section |next |only if default
Proceeding to the proper section |next "dailies" |only if completedq(11390)
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord,40.3,60.3
step
Click the Mound of Debris
|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.7,77.5
step
Click the Unlocked Chest
|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.2,77
step
Click the Long Tail Feather
|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.8,79.4
step
Click the Cannonball
|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
collect Windan's Clue##34225 |q 11504/4 |goto 62,80
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.3,60.3
accept Elder Atuik and Kamagua##11507 |goto 40.3,60.3
step
Go northwest across the Ancient Lift
talk Elder Atuik##24755
turnin Elder Atuik and Kamagua##11507 |goto 25.0,57.0
accept Grezzix Spindlesnap##11508 |goto 25.0,57.0
step
talk Grezzix Spindlesnap##24643
turnin Grezzix Spindlesnap##11508 |goto 23.1,62.7
accept Street "Cred"##11509 |goto 23.1,62.7
step
talk "Silvermoon" Harry##24539
turnin Street "Cred"##11509 |goto 35.1,80.9
step
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.8,79.6
step
kill Big Roy##24785
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.4,77.9
step
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.8,79.6
step
talk Overseer Irena Stonemantle##23891
accept See to the Operations##11176 |goto Howling Fjord,30.2,28.7
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.8,28.6
accept I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Fly down into the valley below
They look like huge sacks with yellow stuff in them on the ground
Use your Grappling Hook ability on your hotbar near a big sack on the ground |petaction Grappling Hook
Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
Repeat this 2 more time
Deliver 3 Sacks of Relics |q 11390/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
label "dailies"
talk Steel Gate Chief Archaeologist##24399
accept Steel Gate Patrol##11391 |goto Howling Fjord,30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Use the abilities on your hotbar as you fly around to fight the flying gargoyles
kill 8 Gjalerbron Gargoyle |q 11391/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin Steel Gate Patrol##11391 |goto 30.8,28.6
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Kamagua Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.",
},[[
step
Proceeding to the proper section |next |only if default
Proceeding to the proper section |next "dailies" |only if completedq(11390)
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord,40.3,60.3
step
Click the Mound of Debris
|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.7,77.5
step
Click the Unlocked Chest
|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.2,77
step
Click the Long Tail Feather
|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.8,79.4
step
Click the Cannonball
|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
collect Windan's Clue##34225 |q 11504/4 |goto 62,80
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.3,60.3
accept Elder Atuik and Kamagua##11507 |goto 40.3,60.3
step
Go northwest across the Ancient Lift
talk Elder Atuik##24755
turnin Elder Atuik and Kamagua##11507 |goto 25.0,57.0
accept Grezzix Spindlesnap##11508 |goto 25.0,57.0
step
talk Grezzix Spindlesnap##24643
turnin Grezzix Spindlesnap##11508 |goto 23.1,62.7
accept Street "Cred"##11509 |goto 23.1,62.7
step
talk "Silvermoon" Harry##24539
turnin Street "Cred"##11509 |goto 35.1,80.9
step
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.8,79.6
step
kill Big Roy##24785
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.4,77.9
step
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.8,79.6
step
talk Overseer Irena Stonemantle##23891
accept See to the Operations##11176 |goto Howling Fjord,30.2,28.7
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.8,28.6
accept I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Fly down into the valley below
They look like huge sacks with yellow stuff in them on the ground
Use your Grappling Hook ability on your hotbar near a big sack on the ground |petaction Grappling Hook
Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
Repeat this 2 more time
Deliver 3 Sacks of Relics |q 11390/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
label "dailies"
talk Anuniaq##24810
accept The Way to His Heart...##11472 |goto Howling Fjord,24.6,58.9
step
Use Anuniaq's Net on the Schools of Tasty Reef Fish |use Anuniaq's Net##40946
|tip They look like swarms of fish in the water.
kill Great Reef Sharks |n
collect 10 Tasty Reef Fish##34127 |q 11472 |goto 28.9,74.8
step
Use your Tasty Reef Fish on a Reef Bull as far away as you can |use Tasty Reef Fish##34127
He will come to the spot where you're standing
Keep doing this
Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1 |goto 31,74.4
step
talk Anuniaq##24810
turnin The Way to His Heart...##11472 |goto 24.6,58.9
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Westguard Keep Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Westguard Keep region of Howling Fjord.",
},[[
step
Proceeding to the proper section |next |only if default
Proceeding to the proper section |next "dailies" |only if completedq(11390)
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord,40.3,60.3
step
Click the Mound of Debris
|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.7,77.5
step
Click the Unlocked Chest
|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.2,77
step
Click the Long Tail Feather
|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.8,79.4
step
Click the Cannonball
|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
collect Windan's Clue##34225 |q 11504/4 |goto 62,80
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.3,60.3
accept Elder Atuik and Kamagua##11507 |goto 40.3,60.3
step
Go northwest across the Ancient Lift
talk Elder Atuik##24755
turnin Elder Atuik and Kamagua##11507 |goto 25.0,57.0
accept Grezzix Spindlesnap##11508 |goto 25.0,57.0
step
talk Grezzix Spindlesnap##24643
turnin Grezzix Spindlesnap##11508 |goto 23.1,62.7
accept Street "Cred"##11509 |goto 23.1,62.7
step
talk "Silvermoon" Harry##24539
turnin Street "Cred"##11509 |goto 35.1,80.9
step
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.8,79.6
step
kill Big Roy##24785
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.4,77.9
step
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.8,79.6
step
talk Overseer Irena Stonemantle##23891
accept See to the Operations##11176 |goto Howling Fjord,30.2,28.7
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.8,28.6
accept I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Fly down into the valley below
They look like huge sacks with yellow stuff in them on the ground
Use your Grappling Hook ability on your hotbar near a big sack on the ground |petaction Grappling Hook
Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
Repeat this 2 more time
Deliver 3 Sacks of Relics |q 11390/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
label	dailies
talk Bombardier Petrov##23895
accept Break the Blockade##11153 |goto Howling Fjord,29,41.9
step
If you have a flying mount you can just fly onto the boats and kill the pirates and cannons
If you do not have a flying mount wait for the zeppelin to come back, if it is there already, then get on it
Use Petrov's Cluster Bombs in your bags to throw them off the zeppelin at the pirates as you ride|use Petrov's Cluster Bombs##33098
kill 25 Blockade Pirate |q 11153/1 |goto 28.1,42.1
Destroy 10 Blockade Cannons |q 11153/2 |goto 28.1,42.1
step
talk Bombardier Petrov##23895
turnin Break the Blockade##11153 |goto 29,41.9
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing your race's Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant Rank with your own race.",
},[[
step
label "hub"
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.6,22.6
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13667 |goto Icecrown,69.7,22.9
step
talk Arcanist Taelis##33625
turnin The Argent Tournament##13667 |goto Icecrown,76.5,19.4
accept Mastery Of Melee##13828 |goto Icecrown,76.5,19.4
step
talk Avareth Swiftstrike##33646
accept Mastery Of The Charge##13837 |goto 76.5,19.4
step
talk Scout Shalyndria##33647
accept Mastery Of The Shield-Breaker##13835 |goto Icecrown,76.5,19.5
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |invehicle |q 13828 |goto Icecrown,75.9,20.4
step
talk Valis Windchaser##33974
Choose _"Tell me more about using the Shield-Breaker."_ |q 13835/1 |goto 73.2,19.2
step
talk Rugan Steelbelly##33972
Choose _"Show me how to train with a Charge Target."_ |q 13837/1 |goto 72.7,18.9
step
talk Jeran Lockwood##33973
Choose _"Show me how to train wiht a Melee Target."_ |q 13828/1 |goto 72.5,19.3
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13828/2 |goto 72.6,19.7
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13837/2 |goto 72.9,18.8
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13835/2 |goto 73.1,19.0
step
Click the red arrow on your hotbar to stop riding the steed mount |outvehicle |q 13828
step
talk Arcanist Taelis##33625
turnin Mastery Of Melee##13828 |goto Icecrown,76.5,19.4
step
talk Avareth Swiftstrike##33646
turnin Mastery Of The Charge##13837 |goto 76.5,19.4
step
talk Scout Shalyndria##33647
turnin Mastery Of The Shield-Breaker##13835 |goto Icecrown,76.5,19.5
step
talk Arcanist Taelis##33625
accept Up To The Challenge##13672 |goto Icecrown,76.5,19.4
step
talk Arcanist Taelis##33625
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13666 |goto 76.5,19.4 |or
accept A Worthy Weapon##13669 |goto 76.5,19.4 |or
accept The Edge of Winter##13670 |goto 76.5,19.4 |or
step
talk Avareth Swiftstrike##33646
accept Training in the Field##13671 |goto 76.5,19.4
step
talk Scout Shalyndria##33647
accept Learning the Reins##13625 |goto Icecrown,76.5,19.5
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13666/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13669 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13669/1 |goto Dragonblight,93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13670 |goto Crystalsong Forest,54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13670/1 |goto Howling Fjord,42.2,19.7
step
kill Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
kill 8 Icecrown Scourge |q 13671/1 |goto Icecrown,71.3,37.5
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |invehicle |q 13625 |goto Icecrown,75.9,20.4
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13625/1 |goto 72.6,19.7
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13625/3 |goto 72.9,18.8
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13625/2 |goto 73.1,19.0
step
talk Arcanist Taelis##33625
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13666 |goto 76.5,19.4
turnin A Worthy Weapon##13669 |goto 76.5,19.4
turnin The Edge of Winter##13670 |goto 76.5,19.4
step
talk Avareth Swiftstrike##33646
turnin Training in the Field##13671 |goto 76.5,19.4
step
talk Scout Shalyndria##33647
turnin Learning the Reins##13625 |goto Icecrown,76.5,19.5
step
talk Arcanist Taelis##33625
collect 15 Aspirant's Seal##45192+ |n
turnin Up To The Challenge##13672 |goto 76.5,19.4
If you have not collected 15 Seals, you can cilck here to go back the beginning of the Dailies |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing your race's Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion Rank with your own race. You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section in order to have access to the quests in this guide section.",
},[[
step
talk Arcanist Taelis##33625
accept The Aspirant's Challenge##13679 |goto Icecrown,76.5,19.4
|tip You must turn in the Up To The Challenge quest before you can accept this quest.  The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |invehicle |q 13679 |goto 71.8,20.0
step
talk Squire David##33447
Tell him you are ready to fight!
|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
An Argent Valiant runs up on a horse
Use the abilities on your hotbar to defeat the Argent Valiant
|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13679/1 |goto 71.4,19.6
step
talk Arcanist Taelis##33625
turnin The Aspirant's Challenge##13679
accept A Valiant Of Stormwind##13684 |goto 76.5,19.4 |only Human, Pandaren
accept A Valiant Of Darnassus##13689 |goto 76.5,19.4 |only NightElf, Worgen
accept A Valiant Of Ironforge##13685 |goto 76.5,19.4 |only Dwarf
accept A Valiant Of Gnomeregan##13688 |goto 76.5,19.4 |only Gnome
accept A Valiant Of The Exodar##13690 |goto 76.5,19.4 |only Draenei
step
talk Marshal Jacob Alerius##33225
turnin A Valiant Of Stormwind##13684 |goto 76.6,19.2
accept The Valiant's Charge##13718 |goto 76.6,19.2
only Human, Pandaren
step
talk Jaelyne Evensong##33592
turnin A Valiant Of Darnassus##13689 |goto 76.3,19.1
accept The Valiant's Charge##13717 |goto 76.3,19.1
only NightElf, Worgen
step
talk Lana Stouthammer##33312
turnin A Valiant Of Ironforge##13685 |goto 76.6,19.5
accept The Valiant's Charge##13714 |goto 76.6,19.5
only Dwarf
step
talk Ambrose Boltspark##33335
turnin A Valiant Of Gnomeregan##13688 |goto 76.5,19.8
accept The Valiant's Charge##13715 |goto 76.5,19.8
only Gnome
step
talk Colosos##33593
turnin A Valiant Of The Exodar##13690 |goto 76.1,19.2
accept The Valiant's Charge##13716 |goto 76.1,19.2
only Draenei
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13752 |goto 76.1,19.1 |or
accept A Worthy Weapon##13753 |goto 76.1,19.1 |or
accept The Edge Of Winter##13754 |goto 76.1,19.1 |or
only Draenei
step
talk Saandos##33655
accept A Valiant's Field Training##13755 |goto 76.1,19.2
only Draenei
step
talk Ranii##33656
accept The Grand Melee##13756 |goto 76.2,19.1
accept At The Enemy's Gates##13854 |goto 76.2,19.1
only Draenei
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13752/1 |goto Grizzly Hills,61.2,50.3
only Draenei
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13753 |goto Icecrown,69.1,76.2
only Draenei
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13753/1 |goto Dragonblight,93.2,26.1
only Draenei
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13754 |goto Crystalsong Forest,54.5,74.9
only Draenei
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord,42.2,19.7
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13854 |goto Icecrown,48.9,71.4
only Draenei
step
kill 15 Boneguard Footman |q 13854/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13854/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13854/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Draenei
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854 |goto 49.1,71.4
only Draenei
step
kill 10 Converted Hero##32255 |q 13755/1 |goto 44.3,54.2
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13756 |goto 76.4,20.5
only Draenei
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13756/1 |goto 75.3,18.5
only Draenei
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13752
turnin A Worthy Weapon##13753 |goto 76.1,19.1
turnin The Edge Of Winter##13754 |goto 76.1,19.1
only Draenei
step
talk Saandos##33655
turnin A Valiant's Field Training##13755 |goto 76.1,19.2
only Draenei
step
talk Ranii##33656
turnin The Grand Melee##13756 |goto 76.2,19.1
turnin At The Enemy's Gates##13854 |goto 76.2,19.1
only Draenei
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13741 |goto 76.6,19.5 |or
accept A Worthy Weapon##13742 |goto 76.6,19.5 |or
accept The Edge Of Winter##13743 |goto 76.6,19.5 |or
only Dwarf
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto 76.7,19.4
only Dwarf
step
talk Clara Tumblebrew##33309
accept The Grand Melee##13745 |goto 76.6,19.6
accept At The Enemy's Gates##13851 |goto 76.6,19.6
only Dwarf
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills,61.2,50.3
only Dwarf
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13742 |goto Icecrown,69.1,76.2
only Dwarf
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight,93.2,26.1
only Dwarf
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest,54.5,74.9
only Dwarf
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord,42.2,19.7
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto Icecrown,48.9,71.4
only Dwarf
step
kill 15 Boneguard Footman |q 13851/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13851/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13851/3 |goto 50.1,74.8
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Dwarf
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851 |goto 49.1,71.4
only Dwarf
step
kill 10 Converted Hero##32255 |q 13744/1 |goto 44.3,54.2
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13745 |goto 76.3,20.5
only Dwarf
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto 75.3,18.5
only Dwarf
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13741 |goto 76.6,19.5
turnin A Worthy Weapon##13742 |goto 76.6,19.5
turnin The Edge Of Winter##13743 |goto 76.6,19.5
only Dwarf
step
talk Rollo Sureshot##33315
turnin A Valiant's Field Training##13744 |goto 76.7,19.4
only Dwarf
step
talk Clara Tumblebrew##33309
turnin The Grand Melee##13745 |goto 76.6,19.6
turnin At The Enemy's Gates##13851 |goto 76.6,19.6
only Dwarf
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13603 |goto 76.6,19.1 |or
accept A Worthy Weapon##13600 |goto 76.6,19.1 |or
accept The Edge Of Winter##13616 |goto 76.6,19.1 |or
only Human, Pandaren
step
talk Sir Marcus Barlowe##33222
accept A Valiant's Field Training##13592 |goto 76.5,19.1
only Human, Pandaren
step
talk Captain Joseph Holley##33223
accept The Grand Melee##13665 |goto 76.6,19.2
accept At The Enemy's Gates##13847 |goto 76.6,19.2
only Human, Pandaren
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills,61.2,50.3
only Human, Pandaren
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13600 |goto Icecrown,69.1,76.2
only Human, Pandaren
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight,93.2,26.1
only Human, Pandaren
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest,54.5,74.9
only Human, Pandaren
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13616/1 |goto Howling Fjord,42.2,19.7
only Human, Pandaren
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13847 |goto Icecrown,48.9,71.4
only Human, Pandaren
step
kill 15 Boneguard Footman |q 13847/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13847/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13847/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Human, Pandaren
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847 |goto 49.1,71.4
only Human, Pandaren
step
kill 10 Converted Hero##32255 |q 13592/1 |goto 44.3,54.2
only Human, Pandaren
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13665 |goto 76.1,20.5
only Human, Pandaren
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges
collect 3 Mark of the Valiant##45127 |q 13665/1 |goto 75.3,18.5
only Human, Pandaren
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13603 |goto 76.6,19.1
turnin A Worthy Weapon##13600 |goto 76.6,19.1
turnin The Edge Of Winter##13616 |goto 76.6,19.1
only Human, Pandaren
step
talk Sir Marcus Barlowe##33222
turnin A Valiant's Field Training##13592 |goto 76.5,19.1
only Human, Pandaren
step
talk Captain Joseph Holley##33223
turnin The Grand Melee##13665 |goto 76.6,19.2
turnin At The Enemy's Gates##13847 |goto 76.6,19.2
only Human, Pandaren
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13757 |goto 76.3,19.0 |or
accept A Worthy Weapon##13758 |goto 76.3,19.0 |or
accept The Edge Of Winter##13759 |goto 76.3,19.0 |or
only NightElf, Worgen
step
talk Illestria Bladesinger##33652
accept A Valiant's Field Training##13760 |goto 76.3,19.0
only NightElf, Worgen
step
talk Airae Starseeker##33654
accept The Grand Melee##13761 |goto 76.4,19.0
accept At The Enemy's Gates##13855 |goto 76.4,19.0
only NightElf, Worgen
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13757/1 |goto Grizzly Hills,61.2,50.3
only NightElf, Worgen
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13758 |goto Icecrown,69.1,76.2
only NightElf, Worgen
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13758/1 |goto Dragonblight,93.2,26.1
only NightElf, Worgen
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13759 |goto Crystalsong Forest,54.5,74.9
only NightElf, Worgen
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13759/1 |goto Howling Fjord,42.2,19.7
only NightElf, Worgen
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13855 |goto Icecrown,48.9,71.4
only NightElf, Worgen
step
kill 15 Boneguard Footman |q 13855/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13855/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13855/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf, Worgen
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855 |goto 49.1,71.4
only NightElf, Worgen
step
kill 10 Converted Hero##32255 |q 13760/1 |goto 44.3,54.2
only NightElf, Worgen
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13761 |goto 76.0,20.4
only NightElf, Worgen
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto 75.3,18.5
only NightElf, Worgen
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13757 |goto 76.3,19.0
turnin A Worthy Weapon##13758 |goto 76.3,19.0
turnin The Edge Of Winter##13759 |goto 76.3,19.0
only NightElf, Worgen
step
talk Illestria Bladesinger##33652
turnin A Valiant's Field Training##13760 |goto 76.3,19.0
only NightElf, Worgen
step
talk Airae Starseeker##33654
turnin The Grand Melee##13761 |goto 76.4,19.0
turnin At The Enemy's Gates##13855 |goto 76.4,19.0
only NightElf, Worgen
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13746 |goto 76.5,19.8 |or
accept A Worthy Weapon##13747 |goto 76.5,19.8 |or
accept The Edge Of Winter##13748 |goto 76.5,19.8 |or
only Gnome
step
talk Tickin Gearspanner##33648
accept A Valiant's Field Training##13749 |goto 76.6,19.8
only Gnome
step
talk Flickin Gearspanner##33649
accept The Grand Melee##13750 |goto 76.5,19.9
accept At The Enemy's Gates##13852 |goto 76.5,19.9
only Gnome
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills,61.2,50.3
only Gnome
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13747 |goto Icecrown,69.1,76.2
only Gnome
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight,93.2,26.1
only Gnome
step
from Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest,54.5,74.9
only Gnome
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
get Winter's Edge |q 13748/1 |goto Howling Fjord,42.2,19.7
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13852 |goto Icecrown,48.9,71.4
only Gnome
step
kill 15 Boneguard Footman |q 13852/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13852/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13852/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Gnome
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852 |goto 49.1,71.4
only Gnome
step
kill 10 Converted Hero##32255 |q 13749/1 |goto 44.3,54.2
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto 76.2,20.5
only Gnome
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto 75.3,18.5
only Gnome
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13746 |goto 76.5,19.8
turnin A Worthy Weapon##13747 |goto 76.5,19.8
turnin The Edge Of Winter##13748 |goto 76.5,19.8
only Gnome
step
talk Tickin Gearspanner##33648
turnin A Valiant's Field Training##13749 |goto 76.6,19.8
only Gnome
step
talk Flickin Gearspanner##33649
turnin The Grand Melee##13750 |goto 76.5,19.9
turnin At The Enemy's Gates##13852 |goto 76.5,19.9
only Gnome
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13718/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human, Pandaren
collect 25 Valiant's Seal##44987 |q 13714/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
collect 25 Valiant's Seal##44987 |q 13717/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf, Worgen
collect 25 Valiant's Seal##44987 |q 13715/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
collect 25 Valiant's Seal##44987 |q 13716/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Charge##13718 |goto 76.6,19.2
accept The Valiant's Challenge##13699 |goto 76.6,19.2
only Human, Pandaren
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13717 |goto 76.3,19.1
accept The Valiant's Challenge##13725 |goto 76.3,19.1
only NightElf, Worgen
step
talk Lana Stouthammer##33312
turnin The Valiant's Charge##13714 |goto 76.6,19.5
accept The Valiant's Challenge##13713 |goto 76.6,19.5
only Dwarf
step
talk Ambrose Boltspark##33335
turnin The Valiant's Charge##13715 |goto 76.5,19.8
accept The Valiant's Challenge##13723 |goto 76.5,19.8
only Gnome
step
talk Colosos##33593
turnin The Valiant's Charge##13716 |goto 76.1,19.2
accept The Valiant's Challenge##13724 |goto 76.1,19.2
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13699 |goto 71.6,22.4
only Human, Pandaren
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13725 |goto 71.6,22.5
only NightElf, Worgen
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13713 |goto 71.8,22.5
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto 71.9,22.5
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13724 |goto 71.7,22.4
only Draenei
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13699/1 |goto 68.6,21.0 |only Human, Pandaren
Defeat the Argent Valiant |q 13725/1 |goto 68.6,21.0 |only NightElf, Worgen
Defeat the Argent Valiant |q 13713/1 |goto 68.6,21.0 |only Dwarf
Defeat the Argent Valiant |q 13723/1 |goto 68.6,21.0 |only Gnome
Defeat the Argent Valiant |q 13724/1 |goto 68.6,21.0 |only Draenei
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Challenge##13699 |goto 76.6,19.2
accept A Champion Rises##13702 |goto 76.6,19.2
only Human, Pandaren
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13725 |goto 76.3,19.1
accept A Champion Rises##13735 |goto 76.3,19.1
only NightElf, Worgen
step
talk Lana Stouthammer##33312
turnin The Valiant's Challenge##13713 |goto 76.6,19.5
accept A Champion Rises##13732 |goto 76.6,19.5
only Dwarf
step
talk Ambrose Boltspark##33335
turnin The Valiant's Challenge##13723 |goto 76.5,19.8
accept A Champion Rises##13733 |goto 76.5,19.8
only Gnome
step
talk Colosos##33593
turnin The Valiant's Challenge##13724 |goto 76.1,19.2
accept A Champion Rises##13734 |goto 76.1,19.2
only Draenei
step
talk Justicar Mariel Trueheart##33817
turnin A Champion Rises##13702 |goto 69.7,22.9 |only Human, Pandaren
turnin A Champion Rises##13735 |goto 69.7,22.9 |only NightElf, Worgen
turnin A Champion Rises##13732 |goto 69.7,22.9 |only Dwarf
turnin A Champion Rises##13733 |goto 69.7,22.9 |only Gnome
turnin A Champion Rises##13734 |goto 69.7,22.9 |only Draenei
accept The Scourgebane##13795 |goto 69.7,22.9 |only DeathKnight
accept Eadric the Pure##13794 |goto 69.7,22.9 |only if not DeathKnight
step
talk Crok Scourgebane##33762
turnin The Scourgebane##13795 |goto 73.8,20.1
only DeathKnight
step
talk Eadric the Pure##33759
turnin Eadric the Pure##13794 |goto 70.0,23.4
only if not DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only",{
author="support@zygorguides.com",
description="You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
},[[
step
talk Zor'be the Bloodletter##33769
accept Taking Battle To The Enemy##13791 |goto Icecrown,73.8,19.4
only DeathKnight
step
talk Crok Scourgebane##33762
accept Threat From Above##13788
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13864 |goto 73.8,20.1
only DeathKnight
step
talk Illyrie Nightfall##33770
accept Among the Champions##13793 |goto 73.6,20.1
only DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13793 |goto 71.7,22.4
only Draenei DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13793 |goto 71.8,22.5
only Dwarf DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13793 |goto 71.6,22.4
only Human DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793 |goto 71.6,22.5
only NightElf DeathKnight, Worgen DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793 |goto 71.9,22.5
only Gnome DeathKnight
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
collect 4 Mark of the Champion##23206 |q 13793/1 |goto 71.6,23.8
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13793
only DeathKnight
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13791/1 |goto 64.3,21.4
only DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13864 |goto Icecrown,48.9,71.4
only DeathKnight
step
kill 3 Boneguard Commander |q 13864/1 |goto 50.1,74.8
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13864 |goto 48.9,71.4
only DeathKnight
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw |q 13788/1 |goto 44.1,32.6 |tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier |q 13788/2 |goto 44.1,32.6
only DeathKnight
step
talk Zor'be the Bloodletter##33769
turnin Taking Battle To The Enemy##13791 |goto 73.8,19.4
only DeathKnight
step
talk Crok Scourgebane##33762
turnin Threat From Above##13788 |goto 73.8,20.1
turnin Battle Before The Citadel##13864 |goto 73.8,20.1
only DeathKnight
step
talk Illyrie Nightfall##33770
turnin Among the Champions##13793 |goto 73.6,20.1
only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only",{
author="support@zygorguides.com",
description="You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
},[[
step
talk Luuri##33771
accept Among the Champions##13790 |goto Icecrown,69.9,23.3
only if not DeathKnight
step
talk Eadric the Pure##33759
accept Threat From Above##13682 |goto 70.0,23.4
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13861 |goto 70.0,23.4
only if not DeathKnight
step
talk Cellian Daybreak##33763
accept Taking Battle To The Enemy##13789 |goto 69.9,23.5
only if not DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13790 |goto 71.7,22.4
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13790 |goto 71.8,22.5
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13790 |goto 71.6,22.4
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
only Pandaren Warrior,Pandaren Hunter,Pandaren Rogue,Pandaren Priest,Pandaren Shaman,Pandaren Mage,Pandaren Monk
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790 |goto 71.6,22.5
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
only Worgen Warrior,Worgen Hunter,Worgen Rogue,Worgen Priest,Worgen Death Knight,Worgen Druid
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790 |goto 71.9,22.5
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
collect 4 Mark of the Champion##23206 |q 13790/1 |goto 71.6,23.8
only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only if not DeathKnight
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13789/1 |goto 64.3,21.4
only if not DeathKnight
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only if not DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw |q 13682/1
|tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier |q 13682/2 |goto 44.1,32.6
only if not DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13861 |goto Icecrown,48.9,71.4
only if not DeathKnight
step
kill 3 Boneguard Commander |q 13861/1 |goto 50.1,74.8
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13861 |goto 48.9,71.4
only if not DeathKnight
step
talk Luuri##33771
turnin Among the Champions##13790 |goto 69.9,23.3
only if not DeathKnight
step
talk Eadric the Pure##33759
turnin Threat From Above##13682 |goto 70.0,23.4
turnin Battle Before The Citadel##13861 |goto 70.0,23.4
only if not DeathKnight
step
talk Cellian Daybreak##33763
turnin Taking Battle To The Enemy##13789 |goto 69.9,23.5
only if not DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Crusader Dailies",{
author="support@zygorguides.com",
description="In order to be able to complete the quests in this guide section, you must already be Exalted with the Ironforge, Stormwind City, Exodar, Darnassus and Gnomeregan. Also, you must have already become a Champion with each of those factions, using the Crusader Title Guide in the Icecrown section of the Dailies guide.",
},[[
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept Deathspeaker Kharos##14105 |goto Icecrown,69.5,23.1 |or
accept Drottinn Hrothgar##14101 |goto Icecrown,69.5,23.1 |or
accept Mistcaller Yngvar##14102 |goto Icecrown,69.5,23.1 |or
accept Ornolf The Scarred##14104 |goto Icecrown,69.5,23.1 |or
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
accept Get Kraken!##14108 |goto 69.5,23.1 |or
accept The Fate Of The Fallen##14107 |goto 69.5,23.1 |or
step
kill Deathspeaker Kharos |q 14105/1 |goto 64.2,21.4
|tip He's standing in a small pit area.
step
Click Discarded Soul Crystals
|tip They look like small blue-glowing crystals laying on the ground around this area.
collect 6 Discarded Soul Crystal##47035 |n
Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
Bless 6 Fallen Hero's Spirits |q 14107/1 |goto 51.1,38.4
step
Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
kill Mistcaller Yngvar |q 14102/1 |goto Hrothgar's Landing,43.9,24.3
step
Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
kill Drottinn Hrothgar |q 14101/1 |goto Hrothgar's Landing,50.7,15.4
step
Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
kill Ornolf the Scarred |q 14104/1 |goto Hrothgar's Landing,58.5,31.6
step
Click a Stabled Argent Hippogryph to ride it
Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
kill 6 Kvaldir Deepcaller |q 14108/2 |goto Icecrown,69.8,22.2
Hurl Spears at 6 North Sea Kraken |q 14108/1 |goto Icecrown,69.8,22.2
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin Deathspeaker Kharos##14105 |goto 69.5,23.1
turnin Drottinn Hrothgar##14101 |goto 69.5,23.1
turnin Mistcaller Yngvar##14102 |goto 69.5,23.1
turnin Ornolf The Scarred##14104 |goto 69.5,23.1
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
turnin Get Kraken!##14108 |goto 69.5,23.1
turnin The Fate Of The Fallen##14107 |goto 69.5,23.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Black Knight Quest Chain",{
author="support@zygorguides.com",
description="This Argent Tournament Grounds guide section unlocks a Champion Rank group daily quest. We recommend you complete the Argent Tournament Grounds Valiant Rank Dailies guide section, and achieve Champion Rank with your race, before doing this quest chain. Starting this quest chain when you are already Champion Rank will allow you to do the entire quest chain without having to switch back and forth between guide sections, allowing you to get it done much faster and more efficiently. You will be unable to get some quests in this quest chain if you are not already at Champion Rank with The Argent Tournament Grounds.",
},[[
step
talk Crusader Rhydalla##33417
accept The Black Knight of Westfall?##13633 |goto Icecrown,69.4,23.0
step
talk Caris Sunlance##33970
home Silver Covenant Pavilion |goto 76.2,19.7
step
Click the Dalaran Portal |goto Dalaran,40.1,62.8 < 7
Enter Stormwind City |goto Stormwind City |noway |c |q 13633
step
Click the Dusty Journal
|tip It's a blue open book laying on the floor inside this house.
collect Dusty Journal##45058 |q 13633/1 |goto Westfall,42.1,69.7
step
talk Crusader Rhydalla##33417
turnin The Black Knight of Westfall?##13633 |goto Icecrown,69.4,23.0
accept The Seer's Crystal##13641 |goto Icecrown,69.4,23.0
step
kill Unbound Seer##33422+
collect Seer's Crystal##45064 |q 13641/1 |goto Crystalsong Forest,46.5,42.2
step
talk Crusader Rhydalla##33417
turnin The Seer's Crystal##13641 |goto Icecrown,69.4,23.0
accept The Stories Dead Men Tell##13643 |goto Icecrown,69.4,23.0
step
Click Sir Wendell's Grave
Investigate Sir Wendell Balfour's Death |q 13643/1 |goto 79.4,23.1
step
Click Lorien's Grave
Investigate Lorien Sunblaze's Death |q 13643/2 |goto 79.6,23.6
step
Click Connall's Grave
Investigate Connall Irongrip's Death |q 13643/3 |goto 79.6,22.8
step
talk Crusader Rhydalla##33417
turnin The Stories Dead Men Tell##13643 |goto 69.4,23.0
accept There's Something About the Squire##13654 |goto 69.4,23.0
step
kill Skeletal Woodcutter##33499+
collect 1 Large Femur##45080 |q 13654 |goto Crystalsong Forest,39.9,58.8
step
Use your Large Femur on Maloric while standing behind him |use Large Femur##45080
Loot Maloric
collect Murderer's Toolkit##45082 |q 13654/1 |goto 38.3,59.5
step
talk Crusader Rhydalla##33417
turnin There's Something About the Squire##13654 |goto Icecrown,69.4,23.0
accept The Black Knight's Orders##13663 |goto Icecrown,69.4,23.0
step
Use your Enchanted Bridle next to the Black Knight's Gryphon |use Enchanted Bridle##45083
Take the Black Knight's Gryphon |q 13663/1 |goto 77.8,21.6 |tip He will take you to an island.
step
Click the Stolen Tournament Invitation
|tip It looks like a flat scroll laying on top of a wooden barrel in this tiny house.
collect Stolen Tournament Invitation##45121 |q 13663/2 |goto 54.1,8.6
Click the Black Knight's Orders
|tip It looks like a rolled up scroll laying on a small wooden crate in this tiny house.
collect Black Knight's Orders##45122 |q 13663/3 |goto 54.1,8.6
step
talk Crusader Rhydalla##33417
turnin The Black Knight's Orders##13663 |goto 69.4,23.0
accept The Black Knight's Fall##13664 |goto 69.4,23.0
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Argent Warhorse |invehicle |q 13664 |goto 72.3,22.6
step
talk Squire Cavin##33522
Ask him to summon the Black Knight.
The Black Knight will run up to you on his gryphon
Fight the Black Knight
|tip This is a really easy fight, but it has 2 phases. For the first phase, use your abilities to fight him in jousting.  After you've almost killed him, he will get off his gryphon and challenge you to fight him in hand-to-hand combat.  You will automatically dismount your horse, so don't click the red arrow button.  Once you are dismounted from your horse, make sure to equip your weapon again, so you can fight him.  Then, just fight him like a normal mob and kill him.
kill The Black Knight |q 13664/1 |goto 71.3,23.2
step
talk Crusader Rhydalla##33417
turnin The Black Knight's Fall##13664 |goto 69.4,23.0
accept The Black Knight's Curse##14016 |goto 69.4,23.0
step
Stand next to the tombstone that has a purple and pink swirl around it
from Cult Assassin##35127 |tip You must stay near the tombstone for it to complete
Investigate the Black Knight's Grave |q 14016/1 |goto 79.5,23.3
step
talk Crusader Rhydalla##33417
turnin The Black Knight's Curse##14016 |goto 69.4,23.0
accept The Black Knight's Fate##14017 |goto 69.4,23.0
step
kill Doctor Kohler##35113
collect Doctor Kohler's Orders##47048 |q 14017/1 |goto 61.5,22.6
step
talk Crusader Rhydalla##33417
turnin The Black Knight's Fate##14017 |goto 69.4,23.0
step
Congratulations! You've reached the end of this section
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\The Skybreaker",{
author="support@zygorguides.com",
},[[
step
label "hub"
map Icecrown
The Skybreaker flies in a circular pattern using these points:
Point 1: 57.4,37.2
Point 2: 64.4,55.4
Find The Skybreaker flying around in the sky
|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
talk High Captain Justin Bartlett##30344
accept Capture More Dispatches##13333
step
On the Skybreaker airship:
talk Thassarian##29799
accept That's Abominable!##13289
accept Drag and Drop##13323
accept Not a Bug##13344
step
On the Skybreaker airship:
talk Absalan the Pious##31259
accept Slaves to Saronite##13300
step
On the Skybreaker airship:
talk Knight-Captain Drosche##32302
accept Blood of the Chosen##13336
step
On the Skybreaker airship:
talk Chief Engineer Boltwrench##30345
accept The Solution Solution##13292
accept Retest Now##13322
step
Use your Diluted Cult Tonic |use Diluted Cult Tonic##44307
|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar. If you lose the buff, use this again.
kill Void Summoner##32259+, Shadow Channeler##32262+
collect 10 Tainted Essence##44301 |n
Use a Tainted Essence to combine them |use Tainted Essence##44301
collect 1 Writhing Mass##44304 |q 13322 |goto Icecrown,55.2,29.1
Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
collect 5 Dark Matter##44434 |q 13344 |goto Icecrown,55.2,29.1
step
Click the Summoning Stone
Summon the Dark Messenger |q 13344/1 |goto 53.8,33.6
step
Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
Banish the Writhing Mass |q 13322/1 |goto 49.1,34.2
step
kill Bitter Initiate##32238
collect 3 Orb of Illusion##44246 |q 13323 |goto 53.9,46.1
step
Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
Drag and drop 3 Dark Subjugators |q 13323/1 |goto 54.3,45.6
step
Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222
|tip They are flying up in the air on purple dragons.
When they hit the ground, fly down and loot their bodies
|tip There are elites and grouped mobs on the ground.
collect 6 Orgrim's Hammer Dispatch##44220+ |q 13333/1 |goto 43.3,58.2
stickystart "ymirheimvrykul"
step
Talk to Saronite Mine Slaves
Tell them they're free, get out of here!
Rescue 10 Saronite Mine Slaves |q 13300/1 |goto 56.0,57.6
step
label "ymirheimvrykul"
kill Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
kill 20 Ymirheim Vrykul |q 13336/1 |goto 57.3,57.0
step
kill Hulking Abomination##31140+
collect Chilled Abomination Guts##43966 |n
Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
With your control Abomination, go to 69.1,61.6 |n
Use your Burst at the Seams ability to explode the mobs around this area |petaction Burst at the Seams
Keep repeating this process until you:
Explode 15 Icy Ghouls |q 13289/1 |goto 69.8,62.9
Explode 15 Vicious Geists |q 13289/2 |goto 69.8,62.9
Explode 15 Risen Alliance Soldiers |q 13289/3 |goto 69.8,62.9
step
Click Abandoned Armor
|tip They look like metal armor chestpieces laying on the ground around this area.
collect 3 Abandoned Armor##43616 |q 13292 |goto 69.9,64.3
Click Abandoned Helm
|tip They look like metal helmets laying on the ground around this area.
collect 3 Abandoned Helm##43610 |q 13292 |goto 69.9,64.3
Click Piles of Bones
|tip They look like small piles of bones laying on the ground around this area.
collect 3 Pile of Bones##43609 |q 13292 |goto 69.9,64.3
step
Use Smuggled Solution 3 times |use Smuggled Solution##44048
Frostbrood Skytalons Destroyed |q 13292/1 |goto 68.8,67.5
step
The Skybreaker flies in a circular pattern using these points:
Point 1: 57.4,37.2
Point 2: 64.4,55.4
Find The Skybreaker flying around in the sky
|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
talk High Captain Justin Bartlett##30344
turnin Capture More Dispatches##13333
step
On the Skybreaker airship:
talk Thassarian##29799
turnin That's Abominable!##13289
turnin Drag and Drop##13323
turnin Not a Bug##13344
step
On the Skybreaker airship:
talk Absalan the Pious##31259
turnin Slaves to Saronite##13300
step
On the Skybreaker airship:
talk Knight-Captain Drosche##32302
turnin Blood of the Chosen##13336
step
On the Skybreaker airship:
talk Chief Engineer Boltwrench##30345
turnin The Solution Solution##13292
turnin Retest Now##13322
step
You have finished these quests today. Click here to go to the beginning of this guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Ymirheim and The Valley of Lost Hope",{
author="support@zygorguides.com",
},[[
step
talk Frazzle Geargrinder##31776
accept King of the Mountain##13280 |goto Icecrown,57.0,62.6
step
Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280 |goto 57.0,62.6
step
Use your Jump Jets ability to jump up the mountain to this spot |petaction Jump Jets
|tip This spot is the peak of the mountain.
Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard
|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
Plant the Alliance Battle Standard |q 13280/1 |goto 54.9,60.1
step
Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
talk Frazzle Geargrinder##31776
turnin King of the Mountain##13280 |goto 57.0,62.5
step
talk Ground Commander Koup##31808
accept Assault by Air##13309 |goto Icecrown,62.6,51.3
step
talk Skybreaker Squad Leader##31737
accept Assault by Ground##13284 |goto Icecrown,62.5,51.1
step
Follow the Alliance troops up the mountain and help them fight
Escort the Alliance troops into Ymirheim |q 13284/1
|tip At least 4 Alliance troops must survive.
step
talk Ground Commander Koup##31808
turnin Assault by Ground##13284 |goto 62.6,51.3
step
Click the Skybreaker Suppression Turret to control the gun on the airplane |goto 62.6,50.9 |invehicle
step
You will fly off in the airplane:
Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
Drop 4 Skybreaker Infiltrators |q 13309/1
step
talk Ground Commander Koup##31808
turnin Assault by Air##13309 |goto 62.6,51.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Shadowvault Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.",
},[[
step
talk Baron Sliver##29804
accept Leave Our Mark##12995 |goto Icecrown,42.8,24.9
step
talk The Leaper##30074
accept Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
accept Vile Like Fire!##13071 |goto 43.1,25.2
step
Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069 |goto 33.0,23.9
step
Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
kill Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
Use your Ebon Blade Banner on the Jotunheim vrykul corpses |use Ebon Blade Banner##42480
Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1 |goto 33.0,27.0
step
Click a Njorndar Proto-Drake to ride it |invehicle |q 13071 |goto 27.2,39.1
step
Use your Proto-Drake abilities near the buildings around this area to:
Burn 8 Vrykul Buildings |q 13071/1 |goto 28.4,37.6
step
Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
talk Baron Sliver##29804
turnin Leave Our Mark##12995 |goto 42.8,24.9
step
talk The Leaper##30074
turnin Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
turnin Vile Like Fire!##13071 |goto 43.1,25.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Death's Rise Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.",
},[[
step
talk Setaal Darkmender##29396
accept From Their Corpses, Rise!##12813 |goto Icecrown,19.7,48.4
step
talk Aurochs Grimbane##29456
accept Intelligence Gathering##12838 |goto 19.9,48.3
step
talk Uzo Deathcaller##29405
accept No Fly Zone##12815 |goto 19.6,47.8
step
kill Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
collect Scarlet Onslaught Trunk Key##40652+ |n
Use Darkmender's Tincture on the Onslaught mobs' corpses |use Darkmender's Tincture##40587
Transform 10 Scarlet Onslaught Corpses |q 12813/1 |goto 9.6,44.3
Click Scarlet Onslaught Trunks
|tip They look like small wooden boxes on the ground around this area.
collect 5 Onslaught Intel Documents##40640 |q 12838/1 |goto 9.6,44.3
step
Use your Bone Gryphon in your bags while in Onslaught Harbor |use Bone Gryphon##40600
Ride a Bone Gryphon |invehicle |q 12815
step
Use your Bone Gryphon abilities to:
kill 10 Onslaught Gryphon Rider |q 12815/1 |goto 10.2,41.9
step
Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
step
talk Setaal Darkmender##29396
turnin From Their Corpses, Rise!##12813 |goto Icecrown,19.7,48.4
step
talk Aurochs Grimbane##29456
turnin Intelligence Gathering##12838 |goto 19.9,48.3
step
talk Uzo Deathcaller##29405
turnin No Fly Zone##12815 |goto 19.6,47.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\The Silver Covenant Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests for The Silver Covenant faction in the Argent Tournament Grounds area of Icecrown.",
},[[
step
talk Narasi Snowdawn##34880
You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
accept A Leg Up##14074 |goto Icecrown,76.3,19.6 |or 2
accept Rescue at Sea##14152 |goto Icecrown,76.3,19.6 |or 2
accept Stop The Aggressors##14140 |goto Icecrown,76.3,19.6 |or 2
accept The Light's Mercy##14077 |goto Icecrown,76.3,19.6 |or 2
accept You've Really Done It This Time, Kul##14096 |goto Icecrown,76.3,19.6 |or 2
step
talk Savinia Loresong##34912
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Breakfast Of Champions##14076 |goto 76.2,19.6 |or
accept Gormok Wants His Snobolds##14090 |goto 76.2,19.6 |or
accept What Do You Feed a Yeti, Anyway?##14112 |goto 76.2,19.6 |or
step
kill Dark Ritualist##34734+, Dark Zealot##34728+
collect 5 Black Cage Key##46895 |n
Click Black Cages
|tip They look like big sqaure cages around this area.
Rescue 4 Captive Aspirants |q 14096/2 |goto 64.0,21.5
step
Click the Black Cage
|tip It looks like big sqaure cage up on this platform.
Rescue Kul the Reckless |q 14096/1 |goto 60.8,23.2
step
Click a Bucket of Fresh Chum
|tip They looks like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14112 |goto 67.0,8.1
step
Use the Fresh Chum in your bags |use Fresh Chum##47036
kill North Sea Sharks
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14112/1 |goto 66.8,9.5
step
kill 8 Kvaldir Berserker |q 14152/1 |goto Hrothgar's Landing,50.4,49.3
kill 3 Kvaldir Harpooner |q 14152/2 |goto Hrothgar's Landing,50.4,49.3
step
Click Stolen Tallstrider Legs
|tip They look like chicken legs laying on objects and on the ground around this area.
kill Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
collect 10 Stolen Tallstrider Leg##46859 |q 14074/1 |goto 43.3,27.5
stickystart "kvaldmistbind"
step
Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870
|tip They look like dead walrus men corpses around this area.
Administer 8 Last Rites |q 14077/1 |goto 46.5,32.8
step
label "kvaldmistbind"
kill Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
Kill 10 Kvaldir |q 14080/1 |goto 46.5,32.8
step
Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
kill Deep Jormungar##34920
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14076/1 |goto The Storm Peaks,40.5,53.3
step
Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
Capture 8 Snowblind Followers |q 14090/1 |goto 42.8,81.3
step
talk Narasi Snowdawn##34880
You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
turnin A Leg Up##14074 |goto Icecrown,76.3,19.6
turnin Rescue at Sea##14152 |goto Icecrown,76.3,19.6
turnin Stop The Aggressors##14140 |goto Icecrown,76.3,19.6
turnin The Light's Mercy##14077 |goto Icecrown,76.3,19.6
turnin You've Really Done It This Time, Kul##14096 |goto Icecrown,76.3,19.6
step
talk Savinia Loresong##34912
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Breakfast Of Champions##14076 |goto 76.2,19.6
turnin Gormok Wants His Snobolds##14090 |goto 76.2,19.6
turnin What Do You Feed a Yeti, Anyway?##14112 |goto 76.2,19.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Sholazar Basin\\Sholazar Basin Pre-Quests",{
author="support@zygorguides.com",
description="This guide section contains the pre-quests to unlock the ability to complete daily quests for The Oracles and Frenzyheart Tribe factions in Sholazar Basin.",
},[[
step
talk Tamara Wobblesprocket##28568
test
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
stickystart "hardmatriarch"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
label "hardmatriarch"
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
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 10
step
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.1,79.3
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 55.0,69.1
turnin The Sapphire Queen##12534 |goto 55.0,69.1
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
stickystart "mistgorlocs"
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
label "mistgorlocs"
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
turnin Just Following Orders##12540
accept Fortunate Misunderstandings##12570
Tell him you _are ready to travel to his village now_
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 55.7,64.9
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
stickystart "shinycobra"
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
label "shinycobra"
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
stickystart "frenzyspear"
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
label "frenzyspear"
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
Follow the path inside the cave up to [72.2,57.3]
kill Artruis the Heartless |q 12581/1 |goto 70.8,58.7
|tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
Click Artruis's Phylactery that spawns after the fight
turnin A Hero's Burden##12581 |goto 70.8,58.7
If you kill Zepik the Gorloc Hunter:
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582 |goto 70.8,58.7
accept Return of the Lich Hunter##12692 |goto 70.8,58.7
If you kill Jaloot:
talk Jaloot##28667
accept Hand of the Oracles##12689 |goto 70.8,58.7
accept Return of the Friendly Dryskin##12695 |goto 70.8,58.7
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Sholazar Basin\\Frenzyheart Tribe Dailies",{
author="support@zygorguides.com",
achieveid={950},
description="This guide section will walk you through completing the daily quests for the Frenzyheart Tribe faction in Sholazar Basin.",
},[[
step
Proceeding to Prequests |next |condition rep('Frenzyheart Tribe')<=Friendly |only if rep('Frenzyheart Tribe')<=Friendly
Proceeding to Dailies |next "daily" |condition rep('Frenzyheart Tribe')>=Friendly |only if rep('Frenzyheart Tribe')>=Friendly
step
#include "A_Frenzyheart_PreQuests"
step
label "daily"
#include "A_Frenzyheart_Dailies"
step
Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests |confirm
|next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Sholazar Basin\\The Oracles Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests for the The Oracles faction in Sholazar Basin.",
},[[
step
Proceeding to Prequests |next |condition rep('The Oracles')<=Friendly |only if rep('The Oracles')<=Friendly
Proceeding to Dailies |next "daily" |condition rep('The Oracles')>=Friendly |only if rep('The Oracles')>=Friendly
step
#include "Oracles_PreQuests"
step
label "daily"
#include "Oracles_Dailies"
step
After you complete the dailies above, you will need to repeat them in order to attain Exalted
Click here to go back to the start of the dailies guide |confirm |next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Pre-quest and Dailies",{
author="support@zygorguides.com",
description="This guide section contains the quest path for the entire The Storm Peaks zone, which includes the pre-quests to unlock the daily quests in the Brunnhildar Village, Dun Niffelem (The Sons of Hodir), Frosthold, and K3 regions of The Storm Peaks.",
},[[
step
Proceeding to next step |next |only if rep('The Sons of Hodir')<=Neutral
Proceeding to Friendly |next "friendly" |only if rep('The Sons of Hodir')==Friendly
Proceeding to Honored |next "honored" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered |next "revered" |only if rep('The Sons of Hodir')>=Revered
step
#include "Hodir_Quests"
step
label "hub"
Proceeding to Friendly Dailies |next "friendly" |only if rep('The Sons of Hodir')<=Friendly
Proceeding to Honored Dailies |next "honored" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered Dailies |next "revered" |only if rep('The Sons of Hodir')>=Revered
step
label "friendly"
click Hodir's Helm##192080
accept Polishing the Helm##13006 |goto The Storm Peaks,64.2,59.2
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
step
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
click Hodir's Helm##192080
turnin Polishing the Helm##13006 |goto 64.2,59.2
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
click Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect. If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |n
|tip You turn these in in multiples of 10. |goto 67.0,45.1
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn##7352
turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
|next "hub"
step
label "honored"
talk Lorekeeper Randvir##30252
accept Raising Hodir's Spear##13001 |goto The Storm Peaks,64.8,59.1
step
kill Stoic Mammoth##30260+
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 59.0,61.2
step
The entrance to the cave starts here |goto 55.9,64.2,0.5 |c |q 13001
step
click Everfrost Shard##192191
collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.7,60.8
step
Leave the cave |goto 55.9,64.2 < 10 |q 13001
step
talk Lorekeeper Randvir##30252
turnin Raising Hodir's Spear##13001 |goto 64.8,59.1
|tip This quest will unlock the Thrusting Hodir's Spear daily quest.
step
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept Polishing the Helm##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept Thrusting Hodir's Spear##13003 |goto 65.1,60.8
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
stickystart "viscousoil"
stickystart "wildwyrm"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
label "viscousoil"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
label "wildwyrm"
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin Polishing the Helm##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin Thrusting Hodir's Spear##13003 |goto 65.1,60.8
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
|next "hub"
step
label "revered"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept Polishing the Helm##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept Thrusting Hodir's Spear##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
accept Feeding Arngrim##13046 |goto 67.6,59.9
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn |tip It's a huge bone war horn.
accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
stickystart "arngrimsspirit"
stickystart "viscousslime"
stickystart "spearhodir"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
label "arngrimsspirit"
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
step
label "viscousslime"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
label "spearhodir"
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin Polishing the Helm##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin Thrusting Hodir's Spear##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
turnin Feeding Arngrim##13046 |goto 67.6,59.9
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
Click here to return to the beginning of the Dailies |confirm
|next "hub" |only if rep('The Sons of Hodir')<=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\Brunnhildar, K-3 and Frosthold Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.",
},[[
step
label "hub"
talk Gretta the Arbiter##29796
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept Back to the Pit##13424 |goto The Storm Peaks,50.9,65.6 |or
accept Defending Your Title##13423 |goto The Storm Peaks,50.9,65.6 |or
accept Maintaining Discipline##13422 |goto The Storm Peaks,50.9,65.6 |or
accept The Aberrations Must Die##13425 |goto The Storm Peaks,50.9,65.6 |or
stickystart "victoriouschallenger"
step
Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Icemaw Matriarch##42499
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear |q 13424/1 |goto 49.4,67.6
step
label "victoriouschallenger"
talk Victorious Challenger##30012
kill 6 Victorious Challenger |q 13423/1 |goto 50.4,67.5
step
The entrance to the Forlorn Mine is here |goto 47.1,68.5 < 10 |q 13422
step
Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837
|tip They are sitting on the ground inside these side tunnels inside this mine.
Discipline 6 Exhausted Vrykul |q 13422/1 |goto 44.9,70.1
step
Leave the mine |goto 47.1,68.5 < 10 |q 13422
step
kill Valkyrion Aspirant##29569+
collect 6 Vial of Frost Oil##41612 |q 13425 |goto 27.3,63.7
step
Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
|tip They look like brown spiked eggs sitting in the yellow water around this area.
Try to get 6 at a time
Destroy 30 Plagued Proto-Drake Eggs |q 13425/1 |goto 23.7,58.3
step
talk Gretta the Arbiter##29796
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin Back to the Pit##13424 |goto 50.9,65.6
turnin Defending Your Title##13423 |goto 50.9,65.6
turnin Maintaining Discipline##13422 |goto 50.9,65.6
turnin The Aberrations Must Die##13425 |goto 50.9,65.6
step
talk Fjorlin Frostbrow##29732
accept Pushed Too Far##12869 |goto The Storm Peaks,29.8,75.7
step
Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
kill 16 Stormpeak Wyrm |q 12869/1 |goto 44.6,59.8
step
Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
talk Fjorlin Frostbrow##29732
turnin Pushed Too Far##12869 |goto 29.8,75.7
step
talk Ricket##29428
accept Overstock##12833 |goto The Storm Peaks,40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Invader |q 12833/1 |goto 43.1,81.2
step
talk Ricket##29428
turnin Overstock##12833 |goto 40.9,85.3
step
You have reached the end of the dailies guide. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Zul'Drak\\The Argent Stand Dailies and Pre-Quests",{
author="support@zygorguides.com",
description="This guide section contains the pre-quests and dailies for Argent Stand.",
},[[
#include "ArgentT_Quests"
step
label "daily"
The Zul'Drak daily quests are timed, so having an epic flying mount will help you get them done a lot faster and easier.  You will receive 650 extra Argent Crusade reputation and 18 extra gold by completing these quests within 20 minutes
|confirm
step
talk Commander Kunz##28039
accept Troll Patrol##12587 |goto Zul'Drak,40.3,66.6 |or
accept Troll Patrol##12563 |goto Zul'Drak,40.3,66.6 |or
accept Troll Patrol##12501 |goto Zul'Drak,40.3,66.6 |or
step
talk Alchemist Finklestein##28205
accept Troll Patrol: The Alchemist's Apprentice##12541
Tell Alchemist Finklestein you are ready to begin
Some of the items he asks you for can be found in both of the rooms on either side of you.  Those items are:
|tip Hairy Herring Heads, Icecrown Bottled Water, Knotroot, Muddy Mire Maggots, Pickled Eagle Egg, Pulverized Gargoyle Teeth, Putrid Pirate Perspiration, Seasoned Cider Slider, Speckled Guano, Spiky Spider Eggs, Withered Bat Wings
Here are the items that are only found in the ROOM ON THE LEFT:
|tip Abomination Guts, Blight Crystal, Chilled Serpent Mucus, Crushed Basilisk Crystals, Frozen Spider Ichor, Prismatic Mojo, Raptor Claw
Here are the items that are only found in the ROOM ON THE RIGHT:
|tip Amberseed, Ancient Ectoplasm, Crystallized Hogsnot, Ghoul Drool, Trollbane, Shrunken Dragon's Claw, Wasp's Wings
Collect the item's he calls for and bring them back to him and click Finklestein's Cauldron to add the items he needs
Create the Truth Serum |q 12541/1 |goto 35.0,52.1
|tip This quest will be MUCH easier and faster once you start to remember where each item is.
step
talk Alchemist Finklestein##28205
turnin Troll Patrol: The Alchemist's Apprentice##12541 |goto 35.0,52.1
step
talk Captain Grondel##28043
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Troll Patrol: Couldn't Care Less##12594 |goto 48.1,63.9 |or
accept Troll Patrol: Creature Comforts##12585 |goto 48.1,63.9 |or
accept Troll Patrol: Whatdya Want, a Medal?##12519 |goto 48.1,63.9 |or
stickystart "mossyrampagers"
stickystart "drakkaricorpse"
step
Click Dead Thornwoods
|tip They look like curved thorny roots coming out of the water around this area.
collect 20 Dead Thornwood##38563 |q 12585/1 |goto 46.0,61.8
step
label "drakkaricorpse"
Click Drakkari Corpses
|tip They look like dead blue trolls laying on the ground around this area.
collect 7 Drakkari Medallion##38333 |q 12519/1 |goto 45.6,62.7
step
label "mossyrampagers"
kill Mossy Rampager##28323+
Kill 7 Mossy Rampagers |q 12594/1 |goto 45.4,61.2
step
talk Captain Grondel##28043
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Troll Patrol: Couldn't Care Less##12594 |goto 48.1,63.9
turnin Troll Patrol: Creature Comforts##12585 |goto 48.1,63.9
turnin Troll Patrol: Whatdya Want, a Medal?##12519 |goto 48.1,63.9
step
talk Captain Rupert##28044
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Troll Patrol: Done to Death##12568 |goto 58.1,72.4 |or
accept Troll Patrol: Intestinal Fortitude##12509 |goto 58.1,72.4 |or
accept Troll Patrol: Throwing Down##12591 |goto 58.1,72.4 |or
step
Use your Incinerating Oil on Defeated Argent Footmen |use Incinerating Oil##38556
|tip They look like dead soldiers laying on the ground around this area.
Incinerate 5 Argent Footman Corpses |q 12568/1 |goto 56.0,70.8
step
talk Crusade Recruit##28090
Tell them to get out of there
Restore 5 Recruit's Courage |q 12509/1 |goto 51.6,75.1
step
Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574
|tip They look like squarish pyramid dirt mounds around this area.
Seal 5 Nerubian Tunnels |q 12591/1 |goto 53.4,68.7
step
talk Captain Rupert##28044
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Troll Patrol: Done to Death##12568 |goto 58.1,72.4
turnin Troll Patrol: Intestinal Fortitude##12509 |goto 58.1,72.4
turnin Troll Patrol: Throwing Down##12591 |goto 58.1,72.4
step
talk Captain Brandon##28042
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Troll Patrol: Can You Dig It?##12588 |goto 48.8,78.9 |or
accept Troll Patrol: High Standards##12502 |goto 48.8,78.9 |or
accept Troll Patrol: Something for the Pain##12564 |goto 48.8,78.9 |or
stickystart "maturewater"
step
Use your Steel Spade next to the dirt piles |use Steel Spade##38566
|tip The dirt piles look like big purple-ish mounds of dirt around this area.
Investigate 5 Ancient Dirt Mounds |q 12588/1 |goto 46.8,80.3
step
Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
Plant the South Argent Crusade Banner |q 12502/1 |goto 52.5,76.5
step
Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
Plant the East Argent Crusade Banner |q 12502/3 |goto 53.3,72.2
step
Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
Plant the North Argent Crusade Banner |q 12502/2 |goto 50.6,73.0
step
label "maturewater"
Click the Mature Water-Poppy plants
|tip They look like tall white-leaved plants with purple bulbs at the top.
collect 5 Mature Water-Poppy##38552 |q 12564/1 |goto 45.6,79.3
step
talk Captain Brandon##28042
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Troll Patrol: Can You Dig It?##12588 |goto 48.8,78.9
turnin Troll Patrol: High Standards##12502 |goto 48.8,78.9
turnin Troll Patrol: Something for the Pain##12564 |goto 48.8,78.9
step
talk Commander Kunz##28039
turnin Troll Patrol##12563 |goto Zul'Drak,40.3,66.6
turnin Troll Patrol##12587 |goto Zul'Drak,40.3,66.6
turnin Troll Patrol##12501 |goto Zul'Drak,40.3,66.6
autoscript ZGV.completioninterval=5
step
talk Commander Kunz##28039
accept Congratulations!##12604 |instant |goto 40.3,66.6
|tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
step
You have finished the Argent Stand Dailies, click here to retrun to the beginning of the Dailies Guide |confirm |next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Human Champion Rank",{
author="support@zygorguides.com",
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Human.",
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
|tip You must also have become champion of your race.
Once you Champion your faction, you will gain access to Championing other factions
You cannot complete this section if you are a Human
Click here to continue |confirm
step
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
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills,61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13600 |goto Icecrown,69.1,76.2
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
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
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |goto 49.1,71.4 |outvehicle |q 13847
step
kill 10 Converted Hero##32255 |q 13592/1 |goto 44.3,54.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13665 |goto 76.1,20.5
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13699/1 |goto 68.6,21.0
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Challenge##13699 |goto 76.6,19.2
step
Congratulations, you are now a Champion of Stormwind!
|tip This is the end of the Human Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Night Elf Champion Rank",{
author="support@zygorguides.com",
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Night Elf.",
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
|tip You must also have become champion of your race.
Once you Champion your faction, you will gain access to Championing other factions
You cannot complete this section if you are a Night Elf
Click here to continue |confirm
step
talk Jaelyne Evensong##33592
accept Valiant Of Darnassus##13706 |goto Icecrown,76.3,19.0
turnin Valiant Of Darnassus##13706 |goto Icecrown,76.3,19.0
accept The Valiant's Charge##13717 |goto Icecrown,76.3,19.0
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
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
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
Fight and defeat them |tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto 75.3,18.5
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again. Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13725/1 |goto 68.6,21.0
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13725 |goto 76.3,19.1
step
Congratulations, you are now a Champion of Darnassus!
|tip This is the end of the Night Elf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Dwarf Champion Rank",{
author="support@zygorguides.com",
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Dwarf.",
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
|tip You must also have become champion of your race.
Once you Champion your faction, you will gain access to Championing other factions
You cannot complete this section if you are a Dwarf
Click here to continue |confirm
step
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
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto 75.3,18.5
step
kill 10 Converted Hero##32255 |q 13744/1 |goto 44.3,54.2
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13851/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13851/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13851/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
|tip Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13713/1 |goto 68.6,21.0
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13713 |goto 76.3,19.1
step
Congratulations, you are now a Champion of Ironforge! |tip This is the end of the Dwarf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Gnome Champion Rank",{
author="support@zygorguides.com",
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Gnome.",
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
|tip You must also have become champion of your race.
Once you Champion your faction, you will gain access to Championing other factions
You cannot complete this section if you are a Gnome
Click here to continue |confirm
step
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
get Winter's Edge |q 13748/1 |goto Howling Fjord,42.2,19.7
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13852 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13852/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13852/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13852/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again. Keep repeating this process until he is defeated
Defeat the Argent Valiant |q 13723/1 |goto 68.6,21.0
step
talk Ambrose Boltspark##33335
turnin The Valiant's Challenge##13723 |goto 76.5,19.8
step
Congratulations, you are now a Champion of Gnomeregan!
|tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Draenei Champion Rank",{
author="support@zygorguides.com",
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Draenei.",
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
|tip You must also have become champion of your race.
Once you Champion your faction, you will gain access to Championing other factions
You cannot complete this section if you are a Draenei
Click here to continue |confirm
step
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
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord,42.2,19.7
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13854 |goto Icecrown,48.9,71.4
step
kill 15 Boneguard Footman |q 13854/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13854/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13854/3 |goto 50.1,74.8
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13724/1 |goto 68.6,21.0
step
talk Colosos##33593
turnin The Valiant's Challenge##13724 |goto 76.1,19.2
step
Congratulations, you are now a Champion of The Exodar!
|tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (No ATG Dailies)",{
author="support@zygorguides.com",
description="This guide section will walk you through a 25 daily quest speed gold run at level 80, without including any Argent Tournament Grounds dailies. To be able to complete all the quests in this guide section, you must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored), and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.",
},[[
step
talk Ricket##29428
accept Overstock##12833 |goto The Storm Peaks,40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Invader##29619 |q 12833/1 |goto 43.1,81.2
step
talk Ricket##29428
turnin Overstock##12833 |goto 40.9,85.3
step
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto 63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept Polishing the Helm##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept Thrusting Hodir's Spear##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
accept Feeding Arngrim##13046 |goto 67.6,59.9
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 57.2,64.0
step
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin Polishing the Helm##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin Thrusting Hodir's Spear##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
turnin Feeding Arngrim##13046 |goto 67.6,59.9
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
step
map Icecrown
The Skybreaker flies in a circular pattern using these points:
Point 1: 57.4,37.2
Point 2: 64.4,55.4
Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
talk High Captain Justin Bartlett##30344
accept Capture More Dispatches##13333
step
On the Skybreaker airship:
talk Thassarian##29799
accept That's Abominable!##13289
accept Drag and Drop##13323
accept Not a Bug##13344
step
On the Skybreaker airship:
talk Absalan the Pious##31259
accept Slaves to Saronite##13300
step
On the Skybreaker airship:
talk Knight-Captain Drosche##32302
accept Blood of the Chosen##13336
step
On the Skybreaker airship:
talk Chief Engineer Boltwrench##30345
accept The Solution Solution##13292
accept Retest Now##13322
step
talk Ground Commander Koup##31808
accept Assault by Air##13309 |goto 62.6,51.3
step
Click the Skybreaker Suppression Turret to control the gun on the airplane |invehicle |goto 62.6,50.9
step
You will fly off in the airplane:
Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
Drop 4 Skybreaker Infiltrators |q 13309/1
step
talk Ground Commander Koup##31808
turnin Assault by Air##13309 |goto 62.6,51.3
step
talk Skybreaker Squad Leader##31737
accept Assault by Ground##13284 |goto 62.5,51.1
step
Follow the Alliance troops up the mountain and help them fight
Escort the Alliance troops into Ymirheim |q 13284/1
|tip At least 4 Alliance troops must survive.
step
The entrance to the cave starts here, go inside the cave |goto 57.0,57.3 < 10 |q 13300
step
Talk to Saronite Mine Slaves
Tell them they're free, get out of here!
Rescue 10 Saronite Mine Slaves |q 13300/1 |goto 56.0,57.6
step
Go outside the cave |goto 57.0,57.3 < 10 |q 13300
step
kill Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
kill 20 Ymirheim Vrykul |q 13336/1 |goto 57.3,57.0
step
talk Frazzle Geargrinder##31776
accept King of the Mountain##13280 |goto 57.0,62.6
step
Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280 |goto 57.0,62.6
step
Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets
|tip This spot is the peak of the mountain.
Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard
|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
Plant the Alliance Battle Standard |q 13280/1 |goto 54.9,60.1
step
Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
talk Frazzle Geargrinder##31776
turnin King of the Mountain##13280 |goto 57.0,62.5
step
talk Ground Commander Koup##31808
turnin Assault by Ground##13284 |goto 62.6,51.3
step
Click Abandoned Armor
|tip They look like metal armor chestpieces laying on the ground around this area.
collect 3 Abandoned Armor##43616 |q 13292 |goto 69.9,64.3
Click Abandoned Helm
|tip They look like metal helmets laying on the ground around this area.
collect 3 Abandoned Helm##43610 |q 13292 |goto 69.9,64.3
Click Piles of Bones
|tip They look like small piles of bones laying on the ground around this area.
collect 3 Pile of Bones##43609 |q 13292 |goto 69.9,64.3
step
Use your Smuggled Solution 3 times |use Smuggled Solution##44048
Destroy 3 Frostbrood Skytalons |q 13292/1 |goto 68.8,67.5
step
kill Hulking Abomination##31140+
collect Chilled Abomination Guts##43966 |n
Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
With your control Abomination, go to 69.1,61.6 |n
Use your Burst at the Seams ability to explode the mobs around this area
Keep repeating this process until you:
Explode 15 Icy Ghouls |q 13289/1 |goto 69.8,62.9
Explode 15 Vicious Geists |q 13289/2 |goto 69.8,62.9
Explode 15 Risen Alliance Soldiers |q 13289/3 |goto 69.8,62.9
step
Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222
|tip They are flying up in the air on purple dragons.
When they hit the ground, fly down and loot their bodies
|tip There are elites and grouped mobs on the ground.
collect 6 Orgrim's Hammer Dispatch##44220 |q 13333/1 |goto 43.3,58.2
step
kill Bitter Initiate##32238
collect 3 Orb of Illusion##44246 |q 13323 |goto 53.9,46.1
step
Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
Drag and drop 3 Dark Subjugators |q 13323/1 |goto 54.3,45.6
step
Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307
|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar. If you lose the buff, use this again.
kill Void Summoner##32259+, Shadow Channeler##32262+
collect 10 Tainted Essence##44301 |n
Use a Tainted Essence to combine them |use Tainted Essence##44301
collect 1 Writhing Mass##44304 |q 13322 |goto 55.2,29.1
Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
collect 5 Dark Matter##44434 |q 13344 |goto 55.2,29.1
step
Click the Summoning Stone
Summon the Dark Messenger |q 13344/1 |goto 53.8,33.6
step
Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
Banish the Writhing Mass |q 13322/1 |goto 49.1,34.2
step
talk Baron Sliver##29804
accept Leave Our Mark##12995 |goto 42.8,24.9
step
talk The Leaper##30074
accept Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
accept Vile Like Fire!##13071 |goto 43.1,25.2
step
Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069 |goto 33.0,23.9
step
Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
kill Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
Use your Ebon Blade Banner on the Jotunheim vrykul corpses |use Ebon Blade Banner##42480
Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1 |goto 33.0,27.0
step
Click a Njorndar Proto-Drake to ride it |invehicle |q 13071 |goto 27.2,39.1
step
Use your Proto-Drake abilities near the buildings around this area to:
Burn 8 Vrykul Buildings |q 13071/1 |goto 28.4,37.6
step
Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
talk Setaal Darkmender##29396
accept From Their Corpses, Rise!##12813 |goto 19.7,48.4
step
talk Aurochs Grimbane##29456
accept Intelligence Gathering##12838 |goto 19.9,48.3
step
talk Uzo Deathcaller##29405
accept No Fly Zone##12815 |goto 19.6,47.8
step
kill Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
collect Scarlet Onslaught Trunk Key##40652+|n
Use Darkmender's Tincture on the Onslaught mobs' corpses |use Darkmender's Tincture##40587
Transform 10 Scarlet Onslaught Corpses |q 12813/1 |goto 9.6,44.3
Click Scarlet Onslaught Trunks
|tip They look like small wooden boxes on the ground around this area.
collect 5 Onslaught Intel Documents##40640 |q 12838/1 |goto 9.6,44.3
step
Use your Bone Gryphon in your bags while in Onslaught Harbor |use Bone Gryphon##40600
Ride a Bone Gryphon |invehicle |q 12815
step
Use your Bone Gryphon abilities to:
kill 10 Onslaught Gryphon Rider |q 12815/1 |goto 10.2,41.9
step
Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
step
talk Setaal Darkmender##29396
turnin From Their Corpses, Rise!##12813 |goto Icecrown,19.7,48.4
step
talk Aurochs Grimbane##29456
turnin Intelligence Gathering##12838 |goto 19.9,48.3
step
talk Uzo Deathcaller##29405
turnin No Fly Zone##12815 |goto 19.6,47.8
step
talk Baron Sliver##29804
turnin Leave Our Mark##12995 |goto 42.8,24.9
step
talk The Leaper##30074
turnin Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
turnin Vile Like Fire!##13071 |goto 43.1,25.2
step
The Skybreaker flies in a circular pattern using these points:
Point 1: 57.4,37.2
Point 2: 64.4,55.4
Find The Skybreaker flying around in the sky
|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
talk High Captain Justin Bartlett##30344
turnin Capture More Dispatches##13333
step
On the Skybreaker airship:
talk Thassarian##29799
turnin That's Abominable!##13289
turnin Drag and Drop##13323
turnin Not a Bug##13344
step
On the Skybreaker airship:
talk Absalan the Pious##31259
turnin Slaves to Saronite##13300
step
On the Skybreaker airship:
talk Knight-Captain Drosche##32302
turnin Blood of the Chosen##13336
step
On the Skybreaker airship:
talk Chief Engineer Boltwrench##30345
turnin The Solution Solution##13292
turnin Retest Now##13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (With ATG Dailies)",{
author="support@zygorguides.com",
description="This guide section will walk you through a 25 daily quest speed gold run at level 80. To be able to complete all the quests in this guide section, you must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored), and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.",
},[[
step
talk Narasi Snowdawn##34880
You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
accept A Leg Up##14074 |goto Icecrown,76.3,19.6 |or 2
accept Rescue at Sea##14152 |goto Icecrown,76.3,19.6 |or 2
accept Stop The Aggressors##14080 |goto Icecrown,76.3,19.6 |or 2
accept The Light's Mercy##14077 |goto Icecrown,76.3,19.6 |or 2
accept You've Really Done It This Time, Kul##14096 |goto Icecrown,76.3,19.6 |or 2
step
talk Savinia Loresong##34912
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Breakfast Of Champions##14076 |goto 76.2,19.6 |or
accept Gormok Wants His Snobolds##14090 |goto 76.2,19.6 |or
accept What Do You Feed a Yeti, Anyway?##14112 |goto 76.2,19.6 |or
step
talk Zor'be the Bloodletter##33769
accept Taking Battle To The Enemy##13791 |goto 73.8,19.4
only DeathKnight
step
talk Crok Scourgebane##33762
accept Threat From Above##13788
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13864 |goto 73.8,20.1
only DeathKnight
step
talk Illyrie Nightfall##33770
accept Among the Champions##13793 |goto 73.6,20.1
only DeathKnight
step
talk Luuri##33771
accept Among the Champions##13790 |goto 69.9,23.3
only if not DeathKnight
step
talk Eadric the Pure##33759
accept Threat From Above##13682 |goto 70.0,23.4
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13861 |goto 70.0,23.4
only if not DeathKnight
step
talk Cellian Daybreak##33763
accept Taking Battle To The Enemy##13789 |goto 69.9,23.5
only if not DeathKnight
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept Deathspeaker Kharos##14105 |goto 69.5,23.1 |or
accept Drottinn Hrothgar##14101 |goto 69.5,23.1 |or
accept Mistcaller Yngvar##14102 |goto 69.5,23.1 |or
accept Ornolf The Scarred##14104 |goto 69.5,23.1 |or
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
accept Get Kraken!##14108 |goto 69.5,23.1 |or
accept The Fate Of The Fallen##14107 |goto 69.5,23.1 |or
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13790 |goto 71.7,22.4
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13790 |goto 71.8,22.5
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13790 |goto 71.6,22.4
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790 |goto 71.6,22.5
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790 |goto 71.9,22.5
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
collect 4 Mark of the Champion##23206 |q 13790/1 |goto 71.6,23.8
only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only if not DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13793 |goto 71.7,22.4
only Draenei DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13793 |goto 71.8,22.5
only Dwarf DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13793 |goto 71.6,22.4
only Human DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793 |goto 71.6,22.5
only NightElf DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793 |goto 71.9,22.5
only Gnome DeathKnight
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
get 4 Mark of the Champion |q 13793/1 |goto 71.6,23.8
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13793
only DeathKnight
step
Click a Bucket of Fresh Chum
|tip They looks like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14112 |goto 66.9,8.1
step
Use the Fresh Chum in your bags |use Fresh Chum##47036
from North Sea Blue Sharks
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14112/1 |goto 66.8,9.5
step
kill 8 Kvaldir Berserker |q 14152/1 |goto Hrothgar's Landing,50.6,49.4
kill 3 Kvaldir Harpooner |q 14152/2 |goto Hrothgar's Landing,50.6,49.4
step
Click Stolen Tallstrider Legs
|tip They look like chicken legs laying on objects and on the ground around this area.
from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
get 10 Stolen Tallstrider Leg |q 14074/1 |goto 43.3,27.5
step
from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
Kill 10 Kvaldir |q 14080/1 |goto 46.5,32.8
step
Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870
|tip They look like dead walrus men corpses around this area.
Administer 8 Last Rites |q 14077/1 |goto 46.5,32.8
step
Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
kill Mistcaller Yngvar |q 14102/1 |goto Hrothgar's Landing,43.9,24.3
step
Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
kill Drottinn Hrothgar |q 14101/1 |goto Hrothgar's Landing,50.7,15.4
step
Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
kill Ornolf the Scarred |q 14104/1 |goto Hrothgar's Landing,58.5,31.6
step
Click a Stabled Argent Hippogryph to ride it
Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
kill 6 Kvaldir Deepcaller |q 14108/2 |goto Icecrown,69.8,22.2
Hurl Spears at 6 North Sea Kraken |q 14108/1 |goto Icecrown,69.8,22.2
step
kill Deathspeaker Kharos |q 14105/1 |goto 64.2,21.4
|tip He's standing in a small pit area.
step
kill Dark Ritualist##34734+, Dark Zealot##34728+
collect 4 Black Cage Key##46895 |n
Click Black Cages
|tip They look like big sqaure cages around this area.
Rescue 4 Captive Aspirants |q 14096/2 |goto 64.0,21.5
step
kill Dark Ritualist##34734+, Dark Zealot##34728+
collect 1 Black Cage Key##46895 |q 14096 |goto 64.0,21.5
step
Click the Black Cage
|tip It looks like big sqaure cage up on this platform.
Rescue Kul the Reckless |q 14096/1 |goto 60.8,23.2
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13791/1 |goto 64.3,21.4
only DeathKnight
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13789/1 |goto 64.3,21.4
only if not DeathKnight
step
The Skybreaker flies in a circular pattern using these points:
Point 1: 57.4,37.2
Point 2: 64.4,55.4
Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
talk High Captain Justin Bartlett##30344
accept Capture More Dispatches##13333
step
On the Skybreaker airship:
talk Thassarian##29799
accept That's Abominable!##13289
accept Drag and Drop##13323
accept Not a Bug##13344
step
On the Skybreaker airship:
talk Absalan the Pious##31259
accept Slaves to Saronite##13300
step
On the Skybreaker airship:
talk Knight-Captain Drosche##32302
accept Blood of the Chosen##13336
step
On the Skybreaker airship:
talk Chief Engineer Boltwrench##30345
accept The Solution Solution##13292
accept Retest Now##13322
step
talk Ground Commander Koup##31808
accept Assault by Air##13309 |goto 62.6,51.3
step
Click the Skybreaker Suppression Turret to control the gun on the airplane |invehicle |goto 62.6,50.9
step
You will fly off in the airplane:
Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
Drop 4 Skybreaker Infiltrators |q 13309/1
step
talk Ground Commander Koup##31808
turnin Assault by Air##13309 |goto 62.6,51.3
step
talk Skybreaker Squad Leader##31737
accept Assault by Ground##13284 |goto 62.5,51.1
step
Follow the Alliance troops up the mountain and help them fight
Escort the Alliance troops into Ymirheim |q 13284/1
|tip At least 4 Alliance troops must survive.
step
The entrance to the cave starts here, go inside the cave |goto 57.0,57.3 < 10 |q 13300
step
Talk to Saronite Mine Slaves
Tell them they're free, get out of here!
Rescue 10 Saronite Mine Slaves |q 13300/1 |goto 56.0,57.6
step
Go outside the cave |goto 57.0,57.3 < 10 |q 13300
step
kill Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
kill 20 Ymirheim Vrykul |q 13336/1 |goto 57.3,57.0
step
talk Frazzle Geargrinder##31776
accept King of the Mountain##13280 |goto 57.0,62.6
step
Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280 |goto 57.0,62.6
step
Use your Jump Jets ability to jump up the mountain to this spot |petaction Jump Jets |tip This spot is the peak of the mountain.
Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard
|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
Plant the Alliance Battle Standard |q 13280/1 |goto 54.9,60.1
step
Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
talk Frazzle Geargrinder##31776
turnin King of the Mountain##13280 |goto 57.0,62.5
step
talk Ground Commander Koup##31808
turnin Assault by Ground##13284 |goto 62.6,51.3
step
Click Abandoned Armor
|tip They look like metal armor chestpieces laying on the ground around this area.
collect 3 Abandoned Armor##43616 |q 13292 |goto 69.9,64.3
Click Abandoned Helm
|tip They look like metal helmets laying on the ground around this area.
collect 3 Abandoned Helm##43610 |q 13292 |goto 69.9,64.3
Click Piles of Bones
|tip They look like small piles of bones laying on the ground around this area.
collect 3 Pile of Bones##43609 |q 13292 |goto 69.9,64.3
step
Use your Smuggled Solution 3 times |use Smuggled Solution##44048
Destroy 3 Frostbrood Skytalons |q 13292/1 |goto 68.8,67.5
step
kill Hulking Abomination##31140+
collect Chilled Abomination Guts##43966 |n
Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
With your control Abomination, go to 69.1,61.6 |n
Use your Burst at the Seams ability to explode the mobs around this area
Keep repeating this process until you:
Explode 15 Icy Ghouls |q 13289/1 |goto 69.8,62.9
Explode 15 Vicious Geists |q 13289/2 |goto 69.8,62.9
Explode 15 Risen Alliance Soldiers |q 13289/3 |goto 69.8,62.9
step
Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222
|tip They are flying up in the air on purple dragons.
When they hit the ground, fly down and loot their bodies
|tip There are elites and grouped mobs on the ground.
collect 6 Orgrim's Hammer Dispatch##44220 |q 13333/1 |goto 43.3,58.2
step
kill Bitter Initiate##32238
collect 3 Orb of Illusion##44246 |q 13323 |goto 53.9,46.1
step
Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
Drag and drop 3 Dark Subjugators |q 13323/1 |goto 54.3,45.6
step
Click Discarded Soul Crystals
|tip They look like small blue-glowing crystals laying on the ground around this area.
collect 6 Discarded Soul Crystal##47035 |n
Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
Bless 6 Fallen Hero's Spirits |q 14107/1 |goto 51.1,38.4
step
Use your Diluted Cult Tonic |use Diluted Cult Tonic##44307
|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
kill Void Summoner##32259+, Shadow Channeler##32262+
collect 10 Tainted Essence##44301 |n
Use a Tainted Essence to combine them |use Tainted Essence##44301
collect 1 Writhing Mass##44304 |q 13322 |goto 55.2,29.1
Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
collect 5 Dark Matter##44434 |q 13344 |goto 55.2,29.1
step
Click the Summoning Stone
Summon the Dark Messenger |q 13344/1 |goto 53.8,33.6
step
Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
Banish the Writhing Mass |q 13322/1 |goto 49.1,34.2
step
talk Baron Sliver##29804
accept Leave Our Mark##12995 |goto 42.8,24.9
step
talk The Leaper##30074
accept Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
accept Vile Like Fire!##13071 |goto 43.1,25.2
step
Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069 |goto 33.0,23.9
step
Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
kill Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
Use your Ebon Blade Banner on the Jotunheim vrykul corpses |use Ebon Blade Banner##42480
Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1 |goto 33.0,27.0
step
Click a Njorndar Proto-Drake to ride it |invehicle |q 13071 |goto 27.2,39.1
step
Use your Proto-Drake abilities near the buildings around this area to:
Burn 8 Vrykul Buildings |q 13071/1 |goto 28.4,37.6
step
Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
talk Baron Sliver##29804
turnin Leave Our Mark##12995 |goto 42.8,24.9
step
talk The Leaper##30074
turnin Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
turnin Vile Like Fire!##13071 |goto 43.1,25.2
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw |q 13788/1 |goto 44.1,32.6
|tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier |q 13788/2 |goto 44.1,32.6
only DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13864 |goto 48.9,71.4
only DeathKnight
step
kill 3 Boneguard Commander |q 13864/1 |goto 50.1,74.8
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13864 |goto 48.9,71.4
only DeathKnight
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only if not DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw |q 13682/1 |goto 44.1,32.6
|tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier |q 13682/2 |goto 44.1,32.6
only if not DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13861 |goto 48.9,71.4
only if not DeathKnight
step
kill 3 Boneguard Commander |q 13861/1 |goto 50.1,74.8
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13861 |goto 48.9,71.4
only if not DeathKnight
step
The Skybreaker flies in a circular pattern using these points:
Point 1: 57.4,37.2
Point 2: 64.4,55.4
Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
talk High Captain Justin Bartlett##30344
turnin Capture More Dispatches##13333
step
On the Skybreaker airship:
alk Thassarian##29799
turnin That's Abominable!##13289
turnin Drag and Drop##13323
turnin Not a Bug##13344
step
On the Skybreaker airship:
talk Absalan the Pious##31259
turnin Slaves to Saronite##13300
step
On the Skybreaker airship:
talk Knight-Captain Drosche##32302
turnin Blood of the Chosen##13336
step
On the Skybreaker airship:
talk Chief Engineer Boltwrench##30345
turnin The Solution Solution##13292
turnin Retest Now##13322
step
talk Luuri##33771
turnin Among the Champions##13790 |goto 69.9,23.3
only if not DeathKnight
step
talk Eadric the Pure##33759
turnin Threat From Above##13682 |goto 70.0,23.4
turnin Battle Before The Citadel##13861 | goto 70.0,23.4
only if not DeathKnight
step
talk Cellian Daybreak##33763
turnin Taking Battle To The Enemy##13789 |goto 69.9,23.5
only if not DeathKnight
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin Deathspeaker Kharos##14105 |goto 69.5,23.1
turnin Drottinn Hrothgar##14101 |goto 69.5,23.1
turnin Mistcaller Yngvar##14102 |goto 69.5,23.1
turnin Ornolf The Scarred##14104 |goto 69.5,23.1
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
turnin Get Kraken!##14108 |goto 69.5,23.1
turnin The Fate Of The Fallen##14107 |goto 69.5,23.1
step
talk Zor'be the Bloodletter##33769
turnin Taking Battle To The Enemy##13791 |goto 73.8,19.4
only DeathKnight
step
talk Crok Scourgebane##33762
turnin Threat From Above##13788 |goto 73.8,20.1
turnin Battle Before The Citadel##13864 |goto 73.8,20.1
only DeathKnight
step
talk Illyrie Nightfall##33770
turnin Among the Champions##13793 |goto 73.6,20.1
only DeathKnight
step
Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
kill Deep Jormungar##34920
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14076/1 |goto The Storm Peaks,40.5,53.3
step
Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
Capture 8 Snowblind Followers |q 14090/1 |goto The Storm Peaks,42.8,81.3
step
talk Narasi Snowdawn##34880
You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
turnin A Leg Up##14074 |goto Icecrown,76.3,19.6
turnin Rescue at Sea##14152 |goto Icecrown,76.3,19.6
turnin Stop The Aggressors##14140 |goto Icecrown,76.3,19.6
turnin The Light's Mercy##14077 |goto Icecrown,76.3,19.6
turnin You've Really Done It This Time, Kul##14096 |goto Icecrown,76.3,19.6
step
talk Savinia Loresong##34912
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Breakfast Of Champions##14076 |goto 76.2,19.6
turnin Gormok Wants His Snobolds##1400 |goto 76.2,19.6
turnin What Do You Feed a Yeti, Anyway?##14112 |goto 76.2,19.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Deepholm\\Therazane's Throne Dailies, plus Pre-Quests",{
description="Walks you through completing the daily quests in the Therazane's Throne region of Deepholm.",
},[[
step
Proceeding to Pre-Quests |next |only if not completedq(26709)
Proceeding to Dailies |next "dailies" |only if completedq(26709)
step
#include "A_Therazane_PreQuest"
step
#include "Therazane_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Uldum Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="Contains the pre-quests to unlock the daily quests in Uldum. You must be at least level 83 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help |only if not ZGV.guidesets['LevelingACATA']
Click here to go to the leveling section to work on this rep |confirm |next "Zygor's Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)" |only if ZGV.guidesets['LevelingACATA']
only if not completedq(28633)
step
label "hub"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum,60.3,38.3
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash 30 Thieving Pluckers |q 28250/1 |goto 59.1,38.4
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto 60.3,38.3
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum,41.4,5.5
step
Click the Confiscated Artillery |tip It looks like a war catapult car machine.
Use the Designate Target ability on your hotbar on the Infantrymen
Slay 100 Infantrymen |q 28736/1 |goto 41.4,5.5
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto 41.4,5.5
step
You have reached the end of these dailies. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Twilight Highlands\\Twilight Highlands Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="Contains the pre-quests to unlock the daily quests in Twilight Highlands. You must be at least level 84 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingACATA']
Click here to go to the leveling section to work on this rep |confirm |next "Zygor's Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)" |only if ZGV.guidesets['LevelingACATA']
only if not completedq(27787)
step
label "dailies"
talk Craw MacGraw##49386
accept Warlord Halthar is Back##28863 |goto Twilight Highlands,48.6,30.7 |tip This is a 2-person group quest.
step
talk Colin Thundermar##46591
accept Keeping the Dragonmaw at Bay##28860 |goto 49.0,29.8
accept Beer Run##28864 |goto 49.0,29.8
step
talk Low Shaman Blundy##48010
accept Fight Like a Wildhammer##28861 |goto 49.8,29.2
accept Never Leave a Dinner Behind##28862 |goto 49.8,29.2
stickystart "wildhammer"
step
kill Warlord Halthar |q 28863/1 |goto 49.0,37.3
|tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.  He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
step
label "wildhammer"
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 28860/1 |goto 46.2,37.4
Click Thundermar Ale Kegs
|tip They look like wooden barrels on the ground around this area.
collect 10 Keg of Thundermar Ale##62330 |q 28861/1 |goto 46.2,37.4
Click Wildhammer Food Stores
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28862/1 |goto 46.2,37.4
You can find more around [49.1,37.3]
step
talk Hammelhand##48758
Tell him you're here to escort a delivery to Kirthaven
Follow the dwarves
kill Dragonmaw Skirmisher##48799+
Escort the Supply Caravan |q 28864/1 |goto 64.4,22.6
step
talk Low Shaman Blundy##48010
turnin Fight Like a Wildhammer##28861 |goto 49.8,29.2
turnin Never Leave a Dinner Behind##28862 |goto 49.8,29.2
step
talk Colin Thundermar##46591
turnin Keeping the Dragonmaw at Bay##28860 |goto 49.0,29.8
turnin Beer Run##28864 |goto 49.0,29.8
step
talk Craw MacGraw##49386
turnin Warlord Halthar is Back##28863 |goto 48.6,30.7
step
You have reached the end of these dailies. Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Tol Barad Peninsula\\Tol Barad Dailies",{
achieveid={4874},
author="support@zygorguides.com",
description="Walks you through completing the daily quests in Tol Barad.",
},[[
#include "A_Baradin_Hold_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Reputation\\Guardians of Hyjal",{
author="support@zygorguides.com",
description="Walks you through the process of obtaining Exalted reputation with the Guardians of Hyjal faction.",
},[[
step
map Mount Hyjal
To gain reputation with the Guardians of Hyjal faction:
Complete all quests in the Mount Hyjal zone
Once you earn Friendly reputation with the Guardians of Hyjal faction, you can buy the Tabard of the Guardians of Hyjal
|tip Wear the Tabard of the Guardians of Hyjal and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Guardians of Hyjal faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Guardians of Hyjal by talking to Provisioner Whitecloud at [Mount Hyjal 62.8,23.9]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Reputation\\The Earthen Ring",{
author="support@zygorguides.com",
description="Walks you through the process of obtaining Exalted reputation with The Earthen Ring faction.",
},[[
step
map Shimmering Expanse
To gain reputation with The Earthen Ring faction:
Complete all quests in the Vashj'ir zone
Complete the Deepholm Pre-Quests guide in the Deepholm section.
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section
Once you earn Friendly reputation with The Earthen Ring faction, you can buy the Tabard of the Earthen Ring
|tip Wear the Tabard of the Earthen Ring and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with The Earthen Ring faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Earthen Ring by talking to Provisioner Arok at [Shimmering Expanse 49.1,42.2]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Reputation\\Therazane",{
author="support@zygorguides.com",
description="Walks you through the process of obtaining Exalted reputation with the Therazane faction.",
},[[
step
map Deepholm
To gain reputation with the Therazane faction:
Complete the Deepholm Pre-Quests guide in the Deepholm section
Complete the Therazane's Throne Dailies guide section in the Deepholm section
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Therazane faction, you can buy the Tabard of Therazane
|tip Wear the Tabard of Therazane and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Therazane faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 54.1,33.3]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Reputation\\Ramkahen",{
author="support@zygorguides.com",
description="Walks you through the process of obtaining Exalted reputation with the Ramkahen faction.",
},[[
step
map Uldum
To gain reputation with the Ramkahen faction:
Complete the Uldum Pre-Quests guide in the Uldum section.
Complete the Tahret Grounds Dailies guide in the Uldum section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Ramkahen faction, you can buy the Tabard of Ramkahen.
|tip Wear the Tabard of Ramkahen and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Ramkahen faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of Ramkahen by talking to Blacksmith Abasi at [Uldum 54.1,33.3]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Reputation\\Wildhammer Clan",{
author="support@zygorguides.com",
description="Walks you through the process of obtaining Exalted reputation with the Wildhammer Clan faction.",
},[[
step
map Twilight Highlands
To gain reputation with the Wildhammer Clan faction:
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
Complete the Thundermar Dailies guide in the Twilight Highlands section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Wildhammer Clan faction, you can buy the Tabard of the Wildhammer Clan.
|tip Wear the Tabard of the Wildhammer Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Wildhammer Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Wildhammer Clan by talking to Craw MacGraw at [Twilight Highlands 48.6,30.7]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Reputation\\Baradin's Wardens",{
author="support@zygorguides.com",
description="Walks you through the process of obtaining Exalted reputation with the Baradin's Wardens faction.",
},[[
step
map Tol Barad Peninsula
To gain reputation with the Baradin's Wardens faction:
Complete the Baradin Base Camp Dailies guide in the Tol Barad Peninsula section.
|tip Do this daily, if you'd like.
Complete the Baradin Hold Dailies guide in the Tol Barad section.
|tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Alliance faction currently controls Tol Barad.
Once you earn Friendly reputation with the Baradin's Wardens faction, you can buy Baradin's Wardens Commendations from Quartermaster Brazie at [72.4,63.2] |tip They cost 10 Tol Barad Commendations each and you can use the Baradin's Wardens Commendations to increase your Baradin's Wardens reputation by 250.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Zandalari Menace Quest Line",{
author="support@zygorguides.com",
startlevel=85,
description="Walks you through completing the Zandalari Menace quest line in Stranglethorn Vale. You must be level 85 to be able to use this guide.",
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
Enter the cave |goto 76.5,67.5 < 10
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
accept Some Good Will Come##29267 |instant |goto 76.1,66.7
step
Next to you:
talk Bwemba##52234
accept Warn the Rebel Camp##29124
step
Leave the cave |goto 76.5,67.5 < 10
talk Lieutenant Doren##52410
turnin Warn the Rebel Camp##29124 |goto 47.8,12.0
accept Defend the Rebel Camp##29131 |goto 47.8,12.0
step
kill Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+
|tip Once the bar fills up at the bottom of your screen, you will complete the quest.
Help Defend the Camp |q 29131/1 |goto 47.5,11.4
step
talk Lieutenant Doren##52410
turnin Defend the Rebel Camp##29131 |goto 47.8,12.0
step
talk James Stillair##52753
accept To the Digsite##29133 |goto 47.9,11.9
step
talk James Stillair##52753
Ask him if one of his gryphons can get you to the Digsite
You will fly to the Explorers' League Digsite
Arrive at the Digsite |q 29133/1 |goto 47.9,11.9
step
Next to you:
talk Bwemba##52234
turnin To the Digsite##29133
accept Voodoo Zombies##29150
step
kill Digsite Zombie##52604+
Rescue 10 Digsite Survivors |q 29150/1 |goto The Cape of Stranglethorn 54.0,42.6
|tip You may not rescue every zombie you kill.
step
Next to you:
talk Bwemba##52234
turnin Voodoo Zombies##29150
accept Bad Supplies##29151
step
Click the Grain Sack
|tip It looks like a yellow bag sitting on the ground next to a big pile of barrels and crates.
Watch the dialogue
Search the Supplies |q 29151/1 |goto 55.0,42.0
step
Next to you:
talk Bwemba##52234
turnin Bad Supplies##29151
step
talk Colin Swifthammer##52646
accept Making Contact##29152 |goto 55.3,42.0
step
Enter the tunnel |goto 44.9,65.9 < 10
talk Vol'jin##52767
turnin Making Contact##29152 |goto 41.0,73.1
step
Go to this spot
Watch the dialogue
Help Bwemba Find the Darkspear Emissary |q 29100/1 |goto 41.2,73.0
step
Next to you:
talk Bwemba##52234
turnin Bwemba's Spirit##29100
step
To continue with the Zul'Gurub dungeon quest line:
talk Baron Revilgaz##2496
accept Booty Bay's Interests##29153 |goto 41.2,73.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\How To Use Firelands Guide Sections - READ FIRST",{
author="support@zygorguides.com",
description="Walks you through how to use the Firelands guide sections.",
},[[
step
The Firelands quests are very dynamic.  You will not be able to complete some daily quests each day, as only a limited amount are available each day.
|tip Accept and complete as many as you can, and simply skip over the ones you can't accept that day.
_
_
You will need to use the Firelands Quests and Firelands Dailies together.  Complete as many quests as you can in the Firelands Quests guide section, and use the Firelands Dailies guide section to gain Marks of the World Tree.  |tip Marks of the World Tree are currency needed to complete certain quests in order to unlock more daily quests.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests",{
author="support@zygorguides.com",
startlevel=80.00,
description="Walks you through completing the Firelands quest line in Mount Hyjal.",
},[[
step
Proceeding to proper section |next |only if default
Proceedint to proper section |next "firelands" |only if completedq(25372)
step
#include "A_Firelands_PreQuests"
step
label "firelands"
Proceeding to proper section |next |only if default
Proceedint to proper section |next "dailies" |only if completedq(29311)
step
talk Matoclaw##52669
accept Opening the Door##29145 |goto Mount Hyjal 27.2,62.6
step
talk Arch Druid Hamuul Runetotem##52838
turnin Opening the Door##29145 |goto 27.1,54.5
accept A Ritual of Flame##29195 |goto 27.1,54.5
step
kill Charred Invader##52853+
|tip When the bar at the bottom of your screen becomes full, Leyara will spawn.
kill Leyara##52863
Open the portal to the Firelands |q 29195/1 |goto 27.4,55.6
step
talk Malfurion Stormrage##52845
turnin A Ritual of Flame##29195 |goto 27.4,55.2
accept To the Sanctuary!##29196 |goto 27.4,55.2
step
talk Matoclaw##52669
turnin To the Sanctuary!##29196 |goto 27.2,62.6
accept Caught Unawares##29197 |goto 27.2,62.6
step
kill Raging Invader##52557+
Kill 6 Elementals near Thisalee |q 29197/2 |goto 24.5,55.7
step
kill Raging Invader##52557+
Kill 6 Elementals near Elderlimb |q 29197/1 |goto 34.0,57.5
step
kill Raging Invader##52557+
Kill 6 Elementals near Tholo and Anren |q 29197/3 |goto 41.2,56.4
step
talk Arch Druid Hamuul Runetotem##52838
turnin Caught Unawares##29197 |goto 27.2,62.6
accept The Sanctuary Must Not Fall##29198 |goto 27.2,62.6
step
Watch the cutscene
Protect Malfurion |q 29198/1 |goto 27.0,62.9
step
talk Malfurion Stormrage##52845
turnin The Sanctuary Must Not Fall##29198 |goto 27.0,62.7
step
talk Arch Druid Hamuul Runetotem##52838
accept Calling for Reinforcements##29199 |goto 27.1,62.8
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 125 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
only if completedq(29214) and completedq(29181)
step
talk Varlan Highbough##53882
accept Calling the Ancients##29283 |goto 44.4,88.8
only if completedq(29214) and completedq(29181)
step
talk Elderlimb##52906
turnin Calling the Ancients##29283 |goto Mount Hyjal 26.0,61.3
only if completedq(29214) and completedq(29181)
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet. Just do the dailies you can do for now.
earn 20 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
step
talk Arch Druid Hamuul Runetotem##52838
turnin Calling for Reinforcements##29199 |goto 27.1,62.8
step
talk Arch Druid Hamuul Runetotem##52838
accept Leyara##29200 |goto Mount Hyjal 27.1,62.8
step
talk Leyara##53014
Ask her _"Why, what did Malfurion ever do to her?"_
Watch the dialogue
Find Leyara |q 29200/1 |goto 6.7,33.8
step
talk Matoclaw##52669
turnin Leyara##29200 |goto 27.2,62.6
step
talk Malfurion Stormrage##52845
accept Through the Gates of Hell##29201 |goto 27.0,62.7
step
kill Obsidian Slaglord##53381
Secure a foothold in the Firelands |q 29201/1 |goto Molten Front 49.7,85.1
step
_Enter through_ the tree |goto 47.3,88.2 < 10
talk Malfurion Stormrage##53385
turnin Through the Gates of Hell##29201 |goto 47.1,90.6
step
talk Matoclaw##52669
accept The Fate of Runetotem##29202 |goto Mount Hyjal 27.2,62.6
step
talk Dorda'en Nightweaver##52986
turnin The Fate of Runetotem##29202
Ask him How Hamuul is doing |goto 27.5,62.5 |achieve 5870/4
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 150 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
step
talk Malfurion Stormrage##52135
accept Druids of the Talon##29181 |goto Molten Front 47.0,91.3
step
talk Skylord Omnuron##50082
turnin Druids of the Talon##29181 |goto Mount Hyjal 43.5,45.9
step
talk Isara Riverstride##50068
accept Flight of the Storm Crows##29182 |goto 42.6,45.8
step
talk Skylord Omnuron##52490
turnin Flight of the Storm Crows##29182 |goto Molten Front 43.0,80.6
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 150 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
step
talk Malfurion Stormrage##52135
accept The Shadow Wardens##29214 |goto Molten Front 47.0,91.3
step
talk Captain Saynna Stormrunner##52844
turnin The Shadow Wardens##29214 |goto Mount Hyjal,26.8,62.2
step
talk Matoclaw##52669
accept The Hunt Begins##29215 |goto 27.2,62.6
step
talk Captain Saynna Stormrunner##52493
turnin The Hunt Begins##29215 |goto Molten Front 47.6,90.5
step
kill Druid of the Flame##52871+
Click the Dried Acorn
|tip It looks like a brown round nut that appears on the corpse of Druid of the Flame.
accept The Mysterious Seed##29245 |goto 67.0,35.9
step
talk Avrilla##52489
turnin The Mysterious Seed##29245 |goto 50.6,87.2
accept Planting Season##29249 |goto 50.6,87.2
step
Click the Un'Goro Soil
|tip It looks like a big pile of dirt on the ground.
Plant the Acorn |q 29249/1 |goto 53.5,90.7
step
Click the Complete Quest box that appears under your minimap
turnin Planting Season##29249
accept Little Lasher##29254
step
talk Avrilla##52489
turnin Little Lasher##29254 |goto 50.6,87.2
step
talk Matoclaw##52669
accept Aid of the Ancients##29284 |goto 27.2,62.6
step
talk Elderlimb##52488
turnin Aid of the Ancients##29284 |goto Molten Front 43.8,89.0
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 125 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
only if completedq(29214) and completedq(29181)
step
talk Damek Bloombeard##53214
accept Additional Armaments##29281 |goto 46.9,90.0
only if completedq(29214) and completedq(29181)
step
talk Matoclaw##52669
turnin Additional Armaments##29281 |goto Mount Hyjal 27.2,62.6
only if completedq(29214) and completedq(29181)
step
talk Matoclaw##52669
accept Well Armed##29282 |goto 27.2,62.6
step
talk Ricket##53196
turnin Well Armed##29282 |goto Molten Front 46.8,90.2
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 125 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
only if completedq(29214) and completedq(29181)
step
talk Ayla Shadowstorm##53881
accept Filling the Moonwell##29279 |goto Molten Front 44.1,86.3
only if completedq(29214) and completedq(29181)
step
talk Matoclaw##52669
turnin Filling the Moonwell##29279 |goto Mount Hyjal 27.2,62.6
accept Nourishing Waters##29280 |goto Mount Hyjal 27.2,62.6
only if completedq(29214) and completedq(29181)
step
talk Ayla Shadowstorm##53881
turnin Nourishing Waters##29280 |goto Molten Front 44.1,86.3
only if completedq(29214) and completedq(29181)
step
talk Malfurion Stormrage##52135
accept Into the Depths##29203 |goto 47.0,91.4
step
Enter the cave |goto 57.8,49.6 < 10
kill Leyara |q 29203/1 |goto 64.5,59.2
step
Leave the cave |goto 57.8,49.6 < 10
talk Malfurion Stormrage##52135 |goto 47.0,91.4
turnin Into the Depths##29203 |goto 47.0,91.4
step
Click the Mailbox
|tip It looks like a small wooden box with black slits in it, next to a lamp post.
collect Smoke-Stained Locket##69854 |n
Click the Smoke-Stained Locket in your bags |use Smoke-Stained Locket##69854
accept A Smoke-Stained Locket##29298 |goto Mount Hyjal 42.0,44.5
step
talk Rabine Saturna##11801
turnin A Smoke-Stained Locket##29298 |goto Moonglade 51.7,45.1
accept Unlocking the Secrets Within##29302 |goto Moonglade 51.7,45.1
step
Watch the dialogue
Look into Leyara's Memories |q 29302/1
step
talk Rabine Saturna##11801
turnin Unlocking the Secrets Within##29302 |goto 51.7,45.1
accept Tragedy and Family##29303 |goto 51.7,45.1
step
Click the Night Elf Grave
|tip It looks like a mound of dirt on the ground with a bunch of other dirt graves.
Present the Smoke-Stained Locket
Watch the dialogue
Look deeper into Leyara's memories |q 29303/1 |goto Ashenvale 40.5,53.3
step
Click the Complete Quest box that appears under your minimap
turnin Tragedy and Family##29303
accept The Tipping Point##29310
step
Click the Small Gravestone
|tip It looks like a small gray rock sitting on the ground.
Present the Smoke-Stained Locket
Watch the dialogue
Look deeper into Leyara's memories |q 29310/1 |goto Mount Hyjal 7.6,34.6
step
Click the Complete Quest box that appears under your minimap
turnin The Tipping Point##29310
accept The Rest is History##29311
step
talk Malfurion Stormrage##52135
turnin The Rest is History##29311 |goto Molten Front 47.0,91.4
step
label "dailies"
talk Matoclaw##52669
You will only be able to accept one of these quests per day:
accept Rage Against the Flames##29163 |or |goto Mount Hyjal 27.2,62.6
accept Rage Against the Flames##29149 |or |goto Mount Hyjal 27.2,62.6
accept Rage Against the Flames##29127 |or |goto Mount Hyjal 27.2,62.6
accept Rage Against the Flames##29123 |or |goto Mount Hyjal 27.2,62.6
accept Supplies for the Other Side##29166 |or |goto Mount Hyjal 27.2,62.6
step
talk Matoclaw##52669
You will only be able to accept one of these quests per day:
accept Call the Flock##29147 |or |goto 27.2,62.6
accept Perfecting Your Howl##29164 |or |goto 27.2,62.6
accept Between the Trees##29125 |or |goto 27.2,62.6
step
talk Dorda'en Nightweaver##52986
You will only be able to accept one of these quests per day:
accept Relieving the Pain##29246 |or |goto 27.5,62.5
accept Treating the Wounds##29247 |or |goto 27.5,62.5
accept Releasing the Pressure##29248 |or |goto 27.5,62.5
step
talk Mylune##52671
You will only be able to accept one of these quests per day:
accept Punting Season##29101 |or |goto 27.1,62.0
accept Those Bears Up There##29161 |or |goto 27.1,62.0
noquest
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.3,61.6
step
kill Flame Terror##52219+
kill 9 Invader from the Firelands |q 29163/1 |goto 23.8,60.3
only if havequest(29163)
step
kill Flame Terror##52219+
kill 8 Invader from the Firelands |q 29127/1 |goto 23.8,60.3
only if havequest(29127)
step
kill Flame Terror##52219+
kill 7 Invader from the Firelands |q 29149/1 |goto 23.8,60.3
only if havequest(29149)
step
kill Flame Terror##52219+
kill 6 Invader from the Firelands |q 29123/1 |goto 23.8,60.3
only if havequest(29123)
step
kill Flame Terror##52219+
Use your Fang of the Wolf next to their corpses |use Fang of the Wolf##69235
Howl Atop 10 Invaders' Corpses |q 29164/1 |goto 24.6,60.4
only if havequest(29164)
step
Click the Complete Quest box that appears under your minimap
turnin Perfecting Your Howl##29164
accept The Call of the Pack##29165
only if havequest(29164) or completedq(29164)
step
Use your Fang of the Wolf |use Fang of the Wolf##69225
kill Lylagar |q 29165/1 |goto 41.8,56.0
only if havequest(29165)
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
Transform into the Wings of Aviana |invehicle |c |q 29147
only if havequest(29147)
step
Use your Call the Flock ability on your action bar near Alpine Songbirds, Forest Owls, and Goldwing Hawks
|tip They are all birds that fly in the sky all around this area.  Alpine Songbirds are small and white.  Forest Owls are medium sized and gray.  Goldwing Hawks are big and brown.
Gather 12 Alpine Songbirds |q 29147/1 |goto 14.1,41.8
Gather 5 Forest Owls |q 29147/2 |goto 14.1,41.8
Gather 2 Goldwing Hawks |q 29147/3 |goto 14.1,41.8
only if havequest(29147)
step
Click the Complete Quest box that appears under your minimap
turnin Call the Flock##29147
accept Wings Aflame##29148
only if havequest(29147) or completedq(29147)
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69212
kill Millagazor |q 29148/1 |goto 13.4,44.6
|tip When it starts flying up and escaping, let it go - your flock of birds will finish it off. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
|tip Don't get damaged by any of its _Gout of Fire_ spells. This counts towards the _Infernal Ambassadors_ achievement.
only if havequest(29148)
step
Click the Climbing Tree
|tip They look like small ladders leaning aginst the trees around this area.
Click Hyjal Bear Cubs in the tree
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Chuck 6 Hyjal Bear Cubs to Safety |q 29161/1 |goto 14.3,33.0
|tip Chuck a bear at a sleeping _Core Hound_. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if havequest(29161)
step
Click the Complete Quest box that appears under your minimap
turnin Those Bears Up There##29161
accept Nature's Blessing##29162
only if havequest(29161) or completedq(29161)
step
Use your Emerald of Aessina to summon Pyrachnis |use Emerald of Aessina##69232
Fight Pyrachnis
Use your Emerald of Aessina to cleanse yourself of Pyrachnis' Boiling Poison |use Emerald of Aessina##69232
|tip Spam use this item throughout the entire fight.
|tip If you DON'T use the Emerald in the fight, it counts towards the _Infernal Ambassadors_ achievement.
kill Pyrachnis |q 29162/1 |goto 13.4,44.7
only if havequest(29162)
step
Click Children of Tortolla
|tip They look like small turtles on the ground around this area.
Use your Punt Turtle ability
|tip Use your right mouse button to aim the yellow arrows into the water to the north.
Punt 5 Children of Tortolla into the Water |q 29101/1 |goto 23.6,60.1
|tip Punt a turtle at a fire elemental. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if havequest(29101)
step
Click the Complete Quest box that appears under your minimap
turnin Punting Season##29101
accept Echoes of Nemesis##29122
only if havequest(29101) or completedq(29101)
step
talk Tooga##52425
Tell him you are prepared to face Nemesis
Follow Tooga and fight Nemesis
Run into Tooga's yellow bubble shield right before Nemesis finishes casting his spell
|tip You will see a message in your chat when Nemesis is about to errupt.
kill Nemesis |q 29122/1 |goto 24.1,55.7
only if havequest(29122)
step
Get close to Spirits of Malorne on the ground
|tip They look like deer running around on the ground around this area.
Capture 3 Spirits of Malorne |q 29125/1 |goto 36.2,59.2
only if havequest(29125)
step
Click the Complete Quest box that appears under your minimap
turnin Between the Trees##29125
accept The Power of Malorne##29126
only if havequest(29125) or completedq(29125)
stickystart "flamescale"
step
Use your Guardian's Staff next to the Pile of Ash |use Guardian's Staff##68997
|tip It looks like a mound of dirt on the ground.
kill Galenges |q 29126/1 |goto 41.7,56.1
only if havequest(29126)
step
label "flamescale"
kill Charred Flamewaker##52791+
collect 100 Flamewaker Scale##69679 |q 29248/1 |goto 38.6,56.9
only if havequest(29248)
step
Click Blueroot Vines
|tip They look like grayish colored twisting tree roots sticking out of the ground around this area.
collect 7 Blueroot Vine##69236 |q 29166/1 |goto 29.8,57.8
only if havequest(29166)
step
talk Mylune##52671
You will only be able to turn in one of these quests per day:
turnin Nature's Blessing##29162 |goto 27.1,62.0
turnin Echoes of Nemesis##29122 |goto 27.1,62.0
step
talk Matoclaw##52669
You will only be able to turn in one of these quests per day:
turnin Rage Against the Flames##29163 |goto 27.2,62.6
turnin Rage Against the Flames##29149 |goto 27.2,62.6
turnin Rage Against the Flames##29127 |goto 27.2,62.6
turnin Rage Against the Flames##29123 |goto 27.2,62.6
turnin Wings Aflame##29148 |goto 27.2,62.6
turnin The Call of the Pack##29165 |goto 27.2,62.6
turnin The Power of Malorne##29126 |goto 27.2,62.6
turnin Supplies for the Other Side##29166 |goto 27.2,62.6
step
talk Dorda'en Nightweaver##52986
turnin Releasing the Pressure##29248 |goto 27.5,62.5
step
kill Seething Pyrelord##52300+, Fiery Behemoth##52289+
Slay 6 Invaders at Sethria's Roost |q 29128/1 |goto 30.7,75.9 |only if havequest(29128)
collect 4 Flame-Wreathed Heart##69678 |q 29246/1 |goto 30.7,75.9
|tip You can only loot these from Seething Pyrelords.  Fiery Behemoths will not drop them. |only if havequest(29246)
collect 4 Sulfur-Laced Wrapping##69677 |q 29247/1 |goto 30.7,75.9
|tip You can only loot these from Fiery Behemoths.  Seething Pyrelords will not drop them. |only if havequest(29247)
only if havequest(29128) or havequest(29246) or havequest(29247)
step
talk Dorda'en Nightweaver##52986
You will only be able to turn in one of these quests per day:
turnin Relieving the Pain##29246 |goto 27.5,62.5
turnin Treating the Wounds##29247 |goto 27.5,62.5
step
Proceeding to proper section |next "RestartDailies" |only if default
Proceeding to proper section |next "dailies_2" |only if completedq(29201)
step
label "dailies_2"
talk Avrilla##52489
You will only be able to accept one of these quests per day:
accept Some Like It Hot##29299 |or |goto Molten Front 50.6,87.2
accept Embergris##29255 |or |goto Molten Front 50.6,87.2
accept Steal Magmolias##29257 |or |goto Molten Front 50.6,87.2
noquest
step
talk Rayne Feathersong##52467
You will only be able to accept one of these quests per day:
accept Aggressive Growth##29139 |or |goto 48.7,86.9
accept Wisp Away##29143 |or |goto 48.7,86.9
step
talk Ricket##53196
You will only be able to accept one of these quests per day:
|tip She will not offer a quest in this location, on some days.  On those days, she will offer a quest later, in a different location.
accept A Bitter Pill##29263 |or |goto 46.8,90.2
accept Living Obsidium##29278 |or |goto 46.8,90.2
noquest
step
talk Captain Irontree##53080
accept Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
turnin The Protectors of Hyjal##29128 |goto 45.6,85.8
step
talk General Taldris Moonfall##52824
You will only be able to accept two of these quests per day:
accept Hostile Elements##29179 |or 2 |goto 45.6,85.8
accept Traitors Return##29142 |or 2 |goto 45.6,85.8
accept The Harder They Fall##29141 |or 2 |goto 45.6,85.8
accept Breach in the Defenses##29137 |or 2 |goto 45.6,85.8
accept The Dogs of War##29304 |or 2 |goto 45.6,85.8
step
Stand next to the fire portal with your Wisp
|tip It looks like 2 steam vents and black smoke riding out of the ground.
kill Firekin##53092+
Close a Fire Portal |q 29143/1 |goto 51.6,65.0
only if havequest(29143)
stickystart "magmolia"
stickystart "obsidiummeteor"
step
kill Emberspit Scorpion##53240+
|tip They will spawn Ember Pools on the ground, and your Crimson Lasher will drink from them.
Help the Crimson Lasher Drink from 6 Ember Pools |q 29299/1 |goto 50.7,50.8
only if havequest(29299)
step
Click Lava Bubbles
|tip They look like big light orange bubbles in the pools of lava around this area.
Use The Bitter Pill when the Subterranean Magma Worm is almost done casting its Burning Hunger spell |use The Bitter Pill##69759
kill Subterranean Magma Worm |q 29263/1 |goto 52.8,49.9
only if havequest(29263)
step
label "magmolia"
Click Magmolias
|tip They look like white flowers on the surface of the pools of lave around this area.
collect 8 Magmolia##69725 |q 29257/1 |goto 50.7,50.8
only if havequest(29257)
step
label "obsidiummeteor"
Click Magnetic Stones
|tip They look like stone spikes pointing upward on the ground around this area.
Click Obsidium Meteorites
|tip They look like spiked rocks that crash to the ground in balls of fire after you click the Magnetic Stones.
collect 10 Obsidium Meteorite##69807 |q 29278/1 |goto 50.0,50.8
only if havequest(29278)
step
kill Charred Soldier##52504+, Charred Vanquisher##52503+
collect 5 Embergris##69722 |q 29255/1 |goto 48.2,75.8 |only if havequest(29255)
kill 8 Charred Combatant |q 29179/1 |goto 48.2,75.8 |only if havequest(29179)
kill 3 Druid of the Flame |q 29142/1 |goto 48.2,75.8 |only if havequest(29142)
kill 5 Lava Burster |q 29137/1 |goto 48.2,75.8 |only if havequest(29137)
kill 5 Ancient Charhound |q 29304/1 |goto 48.2,75.8 |only if havequest(29304)
Use your Enchanted Salve on Wounded Hyjal Defenders |use Enchanted Salve##69240
|tip They look like various race corpses laying on the ground around this area. |only if havequest(29138)
Save 8 Wounded Hyjal Defenders |q 29138/1 |goto 48.2,75.8 |only if havequest(29138)
Click Ash Piles |tip They look like brown mounds of dirt on the ground around this area. |only if havequest(29139)
Plant 5 Smothervines |q 29139/1 |goto 48.2,75.8 |only if havequest(29139)
only if havequest(29255) or havequest(29179) or havequest(29142) or havequest(29137) or havequest(29304) or havequest(29138) or havequest(29139)
step
kill 3 Molten Behemoth |q 29141/1 |goto 47.2,83.7
only if havequest(29141)
step
talk Avrilla##52489
You will only be able to turn in one of these quests per day:
turnin Some Like It Hot##29299 |goto 50.6,87.2
turnin Embergris##29255 |goto 50.6,87.2
turnin Steal Magmolias##29257 |goto 50.6,87.2
step
talk Rayne Feathersong##52467
You will only be able to turn in one of these quests per day:
turnin Aggressive Growth##29139 |goto 48.7,86.9
turnin Wisp Away##29143 |goto 48.7,86.9
step
talk Damek Bloombeard##53214
You will only be able to turn in one of these quests per day:
turnin A Bitter Pill##29263 |goto 46.9,90.0
turnin Living Obsidium##29278 |goto 46.9,90.0
step
talk Captain Irontree##53080
turnin Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
You will only be able to turn in two of these quests per day:
turnin Hostile Elements##29179 |goto 45.6,85.8
turnin Traitors Return##29142 |goto 45.6,85.8
turnin The Harder They Fall##29141 |goto 45.6,85.8
turnin Breach in the Defenses##29137 |goto 45.6,85.8
turnin The Dogs of War##29304 |goto 45.6,85.8
step
talk General Taldris Moonfall##52824
Decide which daily quest line you want to complete:
|tip You can only do one of these quest lines per day.
accept Into the Fire##29206 |or |goto 45.6,85.8 |next "DruidoftheTalon"
accept The Forlorn Spire##29205 |or |goto 45.6,85.8 |next "ShadowWardens"
If you are not able to accept either quest, Click here to proceed |confirm |next "RestartDailies"
step
label "DruidoftheTalon"
Stand in this spot and wait for a Windcaller to start walking into the fire
|tip The Windcaller will be a Druid of the Talon, with Windcaller in their name, standing in this spot.
Follow the Windcaller through the fire
|tip Walk behind them so the flames don't burn you.
kill Flamewaker Assassin##53328+
kill Pyrelord##52683
Protect the Druid of the Talon Windcaller |q 29206/1 |goto 43.0,80.2
only if havequest(29206)
step
talk Thisalee Crow##52444
turnin Into the Fire##29206 |goto Molten Front 42.5,59.7
accept Flamewakers of the Molten Flow##29264 |goto Molten Front 42.5,59.7
accept Fire Flowers##29265 |goto Molten Front 42.5,59.7
step
talk Anren Shadowseeker##52478
accept Hounds of Shannox##29274 |goto 41.9,61.5
step
kill Flamewaker Sentinel##53085+, Flamewaker Hunter##53143+, Flamewaker Shaman##53093+
kill 8 Flamewaker |q 29264/1 |goto 48.8,60.0
Click Luciferns
|tip They look like small red plants on the ground around this area.
collect 5 Lucifern##69765 |q 29265/1 |goto 48.8,60.0
only if havequest(29264) or havequest(29265)
step
kill Charhound##53152+
collect 6 Houndbone Ash##69816 |q 29274/1 |goto 43.2,51.2
only if havequest(29274)
step
talk Anren Shadowseeker##53233
accept Need... Water... Badly...##29272 |goto 51.9,31.0
step
talk Anren Shadowseeker##53233
Tell her let's get him out of this cave
Follow Anren Shadowseeker through the cave using the air vents
Escort Anren to the Front of the Cave |q 29272/1 |goto 51.9,31.0
step
talk Thisalee Crow##52444
turnin Flamewakers of the Molten Flow##29264 |goto 42.5,59.7
step
Go to this spot and jump |goto 33.5,67.6 < 10
You will fly up out of the cavern |goto Molten Front,33.7,65.7,0.5 |noway |c
step
talk Tholo Whitehoof##52477
turnin Need... Water... Badly...##29272 |goto Molten Front 36.0,59.0
only if havequest(29272)
step
talk Tholo Whitehoof##52477
accept How Hot##29273 |goto 36.0,59.0
step
talk Anren Shadowseeker##52478
accept Hounds of Shannox##29274 |goto 35.8,59.4
step
talk Choluna##52492
turnin Fire Flowers##29265 |goto 36.3,56.3
step
talk Ricket##53304
accept The Bigger They Are##29295 |goto 36.3,56.6
step
talk Morthis Whisperwing##52491
You will only be able to accept one of these quests per day:
accept Peaked Interest##29287 |or |goto 34.5,56.2
accept Fire in the Skies##29290 |or |goto 34.5,56.2
accept Starting Young##29288 |or |goto 34.5,56.2
step
talk Arthorn Windsong##53259
You will only be able to accept one of these quests per day:
accept Singed Wings##29293 |or |goto 34.3,56.4
accept Territorial Birds##29296 |or |goto 34.3,56.4
step
Click the Trained Fire Hawk to ride on it
|tip It looks like a big orange armored eagle.
Use your abilities on your action bar on the mobs below as you fly on the Fire Hawk
|tip The mobs look like nagas, spiders, and stone giants on the ground.
kill 100 Amassing Flamewakers |q 29290/1 |goto 33.9,57.2
kill 40 Amassing Cinderwebs |q 29290/2 |goto 33.9,57.2
kill 3 Molten Lords |q 29290/3 |goto 33.9,57.2
only if havequest(29290)
step
Use your Return to the Furnace ability on your action bar
Return to the Furnace |goto Molten Front 34.2,57.0 < 20 |noway |c |q 29290
only if havequest(29290)
step
talk Morthis Whisperwing##52491
turnin Fire in the Skies##29290 |goto 34.5,56.2
stickystart "firehawk"
step
Jump off the cliff next to the floating rocks
|tip You won't die, a druid will fly you safely to the other side.
Click Injured Druids of the Talon
|tip They look like birds and bats laying on the ground around this whole area.  They are pretty spread out, so you will need to search around for them.
Rescue 5 Druids of the Talon |q 29293/1 |goto 26.6,50.5
only if havequest(29293)
step
Follow the path to the top of the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use the air vents around the peak of the mountain to jump up can click Fire Hawk Hatchlings
|tip They look like small fire birds flying in place around the top of this mountain.
collect 5 Fire Hawk Hatchling##69845 |q 29288/1 |goto 23.5,36.6
only if havequest(29288)
step
Follow the path to the top of the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
Sample the Central Lava Pool |q 29273/3 |goto 23.7,39.5
only if havequest(29273)
step
Follow the path to the top of the mountain
Click a Fire Hawk Egg
|tip They look like orange eggs sitting on the ground at the top of this mountain, in a bubbling pool of lava.
collect Fire Hawk Egg##69836 |q 29287/1 |goto 23.7,41.9
only if havequest(29287)
step
Follow the path on the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
Sample the Northwestern Lava Pool |q 29273/1 |goto 22.5,29.1
only if havequest(29273)
step
Follow the path on the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
Sample the Northeastern Lava Pool |q 29273/2 |goto 30.0,29.8
only if havequest(29273)
step
label "firehawk"
kill 5 Fire Hawk |q 29296/1 |goto 26.6,50.5 |only if havequest(29296)
kill Obsidium Punisher##52107+ |only if havequest(29295)
Click Living Obsidium Chips
|tip They look like gray rocks that spawn on the ground after you kill Obsidium Punishers. |only if havequest(29295)
collect 10 Living Obsidium Chip##69860 |q 29295/1 |goto 26.6,50.5 |only if havequest(29295)
only if havequest(29296) or havequest(29295)
step
talk Morthis Whisperwing##52491
turnin Peaked Interest##29287 |goto 34.5,56.2
turnin Starting Young##29288 |goto 34.5,56.2
step
talk Arthorn Windsong##53259
You will only be able to turn in one of these quests per day:
turnin Singed Wings##29293 |goto 34.3,56.4
turnin Territorial Birds##29296 |goto 34.3,56.4
step
talk Choluna##52492
accept Strike at the Heart##29305 |goto 36.3,56.3
only if completedq(29283)
step
kill Ancient Charhound##54339+
collect 6 Houndbone Ash##69816 |q 29274/1 |goto 39.3,55.2
You can find more Ancient Charhounds around [39.6,39.4]
only if havequest(29274)
step
Kill the big named mob
|tip The named mob you have to fight is random, so it is not always the same.
kill Lieutenant of Flame |q 29305/1 |goto Molten Front 50.3,23.1
only if havequest(29305)
step
talk Tholo Whitehoof##52477
turnin Hounds of Shannox##29274 |goto 51.5,85.5
step
talk Anren Shadowseeker##52478
turnin How Hot##29273 |goto 51.3,85.8
step
talk Damek Bloombeard##53214
turnin The Bigger They Are##29295 |goto 46.9,90.0
step
talk Skylord Omnuron##52490
turnin Strike at the Heart##29305 |goto 43.0,80.6
|next "RestartDailies"
step
label "ShadowWardens"
Wait until the named mobs starts walking up the big ramp
|tip The named mobs' health bars will appear beneath your minimap.
Protect the named mobs and help them fight
|tip They must stay alive for the entire quest, so don't let them die.
Protect the Druid Assault Group |q 29205/1 |goto 54.7,70.9
only if havequest(29205)
step
talk Marin Bladewing##52494
turnin The Forlorn Spire##29205 |goto Molten Front 64.9,67.3
step
talk Marin Bladewing##52494
You will only be able to accept one of these quests per day:
accept Solar Core Destruction##29211 |or |goto 64.9,67.3
accept The Wardens are Watching##29192 |or |goto 64.9,67.3
step
talk Ricket##54163
accept Bye Bye Burdy##29297 |goto 66.4,65.4
noquest
step
talk Tholo Whitehoof##52477
accept The Flame Spider Queen##29276 |goto 66.3,66.1
|tip This quest will not always be available each day.
noquest
step
talk Deldren Ravenelm##52921
You will only be able to accept two of these quests per day:
accept Pyrorachnophobia##29159 |or 2 |goto 66.1,63.9
accept Egg-stinction##29160 |or 2 |goto 66.1,63.9
accept Wicked Webs##29189 |or 2 |goto 66.1,63.9
step
kill Cinderweb Creeper##52648+, Cinderweb Spinner##52981+ |only if havequest(29159) or havequest(29276)
kill 8 Cinderweb spider |q 29159/1 |goto 65.6,50.5 |only if havequest(29159)
collect 8 Flame Venom##69808 |q 29276/1 |goto 65.6,50.5 |only if havequest(29276)
collect 8 Searing Web Fluid##69809 |q 29276/2 |goto 65.6,50.5 |only if havequest(29276)
Click Cinderweb Egg Sacs
|tip They look like brown-ish red slime deposits on the ground around this area. |only if havequest(29160)
collect 20 Cinderweb Egg##152976 |q 29160/1 |goto 65.6,50.5 |only if havequest(29160)
Click Cinderweb Cocoons
|tip They look like bright red web balls stuck to the walls around this area. |only if havequest(29189)
Free 8 Victims |q 29189/1 |goto 65.6,50.5 |only if havequest(29189)
only if havequest(29159) or havequest(29276) or havequest(29160) or havequest(29189)
step
Use your Burd Sticker on Druids of the Flame |use Burd Sticker##69832
|tip They are small orange fire birds that fly in the sky all around this area.  Try to target the ones flying lower to the ground.
kill 3 Druids of the Flame in Fire Crow form |q 29297/1 |goto 71.4,47.3
only if havequest(29297)
step
Click the Solar Core |tip It looks like a big floating orb.
Detonate the Solar Core |q 29211/1 |goto 70.8,38.3
only if havequest(29211)
step
kill Druid of the Flame##52122
Lure the Druid of the Flame into the trap
|tip Your Shadow Warden will lay a metal trap on the ground and tell you to lure the enemy into it.  Walk over the trap, so that the druid follows you onto the trap.
Capture a Druid of the Flame |q 29192/1 |goto 71.8,42.9
only if havequest(29192)
step
talk Deldren Ravenelm##52921
You will only be able to turn in two of these quests per day:
turnin Pyrorachnophobia##29159 |goto 66.1,63.9
turnin Egg-stinction##29160 |goto 66.1,63.9
turnin Wicked Webs##29189 |goto 66.1,63.9
step
talk Marin Bladewing##52494
You will only be able to turn in one of these quests per day:
turnin Solar Core Destruction##29211 |goto 64.9,67.3
turnin The Wardens are Watching##29192 |goto 64.9,67.3
step
talk Marin Bladewing##52494
accept Enduring the Heat##29210 |goto 64.9,67.3
step
talk Anren Shadowseeker##52478
accept Fandral's Methods##29275 |goto 65.9,66.1
step
Enter the Igneous Depths |q 29210/1 |goto 57.7,49.5
only if havequest(29210)
step
Click the 8 Flame Runes
|tip They look like big glowing blue symbols on the ground around the area inside this cave. |only if havequest(29210)
Destroy All the Flame Runes |q 29210/2 |goto 61.7,53.0 |only if havequest(29210)
Click a Flame Druid Staff, Spellbook, Reagant Pouch, and Idol
|tip They look like tiny sticks, books, vials, and wooden statues on the ground all around inside this cave. |only if havequest(29275)
collect Flame Druid Staff##69810 |q 29275/1 |goto 61.7,53.0  |only if havequest(29275)
collect Flame Druid Spellbook##69811 |q 29275/2 |goto 61.7,53.0  |only if havequest(29275)
collect Flame Druid Reagent Pouch##69812 |q 29275/3 |goto 61.7,53.0  |only if havequest(29275)
collect Flame Druid Idol##69813 |q 29275/4 |goto 61.7,53.0  |only if havequest(29275)
only if havequest(29210) or havequest(29275)
step
talk Theresa Barkskin##52823
turnin Enduring the Heat##29210 |goto 57.8,49.5
step
talk Shalis Darkhunter##53056
accept Strike at the Heart##29243 |goto 57.5,49.5
only if completedq(29283)
step
Kill the big named mob
|tip They named mob you have to fight is random, so it is not always the same.
kill Lieutenant of Flame |q 29243/1 |goto Molten Front 50.3,23.1
only if havequest(29243)
step
talk Tholo Whitehoof##52477
turnin Fandral's Methods##29275 |goto 51.6,85.5
step
talk Anren Shadowseeker##52478
turnin The Flame Spider Queen##29276 |goto 51.3,85.8
step
talk Damek Bloombeard##53214
turnin Bye Bye Burdy##29297 |goto 46.9,90.0
step
talk Captain Saynna Stormrunner##52493
turnin Strike at the Heart##29243 |goto 47.6,90.5 |next "RestartDailies"
step
label "RestartDailies"
Click this line to return to the beginning of the Firelands Dailies guide section |confirm |next "firelands"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\The Call of the World-Shaman Quest Line",{
condition_end=function() return completedq(29331) end,
author="support@zygorguides.com",
description="Walks you through completing the Call of the World-Shaman quest line.",
},[[
step
talk Naraat the Earthspeaker##45226
accept The Call of the World-Shaman##29439 |goto Stormwind City 74.5,19.0
step
talk Thrall##54313
turnin The Call of the World-Shaman##29439 |goto Mount Hyjal 60.6,31.5
accept The Nordrassil Summit##29326 |goto Mount Hyjal 60.6,31.5
step
talk Thrall##54313
Tell him you are ready
Watch the cutscene
Witness the Ceremony |q 29326/1 |goto 60.6,31.5
step
talk Aggra##54312
turnin The Nordrassil Summit##29326 |goto 60.2,30.1
accept Into Slashing Winds##29335 |goto 60.2,30.1
step
talk Aggra##54312 |goto 60.2,30.1
Tell her you are ready to travel to Uldum
You will teleport to Uldum |goto Uldum,47.8,88.0,0.5 |noway |c |q 29335
step
talk Cyclonas##53524
turnin Into Slashing Winds##29335 |goto Uldum 47.6,88.9
accept Elemental Bonds: Doubt##29327 |goto Uldum 47.6,88.9
step
talk Cyclonas##53524 |goto 47.6,88.9
Tell him to take you to Thrall
You will fly up to the top of a tower |goto 34.3,77.5,0.5 |noway |c |q 29327
step
kill Essence of Doubt##53516+, Shadow of Doubt##53530+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto 34.4,78.1
step
talk Aggra##53519
turnin Elemental Bonds: Doubt##29327 |goto 34.3,77.5
accept Into Coaxing Tides##29336 |goto 34.3,77.5
step
talk Aggra##53519 |goto 34.3,77.5
Tell her you are ready to travel to the Abyssal Maw
You will teleport to the Abyssal Depths |goto Abyssal Depths,69.7,34.8,0.5 |noway |c |q 29336
step
talk Hydrius##53677
turnin Into Coaxing Tides##29336 |goto Abyssal Depths 69.5,34.3
step
talk Aggra##53652
accept Elemental Bonds: Desire##29328 |goto 69.8,34.2
step
kill Vortex of Longing##53647+, Tides of Longing##53646+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto 67.9,27.2
Click Aggra |tip She is floating in a circle inside of a bubble near the bottom of the huge whirlpool.
Protect Aggra from the Elements |q 29328/2 |goto 67.9,27.2
step
talk Aggra##53652
turnin Elemental Bonds: Desire##29328 |goto 69.8,34.2
accept Into Constant Earth##29337 |goto 69.8,34.2
step
talk Aggra##53652 |goto 69.8,34.2
Tell her you are ready to travel to Deepholm
You will teleport to Deepholm |goto Deepholm,56.3,13.0,0.5 |noway |c |q 29337
step
talk Therazane##42465
turnin Into Constant Earth##29337 |goto Deepholm 56.3,12.2
step
talk Aggra##53738
accept Elemental Bonds: Patience##29329 |goto 56.5,12.5
step
talk Aggra##53738 |goto 56.5,12.5
Tell her you are ready
You will be taken to the Staidridge |goto 64.2,46.0,0.5 |noway |c |q 29329
step
kill Element of Patience##53739+, Corestone of Patience##53894+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Help Thrall Break Out of His Stone Prison |q 29329/1 |goto 64.2,46.0
step
talk Aggra##53738
turnin Elemental Bonds: Patience##29329 |goto 64.0,46.1
accept Into Unrelenting Flame##29338 |goto 64.0,46.1
step
talk Aggra##53738
Tell her let us go to the Firelands and finish this
Teleport into the Firelands |q 29338/1 |goto 64.0,46.1
step
talk Aggra##54014
turnin Into Unrelenting Flame##29338 |goto Molten Front 49.6,31.7
step
talk Aggra##53925
accept Elemental Bonds: Fury##29330 |goto 51.5,25.8
step
kill Flames of Fury##53929+, Seed of Fury##53928+
You will need to fill up the Freeing Thrall bar at the bottom of your screen
|tip You will get onscreen instructions on where to kill the mobs.  You have to kill then next to certain Totems at certain times.
Activate Aggra's Totems to Save Thrall |q 29330/1 |goto 52.9,24.6
step
Click the Complete Quest box that appears under your minimap
turnin Elemental Bonds: Fury##29330
accept Elemental Bonds: The Vow##29331
step
talk Thrall##54168
turnin Elemental Bonds: The Vow##29331 |goto Mount Hyjal 60.2,29.8
step
Congratulations, you saved Thrall!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Lunar Festival\\Lunar Festival Main Questline",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
description="This guide section will walk you through completing the main questline for the Lunar Festival event.",
},[[
step
#include "Lunar_Festival_Main_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
description="This guide section will walk you through an optimized path for honoring the elders that are spread out all over Azeroth for the Lunar Festival event. Using this guide section, you will collect 83 Coins of Ancestry.",
},[[
step
#include "Lunar_Festival_Elder_Paths"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Lunar Festival\\Lunar Festival Achievements",{
condition_suggested=function() return isevent('Lunar Festival') end,
},[[
step
#include "Lunar_Festival_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') end,
description="This guide section will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
#include "LiitA_Main_Questline"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') end,
description="This guide section will walk you through completing the Love is in the Air even daily quests.",
},[[
step
#include "LiitA_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Love is in the Air\\Love is in the Air Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') end,
description="This guide section will walk you through completing the Love is in the Air event achievements.",
},[[
step
#include "LiitA_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Noblegarden\\Noblegarden Quests and Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Noblegarden') end,
description="This guide section will walk you through completing the quests and dailies for the Noblegarden event.",
},[[
step
talk Night Elf Commoner##19173
accept Spring Collectors##13484 |goto Darnassus/0 44.7,52.9
step
talk Spring Collector##32799
turnin Spring Collectors##13484 |goto Teldrassil/0 55.6,51.4
accept The Great Egg Hunt##13480 |goto 55.6,51.4
step
talk Noblegarden Vendor##32836
accept A Tisket, A Tasket, A Noblegarden Basket##13502 |goto 55.7,51.3
stickystart "Collect_10_Chocolate"
step
Search around Dolanaar for Brightly Colored Eggs and click them
click Brightly Colored Egg##113768
|tip There is at least one available at all times.
|tip If Dolanaar is too crowded with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
collect Brightly Colored Egg##45072+ |n
|use Brightly Colored Egg##45072
collect 20 Brightly Colored Shell Fragment##44806 |q 13480/1 |goto 55.5,51.0
step
label "Collect_10_Chocolate"
collect 10 Noblegarden Chocolate##44791 |q 13502/1 |goto 55.5,51.0
step
talk Noblegarden Vendor##32836
turnin A Tisket, a Tasket, a Noblegarden Basket##13502 |goto 55.7,51.3
step
talk Spring Collector##32799
turnin The Great Egg Hunt##13480 |goto 55.6,51.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Noblegarden\\Noblegarden Achievements",{
author="support@zygorguides.com",
pet=200,
condition_suggested=function() return isevent('Noblegarden') end,
description="This guide section will walk you through getting all 12 achievements for the Noblegarden event.",
},[[
#include "Noblegarden_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Children's Week\\Children's Week Stormwind Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Children's Week") end,
startlevel=60,
description="This guide section will walk you through completing the Stormwind questline for the Children's Week event.",
},[[
#include "Children's_Week_Stormwind"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Children's Week\\Children's Week Shattrath Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Children's Week") end,
startlevel=60,
description="This guide section will walk you through completing the Shattrath questline for the Children's Week event.",
},[[
#include "Children's_Week_Shattrath"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Children's Week") end,
condition_valid=function() return rep('The Oracles')>=Neutral  end,
condition_valid_msg=" You're not Neutral with The Oracles.",
startlevel=70,
description="This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.",
},[[
#include "Children's_Week_Oracles_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Children's Week") end,
condition_valid=function() return rep('Frenzyheart Tribe')>=Neutral  end,
condition_valid_msg=" You're not Neutral by the Frenzyheart Tribe.",
startlevel=70,
description="This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.",
},[[
#include "Children's_Week_Wolvar_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Children's Week\\Children's Week Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Children's Week") end,
startlevel=10,
description="This guide section will walk you through completing the Achievements for the Children's Week event.",
},[[
#include "Children's_Week_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
description="This guide section will walk you through completing the quests for the Midsummer Fire Festival event.",
},[[
step
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City 60.4,75.3
step
talk Human Commoner##18927
accept The Master of Summer Lore##11970 |goto Stormwind City 61.7,74.2
step
talk Festival Loremaster##16817
turnin The Master of Summer Lore##11970 |goto 49.5,72.3
accept Incense for the Summer Scorchlings##11964 |goto 49.5,72.3
step
talk Earthen Ring Elder##26221
accept Unusual Activity##11886 |goto 49.3,72.3
step
talk Master Fire Eater##25975
accept Torch Tossing##11731 |goto Stormwind City 50.0,72.3
step
|use the Practice Torches##34862
|tip Use it on the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 8 Braziers |q 11731/1
step
talk Master Fire Eater##25975
turnin Torch Tossing##11731 |goto Stormwind City 50.0,72.3
accept Torch Catching##11657 |goto Stormwind City 50.0,72.3
step
|use the Unlit Torches##34833
|tip Use it next to the bonfire.
|tip As soon as you light torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch. When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch. Do this until you've caught the torch 4 times in a row without it hitting the ground
Catch 4 Torches in a Row |q 11657/1 |goto 49.8,72.4
step
talk Master Fire Eater##25975
turnin Torch Catching##11657 |goto 50.1,72.3
step
talk Summer Scorchling##26401
turnin Incense for the Summer Scorchlings##11964 |goto Elwynn Forest 43.5,62.5
step
talk Fire Eater##25962
accept Playing with Fire##11882 |goto Elwynn Forest 43.7,62.2
step
talk Master Fire Eater##25975
turnin Playing with Fire##11882 |goto Stormwind City 50.0,72.3
step
kill Twilight Firesworn##25863+, Twilight Flameguard##25866+
collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale 15.3,20.1
step
|use the Totemic Beacon##35828
|tip Use it next to the blue bonfire.
talk Earthen Ring Guide##25324
turnin Unusual Activity##11886 |goto Ashenvale 15.7,20.3
accept An Innocent Disguise##11891 |goto Ashenvale 15.7,20.3
step
|use the Orb of the Crawler##35237
Gain the Crab Disguise Buff |havebuff 132186 |q 11891 |goto Ashenvale 9.6,13.2
step
Listen to the Plan of the Twilight Cultists |q 11891/1 |goto Ashenvale 9.2,12.6
step
|use the Totemic Beacon##35828
|tip Use it next to the blue bonfire.
talk Earthen Ring Guide##25324
turnin An Innocent Disguise##11891 |goto Ashenvale 9.7,13.3
accept Inform the Elder##29092 |goto Ashenvale 9.7,13.3
step
talk Earthen Ring Elder##26221
turnin Inform the Elder##29092 |goto Darnassus 62.1,49.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
description="This guide section will walk you through completing the dailies for the Midsummer Fire Festival event.",
},[[
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |only if level >= 22 and level <= 31 |goto Stormwind City/0 49.3,72.3
accept Striking Back##11947 |only if level >= 32 and level <= 42 |goto Stormwind City/0 49.3,72.3
accept Striking Back##11948 |only if level >= 43 and level <= 50 |goto Stormwind City/0 49.3,72.3
accept Striking Back##11952 |only if level >= 51 and level <= 59 |goto Stormwind City/0 49.3,72.3
accept Striking Back##11953 |only if level >= 60 and level <= 63 |goto Stormwind City/0 49.3,72.3
accept Striking Back##11954 |only if level >= 64 |goto Stormwind City/0 49.3,72.3
step
talk Master Fire Eater##25975
accept More Torch Tossing##11921 |goto 50.04,72.26
accept More Torch Catching##11924 |goto 50.04,72.26
step
|use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 20 Braziers |q 11921/1
step
|use the Unlit Torches##34833
|tip Use it next to the bonfire.
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch. When you catch the torch, it will be thrown in the air again.
Catch 10 Torches in a Row |q 11924/1 |goto 49.8,72.4
step
talk Master Fire Eater##25975
turnin More Torch Tossing##11921 |goto 50.04,72.26
turnin More Torch Catching##11924 |goto 50.04,72.26
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_ |goto Ashenvale 9.2,11.4 < 5 |walk |only if level >= 22 and level <= 31
Choose _"Lay your hand on the stone"_ |goto Desolace 39.2,30.2 < 5 |walk |only if level >= 32 and level <= 42
Choose _"Lay your hand on the stone"_ |goto Northern Stranglethorn 21.4,41.0 < 5 |walk |only if level >= 43 and level <= 50
Choose _"Lay your hand on the stone"_ |goto Searing Gorge 16.2,36.6 < 5 |walk |only if level >= 51 and level <= 59
Choose _"Lay your hand on the stone"_ |goto Silithus 69.0,20.4 < 5 |walk |only if level >= 60 and level <= 63
Choose _"Lay your hand on the stone"_ |goto Hellfire Peninsula/0 85.6,47.2 < 5 |walk |only if level >= 64
kill Frostwave Lieutenant##26116 |q 11917/1 |goto Ashenvale 9.2,11.4 |only if level >= 22 and level <= 31
kill Hailstone Lieutenant##26178 |q 11947/1 |goto Desolace 39.2,30.2 |only if level >= 32 and level <= 42
kill Chillwind Lieutenant##26204 |q 11948/1 |goto Northern Stranglethorn 21.4,41.0 |only if level >= 43 and level <= 50
kill Frigid Lieutenant##26214 |q 11952/1 |goto Searing Gorge/0 16.2,36.6 |only if level >= 51 and level <= 59
kill Glacial Lieutenant##26215 |q 11953/1 |goto Silithus 69.0,20.4 |only if level >= 60 and level <= 63
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.9,47.3 |only if level >= 64
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |only if level >= 22 and level <= 31 |goto Stormwind City/0 49.3,72.3
turnin Striking Back##11947 |only if level >= 32 and level <= 42 |goto Stormwind City/0 49.3,72.3
turnin Striking Back##11948 |only if level >= 43 and level <= 50 |goto Stormwind City/0 49.3,72.3
turnin Striking Back##11952 |only if level >= 51 and level <= 59 |goto Stormwind City/0 49.3,72.3
turnin Striking Back##11953 |only if level >= 60 and level <= 63 |goto Stormwind City/0 49.3,72.3
turnin Striking Back##11954 |only if level >= 64 |goto Stormwind City/0 49.3,72.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Midsummer Achievement Guide",{
author="support@zygorguides.com",
achieveid={263,1035,1034,271,272,1145},
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
keywords={"The","Flame","Warden","Ice","the","Frost","Lord","Burning","Hot","Pole","Dance","King","of","the","Fire","Festival","Torch","Juggler","Fires","of","Azeroth","Desecration","of","the","Horde"},
description="This guide section will walk you through completing the Achievements for the Midsummer Fire Festival event: - Ice the Frost Lord - Burning Hot Pole Dance - King of the Fire Festival - The Fires of Azeroth - Desecration of the Horde",
},[[
step
talk Midsummer Supplier##26123
|tip If you can't buy these be sure to complete the quests Torch Tossing and More Torch Tossing in our Midsummer Fire Festival Main Questline and Dailies guides.
buy 15 Juggling Torch##34599 |goto Stormwind City 49.0,72.0
|only if not achieved(272)
step
|use the Juggling Torch##34599
|tip You will need to juggle torches 40 times.
|tip Place the Juggling Torches on your action bar.
|tip Place the marker over your character and spam toss as fast as you can.
|tip You must juggle them all in under 15 seconds.
Earn the "Torch Juggler" Achievement |goto Dalaran,36.8,44.1 |achieve 272
step
kill Lord Ahune##25740
|tip Open up your Dungeon Finder [I], and queue for The Frost Lord Ahune battle.
|tip You will need to be high enough to enter the dungeon queue.
Earn the "Ice the Frost Lord" Achievement |achieve 263 |goto The Slave Pens 31.2,50.8
step
talk Midsummer Supplier##26123
buy 1 Mantle of the Fire Festival##23324 |goto Stormwind City 49.0,72.0 |condition achieved(271)
step
talk Midsummer Supplier##26123
buy 1 Vestment of Summer##34685 |goto 49.0,72.0 |condition achieved(271)
step
talk Midsummer Supplier##26123
buy 1 Sandals of Summer##34683 |goto 49.0,72.0 |condition achieved(271)
step
Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
Equip your Vestment of Summer |use Vestment of Summer##34685
Equip your Sandals of Summer |use Sandals of Summer##34683
click Ribbon Pole##181605
|tip It looks like a tall metal pole with a small fire on top of it
|tip Let your character spin around for 1 minute.
Earn the "Burning Hot Pole Dance" Achievement |achieve 271 |goto 50.5,73.1
step
click Flame of Orgrimmar##181336
collect Flame of Orgrimmar##23179 |n
|use the Flame of Orgrimmar##23179
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Orgrimmar's Flame##9324 |goto Orgrimmar 46.5,37.0
step
click Flame of Thunder Bluff##181337
collect Flame of Thunder Bluff##23180 |n
|use the Flame of Thunder Bluff##23180
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Thunder Bluff's Flame##9325 |goto Thunder Bluff 21.7,27.5
step
talk Festival Loremaster##16817
turnin Stealing Orgrimmar's Flame##9324 |goto Ironforge 63.8,25.3
turnin Stealing Thunder Bluff's Flame##9325 |goto Ironforge 63.8,25.3
step
click Flame of Undercity##181335
collect Flame of Undercity##23181 |n
|use the Flame of Undercity##23181
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Undercity's Flame##9326 |goto Undercity 67.9,8.3
step
click Flame of Silvermoon##188129
collect Flame of Silvermoon##35568 |n
|use the Flame of Silvermoon##35568
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Silvermoon's Flame##11935 |goto Silvermoon City 69.0,43.4
step
talk Festival Loremaster##16817
turnin Stealing Orgrimmar's Flame##9324 |goto Ironforge 63.8,25.3
turnin Stealing Thunder Bluff's Flame##9325 |goto Ironforge 63.8,25.3
turnin Stealing the Undercity's Flame##9326 |goto Ironforge 63.8,25.3
turnin Stealing Silvermoon's Flame##11935 |goto Ironforge 63.8,25.3
accept A Thief's Reward##9365 |instant |goto Ironforge 63.8,25.3
Earn the "King of the Fire Festival" Achievement |achieve 1145
step
Load the "Flame Warden of Eastern Kingdoms" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Eastern Kingdoms"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Eastern Kingdoms" Achievement |achieve 1022
step
Load the "Flame Warden of Kalimdor" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kalimdor"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Kalimdor" Achievement |achieve 1023
step
Load the "Flame Warden of Outland" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Outland"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Outland" Achievement |achieve 1024
step
Load the "Flame Warden of Northrend" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Northrend"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Northrend" Achievement |achieve 6008
step
Load the "Flame Warden of Cataclysm" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Cataclysm"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Cataclysm" Achievement |achieve 6011
step
Earn the "Fires of Azeroth" Achievement |achieve 1034
step
Load the "Extinguishing Kalimdor" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kalimdor"
|tip Click the line above to load the guide.
Earn the "Extinguishing Kalimdor" Achievement |achieve 1029
step
Load the "Extinguishing Eastern Kingdoms" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Eastern Kingdoms"
|tip Click the line above to load the guide.
Earn the "Extinguishing Eastern Kingdoms" Achievement |achieve 1028
step
Load the "Extinguishing Outland" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Outland"
|tip Click the line above to load the guide.
Earn the "Extinguishing Outland" Achievement |achieve 1030
step
Load the "Extinguishing Northrend" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Northrend"
|tip Click the line above to load the guide.
Earn the "Extinguishing Northrend" Achievement |achieve 6007
step
Load the "Extinguishing the Cataclysm" guide |confirm |next "Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Cataclysm"
|tip Click the line above to load the guide.
Earn the "Extinguishing the Cataclysm" Achievement |achieve 6013
step
Earn the "Desecration of the Horde" Achievment |achieve 1035
step
_Congratulations!_
You Earned "The Flame Warden" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Eastern Kingdoms",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={1028},
keywords={"Extinguishing","Eastern","Kingdoms"},
description="This guide section will walk you through completing the Extinguishing Eastern Kingdoms achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Eastern_Kingdoms"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kalimdor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={1029},
keywords={"Extinguishing","Kalimdor"},
description="This guide section will walk you through completing the Extinguishing Kalimdor achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Kalimdor"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Outland",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={1030},
keywords={"Extinguishing","Outland"},
description="This guide section will walk you through completing the Extinguishing Outland achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Outland"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Northrend",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={6008},
keywods="Extinguishing Northrend",
description="This guide section will walk you through completing the Extinguishing Northrend achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Cataclysm",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={6013},
keywords={"Extinguishing","the","Cataclysm"},
description="This guide section will walk you through completing the Extinguishing the Cataclysm achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Cataclysm"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Pandaria",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={8042},
keywords={"Extinguishing","Pandaria"},
description="This guide section will walk you through completing the Extinguishing Pandaria achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Pandaria"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Draenor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={11276},
keywords={"Extinguishing","Draenor"},
description="This guide section will walk you through completing the Extinguishing Draenor achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Draenor"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Broken Isles",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={11278},
keywords={"Extinguishing","Broken","Isles"},
description="This guide section will walk you through completing the Extinguishing Broken Isles achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Broken_Isles"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Eastern Kingdoms",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={1022},
keywords={"Flame","Warden","of","Eastern","Kingdoms"},
description="This guide section will walk you through completing the Flame Warden of Eastern Kingdoms achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Eastern_Kingdoms"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kalimdor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={1023},
keywords={"Flame","Warden","of","Kalimdor"},
description="This guide section will walk you through completing the Flame Warden of Kalimdor achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Kalimdor"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Outland",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={1024},
keywords={"Flame","Warden","of","Outland"},
description="This guide section will walk you through completing the Flame Warden of Outland achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Outland"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Northrend",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80.,
achieveid={6007},
keywords={"Flame","Warden","of","Northrend"},
description="This guide section will walk you through completing the Flame Warden of Northrend achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Cataclysm",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={6011},
keywords={"Flame","Warden","of","Cataclysm"},
description="This guide section will walk you through completing the Flame Warden of Cataclysm achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Cataclysm"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Pandaria",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={8045},
keywords={"Flame","Warden","of","Pandaria"},
description="This guide section will walk you through completing the Flame Warden of Pandaria achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Pandaria"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Draenor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={11283},
keywords={"Flame","Warden","of","Draenor"},
description="This guide section will walk you through completing the Flame Warden of Draenor achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Draenor"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Broken Isles",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
achieveid={11280},
keywords={"Flame","Warden","of","Broken","Isles"},
description="This guide section will walk you through completing the Flame Warden of Broken Isles achievement for the Midsummer Fire Festival event.",
},[[
step
#include "MFF_Extinguishing_Broken_Isles"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
startlevel=80,
description="This guide section will walk you through finding all of the bonfires for the Midsummer Fire Festival event.",
},[[
step
talk Elwynn Forest Flame Warden##25898
accept Honor the Flame##11816 |goto Elwynn Forest 43.5,62.6 |instant
step
talk Stranglethorn Vale Flame Warden##25915
accept Honor the Flame##11832 |goto The Cape of Stranglethorn 52.0,67.6 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11801 |goto 50.5,70.7 |instant
step
talk Northern Stranglethorn Flame Warden##51574
accept Honor the Flame##28922 |goto Northern Stranglethorn 52.0,63.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28911 |goto 40.7,51.9 |instant
step
talk Zidormi##88206
Tell her _"Show me the Blasted Lands before the invasion."_
Go Back in Time |havebuff Interface\Icons\spell_mage_altertime |goto Blasted Lands/0 48.1,7.3 |future |q 11808
step
talk Blasted Lands Flame Warden##25890
accept Honor the Flame##11808 |goto Blasted Lands 55.5,14.9 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28917 |goto Blasted Lands 46.4,14.4 |instant
step
talk Swamp of Sorrows Flame Warden##51602
accept Honor the Flame##28929 |goto Swamp of Sorrows 70.3,15.7 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11781 |goto Swamp of Sorrows 76.7,14.0 |instant
step
talk Duskwood Flame Warden##25896
accept Honor the Flame##11814 |goto Duskwood 73.7,54.6 |instant
step
talk Westfall Flame Warden##25910
accept Honor the Flame##11583 |goto Westfall 44.8,62.1 |instant
step
talk Redridge Flame Warden##25904
accept Honor the Flame##11822 |goto Redridge Mountains 24.9,53.4 |instant
step
talk Burning Steppes Flame Warden##25892
accept Honor the Flame##11810 |goto Burning Steppes 68.3,60.6 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11768 |goto 51.5,29.2 |instant
step
talk Badlands Flame Warden##51585
accept Honor the Flame##28925 |goto Badlands 19.0,56.2 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11766 |goto 24.1,37.2 |instant
step
talk Loch Modan Flame Warden##25902
accept Honor the Flame##11820 |goto Loch Modan 32.6,41.0 |instant
step
talk Dun Morogh Flame Warden##25895
accept Honor the Flame##11813 |goto Dun Morogh 53.8,45.2 |instant
step
talk Wetlands Flame Warden##25911
accept Honor the Flame##11828 |goto Wetlands 13.5,47.1 |instant
step
talk Twilight Highlands Flame Warden##51650
accept Honor the Flame##28945 |goto Twilight Highlands 47.2,28.9 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28944 |goto 53.4,46.4 |instant
step
talk Arathi Flame Warden##25887
accept Honor the Flame##11804 |goto Arathi Highlands 44.3,46.0 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11764 |goto 69.2,43.0 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11776 |goto Hillsbrad Foothills 54.6,49.8 |instant
step
talk Western Plaguelands Flame Warden##25909
accept Honor the Flame##11827 |goto Western Plaguelands 43.6,82.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28918 |goto Western Plaguelands 29.2,57.4 |instant
step
talk The Hinterlands Flame Warden##25908
accept Honor the Flame##11826 |goto The Hinterlands 14.3,50.1 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11784 |goto 76.6,74.6 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11580 |goto Silverpine Forest 49.6,38.7 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11786 |goto Tirisfal Glades 57.0,51.8 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11774 |goto Ghostlands 47,26 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11772 |goto Eversong Woods 46,50 |instant
step
talk Teldrassil Flame Warden##25906
accept Honor the Flame##11824 |goto Teldrassil 54.9,52.8 |instant
step
talk Azuremyst Isle Flame Warden##25888
accept Honor the Flame##11806 |goto Azuremyst Isle 44.5,52.5 |instant
step
talk Bloodmyst Isle Flame Warden##25891
accept Honor the Flame##11809 |goto Bloodmyst Isle 55.8,67.9 |instant
step
talk Darkshore Flame Warden##25893
accept Honor the Flame##11811 |goto Darkshore 48.7,22.6 |instant
step
talk Winterspring Flame Warden##25917
accept Honor the Flame##11834 |goto Winterspring 61.2,47.3 |instant
step
click Horde Bonfire##194039
accept Descrate this Fire!##11803 |goto 58.1,47.3 |instant
step
talk Hyjal Flame Guardian##51682
accept Honor the Flame##29030 |goto Mount Hyjal 62.8,22.7
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29030 |goto 62.9,22.9
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28919 |goto Azshara 60.4,53.3 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11765 |goto Ashenvale 51.6,66.6 |instant
step
talk Ashenvale Flame Warden##25883
accept Honor the Flame##11805 |goto Ashenvale 86.9,41.9 |instant
step
talk Southern Barrens Flame Warden##51586
accept Honor the Flame##28926 |goto Southern Barrens 48.3,72.2
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28914 |goto Southern Barrens 40.7,67.3 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11770 |goto Durotar 52.1,47.1 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11783 |goto Northern Barrens 49.9,54.4 |instant
step
talk Stonetalon Mountains Flame Warden##51588
accept Honor the Flame##28928 |goto Stonetalon Mountains 49.3,51.3 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11780 |goto Stonetalon Mountains 53.0,62.3 |instant
step
talk Desolace Flame Warden##25894
accept Honor the Flame##11812 |goto Desolace 66.1,17.1 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11769 |goto 26.1,77.2 |instant
step
talk Feralas Flame Warden##25899
accept Honor the Flame##11817 |goto Feralas 46.8,43.7 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11773 |goto 72.5,47.7 |instant
step
talk Silithus Flame Warden##25914
accept Honor the Flame##11831 |goto Silithus 60.3,33.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11800 |goto 50.9,41.7 |instant
step
talk Un'Goro Crater Flame Warden##51606
accept Honor the Flame##28932 |goto Un'Goro Crater 60.0,63.0 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28920 |goto Un'Goro Crater 56.3,65.8 |instant
step
talk Uldum Flame Warden##51653
accept Honor the Flame##28950 |goto Uldum 53.6,31.9 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28948 |goto 52.9,34.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11802 |goto Tanaris 49.8,28.1 |instant
step
talk Tanaris Flame Warden##25916
accept Honor the Flame##11833 |goto Tanaris 52.6,30.3 |instant
step
talk Dustwallow Marsh Flame Warden##25897
accept Honor the Flame##11815 |goto Dustwallow Marsh 61.8,40.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11771 |goto 33.3,30.7 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11777 |goto Mulgore 52.0,59.4 |instant
step
talk Deepholm Flame Guardian##51698
accept Honor the Flame##29036 |goto Deepholm 49.4,51.3
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29036 |goto 49.4,51.3
step
talk Vashj'ir Flame Guardian##51697
accept Honor the Flame##29031 |goto Shimmering Expanse 49.4,42.0
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29031 |goto 49.3,42.0
step
talk Hellfire Peninsula Flame Warden##25900
accept Honor the Flame##11818 |goto Hellfire Peninsula 62.2,58.3 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11775 |goto Hellfire Peninsula 57.2,41.8 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11799 |goto Netherstorm 32.3,68.2 |instant
step
talk Netherstorm Flame Warden##25913
accept Honor the Flame##11830 |goto Netherstorm 31.2,62.7 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11767 |goto Blade's Edge Mountains 50.0,59.0 |instant
step
talk Blade's Edge Flame Warden##25889
accept Honor the Flame##11807 |goto Blade's Edge Mountains 41.6,65.9 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11787 |goto Zangarmarsh 35.6,51.8 |instant
step
talk Zangarmarsh Flame Warden##25912
accept Honor the Flame##11829 |goto Zangarmarsh 68.8,52.0 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11778 |goto Nagrand 51.1,34.0 |instant
step
talk Nagrand Flame Warden##25903
accept Honor the Flame##11821 |goto Nagrand 49.6,69.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11782 |goto Terokkar Forest 51.9,43.2 |instant
step
talk Terokkar Forest Flame Warden##25907
accept Honor the Flame##11825 |goto Terokkar Forest 54.1,55.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11779 |goto Shadowmoon Valley 33.5,30.3 |instant
step
talk Shadowmoon Valley Flame Warden##25905
accept Honor the Flame##11823 |goto Shadowmoon Valley 39.6,54.6 |instant
step
talk Borean Tundra Flame Warden##32801
accept Honor the Flame##13485 |goto Borean Tundra 55.1,20.0 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13441 |goto Borean Tundra 51.1,11.8 |instant
step
talk Sholazar Basin Flame Warden##32802
accept Honor the Flame##13486 |goto Sholazar Basin 48.1,66.4 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13450 |goto Sholazar Basin 47.3,61.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13451 |goto Dragonblight 38.5,48.3 |instant
step
talk Dragonblight Flame Warden##32803
accept Honor the Flame##13487 |goto Dragonblight 75.3,43.8 |instant
step
talk Crystalsong Forest Flame Warden##32807
accept Honor the Flame##13491 |goto Crystalsong Forest 78.2,75.0 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13457 |goto Crystalsong Forest 80.4,52.7 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13455 |goto The Storm Peaks 40.4,85.6 |instant
step
talk Storm Peaks Flame Warden##32806
accept Honor the Flame##13490 |goto The Storm Peaks 41.4,86.7 |instant
step
talk Zul'Drak Flame Warden##32808
accept Honor the Flame##13492 |goto Zul'Drak 40.4,61.3 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13458 |goto Zul'Drak 43.3,71.3 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13454 |goto Grizzly Hills 19.1,61.5 |instant
step
talk Grizzly Hills Flame Warden##32805
accept Honor the Flame##13489 |goto Grizzly Hills 33.9,60.5 |instant
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13453 |goto Howling Fjord 48.4,13.4 |instant
step
talk Howling Fjord Flame Warden##32804
accept Honor the Flame##13488 |goto Howling Fjord 57.8,16.1 |instant
step
talk Jade Forest Flame Guardian##69529
accept Honor the Flame##32498 |goto The Jade Forest 47.2,47.2
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32498 |goto The Jade Forest 47.2,47.2
step
talk Krasarang Wilds Flame Guardian##69533
accept Honor the Flame##32499 |goto Krasarang Wilds 74.0,9.5
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32498 |goto Krasarang Wilds 74.0,9.6
step
talk Valley of the Four Winds Flame Guardian##69550
accept Honor the Flame##32502 |goto Valley of the Four Winds/0 51.8,51.3
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32502 |goto Valley of the Four Winds/0 51.8,51.3
step
talk Dread Wastes Flame Guardian##69522
accept Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
step
talk Townlong Steppes Flame Guardian##69536
accept Honor the Flame##32501 |goto Townlong Steppes/0 71.5,56.3
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32501 |goto Townlong Steppes/0 71.5,56.3
step
talk Kun-Lai Summit Flame Guardian##69535
accept Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
step
talk Vale of Eternal Blossoms Flame Warden##69572
accept Honor the Flame##32510 |instant |goto Vale of Eternal Blossoms/0 79.7,37.3
step
click Midsummer Bonfire##259864
accept Desecrate this Fire!##32496 |instant |goto Vale of Eternal Blossoms/0 77.8,33.6
step
talk Shadowmoon Valley Flame Warden##114500
accept Honor the Flame##44579 |instant |achieve 11283/5 |goto Shadowmoon Valley D/0 42.61,36.00
step
talk Spires of Arak Flame Guardian##114488
accept Honor the Flame##44570 |goto Spires of Arak/0 48.01,44.70
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44570 |achieve 11283/1 |goto Spires of Arak/0 48.01,44.70
step
talk Talador Flame Guardian##114489
accept Honor the Flame##44571 |goto Talador/0 43.46,71.81
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44571 |achieve 11283/2 |goto Talador/0 43.46,71.81
step
talk Nagrand Flame Guardian##114490
accept Honor the Flame##44572 |goto Nagrand D/0 80.52,47.70
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44572 |achieve 11283/3 |goto Nagrand D/0 80.52,47.70
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44583 |instant |achieve 11276 |goto Frostfire Ridge/0 72.77,65.16
step
talk Gorgrond Flame Guardian##114491
accept Honor the Flame##44573 |goto Gorgrond/0 43.92,93.78
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44573 |achieve 11283/4 |goto Gorgrond/0 43.92,93.78
step
talk Azsuna Flame Guardian##114492
accept Honor the Flame##44574 |goto Azsuna/0 48.25,29.69
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44574 |achieve 11280/1 |goto Azsuna/0 48.25,29.69
step
talk Suramar Flame Warden##114519
accept Honor the Flame##44613 |instant |achieve 11280/5 |goto Suramar/0 23.05,58.37
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44627 |instant |achieve 11278 |goto Suramar/0 30.31,45.41
step
talk Val'Sharah Flame Guardian##114493
accept Honor the Flame##44575 |goto Val'sharah/0 44.88,57.93
step
click Horde Bonfire##194039
turnin Honor the Flame##44575 |achieve 11280/2 |goto Val'sharah/0 44.88,57.93
step
talk Highmountain Flame Guardian##114494
accept Honor the Flame##44576 |goto Highmountain/0 55.50,84.44
step
click Horde Bonfire##194039
turnin Honor the Flame##44576 |achieve 11280/3 |goto Highmountain/0 55.50,84.44
step
talk Stormheim Flame Guardian##114496
accept Honor the Flame##44577 |goto Stormheim/0 32.49,42.15
step
click Horde Bonfire##194039
turnin Honor the Flame##44577 |achieve 11280/4 |goto Stormheim/0 32.49,42.15
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Harvest Festival\\Harvest Festival Quest",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Harvest Festival') end,
description="This guide section will walk you through completing the quest for the Harvest Festival event.",
},[[
step
talk Wagner Hammerstrike##15011
accept Honoring a Hero##8149 |goto Dun Morogh,59.7,34.3
step
Use Uther's Tribute in front of Uther's statue |use Uther's Tribute##19850
Place a Tribute at Uther's Tomb |q 8149/1 |goto Western Plaguelands 52.0,83.4
step
talk Wagner Hammerstrike##15011
turnin Honoring a Hero##8149 |goto Dun Morogh 59.7,34.3
step
You can click special food items on the table |goto Dun Morogh 59.9,34.8
|tip Once you have completed the Honoring a Hero quest you will get an item called Bounty of the Harvest in the mail
confirm
step
Congratulations, you've completed the _Harvest Festival_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Brewfest\\Brewfest Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
description="This guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Ipfelkofer Ironkeg##24710
accept Welcome to Brewfest!##11442 |instant |goto Dun Morogh 55.1,38.1
step
talk Goldark Snipehunter##23486
|tip If you are on an EU server, you will be unable to accept these 2 quests.
|tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
accept Brewfest!##11441 |goto 55.1,37.7
accept Brewfest!##11441 |goto 55.1,37.7
step
talk Goldark Snipehunter##23486
|tip Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
collect Synthebrew Goggles##46735 |q 11117 |goto 55.1,37.7
step
talk Boxey Boltspinner##27215
accept Chug and Chuck!##12022 |goto 54.7,38.1
step
Click the Alcohol-Free Brewfest Sampler
|tip They looks like mugs of beer on the small tables on either side of you.
Use your Complimentary Brewfest Samplers |use Alcohol-Free Brewfest Sampler##33096
Hit S.T.O.U.T. 5 Times |q 12022/1 |goto 54.8,37.9
step
talk Boxey Boltspinner##27215
turnin Chug and Chuck!##12022 |goto 54.7,38.1
step
talk Neill Ramstein##23558
accept Now This is Ram Racing... Almost.##11318 |goto 53.7,38.6
step
As you run around on the ram:
Use your Ram Racing Reins |use Ram Racing Reins##33306
|tip The ram runs slow by default. You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds. To make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot. To make the Ram Gallop, just spam use the Ram Racing Reins.
Maintain a Trot for 8 seconds |q 11318/1
Maintain a Canter for 8 seconds |q 11318/2
Maintain a Gallop for 8 seconds |q 11318/3
step
talk Neill Ramstein##23558
turnin Now This is Ram Racing... Almost.##11318
accept There and Back Again##11122 |goto 53.7,38.6
step
map Dun Morogh
path follow strict;loop;ants straight
path	54.6,43.3	54.5,47.4	53.1,51.3
path	53.7,51.8	54.5,47.7	54.6,43.4
path	53.6,38.5
Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
|tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
_FOLLOW THE WAYPOINT PATH_ Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver 3 Kegs in Under 4 Minutes |q 11122/1
step
talk Neill Ramstein##23558
turnin There and Back Again##11122 |goto 53.7,38.6
step
talk Goldark Snipehunter##23486
accept Catch the Wild Wolpertinger!##11117 |goto 55.1,37.7
step
talk Goldark Snipehunter##23486
Tell him: "I'd like a pair of Synthebrew Goggles."
collect Synthebrew Goggles##46735 |goto 55.1,37.7
step
Use your Synthebrew Goggles |use Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11117
step
Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907
|tip They look like rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11117/1 |goto 54.5,38.5
step
talk Goldark Snipehunter##23486
turnin Catch the Wild Wolpertinger!##11117 |goto 55.1,37.7
collect Wolpertinger's Tankard##32233 |n
use Wolpertinger's Tankard##32233
Does Your Wolpertinger Linger? |achieve 1936
|tip If you are on the EU server you will be able to achieve this in the Achievments Guide.
step
talk Goldark Snipehunter##23486
accept Pink Elekks On Parade##11118 |goto 55.1,37.7
step
talk Belbi Quikswitch##23710
turnin Another Year, Another Souvenir.##13932 |or
turnin A New Supplier of Souvenirs##29396 |or |goto 56.4,37.8
step
Use your Synthebrew Goggles |use Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977  |q 11118
Use your Elekk Dispersion Ray on Elwynn Pink Elekks |use Elekk Dispersion Ray##32960 |goto Elwynn Forest 33.5,50.7
kill 3 Elwynn Pink Elekk |q 11118/2
step
Use your Synthebrew Goggles |use Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11118
Use your Elekk Dispersion Ray on Teldrassil Pink Elekks |use Elekk Dispersion Ray##32960 |goto Darnassus 67.3,46.1
kill 3 Azuremyst Pink Elekk |q 11118/3
step
Use your Synthebrew Goggles |use Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11118
Use your Elekk Dispersion Ray on Azuremyst Pink Elekks |use Elekk Dispersion Ray##32960 |goto The Exodar 78.4,57.4
kill 3 Teldrassil Pink Elekk |q 11118/1
step
talk Goldark Snipehunter##23486
turnin Pink Elekks On Parade##11118 |goto Dun Morogh 55.1,37.7
step
Use the Dungeon Finder (press I) to queue for Coren Direbrew
|tip You must be level 46 or above to queue for this dungeon
You will fight Coren Direbrew
kill Coren Direbrew##23872
collect Direbrew's Dire Brew##38280 |n
Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38280
accept Direbrew's Dire Brew##12491
step
Click the green eye on the edge of your minimap
Teleport Out of the Dungeon and go to Dun Morogh |goto Dun Morogh |noway |c
step
talk Ipfelkofer Ironkeg##24710
turnin Direbrew's Dire Brew##12491 |goto 55.1,38.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Brewfest\\Brewfest Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
description="This guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
#include "Brewfest_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Brewfest\\Brewfest Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
description="This guide section will walk you through completing the achievements for the Brewfest event.",
},[[
step
talk Arlen Lochlan##23522
buy 1 The Essential Brewfest Pretzel##33043 |n |goto Dun Morogh,55.6,38.2
Eat The Essential Brewfest Pretzels |achieve 1185/7 |use The Essential Brewfest Pretzel##33043
step
talk Anne Summers##23521
buy 1 Spiced Onion Cheese##34065 |n |goto 56.5,37.7
Eat the Spiced Onion Cheese |achieve 1185/4 |use Spiced Onion Cheese##34065
step
talk Keiran Donoghue##23481 |goto 56.0,36.4
buy 1 Dried Sausage##34063 |n
Eat the Dried Sausage |achieve 1185/1 |use Dried Sausage##34063
buy 1 Succulent Sausage##34064 |n
Eat the Succulent Sausage |achieve 1185/6 |use Succulent Sausage##34064
buy 1 Savory Sausage##33023 |n
Eat the Savory Sausage |achieve 1185/3 |use Savory Sausage##33023
buy 1 Pickled Sausage##33024 |n
Eat the Pickled Sausage |achieve 1185/2 |use Pickled Sausage##33024
buy 1 Spicy Smoked Sausage##33025 |n
Eat Spicy Smoked Sausage |achieve 1185/5 |use Spicy Smoked Sausage##33025
buy 1 The Golden Link##33026 |n
Eat The Golden Link |achieve 1185/8 |use The Golden Link##33026
step
Eat all of the Brewfest Foods!
achieve 1185
step
talk Belbi Quikswitch##23710
buy 1 Fresh Brewfest Hops##37750 |achieve 303 |goto 56.4,37.8
|tip You must be at least level 20 to buy these.
step
Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
Make your Mount Festive for Brewfest!
achieve 303
step
Wait here for the darkiron event |goto Dun Morogh 56.0,37.2
|tip This event will happen every 30 minutes, you will know when it's about to begin when drills come out from the ground.
Click the Alcohol-Free Brewfest Sampler
|tip They looks like mugs of beer on the small tables on either side of you.
Use your Complimentary Brewfest Samplers |use Alcohol-Free Brewfest Sampler##33096
|tip Try facing toward the darkiron mobs that come out of the drills.
|tip At the end of the event a wheel will drop to the ground.
confirm
step
click the Dark Iron Mole Machine Wreckage##189990 |goto 56.0,37.2
accept This One Time, When I Was Drunk....##12020
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto Dun Morogh,54.7,38.1
achieve 1186
step
Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
collect 200 Brewfest Prize Token##37829 |achieve 2796
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |n
Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420 |goto 56.4,37.9
step
talk Larkin Thunderbrew##27478
turnin Brew of the Month Club##12420 |goto Ironforge 18.8,53.1
achieve 2796
step
If you are on the EU servers go here to buy your Wolpertinger Pet
buy Wolpertinger's Tankard##32233 |n |goto Dun Morogh 56.4,37.8
Does Your Wopertinger Linger? |achieve 1936
step
Queue for the dungeon Coren Direbrew, to do this press "I" and select "Coren Direbrew"
|tip You must be level 46 or above to queue for this dungeon
kill Coren Direbrew##23872
achieve 295
step
Earn the Brewmaster title |achieve 1683
step
Use your Synthebrew Goggles |use Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977
Fall from a high place
|tip You must fall at least 65 yards and not die to recieve this achievement (flying up in the air and dismounting is a good way to do this.)
achieve 1260
step
Disturbing the Peace
|tip Wear 3 pieces of brewfest gear, get drunk, and /dance in Dalaran.
talk Belbi Quikswitch##23710
|tip Buying these 3 pieces will cost 350 coins.
collect 350 Brewfest Prize Token##37829
|tip buy any brew from the vendors at brewfest.
Then go to Dalarn and equip the items you bought, drink some brew and /dance
achieve 293
step
Brew of the Year
|tip This achievement is givin to players that are apart of the Brew of the Month Club. |achieve 2796
|tip Every month these players will recieve a brew in the mail, simply take this brew out and drink it then you will be one step closer to getting this achievement.
|tip This achievment takes a year to get.
achieve 1183
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Hallow's End\\Hallow's End Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Hallow's End") end,
description="This guide section will walk you through completing the quests for the Hallow's End event.",
},[[
#include "Hallow's_End_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Hallow's End\\Hallow's End Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Hallow's End") end,
description="This guide section will walk you through completing the daily quests for the Hallow's End event.",
},[[
#include "Hallow's_End_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Hallow's End\\Hallow's End Warlords of Draenor Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Hallow's End") end,
description="This guide section will walk you through completing the Draenor daily quests for the Hallow's End event.",
},[[
step
talk Orukan##96705
accept Smashing Squashlings##39716 |goto Lunarfall/0 44.0,51.4
accept Foul Fertilizer##39720 |goto Lunarfall/0 44.0,51.4
accept Mutiny on the Boneship##39719 |goto Lunarfall/0 44.0,51.4
accept Culling the Crew##39721 |goto Lunarfall/0 44.0,51.4
stickystart "boneshipkills"
stickystart "squashlings"
stickystart "fertilizer"
step
kill Captain Bonerender##96535 |q Mutiny on the Boneship##39719/1 |goto Shadowmoon Valley D/0 38.7,86.3
step
label "boneshipkills"
kill Brackish Cultivator##96538+, Salty Dreg##96536+, Boneship Reveler##96637+
|tip These are found all around this small island.
Kill #12# Boneship Crewmen |q Culling the Crew##39721/1 |goto Shadowmoon Valley D/0 39.8,80.4
step
label "squashlings"
kill 6 Growing Squashling##96545+ |q Smashing Squashlings##39716/1 |goto Shadowmoon Valley D/0 40.2,81.8
step
label "fertilizer"
clicknpc Dread Fertilizer##96765+
|tip These are found all around this small island.
Destroy #8# Fertilizers |q Foul Fertilizer##39720/1 |goto Shadowmoon Valley D/0 40.1,84.3
step
talk Orukan##96705
turnin Smashing Squashlings##39716 |goto Lunarfall/0 44.0,51.4
turnin Foul Fertilizer##39720 |goto Lunarfall/0 44.0,51.4
turnin Mutiny on the Boneship##39719 |goto Lunarfall/0 44.0,51.4
turnin Culling the Crew##39721 |goto Lunarfall/0 44.0,51.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Hallow's End\\Hallow's End Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Hallow's End") end,
description="This guide section will walk you through completing the achievements for the Hallow's End event.",
},[[
#include "Hallow's_End_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Hallow's End\\Hallow's End Achievements (Pandaria)",{
condition_suggested=function() return isevent("Hallow's End") end,
description="Visit all the Candy Buckets in Pandaria",
},[[
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Jade Forest, Paw'don Village |q 32049 |future |goto The Jade Forest/0 44.80,84.36
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Jade Forest, Pearlfin Village |q 32033 |future |goto The Jade Forest/0 59.56,83.24
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Jade Forest, Jade Temple Grounds |q 32032 |future |goto The Jade Forest/0 54.61,63.33
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Jade Forest, Dawn's Blossom |q 32027 |future |goto The Jade Forest/0 45.77,43.61
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Jade Forest, Tian Monastery |achieve 7602/9 |goto The Jade Forest 41.7,23.2
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Jade Forest, Sri-La Village |q 32031 |future |goto The Jade Forest/0 55.72,24.41
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Jade Forest, Greenstone Village |q 32029 |future |goto The Jade Forest/0 48.09,34.62
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Kun-Lai Summit, Binan Village |q 32039 |future |goto Kun-Lai Summit/0 72.73,92.28
step
click Candy Bucket##208144
|tip You must complete the quest "Challenge Accepted" to access this candy bucket.
|tip You can complete it by doing the few quests at Binan Village in Kun-Lai Summit.
|tip These quests will lead you to Westwind Rest.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Kun-Lai Summit, Westwind Rest |q 32042 |future |goto Kun-Lai Summit/0 54.07,82.82
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Kun-Lai Summit, One Keg |q 32037 |future |goto Kun-Lai Summit/0 57.45,59.95
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Kun-Lai Summit, The Grummle Bazaar |q 32041 |future |goto Kun-Lai Summit/0 64.21,61.27
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Kun-Lai Summit, Zouchin Village |q 32051 |future |goto Kun-Lai Summit/0 62.50,28.90
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Townlong Steppes, Longying Outpost |q 32043 |future |goto Townlong Steppes/0 71.11,57.78
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Vale of Eternal Blossoms, Mistfall Village |q 32044 |future |goto Vale of Eternal Blossoms/0 35.14,77.78
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Vale of Eternal Blossoms, Shrine of Seven Stars |q 32052 |future |goto Vale of Eternal Blossoms/3 37.81,65.92
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in The Veiled Stair, Tavern in the Mists |q 32026 |future |goto The Veiled Stair/0 55.10,72.23
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Valley of the Four Winds, Pang's Stead |q 32048 |future |goto Valley of the Four Winds/0 83.64,20.15
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Valley of the Four Winds, Stoneplow |q 32046 |future |goto Valley of the Four Winds/0 19.87,55.79
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
Visit the Candy Bucket in Dread Wastes, Klaxxi'vess |q 32024 |future |goto Dread Wastes 55.93,32.27
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
Visit the Candy Bucket in Dread Wastes, Soggy's Gamble |q 32023 |future |goto Dread Wastes 55.22,71.19
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Krasarang Wilds, Zhu's Watch |q 32036 |future |goto Krasarang Wilds/0 75.92,6.87
step
click Candy Bucket##208144
|tip It's inside the inn.
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Krasarang Wilds, Marista |q 32034 |future |goto Krasarang Wilds/0 51.40,77.29
step
Congraulations, you now have the _Tricks and Treats of Pandaria_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Hallow's End\\Hallow's End Legion Buckets",{
condition_suggested=function() return isevent("Hallow's End") end,
description="Visit all the Candy Buckets in Legion",
},[[
step
Enter the building |goto Dalaran L/10 49.93,37.69 < 10 |walk
click Candy Bucket##208144
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
Visit the Candy Bucket in The Legerdemain Lounge |q 43055 |future |goto Dalaran L/10 47.96,41.75
step
Enter the building |goto Dalaran L/10 45.07,59.94 < 10 |walk
click Candy Bucket##208144
Complete the Candy Bucket quest |use Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
Visit the Candy Bucket in the Hero's Welcome |q 43056 |future |goto Dalaran L/10 41.47,64.02
step
Congratulations, you collected all of the Legion Candy Buckets!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.",
},[[
#include "Pilgrim's_Bounty_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Daily Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.",
},[[
#include "Pilgrim's_Bounty_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') end,
description="This guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
talk Innkeeper Firebrew##5111
home Ironforge |goto Ironforge 18.1,51.4
step
talk Wulmort Jinglepocket##13433
accept Greatfather Winter is Here!##7022 |goto Ironforge 33.7,67.3
step
talk Greatfather Winter##13444
turnin Greatfather Winter is Here!##7022 |goto 33.1,65.5
accept Treats for Greatfather Winter##7025 |goto 33.1,65.5
step
talk Goli Krumn##1365
accept The Reason for the Season##7062 |goto 30.2,59.4
step
talk Daryl Riknussun##5159
Learn the Apprentice Cooking skill |goto 60.1,36.4
only if skill("Cooking")<=1
step
talk Historian Karnik##2916
turnin The Reason for the Season##7062 |goto 77.5,11.8
accept The Feast of Winter Veil##7063 |goto 77.5,11.8
step
talk Wulmort Jinglepocket##13433
buy 1 Recipe: Gingerbread Cookie##17200 |condition itemcount(17200) >= 1 |n
Click the Recipe: Gingerbread Cookie recipe in your bags |use Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143 |goto 33.7,67.3
confirm
step
talk Wulmort Jinglepocket##13433
buy 5 Holiday Spices##17194 |condition itemcount(17194) >= 5 |goto 33.7,67.3 |q 7025
step
#include "auctioneer_ironforge"
buy 5 Small Egg##6889 |condition itemcount(6889) >= 5 |q 7025
Click here to farm these yourself |confirm |next "farm"
|next "cook"
step
label "farm"
kill Young Fleshripper##199+, Greater Fleshripper##154+
collect 5 Small Egg##6889 |goto Westfall 50.8,24.4 |q 7025
step
label "cook"
create 5 Gingerbread Cookie##21143,Cooking,5 total |condition itemcount(21143) >= 5 |goto Ironforge 32.1,62.8 |q 7025/1
step
talk Innkeeper Firebrew##5111
buy 1 Ice Cold Milk##1179 |condition itemcount(1179) >= 1 |goto 18.1,51.4 |q 7025
step
talk Greatfather Winter##13444
turnin Treats for Greatfather Winter##7025 |goto 33.1,65.5
step
talk Muradin Bronzebeard##42928
turnin The Feast of Winter Veil##7063 |goto 39.2,56.0
step
talk Strange Snowman##13636
accept You're a Mean One...##7043 |goto Hillsbrad Foothills 42.3,41.1
only if level>=80
step
kill The Abominable Greench##54499
collect Stolen Treats##17662 |q 7043/1 |goto Hillsbrad Foothills 43.6,39.0
|tip They are the bags on the ground behind the Abominable Greench.
Free Metzen the Reindeer |goto Hillsbrad Foothills 43.6,39.0 |q 7043/2
|tip After you defeat The Abominable Greench Metzen is freed.
only if level>=80 and havequest(7043)
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge 33.7,67.3 |only if level>=80 and havequest(7043)
accept A Smokywood Pastures' Thank You!##7045 |goto Ironforge 33.7,67.3
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto 33.1,65.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') end,
description="This guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
talk Wulmort Jinglepocket##13433
accept You're a Mean One...##7043 |goto Ironforge 33.6,68.0
only if level >= 80
step
kill 1 The Abominable Greench##54499
Free Metzen the Reindeer |q You're a Mean One...##7043/2 |goto Hillsbrad Foothills 43.5,39.2
click Stoeln Treats##7678
collect Stolen Treats##17662 |q You're a Mean One...##7043/1 |goto 43.53,38.60
only if level >= 80 and havequest(7043)
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge 33.6,68.0
only if level >= 80 and havequest(7043)
step
ding 100
|tip You must be level 100 to accept the following quests.
step
talk Almie##96451
accept What Horrible Presents!##39668 |goto Lunarfall 44.1,51.7
accept Grumpus##39651 |goto Lunarfall 44.1,51.7
accept Menacing Grumplings##39649 |goto Lunarfall 44.1,51.7
accept Where Are the Children?##39648 |goto Lunarfall 44.1,51.7
stickystart "Grumpus"
stickystart "Grumpling"
stickystart "Children"
stickystart "Presents"
step
label "Presents"
Use your Spirit Bomb on unusual presents. |use Spirt Bomb##128675
Destroy 5 unusual presents |q What Horrible Presents##39668/1 |goto Frostfire Ridge 45.3,27.0
|tip They are tiny colored looking toys next to satchels lying on the ground.
step
label "Grumpus"
kill Grumpus##96448 |q Grumpus ##39651/1 |goto Frostfire Ridge 45.6,28.2
|tip This is an elite mob, you will need a group to kill it.
step
label "Grumpling"
kill 8 Grumpling##96449+ |q Menacing Grumplings ##39649/1 |goto Frostfire Ridge 46.6,27.8
step
label "Children"
Click Holding Cages
free 6 Draenei Child |q Where Are the Children? ##39648/1 |goto Frostfire Ridge 46.6,27.8
step
talk Almie##96451
turnin What Horrible Presents!##39668 |goto Lunarfall 44.1,51.7
turnin Grumpus##39651 |goto Lunarfall 44.1,51.7
turnin Menacing Grumplings##39649 |goto Lunarfall 44.1,51.7
turnin Where Are the Children?##39648 |goto Lunarfall 44.1,51.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') end,
achieveid={1691},
description="This guide section will walk you through completing the achievements for the Feast of Winter Veil event.",
},[[
step
#include "FoWV_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests", {
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="This guide will help you navigate through the Darkmoon Faire Event",
},[[
#include "Darkmoon_Faire_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies", {
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="This guide will help you navigate through the Darkmoon Faire Event",
},[[
#include "Darkmoon_Faire_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Darkmoon Faire\\Darkmoon Faire Achievements", {
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="This guide will help you navigate through the Darkmoon Faire Event",
},[[
step
label "main"
To earn Achievements for the Darkmoon Faire, you will need to complete Dailies, Quests and other tasks
Click here to do the Dailies Achievements |confirm always |next "dailies"
or
Click here to do the Profession Quests Achievements |confirm always |next "professions"
or
Click here for the Non-Questing Achievements |confirm always |next "no_quest"
step
label "dailies"
You have earned the Achievement Blastenheimer Bullseye! |achieve 6021 |only if achieved(6021)
You still need to earn the Achievement Blastenheimer Bullseye! |achieve 6021 |only if not achieved(6021)
You have earned the Achievement Quick Shot! |achieve 6022 |only if achieved(6022)
You still need to earn the Achievement Quick Shot! |achieve 6022 |only if not achieved(6022)
You have earned the Achievement Step Right Up! |achieve 6020 |only if achieved(6020)
You still need to earn the Achievement Step Right Up! |achieve 6020 |only if not achieved(6020)
confirm always
step
#include "Darkmoon_Faire_Dailies"
|next "main"
step
label "professions"
You have earned the Achievement Faire Favors |achieve 6032 |only if achieved(6032)
You still need to earn the Achievement Faire Favors |achieve 6032 |only if not achieved(6032)
You have earned the Achievement Darkmoon Dungeoneer |achieve 6027 |only if achieved(6027)
You still need to earn the Achievement Darkmoon Dungeoneer |achieve 6027 |only if not achieved(6027)
You have earned the Achievement Darkmoon Defender |achieve 6028 |only if achieved(6028)
You still need to earn the Achievement Darkmoon Defender |achieve 6028 |only if not achieved(6028)
You have earned the Achievement Darkmoon Despoiler |achieve 6029 |only if achieved(6029)
You still need to earn the Achievement Darkmoon Despoiler |achieve 6029 |only if not achieved(6029) |tip
confirm always
step
#include "Darkmoon_Faire_Quests"
step
These next 3 items have to be _obtained from Battlegrounds_
When you kill an opponent, _loot_ their body for a chance to get _each item_
collect Adventurer's Journal##71953 |n
accept The Captured Journal##29458 |use Adventurer's Journal##71953
collect Banner of the Fallen##71951 |n
accept A Captured Banner##29456 |use Banner of the Fallen##71951
collect Captured Insignia##71952 |n
accept The Enemy's Insignia##29457 |use Captured Insignia##71952
step
These next 5 items have to be _obtained from Dungeons_ listed below
collect Mysterious Grimoire##71637 |n
|tip You can get this in Heroic Scholomance from Darkmaster Gandling.
accept An Inriguing Grimoire##29445 |use Mysterious Grimoire##71637
collect Monstrous Egg##71636 |n
|tip You can get this in Stormstout Brewery from Hoptallus.
accept An Exotic Egg##29444 |use Monstrous Egg##71636
collect A Treatise on Strategy##71715 |n
|tip You can get this in Stormstout Brewery from Hoptallus.
accept The Master Strategist##29451 |use A Treatise on Strategy##71715
collect Ornate Weapon##71638 |n
|tip You can get this in Heroic Scarlet Monastery from Brother Korloff.
accept A Wondrous Weapon##29446 |use Ornate Weapon##71638
collect Imbued Crystal##71635 |n
|tip You can get this in Heroic Scarlet Monastery from High Inquisitor Whitemane.
accept A Curious Crystal##29443 |use Imbued Crystal##71635
step
The next item can only be obtained from any 10 man Cataclysm Raid Boss
collect Soothsayer's Runes##71716 |n
accept Tools of Divination##29464 |use Soothsayer's Runes##71716
step
talk Kerri Hicks##14832
turnin Test Your Strength##29433 |goto Darkmoon Island/0 47.9,67.1
step
talk Professor Thaddeus Paleo##14847
turnin The Captured Journal##29458 |goto Darkmoon Island/0 51.9,60.9
turnin A Captured Banner##29456 |goto Darkmoon Island/0 51.9,60.9
turnin The Enemy's Insignia##29457 |goto Darkmoon Island/0 51.9,60.9
turnin The Master Strategist##29451 |goto Darkmoon Island/0 51.9,60.9
turnin A Wondrous Weapon##29446 |goto Darkmoon Island/0 51.9,60.9
turnin A Curious Crystal##29443 |goto Darkmoon Island/0 51.9,60.9
turnin Tools of Divination##29464 |goto Darkmoon Island/0 51.9,60.9
step
talk Yebb Neblegear##14829
turnin An Exotic Egg##29444 |goto Darkmoon Island/0 51.0,81.2
step
talk Sayge##14822
turnin An Intriguing Grimoire##29445 |goto Darkmoon Island/0 53.6,76.0
|next "main"
step
label "no_quest"
You have earned the Achievement Darkmoon Duelist! |achieve 6023 |only if achieved(6023)
You still need to earn the Achievement Darkmoon Duelist! |achieve 6023 |only if not achieved(6023)
You have earned the Achievement Fairegoer's Feast! |achieve 6026 |only if achieved(6026)
You still need to earn the Achievement Fairegoer's Feast! |achieve 6026 |only if not achieved(6026)
You have earned the Achievement Taking the Show on the Road! |achieve 6030 |only if achieved(6030)
You still need to earn the Taking the Show on the Road! |achieve 6030 |only if not achieved(6030)
You have earned the Achievement I Was Promised a Pony! |achieve 6025 |only if achieved(6025)
You still need to earn the I Was Promised a Pony! |achieve 6025 |only if not achieved(6025) |tip
confirm always
step
talk Sylannia##14844
buy 1 Cheap Beer##19222 |n |goto Darkmoon Island/0 50.5,69.5
Drink Cheap Beer |achieve 6026/12 |use Cheap Beer##19222
buy 1 Darkmoon Special Reserve##19221 |n |goto Darkmoon Island/0 50.5,69.5
Drink Darkmoon Special Reserve |achieve 6026/13 |use Special Reserve##19221
buy 1 Fizzy Faire Drink##19299 |n |goto Darkmoon Island/0 50.5,69.5
Drink Fizzy Faire Drink |achieve 6026/14 |use Fizzy Faire Drink##19299
buy 1 Bottled Winterspring Water##19300 |n |goto Darkmoon Island/0 50.5,69.5
Drink Bottled Winterspring Water |achieve 6026/11 |use Bottled Winterspring Water##19300
buy 1 Iced Berry Slush##33234 |n |goto Darkmoon Island/0 50.5,69.5
Drink Iced Berry Slush |achieve 6026/17 |use Iced Berry Slush##33234
buy 1 Fizzy Faire Drink "Classic"##33236 |n |goto Darkmoon Island/0 50.5,69.5
Drink Fizzy Faire Drink "Classic" |achieve 6026/15 |use Fizzy Faire Drink "Classic"##33236
buy 1 Fresh-Squeezed Limeade##44941 |n |goto Darkmoon Island/0 50.5,69.5
Drink Fresh-Squeezed Limeade |achieve 6026/16 |use Fresh-Squeezed Limeade##44941
buy 1 Sasparilla Sinker##74822 |n |goto Darkmoon Island/0 50.5,69.5
Drink Sasparilla Sinker |achieve 6026/18 |use Sasparilla Sinker##74822
step
talk Stamp Thunderhorn##14845
buy 1 Darkmoon Dog##19223 |n |goto Darkmoon Island/0 52.8,68.0
Eat Darkmoon Dog |achieve 6026/3 |use Darkmoon Dog##19223
buy 1 Spiced Beef Jerky##19304 |n |goto Darkmoon Island/0 52.8,68.0
Eat Spiced Beef Jerky |achieve 6026/10 |use Spiced Beef Jerky##19304
buy 1 Pickled Kodo Foot##19305 |n |goto Darkmoon Island/0 52.8,68.0
Eat Pickled Kodo Foot |achieve 6026/7 |use Pickled Kodo Foot##19305
buy 1 Red Hot Wings##19224 |n |goto Darkmoon Island/0 52.8,68.0
Eat Red Hot Wings |achieve 6026/8 |use Red Hot Wings##19224
buy 1 Crunchy Frog##19306 |n |goto Darkmoon Island/0 52.8,68.0
Eat Crunchy Frog |achieve 6026/2 |use Crunchy Frog##19306
buy 1 Deep Fried Candybar##19225 |n |goto Darkmoon Island/0 52.8,68.0
Eat Deep Fried Candybar |achieve 6026/4 |use Deep Fried Candybar##19225
buy 1 Funnel Cake##33246 |n |goto Darkmoon Island/0 52.8,68.0
Eat Funnel Cake |achieve 6026/6 |use Funnel Cake##33246
buy 1 Forest Strider Drumstick##33254 |n |goto Darkmoon Island/0 52.8,68.0
Eat Forest Strider Drumstick |achieve 6026/5 |use Forest Strider Drumstick##33254
buy 1 Corn-Breaded Sausage##44940 |n |goto Darkmoon Island/0 52.8,68.0
Eat Corn-Breaded Sausage |achieve 6026/1 |use Corn-Breaded Sausage##44940
buy 1 Salty Sea Dog##73260 |n |goto Darkmoon Island/0 52.8,68.0
Eat Salty Sea Dog |achieve 6026/9 |use Salty Sea Dog##73260
Earn the Achievement Fairegoer's Feast |achieve 6026
step
clicknpc Darkmoon Pony##55715
Earn the Achievement I Was Promised a Pony |achieve 6025 |goto Darkmoon Island/0 56.8,81.4
step
talk Boomie Sparks##55278
buy 6 Darkmoon Firework##74142 |goto Darkmoon Island/0 48.4,71.9
step
Use your Darkmoon Firework |achieve 6030/6 |use Darkmoon Firework##74142 |goto Stormwind City 55,55
step
Use your Darkmoon Firework |achieve 6030/4 |use Darkmoon Firework##74142|goto Ironforge 56,47
step
Use your Darkmoon Firework |achieve 6030/2 |use Darkmoon Firework##74142 |goto Darnassus 46,44
step
Use your Darkmoon Firework |achieve 6030/3 |use Darkmoon Firework##74142|goto The Exodar 53,38
step
Use your Darkmoon Firework |achieve 6030/5 |use Darkmoon Firework##74142 |goto Shattrath City 62,42
step
Use your Darkmoon Firework |achieve 6030/1 |use Darkmoon Firework##74142 |goto Dalaran 71,45
step
Click Darkmoon Deathmatch Gate and enter the Deathmatch Arena
Once inside, you will need to fight anyone inside, if you win, you will earn an achievement
Earn the Achievement Darkmoon Duelist! |achieve 6023 |goto Darkmoon Island/0 46.8,78.8
Defeat 12 combatants in the Deathmatch Arena
Earn the Achievement Darkmoon Dominator |achieve 6024 |goto Darkmoon Island/0 46.8,78.8
step
In order to earn the Triumphant Turtle Tossing achievement, you will need to watch carefully
You will notice the turtle starts off in a specific spot
It will walk away, then return to the spot of origin
When it begins to run back to the spot of origin, toss a ring at the said spot
Earn the Triumphant Turtle Tossing Achievement |achieve 9894
step
In order to earn the Ace Tonk Commander achievement, you will need to land 45 hits in _a single session_ of the Tonk Challenge
The easiest way to earn this achievement is to wait until there are hardly any people around for a better chance at destroying the targets
|tip Spam 1 on your action bar as soon as you get in the arena.
talk Finlay Coolshot##54605
Tell him "Ready to play!" |goto Darkmoon Island/0 50.7,65.1
Earn the Ace Tonk Commander Achievement |achieve 9885
step
This portion will cover 4 Achievements, all centering around the Racing Strider
In order to earn the Darkmoon Racer Achievements, you will need to complete a race with minimal amount of toll build ups
If you end the race within 11 tolls, you will earn all 4 achievements
Click here to move onto the racing quests |confirm
stickystart "4fold"
step
talk Malle Earnhard##74056
accept The Real Race##37910 |goto 49.04,88.21
step
Choose the _Racing Strider_ |havebuff Interface\Icons\Ability_Hunter_Pet_TallStrider |goto Darkmoon Island/0 48.4,87.7
only if havequest(37910)
step
Enter the Start Banner with a Darkmoon Game Token |q The Real Race##37910/1 |goto 47.71,88.27
step
map Darkmoon Island/0
path loop off; dist 15
path	42.4,86.7	36.7,83.2	31.8,76.9
path	30.6,71.5	26.7,66.7
Follow the provided path, using the provided abilities to run the track
Reach the Blue Post |q The Real Race##37910/2
step
map Darkmoon Island/0
path loop off; dist 15
path	28.8,63.3	27.6,56.7	29.6,45.8
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q The Real Race##37910/3
step
map Darkmoon Island/0
path loop off; dist 15
path	33.4,48.5	36.5,51.2	41.3,51.1
path	43.6,50.4
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q The Real Race##37910/4
step
map Darkmoon Island/0
path loop off; dist 15
path	44.9,54.7	44.3,60.3	41.7,68.1
path	41.3,74.2	39.7,80.3	44.3,86.7
path	47.8,88.3
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q The Real Race##37910/5
step
label "dualrace"
talk Malle Earnhard##74056
turnin The Real Race##37910 |goto 49.04,88.21
accept Let's Keep Racing!##33756 |goto 48.96,88.15
step
Choose the _Racing Strider_ |havebuff Interface\Icons\Ability_Hunter_Pet_TallStrider |goto Darkmoon Island/0 48.4,87.7
only if havequest(33756)
step
Enter the Start Banner with a Darkmoon Game Token |q Let's Keep Racing##33756/1 |goto 47.71,88.27
step
map Darkmoon Island/0
path loop off; dist 15
path	42.4,86.7	36.7,83.2	31.8,76.9
path	30.6,71.5	26.7,66.7
Follow the provided path, using the provided abilities to run the track
Reach the Blue Post |q The Real Race##33756/2
step
map Darkmoon Island/0
path loop off; dist 15
path	28.8,63.3	27.6,56.7	29.6,45.8
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q The Real Race##33756/3
step
map Darkmoon Island/0
path loop off; dist 15
path	33.4,48.5	36.5,51.2	41.3,51.1
path	43.6,50.4
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q The Real Race##33756/4
step
map Darkmoon Island/0
path loop off; dist 15
path	44.9,54.7	44.3,60.3	41.7,68.1
path	41.3,74.2	39.7,80.3	44.3,86.7
path	47.8,88.3
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q The Real Race##33756/5
step
talk Malle Earnhard##74056
turnin Let's Keep Racing!##33756 |goto 48.96,88.15
step
label "4fold"
Be sure to hit all of the _Speed Boots_ while racing
Earn the Darkmoon Racer Novice Achievement |achieve 9756
Earn the Darkmoon Racer Jockey Achievement |achieve 9759
Earn the Darkmoon Racer Leadfoot Achievement |achieve 9760
Earn the Darkmoon Racer Roadhog Achievement |achieve 9761
Click here to continue on to other achievements |confirm |achieve 9761
Click here to race again |confirm |next "dualrace" |achieve 9761
step
In order to earn the Big Rocketeer set of achievements, you will need to complete the Real Big Race quest within 30, 25, and 20 tolls, WHILE using the Rocketeer mount
confirm
stickystart "rbr"
step
talk Patti Earnhard##90473
accept The Real Big Race##37911 |goto 53.18,87.56
step
Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |goto Darkmoon Island/0 48.4,87.7
only if havequest(37911) or havequest(37868)
step
Enter the Start Banner with a Darkmoon Game Token |q The Real Big Race##37911/1 |goto Darkmoon Island/0 54.5,88.3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.0,86.6	65.6,88.1	70.3,89.9
path	74.1,87.0	78.4,80.2	78.5,75.0
path	76.1,61.2	74.6,62.0	73.5,61.9
path	71.8,60.6	71.7,67.2	70.3,71.6
Follow the provided path, using the provided abilities to run the track
Reach the Purple Post |q The Real Big Race##37911/2
step
map Darkmoon Island/0
path loop off; dist 15
path	69.7,67.1	70.3,57.2	68.0,50.8
path	67.9,47.3	66.8,36.4	64.5,19.9
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q The Real Big Race##37911/3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.7,24.1	58.1,22.1	57.4,27.6
path	56.2,27.3	55.8,23.8	54.6,20.3
path	53.0,18.3	50.9,18.2
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q The Real Big Race##37911/4
step
map Darkmoon Island/0
path loop off; dist 15
path	51.1,25.0	53.1,29.9	52.9,36.5
path	55.5,37.1	56.7,43.2	57.7,49.6
path	51.7,59.4	49.3,66.0	49.4,72.3
path	49.9,81.4	51.7,87.9	54.7,88.2
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q The Real Big Race##37911/5
step
label "race2"
talk Patti Earnhard##90473
turnin The Real Big Race##37911 |goto 53.18,87.56
accept More Big Racing!##37868 |goto 53.11,87.71
step
Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |goto Darkmoon Island/0 48.4,87.7
only if havequest(37911) or havequest(37868)
step
Enter the Start Banner with a Darkmoon Game Token |q The Real Big Race##37868/1 |goto Darkmoon Island/0 54.5,88.3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.0,86.6	65.6,88.1	70.3,89.9
path	74.1,87.0	78.4,80.2	78.5,75.0
path	76.1,61.2	74.6,62.0	73.5,61.9
path	71.8,60.6	71.7,67.2	70.3,71.6
Follow the provided path, using the provided abilities to run the track
Reach the Purple Post |q The Real Big Race##37868/2
step
map Darkmoon Island/0
path loop off; dist 15
path	69.7,67.1	70.3,57.2	68.0,50.8
path	67.9,47.3	66.8,36.4	64.5,19.9
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q The Real Big Race##37868/3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.7,24.1	58.1,22.1	57.4,27.6
path	56.2,27.3	55.8,23.8	54.6,20.3
path	53.0,18.3	50.9,18.2
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q The Real Big Race##37868/4
step
map Darkmoon Island/0
path loop off; dist 15
path	51.1,25.0	53.1,29.9	52.9,36.5
path	55.5,37.1	56.7,43.2	57.7,49.6
path	51.7,59.4	49.3,66.0	49.4,72.3
path	49.9,81.4	51.7,87.9	54.7,88.2
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q The Real Big Race##37868/5
step
talk Patti Earnhard##90473
turnin More Big Racing!##37868 |goto 53.11,87.71
step
label "rbr"
Earn the Big Rocketeer: Bronze Achievement |achieve 9801
Earn the Big Rocketeer: Silver Achievement |achieve 9803
Earn the Big Rocketeer: Gold Achievement |achieve 9805
step
map Darkmoon Island/0
path follow strict; loop off; dist 15
path	48.5,71.4	46.5,70.8	45.6,66.5
path	43.0,56.2	48.2,49.3	51.0,44.4
path	48.0,44.0	45.4,38.3	42.2,34.8
path	41.8,43.4	32.1,41.1	29.0,36.5
path	29.0,36.5	22.5,33.7	20.4,39.2
path	29.2,44.8	29.6,53.1	31.9,62.1
path	26.6,66.6	27.8,68.3	31.5,66.7
path	39.0,67.8	40.7,76.2	44.9,78.6
path	43.2,86.9	48.7,87.8	53.8,88.3
path	56.7,86.1	52,77		52,72
path	57,70		57,64		55,58
path	50,55		55,50		54,45
path	59,33		61,40		63,44
path	61,53		69,51		71,59
path	66,65		70,66		75,68
path	71,72		70,79		67,80
path	67,76		63,77		65,84
Fly through the rings in order to stack _Blazing Ring_ buffs
|tip Zoom your camera out as far as you can, so you can see how high or low the rings are.
Stack 10 Blazing Ring Buffs and earn the Flying High Achievement |achieve 9250
Stack 25 Blazing Ring Buffs and earn the Ringmaster Achievement |achieve 9251
Stack 50 Blazing Ring Buffs and earn the Brood of Alysrazor Achievement |achieve 9252
step
For the achievement "That Rabbit's Dynamite!", you will need a large group
Stand at the back of the cave at the provided Location
Don't run away once you have engaged; You'll reset the fight and waste time
If you die, release quickly and run back to your corpse
Earn the _That Rabbit's Dynamite!_ Achievement |achieve 6332 |goto Darkmoon Island/0 75.4,77.8
|next "main"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Darkmoon Faire\\\Blight Boar Concert", {
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="This guide will help you navigate through the Darkmoon Faire Event, Blight Boar Concert",
},[[
step
The Blight Boar Concert is a new event added in patch 7.2.5
|tip This event happens every hour on the half hour during the Darkmoon Faire.
|tip The Darkmoon Faire is only active for a week starting on the first Sunday of every month.
confirm
step
Enter the cave |goto Darkmoon Island/0 64.54,67.59 < 5
Once the Blight Boar Concert starts, the Death Metal Knight will appear |goto Darkmoon Island/1 38.70,39.58
You and a group of players will need to defeat this boss while dodging a few mechanics
|tip During the concert he will peridically summon waves of ghosts; dodge these as best as you can.
|tip He will also do unavoidable area damage, mitigate this as best as possible.
|tip Just before he dies, he will summons ghouls. These need to be damaged to knock them back. You do not want any to reach Devlynn Styx, who stands in the middle of the room.
confirm
step
_Congratulations!_
You have completed the new Darkmoon Faire event _Blight Boar Concert_!
]])
ZygorGuidesViewer:RegisterGuide("Events\\Warlords of Draenor\\The Iron Horde Invasion",{
description="Take part in the opening event of the Warlords of Draenor!",
},[[
step
accept Iron Horde Invasion##36498 |goto Stormwind City 49.0,87.3
step
talk Vindicator Maraad##82270
turnin Iron Horde Invasion##36498 |goto Blasted Lands 66.6,28.2
accept Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
accept Under Siege##35462 |goto Blasted Lands 66.6,28.2
step
accept Peeking into the Portal##36379 |goto 66.9,27.9
step
talk Araazi##85731
fpath Shattershore |goto Blasted Lands 67.7,28.0
stickystart "1"
step
click Telescope##237144
Use the telescope |q Peeking into the Portal##36379/1 |goto Blasted Lands 61.7,36.7
step
label "1"
clicknpc Iron Demolisher##82273
Destroy 3 Iron Demolishers |q Under Siege##35462/1
kill Ironmarch Grunt##76556+
Kill 8 Ironmarch Grunts |q Attack of the Iron Horde##35460/1 |goto Blasted Lands 64.7,35.2
step
talk Vindicator Maraad##82270
turnin Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
turnin Under Siege##35462 |goto Blasted Lands 66.6,28.2
accept Subversive Scouts##35463 |goto Blasted Lands 66.6,28.2
step
talk Bodrick Grey##85213
turnin Peeking into the Portal##36379 |goto 66.9,27.9
accept Ending Execution##35464 |goto 66.9,27.9
stickystart "2"
step
kill Ironmarch Executioner##82774+
Stop 3 Executions |q Ending Execution##35464/1 |goto 59,29
step
label "2"
kill 5 Ironmarch Scout##76886 |q Stop the Executions##35463/1 |goto 68,30
|tip They are surrounding the entire encampment
step
talk Bodrick Grey##85213
turnin Ending Execution##35464 |goto Blasted Lands 66.9,27.9
step
talk Vindicator Maraad##82270
turnin Subversive Scouts##35463 |goto Blasted Lands 66.6,28.3
accept Investigating the Invasion##36307 |goto Blasted Lands 66.6,28
step
talk Vindicator Maraad##84929
turnin Investigating the Invasion##36307 |goto Blasted Lands 51.9,28.6
accept Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
accept For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
step
talk Commander Vines##82447
accept Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
kill Rukah the Machinist##73458 |tip She walks around the front of Nethergarde Keep
collect Rukah's Battleplan##113400
Get Rukah's Battleplan |q Lunatic Lieutenants##35486/2 |goto Blasted Lands 57.4,16.8
step
click Keri's Mug##232576
collect Keri's Mug##113397 |q Mementos of the Fallen##35494/3 |goto Blasted Lands 59.4,17.9
step
click Krolan's Shield##232575
collect Krolan's Shield##113396 |q Mementos of the Fallen##35494/2 |goto Blasted Lands 60.6,20.0
step
click Strumner's Sword##232573
collect Strumner's Sword##113395 |q Mementos of the Fallen##35494/1 |goto Blasted Lands 61.8,14.9
step
kill Mokrik Blackfingers##73459
Get Mokrik's Battleplan |q Lunatic Lieutenants##35486/1 |goto Blasted Lands 62.9,13.1
step
click Alliance Flag##232532
Plant the Alliance Flag outside of the Main Keep |q For Nethergarde!##35492/3 |goto Blasted Lands 59.9,15.8
step
kill Gar Steelcrush##73446 |tip He's at the upstairs inside this Keep.
Gar's Battleplan  |q Lunatic Lieutenants##35486/3 |goto Blasted Lands 60.2,13.8
step
click Alliance Flag##232532
Plant the Alliance Flag at the Center of Nethergarde |q For Nethergarde!##35492/2 |goto Blasted Lands 61.6,18.5
step
click Alliance Flag##232532
Plant the Alliance Flag at the entrance to Nethergarde |q For Nethergarde!##35492/1 |goto Blasted Lands 63.0,22.5
step
talk Commander Vines##82447
turnin Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
talk Vindicator Maraad##82270
turnin Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
turnin For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
accept Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
accept Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
step
talk Enohar Thunderbrew##76111
accept Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
kill Toothsmash the Annihilator##82451 |q Toothsmash the Annihilator##35495/1 |goto Blasted Lands 44.2,35.9
step
click Cooking Pot##232625
Poison the Cooking Pots |q Enohar's Revenge##35496/1 |goto Blasted Lands 44.3,35.6
You can find the _2nd Cooking Pot_ here: |goto Blasted Lands 43.5,37.0
You can find the _3rd Cooking Pot_ here: |goto Blasted Lands 43.9,31.0
step
kill 8 Dreadmaul Crusher##78345+ |q Death to the Dreadmaul##35488/1 |goto Blasted Lands 44.4,32.9
step
talk Enohar Thunderbrew##76111
turnin Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
talk Vindicator Maraad##82270
turnin Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
turnin Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
accept Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
step
kill Gar'mak Bladetwist##82918 |q Gar'mak Bladetwist##35500/1 |goto 40.1,11.3
|tip He's upstairs at the top of the Keep.
step
talk Vindicator Maraad##82270
turnin Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
accept Report to the King##36941 |goto Blasted Lands 51.9,28.6
step
talk King Varian Wrynn##29611
turnin Report to the King##36941 |goto Stormwind City 85.8,31.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cooking\\Dalaran Cooking Daily Guide",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.",
condition_suggested=function() return hasprof('Cooking',1,600) end,
},[[
step
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |or |goto Dalaran 40.8,65.4
accept Convention at the Legerdemain##13101|daily |or |goto Dalaran 40.8,65.4
accept Infused Mushroom Meatloaf##13100|daily |or |goto Dalaran 40.8,65.4
accept Mustard Dogs!##13107|daily |or |goto Dalaran 40.8,65.4
accept Sewer Stew##13102|daily |or |goto Dalaran 40.8,65.4
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building. They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
step
use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter##43136 |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building. They might also be up the stairs. They spawn in random locations.
collect 1 Jug of Wine##43128 |q 13101/2 |goto 55.0,30.8
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight 30.0,49.8
step
#include "cooking_fire"
create 4 Northern Stew##57421,Cooking,4 total |n
collect 4 Northern Stew##34747 |q 13101/1
step
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 59.5,43.6
|tip They spawn randomly along the sewer lines.
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight 30.0,49.8
step
#include "cooking_fire"
use Meatloaf Pan##43101
|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf##43099 |q 13100/1
step
Click the Wild Mustard
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area. They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran 67.7,40.0
You can find more Wild Mustard flowers:
At [50.3,48.3]
At [37.2,43.9]
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra 46.7,43.6
step
#include "cooking_fire"
create Rhino Dogs##45553,Cooking,4 total |n
collect 4 Rhino Dogs##34752 |q 13107
step
use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket##43144 |q 13107/1
step
Click the Crystalsong Carrots
|tip They looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran. They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest 26.7,44.1
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew##43149 |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran,36.6,27.8
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran,48.6,37.5
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran,52.3,55.6
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran,68.6,42.0
step
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran,35.5,57.6
step
You have completed the maximum amount of Dalaran Cooking dailies you can do today
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cooking\\Shattrath Cooking Daily Guide",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Cooking daily quests to earn Shattrath Cooking Awards",
},[[
#include "A_Shattrath_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Cooking\\Stormwind Cooking Daily Guide",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.",
},[[
#include "SW_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Daily Guides\\Jewelcrafting Daily Guide",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Jewelcrafting daily quests.",
},[[
step
label "start"
talk Isabel Jones##50480
accept A Present for Lila##25154 |or |goto Stormwind City,63.8,61.5
accept Elemental Goo##25156 |or |goto Stormwind City,63.8,61.5
accept Nibbler! No!##25105 |or |goto Stormwind City,63.8,61.5
accept Ogrezonians in the Mood##25155 |or |goto Stormwind City,63.8,61.5
accept The Latest Fashion!##25157 |or |goto Stormwind City,63.8,61.5
|tip You will only be able to accept one of these daily quests.
step
#include "trainer_Jewelcrafting"
learn Timeless Nightstone##73243
step
Use your Jewelcrafting profession to craft Timeless Nightstone
create Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
collect 3 Timeless Nightstone##52098 |q 25154/2
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25162/1 |goto Mount Hyjal,65.0,22.5
step
#include "trainer_Jewelcrafting"
learn Solid Zephyrite##73227
step
create Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
Make #3# Solid Zephyrite |q 25105/2
step
#include "trainer_Jewelcrafting"
learn Jagged Jasper##73274
step
create Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
Make #3# Jagged Jasper |q 25155/2
step
Use the Stardust in your bags on 10 Humanoids around the city |use Stardust No. 2##52507
Test the Stardust No. 2 on #10# Humanoids |q 25157/1
|tip You can use this on NPCs and yourself
step
talk Isabel Jones##50480
turnin A Present for Lila##25154  |goto 63.8,61.5
turnin Elemental Goo##25156 |goto 63.8,61.5
turnin Nibbler! No!##25105 |goto 63.8,61.5
turnin Ogrezonians in the Mood##25155 |goto 63.8,61.5
turnin The Latest Fashion!##25157 |goto 63.8,61.5
earn 4 Illustrious Jewelcrafter's Token##361
Click to restart the Jewelcrafting Dailies |confirm |next "start" |only if skill("Jewelcrafting")<525
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing Draenor",{
achieveid={11276},
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Draenor"},
description="This guide will walk you through obtaining the Extinguishing Draenor achievement.",
},[[
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44583 |goto Frostfire Ridge/0 72.74,65.17
Earn the "Extinguishing Draenor" Achievement |achieve 11276
step
_Congratulations!_
You Earned the "Extinguishing Draenor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing the Broken Isles",{
achieveid={11278},
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","the","Broken","Isles"},
description="This guide will walk you through obtaining the Extinguishing the Broken Isles achievement.",
},[[
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44627 |goto Suramar/0 30.34,45.21
Earn the "Extinguishing the Broken Isles" Achievement |achieve 11278
step
_Congratulations!_
You Earned the "Extinguishing the Broken Isles" Achievement.
]])
