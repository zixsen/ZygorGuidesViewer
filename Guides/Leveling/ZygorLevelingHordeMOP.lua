local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\The Jade Forest (80-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\JadeForest",
next="Zygor's Leveling Guides\\Pandaria (80-90)\\Valley of the Four Winds (81-90)",
startlevel=80,
endlevel=90,
},[[
step
If you completed the Vash'jir questline, click here |confirm |next "havec"
or
If you have _not_ completed it, click here |confirm |next "notc"
step
label "havec"
accept The Art of War##29612
Report to Grommash Hold |q 29612/1 |goto Orgrimmar 49.8,75.3
step
talk General Nazgrim##54870
turnin The Art of War##29612 |goto Orgrimmar 48.6,70.6
accept All Aboard!##31853 |goto Orgrimmar 48.6,70.6
|next "normstart"
step
label "notc"
accept The Art of War##29611 |goto Orgrimmar 50.0,75.8
Report to Grommash Hold |q 29611/1
step
talk General Nazgrim##54870
turnin The Art of War##29611 |goto Orgrimmar 48.6,70.6
accept All Aboard!##31853 |goto Orgrimmar 48.6,70.6
|next "normstart"
step
label "normstart"
Look for a ship in the air
You have to use a flying mount to get to General Nazgrim
talk General Nazgrim##55054
turnin All Aboard!##31853 |goto Kalimdor 61.2,44.6
accept Into the Mists##29690 |goto Kalimdor 61.2,44.6
step
talk General Nazgrim##55054
Tell him you're ready to go!
Discover Pandaria |q 29690/1
step
talk General Nazgrim##55135
turnin Into the Mists##29690 |goto The Jade Forest 30.8,10.2
accept Paint it Red!##31765 |goto The Jade Forest 30.8,10.2
step
Follow the steps down |goto 31.4,11.0 < 10 |only if walking
Click Gunship Turret |goto 31.5,11.0 |invehicle |c
|tip It's on the lower level of the ship.
step
Use the Full Autofire ability on your action bar
While it is channeling:
kill 80 Thunder Hold Troops |q 31765/1
kill 9 Thunder Hold Cannons |q 31765/2
step
talk Rivett Clutchpop##67250
turnin Paint it Red!##31765 |goto 31.0,11.0
accept Touching Ground##31766 |goto 31.0,11.0
step
click Rappelling Rope##215689
Rappel into Honeydew Glade |q 31766/1 |goto 31.5,11.1
step
talk General Nazgrim##55135
turnin Touching Ground##31766 |goto 31.6,11.3
accept Finish Them!##31767 |goto 31.6,11.3
accept Fire Is Always the Answer##31768 |goto 31.6,11.3
step
kill 15 Thunder Hold Troops |q 31767/1 |goto 32.8,6.6
Find Thunder Hold Munitions and use Nazgrim's Flare Gun to destroy them |use Nazgrim's Flare Gun##89605
|tip They look like big piles of crates and barrels
Thunder Hold Munitions destroyed |q 31768/1 |goto 32.8,6.6
You can find more troops and munitions around [The Jade Forest,34.3,8.8]
step
Go up the steps to Thunder Hold |goto 33.3,10.6 < 10 |only if walking
talk General Nazgrim##66646
turnin Fire Is Always the Answer##31768 |goto 34.8,10.6
turnin Finish Them!##31767 |goto 34.8,10.6
accept The Final Blow!##31769 |goto 34.8,10.6
step
Use Nazgrim's Flare Gun on the barricade |use Nazgrim's Flare Gun##89769
|tip It is on the first floor of Thunder Hold
Destroy the first Barricade |q 31769/1 |goto 34.0,10.0
step
Use Nazgrim's Flare Gun on the barricade |use Nazgrim's Flare Gun##89769
Destroy the second Barricade |q 31769/2 |goto 34.7,9.9
step
Use Nazgrim's Flare Gun on the barricade. |use Nazgrim's Flare Gun##89769
Destroy the third Barricade |q 31769/3 |goto 34.9,10.6
step
Find Captain Doren |q 31769/4 |goto 33.8,10.6
step
talk General Nazgrim##66656
turnin The Final Blow!##31769 |goto 33.7,10.6
step
Wait for the scene to end
talk General Nazgrim##66656
accept You're Either With Us Or...##31770 |goto 33.7,10.6
accept Higher Ground##29694 |goto 33.7,10.6
step
talk Taran Zhu##66657
accept Face to Face With Consequence##31771 |goto 33.7,10.6
step
Follow the stairs back down and exit the building |goto 34.5,10.6 < 10 |walk
talk Ellie Honeypaw##66660
accept Priorities!##31772 |goto 30.6,7.1
step
talk Sue-Ji the Tender##66659
accept Prowler Problems##31773 |goto 30.5,7.5
step
kill 20 Sha Haunt##66425 |q 31771/1 |goto 33.6,7.4
kill 7 Sha Harbinger##66424 |q 31771/2 |goto 33.6,7.4
stickystart "barrelofhoney"
step
talk Rivett Clutchpop##55146
Tell him to quit messing around
Rivett Clutchpop Rescued |q 29694/2 |goto 30.5,7.2
step
talk Shokia##55170
Tell her to get on her feet
Shokia Rescued |q 29694/4 |goto 29.4,8.5
step
label "barrelofhoney"
kill 10 Sha-Infested Prowler##66668 |q 31773/1 |goto 29.2,9.0
click Barrel of Honeybrew##215695 |q 31772/1 |goto 29.2,9.0
|tip Small, grey and brown barrels laying on the ground.
You can find more around [31.0,11.4]
step
talk Sergeant Gorrok##55162
Tell him you need to regroup
Sergeant Gorrok Rescued |q 29694/3 |goto 30.6,11.7
step
talk Shademaster Kiryn##55141
Tell her to snap out of it
Shademaster Kiryn Rescued |q 29694/1 |goto 32.1,13.4
step
talk Ellie Honeypaw##66660
turnin Priorities!##31772 |goto 29.4,13.6
step
talk Sergeant Gorrok##55162
turnin Higher Ground##29694 |goto 29.1,13.7
step
talk Mayor Honeydew##66220
turnin You're Either With Us Or...##31770 |goto 29.2,13.8
step
talk Taran Zhu##66657
turnin Face to Face With Consequence##31771 |goto 29.1,13.8
turnin Prowler Problems##31773 |goto 29.1,13.8
step
talk Sergeant Gorrok##55162
accept Seeking Zin'jun##31774 |goto 29.1,13.7
step
talk Brewmother Kiki##66236
home Honeydew Village |goto The Jade Forest/0 28.5,13.3
step
talk Wing Hya##66227
fpath Honeydew Village |goto The Jade Forest/0 28.1,15.6
step
talk Zin'Jun##55403
turnin Seeking Zin'jun##31774 |goto 31.1,17.5
accept Cryin' My Eyes Out##29765 |goto 31.1,17.5
step
click Ancient Statue##212181
accept Monstrosity##29743 |goto 30.9,17.5
stickystart "hozengroundpounder"
step
click Ancient Statue Arm##212183
Choose the create a sketch option
Statue Arm Sketched |q 29743/2 |goto 30.1,21.3
step
click Ancient Statue Head##212186
Choose the create a sketch option
Statue Head Sketched |q 29743/4 |goto 30.0,22.3
step
click Ancient Statue Shoulder##212184
Choose the create a sketch option
Statue Shoulder Sketched |q 29743/3 |goto 28.5,22.1
step
click Ancient Statue Torso##212182
Choose the create a sketch option
Statue Torso Sketched |q 29743/1 |goto 29.4,18.9
step
Click the Auto complete quest box that appears below your minimap:
turnin Monstrosity##29743
step
label "hozengroundpounder"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Rifle##74160 |q 29765/1 |goto 28.6,18.1
collect Zin'Jun's Left Eye##74161 |q 29765/2 |goto 28.6,18.1
collect Zin'Jun's Right Eye##74162 |q 29765/3 |goto 28.6,18.1
collect Snuff's Corpse##74163 |q 29765/4 |goto 28.6,18.1
step
Standing Next to you
talk Zin'Jun##55403
If he is not with you anymore, you can find him here: [31.1,17.5]
turnin Cryin' My Eyes Out##29765
accept Seein' Red##29804
step
Enter the cave here |goto 31.5,21.7 < 10 |walk
kill Konk##55509 |q 29804/1 |goto 32.0,22.3
step
talk General Nazgrim##66656
turnin Seein' Red##29804 |goto 31.7,21.9
accept Assault on the Airstrip##31775 |goto 31.7,21.9
accept Strongarm Tactics##31776 |goto 31.7,21.9
step
talk Merchant Zin##65998
accept Unreliable Allies##31778 |goto The Jade Forest 31.4,21.8
step
talk Rivett Clutchpop##55521
accept Choppertunity##31777 |goto 31.1,21.6
stickystart "strongarmtroop"
step
kill Master Engineer Cogswing and Gyro-Mechanic Lavenderp |q 31776/1 |goto 30.3,24.2
step
kill Morgus Grimhatchet##65880 |q 31776/2 |goto 29.7,23.7
|tip He may appear on your minimap as a white skull with red eyes
He walks around the area
step
kill Corporal Jackson Silver##65881 |q 31776/3 |goto 27.8,23.1
|tip He is on the first floor of this building.
step
label "strongarmtroop"
talk Pandaren Volunteer##67090
|tip Use Shift+v to make them much easier to spot (Hit v to mark enemies again).
Tell them that they can leave.
Free 12 Pandaren |q 31778/1 |goto 28.3,24.6
click Requisitioned Firework Launcher##214962
Target Strongarm Gyrocopters in the air and use your Requisitioned Firework Launcher on them |use Requisitioned Firework Launcher##89163
kill 12 Strongarm Gyrocopter##65843 |q 31777/1 |goto 28.3,24.6
kill 15 Strongarm Troop |q 31775/1 |goto 28.3,24.6
step
talk Rivett Clutchpop##55521
turnin Choppertunity##31777 |goto 31.1,21.6
step
talk Merchant Zin##65998
turnin Unreliable Allies##31778 |goto 31.4,21.8
step
talk General Nazgrim##66656
turnin Assault on the Airstrip##31775 |goto 31.6,21.9
turnin Strongarm Tactics##31776 |goto 31.6,21.9
accept The Darkness Within##31779 |goto 31.6,21.9
step
Cross the bridge here |goto 27.3,25.1 < 10 |only if walking
kill Captain Doren##66052 |q 31779/1 |goto 25.8,23.9
|tip He is inside a small cave.
step
Click the Alliance Flagpole here
turnin The Darkness Within##31779 |goto 27.6,24.3
accept Nazgrim's Command##31999 |goto 27.6,24.3
step
talk General Nazgrim##55172
turnin Nazgrim's Command##31999 |goto 28.4,24.9
step
talk Shademaster Kiryn##55180
accept Forensic Science##29815 |goto 28.2,24.8
step
talk Rivett Clutchpop##55521
accept Missed Me By... That Much!##29821 |goto 28.1,24.7
step
clicknpc Empty Package##62923
turnin Missed Me By... That Much!##29821 |goto 22.9,30.6
accept They're So Thorny!##31112 |goto 22.9,30.6
step
clicknpc Lurching Blossom##55610
|tip They look like small, moving, blue-green plants around this area. You can do this while mounted.
collect 8 Viscous Chlorophyll##74621 |q 29815/1 |goto 25.9,26.1
kill Water Sprite##62930
collect 5 Emergency Supplies##74623 |q 31112/1 |goto 25.9,26.1
step
talk Rivett Clutchpop##55521
turnin They're So Thorny!##31112 |goto 28.1,24.7
step
talk Shademaster Kiryn##55180
turnin Forensic Science##29815 |goto 28.2,24.8
accept Acid Rain##29827 |goto 28.2,24.8
step
clicknpc Recovered Gyrocopter##55674 |goto 28.1,24.8 |invehicle
step
Use your abilities on the bar to kill Hozen
kill 25 Hozen Gutripper##55707 |q 29827/1
kill 25 Hozen Nibstabber##55701 |q 29827/2
step
talk Shademaster Kiryn##55180
turnin Acid Rain##29827 |goto 28.2,24.8
step
talk General Nazgrim##55172
accept Lay of the Land##29822 |goto 28.4,24.9
step
Shrine of the Sun Visited |q 29822/1 |goto 31.9,27.9
step
kill Dook Ookem##55622 |q 29822/3 |goto 27.8,30.3
step
Follow the road southwest |goto 28.3,30.9 < 10 |only if walking
Shrine of the Moon Visited |q 29822/2 |goto 26.2,32.4
step
Enter the cave |goto 27.3,32.0 < 10 |walk
talk Lorewalker Cho##55768
turnin Lay of the Land##29822 |goto 27.6,32.7
accept Stay a While, and Listen##31121 |goto 27.6,32.7
step
click Cho's Teapot
Listen to Lorewalker Cho |q 31121/1 |goto 27.7,32.5
step
talk Lorewalker Cho##55768
turnin Stay a While, and Listen##31121 |goto 27.6,32.7
accept A Mile in My Shoes##31132 |goto 27.6,32.7
step
talk Lorewalker Cho##63217
turnin A Mile in My Shoes##31132 |goto 30.8,34.1
accept If These Stones Could Speak##31134 |goto 30.8,34.1
step
click Stone Monolith
First Stone Monolith Translated |q 31134/1 |goto 30.9,33.7
step
click Stone Monolith
kill Bloodthirsty Saurok##63279
Second Stone Monolith Translated |q 31134/2 |goto 30.6,33.8
step
click Stone Monolith
Third Stone Monolith Translated |q 31134/3 |goto 30.6,34.1
step
talk Lorewalker Cho##63217
turnin If These Stones Could Speak##31134 |goto 30.8,34.0
accept Peering Into the Past##31152 |goto 30.8,34.0
step
Follow Lorewalker Cho
Escort Lorewalker Cho to the Circle of Stone |q 31152/1 |goto 28.9,32.5
step
talk Lorewalker Cho##63307
turnin Peering Into the Past##31152 |goto 28.8,32.6
accept Family Tree##31167 |goto 28.8,32.6
step
click Incense Bundle##245682
Light the incense |q 31167/1 |goto 28.8,32.5
step
talk Lorewalker Cho##63307
turnin Family Tree##31167 |goto 28.8,32.6
accept Swallowed Whole##29879 |goto 28.8,32.6
step
kill 5 Engorged Crocolisk##56183 |q 29879/1 |goto The Jade Forest 24.3,35.1
clicknpc Speckled Trout##56180
|tip You can mark these with Shift+v (Use v to mark enemies again).
collect 5 Speckled Trout##75202 |q 29879/2 |goto The Jade Forest 24.3,35.1
step
talk Tooki Tooki##56313
turnin Swallowed Whole##29879 |goto The Jade Forest 26.3,37.3
accept Orders are Orders##29935 |goto The Jade Forest 26.3,37.3
step
talk Bo Bo##56351
accept The Bees' Knees##29933 |goto The Jade Forest 25.9,38.0
step
talk Nibi Nibi##56327
accept Kill Kher Shan##29924 |goto The Jade Forest 26.0,38.8
step
talk Jeek Jeek##63748
accept Wicked Wikkets##31241 |goto The Jade Forest 28.2,39.0
step
kill Kher Shan##56329 |q 29924/1 |goto The Jade Forest 33.3,41.9
|tip He is inside a small cave
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Kill Kher Shan##29924
step
kill Battleworn Paratrooper##63782+
collect 6 Alliance Service Medallion##85784+ |q 31241/1 |goto The Jade Forest 31.1,41.7
stickystart "buglegs"
step
kill Jack Arrow##63809
|tip Attack him from the back and he won't hurt you.
|tip Watch out for the pink circles on the ground, they will hurt you.
collect Captain Jack's Head##85783 |n
Click Captain Jack's Head in your bags |use Captain Jack's Head##85783
accept Captain Jack's Dead##31261 |goto The Jade Forest 30.8,41.3
step
label "buglegs"
kill Tigerfly##56283+
collect 30 Bug Leg##76173+ |q 29933/1 |goto The Jade Forest 29.6,44.0
step
talk Chief Kah Kah##56336
turnin Orders are Orders##29935 |goto The Jade Forest 28.0,47.2
accept Instant Messaging##29936 |goto The Jade Forest 28.0,47.2
turnin The Bees' Knees##29933 |goto The Jade Forest 28.0,47.2
turnin Captain Jack's Dead##31261 |goto The Jade Forest 28.0,47.2
turnin Wicked Wikkets##31241 |goto The Jade Forest 28.0,47.2
step
talk Grookin Bed-Haver##62975
home Grookin Hill |goto The Jade Forest 28.0,47.4
step
clicknpc Signal Flare##56413
Signal Survivors |q 29936/1 |goto The Jade Forest 28.0,46.8
step
talk General Nazgrim##56339
turnin Instant Messaging##29936 |goto The Jade Forest 28.3,47.8
accept Beyond the Horizon##29941 |goto The Jade Forest 28.3,47.8
step
talk Grookin Flapmaster##60952
fpath Grookin Hill |goto The Jade Forest 27.8,47.9
step
talk Shokia##56340
Tell her Nazgrim has assigned her to scout |q 29941/1 |goto The Jade Forest 28.3,46.9
step
talk Chief Kah Kah##56336
Tell him that we will be exploring his lands and ask for his help |q 29941/4 |goto The Jade Forest 28.0,47.2
step
talk Shademaster Kiryn##56478
Tell her Nazgrim has assigned her to the scouting party |q 29941/3 |goto The Jade Forest 27.1,49.0
step
talk Sergeant Gorrok##56477
|tip He walks up and down this path
Tell him Nazgrim has assigned him to help scout |q 29941/2 |goto The Jade Forest 27.7,50.4
step
talk General Nazgrim##56339
turnin Beyond the Horizon##29941 |goto The Jade Forest 28.3,47.8
step
talk Rivett Clutchpop##56406
accept Furious Fowl##29937 |goto The Jade Forest 28.3,47.8
step
talk Chief Kah Kah##56336
accept What's in a Name Name?##31239 |goto The Jade Forest 28.0,47.2
step
kill 7 Riverstride Jinyu##56289+ |q 31239/1 |goto The Jade Forest 28.8,46.0
You can find a few more on the other side of the river at [The Jade Forest,29.5,44.6]
step
talk Chief Kah Kah##56336
turnin What's in a Name Name##31239 |goto The Jade Forest 28.0,47.2
step
kill Hungry Bloodtalon##56396+
collect 6 Fistful of Bird Guts##76225 |q 29937/1 |goto The Jade Forest 29.8,51.1
step
talk Rivett Clutchpop##56406
turnin Furious Fowl##29937 |goto The Jade Forest 27.2,50.6
accept Easy Pickings##29939 |goto The Jade Forest 27.2,50.6
step
talk Eekle Eekle##56358
accept Silly Wikket, Slickies are for Hozen##29942 |goto The Jade Forest 27.0,50.8
step
kill Muck Snapper##56447+
collect 4 Snapper Steak##76420+ |q 29942/1 |goto 26.7,55.4
Stand on the Deck and throw Gut Bombs in the water |use Gut Bomb##76262
click Dead Deepriver Slicky
collect 5 Exploded Slicky##76260 |q 29939/1 |goto 26.7,55.4
step
talk Eekle Eekle##56358
turnin Silly Wikket, Slickies are for Hozen##29942 |goto The Jade Forest 27.0,50.8
step
talk Rivett Clutchpop##56406
turnin Easy Pickings##29939 |goto The Jade Forest 27.2,50.8
accept The Scouts Return##29971 |goto The Jade Forest 27.2,50.8
step
talk Shokia##55647
turnin The Scouts Return##29971 |goto The Jade Forest 28.6,47.4
step
talk Riko##55648
accept Scouting Report: Hostile Natives##29730 |goto 28.6,47.4
step
Click the warning sign
Inspect the warning sign |q 29730/1 |goto 38.3,45.4
step
clicknpc Lifelike Jade Statue##55378
Inspect a Lifelike Jade Statue |q 29730/2 |goto 38.9,46.0
step
talk Widow Greenpaw##55381
Ask her some questions
Speak with Widow Greenpaw |q 29730/3 |goto 39.2,46.2
step
talk Riko##55648
turnin Scouting Report: Hostile Natives##29730 |goto 28.6,47.4
step
talk Shademaster Kiryn##55646
accept Scouting Report: On the Right Track##29731 |goto 28.6,47.5
step
Follow the path up |goto 45.2,63.7  |only if walking
Search the Serpent's Spine for signs of life |q 29731/1 |goto 48.6,60.2
|tip If you encounter enemies use the Smoke Bomb ability on your hotbar
step
talk Shademaster Kiryn##55646
turnin Scouting Report: On the Right Track##29731 |goto 28.6,47.5
step
talk Riko##55648
accept Scouting Report: The Friend of My Enemy##29823 |goto The Jade Forest 28.6,47.4
step
talk Shademaster Kiryn##55688
Tell her that you'll protect her to the death
Use the abilities on your hotbar to defeat the Ambushing Jinyu and finally the Alliance Scout |q 29823/1 |goto The Jade Forest 49.8,70.5
step
talk Riko##55648
turnin Scouting Report: The Friend of My Enemy##29823 |goto The Jade Forest 28.6,47.4
step
talk Shokia##55647
accept Scouting Report: Like Jinyu in a Barrel##29824 |goto The Jade Forest 28.6,47.4
step
click Sniper Rifle##209691
Right click on the Jinyu Guards to kill them
|tip If you have very low view distance in your settings you won't be able to see them.
Escort Shademaster Kiryn through the camp |q 29824/1 |goto The Jade Forest 62.6,82.0
step
talk Shokia##55647
turnin Scouting Report: Like Jinyu in a Barrel##29824 |goto The Jade Forest 28.6,47.4
step
talk General Nazgrim##56339
accept Guerrillas in our Midst##29943 |goto The Jade Forest 28.7,47.5
step
talk Rivett Clutchpop##56406
accept Green-ish Energy##29968 |goto The Jade Forest 30.8,52.3
step
kill 8 Alliance Infiltrator##56303+ |q 29943/1 |goto The Jade Forest 31.6,52.5
click Green Branch##209903
|tip They look like small brown logs on the ground
collect 7 Green Branch##76333 |q 29968/1 |goto The Jade Forest 31.6,52.5
step
Standing next to you
talk General Nazgrim##56490
turnin Guerrillas in our Midst##29943
accept Burning Down the House##29966
step
Follow the path up |goto The Jade Forest 30.4,52.9 |only if walking
Use Nazgrim's Grog in your bags |use Nazgrim's Grog##76336 |q 29966/1 |goto The Jade Forest 29.4,54.3
step
talk Rivett Clutchpop##56406
turnin Green-ish Energy##29968 |goto The Jade Forest 27.2,50.8
accept Boom Goes the Doonamite!##29967 |goto The Jade Forest 27.2,50.8
step
talk Rivett Clutchpop##56525
Tell him that you're ready |invehicle |goto The Jade Forest 29.0,49.1
step
Use the abilities on your hotbar to fight off the Jinyu Tacticians
|tip If they get too close and knock you out, talk to Rivett again.
Kill 10 Jinyu Attackers |q 29967/1
step
talk Rivett Clutchpop##56525
turnin Boom Goes the Doonamite!##29967 |goto The Jade Forest 29.0,49.1
step
talk General Nazgrim##56339
turnin Burning Down the House##29966 |goto The Jade Forest 28.7,47.5
accept Dawn's Blossom##30015 |goto The Jade Forest 28.7,47.5
step
talk Grookin Flapmaster##60952 |goto The Jade Forest 27.8,47.9 |only if walking
Tell him to send you to Dawn's Blossom |goto The Jade Forest 47.0,46.2 < 5 |only if walking
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto The Jade Forest 47.1,46.2
step
talk Lorewalker Cho##63577
turnin Dawn's Blossom##30015 |goto The Jade Forest 46.8,46.1
step
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto The Jade Forest 47.1,46.1
step
talk Kai Wanderbrew##59173 |q 31230/3 |goto The Jade Forest 47.0,46.0
|tip He walks around the camp a little, you may have to look for him
step
talk Master Windfur##59160 |q 31230/1 |goto The Jade Forest 48.5,44.5
|tip He is inside this big building
step
talk Peiji Goldendraft##55809 |q 31230/2 |goto The Jade Forest 45.7,43.7
|tip Inside this big building, he is the innkeeper
step
talk Peiji Goldendraft##55809
home The Dunken Hozen |goto The Jade Forest 45.7,43.7
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto The Jade Forest 47.2,46.2
step
talk An Windfur##55234
accept The Double Hozu Dare##29716 |goto The Jade Forest 46.6,46.2
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto The Jade Forest 46.4,45.8
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto The Jade Forest 46.6,45.3
step
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto The Jade Forest 42.9,49.8
click Silk Patch##209951
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto The Jade Forest 42.9,49.8
step
Next to you
talk An Windfur##55274
accept Down Kitty!##29717 |goto The Jade Forest 40.2,48.4
step
talk Scared Pandaren Cub##55267
|tip Marking them with Shift+v will make them much easier to spot (Use v to mark enemies again).
Tell them that it is safe now |q 29716/1 |goto The Jade Forest 37.0,44.8
kill 8 Jade Guardian##55236 |q 29717/1 |goto The Jade Forest 37.0,44.8
step
Next to you
talk An Windfur##55274
turnin The Double Hozu Dare##29716
accept The Jade Witch##29723
turnin Down Kitty!##29717
step
talk Widow Greenpaw##55368
Ash her where Shin is
Defeat the Jade Witch |q 29723/1 |goto The Jade Forest 39.4,46.2
step
Go to the road, and follow it east |goto 40.0,48.1 |only if walking
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto The Jade Forest 46.6,45.3
step
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto The Jade Forest 46.5,45.8
step
talk An Windfur##55413
|tip She runs around this area so you may need ot search.
turnin The Jade Witch##29723 |goto The Jade Forest 46.9,46.0
step
talk Kai Wanderbrew##59173
|tip He walks around the camp a little, you may have to look for him.
accept Find the Boy##29993 |goto The Jade Forest 47.0,46.0
step
talk Toya##56348
accept All We Can Spare##29925 |goto The Jade Forest 47.2,46.2
step
talk Inkmaster Wei##56065
turnin Find the Boy##29993 |goto The Jade Forest 54.9,45.1
accept Shrine of the Dawn##29995 |goto The Jade Forest 54.9,45.1
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto The Jade Forest 54.9,45.3
step
talk Inkmaster Jo Po##56063
accept Quill of Stingers##29882 |goto The Jade Forest 55.3,45.2
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto 56.9,44.12
step
kill Orchard Wasp##56201+
collect 6 Wasp Stinger##75221+ |q 29882/1 |goto The Jade Forest 53.4,45.6
click Freshly Fallen Petals##209836
|tip They look like small flowers on their side.
collect 8 Freshly Fallen Petal##75219+ |q 29881/1 |goto The Jade Forest 53.4,45.6
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto The Jade Forest 54.9,45.3
step
talk Inkmaster Jo Po##56063
turnin Quill of Stingers##29882 |goto The Jade Forest 55.4,45.3
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto The Jade Forest 52.6,38.1
accept Getting Permission##29920 |goto The Jade Forest 52.6,38.1
step
Only one of these mobs will be available at a time
talk Pandriarch Bramblestaff##56209
Challenge the Pandriarch |q 29920/2 |goto The Jade Forest 54.1,38.5
step
talk Pandriarch Goldendraft##56210
Challenge the Pandriarch |q 29920/3 |goto 53.6,36.7
step
talk Pandriarch Windfur##56206
Challenge the Pandriarch |q 29920/1 |goto 52.5,35.5
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto The Jade Forest 52.6,38.1
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto The Jade Forest 50.9,27.1
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto The Jade Forest 50.9,27.0
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto The Jade Forest 50.8,26.9
step
kill Puckish Sprite##56349+
click Chunk of Jade##209863
collect 15 Chunk of Jade##76209+ |q 29928/1 |goto The Jade Forest 48.1,31.7
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto The Jade Forest 50.9,27.0
accept Calamity Jade##29926 |goto The Jade Forest 50.9,27.0
accept Mann's Man##29927 |goto The Jade Forest 50.9,27.0
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto The Jade Forest 48.7,24.9
step
Find the source of Simulacra discovered |q 29745/2 |goto The Jade Forest 48.4,20.6
step
kill 10 Stonebound Destroyer##55288+ |q 29745/1 |goto The Jade Forest 49.4,20.3
You can find more of these at [The Jade Forest,48.0,21.1]
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
clicknpc Shattered Simulacrum##55472
accept Simulacrumble##29748 |goto The Jade Forest 48.6,20.5
step
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto The Jade Forest 48.1,18.1
Click Vacant Destroyer
|tip They look like Stone Statues holding big maces
Destroy 6 Vacant Destroyer |q 29748/1 |goto The Jade Forest 48.1,18.1
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Simulacrumble##29748
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto The Jade Forest 44.2,15.0
Kill Ancient Spirits until the "Empowering the Staff" bar fills |q 29749/2 |goto The Jade Forest 44.2,15.0
step
talk Pei-Zhi##55614
|tip If he does not appear for you, you may have to log out and log back in to get him to show up.
turnin An Urgent Plea##29749 |goto The Jade Forest 44.2,15.0
accept Vessels of the Spirit##29750 |goto The Jade Forest 44.2,15.0
accept Ritual Artifacts##29751 |goto The Jade Forest 44.2,15.0
accept The Wayward Dead##29752 |goto The Jade Forest 44.2,15.0
stickystart "waywardancestors"
step
click Pungent Ritual Candle##209701
|tip The candle is found at the waypoint location.
collect Pungent Ritual Candle##74761+ |q 29751/3 |goto 42.2,17.1
Recover 10 Wayward Ancestors |q 29752/1 |n |goto 42.2,17.1
step
click Jade Cong##209699
collect Jade Cong##74762 |q 29751/1 |goto 42.7,15.8
Recover 10 Wayward Ancestors |q 29752/1 |n |goto 42.7,15.8
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto The Jade Forest 41.6,14.4
step
label "waywardancestors"
kill Shan'ze Spiritclaw##55291+
collect 8 Spirit Bottle##74763+ |q 29750/1 |goto The Jade Forest 41.0,14.7
Use the Staff of Pei-Zhi on Wayward Ancestors |use Staff of Pei-Zhi##74771
Recover 10 Wayward Ancestors |q 29752/1 |goto The Jade Forest 41.0,14.7
step
talk Pei-Zhi##55614
turnin Vessels of the Spirit##29750 |goto The Jade Forest 44.3,15.0
accept Back to Nature##29753 |goto The Jade Forest 44.3,15.0
turnin Ritual Artifacts##29751 |goto The Jade Forest 44.3,15.0
turnin The Wayward Dead##29752 |goto The Jade Forest 44.3,15.0
accept A Humble Offering##29756 |goto The Jade Forest 44.3,15.0
step
Use the Spirit Bottles in your bag to summon Raging Beast Spirits |use Spirit Bottles##74808
kill Raging Beast Spirit##55790
Return 8 Beast Spirits to Nature |q 29753/1 |goto The Jade Forest 39.4,11.2
click Tidemist Cap##209825
|tip These look like small clusters of mushrooms on the ground and at the base of tree trunks.
collect 10 Tidemist Cap##75214+ |q 29756/1
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto The Jade Forest 44.2,15.0
turnin A Humble Offering##29756 |goto The Jade Forest 44.2,15.0
accept To Bridge Earth and Sky##29754 |goto The Jade Forest 44.2,15.0
step
Protect Pei-Zhi during his ritual |q 29754/1 |goto The Jade Forest 43.7,12.9
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
|tip While fighting him your spirit will get ripped from your body, when this happens just run back to your body and click on it.
kill Shan Jitong##56596 |q 29755/1 |goto 42.6,11.2
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto The Jade Forest 43.8,12.5
step
Follow the path up |goto 39.2,14.8 < 10 |only if walking
Follow the path here |goto 38.0,18.2 < 10 |only if walking
Follow the path here |goto 38.2,24.1 < 10 |only if walking
Follow this path into the Tian Monastery. |goto 41.5,25.0 < 10 |only if walking
talk Studious Chu##59736
fpath Tian Monastery |goto 43.6,24.5
step
talk Lin Tenderpaw##54913
accept The High Elder##29618 |goto 45.0,24.9
step
talk High Elder Cloudfall##54914
|tip He is at the top of this building
turnin The High Elder##29618 |goto 45.2,25.1
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto 45.0,24.9
step
click Ripe Orange##209436
|tip Small oranges on the ground around a tree. If the Greenwood Thieves are holding an orange, you can kill them and loot it off them.
collect 8 Ripe Orange##72589+ |q 29619/1 |goto 45.7,27.1
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto 45.0,24.9
accept The Great Banquet##29620 |goto 45.0,24.9
step
talk High Elder Cloudfall##54914
Tell him you don't need any introductions |q 29620/1
turnin The Great Banquet##29620 |goto 42.7,23.2
step
talk Xiao##54926
accept Your Training Starts Now##29622 |goto 43.1,23.7
accept Groundskeeper Wu##29626 |goto 43.1,23.7
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto 43.2,24.8
step
talk Tian Pupil##54944
Tell them let's fight
Defeat 8 Tian Pupils |q 29632/1 |goto 43.3,25.2
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto 43.2,24.8
accept Zhi-Zhi, the Dextrous##29633 |goto 43.2,24.8
accept Husshun, the Wizened##29634 |goto 43.2,24.8
step
talk Husshun##54925
Challenge Husshun to a fight
Defeat Husshan |q 29634/1 |goto 44.6,24.0
step
talk Zhi-Zhi##54924
|tip He is on top of a small hill.
Ask him if he wants to fight
Defeat Zhi-Zhi |q 29633/1 |goto 43.1,26.0
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto 43.2,24.8
turnin Husshun, the Wizened##29634 |goto 43.2,24.8
accept Xiao, the Eater##29635 |goto 43.2,24.8
step
talk Xiao##54926
Challenge him
Defeat Xiao |q 29635/1 |goto 43.1,23.6
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto 43.2,24.8
accept A Test of Endurance##29636 |goto 43.2,24.8
step
_Go up_ the stairs up |goto 42.0,24.3 < 10 |only if walking
_Continue_ the stairs up |goto 42.1,23.6 < 10 |only if walking
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto 41.6,23.7
accept A Proper Weapon##29627 |goto 41.6,23.7
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto 41.4,24.2
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto 41.8,24.6
step
click Rattan Switch##209464
collect 6 Rattan Switch##72926+ |q 29627/1 |goto 41.5,25.3
More can be found on the tree at [The Jade Forest,41.9,24.9]
step
_Go up_ the stairs up |goto 42.0,24.3 < 10 |only if walking
_Continue up_ the stairs up |goto 42.1,23.6 < 10 |only if walking
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto 41.6,23.7
accept A Strong Back##29628 |goto 41.6,23.7
accept A Steady Hand##29629 |goto 41.6,23.7
accept And a Heavy Fist##29630 |goto 41.6,23.7
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto 41.6,28.3
accept Perfection##29623 |goto 41.6,28.3
step
Use the abilities on your hotbar to mimic the Tian Instructor and practice strikes.
Practice 12 strikes |q 29623/1 |goto 41.3,27.5
step
talk Instructor Xann##54917
turnin Perfection##29623 |goto 41.6,28.3
accept Attention##29624 |goto 41.6,28.3
step
kill 2 Training Bag##55183+ |q 29624/1 |goto 41.1,28.0
|tip This may take some time to do. Each bag has a lot of health and only one is vulnerable at a time. Listen for the Instructors directions and hit the bag he calls for. If you're attacking the wrong bag you'll only do 1% damage.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto 41.6,28.3
step
_Follow_ this path |goto 41.4,26.8 < 10 |only if walking
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto 39.0,24.0
accept The Rumpus##29637 |goto 39.0,24.0
step
Use the Monastery Fireworks |use Monastery Fireworks##73369
Defeat the Rumpus Brutes and Rumpus Combatants as they spawn
Survive for 2 minutes |q 29637/1 |goto 39.0,23.2
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto 38.0,23.8
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto 39.0,24.0
stickystart greentrick
step
You will need to defend this cauldron from Greenwood Tricksters until you get back to the Tian Monastery
|tip Do not mount while it follows you, it is too slow
click Boiling Cauldron##209551
Obtain the Boiling Cauldron |q 29628/1 |goto 37.8,17.6
step
label "greentrick"
Kill Greenwood Tricksters while walking here with the cauldron |goto 38.5,23.1 <5 |c
|tip Because you have the Cauldron with you, they will automatically attack you if you get close.
|tip You cannot mount for the next few steps while pulling the Cauldron behind you.
step
_Go up_ the small hill here |goto 39.3,23.8 < 10 |only if walking
_Cross_ the bridge |goto 40.8,25.0 < 10 |only if walking
_Go up_ the stairs |goto 41.1,24.2 < 10 |only if walking
Return with the Boiling Cauldron |q 29628/2
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto 41.6,23.7
|tip You cannot mount for the next few steps while pulling the Cauldron behind you.
step
kill 10 Greenwood Trickster##54987+ |q 29630/1 |goto 38.1,21.1
|tip You can mount again.
step
kill Waxwood Matriarch##55238+, Waxwood Hunter##54988+
Kill 6 Waxwood Hunters |q 29631/1 |goto 35.0,21.5
click Blushleaf Cluster
|tip They look like small red bushes
|tip This channel determines how many extracts you obtain per plant so try not to get interrupted or move
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto 35.0,21.5
step
talk Guard Shan Long##55094
turnin Burning Bright##29631 |goto 38.0,23.8
step
_Go up_ the stairs up |goto 41.1,24.3 < 10 |only if walking
talk Groundskeeper Wu##54915
turnin A Steady Hand##29629 |goto 41.6,23.7
turnin And a Heavy Fist##29630 |goto 41.6,23.7
accept Flying Colors##29646 |goto 41.6,23.7
step
_Go up_ the stairs |goto 42.4,25.0 < 10 |only if walking
talk High Elder Cloudfall##54914
turnin Flying Colors##29646 |goto 42.7,23.2
step
_Enter_ the cave |goto 46.0,29.1 < 10 |only if walking
|tip It is just outside of the monastery
step
talk Hao Mann##56347
turnin Mann's Man##29927 |goto The Jade Forest/6 62.2,38.0
accept Trapped!##29929 |goto The Jade Forest/6 62.2,38.0
step
clicknpc Greenstone Miner##56464
|tip Marking them with Shift+v makes them much easier to find (Use v to mark enemies again).
Free 8 Gemstone Miners |q 29929/1
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/6 62.2,38.0
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto The Jade Forest/6 62.2,38.0
step
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest 46.3,29.4
accept What's Mined Is Yours##29930 |goto The Jade Forest 46.3,29.4
step
clicknpc Jade Cart##56527 |goto The Jade Forest 46.3,29.5
Defened the Jade Cart from Brittle Greenstone Gorgers until you reach your location |goto The Jade Forest 51.2,26.7 < 5 |c
step
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto The Jade Forest 50.9,27.0
turnin What's Mined Is Yours##29930 |goto The Jade Forest 50.9,27.0
accept The Serpent's Heart##29931 |goto The Jade Forest 50.9,27.0
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto The Jade Forest 48.3,61.4
accept Love's Labor##30495 |goto The Jade Forest 48.3,61.4
step
talk Historian Dinh##59395
Tell him you've got a new shipment for him |q 30495/1 |goto The Jade Forest 46.4,61.8
step
talk Surveyor Sawa##59401
Tell him you've got his jade |q 30495/2 |goto The Jade Forest 46.9,60.4
step
talk Kitemaster Shoku##59392
Tell him you have a jade delivery for him |q 30495/3 |goto The Jade Forest 48.2,60.0
step
talk Kitemaster Shoku##59392 |goto The Jade Forest 48.2,60.0
Tell him you need a ride to the top of the statue |goto The Jade Forest 47.5,60.6 < 10
confirm
step
talk Taskmaster Emi##59397
Ask her if somebody said they needed jade |q 30495/4 |goto The Jade Forest 47.6,60.7
step
talk Kitemaster Inga##59400 |goto The Jade Forest 47.4,60.5
Tell her you need a ride to the bottom of the statue |goto The Jade Forest 48.2,60.0 < 10
confirm
step
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto The Jade Forest 48.3,61.4
accept The Temple of the Jade Serpent##29932 |goto The Jade Forest 48.3,61.4
step
talk Kitemaster Shoku##59392 |goto The Jade Forest 48.2,60.0
Tell him to take you to Temple of the Jade Serpent |goto The Jade Forest 55.7,57.1 < 10
confirm
step
talk Elder Sage Wind-Yi##57242
Tell her you have a message for the Jade Serpent |q 29932/1 |goto The Jade Forest 55.8,57.1
step
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto The Jade Forest 58.1,58.7
accept The Scryer's Dilemma##29997 |goto The Jade Forest 58.1,58.7
accept The Librarian's Quandary##29998 |goto The Jade Forest 58.1,58.7
step
talk Fei##56784
accept The Rider's Bind##29999 |goto The Jade Forest 58.1,59.0
accept Lighting Up the Sky##30005 |goto The Jade Forest 58.1,59.0
stickystart "launchers"
step
clicknpc Playful Emerald Serpent##56859
Playful Emerald Serpent found |q 29999/3 |goto The Jade Forest 56.5,58.4
step
talk Lorewalker Stonestep##56786
turnin The Librarian's Quandary##29998 |goto The Jade Forest 56.3,60.4
accept Moth-Ridden##30001 |goto The Jade Forest 56.3,60.4
accept Pages of History##30002 |goto The Jade Forest 56.3,60.4
step
click Infested Book##209594
kill 12 Bookworm##57237 |q 30002/1 |goto 56.0,60.3
Right click on the Bookworms until they die.
kill 8 Dappled Moth##57232 |q 30001/1 |goto 56.0,60.3
step
talk Lorewalker Stonestep##56786
turnin Moth-Ridden##30001 |goto The Jade Forest 56.3,60.4
turnin Pages of History##30002 |goto The Jade Forest 56.3,60.4
accept Everything In Its Place##30004 |goto The Jade Forest 56.3,60.4
step
clicknpc Playful Gold Serpent##56850
Playful Gold Serpent found |q 29999/4 |goto 56.0,60.3
step
clicknpc Playful Crimson Serpent##56852
Playful Crimson Serpent found |q 29999/2 |goto The Jade Forest 58.2,61.4
step
talk Elder Sage Rain-Zhu##56782
turnin Everything In Its Place##30004 |goto The Jade Forest 58.1,58.7
step
clicknpc Playful Azure Serpent##56853
Playful Azure Serpent found |q 29999/1 |goto The Jade Forest 59.2,56.8
step
kill Water Fiend##56820
collect Scryer's Staff##76725 |q 29997/1 |goto The Jade Forest 57.1,55.8
step
talk Wise Mari##56787
turnin The Scryer's Dilemma##29997 |goto The Jade Forest 57.6,56.0
accept A New Vision##30011 |goto The Jade Forest 57.6,56.0
step
label "launchers"
Follow the path back |goto 58.0,56.2 < 10 |only if walking
click Firework Launcher##210004
Fireworks launched |q 30005/1 |goto The Jade Forest 57.5,61.4
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto The Jade Forest 58.1,58.7
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto The Jade Forest 58.1,59.1
turnin Lighting Up the Sky##30005 |goto The Jade Forest 58.1,59.1
accept The Jade Serpent##30000 |goto The Jade Forest 58.1,59.1
step
Listen to the Jade Dragon's Tale |goto The Jade Forest 55.3,57.1 < 10
talk Elder Sage Wind-Yi##57242
turnin The Jade Serpent##30000 |goto The Jade Forest 55.9,57.1
accept Get Back Here!##30499 |goto The Jade Forest 55.9,57.1
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto The Jade Forest 54.6,61.7
Tell her You could use a kite to Grooken' Hill. |goto 28.0,47.0 < 10
step
talk General Nazgrim##57108
turnin The Time For War##30499 |goto The Jade Forest 28.0,47.2
accept Sufficient Motivation##30466 |goto The Jade Forest 28.0,47.2
accept Gauging Our Progress##30484 |goto The Jade Forest 28.0,47.2
stickystart "motivatehozen"
step
click Bucket of Slickies |q 30466/2 |goto 28.1,47.4
step
talk Rivett Clutchpop##59305
Tell him Nazgrim needs an update |q 30484/2 |goto The Jade Forest 28.4,47.8
step
talk Shademaster Kiryn##56841
Tell her Nazgrim wants an update on her progress |q 30484/1 |goto The Jade Forest 29.2,50.9
step
talk Shokia##56838
Tell her Nazgrim needs her training report |q 30484/3 |goto The Jade Forest 28.5,51.9
step
talk Riko##56840
Tell him Nazgrim wants to know the status of the supplies |q 30484/4 |goto The Jade Forest 27.0,54.9
step
label "motivatehozen"
Use your Bucket of Slicky Water on Lazy Hozens |use Bucket of Slicky Water##79884
|tip They are all over Grookin Hill. Use Shift+v to make them easier to spot (Use v to mark enemies again).
Motivate 10 Hozen |q 30466/1 |goto The Jade Forest 28.1,48.0
step
talk General Nazgrim##57108
turnin Sufficient Motivation##30466 |goto The Jade Forest 28.0,47.2
turnin Gauging Our Progress##30484 |goto The Jade Forest 28.0,47.2
step
talk Lorewalker Cho##59377
accept Last Piece of the Puzzle##30485 |goto The Jade Forest 28.2,46.7
step
talk Mishi##64207 |goto The Jade Forest 28.2,46.7
Tell him you are ready to leave |goto The Jade Forest 44.6,67.2 < 10
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto 43.1,68.5
step
Use Ka Pao's Meditation Candle |use Ka Pao's Meditation Candle##80071
Watch the cutscene
Reveal the Mystery of the Frescos |q 30485/1 |goto The Jade Forest 44.5,66.9
step
talk Lorewalker Cho##59411
turnin Last Piece of the Puzzle##30485 |goto The Jade Forest 44.8,67.1
accept The Seal is Broken##31303 |goto The Jade Forest 44.8,67.1
step
talk Mishi##64244
Tell him let's do this! |invehicle |goto 44.8,67.0
step
While riding Mishi, use your ability to target and close Sha Fissures.
They are white circles with pillars of smoke coming out of them.
12 Sha Fissures Sealed |q 31303/1
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto The Jade Forest 49.3,61.5
accept Emergency Response##30504 |goto The Jade Forest 49.3,61.5
accept Residual Fallout##30500 |goto The Jade Forest 49.3,61.5
accept Jaded Heart##30502 |goto The Jade Forest 49.3,61.5
stickystart "shaecho"
step
|use Cho's Fireworks##86467
General Nazgrim Rescued |q 30504/1 |goto 48.1,61.7
step
|use Cho's Fireworks##86467
Shademaster Kiryn Rescued |q 30504/2 |goto 47.2,62.5
step
|use Cho's Fireworks##86467
Shokia Rescued |q 30504/3 |goto 46.9,60.7
step
|use Cho's Fireworks##86467
Rivett Clutchpop Rescued |q 30504/4 |goto 48.0,59.1
step
label "shaecho"
kill 10 Sha Echo |q 30500/1 |goto 48.4,60.2
click Celestial Jade##210921
Use your Celestial Jade on Sha Remnants. |use Celestial Jade##80074
kill 6 Sha Remnant |q 30502/1 |goto 48.4,60.2
step
talk Lorewalker Cho##59418
turnin Jaded Heart##30502 |goto The Jade Forest 49.3,61.5
turnin Residual Fallout##30500 |goto The Jade Forest 49.3,61.5
turnin Emergency Response##30504 |goto The Jade Forest 49.3,61.5
step
talk Fei##59899
accept Moving Forward##30648 |goto The Jade Forest 49.3,61.4
step
talk Fei##59899
Tell her that you're ready to leave.
Travel to the Valley of the Four Winds |q 30648/1 |goto 49.3,61.4
step
Click the Quest complete box located at the top right of your screen.
turnin Moving On##30648
step
talk Shao the Defiant##54697
accept Defiance##29578 |goto The Jade Forest 43.5,75.9
accept Rally the Survivors##29579 |goto The Jade Forest 43.5,75.9
step
talk Gentle Mother Hanae##54854
accept Spitfire##29585 |goto 43.3,75.7
accept Orchard-Supplied Hardware##29580 |goto 43.3,75.7
step
kill 8 Gormali Incinerator##54703+ |q 29578/2 |goto 44.5,72.9
kill 8 Gormali Raider##54702+ |q 29578/1 |goto 44.5,72.9
talk Nectarbreeze Farmer##54763
|tip You can mark them with shift+v and they'll be easier to find (Use v to mark enemies again).
Tell them to get to Hanae's house
Rescue 5 Survivors |q 29579/1
click Orchard Tool##209345
|tip Small shovels and rakes laying on the ground around this area
collect 6 Orchard Tool##72133 |q 29580/1
Use the Nectarbreeze Cider in your bags on fires around town |use Nectarbreeze Cider##72578
|tip You must be facing the fire for this to work.
12 Orchard Fires Put Out |q 29585/1 |goto 44.5,72.9
step
talk Shao the Defiant##54697
turnin Defiance##29578 |goto 43.5,75.9
turnin Rally the Survivors##29579 |goto 43.5,75.9
step
talk Gentle Mother Hanae##54854
turnin Spitfire##29585 |goto 43.3,75.7
turnin Orchard-Supplied Hardware##29580 |goto 43.3,75.7
step
talk Traumatized Nectarbreeze Farmer##55209
accept The Splintered Path##29586 |goto 43.2,75.9
step
Discover Camp Mogu |q 29586/1 |goto 41.0,74.0
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto 41.0,74.0
accept Unbound##29587 |goto 41.0,74.0
accept Getting Down to Business##29670 |goto 41.0,74.0
stickystart "freefarmers"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto 37.8,76.2
step
label "freefarmers"
clicknpc Captured Nectarbreeze Farmer##54990
|tip You can use shift+v to mark them (Use v to mark enemies again).
Free 10 Farmers |q 29587/1 |goto 39.8,74.8
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto 41.0,74.0
turnin Getting Down to Business##29670 |goto 41.0,74.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Krasarang Wilds (81-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\KrasarangWilds",
next="Zygor's Leveling Guides\\Pandaria (80-90)\\Kun-Lai Summit (82-90)",
startlevel=81,
endlevel=90,
},[[
step
talk "Dragonwing" Dan##58843 |goto Valley of the Four Winds 20.2,58.5 < 10 |only if walking
Ask him to send you to Ken-Ken |goto Krasarang Wilds 76.7,8.4 < 10 |only if walking
talk Gee Hung##60232
fpath Zhu's Watch |goto Krasarang Wilds 76.7,8.4
step
talk Ken-Ken##56115
turnin Ken-Ken##29873 |goto Krasarang Wilds 76.2,7.1
accept What's Eating Zhu's Bastion?##30079 |goto Krasarang Wilds 76.2,7.1
step
talk Mei Barrelbottom##57744
accept Finding Yi-Mo##30080 |goto 75.8,7.6
Speak with Mei |q 30079/4 |goto 75.8,7.6
step
talk Rude Sho##62879
home Wilds' Edge Inn |goto 75.8,7.0
step
talk Despondent Warden of Zhu##57457
Speak with a Despondent Warden of Zhu |q 30079/1 |goto 76.5,8.2
step
talk Yun##57825
Speak with Yun |q 30079/3 |goto 75.5,9.3
step
talk Sunni##57830
|tip She may be sleeping in a bed inside this house
Speak with Sunni |q 30079/2 |goto 77.5,8.7
step
talk Ken-Ken##56115
turnin What's Eating Zhu's Bastion?##30079 |goto 76.2,7.1
step
talk Yi-Mo Longbrow##57310
Find Yi-Mo |q 30080/1 |goto 81.3,6.8
turnin Finding Yi-Mo##30080 |goto 81.3,6.8
accept Cheer Up, Yi-Mo##30082 |goto 81.3,6.8
step
clicknpc Yi-Mo Longbrow##57310
Tell Yi-Mo that his aunt is worried about him
Then tell him to move his ass
You will then be able to kick him towards Zhu's Watch
kill Thunderbird##58111+
|tip You won't be able to move him if you're in combat.
Bring Yi-Mo to Zhu's Watch |q 30082/1 |goto Krasarang Wilds 76.7,7.7
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto 75.8,7.6
accept Tears of Pandaria##30091 |goto 75.8,7.6
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto 76.2,7.1
step
kill 12 Weeping Horror##57649+ |q 30091/1 |goto Krasarang Wilds 75.3,11.8
collect 4 Salty Core##78880 |q 30081/1 |goto Krasarang Wilds 75.3,11.8
click Slick Murdfish
|tip These look like small green and blue fish laying on the ground.
collect 4 Slick Mudfish##78877 |q 30081/2 |goto Krasarang Wilds 75.3,11.8
click Rain-Slick Honeycomb##210188
|tip They are found on the sides of tree trunks around this area.
collect 4 Chunk of Honeycomb##78881+ |q 30081/3 |goto Krasarang Wilds 75.3,11.8
You can find more of all of these items at this location |goto 72.5,9.8
step
talk Mei Barrelbottom##57744
turnin Tears of Pandaria##30091 |goto Krasarang Wilds 75.8,7.6
accept Securing the Province##30083 |goto Krasarang Wilds 75.8,7.6
accept Borderlands##30084 |goto Krasarang Wilds 75.8,7.6
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto Krasarang Wilds 76.2,7.1
accept Why So Serious?##30088 |goto Krasarang Wilds 76.2,7.1
stickystart "windscalesaurok"
step
_Enter_ the Cliffs of Despair  |goto 70.5,9.5 < 10 |walk
_Follow_ the cave path up |goto Valley of the Four Winds 73.9,56.4 < 15
click Jar of Pigment##210228
|tip Guards will attack you when you click the jar
collect Jar of Pigment##78942 |q 30088/2 |goto Valley of the Four Winds 73.9,56.4
step
label "windscalesaurok"
kill Wildscale Saurok##58215, Wildscale Herbalist##58216
|tip You can find more Wildscale outside the cave
kill 10 Wildscale Saurok |q 30083/1 |goto Valley of the Four Winds 75.5,56.9
stickystart "hugepantherfang"
step
_Exit_ the cave |goto Valley of the Four Winds 77.3,57.4 < 10 |walk
Use the Flame of Zhu's Watch to light the Memorial Flame of Rin |use Flame of Zhu's Bastion##78928 |q 30084/3 |goto Krasarang Wilds 71.2,17.5
step
Use the Flame of Zhu's Watch to light the Memorial Flame of Zhu |use Flame of Zhu's Bastion##78928 |q 30084/1 |goto Krasarang Wilds 72.7,18.2
step
Use the Flame of Zhu's Watch to light the Memorial Flame of Po |use Flame of Zhu's Bastion##78928 |q 30084/2 |goto Krasarang Wilds 74.0,16.9
step
label "hugepantherfang"
kill Krasari Stalker##58221
collect 18 Huge Panther Fang##78941+ |q 30088/1 |goto Krasarang Wilds 74.3,16.1
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto Krasarang Wilds 76.2,7.0
accept Apply Directly to the Forehead##30089 |goto Krasarang Wilds 76.2,7.0
step
|talk Despondent Warden of Zhu##57457
Use Ken-Ken's mask on Despondent Wardens of Zhu |use Ken-Ken's Mask##79021
|tip You can make these easier to spot by using Shift+v (Use v to mark enemies again).
kill Manifestation of Despair##58312+
Cure 8 Despondent Wardens of Zhu |q 30089/1 |goto 76.3,8.9
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto Krasarang Wilds 76.2,7.0
accept Zhu's Despair##30090 |goto Krasarang Wilds 76.2,7.0
step
kill 8 Essence of Despair##58409 |q 30090/1 |goto Krasarang Wilds 76.5,8.8
|tip Kill all 8 Essences before trying to use the mask on Yi-No
Use Ken-Ken's Mask on Yi-Mo |use Ken-Ken's Mask##79057
Defeat the Quintessence of Despair
Cure Yi-Mo |q 30090/2 |goto Krasarang Wilds 76.5,8.8
step
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto Krasarang Wilds 76.2,7.1
step
talk Mei Barrelbottom##57744
turnin Securing the Province##30083 |goto Krasarang Wilds 75.8,7.6
turnin Borderlands##30084 |goto Krasarang Wilds 75.8,7.6
accept Into the Wilds##30133 |goto Krasarang Wilds 75.8,7.6
step
talk Chezin Dawnchaser##58160
accept Poisoned!##30179 |goto Krasarang Wilds 68.8,22.3
step
kill Krasari Mogu##58377, Krasari Runekeeper##65598+
collect 5 Mogu Poisoned Blade##79252 |q 30179/1 |goto Krasarang Wilds 67.3,22.6
step
talk Daggle Bombstrider##58779
accept Crane Mastery##30352 |goto Krasarang Wilds 67.6,25.7
accept Profit Mastery##30353 |goto Krasarang Wilds 67.6,25.7
step
talk Zhu's Watch Courier##59151
Take the supplies |q 30133/1 |goto Krasarang Wilds 62.5,25.4
step
kill 12 Carp Hunter##58116+ |q 30352/1 |goto 66.7,27.1
kill Krasari Huntress##59116+
|tip These are usually stealthed, so keep an eye out.
collect 12 Vial of Tiger Blood##+|q 30353/1 |goto 66.7,27.1
You can find more around at this spot |goto 62.0,32.5
step
talk Daggle Bombstrider##58779
turnin Crane Mastery##30352 |goto Krasarang Wilds 67.6,25.7
accept Crane Mastery: Needlebeak##31262 |goto Krasarang Wilds 67.6,25.7
turnin Profit Mastery##30353 |goto Krasarang Wilds 67.6,25.7
accept Profit Mastery: Chasheen##31260 |goto Krasarang Wilds 67.6,25.7
step
kill Chasheen##63767
collect Ancient Tiger's Blood##85774 |q 31260/1 |goto Krasarang Wilds 61.8,32.3
step
kill Needlebeak##63796
collect The Needlebeak##85854 |q 31262/1 |goto Krasarang Wilds 62.5,20.5
step
talk Daggle Bombstrider##58779
turnin Crane Mastery: Needlebeak##31262 |goto Krasarang Wilds 67.6,25.7
turnin Profit Mastery: Chasheen##31260 |goto Krasarang Wilds 67.6,25.7
step
talk Kang Bramblestaff##56112
turnin Kang Bramblestaff##29875 |goto Krasarang Wilds 60.1,25.0
step
talk Sunwalker Dezco##58113
turnin Poisoned!##30179 |goto Krasarang Wilds 59.9,24.7
step
talk Kor Bloodtusk##58114
accept Blind Them!##30124 |goto Krasarang Wilds 59.9,24.8
step
talk Kang Bramblestaff##56112
accept Skitterer Stew##30123 |goto Krasarang Wilds 60.1,25.0
step
talk Lira Skysplitter##59046
fpath Thunder Cleft |goto 59.2,24.6
step
talk Malaya Dawnchaser##58184
home Thunder Cleft |goto 60.9,24.9
step
kill Jungle Skitterer##58067
collect 5 Intact Skitterer Gland##78911 |q 30123/1 |goto Krasarang Wilds 62.4,21.7
step
kill Darnassian Outrider##58857 |q 30124/1 |goto Krasarang Wilds 61.9,30.6
step
talk Kang Bramblestaff##56112
turnin Skitterer Stew##30123 |goto Krasarang Wilds 60.1,25.0
step
talk Kor Bloodtusk##58114
turnin Blind Them!##30124 |goto Krasarang Wilds 59.9,24.8
accept Threat from Dojan##30127 |goto Krasarang Wilds 59.9,24.8
step
talk Sunwalker Dezco##58113
accept Herbal Remedies##30130 |goto Krasarang Wilds 59.9,24.7
step
talk Kang Bramblestaff##56112
accept The Mogu Agenda##30129 |goto Krasarang Wilds 60.1,25.0
step
_Follow_ the path up |goto 57.2,37.4 < 10 |only if walking
kill Dojani Dominator##58165
|tip Circle around to the top of the hill
collect Dojani Orders##78917 |q 30129/1 |goto Krasarang Wilds 55.5,34.5
step
Next to you:
talk Kang Bramblestaff##58206
turnin The Mogu Agenda##30129
accept The Pools of Youth##30128
stickystart "imperiallotus"
step
_Follow_ the path |goto 54.8,34.1 |only if walking
_Cross_ the bridge |goto Krasarang Wilds 54.6,33.0 |only if walking
talk Na Lek##55597
Attempt to free Na Lek from his prison
kill Sleeping Guardian##58419w
click Water of Youth##210229
collect The Water of Youth##78934 |q 30128/1 |goto Krasarang Wilds 52.0,32.7
step
label "imperiallotus"
kill 4 Dojani Enforcer##65626 |q 30127/3 |goto 55.4,39.0
kill 6 Dojani Reclaimer##58117 |q 30127/1 |goto 55.4,39.0
kill 8 Dojani Surveyor##58068 |q 30127/2 |goto 55.4,39.0
click Imperial Lotus##210209
collect 20 Imperial Lotus Leaves##78918 |q 30130/1 |goto 55.4,39.0
step
talk Kor Bloodtusk##58114
turnin Threat from Dojan##30127 |goto 59.9,24.8
step
talk Sunwalker Dezco##58113
turnin The Pools of Youth##30128 |goto 59.9,24.7
turnin Herbal Remedies##30130 |goto 59.9,24.7
accept Life##30131 |goto 59.9,24.7
step
talk Sunwalker Dezco##58113
Tell him to stand by his wife's side |q 30131/1 |goto 59.9,24.7
step
talk Sunwalker Dezco##58113
turnin Life##30131 |goto 60.4,25.6
accept Going West##30132 |goto 60.4,25.6
step
talk Koro Mistwalker##58547
turnin Into the Wilds##30133 |goto 44.2,42.9
accept Unsafe Passage##30269 |goto 44.2,42.9
step
clicknpc Sunwalker Scout##59136
collect Sunwalker Scout's Report##79745 |q 30132/1 |goto Krasarang Wilds 43.8,42.8
step
talk Koro Mistwalker##58547
Tell him you're ready
kill Riverblade Bloodletter##58981+
When Koro falls click him to help him up
Accompany Koro to Crane Wing Refuge |q 30269/1 |goto Krasarang Wilds 44.2,42.9
kill Riverblade Bloodletter##58981+
step
talk Koro Mistwalker##59138
turnin Unsafe Passage##30269 |goto Krasarang Wilds 40.6,33.7
accept Blinding the Riverblades##30270 |goto Krasarang Wilds 40.6,33.7
accept Tread Lightly##30694 |goto Krasarang Wilds 40.6,33.7
step
talk Anduin Wrynn##58609
accept The Murksweats##30268 |goto Krasarang Wilds 40.5,34.7
step
kill 8 Riverblade Pathstalker##58858+ |q 30270/1 |goto Krasarang Wilds 45.2,36.5
click Riverblade Spike Trap
|tip Don't get too close to them or they'll go off and hurt you
Poke 10 traps |q 30694/1 |goto Krasarang Wilds 45.2,36.5
step
kill Murkscale Striker##58631+
collect 6 Murkscale Head##79199+ |q 30268/1 |goto Krasarang Wilds 39.8,37.0
step
talk Anduin Wrynn##58609
turnin The Murksweats##30268 |goto Krasarang Wilds 40.5,34.7
step
talk Koro Mistwalker##59138
turnin Blinding the Riverblades##30270 |goto Krasarang Wilds 40.6,33.7
turnin Tread Lightly##30694 |goto Krasarang Wilds 40.6,33.7
accept Ahead on the Way##30695 |goto Krasarang Wilds 40.6,33.7
accept Striking the Rain##30272 |goto Krasarang Wilds 40.6,33.7
step
talk Anduin Wrynn##59189
accept Sha Can Awe##30271 |goto 40.6,33.7
step
kill Maw of Despair##59315
Cleanse the West Pagoda |q 30695/1 |goto 37.9,54.3
step
kill Maw of Despair##59237
Cleanse the East Pagoda |q 30695/2 |goto 43.1,54.2
step
kill 18 Haunt of Despair##59236+ |q 30272/1 |goto 40.5,47.1
Kill Haunts of Despair in front of Hopeless Monks and Hopeless Acolytes
|tip You can make these easier to spot with Shift+v (Use v to mark enemies again).
Inspire 10 Hopeless Crane Wing Defenders |q 30271/1 |goto 40.5,47.1
step
Next to you:
talk Anduin Wrynn##59608
turnin Ahead on the Way##30695
turnin Striking the Rain##30272
turnin Sha Can Awe##30271
accept In the House of the Red Crane##30273
step
_Enter_ the building |goto Krasarang Wilds 40.4,52.1 < 10 |walk
_Go down_ the stairs |goto Krasarang Wilds 40.4,55.8 < 10 |walk
talk Chi-Ji##59653
Reach out and touch Chi-Ji
kill Sha of Despair##59651 |q 30273/1 |goto 40.4,54.5 |indoors Temple of the Red Crane
|tip Make sure to aoe down the adds he spawns. They heal you when they die, if you're close enough to them.
step
_Leave_ the building |goto Krasarang Wilds 40.4,55.8 < 10 |walk
talk Chi-Ji##59719
turnin In the House of the Red Crane##30273 |goto Krasarang Wilds 40.1,49.0
step
talk Munch Windhoof##59047
fpath Dawnchaser Retreat |goto Krasarang Wilds 29.0,50.3
step
talk Kor Bloodtusk##58114
turnin Going West##30132 |goto Krasarang Wilds 28.7,50.9
accept For the Tribe##30163 |goto Krasarang Wilds 28.7,50.9
accept The Greater Danger##30229 |goto Krasarang Wilds 28.7,50.9
step
talk Kang Bramblestaff##56112
accept Re-Reclaim##30230 |goto Krasarang Wilds 28.8,50.6
#include "Marista_Hub"
step
click The Commander's Cache##211316
|tip Upstairs in the inn.
turnin The Gratitude of Stoneplow##30628 |goto 19.8,55.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Valley of the Four Winds (81-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\ValleyOfTheFourWinds",
next="Zygor's Leveling Guides\\Pandaria (80-90)\\Krasarang Wilds (81-90)",
startlevel=81,
endlevel=90,
},[[
step
talk Chen Stormstout##56133
accept Chen and Li Li##29907 |goto Valley of the Four Winds 85.9,22.1
step
Follow Chen and Li Li |q 29907/1
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto Valley of the Four Winds 83.7,21.1
accept A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds 83.7,21.1
step
talk Princeton##60230
fpath Pang's Stead |goto Valley of the Four Winds 84.5,21.0
step
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds 82.7,21.3
step
kill Virmen Rancher##56185+, Virmen Scout##56184+, Virmen Troublemaker##55873+, Virmen Pesterer##65504+
Kill 8 Large Virmen |q 29908/1 |goto Valley of the Four Winds 79.3,23.5
Kill 18 Vermin Pesterers |q 29908/2 |goto Valley of the Four Winds 79.3,23.5
clicknpc Barrow Bush##56278
clicknpc Rake Tree##56279
clicknpc Hoe Tree##56280
|tip You can do this while mounted
Find 7 buried farm equipment |q 29877/1 |goto Valley of the Four Winds 79.3,23.5
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds 82.7,21.3
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds 83.7,21.0
accept Low Turnip Turnout##29909 |goto Valley of the Four Winds 83.7,21.0
step
talk Xiao##56110
accept The Search for the Hidden Master##30086 |goto Valley of the Four Winds 84.1,21.1
turnin The Search for the Hidden Master##30086 |goto Valley of the Four Winds 84.1,21.1
accept Ken-Ken##29873 |goto Valley of the Four Winds 84.1,21.1
accept Clever Ashyo##29871 |goto Valley of the Four Winds 84.1,21.1
accept Kang Bramblestaff##29875 |goto Valley of the Four Winds 84.1,21.1
accept Lin Tenderpaw##29872 |goto Valley of the Four Winds 84.1,21.1
step
talk Ang Thunderfoot##56207
turnin Low Turnip Turnout##29909 |goto Valley of the Four Winds 81.4,24.9
accept Taking a Crop##29940 |goto Valley of the Four Winds 81.4,24.9
step
talk Ana Thunderfoot##56465
accept Rampaging Rodents##29910 |goto Valley of the Four Winds 82.0,25.8
stickystart "Marmot Hole"
step
clicknpc Plump Marmot##56203
Move 6 Plump Marmots |q 29910/1 |goto 82.2,26.0
step
label "Marmot Hole"
click Marmot Hole##209835
Fill 6 Marmot Holes |q 29910/2 |goto 82.2,26.0
step
talk Ana Thunderfoot##56465
turnin Rampaging Rodents##29910 |goto Valley of the Four Winds 81.9,26.0
step
_Enter_ the tunnel |goto Valley of the Four Winds 86.6,28.1 < 10 |walk
click Stolen Turnip##209891
collect 5 Stolen Turnip##76297 |q 29940/1 |goto Valley of the Four Winds 85.1,27.0
step
_Exit_ the warren |goto Valley of the Four Winds 86.6,28.1 < 10 |walk
click Stolen Watermelon##209899
collect 5 Stolen Watermelon##76298 |q 29940/2 |goto Valley of the Four Winds 85.5,33.3
step
talk Ang Thunderfoot##56207
turnin Taking a Crop##29940 |goto Valley of the Four Winds 81.4,25.0
accept Practically Perfect Produce##29911 |goto Valley of the Four Winds 81.4,25.0
step
talk Pang Thunderfoot##56204
turnin Practically Perfect Produce##29911 |goto Valley of the Four Winds 83.7,21.0
accept The Fabulous Miss Fanny##29912 |goto Valley of the Four Winds 83.7,21.0
step
click Ang's Giant Pink Turnip##209844
collect 1 Ang's Giant Pink Turnip##75259 |goto Valley of the Four Winds 84.2,22.0
click Ang's Summer Watermelon##209843
collect 1 Ang's Summer Watermelon##75258 |goto Valley of the Four Winds 84.2,22.0
click Pang's Extra-Spicy Tofu##209842
collect 1 Pang's Extra-Spicy Tofu##75256 |goto Valley of the Four Winds 84.2,22.0
step
talk Miss Fanny##56192
Hit the turnip with average power
Launch a pink turnip |q 29912/1 |goto Valley of the Four Winds 82.9,21.3
step
talk Miss Fanny##56192
Hit the watermelon very softly
Launch a watermelon |q 29912/2 |goto Valley of the Four Winds 82.9,21.3
step
talk Miss Fanny##56192
Hit the tofu as hard as possible
Launch the Extra-Spicy Tofu |q 29912/3 |goto Valley of the Four Winds 82.9,21.3
step
talk Liang Thunderfoot##56205
turnin The Fabulous Miss Fanny##29912 |goto Valley of the Four Winds 75.2,24.1
accept The Meat They'll Eat##29913 |goto Valley of the Four Winds 75.2,24.1
accept Back to the Sty##29914 |goto Valley of the Four Winds 75.2,24.1
step
talk Kim of the Mountain Winds##62658
fpath Grassy Cline |goto Valley of the Four Winds 70.8,24.2
stickystart "turtlemeatscrap"
stickystart "adolmushan"
step
clicknpc Jian##56253 |q 29914/1 |goto Valley of the Four Winds 70.2,23.9
step
clicknpc Smelly##56255 |q 29914/3 |goto Valley of the Four Winds 70.1,28.7
step
clicknpc Ling##56254 |q 29914/2 |goto Valley of the Four Winds 66.9,29.3
step
label "turtlemeatscrap"
kill Wyrmhorn Turtle##56256
collect 80 Turtlemeat Scrap##75276 |q 29913/2 |goto Valley of the Four Winds 67.5,29.9
step
label "adolmushan"
kill Mushan Beast##56239
collect 4 Mushan Shoulder Steak##75275 |q 29913/1 |goto Valley of the Four Winds 72.3,31.6
step
talk Liang Thunderfoot##56205
turnin The Meat They'll Eat##29913 |goto Valley of the Four Winds 75.2,24.1
turnin Back to the Sty##29914 |goto Valley of the Four Winds 75.2,24.1
accept A Neighbor's Duty##29915 |goto Valley of the Four Winds 75.2,24.1
step
talk Francis the Shepherd Boy##56208
|tip He is on the ground next to the stairs
turnin A Neighbor's Duty##29915 |goto Valley of the Four Winds 78.1,32.9
accept Piercing Talons and Slavering Jaws##29916 |goto Valley of the Four Winds 78.1,32.9
accept Lupello##29917 |goto Valley of the Four Winds 78.1,32.9
stickystart "killwolfplain"
step
kill Lupello##56357 |q 29917/1 |goto Valley of the Four Winds 81.3,40.2
|tip He walks up and down the shoreline. He may appear on your minimap as a white skull with red eyes.
step
label "killwolfplain"
kill 6 Thieving Wolf##56106 |q 29916/2 |goto Valley of the Four Winds 83.4,31.4
kill 5 Thieving Plainshawk##56034 |q 29916/1 |goto Valley of the Four Winds 83.4,31.4
step
_Follow_ the road |goto 81.2,31.1 < 10 |only if walking
talk Francis the Shepherd Boy##56208
|tip He is on the ground next to the stairs |goto Valley of the Four Winds 78.1,32.9
turnin Piercing Talons and Slavering Jaws##29916 |goto Valley of the Four Winds 78.1,32.9
turnin Lupello##29917
step
talk Shang Thunderfoot##56312
accept A Lesson in Bravery##29918 |goto Valley of the Four Winds 78.2,32.8
step
Use your Rancher's Lariat on a Great White Plainshawk |use Rancher's Lariat##75208
kill Great White Plainshawk##56171 |q 29918/1 |goto Valley of the Four Winds 78.8,31.4
|tip They are flying above you.
|tip When it grasps you in its claws use the Escape Claws ability that appear to break free.
step
talk Shang Thunderfoot##56312
turnin A Lesson in Bravery##29918 |goto Valley of the Four Winds 74.4,34.8
step
talk Chen Stormstout##56133
accept Great Minds Drink Alike##29919 |goto Valley of the Four Winds 75.3,35.5
step
talk Chen Stormstout##56133
Tell him you're ready
Escort Chen and Li Li |q 29919/1 |goto Valley of the Four Winds 75.3,35.5
|tip Make sure you stay close to them even though you don't have to protect them. The quest will bug and you will fail otherwise.
step
talk Mudmug##56474
turnin Great Minds Drink Alike##29919 |goto Valley of the Four Winds 68.7,43.1
step
talk Chen Stormstout##56133
accept Leaders Among Breeders##29944 |goto Valley of the Four Winds 68.9,43.1
step
talk Li Li##56138
accept Yellow and Red Make Orange##29945 |goto Valley of the Four Winds 68.9,43.3
stickystart "meadowmari"
stickystart "meadow"
step
kill Jinanya the Clawblade##56513 |q 29944/2 |goto Valley of the Four Winds 67.0,38.7
|tip Walks around this area, some searching may be necessary. He may appear on your minimap as a white skull with red eyes.
step
kill Aiyu the Skillet##56520 |q 29944/1 |goto Valley of the Four Winds 69.2,37.0
|tip Walks around this area, some searching may be necessary. He may appear on your minimap as a white skull with red eyes.
step
kill Frenzyhop##56514 |q 29944/3 |goto Valley of the Four Winds 64.6,40.7
|tip He is usually standing atop a small hill.
step
label "meadowmari"
kill Longfang Howler##56524+, Mushan Nomad##56523+, Tawnyhide Stag##56532+, Tawnyhide Doe##56531+
collect 40 Vial of Animal Blood##76335+ |q 29945/2 |goto Valley of the Four Winds 66.5,41.7
step
label "meadow"
click Meadow Marigold##209907
|tip They look like golden petals on the ground.
collect 10 Meadow Marigold##76334 |q 29945/1 |goto Valley of the Four Winds 66.5,41.7
You can find more animals and marigolds around: [69.7,46.8]
step
talk Li Li##56138
turnin Yellow and Red Make Orange##29945 |goto Valley of the Four Winds 68.9,43.3
accept Crouching Carrot, Hidden Turnip##29947 |goto Valley of the Four Winds 68.9,43.3
step
talk Chen Stormstout##56133
turnin Leaders Among Breeders##29944 |goto Valley of the Four Winds 68.9,43.2
accept The Warren-Mother##29946 |goto Valley of the Four Winds 68.9,43.2
step
talk Mudmug##56474
accept Thieves to the Core##29948 |goto Valley of the Four Winds 68.7,43.1
stickystart "orangeturnip"
stickystart "stolensack"
step
_Enter_ the warren |goto Valley of the Four Winds 69.1,40.0 < 10 |walk
kill Chufa##56537 |q 29946/1 |goto Valley of the Four Winds 67.9,37.4 |indoors The Twisted Warren
|tip Don't worry that it is elite, Chen comes to help you.
step
label "orangeturnip"
Throw your Orange-Painted Turnips at Virmen Hoarders |use Orange-Painted Turnip##76370
Trick 12 Virmen with Orange-Painted Turnips |q 29947/1 |goto 68.99,36.96 |indoors The Twisted Warren
step
label "stolensack"
While in the warren:
click Stolen Sack of Hops##211696
collect 6 Stolen Sack of Hops##76337 |q 29948/1 |goto 68.99,36.96 |indoors The Twisted Warren
step
_Leave_ the warren |goto Valley of the Four Winds 69.1,40.0 < 10 |walk
talk Mudmug##56474
turnin Thieves to the Core##29948 |goto Valley of the Four Winds 68.7,43.1
step
talk Li Li##56138
turnin Crouching Carrot, Hidden Turnip##29947 |goto Valley of the Four Winds 68.9,43.3
step
talk Chen Stormstout##56133
turnin The Warren-Mother##29946 |goto Valley of the Four Winds 68.9,43.1
accept Legacy##29949 |goto Valley of the Four Winds 68.9,43.1
step
talk Li Li##56138
turnin Legacy##29949 |goto Valley of the Four Winds 68.8,43.4
accept Li Li's Day Off##29950 |goto Valley of the Four Winds 68.8,43.4
step
If Li Li isn't with you then use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
Bring Li Li to Huangtze Falls |q 29950/3 |goto Valley of the Four Winds 74.8,42.5
step
If Li Li isn't with you then use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
Bring Li Li to New Cifera |q 29950/2 |goto Valley of the Four Winds 61.9,34.8
step
talk Clever Ashyo##56113
turnin Clever Ashyo##29871 |goto Valley of the Four Winds 61.1,34.3
accept Ashyo's Vision##29577 |goto Valley of the Four Winds 61.1,34.3
step
talk Gladecaster Lang##58736
accept Watery Woes##30267 |goto Valley of the Four Winds 61.0,32.9
step
talk Yan##56773
accept Bottletoads##29757 |goto Valley of the Four Winds 60.6,33.7
step
kill Manglemaw##58754
|tip After Manglemaw dies, his mother comes out.
kill Manglemaw's Mother##58755
collect 1 Enormous Crocolisk Tail##79238 |n
Click the Enormous Crocolisk Tail in your bags |use Enormous Crocolisk Tail##79238
accept A Crocolisk Tale##30275 |goto 57.4,26.5
stickystart "Gladeglimmer"
step
kill Glade Hunter##57299, Glade Sprinter##58741
collect 5 Spindly Bloodfeather##79198 |q 30267/2 |goto 57.0,34.7
step
label "Gladeglimmer"
clicknpc Glade Glimmer##57301
|tip They look like small bugs that fly around, sometimes in big groups
collect 18 Glade Glimmer##79197 |q 30267/1 |goto 57.0,34.7
step
talk Yan##56773
turnin A Crocolisk Tale##30275 |goto 60.6,33.7
step
talk Gladecaster Lang##58736
turnin Watery Woes##30267 |goto Valley of the Four Winds 61.0,32.9
step
_Follow_ the path up |goto Valley of the Four Winds 63.1,29.7 < 10 |only if walking
talk Zhang Yue##56802
accept Snap Judgment##29600 |goto Valley of the Four Winds 59.8,27.9
step
talk Clever Ashyo##56113
Tell him to speak with the water |q 29577/1 |goto Valley of the Four Winds 59.3,27.6
step
talk Zhang Yue##56802
turnin Ashyo's Vision##29577 |goto Valley of the Four Winds 59.8,27.9
accept The Golden Dream##29581 |goto Valley of the Four Winds 59.8,27.9
stickystart "razorsnapper"
stickystart "Dreamleafbush"
stickystart "Gurgling"
step
_Go up_ this path |goto 60.8,25.7 < 10 |only if walking
kill Krosh##56833
collect Krosh's Back##83767 |n
Click Krosh's Back in your bags |use Krosh's Back##83767
accept Guess Whose Back##29758
step
label "Dreamleafbush"
click Dreamleaf Bush##209987
|tip It is a big green plant next to Krosh
collect Sprig of Dreamleaf####76973 |q 29581/1 |goto 65.3,25.82
step
label "razorsnapper"
kill 16 Razorback Snapper##56832 |q 29600/1 |goto 63.9,26.5
step
label "Gurgling"
click Gurgling Toadspawn##209950
|tip These are found in the water around this area. The water will be bubbling if one is there. You can do this while mounted.
Scoop 8 Toad Eggs |q 29757/1 |goto 63.9,26.5
step
talk Zhang Yue##56802
turnin Snap Judgment##29600 |goto Valley of the Four Winds 59.8,27.9
step
talk Yan##56773
turnin The Golden Dream##29581 |goto Valley of the Four Winds 60.6,33.7
turnin Bottletoads##29757 |goto Valley of the Four Winds 60.6,33.7
turnin Guess Who's Back##29758 |goto Valley of the Four Winds 60.6,33.7
step
talk Innkeeper Lei Lan##59582
home The Lazy Turnip |goto Valley of the Four Winds 55.1,50.6
step
talk Wing Nga##60231
fpath Halfhill |goto 56.4,50.3
step
talk Stonecarver Mac##64315
accept Children of the Water##32045 |goto 55.1,47.4
step
talk Lolo Lio##59585
accept Got Silk?##32035 |goto 55.6,52.1
step
If Li Li isn't with you than use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
Bring Li Li to the Silkmasters |q 29950/1 |goto 62.4,58.9
step
talk Silkmaster Tsai##57405
turnin Got Silk?##32035 |goto Valley of the Four Winds 62.7,59.7
|tip The next quest, Where Silk Comes From, has been known to bug and not be able to be accepted. If that happens just skip the quest.
accept Where Silk Comes From##30072 |goto Valley of the Four Winds 62.7,59.7
step
talk Journeyman Chu##57424
accept The Moth Rebellion##30059 |goto Valley of the Four Winds 63.5,58.5
step
click Mulberry Barrel##210080
collect Mulberry Leaves##77455 |q 30072/1 |goto Valley of the Four Winds 62.5,55.2
stickystart "rawsilk"
step
clicknpc Hungry Silkworm##57403
|tip Under the building.
Feed 5 Hungry Silkworms |q 30072/2 |goto Valley of the Four Winds 62.3,56.7
step
label "rawsilk"
click Silk Cocoon Bucket##210088
|tip Small buckets inside this building
collect Raw Silk##77456 |q 30072/3 |goto Valley of the Four Winds 62.4,62.5
step
talk Silkmaster Tsai##57405
turnin Where Silk Comes From##30072 |goto Valley of the Four Winds 62.7,59.7
step
kill 6 Mutated Silkmoth##57422+ |q 30059/1 |goto Valley of the Four Winds 64.7,55.5
kill 8 Tiny Mutated Silkmoth##65984+ |q 30059/2 |goto Valley of the Four Winds 64.7,55.5
step
talk Journeyman Chu##57424
turnin The Moth Rebellion##30059 |goto Valley of the Four Winds 63.5,58.5
step
talk Master Goh##57407
accept Mothallus!##30058 |goto Valley of the Four Winds 63.6,58.5
step
click Mothallus Bait##210117
|tip Looks like a pitchfork on top of a pile.
|tip When Mothallus flies up into the air, attack and break the cocoons so the Mothfighters can pull her back down.
kill Mothallus##57421 |q 30058/1 |goto Valley of the Four Winds 64.4,58
step
talk Master Goh##57407
turnin Mothallus!##30058 |goto Valley of the Four Winds 63.6,58.5
step
talk Li Li##56138
turnin Li Li's Day Off##29950 |goto Valley of the Four Winds 68.8,43.4
step
talk Mudmug##56474
accept Muddy Water##29951 |goto Valley of the Four Winds 68.7,43.1
step
talk Chen Stormstout##56133
accept Broken Dreams##29952 |goto Valley of the Four Winds 68.8,43.4
step
talk Chen Stormstout##56133 |goto Valley of the Four Winds 68.8,43.4
Ask Chen what happened and listen to his story |goto 32.2,71.5 < 10
step
Use the abilities on your hotbar to defeat the various monsters as you follow Uncle Gao
Listen to Chen's story |q 29952/1 |goto 34.5,70.4
step
talk Chen Stormstout##56133
turnin Broken Dreams##29952 |goto Valley of the Four Winds 68.8,43.4
step
click Muddy Water##209921
Plan out your path before you start gathering mud
|tip You will slowly lose mud as you swim.
|tip When you find a pile of glittering mud, there is usually multiple piles right next to each other.
|tip Make sure to grab them all before trying to move to another.
Fill up your vial 100% with mud |q 29951/1 |goto Valley of the Four Winds 73.1,55.5
step
talk Mudmug##56474
turnin Muddy Water##29951 |goto Valley of the Four Winds 68.7,43.1
step
talk Chen Stormstout##56133
accept Chen's Resolution##30046 |goto Valley of the Four Winds 68.9,43.4
step
talk Chen Stormstout##56133
turnin Chen's Resolution##30046 |goto Valley of the Four Winds 55.9,49.4
accept Hop Hunting##30053 |goto Valley of the Four Winds 55.9,49.4
accept Li Li and the Grain##30048 |goto Valley of the Four Winds 55.9,49.4
accept Doesn't Hold Water##30049 |goto Valley of the Four Winds 55.9,49.4
step
talk Mudmug##56474
turnin Doesn't Hold Water##30049 |goto Valley of the Four Winds 54.3,38.7
accept The Great Water Hunt##30051 |goto Valley of the Four Winds 54.3,38.7
stickystart "gladewater"
step
talk Mudmug##56474
Tell him you're ready to go |goto Valley of the Four Winds 54.3,38.7
kill Kracor##67128 |q 32045/1 |goto 55.2,35.4
step
label "gladewater"
While Mudmug is following you:
Run through Swirling Pools located around this area
|tip They look like dark blue pools on the water's surface
Gather 30 Gladewater |q 30051/1 |goto Valley of the Four Winds 53.3,31.2
step
Next to you
talk Mudmug##58785
turnin The Great Water Hunt##30051
accept Barreling Along##30172
step
kill Thundergill##67125 |q 32045/2 |goto 54.1,25.6
step
kill Succula##67099 |q 32045/3 |goto 51.3,26.9
|tip She is stealthed at the water's edge
step
talk Gardener Fran##62377
accept Gardener Fran and the Watering Can##30050 |goto Valley of the Four Winds 48.3,33.5
step
talk Gardener Fran##62377
You will water her gardens for her
All of the gardens are placed around the big hill at [Valley of the Four Winds,50,29]
She will call out which vegetable patch you need to water. The order mostly stays the same
Once you start, proceed clockwise around the hill and water the vegetables
Tell her You are ready to go and water the vegetables that she calls out on-screen
Water 60 vegetables |q 30050/1 |goto Valley of the Four Winds 48.3,33.5
step
talk Gardener Fran##62377
turnin Gardener Fran and the Watering Can##30050
Tell her you're helping a friend brew some beer |q 30053/1 |goto Valley of the Four Winds 48.3,33.5
step
talk Mung-Mung##57401
accept Enough is Ookin' Enough##30054 |goto Valley of the Four Winds 44.2,34.2
step
talk Den Mudclaw##62385
accept The Farmer's Daughter##30056 |goto Valley of the Four Winds 44.3,34.2
Ask if he has any hops he can spare |q 30053/3 |goto Valley of the Four Winds 44.3,34.2
step
_Enter_ the warren |goto 43.6,35.0 < 10 |walk
talk Mina Mudclaw##57408
|tip She is inside the warren, standing on top of a huge carrot
turnin The Farmer's Daughter##30056 |goto 41.3,38.1
accept Seeing Orange##30057 |goto 41.3,38.1
step
_Exit_ the warren |goto 43.6,35.0 < 10 |walk
kill Springtail Gnasher##57413, Springtail Leaper##57415
collect 100 Virmen Tooth##77379 |q 30054/1 |goto 43.4,39.1
step
talk Mung-Mung##57401
turnin Enough is Ookin' Enough##30054 |goto Valley of the Four Winds 44.2,34.3
step
talk Den Mudclaw##62385
turnin Seeing Orange##30057 |goto Valley of the Four Winds 44.3,34.2
step
talk Gai Lan##57385
accept Weed War##30052 |goto Valley of the Four Winds 38.6,51.7
step
talk Gai Lan##57385
Ask him "What weeds?"
clicknpc Ugly Weed##57306
clicknpc Nasty Weed##57308
click Weed-B-Gone Gas Bomb##210057
|tip Keep an eye out for Gai Lan to throw down Weed-B-Gone Gas Bomb for you to use.
|tip Use the new button available to you to clear a lot of weeds at once.
Pull 100 Weeds |q 30052/1 |goto 38.6,51.7
step
talk Gai Lan##57385
turnin Weed War##30052 |goto Valley of the Four Winds 38.6,51.7
Ask him if you can buy some hops |q 30053/2 |goto Valley of the Four Winds 38.6,51.7
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Hop Hunting##30053
accept Stormstout's Hops##30055
step
talk Chen Stormstout##56133
If Mudmug is no longer following you, you can find him at [Valley of the Four Winds,54.3,38.7]
|tip Don't mount while you run back to Halfhill, or you may lose him again
turnin Barreling Along##30172 |goto 55.9,49.5
turnin Stormstout's Hops##30055 |goto 55.9,49.5
step
talk Stonecarver Mac##64315
turnin Children of the Water##32045 |goto 55.1,47.4
step
talk Li Li##56138
turnin Li Li and the Grain##30048 |goto Valley of the Four Winds 52.7,62.8
accept Taste Test##30031 |goto Valley of the Four Winds 52.7,62.8
step
talk Grainlord Kai##57211
accept Wee Little Shenanigans##30029 |goto Valley of the Four Winds 52.8,63.0
step
talk Grainer Pan##57209
accept Out of Sprite##30030 |goto Valley of the Four Winds 52.6,63.0
stickystart "cornan"
stickystart "trickymaizer"
step
click Aged Grain##210021
Taste Aged Grain |q 30031/1 |goto Valley of the Four Winds 51.3,60.5
step
click Malted Grain##210023
Taste Malted Grain |q 30031/3 |goto Valley of the Four Winds 50.7,61.9
step
click Light Grain##210024
Taste Light Grain |q 30031/2 |goto Valley of the Four Winds 53.7,63.3
step
click Fresh Grain##210022
Taste Fresh Grain |q 30031/4 |goto Valley of the Four Winds 53.6,64.6
step
label "cornan"
kill Cornan##57213 |q 30030/1 |goto Valley of the Four Winds 51.5,64.5
step
label "trickymaizer"
kill 8 Tricky Maizer##57223 |q 30029/1 |goto Valley of the Four Winds 52.4,62.2
step
talk Li Li##56138
turnin Taste Test##30031 |goto Valley of the Four Winds 52.7,62.8
step
talk Grainer Pan##57209
turnin Out of Sprite##30030 |goto Valley of the Four Winds 52.6,63.0
step
talk Grainlord Kai##57211
turnin Wee Little Shenanigans##30029 |goto Valley of the Four Winds 52.7,63.0
accept The Quest for Better Barley##30032 |goto Valley of the Four Winds 52.7,63.0
accept Grain Recovery##30028 |goto Valley of the Four Winds 52.7,63.0
step
click Stolen Malt Sack##210001
collect 8 Sack of Grain##77033 |q 30028/1 |goto Valley of the Four Winds 54.7,67.7
step
click Rappeling Rope
Use the Cliff Harness. |q 30032/1 |goto 51.3,77.4
step
_Enter_ the cave |goto Valley of the Four Winds 53.6,76.4 < 10 |walk
click Malted Cave Barley##210037
|tip It's inside the cave, along the walls
collect Malted Cave Barley##77034 |q 30032/2 |goto 53.6,76.4
step
_Exit_ the Cave |goto 53.6,76.4 < 10 |walk
click Climbing Rope##210040 |only if walking
Ride to the top of the Cliff |goto Krasarang Wilds/0 48.63,27.04 |only if walking
confirm
step
talk Li Li##56138
turnin The Quest for Better Barley##30032 |goto Valley of the Four Winds 52.7,62.8
accept The Chen Taste Test##30047 |goto 52.7,62.8
step
talk Grainlord Kai##57211
turnin Grain Recovery##30028 |goto Valley of the Four Winds 52.7,63.0
step
talk Chen Stormstout##56133
turnin The Chen Taste Test##30047 |goto Valley of the Four Winds 55.9,49.5
accept The Emperor##30073 |goto Valley of the Four Winds 55.9,49.5
step
Wait for the dialogue to end.
Help Chen brew his beer |q 30073/1 |goto 56.0,49.5
step
talk Chen Stormstout##56133
turnin The Emperor##30073 |goto Valley of the Four Winds 55.9,49.4
accept Knocking on the Door##30074 |goto Valley of the Four Winds 55.9,49.4
step
talk Chen Stormstout##56133
turnin Knocking on the Door##30074 |goto Valley of the Four Winds 32.2,68.5
step
talk Mudmug##56474
accept The Fanciest Water##30076 |goto Valley of the Four Winds 32.3,68.3
step
talk Li Li##56138
accept Barrels, Man##30077 |goto Valley of the Four Winds 32.3,68.5
step
talk Chen Stormstout##56133
accept Clear the Way##30075 |goto Valley of the Four Winds 32.1,68.3
step
While completing this step be careful not to aggro Ook-Ook
clicknpc Barreled Pandaren##57662
|tip Use Shift+v to make them easier to spot (Use v to mark enemies again).
Free 7 Barreled Pandaren |q 30077/1 |goto Valley of the Four Winds 35.3,66.5
kill Mischievous Virmen##57671, Ale-Addled Hozen##57672
Kill 10 Ale-Addled Hozen or Mischievous Virmen |q 30075/1 |goto Valley of the Four Winds 35.3,66.5
kill Curious Water Sprite##57673
collect 3 Spritewater Essence##77471 |q 30076/1 |goto Valley of the Four Winds 35.3,66.5
step
talk Li Li##56138
turnin Barrels, Man##30077 |goto Valley of the Four Winds 36.1,69.0
step
talk Chen Stormstout##56133
turnin Clear the Way##30075 |goto Valley of the Four Winds 36.0,69.0
step
talk Mudmug##56474
turnin The Fanciest Water##30076 |goto Valley of the Four Winds 36.0,69.1
step
talk Chen Stormstout##56133
accept Cleaning House##30078 |goto Valley of the Four Winds 36.0,69.0
step
talk Chen Stormstout##56133 |goto Valley of the Four Winds 36.0,69.0
"Crack your knuckles and nod your head." |goto Valley of the Four Winds 38.2,67.7 < 10
The objectives of this quest can be done in any order depending on where the phase happens to take you
Click here if you start near Mudmug |next |confirm
Click here if you start near Li Li |next "lili" |confirm
Click here if you start near Chen |next "chen" |confirm
step
label "mudmug"
talk Mudmug##58027
Tell him to calm down.
kill Eddy##58014 |q 30078/1 |goto 34.9,70.3
|tip When Eddy activates his Watery Shield run over bubbles on the ground until it is weakened, then click the bubble to pop it.
Click here to move on to Li Li |next "lili" |confirm
Click here if you're done |goto Valley of the Four Winds 36.1,68.9 < 10 |noway |c |next "done"
step
label "lili"
talk Li Li##58028
Tell her you'll help
kill Jooga##58015 |q 30078/2 |goto 33.0,71.1
|tip You can keep Jooga pinned down by clicking the Empty Kegs around the room. Dodge the bananas that he throws at you.
Click here to move on to Chen |next "chen" |confirm
Click here if you're done |goto Valley of the Four Winds 36.1,68.9 <5 |noway |c |next "done"
step
label "chen"
talk Chen Stormstout##58029
Tell him let's do this
Kill the Fizzy Yellow Spirits around the room in order to summon the Alemental
kill Fizzy Yellow Alemental##58017 |q 30078/3 |goto 38.2,68.2
Click here to move on to Mudmug |next "mudmug" |confirm
Click here if you're done |goto Valley of the Four Winds 36.1,68.9 < 10 |noway |c |next "done"
step
label "done"
talk Chen Stormstout##56133
turnin Cleaning House##30078 |goto 36.0,69.1
step
talk Emmi##61026
accept Stoneplow Thirsts##30117 |goto Valley of the Four Winds 36.2,68.3
step
talk "Dragonwing" Dan##58843
fpath Stoneplow |goto Valley of the Four Winds 20.2,58.5
step
talk Lin Tenderpaw##56111
turnin Lin Tenderpaw##29872 |goto Valley of the Four Winds 19.9,56.9
accept Stemming the Swarm##29981 |goto Valley of the Four Winds 19.9,56.9
step
talk Loon Mai##56720
turnin Stoneplow Thirsts##30117 |goto Valley of the Four Winds 19.5,56.8
accept Evacuation Orders##29982 |goto Valley of the Four Winds 19.5,56.8
step
talk Nan the Mason Mug##62878
home Stone Mug Tavern |goto Valley of the Four Winds 19.7,55.9
stickystart "ikthikmantid"
step
talk Haiyun Greentill##57123
Tell him Commander Loon Mai has issued evacuation orders
Evacuate the Greentil Family |q 29982/3 |goto Valley of the Four Winds 15.8,56.3
step
talk Mia Marlfur##57127
Tell her Commander Loon Mai has issued evacuation orders
Evacuate the Marlfur Family |q 29982/4 |goto Valley of the Four Winds 15.5,54.9
step
talk Feng Spadepaw##57121
Tell him Commander Loon Mai has issued evacuation orders
Evacuate the Spadepaw Family |q 29982/2 |goto Valley of the Four Winds 12.8,55.7
step
talk Wei Blacksoil##57120
Tell him Commander Loon Mai has issued evacuation orders
Kill the Ik'thallik Ambusher that spawns
Talk to Wei Blacksoil
Tell him Loon Mai has issued evacuation orders
Evacuate the Blacksoil Family |q 29982/1 |goto Valley of the Four Winds 7.2,54.8
step
label "ikthikmantid"
kill Ik'thik Swiftclaw##57195+, Ik'thik Wingblade##57196+
Kill 14 Ik'thik mantid |q 29981/1 |goto 13.1,52.9
step
talk Loon Mai##56720
turnin Evacuation Orders##29982	|goto Valley of the Four Winds 19.5,56.8
turnin Stemming the Swarm##29981 |goto Valley of the Four Winds 19.5,56.8
accept The Hidden Master##29983	|goto Valley of the Four Winds 19.5,56.8
step
talk Master Bruised Paw##56714
turnin The Hidden Master##29983 |goto Valley of the Four Winds 18.3,31.2
accept Unyielding Fists: Trial of Bamboo##29984 |goto Valley of the Four Winds 18.3,31.2
step
talk Master Bruised Paw##56714
Tell him you are ready for the trial of bamboo |invehicle |goto Valley of the Four Winds 18.3,31.2
step
Follow the instructions and use the abilities on your hotbar to pass the trial
Strike 3 stacks of Bamboo Reeds |q 29984/1
|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Bamboo##29984 |goto Valley of the Four Winds 18.3,31.2
step
talk Master Bruised Paw##56714
accept They Will Be Mist##29985 |goto Valley of the Four Winds 18.3,31.2
accept Fog Wards##29986 |goto Valley of the Four Winds 18.3,31.2
step
talk Lin Tenderpaw##56111
accept Tenderpaw By Name, Tender Paw By Reputation##29992 |goto Valley of the Four Winds 18.1,31.0
stickystart "jademoonleaf"
step
click Northern Fog Ward##209945
Light the Northern Fog Ward |q 29986/1 |goto Valley of the Four Winds 16.0,32.1
step
click Western Fog Ward##209946
Light the Western Fog Ward |q 29986/2 |goto Valley of the Four Winds 14.8,36.8
step
click Southern Fog Ward##209947
Light the Southern Fog Ward |q 29986/3 |goto Valley of the Four Winds 18.1,41.5
step
label "jademoonleaf"
kill 12 Mist Incarnation##56740+ |q 29985/1 |goto Valley of the Four Winds 18.0,37.0
click Jademoon##209952
collect 18 Jademoon Leaf##76499+ |q 29992/1 |goto Valley of the Four Winds 18.0,37.0
|tip They look like small, green clusters of circular leaves.
step
talk Lin Tenderpaw##56111
turnin Tenderpaw By Name, Tender Paw By Reputation##29992 |goto Valley of the Four Winds 18.1,31.0
step
talk Master Bruised Paw##56714
turnin They Will Be Mist##29985 |goto Valley of the Four Winds 18.3,31.2
turnin Fog Wards##29986 |goto Valley of the Four Winds 18.3,31.2
accept Unyielding Fists: Trial of Wood##29987 |goto Valley of the Four Winds 18.3,31.2
step
talk Master Bruised Paw##56714
Tell him "Your fists are ready" |invehicle |goto Valley of the Four Winds 18.3,31.2
step
Follow the instructions and use the abilities on your hotbar to pass the trial
Strike 4 stacks of Wooden Boards |q 29987/1
|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange.
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Wood##29987 |goto Valley of the Four Winds 18.3,31.2
accept A Taste For Eggs##29988 |goto Valley of the Four Winds 18.3,31.2
stickystart "emperortern"
step
click Hornbill Strider Egg##209955
|tip It's a large egg in the center of this room
collect Hornbill Strider Egg##76516 |q 29988/3 |goto Valley of the Four Winds 27.0,39.0
step
label "emperortern"
click Whitefisher Crane Egg##209954
|tip These are small white eggs on the ground next to plants near the water. Nearby Whitefisher Cranes may attack you when you pick up the eggs.
collect 4 Whitefisher Crane Egg##76503 |q 29988/2 |goto Valley of the Four Winds 25.3,42.1
click Emperor Tern Egg##209953
|tip These are small groups of purple eggs on the ground next to plants near the water. You have to click each egg individually. Nearby groups of Emperor Terns may attack you when you pick up the eggs.
collect 10 Emperor Tern Egg##76501+ |q 29988/1 |goto Valley of the Four Winds 25.3,42.1
step
talk Master Bruised Paw##56714
turnin A Taste For Eggs##29988 |goto Valley of the Four Winds 18.3,31.2
step
talk Master Bruised Paw##56714
accept Unyielding Fists: Trial of Stone##29989 |goto Valley of the Four Winds 18.3,31.2
step
talk Master Bruised Paw##56714
Tell him You have done all that he has asked of you and you are ready for the trial of stone |invehicle |goto Valley of the Four Winds 18.3,31.2
step
Follow the instructions and use the abilities on your hotbar to pass the trial.
Strike 5 stacks of Stone Blocks |q 29989/1
|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange.
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Stone##29989 |goto Valley of the Four Winds 18.3,31.2
step
talk Lin Tenderpaw##56111
accept Training and Discipline##29990 |goto Valley of the Four Winds 18.1,31.0
step
_DO NOT_ turn in the quest _Training and Discipline_
You will need it later to move on to the next zone
talk Tani##63822
accept Tiger Mastery##30183 |goto 16.1,82.1
step
talk Hemet Nesingwary Jr.##58422
accept Mushan Mastery##30181 |goto Valley of the Four Winds 16.1,82.6
step
kill 15 Gorge Stalker##58432 |q 30183/1 |goto 12.4,76.5
kill 15 Dustback Mushan##58424+ |q 30181/1 |goto 12.4,76.5
|tip Young Dustback Mushans also count for this quest
You can find more Mushan and Stalkers at [Valley of the Four Winds,13.8,70.4]
step
talk Tani##63822
turnin Tiger Mastery##30183 |goto 16.1,82.1
accept Fox Mastery##30182 |goto 16.1,82.1
step
talk Hemet Nesingwary Jr.##58422
turnin Mushan Mastery##30181 |goto Valley of the Four Winds 16.1,82.6
step
talk Hemet Nesingwary##58421
accept Mushan Mastery: Darkhide##30184 |goto Valley of the Four Winds 16.0,82.5
step
talk Matt "Lucky" Gotcher##58434
accept Stag Mastery##32038 |goto 15.9,82.3
stickystart "wilderstag"
stickystart "slypupfox"
step
kill Darkhide##58435
|tip Don't worry that he's elite, hes easy to kill
collect Darkhide's Head###79058 |q 30184/1 |goto Valley of the Four Winds 25.8,75.0
step
label "wilderstag"
kill 10 Wilderland Stag##58489+|q 32038/1 |goto 23.4,80.6
You can find more Stags around [Valley of the Four Winds,28.8,78.6]
step
label "slypupfox"
kill 15 Sly Fox##58548+ |q 30182/1 |goto 27.6,71.4
|tip These are usually stealthed, so keep an eye out
|tip Sly Pups also count for this quest
step
talk Hemet Nesingwary##58421
turnin Mushan Mastery: Darkhide##30184 |goto Valley of the Four Winds 16.1,82.6
step
talk Matt "Lucky" Gotcher##58434
turnin Stag Mastery##32038 |goto 15.9,82.3
step
talk Tani##63822
turnin Fox Mastery##30182 |goto 16.0,82.5
step
talk Hemet Nesingwary Jr.##58422
accept Tortoise Mastery##30185 |goto 16.1,82.6
step
kill Bulgeback Tortoise##58431
collect 5 Intact Tortoise Shell##79059 |q 30185/1 |goto 19.1,77.4
|tip They will hide in their shells if you use stealth
You can find more of them at [Valley of the Four Winds,20.6,72.0]
step
talk Hemet Nesingwary Jr.##58422
turnin Tortoise Mastery##30185 |goto Valley of the Four Winds 19.9,75.7
accept Parental Mastery##30186 |goto Valley of the Four Winds 19.9,75.7
step
Swim underwater and enter the cave here |goto Valley of the Four Winds 21.3,74.4 < 10 |walk
talk Hemet Nesingwary Jr.##58461
Try shaking Hemet |goto Valley of the Four Winds 24.5,74.6
When the beast comes take it to this spot |goto 23.8,74.8
kill Torjar's Bane##58439
Rescue Hemet Nesingwary Jr. |q 30186/1 |goto 23.8,74.8
step
_Exit_ the cave and swim up |goto Valley of the Four Winds 21.3,74.4 < 10 |walk
talk Hemet Nesingwary##58421
turnin Parental Mastery##30186 |goto Valley of the Four Winds 16.0,82.5
step
talk Loon Mai##56720
turnin Training and Discipline##29990 |goto Valley of the Four Winds 19.5,56.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Kun-Lai Summit (82-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\KunLai",
next="Zygor's Leveling Guides\\Pandaria (80-90)\\Townlong Steppes (83-90)",
startlevel=82,
endlevel=90,
},[[
step
talk Messenger Grummle##63778
accept The Road to Kun-Lai##31255 |goto Valley of the Four Winds 18.5,56.5
Grummle can also be found at the provided locations:
Location 1 |goto 70.0,23.6
Location 2 |goto 55.3,50.1
step
talk Highroad Grummle##62738
Speak with the Highroad Grummle |q 31255/1 |goto Valley of the Four Winds 70.1,23.5
step
talk Shin the Weightless##61759
fpath Tavern in the Mists |goto The Veiled Stair 56.7,75.7
step
talk Len the Whisperer##63484
accept Robbing Robbers of Robbers##31286 |goto The Veiled Stair 53.5,65.7
accept Educating Saurok##31287 |goto The Veiled Stair 53.5,65.7
step
_Enter_ the cave |goto 55.2,55.3 < 10 |walk
Follow the middle path, then go left and up and around
kill Leechfingers##63494 |q 31287/1 |goto 51.1,43.4 |indoors Hatescale Burrow
step
Before you leave this cave make sure you get 7 Black Market Merchandise
click Smuggled Brewfather Statue##213516
click Cursed Hozen Totem##213519
click Smuggled Cannon##213518
click Priceless Mogu Artifact##213520
click Evil Monkey Idol##213517
collect 7 Black Market Merchandise##85891+ |q 31286/1
step
_Leave_ the cave |goto 55.2,55.3 < 10 |walk |indoors Hatescale Burrow
talk Len the Whisperer##63484
turnin Robbing Robbers of Robbers##31286 |goto 53.5,65.7
turnin Educating Saurok##31287 |goto 53.5,65.7
step
talk Brewmaster Boof##63367
accept The Spring Drifter##31285 |goto 51.9,43.8
step
clicknpc The Spring Drifter##63517
Survive a ride on the Spring Drifter |q 31285/1 |goto 52.1,43.3
step
talk Brewmaster Boof##63367
turnin The Spring Drifter##31285 |goto Kun-Lai Summit 72.7,93.0
step
talk Jo the Wind Watcher##61474
fpath Binan Village |goto 72.5,94.2
step
talk Mayor Bramblestaff##59073
turnin The Road to Kun-Lai##31255 |goto 72.3,91.9 |only if havequest(31255)
accept Call Out Their Leader##30457 |goto 72.3,91.9
step
talk Puli the Even Handed##62871
home Binan Brew & Stew |goto 72.7,92.3
step
talk Apothecary Cheng##59077
accept Hit Medicine##30460 |goto 71.6,92.9
step
talk Commander Hsieh##59076
accept All of the Arrows##30459 |goto 70.7,90.4
step
kill Bataari Yaungol##59147+, Bataari Flamecaller##59021+
Kill 10 Bataari Tribe Members |q 30457/1 |goto 69.2,88.9
kill Bataari Fire-Warrior##59083 |q 30457/2 |goto 69.2,88.9
|tip The Fire-Warrior will only spawn after you kill all 10 Bataari Tribe Members, and then he will walk up and down the road.
click Arrow of Commander Hsieh
|tip These are tiny arrows buried in the ground.
collect 12 Arrow of Commander Hsieh##79806 |q 30459/1 |goto 69.2,88.9
|tip You can mark them with Shift+v to make them easier to spot (Use v to mark enemies again).
Use Dit Da Jow on Injured Binan Warriors |use Dit Da Jow##79819
Heal 8 Injured Binan Warrior |q 30460/1 |goto 69.2,88.9
step
talk Commander Hsieh##59076
turnin All of the Arrows##30459 |goto 70.7,90.4
step
talk Mayor Bramblestaff##59073
turnin Call Out Their Leader##30457 |goto 72.3,91.9
step
talk Apothecary Cheng##59077
turnin Hit Medicine##30460 |goto 71.6,92.9
accept General Nazgrim has Awakened##30511 |goto 71.6,92.9
step
talk General Nazgrim##59442
|tip He's upstairs
turnin General Nazgrim has Awakened##30511 |goto 71.6,93.1
accept Eastwind Rest##30513 |goto 71.6,93.1
step
_Cross_ the bridge |goto 72.4,91.5 < 10 |only if walking
talk Merchant Shi##59263
accept Reposesssion##30469 |goto 75.0,88.9
accept My Son...##30467 |goto 75.0,88.9
step
talk Swordmistress Mei##59273
accept Enraged Vengeance##30468 |goto 74.8,88.7
step
talk Waterspeaker Gorai##60973
accept The Waterspeaker's Staff##30496 |goto 75.1,88.0
accept Free the Dissenters##30967 |goto 75.1,88.0
step
talk Wu-Peng##59272
turnin My Son...##30467 |goto Kun-Lai Summit 74.7,76.9
accept Father and Child Reunion##30834 |goto Kun-Lai Summit 74.7,76.9
step
kill Orachi##59180
collect 1 Stolen Inkgill Ritual Staff##81385 |q 30496/1 |goto 74.4,78.3
kill Enraged Priest##59166+, Enraged Inkgill Blacksmith##61130+, Enraged Enforcer##60995+, Enraged Tideweaver##59181+, Enraged Spearman##59165+, Enraged Cavalier##61537+
Kill 15 Enraged Jinyu |q 30468/1 |goto 74.4,78.3
talk Inkgill Dissenter##61566
|tip You can mark them with Shift+v to make them easier to spot (Use v to mark enemies again).
Tell them there is still hope
6 Inkgill Dissenters Escaped |q 30967/1 |goto 74.4,78.3
click Untainted Supplies##210889
collect 8 Stolen Supplies##79880 |q 30469/1 |goto 74.4,78.3
step
talk Waterspeaker Gorai##60973
turnin The Waterspeaker's Staff##30496 |goto 75.2,88.3
turnin Free the Dissenters##30967 |goto 75.2,88.3
step
Reunite Wu-Peng and Merchant Shi by standing here |q 30834/1 |goto 74.8,88.8
step
talk Merchant Shi##59263
turnin Father and Child Reunion##30834 |goto 75.0,88.9
turnin Reposesssion##30469 |goto 75.0,88.9
step
talk Swordmistress Mei##59273
turnin Enraged Vengeance##30468 |goto 74.8,88.7
step
talk Waterspeaker Gorai##60973
accept The Ritual##30480 |goto 75.2,88.3
step
talk Waterspeaker Gorai##60973
Tell him to Begin the Ritual |q 30480/1 |goto 75.2,88.3
Follow Waterspeaker Gorai
Lay Dead Inkgill to Rest |q 30480/2 |goto 75.2,88.3
kill Explosive Hatred##61530
Ritual Complete |q 30480/3 |goto 75.2,88.3
step
talk Waterspeaker Gorai##60973
turnin The Ritual##30480 |goto 74.9,88.6
accept Cleansing the Mere##30828 |goto 74.9,88.6
step
clicknpc Pool of Corruption##61500
|tip These are on top of the water and have white and black smoke coming out of them.
kill Boiling Rage##59170+
Cleanse 6 Pools of Corruption |q 30828/1 |goto 72.0,85.6
step
Next to you:
talk Waterspeaker Gorai##61065
turnin Cleansing the Mere##30828
accept The Fall of Shai Hu##30855
step
kill Shai Hu##61069 |q 30855/1 |goto 71.3,82.5
|tip In order to kill Shai Hu you must bring Explosive Hatred from around the area into the bubble he has around him, kill them and when they die, they will explode and take some of his health.
step
talk Waterspeaker Gorai##60973
turnin The Fall of Shai Hu##30855 |goto 74.9,88.6
step
talk Farmhand Ko##63751
accept Temple of the White Tiger##31393
Tell him you're from the Horde |q 30513/1 |goto 63.7,86.7
step
talk Elder Shiao##63535
Tell him you're from the Horde |q 30513/2 |goto 61.2,82.2
step
talk Elder Shiao##63535
turnin Eastwind Rest##30513 |goto 61.2,82.2
accept Challenge Accepted##30515 |goto 61.2,82.2
step
click Yaungol Banner##210933
kill Ur-Bataar##59483 |q 30515/1 |goto 58.3,84.1
step
talk Elder Shiao##63535
turnin Challenge Accepted##30515 |goto 61.6,80.2
step
talk Elder Shiao##63535
accept Mogu?! Oh No-gu!##30620 |goto 62.3,79.6
step
talk Farmhand Ko##63751
accept Trouble on the Farmstead##30570 |goto 62.5,79.4
step
talk Rivett Clutchpop##59448
accept Best Meals Anywhere!##31251 |goto 62.8,79.9
step
talk General Nazgrim##59442
accept Round 'Em Up##31256 |goto 63.0,80.2
step
talk Shademaster Kiryn##59449
accept Deanimate the Reanimated##30594 |goto 62.7,80.7
step
talk Mai the Sleepy##62883
home Eastwind Rest |goto 62.7,80.5
step
talk Soaring Paw##61745
fpath Eastwind Rest |goto 62.4,80.7
step
clicknpc Wild Plains Yak##59610
|tip Get 3 of these before going back to town. You can do this while mounted.
kill Highlands Mushan##59670+, Highlands Calf##59671+, Summit Bonestripper##59672+
collect 160 Kun Lai-Meaty Bits##80245 |q 31251/1 |goto 65.7,81.0
step
Make sure you have rounded up 3 yaks
You'll have a Captured Yak buff and it should have 3 stacks
|tip This quest won't complete unless you have 3 stacks.
|confirm
step
talk Rivett Clutchpop##59448
turnin Best Meals Anywhere!##31251 |goto 62.8,79.9
step
talk General Nazgrim##59442
turnin Round 'Em Up##31256 |goto 63.0,80.2
step
talk Farmer Chow##59573
turnin Trouble on the Farmstead##30570 |goto 60.2,85.8
accept Farmhand Freedom##30571 |goto 60.2,85.8
step
talk Uyen Chow##59636
accept ... and the Pot, Too!##30581 |goto 60.2,85.9
step
kill Ordo Overseer##59580
Free 12 Farmstead Slaves |q 30571/1 |goto 58.6,89.5
|tip Free the Slaves by killing Overseers that are near them.
kill Wascally Wirmen##59655
click Root Vegetable##211019
collect 12 Root Vegetable##80227 |q 30581/1 |goto 58.6,89.5
step
click Cast Iron Pot##211023
|tip It is inside this little building
collect Cast Iron Pot##80230 |q 30581/2 |goto 60.0,88.4
step
talk Uyen Chow##59636
turnin ... and the Pot, Too!##30581 |goto 60.2,85.9
step
talk Farmer Chow##59573
turnin Farmhand Freedom##30571 |goto 60.2,85.8
accept Back to Eastwind Rest##31253 |goto 60.2,85.8
step
talk Farmhand Ko##63751
turnin Back to Eastwind Rest##31253 |goto 62.5,79.4
step
talk Bao Jian##59821
accept Profiting off of the Past##30595 |goto 59.6,78.2
stickystart "mogurelic"
step
kill Mogujia Soul-Caller##59797 |q 30620/1 |goto 58.1,70.9
step
label "mogurelic"
kill Terracotta Guardian##59773+, Terracotta Warrior##59758+
Kill 14 Terracotta Guardians or Warriors |q 30594/1 |goto 58.8,74.3
click Mogu Relic##211148
collect 12 Mogu Relic##80294+ |q 30595/1 |goto 58.8,74.3
step
talk Bao Jian##59821
turnin Profiting off of the Past##30595 |goto 59.6,78.3
step
talk Elder Shiao##63535
turnin Mogu?! Oh No-gu!##30620 |goto 62.4,79.6
accept Pandaren Prisoners##30655 |goto 62.4,79.6
step
talk Rivett Clutchpop##59448
accept Barrels of Fun##30656 |goto 62.8,79.9
step
talk Shademaster Kiryn##59449
turnin Deanimate the Reanimated##30594 |goto 62.7,80.7
step
talk General Nazgrim##59442
accept In Tents Channeling##30657 |goto 63.0,80.2
sickystart "rescueprisoners"
step
While doing the next few steps keep an eye out for Pandaren Prisoners that need to be freed
|tip These are Pandaren standing around working on things or in wooden cages.
clicknpc Explosives Barrel##60095
collect 1 Explosives Barrel##80528 |goto 51.2,79.3
step
Use your Explosives Barrel |use Explosives Barrel##80528
Eastern Oil Rig Destroyed |q 30656/1 |goto 51.0,79.5
step
clicknpc Explosives Barrel##60095
collect 1 Explosives Barrel##80528 |goto 51.2,79.3
step
kill Musaan the Blazecaster##59969 |q 30657/1 |goto 50.6,78.5
step
kill Harala the Firespeaker##60030 |q 30657/3 |goto 49.3,78.4
step
kill Pao-kun the Pyromancer##60031 |q 30657/4 |goto 49.1,80.2
step
Use your Explosives Barrel |use Explosives Barrel##80528
Southern Oil Rig Destroyed |q 30656/2 |goto 49.6,81.0
step
clicknpc Explosives Barrel##60095
collect 1 Explosives Barrel##80528 |goto 47.6,80.1
step
kill Akonu the Embercaller##60032 |q 30657/2 |goto 47.7,79.9
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin In Tents Channeling##30657
accept The Ordo Warbringer##30661
step
Use your Explosives Barrel |use Explosives Barrel##80528
Western Oil Rig Destroyed |q 30656/3 |goto 47.8,81.5
step
_Follow_ the path north |goto 49.7,78.1 < 10 |only if walking
Go around the mountain to the right. He's in a cave at ground level
kill Ordo Warbringer##60127 |q 30661/1 |goto 48.4,76.7
|tip When he becomes invulnerable, kill the adds he spawns to break his shield.
step
label "rescueprisoners"
clicknpc Pandaren Prisoner##60038
|tip These are standing around working on things or in wooden cages. You can do this while mounted.
|tip They can be marked with Shift+v (Use v to mark enemies again).
Rescue 8 Pandaren Prisoners |q 30655/1 |goto 49.8,78.6
step
talk Rivett Clutchpop##59448
turnin Barrels of Fun##30656 |goto 62.8,79.9
step
talk General Nazgrim##59442
turnin Pandaren Prisoners##30655 |goto 62.5,80.4
turnin The Ordo Warbringer##30661 |goto 62.5,80.4
accept The Shado-Pan##31453 |goto 62.5,80.4
step
talk Elder Shiao##63535
accept Beyond the Wall##31695 |goto 62.3,79.6
step
talk Farmhand Ko##63751
accept Muskpaw Ranch##31457 |goto 62.5,79.4
step
talk Shademaster Kiryn##59449
accept Cho's Missive##31459 |goto 62.7,80.7
step
talk Lao Muskpaw##59353
|tip He walks up and down this little path
turnin Muskpaw Ranch##31457 |goto 71.4,69.8
accept The Missing Muskpaw##30488 |goto 71.4,69.8
accept Fresh Needle Scent##30489 |goto 71.4,69.8
step
Go left and up around
Kill the Needle Sprites attacking Muskpaw Jr.
talk Muskpaw Jr.##61693
turnin The Missing Muskpaw##30488 |goto Kun-Lai Summit/9 64.3,60.4
accept At the Yak Wash##30491 |goto Kun-Lai Summit/9 64.3,60.4
step
clicknpc Tuffi##61874
Ride Tuffi |invehicle |goto Kun-Lai Summit/9 64.3,60.4
step
Go to this spot
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Yakity Yak##30587 |goto Kun-Lai Summit 70.0,72.8
step
kill 9 Burilgi Despoiler##59335 |q 30587/1 |goto 69.7,73.0
collect 1 Muskpaw's Keepsake##80241
Click the Muskpaw's Keepsake in your bags |use Muskpaw's Keepsake##80241
accept The Late Mrs. Muskpaw##30582
You can find more Despoilers at [Kun-Lai Summit,66.3,73.6]
step
clicknpc Escaped Yak##59319 |invehicle
|tip Use the ability on your quickbar to get a burst of speed.
|tip The Yaks can be found all around this area.
While on the Yak, run to this spot [Kun-Lai Summit,71.3,69.2]
Wash 6 Escaped Yaks |q 30491/1 |goto 71.3,72.9
step
talk Muskpaw Jr.##59354
turnin At the Yak Wash##30491 |goto 71.4,69.3
step
kill Needle Sprite##55593+
collect 100 Pungent Sprite Needles##79952 |q 30489/1 |goto 71.8,73.2
step
talk Lao Muskpaw##59353
|tip He walks up and down this path.
turnin Fresh Needle Scent##30489 |goto 71.6,70.0
turnin The Late Mrs. Muskpaw##30582 |goto 71.6,70.0
accept The Fearmaster##30804 |goto 71.6,70.0
turnin Yakity Yak##30587 |goto 71.6,70.0
step
talk Muskpaw Jr.##59354
accept Back in Yak##30492 |goto 71.4,69.3
step
kill The Fearmaster##59656 |q 30804/1 |goto 67.8,74.1
step
talk Lao Muskpaw##59353
turnin The Fearmaster##30804 |goto 71.0,69.1
step
Bring the Yak Herd to Lucky Eightcoins |q 30492/1 |goto 64.8,61.6
step
talk Lucky Eightcoins##59371
turnin Back in Yak##30492 |goto 64.7,61.8
accept A Grummle's Luck##30808 |goto 64.7,61.8
step
talk Slimy Inkstain##59402
accept Oil Stop##30614 |goto 65.5,60.8
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto 64.9,60.5
step
click Yaungol Oil Derrick##211531
collect Filled Oil Vial##80311 |q 30614/1 |goto 63.4,68.5
step
kill Ruqin Elder##59826+, Ruqin Infantry##59790+, Ruqin Outrider##59538+
Kill 8 Ruqin Yaungols |q 30616/1 |goto 62.2,68.8
click Stolen Bag of Luckydos##211538
|tip They look like small white and brown bags on the ground
collect 8 Stolen Luckydos##81293 |q 30808/1 |goto 62.2,68.8
step
talk Lucky Eightcoins##59371
turnin A Grummle's Luck##30808 |goto 64.7,61.8
step
talk Slimy Inkstain##59402
turnin Oil Stop##30614 |goto 65.5,60.8
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto 64.9,60.5
accept Roadside Assistance##30617 |goto 64.9,60.5
step
All along this road:
click Lucky Burlap Incense##211539
|tip You can do this while mounted
Light 8 Lucky Burlap Incense |q 30617/1 |goto 62.9,63.0
step
talk Brother Lintpocket##59701
turnin Roadside Assistance##30617 |goto 58.1,61.5
step
talk Little Cleankite##61504
fpath One Keg |goto 57.7,59.7
step
talk Lorewalker Cho##61847
turnin Cho's Missive##31459 |goto 57.3,61.7
accept Path Less Traveled##30999 |goto 57.3,61.7
step
talk Uncle Cloverleaf##59696
turnin Path Less Traveled##30999 |goto 57.2,61.2
accept Instant Courage##30601 |goto 57.2,61.2
step
talk Big Sal##59695
accept Resupplying Onekeg##30618 |goto 57.7,61.8
step
talk Ji-Lu the Lucky##59716
accept They Stole My Luck!##30621 |goto 57.3,60.2
step
talk Chiyo Mistpaw##59688
home The Lucky Traveller |goto 57.4,60.0
step
_Follow_ the path |goto 58.5,57.7 < 10 |only if walking
While you are in this cave do the following:
kill Mischievous Snow Sprite##59693
collect Lucky Virmen's Foot##80316 |q 30621/1 |goto Kun-Lai Summit/8 48.8,57.8
collect Lucky Four Winds Clover##90318 |q 30621/3 |goto Kun-Lai Summit/8 48.8,57.8
collect Lucky "Gold" Coin##80319 |q 30621/4 |goto Kun-Lai Summit/8 48.8,57.8
collect Lucky Yak Shoe##80317 |q 30621/2 |goto Kun-Lai Summit/8 48.8,57.8
Use the Fire Lotus Incense on Hiding Guides |use Fire Lotus Incense##80308
|tip They are hiding in big brown and red jars
Inspire 3 Hiding Guides |q 30601/1 |goto Kun-Lai Summit/8 48.8,57.8
click Stolen Supplies##211270
collect 12 Stolen Supplies##80315 |q 30618/1
step
talk Ji-Lu the Lucky##59716
turnin They Stole My Luck!##30621 |goto Kun-Lai Summit 57.3,60.2
step
talk Uncle Cloverleaf##59696
turnin Instant Courage##30601 |goto 57.2,61.2
step
talk Big Sal##59695
turnin Resupplying Onekeg##30618 |goto 57.7,61.7
step
talk Uncle Cloverleaf##59696
accept Comin' Round the Mountain##30487 |goto 57.2,61.2
step
clicknpc Ji-Lu's Cart##60094 |q 30487/1 |goto 57.3,61.6
step
Use the abilities on your hotbar to fight off Silverback Attackers and the Rampaging Yeti
Survive the mountain pass |q 30487/2
step
talk Lucky Bluestring##60175
turnin Comin' Round the Mountain##30487 |goto 48.1,49.0
accept One Traveler's Misfortune##30683 |goto 48.1,49.0
step
click Abandoned Wreckage##212903
Search the Abandoned Wreckage for Supplies |q 30683/1 |goto 50.0,49.3
kill General Sho Lien##60769 |q 30683/2 |goto 50.0,49.3
step
talk Lucky Bluestring##60175
turnin One Traveler's Misfortune##30683 |goto 48.1,49.0
You will only be able to accept one of these quests
accept Seeker's Folly##30684 |goto 48.1,49.0 |or
accept Seeker's Folly##31306 |goto 48.1,49.0 |or
step
_Follow_ the path up |goto 46.9,47.8 < 10 |only if walking
click Shrine of the Seeker's Body##211597 |q 30684/1 |goto 44.8,49.3
|tip Make sure you avoid the falling snow.
step
click Shrine of the Seeker's Breath##211601 |q 30684/2 |goto 42.7,50.0
|tip Make sure you avoid the freezing winds; they look like tornados.
step
click Shrine of the Seeker's Heart##211602 |q 30684/3 |goto 43.2,52.0
step
click Shrine of the Seeker's Body##211597 |q 31306/1 |goto 44.8,49.3
|tip Make sure you avoid the falling snow.
step
click Shrine of the Seeker's Breath##211601 |q 31306/2 |goto 42.7,50.0
|tip Make sure you avoid the freezing winds; they look like tornados.
step
click Shrine of the Seeker's Heart##211602 |q 31306/3 |goto 43.2,52.0
step
talk Lorewalker Cho##60795
turnin Seeker's Folly##30684 |goto 43.8,51.1 |or
turnin Seeker's Folly##31306 |goto 43.8,51.1 |or
accept The Tongue of Ba-Shon##30829 |goto 43.8,51.1
step
talk Lorewalker Cho##60795
Tell Cho to go ahead with the binding
Defend Loremaster Cho while he does the binding
kill Reclaimer Zuan##61305
Tongue of Ba-Shon Bound |q 30829/1 |goto 43.8,51.1
step
talk Lorewalker Cho##60795
turnin The Tongue of Ba-Shon##30829 |goto 43.8,51.1
accept Staying Connected##30795 |goto 43.8,51.1
step
talk Mishi##60796 |goto 43.7,51.3 < 10 |only if walking
Tell Mishi you are ready to leave |goto 57.8,48.8 < 10 |only if walking
Use The Tongue of Ba-Shon |q 30795/1 |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Staying Connected##30795 |goto 57.8,48.8
accept An End to Everything##30796 |goto 57.8,48.8
step
click Curious Text##211780
accept It Was Almost Alive##30797 |goto 57.1,47.9
stickystart "tormentspirit"
step
click Curious Text##211780
collect Torn Page##81892 |q 30797/1 |goto 57.1,47.9
step
label "tormentspirit"
kill 5 Tormented Spirits##60825 |q 30796/1 |goto 56.7,47.9
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin It Was Almost Alive##30797
accept The Tomb of Shadows##30799
turnin An End to Everything##30796
step
_Enter_ the Tomb of Shadows |goto 55.9,46.1 < 10 |walk
click Shen Dynasty Tablet##211770
collect Shen Dynasty Rubbing##82393 |q 30799/1 |goto 57.2,43.5
step
click Qiang Dynasty Rubbing
collect Qiang Dynasty Rubbing##82394 |q 30799/3 |goto 57.1,45.0
step
click Wai Dynasty Tablet##211793
collect Wai Dynasty Rubbing##82395 |q 30799/2 |goto 56.3,43.4
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin The Tomb of Shadows##30799
accept Breaking the Emperor's Shield##30798
step
_Follow_ the path |goto 55.2,47.6 < 10 |only if walking
_Enter_ the Tomb of Secrets |goto 53.3,49.3 < 10 |walk
kill Nakk'rakas##60572
|tip When he casts his shield, kill the Imperial Guards until he is vulnerable again.
Interrupt the Spiritbinding Ritual |q 30798/1 |goto 52.9,51.5
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Breaking the Emperor's Shield##30798
accept Stealing Their Thunder... King##30800
step
Enter the Tomb of Conquerors |goto 53.0,46.5 < 5 |walk
Follow the path down
click King's Coffer##211967
collect Bottom Fragment of Lei Shen's Tablet##82764 |q 30800/1 |goto Kun-Lai Summit/17 58.9,72.6
step
click Top Fragment of Lei Shen's Tablet##211968
|tip It is a broken tablet hanging on the wall
Repair the Tablet of Thunder |q 30800/2 |goto Kun-Lai Summit/17 34.1,62.4
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Stealing Their Thunder... King##30800
accept Lessons from History##30801
step
click Tablet of Thunder
Read the Tablet of Thunder |q 30801/1 |goto Kun-Lai Summit/17 34.1,62.4
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Lessons from History##30801
accept Chasing the Storm##30802
step
kill Zandalari Warrior##61842
collect Blood-Revealed Map##81890 |q 30802/1 |goto Kun-Lai Summit/17 52.1,70.0
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Chasing the Storm##30802
accept Fisherman's Tale##30935
step
talk Mishi##61382
Tell Mishi you are ready to leave |q 30935/1 |goto Kun-Lai Summit 53.0,46.4
step
_Follow_ the path up |goto 66.9,59.1 < 10 |only if walking
talk Big Greenfeather##61118
fpath Temple of the White Tiger |goto 66.3,50.7
step
talk Sunwalker Dezco##64542
turnin Temple of the White Tiger##31393 |goto 68.7,43.0
accept A Celestial Experience##31395 |goto 68.7,43.0
step
talk Xuen##64528
Speak to Xuen |q 31395/1 |goto 68.9,42.8
step
kill Spirit of Violence##64656
All these mobs use AoE's that do a lot of damage, try not to stand in them:
Pass the First Test |q 31395/2 |goto 68.9,42.8
step
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto 68.9,42.8
step
kill Spirit of Hatred##64742
Pass the Third Test |q 31395/4 |goto 68.9,42.8
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto 68.7,43.0
accept A Witness to History##31511 |goto 68.7,43.0
step
_Enter_ the cave here |goto 63.9,49.8 < 10 |walk
|tip The cave is down the mountain below you. You can either go back down the path, or risk jumping off the side of the mountain to get to it.
Jump into the pool of water, it's safe |goto Kun-Lai Summit,66.3,48.5 < 10 |walk
confirm
step
talk Shin Whispercloud##61380
Tell him you are ready to leave. |q 30935/2 |goto 63.3,40.2
step
talk Bo the Wind Claimer##61511
fpath Zouchin Village |goto 62.4,30.1
step
talk Lorewalker Cho##61371
turnin Fisherman's Tale##30935 |goto 62.3,29.1
accept It Takes A Village##30944 |goto 62.3,29.1
step
talk Liu Ze##60605
home North Wind Tavern |goto 62.5,28.8
step
talk Li Hai##60436
accept Checking In##30816 |goto 63.2,29.3
step
talk Elder Shu##61495
|tip He walks around the house, and may be upstairs
accept Handle With Care##30943 |goto 63.3,28.6
step
talk Shomi##61503
accept Make A Fighter Out of Me##30942 |goto 63.7,30.7
step
talk Steelbender Doshu##61496
accept What's Yours Is Mine##30945 |goto 63.4,30.7
step
talk Exhausted Defender##61417
|tip You can mark them with Shift+v (Use v to mark enemies again).
Relieve 5 Exhausted Defenders |q 30944/1 |goto 64.2,30.9
kill 4 Amani Skirmisher##66165 |q 30942/1 |goto 64.2,30.9
You can find more of both of these at [Kun-Lai Summit,63.8,27.0]
step
kill Zandalari Skullbreaker##60580+
collect 8 Blood-Stained Blade##82299 |q 30945/1 |goto 71.0,27.2
kill 4 Gurubashi Hexxer##64202+ |q 30942/2 |goto 71.0,27.2
kill 3 Drakkari Frostweaver##66707+ |q 30942/3 |goto 71.0,27.2
click Volatile Blooms##211684
|tip They look like orange plants
collect 50 Handful of Volatile Blooms##82298 |q 30943/1
More of these can be found at [Kun-Lai Summit,72.8,30.7]
step
Next to you:
talk Shomi##61534
turnin Make A Fighter Out of Me##30942
step
talk Steelbender Doshu##61496
turnin What's Yours Is Mine##30945 |goto 63.4,30.7
step
talk Elder Shu##61495
|tip He may walk around this house, and could be upstairs
turnin Handle With Care##30943 |goto 63.2,28.6
step
talk Lorewalker Cho##61371
turnin It Takes A Village##30944 |goto 62.3,29.1
accept Enemies At Our Door##31011 |goto 62.3,29.1
step
kill 10 Amani Berserker##62299+ |q 31011/1 |goto 63.5,30.0
Go here to kill 3 Gurubashi Bloodriders [Kun-Lai Summit,64.4,29.0]
kill 3 Gurubashi Bloodrider##62362+ |q 31011/3
Go here to kill 3 Amani Behemoths [Kun-Lai Summit,61.2,29.1]
clicknpc Blasting Barrel##62591
|tip The barrels will roll and kill the Behemoths.
kill 5 Amani Behemoth##63516+ |q 31011/2
step
talk Lorewalker Cho##63750
turnin Enemies At Our Door##31011 |goto 62.3,29.1
accept Revelations##30946 |goto 62.3,29.1
step
talk Zandalari Prisoner##62629
|tip He is upstairs.
Ask him where the Thunder King's Remains have been taken
Zandalari Prisoner Questioned |q 30946/1 |goto 62.4,28.9
step
talk Lorewalker Cho##63750
turnin Revelations##30946 |goto 62.3,29.1
accept Prophet Khar'zul##31228 |goto 62.3,29.1
step
talk Sage Liao##60694
turnin Checking In##30816 |goto 60.6,21.3
accept Emergency Care##30794 |goto 60.6,21.3
step
click Sage Liao's Belongings##211510
|tip In a small chest inside the burning building
collect 1 Pandaren Healing Draught##81177 |goto 61.0,21.5
step
Use Pandaren Healing Draught on Sage Liao |use Pandaren Healing Draught##81177
Sage Liao Healed |q 30794/1 |goto 60.6,21.3
step
talk Sage Liao##60785
turnin Emergency Care##30794 |goto 60.6,21.3
accept Justice##30805 |goto 60.6,21.3
accept The Scent of Life##30806 |goto 60.6,21.3
accept By the Falls, For the Fallen##30807 |goto 60.6,21.3
step
click Waterfall-Polished Stone##211526
|tip In the water at the base of this waterfall.
collect 3 Waterfall-Polished Stone##81269+ |q 30807/1 |goto 59.2,27.2
stickystart "bluecrabshell"
step
kill Captain Ripflesh##60767 |q 30805/1 |goto 62.0,23.3
step
label "bluecrabshell"
kill Blackmane Brigand##60560+, Blackmane Pillager##60846+, Blackmane Tracker##60434+
Kill 6 Blackmane Merceraries |q 30805/2 |goto 63.2,21.5
click South Sea Booty Barrel
|tip These just look like dark brown, wooden barrels
collect 8 Stolen Pandaren Spices##81261 |q 30806/2 |goto 63.2,21.5
kill Azure Prickly Crawler##60437+
collect Opalescent Blue Crab Shell##80907 |q 30806/1 |goto 63.2,21.5
More crabs can be found around [Kun-Lai Summit,60.5,22.5]
step
talk Sage Liao##60785
turnin Justice##30805 |goto 60.6,21.3
turnin The Scent of Life##30806 |goto 60.6,21.3
turnin By the Falls, For the Fallen##30807 |goto 60.6,21.3
accept Preparing the Remains##30819 |goto 60.6,21.3
step
talk Li Hai##60436
turnin Preparing the Remains##30819 |goto 63.2,29.4
accept Honoring the Dead##30820 |goto 63.2,29.4
step
click Incense of Life##211545
Light the Incense of Life |q 30820/1 |goto 66.9,33.3
step
talk Sage Liao##60757
turnin Honoring the Dead##30820 |goto 67.0,33.3
step
talk Mishi##61382 |goto 62.3,29.4
Tell him you're ready to leave |goto 76.5,19.4 |walk
kill Prophet Khar'zul##61541 |q 31228/2 |goto 76.4,9.0
|tip Stay on top of the Altar when he causes the floor to turn purple. Try to interrupt his Crow Storm AoE attack, if he uses it.
step
kill Zandalari Headsplitter##64643+, Zandalari Witch Doctor##64631+, Zandalari Worshipper##64642+
Kill 12 Zandalari Forces |q 31228/3 |goto 75.4,11.8
step
talk Lorewalker Cho##63784
turnin Prophet Khar'zul##31228 |goto 62.3,29.0
step
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto 58.1,61.5
step
Join up with the Convoy |goto 58.5,64.7
Protect the convoy and escort them to this point |goto 53.0,66.6 < 10
Escort grummles to the Burlap Waystation |q 30592/1
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto 51.7,67.8
accept The Rabbitsfoot##30602 |goto 51.7,67.8
step
Talk to Brother Rabbitsfoot |q 30602/1 |goto 49.1,70.5
|tip He's hanging upside down from a tree
accept The Broketooth Ravage##30603 |goto 49.1,70.5
step
_Follow_ the path up |goto 48.8,71.5 < 10 |only if walking
kill Mo Mo##59805
collect Rabbitsfoot's Luckydo##81137 |q 30603/1 |goto 48.0,73.2
step
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto Kun-Lai Summit 52.0,67.2
turnin The Broketooth Ravage##30603 |goto Kun-Lai Summit 52.0,67.2
accept A Monkey Idol##30599 |goto Kun-Lai Summit 52.0,67.2
accept No Pack Left Behind##30600 |goto Kun-Lai Summit 52.0,67.2
accept Breaking Broketooth##30604 |goto Kun-Lai Summit 52.0,67.2
stickystart "grummlebroketooth"
step
kill Tak Tak##59958
collect 1 Corpse of Tak Tak##80430 |goto 56.8,71.1
step
click Tak Tak's Altar##211276
|tip It's a big stone slab with a torch on either side of it.
Destroy Tak Tak's Altar |q 30599/3 |goto 56.8,71.0
step
kill Hateful Ko Ko##59430
collect 1 Corpse of Ko Ko##80429 |goto 52.3,71.3
step
click Ko Ko's Altar##211275
|tip It's a big stone slab with a torch on either side of it.
Destroy Ko Ko's Altar |q 30599/2 |goto 52.3,71.5
step
kill Dak Dak##59424
|tip He walks around the cave, some searching may be necessary
collect 1 Corpse Of Dak Dak##80428 |goto Kun-Lai Summit/12 49.2,39.0
step
click Dak Dak's Altar##210931
|tip It's a big stone slab with a bunch of little candles on it. It is on the bottom floor of this cave.
Destroy Dak Dak's Altar |q 30599/1 |goto 49.6,39.7
step
label "grummlebroketooth"
Inside this cave and outside:
clicknpc Dead Packer##59896
collect 8 Grummlepack##80307+ |q 30600/1 |goto Kun-Lai Summit 52.7,70.5
kill 6 Broketooth Tosser##59416+ |q 30604/2 |goto Kun-Lai Summit 52.7,70.5
kill 8 Broketooth Charger##59414+ |q 30604/1 |goto Kun-Lai Summit 52.7,70.5
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto Kun-Lai Summit 52.0,67.3
turnin No Pack Left Behind##30600 |goto Kun-Lai Summit 52.0,67.3
accept Bros before Hozen##30605 |goto Kun-Lai Summit 52.0,67.3
turnin Breaking Broketooth##30604 |goto Kun-Lai Summit 52.0,67.3
step
clicknpc Mok Mok##60008
Rescue the Brother Yakshoe |q 30605/1 |goto 50.5,64.2
step
talk Brother Yakshoe##59894
turnin Bros before Hozen##30605 |goto 50.6,64.1
accept Hozen Love Their Keys##30607 |goto 50.6,64.1
accept The Snackrifice##30608 |goto 50.6,64.1
accept Thumping Knucklethump##30606 |goto 50.6,64.1
stickystart "rescueimprisoned"
step
kill Cho Cho the Wicked##60090
collect Yeti Shackle Key##80535 |q 30607/1 |goto Kun-Lai Summit/10 36.7,14.4
step
label "rescueimprisoned"
Before you release Old Poot Poot do the following inside the cave:
kill Knucklethump Jibstabber##59412+, Knucklethump Smasher##59410+
Kill 8 Silverback Hozen |q 30606/1
click Grummle Cage##211307
kill Prisoner Bindings##60027
|tip You can mark these with Shift+v and make them easier to spot (Use v to mark enemies again).
Rescue 5 Imprisoned Grummle |q 30608/1
step
click Ball and Chain##207079
step
talk Brother Yakshoe##59894
turnin Hozen Love Their Keys##30607 |goto Kun-Lai Summit 52.0,67.2
turnin The Snackrifice##30608 |goto Kun-Lai Summit 52.0,67.2
accept Grummle! Grummle! Grummle!##30610 |goto Kun-Lai Summit 52.0,67.2
step
talk Brother Rabbitsfoot##59452
turnin Thumping Knucklethump##30606 |goto Kun-Lai Summit 52.0,67.2
accept Unleash The Yeti!##30611 |goto Kun-Lai Summit 52.0,67.2
step
kill 4 Cagemaster##60169+ |q 30611/1 |goto 46.3,63.9
|tip They are located around the huge wooden dome.
click Grummle Gear##211686
|tip These are small silver and gray boxes on the ground
Send 5 Packers packing |q 30610/1 |goto 46.3,63.9
step
talk Brother Yakshoe##59894
turnin Grummle! Grummle! Grummle!##30610 |goto 45.9,64.1
step
talk Brother Rabbitsfoot##59452
turnin Unleash The Yeti!##30611 |goto 45.9,64.1
accept The Leader Hozen##30612 |goto 45.9,64.1
step
kill The Ook of Dook##60188 |q 30612/2 |goto 46.0,63.1
|tip When he throws bananas just dodge them until he runs back to you. Also watch out for the big red double laser that moves around on the ground.
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto Kun-Lai Summit 52.0,67.3
step
talk Brother Trailscenter##59703
accept The Burlap Trail: To Kota Basecamp##30692 |goto 51.7,67.8
step
Wait here for the Convoy |goto 51.6,67.6
Protect the convoy and escort them to this point |goto 43.9,68.9 < 10
Escort grummles to the Kota Basecamp |q 30692/1
step
talk Uncle Eastwind##60416
fpath Kota Basecamp |goto 42.8,69.6
step
talk Clover Keeper##60420
home Kota Basecamp |goto 42.7,69.8
step
talk Cousin Gootfur##60596
accept Shut it Down##30742 |goto 42.3,69.8
accept Gourmet Kafa##30743 |goto 42.3,69.8
step
talk Uncle Keenbean##60503
accept Kota Blend##30744 |goto 42.4,69.7
accept Trouble Brewing##30745 |goto 42.4,69.7
step
talk Brother Oilyak##59755
turnin The Burlap Trail: To Kota Basecamp##30692 |goto 42.5,68.9
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto 42.8,69.3
step
Follow the path marked by red flags up and south |goto 42.0,70.0 < 10 |only if walking
_Enter_ the cave |goto 37.5,77.9 < 10 |walk
kill 8 Kafa-Crazed Yeti##60564+ |q 30745/1 |goto 35.4,77.0
click Kafa'Kota Berries
|tip Clusters of tiny red berries
collect 100 Kafa'kota Berry##81054 |q 30744/1 |goto 35.4,77.0
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Kota Blend##30744
accept A Fair Trade##30746
step
_Leave_ the cave |goto 37.5,77.9 < 10 |walk
kill 12 Kafa-Crazed Mountain Goat##60493 |q 30742/1 |goto 38.5,77.9
click Kafa'goot "Deposit"
15 Kafa'goot "Deposits" Marked |q 30743/1 |goto 38.5,77.9
You can find more "Deposits" and Goats around [39.8,77.1]
step
_Enter_ the cave |goto 37.2,75.9 < 10 |walk
talk Nephew Burrberry##60679
turnin A Fair Trade##30746 |goto 36.9,76.2
step
talk Cousin Gootfur##60596
turnin Shut it Down##30742 |goto 42.5,69.4
turnin Gourmet Kafa##30743 |goto 42.5,69.4
step
talk Uncle Keenbean##60503
turnin Trouble Brewing##30745 |goto 42.5,69.4
step
talk Nephew Burrberry##60679
accept The Burlap Grind##30747 |goto 42.5,69.4
step
talk Kota Kon##60587
Unscrew the flask and offer it to her |goto 42.6,69.2 |invehicle |c
step
Use the abilities on your hotbar to kill Hozen
kill Silverback Piker##60746+, Ookin Marauder##60753+, Broketooth Leaper##60742+, Ookin Shaman##60752+, Silverback Smasher##60749+, Broketooth Ravager##60743+
Kill 100 Burlap Trail Hozen |q 30747/1 |goto 49.5,68.5
step
Click the red arrow on your quickbar to stop riding Koto Kon |outvehicle
talk Nephew Burrberry##60679
turnin The Burlap Grind##30747 |goto 42.5,69.3
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto 56.1,91.6
step
Enter the Vale of Eternal Blossoms through the gate here |goto Kun-Lai Summit/0 55.5,92.4 < 20 |only if walking
talk Madam Vee Luo##62996
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.2,49.0
step
talk Tania Summerbreeze##61122
fpath The Golden Terrace |goto Vale of Eternal Blossoms 62.8,21.7
step
Click the double doors and go through
talk Shado-Master Chong##60161
turnin The Shado-Pan##31453 |goto Kun-Lai Summit 44.5,89.9
accept Turnabout##30670 |goto Kun-Lai Summit 44.5,89.9
accept The Defense of Shado-Pan Fallback##30665 |goto Kun-Lai Summit 44.5,89.9
step
talk Kite Master Ni##61473
|tip Go up the stairs.
fpath Shado-Pan Fallback |goto 43.9,89.6
stickystart "blindrage"
stickystart "shayaungol"
step
talk Sya Zhong##60178
|tip She is hiding inside the house
accept Holed Up##30682 |goto 42.9,88.3
Rescue Sya Zhong |q 30682/4 |goto 42.9,88.3
step
talk Ya Firebough##60189
Tell him "Let's go".
Rescue Ya Firebough |q 30682/2 |goto 41.0,87.0
step
talk Old Lady Fung##60190
Ask her to "escort" you to safety.
Rescue Old Lady Fung |q 30682/3 |goto 42.8,85.7
step
talk Jin Warmkeg##60187
Tell him "Let's get out of here"
Rescue Jin Warmkeg |q 30682/1 |goto 43.9,86.2
step
label "blindrage"
kill Blind Rage##61224+
collect 5 Blind Rage Essence##81713 |q 30670/1 |goto 43.9,87.2
step
label "shayaungol"
kill 15 Sha-Infested Yaungol##60164+ |q 30665/1 |goto 44.5,88.6
step
talk Shado-Master Chong##60161
turnin Turnabout##30670 |goto 44.5,89.9
accept Unmasking the Yaungol##30690 |goto 44.5,89.9
turnin The Defense of Shado-Pan Fallback##30665 |goto 44.5,89.9
turnin Holed Up##30682 |goto 44.5,89.9
step
Click the Steal Mask button that appears on your screen |q 30690/1 |goto 45.4,85.6
|tip You must be targetting Kobai for this to work.
kill Malevolent Fury##61333 |q 30690/2 |goto 45.4,85.6
step
talk Shado-Master Chong##60161
turnin Unmasking the Yaungol##30690 |goto 44.5,89.9
accept To Winter's Blossom##30699 |goto 44.5,89.9
step
talk Lin Silentstrike##61816
turnin To Winter's Blossom##30699 |goto 35.0,59.4
accept Honor, Even in Death##30723 |goto 35.0,59.4
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto 35.1,59.7
step
talk Kite Master Len##61512
fpath Winter's Blossom |goto 34.5,59.1
stickystart "kunlaicorpse"
step
clicknpc Shado-Master Zhiyao##61808
|tip He's laying face-down on the ground
Shado-Master Zhiyao Released From his Oath |q 30715/1 |goto 30.3,60.1
step
clicknpc Liu of the Thousand Blows##61806
|tip Laying on the ground
Liu of the Thousand Blows Released From his Oath |q 30715/2 |goto 30.1,62.5
step
clicknpc Shiya Boldblade##61810
|tip Laying on the ground
Shiya Boldblade Released From her Oath |q 30715/3 |goto 30.0,64.4
step
label "kunlaicorpse"
kill 12 Kun-Lai Corpsepicker##61843+ |q 30723/1 |goto 30.9,62.0
|tip If you can't find any on the ground look upward and pull them with a ranged ability.
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto 35.1,59.7
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto 35.0,59.4
accept To the Wall!##30724 |goto 35.0,59.4
step
talk Kite Master Len##61512
Tell him you need a kite up to the wall. |q 30724/1 |goto 34.5,59.1
step
talk Suna Silentstrike##61454
turnin To the Wall!##30724 |goto 29.3,62.3
accept Off the Wall!##30750 |goto 29.3,62.3
step
talk Lao-Chin the Iron Belly##61820
accept A Terrible Sacrifice##30751 |goto 29.2,62.3
step
kill Osul Fire-Warrior##63576+, Osul Veteran Archer##61886+
Kill 12 Veteran Archers or Fire-Warriors |q 30750/1 |goto 26.4,59.6
click Yaungol Oil Barrel##212003
|tip Brown jugs up on the wall
collect 6 Yaungol Oil Barrel##82799 |q 30751/1 |goto 26.4,59.6
step
talk Suna Silentstrike##61454
turnin Off the Wall!##30750 |goto 29.3,62.3
step
talk Lao-Chin the Iron Belly##61820
turnin A Terrible Sacrifice##30751 |goto 29.2,62.3
step
talk Suna Silentstrike##61454
accept Lao-Chin's Gambit##30994 |goto 29.3,62.3
step
talk Suna Silentstrike##61454
Tell her you're ready to get back to the front. |q 30994/1 |goto 29.3,62.3
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto 31.8,60.1
accept Do a Barrel Roll!##30991 |goto 31.8,60.1
step
clicknpc Keg Bomb##60553
Use the abilities on your hotbar to blow up as many Osul as you can each time
You will need to repeat this
kill 50 Osul Invader##60455 |q 30991/1 |goto 32.1,60.6
kill 4 Osul Treelauncher##60483 |q 30991/2 |goto 32.1,60.6
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto 31.8,60.1
accept Finish This!##30992 |goto 31.8,60.1
step
kill Gong Da##62165
Complete the Battle for The Ox Gate |q 30992/1 |goto 30.9,62.1
step
talk Ban Bearheart##61819
turnin Finish This!##30992 |goto 31.3,61.5
accept Where are My Reinforcements?##30993 |goto 31.3,61.5
step
talk Ban Bearheart##61819
Tell him you're ready to leave. |q 30993/1 |goto 31.3,61.5
step
talk Ban Bearheart##61819
Tell him "Alright, let's go up to the monastery". |q 30993/2 |goto 34.0,58.6
step
talk Ban Bearheart##61819
turnin Where are My Reinforcements?##30993 |goto 35.3,49.5
accept Unbelievable!##30752 |goto 35.3,49.5
step
Talk to Shado-Pan Sentinel
Tell him you are here with Ban Bearheart
kill Shado-Pan Sentinel##62220
Gain access to the Monastery |q 30752/1 |goto 36.7,47.7
step
Next to you:
talk Ban Bearheart##61819
turnin Unbelievable!##30752
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Townlong Steppes (83-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\TownlongSteppes",
next="Zygor's Leveling Guides\\Pandaria (80-90)\\Dread Wastes (84-90)",
startlevel=83,
endlevel=90,
},[[
step
talk Taran Zhu##60688
turnin Beyond the Wall##31695 |goto Townlong Steppes 71.2,56.7
accept A Foot in the Door##30814 |goto Townlong Steppes 71.2,56.7
step
talk Kite Master Wong##62901
fpath Longying Outpost |goto 71.1,57.3
step
talk Saito the Sleeping Shadow##62873
home Longying Outpost |goto 71.1,57.9
step
kill 8 Osul Charger##60713+ |q 30814/1 |goto 70.9,52.4
step
talk Taran Zhu##60688
turnin A Foot in the Door##30814 |goto 71.2,56.7
accept First Assault##30769 |goto 71.2,56.7
accept Running Rampant##30770 |goto 71.2,56.7
accept Perfect Pitch##30771 |goto 71.2,56.7
step
kill 6 Osul Sharphorn##60647+ |q 30769/1 |goto 67.3,54.4
clicknpc Long-Haired Yak##60669+
clicknpc Steppebeast##60739+
|tip Just mark them with Shift+v (Use v to mark enemies again).
Free 8 Yaks or Mushan |q 30770/1 |goto 67.3,54.4
click Pitch Pot##211507
|tip Small tan and blue pots on the ground and inside tents
collect 8 Dark Pitch##81174 |q 30771/1 |goto 67.3,54.4
step
talk Suna Silentstrike##60684
turnin First Assault##30769 |goto 67.2,52.2
step
talk Ban Bearheart##60687
turnin Running Rampant##30770 |goto 67.2,52.3
turnin Perfect Pitch##30771 |goto 67.2,52.3
accept Pitching In##30773 |goto 67.2,52.3
step
talk Suna Silentstrike##60684
accept Seeing Red##30772 |goto 67.2,52.2
accept Ranger Rescue##30774 |goto 67.2,52.2
step
talk Katak the Defeated##60735
accept The Exile##30775 |goto 67.0,51.4
step
kill Battat##60728 |q 30775/1 |goto 65.7,51.7
|tip When he casts Raging Flurry step behind him to avoid the damage.
step
kill Urang##60725 |q 30775/2 |goto 64.8,50.2
step
kill Ku-Tong##60726 |q 30775/3 |goto 67.0,48.2
|tip When he casts Stalwart Defender hit him in the back.
step
Use Ban's Explosives on Osul Ballistas |use Ban's Explosives##81193
Destroy 6 Osul Ballistas |q 30773/1 |goto 66.9,44.1
step
kill 12 Osul Spearguard##60692+ |q 30772/1 |goto 67.3,49.6
|tip When they cast Stalwart Defender hit them in the back.
collect 4 Stone Key##81178+ |n
click Drywood Cage
Rescue 4 Longying Rangers |q 30774/1 |goto 67.3,49.6
step
talk Lin Silentstrike##60899
Examine the body
Free Lin Silentstrike |q 30774/2 |goto 66.6,49.1
step
talk Katak the Defeated##60735
turnin The Exile##30775 |goto 67.0,51.4
step
talk Ban Bearheart##60687
turnin Pitching In##30773 |goto 67.2,52.3
turnin Seeing Red##30772 |goto 67.2,52.3
turnin Ranger Rescue##30774 |goto 67.2,52.3
step
talk Suna Silentstrike##60684
accept Jung Duk##30776 |goto 67.3,52.2
step
click Ceremonial Pile##211524
kill Jung Duk##60801 |q 30776/1 |goto 66.7,51.0
step
talk Ban Bearheart##60687
turnin Jung Duk##30776 |goto 71.0,56.6
accept In Search of Suna##30777 |goto 71.0,56.6
step
talk Orbiss##60857
accept A Spear Through My Side, A Chain Through My Soul##30786 |goto 68.0,67.7
step
_Follow_ the path up |goto 68.4,67.8 < 10 |only if walking
kill Dmong Naruuk##60683 |q 30786/1 |goto 68.4,71.4
|tip Avoid his Blizzard AoE. He doesn't channel it, just move out of the large red circle on the ground.
step
talk Orbiss##60857
turnin A Spear Through My Side, A Chain Through My Soul##30786 |goto 68.0,67.7
accept The Torches##30787 |goto 68.0,67.7
step
|tip The torches are channeling big arcs of blue energy and lightning out of them
clicknpc Mist-Shaman's Torch##60698
collect 6 Mist-Shaman's Torch##81176+ |q 30787/1 |goto 66.6,68.0
step
talk Orbiss##60857
turnin The Torches##30787 |goto 68.0,67.7
accept Golgoss##30788 |goto 68.0,67.7
accept Arconiss##30789 |goto 68.0,67.7
step
_Follow_ the path up |goto 68.4,67.8 < 10 |only if walking
click Peat Clump##211513
Defend Golgoss from the oncoming attack.
Summon Golgoss |q 30788/1 |goto 70.5,69.7
step
click Peat Mound##211515
Defend Arconiss from the oncoming attack
Summon Arconiss |q 30789/1 |goto 71.5,72.3
step
talk Orbiss##60857
turnin Golgoss##30788 |goto 67.9,67.7
turnin Arconiss##30789 |goto 67.9,67.7
accept The Death of Me##30815 |goto 67.9,67.7
step
talk Orbiss##60857
"Remove the spear from Orbiss' side." |q 30815/1 |goto 67.9,67.7
step
talk Orbiss##60857
turnin The Death of Me##30815 |goto 67.9,67.7
step
talk Orbiss##60622
accept Golgoss Hungers##30790 |goto 67.9,67.7
accept Arconiss Thirsts##30791 |goto 67.9,67.7
accept Orbiss Fades##30792 |goto 67.9,67.7
step
_Follow_ the path up |goto 68.4,67.8 < 10 |only if walking
click Snarlvine##211518
|tip Green bushes with purple petals
collect 10 Snarlvine##81250 |q 30790/1 |goto 71.0,70.8
kill Swamp Rodent##60733+
collect 4 Clotted Rodent's Blood##81260+ |q 30791/1 |goto 71.0,70.8
Walk through the puffs of steam all over this area
Collect 8 Gushing Mist |q 30792/1 |goto 71.0,70.8
More of all of these can be found at this location |goto Townlong Steppes,74.5,70.4
step
talk Orbiss##60622
turnin Golgoss Hungers##30790 |goto 67.9,67.7
turnin Orbiss Fades##30792 |goto 67.9,67.7
turnin Arconiss Thirsts##30791 |goto 67.9,67.7
accept Mists' Opportunity##30793 |goto 67.9,67.7
step
kill Jahesh of Osul##60802 |q 30793/1 |goto 76.5,72.5
step
talk Orbiss##60622
turnin Mists' Opportunity##30793 |goto 76.2,72.9
step
talk Ban Bearheart##61261
turnin In Search of Suna##30777 |goto 82.7,73.0
accept Dust to Dust##30778 |goto 82.7,73.0
accept Slaying the Scavengers##30779 |goto 82.7,73.0
step
talk Xiao Tu##60903
accept Last Toll of the Yaungol##30781 |goto 82.7,73.2
step
talk Yalia Sagewhisper##60864
accept Totemic Research##30780 |goto 82.6,73.0
stickystart "palewindvillage"
step
Wait for Xiao Tu to investigate.
Examine the Southern Smoke Trail |q 30781/3 |goto 83.5,78.5
step
Wait for Xiao Tu to investigate.
Examine the Eastern Smoke Trail |q 30781/1 |goto 84.9,71.4
step
Wait for Xiao Tu to investigate.
Examine the Northwestern Smoke Trail |q 30781/4 |goto 84.0,70.9
step
Wait for Xiao Tu to investigate.
Examine the Western Smoke Trail |q 30781/2 |goto 81.1,72.0
step
label "palewindvillage"
kill 12 Ashfang Hyena##60932+ |q 30779/1 |goto 81.1,71.8
click Palewind Totem##211566
collect 9 Palewind Totem##81355 |q 30780/1 |goto 81.1,71.8
Use your Shado-Pan Torch to burn Palewind Villagers |use Shado-Pan Torch##81356
|tip These are the piles of bodies all over this area
Burn 20 Palewind Villagers |q 30778/1 |goto 81.1,71.8
step
talk Yalia Sagewhisper##60864
turnin Totemic Research##30780 |goto 82.6,73.0
step
talk Ban Bearheart##61261
turnin Dust to Dust##30778 |goto 82.7,73.0
turnin Slaying the Scavengers##30779 |goto 82.7,73.0
turnin Last Toll of the Yaungol##30781 |goto 82.7,73.0
step
talk Yalia Sagewhisper##60864
accept What Lies Beneath##30827 |goto 82.6,73.0
step
talk Yalia Sagewhisper##60864
Tell her you are ready to begin the ritual |q 30827/1 |goto 82.6,73.0
clicknpc Totem of Tranquility##60990 |q 30827/3 |goto 82.6,73.0
clicknpc Totem of Serenity##60991 |q 30827/4 |goto 82.6,73.0
clicknpc Totem of Kindness##60933 |q 30827/2 |goto 82.6,73.0
Complete the Ritual |q 30827/5 |goto 82.6,73.0
step
talk Yalia Sagewhisper##60864
turnin What Lies Beneath##30827 |goto 82.6,73.0
accept Hatred Becomes Us##30783 |goto 82.6,73.0
step
talk Ban Bearheart##61261
accept Spiteful Spirits##30782 |goto 82.7,73.0
step
While doing the following quests do not allow your Hatred bar to reach 100
You can lower it by standing in Pools of Harmony
kill 10 Spiteful Spirit##63839+ |q 30782/1 |goto 82.0,71.0
Use your Totem of Harmony on Crazed Shado-Pan Rangers |use Totem of Harmony##81417
|tip You can mark them with shift+v and they will be easier to spot (Use v to mark enemies again).
kill Seething Hatred##61054+
Purify 8 Crazed Shado-Pan Rangers |q 30783/1 |goto 82.0,71.0
step
talk Ban Bearheart##61261
turnin Spiteful Spirits##30782 |goto 82.7,73.0
step
talk Yalia Sagewhisper##60864
turnin Hatred Becomes Us##30783 |goto 82.6,73.0
step
talk Ban Bearheart##61261
accept The Point of No Return##30784 |goto 82.7,73.0
step
Use the Totem of Harmony to buff yourself during the fight |use Totem of Harmony##81430
kill Suna Silentstrike##61055 |q 30784/1 |goto 84.1,70.7
step
talk Ban Bearheart##61261
turnin The Point of No Return##30784 |goto 82.7,73.0
accept Gao-Ran Battlefront##30785 |goto 82.7,73.0
step
_Follow_ the path up |goto 78.7,83.5 < 10 |only if walking
talk Taran Zhu##61066
turnin Gao-Ran Battlefront##30785 |goto 76.4,82.5
accept Behind the Blockade##30884 |goto 76.4,82.5
step
talk Kim the Quiet##62875
home Gao-Ran Battlefront |goto 76.0,82.9
step
talk Septi the Herbalist##61470
accept Treatment for the Troops##30891 |goto 75.9,83.1
step
talk Kite Master Nenshi##62903
fpath Gao-Ran Battlefront |goto 74.4,81.5
step
talk Taoshi##61469
turnin Behind the Blockade##30884 |goto 76.9,78.8
accept Unwelcome Intruders##30887 |goto 76.9,78.8
step
click Violet Citron##211721
|tip These look like small blue bushes
collect 10 Violet Citron##82342 |q 30891/1 |goto 78.8,79.2
kill 12 Krik'thik Deep-Scout##61374 |q 30887/1 |goto 78.8,79.2
step
talk Septi the Herbalist##61470
turnin Treatment for the Troops##30891 |goto 75.9,83.1
step
talk Taoshi##61468
turnin Unwelcome Intruders##30887 |goto 79.5,84.5
accept Breach in the Defenses##30888 |goto 79.5,84.5
accept The Restless Watch##30890 |goto 79.5,84.5
step
talk Mao the Lookout##61467
accept Trap Setting##30889 |goto 79.4,84.5
stickystart "shadopanspiketrap"
step
talk Scout Jai-Gan##61397
Tell him you have orders for him to return to the battlefront |q 30890/4 |goto 79.0,90.1
step
talk Scout Ying##61396
Tell her you have orders for her to return to the battlefront |q 30890/3 |goto 82.5,89.6
step
talk Scout Long##61395
Tell her you have orders for her to return to the battlefront |q 30890/2 |goto 81.3,86.2
step
talk Scout Wei-Chin##61378
Tell him you have orders for him to return to the battlefront |q 30890/1 |goto 82.2,84.1
step
label "shadopanspiketrap"
Use the Shado-Pan Flare in your bags to reveal Scentlayers |use Shado-Pan Flare##81925
|tip Look for the small clouds of dirt on the ground.
kill 10 Krik'thik Scentlayer##61373+ |q 30888/1 |goto 80.7,86.5
clicknpc Shado-Pan Spike Trap##61426
|tip These look like small gray balls with spikes coming out of them.
Rearm 8 Shado-Pan Spike Traps |q 30889/1 |goto 80.7,86.5
step
talk Mao the Lookout##61467
turnin Trap Setting##30889 |goto 79.4,84.5
step
talk Taoshi##61468
turnin Breach in the Defenses##30888 |goto 79.5,84.5
turnin The Restless Watch##30890 |goto 79.5,84.5
accept Returning from the Pass##30960 |goto 79.5,84.5
step
talk Taran Zhu##61066
turnin Returning from the Pass##30960 |goto 76.4,82.4
accept The Endless Swarm##30893 |goto 76.4,82.4
step
talk Septi the Herbalist##61470
accept Back on Their Feet##30892 |goto 75.9,83.1
accept Rummaging Through the Remains##30894 |goto 75.9,83.1
step
kill Krik'thik Locust-Guard##61365+, Krik'thik Limbpincer##61181+
Kill 12 Kirk'thik attackers |q 30893/1 |goto 74.0,87.5
click Krik'thik Limb##214820
|tip These are Kirk'thik arms and legs on the ground.
collect 22 Krik'thik Limb##82722+ |q 30894/1 |goto 74.0,87.5
Use your Citron-Infused Bandages on Injured Gao-Ran Blackguards |use Citron-Infused Bandages##82787
|tip Marking them with shift+v will make them much easier to spot (Use v to mark enemies again).
Heal 8 Injured Gao-Ran Blackguards |q 30892/1 |goto 74.0,87.5
|talk Injured Gao-Ran Blackguard##61692
step
talk Septi the Herbalist##61470
turnin Back on Their Feet##30892 |goto 75.9,83.1
turnin Rummaging Through the Remains##30894 |goto 75.9,83.1
step
talk Taran Zhu##61066
turnin The Endless Swarm##30893 |goto 76.4,82.4
accept Improvised Ammunition##30895 |goto 76.4,82.4
step
_Follow_ the path |goto 73.2,86.9 < 10 |only if walking
talk Initiate Feng##61881
accept Thieves and Troublemakers##30896 |goto 70.5,86.4
step
talk Initiate Chao##61880
accept In the Wrong Hands##30897 |goto 70.4,86.7
stickystart "agitatedrootsprite"
step
kill Needlebottom##61818
kill Initiate Chao's Sword##82783 |q 30897/1 |goto 63.1,87.7
step
label "agitatedrootsprite"
kill Agitated Nettleskin##61811+, Agitated Seedstealer##61302+
Kill 10 Agitated Root Sprites |q 30896/1 |goto 63.5,88.8
click Dread Orb##211873
|tip These look just like the orange orbs all over the trees in the area, but they are small. They are also dropped from Agitated mobs.
collect 16 Volatile Dread Orb##82723+ |q 30895/1 |goto 63.5,88.8
More of these can be found at this location |goto Townlong Steppes,68.2,86.6
step
talk Initiate Feng##61881
turnin Thieves and Troublemakers##30896 |goto 70.5,86.4
step
talk Initiate Chao##61880
turnin In the Wrong Hands##30897 |goto 70.3,86.7
step
talk Taran Zhu##61066
turnin Improvised Ammunition##30895 |goto 76.4,82.4
accept Cutting the Swarm##30898 |goto 76.4,82.4
step
clicknpc Dragon Launcher##62024 |invehicle
Use the abilities on your hotbar to kill Krik'thik
kill Krik'thik Drone##61960+, Krik'thik Acidslinger##62014+
Kill 50 Krik'thik Drones |q 30898/1 |goto 74.7,84.6
step
talk Taoshi##62444
turnin Cutting the Swarm##30898 |goto 74.2,85.0
accept Terror of the Dread Wastes##30900 |goto 74.2,85.0
step
kill Norvakess##62324 |q 30900/1 |goto 74.3,87.6
|tip When he casts Sonic Field avoid the pulsing yellow circles on the ground. When he burrows underground kill the few weak mobs that spawn and then he will resurface.
step
talk Taran Zhu##61066
turnin Terror of the Dread Wastes##30900 |goto 76.4,82.4
accept Along the Southern Front##30901 |goto 76.4,82.4
step
_Follow_ Taran Zhu and Taoshi |goto 67.4,80.6 < 10 |walk
talk Taoshi##62436
turnin Along the Southern Front##30901 |goto 67.3,80.9
accept Enraged By Hatred##30970 |goto 67.3,80.9
step
talk Initiate Pao-Me##62124
accept Taking Stock##30971 |goto 67.4,80.7
step
_Enter_ the tunnel |goto 66.8,83.6 < 10 |walk
click Shado-Pan Fire Arrows##212136
|tip These can be found in bundles inside the cave and on the ground outside
collect 120 Shado-Pan Fire Arrows##83024 |q 30971/1 |goto 67.9,82.5
kill 9 Seething Fleshripper##61299+ |q 30970/1 |goto 67.9,82.5
You can find more Scorpions and Arrows outside around |goto Townlong Steppes,64.4,82.6
step
talk Taoshi##62436
turnin Enraged By Hatred##30970 |goto 67.3,80.9
step
talk Initiate Pao-Me##62124
turnin Taking Stock##30971 |goto 67.4,80.7
accept Joining the Fight##30972 |goto 67.4,80.7
step
talk Lao-Chin the Iron Belly##61016
turnin Joining the Fight##30972 |goto 61.6,79.3
step
talk Taran Zhu##62273
accept Up In Flames##30973 |goto 61.7,79.3
step
kill 10 Kor'thik Timberhusk##61355+ |q 30973/1 |goto 60.1,78.7
|tip In order to remove the Timberhusk buff you must kick a Keg Bomb into the Kor'thik.
|tip If the keg misses drag the mob into the fire
step
talk Taran Zhu##62273
turnin Up In Flames##30973 |goto 61.7,79.3
step
talk Lao-Chin the Iron Belly##61016
accept The Taking of Dusklight Bridge##30975 |goto 61.6,79.3
step
As you fight, run through the bubbles to heal yourself and click the cask of Tatsy Brew to gain a large damage buff
kill 12 Kor'thik Bloodletter##62680 |q 30975/1 |goto Dread Wastes 44.9,9.7
|tip Do not use any Area of Effect abilities, these units do large amounts of damage and should be tanked by Lao-Chin.
kill Hulking Kor'thik Fleshrender##62686 |q 30975/2 |goto Dread Wastes 44.9,9.7
step
talk Taran Zhu##62736
turnin The Taking of Dusklight Bridge##30975 |goto Townlong Steppes 61.1,83.1
accept Joining the Hunt##30976 |goto Townlong Steppes 61.1,83.1
step
_Follow_ Taran Zhu |goto 54.3,78.0 < 10 |walk
talk Kite Master Li-Sen##62898
fpath Rensai's Watchpost |goto 54.3,79.0
step
talk Taran Zhu##62274
turnin Joining the Hunt##30976 |goto 54.0,78.1
accept In Skilled Hands##30899 |goto 54.0,78.1
step
talk Rensai Oakhide##62278
accept Grounded Welcome##30977 |goto 53.9,78.1
step
talk Marksman Ye##62573
accept Choking the Skies##31032 |goto 51.3,83.0
step
talk Hawkmaster Nurong##61020
turnin In Skilled Hands##30899 |goto 51.6,87.2
accept Hostile Skies##30978 |goto 51.6,87.2
step
clicknpc Nurong's Cannon##62747
Use the abilities on your new hotbar to do the following:
kill Kor'thik Swarmer##62300
|tip They are flying on the horizon to the east
Shoot down 50 Korthi'thik Swarmers |q 30978/1 |goto 51.7,87.3
kill Voress'thalik##62269
|tip He will spawn after you've killed the 50 Korthi'thik Swarmers
Shot down Voress'thalik |q 30978/2 |goto 51.7,87.3
step
Click the Leave Vehicle button |outvehicle |c
step
talk Hawkmaster Nurong##61020
turnin Hostile Skies##30978 |goto 51.6,87.2
accept Devastation Below##30979 |goto 51.6,87.2
step
_Follow_ the path down |goto 53.0,83.6 < 10 |only if walking
kill Voress'thalik##62270 |q 30979/1 |goto 54.2,86.8
|tip He walks around this pool of water and may not be in this exact spot.
step
talk Hawkmaster Nurong##62786
turnin Devastation Below##30979 |goto 54.0,87.0
accept Heroes of the Shado-Pan##30980 |goto 54.0,87.0
step
_Follow_ the path up |goto 54.2,85.3 < 10 |only if walking
kill 12 Kor'thik Fleetwing##62128+ |q 30977/1 |goto 51.8,85.2
Use the Wu Kao Torch on Korth'thik Fleetwing corpses |use Wu Kao Torch##83768
Burn 10 Kor'thik Fleetwing corpses |q 31032/1 |goto 51.8,85.2
step
talk Marksman Ye##62573
turnin Choking the Skies##31032 |goto 51.3,83.0
step
talk Taran Zhu##62274
turnin Heroes of the Shado-Pan##30980 |goto 54.1,77.9
accept Buried Beneath##31065 |goto 54.1,77.9
step
talk Rensai Oakhide##62278
turnin Grounded Welcome##30977 |goto 53.9,78.1
step
click Wukao Spyglass
Look through Taoshi's Spyglass |q 31065/1 |goto 53.5,77.4
step
talk Taran Zhu##62274
turnin Buried Beneath##31065 |goto 54.1,77.9
accept Taoshi and Korvexxis##30981 |goto 54.1,77.9
accept Lao-Chin and Serevex##31063 |goto 54.1,77.9
accept Nurong and Rothek##31064 |goto 54.1,77.9
step
talk Rensai Oakhide##62278
accept Thinning the Sik'thik##31687 |goto 53.9,78.1
accept The Search for Restless Leng##31688 |goto 53.9,78.1
stickystart "sikthikmantidcage"
step
kill Korvexxis##62579 |q 30981/1 |goto 46.7,83.1
|tip Avoid the red circles on the ground.
step
kill Rothek##62581 |q 31064/1 |goto 39.5,76.0
|tip Avoid the red circles on the ground.
step
kill Serevex##62580 |q 31063/1 |goto 45.4,77.5
|tip Avoid the red circles on the ground.
step
label "sikthikmantidcage"
kill Sik'thik Drone##62576+, Sik'thik Venomspitter##62575+, Sik'thik Vess-Guard##61354+
Kill 12 Sik'thik mantid |q 31687/1 |goto 46.9,76.7
click Sik'thik Cage##214734
Search 8 Sik'thik Cages. |q 31688/1 |goto 46.9,76.7
Find Restless Leng |q 31688/2 |tip He will be in the final cage.
You can find more cages around on top of the hill |goto 47.4,84.7
step
talk Taran Zhu##62275
turnin Taoshi and Korvexxis##30981 |goto 47.5,78.9
turnin Lao-Chin and Serevex##31063 |goto 47.5,78.9
turnin Nurong and Rothek##31064 |goto 47.5,78.9
accept The Sha of Hatred##30968 |goto 47.5,78.9
step
|subzone Sik'vess Lair
Follow Taran Zhu into Sik'vess Lair |goto 45.9,82.8
kill Sha of Hatred##62541 |q 30968/1
|tip The Sha of Hatred periodically shoots off Sha Bursts that deal 80k-90k damage. Keep an eye on the ground and move out of the circles that appear. You may need to turn up your spell detail to see them. It also summons many different adds; make sure to kill them so you do not get overwhelmed.
step
|subzone Sik'vess Lair
talk Taoshi##62802
turnin The Sha of Hatred##30968 |goto 46.1,82.4
accept The Threat in the South##31656 |goto 46.1,82.4
step
_Leave_ the Lair |goto 47.3,79.1 < 10 |walk
talk Rensai Oakhide##62278
turnin Thinning the Sik'thik##31687 |goto 53.9,78.1
turnin The Search for Restless Leng##31688 |goto 53.9,78.1
step
talk Kite Master Yao-Li##62909
fpath Shado-Pan Garrison |goto 50.1,72.0
step
talk Kali the Night Watcher##62874
home Shado-Pan Garrison |goto 48.9,70.8
step
talk Tai Ho##61482
accept The Motives of the Mantid##30921 |goto 49.1,71.2
accept Set the Mantid Back##30923 |goto 49.1,71.2
step
talk Provisioner Bamfu##61625
accept Natural Antiseptic##30922 |goto 49.2,71.3
accept The Field Armorer##30963 |goto 49.2,71.3
accept A Proper Poultice##30964 |goto 49.2,71.3
stickystart "discoverclues"
step
Use your Gunpowder Casks to blow up the Kri'thik Supplies |use Gunpowder Casks##81891
|tip They look like eggs.
Blow up the Kri'thik Supplies |q 30923/2 |goto 56.6,54.0
|tip Follow the path left and up.
step
Use your Gunpowder Casks to blow up the Kri'thik Weapons |use Gunpowder Casks##81891
|tip A bunch of weapon racks
Blow up the Kri'thik Weapons |q 30923/1 |goto 55.5,53.2
step
label "discoverclues"
kill Kri'thik Screamer##61377+, Kri'thik Boneslicer##61376+
Discover the First Clue |q 30921/1 |goto 56.4,53.3
Discover the Second Clue |q 30921/2 |goto 56.4,53.3
Discover the Third Clue |q 30921/3 |goto 56.4,53.3
Discover the Fourth Clue |q 30921/4 |goto 56.4,53.3
step
click Mao-Willow##211779
|tip These look like small cluster of pink grass with a few white reeds sticking up out of them.
collect 11 Mao-Willow##82389+ |q 30964/1 |goto 51.2,60.9
kill Rankbite Tortoise##61619+, Rankbite Ancient+w
collect 120 Rankbite Shell Fragment##82388+ |q 30963/1 |goto 51.2,60.9
kill Longshadow Mushan##61618+, Longshadow Bull+
collect 5 Foll Mushan Bladder##82387 |q 30922/1 |goto 51.2,60.9
You can find more Willows, Turtles, and Mushan at this spot |goto Townlong Steppes,61.3,54.9
step
talk Tai Ho##61482
turnin Set the Mantid Back##30923 |goto 49.1,71.2
turnin The Motives of the Mantid##30921 |goto 49.1,71.2
accept The Wisdom of Niuzao##30924 |goto 49.1,71.2
step
talk Provisioner Bamfu##61625
|tip He walks around the camp
turnin Natural Antiseptic##30922 |goto 49.1,71.3
turnin The Field Armorer##30963 |goto 49.1,71.3
turnin A Proper Poultice##30964 |goto 49.1,71.3
step
_Cross_ the bridge |goto 48.4,68.9 < 10 |only if walking
talk Ku-Mo##61539
accept My Father's Crossbow##30931 |goto 43.9,65.8
step
kill Et'kil##61540
|tip He can be tough to kill, make sure you keep his adds crowd controlled or interrupted.
collect Father's Crossbow##82332 |q 30931/1 |goto 38.7,65.4
step
talk Ku-Mo##61539
turnin My Father's Crossbow##30931 |goto 43.9,65.8
step
talk Sentinel Commander Qipan##61584
accept Father's Footsteps##30932 |goto 39.4,62.0
step
talk Ogo the Younger##61581
turnin The Wisdom of Niuzao##30924 |goto 39.3,62.2
accept Niuzao's Price##30925 |goto 39.3,62.2
step
talk Bluesaddle##61161
accept Bad Yak##30929 |goto 39.2,62.0
step
clicknpc Ruthers##61163
Gently pet Ruthers |q 30929/1 |goto 39.3,61.9
Offer Ruthers an apple |q 30929/2 |goto 39.3,61.9
Lightly nudge Ruthers |q 30929/3 |goto 39.3,61.9
Attempt to mount Ruthers |q 30929/4 |goto 39.3,61.9
step
talk Bluesaddle##61161
turnin Bad Yak##30929 |goto 39.2,62.0
step
clicknpc Sentinel Yalo##61683
|tip He will be patrolling around this area.
Find Sentinel Yalo |q 30932/4 |goto 39.3,61.2
step
click Father's Shield##211836
|tip It is laying on the ground, to the left of the stairs.
Find Father's Shield |q 30932/2 |goto 37.5,61.4
step
click Father's Bedroll##211837
|tip Laying on the floor inside this little building.
Find Father's Bedroll |q 30932/1 |goto 37.4,60.9
step
clicknpc Ha-Cha##61685
Find Ha-Cha |q 30932/3 |goto 37.7,64.0
step
talk Ku-Mo##61539
turnin Father's Footsteps##30932 |goto 39.5,61.9
step
talk Bluesaddle##61161
accept Pick a Yak##30930 |goto 35.4,56.6
step
Use your Yak Lasso on Wild Townlong Yaks |use Yak Lasso##82468
|tip It will probably take a few tries to find the right Yak
kill Wild Townlong Yak##61635
Find a Suitable Yak |q 30930/1 |goto 34.5,50.2
step
talk Bluesaddle##61161
turnin Pick a Yak##30930 |goto 35.4,56.6
step
kill Sra'thik Guard##61518+, Sra'thik Supplier##61516+
Find Statuette Head |q 30925/1 |goto 43.2,48.7
Find Statuette Body |q 30925/2 |goto 43.2,48.7
Find Statuette Legs |q 30925/3 |goto 43.2,48.7
Find Statuette Tail |q 30925/4 |goto 43.2,48.7
step
talk Ogo the Younger##61581
turnin Niuzao's Price##30925 |goto 39.3,62.2
step
talk Ogo the Elder##61580
accept The Terrible Truth##30926 |goto 39.4,62.3
step
talk Yak-Keeper Kyana##61585
accept A Trail of Fear##30928 |goto 39.2,62.1
step
talk Sentinel Commander Qipan##61584
accept Give Them Peace##30927 |goto 39.4,62.0
step
Find the catacombs |q 30926/1 |goto 32.8,61.1
stickystart "peacetosentinels"
step
kill Dread Shadow##62307 |q 30926/3 |goto Townlong Steppes/13 50.1,26.0
Investigate the Niuzao Catacombs |q 30926/2 |goto Townlong Steppes/13 50.1,26.0
step
talk Tai Ho##61482
turnin The Terrible Truth##30926 |goto Townlong Steppes/13 55.9,20.1
step
label "peacetosentinels"
Before exiting the catatcombs complete the following:
kill 12 Dreadling##62306+ |q 30928/1
clicknpc Fear-Stricken Sentinel##62276+
|tip These are Pandaren bodies on the ground
Give peace to 10 Fear-Stricken Sentinels |q 30927/1
step
talk Sentinel Commander Qipan##61584
turnin Give Them Peace##30927 |goto Townlong Steppes 39.4,61.9
step
talk Yak-Keeper Kyana##61585
turnin A Trail of Fear##30928 |goto 39.1,62.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Dread Wastes (84-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\DreadWastes",
startlevel=84,
endlevel=90,
},[[
step
talk Bowmistress Li##62112
turnin The Threat in the South##31656 |goto Vale of Eternal Blossoms 14.1,77.2
accept Nope##31002 |goto Vale of Eternal Blossoms 14.1,77.2
accept Falling Down##31001 |goto Vale of Eternal Blossoms 14.1,77.2
step
click Shado-Pan Rope##215393
Ride the rope down the wall |invehicle |goto 14.2,76.8
step
Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807
|tip You can move while using it, even though it is channeled
Destroy 20 Dreadspinner Eggs |q 31002/1 |goto Dread Wastes 73.2,22.5
kill 6 Dreadspinner Tender##61981+ |q 31002/2 |goto Dread Wastes 73.2,22.5
step
Talk to Marksman Lann |q 31001/1 |goto 72.6,28.7
turnin Falling Down##31001 |goto 72.6,28.7
turnin Nope##31002 |goto 72.6,28.7
accept Psycho Mantid##31003 |goto 72.6,28.7
step
_Enter_ the hovel |goto 72.9,28.0 < 10 |walk
kill Adjunct Kree'zot##62301 |q 31003/1 |goto 73.1,27.7
step
talk Klaxxi'va Tik##62203
turnin Psycho Mantid##31003 |goto 73.6,27.6
accept Preserved in Amber##31004 |goto 73.6,27.6
step
click Ancient Amber Chunk##212980
Klaxxi Tuning Fork used on Amber |q 31004/1 |goto 70.2,25.7
step
talk Kil'ruk the Wind-Reaver##62202
turnin Preserved in Amber##31004 |goto 70.2,25.7
accept Wakening Sickness##31005 |goto 70.2,25.7
accept Ancient Vengeance##31676 |goto 70.2,25.7
step
kill 6 Vengeful Gurthani Spirit |q 31676/1 |goto 66.7,29.5
kill Sapfly##62386+
collect 100 Sapfly Bits##83075 |q 31005/1 |goto 66.7,29.5
You can find more at this location |goto Dread Wastes,70.2,32.5
step
talk Kil'ruk the Wind-Reaver##62202
turnin Wakening Sickness##31005 |goto 70.2,25.7
turnin Ancient Vengeance##31676 |goto 70.2,25.7
accept The Klaxxi Council##31006 |goto 70.2,25.7
step
talk Kil'ruk the Wind-Reaver##62202
Tell him to take you to Klaxxi'vess
Travel to Klaxxi Hub |q 31006/1 |goto 70.2,25.7
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Klaxxi Council##31006 |goto 55.0,34.0
accept The Dread Clutches##31007 |goto 55.0,34.0
accept Not Fit to Swarm##31660 |goto 55.0,34.0
step
talk Kor'ik##64815
accept Dead Zone##31009 |goto 54.8,34.1
step
talk Ambersmith Zikk##64599
accept Amber Arms##31008 |goto 55.0,35.6
step
talk Kik'tik##63501
fpath Klaxxi'vess |goto 55.8,34.9
step
talk Zit'tix##65220
home Klaxxi'vess |goto 55.9,32.3
step
talk Kil'ruk the Wind-Reaver##62538 |goto 55.0,34.0 < 10
Ask him to fly you to the Clutches of Shek'zeer |goto 39.0,40.5 < 10
Use the Klaxxi Resonating Crystal on the Inactive Sonic Relay |use Klaxxi Resonating Crystal##83276
Sonic Relay activated |q 31009/1 |goto 40.0,39.0
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Dead Zone##31009
accept In Her Clutch##31010
step
clicknpc Malik the Unscathed##62690
Hold off the swarm while Malik awakens
Paragon Wakened |q 31010/1 |goto 44.9,41.5
step
click Sha-Haunted Crystal##214562
accept A Source of Terrifying Power##31661 |goto 44.6,41.4
stickystart "shekzeerswarm"
step
kill Shek'zeer Bladesworn##62563+
collect 6 Amber Blade##83135+ |q 31008/1 |goto 47.8,42.0
You can find more Bladesworn around |goto Dread Wastes 41.8,43.0
step
label "shekzeerswarm"
kill 6 Shek'zeer Clutch-Keeper##64559+ |q 31007/1 |goto 43.5,41.4
kill 30 Shek'zeer Swarmborn##62582+ |q 31660/1 |goto 43.5,41.4
step
talk Malik the Unscathed##62774
turnin In Her Clutch##31010 |goto 55.0,34.1
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Dread Clutches##31007 |goto 55.0,34.1
turnin Not Fit to Swarm##31660 |goto 55.0,34.1
step
talk Kor'ik##64815
accept A Cry From Darkness##31066 |goto 54.8,34.1
step
talk Ambersmith Zikk##64599
turnin Amber Arms##31008 |goto 55.0,35.5
turnin A Source of Terrifying Power##31661 |goto 55.0,35.5
accept Concentrated Fear##31108 |goto 55.0,35.5
step
talk Malik the Unscathed##62774
accept Citizens of a New Empire##31107 |goto 55.1,35.5
accept The Dreadsworn##31689 |goto 55.1,35.5
stickystart "vorthikeggs"
step
kill Qi'tar the Deathcaller##62863 |q 31066/1 |goto 59.4,18.5
step
label "vorthikeggs"
kill Vor'thik Fear-Shaper##62814+
collect 4 Dread Amber Focus##86616 |q 31108/1 |goto 58.5,16.9
kill 6 Vor'thik Dreadsworn##62813+ |q 31689/1 |goto 58.5,16.9
click Vor'thik Eggs##214170
|tip Small gold eggs on the ground
collect 10 Vor'thik Eggs##86598 |q 31107/1 |goto 58.5,16.9
step
talk Kor'ik##64815
turnin A Cry From Darkness##31066 |goto 54.8,34.1
accept Extending Our Coverage##31087 |goto 54.8,34.1
step
talk Malik the Unscathed##62774
turnin Citizens of a New Empire##31107 |goto Dread Wastes 55.1,35.5
turnin The Dreadsworn##31689 |goto Dread Wastes 55.1,35.5
step
talk Ambersmith Zikk##64599
turnin Concentrated Fear##31108 |goto 55.0,35.6
step
talk Kil'ruk the Wind-Reaver##62538
accept Amber Is Life##31019 |goto 55.0,35.9
stickystart "mantidrelic"
step
kill Mistblade Ripper##61970+
collect 1 Strange Relic##82870 |n
Click the Strange Relic in your bags |use Strange Relic##82870
accept Relics of the Swarm##31023 |goto 62.3,57.1
step
label "mantidrelic"
kill 7 Mistblade Ripper##61970+ |q 31019/1 |goto 67.2,59.3
click Mantid Relic##212079
|tip They look like broken tablets underwater and on the shore
collect 8 Mantid Relic##82867 |q 31023/1 |goto 67.2,59.3
step
_Enter_ the tunnel |goto 66.8,63.8 < 10 |walk
kill Mistblade Scale-Lord##63179 |q 31019/2 |goto 66.5,66.0 |indoors Mistblade Den
step
talk Ancient Amber Chunk##65354
turnin Amber Is Life##31019 |goto 66.8,65.4 |indoors Mistblade Den
step
Next to you:
talk Korven the Prime##62232
accept Feeding the Beast##31020
accept Living Amber##31021
stickystart "Coldbite"
step
Go underwater to |goto 65.5,59.1 |walk
click Amber Fragment##212011
collect 9 Living Amber##82864 |n
|tip They are small golden balls on the seafloor
Click the Living Amber in your bags |use Living Amber##82864
Feed Korven the Prime 9 Living Amber |q 31021/1
step
label "Coldbite"
kill 8 Coldbite Crocolisk##62023 |q 31020/1
step
Next to you:
talk Korven the Prime##62232
turnin Feeding the Beast##31020
turnin Living Amber##31021
accept Kypari Zar##31022
step
click Sonar Tower##212933
Sonar Tower Examined |q 31022/1 |goto 59.8,59.5
kill Ik'thik Towerguard##63294+
Korven the Prime Defended. |q 31022/2 |goto 59.8,59.5
step
Next to you:
talk Korven the Prime##62232
turnin Kypari Zar##31022
accept The Root of the Problem##31026
step
_Enter_ the tunnel here |goto 58.7,59.5 < 10 |walk
kill Coldbite Matriarch##62008 |q 31026/1 |goto 57.3,57.8 |indoors Coldbite Burrow
step
Next to you:
talk Korven the Prime##62232
turnin The Root of the Problem##31026
step
_Leave_ the tunnel |goto 58.7,59.5 < 10 |walk
Locate Amberglow Hollow |q 31087/1 |goto 46.3,53.1
step
kill Adjunct Zet'uk##65478 |q 31087/2 |goto 48.2,49.7 |indoors Amberglow Hollow
click Inactive Beacon
Use the Resonating Crystal on the Silent Beacon |q 31087/3 |goto 48.2,49.7 |indoors Amberglow Hollow
step
talk Kor'ik##65365
turnin Extending Our Coverage##31087 |goto 48.1,49.6 |indoors Amberglow Hollow
accept Isolating the Frequency##31088 |goto 48.1,49.6 |indoors Amberglow Hollow
accept The Color of Our Energy##31090 |goto 48.1,49.6 |indoors Amberglow Hollow
step
_Leave_ the building |goto 46.3,53.1 < 10 |walk
kill 8 Ik'thik Harvester##63206+ |q 31088/1 |goto 44.9,57.4
click Amber Collector##212923
|tip They're on the sides of trees
collect 7 Amber-Filled Jar##85159 |q 31090/1 |goto 44.9,57.4
You can find more Amber and Harvesters around |goto 41.6,52.4
step
_Enter_ the building |goto 46.3,53.1 < 10 |walk
talk Kor'ik##65365
turnin Isolating the Frequency##31088 |goto 48.1,49.6 |indoors Amberglow Hollow
turnin The Color of Our Energy##31090 |goto 48.1,49.6 |indoors Amberglow Hollow
step
click Active Beacon
accept By the Sea, Nevermore##31089 |goto 48.2,49.8 |indoors Amberglow Hollow
step
_Leave_ the building |goto 46.3,53.1 < 10 |walk
Use the Klaxxi Tuning Fork in your bags on the Ocean Worn Rocks |use Klaxxi Tuning Fork##84119
Awaken Kaz'tik the Manipulator |q 31089/1 |goto 43.4,63.3
step
talk Kaz'tik the Manipulator##62540
turnin By the Sea, Nevermore##31089 |goto 43.4,63.3
accept Reunited##31091 |goto 43.4,63.3
step
talk Kaz'tik the Manipulator##63876
Tell him you're ready to help him |goto 43.3,63.6 < 10
Escort Kaz'tik to the Undisturbed Dirt |q 31091/1 |goto 41.8,72.0
Find Kaz'tik's greatest weapon |q 31091/2 |goto 41.8,72.0
step
talk Kaz'tik the Manipulator##64344
turnin Reunited##31091 |goto 41.8,72.0
accept The Kunchong Whisperer##31359 |goto 41.8,72.0
accept Feed or Be Eaten##31092 |goto 41.8,72.0
step
kill Oracle Hiss'ir##63998 |q 31359/1 |goto 41.7,63.6
|tip He patrols around The Briny Muck
step
click Glowing Amber##214062
accept Falling to Pieces##31398 |goto 41.9,63.7
stickystart "Muckscaleripper"
step
kill Brineshell Snapper##63981+, Trained Brineshell Snapper##65330+
collect 6 Succulent Turtle Filet##86489+ |n
Click the Succulent Turtle Filets in your bags |use Succulent Turtle Filet##86489
Feed 6 Succulent Turtle Filets to Kovok |q 31092/1 |goto 38.1,57.3
step
label "Muckscaleripper"
kill Muckscale Ripper##63993+, Muckscale Shaman##64008+, Muckscale Slayer##63999+, Muckscale Flesh-Hunter##63997+
Kill 10 Muckscale Tribe |q 31359/2 |goto 38.1,57.3
|tip You can find more Tribe Members and Turtles all over The Briny Muck
step
talk Kaz'tik the Manipulator##63758
turnin The Kunchong Whisperer##31359 |goto Dread Wastes 54.4,35.6
turnin Feed or Be Eaten##31092 |goto Dread Wastes 54.4,35.6
turnin Falling to Pieces##31398 |goto Dread Wastes 54.4,35.6
step
talk Ambersmith Zikk##64599
turnin Relics of the Swarm##31023 |goto 55.0,35.5
accept Gambling Problem##31727 |goto 55.0,35.5
step
talk Kil'ruk the Wind-Reaver##62538
accept A Not So Friendly Request##31730 |goto 55.0,35.9
step
talk Sapmaster Vu##62666
turnin A Not So Friendly Request##31730 |goto 51.2,11.4
accept The Heavens Hum With War##31067 |goto 51.2,11.4
step
talk Jin the Flying Keg##63500
fpath The Sunset Brewgarden |goto Dread Wastes 50.2,12.2
step
_Enter_ the building |goto 53.6,15.6 < 10 |walk
click Scroll of Auspice##212389
accept Sacred Recipe##31068 |goto 53.1,12.4 |indoors The Amber Vault
step
kill Azzix K'tai##62843 |q 31067/1 |goto 52.7,10.1 |indoors The Amber Vault
step
_Leave_ the building here |goto 53.6,15.6 < 10 |walk
talk Lya of Ten Songs##62667
turnin Sacred Recipe##31068 |goto 50.7,11.7
step
Watch the dialogue
talk Lya of Ten Songs##62667
accept Rending Daggers##31072 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
turnin The Heavens Hum With War##31067 |goto 51.2,11.4
accept Bound With Shade##31069 |goto 51.2,11.4
step
talk Olon##62668
accept Daggers of the Great Ones##31070 |goto 51.2,11.2
step
talk Thirsty Missho##62859
accept I Bring Us Great Shame##31071 |goto 51.1,11.1
step
talk Chen Stormstout##62779
accept Fate of the Stormstouts##31129 |goto 50.5,12.0
step
talk Lya of Ten Songs##62667
Ask her if she has seen any Stormstous in the Brewgarden |q 31129/2 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
Ask him if he has seen anybody named Stormstout come through here |q 31129/1 |goto 51.2,11.4
step
talk Big Dan Stormstout##62845
Ask him if his name is really Stormstout |q 31129/3 |goto 50.9,11.4
step
talk Chen Stormstout##62779
turnin Fate of the Stormstouts##31129 |goto 50.5,12.0
step
talk Chen Stormstout##62779
accept Evie Stormstout##31077 |goto 54.1,20.5
stickystart "havestshades"
step
click Lost Keg##212540
collect Lost Keg##83781 |q 31071/2 |goto 54.5,20.3
step
click Lost Picnic Supplies##212556
collect Lost Picnic Supplies##83783 |q 31071/3 |goto 56.0,19.4
step
click Lost Mug##212548
collect Lost Mugs##83782 |q 31071/1 |goto 51.8,19.0
step
kill Ilikkax##62833
collect Blade of Ilikkax##84112 |q 31072/2 |goto 50.7,20.8
step
kill Kz'Kzik##62832
|tip Watch out for the bombs he throws.
collect Blade of Kz'Kzik##84111 |q 31072/1 |goto 53.1,20.4
step
label "havestshades"
kill Dread Lurker##62751+
|tip You can also kill the smaller, Nagging Dreadlings as well.
Harvest 100 Shade |q 31069/1 |goto 55.3,18.2
step
kill Frightened Mushan##62760
collect 3 Large Mushan Tooth##84107 |q 31070/1 |goto 51.1,15.9
You can find another small group of Mushan around |goto Dread Wastes,56.5,20.2
step
talk Lya of Ten Songs##62667
turnin Rending Daggers##31072 |goto 50.7,11.7
accept Wood and Shade##31074 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
turnin Bound With Shade##31069 |goto 51.2,11.4
step
talk Olon##62668
turnin Daggers of the Great Ones##31070 |goto 51.2,11.2
step
talk Thirsty Missho##62859
turnin I Bring Us Great Shame##31071 |goto 51.1,11.1
step
talk Sapmaster Vu##62666
accept Bound With Wood##31073 |goto 51.2,11.4
step
talk Defender Azzo##63218
accept Kor'thik Aggression##31133 |goto 50.2,12.4
step
Meet up with Chen |q 31077/1 |goto 50.2,10.2
Listen to Chen's Eulogy |q 31077/2 |goto 50.2,10.2
step
talk Chen Stormstout##62779
turnin Evie Stormstout##31077 |goto 50.2,10.2
accept Han Stormstout##31078 |goto 50.2,10.2
step
Enter the building |goto 44.8,15.8 < 10 |walk
Find the Mark of the Empress |q 31074/1 |goto 44.5,16.8 |indoors Kor'vess
step
Enter the building |goto 43.1,14.0 < 10 |walk
Find the Heartroot of Kypari Kor |q 31074/2 |goto 43.1,14.9 |indoors Kor'vess
step
_Enter_ the Morrowchamber |goto 47.0,16.8 < 10 |walk |indoors Morrowchamber
Work your way around one side of the room
If you go down the ramps on either side you can go underneath the beam
clicknpc Han Stormstout##62776
|tip He is stuck to a rock that's sitting on the floor.
Find Han Stormstout |q 31078/1 |goto 43.7,16.7 |indoors Morrowchamber
step
talk Chen Stormstout##62779
turnin Han Stormstout##31078 |goto 44.4,16.8 |indoors Morrowchamber
stickystart "korthikmantidslain"
step
_Leave_ the Morrowchamber |goto 46.9,16.8 < 10 |walk
clicknpc Withered Husk##62876
|tip They look like Tree Ent bodies laying on the ground. You can do this while mounted.
collect 8 Fragrant Corewood##84118 |q 31073/1 |goto 43.6,8.2
step
label "korthikmantidslain"
kill Kor'thik Chitinel##62756+, Kor'thik Havoc##62757+, Kor'thik Battlesinger##62758+
Kill 17 Kor'thik Mantid |q 31133/1 |goto 43.1,12.9
step
talk Defender Azzo##63218
turnin Kor'thik Aggression##31133 |goto 50.2,12.4
step
talk Lya of Ten Songs##62667
turnin Wood and Shade##31074 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
turnin Bound With Wood##31073 |goto 51.2,11.4
accept Sunset Kings##31075 |goto 51.2,11.4
step
talk Sapmaster Vu##62666
turnin Sunset Kings##31075 |goto 38.2,17.2
step
talk Boggeo##62772
accept The Horror Comes A-Rising##31079 |goto 38.2,17.3
step
talk Olon##62668
accept Fiery Wings##31080 |goto 38.2,17.1
step
talk Lya of Ten Songs##62667
accept Incantations Fae and Primal##31081 |goto 38.3,17.1
step
talk Chief Rikkitun##62771
accept Great Vessel of Salvation##31082 |goto 38.6,17.3
stickystart "shufflingmist"
step
kill Mygoness##62766 |q 31081/2 |goto 32.6,19.3
step
kill Ahgunoss##62765 |q 31081/1 |goto 32.1,17.4
step
label "shufflingmist"
kill 7 Shuffling Mistlurker##65404+ |q 31079/1 |goto 33.8,18.5
step
kill 2 Kyparite##63007 |q 31079/2 |goto 36.0,23.0
clicknpc Rikkilea Flitterling##62764
|tip Click them and then run behind them to catch the Dust they throw
collect 88 Flitterling Dust##84239 |q 31080/1 |goto 36.0,23.0
step
Use the Rikkitun Bell in your bags |use Rikkitun Bell##84267
clicknpc Motherseed##62601
|tip They look like huge acorns on the ground.
Bring the Motherseed to |goto Dread Wastes,36.9,17.4
|tip You can mount while doing this but you have to bring each seed back separately.
Bring 3 Motherseed back to the Motherseed Pit |q 31082/1 |goto 36.8,20.4
step
talk Boggeo##62772
turnin The Horror Comes A-Rising##31079 |goto 38.1,17.3
step
talk Olon##62668
turnin Fiery Wings##31080 |goto 38.2,17.1
step
talk Lya of Ten Songs##62667
turnin Incantations Fae and Primal##31081 |goto 38.3,17.1
step
talk Chief Rikkitun##62771
turnin Great Vessel of Salvation##31082 |goto 38.6,17.3
accept Bind the Glamour##31084 |goto 38.6,17.3
step
talk Chief Rikkitun##62771
Tell him the forked blade is ready
Follow Chief Rikkitun to this location |goto 39.7,23.2
Allow Chief Rikkitun to enchant the forked blade |q 31084/1 |goto 38.6,17.3
step
talk Chief Rikkitun##62771
turnin Bind the Glamour##31084 |goto 38.6,17.3
step
talk Lya of Ten Songs##62667
accept Fires and Fears of Old##31085 |goto 38.3,17.1
step
talk Sapmaster Vu##62666
accept Blood of Ancients##31086 |goto 38.2,17.2
step
click Solidified Amber##212902
|tip A small orange rock on the ground
collect Chunk of Solidified Amber##84779 |q 31086/1 |goto 30.2,30.6
step
click Enormous Landslide
|tip Looks like a big pile of rocks blocking the way.
_Enter_ the building once the landslide is gone |goto 30.5,32.0 < 10 |walk
Use the Ruining Fork in your bags |use Ruining Fork##84771
Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1 |goto 32.4,33.7
step
Kill the 3 Adjunct mobs when they spawn
Protect Iyyokuk the Lucid until he escapes |q 31085/2
step
_Leave_ the building |goto 30.5,32.0 < 10 |walk
talk Lya of Ten Songs##62667
turnin Fires and Fears of Old##31085 |goto 50.3,12.1
step
talk Sapmaster Vu##62666
turnin Blood of Ancients##31086 |goto 50.3,12.1
step
talk Min the Breeze Rider##63498
fpath Soggy's Gamble |goto 56.1,70.2
step
talk Deck Boss Arie##63349
turnin Soggy's Gamble##31727 |goto 54.7,72.2
accept Mazu's Breath##31265 |goto 54.7,72.2
step
Use the Potion of Mazu's Breath in your bags |use Potion of Mazu's Breath##85869
Drink the Potion of Mazu's Breath |q 31265/1
step
talk Deck Boss Arie##63349
turnin Mazu's Breath##31265 |goto 54.7,72.2
accept Fresh Pots##31181 |goto 54.7,72.2
accept You Otter Know##31182 |goto 54.7,72.2
step
Use the Bag of Clams in your bags on Coldwhisker Otters |use Bag of Clams##85231
|tip You can find them at the water's surface or diving down to the sea floor
kill Sea Monarch##63470+
collect 20 Sea Monarch Chunks##85230 |n
click Empty Crab Pot
|tip They look like red and brown cages on the sea floor
Bait 10 Crab Pots |q 31181/1 |goto 59.4,82.1
step
talk Deck Boss Arie##63349
turnin Fresh Pots##31181 |goto 54.7,72.2
turnin You Otter Know##31182 |goto 54.7,72.2
accept Meet the Cap'n##31183 |goto 54.7,72.2
step
talk Captain "Soggy" Su-Dao##63317
turnin Meet the Cap'n##31183 |goto 55.7,72.5
accept Walking Dog##31185 |goto 55.7,72.5
accept Old Age and Treachery##31184 |goto 55.7,72.5
step
talk Deck Boss Arie##63349
accept On the Crab##31187 |goto 54.7,72.2
accept Shark Week##31188 |goto 54.7,72.2
step
Use Dog's Whistle while swimming in the Shelf of Mazu |use Dog's Whistle##85955
Next to you:
talk Dog##63955
accept Dog Food##31186 |goto 50.9,78.1
stickystart "fullcrabpots"
step
Bring Dog to the Silt Vents |q 31185/1 |goto 46.2,74.2
step
Bring Dog to the Wreck of the Mist-Hopper |q 31185/2 |goto 44.9,78.0
step
click Soggy's Footlocker##213454
|tip It is on the wrecked ship.
collect Sealed Charter Tube##85886 |q 31184/1 |goto 44.8,78.7
step
Bring Dog to the Whale Corpse |q 31185/3 |goto 40.2,79.1
step
label "fullcrabpots"
kill Rockshell Snapclaw##63369
Feed Dog |q 31186/1 |goto 46.0,77.1
kill Longfin Thresher##63944
collect Thresher Jaw##85998 |n
Use the Thresher Jaw in your bags |use Thresher Jaw##85998
collect 200 Thresher Teeth##85999 |q 31188/1 |goto 46.0,77.1
click Full Crab Pot##213508
|tip These look the same as before, red and brown cages on the sea floor
Send 8 Full Crab Pots to the Surface |q 31187/1 |goto 46.0,77.1
step
Next to you:
If he's not next to you, use Dog's Whistle while swimming to summon him again. |use Dog's Whistle##85955
talk Dog##63955
turnin Dog Food##31186
step
talk Deck Boss Arie##63349
turnin On the Crab##31187 |goto 54.7,72.2
turnin Shark Week##31188 |goto 54.7,72.2
step
talk Captain "Soggy" Su-Dao##63317
turnin Walking Dog##31185 |goto 55.7,72.5
turnin Old Age and Treachery##31184 |goto 55.7,72.5
step
talk Deck Boss Arie##63349
accept Reeltime Strategy##31189 |goto 54.7,72.2
step
talk Master Angler Ju Lien##64259
Tell him the deck Boss said you needed some help. |q 31189/1 |goto 53.6,76.0
step
Click each rod and fight the Jiao Spawns.
|tip The rods are on either side of him, sitting on some wood.
click Serpent Rod##213744
click Improvised Rod##213753
click Bamboo Rod##213746
click Classic Rod##213752
kill Jiao Spawn##64273+
Assist Master Angler Ju Lien |q 31189/2 |goto 53.7,76.0
step
talk Deck Boss Arie##63349
turnin Reeltime Strategy##31189 |goto 54.7,72.2
step
talk Captain "Soggy" Su-Dao##63317
accept The Mariner's Revenge##31190 |goto 54.8,72.1
step
Follow Captain "Soggy" Su-Dao |goto 56.2,76.3
clicknpc Mist-Hopper Jr.##64350
Hold down Right click to aim and use the Harpoon Cannon ability on your new hotbar to attack the red circles all around Jiao
25 Bow Hits |q 31190/1
25 Port Side Hits |q 31190/2
25 Starboard Hits |q 31190/3
25 Stern Hits |q 31190/4
step
Hit the yellow Leave Vehicle button on your hotbar |outvehicle
step
talk Captain "Soggy" Su-Dao##63317
turnin The Mariner's Revenge##31190 |goto 56.6,75.9
step
talk Deck Boss Arie##63349
accept Mazu's Bounty##31354 |goto 56.6,75.8
step
talk Master Angler Ju Lien##64259
turnin Mazu's Bounty##31354 |goto 54.9,72.8
accept Once in a Hundred Lifetimes##32030 |goto 54.9,72.8
step
talk Klaxxi'va Ik##65395
turnin Once in a Hundred Lifetimes##32030 |goto 54.7,34.7
accept Overthrone##31782 |goto 54.7,34.7
step
Witness the Klaxxi Ritual |q 31782/1
step
talk Klaxxi'va Vor##62519
turnin Overthrone##31782 |goto 55.1,34.3
step
From this point on you must meet the reputation requirements for The Klaxxi faction in order to accept quests
talk Kil'ruk the Wind-Reaver##62538
accept Skeer the Bloodseeker##31175 |goto 55.0,35.9
|tip This quest is only available to those who are honored with The Klaxxi.
step
talk Kor'ik##64815
accept The Zan'thik Dig##31605 |goto 54.8,34.1
step
Swim underwater and enter this cave |goto 25.7,53.9 < 10 |walk
click Ancient Amber Chunk##212980
Skeer the Bloodseeker Awakened |q 31175/1 |goto 25.7,50.4
step
talk Skeer the Bloodseeker##63071
turnin Skeer the Bloodseeker##31175 |goto 25.7,50.3
accept A Strange Appetite##31176 |goto 25.7,50.3
accept Fine Dining##31177 |goto 25.7,50.3
accept A Bloody Delight##31178 |goto 25.7,50.3
stickystart "Clacker"
stickystart "Starfish"
step
Leave the cave |goto 25.7,53.9 < 10 |walk
kill Dread Remora##63353
collect 100 Volatile Blood##85229 |q 31178/1 |goto 26.3,58.8
step
label "Clacker"
kill Briny Clacker##63348
collect 8 Clacker Tail##85212 |q 31177/1 |goto 26.3,58.8
step
label "Starfish"
click Spiny Starfish##212988
|tip Little pink starfish all over the sea floor
collect 12 Starfish Meat##85211 |q 31176/1 |goto 26.3,58.8
step
_Go_ underwater and enter the cave |goto 25.7,53.9 < 10 |walk
talk Skeer the Bloodseeker##63071
turnin A Strange Appetite##31176 |goto 25.7,50.3
turnin Fine Dining##31177 |goto 25.7,50.3
turnin A Bloody Delight##31178  |goto 25.7,50.3
accept The Scent of Blood##31179 |goto 25.7,50.3
step
Fight off the waves of Muckscale
kill 12 Muckscale Flesheater##63465+ |q 31179/1 |goto 25.7,50.3
kill Muckscale Serpentus##63466 |q 31179/2 |goto 25.7,50.3
step
Leave the cave |goto 25.7,53.9 < 10 |walk
talk Rik'kal the Dissector##65253
turnin The Zan'thik Dig##31605 |goto 31.8,88.9
accept The Dissector Wakens##31606 |goto 31.8,88.9
step
Kill the Zan'thik while Rik'kal recovers.
kill Zan'thik Impaler##65273+, Zan'thik Manipulator##65274+
Paragon Wakened |q 31606/1
step
talk Rik'kal the Dissector##65253
turnin The Dissector Wakens##31606 |goto 31.8,88.9
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Scent of Blood##31179 |goto 55.0,35.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Daily",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\WanderingIsle",
monkquest=1,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31840) or not completedq(31841) or not completedq(31842) or not completedq(31843) or not completedq(31844) or not completedq(31845) or not completedq(31846) and level>=20 end,
condition_end=function() return completedq(31840) end,
description="This guide will walk you through the Monk daily for extra experience.",
},[[
step
talk Master Hight##66260
accept Practice Makes Perfect: Master Cheng##31840 |or |goto Kun-Lai Summit 48.6,42.7
accept Practice Makes Perfect: Master Woo##31841 |or |goto Kun-Lai Summit 48.6,42.7
accept Practice Makes Perfect: Master Kistane##31842 |or |goto Kun-Lai Summit 48.6,42.7
accept Practice Makes Perfect: Master Yoon##31843 |or |goto Kun-Lai Summit 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31844 |or |goto Kun-Lai Summit 48.6,42.7
accept Practice Makes Perfect: Master Tsang##31845 |or |goto Kun-Lai Summit 48.6,42.7
accept Practice Makes Perfect: Master Hsu##31846 |or |goto Kun-Lai Summit 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31840/1 |goto 47.1,40.1
|only if havequest(31840)
step
talk Master Woo##65960
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Woo##65960
Complete Master Cheng's Training |q 31841/1 |goto 48.6,39.6
|only if havequest(31841)
step
talk Master Kistane##65899
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Kistane##65899
Complete Master Kistane's Training |q 31842/1 |goto 48.0,40.2
|only if havequest(31842)
step
talk Master Yoon##66073
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Yoon##66073
Complete Master Yoon's Training |q 31843/1 |goto 48.0,40.2
|only if havequest(31843)
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31844/1 |goto 47.1,40.1
|only if havequest(31844)
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31845/1 |goto 47.1,40.1
|only if havequest(31845)
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31846/1 |goto 47.1,40.1
|only if havequest(31846)
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31840 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Woo##31841 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Kistane##31842 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Yoon##31843 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Cheng##31844 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Tsang##31845 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Hsu##31846 |or |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 20",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=20,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31834) and level>=20 end,
condition_end=function() return completedq(31834) end,
description="This guide will walk you through the Monk daily for extra experience.",
},[[
step
Upon reaching level 20 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Begin Your Training##31856
step
talk Master Hight##66260
turnin The Peak of Serenity - Begin Your Training##31856 |goto Kun-Lai Summit 48.6,42.7
accept Begin Your Training: Master Cheng##31834 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31834/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Begin Your Training: Master Cheng##31834 |goto 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31840 |goto 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31840/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31840 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 30",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=30,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31833) and level>=30 end,
condition_end=function() return completedq(31833) end,
description="This guide will walk you through the Monk quest at level 30.",
},[[
step
Upon reaching level 30 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31855
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31855 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Woo##31833 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Woo##65960
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Woo##65960
Complete Master Woo's Training |q 31833/1 |goto 48.6,39.6
step
talk Master Hight##66260
turnin Continue Your Training: Master Woo##31833 |goto 48.6,42.7
accept Practice Makes Perfect: Master Woo##31841 |goto 48.6,42.7
step
talk Master Woo##65960
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Woo##65960
Complete Master Cheng's Training |q 31841/1 |goto 48.6,39.6
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Woo##31841 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 40",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=40,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31835) and level>=40 end,
condition_end=function() return completedq(31835) end,
description="This guide will walk you through the Monk quest at level 40.",
},[[
step
Upon reaching level 40 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31857
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31857 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Kistane##31835 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Kistane##65899
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Kistane##65899
Complete Master Kistane's Training |q 31835/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Continue Your Training: Master Kistane##31835 |goto 48.6,42.7
accept Practice Makes Perfect: Master Kistane##31842 |goto 48.6,42.7
step
talk Master Kistane##65899
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Kistane##65899
Complete Master Kistane's Training |q 31842/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Kistane##31842 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 50",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=50,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31836) and level>=50 end,
condition_end=function() return completedq(31836) end,
description="This guide will walk you through the Monk quest at level 50.",
},[[
step
Upon reaching level 50 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31858
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31858 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Yoon##31836 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31836/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Continue Your Training: Master Yoon##31836 |goto 48.6,42.7
accept Practice Makes Perfect: Master Yoon##31843 |goto 48.6,42.7
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31843/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Yoon##31843 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 60",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=60,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31837) and level>=60 end,
condition_end=function() return completedq(31837) end,
description="This guide will walk you through the Monk quest at level 60.",
},[[
step
Upon reaching level 60 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31859
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31859 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Cheng##31837 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Cheng##66138
Tell her you wish to challenge him
Follow her to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31837/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Cheng##31837 |goto 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31844 |goto 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge her
Follow him to the center of the area and fight her
kill Master Cheng##66138
Complete Master Cheng's Training |q 31844/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31844 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 70",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=70,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31838) and level>=70 end,
condition_end=function() return completedq(31838) end,
description="This guide will walk you through the Monk quest at level 70.",
},[[
step
Upon reaching level 70 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31860
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31860 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Tsang##31838 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31838/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Tsang##31838 |goto 48.6,42.7
accept Practice Makes Perfect: Master Tsang##31845 |goto 48.6,42.7
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31845/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Tsang##31845 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 80",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=80,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31861) and level>=80 end,
condition_end=function() return completedq(31861) end,
description="This guide will walk you through the Monk quest at level 80.",
},[[
step
Upon reaching level 80 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31861
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31861 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Hsu##31839 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31839/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Hsu##31839 |goto 48.6,42.7
accept Practice Makes Perfect: Master Hsu##31846 |goto 48.6,42.7
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31846/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Hsu##31846 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (80-90)\\Peak of Serenity\\Monk Quest 90",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=90,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31844) and level>=90 end,
condition_end=function() return completedq(31844) end,
description="This guide will walk you through the Monk quest at level 90.",
},[[
step
Upon reaching level 90 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Complete Your Training##31889
step
talk Master Hight##66260
turnin The Peak of Serenity - Complete Your Training##31889 |goto Kun-Lai Summit 48.6,42.7
accept Complete Your Training: The Final Test##31844 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Hight##66260
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hight##66260
Complete Master Hight's Training |q 31844/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Complete Your Training: The Final Test##31844 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\The Loremaster\\Loremaster of Pandaria",{
achieveid={6541},
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Pandaria Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Jade Forest Quests |achieve 6534 |loadguide "Zygor's Leveling Guides\\Pandaria (80-90)\\The Jade Forest (80-90)"
Valley of the Four Winds Quests |achieve 6301 |loadguide "Zygor's Leveling Guides\\Pandaria (80-90)\\Valley of the Four Winds (81-90)"
Townlong Steppes Quests |achieve 6539 |loadguide "Zygor's Leveling Guides\\Pandaria (80-90)\\Townlong Steppes (83-90)"
Dread Wastes Quests |achieve 6540 |loadguide "Zygor's Leveling Guides\\Pandaria (80-90)\\Dread Wastes (84-90)"
Krasarang Wilds Quests |achieve 6536 |loadguide "Zygor's Leveling Guides\\Pandaria (80-90)\\Krasarang Wilds (81-90)"
Kun-Lai Summit Quests |achieve 6538 |loadguide "Zygor's Leveling Guides\\Pandaria (80-90)\\Kun-Lai Summit (82-90)"
step
Congratulations, you have _earned_ the _Loremaster of Pandaria_ achievement!
]])
