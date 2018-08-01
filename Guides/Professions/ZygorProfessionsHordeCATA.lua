local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsH") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Alchemy skill from 1-600.",
completion={"skill","Alchemy",600},
condition_suggested=function() return hasprof('Alchemy',1,600) end,
},[[
step
#include "trainer_Alchemy"
skillmax Alchemy,75
|tip You must be at least level 5.
step
#include "PB_SL_ER_Path"
#include "follow_path_herbs"
collect 54 Peacebloom##2447 |condition skill("Alchemy")>=55
collect 54 Silverleaf##765 |condition skill("Alchemy")>=55
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Alchemy"
buy 54 Crystal Vial##3371 |condition itemcount(3371) >= 54 or skill("Alchemy")>=55
|tip You can buy more just in case.
step
create 55 Minor Healing Potion##2330,Alchemy,55
Save at least _38_ for later
step
#include "trainer_Alchemy"
skillmax Alchemy,150 |goto 55.7,45.8
|tip You must be at least level 10.
step
map Hillsbrad Foothills
path 31.8,62.6		33.9,54.0		29.7,44.1
path 35.5,37.8		34.5,28.2		39.5,21.0
path 44.2,8.3		51.3,14.0		57.5,20.9
path 56.1,34.3		49.9,46.2		41.2,46.6
path 40.1,55.0		41.3,67.4		31.8,71.9
#include "follow_path_herbs"
collect 38 Mageroyal##785 |condition skill("Alchemy")>=125
collect 114 Briarthorn##2450 |condition skill("Alchemy")>=125
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Alchemy"
learn Lesser Healing Potion##2337 |condition skill("Alchemy")>=90
step
#include "vendor_Alchemy"
buy 75 Crystal Vial##3371 |condition itemcount(3371) >= 75 or skill("Alchemy")>=90
step
create 38 Lesser Healing Potion##2337,Alchemy,90
step
#include "trainer_Alchemy"
learn Elixir of Wisdom##3171 |condition skill("Alchemy")>=125
step
create 38 Elixir of Wisdom##3171,Alchemy,125
step
#include "trainer_Alchemy"
skillmax Alchemy,225
|tip You must be at least level 20.
step
#include "MR_BW_BT_SK_Path"
#include "follow_path_herbs"
collect 33 Mageroyal##785 |condition skill("Alchemy")>=215
collect 33 Stranglekelp##3820 |opt
|tip You can also buy these materials from the Auction House.
step
#include "Kingsblood_Path"
#include follow_path_herbs
collect 20 Kingsblood##3356 |condition skill("Alchemy")>=215
|tip You can also buy these materials from the Auction House.
step
#include "LR_SK_Path"
#include follow_path_herbs
collect 20 Liferoot##3357 |condition skill("Alchemy")>=215
collect 33 Stranglekelp##3820 |condition skill("Alchemy")>=215
|tip You can also buy these materials from the Auction House.
step
#include "GT_WS_Path"
#include follow_path_herbs
collect 40 Goldthorn##3821 |condition skill("Alchemy")>=215
|tip As you move, cling to the edges of the mountain.
collect 40 Wild Steelbloom##3355 |opt
|tip You can also buy these materials from the Auction House.
step
#include "GM_KB_LR_WS_Path"
#include follow_path_herbs
collect 40 Wild Steelbloom##3355 |condition skill("Alchemy")>=215
|tip You can also buy these materials from the Auction House.
step
map The Cape of Stranglethorn
path follow loose;loop;ants straight;dist 45
path 44.0,86.1		50.6,80.7		59.4,52.6
path 51.7,8.0		40.7,17.1		39.6,24.9
path 32.4,32.9		41.5,41.0		35.1,53.2
path 36.8,56.2
#include follow_path_herbs
collect 33 Stranglekelp##3820 |condition skill("Alchemy")>=215
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Alchemy"
learn Lesser Mana Potion##3173 |condition skill("Alchemy")>=155
step
#include "vendor_Alchemy"
buy 93 Crystal Vial##3371 |condition itemcount(3371) >= 93 or skill("Alchemy")>=155
step
create 33 Lesser Mana Potion##3173,Alchemy,155
step
#include "trainer_Alchemy"
learn Greater Healing Potion##7181 |condition skill("Alchemy")>=175
step
create 20 Greater Healing Potion##7181,Alchemy,175
step
#include "trainer_Alchemy"
learn Elixir of Fortitude##3450 |condition skill("Alchemy")>=195
step
create 20 Elixir of Fortitude##3450,Alchemy,195
step
#include "trainer_Alchemy"
learn Elixir of Greater Defense##11450 |condition skill("Alchemy")>=215
step
create 20 Elixir of Greater Defense##11450,Alchemy,215
step
#include "trainer_Alchemy"
skillmax Alchemy,300
|tip You must be at least level 35.
step
#include "FL_GT_KW_BW_Path"
#include follow_path_herbs
collect 40 Khadgar's Whisker##3358 |condition skill("Alchemy")>=285
collect 30 Blindweed##8839 |condition skill("Alchemy")>=285
|tip You can also buy these materials from the Auction House.
step
#include "Sungrass_Path"
#include follow_path_herbs
collect 70 Sungrass##8838 |condition skill("Alchemy")>=285
|tip You can also buy these materials from the Auction House.
step
#include "GB_Path"
#include follow_path_herbs
collect 40 Gromsblood##8846 |condition skill("Alchemy")>=285
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Alchemy"
learn Superior Healing Potion##11457 |condition skill("Alchemy")>=250
step
#include "vendor_Alchemy"
buy 75 Crystal Vial##3371 |condition itemcount(3371) >= 75 or skill("Alchemy")>=250
step
create 35 Superior Healing Potion##11457,Alchemy,250
step
#include "trainer_Alchemy"
learn Elixir of Detect Demon##11478 |condition skill("Alchemy")>=270
step
create 20 Elixir of Detect Demon##11478,Alchemy,270
step
#include "trainer_Alchemy"
learn Superior Mana Potion##17553 |condition skill("Alchemy")>=285
step
create 10 Superior Mana Potion##17553,Alchemy,285
step
#include "trainer_Alchemy"
Learn the Master Alchemist skill |skillmax Alchemy,375
|tip You must be at least level 50.
step
#include "GS_SM_Path"
#include follow_path_herbs
collect 50 Golden Sansam##13464 |condition skill("Alchemy")>=355
|tip You can also buy these materials from the Auction House.
step
#include "FW_DG_Path"
#include follow_path_herbs
collect 17 Mountain Silversage##13465 |condition skill("Alchemy")>=355
|tip These can be found tucked away in the sides of mountains, so keep an eye out for them.
collect 30 Dreaming Glory##22786 |opt
collect 55 Felweed##22785 |opt
|tip You can also buy these materials from the Auction House.
step
#include "Terocone_Path"
#include follow_path_herbs
collect 15 Terocone##22789 |condition skill("Alchemy")>=355
collect 55 Felweed##22785 |condition skill("Alchemy")>=355
collect 30 Dreaming Glory##22786 |opt
|tip You can also buy these materials from the Auction House.
step
#include "NB_DG_Path"
#include follow_path_herbs
collect 20 Netherbloom##22791 |condition skill("Alchemy")>=355
collect 30 Dreaming Glory##22786 |condition skill("Alchemy")>=355
|tip You can also buy these materials from the Auction House.
step
talk Daga Ramba##19837
buy 1 Recipe: Super Mana Potion##22907 |condition _G.IsSpellKnown(28555) or itemcount(22907) >= 1 or skill("Alchemy")>=355 |goto Blade's Edge Mountains 51.0,57.8
|tip This recipe is a limited quality item. If the vendor is not carrying it, you may need to get it from the Auction House.
step
#include "trainer_Alchemy"
learn Major Healing Potion##17556 |condition skill("Alchemy")>=30
step
#include "vendor_Alchemy"
buy 86 Crystal Vial##3371 |condition itemcount(3371) >= 86 or skill("Alchemy")>=300
step
create 31 Major Healing Potion##17556,Alchemy,300
step
#include "trainer_Alchemy"
learn Volatile Healing Potion##33732 |condition skill("Alchemy")>=315
step
create 15 Volatile Healing Potion##33732,Alchemy,315
step
#include "trainer_Alchemy"
learn Elixir of Mastery##33741 |condition skill("Alchemy")>=330
step
create 15 Elixir of Mastery##33741,Alchemy,330
step
#include "trainer_Alchemy"
learn Super Healing Potion##28551 |condition skill("Alchemy")>=340
step
create 10 Super Healing Potion##28551,Alchemy,340
step
use Recipe: Super Mana Potion##22907
learn Super Mana Potion##28555 |condition skill("Alchemy")>=355
step
create 15 Super Mana Potion##28555,Alchemy,355
step
#include "trainer_Alchemy"
skillmax Alchemy,450
|tip You must be at least level 65.
step
#include "GC_DN_TL_Path"
#include follow_path_herbs
collect 96 Goldclover##36901 |condition skill("Alchemy")>=425
collect 40 Deadnettle##37921 |condition skill("Alchemy")>=425
collect 20 Tiger Lily##36904 |opt
|tip You can also buy these materials from the Auction House.
Save any Frost Lotus you might find
step
#include "T_Rose_Path"
#include follow_path_herbs
collect 10 Talandra's Rose##36907 |condition skill("Alchemy")>=425
|tip You can also buy these materials from the Auction House.
Save any Frost Lotus you might find
step
#include "Tiger_Lily_Path"
#include follow_path_herbs
collect 20 Tiger Lily##36904 |condition skill("Alchemy")>=425
|tip You can also buy these materials from the Auction House.
Save any Frost Lotus you might find
step
#include "IT_LB_Path"
#include follow_path_herbs
collect 40 Icethorn##36906 |condition skill("Alchemy")>=425
collect 102 Lichbloom##36905 |condition skill("Alchemy")>=425
|tip You can also buy these materials from the Auction House.
Save any Frost Lotus you might find
step
#include "trainer_Alchemy"
learn Wrath Elixir##53841 |condition skill("Alchemy")>=365
step
#include "vendor_Alchemy"
buy 76 Crystal Vial##3371 |condition itemcount(3371) >= 76 or skill("Alchemy")>=365
step
create 10 Wrath Elixir##53841,Alchemy,365
step
#include "trainer_Alchemy"
learn Spellpower Elixir##53842 |condition skill("Alchemy")>=375
step
create 10 Spellpower Elixir##53842,Alchemy,375
step
#include "trainer_Alchemy"
learn Lesser Flask of Toughness##53899 |condition skill("Alchemy")>=380
step
create 5 Lesser Flask of Toughness##53899,Alchemy,380
step
#include "trainer_Alchemy"
learn Potion of Nightmares##53900 |condition skill("Alchemy")>=385
step
create 5 Potion of Nightmares##53900,Alchemy,385
step
#include "trainer_Alchemy"
learn Elixir of Mighty Strength##54218 |condition skill("Alchemy")>=390
step
create 5 Elixir of Mighty Strength##54218,Alchemy,390
step
#include "trainer_Alchemy"
learn Elixir of Mighty Fortitude##53898 |condition skill("Alchemy")>=395
step
create 5 Elixir of Mighty Fortitude##53898,Alchemy,395
step
#include "trainer_Alchemy"
learn Indestructible Potion##53905 |condition skill("Alchemy")>=415
step
create 20 Indestructible Potion##53905,Alchemy,415
step
#include "trainer_Alchemy"
learn Runic Mana Potion##53837 |condition skill("Alchemy")>=425
step
create 16 Runic Mana Potion##53837,Alchemy,425
step
#include "trainer_Alchemy"
skillmax Alchemy,525
|tip You must be at least level 75.
step
#include "GC_DN_TL_Path"
#include follow_path_herbs
collect 30 Goldclover##36901 |condition skill("Alchemy")>=500
|tip You can also buy these materials from the Auction House.
Save any Frost Lotus you might find
step
#include "IT_LB_Path"
#include follow_path_herbs
collect 70 Lichbloom##36905 |condition skill("Alchemy")>=500
|tip You can also buy these materials from the Auction House.
Save any Frost Lotus you might find
step
map Wintergrasp
path	45.3,69.0	30.4,67.2
collect 10 Frost Lotus##36908 |condition skill("Alchemy")>=500
|tip You can also buy these materials from the Auction House.
step
#include "SV_CB_Path"
#include follow_path_herbs
collect 50 Cinderbloom##52983 |condition skill("Alchemy")>=500
collect 20 Stormvine##52984 |opt
collect 16 Azshara's Veil##52985 |opt
|tip You can also buy these materials from the Auction House.
step
#include "Stormvine_Path"
#include follow_path_herbs
collect 16 Azshara's Veil##52985 |condition skill("Alchemy")>=500
collect 20 Stormvine##52984 |condition skill("Alchemy")>=500
|tip You can also buy these materials from the Auction House.
step
#include "HB_Path"
#include "follow_path_herbs"
collect 44 Heartblossom##52986 |condition skill("Alchemy")>=500
|tip You can also buy these materials from the Auction House.
step
#include "Whiptail_Path"
#include "follow_path_herbs"
collect 5 Whiptail##52988 |condition skill("Alchemy")>=500
|tip You can also buy these materials from the Auction House.
step
#include "TJ_Path"
#include "follow_path_herbs"
collect 10 Twilight Jasmine##52987 |condition skill("Alchemy")>=500
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Alchemy"
learn Draught of War##93935 |condition skill("Alchemy")>=440
step
#include "vendor_Alchemy"
buy 78 Crystal Vial##3371 |condition itemcount(3371) >= 78 or skill("Alchemy")>=440
step
create 15 Draught of War##93935,Alchemy,440
step
#include "trainer_Alchemy"
learn Flask of Endless Rage##53903 |condition skill("Alchemy")>=450
step
create 10 Flask of Endless Rage##53903,Alchemy,450
step
#include "trainer_Alchemy"
learn Ghost Elixir##80478 |condition skill("Alchemy")>=455
step
create 5 Ghost Elixir##80477,Alchemy,455
step
#include "trainer_Alchemy"
learn Deathblood Venom##80479 |condition skill("Alchemy")>=460
step
create 5 Deathblood Venom##80479,Alchemy,460
step
#include "trainer_Alchemy"
learn Volcanic Potion##80481 |condition skill("Alchemy")>=465
step
create 5 Volcanic Potion##80481,Alchemy,465
step
#include "trainer_Alchemy"
learn Elixir of the Cobra##80484 |condition skill("Alchemy")>=475
step
create 13 Elixir of the Cobra##80484,Alchemy,475
step
#include "trainer_Alchemy"
learn Elixir of Deep Earth##80488 |condition skill("Alchemy")>=480
step
create 5 Elixir of Deep Earth##80488,Alchemy,480
step
#include "trainer_Alchemy"
learn Elixir of Impossible Accuracy##80491 |condition skill("Alchemy")>=485
step
create 5 Elixir of Impossible Accuracy##80491,Alchemy,485
step
#include "trainer_Alchemy"
learn Potion of the Tol'vir##80495 |condition skill("Alchemy")>=490
step
create 5 Potion of the Tol'vir##80495,Alchemy,490
step
#include "trainer_Alchemy"
learn Elixir of Mighty Speed##80493 |condition skill("Alchemy")>=498
step
create 5 Elixir of Mighty Speed##80493,Alchemy,495
step
#include "trainer_Alchemy"
learn Mythical Healing Potion##80498 |condition skill("Alchemy")>=500
step
create 5 Mythical Healing Potion##80498,Alchemy,500
step
confirm |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 500-600 Leveling Guide" |tip This will take you to the Alchemy 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Archaeology",600},
condition_suggested=function() return hasprof('Archaeology',1,600) end,
description="This guide will walk you through leveling your Archaeology skill from 1-600.",
},[[
step
#include "trainer_Archaeology"
Learn the Archaeology skill |skillmax Archaeology,75 |only if skill("Archaeology")<1 |tip You must be at least level 20.
step
talk Innkeeper Gryshka##6929
home Valley of Strength |goto Orgrimmar 53.6,78.8
step
Open your world map, find dig sites in Kalimdor and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
skill Archaeology,50
step
label "arc_50-150"
#include "trainer_Archaeology"
Learn the Journeyman Archaeology skill |skillmax Archaeology,150 |tip You must be at least level 20.
step
Open your world map, find dig sites in Kalimdor and go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,125
step
#include "trainer_Archaeology"
Learn the Expert Archaeology skill |skillmax Archaeology,225 |tip You must be at least level 20.
step
Open your world map, find dig sites in Kalimdor and go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,200
step
#include "trainer_Archaeology"
Learn the Artisan Archaeology skill |skillmax Archaeology,300 |tip You must be at least level 35.
step
Open your world map, find dig sites in Kalimdor and go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,275
step
#include "trainer_Archaeology"
Learn the Master Archaeology skill |skillmax Archaeology,375 |tip You must be at least level 50.
step
Open your world map, find dig sites in Kalimdor and go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,350
step
#include "trainer_Archaeology"
Learn the Grand Master Archaeology skill |skillmax Archaeology,450 |tip You must be at least level 65.
step
Open your world map, find dig sites in Kalimdor and go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,425
step
#include "trainer_Archaeology"
Learn the Illustrious Grand Master Archaeology skill |skillmax Archaeology,525 |tip You must be at least level 75.
step
Open your world map, find dig sites in Kalimdor then go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,525
step
Click here to proceed |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 525-600 Leveling Guide"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Blacksmithing",600},
condition_suggested=function() return hasprof('Blacksmithing',1,600) end,
description="This guide will walk you through leveling your Blacksmithing skill from 1-600.",
},[[
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,75
step
#include "vendor_Blacksmithing"
buy 1 Blacksmith Hammer##5956 |condition itemcount(5956) >= 1 or skill("Blacksmithing")>=75
step
#include vendor_Blacksmithing
buy 1 Mining Pick##2901 |condition itemcount(2901) >= 1 or skill("Blacksmithing")>=75
step
#include "Copper_Path"
#include "follow_path_mine"
collect 80 Rough Stone##2835 |condition skill("Blacksmithing")>=75
collect 150 Copper Ore##2770 |condition skill("Blacksmithing")>=75
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Copper Bar##2657,Mining,150 total |n
collect 150 Copper Bar##2840 |condition skill("Blacksmithing")>=25
step
#include "maincity_anvil"
create Rough Sharpening Stone##2660,Blacksmithing,25
step
#include "trainer_Blacksmithing"
learn Rough Grinding Stone##3320 |condition skill("Blacksmithing")>=50
step
#include "maincity_anvil"
create Rough Grinding Stone##3320,Blacksmithing,50
step
#include "trainer_Blacksmithing"
learn Copper Chain Belt##2661 |condition skill("Blacksmithing")>=75
step
#include "maincity_anvil"
create Copper Chain Belt##2661,Blacksmithing,75
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,150
step
#include "Copper_Path"
#include "follow_path_mine"
collect 210 Copper Ore##2770 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "Tin_Path"
#include "follow_path_mine"
collect 60 Coarse Stone##2836 |condition skill("Blacksmithing")>=125
collect 60 Tin Ore##2771 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Copper Bar##2657,Mining,100 total |n
collect 210 Copper Bar##2840 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Tin Bar##3304,Mining,60 total |n
collect 60 Tin Bar##3576 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Bronze Bar##2659,Mining,60 total |n
collect 120 Bronze Bar##2841 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Blacksmithing"
learn Coarse Grinding Stone##3326 |condition skill("Blacksmithing")>=95
step
#include "maincity_anvil"
create 30 Coarse Grinding Stone##3326, Blacksmithing,95
collect 30 Coarse Grinding Stone##3478 |condition skill("Blacksmithing")>=105
|tip Save 30 Coarse Grinding Stones, you'll need them later.
step
#include "trainer_Blacksmithing"
learn Runed Copper Belt##2666 |condition skill("Blacksmithing")>=105
step
#include "maincity_anvil"
create Runed Copper Belt##2666, Blacksmithing,105
step
#include "trainer_Blacksmithing"
learn Rough Bronze Leggings##2668 |condition skill("Blacksmithing")>=125
step
#include "maincity_anvil"
create Rough Bronze Leggings##2668,Blacksmithing,125
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,225
step
#include "Copper_Path"
#include "follow_path_mine"
collect 28 Copper Ore##2770 |or |condition skill("Blacksmithing")>=210
collect 28 Copper Bar##2840 |or |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "Tin_Path"
#include "follow_path_mine"
collect 60 Coarse Stone##2836 |condition skill("Blacksmithing")>=210 |only if itemcount("Coarse Grinding Stone")<30
collect 15 Tin Ore##2771 |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "Iron_Ore_Path"
#include "follow_path_mine"
collect 150 Heavy Stone##2838 |condition skill("Blacksmithing")>=210
|tip Save any extra Heavy Stones you get.
collect 330 Iron Ore##2772 |condition skill("Blacksmithing")>=210
collect 28 Copper Bar##2840 |or |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Mining"
learn Smelt Iron##3307 |condition skill("Blacksmithing")>=210
learn Smelt Steel##3569 |condition skill("Blacksmithing")>=210
step
#include "maincity_forge2"
create Copper Bar##2657,Mining,28 total |n
collect 28 Copper Bar##2840 |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Tin Bar##3304,Mining,28 total |n
collect 28 Tin Bar##3576 |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Bronze Bar##2659,Mining,28 total |n
collect 56 Bronze Bar##2841 |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Coarse Grinding Stone##3326,Blacksmithing,30 total |n
collect 30 Coarse Grinding Stone##3478 |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Iron Bar##3307,Mining,330 total |n
collect 330 Iron Bar##3575 |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Blacksmithing"
buy 100 Coal##3857 |condition itemcount(3857) >= 100 or skill("Blacksmithing")>=210
step
#include "maincity_anvil"
create Steel Bar##3569,Mining,100 total |n
collect 100 Steel Bar##3859 |condition skill("Blacksmithing")>=210
|tip You can also buy these materials from the Auction House.
step
label "bla_125-210_skill"
talk Tamar##3366 |goto Orgrimmar/1 60.3,54.3
buy 35 Green Dye##2605 |condition itemcount(2605) >= 35 or skill("Blacksmithing")>=190
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Blacksmithing"
learn Heavy Grinding Stone##3337 |condition skill("Blacksmithing")>=150
step
#include "maincity_anvil"
create 50 Heavy Grinding Stone##3337,Blacksmithing,50 total |n
collect 50 Heavy Grinding Stone##3486 |condition skill("Blacksmithing")>=150
|tip Save 50 Heavy Grinding Stones, you'll need them later.
skill Blacksmithing,150
step
#include "trainer_Blacksmithing"
learn Patterned Bronze Bracers##2672 |condition skill("Blacksmithing")>=155
step
#include "maincity_anvil"
create Patterned Bronze Bracers##2672,Blacksmithing,155
step
#include "trainer_Blacksmithing"
learn Green Iron Leggings##3506 |condition skill("Blacksmithing")>=165
step
#include "maincity_anvil"
create Green Iron Leggings##3506,Blacksmithing,165
step
#include "trainer_Blacksmithing"
learn Green Iron Bracers##3501 |condition skill("Blacksmithing")>=190
step
#include "maincity_anvil"
create Green Iron Bracers##3501,Blacksmithing,190
step
#include "trainer_Blacksmithing"
learn Golden Scale Bracers##7223 |condition skill("Blacksmithing")>=210
step
#include "maincity_anvil"
create Golden Scale Bracers##7223,Blacksmithing,210
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,300
step
#include "Mithril_Ore_Path"
#include "follow_path_mine"
collect 320 Mithril Ore##3858 |condition skill("Blacksmithing")>=300
collect 5 Star Ruby##7910 |n
|tip You can also buy these materials from the Auction House.
Keep any Star Rubies that you find
step
Kill _Deadwood_ and _Jaedenar_ enemies
collect 200 Mageweave Cloth##4338 |goto 49.2,87.0 |condition skill("Blacksmithing")>=300
|tip You can also buy these materials from the Auction House.
You can find more enemies here |goto 38.4,67.6
As well as here |goto 39.4,58.4
step
#include "Thorium_Ore_Path"
#include "follow_path_mine"
collect 400 Thorium Ore##10620 |condition skill("Blacksmithing")>=300
collect 120 Dense Stone##12365 |condition skill("Blacksmithing")>=300
collect 5 Star Ruby##7910 |condition skill("Blacksmithing")>=300
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Mining"
learn Smelt Mithril##10097 |condition skill("Blacksmithing")>=300
learn Smelt Thorium##16153 |condition skill("Blacksmithing")>=300
step
#include "maincity_forge2"
create Mithril Bar##10097,Mining,320 total |n
collect 320 Mithril Bar##3860 |condition skill("Blacksmithing")>=300
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Thorium Bar##16153,Mining,400 total |n
collect 400 Thorium Bar##12359 |condition skill("Blacksmithing")>=300
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Blacksmithing"
learn Heavy Mithril Gauntlet##9928 |condition skill("Blacksmithing")>=230
step
#include "maincity_anvil"
create Heavy Mithril Gauntlet##9928,Blacksmithing,230
step
#include "trainer_Blacksmithing"
learn Mithril Coif##9961 |condition skill("Blacksmithing")>=250
step
#include "maincity_anvil"
create 20 Mithril Coif##9961,Blacksmithing,250
step
#include "trainer_Blacksmithing"
learn Dense Grinding Stone##16639 |condition skill("Blacksmithing")>=260
step
#include "maincity_anvil"
create 30 Dense Grinding Stone##16639,Blacksmithing,260
step
#include "trainer_Blacksmithing"
learn Thorium Bracers##16644 |condition skill("Blacksmithing")>=280
step
#include "maincity_anvil"
create 20 Thorium Bracers##16644,Blacksmithing,280
step
#include "trainer_Blacksmithing"
learn Imperial Plate Bracers##16649 |condition skill("Blacksmithing")>=295
step
#include "maincity_anvil"
create 15 Imperial Plate Bracers##16649,Blacksmithing,295
step
#include "trainer_Blacksmithing"
learn Thorium Helm##16653 |condition skill("Blacksmithing")>=300
step
#include "maincity_anvil"
create 5 Thorium Helm##16653,Blacksmithing,300
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,375
step
#include "Fel_Iron_Path"
#include "follow_path_mine"
collect 330 Fel Iron Ore##23424 |condition skill("Blacksmithing")>=325
|tip You can also buy these materials from the Auction House.
step
#include "shatt_anvil"
create Fel Iron Bar##29356,Mining,165 total |n
collect 165 Fel Iron Bar##23445 |condition skill("Blacksmithing")>=325
|tip You can also buy these materials from the Auction House.
step
talk Rohok ##16583
buy 1 Plans: Lesser Ward of Shielding##23638 |goto Hellfire Peninsula 53.2,38.2 |condition _G.IsSpellKnown(29728) or itemcount(23638) >= 1 or skill("Blacksmithing")>=325
|tip This recipe is a limited supply item, so if it's not available for purchase, keep checking again every few minutes until you can buy it.
step
#include "trainer_Blacksmithing_Shatt"
learn Fel Iron Plate Gloves##29545 |condition skill("Blacksmithing")>=310
step
#include "shatt_anvil"
create Fel Iron Plate Gloves##29545,Blacksmithing,310
step
#include "trainer_Blacksmithing_Shatt"
learn Fel Iron Plate Belt##29547 |condition skill("Blacksmithing")>=315
step
#include "shatt_anvil"
create Fel Iron Plate Belt##29547,Blacksmithing,315
step
#include "trainer_Blacksmithing_Shatt"
learn Fel Iron Chain Gloves##29552 |condition skill("Blacksmithing")>=320
step
#include "shatt_anvil"
create Fel Iron Chain Gloves##29552,Blacksmithing,320
step
#include "trainer_Blacksmithing_Shatt"
learn Fel Iron Plate Boots##29548 |condition skill("Blacksmithing")>=325
step
#include "shatt_anvil"
create Fel Iron Plate Boots##29548,Blacksmithing,325
step
#include "Adamantite_Path"
#include "follow_path_mine"
collect 212 Adamantite Ore##23425 |condition skill("Blacksmithing")>=350
|tip You can also buy these materials from the Auction House.
step
clicknpc Mining##33617
|tip It's a bookshelf.
learn Smelt Adamantite##29358 |goto Shattrath City/0 43.7,90.9 |condition skill("Blacksmithing")>=350
only if rep ('The Scryers')>=Neutral
step
talk Fono##33682
learn Smelt Adamantite##29358 |goto Shattrath City 36.0,48.6 |condition skill("Blacksmithing")>=350
only if rep ('The Aldor')>=Neutral
step
#include "shatt_anvil"
create Adamantite Bar##29358,Mining,106 total |n
collect 106 Adamantite Bar##23446 |condition skill("Blacksmithing")>=350
step
#include "trainer_Blacksmithing_Shatt"
learn Lesser Rune of Warding##32284 |condition skill("Blacksmithing")>=350
step
#include "shatt_anvil"
create Lesser Rune of Warding##32284,Blacksmithing,330
step
#include "trainer_Blacksmithing_Shatt"
learn Fel Iron Breastplate##29550 |condition skill("Blacksmithing")>=350
step
#include "shatt_anvil"
create Fel Iron Breastplate##29550,Blacksmithing,335
step
talk Aaron Hollman##19662
buy 1 Plans: Adamantite Cleaver##23591 |goto Shattrath City,64.1,71.9 |condition _G.IsSpellKnown(29568) or itemcount(23591) >= 1 or skill("Blacksmithing")>=350
step
use Plans: Adamantite Cleaver##23591
learn Adamantite Cleaver##29568 |condition skill("Blacksmithing")>=350
step
#include "shatt_anvil"
create Adamantite Cleaver##29568,Blacksmithing,340
step
use Plans: Lesser Ward of Shielding##23638
learn Lesser Ward of Shielding##29728 |condition skill("Blacksmithing")>=350
step
#include "shatt_anvil"
create Lesser Ward of Shielding##29728,Blacksmithing,345
step
#include "shatt_anvil"
create Adamantite Cleaver##29568,Blacksmithing,350
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,450
step
#include "Cobalt_Path"
#include "follow_path_mine"
collect 320 Cobalt Ore##36909 |condition skill("Blacksmithing")>=425
|tip You can also buy these materials from the Auction House.
step
#include "Saronite_Path"
#include "follow_path_mine"
collect 622 Saronite Ore##36912 |condition skill("Blacksmithing")>=425
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Cobalt Bar##49252,Mining,320 total |n
collect 320 Cobalt Bar##36916 |condition skill("Blacksmithing")>=425
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Saronite Bar##49258,Mining,151 total |n
collect 311 Saronite Bar##36913 |condition skill("Blacksmithing")>=425
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Blacksmithing"
learn Cobalt Belt##52568 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 10 Cobalt Belt##52568,Blacksmithing,360
step
#include "trainer_Blacksmithing"
learn Cobalt Bracers##55834 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 10 Cobalt Bracers##55834,Blacksmithing,370
step
#include "trainer_Blacksmithing"
learn Cobalt Gauntlets##55835 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 10 Cobalt Gauntlets##55835,Blacksmithing,380
step
#include "trainer_Blacksmithing"
learn Spiked Cobalt Boots##54918 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 5 Spiked Cobalt Boots##54918,Blacksmithing,385
step
#include "trainer_Blacksmithing"
learn Spiked Cobalt Shoulders##54941 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 5 Spiked Cobalt Shoulders##54941,Blacksmithing,390
step
#include "trainer_Blacksmithing"
learn Notched Cobalt War Axe##55204 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 5 Notched Cobalt War Axe##55204,Blacksmithing,395
step
#include "trainer_Blacksmithing"
learn Tempered Saronite Belt##54551 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 5 Tempered Saronite Belt##54551,Blacksmithing,400
step
#include "trainer_Blacksmithing"
learn Horned Cobalt Helm##54949 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 5 Horned Cobalt Helm##54949,Blacksmithing,405
step
#include "trainer_Blacksmithing"
learn Tempered Saronite Shoulders##54556 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create 10 Tempered Saronite Shoulders##54556,Blacksmithing,415
step
#include "trainer_Blacksmithing"
learn Tempered Saronite Gauntlets##55015 |condition skill("Blacksmithing")>=425
step
#include "maincity_anvil"
create Tempered Saronite Gauntlets##55015,Blacksmithing,425
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,525
step
#include "Obsidium_Path"
#include "follow_path_mine"
collect 320 Obsidium Ore##53038 |condition skill("Blacksmithing")>=475
collect 38 Volatile Earth##52327 |n
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Obsidium Bar##84038,Mining,160 total |n
collect 160 Obsidium Bar##54849 |condition skill("Blacksmithing")>=475
step
#include "trainer_Blacksmithing"
learn Folded Obsidium##76178 |condition skill("Blacksmithing")>=475
step
#include "maincity_anvil"
create Folded Obsidium##76178,Blacksmithing,455
collect 80 Folded Obsidium##65365 |condition skill("Blacksmithing")>=475
step
#include "trainer_Blacksmithing"
learn Hardened Obsidium Gauntlets##76180 |condition skill("Blacksmithing")>=475
step
#include "maincity_anvil"
create 5 Hardened Obsidium Gauntlets##76180,Blacksmithing,460
step
#include "trainer_Blacksmithing"
learn Hardened Obsidium Belt##76181 |condition skill("Blacksmithing")>=475
step
#include "maincity_anvil"
create 10 Hardened Obsidium Belt##76181,Blacksmithing,470
step
#include "trainer_Blacksmithing"
learn Redsteel Boots##76265 |condition skill("Blacksmithing")>=475
step
#include "maincity_anvil"
create Redsteel Boots##76265,Blacksmithing,475
step
#include "Obsidium_Path"
#include "follow_path_mine"
collect 74 Obsidium Ore##53038 |condition skill("Blacksmithing")>=500
collect 28 Volatile Earth##52327 |n
|tip You can also buy these materials from the Auction House.
step
map Twilight Highlands
path follow loose
path	71.4,50.3	54.0,37.6	41.3,56.6
path	37.5,58.2	24.5,56.9	30.0,42.8
path	26.9,28.7	32.3,27.1	31.5,40.1
path	38.6,41.2	39.6,30.4	39.0,19.7
path	46.2,20.1	53.8,24.8	61.5,32.4
path	68.5,37.9
#include "follow_path_mine"
collect 200 Elementium Ore##52185 |condition skill("Blacksmithing")>=500
collect 28 Volatile Earth##52327 |condition skill("Blacksmithing")>=500
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Mining"
learn Smelt Elementium##74530 |condition skill("Blacksmithing")>=500
step
#include "maincity_anvil"
create Obsidium Bar##84038,Mining,36 total |n
collect 38 Obsidium Bar##54849 |condition skill("Blacksmithing")>=500
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Elementium Bar##74530,Mining,100 total |n
collect 100 Elementium Bar##52186 |condition skill("Blacksmithing")>=500
|tip You can also buy these materials from the Auction House.
step
label "bla_475-500_skill"
#include "maincity_anvil"
create Folded Obsidium##76178,Blacksmithing,18 total |n
collect 18 Folded Obsidium##65365 |condition skill("Blacksmithing")>=500
step
#include "trainer_Blacksmithing"
learn Obsidium Skeleton Key##76438 |condition skill("Blacksmithing")>=500
step
#include "maincity_anvil"
create Obsidium Skeleton Key##76438,Blacksmithing,480,10 total |condition skill("Blacksmithing")>=500
step
#include "trainer_Blacksmithing"
learn Stormforged Legguards##76287 |condition skill("Blacksmithing")>=500
step
#include "maincity_anvil"
create Stormforged Legguards##76287,Blacksmithing,490,4 total |condition skill("Blacksmithing")>=500
step
#include "trainer_Blacksmithing"
learn Stormforged Helm##76288 |condition skill("Blacksmithing")>=500
step
#include "maincity_anvil"
create Stormforged Helm##76288,Blacksmithing,500,3 total |condition skill("Blacksmithing")>=500
step
confirm |next "Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 500-600 Leveling Guide"
|tip This will take you to the Blacksmithing 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Classic Cooking 1-520 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Cooking",600},
achieveid={121,122,123,124,125,4916,6365},
condition_suggested=function() return hasprof('Cooking',1,600) end,
description="This guide will walk you through leveling your Cooking skill from 1 to 600.",
},[[
step
talk Marogg##42506
skillmax Cooking,75 |goto Orgrimmar/1 56.5,62.5
step
map Durotar
path loop on; follow loose; dist 30
path	43.8,12.8	47.6,12.2	50.8,13.4
path	50.6,16.2	49.2,18.4	47.0,16.6
path	43.0,16.0	41.6,14.6
kill Wild Mature Swine##42859+, Mature Swine##42504+, Dire Mottled Boar##3099+
collect 55 Chunk of Boar Meat##769 |condition skill("Cooking")>=45
|tip You can also buy these materials from the Auction House.
step
Create a cooking fire |cast Cooking fire##818
create Roasted Boar Meat,Cooking,50 |goto 43.8,12.8
step
talk Marogg##42506
skillmax Cooking,150 |goto Orgrimmar/1 56.5,62.5
step
talk Suja##46708
buy 25 Refreshing Spring Water##159 |goto Orgrimmar/1 56.4,61.0 |condition itemcount(159) >= 25 or skill("Cooking")>=90
step
map Ashenvale/0
path loop off; follow strict; dist 30
path	12.4,26.1	14.9,23.8	15.1,19.5
path	14.2,15.9	11.3,14.1	7.5,13.3
kill Wrathtail Sorceress##3717+, Spined Crawler##3814+, Clattering Crawler##3812+, Wrathtail Wave Rider##3713+
use Small Barnacled Clam##5523
|tip The Small Barnacled Clams drop from Murlocs and contain Clam Meat.
collect 25 Clam Meat##5503 |goto Ashenvale/0 14.0,20.1 |condition skill("Cooking")>=150
collect 50 Crawler Meat##2674 |goto Ashenvale/0 14.0,20.1 |condition skill("Cooking")>=125
step
talk Marogg##42506
learn Boiled Clams##6499 |goto Orgrimmar/1 56.5,62.5 |condition _G.IsSpellKnown(6499) or skill("Cooking")>=75
step
create Boiled Clams##6499,Cooking,75 |goto Orgrimmar/1 56.5,62.5
step
talk Marogg##42506
learn Crab Cake##2544 |goto Orgrimmar/1 56.5,62.5 |condition _G.IsSpellKnown(2544) or skill("Cooking")>=125
step
create Crab Cake##2544,Cooking,125 |goto Orgrimmar/1 56.5,62.5
step
talk Marogg##42506
skillmax Cooking,225 |goto Orgrimmar/1 56.5,62.5
step
talk Zargh##3489
buy Recipe: Hot Lion Chops##3735 |goto Northern Barrens 50.6,57.8 |condition _G.IsSpellKnown(3398) or itemcount(3735) >= 1 or skill("Cooking")>=150
step
use Recipe: Hot Lion Chops##3735
learn Hot Lion Chops##3398 |condition _G.IsSpellKnown(3398) or skill("Cooking")>=150
step
map Southern Barrens
path loop on; follow strict; dist 70
path	51.2,46.4	49.0,48.1	45.8,45.0
path	43.5,42.7	42.8,46.9	42.0,53.3
path	44.5,58.4	49.0,59.6	51.9,53.2
path	53.6,50.2
kill Plains Pridemane##37207+, Plains Prowler##Plains Prowler+
collect 50 Lion Meat##3731 |condition skill("Cooking")>=175
step
kill Stranded Sparkleshell##48128 |goto Thousand Needles 64.41,51.53
collect 55 Turtle Meat##3712  |condition skill("Cooking")>=225
step
create Hot Lion Chops##3398,Cooking,175 |goto Orgrimmar/1 56.5,62.5
step
talk Marogg##42506
learn Soothing Turtle Bisque##3400 |goto Orgrimmar/1 56.5,62.5 |condition _G.IsSpellKnown(3400) or skill("Cooking")>=225
step
create Soothing Turtle Bisque##3400,Cooking,225 |goto Orgrimmar/1 56.5,62.5
step
talk Marogg##42506
skillmax Cooking,300 |goto Orgrimmar/1 56.5,62.5
step
talk Himmik##11187
buy Recipe: Monster Omelet##16110 |goto Winterspring 59.8,51.6 |condition _G.IsSpellKnown(15933) or itemcount(16110) >= 1 or skill("Cooking")>=250
step
use Recipe: Monster Omelet##16110
learn Monster Omelet##15933 |condition _G.IsSpellKnown(15933) or skill("Cooking")>=250
step
Fish from the Lake here |cast Fishing##7620
|tip You can fish from any water in the Tainted Forest
collect 15 Raw Whitescale Salmon##13889 |goto Blasted Lands 43.0,72.3 |condition skill("Cooking")>=300
step
map Winterspring
path loop on; follow strict; dist 40
path	55.4,36.6	52.4,30.8	58.8,31.2
path	60.0,34.2	65.0,39.6	67.2,43.6
path	65.0,75.8	64.6,80.8	54.8,40.1
collect 25 Giant Egg##12207 |condition skill("Cooking")>=250
collect 40 Bear Flank##35562 |condition skill("Cooking")>=275
step
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Monster Omelet##15933,Cooking,250
step
talk Marogg##42506
learn Charred Bear Kabob##46684 |goto Orgrimmar/1 56.5,62.5 |condition _G.IsSpellKnown(46684) or skill("Cooking")>=285
step
create Charred Bear Kabob##46684,Cooking,285 |goto Orgrimmar/1 56.5,62.5
step
talk Sheendra Tallgrass##8145
learn Baked Salmon##18247 |goto Feralas 74.6,42.8 |condition _G.IsSpellKnown(46688) or skill("Cooking")>=300
step
create Baked Salmon##18247,Cooking,300 |goto Orgrimmar/1 56.5,62.5
step
talk Marogg##42506
skillmax Cooking,375 |goto Orgrimmar/1 56.5,62.5
step
talk Marogg##42506
learn Ravager Dog##33284 |goto Orgrimmar/1 56.5,62.5 |condition _G.IsSpellKnown(46688) or skill("Cooking")>=325
step
talk Nula the Butcher##20097
buy Recipe: Talbuk Steak##27693 |goto Nagrand 58.0,25.6 |condition _G.IsSpellKnown(33289) or itemcount(27693) >= 1 or skill("Cooking")>=350
step
map Terokkar Forest
path	60.7,11.3	58.1,13.1	55.5,13.0
path	52.7,12.4	50.3,10.1	46.6,5.3
kill Razorthorn Ravager##24922+
collect 30 Ravager Flesh##27674 |condition skill("Cooking")>=330
step
map Nagrand
path	48.8,47.6	52.0,48.6	56.8,45.8
path	51.6,39.0	52.2,29.6	54.8,24.6
path	57.6,23.2	51.4,23.6	45.4,27.4
path	47.6,42.2	48.2,47.4	52.2,52.6
collect 30 Talbuk Venison##27682 |condition skill("Cooking")>=345
step
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Ravager Dog##33284,Cooking,325
step
use Recipe: Talbuk Steak##27693
learn Talbuk Steak##33289 |condition _G.IsSpellKnown(46688) or skill("Cooking")>=350
step
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Talbuk Steak##33289,Cooking,350
step
talk Jack Trapper##19185
skillmax Cooking,450 |goto Shattrath City 63.1,68.0
Note that for this section, you will need to do _Dalaran Cooking Dailies_ in order to reach 425 Cooking skill
step
talk Jack Trapper##19185
learn Rhino Dogs##45553 |goto Shattrath City 63.1,68.0 |condition _G.IsSpellKnown(45553) or skill("Cooking")>=380
step
map Sholazar Basin
path	32.4,56.9	29.4,53.9	30.4,47.9
path	32.6,42.2	31.1,39.0	28.4,44.7
path	24.6,51.4	29.8,57.1
kill Shardhorn Rhino##28009+
collect 60 Rhino Meat##43012 |condition skill("Cooking")>=375
collect 50 Chilled Meat##43013 |n
|tip Save any Chilled Meat you gather
step
map Zul'Drak
path	75.3,40.5	74.7,42.3	73.2,41.1
path	71.2,42.0	70.8,44.1	69.1,43.5
path	70.5,40.3	72.4,38.8	73.8,38.5
kill Enraged Mammoth##28851+
collect 25 Chunk o' Mammoth##34736 |condition skill("Cooking")>=400
collect 50 Chilled Meat##43013 |n
|tip Save any Chilled Meat you gather
step
map Howling Fjord
path	70.2,67.6	71.7,66.7	75.3,63.7
path	75.1,59.9	73.4,58.1	70.3,63.2
path	67.8,64.7	65.1,68.5	65.2,71.6
path	67.9,71.9
kill Shoveltusk Calf##24791+, Shoveltusk##23690+, Shoveltusk Stag##23691+
collect 25 Shoveltusk Flank##43009 |condition skill("Cooking")>=400
collect 50 Chilled Meat##43013 |n
|tip Save any Chilled Meat you gather
step
kill Ice Heart Jormungar Feeder##26358+, Ice Heart Jormungar Spawn##26359+ |goto Dragonblight 56.5,12.0
Clear out the Jourmungar in the cave
collect 25 Worm Meat##43010 |condition skill("Cooking")>=400
collect 50 Chilled Meat##43013 |condition skill("Cooking")>=425
step
create Rhino Dogs##45553,Cooking,380 |goto Dalaran 40.3,66.3
step
talk Awilo Lon'gomba##29631
learn Great Feast##45554 |goto Dalaran/1 70.0,39.0 |condition _G.IsSpellKnown(45554) or skill("Cooking")>=400
step
create Great Feast##45554,Cooking,400 |goto Dalaran/1 70.0,39.0
step
talk Misensi##31031
buy 30 Northern Spices##43007 |goto Dalaran/1 69.9,38.4 |condition itemcount(43007) >= 30 or skill("Cooking")>=425
step
talk Misensi##31031
buy Recipe: Hearty Rhino##43030 |goto Dalaran/1 69.9,38.4 |condition _G.IsSpellKnown(57436) or itemcount(43030) >= 1 or skill("Cooking")>=350
step
use Recipe: Hearty Rhino##43030
learn Hearty Rhino Soup##57436 |goto Dalaran/1 70.0,39.0 |condition _G.IsSpellKnown(57436) or skill("Cooking")>=425
step
create learn Hearty Rhino Soup##57436 ,Cooking,425 |goto Dalaran/1 70.0,39.0
step
talk Awilo Lon'gomba##29631
skillmax Cooking,525 |goto Dalaran/1 70.0,39.0
Note that you will need to do _Cooking Dailies_ in order to advance to 500 cooking
step
talk Katherine Lee##28705
learn Blackened Surprise##88006 |goto Dalaran 40.8,65.4 |condition _G.IsSpellKnown(88006) or skill("Cooking")>=475
step
map Shimmering Expanse/0
path	57.7,82.2	55.8,81.6	53.2,80.0
path	50.4,78.5	49.5,84.2	51.7,85.6
path	54.7,86.6	58.3,88.1	59.9,84.6
path	58.1,82.1
kill Silversand Burrower##41609+
collect 30 Monstrous Claw##62779 |condition skill("Cooking")>=475
step
map Kelp'thar Forest/0
path loop off; follow loose; dist 30
path	49.6,40.8	51.8,41.2	51.8,44.6
path	53.0,46.8	53.8,51.0	55.8,48.0
kill Speckled Sea Turtle##40223+
|tip They are floated above the ground.
collect 15 Giant Turtle Tongue##62781 |condition skill("Cooking")>=490
step
map Uldum/0
path	58.9,67.7	58.6,72.6	59.0,80.2
path	59.4,85.0	60.8,84.4	62.1,81.5
path	63.4,77.1	65.3,77.5	68.7,76.4
path	68.8,72.8	66.8,71.9	65.4,69.0
path	63.8,66.6	61.3,63.2	60.5,59.0
path	59.4,53.0	57.7,46.9	57.2,44.1
path	54.4,46.5	55.9,50.0	58.1,55.2
kill Longstrider Gazelle##51713+, Neferset Crocolisk##46317+, Marsh Serpent##51676+
collect 25 Toughened Flesh##62778 |condition skill("Cooking")>=450
collect 25 Crocolisk Tail##62784 |condition skill("Cooking")>=520
step
cast Fishing##131474
collect 48 Sharptooth##53062 |goto Uldum/0 54.3,37.7 |condition skill("Cooking")>=500
step
create Blackened Surprise##88006,Cooking,450
step
talk Shazdar##49737
buy Recipe: Seasoned Crab##65413 |goto Orgrimmar 56.8,62.6 |condition _G.IsSpellKnown(88037) or itemcount(65413) >= 1 or skill("Cooking")>=475
Remember to do _Cooking dailies_ in order to buy these Recipes
step
use Recipe: Seasoned Crab##65413
learn Seasoned Crab##88037 |condition _G.IsSpellKnown(88037) or skill("Cooking")>=475
step
create Seasoned Crab##88037,Cooking,475
step
talk Shazdar##49737
buy Recipe: Tender Baked Turtle##65419 |goto Orgrimmar 56.8,62.6 |condition _G.IsSpellKnown(88046) or itemcount(65419) >= 1 or skill("Cooking")>=490
Remember to do _Cooking dailies_ in order to buy these Recipes
step
use Recipe: Tender Baked Turtle##65419
learn Tender Baked Turtle##88046 |condition _G.IsSpellKnown(88046) or skill("Cooking")>=490
step
create Tender Baked Turtle##88046,Cooking,490
step
talk Shazdar##49737
buy Recipe: Fish Fry##65423 |goto Orgrimmar 56.8,62.6 |condition _G.IsSpellKnown(88018) or itemcount(65423) >= 1 or skill("Cooking")>=500
Remember to do _Cooking dailies_ in order to buy these Recipes
step
use Recipe: Fish Fry##65423
learn Fish Fry##88018 |condition _G.IsSpellKnown(88018) or skill("Cooking")>=500
step
create Fish Fry##88018,Cooking,500
step
talk Shazdar##49737
buy Recipe: Beer-Basted Crocolisk##65429 |goto Orgrimmar 56.8,62.6 |condition _G.IsSpellKnown(88018) or itemcount(65429) >= 1 or skill("Cooking")>=500
Remember to do _Cooking dailies_ in order to buy these Recipes
step
use Recipe: Beer-Basted Crocolisk##65429
create Beer-Basted Crocolisk##88005,Cooking,520 |condition _G.IsSpellKnown(88005) or skill("Cooking")>=520
step
confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 520-600 Leveling Guide"
|tip This will take you to the 500 - 600 portion of the Cooking Guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-520 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Cooking",600},
achieveid={121,122,123,124,125,4916,6365},
condition_suggested=function() return hasprof('Cooking',1,600) end,
description="This guide will walk you through leveling your Cooking skill from 1 to 600.",
},[[
step
Before you continue, open your Cooking window to detect your profession |cast Cooking##87028
skillmax Cooking,75
#include "Pandarian_Cooking_1-520"
step
confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 520-600 Leveling Guide"
|tip This will take you to the 520 - 600 Cooking Guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Enchanting",600},
condition_suggested="hasprof('Enchanting',1,600)",
description="This guide will walk you through leveling your Enchanting skill from 1-600.",
},[[
step
#include "trainer_Enchanting"
skillmax Enchanting,75
step
talk Kithas##3346
buy 1 Copper Rod##6217 |goto Orgrimmar 53.3,48.9 |condition itemcount(6217) >= 1 or skill("Enchanting")>=75
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 1-25_ |cast Disenchant##13262
collect 112 Strange Dust##10940 |goto Wailing Caverns 45.8,59.7 |condition skill("Enchanting")>=75
|tip Keep any extra Greater Magic Essences you get, you will need them later.
collect 1 Lesser Magic Essence##10938 |goto Wailing Caverns 45.8,59.7 |condition skill("Enchanting")>=75
|tip You can also buy these materials from the Auction House.
When you reach _25 Enchanting_ you can also farm _Shadowfang Keep_ |goto Shadowfang Keep/1 69.5,61.0
step
create 25 Enchant Bracer - Minor Health##7418,Enchanting,75
step
#include "trainer_Enchanting"
skillmax Enchanting,150
step
create 15 Enchant Bracer - Minor Health##7418,Enchanting,90
|tip You can keep enchanting the same item repeatedly.
step
create Runed Copper Rod##7421,Enchanting,1 total |condition skill("Enchanting")>=75
Keep the _Runed Copper Rod_
step
create Enchant Bracer - Minor Health##7418,Enchanting,75
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 16-25_ |cast Disenchant##13262
collect 9 Greater Magic Essence##10939 |goto Wailing Caverns 45.8,59.7 |condition skill("Enchanting")>=135
|tip You can also buy these materials from the Auction House.
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 21-25_ |cast Disenchant##13262
collect 25 Lesser Eternal Essence##16202 |goto Blackfathom Deeps 44.29,10.66 |condition skill("Enchanting")>=135
|tip You can also buy these materials from the Auction House.
step
talk Kithas##3346
buy 9 Simple Wood##4470 |goto Orgrimmar 53.3,48.9 |condition itemcount(4470) >= 9 or skill("Enchanting")>=135
step
#include "trainer_Enchanting"
learn Enchant Bracer - Minor Stamina##7457 |condition skill("Enchanting")>=135
step
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,101
step
#include "trainer_Enchanting"
learn Greater Magic Wand##14807 |condition skill("Enchanting")>=135
step
create 9 Greater Magic Wand##14807,Enchanting,110
step
talk Kulwia##12043
buy 1 Formula: Enchant Bracer - Lesser Strength##11101 |goto Stonetalon Mountains 48.6,61.6 |condition _G.IsSpellKnown(13536) or itemcount(11101) >= 1 or skill("Enchanting")>=135
step
talk Kulwia##12043
buy 1 Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains 48.6,61.6 |condition _G.IsSpellKnown(11039) or itemcount(11039) >= 1 or skill("Enchanting")>=135
step
use Formula: Enchant Cloak - Minor Agility##11039
learn Enchant Cloak - Minor Agility##11039 |condition skill("Enchanting")>=135
step
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135
step
#include "trainer_Enchanting"
skillmax Enchanting,225 |tip You must be at least level 20.
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 26-45_ |cast Disenchant##13262
collect 60 Illusion Dust##16204 |goto Razorfen Kraul 69.89,82.97 |condition skill("Enchanting")>=205
collect 80 Lesser Eternal Essence##16202 |n
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Enchanting"
learn Enchant Bracer - Lesser Stamina##13501 |condition skill("Enchanting")>=220
step
create 20 Enchant Bracer - Lesser Stamina##13501,Enchanting,155
step
use Formula: Enchant Bracer - Lesser Strength##11101
learn Enchant Bracer - Lesser Strength##13536 |condition skill("Enchanting")>=220
step
create 10 Enchant Bracer - Lesser Strength##13536,Enchanting,165
step
#include "trainer_Enchanting"
learn Enchant Bracer - Versatility##13642 |condition skill("Enchanting")>=220
step
create 20 Enchant Bracer - Versatility##13642,Enchanting,185
step
#include "trainer_Enchanting"
learn Enchant Bracer - Strength##13661 |condition skill("Enchanting")>=220
step
create 35 Enchant Bracer - Strength##13661,Enchanting,220
step
#include "trainer_Enchanting"
skillmax Enchanting,300
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 56-65_ |cast Disenchant##13262
collect 305 Rich Illusion Dust##156930 |condition skill("Enchanting")>=300 |goto Razorfen Downs 23.79,18.80
collect 100 Greater Eternal Essence##16203 |condition skill("Enchanting")>=300 |goto Razorfen Downs 23.79,18.80
|tip Greater Eternal Essence come from Uncommon drops with an item level of 56 - 65.
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Enchanting"
learn Enchant Cloak - Greater Defense##13746 |condition skill("Enchanting")>=300
step
talk Kor'geld##3348
buy 20 Crystal Vial##3371 |goto Orgrimmar 55.3,46.1 |condition itemcount(3371) >= 20 or skill("Enchanting")>=300
step
create 5 Enchant Cloak - Greater Defense##13746,Enchanting,225
step
#include "trainer_Enchanting"
learn Enchant Gloves - Agility##13815 |condition skill("Enchanting")>=300
step
create 5 Enchant Gloves - Agility##13815,Enchanting,230
step
#include "trainer_Enchanting"
learn Enchant Boots - Stamina##13836 |condition skill("Enchanting")>=300
step
create 5 Enchant Boots - Stamina##13836,Enchanting,235
step
#include "trainer_Enchanting"
learn Enchant Chest: Superior Health##13858 |condition skill("Enchanting")>=300
step
create 5 Enchant Chest: Superior Health##13858,Enchanting,240
step
#include "trainer_Enchanting"
learn Enchant Boots - Lesser Accuracy##63746 |condition skill("Enchanting")>=300
step
create 10 Enchant Boots - Lesser Accuracy##63746,Enchanting,250
step
#include "trainer_Enchanting"
learn Enchant Bracer - Greater Strength##13939 |condition skill("Enchanting")>=300
step
create 5 Enchant Bracer - Greater Strength##13939,Enchanting,255
step
#include "trainer_Enchanting"
learn Enchant Bracer - Greater Intellect##20008 |condition skill("Enchanting")>=300
step
create 20 Enchant Bracer - Greater Intellect##20008,Enchanting,265
step
talk Daniel Bartlett##4561
buy 1 Formula: Enchant Shield - Greater Stamina##16217 |goto Undercity 64.8,38.2 |condition _G.IsSpellKnown(20017) or itemcount(16217) >= 1 or skill("Enchanting")>=300
step
use Formula: Enchant Shield - Greater Stamina##16217
learn Enchant Shield - Greater Stamina##20017 |condition skill("Enchanting")>=300
step
create 40 Enchant Shield - Greater Stamina##20017,Enchanting,300
step
#include "trainer_Enchanting"
skillmax Enchanting,375
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 79-120_ |cast Disenchant##13262
collect 195 Arcane Dust##22445 |goto The Shattered Halls/1 61.14,92.81 |condition skill("Enchanting")>=351
collect 40 Lesser Planar Essence##22447 |goto The Shattered Halls/1 61.14,92.81 |condition skill("Enchanting")>=351
collect 20 Greater Planar Essence##22446 |goto The Shattered Halls/1 61.14,92.81 |condition skill("Enchanting")>=351
collect 10 Large Prismatic Shard##22449 |goto The Shattered Halls/1 61.14,92.81 |condition skill("Enchanting")>=351
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Enchanting"
learn Enchant Bracer - Lesser Assault##34002 |condition skill("Enchanting")>=351
step
create 10 Enchant Bracer - Lesser Assault##34002,Enchanting,310
step
#include "trainer_Enchanting"
learn Enchant Bracer - Brawn##27899 |condition skill("Enchanting")>=351
step
create 10 Enchant Bracer - Brawn##27899,Enchanting,320
step
#include "trainer_Enchanting"
learn Enchant Chest - Major Versatility##33990 |condition skill("Enchanting")>=351
step
create 10 Enchant Chest - Major Versatility##33990,Enchanting,330
step
#include "trainer_Enchanting"
learn Enchant Shield - Resilience##44383 |condition skill("Enchanting")>=351
step
create 10 Enchant Shield - Resilience##44383,Enchanting,340
step
talk Madame Ruby##19663
buy 1 Formula: Superior Wizard Oil##22563 |goto Shattrath City,63.6,70.0 |condition _G.IsSpellKnown(28019) or itemcount(22563) >= 1 or skill("Enchanting")>=351
step
use Formula: Superior Wizard Oil##22563
learn Superior Wizard Oil##28019 |condition skill("Enchanting")>=351
step
create 15 Superior Wizard Oil##28019,Enchanting,350
step
#include "trainer_Enchanting"
skillmax Enchanting,450
|tip You must be at least level 65.
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 130-200_ |cast Disenchant##13262
collect 220 Infinite Dust##34054 |goto Halls of Lightning 7.38,53.81 |condition skill("Enchanting")>=426
collect 11 Greater Cosmic Essence##34055 |goto Halls of Lightning 7.38,53.81 |condition skill("Enchanting")>=426
|tip You can also buy these materials from the Auction House.
step
kill Ice Revenant##26283+
collect 5 Crystallized Water##37705 |goto Dragonblight 67.2,52.2 |condition skill("Enchanting")>=426
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Enchanting"
learn Enchant Cloak - Speed##60609 |condition skill("Enchanting")>=426
step
create 25 Enchant Cloak - Speed##60609,Enchanting,375
step
#include "trainer_Enchanting"
learn Enchant Bracer - Assault##60616 |condition skill("Enchanting")>=426
step
create 5 Enchant Bracer - Assault##60616,Enchanting,380
step
#include "trainer_Enchanting"
learn Enchant Bracers - Exceptional Intellect##44555 |condition skill("Enchanting")>=426
step
create 3 Enchant Bracers - Exceptional Intellect##44555,Enchanting,386
step
#include "trainer_Enchanting"
learn Enchant Boots - Icewalker##60623 |condition skill("Enchanting")>=426
step
create 5 Enchant Boots - Icewalker##60623,Enchanting,396
step
#include "trainer_Enchanting"
learn Enchant Cloak - Superior Agility##44500 |condition skill("Enchanting")>=426
step
create 3 Enchant Cloak - Superior Agility##44500,Enchanting,405
step
#include "trainer_Enchanting"
learn Enchant Gloves - Haste##44484 |condition skill("Enchanting")>=426
step
create 4 Enchant Gloves - Expertise##44484,Enchanting,417
step
#include "trainer_Enchanting"
learn Enchant Gloves - Precision##44488 |condition skill("Enchanting")>=426
step
create 2 Enchant Gloves - Precision##44488,Enchanting,425
step
#include "trainer_Enchanting"
skillmax Enchanting,525
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 272-333_ |cast Disenchant##13262
collect 342 Hypnotic Dust##52555 |goto The Vortex Pinnacle 54.12,16.81 |condition skill("Enchanting")>=525
collect 5 Lesser Celestial Essence##52718 |n
collect 41 Greater Celestial Essence##52719 |n
|tip You can also buy these materials from the Auction House.
step
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 272-333_ |cast Disenchant##13262
collect 5 Lesser Celestial Essence##52718 |goto The Stonecore 54.27,93.90 |condition skill("Enchanting")>=525
collect 41 Greater Celestial Essence##52719 |goto The Stonecore 54.27,93.90 |condition skill("Enchanting")>=525
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Enchanting"
learn Enchant Boots - Earthen Vitality##74189 |condition skill("Enchanting")>=525
step
create 15 Enchant Boots - Earthen Vitality##74189,Enchanting,440
step
#include "trainer_Enchanting"
learn Enchant Cloak - Lesser Power##74192 |condition skill("Enchanting")>=525
step
create 10 Enchant Cloak - Lesser Power##74192,Enchanting,450
step
#include "trainer_Enchanting"
learn Enchant Weapon - Mending##74195 |condition skill("Enchanting")>=525
step
create 2 Enchant Weapon - Mending##74195,Enchanting,460
step
#include "trainer_Enchanting"
learn Enchant Gloves - Haste##74198 |condition skill("Enchanting")>=525
step
create 5 Enchant Gloves - Haste##74198,Enchanting,465
step
#include "trainer_Enchanting"
learn Enchant Cloak - Intellect##74202 |condition skill("Enchanting")>=525
step
create 10 Enchant Cloak - Intellect##74202,Enchanting,475
step
#include "trainer_Enchanting"
learn Enchant Gloves - Exceptional Strength##74212 |condition skill("Enchanting")>=525
step
create 5 Enchant Gloves - Exceptional Strength##74212,Enchanting,480
step
#include "trainer_Enchanting"
learn Enchant Boots - Major Agility##74213 |condition skill("Enchanting")>=525
step
create 5 Enchant Boots - Major Agility##74213,Enchanting,485
step
#include "trainer_Enchanting"
learn Enchant Gloves - Greater Haste##74220 |condition skill("Enchanting")>=525
step
create 5 Enchant Gloves - Greater Haste##74220,Enchanting,490
step
#include "trainer_Enchanting"
learn Enchant Shield - Mastery##74226 |condition skill("Enchanting")>=525
step
create 5 Enchant Shield - Mastery##74226,Enchanting,495
step
#include "trainer_Enchanting"
learn Enchant Bracer - Precision##74232 |condition skill("Enchanting")>=525
step
create 5 Enchant Bracer - Precision##74232,Enchanting,500
step
Click here to proceed |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 500-600 Leveling Guide"
|tip This will take you to the Enchanting 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Engineering 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Engineering",600},
condition_suggested=function() return hasprof('Engineering',1,600) end,
description="This guide will walk you through leveling your Engineering skill from 1-600.",
},[[
step
#include "trainer_Engineering"
skillmax Engineering,75
step
talk Sovik##3413
buy 1 Blacksmith Hammer##5956 |goto Orgrimmar 56.8,56.4 |condition itemcount(5956) >= 1 or skill("Engineering")>=75
step
#include "Copper_Path"
#include "follow_path_mine"
collect 38 Rough Stone##2835 |condition skill("Engineering")>=75
collect 60 Copper Ore##2770 |condition skill("Engineering")>=75
collect 4 Linen Cloth##2589 |condition skill("Engineering")>=75
collect Tigerseye##818 |n
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Copper Bar##2657,Mining,58 total |condition skill("Engineering")>=75
|tip Keep any extra Copper Bar you have for making items later.
step
create Rough Blasting Powder##3918,Engineering,40 total |condition skill("Engineering")>=75
step
#include "trainer_Engineering"
learn Handful of Copper Bolts##3922 |condition skill("Engineering")>=75
step
#include "maincity_anvil"
create Handful of Copper Bolts##3922,Engineering,50 total |condition skill("Engineering")>=75
|tip Save Handfuls of Copper Bolts to use later.
step
#include "trainer_Engineering"
learn Rough Copper Bomb##3923 |condition skill("Engineering")>=75
step
#include "maincity_anvil"
create 20 Rough Copper Bomb##3923,Engineering,70
step
#include "trainer_Engineering"
learn Arclight Spanner##7430 |condition skill("Engineering")>=75
step
#include "maincity_anvil"
create Arclight Spanner##7430,Engineering,1 total |condition skill("Engineering")>=75
step
#include "maincity_anvil"
create Coarse Dynamite##3931,Engineering,4 total |condition skill("Engineering")>=75
step
#include "trainer_Engineering"
skillmax Engineering,150
|tip You must be at least level 10.
step
kill Felweaver Scornn##5822+, Burning Blade Apprentice##3198+, Burning Blade Fanatic##3197+, Gazz'uz##3204+
collect 5 Linen Cloth##2589 |goto Durotar/12 85.7,56.8  |condition skill("Engineering")>=130
|tip You can also buy these materials from the Auction House.
step
#include "Copper_Path"
#include "follow_path_mine"
collect 50 Copper Ore##2770 |condition skill("Engineering")>=130
|tip You can also buy these materials from the Auction House.
step
#include "Silver_Tin_Path"
#include "follow_path_mine"
collect 20 Coarse Stone##2836 |condition skill("Engineering")>=130
collect 50 Tin Ore##2771 |condition skill("Engineering")>=130
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Tin Bar##3304,Mining,48 total |condition skill("Engineering")>=130
step
#include "maincity_anvil"
create Copper Bar##2657,Mining,48 total |condition skill("Engineering")>=130
step
#include "maincity_forge2"
create Silver Bar##2658,Mining,10 total |condition skill("Engineering")>=130
step
#include "maincity_forge2"
create Bronze Bar##2659,Mining,48 total |n
collect 96 Bronze Bar##2841 |condition skill("Engineering")>=130
step
#include "trainer_Engineering"
learn Coarse Blasting Powder##3929 |condition skill("Engineering")>=130
step
create 35 Coarse Blasting Powder##3929,Engineering,95
|tip Keep at least 20 of these to craft a later item.
step
#include "trainer_Engineering"
learn Silver Contact##3973 |condition skill("Engineering")>=130
step
#include "maincity_anvil"
create 10 Silver Contact##3973,Engineering,105
step
#include "trainer_Engineering"
learn Clockwork Box##8334 |condition skill("Engineering")>=130
step
#include "maincity_anvil"
create 5 Clockwork Box##8334,Engineering,110
step
#include "trainer_Engineering"
learn Bronze Tube##3938 |condition skill("Engineering")>=130
step
create 5 Bronze Tube##3938,Engineering,115
|tip Keep 5 Bronze Tubes to make more items later.
step
#include "trainer_Engineering"
learn Flying Tiger Goggles##3934 |condition skill("Engineering")>=130
step
create 3 Flying Tiger Goggles##3934,Engineering,130
step
#include "trainer_Engineering"
skillmax Engineering,225
|tip You must be at least level 20.
step
Kill the _Thislefur enemies_ in the area
collect 25 Wool Cloth##2592 |goto Ashenvale 35.6,32.7 |condition skill("Engineering")>=210
step
#include "Iron_Ore_Path"
#include "follow_path_mine"
collect 20 Heavy Stone##2838 |condition skill("Engineering")>=210
collect 50 Iron Ore##2772 |condition skill("Engineering")>=210
step
#include "Mithril_Ore_Path"
#include "follow_path_mine"
collect 132 Solid Stone##7912 |condition skill("Engineering")>=210
collect 220 Mithril Ore##3858 |condition skill("Engineering")>=210
collect 10 Gold Ore##2776 |condition skill("Engineering")>=210
step
Kill _Deadwood and Jadenar_ enemies at the provided locations
collect 35 Mageweave Cloth##4338 |condition skill("Engineering")>=210 |goto Felwood,49.2,87.0
You can find more here |goto 38.4,67.6
As well as here |goto 39.4,58.4
step
talk Shimra##5817
buy 4 Coal##3857 |goto Orgrimmar 54.0,81.9 |condition itemcount(3857) >= 4 or skill("Engineering")>=210
step
#include "maincity_anvil"
create Iron Bar##3307,Mining,50 total |condition skill("Engineering")>=210
step
#include "maincity_anvil"
create Steel Bar##3569,Mining,4 total |condition skill("Engineering")>=210
step
#include "maincity_anvil"
create Mithril Bar##10097,Mining,220 total |condition skill("Engineering")>=210
step
#include "maincity_anvil"
create Gold Bar##3308,Mining,10 total |condition skill("Engineering")>=210
step
#include "trainer_Engineering"
learn Heavy Blasting Powder##3945 |condition skill("Engineering")>=210
step
create Heavy Blasting Powder##3945,Engineering,135
step
#include "trainer_Engineering"
learn Whirring Bronze Gizmo##3942 |condition skill("Engineering")>=210
step
create Whirring Bronze Gizmo##3942,Engineering,150
step
#include "trainer_Engineering"
learn Gold Power Core##12584 |condition skill("Engineering")>=210
step
#include "maincity_anvil"
create Gold Power Core##12584,Engineering,160
step
#include "trainer_Engineering"
learn Iron Strut##3958 |condition skill("Engineering")>=210
step
create Iron Strut##3958,Engineering,170
step
#include "trainer_Engineering"
learn Gyrochronatom##3961 |condition skill("Engineering")>=210
step
create Gyrochronatom##3961,Engineering,180
step
#include "trainer_Engineering"
learn Gyromatic Micro-Adjustor##12590 |condition skill("Engineering")>=210
step
#include "trainer_Engineering"
learn Solid Blasting Powder##12585 |condition skill("Engineering")>=210
step
create 1 Gyromatic Micro-Adjustor##12590,Engineering,1 total |condition skill("Engineering")>=210
Don't sell this item once you make it
step
create Solid Blasting Powder##12585,Engineering,Engineering,195
step
create Solid Blasting Powder##12585,Engineering, total |n
collect 66 Solid Blasting Powder##10505 |condition skill("Engineering")>=210
|tip You will need to keep 66 Solid Blasting Powder to make items later.
step
#include "trainer_Engineering"
learn Mithril Tube##12589 |condition skill("Engineering")>=210
step
create Mithril Tube##12589,Engineering,210
step
#include "trainer_Engineering"
skillmax Engineering,300
|tip You must be at least level 35.
step
#include "trainer_Engineering"
learn Unstable Trigger##12591 |condition skill("Engineering")>=280
step
create Unstable Trigger##12591+,Engineering,22 total |n
|tip Save 22 Unstable Triggers in your bags, you will need them later to create items.
skill Engineering,220
step
#include "trainer_Engineering"
learn Mithril Casing##12599 |condition skill("Engineering")>=280
step
create 44 Mithril Casing##12599+,Engineering,44 total |n
|tip Save 44 Mithril Casings in your bags, you will need them later to create items.
skill Engineering,235
step
#include "trainer_Engineering"
learn Hi-Explosive Bomb##12619 |condition skill("Engineering")>=280
step
create 22 Hi-Explosive Bomb##12619,Engineering,250
step
#include "trainer_Engineering"
learn Dense Blasting Powder##19788 |condition skill("Engineering")>=280
step
map Silithus
path loop on; follow loose; dist 30
path	54.8,26.8	52.3,22.8	50.5,15.3
path	55.8,12.5	61.8,12.5	68.3,15.6
path	69.7,19.7	68.4,26.3	72.3,27.9
path	72.5,39.5	70.0,43.5	66.7,44.7
path	64.6,45.0	67.1,55.0	67.0,59.8
path	67.3,63.0	69.5,69.6	68.1,74.1
path	66.3,81.9	65.7,83.4	56.8,76.1
path	56.6,81.2	50.6,80.3	44.6,80.2
path	40.4,80.9	26.1,80.1	25.3,74.2
path	26.7,69.5	33.0,66.3	30.8,62.6
path	26.6,53.5	28.4,47.9	27.8,40.6
path	27.6,33.9	25.2,27.1	28.5,16.2
path	29.5,11.3	35.0,12.0	40.6,13.1
path	45.1,16.3	47.3,19.3	47.3,26.6
#include "follow_path_mine"
collect 180 Thorium Ore##10620 |condition skill("Engineering")>=280
collect 41 Dense Stone##12365 |condition skill("Engineering")>=280
step
kill Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882
collect 35 Runecloth##14047 |condition skill("Engineering")>=280 |goto Silithus,45.8,38.2
You can find more twilight enemies here |goto 35.7,32.5
As well as here |goto 29.5,73.4
And here |goto 66.1,20.3
step
#include "maincity_anvil"
create Thorium Bar##16153,Mining,180 total |n
collect 180 Thorium Bar##12359 |condition skill("Engineering")>=280
step
create 14 Dense Blasting Powder##19788,Engineering,14 total |n
|tip Save 14 Dense Blasting Powder for making items later.
skill Engineering,255
step
#include "trainer_Engineering"
learn Dense Dynamite##23070 |condition skill("Engineering")>=280
step
create 7 Dense Dynamite##23070,Engineering,260
step
#include "trainer_Engineering"
learn Thorium Widget##19791 |condition skill("Engineering")>=280
step
#include "maincity_anvil"
create 20 Thorium Widget##19791,Engineering,280
step
#include "trainer_Engineering"
skillmax Engineering,375
|tip You must be at least level 50.
step
#include "trainer_Engineering"
learn Thorium Tube##19795 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create 23 Thorium Tube##19795,Engineering,300
step
#include "Fel_Iron_Path"
#include "follow_path_mine"
collect 220 Fel Iron Ore##23424 |condition skill("Engineering")>=350
collect 40 Eternium Ore##23427 |n
step
#include "Adamantite_Path"
#include "follow_path_mine"
collect 80 Adamantite Ore##23425 |condition skill("Engineering")>=350
collect 10 Mote of Fire##22574 |condition skill("Engineering")>=350
collect 20 Mote of Earth##22573 |condition skill("Engineering")>=350
collect 40 Eternium Ore##23427 |condition skill("Engineering")>=350
|tip You can also buy these materials from the Auction House.
step
kill Boulderfist Mystic##17135+, Boulderfist Crusher##17134+
collect 18 Netherweave Cloth##21877 |goto Nagrand,73.3,69.7 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create Fel Iron Bar##29356,Mining,110 total |n
collect 110 Fel Iron Bar##23445 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create Adamantite Bar##29358,Mining,40 total |n
collect 40 Adamantite Bar##23446 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create Eternium Bar##29359,Mining,20 total |n
collect 20 Eternium Bar##23447 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create Felsteel Bar##29360,Mining,10 total |condition skill("Engineering")>=350
step
#include "trainer_Engineering"
learn Handful of Fel Iron Bolts##30305 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create Handful of Fel Iron Bolts##30305,Engineering,44 total |n
|tip Save 44 Fel Iron Bolts for making items later.
skill Engineering,310
step
#include "trainer_Engineering"
learn Elemental Blasting Powder##30303 |condition skill("Engineering")>=350
step
#include "trainer_Engineering"
learn Fel Iron Casing##30304 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create Elemental Blasting Powder##30303,Engineering,10 total |n
|tip These will give you 4 at a time, you will need 40 total.
collect 40 Elemental Blasting Powder##23781 |condition skill("Engineering")>=350
step
create 12 Fel Iron Casing##30304,Engineering,12 total |n
|tip You will need to keep 12 Fel Iron Casing for making items later.
skill Engineering,315
step
#include "trainer_Engineering"
learn Fel Iron Bomb##30310 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create 12 Fel Iron Bomb##30310,Engineering,325
step
#include "trainer_Engineering"
learn Adamantite Grenade##30311 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create 10 Adamantite Grenade##30311,Engineering,335
step
talk Wind Trader Lathrai##18484
buy 1 Schematic: White Smoke Flare##23811 |goto Shattrath City,72.2,30.7 |condition _G.IsSpellKnown(30341) or itemcount(23811) >= 1 or skill("Engineering")>=350
step
use Schematic: White Smoke Flare##23811
learn White Smoke Flare##30341 |condition skill("Engineering")>=350
step
create 30 White Smoke Flare##30341,Engineering,345
step
#include "trainer_Engineering"
learn Felsteel Stabilizer##30309 |condition skill("Engineering")>=350
step
#include "maincity_anvil"
create 5 Felsteel Stabilizer##30309,Engineering,350
step
#include "trainer_Engineering"
skillmax Engineering,450 |tip You must be at least level 65.
step
#include "trainer_Engineering"
learn Handful of Cobalt Bolts##56349 |condition skill("Engineering")>=425
step
map Howling Fjord
path loop on; follow loose; dist 30
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
collect 200 Cobalt Ore##36909 |condition skill("Engineering")>=425
collect 47 Crystallized Water##37705 |condition skill("Engineering")>=425
|tip You can also buy these materials from the Auction House.
step
map Sholazar Basin
path loop on; follow loose; dist 40
path	77.9,63.8	78.7,52.4	74.3,48.6
path	58.9,53.9	63.5,44.4	66.7,40.3
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	48.0,33.2	53.8,37.0
path	47.8,43.1	46.8,39.7	39.6,32.8
path	32.9,32.8	23.3,48.4	33.5,46.6
path	35.8,49.9	40.0,50.9	38.0,54.9
path	30.5,55.3	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.2,78.4
path	33.8,73.4	33.0,67.9	40.9,70.1
path	34.5,88.9	50.9,88.8	51.5,82.1
path	46.0,60.9	52.5,68.9	58.7,88.2
path	62.3,74.5	63.6,84.4
#include "follow_path_mine"
collect 388 Saronite Ore##36912 |condition skill("Engineering")>=425
collect 13 Crystallized Earth##37701 |condition skill("Engineering")>=425
|tip You can also buy these materials from the Auction House.
step
kill Dark Ritualist##34734+, Dark Zealot##34728
collect 6 Frostweave Cloth##33470 |goto Icecrown,61.8,20.8 |condition skill("Engineering")>=425
|tip You can also buy these materials from the Auction House.
step
kill Ice Revenant##26283
collect 56 Crystallized Water##37705 |goto Dragonblight 67.2,52.2 |condition skill("Engineering")>=425
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Mining"
learn Smelt Saronite##49258 |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create Saronite Bar##49258,Mining,194 total |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create Cobalt Bar##49252,Mining,200 total |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create 25 Handful of Cobalt Bolts##56349,Engineering,370
collect 20 Handful of Cobalt Bolts##39681 |condition skill("Engineering")>=425
|tip Save 20 Cobalt Bolts for crafting more items.
step
#include "trainer_Engineering"
learn Volatile Blasting Trigger##53281 |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create Volatile Blasting Trigger##53281,Engineering,375
collect 25 Volatile Blasting Trigger##39690 |condition skill("Engineering")>=425
|tip Save 25 Volatile Blasting Trigger for crafting more items later.
step
#include "trainer_Engineering"
learn Overcharged Capacitor##56464 |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create 13 Overcharged Capacitor##56464,Engineering,385
step
#include "trainer_Engineering"
learn Explosive Decoy##56463 |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create 6 Explosive Decoy##56463,Engineering,390
step
#include "trainer_Engineering"
learn Froststeel Tube##56471 |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create 13 Froststeel Tube##56471,Engineering,400
collect 8 Froststeel Tube##39683 |condition skill("Engineering")>=425
|tip Save 8 Froststeel Tubes for crafting more items later.
step
#include "trainer_Engineering"
learn Diamond-cut Refractor Scope##61471 |condition skill("Engineering")>=425
step
create 7 Diamond-cut Refractor Scope##61471,Engineering,405
step
#include "trainer_Engineering"
learn Box of Bombs##56468 |condition skill("Engineering")>=425
step
create 13 Box of Bombs##56468,Engineering,415
step
#include "trainer_Engineering"
learn Mana Injector Kit##56477 |condition skill("Engineering")>=425
step
#include "maincity_anvil"
create 13 Mana Injector Kit##56477,Engineering,425
step
#include "trainer_Engineering"
skillmax Engineering,525
|tip You must be at least level 75.
step
#include "trainer_Engineering"
learn Handful of Obsidium Bolts##84403 |condition skill("Engineering")>=500
step
map Mount Hyjal
path follow loose;loop;ants straight;dist 60
path 23.8,36.2	9.4,35.9	17.0,56.4
path 35.2,64.9	33.3,74.8	31.3,84.3
path 34.5,95.3	52.7,60.2	57.2,58.4
path 80.7,65.2	85.7,46.7	81.5,53.8
path 78.4,58.9	58.3,55.5	54.6,54.4
path 36.7,51.9	25.0,40.2	35.7,34.3
path 33.5,26.4
#include "follow_path_mine"
collect 212 Obsidium Ore##53038 |condition skill("Engineering")>=500
|tip You can also buy these materials from the Auction House.
step
kill Twilight Augur##40713+, Twilight Retainer##40767+
collect 20 Embersilk Cloth##53010 |goto Mount Hyjal 60.0,70.8 |condition skill("Engineering")>=500
|tip You can also buy these materials from the Auction House.
step
map Twilight Highlands
path follow loose;loop;ants straight;dist 60
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
collect 152 Elementium Ore##52185 |condition skill("Engineering")>=500
|tip You can also buy these materials from the Auction House.
step
kill Obsidian Stoneslave##47226+
collect 52 Volatile Earth##52327+ |goto Twilight Highlands,57.9,31.2 |condition skill("Engineering")>=500
|tip You can also buy these materials from the Auction House.
step
kill Enslaved Tempest##46328+
collect 30 Volatile Air##52328 |goto 34.6,69.2 |condition skill("Engineering")>=500
|tip You can also buy these materials from the Auction House.
You can find more around this area |goto 39.5,85.7
step
#include "maincity_anvil"
create Elementium Bar##74530,Mining,76 total |condition skill("Engineering")>=500
step
#include "maincity_anvil"
create Obsidium Bar##84038,Mining,106 total |condition skill("Engineering")>=500
step
#include "maincity_anvil"
create Handful of Obsidium Bolts##84403,Engineering,442
|tip You will need to keep at least 36 for upcoming recipes.
step
#include "trainer_Engineering"
learn Electrostatic Condenser##95703 |condition skill("Engineering")>=500
step
create Electrostatic Condenser##95703,Engineering,1 total |condition skill("Engineering")>=500
|tip Keep this in your bags, it will help you farm Volatile Air as you mine more.
step
#include "trainer_Engineering"
learn Electrified Ether##94748 |condition skill("Engineering")>=500
step
create Electrified Ether##94748,Engineering,460
|tip Hold on to any extra Electrified Ether for now.
step
#include "trainer_Engineering"
learn Safety Catch Removal Kit##84410 |condition skill("Engineering")>=500
step
create Safety Catch Removal Kit##84410,Engineering,470
step
#include "trainer_Engineering"
learn High-Powered Bolt Gun##84411 |condition skill("Engineering")>=500
step
#include "maincity_anvil"
create High-Powered Bolt Gun##84411,Engineering,475
step
#include "trainer_Engineering"
learn Elementium Toolbox##84416 |condition skill("Engineering")>=500
step
#include "maincity_anvil"
create Elementium Toolbox##84416,Engineering,495
step
#include "trainer_Engineering"
learn Elementium Dragonling##84418 |condition skill("Engineering")>=500
step
#include "maincity_anvil"
create Elementium Dragonling##84418,Engineering,500
step
Click here to proceed |confirm |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 500-600 Leveling Guide"
|tip This will take you to the Engineering 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Fishing",600},
condition_suggested=function() return hasprof('Fishing',1,600) end,
description="This guide will walk you through leveling your Fishing skill from 1-600.",
},[[
step
#include "trainer_Fishing"
skillmax Fishing,75
step
#include "trainer_Fishing"
buy 1 Fishing Pole##6256 |condition itemcount(6256) >= 1 or skill("Fishing")>=75
buy 1 Shiny Bauble##6529 |condition itemcount(6529) >= 1 or skill("Fishing")>=75
step
Equip your Fishing Pole |use Fishing Pole##6256
Use a Shiny Bauble to temporarily increase your Fishing skill |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
Stand on the end of this wooden dock |goto Orgrimmar 66.5,41.5
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
Get your Fishing skill to level 75 |skill Fishing,75
step
#include "trainer_Fishing"
skillmax Fishing,150
step
#include "trainer_Fishing"
buy 5 Shiny Bauble##6529 |condition itemcount(6529) >= 5 or skill("Fishing")>=150
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use the Shiny Bauble to temporarily increase your Fishing skill |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
Stand on the end of this wooden dock |goto 66.5,41.5
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
Get your Fishing skill to level 150 |skill Fishing,150
step
#include "trainer_Fishing"
skillmax Fishing,225
step
#include "trainer_Fishing"
buy 5 Shiny Bauble##6529 |condition itemcount(6529) >= 5 or skill("Fishing")>=225
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use the Shiny Bauble to temporarily increase your Fishing skill |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
Stand on the end of this wooden dock |goto 66.5,41.5
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
Get your Fishing skill to level 225 |skill Fishing,225
step
#include "trainer_Fishing"
skillmax Fishing,300
step
#include "trainer_Fishing"
buy 5 Shiny Bauble##6529 |condition itemcount(6529) >= 5 or skill("Fishing")>=300
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use the Shiny Bauble to temporarily increase your Fishing skill |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
Stand on the end of this wooden dock |goto 66.5,41.5
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
Get your Fishing skill to level 300 |skill Fishing,300
step
#include "trainer_Fishing"
skillmax Fishing,375
step
#include "trainer_Fishing"
buy 5 Shiny Bauble##6529 |condition itemcount(6529) >= 5 or skill("Fishing")>=375
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use the Shiny Bauble to temporarily increase your Fishing skill |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
Stand on the end of this wooden dock |goto 66.5,41.5
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
Get your Fishing skill to level 375 |skill Fishing,375
step
#include "trainer_Fishing"
skillmax Fishing,450
step
#include "trainer_Fishing"
buy 1 Strong Fishing Pole##6365 |condition itemcount(6365) >= 1 or skill("Fishing")>=450
buy Shiny Bauble##6529 |condition itemcount(6529) >= 1 or skill("Fishing")>=450
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use the Shiny Bauble to temporarily increase your Fishing skill |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
Stand on the end of this wooden dock |goto 66.5,41.5
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
Get your Fishing skill to level 450 |skill Fishing,450
step
#include "trainer_Fishing"
skillmax Fishing,525
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Stand on the end of this wooden dock |goto 66.5,41.5
Use your Fishing skill to fish in the water |cast Fishing##131474
Get your Fishing skill to level 525 |skill Fishing,525
step
Click here to proceed |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 525-600 Leveling Guide"
|tip This will take you to the Fishing 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Herbalism",600},
condition_suggested=function() return hasprof('Herbalism',1,600) end,
description="This guide will walk you through leveling your Herbalism skill from 1 - 600.",
},[[
step
#include "trainer_Herbalism"
skillmax Herbalism,75
step
talk Innkeeper Norman##6741
home Trade Quarter |goto Undercity 67.7,37.9
step
map Tirisfal Glades
path follow loose;loop;ants straight;dist 60
path 56.6,49.0	49.4,49.5	47.6,42.4
path 50.2,32.2	44.4,32.9	42.9,51.0
path 43.1,53.8	44.3,59.8	55.7,55.5
#include "follow_path_herbs"
collect Peacebloom##2447 |n
collect Silverleaf##765 |n
collect Earthroot##2449 |n
skill Herbalism,70
step
#include trainer_HerbalismUC
skillmax Herbalism,150
step
map Hillsbrad Foothills
path follow loose;loop;ants straight;dist 60
path	31.8,62.6	33.9,54.0	33.9,54.0
path	29.7,44.1	34.5,28.2	39.5,21.0
path	39.5,21.0	44.2,8.3 	51.3,14.0
path	57.5,20.9	56.1,34.3	49.9,46.2
path	43.1,50.1	38.2,49.1	40.1,55.0
path	41.3,67.4	41.3,67.4	36.3,69.9
#include "follow_path_herbs"
collect Mageroyal##785 |n
collect Bruiseweed##2453 |n
collect Briarthorn##2450 |n
skill Herbalism,125
step
#include "trainer_HerbalismUC"
skillmax Herbalism,225
step
map Western Plaguelands
path follow loose;loop;ants straight;dist 60
path	31.8,59.3	36.9,57.1	43.5,53.2
path	45.9,44.7	45.2,35.2	49.5,35.1
path	51.0,47.4	55.2,51.3	61.8,52.0
path	67.2,44.5	63.6,56.0	56.6,60.1
path	52.6,67.5	46.4,59.2	37.9,62.2
path	33.7,62.7
#include "follow_path_herbs"
collect Fadeleaf##3818 |n
collect Kingsblood##3356 |n
collect Khadgar's Whisker##3358 |n
skill Herbalism,200
step
#include "trainer_Herbalism"
skillmax Herbalism,300
step
map Western Plaguelands
path follow loose;loop;ants straight;dist 60
path	32.29,67.51	34.15,69.05	37.72,68.67
path	39.01,73.99	43.24,75.29	47.27,73.61
path	50.96,70.89	56.20,69.13	62.13,63.79
path	67.86,62.48	62.26,82.75	57.56,80.20
path	54.19,74.69	50.00,72.33	46.39,78.06
path	40.17,77.54	35.38,73.50	30.74,70.77
#include "follow_path_herbs"
collect Blindweed##195114 |n
collect liferoot##3357 |n
skill Herbalism,215
step
map Searing Gorge
path follow loose;loop;ants straight;dist 60
path	66.9,43.2	58.9,53.0	55.6,68.1
path	49.8,70.1	45.9,61.5	38.1,74.9
path	31.0,67.8	32.1,56.9	29.4,44.8
path	37.5,47.8	40.5,39.1	47.2,42.1
path	53.5,35.4	77.0,19.0
#include "follow_path_herbs"
collect Firebloom##4625 |n
collect Sungrass##8838 |n
|tip Firebloom goes grey at 280, so Sungrass will be the only herb available here to get the last 5 points.
skill Herbalism,285
step
#include trainer_Herbalism
skillmax Herbalism,375
step
map Swamp of Sorrows
path follow loose;loop;ants straight;dist 60
path 17.6,52.9		21.6,54.6		30.9,60.7
path 39.4,56.9		51.7,59.6		64.5,67.3
path 73.3,81.9		82.0,76.0		85.3,62.6
path 87.6,39.9		84.9,31.2		80.1,20.6
path 66.5,22.7		56.8,31.9		47.0,36.0
path 36.1,39.8		26.9,42.9
#include "follow_path_herbs"
collect Golden Sansam##13464 |n
collect Sorrowmoss##13466 |n
skill Herbalism,300
step
map Felwood
path follow loose;loop;ants straight;dist 60
path 50.5,80.9		47.6,75.8		45.4,71.4
path 44.9,66.4		42.9,58.3		43.6,52.1
path 45.2,42.1		49.6,33.6		55.3,24.8
path 57.5,15.5		54.3,14.1		42.7,21.7
path 40.0,37.5		40.0,46.5		39.6,56.9
path 39.1,66.2		38.9,71.3		42.7,84.7
#include "follow_path_herbs"
collect Gromsblood##8846 |n
collect Dreamfoil##13463 |n
collect Golden Sansam##13464 |n
collect Sorrowmoss##13466 |n
skill Herbalism,325
step
map Terokkar Forest
path follow loose;loop;ants straight;dist 60
path	34.4,8.0	37.5,16.1	41.6,19.9
path	44.5,11.5	48.0,18.4	51.0,21.0
path	47.5,22.9	48.4,26.9	60.2,22.5
path	65.3,32.3	68.3,41.8	73.1,45.3
path	61.5,48.6	54.0,37.1	48.0,33.5
path	39.0,34.8	39.2,44.4	47.3,50.0
path	47.0,79.8	33.5,76.9	19.6,77.8
path	20.3,71.0	21.5,60.7	31.4,39.9
path	37.4,30.1
#include "follow_path_herbs"
collect Felweed##22785 |n
collect Dreaming Glory##22786 |n
collect Terocone##22789 |n
skill Herbalism,375
step
#include trainer_Herbalism
skillmax Herbalism,450
step
map Borean Tundra
path follow loose;loop;ants straight;dist 60
path 51.9,47.7		53.7,43.4	53.2,38.8
path 54.8,29.9		51.3,20.8	49.4,26.2
path 42.9,41.3		36.5,54.9	44.1,64.2
path 52.2,60.7		57.7,52.1
#include "follow_path_herbs"
collect Goldclover##36901 |n
collect Tiger Lily##36904 |n
skill Herbalism,400
step
map Sholazar Basin
path follow loose;loop;ants straight;dist 60
path 32.0,58.2		36.1,65.3		43.9,57.7
path 44.5,63.9		39.5,66.3		40.4,71.7
path 32.8,82.3		36.1,84.4		42.6,76.0
path 46.8,62.5		51.0,62.0		60.0,73.9
path 55.7,85.9		66.4,82.3		69.3,65.8
path 55.2,57.1		48.9,55.0		55.4,48.1
path 58.1,38.3		34.8,31.4		30.1,43.4
path 32.1,48.5		26.6,55.4		23.7,60.3
#include "follow_path_herbs"
collect Goldclover##36901 |n
collect Tiger Lily##36904 |n
collect Adder's Tongue Stem##108353 |n
skill Herbalism,425
step
#include "trainer_Herbalism"
skillmax Herbalism,525
step
map Mount Hyjal
path follow loose;loop;ants straight;dist 60
path 68.2,23.9		59.2,31.6		57.0,38.9
path 57.9,17.5		51.5,16.9		52.6,35.5
path 48.7,36.5		44.0,24.5		39.8,32.5
path 36.5,21.7		32.3,25.2		34.6,36.9
path 43.5,42.6		36.2,44.9		25.3,37.8
path 24.1,31.9		11.8,31.6		14.3,47.0
path 19.0,58.5		25.6,62.0		31.9,46.7
path 33.1,65.2		36.9,53.5		42.3,55.9
path 33.8,65.0		31.3,76.5		33.8,98.2
path 57.1,80.9		59.2,84.5		59.8,77.8
path 55.8,74.7		59.8,71.6		49.1,51.6
path 61.9,60.5		67.1,53.5		74.3,58.8
path 71.9,68.5		77.3,63.2		83.0,64.2
path 89.9,49.8		80.9,51.8		77.5,59.5
#include "follow_path_herbs"
collect Cinderbloom##52983 |n
skill Herbalism,475
step
map Deepholm
path follow loose;loop;ants straight;dist 60
path 69.4,56.0		74.7,61.1		75.8,67.5
path 70.5,61.9		71.1,70.6		66.0,68.5
path 58.0,73.2		47.4,67.3		37.0,53.3
path 37.6,44.7		26.8,41.5		23.1,35.3
path 28.9,35.6		27.8,27.0		31.2,32.0
path 36.6,28.9		33.0,19.1		47.8,12.9
path 45.9,21.1		43.6,25.1		44.5,28.6
path 49.1,33.6		56.7,38.3		73.8,32.7
path 75.2,41.9		69.6,46.4
#include "follow_path_herbs"
collect Heartblossom##52986 |n
skill Herbalism,500
step
label "farm3"
map Uldum
path follow loose;loop;ants straight;dist 60
path 58.4,31.3		56.2,22.6		57.8,14.5
path 61.5,14.0		57.1,44.7		60.5,58.3
path 69.8,76.5		65.9,75.9		60.0,83.2
path 59.0,58.8		55.3,45.8		52.0,45.6
path 50.8,42.5		50.8,36.0
#include "follow_path_herbs"
collect Whiptail##52988 |n
skill Herbalism,525
step
Click here to proceed |confirm |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 525-600 Leveling Guide"
|tip This will take you to the Herbalism 525 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Inscription 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Inscription",600},
condition_suggested=function() return hasprof('Inscription',1,600) end,
description="This guide will walk you through leveling your Inscription skill from 1-600.",
},[[
step
#include "trainer_Inscription"
skillmax Inscription,75
|tip You must be at least level 5.
step
#include "vendor_Inscription"
buy 1 Virtuoso Inking Set##39505 |condition itemcount(39505) >= 1 or skill("Inscription")>=75
buy 30 Light Parchment##39354 |condition itemcount(39354) >= 30 or skill("Inscription")>=75
step
#include "PB_SL_ER_Path"
#include "follow_path_herbs"
collect Silverleaf##765 |n
collect Peacebloom##2447 |n
collect Earthroot##2449 |n
Gather around _{_G.max(0 , (170-itemcount(765,2447,2449,22710)))}_ herbs
Mill the herbs you gathered
collect 84 Alabaster Pigment##39151 |condition skill("Inscription")>=75
|tip You can also buy these materials from the Auction House.
step
create 42 Moonglow Ink##52843,Inscription,60
step
create Research: Moonglow Ink##165564,Inscription,75
step
#include "trainer_Inscription"
skillmax Inscription,150
|tip You must be at least level 10.
step
#include "MR_BW_BT_SK_Path"
#include "follow_path_herbs"
You will need {_G.max(0 , (80-itemcount(2450,2453,785,3820,2452)))} herbs
collect Mageroyal##785 |n
collect Bruiseweed##2453 |n
collect Briarthorn##2450 |n
Mill the 80 herbs you gathered into Dusky Pigment
collect 42 Dusky Pigment##39334 |condition skill("Inscription")>=128
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Inscription"
learn Midnight Ink##53462 |condition skill("Inscription")>=128
step
create 21 Midnight Ink##53462,Inscription,21 total |n
collect 21 Midnight Ink##39774 |condition skill("Inscription")>=128
step
#include "vendor_Inscription"
buy 59 Light Parchment##39354 |condition itemcount(39354) >= 59 or skill("Inscription")>=128
step
create Research: Moonglow Ink##165564,Inscription,107
step
create Research: Midnight Ink##165304,Inscription,128
step
#include "trainer_Inscription"
learn Lions Ink##57704 |condition skill("Inscription")>=200
step
#include "vendor_Inscription"
buy 13 Common Parchment##39354 |condition itemcount(39354) >= 13 or skill("Inscription")>=200
step
#include "GM_KB_LR_WS_Path"
#include "follow_path_herbs"
You need about 240 Golden giving herbs total
collect Grave Moss##3369 |n
collect Kingsblood##3356 |n
collect Liferoot##3357 |n
collect Wild Steelbloom##3355 |n
You'll need about {_G.max(0 , (240-itemcount(3369,3356,3357,3355)))} more herbs.
Mill the 240 herbs you gathered into Golden Pigment |cast Milling##51005
collect 72 Golden Pigment##39338 |condition skill("Inscription")>=200
|tip You can also buy these materials from the Auction House.
step
create 72 Lions Ink##57704,Inscription,45 total |n
collect 72 Lions Ink##43116 |condition skill("Inscription")>=200
step
#include "vendor_Inscription"
buy 25 Light Parchment##39354 |condition itemcount(39354) >= 25 or skill("Inscription")>=200
step
create Research: Midnight Ink##165304,Inscription,149
step
#include "trainer_Inscription"
skillmax Inscription,225
|tip You must be at least level 20.
step
#include "vendor_Inscription"
buy 50 Light Parchment##39354 |condition itemcount(39354) >= 50 or skill("Inscription")>=200
step
create Research: Lion's Ink##165456,Inscription,200
step
#include "trainer_Inscription"
skillmax Inscription,300
|tip You must be at least level 35.
step
#include "FL_GT_KW_BW_Path"
#include "follow_path_herbs"
You will need {_G.max(0 , (210-itemcount(3819,3818,3821,3358)))} herbs
collect Fadeleaf##3818 |n
collect Goldthorn##3821 |n
collect Khadgar's Whisker##3358 |n
Mill the 210 herbs you gathered, into Emerald Pigment and Indigo Pigment |cast Milling##51005
collect 102 Emerald Pigment##39339 |condition skill("Inscription")>=251
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Inscription"
learn Celestial Ink##57709 |condition skill("Inscription")>=251
step
#include "trainer_Inscription"
learn Shimmering Ink##57711 |condition skill("Inscription")>=251
step
#include "vendor_Inscription"
buy 70 Light Parchment##39354 |condition itemcount(39354) >= 70 or skill("Inscription")>=251
step
#include "trainer_Inscription"
learn Jadefire Ink##57707 |condition skill("Inscription")>=251
step
create Jadefire Ink##57707,Inscription,41 total |n
skill Inscription,200
step
create Research: Jadefire Ink##165460,Inscription,251
step
#include "GS_SM_Path"
#include "follow_path_herbs"
You need about 140 Silvery-giving herbs total
collect Golden Sansam##13464 |n
collect Sorrowmoss##13466 |n
You'll need about {_G.max(0 , (140-itemcount(13463,13464,13467,13465,13466)))} more herbs.
Mill the 140 herbs you gathered into Silvery Pigment. |cast Milling##51005
collect 90 Silvery Pigment##39341 |condition skill("Inscription")>=300
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Inscription"
buy 36 Light Parchment##39354 |condition itemcount(39354) >= 36 or skill("Inscription")>=300
step
create 36 Shimmering Ink##57711,Inscription,36 total |n
skill Inscription,255
step
create 16 Research: Shimmering Ink##165463,Inscription,300
step
#include "trainer_Inscription"
skillmax Inscription,375
step
#include "FW_DG_Path"
#include "follow_path_herbs"
collect Felweed##22785 |n
collect Dreaming Glory##22786 |n
Gather around _{_G.max(0 , (180-itemcount(22790,22786,22785,22793,22787,22789,22792,22791)))}_ more herbs in stacks of 5
Mill the herbs you have gathered |cast Milling##51005
collect 90 Nether Pigment##39342 |condition skill("Inscription")>=350
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Inscription"
buy 30 Light Parchment##39354 |condition itemcount(39354) >= 30 or skill("Inscription")>=350
step
#include "vendor_Inscription"
buy 45 Light Parchment##39354 |condition itemcount(39354) >= 45 or skill("Inscription")>=350
step
#include "trainer_Inscription"
learn Ethereal Ink##57713 |condition skill("Inscription")>=350
step
create 45 Ethereal Ink##57713,Inscription,305
step
create 15 Research: Ethereal Ink##165464,Inscription,350
step
#include "trainer_Inscription"
skillmax Inscription,450
|tip You must be at least level 65.
step
#include "GC_TL_Path"
#include "follow_path_herbs"
collect Goldclover##36901 |n
collect Tiger Lily##36904 |n
collect Deadnettle##37921 |n
Gather around _{_G.max(0 , (400-itemcount(36903,37921,39970,39969,36901,36907,36904,36906,36905)))}_ more herbs in stacks of 5
Mill the herbs you gathered |cast Milling##51005
collect 204 Azure Pigment##39343 |condition skill("Inscription")>=450 |next "wowow"
|tip You can also buy these materials from the Auction House.
Click here to farm in a different spot |confirm
step
#include "GC_TL_AT_Path"
#include "follow_path_herbs"
collect Goldclover##36901 |n
collect Tiger Lily##36904 |n
collect Adder's Tongue##36903 |n
collect Deadnettle##37921 |n
You'll need about {_G.max(0 , (400-itemcount(36903,37921,39970,39969,36901,36907,36904,36906,36905)))} more herbs in stacks of 5.
Mill the herbs you gathered |cast Milling##51005
collect 204 Azure Pigment##39343 |condition skill("Inscription")>=450
|tip You can also buy these materials from the Auction House.
step
label "wowow"
#include "trainer_Inscription"
learn Ink of Sea##57715 |condition skill("Inscription")>=450
step
create Ink of Sea##57715,Inscription,103 total |n
skill Inscription,355
step
#include "vendor_Inscription"
buy 102 Light Parchment##39354 |condition itemcount(39354) >= 102 or skill("Inscription")>=450
step
create 32 Research: Ink of the Sea##165465,Inscription,450
step
#include "trainer_Inscription"
skillmax Inscription,525
|tip You must be at least level 75.
step
#include "SV_CB_Path"
#include "follow_path_herbs"
collect Cinderbloom##52983 |n
collect Stormvine##52984 |n
Gather around _{_G.max(0 , (180-itemcount(52985,52983,52989,52984,52987,52988)))}_ herbs in stacks of 5
Mill the 205 herbs you purchased into Ashen Pigment |cast Milling##51005
collect 102 Ashen Pigment##61979 |condition skill("Inscription")>=500
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Inscription"
learn Blackfallow Ink##86004 |condition skill("Inscription")>=500
step
create Blackfallow Ink##86004,Inscription,51 total |n
skill Inscription,450
step
#include "vendor_Inscription"
buy 51 Light Parchment##39354 |condition itemcount(39354) >= 51 or skill("Inscription")>=500
step
create 17 Research: Blackfallow Ink##165466,Inscription,501
step
confirm |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 500-600 Leveling Guide"
|tip This will take you to the Inscription 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Jewelcrafting",600},
condition_suggested=function() return hasprof('Jewelcrafting',1,600) end,
description="This guide will walk you through leveling your Jewelcrafting skill from 1-600.",
},[[
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,75
step
talk Marith Lazuria##50482
buy Jeweler's Kit##20815 |goto Orgrimmar 72.4,34.6 |condition itemcount(20815) >= 1 or skill("Jewelcrafting")>=50
step
#include "Copper_Path"
#include "follow_path_mine"
collect Tigerseye##818 |n
|tip You can use the prospect ability later on the Copper Ore in your bags to get this item.
collect Shadowgem##1210 |n |tip Save these for later use.
collect Malachite##774 |condition skill("Jewelcrafting")>=50
collect 270 Copper Ore##2770 |condition skill("Jewelcrafting")>=50
|cast Prospecting##31252
Gather _{_G.max(0 , (20-itemcount(818,774)))}_ gems
|tip You can also buy these materials from the Auction House.
step
#include "maincity_forge2"
create Copper Bar##2657,Mining,170 total |n
collect 170 Copper Bar##284 |condition skill("Jewelcrafting")>=50
step
create 60 Delicate Copper Wire##25255,Jewelcrafting,60 total |n
Save all Delicate Copper Wires for later
collect 60 Delicate Copper Wire##20816 |condition skill("Jewelcrafting")>=50
step
#include "trainer_Jewelcrafting"
Learn Prospecting |condition _G.IsSpellKnown(31252) or skill("Jewelcrafting")>=50
step
Prospect the remaining Copper Ore to collect Tigerseyes and Malachite |cast Prospecting##31252
collect Tigerseyes##818 |n
collect Malachite##774 |n
Gather around _{_G.max(0 , (20-itemcount(818,774)))}_ gems |condition skill("Jewelcrafting")>=50
step
#include "trainer_Jewelcrafting"
learn Malachite Pendant##32178 |condition skill("Jewelcrafting")>=50
step
#include "trainer_Jewelcrafting"
learn Tigerseye Band##32179 |condition skill("Jewelcrafting")>=50
step
create Malachite Pendant##32178,Jewelcrafting,50
create Tigerseye Band##32179,Jewelcrafting,50
|tip If you didn't get enough Malachite but more Tigerseyes from Prospecting, make Tigerseye Band instead.
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,150
step
#include "trainer_Jewelcrafting"
learn Bronze Setting##25278 |condition skill("Jewelcrafting")>=150
step
#include "Silver_Tin_Path"
#include "follow_path_mine"
Prospect the ores you come across |cast Prospecting##31252
collect 20 Shadowgem##1210  |condition skill("Jewelcrafting")>=150
collect 30 Moss Agate##1206 |condition skill("Jewelcrafting")>=150
collect 40 Silver Ore##2775 |condition skill("Jewelcrafting")>=150
collect 50 Tin Ore##2771 |condition skill("Jewelcrafting")>=150
collect Citrine##3864 |n
collect Aquamarine##7909 |n
|tip You can also buy these materials from the Auction House.
Save the Citrine and Aquamarine for later
step
#include "Iron_Ore_Path"
#include "follow_path_mine"
collect 80 Heavy Stone##2838 |condition skill("Jewelcrafting")>=150
|tip Keep the Iron Ore you get for prospecting later.
collect Citrine##3864 |n
collect Aquamarine##7909 |n
collect Star Ruby##7910 |n
|tip You can also buy these materials from the Auction House.
Save the Citrine, Aquamarine and Star Rubies for later
step
#include "maincity_forge2"
create Silver Bar##2658,Mining,40 total |condition skill("Jewelcrafting")>=150
step
#include "maincity_forge2"
create Tin Bar##3304,Mining,50 total |condition skill("Jewelcrafting")>=150
step
#include "maincity_forge2"
create Bronze Bar##2659,Mining,50 total |n
collect 100 Bronze Bar##2841 |condition skill("Jewelcrafting")>=150
step
create 30 Bronze Setting##25278,Jewelcrafting,30 total |n
Save these, you will need them later
skill Jewelcrafting,80
step
#include "trainer_Jewelcrafting"
learn Ring of Silver Might##25317 |condition skill("Jewelcrafting")>=150
step
create Ring of Silver Might##25317,Jewelcrafting,100
step
#include "trainer_Jewelcrafting"
learn Ring of Twilight Shadows##25318 |condition skill("Jewelcrafting")>=150
step
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110
step
#include "trainer_Jewelcrafting"
learn Heavy Stone Statue##32807 |condition skill("Jewelcrafting")>=150
step
create 10 Heavy Stone Statue##32807,Jewelcrafting,120
step
#include "trainer_Jewelcrafting"
learn Pendant of the Agate Shield##25610 |condition skill("Jewelcrafting")>=150
step
create Pendant of the Agate Shield##25610,Jewelcrafting,150
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,225
step
#include "trainer_Jewelcrafting"
learn Mithril Filigree##25615 |condition skill("Jewelcrafting")>=225
step
#include "Mithril_Ore_Path"
#include "follow_path_mine"
|cast Prospecting##31252
collect 25 Citrine##3864 |n
|tip These can be prospected from Mithril Ore later.
collect 5 Aquamarine##7909 |n
|tip These can be prospected from Mithril Ore later.
collect Star Ruby##7910 |n
|tip These can be used later.
collect 300 Mithril Ore##3858 |condition skill("Jewelcrafting")>=225
collect 15 Truesilver Ore##7911 |condition skill("Jewelcrafting")>=225
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Mithril Bar##10097,Mining,130 total |n
collect 180 Mithril Bar##3860 |condition skill("Jewelcrafting")>=225
step
#include "trainer_Mining"
learn Smelt Truesilver##10098 |condition skill("Jewelcrafting")>=225
step
#include "maincity_anvil"
create Truesilver Bar##10098,Mining,15 total |n
collect 15 Truesilver Bar##6037 |condition skill("Jewelcrafting")>=225
step
create Mithril Filigree##25615,Jewelcrafting,40 total |n
Save these for later
skill Jewelcrafting,180 |condition skill("Jewelcrafting")>=225
step
#include "trainer_Jewelcrafting"
learn Engraved Truesilver Ring##25620 |condition skill("Jewelcrafting")>=225
step
create Engraved Truesilver Ring##25620,Jewelcrafting,200
step
Prospect any Mithril Ore you have |cast Prospecting##31252
collect 25 Citrine##3864 |condition skill("Jewelcrafting")>=225
collect 5 Aquamarine##7909 |condition skill("Jewelcrafting")>=225
step
#include "trainer_Jewelcrafting"
learn Citrine Ring of Rapid Healing##25621 |condition skill("Jewelcrafting")>=225
step
create 20 Citrine Ring of Rapid Heaing##25621,Jewelcrafting,220
step
#include "trainer_Jewelcrafting"
learn Aquamarine Pendant of the Warrior##26876 |condition skill("Jewelcrafting")>=225
step
create 5 Aquamarine Pendant of the Warrior##26876,Jewelcrafting,225
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,300
step
#include "trainer_Jewelcrafting"
learn Thorium Setting##26880 |condition skill("Jewelcrafting")>=300
step
#include "Thorium_Ore_Path"
#include "follow_path_mine"
collect Star Ruby##7910 |n
collect Huge Emerald##12364 |n
collect Large Opal##12799 |n
collect Azerothian Diamond##12800 |n
collect 50 Thorium Ore##10620 |condition skill("Jewelcrafting")>=300
|tip You can also buy these materials from the Auction House.
step
create Thorium Bar##16153,Mining,50 total |n
collect 50 Thorium Bar##12359 |condition skill("Jewelcrafting")>=300 |goto Winterspring 59.4,51.1
step
create Thorium Setting##26880,Jewelcrafting,50 total |n
Save these for later use
collect 50 Thorium Setting##21752 |condition skill("Jewelcrafting")>=300
|tip You can also buy these materials from the Auction House.
step
#include "Thorium_Ore_Path"
#include "follow_path_mine"
collect Thorium Ore##10620 |n
Prospect the Thorium in your bags |cast Prospecting##31252
collect 10 Star Ruby##7910 |condition skill("Jewelcrafting")>=300
collect 20 Huge Emerald##12364 |condition skill("Jewelcrafting")>=300
collect 20 Large Opal##12799 |condition skill("Jewelcrafting")>=300
collect 20 Azerothian Diamond##12800 |condition skill("Jewelcrafting")>=300
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Jewelcrafting"
learn Thorium Setting##26880 |condition skill("Jewelcrafting")>=300
step
create Thorium Setting##26880,Jewelcrafting,50 total |n
Save these for later use
skill Jewelcrafting,250
step
#include "trainer_Jewelcrafting"
learn Ruby Pendant of Fire##26883 |condition skill("Jewelcrafting")>=300
step
create Ruby Pendant of Fire##26883,Jewelcrafting,260
step
#include "trainer_Jewelcrafting"
learn Simple Opal Ring##26902 |condition skill("Jewelcrafting")>=300
step
create Simple Opal Ring##26902,Jewelcrafting,280
step
#include "trainer_Jewelcrafting"
learn Glowing Thorium Band##34960 |condition skill("Jewelcrafting")>=300
step
create Glowing Thorium Band##34960,Jewelcrafting,290
step
#include "trainer_Jewelcrafting"
learn Emerald Lion Ring##34961 |condition skill("Jewelcrafting")>=300
step
create Emerald Lion Ring##34961,Jewelcrafting,300
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,375
step
#include "Fel_Iron_Path"
#include "follow_path_mine"
collect Fel Iron Ore##23424 |n
You must use the prospect ability on the Fel Iron Ore in your bags to get these items: |cast Prospecting##31252
collect Blood Garnet##23077 |n
collect Flame Spessparite##21929 |n
collect Deep Peridot##23079 |n
Gather _{_G.max(0 , (20-itemcount(23077,23079,21929)))}_ of the gems listed |condition skill("Jewelcrafting")>=350
collect Shadow Draenite##23107 |n
Gather _{_G.max(0 , (5-itemcount(23107)))}_ Shadow Draenite |condition skill("Jewelcrafting")>=350
|tip Save EVERY extra gem you receive for later use.
collect Mote of Earth##22573 |n
use Mote of Earth##22573
collect 10 Primal Earth##22452 |n
|tip You can also buy these materials from the Auction House.
step
#include "Adamantite_Path"
#include "follow_path_mine"
collect 220 Adamantite Ore##23425 |condition skill("Jewelcrafting")>=350
|tip Go into any caves you find as there is lots of ore.
collect Mote of Earth##22573 |n
use Mote of Earth##22573
collect 10 Primal Earth##22452 |condition skill("Jewelcrafting")>=350
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Mining"
learn Smelt Adamantite##29358 |condition skill("Jewelcrafting")>=350
step
#include "maincity_anvil"
create Adamantite Bar##29358,Mining,10 total |n
collect 10 Adamantite Bar##23446 |condition skill("Jewelcrafting")>=350
step
#include "trainer_Jewelcrafting"
learn Delicate Blood Garnet##34590 |condition skill("Jewelcrafting")>=350
step
#include "trainer_Jewelcrafting"
learn Inscribed Flame Spessarite##28910 |condition skill("Jewelcrafting")>=350
step
#include "trainer_Jewelcrafting"
learn Jagged Deep Peridot##28917 |condition skill("Jewelcrafting")>=350
step
Make as many as it takes of these gems to get to 320 Jewelcrafting
create Delicate Blood Garnet##34590,Jewelcrafting,320
create Inscribed Flame Spessarite##28910,Jewelcrafting,320
create Jagged Deep Peridot##28917,Jewelcrafting,320
step
#include "trainer_Jewelcrafting"
learn Glinting Shadow Draenite##28914 |condition skill("Jewelcrafting")>=350
step
Make as many as it takes of these gems to get to 320 Jewelcrafting
create Glinting Shadow Draenite##28914,Jewelcrafting,325
step
Prospect all of your Adamantite Ore |cast Prospecting##31252
collect 40 Adamantite Powder##24243 |condition skill("Jewelcrafting")>=350
|tip Save EVERY extra gem you receive for later use.
step
#include "trainer_Jewelcrafting"
learn Mercurial Adamantite##38068 |condition skill("Jewelcrafting")>=350
step
#include "maincity_forge2"
create 10 Mercurial Adamantite##38068,Jewelcrafting,10 total |n
Save these, you will need them later.
collect 10 Mercurial Adamantite##31079 |condition skill("Jewelcrafting")>=350
step
#include "trainer_Jewelcrafting"
learn Sovereign Shadow Draenite##28936 |condition skill("Jewelcrafting")>=350
step
#include "trainer_Jewelcrafting"
learn Rigid Azure Moonstone##28948 |condition skill("Jewelcrafting")>=350
step
Make as many as it takes of these two gems to get to 340 Jewelcrafting
create Sovereign Shadow Draenite##28936,Jewelcrafting,340
create Rigid Azure Moonstone##28948,Jewelcrafting,340
step
#include "trainer_Jewelcrafting"
learn Heavy Adamantite Ring##31052 |condition skill("Jewelcrafting")>=350
step
create 10 Heavy Adamantite Ring##31052,Jewelcrafting,350
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,450
step
#include "trainer_Jewelcrafting"
learn Bloodstone Band##56193 |condition skill("Jewelcrafting")>=425
step
#include "trainer_Jewelcrafting"
learn Deft Huge Citrine##53880 |condition skill("Jewelcrafting")>=425
step
#include "trainer_Jewelcrafting"
learn Energized Dark Jade##53925 |condition skill("Jewelcrafting")>=425
step
#include "trainer_Jewelcrafting"
learn Glinting Shadow Crystal##53861 |condition skill("Jewelcrafting")>=425
step
#include "trainer_Jewelcrafting"
learn Solid Chalcedony##53934 |condition skill("Jewelcrafting")>=425
step
#include "trainer_Jewelcrafting"
learn Quick Sun Crystal##53856 |condition skill("Jewelcrafting")>=425
step
#include "Cobalt_Path"
#include "follow_path_mine"
collect Cobalt Ore##36909 |n
Prospect the Cobalt Ore in your bags to get these items: |cast Prospecting##31252
collect Chalcedony##36923 |n
collect Sun Crystal##36920 |n
collect Shadow Crystal##36926 |n
collect Huge Citrine##36929 |n
collect Dark Jade##36932 |n
Gather _{_G.max(0 , (60-itemcount(36923,36920,36926,36929,36932)))}_ gems |condition skill("Jewelcrafting")>=425
collect 5 Bloodstone##36917 |n
All extra Bloodstones should be kept for later use
collect 5 Forest Emerald##36933 |n
collect 10 Crystallized Earth##37701 |condition skill("Jewelcrafting")>=425
collect Crystallized Earth##37701 |n
use Crystallized Earth##37701 |n
collect 46 Eternal Earth##35624 |n
collect 46 Eternal Earth##35624 |n
|tip You can also buy these materials from the Auction House.
step
#include "Saronite_Path"
#include "follow_path_mine"
collect Crystallized Earth##37701 |n
use Crystallized Earth##37701 |n
collect 10 Titanium Ore##36910 |condition skill("Jewelcrafting")>=425
collect 10 Crystallized Earth##37701 |condition skill("Jewelcrafting")>=425
collect 46 Eternal Earth##35624 |condition skill("Jewelcrafting")>=425
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Mining"
learn Smelt Titanium##55211 |condition skill("Jewelcrafting")>=425
step
#include "maincity_anvil"
create Titanium Bar##55211,Mining,5 total |n
collect 5 Titanium Bar##41163 |condition skill("Jewelcrafting")>=425
|tip You can also buy these materials from the Auction House.
step
Make as many as it takes of these gems to get to 395 Jewelcrafting
create Deft Huge Citrine##53880,Jewelcrafting,395
create Energized Dark Jade##53925,Jewelcrafting,395
create Glinting Shadow Crystal##53861,Jewelcrafting,395
create Solid Chalcedony##53934,Jewelcrafting,395
create Quick Sun Crystal##53856,Jewelcrafting,395
step
create 5 Bloodstone Band##56193,Jewelcrafting,400
step
|cast Prospecting##31252
Prospect any Saronite Ore you have to get _Forest Emeralds_
collect 5 Forest Emerald##36933 |condition skill("Jewelcrafting")>=425
step
#include "trainer_Jewelcrafting"
learn Stoneguard Band##58145 |condition skill("Jewelcrafting")>=425
step
create Stoneguard Band##58145,Jewelcrafting,420
step
#include "trainer_Jewelcrafting"
learn Dream Signet##56197 |condition skill("Jewelcrafting")>=425
step
create Dream Signet##56197,Jewelcrafting,425
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,525
step
#include "trainer_Jewelcrafting"
learn Brilliant Carnelian##73225 |condition skill("Jewelcrafting")>=500
step
#include "trainer_Jewelcrafting"
learn Quick Alicite##73234 |condition skill("Jewelcrafting")>=500
step
#include "trainer_Jewelcrafting"
learn Puissant Jasper##73279 |condition skill("Jewelcrafting")>=500
step
#include "trainer_Jewelcrafting"
learn Rigid Zephyrite##73230 |condition skill("Jewelcrafting")>=500
step
#include "Obsidium_Path"
#include "follow_path_mine"
|cast Prospecting##31252
collect Carnelian##52177 |n |condition skill("Jewelcrafting")>=500
collect Alicite##52179 |n |condition skill("Jewelcrafting")>=500
collect Jasper##52182 |n |condition skill("Jewelcrafting")>=500
collect Zephyrite##52178 |n |condition skill("Jewelcrafting")>=500
Gather {_G.max(0 , (25-itemcount(52182,52178,52179,52177))*1)} more of the gems above |condition skill("Jewelcrafting")>=500
collect 30 Nightstone##52180 |condition skill("Jewelcrafting")>=500
collect 70 Hessonite##52181 |condition skill("Jewelcrafting")>=500
|tip You can also buy these materials from the Auction House.
step
talk Marith Lazuria##50482
buy 50 Jeweler's Setting##52188 |goto Orgrimmar 72.4,34.6 |condition itemcount(52188) >= 50 or skill("Jewelcrafting")>=500
step
Make as many as it takes of these gems to get to 450 Jewelcrafting
create Brilliant Carnelian##73225,Jewelcrafting,450
create Quick Alicite##73234,Jewelcrafting,450
create Puissant Jasper##73279,Jewelcrafting,450
create Rigid Zephyrite##73230,Jewelcrafting,450
step
#include "trainer_Jewelcrafting"
learn Hessonite Band##73495 |condition skill("Jewelcrafting")>=500
step
create Hessonite Band##73495,Jewelcrafting,485
step
#include "trainer_Jewelcrafting"
learn Nightstone Choker##73497 |condition skill("Jewelcrafting")>=500
step
create Nightstone Choker##73497,Jewelcrafting,500
step
Click here to proceed |confirm |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 500-600 Leveling Guide"
|tip This will take you to the Jewelcrafting 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Leatherworking",600},
condition_suggested=function() return hasprof('Leatherworking',1,600) end,
description="This guide will walk you through leveling your Leatherworking skill from 1-600.",
},[[
step
#include "trainer_Leatherworking"
skillmax Leatherworking,75 |tip You must be at least level 5.
step
#include "Ruined_Light_Leather"
kill Armored Scorpid##3126+, Dire Mottled Boar##3099+, Bloodtalon Taillasher##3122+, Dreadmaw Toothgnasher##39452
collect 57 Ruined Leather Scraps##2934 |condition skill("Leatherworking")>=55
collect 250 Light Leather##2318 |condition skill("Leatherworking")>=55
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Leatherworking"
buy 43 Coarse Thread##2320 |condition itemcount(2320) >= 43 or skill("Leatherworking")>=55
step
create 19 Light Leather##2881,Leatherworking,20
step
create Light Armor Kits##2152,Leatherworking,30
step
#include "trainer_Leatherworking"
learn Handstitched Leather Belt##3753
step
create 20 Handstitched Leather Cloak##9058,Leatherworking,50
step
create 5 Handstitched Leather Belts##3753,Leatherworking,55
step
#include "trainer_Leatherworking"
skillmax Leatherworking,150
|tip You must be at least level 10.
step
#include "trainer_Leatherworking"
learn Embossed Leather Gloves##3756
step
map Northern Stranglethorn
path follow loose;loop;ants straight;dist 60
path	41.1,45.2	37.1,38.6	36.5,30.9
path	35.7,25.8	35.8,19.7	40.5,20.6
path	45.8,25.4	48.3,30.0	48.2,35.5
path	42.9,47.4
Kill any beasts you see and skin them
collect 15 Medium Hide##4232 |condition skill("Leatherworking")>=150
collect 155 Medium Leather##2319 |condition skill("Leatherworking")>=150
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Leatherworking"
buy 75 Salt##4289 |condition itemcount(4289) >= 75 or skill("Leatherworking")>=150
buy 32 Gray Dye##4340 |condition itemcount(4340) >= 32 or skill("Leatherworking")>=150
buy 190 Fine Thread##2321 |condition itemcount(2321) >= 190 or skill("Leatherworking")>=150
buy 92 Coarse Thread##2320 |condition itemcount(2320) >= 92 or skill("Leatherworking")>=150
step
create Embossed Leather Gloves##3756,Leatherworking,85
step
#include "trainer_Leatherworking"
learn Fine Leather Belt##3763
step
create Fine Leather Belt##3763,Leatherworking,100
Keep these for later
step
#include "trainer_Leatherworking"
learn Cured Medium Hide##3817
step
create Cured Medium Hide##3817,Leatherworking,115
step
#include "trainer_Leatherworking"
learn Dark Leather Boots##2167
step
create Dark Leather Boots##2167,Leatherworking,130
step
#include "trainer_Leatherworking"
learn Dark Leather Belt##3766
step
#include "trainer_Leatherworking"
create Dark Leather Belt##3766,Leatherworking,145
step
#include "trainer_Leatherworking"
learn Hillman's Leather Gloves##3764
step
create Hillman's Leather Gloves##3764,Leatherworking,150
step
#include "trainer_Leatherworking"
skillmax Leatherworking,225
|tip You must be at least level 20.
step
kill Feral Scar Yeti##5292+, Rage Scar Yeti##40224+
collect 265 Heavy Leather##4234 |goto Feralas 55.4,55.0 |condition skill("Leatherworking")>=200
collect 15 Heavy Hide##4235 |goto Feralas 55.4,55.0 |condition skill("Leatherworking")>=200
|tip You can also buy these materials from the Auction House.
You can find more yetis here |goto Feralas 53.2,31.8
step
Find a _tailor_ to make _Bolts of Silk Cloth_ for you
collect 30 Bolt of Silk Cloth##4305 |condition skill("Leatherworking")>=200
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Leatherworking"
learn Heavy Leather##20649
step
create Heavy Leather##20649,Leatherworking,155
step
#include "vendor_Leatherworking"
buy 60 Salt##4289 |condition itemcount(4289) >= 60 or skill("Leatherworking")>=200
buy 75 Fine Thread##2321 |condition itemcount(2321) >= 75 or skill("Leatherworking")>=200
buy 75 Silken Thread##4291 |condition itemcount(4291) >= 75 or skill("Leatherworking")>=200
buy 5 Black Dye##2325 |condition itemcount(2325) >= 5 or skill("Leatherworking")>=200
step
#include "trainer_Leatherworking"
learn Cured Heavy Hide##3818
step
#include "trainer_Leatherworking"
learn Heavy Armor Kit##3780
step
create 15 Cured Heavy Hide##3818,Leatherworking,165
step
create 17 Heavy Armor Kit##3780,Leatherworking,180
step
#include "trainer_Leatherworking"
learn Barbaric Shoulders##7151
step
create Barbaric Shoulders##7151,Leatherworking,190
step
#include "trainer_Leatherworking"
learn Guardian Gloves##7156
step
create Guardian Gloves##7156,Leatherworking,195
step
#include "trainer_Leatherworking"
learn Dusky Bracers##9201
step
create Dusky Bracers##9201,Leatherworking,200
step
#include "trainer_Leatherworking"
skillmax Leatherworking,300
|tip You must be at least level 35.
step
kill Nyxondra's Broodling##46916
collect 430 Thick Leather##4304 |goto Badlands 11.0,38.2 |condition skill("Leatherworking")>=250
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Leatherworking"
learn Thick Armor Kit##10487
step
create Thick Armor Kit##10487,Leatherworking,220
step
#include "trainer_Leatherworking"
learn Nightscape Headband##10507
step
create Nightscape Headband##10507,Leatherworking,230
step
#include "trainer_Leatherworking"
learn Nightscape Pants##10548
step
create Nightscape Pants##10548,Leatherworking,250
step
#include "trainer_Leatherworking"
skillmax Leatherworking,300
|tip You must be at least level 35.
step
kill Snickerfang Hyena##5985+, Ashmane Boar##5992+, Redstone Basilisk##5990
map Blasted Lands
path follow loose; ants curved; loop; dist 50
path	56.8,39.1	57.5,34.0	55.4,31.3
path	54.6,25.4	50.1,25.0	45.8,20.6
path	43.7,18.8	48.4,27.6	49.3,33.7
path	50.9,41.3
Kill any beasts you find in this area and skin them
collect 435 Rugged Leather##8170 |condition skill("Leatherworking")>=300
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Leatherworking"
buy 35 Black Dye##2325 |condition itemcount(2325) >= 35 or skill("Leatherworking")>=300
buy 92 Rune Thread##14341 |condition itemcount(14341) >= 92 or skill("Leatherworking")>=300
step
#include "trainer_Leatherworking"
learn Rugged Armor Kit##19058
step
create Rugged Armor Kit##19058,Leatherworking,265
step
#include "trainer_Leatherworking"
learn Wicked Leather Bracers##19052
step
create Wicked Leather Bracers##19052,Leatherworking,290
step
#include "trainer_Leatherworking"
learn Wicked Leather Headband##19071
step
create Wicked Leather Headband##19071,Leatherworking,300
step
#include "trainer_Leatherworking"
skillmax Leatherworking,375 |tip You must be at least level 50.
step
kill Quillfang Ravager##16934+, Quillfang Skitterer##19189 |goto Hellfire Peninsula 22.2,67.1
|tip You will need 315 skinning to effectively gather.
collect 20 Fel Scales##25700 |condition skill("Leatherworking")>=350
collect 100 Knothide Leather Scraps##25649 |condition skill("Leatherworking")>=350
|tip You can also buy these materials from the Auction House.
step
map Terokkar Forest
path follow strict; ants straight; loop off;dist 50
path	61.3,10.5	58.3,13.0	55.4,13.1
path	52.4,12.1	49.4,9.0	47.6,6.6
path	45.4,4.5	45.4,4.5
kill Razorthorn Ravager##24922+
Move back and forth along the patah
collect 340 Knothide Leather##21887 |condition skill("Leatherworking")>=350
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Leatherworking"
learn Knothide Leather##32454 |condition skill("Leatherworking")>=350
step
create 20 Knothide Leather##32454,Leatherworking,310
step
#include "trainer_Leatherworking"
learn Knothide Armor Kit##32456 |condition skill("Leatherworking")>=350
step
create 25 Knothide Armor Kit##32456,Leatherworking,325
step
#include "trainer_Leatherworking"
learn Heavy Knothide Leather##32455 |condition skill("Leatherworking")>=350
step
create 15 Heavy Knothide Leather##32455,Leatherworking,335
collect 15 Heavy Knothide Leather##23793 |condition skill("Leatherworking")>=350
step
#include "trainer_Leatherworking"
learn Thick Draenic Vest##32473 |condition skill("Leatherworking")>=350
step
create Thick Draeneic Vest##32473,Leatherworking,340
step
#include "trainer_Leatherworking"
learn Scaled Draenic Boots##32469 |condition skill("Leatherworking")>=350
step
create Scaled Draenic Boots##32469,Leatherworking,350
step
#include "trainer_Leatherworking"
skillmax Leatherworking,450
|tip You must be at least level 65.
step
#include "trainer_Leatherworking"
learn Borean Armor Kit##38375 |condition skill("Leatherworking")>=425
step
map Sholazar Basin
path follow loose;loop;ants straight;dist 60
path	28.8,55.9	29.7,51.6	31.1,46.4
path	32.2,40.4	28.6,42.9	25.6,47.9
path	23.5,52.3	22.6,58.7	22.6,65.3
path	22.3,70.2	26.4,72.7	28.9,69.1
path	29.6,64.4
Kill any beasts you see and skin them
collect 1060 Borean Leather##33568 |condition skill("Leatherworking")>=425
|tip You can also buy these materials from the Auction House.
step
kill Deathbringer Revenant##27382+ |goto Dragonblight/0 74.7,22.9
collect 40 Crystallized Shadow##37703 |condition skill("Leatherworking")>=425
|tip You can also buy these materials from the Auction House.
step
map Zul'Drak
path follow loose;loop;ants straight;dist 60
path	42.1,74.5	39.4,75.6	41.7,79.1
path	43.9,81.7	44.3,77.8
kill Crazed Water Spirit##16570+
collect 50 Crystallized Water##37705 |n
Combine 10 Crystallized Waters into an Eternal Water |use Eternal Water##35622
collect 5 Eternal Water##35622 |condition skill("Leatherworking")>=425
|tip You can also buy these materials from the Auction House.
step
create Borean Armor Kit##50962,Leatherworking,380
step
#include "trainer_Leatherworking"
learn Arctic Belt##50949 |condition skill("Leatherworking")>=425
step
create Arctic Belt##50949,Leatherworking,390
step
#include "trainer_Leatherworking"
learn Heavy Borean Leather##50936 |condition skill("Leatherworking")>=425
step
create 120 Heavy Borean Leather##50936,Leatherworking,405
collect 120 Heavy Borean Leather##33568 |condition skill("Leatherworking")>=425
step
#include "trainer_Leatherworking"
learn Dark Arctic Leggings##51569 |condition skill("Leatherworking")>=425
step
create Dark Arctic Leggings##51569,Leatherworking,415
step
#include "trainer_Leatherworking"
learn Pack of Endless Pockets##60643 |condition skill("Leatherworking")>=425
step
create Pack of Endless Pockets##60643,Leatherworking,420
step
talk Braeg Stoutbeard##32515
buy Patter: Overcast Bracer##43264 |goto Dalaran 37.4,28.7 |condition _G.IsSpellKnown(60720) or itemcount(43264) >= 1 or skill("Leatherworking")>=425
step
use Patter: Overcast Bracer##43264
learn Overcast Bracer##60720 |condition skill("Leatherworking")>=425
step
create Overcast Bracer##60720,Leatherworking,425
step
#include "trainer_Leatherworking"
skillmax Leatherworking,525
|tip You must be at least level 75.
step
#include "trainer_Leatherworking"
learn Savage Leather##84950 |condition skill("Leatherworking")>=500
step
kill Sabreclaw Skitterer##32678+, Brinescale Serpent##39948+, Slickskin Eel##32678+, Frenzied Orca##39913 |goto Kelp'thar Forest/0 56.4,38.1
collect 50 Savage Leather Scraps##52977 |goto Shimmering Expanse 49.7,61.1 |condition skill("Leatherworking")>=500
collect 590 Savage Leather##52976 |goto Shimmering Expanse 49.7,61.1 |condition skill("Leatherworking")>=500
|tip You can also buy these materials from the Auction House.
only if completedq(25941)
step
kill Darkwood Lurker##46508+, Darkwood Broodmother##46507+ |goto Tol Barad Peninsula/0 53.9,51.5
collect 960 Savage Leather##52976 |condition skill("Leatherworking")>=500
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Leatherworking"
buy 35 Eternium Thread##38426 |condition itemcount(38426) >= 35 or skill("Leatherworking")>=500
step
create 10 Savage Leather##84950,Leatherworking,435
step
#include "trainer_Leatherworking"
learn Savage Armor Kit##78379 |condition skill("Leatherworking")>=500
step
create Savage Armor Kit##78379,Leatherworking,450
step
#include "trainer_Leatherworking"
learn Tsunami Boots##78410 |condition skill("Leatherworking")>=500
step
create Tsunami Boots##78410,Leatherworking,460
step
#include "trainer_Leatherworking"
learn Savage Cloak##78380 |condition skill("Leatherworking")>=500
step
create Savage Cloak##78380,Leatherworking,470
step
#include "trainer_Leatherworking"
learn Darkbrand Boots##78407 |condition skill("Leatherworking")>=500
step
create Darkbrand Boots##78407,Leatherworking,475
step
#include "trainer_Leatherworking"
learn Darkbrand Shoulders##78411 |condition skill("Leatherworking")>=500
step
create Darkbrand Shoulders##78411,Leatherworking,480
step
#include "trainer_Leatherworking"
learn Darkbrand Chestguard##78428 |condition skill("Leatherworking")>=500
step
create Darkbrand Chestguard##78428,Leatherworking,485
step
#include "trainer_Leatherworking"
learn Heavy Savage Leather##78436 |condition skill("Leatherworking")>=500
step
create Heavy Savage Leather##78436,Leatherworking,55 total |n
skill Leatherworking,490
step
#include "trainer_Leatherworking"
learn Darkbrand Helm##78424 |condition skill("Leatherworking")>=500
step
create Darkbrand Helm##78424,Leatherworking,500
step
Click here to proceed |confirm |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 500-600 Leveling Guide"
|tip This will take you to the Leatherworking 500 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Ore",{
author="support@zygorguides.com",
description="This guide will allow you to farm the various ores.",
},[[
step
label "start"
Click here to farm Copper |confirm |next "copper"
Click here to farm Tin |confirm |next "tin"
Click here to farm Iron |confirm |next "iron"
Click here to farm Mithril |confirm |next "mithril"
Click here to farm Thorium |confirm |next "thorium"
Click here to farm Fel Iron |confirm |next "fel_iron"
Click here to farm Adamantite |confirm |next "adamantite"
Click here to farm Cobalt |confirm |next "cobalt"
Click here to farm Saronite |confirm |next "saronite"
Click here to farm Obsidium |confirm |next "obsidium"
Click here to farm Elementium |confirm |next "elementium"
Click here to farm Ghost Iron |confirm |next "ghost_iron" |only if ZGV.guidesets['ProfessionsHMoP']
step
label "copper"
map Durotar
path follow loose;loop;ants straight
path	38.9,16.0	37.5,21.1	35.9,34.4
path +	36.8,52.3	44.2,49.5	50.6,46.3
path +	50.7,63.3	54.9,67.0	56.2,49.8
path +	55.0,36.9	53.0,29.7	57.9,30.0
path +	54.8,19.0	50.0,17.2	44.2,23.6
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "tin"
map Ashenvale
path	82.0,50.2	78.8,44.9	67.1,45.8
path +	61.9,42.6	59.5,37.5	54.5,37.1
path +	53.5,48.2	49.5,54.7	45.5,47.5
path +	41.8,40.3	40.1,32.4	38.2,30.3
path +	34.6,33.3	33.6,28.5	33.0,22.5
path +	25.4,19.3	21.0,19.1	16.6,15.7
path +	14.1,13.1	17.0,23.7	17.3,28.2
path +	16.5,36.6	19.5,45.7	18.8,55.4
path +	23.4,50.2	25.4,54.2	25.7,60.4
path +	29.9,58.1	31.8,64.7	33.1,70.3
path +	38.8,62.7	42.0,64.2	55.6,68.4
path +	62.7,64.6	67.0,69.1	75.6,69.2
path +	82.4,71.8	86.5,79.1	90.1,76.6
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "iron"
map Feralas
path	74.9,48.6	84.0,45.6
path	84.9,39.9	71.5,34.7
path	54.3,50.1	48.6,44.0	49.7,34.9
path	51.6,33.8	50.9,26.2	51.3,19.0
path	54.9,8.1	49.4,4.0	40.0,7.7
path	37.1,12.1	38.1,17.6	37.0,25.6
path	45.1,26.2	46.3,38.6	50.3,52.7
path	47.9,55.4	46.9,64.1	54.8,53.9
path	55.2,62.6	52.9,66.2	53.6,73.7
path	60.8,75.8	62.0,55.0	63.7,61.0
path	66.4,51.3	68.2,51.3
path	68.1,61.5	71.6,65.1	77.2,62.1
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "mithril"
map Felwood
path	63.5,24.5	62.6,6.9	55.7,18.6
path	42.5,17.1	42.0,24.1	39.9,22.1
path	41.0,27.5	38.6,37.4	38.3,55.6
path	40.7,59.8	35.0,59.1	41.8,62.6
path	36.3,66.8	40.7,72.9	37.8,73.5
path	40.3,77.4	39.1,79.3	43.8,81.5
path	39.0,81.6	42.3,87.1	45.1,84.6
path	45.1,89.7	48.1,92.8	51.2,86.1
path	52.5,88.8	57.7,86.5	58.6,84.8
path	55.9,81.1	49.6,76.6	43.5,60.9
path	42.9,50.8	52.9,31.6	59.6,27.2
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "thorium"
map Winterspring
path	52.8,46.2	58.3,41.2	59.7,45.0
path	59.9,21.4	58.3,18.4	54.5,21.2
path	45.9,13.1	44.8,15.3	44.8,29.0
path	47.8,33.2	49.8,42.8	39.5,51.0
path	33.5,47.2	30.2,48.6	31.5,53.5
path	28.4,51.6	27.3,48.0	23.0,45.7
path	22.3,62.4	25.3,61.3	25.9,58.1
path	41.2,57.7	42.1,53.2	46.1,60.8
path	51.0,61.4	53.7,63.6	51.2,69.9
path	55.2,68.9	56.8,81.1	59.0,80.3
path	59.0,85.3	62.0,87.6	64.1,81.8
path	62.2,77.7	62.3,73.3	67.0,68.5
path	67.1,60.1
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "fel_iron"
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "adamantite"
map Nagrand
path	72.7,64.7	74.3,60.5	69.1,48.6
path	72.3,43.1	66.1,32.3	57.7,30.8
path	59.5,27.3	49.3,24.1	47.1,20.2
path	39.6,20.4	28.2,12.1	25.7,16.5
path	26.8,23.6	30.9,21.9	27.9,25.3
path	27.5,32.1	23.2,27.8	7.1,39.9
path	25.2,61.1	31.9,81.9	41.8,81.8
path	43.5,73.7	57.4,78.3	43.0,62.2
path	32.2,60.3	29.2,54.1	34.0,52.6
path	29.7,45.7	34.1,44.3	35.5,47.3
path	38.8,36.9	45.5,43.9	42.4,50.9
path	48.0,57.5	51.5,55.6	60.5,56.9
path	56.7,64.0	70.1,83.3	69.8,72.5
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "cobalt"
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "saronite"
map Sholazar Basin
path	28.7,61.7	35.8,67.6
path	33.8,73.4	34.2,78.4	43.6,76.6
path	39.3,75.5	40.9,70.1	46.0,60.9
path	47.4,66.9	51.5,62.1	55.5,66.5
path	56.5,57.1	58.9,53.9	60.0,60.2
path	57.2,68.1	63.0,67.1	62.8,62.3
path	71.3,63.8
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	74.3,48.6	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9
path	38.0,54.9	30.5,55.3
path	35.1,59.5
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "obsidium"
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "elementium"
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
step
label "ghost_iron"
map Krasarang Wilds
path follow strict
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	52.0,30.2	40.2,27.5
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8
path	15.8,47.6	13.1,52.8	9.8,54.9
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9
path	79.8,17.9	82.3,17.8	85.3,21.4
path	86.8,26.6	88.2,23.8	85.0,9.9
#include "follow_path_mine"
Click here to pick a different ore |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Classic Mining 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Mining",600},
condition_suggested=function() return hasprof('Mining',1,600) end,
description="This guide will walk you through leveling your Mining skill from 1 - 600.",
},[[
step
#include "trainer_Mining"
skillmax Mining,75
|tip You must be at least level 5.
step
#include "vendor_Mining"
buy 1 Mining Pick##2901 |condition itemcount(2901) >= 1 or skill("Mining")>=50
step
#include "Copper_Path"
#include follow_path_mine
skill Mining,35
step
#include "maincity_anvil"
create Copper Bar##2657,Mining,50
|tip Keep all of the Copper Bars for Smelting later.
step
#include "trainer_Mining"
skillmax Mining,150
step
#include "trainer_Mining"
learn Smelt Bronze##2659 |condition skill("Mining")>=125
step
#include "trainer_Mining"
learn Smelt Tin##3304 |condition skill("Mining")>=125
step
#include "Silver_Tin_Path"
#include "follow_path_mine"
skill Mining,125
step
#include "trainer_Mining"
skillmax Mining,225
step
#include "trainer_Mining"
learn Smelt Iron##3307 |condition skill("Mining")>=200
step
map Western Plaguelands
path	42.6,80.9	39.3,79.9	36.1,77.2
path	33.2,72.6	30.2,69.6	29.3,64.5
path	33.5,63.9	32.5,59.9	31.2,55.5
path	37.1,54.4	38.7,51.6	43.8,49.7
path	48.0,47.8	45.0,41.3	45.0,36.1
path	44.2,31.6	49.9,28.9	54.3,26.4
path	54.8,33.7	51.6,40.2	50.2,45.8
path	54.7,48.9	60.0,52.2	66.3,43.9
path	68.8,45.9	67.4,52.5	65.6,59.7
path	61.4,62.0	63.3,64.8	72.4,59.7
path	80.7,77.4	73.0,83.5	64.4,84.0
path	58.0,82.1	53.1,74.7
#include "follow_path_mine"
skill Mining,150
step
map Burning Steppes
path	40.0,31.9	72.9,23.9	81.1,56.6
path	72.9,63.5	56.2,52.8	45.5,65.1
path	31.3,59.8	7.8,56.4	9.3,45.8
path	38.5,33.8
#include "follow_path_mine"
skill Mining,200
step
talk Pikkle##8128
skillmax Mining,300 |goto Tanaris 51.0,29.0 |condition skill("Mining")>=275
step
talk Pikkle##8128
learn Smelt Thorium##16153 |goto Tanaris 51.0,29.0 |condition skill("Mining")>=275
step
map Un'Goro Crater
path 37.5,18.9	43.5,14.1	49.9,18.5
path 62.7,17.9	70.4,26.8	76.3,51.0
path 70.7,71.0	62.1,83.7	52.2,85.9
path 37.7,83.1	27.9,65.8	24.0,52.5
path 26.7,36.4
#include "follow_path_mine"
skill Mining,275
step
#include "trainer_Mining"
skillmax Mining,375
step
#include "trainer_Mining"
learn Smelt Fel Iron##29356 |condition skill("Mining")>=275
step
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
skill Mining,325
step
map Nagrand
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
skill Mining,350
step
#include "trainer_Mining"
skillmax Mining,450
step
#include "trainer_Mining"
learn Smelt Adamantite##29358 |condition skill("Mining")>=425
step
#include "trainer_Mining"
learn Smelt Cobalt##49252 |condition skill("Mining")>=425
step
#include "trainer_Mining"
learn Smelt Eternium##29359 |condition skill("Mining")>=425
step
#include "trainer_Mining"
learn Smelt Felsteel##29360 |condition skill("Mining")>=425
step
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
skill Mining,400
step
map Sholazar Basin
path follow strict
path	77.9,63.8	78.7,52.4	74.3,48.6
path	58.9,53.9	63.5,44.4	66.7,40.3
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	32.9,32.8	23.3,48.4	33.5,46.6
path	35.8,49.9	40.0,50.9	38.0,54.9
path	30.5,55.3	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.2,78.4
path	33.8,73.4	33.0,67.9	40.9,70.1
path	34.5,88.9	50.9,88.8	51.5,82.1
path	46.0,60.9	55.5,66.5	58.7,88.2
path	62.3,74.5	63.6,84.4
#include "follow_path_mine"
skill Mining,425
step
#include "trainer_Mining"
skillmax Mining,525
step
#include "trainer_Mining"
learn Smelt Obsidium##84038 |condition skill("Mining")>=425
step
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
skill Mining,475
step
map Twilight Highlands
path	71.4,50.3	54.0,37.6	46.2,48.5
path	56.4,45.1	61.5,50.4	50.1,58.2
path	61.2,75.4	53.6,86.0	38.8,86.6
path	34.2,71.9	32.1,57.6	24.5,56.9
path	30.0,42.8	26.9,28.7	32.3,27.1
path	31.5,40.1	38.6,41.2	39.6,30.4
path	39.0,19.7	46.2,20.1	53.8,24.8
path	61.5,32.4	68.5,37.9
#include "follow_path_mine"
skill Mining,525
step
confirm |next "Profession Guides\\Mining\\Leveling Guides\\Mining 525-600 Leveling Guide"
|tip This will take you to the 525 - 600 portion of Mining.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mining 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Mining",600},
condition_suggested=function() return hasprof('Mining',1,600) end,
description="This guide will walk you through leveling your Mining skill from 1 - 600.",
},[[
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,75
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,75
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,150
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,150
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,225
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,225
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,300
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,300
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,300
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,300
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,375
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,375
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,450
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,450
step
talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.8,14.8
skillmax Mining,525
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,525
step
You have reached the end of the guide
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Leather",{
author="support@zygorguides.com",
description="This guide will allow you to farm the various leathers.",
},[[
step
label "start"
Click here to farm Light Leather |confirm |next "light"
Click here to farm Medium Leather |confirm |next "medium"
Click here to farm Heavy Leather |confirm |next "heavy"
Click here to farm Thick Leather |confirm |next "thick"
Click here to farm Rugged Leather |confirm |next "rugged"
Click here to farm Knothide Leather |confirm |next "knothide"
Click here to farm Borean Leather |confirm |next "borean"
Click here to farm Savage Leather |confirm |next "savage"
Click here to farm Exotic Leather |confirm |next "exotic" |only if ZGV.guidesets['ProfessionsHMoP']
Click here to farm Sha-Touched Leather |confirm |next "sha" |only if ZGV.guidesets['ProfessionsHMoP']
step
label "light"
map Durotar
path follow loose;loop;ants curved
path	44.1,20.6	45.7,23.8	45.1,31.2
path	45.5,37.6	45.0,44.4	41.1,46.6
path	36.9,45.2	36.0,34.8	38.0,25.2
path	41.9,19.4
Kill any beasts you see and skin them
Click here to pick a different leather |confirm |next "start"
step
label "medium"
map Northern Stranglethorn
path	41.1,45.2	37.1,38.6	37.4,31.9
path	36.5,30.9	35.7,25.8	35.8,19.7
path	40.5,20.6	45.8,25.4	48.3,30.0
path	48.2,35.5	42.9,47.4
Kill any beasts you see and skin them
Click here to pick a different leather |confirm |next "start"
step
label "heavy"
kill Feral Scar Yeti##5292+, Rage Scar Yeti##40224+ |goto Feralas 55.4,55.0
You can find more Yetis at [53.2,31.8]
Click here to pick a different leather |confirm |next "start"
step
label "thick"
kill Nyxondra's Broodling##46916+ |goto Badlands 11.0,38.2
Click here to pick a different leather |confirm |next "start"
step
label "rugged"
map Blasted Lands
path	56.8,39.1	57.5,34.0	55.4,31.3
path	54.6,25.4	50.1,25.0	45.8,20.6
path	43.7,18.8	48.4,27.6	49.3,33.7
path	50.9,41.3
Kill any beasts you see and skin them
Click here to pick a different leather |confirm |next "start"
step
label "knothide"
map Terokkar Forest
path	45.4,5.4	48.7,9.3	50.4,10.6
path	53.1,13.1	56.4,14.1	60.1,12.3
path	62.1,10.6	60.7,9.5	58.3,12.1
path	53.9,12.5	49.7,9.0	49.4,7.9
path	46.8,4.6
Follow this path, killing any beasts you find and skinning them
kill Razorthorn Ravager##24922+
|tip The Razorthorn Flayers are not skinnable.
Click here to pick a different leather |confirm |next "start"
step
label "borean"
map Sholazar Basin
path 28.8,55.9	29.7,51.6	31.1,46.4
path 32.2,40.4	28.6,42.9	25.6,47.9
path 23.5,52.3	22.6,58.7	22.6,65.3
path 22.3,70.2	26.4,72.7	28.9,69.1
path 29.6,64.4
Kill any beasts you see and skin them
Click here to pick a different leather |confirm |next "start"
step
label "savage"
map Twilight Highlands
path	65.9,16.5	66.1,19.4	70.0,21.0	66.3,24.5
path	63.4,22.8	59.8,21.3	56.5,20.5
path	58.0,13.3	56.6,8.7	61.2,9.9
path	62.7,10.4	64.6,12.8
kill Highland Worg##46153+, Highland Elk##46970+, Tawny Owl##46162, Untamed Gryphon##46158+
Click here to pick a different leather |confirm |next "start"
step
label "exotic"
map Dread Wastes
path	27.2,26.0	28.0,27.6	27.5,30.2
path	27.0,33.4	27.1,37.2	28.1,42.9
path	30.9,51.7	28.1,50.1	26.3,47.3
path	26.1,43.4	25.4,38.4	25.6,34.6
path	24.3,28.1
kill Onyx Venomtail##63586+, Ruby Venomtail##63588+
Click here to pick a different leather |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
step
label "sha"
map The Jade Forest
path	30.1,12.6	30.2,11.3	30.8,11.1
path	31.0,9.7	32.3,10.4	32.0,13.1
path	31.1,15.9
kill Sha-Infested Prowler##66668+
Click here to pick a different leather |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Skinning",600},
condition_suggested=function() return hasprof('Skinning',1,600) end,
description="This guide will walk you through leveling your Skinning skill from 1-600.",
},[[
step
#include "trainer_Skinning"
skillmax Skinning,75
step
#include "vendor_Leatherworking"
buy 1 Skinning Knife##7005 |condition itemcount(7005) >= 1 or skill("Skinning")>=60
step
talk Innkeeper Nufa##46642
home Valley of Honor |goto Orgrimmar 70.5,49.2
step
map Durotar
path follow loose;loop;ants straight;dist 60
path	56.2,31.4	58.1,23.9	56.3,15.5
path	52.8,10.7	51.3,14.0	48.9,16.0
path	49.7,17.9		53.8,18.6
Kill any beasts you see and skin them
skill Skinning,60
step
#include "trainer_Skinning"
skillmax Skinning,150
step
map Northern Barrens
path follow loose;loop;ants straight;dist 60
path	65.2,57.4	67.8,63.9	63.9,67.0
path	61.1,71.2	62.3,77.1	58.9,75.7
path	55.7,71.1	57.9,65.2	62.2,63.1
path	64.0,58.1
Kill any beasts you see and skin them
skill Skinning,120
step
map Ashenvale
path follow loose;loop;ants straight;dist 60
path	69.1,69.8	69.3,66.4	67.8,62.1
path	64.8,64.0	63.2,68.2	66.1,70.6
Kill any beasts you see and skin them
skill Skinning,150
step
#include "trainer_Skinning"
skillmax Skinning,225
step
map Southern Barrens
path follow loose;loop;ants straight;dist 60
path	42.5,50.1	43.6,49.5	45.5,48.8
path	49.0,47.7	50.3,45.4	48.4,43.5
path	46.9,43.1	44.6,43.1	43.0,45.0
Kill any beasts you see and skin them
skill Skinning,205
step
#include "trainer_Skinning"
skillmax Skinning,300
step
map Thousand Needles
path follow loose;loop;ants straight;dist 60
path	73.0,48.0	69.8,49.1	67.2,46.2
path	64.7,43.9	61.1,43.4	56.9,43.4
path	65.0,68.5	66.0,74.1	63.9,79.3
path	64.2,85.3	66.5,92.7	70.1,94.5
Kill any beasts you see and skin them
skill Skinning,265
step
map Un'Goro Crater
path follow loose;loop;ants straight;dist 60
path	73.0,48.0	69.8,49.1	67.2,46.2
path	64.7,43.9	63.0,52.9	61.1,63.8
path	65.0,68.5	66.0,74.1	63.9,79.3
path	68.6,73.3	71.0,62.6	72.4,52.1
Kill any beasts you see and skin them
skill Skinning,300
step
#include "trainer_Skinning"
skillmax Skinning,375
step
map Hellfire Peninsula
path follow loose;loop;ants straight;dist 60
path 62.0,56.6	60.6,56.8	58.9,56.1
path 57.2,56.0	56.2,54.3	58.2,54.2
path 59.9,54.6	66.6,61.4	69.1,61.6
path 70.3,63.7	70.6,66.4	69.3,66.5
path 68.0,65.2	66.5,62.5	65.3,61.0
path 64.0,60.1	62.4,57.4
Kill any beasts you see and skin them
skill Skinning,305
step
map Hellfire Peninsula
path follow loose;loop;ants straight;dist 60
path 54.9,70.9	53.1,71.5	51.7,72.7
path 50.7,74.9	48.9,75.4	48.1,73.0
path 48.0,71.1	46.4,69.9	46.5,67.8
path 48.1,64.9	47.4,63.0	49.3,62.8
path 51.4,65.9	52.9,68.8	54.9,70.1
Kill any beasts you see and skin them
skill Skinning,310
step
map Hellfire Peninsula
path follow loose;loop;ants straight;dist 60
path 40.7,85.6	37.6,86.1	34.9,88.8
path 32.7,91.5	33.6,92.4	35.9,91.2
path 37.8,89.9	39.2,88.5	40.7,86.6
Kill any beasts you see and skin them
skill Skinning,330
step
map Nagrand
path follow loose;loop;ants straight;dist 60
path 56.2,21.2	55.2,23.2	53.7,24.3
path 52.7,26.0	52.5,28.4	52.8,31.3
path 50.4,37.1	51.7,39.9	53.1,42.2
path 51.3,45.3	48.8,45.1	48.0,42.0
path 47.9,38.5	48.0,32.4	48.0,29.1
path 50.8,27.4	51.8,23.8	54.8,21.5
path 56.4,20.0
Kill any beasts you see and skin them
skill Skinning,350
step
#include "trainer_Skinning"
skillmax Skinning,450
step
map Borean Tundra
path follow loose;loop;ants straight;dist 60
path 51.5,68.8	49.8,67.7	46.9,70.7
path 44.2,71.0	41.1,70.7	38.5,71.8
path 41.9,74.4	45.3,74.9	48.1,74.4
path 49.6,72.3	51.6,69.1
Kill any rhinos you see and skin them
skill Skinning,395
step
map Sholazar Basin
path follow loose;loop;ants straight;dist 60
path 28.8,55.9	29.7,51.6	31.1,46.4
path 32.2,40.4	28.6,42.9	25.6,47.9
path 23.5,52.3	22.6,58.7	22.6,65.3
path 22.3,70.2	26.4,72.7	28.9,69.1
path 29.6,64.4
Kill any beasts you see and skin them
skill Skinning,450
step
#include "trainer_Skinning"
skillmax Skinning,525
step
map Kelp'thar Forest
path follow loose;loop;ants straight;dist 60
path 56.0,36.5	57.8,39.4	59.1,39.7
path 59.4,36.9	57.6,34.9
Kill any crabs and serpents in the area
skill Skinning,525
step
Click here to proceed |confirm |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 525-600 Leveling Guide"
|tip This will take you to the Skinning 525 - 600 guides.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Cloth",{
author="support@zygorguides.com",
description="This guide will allow you to farm the various cloths.",
},[[
step
label "start"
Click here to farm Linen Cloth |confirm |next "linen"
Click here to farm Wool Cloth |confirm |next "wool"
Click here to farm Silk Cloth |confirm |next "silk"
Click here to farm Mageweave Cloth |confirm |next "mageweave"
Click here to farm Runecloth |confirm |next "rune"
Click here to farm Netherweave Cloth |confirm |next "netherweave"
Click here to farm Frostweave Cloth |confirm |next "frostweave"
Click here to farm Embersilk Cloth |confirm |next "embersilk"
Click here to farm Windwool Cloth |confirm |next "windwool" |only if ZGV.guidesets['ProfessionsHMoP']
step
label "linen"
kill Venture Co. Supervisor##2979+, Enforcer Emilgund##5787+, Supervisor Fizsprocket##3051+, Venture Co. Worker##2978+ |goto Mulgore 60.6,47.7
Click here to pick a different cloth |confirm |next "start"
step
label "wool"
kill Stormpike Engineer##49116+ |goto Hillsbrad Foothills 40.4,47.9
Click here to pick a different cloth |confirm |next "start"
step
label "silk"
kill Grimtotem Destroyer##23594+, Grimtotem Earthbinder##23595+ |goto Dustwallow Marsh 46.7,46.7
Click here to pick a different cloth |confirm |next "start"
step
label "mageweave"
kill Irontree Chopper##48453+ |goto Felwood,63.4,20.7
Click here to pick a different cloth |confirm |next "start"
stickystart "Time_Travel_On"
step
label "rune"
kill Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+ |goto Silithus 45.8,38.2
You can find more:
Around [35.7,32.5]
Around [29.5,73.4]
Around [66.1,20.3]
Click here to pick a different cloth |confirm |next "start"
step
label "Time_Travel_On"
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Gain the Time Travelling buff |havebuff Time Travelling##609811 |goto Silithus/0 78.93,21.97
|only if completedq(49015)
step
label "netherweave"
kill Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+ |goto Netherstorm 26.3,68.1
Click here to pick a different cloth |confirm |next "start"
step
label "frostweave"
kill Dark Ritualist##34734+,Dark Zealot##34728+ |goto Icecrown 61.8,20.8
Click here to pick a different cloth |confirm |next "start"
step
label "embersilk"
kill Twilight Augur##40713+, Twilight Retainer##40767+ |goto Mount Hyjal/0 56.82,69.46
Click here to pick a different cloth |confirm |next "start"
step
label "windwool"
kill Springtail Leaper##57415+, Springtail Gnasher##57413+ |goto Valley of the Four Winds 43.9,38.6
Click here to pick a different cloth |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Tailoring",600},
condition_suggested=function() return hasprof('Tailoring',1,600) end,
description="This guide will walk you through leveling your Tailoring skill from 1-600.",
},[[
step
#include "trainer_Tailoring"
skillmax Tailoring,75
|tip You must be at least level 5.
step
kill Venture Co. Supervisor##2979+, Enforcer Emilgund##5787+, Supervisor Fizsprocket##3051+, Venture Co. Worker##2978+
collect 156 Linen Cloth##2589 |goto Mulgore 60.6,47.7 |condition skill("Tailoring")>=75
|tip You can also buy these materials from the Auction House.
step
create Bolt of Linen Cloth##2963,Tailoring,78 total |n
skill Tailoring,35
step
#include "trainer_Tailoring"
learn Heavy Linen Gloves##3840 |condition skill("Tailoring")>=75
step
#include "vendor_Tailoring"
buy 40 Coarse Thread##2320 |condition itemcount(2320) >= 40 or skill("Tailoring")>=75
step
create 21 Heavy Linen Gloves##3840,Tailoring,70
step
#include "trainer_Tailoring"
learn Reinforced Linen Cape##2397 |condition skill("Tailoring")>=75
step
create 5 Reinforced Linen Cape##2397,Tailoring,75
step
#include "trainer_Tailoring"
skillmax Tailoring,150
|tip You must be level 10.
step
#include "trainer_Tailoring"
learn Bolt of Woolen Cloth##2964 |condition skill("Tailoring")>=125
step
kill Dragonmaw Whelpstealer##42041+, Ebon Slavehunter##42043+
collect 110 Linen Cloth##2589 |only itemcount(2996)<24 |goto Wetlands 66.67,47.11 |condition skill("Tailoring")>=125
collect 135 Wool Cloth##2592 |goto Wetlands 66.67,47.11 |condition skill("Tailoring")>=125
|tip You can also buy these materials from the Auction House.
step
create 55 Bolt of Linen Cloth##2963,Tailoring,55 total |n
collect 55 Linen Cloth##2996 |condition skill("Tailoring")>=125
step
create 45 Bolt of Woolen Cloth##2964,Tailoring,45 total |n
skill Tailoring,100
step
#include "trainer_Tailoring"
learn Simple Kilt##12046 |condition skill("Tailoring")>=125
step
#include "vendor_Tailoring"
buy 45 Fine Thread##2321 |condition itemcount(2321) >= 45 or skill("Tailoring")>=125
step
create Simple Kilt##12046,Tailoring,110
step
#include "trainer_Tailoring"
learn Double-stitched Woolen Shoulders##3848 |condition skill("Tailoring")>=125
step
create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
step
#include "trainer_Tailoring"
skillmax Tailoring,225
|tip You must be at least level 20.
step
#include "trainer_Tailoring"
learn Bolt of Silk Cloth##3839 |condition skill("Tailoring")>=200
step
kill Death's Step Putrifier##45443+, Death's Step Miscreation##45444+
collect 644 Silk Cloth##4306 |goto Eastern Plaguelands/0 18.33,78.45 |condition skill("Tailoring")>=200
|tip You may potentially be flagged farming here. Avoid attacking Feralas Sentinels.
step
kill Dunemaul Enforcer##5472+, Dunemaul Ogre##5471+, Dunemaul Brute##5474+, Dunemaul Warlock##5475+
collect 480 Mageweave Cloth##4338 |goto Tanaris/0 40.49,55.80 |condition skill("Tailoring")>=200
|tip You can also buy these materials from the Auction House.
step
create 161 Bolt of Silk Cloth##3839,Tailoring,161 total |n
skill Tailoring,145
step
#include "trainer_Tailoring"
learn Azure Silk Hood##8760 |condition skill("Tailoring")>=200
step
create Azure Silk Hood##8760,Tailoring,160
step
#include "trainer_Tailoring"
learn Silk Headband##8762 |condition skill("Tailoring")>=200
step
create 10 Silk Headband##8762,Tailoring,170
step
#include "trainer_Tailoring"
learn Formal White Shirt##3871 |condition skill("Tailoring")>=200
step
create 5 Formal White Shirt##3871,Tailoring,175
step
#include "trainer_Tailoring"
learn Bolt of Mageweave##3865 |condition skill("Tailoring")>=200
step
create Bolt of Mageweave##3865,Tailoring,120 total |n
skill Tailoring,185
step
#include "trainer_Tailoring"
learn Crimson Silk Vest##8791 |condition skill("Tailoring")>=200
step
create 15 Crimson Silk Vest##8791,Tailoring,200
step
#include "trainer_Tailoring"
skillmax Tailoring,300
|tip You must be at least level 35.
step
#include "trainer_Tailoring"
learn Crimson Silk Pantaloons##8799 |condition skill("Tailoring")>=300
step
create 15 Crimson Silk Pantaloons##8799,Tailoring,215
step
#include "trainer_Tailoring"
learn Black Mageweave Leggings##12049 |condition skill("Tailoring")>=300
step
create 5 Black Mageweave Leggings##12049,Tailoring,220
step
#include "trainer_Tailoring"
learn Black Mageweave Gloves##12053 |condition skill("Tailoring")>=300
step
create 10 Black Mageweave Gloves##12053,Tailoring,230
step
#include "trainer_Tailoring"
learn Black Mageweave Headband##12072 |condition skill("Tailoring")>=300
step
create Black Mageweave Headband##12072,Tailoring,250
step
kill Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882
collect 800 Runecloth##14047 |goto Silithus 45.8,38.2 |condition skill("Tailoring")>=300
|tip You can also buy these materials from the Auction House.
You can find more Twilight enemies here [35.7,32.5]
You can find more Twilight enemies here [29.5,73.4]
You can find more Twilight enemies here [66.1,20.3]
step
#include "trainer_Tailoring"
learn Bolt of Runecloth##18401 |condition skill("Tailoring")>=300
step
create Bolt of Runecloth##18401,Tailoring,200 total |n
skill Tailoring,260
step
#include "vendor_Tailoring"
buy 65 Rune Thread##14341 |condition itemcount(14341) >= 65 or skill("Tailoring")>=300
step
#include "trainer_Tailoring"
learn Runecloth Belt##18402 |condition skill("Tailoring")>=300
step
create Runecloth Belt##18402,Tailoring,275
step
#include "trainer_Tailoring"
learn Runecloth Gloves##18417 |condition skill("Tailoring")>=300
step
create 23 Runecloth Gloves##18417,Tailoring,295
step
#include "trainer_Tailoring"
learn Runecloth Headband##18444 |condition skill("Tailoring")>=300
step
create 5 Runecloth Headband##18444,Tailoring,300
step
#include "trainer_Tailoring"
skillmax Tailoring,375
|tip You must be at least level 50.
step
#include "trainer_Tailoring"
learn Bolt of Netherweave##26745 |condition skill("Tailoring")>=350
step
Kill _Sunfury enemies_ around the area
collect 800 Netherweave Cloth##21877 |goto Netherstorm 26.3,68.1 |condition skill("Tailoring")>=350
step
talk Eiin##19213
buy Pattern: Netherweave Tunic##21897 |goto Shattrath City 66.3,69.3 |condition _G.IsSpellKnown(26774) or itemcount(21897) >= 1 or skill("Tailoring")>=350
step
talk Auctioneer Lyrsara##50140 |goto Shattrath City/0 56.7,62.4 |only if rep ('The Scryers') >= Friendly
talk Auctioneer Braku##50145 |goto Shattrath City/0 51.4,27.4 |only if rep ('The Aldor') >= Neutral
buy 20 Knothide Leather##21887 |condition itemcount(21887) >= 20 or skill("Tailoring")>=350
step
create Bolt of Netherweave##26745,Tailoring,160 total |n
skill Tailoring,325
step
#include "trainer_Tailoring"
learn Netherweave Pants##26771 |condition skill("Tailoring")>=350
step
#include "vendor_Tailoring"
buy 30 Rune Thread##14341 |condition itemcount(14341) >= 30 or skill("Tailoring")>=350
step
create 10 Netherweave Pants##26771,Tailoring,335
step
#include "trainer_Tailoring"
learn Netherweave Boots##26772 |condition skill("Tailoring")>=350
step
create 10 Netherweave Boots##26772,Tailoring,345
step
use Pattern: Netherweave Tunic##21897
learn Netherweave Tunic##26774 |condition skill("Tailoring")>=350
step
create 5 Netherweave Tunic##26774,Tailoring,350
step
#include "trainer_Tailoring"
skillmax Tailoring,450
|tip You must be at least level 65.
step
#include "trainer_Tailoring"
learn Bolt of Frostweave##55899 |condition skill("Tailoring")>=425
step
talk Raenah##26969
accept Cloth Scavenging##13270 |instant |goto Borean Tundra 41.6,53.4 |condition skill("Tailoring")>=425
step
kill Dark Zealot##34728+, Dark Ritualist##34734+
collect 1875 Frostweave Cloth##33470 |n |goto Icecrown 61.8,20.8
create Bolt of Frostweave##55899,Tailoring, 340 total |condition skill("Tailoring")>=425
|tip You can also buy these materials from the Auction House.
step
create Bolt of Frostweave##55899,Tailoring,375 total |n
skill Tailoring,375
step
#include "trainer_Tailoring"
learn Frostwoven Belt##55908 |condition skill("Tailoring")>=425
step
#include "vendor_Tailoring"
buy 50 Eternium Thread##38426 |condition itemcount(38426) >= 50 or skill("Tailoring")>=425
step
create 5 Frostwoven Belt##55908,Tailoring,380
step
#include "trainer_Tailoring"
learn Frostwoven Boots##55906 |condition skill("Tailoring")>=425
step
create 5 Frostwoven Boots##55906,Tailoring,385
step
#include "trainer_Tailoring"
learn Frostwoven Cowl##55907 |condition skill("Tailoring")>=425
step
create 5 Frostwoven Cowl##55907,Tailoring,395
step
#include "trainer_Tailoring"
learn Duskweave Belt##55914 |condition skill("Tailoring")>=425
step
create 13 Duskweave Belt##55914,Tailoring,405
step
#include "trainer_Tailoring"
learn Duskweave Wristwraps##55920 |condition skill("Tailoring")>=425
step
create 5 Duskweave Wristwraps##55920,Tailoring,410
step
#include "trainer_Tailoring"
learn Duskweave Gloves##55922 |condition skill("Tailoring")>=425
step
create 5 Duskweave Gloves##55922,Tailoring,415
step
#include "trainer_Tailoring"
learn Duskweave Boots##55924 |condition skill("Tailoring")>=425
step
create 13 Duskweave Boots##55924,Tailoring,425
step
#include "trainer_Tailoring"
skillmax Tailoring,525
|tip You must be at least level 75.
step
learn Bolt of Embersilk Cloth##74964 |condition skill("Tailoring")>=500
step
kill Twilight Augur##40713+, Twilight Retainer##40767+
collect 1025 Embersilk Cloth##53010 |condition skill("Tailoring")>=500 |goto Mount Hyjal 55.8,68.0 |or
create Bolt of Embersilk Cloth##74964,Tailoring,205 total |or
step
create Bolt of Embersilk Cloth##74964,Tailoring,205 total |n
skill Tailoring,450
step
#include "vendor_Tailoring"
buy 100 Eternium Thread##38426 |condition itemcount(38426) >= 100 or skill("Tailoring")>=500
step
#include "trainer_Tailoring"
learn Deathsilk Bracers##75249 |condition skill("Tailoring")>=500
step
create 5 Deathsilk Bracers##75249,Tailoring,455
step
#include "trainer_Tailoring"
learn Deathsilk Boots##75252 |condition skill("Tailoring")>=500
step
create 5 Deathsilk Boots##75252,Tailoring,460
step
#include "trainer_Tailoring"
learn Deathsilk Leggings##75254 |condition skill("Tailoring")>=500
step
create 5 Deathsilk Leggings##75254,Tailoring,465
step
#include "trainer_Tailoring"
learn Deathsilk Cowl##75256 |condition skill("Tailoring")>=500
step
create 5 Deathsilk Cowl##75256,Tailoring,470
step
#include "trainer_Tailoring"
learn Spiritmend Belt##75258 |condition skill("Tailoring")>=500
step
create 5 Spiritmend Belt##75258,Tailoring,475
step
#include "trainer_Tailoring"
learn Spiritmend Boots##75261 |condition skill("Tailoring")>=500
step
create 5 Spiritmend Boots##75261,Tailoring,480
step
#include "trainer_Tailoring"
learn Spiritmend Leggings##75263 |condition skill("Tailoring")>=500
step
create 5 Spiritmend Leggings##75263,Tailoring,485
step
#include "trainer_Tailoring"
learn Spiritmend Robe##75267 |condition skill("Tailoring")>=500
step
create 15 Spiritmend Robe##75267,Tailoring,500
step
Click here to proceed |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 500-600 Leveling Guide"
|tip This will take you to the Tailoring 500 - 600 guides.
]])
