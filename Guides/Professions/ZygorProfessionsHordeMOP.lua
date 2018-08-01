local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHMoP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 500-600 Leveling Guide",{
author="support@zygorguides.com",
hidden=true,
completion={"skill","Alchemy",600},
description="This guide will walk you through leveling your Alchemy skill from 500-600.",
},[[
step
#include "trainer_Alchemy"
skillmax Alchemy,600
|tip You must be at least level 85.
step
map Valley of the Four Winds
path follow loose;loop;ants straight;dist 60
path	81.4,21.5	76.4,29.2	73.9,29.9
path	72.3,33.4	70.8,34.4	70.6,41.8
path	65.1,60.1	57.6,65.6	50.8,58.6
path	47.4,64.9	46.9,61.3	42.5,54.3
path	33.6,62.1	28.1,72.7	25.7,78.4
path	24.4,56.0	21.9,53.9	12.8,44.7
path	14.3,41.2	14.8,35.8	19.6,34.4
path	21.4,36.6	22.4,37.8	27.3,49.6
path	30.7,52.2
#include "follow_path_herbs"
collect 150 Green Tea Leaf##72234 |condition skill("Alchemy")>=600
|tip You can also buy these materials from the Auction House.
step
map Dread Wastes
path follow loose;loop;ants straight;dist 60
path	40.4,56.5	43.9,59.5	43.1,64.4
path	40.5,69.7	37.4,69.2	33.0,66.4
path	33.4,61.6	30.0,56.5	35.5,55.1
#include follow_path_herbs
collect 75 Fool's Cap##79011 |condition skill("Alchemy")>=600
|tip You can also buy these materials from the Auction House.
step
map Kun-Lai Summit
path follow loose;loop;ants straight;dist 60
path	39.4,77.3	38.0,75.5	40.1,71.8
path	43.7,64.5	42.9,60.8	41.1,59.3
path	33.9,54.9	36.0,75.5
#include follow_path_herbs
collect 75 Snow Lily##79010 |condition skill("Alchemy")>=600
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Alchemy"
learn Draught of War##93935 |condition skill("Alchemy")>=600
step
#include "vendor_Alchemy"
buy 150 Crystal Vial##3371 |condition skill("Alchemy")>=600
step
#include "trainer_Alchemy"
learn Master Healing Potion##114752 |condition skill("Alchemy")>=600
step
create 25 Master Healing Potion##114752,Alchemy,525
While you create these, you will discover random Pandaria Recipes. Keep making potions until you discover _Mantid Elixir_ or _Master Mana Potion_.
learn Mantid Elixir##114755 |or |next "mantid" |condition skill("Alchemy")>=600
learn Master Mana Potion##114775 |or |next "mana2" |condition skill("Alchemy")>=600
step
label "mantid"
create 25 Mantid Elixir##114755,Alchemy,560
Create these until you learn one of the recipes listed
learn Virmen's Bite##114765 |next "virmen" |or |condition skill("Alchemy")>=600
learn Elixir of Perfection##114762 |next "perfect" |or |condition skill("Alchemy")>=600
learn Elixir of the Rapids##114759 |next "rapids" |or |condition skill("Alchemy")>=600
learn Master Mana Potion##114775 |next "mana" |or |condition skill("Alchemy")>=600
step
label "virmen"
create 10 Virmen's Bite##114765,Alchemy,575
Create these until you learn the following recipe
learn Master Mana Potion##114775 |next "mana" |condition skill("Alchemy")>=600
step
label "perfect"
create 10 Elixir of Perfection##114762,Alchemy,575
Create these until you learn the following recipe
learn Master Mana Potion##114775 |next "mana" |condition skill("Alchemy")>=600
step
label "rapids"
create 10 Elixir of the Rapids##114759,Alchemy,575
Create these until you learn the following recipe
learn Master Mana Potion##114775 |next "mana" |condition skill("Alchemy")>=600
step
label "mana"
create 25 Master Mana Potion##114775,Alchemy,600
|next "alch_600"
step
label "mana2"
create 75 Master Mana Potion##114775,Alchemy,600
step
label "alch_600"
Congratulations, you are now a Zen Master Alchemist!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 525-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Archaeology",600},
hidden=true,
description="This guide will walk you through leveling your Archaeology skill from 525-600.",
},[[
step
#include "trainer_Archaeology"
Learn the Zen Master Archaeology skill |skillmax Archaeology,600
|tip You must be at least level 80.
step
Open your world map, find dig sites in Kalimdor then go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,600
step
Congratulations, you are now a Zen Master Archaeologist.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Blacksmithing",600},
hidden=true,
description="This guide will walk you through leveling your Blacksmithing skill from 500-600.",
},[[
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,600
step
map Krasarang Wilds
path follow loose;loop;ants straight;dist 50
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	62.1,27.0	57.5,27.0
path	52.0,30.2	40.2,27.5
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8
path	15.8,47.6	13.1,52.8	9.8,54.9
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.6,33.4
path	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9
path	79.8,17.9	85.0,9.9
#include "follow_path_mine"
collect 408 Ghost Iron Ore##72092 |condition skill("Blacksmithing")>=600
step
#include "trainer_Mining"
learn Smelt Ghost Iron##102165 |condition skill("Blacksmithing")>=600
step
#include "maincity_anvil"
create Smelt Ghost Iron##102165,Mining,200 total |n
collect 200 Ghost Iron Bar##72096 |condition skill("Blacksmithing")>=600
step
#include "trainer_Blacksmithing"
learn Ghost-Forged Bracers##122581 |condition skill("Blacksmithing")>=600
step
#include "maincity_anvil"
create Ghost-Forged Bracers##122581,Blacksmithing,5 total |n
skill Blacksmithing,525
step
#include "trainer_Blacksmithing"
learn Ghostly Skeleton Key##122633 |condition skill("Blacksmithing")>=600
step
#include "maincity_anvil"
create Ghostly Skeleton Key##122633,Blacksmithing,14 total |n
skill Blacksmithing,530
step
#include "trainer_Blacksmithing"
learn Ghost-Forged Boots##122582 |condition skill("Blacksmithing")>=600
step
#include "maincity_anvil"
create Ghost-Forged Boots##122582,Blacksmithing,545
step
#include "trainer_Blacksmithing"
learn Spiritguard Shield##122636 |condition skill("Blacksmithing")>=600
step
#include "maincity_anvil"
create Spiritguard Shield##122636,Blacksmithing,555
step
#include "trainer_Blacksmithing"
learn Ghost-Forged Helm##122576 |condition skill("Blacksmithing")>=600
step
#include "maincity_anvil"
create Ghost-Forged Helm##122576,Blacksmithing,565
step
#include "trainer_Blacksmithing"
learn Ghost Shard##122641 |condition skill("Blacksmithing")>=600
step
collect 50 Mote of Harmony##89112 |n
|tip Kill any creature in Pandaria to collect them.
Combine 10 Motes of Harmony into a Spirit of Harmony |use Mote of Harmony##89112
collect 5 Spirit of Harmony##76061 |condition skill("Blacksmithing")>=600
step
#include "maincity_anvil"
create Ghost Shard##122641,Blacksmithing,2 total |n
skill Blacksmithing,575
step
talk Cullen Hammerbrow##64085
buy 1 Plans: Contender's Revenant Bracers##84160 |goto Vale of Eternal Blossoms/3 72.6,49.5 |condition _G.IsSpellKnown(122621) or skill("Blacksmithing")>=600
only Alliance
step
use Plans: Contender's Revenant Bracers##84160
learn Contender's Revenant Bracers##122621 |condition skill("Blacksmithing")>=600
only Alliance
step
talk Jorunga Stonehoof##64058
buy 1 Plans: Contender's Revenant Bracers##84160 |goto Shrine of Two Moons 27.0,47.6 |condition _G.IsSpellKnown(122621) or skill("Blacksmithing")>=600
only Horde
step
use Plans: Contender's Revenant Bracers##84160
learn Contender's Revenant Bracers##122621 |condition skill("Blacksmithing")>=600
only Horde
step
#include "maincity_anvil"
create Contender's Revenant Bracers##122621,Blacksmithing,12 total |n
skill Blacksmithing,600
step
Congratulations, you are now a Zen Master Blacksmith!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Daily Guides\\Pandaria Cooking Daily Guide",{},[[
step
#include "MoP_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Cooking 520-600 Leveling Guide",{},[[
#include "Cooking_520-600"
step
Congratulations, you have reached _600 Cooking skill!_
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Brew",{
achieveid={7305},
author="support@zygorguides.com",
startlevel=85,
endlevel=90,
keywords={"Cooking","Way","of","the","Brew"},
description="This guide will walk you through completing the \"Way of the Brew\" Cooking path.",
},[[
step
_Before Starting This Guide:_
Reach at least 530 Cooking Skill
Click here to load the Cooking Leveling Guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-520 Leveling Guide"
You will also need to unlock the farm through "The Tillers" faction
Click here to load The Tillers Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies"
Click here to continue |confirm
step
talk Sungshin Ironpaw##64231
accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Sliced Peaches |learn Salt and Pepper Shank##125117 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Pandaren Peach##74660 |q 31281 |condition itemcount(74660)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Sliced Peaches |q 31281/1
collect 5 Sliced Peaches##86057 |q 31281/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin So You Want to Be a Chef...##31281 |goto 53.6,51.2
accept Ready for Greatness##31302 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Rice Pudding |learn Rice Pudding##125122 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |condition itemcount(74851)>=5 |goto 53.6,51.2
buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |condition itemcount(74852)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Rice Pudding |q 31302/1
collect 5 Rice Pudding##86069 |q 31302/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin Ready for Greatness##31302 |goto 53.6,51.2
accept Way of the Brew##31479 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 1 Ginseng##74845 |q 31480 |condition itemcount(74845)>=1 |goto 53.6,51.2
step
talk Bobo Ironpaw##58717
turnin Way of the Brew##31479 |goto 53.2,52.2
accept Have a Drink##31480 |goto 53.2,52.2
step
talk Bobo Ironpaw##58717
Learn Ginseng Tea |learn Ginseng Tea##124052 |q 31480/1 |goto 53.2,52.2
step
Open Your Cooking Crafting Panel:
_<Create 1 Ginseng Tea>_
|tip Create campfire if there isn't one nearby.
collect 1 Ginseng Tea##75026 |q 31480/2 |goto 52.91,51.44
step
talk Bobo Ironpaw##58717
turnin Have a Drink##31480 |goto 53.2,52.2
step
talk Sungshin Ironpaw##64231
buy 19 Ginseng##74845 |condition itemcount(74845)>=19 |goto 53.6,51.2
|only if skill("Way of the Brew") < 550 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create 19 Ginseng Tea>_
|tip Create campfire if there isn't one nearby.
Reach 550 Way of the Brew style cooking |skill Way of the Brew,550 |goto 52.91,51.44
Click here to continue |confirm
step
talk Bobo Ironpaw##58717
Learn Jade Witch Brew |learn Jade Witch Brew##124053 |goto 53.2,52.2
step
collect 130 Jade Squash##74847 |condition itemcount(74847)>=130
|tip These can be looted from Hozen enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Brew") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
collect 130 Witchberries##74846 |condition itemcount(74846)>=130
|tip These can be looted from Saurok and Sprite enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Brew") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Jade Witch Brew>_
|tip Create campfire if there isn't one nearby.
Reach 576 Way of the Brew style cooking |skill Way of the Brew,576 |goto 52.94,51.41
Click here to continue |confirm
step
talk Bobo Ironpaw##58717
Learn Banquet of the Brew |learn Banquet of the Brew##125602 |goto 53.2,52.2
step
You will need to start collecting Ironpaw Tokens to continue progression
Collect 5 Ironpaw Tokens |condition curcount(402) >= 5
Use the Pandaria Cooking Dailies guide to accomplish this
Click here to load the Pandaria Cooking Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies"
|only if skill("Way of the Brew") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 250 Green Cabbage##74840 |condition itemcount(74840)>=250
|tip These can be looted from Virmen enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Brew") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 250 Witchberries##74846 |condition itemcount(74846)>=250
|tip These can be looted from Saurok and Sprite enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Brew") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
talk Nam Ironpaw##64395
buy 5 100 Year Soy Sauce##74853 |condition itemcount(74853)>=5 |goto 53.53,51.25
|only if skill("Way of the Brew") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Brew>_
|tip Create campfire if there isn't one nearby.
Reach 600 Way of the Brew style cooking |skill Way of the Brew,600 |goto 52.94,51.41
Click here to continue |confirm
step
_Congratulations!_
You reached level 600 with the Way of the Brew cooking profession.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Grill",{
achieveid={7300},
author="support@zygorguides.com",
startlevel=85,
endlevel=90,
keywords={"Cooking","Way","of","the","Grill"},
description="This guide will walk you through completing the \"Way of the Grill\" Cooking path.",
},[[
step
_Before Starting This Guide:_
Reach at least 530 Cooking Skill
Click here to load the Cooking Leveling Guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-520 Leveling Guide"
You will also need to unlock the farm through "The Tillers" faction
Click here to load The Tillers Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies"
Click here to continue |confirm
step
talk Sungshin Ironpaw##64231
accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Sliced Peaches |learn Salt and Pepper Shank##125117 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Pandaren Peach##74660 |q 31281 |condition itemcount(74660)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Sliced Peaches |q 31281/1
collect 5 Sliced Peaches##86057 |q 31281/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin So You Want to Be a Chef...##31281 |goto 53.6,51.2
accept Ready for Greatness##31302 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Rice Pudding |learn Rice Pudding##125122 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |condition itemcount(74851)>=5 |goto 53.6,51.2
buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |condition itemcount(74852)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Rice Pudding |q 31302/1
collect 5 Rice Pudding##86069 |q 31302/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin Ready for Greatness##31302 |goto 53.6,51.2
accept Way of the Grill##31311 |goto 53.6,51.2
step
collect 5 Raw Tiger Steak##74833 |q 31311/1 |condition itemcount(74833)>=5
|tip These can be farmed from Tigers in the Jade Forest.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
talk Kol Ironpaw##58712
turnin Way of the Grill##31311 |goto 52.97,51.31
accept Strong as a Tiger##31467 |goto 52.97,51.31
step
talk Kol Ironpaw##58712
Learn Charbroiled Tiger Steak |learn Charbroiled Tiger Steak##104298 |q 31467/1 |goto 52.97,51.31
step
collect 5 Raw Tiger Steak##74833 |q 31467
|tip These can be farmed from Tigers in the Jade Forest.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 5 Charbroiled Tiger Steak>_
|tip Create campfire if there isn't one nearby.
collect 5 Charbroiled Tiger Steak##74642 |q 31467/2 |goto 52.91,51.44
step
talk Kol Ironpaw##58712
turnin Strong as a Tiger##31467 |goto 52.97,51.31
step
collect 15 Raw Tiger Steak##74833
|tip These can be farmed from Tigers in the Jade Forest.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Grill") < 550 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Charboiled Tiger Steak>_
|tip Create campfire if there isn't one nearby.
Reach 550 Way of the Grill style cooking |skill Way of the Grill,550 |goto 52.91,51.44
Click here to continue |confirm
step
talk Kol Ironpaw##58712
Learn Eternal Blossom Fish |learn Eternal Blossom Fish##104299 |goto 52.97,51.31
step
collect 13 Jade Lungfish##74856 |condition itemcount(74856)>=13
|tip These can be fished in rivers in Valley of the Four Winds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Grill") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
collect 65 Striped Melon##74848 |condition itemcount(74848)>=65
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Grill") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Eternal Blossom Fish>_
|tip Create campfire if there isn't one nearby.
Reach 576 Way of the Grill style cooking |skill Way of the Grill,576 |goto 52.94,51.41
Click here to continue |confirm
step
talk Kol Ironpaw##58712
Learn Banquet of the Grill |learn Banquet of the Grill##126492 |goto 52.98,51.34
step
You will need to start collecting Ironpaw Tokens to continue progression
Collect 5 Ironpaw Tokens |condition curcount(402) >= 5
Use the Pandaria Cooking Dailies guide to accomplish this
Click here to load the Pandaria Cooking Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies"
|only if skill("Way of the Grill") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Redbelly Mandarin##74860 |condition itemcount(74860)>=50
|tip These can be fished in Townlong Steppes near the Fields of Niuzao.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Grill") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Raw Crab Meat##74838 |condition itemcount(74838)>=50
|tip These can be farming from Much Sifters in the Dread Wastes.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Grill") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 250 White Turnip##74850 |condition itemcount(74850)>=250
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Grill") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
talk Nam Ironpaw##64395
buy 5 100 Year Soy Sauce##74853 |condition itemcount(74853)>=5 |goto 53.53,51.25
|only if skill("Way of the Grill") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Pot>_
|tip Create campfire if there isn't one nearby.
Reach 600 Way of the Grill style cooking |skill Way of the Grill,600 |goto 52.94,51.41
Click here to continue |confirm
step
_Congratulations!_
You reached level 600 with the Way of the Grill cooking profession.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Oven",{
achieveid={7304},
author="support@zygorguides.com",
startlevel=85,
endlevel=90,
keywords={"Cooking","Way","of","the","Oven"},
description="This guide will walk you through completing the \"Way of the Oven\" Cooking path.",
},[[
step
_Before Starting This Guide:_
Reach at least 530 Cooking Skill
Click here to load the Cooking Leveling Guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-520 Leveling Guide"
You will also need to unlock the farm through "The Tillers" faction
Click here to load The Tillers Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies"
Click here to continue |confirm
step
talk Sungshin Ironpaw##64231
accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Sliced Peaches |learn Salt and Pepper Shank##125117 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Pandaren Peach##74660 |q 31281 |condition itemcount(74660)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Sliced Peaches |q 31281/1
collect 5 Sliced Peaches##86057 |q 31281/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin So You Want to Be a Chef...##31281 |goto 53.6,51.2
accept Ready for Greatness##31302 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Rice Pudding |learn Rice Pudding##125122 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |condition itemcount(74851)>=5 |goto 53.6,51.2
buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |condition itemcount(74852)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Rice Pudding |q 31302/1
collect 5 Rice Pudding##86069 |q 31302/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin Ready for Greatness##31302 |goto 53.6,51.2
accept Way of the Oven##31478 |goto 53.6,51.2
step
collect 5 Wildfowl Breast##74839 |q 31478/1 |condition itemcount(74839)>=5
|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
talk Jian Ironpaw##58716
turnin Way of the Oven##31478 |goto 53.40,51.60
accept Endurance##31477 |goto 53.40,51.60
step
talk Jian Ironpaw##58716
Learn Wildfowl Roast |learn Wildfowl Roast##104310 |q 31477/1 |goto 53.40,51.60
step
collect 5 Wildfowl Breast##74839 |q 31477
|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 5 Wildfowl Roast>_
|tip Create campfire if there isn't one nearby.
collect 5 Wildfowl Roast##74654 |q 31477/2 |goto 52.91,51.44
step
talk Jian Ironpaw##58716
turnin Endurance##31477 |goto 53.40,51.60
step
collect 15 Wildfowl Breast##74839
|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Oven") < 550 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Wildfowl Roast>_
|tip Create campfire if there isn't one nearby.
Reach 550 Way of the Oven style cooking |skill Way of the Oven,550 |goto 52.91,51.44
Click here to continue |confirm
step
talk Jian Ironpaw##58716
Learn Twin Fish Platter |learn Twin Fish Platter##104311 |goto 53.40,51.60
step
collect 26 Krasarang Paddlefish##74865 |condition itemcount(74837)>=13
|tip These can be fished from rivers in Krasarang Wilds.
|tip These can also be fished from schools in the Yan-Zhe River, in Valley of the Four Winds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Oven") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Twin Fish Platter>_
|tip Create campfire if there isn't one nearby.
Reach 576 Way of the Oven style cooking |skill Way of the Oven,576 |goto 52.94,51.41
Click here to continue |confirm
step
talk Jian Ironpaw##58716
Learn Banquet of the Oven |learn Banquet of the Oven##126501 |goto 53.40,51.60
step
You will need to start collecting Ironpaw Tokens to continue progression
Collect 5 Ironpaw Tokens |condition curcount(402) >= 5
Use the Pandaria Cooking Dailies guide to accomplish this
Click here to load the Pandaria Cooking Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies"
|only if skill("Way of the Oven") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Krasarang Paddlefish##74865 |condition itemcount(74865)>=50
|tip These can be fished from rivers in Krasarang Wilds.
|tip These can also be fished from schools in the Yan-Zhe River, in Valley of the Four Winds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Oven") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Raw Turtle Meat##74837 |condition itemcount(74837)>=50
|tip These can be farmed from Young Turtles in the Jade Forest.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Oven") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 250 Mogu Pumpkin##74842 |condition itemcount(74842)>=250
|tip These can be looted from Vermin enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Oven") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
talk Nam Ironpaw##64395
buy 5 100 Year Soy Sauce##74853 |condition itemcount(74853)>=5 |goto 53.53,51.25
|only if skill("Way of the Oven") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Pot>_
|tip Create campfire if there isn't one nearby.
Reach 600 Way of the Pot style cooking |skill Way of the Steamer,600 |goto 52.94,51.41
Click here to continue |confirm
step
_Congratulations!_
You reached level 600 with the Way of the Pot cooking profession.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Pot",{
achieveid={7302},
author="support@zygorguides.com",
startlevel=85,
endlevel=90,
keywords={"Cooking","Way","of","the","Pot"},
description="This guide will walk you through completing the \"Way of the Pot\" Cooking path.",
},[[
step
_Before Starting This Guide:_
Reach at least 530 Cooking Skill
Click here to load the Cooking Leveling Guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-520 Leveling Guide"
You will also need to unlock the farm through "The Tillers" faction
Click here to load The Tillers Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies"
Click here to continue |confirm
step
talk Sungshin Ironpaw##64231
accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Sliced Peaches |learn Salt and Pepper Shank##125117 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Pandaren Peach##74660 |q 31281 |condition itemcount(74660)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Sliced Peaches |q 31281/1
collect 5 Sliced Peaches##86057 |q 31281/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin So You Want to Be a Chef...##31281 |goto 53.6,51.2
accept Ready for Greatness##31302 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Rice Pudding |learn Rice Pudding##125122 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |condition itemcount(74851)>=5 |goto 53.6,51.2
buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |condition itemcount(74852)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Rice Pudding |q 31302/1
collect 5 Rice Pudding##86069 |q 31302/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin Ready for Greatness##31302 |goto 53.6,51.2
accept Way of the Pot##31472 |goto 53.6,51.2
step
collect 5 Jade Lungfish##74856 |q 31472/1 |condition itemcount(74856)>=5
|tip These can be fished in rivers in Valley of the Four Winds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
talk Mei Mei Ironpaw##58714
turnin Way of the Pot##31472 |goto 52.54,51.59
accept The Soup of Contemplation##31474 |goto 52.54,51.59
step
talk Mei Mei Ironpaw##58714
Learn Swirling Mist Soup |learn Swirling Mist Soup##104304 |q 31474/1 |goto 52.63,51.51
step
collect 5 Jade Lungfish##74856 |q 31474
|tip These can be fished in rivers in Valley of the Four Winds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 5 Swirling Mist Soup>_
|tip Create campfire if there isn't one nearby.
collect 5 Swirling Mist Soup##74644 |q 31474/2 |goto 52.91,51.44
step
talk Mei Mei Ironpaw##58714
turnin The Soup of Contemplation##31474 |goto 52.63,51.51
step
collect 15 Jade Lungfish##74856
|tip These can be fished in rivers in Valley of the Four Winds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Pot") < 550 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Swirling Mist Soup>_
|tip Create campfire if there isn't one nearby.
Reach 550 Way of the Pot style cooking |skill Way of the Pot,550 |goto 52.91,51.44
Click here to continue |confirm
step
talk Mei Mei Ironpaw##58714
Learn Braised Turtle |learn Braised Turtle##104305 |goto 52.63,51.51
step
collect 13 Emperor Salmon##74837 |condition itemcount(74837)>=13
|tip These can be fished from rivers in Krasarang Wilds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Pot") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
collect 65 Juicycrunch Carrot##74841 |condition itemcount(74841)>=65
|tip These can be looted from Saurok enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Pot") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Braised Turtle>_
|tip Create campfire if there isn't one nearby.
Reach 576 Way of the Pot style cooking |skill Way of the Pot,576 |goto 52.94,51.41
Click here to continue |confirm
step
talk Mei Mei Ironpaw##58714
Learn Banquet of the Pot |learn Banquet of the Pot##126497 |goto 52.63,51.51
step
You will need to start collecting Ironpaw Tokens to continue progression
Collect 5 Ironpaw Tokens |condition curcount(402) >= 5
Use the Pandaria Cooking Dailies guide to accomplish this
Click here to load the Pandaria Cooking Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies"
|only if skill("Way of the Pot") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Reef Octopus##74864 |condition itemcount(74864)>=50
|tip These can be fished from pools in the Jade Forest.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Pot") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Mushan Ribs##74834 |condition itemcount(74834)>=50
|tip These can be farmed from Mushan in the Dread Wastes.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Pot") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 250 Juicycruch Carrot##74841 |condition itemcount(74841)>=250
|tip These can be looted from Zandalari Troll enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Pot") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
talk Nam Ironpaw##64395
buy 5 100 Year Soy Sauce##74853 |condition itemcount(74853)>=5 |goto 53.53,51.25
|only if skill("Way of the Pot") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Pot>_
|tip Create campfire if there isn't one nearby.
Reach 600 Way of the Pot style cooking |skill Way of the Steamer,600 |goto 52.94,51.41
Click here to continue |confirm
step
_Congratulations!_
You reached level 600 with the Way of the Pot cooking profession.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Steamer",{
achieveid={7303},
author="support@zygorguides.com",
startlevel=85,
endlevel=90,
keywords={"Cooking","Way","of","the","Steamer"},
description="This guide will walk you through completing the \"Way of the Steamer\" Cooking path.",
},[[
step
_Before Starting This Guide:_
Reach at least 530 Cooking Skill
Click here to load the Cooking Leveling Guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-520 Leveling Guide"
You will also need to unlock the farm through "The Tillers" faction
Click here to load The Tillers Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies"
Click here to continue |confirm
step
talk Sungshin Ironpaw##64231
accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Sliced Peaches |learn Salt and Pepper Shank##125117 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Pandaren Peach##74660 |q 31281 |condition itemcount(74660)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Sliced Peaches |q 31281/1
collect 5 Sliced Peaches##86057 |q 31281/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin So You Want to Be a Chef...##31281 |goto 53.6,51.2
accept Ready for Greatness##31302 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Rice Pudding |learn Rice Pudding##125122 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |condition itemcount(74851)>=5 |goto 53.6,51.2
buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |condition itemcount(74852)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Rice Pudding |q 31302/1
collect 5 Rice Pudding##86069 |q 31302/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin Ready for Greatness##31302 |goto 53.6,51.2
accept Way of the Steamer##31475 |goto 53.6,51.2
step
collect 5 Giant Mantis Shrimp##74857 |q 31475/1 |condition itemcount(74857)>=5
|tip These can be fished along the coast of The Dread Wastes.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
talk Yan Ironpaw##58715
turnin Way of the Steamer##31475 |goto 52.68,52.01
accept The Spirit of Cooking##31476 |goto 52.68,52.01
step
talk Yan Ironpaw##58715
Learn Shrimp Dumplings |learn Shrimp Dumplings##104307 |q 31476/1 |goto 52.55,51.76
step
collect 5 Giant Mantis Shrimp##74857 |q 31476
|tip These can be fished along the coast of The Dread Wastes.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 5 Shrimp Dumplings>_
|tip Create campfire if there isn't one nearby.
collect 5 Shrimp Dumplings##74651 |q 31476/2 |goto 52.91,51.44
Click here to continue |confirm
step
talk Yan Ironpaw##58715
turnin The Spirit of Cooking##31476 |goto 52.55,51.76
step
collect 5 Giant Mantis Shrimp##74857
|tip These can be fished along the coast of The Dread Wastes.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Steamer") < 550 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Shrimp Dumplings>_
|tip Create campfire if there isn't one nearby.
Reach 550 Way of the Steamer style cooking |skill Way of the Steamer,550 |goto 52.91,51.44
Click here to continue |confirm
step
talk Yan Ironpaw##58715
Learn Fire Spirit Salmon |learn Fire Spirit Salmon##104308 |goto 52.55,51.75
step
collect 13 Emperor Salmon##74859 |condition itemcount(74859)>=13
|tip These can be fished from rivers in Krasarang Wilds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Steamer") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
collect 65 Scallions##74843 |condition itemcount(74843)>=65
|tip These can be looted from Saurok enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Steamer") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Fire Spirit Salmon>_
|tip Create campfire if there isn't one nearby.
Reach 576 Way of the Steamer style cooking |skill Way of the Steamer,576 |goto 52.94,51.41
Click here to continue |confirm
step
talk Yan Ironpaw##58715
Learn Banquet of the Steamer |learn Banquet of the Steamer##126499 |goto 52.55,51.76
step
You will need to start collecting Ironpaw Tokens to continue progression
Collect 5 Ironpaw Tokens |condition curcount(402) >= 5
Use the Pandaria Cooking Dailies guide to accomplish this
Click here to load the Pandaria Cooking Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies"
|only if skill("Way of the Steamer") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Wildfowl Breast##74839 |condition itemcount(74839)>=50
|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Steamer") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Emperor Salmon##74859 |condition itemcount(74859)>=50
|tip These can be fished from rivers in Krasarang Wilds.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Steamer") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 250 Jade Squash##74847 |condition itemcount(74847)>=250
|tip These can be looted from Hozen enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Steamer") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
talk Nam Ironpaw##64395
buy 5 100 Year Soy Sauce##74853 |condition itemcount(74853)>=5 |goto 53.53,51.25
|only if skill("Way of the Steamer") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Banquet of the Steamer>_
|tip Create campfire if there isn't one nearby.
Reach 600 Way of the Steamer style cooking |skill Way of the Steamer,600 |goto 52.94,51.41
Click here to continue |confirm
step
_Congratulations!_
You reached level 600 with the Way of the Steamer cooking profession.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Wok",{
achieveid={7301},
author="support@zygorguides.com",
startlevel=85,
endlevel=90,
keywords={"Cooking","Way","of","the","Wok"},
description="This guide will walk you through completing the \"Way of the Wok\" Cooking path.",
},[[
step
_Before Starting This Guide:_
Reach at least 530 Cooking Skill
Click here to load the Cooking Leveling Guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-520 Leveling Guide"
You will also need to unlock the farm through "The Tillers" faction
Click here to load The Tillers Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies"
Click here to continue |confirm
step
talk Sungshin Ironpaw##64231
accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Sliced Peaches |learn Salt and Pepper Shank##125117 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Pandaren Peach##74660 |q 31281 |condition itemcount(74660)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Sliced Peaches |q 31281/1
collect 5 Sliced Peaches##86057 |q 31281/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin So You Want to Be a Chef...##31281 |goto 53.6,51.2
accept Ready for Greatness##31302 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
Learn Rice Pudding |learn Rice Pudding##125122 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |condition itemcount(74851)>=5 |goto 53.6,51.2
buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |condition itemcount(74852)>=5 |goto 53.6,51.2
step
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
|tip Create campfire if there isn't one nearby.
Make #5# Rice Pudding |q 31302/1
collect 5 Rice Pudding##86069 |q 31302/2 |goto 53.6,51.2
step
talk Sungshin Ironpaw##64231
turnin Ready for Greatness##31302 |goto 53.6,51.2
accept Way of the Wok##31470 |goto 53.6,51.2
step
collect 5 Juicycruch Carrot##74841 |q 31470/1
|tip These can be looted from Zandalari Troll enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
talk Anthea Ironpaw##58713
turnin Way of the Wok##31470 |goto 52.68,52.01
accept Agile as a Tiger##31471 |goto 52.68,52.01
step
talk Anthea Ironpaw##58713
Learn Sauteed Carrots |learn Sauteed Carrots##104301 |q 31471/1 |goto 53.2,52.2
step
collect 10 Juicycruch Carrot##74841 |q 31471
|tip These can be looted from Zandalari Troll enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 5 Sauteed Carrots>_
|tip Create campfire if there isn't one nearby.
collect 5 Sauteed Carrots##74643 |q 31471/2 |goto 52.91,51.44
step
talk Anthea Ironpaw##58713
turnin Agile as a Tiger##31471 |goto 52.68,52.01
step
collect 30 Juicycruch Carrot##74841 |q 31471
|tip These can be looted from Zandalari Troll enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Wok") < 550 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create 15 Sauteed Carrots>_
|tip Create campfire if there isn't one nearby.
Reach 550 Way of the Wok style cooking |skill Way of the Wok,550 |goto 52.91,51.44
Click here to continue |confirm
step
talk Anthea Ironpaw##58713
Learn Valley Stir Fry |learn Valley Stirfry##104302 |goto 52.69,51.99
step
collect 13 Reef Octopus##74864 |condition itemcount(74864)>=13
|tip These can be fished from pools in the Jade Forest.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Wok") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
collect 13 Wildfowl Breast##74839 |condition itemcount(74839)>=13
|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Wok") < 576 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create Valley Stir Fry>_
|tip Create campfire if there isn't one nearby.
Reach 576 Way of the Wok style cooking |skill Way of the Wok,576 |goto 52.94,51.41 |or
Click here to continue |confirm
step
talk Anthea Ironpaw##58713
Learn Banquet of the Wok |learn Banquet of the Wok##125594 |goto 52.68,51.99
step
You will need to start collecting Ironpaw Tokens to continue progression
Collect 5 Ironpaw Tokens |condition curcount(402) >= 5
Use the Pandaria Cooking Dailies guide to accomplish this
Click here to load the Pandaria Cooking Dailies guide |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies"
|only if skill("Way of the Wok") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Giant Mantis Shrimp##74857 |condition itemcount(74857)>=50
|tip These can be fished along the coast of The Dread Wastes.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Wok") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 50 Raw Crocolisk Belly##75014 |condition itemcount(75014)>=50
|tip These can be looted from Coldbite Crocolisks in the Dread Wastes.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Wok") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
collect 250 Red Blossom Leek##74844 |condition itemcount(74844)>=250
|tip These can be looted from Jinyu, Sprites and Zandalari enemies.
|tip You can use your farm in Halfhill to grow these.
|tip You can also trade "Ironpaw Tokens" for bags of them.
|tip You can also buy these from the Auction House.
|only if skill("Way of the Wok") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
talk Nam Ironpaw##64395
buy 5 100 Year Soy Sauce##74853 |condition itemcount(74853)>=5 |goto 53.53,51.25
|only if skill("Way of the Wok") < 600 and _G.UnitFactionGroup("player")=="Horde"
step
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Wok>_
|tip Create campfire if there isn't one nearby.
Reach 600 Way of the Wok style cooking |skill Way of the Wok,600 |goto 52.94,51.41
Click here to continue |confirm
step
_Congratulations!_
You reached level 600 with the Way of the Wok cooking profession.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Enchanting",600},
hidden=true,
description="This guide will walk you through leveling your Enchanting skill from 500-600.",
},[[
step
#include "trainer_Enchanting"
skillmax Enchanting,600
step
kill Animated Warrior##67473+
|cast Disenchant##13262
Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 364-437_
collect 92 Spirit Dust##74249 |goto Isle of Thunder 41.7,54.4 |condition skill("Enchanting")>=600
collect 36 Mysterious Essence##74250 |goto Isle of Thunder 41.7,54.4 |condition skill("Enchanting")>=600
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Enchanting"
learn Enchant Bracer - Mastery##104338 |condition skill("Enchanting")>=600
step
#include "trainer_Enchanting"
learn Mysterious Essence##116497 |condition skill("Enchanting")>=600
step
create 9 Enchant Bracer - Mastery##104338,Enchanting,527
step
#include "trainer_Enchanting"
learn Enchant Boots - Greater Precision##104408 |condition skill("Enchanting")>=600
step
create 12 Enchant Boots - Greater Precision##104408,Enchanting,551
step
#include "trainer_Enchanting"
learn Enchant Boots - Greater Haste##104407 |condition skill("Enchanting")>=600
step
#include "trainer_Enchanting"
learn Mysterious Diffusion##118237 |condition skill("Enchanting")>=600
step
#include "trainer_Enchanting"
learn Enchant Chest - Superior Stamina##104397 |condition skill("Enchanting")>=600
step
create 11 Enchant Chest - Superior Stamina##104397,Enchanting,575
step
#include "trainer_Enchanting"
learn Enchant Chest - Glorious Stats##104395 |condition skill("Enchanting")>=600
step
create 5 Enchant Chest - Glorious Stats##104395,Enchanting,600
step
Congratulations, you are now a Zen Master Enchanter!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Engineering 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Engineering",600},
hidden=true,
description="This guide will walk you through leveling your Engineering skill from 500-600.",
},[[
step
#include "trainer_Engineering"
skillmax Engineering,600
|tip You must be at least level 80.
step
#include "trainer_Engineering"
learn Ghost Iron Bolts##127113 |condition skill("Engineering")>=600
step
#include "trainer_Engineering"
learn High-Explosive Gunpowder##127114 |condition skill("Engineering")>=600
step
map Valley of the Four Winds
path follow loose;loop;ants straight;dist 40
path	47.4,45.7	47.4,50.8	42.8,54.2
path	39.2,52.9	34.9,54.1	33.3,58.6
path	29.4,58.6	27.3,51.5	30.0,44.9
path	26.9,35.1	28.8,30.3	32.4,28.3
path	39.4,34.6	35.4,40.2	37.1,44.8
path	42.7,42.1	46.0,25.1	52.2,25.3
path	53.8,26.8	57.3,27.6	59.3,32.5
path	63.7,29.9	63.9,34.5	59.8,42.1
path	52.3,43.6
#include "follow_path_mine"
collect 766 Ghost Iron Ore##72092 |condition skill("Engineering")>=600
|tip You can also buy these materials from the Auction House.
step
kill Suspicious Snow Pile##59967+
collect 74 Windwool Cloth##72988 |goto Kun-Lai Summit/8 59.7,75.0 |condition skill("Engineering")>=600
collect 20 Mote of Harmony##89112 |n |use Mote of Harmony##89112 |goto Kun-Lai Summit/8 59.7,75.0
|tip Turn 10 Mote of Harmony into a Spirit of Harmony
collect 2 Spirit of Harmony##76061 |goto Kun-Lai Summit/8 59.7,75.0 |condition skill("Engineering")>=600
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create 383 Ghost Iron Bar##102165,Mining,383 total |condition skill("Engineering")>=600
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Ghost Iron Bolts##127113,Engineering,94 total |n
collect 188 Ghost Iron Bolts##77467 |condition skill("Engineering")>=600
step
create High-Explosive Gunpowder##127114,Engineering,101 total |n
collect 202 High-Explosive Gunpowder##77468 |condition skill("Engineering")>=600
skill Engineering,550
step
#include "trainer_Engineering"
learn Mist-Piercing Goggles##127130 |condition skill("Engineering")>=600
step
#include "trainer_Engineering"
learn Thermal Anvil##127131 |condition skill("Engineering")>=600
step
#include "trainer_Engineering"
learn Tinker's Kit##131563 |condition skill("Engineering")>=600
step
#include "trainer_Engineering"
learn Ghost Iron Dragonling##127134 |condition skill("Engineering")>=600
step
#include "maincity_anvil"
create Ghost Iron Dragonling##127134,Engineering,575
step
#include "maincity_anvil"
create Tinker's Kit##131563,Engineering,580
step
#include "maincity_anvil"
create Thermal Anvil##127131,Engineering,595
step
#include "maincity_anvil"
create Mist-Piercing Goggles##127130,Engineering,600
step
Congratulations, you are now a Zen Master Engineer!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\Leveling Guides\\First Aid 525-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","First Aid",600},
hidden=true,
description="This guide will walk you through leveling your First Aid skill from 525-600.",
},[[
step
#include "trainer_FirstAid"
skillmax First Aid,600
|tip You must be at least level 85.
step
#include "trainer_FirstAid"
learn Windwool Bandage##102697
step
kill Springtail Leaper##57415+, Springtail Gnasher##57413+
collect 130 Windwool Cloth##72988 |goto Valley of the Four Winds 43.9,38.6 |condition skill("First Aid")>=600
|tip You can also buy these materials from the Auction House.
step
create Windwool Bandage##102697,First Aid,550
step
#include "trainer_FirstAid"
learn Heavy Windwool Bandage##102698 |condition skill("First Aid")>=600
step
create Heavy Embersilk Bandage##102698,First Aid,600
step
Congratulations, you're now a Zen Master in First Aid!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Fishing 525-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Fishing",600},
hidden=true,
description="This guide will walk you through leveling your Fishing skill from 525-600.",
},[[
step
label "fish_525-600"
#include "trainer_Fishing"
skillmax Fishing,600
step
Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
Stand on the end of this wooden dock
Use your Fishing skill to fish in the water |cast Fishing##131474
skill Fishing,600 |goto Orgrimmar 66.5,41.5
step
label "fish_600"
Congratulations, you are now a Zen Master Fisherman!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 525-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Herbalism",600},
hidden=true,
description="This guide will walk you through leveling your Herbalism skill from 525-600.",
},[[
step
#include "trainer_Herbalism"
skillmax Herbalism,600
step
map Valley of the Four Winds
path follow loose;loop;ants straight;dist 40
path	81.4,21.5	76.4,29.2	71.1,29.5
path	69.0,31.0	70.8,34.4	70.6,41.8
path	65.1,60.1	57.6,65.6	50.8,58.6
path	47.4,64.9	46.9,61.3	42.5,54.3
path	33.6,62.1	28.1,72.7	25.7,78.4
path	24.4,56.0	21.9,53.9	12.8,44.7
path	14.3,41.2	14.8,35.8	19.6,34.4
#include "follow_path_herbs"
collect Green Tea Leaf##72234 |n
skill Herbalism,545
step
map Valley of the Four Winds
path follow loose;loop;ants straight;dist 40
path	86.4,19.2	88.4,25.7	88.4,31.4
path	85.3,32.0	85.9,35.5	71.1,54.9
path	62.4,67.6
path	59.1,37.3	51.5,32.4	35.3,42.4
path	30.9,51.4	26.1,45.2	37.9,31.8
path	41.2,36.0	47.0,28.8	51.9,29.1
path	57.2,27.3	55.7,33.0
path	62.9,37.3	64.7,31.4	59.0,28.1
#include "follow_path_herbs"
collect Silkweed##72235 |n
skill Herbalism,590
step
map Kun-Lai Summit
path follow loose;loop;ants straight;dist 40
path	53.9,58.1	50.9,51.6	49.9,52.4
path	50.1,57.1	49.6,63.7	48.1,64.3
path	45.4,65.8	47.6,61.0	47.8,55.6
#include "follow_path_herbs"
collect Snow Lily##79010 |n
skill Herbalism,600
step
Congratulations, you are now a Zen Master Herbalist!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Inscription 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Inscription",600},
hidden=true,
description="This guide will walk you through leveling your Inscription skill from 500-600.",
},[[
step
#include "trainer_Inscription"
skillmax Inscription,600
|tip You must be at least level 85.
step
#include "trainer_Inscription"
learn Ink of Dreams##111645 |condition skill("Inscription")>=600
step
#include "vendor_Inscription"
buy 68 Light Parchment##39354 |condition skill("Inscription")>=600
step
#include "GT_SW_Path"
#include "follow_path_herbs"
collect Green Tea leaf##72234 |n
collect Silkweed##72235 |n
Gather around _{_G.max(0 , (250-itemcount(72234,72235)))}_ herbs in stacks of 5
Mill the herbs you gathered |cast Milling##51005
collect 136 Shadow Pigment##79251 |condition skill("Inscription")>=600
step
create 68 Ink of Dreams##111645,Inscription,68 total |n
create 12 Starlight Ink##111646 |condition skill("Inscription")>=600
skill Inscription,545
step
create 22 Research: Ink of Dreams##165467,Inscription,596
step
#include "trainer_Inscription"
learn Greater Tiger Fang Inscription##121192 |condition skill("Inscription")>=600
step
create 2 Greater Tiger Fang Inscription##121192,Inscription,600
step
Congratulations, you are now a Zen Master Inscriptionist!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Jewelcrafting",600},
hidden=true,
description="This guide will walk you through leveling your Jewelcrafting skill from 500-600.",
},[[
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,600
step
map Krasarang Wilds
path follow loose;loop;ants straight;dist 40
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
|cast Prospecting##31252
collect 5 Lapis Lazuli##76133 |condition skill("Jewelcrafting")>=600
collect 5 Sunstone##76134 |condition skill("Jewelcrafting")>=600
collect 5 Tiger Opal##76130 |condition skill("Jewelcrafting")>=600
collect 5 Alexandrite##76137 |condition skill("Jewelcrafting")>=600
collect 5 Pandarian Garnet##76136 |condition skill("Jewelcrafting")>=600
collect 5 Roguestone##76135 |condition skill("Jewelcrafting")>=600
Gather _{_G.max(0 , (58-itemcount(76133,76134,76130,76137,76136,76135)))}_ gems
You will also need 5 additional gems of each kind listed above
collect 13 Primordial Ruby##76131 |condition skill("Jewelcrafting")>=600
step
#include "trainer_Jewelcrafting"
learn Ornate Band##122661 |condition skill("Jewelcrafting")>=600
step
#include "vendor_Jewelcrafting"
buy 9 Jeweler's Setting##52188 |condition skill("Jewelcrafting")>=600
step
create Ornate Band##122661,Jewelcrafting,512
step
#include "trainer_Jewelcrafting"
learn Shadowfire Necklace##122662 |condition skill("Jewelcrafting")>=600
step
create Shadowfire Necklace##122662,Jewelcrafting,527
step
#include "trainer_Jewelcrafting"
learn Artful Tiger Opal##107646 |condition skill("Jewelcrafting")>=600
learn Etched Roguestone##107630 |condition skill("Jewelcrafting")>=600
learn Lightning Alexandrite##107604 |condition skill("Jewelcrafting")>=600
learn Rigid Lapis Lazuli##107617 |condition skill("Jewelcrafting")>=600
step
Create any of the following:
create Artful Tiger Opal##107646,Jewelcrafting,530
create Etched Roguestone##107630,Jewelcrafting,530
create Lightning Alexandrite##107604,Jewelcrafting,530
create Rigid Lapis Lazuli##107617,Jewelcrafting,530
step
#include "trainer_Jewelcrafting"
learn Delicate Pandarian Garnet##107624 |condition skill("Jewelcrafting")>=600
step
Create any of the following:
create Artful Tiger Opal##107646,Jewelcrafting,535
create Etched Roguestone##107630,Jewelcrafting,535
create Lightning Alexandrite##107604,Jewelcrafting,535
create Rigid Lapis Lazuli##107617,Jewelcrafting,535
create Delicate Pandarian Garnet##107624,Jewelcrafting,535
step
#include "trainer_Jewelcrafting"
learn Fractured Sunstone##107640 |condition skill("Jewelcrafting")>=600
step
Create any of the following:
create Artful Tiger Opal##107646,Jewelcrafting,580
create Etched Roguestone##107630,Jewelcrafting,580
create Lightning Alexandrite##107604,Jewelcrafting,580
create Rigid Lapis Lazuli##107617,Jewelcrafting,580
create Delicate Pandarian Garnet##107624,Jewelcrafting,580
create Fractured Sunstone##107640,Jewelcrafting,580
step
create Primordial Ruby##131686,Jewelcrafting,580
step
The research you performed in the previous step has given you a new pattern for Yellow Gems. Create that Yellow gem until you are 600 Jewelcrafting
skill Jewelcrafting,600
step
Congratulations, you are now a Zen Master Jewelcrafter!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Leatherworking",600},
hidden=true,
description="This guide will walk you through leveling your Leatherworking skill from 500-600.",
},[[
step
#include "trainer_Leatherworking"
skillmax Leatherworking,600
|tip You must be at least level 85.
step
map The Jade Forest
path follow loose;loop;ants straight;dist 40
path	30.1,12.6	30.2,11.3	30.8,11.1
path	31.0,9.7	32.3,10.4	32.0,13.1
path	31.1,15.9
kill Sha-Infested Prowler##66668+
collect 125 Sha-Touched Leather##72162 |condition skill("Leatherworking")>=600
|tip You will need 470 Skinning to effectively gather these.
step
map Dread Wastes
path follow loose;loop;ants straight;dist 40
path	27.2,26.0	28.0,27.6	27.5,30.2
path	27.0,33.4	27.1,37.2	28.1,42.9
path	30.9,51.7	28.1,50.1	26.3,47.3
path	26.1,43.4	25.4,38.4	25.6,34.6
path	24.3,28.1
kill Onyx Venomtail##63586+, Dread Scarab##63587+, Ruby Venomtail##63588+
collect 695 Exotic Leather##72120 |condition skill("Leatherworking")>=600
|tip You will need 590 Skinning to effectively gather these.
collect 10 Mote of Harmony##89112 |n
Right-Click the _Motes of Harmony_ in your bags to create a _Spirit of Harmony_.
collect 1 Spirit of Harmony##76061 |condition skill("Leatherworking")>=600
step
#include "trainer_Leatherworking"
learn Exotic Leather##124627 |condition skill("Leatherworking")>=600
step
create Exotic Leather##124627,Leatherworking,525
step
#include "trainer_Leatherworking"
learn Sha Armor Kit##124628 |condition skill("Leatherworking")>=600
step
create Sha Armor Kit##124628,Leatherworking,535
step
#include "trainer_Leatherworking"
learn Misthide Belt##124578 |condition skill("Leatherworking")>=600
step
create Misthide Belt##124578,Leatherworking,550
step
#include "trainer_Leatherworking"
learn Misthide Gloves##124574 |condition skill("Leatherworking")>=600
step
create Misthide Gloves##124574,Leatherworking,560
step
talk Krogo Darkhide##64054
buy 1 Pattern: Contender's Leather Bracers##86250 |goto Shrine of Two Moons/1 31.4,47.1 |condition _G.IsSpellKnown(124608) or skill("Leatherworking")>=600
step
use Pattern: Contender's Leather Bracers##86250
learn Contender's Leather Bracers##124608 |condition skill("Leatherworking")>=600
step
create Contender's Leather Bracers##124608,Leatherworking,600
step
Congratulations, you are now a Zen Master Leatherworker!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mining 525-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Mining",600},
hidden=true,
description="This guide will walk you through leveling your Mining skill from 525-600.",
},[[
step
#include "trainer_Mining"
skillmax Mining,600
step
#include "trainer_Mining"
learn Smelt Ghost Iron##102165
step
map Krasarang Wilds
path follow loose;loop;ants straight;dist 40
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
skill Mining,600
step
label "min_600"
Congratulations, you are now a level 600 Miner!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mining with Smelting 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Mining",600},
hidden=true,
description="This guide will walk you through leveling your Mining skill from 500-600.",
},[[
step
#include trainer_Mining
skillmax Mining,600
step
#include trainer_Mining
learn Smelt Ghost Iron##102165
step
map Krasarang Wilds
path follow loose;loop;ants straight;dist 60
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
skill Mining,600
step
Congratulations, you are now a level 600 Miner!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Skinning 525-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Skinning",600},
hidden=true,
description="This guide will walk you through leveling your Skinning skill from 525-600.",
},[[
step
#include trainer_Skinning
skillmax Skinning,600
step
map Townlong Steppes
path follow loose;loop;ants straight;dist 40
path	58.6,52.8	59.2,57.7	56.9,66.3
path	54.3,66.3	53.5,65.1	51.3,62.3
path	50.9,56.8	52.6,54.3	54.7,50.4
Kill any beasts you find in the area.
skill Skinning,600
step
label "skn_600"
Congratulations, you are now a Zen Master Skinner!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 500-600 Leveling Guide",{
author="support@zygorguides.com",
completion={"skill","Tailoring",600},
hidden=true,
description="This guide will walk you through leveling your Tailoring skill from 500-600.",
},[[
step
#include "trainer_Tailoring"
skillmax Tailoring,600 |tip You must be at least level 80.
step
#include "trainer_Tailoring"
learn Bolt of Windwool Cloth##125551 |condition skill("Tailoring")>=600
step
map Townlong Steppes/0
path follow loose;loop;ants straight;dist 60
path	26.2,40.7	26.0,45.4	24.2,48.9
path	23.4,52.3	21.4,54.3	18.4,50.7
path	17.8,46.0	17.5,41.8	20.9,40.3
Kill the Sra'thik mobs along the path
collect 345 Windwool Cloth##72988 |condition skill("Tailoring")>=600
collect 10 Mote of Harmony##89112 |n
Combine 10 Motes of Harmony into a Spirit of Harmony |use Mote of Harmony##89112
collect 1 Spirit of Harmony##76061 |condition skill("Tailoring")>=600
step
create Bolt of Windwool Cloth##125551,Tailoring,69 total |n
collect 69 Bolt of Windwool Cloth##82441 |condition skill("Tailoring")>=600
skill Tailoring,535
step
#include "trainer_Tailoring"
learn Pearlescent Spellthread##125552 |condition skill("Tailoring")>=600
step
create 5 Pearlescent Spellthread##125552,Tailoring,555
step
#include "trainer_Tailoring"
learn Windwool Hood##125523 |condition skill("Tailoring")>=600
step
create 5 Windwool Hood##125523,Tailoring,580
step
talk Raishen the Needle##64052
buy Pattern: Contender's Satin Amice##86361 |goto Vale of Eternal Blossoms/3 64.7,44.2 |condition _G.IsSpellKnown(125540) or skill("Tailoring")>=600
only Alliance
step
use Pattern: Contender's Satin Amice##86361
learn Contender's Satin Amice##125540 |condition skill("Tailoring")>=600
only Alliance
step
talk Esha the Loommaiden##64051
buy Pattern: Contender's Satin Amice##86361 |goto Shrine of Two Moons/1 32.5,54.0 |condition _G.IsSpellKnown(125540) or skill("Tailoring")>=600
only Alliance
only Horde
step
use Pattern: Contender's Satin Amice##86361
learn Contender's Satin Amice##125540 |condition skill("Tailoring")>=600
only Horde
step
create Contender's Satin Amice##125540,Tailoring,600
step
label "tl_600"
Congratulations! You have leveled Tailoring to 600!
]])
