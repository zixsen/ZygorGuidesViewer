local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingNMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Pandaren (1-12)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\WanderingIsle",
condition_suggested=function() return raceclass('Pandaren') and level<=5 end,
startlevel=1,
endlevel=12,
},[[
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30038 |goto The Wandering Isle/0 56.7,18.2
|only Pandaren Warrior
step
click Weapon Rack##210016
Use the Trainee's Sword |use Trainee's Sword##73210
Loot and Equip a Trainee's Sword |q 30038/1 |goto 56.9,19.7
|only Pandaren Warrior
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30038 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Warrior
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30034 |goto 56.7,18.2
|only Pandaren Hunter
step
click Weapon Rack##210016
Use the Trainee's Crossbow |use Trainee's Crossbow##73211
Loot and Equip a Trainee's Crossbow |q 30034/1 |goto 56.9,19.7
|only Pandaren Hunter
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30034 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Hunter
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30036 |goto 56.7,18.2
|only Pandaren Rogue
step
click Weapon Rack##210016
Use the Trainee's Dagger |use Trainee's Dagger##73208
Loot and Equip the Mainhand Dagger |q 30036/1 |goto 56.9,19.7
|only Pandaren Rogue
step
Use the Trainee's Dagger |use Trainee's Dagger##73212
Equip the Offhand Dagger |q 30036/2
|only Pandaren Rogue
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30036
accept The Lesson of the Sandy Fist##29406 |next "next01"
|only Pandaren Rogue
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30035 |goto 56.7,18.2
|only Pandaren Priest
step
click Weapon Rack##210016
Use the Trainee's Mace |use Trainee's Mace##73207
Loot and Equip a Trainee's Mace |q 30035/1 |goto 56.9,19.7
|only Pandaren Priest
step
Use the Trainee's Book of Prayers |use Trainee's Book of Prayers##76393
Equip the Trainee's Book of Prayers |q 30035/2
|only Pandaren Priest
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30035 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Priest
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30037 |goto 56.7,18.2
|only Pandaren Shaman
step
click Weapon Rack##210016
Use the Trainee's Axe |use Trainee's Axe##76391
Loot and Equip a Trainee's Axe |q 30037/1 |goto 56.9,19.7
|only Pandaren Shaman
step
Use the Trainee's Shield |use Trainee's Shield##73213
Equip the Trainee's Shield |q 30037/2
|only Pandaren Shaman
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30037 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Shaman
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30033 |goto 56.7,18.2
|only Pandaren Mage
step
click Weapon Rack##210016
Use the Trainee's Spellblade |use Trainee's Spellblade##76390
Loot and Equip a Trainee's Spellblade |q 30033/1 |goto 56.9,19.7
|only Pandaren Mage
step
Use the Trainee's Hand-Fan |use Trainee's Hand-Fan##76392
Equip a Trainee's Hand-Fan |q 30033/2
|only Pandaren Mage
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30033 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |goto 56.7,18.2 |next "next01"
|only Pandaren Mage
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30027 |goto 56.7,18.2
|only Pandaren Monk
step
click Weapon Rack##210016
Use the Trainee's Handwrap |use Trainee's Handwrap##77279
Use the Trainee's Handwrap |use Trainee's Handwrap##77278
Loot and Equip the Trainee's Handwrap |q 30027/1 |goto 56.9,19.7
Loot and Equip a second Trainee's Handwrap |q 30027/2 |goto 56.9,19.7
|only Pandaren Monk
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30027 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Monk
step
label "next01"
kill 5 Training Target##53714 |q 29406/1 |goto 57.4,19.0
|tip They look like green punching bags around this area.
step
talk Master Shang Xi##53566
turnin The Lesson of the Sandy Fist##29406 |goto  56.7,18.2
accept The Lesson of Stifled Pride##29524 |goto  56.7,18.2
step
Kill Trainee enemies around this area
|tip They are inside this building.
Defeat #6# Sparring Trainees |q 29524/1 |goto 60.2,19.4
step
talk Master Shang Xi##53566
turnin The Lesson of Stifled Pride##29524 |goto 59.7,19.1
accept The Lesson of the Burning Scroll##29408 |goto 59.7,19.1
step
Run up the stairs |goto 60.0,18.5 < 7 |walk |n
Follow the path |goto 60.71,18.99 < 7 |walk |n
Continue following the path |goto 60.41,20.20 < 7 |walk |n
Follow the path |goto 59.63,19.75 < 7 |c |q 29408
step
Run up the stairs |goto 60.01,18.57 < 7 |walk
Follow the path |goto 60.60,19.12 < 7 |walk
click Edict of Temperance##210986
|tip It looks like a tall white scroll hanging on a large stone object.
Burn the Edict of Temperance |q 29408/2 |goto 59.96,20.41
step
talk Master Shang Xi##53566
|tip Run or jump down to the bottom of this building.
turnin The Lesson of the Burning Scroll##29408 |goto 59.7,19.1
accept The Disciple's Challenge##29409 |goto 59.7,19.1
step
Run down the stairs |goto 61.75,20.15 < 15 |only if walking
Cross the bridge |goto 65.15,22.55 < 15 |only if walking
kill Jaomin Ro##54611
Defeat Jaomin Ro |q 29409/1 |goto 67.8,22.7
step
Run onto the bridge |goto 66.76,23.01 < 15 |only if walking
talk Master Shang Xi##53566
turnin The Disciple's Challenge##29409 |goto 66.0,22.8
accept Aysa of the Tushui##29410 |goto 66.0,22.8
step
Follow the path |goto 54.5,29.3 < 30 |only if walking
talk Merchant Lorvo##54943
turnin Aysa of the Tushui##29410 |goto 55.1,32.8
accept Items of Utmost Importance##29424 |goto 55.1,32.8
accept The Missing Driver##29419 |goto 55.1,32.8
stickystart "Stolen_Training_Supplies"
step
Follow the path |goto 53.6,24.6 < 30 |only if walking
kill Amberleaf Scamp##54130+
Rescue the Cart Driver |q 29419/1 |goto 54.0,21.0
step
label "Stolen_Training_Supplies"
kill Amberleaf Scamp##54130+
collect 6 Stolen Training Supplies##72071 |q 29424/1 |goto 54.0,21.0
step
Follow the path |goto 54.5,29.3 < 30 |only if walking
talk Merchant Lorvo##54943
turnin Items of Utmost Importance##29424 |goto 55.1,32.4
turnin The Missing Driver##29419 |goto 55.1,32.4
step
talk Aysa Cloudsinger##54567
accept The Way of the Tushui##29414 |goto 55.1,32.5
step
Follow the path |goto 55.7,30.4 < 15 |only if walking
Enter the cave |goto 57.6,34.7 < 15 |walk
kill Amberleaf Troublemaker##59637+
|tip They continuously run into the cave.
Protect Aysa While She Meditates |q 29414/1 |goto 57.8,36.3
|tip You can see a progress bar in your quest tracking area.
step
talk Master Shang Xi##54608
turnin The Way of the Tushui##29414 |goto 57.5,34.7
accept Ji of the Huojin##29522 |goto 57.5,34.7
step
Follow the path |goto 56.36,31.09 < 20 |only if walking
talk Ji Firepaw##54568
turnin Ji of the Huojin##29522 |goto 50.2,21.3
accept The Way of the Huojin##29417 |goto 50.2,21.3
step
Kill Fe-Feng enemies around this area
Slay #8# Hozen Attackers |q 29417/1 |goto 50.5,20.2
step
talk Ji Firepaw##54568
turnin The Way of the Huojin##29417 |goto 50.2,21.2
accept Kindling the Fire##29418 |goto 50.2,21.2
accept Fanning the Flames##29523 |goto 50.2,21.2
stickystart "Dry_Dogwood_Root"
step
Use the Wind Stone |use Wind Stone##72109
kill Living Air##54631
|tip It appears after using the stone.
collect Fluttering Breeze##72112 |q 29523/1 |goto 47.3,31.3
step
label "Dry_Dogwood_Root"
click Loose Dogwood Root##209327
|tip They look like brown pieces of root sticking out of the ground near the base of trees around this area.
collect 5 Dry Dogwood Root##72111 |q 29418/1 |goto 47.3,31.3
step
Follow the path |goto 49.94,24.78 < 30 |only if walking
talk Ji Firepaw##54568
turnin Kindling the Fire##29418 |goto 50.2,21.3
turnin Fanning the Flames##29523 |goto 50.2,21.3
step
talk Master Shang Xi##54609
accept The Spirit's Guardian##29420 |goto 50.3,21.5
step
Cross the bridge |goto 48.87,20.81 < 15 |only if walking
Follow the path up |goto 45.0,22.4 < 30 |only if walking
Enter the cave |goto 41.5,25.1 < 10 |walk
Run up the path |goto 40.8,23.2 < 10 |walk
Continue up the path |goto 40.2,22.4 < 10 |walk
talk Master Li Fei##54135
turnin The Spirit's Guardian##29420 |goto 38.8,25.5
accept The Challenger's Fires##29664 |goto 38.8,25.5
step
click Brazier of the Flickering Flame
Light the Challenge Torch |q 29664/1 |goto 38.7,25.4
step
click Brazier of the Violet Flame
Light the Violet Brazier |q 29664/4 |goto 38.3,24.8
step
click Brazier of the Red Flame
Light the Red Brazier |q 29664/2 |goto 39.0,23.5
step
click Brazier of the Blue Flame
Light the Blue Brazier |q 29664/3 |goto 39.2,25.4
step
talk Master Li Fei##54135
turnin The Challenger's Fires##29664 |goto 38.8,25.5
accept Only the Worthy Shall Pass##29421 |goto 38.8,25.5
step
kill Master Li Fei##54734
Defeat Master Li Fei |q 29421/1 |goto 38.9,24.4
step
talk Master Li Fei##54135
turnin Only the Worthy Shall Pass##29421 |goto 38.8,25.5
accept Huo, the Spirit of Fire##29422 |goto 38.8,25.5
step
Follow the path |goto 38.71,26.53 < 10 |walk
Use Huo's Offering |use Huo's Offerings##72583
Reignite the Spirit of Fire |q 29422/1 |goto 39.4,29.6
step
talk Huo##54787
turnin Huo, the Spirit of Fire##29422 |goto 39.4,29.6
accept The Passion of Shen-zin Su##29423 |goto 39.4,29.6
step
Follow the path down |goto 39.7,27.5 < 10 |walk
Leave the cave |goto 41.5,25.1 < 10 |walk
Run up the stairs |goto 51.0,30.7 < 10 |only if walking
Continue up the stairs |goto 52.5,36.9 < 10 |only if walking
Go through the doorway |goto 51.6,40.2 < 10 |only if walking
Bring the Spirit of Fire to the Temple of Five Dawns |q 29423/1 |goto 51.4,46.4
step
talk Master Shang Xi##54786
turnin The Passion of Shen-zin Su##29423 |goto 51.4,46.4
accept The Singing Pools##29521 |goto 51.4,46.4
step
Leave the building |goto 53.3,47.5 < 10 |walk
Run down the path |goto 57.2,46.8 < 20 |only if walking
talk Jojo Ironbrow##55021
accept Something Tough##29662 |goto 63.5,41.9
step
talk Aysa Cloudsinger##54975
turnin The Singing Pools##29521 |goto 65.6,42.6
accept The Lesson of Dry Fur##29661 |goto 65.6,42.6
accept The Lesson of the Balanced Rock##29663 |goto 65.6,42.6
step
clicknpc Balance Pole##66946
|tip They look like wooden poles with red rope around them all around this area in the water of this pond.
kill Tushui Monk##55019+
|tip Click other Balance Poles to move around.
Defeat #6# Tushui Monks |q 29663/1 |goto 63.6,44.6
step
click Training Bell
|tip It looks like a dark colored bell in a wooden housing on a big stone in the middle of the pond.
|tip Click other Balance Poles to move around.
Ring the Training Bell |q 29661/1 |goto 61.4,47.8
step
click Hard Tearwood Reeds##209507
|tip Jump down into the water.
|tip They look like small bamboo stalks with green leaves at the top of them, sticking up out of the water around this area.
collect 8 Hard Tearwood Reed##73178 |q 29662/1 |goto 61.1,46.8
step
Leave the water |goto 62.9,43.5 < 10 |only if walking
talk Jojo Ironbrow##55021
turnin Something Tough##29662 |goto 63.5,41.9
step
talk Aysa Cloudsinger##54975
turnin The Lesson of Dry Fur##29661 |goto 65.6,42.6
turnin The Lesson of the Balanced Rock##29663 |goto 65.6,42.6
accept Finding an Old Friend##29676 |goto 65.6,42.6
step
Run up the path |goto 70.1,40.7 < 10 |only if walking
Continue up the path |goto 71.8,38.1 < 10 |only if walking
talk Old Man Liang##55020
turnin Finding an Old Friend##29676 |goto 70.6,38.7
accept The Sun Pearl##29677 |goto 70.6,38.7
accept The Sting of Learning##29666 |goto 70.6,38.7
step
kill 6 Water Pincer##60411+ |q 29666/1 |goto 72.9,41.4
step
click Ancient Clam##209584
|tip It looks like a giant clam underwater.
collect Sun Pearl##73184 |q 29677/1 |goto 76.3,47.0
step
talk Old Man Liang##55020
turnin The Sun Pearl##29677 |goto 78.5,42.9
turnin The Sting of Learning##29666 |goto 78.5,42.9
accept Shu, the Spirit of Water##29678 |goto 78.5,42.9
step
Jump onto the big white rock |goto 79.6,41.9 < 5
Follow the path |goto 79.9,39.8 < 10
Cross to the Pool of Reflection |q 29678/1 |goto 79.3,37.6
step
Use the Sun Pearl |use Sun Pearl##73791
Coax Shu, the Water Spirit |q 29678/2 |goto 79.3,37.6
step
Click the Complete Quest Box:
turnin Shu, the Spirit of Water##29678
accept A New Friend##29679
step
Play with the Spirit of Water #5# Times |q 29679/1 |goto 79.3,37.6
|tip Walk into the blue splashing spots in the water and shoot up into the air.
step
talk Aysa Cloudsinger##54975
turnin A New Friend##29679 |goto 79.8,39.3
accept The Source of Our Livelihood##29680 |goto 79.8,39.3
step
clicknpc Delivery Cart##57710
|tip It looks like a wooden wagon sitting on the side of the road with a grey ox in front of it.
Hitch a Ride on the Cart |invehicle |c |q 29680 |goto 79.1,45.3
step
Ride the Cart to the Dai-Lo Farmstead |goto 70.68,65.85 < 20 |c |q 29680
step
talk Ji Firepaw##55477
turnin The Source of Our Livelihood##29680 |goto 68.9,65.0
accept Rascals##29769 |goto 68.9,65.0
step
talk Gao Summerdraft##55479
accept Still Good!##29770 |goto 68.1,66.4
stickystart "Plump_Virmen"
step
click Uprooted Turnip##209640
|tip They look like round purple-pink vegetables with long leafy stems sitting on the ground all around this area.
collect 3 Uprooted Turnip##74295+ |q 29770/1 |goto The Wandering Isle/0 70.4,78.7
step
Enter the hole in the ground |goto 71.6,70.5 < 10 |walk
kill Plump Carrotcruncher##55504+
click Stolen Carrot##209641
|tip They look like big orange carrots laying on the ground inside this tunnel.
collect 3 Stolen Carrot##74296 |q 29770/2 |goto 75.1,74.7
step
Follow the path up |goto 76.5,71.0 < 10 |walk
click Pilfered Pumpkin##209645
|tip They look like various colored pumpkins at the base of trees around this area.
collect 3 Pilfered Pumkin##74297+ |q 29770/3 |goto 78.9,70.8
step
label "Plump_Virmen"
kill 10 Plump Virmen##55483 |q 29769/1 |goto 71.0,71.6
step
Follow the path up |goto 72.0,65.9 < 20 |only if walking
talk Gao Summerdraft##55479
turnin Still Good!##29770 |goto 68.1,66.4
step
talk Ji Firepaw##55477
turnin Rascals##29769 |goto 68.9,65.0
accept Missing Mallet##29768 |goto 68.9,65.0
step
talk Jojo Ironbrow##55478
accept Something Tougher##29771 |goto 69.1,66.7
step
click Dai-Lo Recess Mallet##214406
|tip It looks like a wooden handle with a yellow ball at the top, sitting on a wooden barrel in front of this small building.
collect Dai-Lo Recess Mallet##74298 |q 29768/1 |goto 62.63,77.03
step
click Discarded Wood Plank##209646+
|tip They look like small piles of brown wooden boards on the ground nearby this house around this area.
collect 12 Discarded Wood Plank##74301 |q 29771/1 |goto 63.7,77.2
step
Follow the path |goto 64.35,76.58 < 20 |only if walking
Run up the path |goto 68.0,69.2 < 20 |only if walking
talk Jojo Ironbrow##55478
turnin Something Tougher##29771 |goto 69.1,66.7
step
talk Ji Firepaw##55477
turnin Missing Mallet##29768 |goto 68.9,65.0
accept Raucous Rousing##29772 |goto 68.9,65.0
step
click Break Gong##209626
|tip It looks like a dark colored metal circle hanging from a wooden structure.
Ring the Town Gong |q 29772/1 |goto 69.0,64.9
step
talk Ji Firepaw##55477
turnin Raucous Rousing##29772 |goto 68.9,65.0
accept Not In the Face!##29774 |goto 68.9,65.0
step
talk Shu##55556
Tell it _"Shu, can you wake up Wuguo for me?"_
Ask Shu for Help |q 29774/1 |goto 69.0,62.9
step
Watch the dialogue
Wake Wugou |q 29774/2 |goto 68.9,65.3
step
talk Ji Firepaw##55477
turnin Not In the Face!##29774 |goto 68.9,65.0
accept The Spirit and Body of Shen-zin Su##29775 |goto 68.9,65.0
step
clicknpc Delivery Cart##59497
|tip It looks like a wooden wagon sitting on the side of the road with a grey ox in front of it.
Hitch a Ride on the Cart |invehicle |c |q 29775 |goto 67.9,67.2
step
Ride the Cart to the Temple of Five Dawns |goto 51.96,58.58 < 20 |c |q 29775
step
Run up the stairs |goto 51.3,57.3 < 10 |only if walking
talk Master Shang Xi##54786
turnin The Spirit and Body of Shen-zin Su##29775 |goto 51.6,48.3
accept Morning Breeze Village##29776 |goto 51.6,48.3
step
Cross the bridge |goto 50.1,48.7 < 15 |only if walking
Follow the path |goto 47.54,51.02 < 15 |only if walking
Cross the bridge |goto 44.86,51.38 < 15 |only if walking
Follow the path |goto 36.1,51.4 < 15 |only if walking
Go through the doorway |goto 30.8,44.5 < 15 |only if walking
Follow the path down |goto 30.24,38.93 < 15 |only if walking
talk Ji Firepaw##55583
turnin Morning Breeze Village##29776 |goto 31.0,36.8
accept Rewritten Wisdoms##29778 |goto 31.0,36.8
step
Follow the path up |goto 30.24,38.19 < 15 |only if walking
talk Elder Shaopai##55588
accept Tools of the Enemy##29777 |goto 31.7,39.7
step
talk Jojo Ironbrow##55585
accept Something Really Tough##29783 |goto 29.9,39.8
stickystart "Abandoned_Stone_Blocks"
stickystart "Paint_Soaked_Brushes"
step
click Defaced Scroll of Wisdom##209663
|tip They look like white banners with red paint on them hanging on large boulders around this area.
Burn #5# Defaced Scrolls of Wisdom |q 29778/1 |goto 32.0,52.8
step
label "Abandoned_Stone_Blocks"
click Abandoned Stone Block##209665+
|tip They look like piles of gray blocks on the ground around this area.
collect 12 Abandoned Stone Block##74624 |q 29783/1 |goto 32.0,52.8
step
label "Paint_Soaked_Brushes"
kill Hozen Wiseman##55601+
collect 8 Paint Soaked Brush##74615 |q 29777/1 |goto 32.0,52.8
step
Go through the doorway |goto 30.8,44.5 < 15 |only if walking
talk Elder Shaopai##55588
turnin Tools of the Enemy##29777 |goto 31.7,39.7
step
talk Jojo Ironbrow##55585
turnin Something Really Tough##29783 |goto 29.9,39.8
step
talk Ji Firepaw##55583
turnin Rewritten Wisdoms##29778 |goto 31.0,36.7
accept The Direct Solution##29779 |goto 31.0,36.7
accept Do No Evil##29780 |goto 31.0,36.7
accept Monkey Advisory Warning##29781 |goto 31.0,36.7
step
Run up the path |goto 30.21,38.20 < 15 |only if walking
Follow the path |goto 30.02,39.69 < 15 |only if walking
Follow the path up |goto 28.65,39.25 < 15 |only if walking
click Jade Tiger Pillar##209673
|tip It looks like a metal column with a green tiger head at the top of it.
accept Something Too Tough?##29782 |goto 26.5,33.7
stickystart "Stolen_Firework_Bundles"
stickystart "FeFeng_Hozen"
step
Follow the path |goto 26.67,31.68 < 15 |only if walking
Follow the path |goto 24.17,30.80 < 15 |only if walking
kill Ruk-Ruk##55634 |q 29780/1 |goto 21.0,34.5
step
label "Stolen_Firework_Bundles"
click Stolen Fireworks##209669
|tip They look like small dark colored pots on wooden slabs on the ground around this area.
collect 8 Stolen Firework Bundle##74631 |q 29781/1 |goto 24.23,30.71
step
label "FeFeng_Hozen"
Kill Fe-Feng enemies around this area
Slay #20# Fe-Feng Hozen |q 29779/1 |goto 24.23,30.71
step
_Next to you:_
talk Ji Firepaw##56134
turnin The Direct Solution##29779
turnin Do No Evil##29780
turnin Monkey Advisory Warning##29781
accept Balanced Perspective##29784
step
Follow the path up |goto 25.73,35.19 < 15 |only if walking
Run down the path |goto 27.77,37.28 < 15 |only if walking
talk Jojo Ironbrow##55585
turnin Something Too Tough?##29782 |goto 29.9,39.8
step
Follow the path down |goto 30.21,38.47 < 15 |only if walking
Walk carefully on the brown rope |goto 31.1,36.8 < 5 |only if walking
Continue on the brown rope |goto 32.18,36.36 < 5 |only if walking
Walk on the brown rope |goto 32.89,37.15 < 5 |only if walking
talk Aysa Cloudsinger##55595
turnin Balanced Perspective##29784 |goto 32.9,35.6
accept Dafeng, the Spirit of Air##29785 |goto 32.9,35.6
step
Follow the path up |goto 30.2,38.2 < 10 |only if walking
Follow the path |goto 30.82,44.55 < 15 |only if walking
Continue following the path |goto 30.7,55.9 < 20 |only if walking
Enter the building |goto 28.4,63.7 < 15 |walk
Locate Dafeng |q 29785/1 |goto 24.7,69.8
|tip Wait until the wind is not blowing, then run through the hallway.
step
talk Dafeng##55592
turnin Dafeng, the Spirit of Air##29785 |goto 24.7,69.8
step
talk Aysa Cloudsinger##55595
accept Battle for the Skies##29786 |goto 24.8,69.8
step
Leave the building |goto 28.4,63.7 < 15 |walk
click Firework Launcher##210004
|tip They look like dark colored pots on the ground around this area.
kill Zhao-Ren##55786 |q 29786/1 |goto 30.1,61.9
|tip Follow the Shadow of the Onyx on the ground and click the Firework Launchers until the Serpent is dead.
step
talk Master Shang Xi##55586
turnin Battle for the Skies##29786 |goto 30.0,60.4
accept Worthy of Passing##29787 |goto 30.0,60.4
step
Follow the path |goto 29.85,56.47 < 20 |only if walking
Follow the road |goto 28.50,53.18 < 20 |only if walking
Run up the stairs |goto 26.31,52.86 < 15 |only if walking
kill Guardian of the Elders##56274 |q 29787/1 |goto 22.7,52.9
step
Run up the stairs |goto 22.3,52.8 < 10 |only if walking
talk Master Shang Xi##55672
|tip He runs to this spot.
turnin Worthy of Passing##29787 |goto 19.5,51.2
accept Unwelcome Nature##29788 |goto 19.5,51.2
accept Small, But Significant##29789 |goto 19.5,51.2
stickystart "Thornbranch_Scamps"
step
click Kun-pai Ritual Charm##209774
|tip They look like red ropes hanging from tree branches around this area.
collect 8 Kun-Pai Ritual Charm##74634 |q 29789/1 |goto 22.9,57.2
You can find more around [20.0,44.5]
step
label "Thornbranch_Scamps"
kill 8 Thornbranch Scamp##55640 |q 29788/1 |goto 22.9,57.2
You can find more around [20.0,44.5]
step
talk Master Shang Xi##55672
turnin Unwelcome Nature##29788 |goto 19.5,51.2
turnin Small, But Significant##29789 |goto 19.5,51.2
accept Passing Wisdom##29790 |goto 19.5,51.2
step
Watch the dialogue
Listen to Master Shang Xi |q 29790/1 |goto 19.5,51.2
step
Run down the path |goto 17.7,51.7 < 15 |only if walking
talk Aysa Cloudsinger##56662
turnin Passing Wisdom##29790 |goto 15.8,49.1
accept The Suffering of Shen-zin Su##29791 |goto 15.8,49.1
step
clicknpc Shang Xi's Hot Air Balloon##55918
|tip It looks like a big hot air balloon floating just above the ground.
Board the Hot Air Balloon |q 29791/1 |goto 15.6,48.9
step
Watch the dialogue
Uncover the Source of Shen-zin Su's Pain |q 29791/2
step
Return to Mandori Village |goto 49.16,58.55 < 20 |c |q 29791
step
Jump down here |goto 50.34,58.37 < 10 |only if walking
Run up the stairs |goto 51.3,57.3 < 15 |only if walking
talk Elder Shaopai##56012
turnin The Suffering of Shen-zin Su##29791 |goto 51.3,48.3
accept Bidden to Greatness##29792 |goto 51.3,48.3
step
Run down the stairs |goto 51.42,50.82 < 15 |only if walking
Watch the dialogue
Open the Mandori Village Gate |q 29792/1 |goto 51.6,61.2
step
Run down the path |goto 51.4,63.3 < 15 |only if walking
Continue down the path |goto 50.9,66.2 < 15 |only if walking
Watch the dialogue
Open the Pei-Wu Forest Gate |q 29792/2 |goto 52.2,68.4
step
Run up the path |goto 50.6,74.8 < 15 |only if walking
talk Wei Palerage##55943
turnin Bidden to Greatness##29792 |goto 50.1,76.7
accept Preying on the Predators##30591 |goto 50.1,76.7
step
talk Korga Strongmane##60042
accept Stocking Stalks##29795 |goto The Wandering Isle 50.2,76.7
stickystart "PeiWu_Tigers"
step
click Broken Bamboo Stalk##211400
|tip They look like thin shorter bamboo stalks and stumps all around the tall bamboo stalks in this area.
collect 10 Broken Bamboo Stalk##80806+ |q 29795/1 |goto 52.4,82.6
step
label "PeiWu_Tigers"
kill 9 Pei-Wu Tiger##55946 |q 30591/1 |goto 52.4,82.6
step
Run up the path |goto 51.1,79.3 < 15 |only if walking
talk Wei Palerage##55943
turnin Preying on the Predators##30591 |goto 50.1,76.6
step
talk Korga Strongmane##60042
turnin Stocking Stalks##29795 |goto 50.2,76.7
accept Wrecking the Wreck##30589 |goto 50.2,76.7
step
Cross the bridge |goto 43.80,74.11 < 15 |only if walking
talk Makael Bay##60055
turnin Wrecking the Wreck##30589 |goto 36.3,72.4
accept Handle With Care##30590 |goto 36.3,72.4
step
talk Ji Firepaw##55942
accept Evil from the Seas##29793 |goto 36.4,72.5
stickystart "Darkened_Terrors_Or_Horrors"
step
click Packed Explosion Charge##9539+
|tip They look like small bundles of red dynamite on the ground around this area.
collect 6 Packed Explosion Charge##74955 |q 30590/1 |goto 38.3,74.1
step
label "Darkened_Terrors_Or_Horrors"
Kill Darkened enemies around this area
Slay #8# Darkened Terrors or Horrors |q 29793/1 |goto 38.3,74.1
step
talk Makael Bay##60055
turnin Handle With Care##30590 |goto 36.3,72.3
step
talk Ji Firepaw##55942
turnin Evil from the Seas##29793 |goto 36.4,72.5
accept Urgent News##29796 |goto 36.4,72.5
step
Follow the road |goto 40.9,78.1 < 20 |only if walking
talk Delora Lionheart##55944
turnin Urgent News##29796 |goto 42.2,86.5
accept None Left Behind##29794 |goto 42.2,86.5
accept Medical Supplies##29797 |goto 42.2,86.5
step
talk Jojo Ironbrow##55940
accept From Bad to Worse##29665 |goto 42.3,86.3
stickystart "Alliance_Medical_Supplies"
stickystart "Deepscale_Tormentors"
step
clicknpc Injured Sailor##55999+
|tip They look like dead Alliance bodies on the ground around this whole area.
Bring the Injured Sailors to [42.2,86.7]
Rescue #3# Injured Sailors |q 29794/1 |goto 38.5,87.4
step
label "Alliance_Medical_Supplies"
click Alliance Medical Crate##209793
|tip They look like wooden boxes with red crosses on them on the ground around this area.
collect 8 Alliance Medical Supplies##74958 |q 29797/1 |goto 38.5,87.4
step
label "Deepscale_Tormentors"
kill 8 Deepscale Tormentor##56360 |q 29665/1 |goto 38.5,87.4
step
talk Delora Lionheart##55944
turnin None Left Behind##29794 |goto 42.2,86.5
turnin Medical Supplies##29797 |goto 42.2,86.5
step
talk Jojo Ironbrow##55940
turnin From Bad to Worse##29665 |goto 42.3,86.4
accept An Ancient Evil##29798 |goto 42.3,86.4
step
kill Vordraka, the Deep Sea Nightmare##56009 |q 29798/1 |goto 37.1,84.1
|tip He will randomly target you with two different attacks, both of which are aoe's and can be avoided, so try to stay moving.
|tip He also spawns adds occasionally.
step
talk Aysa Cloudsinger##56416
turnin An Ancient Evil##29798 |goto 36.5,84.2
accept Risking It All##30767 |goto 36.5,84.2
step
Watch the dialogue
|tip Follow Aysa Cloudsinger to the top of the crashed airship.
Remove Shen-zin Su's Thorn |q 30767/1 |goto 36.4,87.0
step
talk Ji Firepaw##56418
turnin Risking It All##30767 |goto 39.3,86.2
accept The Healing of Shen-zin Su##29799 |goto 39.3,86.2
step
clicknpc Horde Druid##60834+
clicknpc Alliance Priest##60878+
|tip They are on the ground laying under sheets of gray metal.
|tip Watch your minimap and look for bronze cogs. These are fallen Horde Druids and Alliance Priests.
|tip Go to them and revive them. Focus on keeping them alive.
Protect the Healers |q 29799/1 |goto 41.2,85.4
|tip Run around this whole area and keep reviving the druids and priest until the bar on the bottom of your screen fills.
step
talk Ji Firepaw##56418
turnin The Healing of Shen-zin Su##29799 |goto 39.3,86.2
step
talk Ji Firepaw##57739
accept New Allies##29800 |goto 38.8,86.3
step
clicknpc Delivery Cart##57741
|tip It looks like a wooden wagon with a grey ox in front of it, next to the road.
Hitch a Ride on the Cart |invehicle |c |q 29800 |goto 41.7,85.5
step
Ride the Cart to Mandori Village |goto 51.62,59.07 < 20 |c |q 29800
step
Run up the stairs |goto 51.33,57.28 < 15 |only if walking
talk Spiwrit of Master Shang Xi##56013
turnin New Allies##29800 |goto 51.4,48.3
accept A New Fate##31450 |goto 51.4,48.3
step
talk Spirit of Master Shang Xi##56013 |goto 51.4,48.3
Tell him _"I'm ready to decide."_
|tip You will have to choose whether you will side with the Alliance or the Horde.
Join the Alliance |next "Alliance" |or |condition rep('Stormwind') >= Friendly
_Or_
Join The Horde |next "Horde" |or |condition rep('Orgrimmar') >= Friendly
step
label "Alliance"
talk Aysa Cloudsinger##60566
turnin A New Fate##31450 |goto Stormwind City/0 74.19,91.97
accept Joining the Alliance##30987 |goto Stormwind City/0 74.19,91.97
|only if rep('Stormwind') >= Friendly
step
Enter the building |goto 80.69,37.84 < 15 |walk
talk Anduin Wrynn##107574
turnin Joining the Alliance##30987 |goto 85.8,31.7
|only if rep('Stormwind') >= Friendly
step
label "Horde"
talk Ji Firepaw##60570
turnin A New Fate##31450 |goto Durotar/0 45.58,12.61
accept Joining the Horde##31012 |goto Durotar/0 45.58,12.61
|only if rep('Orgrimmar') >= Friendly
step
Follow the path |goto Orgrimmar/1 50.11,91.12 < 20 |only if walking
Continue following the path |goto Orgrimmar/1 52.54,89.30 < 20 |only if walking
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Joining the Horde##31012 |goto Orgrimmar/1 48.8,70.8
accept The Horde Way##31013 |goto Orgrimmar/1 48.8,70.8
|only if rep('Orgrimmar') >= Friendly
step
Watch the dialogue
|tip Follow Garrosh Hellscream.
Walk with Garrosh Hellscream |q 31013/1
|only if rep('Orgrimmar') >= Friendly
step
talk Garrosh Hellscream##62092
turnin The Horde Way##31013 |goto 48.75,70.81
|only if rep('Orgrimmar') >= Friendly
]])
if UnitFactionGroup("player")~="Neutral" then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Titles\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Your guides will load after you choose a faction.",{},[[]])
