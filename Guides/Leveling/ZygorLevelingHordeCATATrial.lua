local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Blood Elf (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Eversong 1-5",
condition_suggested=function() return raceclass('BloodElf') and level<=5.39 end,
condition_suggested_exclusive=true,
next="Zygor's Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Eversong Woods (1-20)",
startlevel=1,
endlevel=5,
},[[
step
talk Magistrix Erona##15278
accept Reclaiming Sunstrider Isle##8325 |goto Sunstrider Isle/0 61.0,45.1
step
kill 6 Mana Wyrm##15274 |q 8325/1 |goto 60.3,51.8
step
talk Magistrix Erona##15278
turnin Reclaiming Sunstrider Isle##8325 |goto 61.0,45.1
accept Unfortunate Measures##8326 |goto 61.0,45.1
step
Kill Springpaw enemies around this area
collect 8 Lynx Collar##20797 |q 8326/1 |goto 54.6,51.7
step
talk Magistrix Erona##15278
turnin Unfortunate Measures##8326 |goto 61.0,45.1
accept Report to Lanthan Perilon##8327 |goto 61.0,45.1
step
Enter the building |goto 62.70,45.10 < 10 |walk
Run up the ramp |goto 65.29,45.77 < 10 |walk
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
accept The Shrine of Dath'Remar##37442 |goto 64.0,42.9
accept Solanian's Belongings##37443 |goto 64.0,42.9
step
Jump down here |goto 63.36,41.08 < 10 |only if walking
talk Arcanist Ithanas##15296
accept A Fistful of Slivers##37440 |goto 61.8,39.3
step
talk Arcanist Helion##15297
accept Thirst Unending##37439 |goto 58.5,38.8
step
Use your _Arcane Torrent_ ability on a Mana Wyrm
|tip Make sure to be within 8 yards of the Wyrm when casting the spell.
Unleash the Arcane Torrent |q 37439/1 |goto 54.8,39.7
step
kill Mana Wyrm##15274+
collect 6 Arcane Sliver##20482 |q 37440/1 |goto 50.95,41.95
step
Follow the path |goto 41.80,44.07 < 30 |only if walking
click Shrine of Dath'Remar##180516
Read the Shrine of Dath'Remar |q 37442/1 |goto 35.25,40.22
step
click Scroll of Scourge Magic##180511
collect Scroll of Scourge Magic##20471 |q 37443/2 |goto 40.4,50.5
step
Follow the path up |goto 51.49,70.28 < 15 |only if walking
click Solanian's Scrying Orb##180510
collect Solanian's Scrying Orb##20470 |q 37443/1 |goto 52.2,69.5
step
click Solanian's Journal##180512
collect Solanian's Journal##20472 |q 37443/3 |goto 60.0,57.1
step
Enter the building |goto 62.70,45.10 < 10 |walk
Run up the ramp |goto 65.29,45.77 < 10 |walk
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
turnin The Shrine of Dath'Remar##37442 |goto 64.0,42.8
turnin Solanian's Belongings##37443 |goto 64.0,42.8
step
Jump down here |goto 63.36,41.08 < 10 |only if walking
talk Arcanist Ithanas##15296
turnin A Fistful of Slivers##37440 |only BloodElf |goto 61.8,39.3
step
talk Arcanist Helion##15297
turnin Thirst Unending##37439 |only BloodElf |goto 58.5,38.8
step
talk Lanthan Perilon##15281
turnin Report to Lanthan Perilon##8327 |goto 52.9,49.7
accept Aggression##8334 |goto 52.9,49.7
stickystart "Feral_Tenders"
step
kill 7 Tender##15271 |q 8334/1 |goto 41.9,46.6
step
label "Feral_Tenders"
kill 7 Feral Tender##15294 |q 8334/2 |goto 41.9,46.6
step
talk Lanthan Perilon##15281
turnin Aggression##8334 |goto 52.9,49.7
accept Felendren the Banished##8335 |goto 52.9,49.7
stickystart "Tainted_Arcane_Sliver"
stickystart "Arcane_Wraiths"
stickystart "Tainted_Arcane_Wraiths"
step
Run up the ramp |goto 44.39,59.05 < 15 |only if walking
Cross the bridge |goto 41.84,63.41 < 15 |only if walking
Follow the ramp up |goto 43.19,66.93 < 15 |only if walking
Continue up the ramp |goto 43.70,70.53 < 15 |only if walking
Run up the ramp |goto 41.05,72.60 < 15 |only if walking
Continue up the ramp |goto 38.70,74.06 < 15 |only if walking
Cross the bridge |goto 37.95,68.28 < 15 |only if walking
Run up the ramp |goto 38.75,61.71 < 15 |only if walking
Continue up the ramp |goto 36.34,63.20 < 15 |only if walking
Follow the path |goto 38.12,66.00 < 15 |only if walking
kill Felendren the Banished##15367
collect Felendren's Head##20799 |q 8335/3 |goto 38.9,64.0
step
label "Tainted_Arcane_Sliver"
Kill Arcane enemies around this area
collect Tainted Arcane Sliver##20483 |n
use Tainted Arcane Sliver##20483
accept Tainted Arcane Sliver##8338 |goto 40.1,63.3
step
label "Arcane_Wraiths"
kill 8 Arcane Wraith##15273 |q 8335/1 |goto 40.1,63.3
step
label "Tainted_Arcane_Wraiths"
kill 2 Tainted Arcane Wraith##15298 |q 8335/2 |goto 40.1,63.3
step
Jump down onto the big red dome |goto 40.27,62.96 < 15 |only if walking
Jump down onto the bridge |goto 42.82,60.60 < 15 |only if walking
talk Lanthan Perilon##15281
turnin Felendren the Banished##8335 |goto 52.9,49.7
accept Aiding the Outrunners##8347 |goto 52.9,49.7
step
talk Arcanist Helion##15297
turnin Tainted Arcane Sliver##8338 |goto 58.5,38.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Death Knight (55-58)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Death Knight 55-58",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return raceclass('DeathKnight') and not completedq(13189) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13189) end,
next="Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Blasted Lands (40-60)",
startlevel=55,
endlevel=58,
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin In Service Of The Lich King##12593 |goto 48,28.5
accept The Emblazoned Runeblade##12619 |goto 48,28.5
step
click Battle-worn Sword##190584
collect Battle-worn Sword##38607 |c |goto 47.4,31 |q 12619
step
Use the Battle-worn Sword next to the Runeforge |use Battle-worn Sword##38607
collect Runebladed Sword##38631 |q 12619/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Emblazoned Runeblade##12619 |goto 48,28.5
accept Runeforging: Preparation For Battle##12842 |goto 48,28.5
step
Use the Runeforging ability near the Runeforge |cast Runeforging##53428
|tip Open your character's equipment window and engrave your weapon with a rune.
Emblazon Your Weapon |q 12842/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin Runeforging: Preparation For Battle##12842 |goto 48,28.5
accept The Endless Hunger##12848 |goto 48,28.5
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.50,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Endless Hunger##12848 |goto 48,28.5
accept The Eye Of Acherus##12636 |goto 48,28.5
step
Follow the path |goto 49.81,31.94 < 20 |walk
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto 51.34,35.18
accept Death Comes From On High##12641 |goto 51.34,35.18
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff 136224 |goto 52.13,35.21 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the Recall Eye of Acherus ability |petaction 5
Click Here After You Return to Ebon Hold |confirm |c |q 12641
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto 51.34,35.18
accept The Might Of The Scourge##12657 |goto 51.34,35.18
step
Walk onto the teleport pad |goto 50.49,33.37 |n
Teleport Upstairs |goto 50.13,32.49 < 10 |noway |c |q 12657
step
talk Highlord Darion Mograine##28444
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56 |instant
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
turnin Report To Scourge Commander Thalanor##12850 |goto 50.70,35.09
accept The Scarlet Harvest##12670 |goto 50.70,35.09
step
clicknpc Scourge Gryphon##29488 |goto 50.96,36.15 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12670
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
accept Grand Theft Palomino##12680 |goto 52.5,34.6
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 53.48,33.15
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
accept Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 15 |only if walking
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.26,46.15 |instant
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusaders |q 12678/1 |goto 52.2,45.9
stickystart "Saronite_Arrows"
step
label "Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 56.4,45
step
label "Saronite_Arrows"
click Saronite Arrow##190691
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 56.2,49.4
step
click Havenshire Horse
|tip They are all around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |q 12680
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Continue up the path |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
Use the Deliver Stolen Horse ability next to Salanar the Horseman
|tip He walks back and forth along this path.
Successfully Steal the Horse |goto 52.8,34.1 |q 12680/1
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Grand Theft Palomino##12680 |goto 52.5,34.6
accept Into the Realm of Shadows##12687 |goto 52.5,34.6
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 30 |only if walking
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Click Here After You Steal an Acherus Deathcharger |confirm |c |goto 55.6,43.2 |q 12687
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Use the Horseman's Call ability
Watch the dialogue
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
Follow the path up |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Into the Realm of Shadows##12687 |goto 52.5,34.6
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.3,34
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.3,34
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking
Use the Gift of the Harvester on Scarlet Miners |use Gift of the Harvester##39253
|tip They appear at the entrance of the mine.
|tip Some will turn into Scarlet Ghosts and attack you.
|tip It has a pretty low success rate, just keep trying.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |c |goto 58.18,31.01 |q 12698
|tip The ghouls that count for the quest are more brown in color and have yellow circles around their feet.
step
Follow the path up |goto 57.03,31.24 < 20 |only if walking
Follow the path |goto 54.69,31.79 < 20 |only if walking
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.1,35
accept An Attack Of Opportunity##12700 |goto 54.1,35
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.3,34
accept Massacre At Light's Point##12701 |goto 52.3,34
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking |n
Follow the path |goto 57.13,31.39 < 20 |only if walking |n
Follow the path |goto 58.05,33.31 < 15 |only if walking |n
Find the Inconspicuous Mine Cart |goto 58.50,33.03 < 15 |c |q 12701
step
click Inconspicuous Mine Car##190767
Ride in the Inconspicuous Mine Cart |goto 58.50,33.03 > 30 |c |q 12701
step
Ride to the Scarlet Fleet Ship |goto 67.94,46.09 < 20 |c |q 12701
step
click Scarlet Cannon##176216
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar to shoot the soldiers on the beach.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.56,46.07
step
Use the Skeletal Gryphon Escape ability
Escape to Death's Breach |goto 52.6,34.5 < 20 |noway |c |q 12701
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.3,34
accept Victory At Death's Breach!##12706 |goto 52.3,34
step
clicknpc Scourge Gryphon##29501 |goto 53.1,32.5 |n
Fly Up to Archerus |goto 51.1,34.7 < 20 |noway |c |q 12706
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488 |goto 52.1,35 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12714
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.47,36.55
accept The Crypt of Remembrance##12715 |goto 53.47,36.55
step
Follow the path down |goto 50.75,38.22 < 20 |only if walking
Continue down the path |goto 50.62,40.87 < 20 |only if walking
Follow the path |goto 52.83,45.08 < 20 |only if walking
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.9,52.4
step
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Crusader_Skulls"
stickystart "Citizens_Of_New_Avalaon"
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Enter the building |goto 57.67,64.41 < 10 |walk
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.8,61.8
step
Leave the building |goto 57.67,64.41 < 10 |walk
Follow the path |goto 58.48,64.68 < 15 |only if walking
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Follow the path |goto 59.66,61.13 < 20 |only if walking
Follow the path |goto 58.24,65.68 < 20 |only if walking
Run up the stairs |goto 54.23,70.21 < 15 |only if walking
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 54.27,70.15
step
label "Crusader_Skulls"
Kill Scarlet enemies around this area
kill Citizen of New Avalon##28942+
|tip Usually inside the buildings around this area.
collect 10 Crusader Skull##39328 |q 12716/3 |goto 54.27,70.15
step
label "Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 54.27,70.15
|tip Usually inside the buildings around this area.
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.9,52.4
accept Noth's Special Brew##12717 |goto 55.9,52.4
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
Use the Ornate Jeweled Box |use Ornate Jeweled Box##39418
|tip Equip Keleseth's Persuader.
Click Here After You Equip Keleseth's Persuader |confirm |c |q 12720
step
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Kill Scarlet enemies around this area
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Reveal the "Crimson Dawn" |q 12720/1 |goto 55.8,65.8
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |c |q 12720
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Continue following the path |goto 56.29,68.44 < 20 |only if walking
Follow the path |goto 57.12,75.46 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Follow the path |goto 57.00,77.83 < 20 |only if walking
Enter the building |goto 61.10,68.06 < 15 |walk
Follow the path |goto 62.22,68.69 < 10 |walk
Follow the path |goto 62.40,69.32 < 10 |walk
Run down the stairs |goto 62.77,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip It looks like a thick book sitting on a long table upstairs in a big open room in the fort.
collect New Avalon Patrol Schedule##39504|q 12724/1 |goto 63.0,68.3
step
Leave the building |goto 61.08,68.08 < 15 |walk
Follow the path up |goto 58.70,71.30 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
Follow the path |goto 52.66,80.93 < 15 |only if walking
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 52.9,81.5
accept A Special Surprise##12742 |goto 52.9,81.5 |only Human
accept A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
accept A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
accept A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
accept A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
accept A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
accept A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
accept A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
accept A Special Surprise##12748 |goto 52.9,81.5 |only Orc
accept A Special Surprise##12749 |goto 52.9,81.5 |only Troll
accept A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
accept A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
step
Watch the dialogue
kill Valok the Righteous##29070 |q 12746/1 |goto 54.5,83.4
|tip Inside the building.
|only Draenei
step
Watch the dialogue
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.2,83.9
|tip Inside the building.
|only NightElf
step
Watch the dialogue
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.9,83.8
|tip Inside the building.
|only Gnome
step
Watch the dialogue
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.5,83.8
|tip Inside the building.
|only Human
step
Watch the dialogue
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54,83.3
|tip Inside the building.
|only Dwarf
step
Watch the dialogue
kill Lord Harford##49355 |q 28649/1 |goto 54.14,83.29
|tip Inside the building.
|only Worgen
step
Watch the dialogue
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.50,83.85
|tip Inside the building.
|only Tauren
step
Watch the dialogue
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.31
|tip Inside the building.
|only BloodElf
step
Watch the dialogue
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.27
|tip Inside the building.
|only Orc
step
Watch the dialogue
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.75
|tip Inside the building.
|only Troll
step
Watch the dialogue
kill Antoine Brack##29071 |q 12750/1 |goto 53.54,83.30
|tip Inside the building.
|only Scourge
step
Watch the dialogue
kill Gally Lumpstain##49356 |q 28650/1 |goto 54.11,83.77
|tip Inside the building.
|only Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 52.9,81.5 |only Human
turnin A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
turnin A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
turnin A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
turnin A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
turnin A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
turnin A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
turnin A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
turnin A Special Surprise##12748 |goto 52.9,81.5 |only Orc
turnin A Special Surprise##12749 |goto 52.9,81.5 |only Troll
turnin A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
turnin A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
accept A Sort Of Homecoming##12751 |goto 52.9,81.5
step
Follow the path |goto 52.72,80.46 < 15 |only if walking
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
Use the Makeshift Cover |use Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.97,78.57
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.97,78.57
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
Follow the path down |goto 60.13,76.98 < 15 |only if walking
Follow the path down |goto 60.47,80.43 < 20 |only if walking
Follow the path |goto 62.90,85.29 < 20 |only if walking
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up |goto 63.40,85.39 < 20 |only if walking
Continue up the path |goto 61.76,83.29 < 20 |only if walking
Continue up the path |goto 60.55,79.94 < 20 |only if walking
Follow the path up |goto 60.30,77.04 < 15 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
click Portal to Acherus##8046 |goto 56.18,80.04 |n
Teleport to Acherus |goto 50.2,32.6 < 20 |noway |c |q 12757
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488 |goto 52.08,35.03 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12778
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
Use the Horn of the Frostbrood |use Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |c |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 55.8,61
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 55.8,61
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto 52.47,37.18 < 20 |c |q 12779
|tip Don't click the red arrow to stop controlling the Frostbrood Vanquisher yet.
step
Stop Controlling the Frostbrood Vanquisher |outvehicle |c |goto 52.53,37.39 |q 12779
|tip Click the red arrow on your action bar.
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
Follow the path |goto 50.16,31.36 < 20 |only if walking
Enter the tunnel |goto 49.13,28.43 < 15 |only if walking
Leave the tunnel |goto 47.35,24.82 < 15 |only if walking
Follow the path |goto 46.77,22.04 < 15 |only if walking
Follow the path down |goto 40.02,19.25 < 15 |only if walking
Follow the path |goto 36.04,24.04 < 20 |only if walking
talk Scourge Commander Thalanor##31082
|tip He paces back and forth.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord.  Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |c |goto 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.11,39.16
accept Taking Back Acherus##13165 |goto 39.11,39.16
step
Use your Death Gate spell
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands/0 83.7,50.0 < 20 |noway |c |q 13165
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto 83.44,49.46
step
Walk onto the teleport pad |goto 83.19,48.90 |n
Teleport Downstairs |goto 82.68,47.79 < 10 |noway |c |q 13166
step
Kill enemies around this area
Slay #10# Scourge |q 13166/2 |goto 81.99,46.37
step
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
step
Walk onto the teleport pad |goto 83.28,49.12 |n
Teleport Upstairs |goto 83.28,49.12 < 5 |noway |c |q 13166
step
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Where Kings Walk##13188 |goto 83.44,49.46 |only Alliance
accept Saurfang's Blessing##13189 |goto 83.44,49.46 |only Horde
step
clicknpc Portal to Orgrimmar##103191 |goto 84.55,50.46 |n
Teleport to Orgrimmar |goto Durotar/0 45.6,13.5 < 20 |noway |c |q 13189
|only Horde
step
Enter the building |goto Orgrimmar/1 49.90,75.62 < 10 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Saurfang's Blessing##13189 |goto Orgrimmar/1 48.27,70.97
|only Horde
step
clicknpc Portal to Stormwind##103186 |goto 83.65,51.34 |n
Teleport to Stormwind City |goto Elwynn Forest/0 33.4,52 < 20 |noway |c |q 13188
|only Alliance
step
Enter the building |goto Stormwind City/0 80.60,37.89 < 15 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City/0 85.8,31.7
|only Alliance
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Goblin (1-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\BilgeWater",
condition_suggested=function() return raceclass('Goblin') and level <=13 and not completedq(25267) and not raceclass('DEATHKNIGHT') end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(25267) or raceclass('DEATHKNIGHT') end,
condition_valid=function() return raceclass('Goblin')  end,
condition_valid_msg="Goblin only.",
next="Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Sassy Hardwrench##34668
accept Taking Care of Business##14138 |goto Kezan/0 56.4,76.9
step
talk Foreman Dampwick##36471
turnin Taking Care of Business##14138 |goto 60.2,74.6
accept Trouble in the Mines##14075 |goto 60.2,74.6
accept Good Help is Hard to Find##14069 |goto 60.2,74.6
step
Follow the path down |goto 61.75,74.72 < 20 |only if walking
clicknpc Defiant Troll##34830+
|tip They look like trolls who are not working around this area.
Adjust #8# Attitudes |q 14069/1 |goto 66.7,80.6
step
Follow the path |goto Kezan/7 57.76,32.55 < 15 |walk
kill 6 Tunneling Worm##34865+ |q 14075/1 |goto Kezan/7 58.9,29.5
You can find more around [Kezan/5 43.5,70.5]
step
talk Foreman Dampwick##36471
turnin Trouble in the Mines##14075 |goto Kezan/0 60.2,74.6
turnin Good Help is Hard to Find##14069 |goto Kezan/0 60.2,74.6
accept Kaja'Cola##25473 |goto Kezan/0 60.2,74.6
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Kaja'Cola##25473 |goto 56.4,76.9
accept Megs in Marketing##28349 |goto 56.4,76.9
step
talk Megs Dreadshredder##34874
turnin Megs in Marketing##28349 |goto 58.30,76.44
accept Cruising##14071 |goto 58.30,76.44
step
Use the Keys to the Hot Rod |use Keys to the Hotrod##46856
Enter your Hot Rod |invehicle |c |q 14071
step
Follow the path |goto 59.44,78.85 < 20 |only if walking
Pick Up Izzy |q 14071/2 |goto 58.1,86.0
|tip Go into the big beam of white light.
step
Follow the path |goto 59.45,78.66 < 20 |only if walking
Follow the road down |goto 57.76,70.59 < 20 |only if walking
Pick Up Gobber |q 14071/4 |goto 59.8,49.7
|tip Go into the big beam of white light.
step
Follow the road |goto 57.76,43.75 < 20 |only if walking
Pick Up Ace |q 14071/3 |goto 47.9,37.5
|tip Go into the big beam of white light.
step
Follow the road |goto 50.59,41.96 < 20 |only if walking
Follow the road up |goto 61.47,45.76 < 20 |only if walking
Follow the path |goto 57.76,71.24 < 20 |only if walking
talk Megs Dreadshredder##34874
turnin Rolling with my Homies##14071 |goto 58.31,76.45
accept Report for Tryouts##24567 |goto 58.31,76.45
step
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Do it Yourself##14070 |goto 56.42,76.95
step
talk Candy Cane##35053
accept Off to the Bank##26712 |goto 56.3,77.1
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
accept Off to the Bank##26711 |goto 56.4,76.8
only if _G['UnitSex']("player")==3
step
Use the Keys to the Hot Rod |use Keys to the Hotrod##46856
Enter your Hot Rod |invehicle |c |goto 58.63,76.64 |q 24567
step
Follow the road down |goto 57.76,70.54 < 20 |only if walking
Follow the road |goto 61.23,44.87 < 20 |only if walking
Follow the road up |goto 54.14,47.37 < 20 |only if walking
talk Coach Crosscheck##37106
turnin Report for Tryouts##24567 |goto 48.8,57.6
accept The Replacements##24488 |goto 48.8,57.6
step
click Replacement Parts##201603
|tip They look like yellow and silver metal crates on the ground around this area.
|tip You can do this while in your Hot Rod.
collect 6 Replacement Parts##49752 |q 24488/1 |goto 49.0,60.3
step
talk Coach Crosscheck##38738
turnin The Replacements##24488 |goto 48.8,57.6
accept Necessary Roughness##24502 |goto 48.8,57.6
step
clicknpc Bilgewater Buccaneer##48526
Use the Throw Footbomb ability on your action bar on Steamwheedle Sharks
|tip They look like shredders walking toward you on the footbomb field.
Footbomb #8# Steamwheedle Sharks |q 24502/2 |goto 47.7,57.8
step
Click the Complete Quest Box:
turnin Necessary Roughness##24502
accept Fourth and Goal##24503
step
Use the Kick Footbomb ability on your action bar
|tip Aim through the 2 tall gray chimney smokestacks.
|tip The smokestacks look like 2 tall metal chimneys on top of a building with a green roof.
Kick a Footbomb Through the Smokestacks |q 24503/1
step
talk Coach Crosscheck##38738
turnin Fourth and Goal##24503 |goto 48.8,57.6
accept Give Sassy the Good News##24520 |goto 48.8,57.6
step
Follow the road |goto 45.87,65.44 < 20 |only if walking
Drop down here |goto 42.51,71.75 < 20 |only if walking
kill Bruno Flameretardant##34835
Beat Down Bruno Flameretardant |q 14070/1 |goto 45.2,74.7
step
kill Sudsy Magee##34878
Beat Down Sudsy Magee |q 14070/4 |goto 41.6,81.9
step
Follow the path |goto 37.38,76.36 < 15 |only if walking
kill Jack the Hammer##34877
Beat Down Jack the Hammer |q 14070/3 |goto 35.1,77.8
step
kill Frankie Gearslipper##34876
Beat Down Frankie Gearslipper |q 14070/2 |goto 36.8,70.4
step
Follow the path |goto 34.23,69.13 < 15 |only if walking
Follow the road |goto 32.44,63.93 < 15 |only if walking
Follow the path |goto 30.12,64.53 < 15 |only if walking
talk FBoK Bank Teller##35120
|tip Inside the building.
turnin Off to the Bank##26712 |goto 30.1,71.9 |only if _G['UnitSex']("player")==2
turnin Off to the Bank##26711 |goto 30.1,71.9 |only if _G['UnitSex']("player")==3
accept The New You##14109 |goto 30.1,71.9 |or |only if _G['UnitSex']("player")==2
accept The New You##14110 |goto 30.1,71.9 |or |only if _G['UnitSex']("player")==3
step
Follow the road |goto 30.47,63.73 < 20 |only if walking
Follow the road |goto 34.57,54.69 < 20 |only if walking
talk Szabo##35128
Tell him _"Szabo, I need a hip, new outfit for the party I'm throwing!"_
collect Hip New Outfit##47046 |q 14109/2 |goto 37.7,55.5 |only if _G['UnitSex']("player")==2
collect Hip New Outfit##47046 |q 14110/2 |goto 37.7,55.5 |only if _G['UnitSex']("player")==3
step
Follow the road |goto 36.04,53.02 < 20 |only if walking
talk Gappy Silvertooth##35126
Tell him _"Set me up with the phattest, shiniest bling you got!"_
collect Shiny Bling##47045 |q 14109/1 |goto 34.8,45.7 |only if _G['UnitSex']("player")==2
collect Shiny Bling##47045 |q 14110/1 |goto 34.8,45.7 |only if _G['UnitSex']("player")==3
step
Follow the road |goto 36.67,47.37 < 15 |only if walking
talk Missa Spekkies##35130
Tell her _"I need some cool shades.  What will two stacks of macaroons get me?"_
collect Cool Shades##47047 |q 14109/3 |goto 40.4,45.8 |only if _G['UnitSex']("player")==2
collect Cool Shades##47047 |q 14110/3 |goto 40.4,45.8 |only if _G['UnitSex']("player")==3
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Give Sassy the Good News##24520 |goto 56.4,76.9
turnin Do It Yourself##14070 |goto 56.4,76.9
step
talk Candy Cane##39426
|tip Inside the building.
turnin The New You##14109 |goto 56.3,77.1
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
turnin The New You##14110 |goto 56.3,76.8
only if _G['UnitSex']("player")==3
step
talk Candy Cane##39426
accept Life of the Party##14113 |goto 56.3,77.1
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
accept Life of the Party##14153 |goto 56.3,76.8
only if _G['UnitSex']("player")==3
step
Follow the path |goto 59.24,78.81 < 20 |only if walking
Use the Bubbly ability on your action bar
|tip Use it next to goblins that are drinking.
Use the Bucket ability on your action bar
|tip Use it next to goblins that look dazed.
Use the Dance ability on your action bar
|tip Use it next to goblins that are dancing.
Use the Fireworks ability on your action bar
|tip Use it next to goblins that are holding orange fireworks.
Use the Hors D'oeuvres ability on your action bar
|tip Use it next to goblins that are eating.
Entertain #10# Partygoers |q 14113/1 |goto 59.4,80.6 |only if _G['UnitSex']("player")==2
Entertain #10# Partygoers |q 14153/1 |goto 59.4,80.6 |only if _G['UnitSex']("player")==3
step
Follow the path |goto 59.07,78.45 < 15 |only if walking
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Life of the Party##14113 |goto 56.4,76.9 |only if _G['UnitSex']("player")==2
turnin Life of the Party##14153 |goto 56.4,76.9 |only if _G['UnitSex']("player")==3
accept Pirate Party Crashers##14115
step
Follow the path |goto 59.24,78.81 < 20 |only if walking
kill 12 Pirate Party Crasher##35200+ |q 14115/1 |goto 60.47,81.73
step
Follow the path |goto 59.07,78.45 < 15 |only if walking
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Pirate Party Crashers##14115 |goto 56.4,76.9
accept The Uninvited Guest##14116 |goto 56.4,76.9
step
talk Trade Prince Gallywix##39582
|tip Upstairs inside the building.
turnin The Uninvited Guest##14116 |goto 56.7,77.0
accept A Bazillion Macaroons?!##14120 |goto 56.7,77.0
step
talk Sassy Hardwrench##34668
turnin A Bazillion Macaroons?!##14120 |goto 59.61,77.04
accept The Great Bank Heist##14122 |goto 59.61,77.04
step
talk Slinky Sharpshiv##36729
|tip She walks around this area, so you may need to search for her.
accept Waltz Right In##14123 |goto 59.1,76.0
step
talk Megs Dreadshredder##34874
accept Robbing Hoods##14121 |goto 60.0,78.2
step
talk Foreman Dampwick##36471
accept Liberating the Kaja'mite##14124 |goto 63.0,77.8
step
Follow the path down |goto 62.12,74.91 < 20 |only if walking
Use your Kablooey Bombs on Kaja'mite Deposits |use Kablooey Bombs##48768
|tip They look like green mining nodes around this area.
click Kaja'mite Chunk##195492
|tip They appear on the ground.
collect 12 Kaja'mite Chunk##48766 |q 14124/1 |goto 67.2,77.6
step
Follow the path up |goto 65.39,79.45 < 20 |only if walking
Follow the path |goto 60.39,74.89 < 15 |only if walking
talk Foreman Dampwick##36471
turnin Liberating the Kaja'mite##14124 |goto 63.0,77.8
step
Follow the road down |goto 57.78,70.79 < 20 |only if walking
Follow the road |goto 61.26,44.71 < 20 |only if walking
Follow the road |goto 41.42,41.75 < 20 |only if walking
Follow the road |goto 40.95,47.01 < 20 |only if walking
Run Over Hired Looters with your Hot Rod
|tip They look like pirates throwing explosives in the streets all around this area.
collect 12 Stolen Loot##47530 |q 14121/1 |goto 35.8,49.1
step
Follow the road |goto 34.94,54.26 < 20 |only if walking
Follow the road |goto 32.80,59.77 < 20 |only if walking
Follow the road |goto 30.00,64.33 < 20 |only if walking
clicknpc First Bank of Kezan Vault##35486
|tip Inside the building.
Access the First Bank of Kezan Vault |q 14122/1 |goto 30.2,71.3
step
Use the abilities on your action bar
|tip Use them in the correct order when it tells you to.
|tip Just match the icons that come up on-screen with your skill icons on your action bar.
collect Personal Riches##46858 |q 14122/2 |goto 30.2,71.3
step
Follow the road |goto 29.26,63.82 < 20 |only if walking
Follow the road |goto 24.26,55.09 < 20 |only if walking
Reach This Location |goto 23.71,40.18 < 20 |c |q 14123
|tip You will become disguised automatically.
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
Follow the path |goto 20.21,36.16 < 20 |only if walking
click The Ultimate Bomb##195518
|tip It looks like a huge red spiked bomb inside the building.
collect The Ultimate Bomb##48941 |q 14123/3 |goto 19.9,30.6
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
click The Goblin Lisa##195516
|tip It looks like a painting of a goblin inside the building.
collect The Goblin Lisa##48939 |q 14123/2 |goto 12.9,35.2
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
Follow the path |goto 16.59,37.57 < 20 |only if walking
click Maldy's Falcon##195515
|tip It looks like a stone bird statue upstairs inside the building.
collect Maldy's Falcon##48937 |q 14123/1 |goto 16.7,46.3
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
talk Slinky Sharpshiv##36729
|tip She walks around this area, so you may need to search for her.
turnin Waltz Right In##14123 |goto 59.1,76.0
step
talk Sassy Hardwrench##34668
turnin The Great Bank Heist##14122 |goto 59.7,77.1
step
talk Megs Dreadshredder##34874
turnin Robbing Hoods##14121 |goto 60.02,78.15
step
talk Sassy Hardwrench##34668
accept 447##14125 |goto 59.7,77.1
step
click Defective Generator##201735
|tip It looks like a huge electric coil inside the building.
Overload the Defective Generator |q 14125/1 |goto 56.07,76.64
step
click Leaky Stove##201733
|tip It looks like a gray metal furnace inside the building.
Activate the Leaky Stove |q 14125/2 |goto 56.1,74.7
step
click Flammable Bed##201734
|tip It looks like a red bed upstairs inside the building.
Drop a Cigar on the Flammable Bed |q 14125/3 |goto 56.6,75.0
step
Jump out of the window |goto 57.03,76.96 < 10 |walk
click Gasbot Control Panel##356
Set the KTC Headquarters Ablaze with Gasbot |q 14125/4 |goto 59.5,76.8
step
talk Claims Adjuster##37602
turnin 447##14125 |goto 59.59,76.63
step
talk Sassy Hardwrench##34668
accept Life Savings##14126 |goto 59.66,76.94
step
talk Sassy Hardwrench##34668 |goto 59.7,77.1 |n
Tell her _"Okay, Sassy, I'm ready to go."_
Ride with Sassy |goto 59.7,77.1 > 30 |noway |c |q 14126
step
Travel to Gallywix's Yacht |goto 21.4,13.2 < 20 |c |q 14126
step
talk Trade Prince Gallywix##39582
turnin Life Savings##14126 |goto 20.84,13.71
step
talk Doc Zapnozzle##36608
accept Don't Go Into the Light!##14239 |goto The Lost Isles/0 24.60,77.94  |instant
step
talk Geargrinder Gizmo##36600
|tip You will be offered one of these two quests.
accept Goblin Escape Pods##14001 |goto 24.65,77.94 |or
accept Goblin Escape Pods##14474 |goto 24.65,77.94 |or
step
click Goblin Escape Pod##195188
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14001/1 |goto 26.0,80.1
step
click Goblin Escape Pod##195188
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14474/1 |goto 26.0,80.1
step
talk Sassy Hardwrench##35650
|tip You will only be able to turn in one of these two quests.
turnin Goblin Escape Pods##14001 |goto 27.88,75.54
turnin Goblin Escape Pods##14474 |goto 27.88,75.54
accept Get Our Stuff Back!##14014 |goto 27.88,75.54
step
talk Grimy Greasefingers##36496
home Shipwreck Shore |goto 28.01,75.79
step
talk Bamm Megabomb##35758
accept Monkey Business##14019 |goto 27.94,74.43
step
talk Maxx Avalanche##35786
accept It's Our Problem Now##14473 |goto 27.85,74.29
stickystart "Crates_Of_Tools"
stickystart "Teraptor_Hatchlings"
step
Use the Nitro-Potassium Bananas on Bomb-Throwing Monkeys |use Nitro-Potassium Bananas##49028
|tip They look like small gray monkeys on the ground around this area.
Feed #10# Bomb-Throwing Monkeys |q 14019/1 |goto 27.2,69.8
step
label "Teraptor_Hatchlings"
kill 6 Teraptor Hatchling##36740 |q 14473/1 |goto 27.2,69.8
step
label "Crates_Of_Tools"
click Crate of Tools##195201
|tip They look like small yellow and silver metal crates on the ground around this area.
collect 8 Crate of Tools##46828 |q 14014/1 |goto 27.2,69.8
step
talk Maxx Avalanche##35786
turnin It's Our Problem Now##14473 |goto 27.85,74.29
step
talk Bamm Megabomb##35758
turnin Monkey Business##14019 |goto 27.95,74.42
step
talk Sassy Hardwrench##35650
turnin Get Our Stuff Back!##14014 |goto 27.88,75.54
accept Help Wanted##14248 |goto 27.88,75.54
step
Follow the path |goto 29.95,78.59 < 20 |only if walking
talk Foreman Dampwick##35769
turnin Help Wanted##14248 |goto 31.27,79.26
accept Miner Troubles##14021 |goto 31.27,79.26
accept Capturing the Unknown##14031 |goto 31.27,79.26
stickystart "Make_Kajamite_Ore_Success"
step
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture Cave Painting 1 |q 14031/1 |goto The Lost Isles/1 51.68,71.19
step
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture Cave Painting 2 |q 14031/2 |goto 61.53,72.39
step
Follow the path |goto 46.64,57.94 < 15 |walk
Follow the path |goto 70.91,69.38 < 15 |walk
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture Cave Painting 3 |q 14031/3 |goto 86.4,44.8
step
Follow the path |goto 66.53,39.93 < 15 |walk
Follow the path |goto 51.86,20.05 < 15 |walk
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture the Pygmy Altar |q 14031/4 |goto 44.82,25.20
step
label "Make_Kajamite_Ore_Success"
Escort the Frightened Miner
|tip Stay close to him and protect him from enemies.
Make the Kaja'mite Ore Mining a Success |q 14021/1 |goto 50.84,16.88
step
talk Dead Orc Scout##35837
accept Orcs Can Write?##14233 |goto 41.50,25.47
step
Jump down here |goto 42.52,31.88 < 7 |walk
Follow the path up |goto 47.15,61.33 < 15 |walk
Follow the path up |goto 54.38,80.00 < 15 |walk
talk Foreman Dampwick##35769
turnin Miner Troubles##14021 |goto The Lost Isles/0 31.27,79.26
step
talk Sassy Hardwrench##35650
turnin Capturing the Unknown##14031 |goto 27.88,75.54
turnin Orcs Can Write?##14233 |goto 27.88,75.54
accept The Enemy of My Enemy##14234 |goto 27.88,75.54
step
Follow the path |goto 29.96,78.60 < 20 |only if walking
Follow the path up |goto 32.73,80.50 < 20 |only if walking
Continue up the path |goto 34.44,80.72 < 20 |only if walking
Follow the path |goto 36.77,76.45 < 20 |only if walking
talk Aggra##35875
turnin The Enemy of My Enemy##14234 |goto 37.63,78.03
accept The Vicious Vale##14235 |goto 37.63,78.03
step
Follow the path down |goto 36.15,76.36 < 20 |only if walking
talk Kilag Gorefang##35893
turnin The Vicious Vale##14235 |goto 35.43,75.71
accept Weed Whacker##14236 |goto 35.43,75.71
step
Use the Weed Whacker |use Weed Whacker##49108
Become a Weed Whacker |havebuff 132369 |c |q 14236
step
Mow Down #100# Deadly Jungle Plants |q 14236/1 |goto 35.3,75.1
|tip Spin around next to the plants all around this area.
step
talk Kilag Gorefang##35893
turnin Weed Whacker##14236 |goto 35.44,75.70
accept Back to Aggra##14303 |goto 35.44,75.70
step
Follow the path up |goto 35.80,76.31 < 20 |only if walking
Follow the path |goto 36.78,76.44 < 20 |only if walking
talk Aggra##35875
turnin Back to Aggra##14303 |goto 37.63,78.04
accept Forward Movement##14237 |goto 37.63,78.04
step
Follow the path down |goto 36.10,76.34 < 20 |only if walking
Follow the path |goto 35.30,75.54 < 20 |only if walking
Follow the path up |goto 33.00,71.16 < 20 |only if walking
Follow the path |goto 33.38,69.51 < 20 |only if walking
talk Kilag Gorefang##35893
turnin Forward Movement##14237 |goto 34.62,66.85
accept Infrared = Infradead##14238 |goto 34.62,66.85
step
Use the Infrared Heat Focals |use Infrared Heat Focals##49611
Wear the Infrared Heat Focals |havebuff 133149 |q 14238
step
kill 10 SI:7 Assassin##36092 |q 14238/1 |goto 31.2,65.6
|tip They are also marked on your minimap.
step
talk Kilag Gorefang##35917
turnin Infrared = Infradead##14238 |goto 34.61,66.85
accept To the Cliffs##14240 |goto 34.61,66.85
step
Travel to Scout Brax |goto 25.34,59.85 < 20 |c |q 14240
step
talk Scout Brax##36112
turnin To the Cliffs##14240 |goto 25.29,59.84
accept Get to the Gyrochoppa!##14241 |goto 25.29,59.84
step
Follow the path down |goto 25.02,60.44 < 15 |only if walking
kill SI:7 Operative##36103+
collect Gyrochoppa Keys##49424 |q 14241/1 |goto 24.6,64.3
step
clicknpc Gyrochoppa##36127
turnin Get to the Gyrochoppa!##14241 |goto 23.23,67.52
accept Precious Cargo##14242 |goto 23.23,67.52
step
Fly to the Ship |goto 12.87,63.44 < 20 |c |q 14242
step
talk Thrall##36161
|tip Downstairs in the ship.
Locate the Precious Cargo |q 14242/1 |goto 11.80,62.75
step
talk Thrall##36161
|tip Downstairs in the ship.
turnin Precious Cargo##14242 |goto 11.80,62.75
accept Meet Me Up Top##14326 |goto 11.80,62.75
step
talk Thrall##36161
|tip On the deck of the ship.
turnin Meet Me Up Top##14326 |goto 12.4,63.1
accept Warchief's Revenge##14243 |goto 12.4,63.1
step
Use the Lightning Strike ability on the Alliance Sailors
|tip They are in below you as you fly around in the tornado.
kill 50 Alliance Sailor##36176 |q 14243/1
step
talk Thrall##36188
turnin Warchief's Revenge##14243 |goto 35.92,66.72
accept Farewell, For Now##14445 |goto 35.92,66.72
step
talk Sassy Hardwrench##36425
turnin Farewell, For Now##14445 |goto 36.03,67.53
accept Up, Up & Away!##14244 |goto 36.03,67.53
step
click Rocket Sling##196439
Choose _"Up, Up & Away!"_
Survive the Rocket Sling Trip |q 14244/1 |goto 36.3,66.6
step
talk Foreman Dampwick##36470
turnin Up, Up & Away!##14244 |goto 44.54,64.36
accept It's a Town-In-A-Box##14245 |goto 44.54,64.36
step
click Town-In-A-Box Plunger##9277
|tip On top of the big pile of explosives.
Set Off the Town-In-A-Box |q 14245/1 |goto 45.49,65.36
step
talk Foreman Dampwick##36471
turnin It's a Town-In-A-Box##14245 |goto 45.36,64.74
accept Hobart Needs You##27139 |goto 45.36,64.74
step
talk Hobart Grapplehammer##38120
turnin Hobart Needs You##27139 |goto 45.34,65.22
accept Cluster Cluck##24671 |goto 45.34,65.22
step
clicknpc Wild Clucker##38111+
|tip They look like little robotic chickens around this area.
Capture #10# Wild Cluckers |q 24671/1 |goto 46.5,65.4
step
talk Hobart Grapplehammer##38120
turnin Cluster Cluck##24671 |goto 45.34,65.22
step
talk Bamm Megabomb##38122
accept Trading Up##24741 |goto 45.25,64.85
step
Follow the path up |goto 47.56,65.30 < 20 |only if walking
Use the Wild Clucker Eggs near Raptor Traps |use Wild Clucker Eggs##50232
|tip They look like big spiked metal traps on the ground around this area.
|tip Make sure Spiny Raptors are nearby when you use it.
|tip Don't kill the Spiny Raptors by attacking them.
click Raptor Egg##201974
|tip They appear under the Raptor Traps when you catch a Spiny Raptor.
collect 5 Spiny Raptor Egg##50239 |q 24741/1 |goto 49.74,65.92
step
talk Bamm Megabomb##38122
turnin Trading Up##24741 |goto 45.25,64.85
step
talk Hobart Grapplehammer##38120
accept The Biggest Egg Ever##24744 |goto 45.34,65.21
step
Follow the path |goto 45.97,59.11 < 20 |only if walking
kill Mechachicken##38224
|tip It's a big robot chicken that walks around this area.
click The Biggest Egg Ever##201977
|tip It appears after you kill the Mechachicken.
collect The Biggest Egg Ever##50261 |q 24744/1 |goto 45.6,56.6
step
Follow the path |goto 45.97,59.11 < 20 |only if walking
talk Hobart Grapplehammer##38120
turnin The Biggest Egg Ever##24744 |goto 45.34,65.22
accept Who's Top of the Food Chain Now?##24816 |goto 45.34,65.22
step
kill Ravenous Lurker##36681+
|tip While killing Ravenous Lurkers avoid the patrolling elite 'The Hammer' in the area.
collect 6 Shark Parts##50381 |q 24816/1 |goto 42.5,62.6
step
talk Assistant Greely##39199
turnin Who's Top of the Food Chain Now?##24816 |goto 45.27,65.56
accept A Goblin in Shark's Clothing##24817 |goto 45.27,65.56
step
click Mechashark X-Steam Controller##202108
Use the Mechashark X-Steam Controller |q 24817/1 |goto 43.63,65.09
step
kill The Hammer##36682 |q 24817/2 |goto 42.1,66.3
|tip Use the abilities on your action bar.
step
talk Hobart Grapplehammer##38120
turnin A Goblin in Shark's Clothing##24817 |goto 45.34,65.21
accept Invasion Imminent!##24856 |goto 45.34,65.21
step
Follow the path up |goto 47.74,65.35 < 20 |only if walking
Follow the path |goto 49.56,66.17 < 20 |only if walking
Continue following the path |goto 49.40,70.63 < 20 |only if walking
Follow the path down |goto 51.20,71.56 < 20 |only if walking
talk Megs Dreadshredder##38432
turnin Invasion Imminent!##24856 |goto 52.20,73.15
accept Bilgewater Cartel Represent##24858 |goto 52.20,73.15
step
talk Brett "Coins" McQuid##38381
accept Naga Hide##24859 |goto 52.2,73.2
stickystart "Replace_Naga_Banners"
step
Kill Vashj'elan enemies around this area
collect 5 Intact Naga Hide##50437 |q 24859/1 |goto 54.15,76.93
step
label "Replace_Naga_Banners"
click Naga Banner##246389
|tip They look like purple flags hanging from golden rods around this area.
Replace #10# Naga Banners |q 24858/1 |goto 54.15,76.93
step
Follow the path up |goto 52.96,74.57 < 20 |only if walking
talk Brett "Coins" McQuid##38381
turnin Naga Hide##24859 |goto 52.2,73.2
step
talk Megs Dreadshredder##38432
turnin Bilgewater Cartel Represent##24858 |goto 52.20,73.14
accept Irresistible Pool Pony##24864 |goto 52.20,73.14
step
Follow the path |goto 54.98,76.64 < 20 |only if walking
Use the Irresistible Pool Pony in the Water |use Irresistible Pool Pony##50602
Ride the Irresistible Pool Pony |havebuff 132261 |q 24864 |goto 58.1,80.3
step
talk Naga Hatchling##44589
|tip They look like tiny naga swimming underwater around this area.
Lure #12# Naga Hatchlings |q 24864/1 |goto 58.9,83.1
step
Leave the water |goto 57.55,80.34 < 20 |only if walking
Follow the path up |goto 52.96,74.57 < 20 |only if walking
talk Megs Dreadshredder##38432
turnin Irresistible Pool Pony##24864 |goto 52.20,73.14
accept Surrender or Else!##24868 |goto 52.20,73.14
step
Follow the path down |goto 52.83,74.65 < 20 |only if walking
Follow the path |goto 52.71,79.19 < 20 |only if walking
Follow the path |goto 53.93,86.66 < 20 |only if walking
kill Faceless of the Deep##38448
|tip Follow Ace as he runs with the Naga Hatchlings.
Deal with the Leader of the Naga |q 24868/1 |goto 54.1,90.1
step
Follow the path |goto 53.94,86.76 < 20 |only if walking
Follow the path |goto 52.64,78.88 < 20 |only if walking
Follow the path up |goto 52.88,74.72 < 20 |only if walking
talk Megs Dreadshredder##38432
turnin Surrender or Else!##24868 |goto 52.20,73.14
accept Get Back to Town##24897 |goto 52.20,73.14
step
talk Sassy Hardwrench##38387
turnin Get Back to Town##24897 |goto 45.18,64.91
accept Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
step
clicknpc B.C. Eliminator##38526
Shoot at the Oomlot Warriors
|tip Use the Fire Cannon ability on your action bar.
Defeat #30# Oomlot Warriors |q 24901/1 |goto 45.69,64.94
step
talk Sassy Hardwrench##38869
turnin Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
accept Oomlot Village##24924 |goto 45.18,64.91
step
Follow the path up |goto 47.54,65.38 < 20 |only if walking
Follow the path |goto 49.11,65.74 < 20 |only if walking
Follow the path |goto 51.31,67.80 < 20 |only if walking
Follow the path |goto 54.80,69.97 < 20 |only if walking
talk Izzy##38647
turnin Oomlot Village##24924 |goto 56.57,71.96
accept Free the Captives##24925 |goto 56.57,71.96
accept Send a Message##24929 |goto 56.57,71.96
stickystart "Free_Goblin_Captives"
step
Follow the path |goto 58.24,71.71 < 20 |only if walking
Follow the path up |goto 59.06,70.84 < 20 |only if walking
Follow the path up |goto 59.12,69.02 < 20 |only if walking
Continue following the path up |goto 59.24,67.41 < 20 |only if walking
Cross the bridge |goto 61.26,68.71 < 20 |only if walking
Follow the path |goto 62.53,69.42 < 20 |only if walking
kill Yngwie##38696 |q 24929/1 |goto 62.92,68.53
step
label "Free_Goblin_Captives"
kill Oomlot Shaman##38644+
|tip Only kill the Oomlot Shamans that are casting a green spell on Goblin Captives.
Free #5# Goblin Captives |q 24925/1 |goto 58.9,71.4
step
Cross the bridge |goto 62.08,69.24 < 20 |only if walking
Follow the path down |goto 59.91,67.81 < 20 |only if walking
Follow the path |goto 59.17,69.43 < 20 |only if walking
Follow the path |goto 58.22,71.76 < 20 |only if walking
talk Izzy##38647
turnin Free the Captives##24925 |goto 56.57,71.96
turnin Send a Message##24929 |goto 56.57,71.96
accept Oomlot Dealt With##24937 |goto 56.57,71.96
step
Follow the path |goto 55.07,70.37 < 20 |only if walking
Follow the path down |goto 51.30,67.84 < 20 |only if walking
Follow the path down |goto 49.15,65.79 < 20 |only if walking
talk Sassy Hardwrench##38387
turnin Oomlot Dealt With##24937 |goto 45.17,64.90
accept Up the Volcano##24940 |goto 45.17,64.90
step
Follow the path up |goto 46.57,57.43 < 20 |only if walking
Follow the path up |goto 47.52,54.38 < 20 |only if walking
talk Coach Crosscheck##38738
turnin Up the Volcano##24940 |goto 51.8,47.1
accept Zombies vs. Super Booster Rocket Boots##24942 |goto 51.8,47.1
step
talk Foreman Dampwick##36471
accept Three Little Pygmies##24945 |goto 51.86,47.20
step
talk Assistant Greely##39199
accept Rockin' Powder##24946 |goto 51.72,47.39
step
Use the Super Booster Rocket Boots |use Super Booster Rocket Boot##52013
Wear the Super Booster Rocket Boots |havebuff 133029 |q 24946
stickystart "Rockin_Powder"
stickystart "Goblin_Zombies"
step
Follow the path |goto 52.43,46.74 < 20 |only if walking
Follow the path |goto 54.15,46.16 < 20 |only if walking
Follow the path |goto 57.29,44.05 < 20 |only if walking
Follow the path up |goto 58.17,42.50 < 20 |only if walking
kill Gaahl##38808 |q 24945/1 |goto 59.53,40.18
step
Follow the path down |goto 58.88,41.11 < 20 |only if walking
Follow the path up |goto 58.06,44.72 < 20 |only if walking
kill Malmo##38809 |q 24945/2 |goto 58.78,47.20
step
Follow the path |goto 59.78,47.16 < 20 |only if walking
Follow the path up |goto 60.81,48.51 < 20 |only if walking
Follow the path |goto 63.12,50.54 < 20 |only if walking
kill Teloch##38810 |q 24945/3 |goto 63.62,52.74
step
label "Rockin_Powder"
click Rockin' Powder##202351
|tip They look like brown piles of dirt on the ground around this area.
collect 5 Rockin' Powder##52024 |q 24946/1 |goto 63.62,52.74
step
label "Goblin_Zombies"
Use the Super Booster Rocket Boots |use Super Booster Rocket Boots##52013
kill 50 Goblin Zombie##38816+ |q 24942/1 |goto 63.62,52.74
|tip Get near Goblin Zombies with your Super Booster Rocket Boots active.
step
Follow the path down |goto 63.45,51.68 < 20 |only if walking
Follow the path |goto 59.53,43.16 < 20 |only if walking
Follow the path |goto 53.31,46.67 < 20 |only if walking
talk Coach Crosscheck##38738
turnin Zombies vs. Super Booster Rocket Boots##24942 |goto 51.8,47.1
step
talk Foreman Dampwick##36471
turnin Three Little Pygmies##24945 |goto 51.85,47.19
step
talk Assistant Greely##38124
turnin Rockin' Powder##24946 |goto 51.73,47.38
step
talk Coach Crosscheck##38738
accept Rocket Boot Boost##24952 |goto 51.79,47.11
step
Use the Rockin' Powder Infused Rocket Boots |use Rockin' Powder Infused Rocket Boots##52032
Use the Rockin' Powder Infused Rocket Boots |q 24952/1 |goto 51.80,47.10
step
talk Hobart Grapplehammer##38120
turnin Rocket Boot Boost##24952 |goto 68.93,46.44
accept Children of a Turtle God##24954 |goto 68.93,46.44
step
kill Child of Volcanoth##38845+
collect 10 Fire Gland##52035 |q 24954/1 |goto 68.0,44.4
step
talk Hobart Grapplehammer##38120
turnin Children of a Turtle God##24954 |goto 68.93,46.44
accept Volcanoth!##24958 |goto 68.93,46.44
step
Use your Bootzooka repeatedly on Volcanoth |use Bootzooka##52043
|tip He's a huge turtle inside a cave.
kill Volcanoth##38855 |q 24958/1 |goto The Lost Isles/2 54.89,31.29
|tip Move to the side and take cover behind the rock on the left when Volcanoth is about to cast Volcanic Breath.
step
talk Sassy Hardwrench##38928
turnin Volcanoth!##24958 |goto 62.70,49.84
accept Old Friends##25023 |goto 62.70,49.84
step
talk Thrall##38935
turnin Old Friends##25023 |goto The Lost Isles/0 36.79,43.13
accept Repel the Paratroopers##25024 |goto The Lost Isles/0 36.79,43.13
step
talk Aggra##39065
accept The Heads of the SI:7##25093 |goto 36.26,43.37
step
talk Sassy Hardwrench##38387
accept Mine Disposal, the Goblin Way##25058 |goto 37.36,41.91
stickystart "Alliance_Paratroopers"
stickystart "Detonate_Land_Mines"
step
Follow the path down |goto 36.29,40.80 < 20 |only if walking
Continue down the path |goto 34.57,38.73 < 20 |only if walking
kill Commander Arrington##39141
collect Commander Arrington's Head##52346 |q 25093/1 |goto 32.3,42.9
step
kill Alexi Silenthowl##39143
collect Alexi Silenthowl's Head##52349 |q 25093/3 |goto 30.8,33.9
step
kill Darkblade Cyn##39142
collect Darkblade Cyn's Head##52347 |q 25093/2 |goto 33.43,27.87
step
label "Alliance_Paratroopers"
kill 15 Alliance Paratrooper##39069+ |q 25024/1 |goto 33.66,29.07
step
label "Detonate_Land_Mines"
Use the Satchel of Grenades on land mines |use Satchel of Grenades##52280
|tip They look like silver objects on the ground around this area.
Detonate #10# Land Mines |q 25058/1 |goto 33.66,29.07
step
talk Thrall##38935
turnin Repel the Paratroopers##25024 |goto 36.79,43.13
step
talk Aggra##39065
turnin The Heads of the SI:7##25093 |goto 36.27,43.37
step
talk Sassy Hardwrench##38387
turnin Mine Disposal, the Goblin Way##25058 |goto 37.35,41.92
accept The Pride of Kezan##25066 |goto 37.35,41.92
step
talk Sassy Hardwrench##38869
Tell her _"Get me up into the skies, Sassy!"_
Pilot the Airplane |invehicle |c |q 25066 |goto 37.35,41.92
step
Kill Gnomeregan Stealth Fighters
|tip The look like airplanes flying around in the sky around this area.
|tip Use your abilities on your action bar.
Shoot Down #10# Gnomeregan Stealth Fighters |q 25066/1 |goto 33.7,38.8
step
Land the Airplane at this Location |outvehicle |c |q 25066 |goto 37.4,41.9
|tip Fly to this location first, and get near the ground.  You will drop out of the airplane without a parachute.
|tip Click the red arrow on your action bar.
step
talk Sassy Hardwrench##38387
turnin The Pride of Kezan##25066 |goto 37.36,41.92
accept The Warchief Wants You##25098 |goto 37.36,41.92
step
talk Thrall##38935
turnin The Warchief Wants You##25098 |goto 36.8,43.1
accept Borrow Bastia##25099 |goto 36.8,43.1
step
Follow the path down |goto 36.51,41.32 < 20 |only if walking
Continue down the path |goto 35.28,39.06 < 20 |only if walking
talk Kilag Gorefang##35893
turnin Borrow Bastia##25099 |goto 33.8,38.8
accept Let's Ride##25100 |goto 33.8,38.8
step
Travel to Slinky Sharpshiv |goto 53.67,34.81 < 20 |c |q 25100
step
talk Slinky Sharpshiv##38517
turnin Let's Ride##25100 |goto 53.72,34.93
accept The Gallywix Labor Mine##25109 |goto 53.72,34.93
step
Enter the cave |goto 54.1,36.0 < 15 |walk |n
Follow the path down |goto 54.47,35.91 < 15 |walk |n
Follow the path down |goto 54.78,34.77 < 10 |walk |n
Jump down here |goto 55.22,35.82 < 15 |c |q 25109
step
Follow the path |goto 53.54,36.98 < 15 |walk
talk Assistant Greely##38124
turnin The Gallywix Labor Mine##25109 |goto 53.16,36.54
accept Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
Follow the path |goto 53.53,36.97 < 15 |walk
click Kaja'Cola Zero-One##229285
|tip They look like soda cans around this area.
kill Brute Overseer##39193+
collect Kaja'Cola Zero-One##52483 |q 25110/1 |goto 54.49,36.52
step
Follow the path |goto 53.54,36.98 < 15 |walk
talk Assistant Greely##38124
turnin Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
_Next to you:_
talk Assistant Greely##39199
accept Morale Boost##25122
accept Throw It On the Ground!##25123
step
Follow the path |goto 53.38,36.95 < 10 |walk
click Kaja'Cola Zero-One##229285
|tip They look like soda cans around this area.
kill Brute Overseer##39193+
collect 9 Kaja'Cola Zero-One##52484 |c |q 25122	|goto 54.64,36.09
stickystart "Free_Goblins_Minds"
step
kill Blastshadow the Brutemaster##39194
|tip He walks around this area with a succubus.
click Blastshadow's Soulstone##202574
|tip It's a purple floating orb that appears after you kill him.
collect Blastshadow's Soulstone##52481 |c |goto 55.8,32.1
step
Use Blastshadow's Soulstone on Blastshadow the Brutemaster's Corpse |use Blastshadow's Soulstone##52481
|tip His corpse will be wherever you ended up killing him.
Destroy Blastshadow's Soulstone |q 25123/1 |goto 55.8,32.1
step
_Next to you:_
talk Assistant Greely##39199
turnin Throw It On the Ground!##25123
step
Follow the path |goto 55.12,36.13 < 20 |walk
Use a Kaja'Cola Zero-One on Izzy |use Kaja'Cola Zero-One##52484
Free Izzy's Mind |q 25122/2 |goto 57.01,35.03
step
Use a Kaja'Cola Zero-One on Ace |use Kaja'Cola Zero-One##52484
Free Ace's Mind |q 25122/1 |goto 56.99,37.15
step
Follow the path |goto 56.63,34.71 < 15 |walk
Use a Kaja'Cola Zero-One on Gobber |use Kaja'Cola Zero-One##52484
Free Gobber's Mind |q 25122/3 |goto 57.04,32.15
step
label "Free_Goblins_Minds"
_Inside the cave:_
Use a Kaja'Cola Zero-One on Kezan Citizens and Goblin Survivors |use Kaja'Cola Zero-One##52484
|tip They look like goblins mining throughout the cave.
Free #6# Other Goblin's Minds |q 25122/4
step
_Next to you:_
talk Assistant Greely##39199
turnin Morale Boost##25122
accept Light at the End of the Tunnel##25125
step
Follow the path |goto 57.01,30.51 < 20 |walk
Leave the cave |goto 56.58,28.43 < 15 |walk
clicknpc Mine Cart##39341
turnin Light at the End of the Tunnel##25125 |goto 56.3,27.3
accept Wild Mine Cart Ride##25184 |goto 56.3,27.3
step
Travel to Bilgewater Lumber Yard |goto 54.26,17.10 < 20 |c |q 25184
step
talk Assistant Greely##38124
turnin Wild Mine Cart Ride##25184 |goto 54.39,16.94
accept Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
accept The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
stickystart "Spare_Shredder_Parts"
step
kill 8 Steamwheedle Shark##39354 |q 25200/1 |goto 53.95,17.54
step
label "Spare_Shredder_Parts"
click Spare Shredder Parts##202608
|tip They look like inactive shredders around this area.
collect 8 Spare Shredder Parts##52530 |q 25201/1 |goto 53.95,17.54
step
talk Assistant Greely##38124
turnin Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
turnin The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
step
talk Assistant Greely##38124
accept Release the Valves##25204 |goto 54.39,16.94
step
talk Ace##38441
accept What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
only if _G['UnitSex']("player")==2
step
talk Izzy##38647
accept The Fastest Way to His Heart##25202 |goto 53.99,16.99
only if _G['UnitSex']("player")==3
step
Jump down here |goto 52.71,16.42 < 20 |only if walking
Run up the ramp |goto 50.90,15.99 < 20 |only if walking
click Valve #1##202609
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #1 |q 25204/1 |goto 50.72,13.80
step
click Valve #3##202611
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #3 |q 25204/3 |goto 50.52,13.12
step
Follow the path |goto 50.94,12.52 < 15 |only if walking
click Valve #2##202610
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #2 |q 25204/2 |goto 50.18,11.75
step
click Valve #4##202612
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #4 |q 25204/4 |goto 49.87,12.71
step
kill Chip Endale##39363 |q 25203/1 |goto 49.86,13.89
only if _G['UnitSex']("player")==2
step
kill Chip Endale##39363
collect Still-Beating Heart##52531 |q 25202/1 |goto 49.86,13.89
only if _G['UnitSex']("player")==3
step
Follow the path |goto 50.35,13.40 < 15 |only if walking
click Platform Control Panel##202613
turnin Release the Valves##25204 |goto 51.41,13.11
accept Good-bye, Sweet Oil##25207 |goto 51.41,13.11
step
click Big Red Button##339
Destroy the KTC Oil Platform |q 25207/1 |goto 51.41,13.11
step
Jump down here |goto 51.64,13.51 < 7 |only if walking
Follow the path up |goto 53.76,15.62 < 15 |only if walking
Follow the path |goto 54.49,16.21 < 15 |only if walking
talk Assistant Greely##38124
turnin Good-bye, Sweet Oil##25207 |goto 54.39,16.94
step
talk Ace##38441
turnin What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
only if _G['UnitSex']("player")==2
step
talk Izzy##38647
turnin The Fastest Way to His Heart##25202 |goto 54.00,16.98
only if _G['UnitSex']("player")==3
step
talk Assistant Greely##38124
accept The Slave Pits##25213 |goto 54.39,16.94
step
Travel to Sassy Hardwrench |goto 43.95,25.37 < 20 |c |q 25213
step
talk Sassy Hardwrench##38869
turnin The Slave Pits##25213 |goto 43.6,25.3
accept She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.31 |only if _G['UnitSex']("player")==2
accept What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.31 |only if _G['UnitSex']("player")==3
step
talk Hobart Grapplehammer##38120
accept Escape Velocity##25214 |goto 43.85,25.29
stickystart "Launch_Cages"
step
Follow the path down |goto 42.97,25.45 < 20 |only if walking
Follow the path |goto 41.37,25.28 < 20 |only if walking
Follow the path up |goto 40.59,26.63 < 20 |only if walking
Follow the path |goto 39.71,28.47 < 20 |only if walking
kill Candy Cane##39426
collect Fickle Heart##52559 |q 25243/1 |goto 39.68,27.12
only if _G['UnitSex']("player")==2
step
Follow the path down |goto 42.97,25.45 < 20 |only if walking
Follow the path |goto 41.37,25.28 < 20 |only if walking
Follow the path up |goto 40.59,26.63 < 20 |only if walking
Follow the path |goto 39.71,28.47 < 20 |only if walking
kill Candy Cane##39426 |q 25244/1 |goto 39.68,27.12
only if _G['UnitSex']("player")==3
step
label "Launch_Cages"
clicknpc Captured Goblin##39456+
|tip They looks like wooden cages around this area.
Launch #8# Cages |q 25214/1 |goto 39.90,28.78
step
Follow the path |goto 39.79,28.49 < 15 |only if walking
Follow the path down |goto 40.40,28.12 < 20 |only if walking
Follow the path |goto 41.46,25.23 < 20 |only if walking
Follow the path up |goto 42.51,25.28 < 20 |only if walking
Follow the path up |goto 43.66,25.83 < 15 |only if walking
talk Hobart Grapplehammer##38120
turnin Escape Velocity##25214 |goto 43.85,25.29
step
talk Sassy Hardwrench##38869
turnin She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.32 |only if _G['UnitSex']("player")==2
turnin What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.32 |only if _G['UnitSex']("player")==3
accept Final Confrontation##25251 |goto 43.6,25.3
step
clicknpc Ultimate Footbomb Uniform##39592
Pilot the Ultimate Footbomb Uniform |q 25251/1 |goto 43.85,25.18
step
Follow the path up |goto 42.3,18.5 < 15 |only if walking
Follow the path |goto 42.08,17.56 < 15 |only if walking
kill Trade Prince Gallywix##39582
|tip Use the abilities on your action bar.
|tip Stand behind Trade Prince Gallywix when you are fighting him.
Deal with Trade Prince Gallywix |q 25251/2 |goto 43.5,20.0
step
Follow the path down |goto 41.82,17.81 < 15 |only if walking
Follow the path up |goto 42.31,21.95 < 20 |only if walking
Leave the Ultimate Footbomb Uniform |nobuff The Ultimate Footbomb Uniform |c |goto 43.69,25.25 |q 25251
|tip Run to this location first, since you run faster in the shredder.
|tip Click the yellow arrow on your action bar.
step
talk Sassy Hardwrench##38869
turnin Final Confrontation##25251 |goto 43.63,25.32
accept Victory!##25265 |goto 43.63,25.32
step
Travel to Thrall |goto 42.08,17.47 < 20 |c |q 25265
step
talk Thrall##38935
turnin Victory!##25265 |goto 42.15,17.37
accept Warchief's Emissary##25266 |goto 42.15,17.37
step
talk Sassy Hardwrench##38869 |goto 42.58,16.37 |n
Tell her _"Sassy, let's set sail for Orgrimmar before the island blows for good!"_
Leave the Lost Isles |goto Durotar |noway |q 25266
step
talk Darkspear Loyalist##86884
turnin Warchief's Emissary##25266 |goto Durotar/0 57.65,9.77
accept Message for Vol'jin##25267 |goto Durotar/0 57.65,9.77
step
Travel to Orgrimmar |goto Orgrimmar/1 50.10,76.17 < 20 |c |q 25267
step
talk Eitrigg##3144
|tip Inside the building.
accept Missing Reports##26803 |goto Orgrimmar/1 49.2,72.3
step
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Message for Vol'jin##25267 |goto 48.26,70.94
accept Report to the Labor Captain##25275 |goto 48.26,70.94
step
talk Gotura Fourwinds##35068
|tip Inside the building.
accept Preserving the Barrens##26642 |goto 47.63,71.22
step
Leave the building |goto 50.07,75.97 < 10 |walk
Follow the path up |goto 52.08,71.45 < 20 |only if walking
Run up the ramp |goto 50.96,64.57 < 10 |only if walking
Ride the elevator up |goto 51.12,63.04 < 15 |only if walking
talk Doras##3310
turnin Missing Reports##26803 |goto 49.7,59.2
accept Flight to Razor Hill##26804 |goto 49.7,59.2
step
talk Gar'Thok##3139
turnin Flight to Razor Hill##26804 |goto Durotar/0 52.0,43.5
accept Reports to Orgrimmar##26806 |goto Durotar/0 52.0,43.5
step
talk Burok##41140
turnin Reports to Orgrimmar##26806 |goto 53.1,43.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Orc (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Durotar Orc 1-5",
condition_suggested=function() return raceclass('Orc') and level<=5 end,
next="Zygor's Leveling Guides\\Classic (1-10)\\Kalimdor\\Durotar",
startlevel=1,
endlevel=5,
},[[
step
talk Kaltunk##10176
accept Your Place In The World##25152 |goto Valley of Trials/0 45.2,68.41
step
talk Gornek##3143
turnin Your Place In The World##25152 |goto 44.9,66.41
accept Cutting Teeth##25126 |goto 44.9,66.41
step
kill 6 Mottled Boar##3098 |q 25126/1 |goto 50.95,54.67
step
talk Gornek##3143
turnin Cutting Teeth##25126 |goto 44.9,66.41
accept Invaders in Our Home##25172 |goto 44.9,66.41
step
kill 7 Northwatch Scout##39317 |q 25172/1 |goto 47.86,75.23
|tip They are stealthed around this area.
step
talk Gornek##3143
turnin Invaders in Our Home##25172 |goto 44.9,66.41
accept Sting of the Scorpid##25127 |goto 44.9,66.41
step
talk Galgar##9796
accept Galgar's Cactus Apple Surprise##25136 |goto 42.9,62.41
stickystart "cactusapples"
step
Follow the path |goto 46.14,63.29 < 15 |only if walking
Follow the path |goto 49.48,53.39 < 20 |only if walking
kill Scorpid Worker##3124+
collect 8 Scorpid Worker Tail##4862 |q 25127/1 |goto 49.42,44.59
step
label "cactusapples"
click Cactus Apple##171938
|tip They look like smaller cacti with red balls on them around this area.
collect 6 Cactus Apple##11583 |q 25136/1 |goto 49.42,44.59
step
Follow the path |goto 47.41,43.40 < 20 |only if walking
talk Hana'zua##3287
accept Sarkoth##25129 |goto 34.6,44.31
step
Follow the path up |goto 35.07,53.97 < 15 |only if walking
kill Sarkoth##3281
|tip It's a bigger, darker scorpion that walks around this area.
collect Sarkoth's Mangled Claw##4905 |q 25129/1 |goto 34.1,62.81
step
Follow the path down |goto 34.48,58.37 < 20 |only if walking
talk Hana'zua##3287
turnin Sarkoth##25129 |goto 34.6,44.31
accept Back to the Den##25130 |goto 34.6,44.31
step
talk Gornek##3143
turnin Sting of the Scorpid##25127 |goto 44.9,66.51
turnin Back to the Den##25130 |goto 44.9,66.51
step
talk Galgar##9796
turnin Galgar's Cactus Apple Surprise##25136 |goto 43.0,62.4
step
talk Zureetha Fargaze##3145
accept Vile Familiars##25131 |goto 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##37446 |goto 46.16,63.26
step
Follow the path |goto 54.14,62.46 < 20 |only if walking
Use the Foreman's Blackjack on Lazy Peons |use Foreman's Blackjack##16114
|tip You can find them all around this area, and along this mountainside.
|tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees, but it doesn't take too long.
Waken #4# Peons |q 37446/1 |goto 54.5,57.0
step
kill 8 Vile Familiar##3101 |q 25131/1 |goto 53.8,24.8
step
Follow the path up |goto 35.05,54.08 < 15 |only if walking
Follow the path up |goto 35.96,58.97 < 20 |only if walking
Jump down here |goto 40.48,62.14 < 15 |only if walking
talk Foreman Thazz'ril##11378
turnin Lazy Peons##37446 |goto 46.14,63.28
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##25131 |goto 45.82,63.44
accept Burning Blade Medallion##25132 |goto 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Thazz'ril's Pick##25135 |goto 46.14,63.28
stickystart "Kill_Felstalkers"
step
Follow the path |goto 48.56,56.33 < 20 |only if walking
Follow the path |goto 49.08,41.46 < 20 |only if walking
Follow the path |goto Durotar/8 72.33,78.27 < 15 |walk
Follow the path down |goto Durotar/8 54.40,68.40 < 15 |walk
click Thazz'ril's Pick##178087
collect Thazz'ril's Pick##16332 |q 25135/1 |goto Durotar/8 40.7,52.6
step
Follow the path |goto 44.02,69.81 < 15 |walk
Follow the path down |goto 39.36,87.07 < 15 |walk
Continue following the path down |goto 23.27,76.02 < 15 |walk
kill Yarrog Baneshadow##3183
collect Burning Blade Medallion##4859 |q 25132/2 |goto 14.9,46.8
step
label "Kill_Felstalkers"
kill 5 Felstalker##3102 |q 25132/1 |goto 45.30,60.62
step
talk Foreman Thazz'ril##11378
turnin Thazz'ril's Pick##25135 |goto Valley of Trials/0 46.16,63.29
step
talk Zureetha Fargaze##3145
turnin Burning Blade Medallion##25132 |goto 45.82,63.44
accept Report to Sen'jin Village##25133 |goto 45.82,63.44
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Tauren (1-4)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Mulgore 1-4",
condition_suggested=function() return raceclass('Tauren') and level<=4 end,
next="Zygor's Leveling Guides\\Classic (1-10)\\Kalimdor\\Mulgore",
startlevel=1,
endlevel=4,
},[[
step
talk Chief Hawkwind##2981
accept The First Step##14449 |goto Camp Narache/0 27.7,28.31
step
talk Grull Hawkwind##2980
turnin The First Step##14449 |goto 39.5,37.31
accept Rite of Strength##14452 |goto 39.5,37.31
step
kill 6 Bristleback Invader##36943 |q 14452/1 |goto 48.1,42.01
step
talk Grull Hawkwind##2980
turnin Rite of Strength##14452 |goto 39.5,37.31
accept Our Tribe, Imprisoned##24852 |goto 39.5,37.31
step
click Quilboar Cage##201577
|tip They look like yellow wooden cages around this area.
Free #4# Braves |q 24852/1 |goto 48.9,33.61
step
talk Grull Hawkwind##2980
turnin Our Tribe, Imprisoned##24852 |goto 39.5,37.31
accept Go to Adana##14458 |goto 39.5,37.31
step
talk Adana Thunderhorn##36694
turnin Go to Adana##14458 |goto 30.9,50.61
accept Rite of Courage##14456 |goto 30.9,50.61
accept Stop the Thorncallers##14455 |goto 30.9,50.61
stickystart "Stolen_Rifles"
step
kill 7 Bristleback Thorncaller##36697 |q 14455/1 |goto 35.9,68.01
step
label "Stolen_Rifles"
kill Bristleback Gun Thief##36708+
collect 7 Stolen Rifle##49535 |q 14456/1 |goto 35.9,68.01
step
talk Adana Thunderhorn##36694
turnin Rite of Courage##14456 |goto 30.9,50.61
turnin Stop the Thorncallers##14455 |goto 30.9,50.61
accept The Battleboars##14459 |goto 30.9,50.61
accept Feed of Evil##14461 |goto 30.9,50.61
stickystart "Armored_Battleboars"
step
Use Adana's Torch next to the Trough |use Adana's Torch##49539
|tip It looks like a wooden bathtub full of pink meat.
Burn the First Trough |q 14461/1 |goto 26.4,66.4
step
Use Adana's Torch next to the Trough |use Adana's Torch##49539
|tip It looks like a wooden bathtub full of pink meat.
Burn the Second Trough |q 14461/2 |goto 25.2,69.2
step
Use Adana's Torch next to the Trough |use Adana's Torch##49539
|tip It looks like a wooden bathtub full of pink meat.
Burn the Third Trough |q 14461/3 |goto 28.2,70.4
step
label "Armored_Battleboars"
kill 10 Armored Battleboar##36696 |q 14459/1 |goto 28.2,70.4
step
talk Adana Thunderhorn##36694
turnin The Battleboars##14459 |goto 30.9,50.61
turnin Feed of Evil##14461 |goto 30.9,50.61
accept Rite of Honor##14460 |goto 30.9,50.61
step
kill Chief Squealer Thornmantle##36712
collect Mane of Thornmantle##50473 |q 14460/1 |goto 15.19,46.70
step
talk Chief Hawkwind##2981
turnin Rite of Honor##14460 |goto 27.73,28.29
accept Last Rites, First Rites##24861 |goto 27.73,28.29
step
Use the Water Pitcher |use Water Pitcher##50465
Place the Offering |q 24861/1 |goto 27.5,27.71
step
talk Chief Hawkwind##2981
turnin Last Rites, First Rites##24861 |goto 27.73,28.29
accept Rites of the Earthmother##23733 |goto 27.73,28.29
step
Follow the path up |goto 20.67,34.26 < 20 |only if walking
Continue up the path |goto 16.04,28.03 < 15 |only if walking
Continue up the path |goto 11.75,28.10 < 15 |only if walking
talk Dyami Windsoar##36803
turnin Rites of the Earthmother##23733 |goto 15.6,30.31
accept Rite of the Winds##24215 |goto 15.6,30.31
step
Use the Water of Vision |use Water of Vision##49652 |goto 15.6,30.3 |n
Drink the Water of Vision |goto 15.6,30.3 > 30 |noway |c |q 24215
step
Fly to Bloodhoof Village |goto Mulgore/0 47.8,59.9 < 20 |c |q 24215
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Troll (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Durotar Troll 1-5",
condition_suggested=function() return raceclass('Troll') and level<=5 end,
next="Zygor's Leveling Guides\\Classic (1-10)\\Kalimdor\\Durotar",
startlevel=1,
endlevel=5,
},[[
step
talk Jin'thala##37951
accept The Rise of the Darkspear##31159 |goto Echo Isles/0 42.8,53.41 |only Troll Monk
accept The Rise of the Darkspear##24776 |goto Echo Isles/0 42.8,53.41 |only Troll Hunter
accept The Rise of the Darkspear##24607 |goto Echo Isles/0 42.8,53.41 |only Troll Warrior
accept The Rise of the Darkspear##24770 |goto Echo Isles/0 42.8,53.41 |only Troll Rogue
accept The Rise of the Darkspear##24782 |goto Echo Isles/0 42.8,53.41 |only Troll Priest
accept The Rise of the Darkspear##24764 |goto Echo Isles/0 42.8,53.41 |only Troll Druid
accept The Rise of the Darkspear##26272 |goto Echo Isles/0 42.8,53.41 |only Troll Warlock
accept The Rise of the Darkspear##24750 |goto Echo Isles/0 42.8,53.41 |only Troll Mage
accept The Rise of the Darkspear##24758 |goto Echo Isles/0 42.8,53.41 |only Troll Shaman
step
talk Nekali##38242
turnin The Rise of the Darkspear##24758 |goto 49.9,52.71
accept The Basics: Hitting Things##24759 |goto 49.9,52.71
only Troll Shaman
step
talk Soratha##38246
turnin The Rise of the Darkspear##24750 |goto 59.7,52.11
accept The Basics: Hitting Things##24751 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin The Rise of the Darkspear##26272 |goto 50.0,50.01
accept The Basics: Hitting Things##26273 |goto 50.0,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin The Rise of the Darkspear##24764 |goto 58.1,54.11
accept The Basics: Hitting Things##24765 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin The Rise of the Darkspear##24782 |goto 58.1,49.11
accept The Basics: Hitting Things##24783 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin The Rise of the Darkspear##24770 |goto 52.9,49.91
accept The Basics: Hitting Things##24771 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin The Rise of the Darkspear##24776 |goto 56.36,50.08
accept The Basics: Hitting Things##24777 |goto 56.36,50.08
only Troll Hunter
step
talk Nortet##38037
turnin The Rise of the Darkspear##24607 |goto 52.5,53.71
accept The Basics: Hitting Things##24639 |goto 52.5,53.71
only Troll Warrior
step
talk Zabrax##63310
turnin The Rise of the Darkspear##31159 |goto 52.6,51.8
accept The Basics: Hitting Things##31158 |goto 52.6,51.8
only Troll Monk
step
kill 6 Tiki Target##38038 |q 24759/1 |goto 52.9,53.21
only Troll Shaman
step
kill 6 Tiki Target##38038 |q 24771/1 |goto 52.9,53.21
only Troll Rogue
step
kill 6 Tiki Target##38038 |q 24639/1 |goto 52.9,53.21
only Troll Warrior
step
kill 6 Tiki Target##38038 |q 26273/1 |goto 52.9,53.21
only Troll Warlock
step
kill 6 Tiki Target##38038 |q 24751/1 |goto 56.4,50.11
only Troll Mage
step
kill 6 Tiki Target##38038 |q 24777/1 |goto 56.4,50.11
only Troll Hunter
step
kill 6 Tiki Target##38038 |q 24765/1 |goto 58.8,54.1
only Troll Druid
step
kill 6 Tiki Target##38038 |q 24783/1 |goto 56.4,50.11
only Troll Priest
step
kill 6 Tiki Target##38038 |q 31158/1 |goto 52.7,51.2
only Troll Monk
step
talk Nekali##38242
turnin The Basics: Hitting Things##24759 |goto 49.9,52.71
accept A Rough Start##24761 |goto 49.9,52.71
only Troll Shaman
step
talk Soratha##38246
turnin The Basics: Hitting Things##24751 |goto 59.7,52.11
accept A Rough Start##24753 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin The Basics: Hitting Things##26273 |goto 50.1,50.01
accept A Rough Start##26275 |goto 50.1,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin The Basics: Hitting Things##24765 |goto 58.1,54.11
accept A Rough Start##24767 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin The Basics: Hitting Things##24783 |goto 58.1,49.11
accept A Rough Start##24785 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin The Basics: Hitting Things##24771 |goto 52.9,49.91
accept A Rough Start##24773 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin The Basics: Hitting Things##24777 |goto 56.4,50.11
accept A Rough Start##24779 |goto 56.4,50.11
only Troll Hunter
step
talk Nortet##38037
turnin The Basics: Hitting Things##24639 |goto 52.6,53.61
accept A Rough Start##24641 |goto 52.6,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin The Basics: Hitting Things##31158 |goto 52.6,51.8
accept A Rough Start##31160 |goto 52.6,51.8
only Troll Monk
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24767/1 |goto 56.7,45.11
only Troll Druid
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24785/1 |goto 56.7,45.11
only Troll Priest
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24753/1 |goto 56.7,45.11
only Troll Mage
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24779/1 |goto 56.7,45.11
only Troll Hunter
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24761/1 |goto 47.9,49.31
only Troll Shaman
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24641/1 |goto 47.9,49.31
only Troll Warrior
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 26275/1 |goto 47.9,49.31
only Troll Warlock
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24773/1 |goto 47.9,49.31
only Troll Rogue
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 31160/1 |goto 46.5,52.9
only Troll Monk
step
talk Nekali##38242
turnin A Rough Start##24761 |goto 50.1,52.81
accept Proving Pit##24762 |goto 50.1,52.81
only Troll Shaman
step
talk Soratha##38246
turnin A Rough Start##24753 |goto 59.7,52.11
accept Proving Pit##24754 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin A Rough Start##26275 |goto 50.1,50.01
accept Proving Pit##26276 |goto 50.1,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin A Rough Start##24767 |goto 58.1,54.11
accept Proving Pit##24768 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin A Rough Start##24785 |goto 58.1,49.11
accept Proving Pit##24786 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin A Rough Start##24773 |goto 52.9,49.91
accept Proving Pit##24774 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin A Rough Start##24779 |goto 56.4,50.11
accept Proving Pit##24780 |goto 56.4,50.11
only Troll Hunter
step
talk Nortet##38037
turnin A Rough Start##24641 |goto 52.6,53.61
accept Proving Pit##24642 |goto 52.6,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin A Rough Start##31160 |goto 52.6,51.8
accept Proving Pit##31161 |goto 52.6,51.8
only Troll Monk
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24754/1 |goto 57.49,52.66
only Troll Mage
step
kill Captive Spitescale Scout##38142+ |q 24754/2 |goto 57.21,51.93
only Troll Mage
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24768/1 |goto 57.49,52.66
only Troll Druid
step
kill Captive Spitescale Scout##38142+ |q 24768/2 |goto 57.21,51.93
only Troll Druid
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24786/1 |goto 57.49,52.66
only Troll Priest
step
kill Captive Spitescale Scout##38142+ |q 24786/2 |goto 57.21,51.93
only Troll Priest
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24780/1 |goto 57.49,52.66
only Troll Hunter
step
kill Captive Spitescale Scout##38142+ |q 24780/2 |goto 57.21,51.93
only Troll Hunter
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24774/1 |goto 57.49,52.66
only Troll Rogue
step
kill Captive Spitescale Scout##38142+ |q 24774/2 |goto 57.21,51.93
only Troll Rogue
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24642/1 |goto 57.49,52.66
only Troll Warrior
step
kill Captive Spitescale Scout##38142+ |q 24642/2 |goto 57.21,51.93
only Troll Warrior
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 26276/1 |goto 57.49,52.66
only Troll Warlock
step
kill Captive Spitescale Scout##38142+ |q 26276/2 |goto 57.21,51.93
only Troll Warlock
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24762/1 |goto 57.49,52.66
only Troll Shaman
step
kill Captive Spitescale Scout##38142+ |q 24762/2 |goto 57.21,51.93
only Troll Shaman
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 31161/1 |goto 57.49,52.66
only Troll Monk
step
kill Captive Spitescale Scout##38142+ |q 31161/2 |goto 57.21,51.93
only Troll Monk
step
talk Nekali##38242
turnin Proving Pit##24762 |goto 50.1,52.81
only Troll Shaman
step
talk Soratha##38246
turnin Proving Pit##24754 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin Proving Pit##26276 |goto 50.1,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin Proving Pit##24768 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin Proving Pit##24786 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin Proving Pit##24774 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin Proving Pit##24780 |goto 56.4,50.11
only Troll Hunter
step
talk Nortet##38037
turnin Proving Pit##24642 |goto 52.6,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin Proving Pit##31161 |goto 52.0,52.0
only Troll Monk
step
talk Vol'jin##38966
|tip Inside the building.
turnin More Than Expected##24781 |goto 61.55,65.85 |only Troll Hunter
turnin More Than Expected##24643 |goto 61.55,65.85 |only Troll Warrior
turnin More Than Expected##24775 |goto 61.55,65.85 |only Troll Rogue
turnin More Than Expected##24787 |goto 61.55,65.85 |only Troll Priest
turnin More Than Expected##24769 |goto 61.55,65.85 |only Troll Druid
turnin More Than Expected##26277 |goto 61.55,65.85 |only Troll Warlock
turnin More Than Expected##24755 |goto 61.55,65.85 |only Troll Mage
turnin More Than Expected##24763 |goto 61.55,65.85 |only Troll Shaman
turnin More Than Expected##31163 |goto 61.55,65.85 |only Troll Monk
accept Moraya##25064 |goto 61.55,65.85
step
talk Tora'jin##39007
accept Crab Fishin'##25037 |goto 60.5,62.91
step
Follow the path down |goto 62.40,60.10 < 15 |only if walking
Follow the path down |goto 64.20,56.39 < 20 |only if walking
kill Pygmy Surf Crawler##39004+
collect 5 Fresh Crawler Meat##52080 |q 25037/1 |goto 66.0,55.81
step
Follow the path up |goto 65.03,55.75 < 20 |only if walking
Follow the path up |goto 62.56,59.57 < 15 |only if walking
talk Tora'jin##39007
turnin Crab Fishin'##25037 |goto 60.5,62.91
step
talk Moraya##38005
turnin Moraya##25064 |goto 56.8,63.71
accept A Troll's Truest Companion##24622 |goto 56.8,63.71
step
Follow the path |goto 56.38,65.18 < 20 |only if walking
Cross the bridge |goto 50.01,67.05 < 20 |only if walking
talk Kijara##37969
|tip She walks around.
turnin A Troll's Truest Companion##24622 |goto 45.57,85.10
accept Saving the Young##24623 |goto 45.57,85.10
step
talk Tegashi##37987
accept Mercy for the Lost##24624 |goto 45.70,85.02
accept Consort of the Sea Witch##24625 |goto 45.70,85.02
stickystart "Corrupted_Bloodtalons"
stickystart "Rescue_Bloodtalon_Hatchlings"
step
Follow the path |goto 40.72,73.39 < 20 |only if walking
Follow the path up |goto 38.46,67.75 < 15 |only if walking
kill Naj'tess##39072
collect Naj'tess' Orb of Corruption##50018 |q 24625/1 |goto 36.8,69.01
step
label "Corrupted_Bloodtalons"
kill 8 Corrupted Bloodtalon##37961+ |q 24624/1 |goto 36.8,69.01
step
label "Rescue_Bloodtalon_Hatchlings"
Use the Bloodtalon Whistle near Lost Bloodtalon Hatchlings |use Bloodtalon Whistle##52283
|tip They look like tiny red raptors around this area.
Rescue #12# Bloodtalon Hatchlings |q 24623/1 |goto 36.8,69.01
step
talk Kijara##37969
|tip She walks around.
turnin Saving the Young##24623 |goto 45.57,85.10
step
talk Tegashi##37987
turnin Mercy for the Lost##24624 |goto 45.70,85.00
turnin Consort of the Sea Witch##24625 |goto 45.70,85.00
step
talk Kijara##37969
|tip She walks around.
accept Young and Vicious##24626 |goto 45.57,85.10
step
Use your Bloodtalon Lasso on Swiftclaw |use Bloodtalon Lasso##50053 |tip Swiftclaw is a dark colored raptor that runs really fast around this area, so you may need to search for him.
Capture Swiftclaw |q 24626/1 |goto 42.9,84.61
step
_While Riding Swiftclaw:_
Cross the bridge |goto 45.57,80.16 < 20 |only if walking
Follow the path |goto 49.97,67.11 < 20 |only if walking
Return Swiftclaw to the Raptor Pens |q 24626/2 |goto 52.9,65.31
step
Follow the path up |goto 56.45,65.02 < 15 |only if walking
talk Moraya##38005
turnin Young and Vicious##24626 |goto 56.8,63.71
step
talk Tortunga##38440
accept Breaking the Line##25035 |goto 58.95,66.82
step
talk Jornun##38989 |goto 59.06,66.91 |n
Tell him _"Yes.  Do you have a raptor that can take me there?"_
Secure a Ride to Spitescale Cove |goto 59.06,66.91 > 30 |noway |c |q 25035
step
Ride the Raptor to Spitescale Cove |goto 59.0,23.1 < 20 |c |q 25035
step
talk Morakki##38442
turnin Breaking the Line##25035 |goto 58.90,23.09
accept No More Mercy##24812 |goto 58.90,23.09
accept Territorial Fetish##24813 |goto 58.90,23.09
stickystart "Place_Territorial_Fetishes"
step
Kill Spitescale enemies around this area
|tip They are all around inside this cave.
|tip Stay near the entrance of the cave, if you can.
Slay #12# Spitescale Naga |q 24812/1 |goto Echo Isles/9 66.3,60.5
step
label "Place_Territorial_Fetishes"
Use your Territorial Fetish next to Spitescale Flags |use Territorial Fetish##52065
|tip They look like red penant flags on blue-ish tridents stuck in the ground all around inside this cave.
|tip Stay near the entrance of the cave, if you can.
Place #8# Territorial Fetishes |q 24813/1 |goto 66.3,60.5
step
talk Morakki##38442
turnin No More Mercy##24812 |goto Echo Isles/0 58.91,23.06
turnin Territorial Fetish##24813 |goto Echo Isles/0 58.91,23.06
accept An Ancient Enemy##24814 |goto Echo Isles/0 58.91,23.06
step
Follow the path |goto 59.30,25.08 < 20 |only if walking
Follow the path up |goto 62.05,23.91 < 20 |only if walking
talk Vol'jin##10540
Speak with Vol'jin at Spitescale Cove |q 24814/1 |goto 62.23,18.01
step
talk Vol'jin##10540
Tell him _"I am ready, Vol'jin."_
|tip Follow your allies into battle.
kill Zar'jira##38306 |q 24814/2 |goto 62.23,18.01
|tip Click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
step
Watch the dialogue
talk Vanira##39027 |goto 60.26,15.80 |n
Tell her _"Take me back to Darkspear Hold if you would, Vanira."_
Return to Darkspear Hold |goto 59.5,63.2 < 30 |noway |c |q 24814
step
talk Vol'jin##10540
|tip Inside the building.
turnin An Ancient Enemy##24814 |goto 61.55,65.85
accept Sen'jin Village##25073 |goto 61.55,65.85
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Undead (1-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Tirisfal 1-11",
condition_suggested=function() return raceclass('Scourge') and level<=11 end,
next="Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Silverpine Forest (10-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Agatha##49044
accept Fresh out of the Grave##24959 |goto Deathknell/0 40.50,78.52
only Scourge
step
talk Undertaker Mordo##1568
turnin Fresh out of the Grave##24959 |goto 43.4,79.9
accept The Shadow Grave##28608 |goto 43.4,79.9
only Scourge
step
Run down the stairs |goto Tirisfal Glades/0 30.33,72.85 < 10 |walk |indoors Shadow Grave
Run down the stairs |goto Tirisfal Glades/0 29.98,72.84 < 10 |walk |indoors Shadow Grave
click Thick Embalming Fluid##207255
|tip It looks like a green globe sitting on the table.
collect Thick Embalming Fluid##64582 |q 28608/1 |goto Tirisfal Glades/0 29.7,72.0 |indoors Shadow Grave
step
click Corpse-Stitching Twine##207256
|tip It looks like a red spool of thread sitting on the table.
collect Corpse-Stitching Twine##64581 |q 28608/2 |goto 29.66,72.02 |indoors Shadow Grave
only Scourge
step
Run up the stairs |goto 29.99,72.45 < 10 |walk |indoors Shadow Grave
talk Undertaker Mordo##1568
turnin The Shadow Grave##28608 |goto Deathknell/0 43.4,79.9
accept Those That Couldn't Be Saved##26799 |goto Deathknell/0 43.4,79.9
only Scourge
step
talk Caretaker Caice##2307
accept The Wakening##24960 |goto 45.9,80.5
only Scourge
stickystart "Mindless_Zombies"
step
talk Valdred Moray##49231
Tell him _"Don't you remember? You died."_
Speak with Valdred Moray |q 24960/3 |goto 40.6,73.0
only Scourge
step
talk Lilian Voss##38895
Tell her _"I'm not an abomination, I'm simply undead. I just want to speak with you."_
Speak with Lilian Voss |q 24960/1 |goto 44.2,70.5
only Scourge
step
talk Marshal Redpath##49230
Tell him _"I'm not here to fight. I've only been asked to speak with you."_
Speak with Marshal Redpath |q 24960/2 |goto  46.5,71.2
only Scourge
step
label "Mindless_Zombies"
kill 6 Mindless Zombie##1501 |q 26799/1 |goto 44.0,73.7
only Scourge
step
talk Undertaker Mordo##1568
turnin Those That Couldn't Be Saved##26799 |goto 43.4,79.9
only Scourge
step
talk Caretaker Caice##2307
turnin The Wakening##24960 |goto 45.9,80.5
accept Beyond the Graves##25089 |goto 45.9,80.5
only Scourge
step
Follow the path |goto 50.56,68.10 < 20 |only if walking
talk Deathguard Saltain##1740
|tip He paces back and forth.
turnin Beyond the Graves##25089 |goto 49.96,56.17
accept Recruitment##26800 |goto 49.96,56.17
only Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
accept Scourge on our Perimeter##26801 |goto 46.7,58.8
stickystart "Gather_Scarlet_Corpses"
step
Kill enemies around this area
Slay #8# Deathknell Scourge |q 26801/1 |goto 50.54,47.39
step
label "Gather_Scarlet_Corpses"
clicknpc Scarlet Corpse##49340+
|tip They look like dead humans in red outfits laying on the ground around this area.
Gather #6# Scarlet Corpses |q 26800/1 |goto 50.54,47.39
step
talk Deathguard Saltain##1740
|tip He paces back and forth.
turnin Recruitment##26800 |goto 49.96,56.17
only Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Scourge on our Perimeter##26801 |goto 46.7,58.8
accept Novice Elreth##28651 |goto 46.7,58.8
step
talk Novice Elreth##1661
|tip Inside the building.
turnin Novice Elreth##28651 |goto 46.8,58.3
accept The Truth of the Grave##24961 |goto 46.8,58.3
step
Enter the building |goto 52.34,56.45 < 10 |walk
talk Lilian Voss##38910
|tip Inside the building.
Tell her _"You're not hideous, Lillian... you're one of us.  Here, look in this mirror, see for yourself."_
|tip If she's not on the ground floor, she can also be found on the upper level of the building at the same location.
Show Lilian Her Reflection |q 24961/1 |goto 54.35,56.97
step
talk Novice Elreth##1661
|tip Inside the building.
turnin The Truth of the Grave##24961 |goto 46.7,58.2
accept The Executor In the Field##28672 |goto 46.7,58.2
step
Follow the road |goto 51.35,52.74 < 20 |only if walking
Continue following the road |goto 52.64,41.79 < 20 |only if walking
talk Executor Arren##1570
turnin The Executor In the Field##28672 |goto 55.5,37.7
accept The Damned##26802 |goto 55.5,37.7
stickystart "Duskbat_Wings"
step
Kill Scavenger enemies around this area
collect 4 Scavenger Paw##3265 |q 26802/1 |goto 59.7,30.2
step
label "Duskbat_Wings"
Kill Duskbat enemies around this area
collect 4 Duskbat Wing##3264 |q 26802/2 |goto 59.7,30.2
step
talk Executor Arren##1570
turnin The Damned##26802 |goto 55.5,37.7
accept Night Web's Hollow##24973 |goto 55.5,37.7
step
kill 8 Young Night Web Spider##1504 |q 24973/1 |goto 36.6,29.0
step
kill 5 Night Web Spider##1505 |q 24973/2 |goto Deathknell/12 59.5,59.0 |indoors Night Web's Hollow
step
talk Executor Arren##1570
turnin Night Web's Hollow##24973 |goto Deathknell/0 55.5,37.7
accept No Better Than the Zombies##24970 |goto Deathknell/0 55.5,37.7
step
Follow the road |goto 60.68,36.12 < 20 |only if walking
talk Darnell##49425
turnin No Better Than the Zombies##24970 |goto 67.03,42.37
accept Assault on the Rotbrain Encampment##24971 |goto 67.03,42.37
stickystart "Slay_Rotbrain_Undead"
step
kill Marshal Redpath##49424 |q 24971/1 |goto 70.0,69.7
step
label "Slay_Rotbrain_Undead"
Kill enemies around this area
Slay #8# Rotbrain Undead |q 24971/2 |goto 74.4,65.5
step
Follow the path |goto 64.89,63.88 < 30 |only if walking
Follow the path |goto 53.23,62.39 < 15 |only if walking
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Assault on the Rotbrain Encampment##24971 |goto 46.7,58.8
accept Vital Intelligence##24972 |goto 46.7,58.8
step
Follow the road |goto 51.34,52.94 < 20 |only if walking
Continue following the road |goto 54.05,38.24 < 30 |only if walking
Follow the road |goto 77.12,18.56 < 20 |only if walking
Follow the road |goto Tirisfal Glades/0 40.60,54.61 < 30 |only if walking
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Vital Intelligence##24972 |goto Tirisfal Glades/0 44.75,53.68
accept Reaping the Reapers##24978 |goto Tirisfal Glades/0 44.75,53.68
step
talk Apothecary Johaan##1518
accept Fields of Grief##24975 |goto 44.6,53.8
step
talk Sedrick Calston##38925
|tip Upstairs sitting on a bed.
accept Ever So Lonely##24974 |goto 44.75,53.65
stickystart "Tirisfal_Pumpkins"
step
Kill enemies around this area
Slay #10# Tirisfal Farmers |q 24978/1 |goto 37.3,50.5
step
label "Tirisfal_Pumpkins"
click Tirisfal Pumpkin##375
|tip They look like large orange pumpkins on the ground around this area.
collect 10 Tirisfal Pumpkin##2846 |q 24975/1 |goto 37.3,50.5
step
Follow the path down |goto 35.90,47.20 < 20 |only if walking
Fight a Vile Fin murloc
|tip Don't kill it, just weaken it.
Use the Murloc Leash on the Vile Fin murloc |use Murloc Leash##52059
|tip Use it when it is weak.
|tip You will see a message in your chat box letting you know when the Vile Fin murloc is ready to be captured.
Capture a Vile Fin |q 24974/1 |goto 36.2,44.2
step
Follow the path up |goto 37.26,45.22 < 30 |only if walking
Follow the road |goto 39.73,49.21 < 30 |only if walking
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Reaping the Reapers##24978 |goto 44.75,53.67
accept The Scarlet Palisade##24980 |goto 44.75,53.67
step
talk Apothecary Johaan##1518
turnin Fields of Grief##24975 |goto 44.6,53.8
accept Variety is the Spice of Death##24976 |goto 44.6,53.8
step
Return the Vile Fine |q 24974/2 |goto 44.75,53.65
|tip Upstairs inside the building, stand on the bed.
|tip The murloc has to get close to the bed.
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
turnin Ever So Lonely##24974 |goto 44.75,53.65
step
Follow the path |goto 44.94,51.93 < 20 |only if walking
click Marrowpetal Stalk##202422
|tip They look like red plants underwater around this area.
collect 4 Marrowpetal##52067 |q 24976/1 |goto 48.90,53.73
step
Follow the path |goto 48.20,52.04 < 30 |only if walking
Follow the path |goto 44.42,46.60 < 30 |only if walking
click Xavren's Thorn##202421
|tip They look like small yellow plants on the hills around this area.
collect 4 Xavren's Thorn##52066 |q 24976/2 |goto 40.0,38.7
step
Drop down here |goto 37.43,39.60 < 20 |only if walking
clicknpc Briny Sea Cucumber##38933+
|tip They look like small pink and yellow grubs underwater around this area.
collect 8 Briny Sea Creature##52068 |q 24976/3 |goto 35.3,41.6
stickystart "Scarlet_Warriors"
step
Follow the path up |goto 35.79,44.33 < 30 |only if walking
Follow the path |goto 35.85,46.79 < 20 |only if walking
Follow the path |goto 34.34,48.14 < 20 |only if walking
kill Scarlet Warrior##1535+
collect A Scarlet Letter##52079 |n
Use the Scarlet Letter |use A Scarlet Letter##52079
accept A Scarlet Letter##24979 |goto 32.5,47.4
step
talk Lilian Voss##38999
|tip She's at the very top of the tower.
Tell her _"I'm here to rescue you."_
Watch the dialogue
Find the Scarlet Prisoner |q 24979/1 |goto 31.75,46.25
step
label "Scarlet_Warriors"
kill 10 Scarlet Warrior##1535 |q 24980/1 |goto 32.5,47.4
step
Follow the road |goto 34.22,48.06 < 30 |only if walking
Continue following the road |goto 39.38,48.92 < 30 |only if walking
talk Deathguard Simmer##1519
|tip Inside the building.
turnin The Scarlet Palisade##24980 |goto 44.75,53.67
turnin A Scarlet Letter##24979 |goto 44.75,53.67
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Variety is the Spice of Death##24976 |goto 44.6,53.8
accept Johaan's Experiment##24977 |goto 44.6,53.8
step
talk Captured Scarlet Zealot##1931
turnin Johaan's Experiment##24977 |goto 44.7,52.6
step
talk Gordo##10666 |tip He walks around the camp.
accept Gordo's Task##25038 |goto 44.1,53.9
step
Follow the path |goto 44.73,55.15 < 30 |only if walking
clicknpc Gloom Weed##175566+
|tip They look like wilted green and purple plants underwater around this area.
collect 3 Gloom Weed##12737 |q 25038/1 |goto 48.89,54.86
step
talk Deathguard Dillinger##1496
accept A Putrid Task##25090 |goto 52.55,54.81
accept The New Forsaken##24982 |goto 52.55,54.81
step
Kill enemies around this area
collect 7 Putrid Claw##2855 |q 25090/1 |goto 52.8,57.7
step
talk Deathguard Dillinger##1496
turnin A Putrid Task##25090 |goto 52.54,54.82
step
Cross the bridge |goto 52.54,54.41 < 15 |only if walking
Follow the road |goto 55.39,52.36 < 20 |only if walking
Follow the path |goto 57.86,51.79 < 20 |only if walking
talk Deathguard Morris##1745
accept Supplying Brill##6321 |goto 60.13,52.40
only Scourge
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Gordo's Task##25038 |goto 60.1,52.7
accept Darkhound Pounding##24990 |goto 60.1,52.7
step
talk Executor Zygand##1515
accept A Thorn in our Side##24981 |goto 60.54,51.86
step
talk Innkeeper Renee##5688
|tip Inside the building.
home Brill |goto 60.87,51.50 |q 24981
step
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin The New Forsaken##24982 |goto 61.0,50.4
accept Forsaken Duties##24983 |goto 61.0,50.4
stickystart "Darkhound_Blood"
step
Follow the path |goto 60.56,53.17 < 20 |only if walking
kill Cursed Darkhound##1548+
|tip A Worgen will appear and give you a quest when you kill a Cursed Darkhound.
|tip Be careful not to kill the Cursed Darkhounds too fast.
accept Escaped From Gilneas##24992 |goto 58.8,60.2
step
label "Darkhound_Blood"
kill Cursed Darkhound##1548+
collect 5 Darkhound Blood##2858 |q 24990/1 |goto 58.8,60.2
stickystart "Scarlet_Missionaries"
stickystart "Urgent_Scarlet_Memorandum"
step
kill 3 Scarlet Zealot##1537 |q 24981/1 |goto 53.0,66.1
step
label "Scarlet_Missionaries"
kill 3 Scarlet Missionary##1536 |q 24981/2 |goto 53.0,66.1
step
label "Urgent_Scarlet_Memorandum"
Kill enemies around this area
collect Urgent Scarlet Memorandum##52077 |q 24981/3 |goto 53.0,66.1
step
talk Executor Zygand##1515
turnin A Thorn in our Side##24981 |goto 60.54,51.87
turnin Escaped From Gilneas##24992 |goto 60.54,51.87
accept Annihilate the Worgen##24993 |goto 60.54,51.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Darkhound Pounding##24990 |goto 60.1,52.7
accept Holland's Experiment##24996 |goto 60.1,52.7
step
talk Captured Mountaineer##2211
|tip Upstairs inside the building.
turnin Holland's Experiment##24996 |goto 60.04,52.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
accept Garren's Haunt##24991 |goto 60.1,52.7
step
talk Anette Williams##43124
turnin Supplying Brill##6321 |goto 58.84,51.94
accept Ride to the Undercity##6323 |goto 58.84,51.94
only Scourge
step
talk Gordon Wendham##4556
turnin Ride to the Undercity##6323 |goto Undercity/0 61.5,41.8
accept Michael Garrett##6322 |goto Undercity/0 61.5,41.8
only Scourge
step
talk Michael Garrett##4551
turnin Michael Garrett##6322 |goto 63.3,48.5
accept Return to Morris##6324 |goto 63.3,48.5
only Scourge
step
talk Deathguard Morris##1745
turnin Return to Morris##6324 |goto Tirisfal Glades/0 60.13,52.40
only Scourge
step
kill 5 Worgen Infiltrator##38949 |q 24993/1 |goto 60.3,52.0
|tip They walk around stealthed around this area.
|tip Look for little puffs of dust moving along the ground to spot them easily.
step
talk Executor Zygand##1515
turnin Annihilate the Worgen##24993 |goto 60.54,51.87
step
Follow the road |goto 61.94,54.81 < 20 |only if walking
talk Deathguard Linnea##1495
turnin Forsaken Duties##24983 |goto 65.49,60.26
step
talk Gretchen Dedmar##1521
accept The Chill of Death##24988 |goto 65.25,60.42
step
Kill Duskbat enemies around this area
collect 5 Duskbat Pelt##2876 |q 24988/1 |goto 66.9,54.9
step
talk Gretchen Dedmar##1521
turnin The Chill of Death##24988 |goto 65.25,60.42
step
talk Deathguard Linnea##1495
accept Return to the Magistrate##24989 |goto 65.49,60.26
step
Follow the path |goto 64.62,58.76 < 20 |only if walking
Follow the road |goto 63.08,55.72 < 20 |only if walking
Follow the road |goto 61.96,54.90 < 20 |only if walking
Enter the building |goto 60.81,51.91 < 10 |walk
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin Return to the Magistrate##24989 |goto 61.0,50.4
step
Leave the building |goto 60.81,51.96 < 10 |walk
Follow the path |goto 61.40,52.23 < 20 |only if walking
Follow the road |goto 62.04,50.81 < 20 |only if walking
Continue following the road |goto 59.23,41.66 < 20 |only if walking
talk Apothecary Jerrod##38977
turnin Garren's Haunt##24991 |goto 61.65,34.55
accept Doom Weed##24994 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
accept Graverobbers##24997 |goto 61.6,34.4
stickystart "Doom_Weed"
stickystart "Embalming_Ichor"
stickystart "Rot_Hide_Mongrels"
step
kill 8 Rot Hide Graverobber##1941 |q 24997/1 |goto 55.6,42.4
step
label "Doom_Weed"
click Doom Weed##176753
|tip They look like small green and purple plants on the ground around this area.
collect 10 Doom Weed##13702 |q 24994/1 |goto 55.6,42.4
step
label "Rot_Hide_Mongrels"
kill 5 Rot Hide Mongrel##1675 |q 24997/2 |goto 59.0,36.7
step
label "Embalming_Ichor"
Kill Rot Hide enemies around this area
collect 6 Embalming Ichor##2834 |q 24997/3 |goto 59.0,36.7
step
talk Apothecary Jerrod##38977
turnin Doom Weed##24994 |goto 61.65,34.55
accept Off the Scales##24995 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
turnin Graverobbers##24997 |goto 61.6,34.4
accept Maggot Eye##24998 |goto 61.6,34.4
accept Planting the Seed of Fear##24999 |goto 61.6,34.4
step
kill Maggot Eye##1753
|tip Inside the house.
collect Maggot Eye's Paw##3635 |q 24998/1 |goto 58.66,30.74
stickystart "Vile_Fin_Scales"
step
Frighten #12# Vile Fin Tadpoles |q 24999/1 |goto 59.8,27.7
|tip Run next to Vile Fin Tadpoles to frighten them.
|tip Keep chasing them when they run away.
You can find more around [65.1,28.7]
step
label "Vile_Fin_Scales"
Kill Vile Fin enemies around this area
collect 5 Vile Fin Scale##2859 |q 24995/1 |goto 59.8,27.7
step
talk Apprentice Crispin##38978
turnin Maggot Eye##24998 |goto 61.6,34.4
turnin Planting the Seed of Fear##24999 |goto 61.6,34.4
step
talk Apothecary Jerrod##38977
turnin Off the Scales##24995 |goto 61.65,34.56
accept Head for the Mills##25031 |goto 61.65,34.56
step
Follow the road |goto 60.78,32.15 < 30 |only if walking
Continue following the road |goto 58.36,30.94 < 20 |only if walking
Follow the road up |goto 56.23,27.53 < 20 |only if walking
talk Coleman Farthing##1500
turnin Head for the Mills##25031 |goto 54.6,29.9
accept The Family Crypt##25003 |goto 54.6,29.9
stickystart "Rotting_Ancestors"
step
kill 8 Wailing Ancestor##1534 |q 25003/1 |goto 52.1,29.8
step
label "Rotting_Ancestors"
kill 8 Rotting Ancestor##1530 |q 25003/2 |goto 52.1,29.8
step
talk Coleman Farthing##1500
turnin The Family Crypt##25003 |goto 54.6,29.9
accept The Mills Overrun##25004 |goto 54.6,29.9
accept Deaths in the Family##25029 |goto 54.6,29.9
stickystart "Notched_Ribs"
stickystart "Blackened_Skulls"
step
Follow the path |goto 52.47,30.67 < 30 |only if walking
Cross the bridge |goto 50.32,29.61 < 20 |only if walking
kill Thurman Agamand##1656
collect Thurman's Remains##2830 |q 25029/3 |goto 46.0,30.3
step
kill Gregor Agamand##1654
collect Gregor's Remains##2829 |q 25029/2 |goto 45.6,29.6
step
kill Devlin Agamand##1657
collect Devlin's Remains##2831 |q 25029/4 |goto 48.95,33.91
step
kill Nissa Agamand##1655
|tip She can either be upstairs or downstairs inside the building.
collect Nissa's Remains##2828 |q 25029/1 |goto 49.67,36.15
step
label "Notched_Ribs"
kill Cracked Skull Soldier##1523+
collect 5 Notched Rib##3162 |q 25004/1 |goto 47.6,32.4
step
label "Blackened_Skulls"
kill Darkeye Bonecaster##1522+
collect 3 Blackened Skull##3163 |q 25004/2 |goto 47.6,32.4
step
Follow the path |goto 49.34,34.96 < 30 |only if walking
Follow the path |goto 50.78,32.43 < 30 |only if walking
Follow the road |goto 51.61,30.65 < 20 |only if walking
talk Coleman Farthing##1500
turnin The Mills Overrun##25004 |goto 54.6,29.9
turnin Deaths in the Family##25029 |goto 54.6,29.9
accept Speak with Sevren##25005 |goto 54.6,29.9
step
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin Speak with Sevren##25005 |goto 61.0,50.4
accept The Grasp Weakens##25006 |goto 61.0,50.4
step
talk Executor Zygand##1515
accept Warchief's Command: Silverpine Forest!##26964 |goto 60.53,51.87
step
talk Shadow Priestess Malia##39117
|tip Inside the building.
Tell her _"I am ready."_
|tip Follow her upstairs.
kill Spirit of Devlin Agamand##38980
Complete the Procedure |q 25006/1 |goto 62.03,52.95
step
Enter the building |goto 60.8,51.9 < 10 |walk
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin The Grasp Weakens##25006 |goto 61.0,50.4
accept East... Always to the East##25007 |goto 61.0,50.4
step
talk Apothecary Dithers##11057
accept Grisly Grizzlies##25056 |goto 83.28,69.23
step
talk High Executor Derrington##10837
turnin East... Always to the East##25007 |goto 83.26,68.99
accept At War With The Scarlet Crusade##25009 |goto 83.26,68.99
step
talk Provisioner Elda##46271
home The Bulwark |goto 83.1,72.0 |q 25009
step
kill Plagued Bruin##39049+
collect 5 Plagued Bruin Hide##52270 |q 25056/1 |goto 79.9,67.7
stickystart "Scarlet_Friars"
step
Follow the path |goto 79.34,59.98 < 30 |only if walking
Follow the path up |goto 79.66,57.73 < 30 |only if walking
kill 3 Scarlet Zealot##1537 |q 25009/1 |goto 79.7,56.6
step
label "Scarlet_Friars"
kill 4 Scarlet Friar##1538 |q 25009/2 |goto 79.7,56.6
step
Follow the path down |goto 79.85,56.73 < 20 |only if walking
Follow the path |goto 80.15,62.47 < 20 |only if walking
Follow the path |goto 83.21,67.86 < 20 |only if walking
talk High Executor Derrington##10837
turnin At War With The Scarlet Crusade##25009 |goto 83.27,68.98
accept A Deadly New Ally##25010 |goto 83.27,68.98
step
talk Apothecary Dithers##11057
turnin Grisly Grizzlies##25056 |goto 83.3,69.2
accept A Little Oomph##25013 |goto 83.3,69.2
step
Follow the path |goto 83.19,67.78 < 15 |only if walking
Follow the path |goto 80.39,62.95 < 30 |only if walking
Follow the path |goto 81.5,57.8 < 15 |only if walking
kill Vicious Night Web Spider##1555+
collect 4 Vicious Night Web Spider Venom##2872 |q 25013/1 |goto 84.4,52.1
step
talk Lieutenant Sanders##13158
|tip He's hanging upside down from a chain.
turnin A Deadly New Ally##25010 |goto 87.5,43.3
accept A Daughter's Embrace##25046 |goto 87.5,43.3
step
Follow the road |goto 81.5,43.0 < 20 |only if walking
Follow the path |goto 81.19,40.58 < 20 |only if walking
Follow the road |goto 78.74,38.02 < 20 |only if walking
Continue following the road |goto 79.29,30.76 < 20 |only if walking
Watch the dialogue
|tip Inside of the tower.
Accomplish Lillian's Mission |q 25046/1 |goto 79.49,25.35
step
talk Apothecary Dithers##11057
turnin A Little Oomph##25013 |goto 83.28,69.23
step
talk High Executor Derrington##10837
turnin A Daughter's Embrace##25046 |goto 83.27,68.98
accept To Bigger and Better Things##25011 |goto 83.27,68.98
step
talk Timothy Cunningham##37915
turnin To Bigger and Better Things##25011 |goto 83.58,69.94
accept Take to the Skies##25012 |goto 83.58,69.94
step
talk Timothy Cunningham##37915
fpath The Bulwark |goto 83.58,69.94
step
talk Timothy Cunningham##37915 |goto 83.58,69.94 |n
Tell him _"I'll take that flight to Brill now."_
Take a Flight to Brill |goto 58.9,51.9 < 30 |noway |c |q 25012
step
talk Executor Zygand##1515
turnin Take to the Skies##25012 |goto 60.53,51.87
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Eversong Woods (1-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Eversong 5-12",
next="Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Ghostlands (10-60)",
startlevel=1,
endlevel=10,
},[[
step
Run down the stairs |goto Sunstrider Isle/0 58.19,45.08 < 7 |only if walking
Follow the road |goto Sunstrider Isle/0 53.24,61.21 < 10 |only if walking
Continue following the road |goto Sunstrider Isle/0 57.19,67.32 < 10 |only if walking
Cross the bridge |goto Sunstrider Isle/0 63.47,73.27 < 7 |only if walking
talk Outrunner Alarion##15301
turnin Aiding the Outrunners##8347 |goto Eversong Woods/0 40.42,32.21 |only if havequest(8347) or completedq(8347)
accept Slain by the Wretched##9704 |goto Eversong Woods/0 40.42,32.21
step
Follow the road |goto 41.35,33.73 < 7 |only if walking
clicknpc Slain Outrunner##17849
turnin Slain by the Wretched##9704 |goto 42.03,35.66
accept Package Recovery##9705 |goto 42.03,35.66
step
Follow the road |goto 41.32,33.70 < 7 |only if walking
talk Outrunner Alarion##15301
turnin Package Recovery##9705 |goto 40.42,32.21
accept Completing the Delivery##8350 |goto 40.42,32.21
step
Follow the road |goto 41.33,33.74 < 7 |only if walking
Continue following the road |goto 42.23,36.49 < 7 |only if walking
Continue following the road |goto 44.48,41.93 < 7 |only if walking
Continue following the road |goto 45.47,44.55 < 7 |only if walking
talk Magister Jaronis##15418
accept Major Malfunction##8472 |goto 47.25,46.31
step
Enter the building |goto 47.77,47.31 < 5 |walk
talk Innkeeper Delaniel##15433
|tip Inside the building.
turnin Completing the Delivery##8350 |goto 48.16,47.66
step
talk Innkeeper Delaniel##15433
|tip Inside the building.
home Falconwing Inn |goto 48.16,47.66 |q 8472 |future
step
Leave the building |goto 47.77,47.31 < 3 |walk
click Wanted: Thaelis the Hungerer##180918
accept Wanted: Thaelis the Hungerer##8468 |goto 48.16,46.30
step
talk Aeldon Sunbrand##15403
accept Unstable Mana Crystals##8463 |goto 48.16,46.00
step
talk Skymaster Skyles##44244
fpath Falconwing Square |goto 46.24,46.79
stickystart "Collect_Unstable_Mana_Crystals"
stickystart "Collect_Arcane_Cores"
step
Follow the road |goto 46.19,45.78 < 7 |only if walking
Follow the path down |goto 44.24,40.92 < 7 |only if walking
Follow the path |goto 44.88,39.04 < 7 |only if walking
Enter the building |goto 45.00,38.32 < 5 |walk
kill Thaelis the Hungerer##15949
|tip Inside the building.
collect Thaelis's Head##21781 |q 8468/1 |goto 45.03,37.68
step
label "Collect_Unstable_Mana_Crystals"
Leave the building |goto 45.00,38.27 < 5 |walk
click Unstable Mana Crystal Crate##180600+
|tip They look like yellow glowing light brown wooden boxes on the ground around this area.
collect 6 Unstable Mana Crystal##20743 |q 8463/1 |goto 45.51,39.96
step
label "Collect_Arcane_Cores"
kill Arcane Patroller##15638+
|tip They walk around this area.
collect 6 Arcane Core##21808 |q 8472/1 |goto 46.95,39.95
You can find more around [41.83,39.64]
step
talk Magister Jaronis##15418
turnin Major Malfunction##8472 |goto 47.25,46.32
accept Delivery to the North Sanctum##8895 |goto 47.25,46.32
step
talk Sergeant Kan'ren##16924
turnin Wanted: Thaelis the Hungerer##8468 |goto 47.77,46.58
step
talk Aeldon Sunbrand##15403
turnin Unstable Mana Crystals##8463 |goto 48.17,46.00
accept Darnassian Intrusions##9352 |goto 48.17,46.00
step
Follow the path |goto 46.56,48.05 < 7 |only if walking
Run down the stairs |goto 46.54,49.34 < 7 |only if walking
Follow the path |goto 45.54,51.48 < 10 |only if walking
talk Ley-Keeper Caidanis##15405
turnin Delivery to the North Sanctum##8895 |goto 44.63,53.13
accept Malfunction at the West Sanctum##9119 |goto 44.63,53.13
step
Follow the path |goto 45.00,55.07 < 10 |only if walking
talk Apprentice Ralen##15941
accept Roadside Ambush##9035 |goto 45.19,56.43
step
Follow the road |goto 44.80,58.20 < 7 |only if walking
Follow the path |goto 44.69,60.08 < 7 |only if walking
talk Apprentice Meledor##15945
turnin Roadside Ambush##9035 |goto 44.88,61.03
accept Soaked Pages##9062 |goto 44.88,61.03
step
click Soaked Tome##181110
|tip It looks like a black book underwater.
collect Antheol's Elemental Grimoire##22414 |q 9062/1 |goto 44.34,61.99
step
talk Apprentice Meledor##15945
turnin Soaked Pages##9062 |goto 44.88,61.03
accept Taking the Fall##9064 |goto 44.88,61.03
step
Follow the path |goto 44.79,60.44 < 7 |only if walking
Follow the road |goto 43.19,57.70 < 10 |only if walking
Follow the road |goto 41.89,55.39 < 10 |only if walking
Cross the bridge |goto 39.15,56.60 < 7 |only if walking
Follow the road |goto 38.12,56.87 < 7 |only if walking
talk Ley-Keeper Velania##15401
turnin Malfunction at the West Sanctum##9119 |goto 36.70,57.44
accept Arcane Instability##8486 |goto 36.70,57.44
stickystart "Accept_Incriminating_Documents"
stickystart "Kill_Manawraiths"
stickystart "Kill_Mana_Stalkers"
step
Run down the stairs |goto 36.24,57.73 < 7 |only if walking
Follow the path |goto 35.90,58.47 < 7 |only if walking
Continue following the path |goto 35.73,59.67 < 7 |only if walking
Run up the stairs |goto 34.53,61.10 < 7 |only if walking
kill Darnassian Scout##15968+
Defeat an Intruder |q 9352/1 |goto 33.90,61.53
step
label "Accept_Incriminating_Documents"
kill Darnassian Scout##15968+
accept Incriminating Documents##8482 |goto 33.90,61.53
|tip You will eventually automatically accept this quest after looting.
step
label "Kill_Manawraiths"
Run down the stairs |goto 34.34,61.45 < 7 |only if walking
kill 5 Manawraith##15648 |q 8486/1 |goto 35.18,60.37
step
label "Kill_Mana_Stalkers"
kill 5 Mana Stalker##15647 |q 8486/2 |goto 35.18,60.37
step
Run up the stairs |goto 36.05,57.89 < 7 |only if walking
talk Ley-Keeper Velania##15401
turnin Arcane Instability##8486 |goto 36.70,57.44
turnin Darnassian Intrusions##9352 |goto 36.70,57.44
step
Run down the stairs |goto 36.24,57.72 < 7 |only if walking
Follow the path |goto 35.91,58.45 < 7 |only if walking
Continue following the path |goto 35.82,59.52 < 7 |only if walking
Run up the stairs |goto 34.50,61.14 < 7 |only if walking
Follow the path |goto 33.94,61.70 < 7 |only if walking
Follow the path |goto 32.84,60.63 < 7 |only if walking
Continue following the path |goto 31.39,60.96 < 7 |only if walking
talk Hathvelion Sungaze##15920
|tip He walks around this area.
accept Fish Heads, Fish Heads...##8884 |goto 30.08,58.38
stickystart "Accept_Captain_Kelisendras_Lost_Rutters"
step
Jump down here |goto 29.57,58.47 < 7 |only if walking
Follow the path |goto 28.89,59.00 < 10 |only if walking
Kill Grimscale enemies around this area
collect 8 Grimscale Murloc Head##21757 |q 8884/1 |goto 26.66,61.70
step
label "Accept_Captain_Kelisendras_Lost_Rutters"
Kill Grimscale enemies around this area
accept Captain Kelisendra's Lost Rutters##8887 |goto 26.66,61.70
|tip You will eventually automatically accept this quest after looting.
step
Follow the path |goto 27.71,63.46 < 15 |only if walking
Follow the path up |goto 29.95,63.16 < 7 |only if walking
Follow the path up |goto 30.56,61.00 < 7 |only if walking
Follow the road |goto 30.77,59.56 < 7 |only if walking
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin Fish Heads, Fish Heads...##8884 |goto 30.08,58.38
accept The Ring of Mmmrrrggglll##8885 |goto 30.08,58.38
step
Leave the building |goto 47.77,47.30 < 3 |walk
Follow the path |goto 47.74,46.64 < 7 |only if walking
talk Aeldon Sunbrand##15403
turnin Incriminating Documents##8482 |goto 48.17,46.00
accept The Dwarven Spy##8483 |goto 48.17,46.00
step
Follow the path |goto 46.56,48.03 < 7 |only if walking
Follow the path |goto 46.54,49.20 < 7 |only if walking
Continue following the path |goto 45.60,51.68 < 10 |only if walking
talk Prospector Anvilward##15420
|tip He walks around this area and inside the building.
Tell him _"I need a moment of your time, sir."_
Watch the dialogue
|tip Follow him as he walks.
kill Prospector Anvilward##15420
collect Prospector Anvilward's Head##20764 |q 8483/1 |goto 44.57,53.30
step
Leave the building |goto 44.49,53.18 < 3 |walk
Follow the path |goto 45.79,51.79 < 7 |only if walking
Continue following the path |goto 46.55,49.19 < 7 |only if walking
Continue following the path |goto 46.55,48.01 < 7 |only if walking
talk Aeldon Sunbrand##15403
turnin The Dwarven Spy##8483 |goto 48.17,46.00
accept Fairbreeze Village##9256 |goto 48.17,46.00
step
Follow the path |goto 46.54,48.08 < 7 |only if walking
Follow the path |goto 46.56,49.25 < 7 |only if walking
Continue following the path |goto 47.82,51.15 < 10 |only if walking
Continue following the path |goto 49.37,51.03 < 10 |only if walking
talk Ranger Jaela##15416
accept The Dead Scar##8475 |goto 50.33,50.77
step
Follow the path |goto 50.31,52.33 < 10 |only if walking
kill 8 Plaguebone Pillager##15654 |q 8475/1 |goto 50.37,56.51
step
Follow the path |goto 50.31,52.33 < 10 |only if walking
talk Ranger Jaela##15416
turnin The Dead Scar##8475 |goto 50.33,50.77
step
Follow the path |goto 50.98,51.45 < 10 |only if walking
Continue following the path |goto 51.80,52.61 < 7 |only if walking
Continue following the path |goto 54.07,53.78 < 10 |only if walking
talk Instructor Antheol##15970
turnin Taking the Fall##9064 |goto 55.70,54.51
accept Swift Discipline##9066 |goto 55.70,54.51
step
Follow the path |goto 54.82,52.31 < 10 |only if walking
talk Skymistress Gloaming##16192
fpath Silvermoon City |goto 54.37,50.73
step
Follow the path |goto 52.34,53.61 < 10 |only if walking
Follow the road |goto 49.08,55.72 < 10 |only if walking
Continue following the road |goto 47.01,54.69 < 7 |only if walking
Continue following the road |goto 46.18,55.03 < 7 |only if walking
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Ralen.
Discipline Apprentice Ralen |q 9066/2 |goto 45.19,56.43
step
Follow the road |goto 44.81,58.21 < 7 |only if walking
Follow the path |goto 44.66,60.00 < 7 |only if walking
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Meledor.
Discipline Apprentice Meledor |q 9066/1 |goto 44.87,61.03
step
Follow the path up |goto 44.82,62.44 < 7 |only if walking
Follow the road |goto 44.70,65.25 < 10 |only if walking
Follow the road up |goto 43.99,67.70 < 10 |only if walking
Follow the path |goto 44.17,69.28 < 7 |only if walking
talk Velan Brightoak##15417
accept Pelt Collection##8491 |goto 44.72,69.62
step
talk Skymaster Brightdawn##44036
fpath Fairbreeze Village |goto 43.95,69.98
step
Follow the path up |goto 44.15,70.57 < 5 |only if walking
talk Magistrix Landra Dawnstrider##16210
accept Saltheril's Haven##9395 |goto 44.03,70.76
accept The Wayward Apprentice##9254 |goto 44.03,70.76
step
Enter the building |goto 43.82,71.04 < 5 |walk
talk Marniel Amberlight##15397
|tip Inside the building.
accept Ranger Sareyn##9358 |goto 43.67,71.31
step
talk Marniel Amberlight##15397
|tip Inside the building.
home Fairbreeze Village |goto 43.67,71.31 |q 8490 |future
step
talk Ardeyn Riverwind##16397
|tip Inside the building.
accept The Scorched Grove##9258 |goto 43.57,71.20
step
talk Sathiel##16261
|tip Inside the building.
accept Goods from Silvermoon City##9130 |goto 43.70,71.56
|only if BloodElf
step
Leave the building |goto 43.83,71.01 < 3 |walk
Run up the ramp |goto 43.77,70.73 < 3 |only if walking
Run up the ramp |goto 43.60,70.65 < 3 |only if walking
talk Ranger Degolien##15939
|tip On the balcony of the building.
turnin Fairbreeze Village##9256 |goto 43.35,70.82
accept Situation at Sunsail Anchorage##8892 |goto 43.35,70.82
step
talk Skymaster Brightdawn##44036
turnin Goods from Silvermoon City##9130 |goto 43.95,69.98
accept Fly to Silvermoon City##9133 |goto 43.95,69.98
|only if BloodElf
step
talk Skymaster Brightdawn##44036 |goto 43.95,69.98
Take a Flight to Silvermoon City |goto 54.38,50.76 < 10 |noway |c |q 9133
|only if BloodElf
step
Follow the path |goto 54.76,52.24 < 10 |only if walking
talk Instructor Antheol##15970
turnin Swift Discipline##9066 |goto 55.70,54.50
step
Follow the path |goto 56.41,53.58 < 10 |only if walking
Continue following the path |goto 56.65,51.44 < 7 |only if walking
Continue following the path |goto 56.75,49.52 < 5 |only if walking
Continue following the path |goto 57.12,49.33 < 3 |only if walking
Continue following the path |goto Silvermoon City/0 74.04,86.27 < 3 |only if walking
Follow the path |goto 72.49,85.32 < 5 |only if walking
Run up the stairs |goto 70.65,77.45 < 7 |only if walking
Enter the building |goto 69.25,77.02 < 5 |walk
Follow the path |goto 68.60,76.75 < 3 |walk
Follow the path |goto 68.36,74.10 < 3 |walk
Follow the path |goto 66.60,73.52 < 3 |walk
Leave the building |goto 65.57,72.57 < 3 |walk
Follow the path |goto 60.83,71.15 < 10 |only if walking
Enter the building |goto 55.31,71.04 < 5 |walk
talk Sathren Azuredawn##16191
|tip Inside the building.
turnin Fly to Silvermoon City##9133 |goto Silvermoon City/0 53.93,71.00
accept Skymistress Gloaming##9134 |goto Silvermoon City/0 53.93,71.00
|only if BloodElf
step
Leave the building |goto 55.32,71.03 < 3 |walk
Follow the path |goto 60.97,71.19 < 10 |only if walking
Enter the building |goto 65.64,72.55 < 5 |walk
Follow the path |goto 66.62,73.40 < 3 |walk
Follow the path |goto 68.44,74.09 < 3 |walk
Follow the path |goto 68.63,76.94 < 3 |walk
Leave the building |goto 69.26,77.01 < 3 |walk
Follow the path |goto 71.60,78.38 < 7 |only if walking
Follow the path |goto 71.90,85.87 < 5 |only if walking
Continue following the path |goto 70.52,86.38 < 3 |only if walking
Continue following the path |goto Eversong Woods/0 56.26,49.36 < 3 |only if walking
Continue following the path |goto 56.58,49.56 < 5 |only if walking
Run down the stairs |goto 56.41,50.19 < 5 |only if walking
Follow the path |goto 56.24,50.74 < 7 |only if walking
Follow the path |goto 55.24,50.96 < 10 |only if walking
talk Skymistress Gloaming##16192
turnin Skymistress Gloaming##9134 |goto Eversong Woods/0 54.37,50.73
accept Return to Sathiel##9135 |goto Eversong Woods/0 54.37,50.73
|only if BloodElf
step
Follow the path up |goto 44.16,70.58 < 5 |only if walking
Enter the building |goto 43.82,71.04 < 5 |walk
talk Sathiel##16261
|tip Inside the building.
turnin Return to Sathiel##9135 |goto 43.70,71.56
|only if BloodElf
step
Follow the path |goto 54.80,52.33 < 10 |c |q 8491
|only if not BloodElf
step
Leave the building |goto 43.83,71.02 < 3 |walk
Follow the road |goto 44.34,70.16 < 7 |c |q 8491
|only if BloodElf
step
Follow the path |goto 44.17,68.89 < 7 |only if walking
Jump down here |goto 44.44,68.19 < 7 |only if walking
kill Springpaw Stalker##15651+
|tip You can find more to the west.
collect 6 Springpaw Pelt##20772 |q 8491/1 |goto 45.68,65.78
step
Follow the road |goto 42.06,67.87 < 15 |only if walking
Follow the path |goto 40.69,70.35 < 10 |only if walking
Enter the building |goto 38.23,73.21 < 5 |walk
talk Lord Saltheril##16144
|tip Inside the building.
turnin Saltheril's Haven##9395 |goto 38.14,73.56
accept The Party Never Ends##9067 |goto 38.14,73.56
step
Leave the building |goto 38.23,73.21 < 3 |walk
Follow the path |goto 38.33,71.81 < 10 |only if walking
Follow the road down |goto 38.00,69.47 < 7 |only if walking
Follow the path |goto 37.39,67.88 < 7 |only if walking
talk Velendris Whitemorn##15404
accept Lost Armaments##8480 |goto 36.36,66.78
step
talk Captain Kelisendra##15921
turnin Captain Kelisendra's Lost Rutters##8887 |goto 36.36,66.63
accept Grimscale Pirates!##8886 |goto 36.36,66.63
stickystart "Kill_Wretched_Thugs"
stickystart "Kill_Wretched_Hooligans"
step
Follow the road |goto 36.17,67.87 < 7 |only if walking
Follow the road |goto 34.10,70.60 < 7 |only if walking
Continue following the road |goto 32.86,71.65 < 7 |only if walking
click Weapon Container##181107+
|tip They look like wooden crates on the ground and inside the building around this area.
collect 8 Sin'dorei Armaments##22413 |q 8480/1 |goto 32.79,70.50
step
label "Kill_Wretched_Thugs"
kill 5 Wretched Thug##15645 |q 8892/1 |goto 32.79,70.50
step
label "Kill_Wretched_Hooligans"
kill 5 Wretched Hooligan##16162 |q 8892/2 |goto 32.79,70.50
stickystart "Collect_Captain_Kelisendras_Cargo"
step
Follow the path |goto 30.14,69.49 < 10 |only if walking
Continue following the path |goto 28.99,69.50 < 10 |only if walking
Continue following the path |goto 27.24,68.71 < 10 |only if walking
Continue following the path |goto 25.83,69.73 < 10 |only if walking
kill Mmmrrrggglll##15937
|tip He looks like a larger orange murloc that walks along the beach around this area.
collect Ring of Mmmrrrggglll##21770 |q 8885/1 |goto 24.54,72.30
step
label "Collect_Captain_Kelisendras_Cargo"
click Captain Kelisendra's Cargo##180917+
|tip They look like wooden barrels on the ground next to murloc huts around this area.
collect 6 Captain Kelisendra's Cargo##21771 |q 8886/1 |goto 24.79,69.28
step
Follow the path |goto 26.26,66.77 < 10 |only if walking
Continue following the path |goto 26.62,64.39 < 7 |only if walking
Follow the path up |goto 29.96,63.28 < 7 |only if walking
Follow the path up |goto 30.63,60.52 < 7 |only if walking
Follow the path |goto 30.73,59.49 < 7 |only if walking
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin The Ring of Mmmrrrggglll##8885 |goto 30.10,58.32
step
Follow the path down |goto 31.25,60.92 < 10 |only if walking
Follow the path |goto 31.17,63.80 < 7 |only if walking
Continue following the path |goto 32.15,64.74 < 7 |only if walking
Continue following the path |goto 33.46,64.31 < 10 |only if walking
Continue following the path |goto 36.33,66.35 < 7 |only if walking
talk Captain Kelisendra##15921
turnin Grimscale Pirates!##8886 |goto 36.36,66.61
step
talk Velendris Whitemorn##15404
turnin Lost Armaments##8480 |goto 36.36,66.77
accept Wretched Ringleader##9076 |goto 36.36,66.77
step
Follow the road |goto 36.17,67.87 < 7 |only if walking
Follow the road |goto 34.10,70.60 < 7 |only if walking
Run up the ramp |goto 32.82,71.19 < 7 |only if walking
Follow the path |goto 32.77,68.70 < 5 |only if walking
Run up the ramp |goto 32.62,68.44 < 5 |c |q 9076
step
Run up the ramp |goto 32.12,69.13 < 5 |only if walking
Run up the ramp |goto 32.20,70.00 < 5 |only if walking
Follow the path |goto 32.57,70.46 < 5 |only if walking
Follow the path |goto 32.80,70.24 < 3 |only if walking
Continue following the path |goto 32.62,69.52 < 5 |only if walking
Continue following the path |goto 32.75,68.89 < 3 |only if walking
Run up the ramp |goto 32.93,68.76 < 3 |c |q 9076
step
Run up the ramp |goto 33.21,69.18 < 3 |only if walking
Continue up the ramp |goto 33.19,69.77 < 3 |only if walking
Follow the path |goto 32.73,70.09 < 5 |only if walking
kill Aldaron the Reckless##16294
|tip He walks around this area at the top of the building.
collect Aldaron's Head##22487 |q 9076/1 |goto 32.80,69.40
step
Jump down carefully into the water here |goto 32.76,68.54 < 5 |only if walking
Follow the path |goto 33.84,66.18 < 7 |only if walking
Continue following the path |goto 34.72,65.98 < 7 |only if walking
Follow the path |goto 36.32,66.35 < 5 |only if walking
talk Velendris Whitemorn##15404
turnin Wretched Ringleader##9076 |goto 36.36,66.77
step
Follow the road |goto 36.24,67.76 < 7 |only if walking
Follow the road |goto 33.00,71.92 < 10 |only if walking
Continue following the road |goto 32.97,74.37 < 10 |only if walking
Continue following the road |goto 33.15,76.35 < 10 |only if walking
Continue following the road |goto 33.27,79.53 < 10 |only if walking
Enter the building |goto 33.86,80.03 < 5 |walk
talk Larianna Riverwind##15398
|tip Inside the building.
turnin The Scorched Grove##9258 |goto 34.06,80.02
accept A Somber Task##8473 |goto 34.06,80.02
stickystart "Kill_Withered_Green_Keepers"
step
Leave the building |goto 33.87,80.03 < 3 |walk
Follow the path |goto 33.74,80.69 < 7 |only if walking
Follow the path |goto 34.46,81.54 < 7 |only if walking
kill Old Whitebark##15409
|tip He walks around this area.
accept Old Whitebark's Pendant##8474 |goto 35.08,84.02
|tip You will automatically accept this quest after looting.
step
label "Kill_Withered_Green_Keepers"
kill 10 Withered Green Keeper##15637 |q 8473/1 |goto 34.96,85.03
step
Follow the path |goto 33.56,81.45 < 15 |only if walking
Enter the building |goto 33.87,80.03 < 5 |walk
talk Larianna Riverwind##15398
|tip Inside the building.
turnin A Somber Task##8473 |goto 34.06,80.02
turnin Old Whitebark's Pendant##8474 |goto 34.06,80.02
accept Whitebark's Memory##10166 |goto 34.06,80.02
step
Leave the building |goto 33.86,80.03 < 3 |walk
Follow the path |goto 33.80,80.67 < 7 |only if walking
Continue following the path |goto 35.85,84.07 < 10 |only if walking
use Old Whitebark's Pendant##28209
kill Whitebark's Spirit##19456
|tip He will eventually surrender.
talk Whitebark's Spirit##19456
turnin Whitebark's Memory##10166 |goto 37.53,86.22
step
Leave the building |goto 43.83,71.03 < 3 |walk
talk Magistrix Landra Dawnstrider##16210
accept Missing in the Ghostlands##9144 |goto 44.03,70.76
step
Run up the ramp |goto 43.77,70.74 < 3 |only if walking
Run up the ramp |goto 43.62,70.66 < 3 |only if walking
talk Ranger Degolien##15939
|tip On the balcony of the building.
turnin Situation at Sunsail Anchorage##8892 |goto 43.35,70.83
accept Farstrider Retreat##9359 |goto 43.35,70.83
step
talk Halis Dawnstrider##16444
buy Bundle of Fireworks##22777 |q 9067/3 |goto 44.04,70.35
step
talk Velan Brightoak##15417
turnin Pelt Collection##8491 |goto 44.72,69.63
step
Follow the road |goto 45.66,70.88 < 10 |only if walking
talk Ranger Sareyn##15942
turnin Ranger Sareyn##9358 |goto 46.93,71.79
accept Defending Fairbreeze Village##9252 |goto 46.93,71.79
stickystart "Kill_Darkwraiths"
step
Follow the road |goto 46.84,73.48 < 7 |only if walking
Continue following the path |goto 47.51,74.15 < 7 |only if walking
Continue following the path |goto 48.62,76.78 < 10 |only if walking
Follow the path |goto 49.70,78.16 < 10 |only if walking
kill 4 Rotlimb Marauder##15658 |q 9252/1 |goto 51.00,79.18
step
label "Kill_Darkwraiths"
kill 4 Darkwraith##15657 |q 9252/2 |goto 51.00,79.18
step
Follow the path |goto 51.12,76.44 < 15 |only if walking
Continue following the path |goto 51.91,73.65 < 15 |only if walking
Continue following the path |goto 52.66,71.93 < 15 |only if walking
Run up the stairs |goto 53.90,70.94 < 7 |only if walking
talk Apprentice Mirveda##15402
turnin The Wayward Apprentice##9254 |goto 54.28,70.97
accept Corrupted Soil##8487 |goto 54.28,70.97
step
Follow the path |goto 53.02,71.18 < 7 |only if walking
click Tainted Soil Sample##180921+
|tip They look like green glowing piles of dirt on the ground around this area.
collect 8 Tainted Soil Sample##20771 |q 8487/1 |goto 51.48,69.91
step
Follow the path |goto 52.56,71.13 < 15 |only if walking
Run up the stairs |goto 53.90,70.95 < 7 |only if walking
talk Apprentice Mirveda##15402
turnin Corrupted Soil##8487 |goto 54.28,70.97
step
Watch the dialogue
talk Apprentice Mirveda##15402
accept Unexpected Results##8488 |goto 54.28,70.97
step
Kill the enemies that attack
kill Gharsul the Remorseless##15958 |q 8488/2 |goto 53.88,70.17
step
Run up the stairs |goto 54.11,70.63 < 7 |only if walking
talk Apprentice Mirveda##15402
turnin Unexpected Results##8488 |goto 54.28,70.97
accept Research Notes##9255 |goto 54.28,70.97
step
Follow the path |goto 53.81,71.79 < 10 |only if walking
Continue following the path |goto 52.83,73.21 < 10 |only if walking
Follow the path up |goto 49.85,73.64 < 7 |only if walking
Follow the path |goto 48.67,74.91 < 10 |only if walking
Follow the road |goto 47.38,74.08 < 7 |only if walking
Continue following the road |goto 46.77,73.18 < 7 |only if walking
talk Ranger Sareyn##15942
turnin Defending Fairbreeze Village##9252 |goto 46.93,71.79
accept Runewarden Deryan##9253 |goto 46.93,71.79
step
Follow the road |goto 46.33,71.16 < 7 |only if walking
Run up the ramp |goto 44.17,70.59 < 5 |only if walking
talk Magistrix Landra Dawnstrider##16210
turnin Research Notes##9255 |goto 44.03,70.76
step
Follow the path |goto 55.30,50.95 < 10 |only if walking
Run up the stairs |goto 56.39,50.51 < 5 |only if walking |notravel
Follow the path |goto 56.43,50.16 < 5 |only if walking |notravel
Follow the path |goto 56.83,49.46 < 5 |only if walking |notravel
Continue following the path |goto 57.14,49.26 < 3 |only if walking
Continue following the path |goto Silvermoon City/0 74.15,86.36 < 3 |walk |notravel
Continue following the path |goto Silvermoon City/0 72.75,85.24 < 3 |walk
Follow the road |goto Silvermoon City/0 72.89,60.06 < 7 |only if walking
Follow the path |goto Silvermoon City/0 74.52,56.15 < 3 |only if walking
Continue following the path |goto Silvermoon City/0 75.55,58.78 < 5 |only if walking
Enter the building |goto Silvermoon City/0 78.24,59.27 < 3 |walk
Follow the path |goto Silvermoon City/0 79.18,60.18 < 3 |walk
talk Vinemaster Suntouched##16442
|tip Inside the building.
buy Suntouched Special Reserve##22775 |q 9067/1 |goto Silvermoon City/0 79.5,58.5
step
Follow the path |goto 79.25,60.23 < 3 |walk
Leave the building |goto 78.17,59.29 < 3 |walk
Follow the path |goto 75.39,58.46 < 5 |only if walking
Continue following the path |goto 74.48,56.37 < 3 |only if walking
Continue following the path |goto 73.31,59.29 < 5 |only if walking
Follow the road |goto 72.25,61.59 < 7 |only if walking
Follow the path |goto 72.92,85.66 < 5 |only if walking |notravel
Continue following the path |goto 74.39,86.54 < 3 |only if walking |notravel
Continue following the path |goto Eversong Woods/0 57.09,49.35 < 3 |only if walking |notravel
Continue following the path |goto Eversong Woods/0 56.70,49.62 < 5 |only if walking |notravel
Follow the road |goto Eversong Woods/0 56.75,52.74 < 7 |only if walking |notravel
Continue following the road |goto Eversong Woods/0 58.49,54.40 < 7 |only if walking
Follow the road up |goto Eversong Woods/0 59.94,54.85 < 7 |only if walking
Follow the road |goto Eversong Woods/0 60.95,58.06 < 7 |only if walking
Run up the ramp |goto Eversong Woods/0 60.31,61.09 < 5 |only if walking
Enter the building |goto Eversong Woods/0 60.32,61.43 < 3 |walk
talk Zalene Firstlight##16443
|tip Inside the building.
buy Springpaw Appetizers##22776 |q 9067/2 |goto Eversong Woods/0 60.41,62.46
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Farstrider Retreat##9359 |goto 60.32,62.76
accept Amani Encroachment##8476 |goto 60.32,62.76
step
Leave the building |goto 59.95,62.44 < 3 |walk
talk Arathel Sunforge##15400
|tip On a balcony inside the building.
accept The Spearcrafter's Hammer##8477 |goto 59.53,62.60
step
Run up the ramp |goto 59.41,62.46 < 3 |only if walking
Run up the ramp |goto 59.58,62.00 < 3 |only if walking
Follow the path |goto 60.01,61.79 < 3 |only if walking
talk Magister Duskwither##15951
|tip Upstairs on a balcony inside the building.
accept The Magister's Apprentice##8888 |goto 60.31,61.38
step
Follow the path up |goto 61.20,60.41 < 10 |only if walking
Follow the road up |goto 63.43,58.72 < 7 |only if walking
Continue following the road |goto 64.91,58.46 < 7 |only if walking
Continue following the road |goto 66.56,58.58 < 7 |only if walking
talk Apprentice Loralthalis##15924
|tip She walks around this small area.
turnin The Magister's Apprentice##8888 |goto 67.80,56.55
accept Deactivating the Spire##8889 |goto 67.80,56.55
accept Where's Wyllithen?##9394 |goto 67.80,56.55
step
Run up the stairs |goto 68.49,52.37 < 7 |only if walking
click Orb of Translocation##184500 |goto 68.92,51.97
Teleport Up to the Building |goto 67.5,52.1 < 10 |noway |c |q 8889
step
Run up the stairs |goto 68.17,51.46 < 5 |only if walking
Follow the path |goto 68.69,51.60 < 5 |only if walking
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the First Power Source |q 8889/1 |goto 68.95,51.93
step
Run up the stairs |goto 69.14,52.14 < 3 |walk
Run up the stairs |goto 69.15,51.75 < 3 |walk
Run up the stairs |goto 68.80,51.71 < 3 |walk
Follow the path |goto 68.77,52.07 < 3 |walk
click Duskwither Spire Power Source##180920
|tip Upstairs inside the floating building.
Deactivate the Second Power Source |q 8889/2 |goto 68.96,51.97
step
click Magister Duskwither's Journal##181011
|tip Upstairs inside the floating building.
accept Abandoned Investigations##8891 |goto 69.24,52.10
step
Leave the building |goto 69.34,51.98 < 3 |walk
Run up the stairs |goto 69.53,52.00 < 3 |only if walking
Run up the stairs |goto 69.88,52.40 < 5 |only if walking
Follow the path |goto 69.79,53.08 < 5 |only if walking
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the Third Power Source |q 8889/3 |goto 69.65,53.33
step
click Orb of Translocation##184500 |goto 69.63,53.42
|tip On the floating platform.
Teleport to the Ground |goto 68.90,52.00 < 10 |noway |c |q 8889
step
Follow the road |goto 68.00,52.54 < 7 |only if walking
Continue following the road |goto 67.55,47.90 < 7 |only if walking
talk Groundskeeper Wyllithen##15969
turnin Where's Wyllithen?##9394 |goto 68.71,46.95
accept Cleaning up the Grounds##8894 |goto 68.71,46.95
stickystart "Kill_Ether_Fiends"
step
kill 6 Mana Serpent##15966 |q 8894/1 |goto 69.17,47.84
step
label "Kill_Ether_Fiends"
kill 6 Ether Fiend##15967 |q 8894/2 |goto 69.17,47.84
step
talk Groundskeeper Wyllithen##15969
turnin Cleaning up the Grounds##8894 |goto 68.71,46.95
step
Follow the road up |goto 67.56,48.05 < 7 |only if walking
Follow the road up |goto 67.76,51.34 < 7 |only if walking
Continue following the road |goto 68.38,54.22 < 7 |only if walking
talk Apprentice Loralthalis##15924
|tip She walks around this small area.
turnin Deactivating the Spire##8889 |goto 67.80,56.55
accept Word from the Spire##8890 |goto 67.80,56.55
step
Follow the road |goto 66.61,58.54 < 7 |only if walking
Continue following the road |goto 65.56,58.65 < 7 |only if walking
Continue following the road |goto 64.01,58.46 < 7 |only if walking
Follow the path down |goto 62.10,59.91 < 10 |only if walking
Run up the ramp |goto 60.31,61.10 < 5 |only if walking
Enter the building |goto 60.32,61.43 < 5 |c |q 8890
step
Follow the path |goto 60.30,62.33 < 3 |walk
Leave the building |goto 59.91,62.45 < 3 |walk
Run up the stairs |goto 59.73,62.55 < 3 |only if walking
Run up the ramp |goto 59.40,62.50 < 3 |only if walking
Run up the ramp |goto 59.61,61.99 < 3 |only if walking
Follow the path |goto 60.00,61.80 < 3 |only if walking
talk Magister Duskwither##15951
|tip Upstairs on the balcony of the building.
turnin Word from the Spire##8890 |goto 60.31,61.38
turnin Abandoned Investigations##8891 |goto 60.31,61.38
stickystart "Kill_Amani_Berserkers"
stickystart "Kill_Amani_Axe_Throwers"
step
Jump down here |goto 60.63,61.53 < 3 |only if walking
Follow the path |goto 61.30,61.62 < 7 |only if walking
Continue following the path |goto 61.30,63.45 < 7 |only if walking
Follow the path up |goto 61.07,64.17 < 5 |only if walking
Follow the path |goto 61.35,64.68 < 7 |only if walking
Continue following the path |goto 64.98,67.28 < 7 |only if walking
Continue following the path |goto 66.70,69.93 < 7 |only if walking
Continue following the path |goto 67.28,71.72 < 7 |only if walking
Continue following the path |goto 69.49,72.26 < 10 |only if walking
kill Spearcrafter Otembe##15408
collect Otembe's Hammer##20759 |q 8477/1 |goto 70.09,72.28
step
talk Ven'jashi##15406
accept Zul'Marosh##8479 |goto 70.50,72.33
step
Follow the path |goto 69.53,73.78 < 10 |only if walking
Continue following the path |goto 69.32,75.47 < 7 |only if walking
Continue following the path |goto 66.82,79.16 < 7 |only if walking
Continue following the path |goto 64.59,77.99 < 7 |only if walking
Run up the stairs |goto 62.89,79.48 < 5 |only if walking
Enter the building |goto 62.55,79.69 < 5 |c |q 8479
step
Run up the stairs |goto 62.34,80.09 < 3 |walk
Follow the path |goto 62.12,80.04 < 3 |walk
Run up the stairs |goto 61.82,79.94 < 3 |only if walking
Follow the path |goto 61.93,79.47 < 3 |walk
kill Chieftain Zul'Marosh##15407
|tip Upstairs on top of the building.
collect Chieftain Zul'Marosh's Head##20760 |q 8479/1 |goto 62.51,79.68
step
kill Chieftain Zul'Marosh##15407
|tip Inside the building.
accept Amani Invasion##9360 |goto 62.51,79.68
|tip You will automatically accept this quest after looting.
step
Jump down here |goto 61.98,79.38 < 3 |only if walking
Follow the path |goto 62.49,78.72 < 7 |only if walking
Continue following the path |goto 63.34,78.38 < 7 |only if walking
Continue following the path |goto 64.60,78.75 < 7 |only if walking
Continue following the path |goto 66.80,79.02 < 7 |only if walking
Continue following the path |goto 68.86,76.12 < 10 |only if walking
Continue following the path |goto 69.63,73.56 < 10 |only if walking
talk Ven'jashi##15406
turnin Zul'Marosh##8479 |goto 70.50,72.33
step
label "Kill_Amani_Berserkers"
kill 5 Amani Berserker##15643 |q 8476/1 |goto 69.48,74.13
step
label "Kill_Amani_Axe_Throwers"
kill 5 Amani Axe Thrower##15641 |q 8476/2 |goto 69.48,74.13
step
Follow the path |goto 68.66,71.98 < 7 |only if walking
Continue following the path |goto 67.07,71.51 < 7 |only if walking
Continue following the path |goto 66.46,69.31 < 7 |only if walking
Continue following the path |goto 64.81,67.23 < 7 |only if walking
Continue following the path |goto 61.51,64.92 < 10 |only if walking
Run up the ramp |goto 60.48,64.16 < 5 |only if walking
Enter the building |goto 60.46,63.84 < 5 |only if walking
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Amani Encroachment##8476 |goto 60.32,62.77
turnin Amani Invasion##9360 |goto 60.32,62.77
accept Warning Fairbreeze Village##9363 |goto 60.32,62.77
step
Leave the building |goto 59.93,62.44 < 3 |walk
talk Arathel Sunforge##15400
|tip On the balcony of the building.
turnin The Spearcrafter's Hammer##8477 |goto 59.52,62.60
step
Leave the building |goto 43.82,71.03 < 3 |walk
Run up the ramp |goto 43.77,70.71 < 3 |only if walking
Run up the ramp |goto 43.60,70.68 < 3 |only if walking
talk Ranger Degolien##15939
|tip On the balcony of the building.
turnin Warning Fairbreeze Village##9363 |goto 43.35,70.83
step
Follow the path |goto 42.48,71.43 < 7 |only if walking
Follow the path down |goto 40.82,72.11 < 10 |only if walking
Follow the path |goto 39.39,72.16 < 7 |only if walking
Run up the ramp |goto 38.28,73.00 < 5 |only if walking
Enter the building |goto 38.23,73.22 < 5 |walk
talk Lord Saltheril##16144
|tip Inside the building.
turnin The Party Never Ends##9067 |goto 38.14,73.56
step
Leave the building |goto 38.23,73.23 < 3 |walk
Follow the road |goto 39.30,69.72 < 10 |only if walking
Continue following the road |goto 41.26,68.83 < 10 |only if walking
Follow the path up |goto 43.85,67.74 < 7 |only if walking
Continue up the path |goto 44.28,69.86 < 10 |only if walking
Continue up the path |goto 46.06,70.96 < 10 |only if walking
Follow the road |goto 46.75,72.09 < 7 |only if walking
Follow the road |goto 46.82,73.79 < 7 |only if walking
Continue following the road |goto 47.80,75.20 < 7 |only if walking
Continue following the road |goto 49.28,77.75 < 10 |only if walking
Continue following the road |goto 49.29,81.40 < 10 |only if walking
Follow the path |goto 48.28,82.82 < 7 |only if walking
Continue following the path |goto 45.53,85.57 < 7 |only if walking
talk Runewarden Deryan##16362
turnin Runewarden Deryan##9253 |goto 44.20,85.47
accept Powering our Defenses##8490 |goto 44.20,85.47
step
Follow the path |goto 45.47,85.69 < 7 |only if walking
Continue following the path |goto 46.86,85.37 < 10 |only if walking
Continue following the path |goto 49.67,85.74 < 10 |only if walking
Continue following the path |goto 53.29,84.60 < 10 |only if walking
use the Infused Crystal##22693
Kill the enemies that attack
|tip Protect the Infused Crystal.
|tip It appears on the ground next to you.
|tip This will take 1 minute.
Energize the Runestone |q 8490/1 |goto 55.19,84.23
step
Follow the path down |goto 53.88,84.68 < 10 |only if walking
Follow the path |goto 51.67,82.81 < 10 |only if walking
Follow the path up |goto 49.96,82.17 < 10 |only if walking
Follow the path |goto 48.27,82.85 < 7 |only if walking
Continue following the path |goto 45.53,85.52 < 7 |only if walking
talk Runewarden Deryan##16362
turnin Powering our Defenses##8490 |goto 44.20,85.47
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Ghostlands (10-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Ghostlands 12-20",
next="Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Hillsbrad Foothills (15-60)",
startlevel=10,
endlevel=60,
},[[
step
Follow the path |goto Eversong Woods/0 45.50,85.57 < 10 |only if walking
Continue following the path |goto Eversong Woods/0 46.90,85.28 < 10 |only if walking
Follow the road |goto Eversong Woods/0 48.71,87.15 < 10 |only if walking
talk Courier Dawnstrider##16183
turnin Missing in the Ghostlands##9144 |goto Eversong Woods/0 48.98,88.99
|only if havequest(9144)
step
talk Apothecary Thedra##16196
accept The Fallen Courier##9147 |goto 49.02,89.04
step
Cross the bridge |goto 48.62,91.52 < 7 |only if walking
Follow the path |goto Ghostlands/0 48.31,12.66 < 7 |only if walking
Kill enemies around this area
collect 4 Plagued Blood Sample##22570 |q 9147/1 |goto Ghostlands/0 48.99,16.55
step
Cross the bridge |goto 48.35,12.51 < 7 |only if walking
Follow the path |goto Eversong Woods/0 48.66,91.45 < 10 |only if walking
talk Apothecary Thedra##16196
turnin The Fallen Courier##9147 |goto Eversong Woods/0 49.01,89.05
step
talk Courier Dawnstrider##16183
accept Delivery to Tranquillien##9148 |goto 48.98,89.00
step
Cross the bridge |goto 48.63,91.49 < 7 |only if walking
Follow the road |goto Ghostlands/0 48.31,12.64 < 7 |only if walking
Continue following the road |goto Ghostlands/0 46.62,18.62 < 7 |only if walking
Continue following the road |goto Ghostlands/0 46.60,25.61 < 7 |only if walking
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Delivery to Tranquillien##9148 |goto Ghostlands/0 46.50,28.37
|tip You will only be able to accept one of these quests.
accept The Forsaken##9327 |goto Ghostlands/0 46.50,28.37 |or
accept the Forsaken##9329 |goto Ghostlands/0 46.50,28.37 |or
step
Follow the road |goto 46.51,31.19 < 10 |only if walking
Enter the building |goto 45.17,32.37 < 5 |walk
talk High Executor Mavren##16252
|tip Inside the building.
turnin The Forsaken##9329 |goto 44.77,32.45 |only if havequest(9329) or completedq(9329)
turnin The Forsaken##9327 |goto 44.77,32.45 |only if havequest(9327) or completedq(9327)
accept Return to Arcanist Vandril##9758 |goto 44.77,32.45
step
Leave the building |goto 45.17,32.36 < 3 |walk
talk Ranger Lethvalin##16213
accept Help Ranger Valanna!##9145 |goto 45.48,32.45
step
talk Skymaster Sunwing##16189
fpath Tranquillien |goto 45.42,30.53
step
Follow the road |goto 46.21,29.46 < 10 |only if walking
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Return to Arcanist Vandril##9758 |goto 46.50,28.37
accept Suncrown Village##9138 |goto 46.50,28.37
step
Follow the path |goto 46.68,30.46 < 7 |only if walking
Run up the ramp |goto 47.74,31.49 < 5 |only if walking
Enter the building |goto 48.34,31.97 < 5 |walk
talk Innkeeper Kalarin##16542
|tip Inside the building.
home Tranquillien |goto 48.91,32.42 |q 9621 |future
step
Leave the building |goto 48.34,31.97 < 3 |walk
Follow the road |goto 46.58,30.55 < 7 |only if walking
Follow the road |goto 46.72,24.01 < 7 |only if walking
Continue following the road |goto 49.13,20.80 < 7 |only if walking
Continue following the road |goto 54.99,18.57 < 10 |only if walking
Continue following the road |goto 56.43,17.36 < 7 |only if walking
talk Dying Blood Elf##16601
accept Anok'suten##9315 |goto 57.54,14.93
stickystart "Kill_Nerubis_Guards"
step
Follow the path |goto 59.79,13.88 < 10 |only if walking
kill Anok'suten##16357 |q 9315/1 |goto 61.69,14.37
|tip He looks like a larger spider that walks around this area.
|tip You may need help with this.
step
label "Kill_Nerubis_Guards"
kill 10 Nerubis Guard##16313 |q 9138/1 |goto 61.69,14.37
step
Follow the path |goto 63.66,12.18 < 15 |only if walking
Continue following the path |goto 66.99,14.75 < 10 |only if walking
talk Ranger Valanna##16219
turnin Help Ranger Valanna!##9145 |goto 69.40,15.18
accept Dealing with Zeb'Sora##9143 |goto 69.40,15.18
step
Follow the path |goto 74.94,12.44 < 7 |only if walking
Kill Shadowpine enemies around this area
collect 6 Zeb'Sora Troll Ear##22639 |q 9143/1 |goto 76.73,12.23
step
Follow the path |goto 75.67,14.84 < 15 |only if walking
talk Ranger Valanna##16219
turnin Dealing with Zeb'Sora##9143 |goto 69.40,15.18
accept Report to Captain Helios##9146 |goto 69.40,15.18
step
Follow the path |goto 68.14,17.55 < 7 |only if walking
Continue following the path |goto 69.14,23.04 < 10 |only if walking
Continue following the path |goto 69.36,27.82 < 7 |only if walking
Run up the ramp |goto 70.76,31.99 < 5 |only if walking
Enter the building |goto 71.10,32.03 < 5 |walk
talk Farstrider Sedina##16202
|tip Inside the building.
accept Bearers of the Plague##9158 |goto 72.49,32.13
step
Leave the building |goto 72.58,31.12 < 3 |walk
talk Captain Helios##16220
|tip On the balcony of the building.
turnin Report to Captain Helios##9146 |goto 72.37,29.64
accept Shadowpine Weaponry##9214 |goto 72.37,29.64
step
talk Ranger Krenn'an##16462
|tip On the balcony of the building.
accept Spirits of the Drowned##9274 |goto 72.21,29.78
step
Run up the ramp |goto 72.01,29.92 < 3 |only if walking
Continue up the ramp |goto 71.54,30.53 < 3 |only if walking
Follow the path |goto 71.42,31.33 < 3 |only if walking
Continue following the path |goto 71.14,31.70 < 3 |only if walking
Continue following the path |goto 71.21,32.53 < 3 |only if walking
talk Ranger Vynna##16203
|tip Upstairs inside the building.
accept Investigate the Amani Catacombs##9193 |goto 71.95,32.64
step
talk Farstrider Solanna##16463
|tip Inside the building.
accept Attack on Zeb'Tela##9276 |goto 72.32,31.25
step
Leave the building |goto 72.59,31.02 < 3 |walk
Run up the ramp |goto 72.56,29.91 < 3 |only if walking
Continue up the ramp |goto 73.09,30.48 < 3 |only if walking
Follow the path |goto 73.11,31.41 < 3 |only if walking
Follow the path |goto 72.85,31.54 < 3 |only if walking
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
accept Troll Juju##9199 |goto 72.62,31.57
step
Leave the building |goto 72.03,33.09 < 3 |walk
Jump down here |goto 71.41,34.57 < 5 |only if walking
kill 10 Ghostclaw Lynx##16348 |q 9158/1 |goto 68.45,40.93
|tip If you can't find any, kill the Vampiric Mistbats also.
stickystart "Collect_Headhunter_Axes"
stickystart "Kill_Shadowpine_Shadowcasters"
stickystart "Kill_Shadowpine_Headhunters"
step
Follow the path up |goto 70.09,42.88 < 15 |only if walking
Continue following the path |goto 73.51,39.51 < 10 |only if walking
Continue following the path |goto 74.79,38.28 < 7 |only if walking
kill Shadowpine Shadowcaster##16469+
collect 3 Shadowcaster Mace##23167 |q 9214/2 |goto 77.57,37.69
step
label "Collect_Headhunter_Axes"
kill Shadowpine Headhunter##16344+
collect 3 Headhunter Axe##23165 |q 9214/1 |goto 77.57,37.69
step
label "Kill_Shadowpine_Shadowcasters"
kill 8 Shadowpine Shadowcaster##16469 |q 9276/1 |goto 77.57,37.69
step
label "Kill_Shadowpine_Headhunters"
kill 8 Shadowpine Headhunter##16344 |q 9276/2 |goto 77.57,37.69
step
Follow the path |goto 77.17,36.65 < 15 |only if walking
Continue following the path |goto 75.07,34.72 < 10 |only if walking
Continue following the path |goto 73.63,34.25 < 7 |only if walking
Run up the stairs |goto 72.71,33.82 < 5 |only if walking
Enter the building |goto 72.53,33.13 < 5 |walk
talk Farstrider Sedina##16202
|tip Inside the building.
turnin Bearers of the Plague##9158 |goto 72.49,32.14
accept Curbing the Plague##9159 |goto 72.49,32.14
step
talk Farstrider Solanna##16463
|tip Inside the building.
turnin Attack on Zeb'Tela##9276 |goto 72.32,31.25
accept Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
click Wanted Poster: Kel'gash the Wicked##181153
|tip Inside the building.
accept Bring Me Kel'gash's Head!##9215 |goto 72.23,31.17
step
Leave the building |goto 72.59,31.02 < 3 |walk
Run up the ramp |goto 72.56,29.91 < 3 |only if walking
Continue up the ramp |goto 73.09,30.48 < 3 |only if walking
Follow the path |goto 73.11,31.41 < 3 |only if walking
Follow the path |goto 72.85,31.54 < 3 |only if walking
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
accept A Little Dash of Seasoning##9275 |goto 72.62,31.57
stickystart "Kill_Ravening_Apparitions"
stickystart "Kill_Vengeful_Apparitions"
step
Leave the building |goto 72.59,31.01 < 3 |walk
Jump down here |goto 72.37,29.58 < 5 |only if walking
Follow the path |goto 71.77,27.06 < 7 |only if walking
Follow the path |goto 71.48,24.03 < 10 |only if walking
Continue following the path |goto 71.91,21.00 < 7 |only if walking
Continue following the path |goto 71.63,19.78 < 7 |only if walking
talk Geranis Whitemorn##16201
accept Forgotten Rituals##9157 |goto 72.29,19.09
step
click Glistening Mud##181151+
|tip They look like piles of dirt on the ground underwater around this area.
collect 8 Wavefront Medallion##22674 |q 9157/1 |goto 70.86,18.87
step
talk Geranis Whitemorn##16201
turnin Forgotten Rituals##9157 |goto 72.29,19.09
accept Vanquishing Aquantion##9174 |goto 72.29,19.09
step
click Altar of Tidal Mastery##181157
|tip Underwater.
kill Aquantion##16292 |q 9174/1 |goto 71.33,15.04
step
talk Geranis Whitemorn##16201
turnin Vanquishing Aquantion##9174 |goto 72.29,19.09
step
label "Kill_Ravening_Apparitions"
kill 8 Ravening Apparition##16327 |q 9274/1 |goto 70.86,18.87
|tip Underwater and along the shore of the lake around this area.
step
label "Kill_Vengeful_Apparitions"
kill 8 Vengeful Apparition##16328 |q 9274/2 |goto 70.86,18.87
|tip Underwater and along the shore of the lake around this area.
stickystart "Collect_Troll_Juju"
stickystart "Burn_Mummified_Troll_Remains"
step
Follow the path |goto 69.83,23.56 < 10 |only if walking
Follow the path |goto 68.35,25.99 < 7 |only if walking
Enter the crypt |goto 66.31,28.56 < 5 |walk
Follow the path |goto Ghostlands/1 65.67,37.25 < 5 |walk
Continue following the path |goto Ghostlands/1 59.70,59.55 < 5 |walk
Investigate the Amani Catacombs |q 9193/2 |goto Ghostlands/1 59.77,66.25
step
label "Collect_Troll_Juju"
Kill enemies around this area
|tip Inside the crypt.
collect 8 Troll Juju##22633 |q 9199/1 |goto 59.77,66.25
step
label "Burn_Mummified_Troll_Remains"
click Mummified Troll Remains##181148+
|tip They look like mummies on the ground around this area inside the crypt.
Burn #10# Mummified Troll Remains |q 9193/1 |goto 59.77,66.25
step
talk Ranger Lilatha##16295
|tip Inside the crypt.
accept Escape from the Catacombs##9212 |goto 59.97,81.65
step
Follow the path |goto 59.60,59.80 < 5 |walk
Follow the path down |goto 66.07,52.35 < 5 |walk
Follow the path up |goto 74.03,47.55 < 5 |walk
Follow the path |goto 74.13,38.20 < 5 |walk
Leave the crypt |goto Ghostlands/0 66.30,28.58 < 3 |walk
Follow the path |goto Ghostlands/0 67.74,28.88 < 7 |only if walking
Run up the ramp |goto Ghostlands/0 70.75,31.98 < 5 |only if walking
Enter the building |goto Ghostlands/0 71.10,32.02 < 5 |walk
Follow the path |goto Ghostlands/0 71.96,31.84 < 5 |walk
Leave the building |goto Ghostlands/0 72.08,31.00 < 3 |walk
Watch the dialogue
|tip Follow Ranger Lilatha and protect her as she walks.
Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1 |goto Ghostlands/0 72.24,30.11
step
talk Ranger Krenn'an##16462
|tip On the balcony of the building.
turnin Spirits of the Drowned##9274 |goto 72.20,29.79
step
talk Captain Helios##16220
|tip On the balcony of the building.
turnin Escape from the Catacombs##9212 |goto 72.37,29.63
step
Run up the ramp |goto 72.01,29.92 < 3 |only if walking
Continue up the ramp |goto 71.54,30.53 < 3 |only if walking
Follow the path |goto 71.42,31.33 < 3 |only if walking
Continue following the path |goto 71.14,31.70 < 3 |only if walking
Continue following the path |goto 71.21,32.53 < 3 |only if walking
talk Ranger Vynna##16203
|tip Upstairs inside the building.
turnin Investigate the Amani Catacombs##9193 |goto 71.95,32.64
step
Leave the building |goto 72.59,31.02 < 3 |walk
Run up the ramp |goto 72.56,29.91 < 3 |only if walking
Continue up the ramp |goto 73.09,30.48 < 3 |only if walking
Follow the path |goto 73.11,31.41 < 3 |only if walking
Follow the path |goto 72.85,31.54 < 3 |only if walking
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
turnin Troll Juju##9199 |goto 72.62,31.57
step
Leave the building |goto 72.03,33.09 < 3 |walk
Jump down here |goto 71.41,34.57 < 5 |only if walking
kill 10 Vampiric Mistbat##16354 |q 9159/1 |goto 68.45,40.93
|tip If you can't find any, kill the Ghostclaw Lynxes also.
stickystart "Kill_Shadowpine_Catlords"
stickystart "Collect_Catlord_Claws"
stickystart "Kill_Shadowpine_Hexxers"
stickystart "Collect_Hexxer_Staves"
step
Follow the path |goto 66.29,44.24 < 15 |only if walking
Continue following the path |goto 67.24,49.65 < 7 |only if walking
Continue following the path |goto 67.41,53.90 < 7 |only if walking
Run up the stairs |goto 67.16,58.25 < 5 |only if walking
Enter the building |goto 67.50,58.11 < 5 |walk
click Fresh Fish Rack##181252
|tip Inside the building.
Poison the Fresh Fish Rack |q 9275/3 |goto 68.24,57.82
step
Leave the building |goto 67.50,58.12 < 3 |walk
Follow the path up |goto 64.41,60.35 < 5 |only if walking
Follow the road |goto 64.57,61.42 < 7 |only if walking
Continue following the road |goto 66.17,62.39 < 7 |only if walking
Continue following the road |goto 68.58,63.15 < 7 |only if walking
Follow the path |goto 74.03,64.91 < 7 |only if walking
talk Kiz Coilspanner##24851
fpath Zul'Aman |goto 74.77,67.15
step
Follow the path down |goto 74.05,65.61 < 7 |only if walking
Follow the road |goto 73.09,64.31 < 7 |only if walking
Continue following the road |goto 68.60,63.06 < 7 |only if walking
Follow the path down |goto 65.61,62.53 < 5 |only if walking
Follow the path |goto 65.06,65.28 < 5 |only if walking
Follow the path |goto 64.70,66.13 < 5 |only if walking
click Raw Meat Rack##181250
Poison the Raw Meat Rack |q 9275/1 |goto 65.07,66.68
step
Follow the path |goto 64.41,66.34 < 7 |only if walking
Continue following the path |goto 63.38,68.44 < 10 |only if walking
Continue following the path |goto 63.06,72.36 < 7 |only if walking
Continue following the path |goto 62.52,74.64 < 7 |only if walking
click Smoked Meat Rack##181251
Poison the Smoked Meat Rack |q 9275/2 |goto 62.98,74.97
step
Follow the path |goto 62.94,76.16 < 7 |only if walking
Run up the stairs |goto 64.85,78.87 < 5 |only if walking
Enter the building |goto 65.13,79.22 < 5 |walk
Run up the stairs |goto 65.75,79.58 < 3 |walk
Follow the path |goto 65.86,80.07 < 3 |walk
Run up the stairs |goto 65.97,80.72 < 3 |only if walking
Follow the path |goto 65.47,80.79 < 5 |c |q 9215
step
kill Kel'gash the Wicked##16358
|tip On top of the building.
|tip You may need help with this.
collect Head of Kel'gash the Wicked##22640 |q 9215/1 |goto 65.28,79.46
step
label "Kill_Shadowpine_Catlords"
Jump down here |goto 65.35,80.80 < 5 |only if walking
Follow the path |goto 64.85,80.00 < 7 |only if walking
Continue following the path |goto 64.29,78.28 < 7 |only if walking
Continue following the path |goto 63.34,76.67 < 7 |only if walking
kill 10 Shadowpine Catlord##16345 |q 9277/1 |goto 62.11,73.98
step
label "Collect_Catlord_Claws"
collect 3 Catlord Claws##22677 |q 9214/3 |goto 62.11,73.98
step
label "Kill_Shadowpine_Hexxers"
kill 10 Shadowpine Hexxer##16346 |q 9277/2 |goto 62.11,73.98
step
label "Collect_Hexxer_Staves"
collect 3 Hexxer Stave##23166 |q 9214/4 |goto 62.11,73.98
step
Follow the path |goto 63.67,64.11 < 10 |only if walking
Follow the path |goto 62.85,61.68 < 7 |only if walking
Continue following the path |goto 65.19,55.70 < 7 |only if walking
Continue following the path |goto 65.45,54.33 < 7 |only if walking
Continue following the path |goto 65.14,51.96 < 10 |only if walking
Follow the path up |goto 66.29,46.09 < 10 |only if walking
Follow the path up |goto 66.82,39.39 < 10 |only if walking
Continue up the path |goto 68.24,35.18 < 10 |only if walking
Follow the path |goto 70.12,33.66 < 10 |only if walking
Run up the stairs |goto 71.87,33.77 < 5 |only if walking
Enter the building |goto 71.99,33.10 < 5 |walk
talk Farstrider Solanna##16463
|tip Inside the building.
turnin Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
Leave the building |goto 72.59,31.06 < 3 |walk
talk Captain Helios##16220
|tip On the balcony of the building.
turnin Shadowpine Weaponry##9214 |goto 72.37,29.64
turnin Bring Me Kel'gash's Head!##9215 |goto 72.37,29.64
step
Run up the ramp |goto 72.64,29.92 < 3 |only if walking
Continue up the ramp |goto 73.11,30.46 < 3 |only if walking
Follow the path |goto 73.12,31.37 < 3 |only if walking
Follow the path |goto 72.86,31.56 < 3 |walk
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
turnin A Little Dash of Seasoning##9275 |goto 72.62,31.57
step
Leave the building |goto 48.33,31.98 < 3 |walk
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Suncrown Village##9138 |goto 46.34,28.33
accept Goldenmist Village##9139 |goto 46.34,28.33
turnin Anok'suten##9315 |goto 46.34,28.33
step
talk Rathis Tomber##16224
accept Tomber's Supplies##9152 |goto 47.24,28.56
step
Follow the path |goto 47.03,30.23 < 7 |only if walking
talk Master Chef Mouldier##16253
accept Culinary Crunch##9171 |goto 48.42,30.93
step
click Wanted Poster##181147
accept Wanted: Knucklerot and Luzran##9156 |goto 48.34,31.64
step
Follow the path |goto 47.54,31.43 < 7 |only if walking
talk Apothecary Renzithen##16198
accept The Plagued Coast##9149 |goto 47.67,34.87
step
talk Deathstalker Rathiel##16200
accept Down the Dead Scar##9155 |goto 46.02,33.58
step
talk Magister Darenis##16199
accept Salvaging the Past##9150 |goto 46.03,31.95
step
Enter the building |goto 45.17,32.37 < 5 |walk
talk Dame Auriferous##16231
|tip Inside the building.
accept Investigate An'daroth##9160 |goto 44.88,32.51
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
accept Trouble at the Underlight Mines##9192 |goto 44.74,32.29
stickystart "Kill_Gangled_Cannibals"
step
Leave the building |goto 45.15,32.37 < 3 |walk
Follow the road down |goto 45.78,29.39 < 10 |only if walking
Follow the road down |goto 44.82,27.92 < 10 |only if walking
Follow the path |goto 41.92,28.58 < 10 |only if walking
kill 10 Risen Hungerer##16301 |q 9155/1 |goto 39.28,35.54
step
label "Kill_Gangled_Cannibals"
kill 10 Gangled Cannibal##16309 |q 9155/2 |goto 39.28,35.54
step
Follow the path |goto 37.05,39.03 < 10 |only if walking
Continue following the path |goto 33.48,44.59 < 10 |only if walking
talk Apprentice Shatharia##16293
accept Underlight Ore Samples##9207 |goto 31.44,48.33
stickystart "Kill_Blackpaw_Gnolls"
stickystart "Kill_Blackpaw_Scavengers"
stickystart "Kill_Blackpaw_Shamans"
step
Kill Blackpaw enemies around this area
collect 6 Underlight Ore##22634 |q 9207/1 |goto 29.47,47.93
step
label "Kill_Blackpaw_Gnolls"
kill 8 Blackpaw Gnoll##16334 |q 9192/1 |goto 29.47,47.93
step
label "Kill_Blackpaw_Scavengers"
kill 6 Blackpaw Scavenger##16335 |q 9192/2 |goto 29.47,47.93
step
label "Kill_Blackpaw_Shamans"
kill 4 Blackpaw Shaman##16337 |q 9192/3 |goto 29.47,47.93
stickystart "Kill_Spindleweb_Lurkers"
step
Follow the path up |goto 30.83,48.06 < 7 |only if walking
Follow the path |goto 31.91,47.04 < 7 |only if walking
kill Spindleweb Lurker##16351+
|tip If you can't find any, kill the Vampiric Mistbats also.
collect 5 Crunchy Spider Leg##22644 |q 9171/1 |goto 27.6,31.1
step
label "Kill_Spindleweb_Lurkers"
kill 8 Spindleweb Lurker##16351 |q 9159/2 |goto 27.6,31.1
step
Jump down here |goto 32.03,36.33 < 7 |only if walking
Kill enemies around this area
collect 8 Crystallized Mana Essence##22580 |q 9150/1 |goto 32.20,34.23
step
Run up the stairs |goto 34.64,30.83 < 7 |only if walking
click Rathis Tomber's Supplies##181133
collect Rathis Tomber's Supplies##22583 |q 9152/1 |goto 33.57,26.51
stickystart "Kill_Sentinel_Spies"
step
Follow the road |goto 33.77,23.66 < 10 |only if walking
Follow the path |goto 35.63,23.25 < 10 |only if walking
Follow the path up |goto 37.04,21.75 < 7 |only if walking
Follow the path |goto 38.13,20.54 < 7 |only if walking
Continue following the path |goto 38.02,18.60 < 10 |only if walking
Investigate An'daroth |q 9160/2 |goto 37.07,16.00
step
label "Kill_Sentinel_Spies"
kill 12 Sentinel Spy##16330 |q 9160/1 |goto 36.47,15.43
stickystart "Kill_Queldorei_Wraiths"
step
Jump down carefully here |goto 35.39,16.62 < 7 |only if walking
Follow the road |goto 33.35,23.53 < 10 |only if walking
Continue following the road |goto 30.28,23.34 < 7 |only if walking
Cross the bridge |goto 29.31,21.09 < 7 |only if walking
Follow the path |goto 28.44,19.28 < 7 |only if walking
kill 6 Quel'dorei Ghost##16325 |q 9139/1 |goto 25.70,15.93
step
label "Kill_Queldorei_Wraiths"
kill 4 Quel'dorei Wraith##16326 |q 9139/2 |goto 25.70,15.93
step
Follow the path |goto 25.35,17.83 < 15 |only if walking
Continue following the path |goto 22.25,19.28 < 15 |only if walking
Kill Grimscale enemies around this area.
collect 6 Plagued Murloc Spine##22579 |q 9149/1 |goto 19.72,21.36
step
Leave the building |goto 48.34,31.98 < 3 |walk
talk Master Chef Mouldier##16253
turnin Culinary Crunch##9171 |goto 48.42,30.94
step
Follow the path down |goto 47.94,30.12 < 7 |only if walking
talk Rathis Tomber##16224
|tip He walks around this area.
turnin Tomber's Supplies##9152 |goto 47.17,28.65
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Goldenmist Village##9139 |goto 46.21,28.35
accept Windrunner Village##9140 |goto 46.21,28.35
step
Follow the road |goto 46.57,30.82 < 7 |only if walking
talk Magister Darenis##16199
turnin Salvaging the Past##9150 |goto 46.02,31.96
step
Enter the building |goto 45.17,32.37 < 5 |walk
talk Dame Auriferous##16231
|tip Inside the building.
turnin Investigate An'daroth##9160 |goto 44.88,32.51
accept Into Occupied Territory##9163 |goto 44.88,32.51
step
talk High Executor Mavren##16252
|tip Inside the building.
accept Retaking Windrunner Spire##9173 |goto 44.77,32.45
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
turnin Trouble at the Underlight Mines##9192 |goto 44.74,32.29
step
Leave the building |goto 45.17,32.37 < 3 |walk
talk Deathstalker Rathiel##16200
turnin Down the Dead Scar##9155 |goto 46.02,33.57
step
talk Apothecary Renzithen##16198
turnin The Plagued Coast##9149 |goto 47.67,34.87
step
Follow the path up |goto 47.59,33.66 < 7 |only if walking
Follow the path |goto 47.61,31.33 < 7 |only if walking
Run up the ramp |goto 48.73,30.82 < 3 |only if walking
Continue up the ramp |goto 49.43,31.54 < 3 |only if walking
Follow the path |goto 49.16,32.35 < 3 |only if walking
talk Magistrix Aminel##16205
|tip Upstairs on the balcony of the building.
accept Spinal Dust##9218 |goto 48.92,31.32
accept Rotting Hearts##9216 |goto 48.92,31.32
stickystart "Collect_Rotting_Hearts"
step
Follow the road |goto 46.87,31.39 < 7 |only if walking
Continue following the road |goto 46.47,36.34 < 10 |only if walking
Continue following the road |goto 46.05,39.96 < 10 |only if walking
Continue following the road |goto 43.15,44.27 < 7 |only if walking
Continue following the road |goto 39.92,46.39 < 7 |only if walking
Follow the path |goto 38.33,48.53 < 7 |only if walking
Kill enemies around this area
|tip Only Dreadbone and Deathcage enemies will drop this quest item.
collect 10 Spinal Dust##22642 |q 9218/1 |goto 37.91,58.35
step
label "Collect_Rotting_Hearts"
Kill Risen enemies around this area
collect 10 Rotting Heart##22641 |q 9216/1 |goto 37.91,58.35
stickystart "Kill_Fallen_Rangers"
stickystart "Accept_The_Ladys_Necklace"
step
Follow the road |goto 36.04,51.81 < 7 |only if walking
Continue following the road |goto 33.86,52.33 < 7 |only if walking
Continue following the road |goto 31.80,54.98 < 7 |only if walking
Continue following the road |goto 27.85,55.39 < 7 |only if walking
Follow the road |goto 25.67,55.41 < 7 |only if walking
Follow the road |goto 21.57,58.33 < 7 |only if walking
Follow the path up |goto 17.13,58.29 < 7 |only if walking
Continue up the path |goto 15.20,56.48 < 7 |only if walking
kill 8 Deatholme Acolyte##16315 |q 9173/1 |goto 13.73,56.66
step
label "Kill_Fallen_Rangers"
kill 10 Fallen Ranger##16314 |q 9173/2 |goto 13.73,56.66
step
label "Accept_The_Ladys_Necklace"
Kill enemies around this area
accept The Lady's Necklace##9175 |goto 13.73,56.66
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Gargoyle_Fragments"
step
Follow the path down |goto 14.12,56.58 < 7 |only if walking
Follow the path down |goto 15.44,56.59 < 7 |only if walking
Continue down the path |goto 17.28,58.37 < 7 |only if walking
Follow the road |goto 21.52,58.25 < 7 |only if walking
Follow the road |goto 25.62,54.92 < 7 |only if walking
Follow the path |goto 22.34,48.46 < 7 |only if walking
kill Phantasmal Seeker##16323+
collect 6 Phantasmal Substance##22566 |q 9140/1 |goto 20.56,46.26
step
label "Collect_Gargoyle_Fragments"
kill Stonewing Slayer##16324+
collect 4 Gargoyle Fragment##22567 |q 9140/2 |goto 20.56,46.26
step
Follow the path |goto 18.21,43.04 < 15 |only if walking
Continue following the path |goto 17.47,40.23 < 10 |only if walking
Continue following the path |goto 15.34,31.93 < 15 |only if walking
Follow the path |goto 14.52,27.92 < 10 |only if walking
click Night Elf Plans: An'daroth##181138
collect Night Elf Plans: An'daroth##22590 |q 9163/1 |goto 12.54,26.51
step
click Night Elf Plans: An'owyn##181139
|tip Inside the tent.
collect Night Elf Plans: An'owyn##22591 |q 9163/2 |goto 12.80,25.09
step
Follow the path |goto 11.77,25.49 < 7 |only if walking
Run up the ramp |goto 10.46,24.39 < 5 |only if walking
Run up the stairs |goto 9.91,23.24 < 5 |only if walking
Follow the path |goto 10.08,22.88 < 5 |only if walking
Run up the stairs |goto 10.21,22.29 < 3 |only if walking
Follow the path |goto 10.34,22.04 < 3 |only if walking
click Night Elf Plans: Scrying on the Sin'dorei##181140
collect Night Elf Plans: Scrying on the Sin'dorei##22592 |q 9163/3 |goto 10.44,22.58
step
Leave the building |goto 48.32,31.98 < 3 |walk
Run up the ramp |goto 48.74,30.81 < 5 |only if walking
Run up the ramp |goto 49.36,31.37 < 3 |only if walking
Follow the path |goto 49.21,32.37 < 3 |only if walking
talk Magistrix Aminel##16205
|tip Upstairs on the balcony of the building.
turnin Spinal Dust##9218 |goto 48.91,31.32
turnin Rotting Hearts##9216 |goto 48.91,31.32
step
Follow the path |goto 47.71,30.37 < 10 |only if walking
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Windrunner Village##9140 |goto 46.48,28.38
step
Follow the road |goto 46.56,31.13 < 7 |only if walking
talk Magister Darenis##16199
accept The Sanctum of the Sun##9151 |goto 46.03,31.95
step
Enter the building |goto 45.17,32.38 < 5 |walk
talk Dame Auriferous##16231
|tip Inside the building.
turnin Into Occupied Territory##9163 |goto 44.88,32.51
accept Deliver the Plans to An'telas##9166 |goto 44.88,32.51
step
talk High Executor Mavren##16252
|tip Inside the building.
turnin Retaking Windrunner Spire##9173 |goto 44.77,32.45
turnin The Lady's Necklace##9175 |goto 44.77,32.45
accept Journey to Undercity##9177 |goto 44.77,32.45 |only if not BloodElf
accept Journey to Undercity##9180 |goto 44.77,32.45 |only if BloodElf
step
Leave the building |goto 45.18,32.35 < 3 |walk
Follow the path up |goto 48.67,35.24 < 7 |only if walking
Follow the path |goto 50.30,37.89 < 5 |only if walking
Continue following the path |goto 51.24,38.20 < 5 |only if walking
Follow the path down |goto 51.67,38.98 < 5 |only if walking
Follow the path down |goto 53.74,40.95 < 5 |only if walking
Follow the path down |goto 54.82,41.67 < 5 |only if walking
Follow the path |goto 55.77,46.11 < 7 |only if walking
Continue following the path |goto 54.33,48.05 < 7 |only if walking
Continue following the path |goto 54.33,49.35 < 5 |only if walking
Enter the building |goto 54.75,49.46 < 5 |walk
talk Magister Quallestis##16291
|tip Inside the building.
turnin Underlight Ore Samples##9207 |goto 54.95,48.51
step
Run up the ramp |goto 55.46,48.84 < 3 |walk
Run up the ramp |goto 55.35,48.24 < 3 |walk
Follow the path |goto 55.00,48.29 < 3 |walk
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin The Sanctum of the Sun##9151 |goto 54.87,48.54
step
talk Magister Kaendris##16239
|tip Inside the building.
accept The Farstrider Enclave##9282 |goto 55.07,48.83
step
Leave the building |goto 54.73,49.51 < 3 |walk
Follow the path |goto 55.12,50.22 < 7 |only if walking
Continue following the path |goto 55.97,49.33 < 7 |only if walking
Continue following the path |goto 55.99,46.97 < 7 |only if walking
Follow the path down |goto 56.51,45.33 < 7 |only if walking
Follow the path up |goto 59.74,43.95 < 7 |only if walking
Follow the path up |goto 60.62,42.48 < 7 |only if walking
Follow the path |goto 60.94,38.82 < 7 |only if walking
talk Magister Sylastor##16237
turnin Deliver the Plans to An'telas##9166 |goto 60.29,35.63
accept Deactivate An'owyn##9169 |goto 60.29,35.63
step
Follow the path down |goto 60.99,38.62 < 10 |only if walking
Follow the path down |goto 60.61,41.90 < 10 |only if walking
Follow the road |goto 61.01,51.02 < 10 |only if walking
Follow the path |goto 57.97,58.49 < 10 |only if walking
kill Sentinel Infiltrator##16333+
collect Crystal Controlling Orb##23191 |goto 58.29,64.51 |q 9169
step
click Night Elf Moon Crystal##181359
Deactivate the Night Elf Moon Crystal |q 9169/1 |goto 58.22,64.93
step
Follow the path up |goto 58.05,60.68 < 10 |only if walking
Follow the road |goto 58.01,58.29 < 7 |only if walking
Continue following the road |goto 60.74,52.74 < 10 |only if walking
Follow the path up |goto 60.66,43.37 < 10 |only if walking
Follow the path |goto 60.89,38.90 < 7 |only if walking
talk Magister Sylastor##16237
turnin Deactivate An'owyn##9169 |goto 60.29,35.63
step
Follow the path down |goto 61.92,39.54 < 7 |only if walking
Follow the path up |goto 64.67,42.00 < 7 |only if walking
Continue up the path |goto 66.20,40.18 < 7 |only if walking
Continue up the path |goto 68.38,35.12 < 7 |only if walking
Follow the path |goto 69.98,33.59 < 7 |only if walking
Run up the stairs |goto 71.72,33.78 < 5 |only if walking
Enter the building |goto 71.99,33.09 < 5 |walk
talk Farstrider Sedina##16202
|tip Inside the building.
turnin Curbing the Plague##9159 |goto 72.49,32.14
step
Leave the building |goto 72.58,31.07 < 3 |walk
Run up the ramp |goto 72.10,29.90 < 3 |only if walking
Run up the ramp |goto 71.61,30.34 < 3 |only if walking
Follow the path |goto 71.45,31.29 < 3 |walk
Continue following the path |goto 71.16,31.66 < 3 |walk
Continue following the path |goto 71.18,32.47 < 3 |walk
Continue following the path |goto 71.74,32.62 < 3 |walk
talk Ranger Vynna##16203
|tip Upstairs inside the building.
turnin The Farstrider Enclave##9282 |goto 71.96,32.63
accept The Traitor's Shadow##9161 |goto 71.96,32.63
step
Leave the building |goto 72.61,31.07 < 3 |walk
Jump down here |goto 73.10,30.60 < 5 |only if walking
Follow the path |goto 73.80,30.04 < 7 |only if walking
Continue following the path |goto 75.07,26.88 < 10 |only if walking
Follow the path up |goto 77.14,23.73 < 10 |only if walking
Follow the path |goto 77.82,22.32 < 7 |only if walking
Run up the ramp |goto 78.44,19.85 < 5 |only if walking
Enter the building |goto 78.81,19.82 < 5 |walk
Run up the ramp |goto 79.94,20.77 < 3 |walk
Run up the ramp |goto 80.33,19.85 < 3 |walk
Follow the path |goto 79.96,18.95 < 3 |walk
Leave the building |goto 79.63,18.60 < 3 |walk
click Dusty Journal##194341
|tip Upstairs on the balcony of the building.
turnin The Traitor's Shadow##9161 |goto 79.63,17.56
accept Hints of the Past##9162 |goto 79.63,17.56
step
Follow the path |goto 78.34,18.81 < 7 |only if walking
Follow the path down |goto 77.81,22.54 < 7 |only if walking
Follow the path |goto 74.65,27.52 < 10 |only if walking
Run up the ramp |goto 73.82,32.18 < 5 |walk
Enter the building |goto 73.50,32.17 < 5 |walk
Follow the path |goto 72.64,31.96 < 5 |walk
Leave the building |goto 72.58,31.07 < 3 |walk
Run up the ramp |goto 72.10,29.90 < 3 |only if walking
Run up the ramp |goto 71.61,30.34 < 3 |only if walking
Follow the path |goto 71.45,31.29 < 3 |walk
Continue following the path |goto 71.16,31.66 < 3 |walk
Continue following the path |goto 71.18,32.47 < 3 |walk
Continue following the path |goto 71.74,32.62 < 3 |walk
talk Ranger Vynna##16203
|tip Upstairs inside the building.
turnin Hints of the Past##9162 |goto 71.96,32.63
accept Report to Magister Kaendris##9172 |goto 71.96,32.63
step
Leave the building |goto 72.01,33.18 < 3 |walk
Jump down here |goto 71.37,34.59 < 7 |only if walking
Follow the path |goto 67.63,40.04 < 15 |only if walking
Continue following the path |goto 64.72,41.69 < 10 |only if walking
Continue following the path |goto 61.00,43.82 < 10 |only if walking
Follow the path up |goto 57.47,44.57 < 7 |only if walking
Follow the path |goto 56.25,45.70 < 7 |only if walking
Continue following the path |goto 56.03,47.43 < 7 |only if walking
Continue following the path |goto 55.83,49.71 < 7 |only if walking
Run up the stairs |goto 54.85,50.02 < 5 |only if walking
Enter the building |goto 54.75,49.46 < 5 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin Report to Magister Kaendris##9172 |goto 55.07,48.83
accept The Twin Ziggurats##9176 |goto 55.07,48.83
step
Leave the building |goto 54.73,49.49 < 3 |walk
Follow the road |goto 53.41,52.84 < 10 |only if walking
Follow the road |goto 50.85,57.04 < 10 |only if walking
Continue following the road |goto 48.27,58.32 < 10 |only if walking
Follow the path |goto 47.59,57.34 < 7 |only if walking
talk Apprentice Vor'el##16480
accept Clearing the Way##9281 |goto 46.40,56.42
stickystart "Kill_Ghostclaw_Ravagers"
step
Follow the path |goto 47.46,57.74 < 7 |only if walking
kill 10 Greater Spindleweb##16352 |q 9281/1 |goto 46.9,60.4
step
label "Kill_Ghostclaw_Ravagers"
kill 10 Ghostclaw Ravager##16349 |q 9281/2 |goto 46.9,60.4
step
Follow the path |goto 47.59,57.34 < 7 |only if walking
talk Apprentice Vor'el##16480
turnin Clearing the Way##9281 |goto 46.40,56.42
step
Follow the path |goto 45.96,56.53 < 7 |only if walking
Continue following the path |goto 44.06,54.33 < 10 |only if walking
Continue following the path |goto 41.30,47.99 < 7 |only if walking
Run up the stairs |goto 40.68,47.89 < 5 |only if walking
Enter the building |goto 40.55,48.62 < 5 |walk
Follow the path down |goto 40.35,49.43 < 3 |walk
Follow the path |goto 40.07,49.57 < 3 |walk
Follow the path |goto 40.00,50.01 < 3 |walk
Run up the ramp |goto 40.27,50.26 < 3 |walk
click Worn Chest##181239
|tip Inside the building.
collect Stone of Flame##22599 |q 9176/1 |goto 40.37,49.76
stickystart "Collect_Kucklerots_Head"
step
Follow the path up |goto 40.07,49.57 < 3 |walk
Follow the path |goto 40.43,49.33 < 3 |walk
Leave the building |goto 40.56,48.56 < 3 |walk
Jump down here |goto 40.59,47.45 < 5 |only if walking
Follow the road |goto 39.37,47.10 < 7 |only if walking
kill Luzran##16245
|tip He looks like an abomination that walks along the road around this area.
|tip You may need help with this.
collect Luzran's Head##22893 |q 9156/2 |goto 37.69,49.35
step
label "Collect_Kucklerots_Head"
kill Knucklerot##16246
|tip He looks like an abomination that walks along the road around this area.
|tip You may need help with this.
collect Knucklerot's Head##22894 |q 9156/1 |goto 37.69,49.35
step
Follow the road |goto 36.03,51.79 < 7 |only if walking
Follow the path up |goto 34.26,51.62 < 7 |only if walking
Run up the stairs |goto 34.37,49.63 < 5 |only if walking
Enter the building |goto 34.35,48.85 < 5 |walk
Follow the path down |goto 34.37,47.99 < 3 |walk
Follow the path |goto 34.62,47.65 < 3 |walk
Follow the path |goto 34.56,47.19 < 3 |walk
Run up the ramp |goto 34.30,47.18 < 3 |walk
click Dented Chest##181238
|tip Inside the building.
collect Stone of Light##22598 |q 9176/2 |goto 34.30,47.66
step
Follow the path up |goto 34.62,47.76 < 3 |walk
Follow the path |goto 34.32,48.11 < 3 |walk
Leave the building |goto 34.35,48.90 < 3 |walk
Follow the path down |goto 34.32,49.99 < 7 |only if walking
Follow the path |goto 35.75,53.50 < 10 |only if walking
Continue following the path |goto 40.23,55.38 < 10 |only if walking
Continue following the path |goto 43.89,56.62 < 15 |only if walking
Follow the road |goto 45.87,58.66 < 7 |only if walking
Continue following the road |goto 48.43,58.43 < 10 |only if walking
Follow the road |goto 51.18,56.69 < 7 |only if walking
Run up the stairs |goto 53.83,51.68 < 7 |only if walking
Enter the building |goto 54.75,49.45 < 5 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin The Twin Ziggurats##9176 |goto 55.07,48.83
accept The Traitor's Destruction##9167 |goto 55.07,48.83
step
Run up the ramp |goto 55.46,48.82 < 3 |walk
Run up the ramp |goto 55.32,48.24 < 3 |walk
talk Arcanist Janeda##16240
|tip Upstairs inside the building.
accept Captives at Deatholme##9164 |goto 54.83,48.36
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
accept War on Deatholme##9220 |goto 54.87,48.55
accept Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
stickystart "Kill_Eyes_Of_DarKhan"
stickystart "Kill_Wailers"
stickystart "Kill_Nerubis_Centurions"
step
Follow the path |goto 54.90,49.18 < 3 |walk
Leave the building |goto 54.73,49.52 < 3 |walk
Follow the path |goto 53.87,51.81 < 10 |only if walking
Follow the road |goto 50.93,56.98 < 7 |only if walking
Continue following the road |goto 48.22,58.36 < 10 |only if walking
Jump down here |goto 44.56,59.38 < 7 |only if walking
Follow the path |goto 42.26,64.87 < 15 |only if walking
Continue following the path |goto 38.47,69.27 < 15 |only if walking
Follow the path |goto 36.14,71.23 < 7 |only if walking
Follow the road |goto 34.80,75.23 < 7 |only if walking
Follow the path |goto 32.89,75.18 < 7 |only if walking
Enter the crypt |goto 31.69,73.63 < 5 |c |q 9170
step
Run down the stairs |goto 31.84,72.91 < 3 |walk
Run down the stairs |goto 32.20,73.11 < 3 |walk
kill Jurion the Deceiver##16248 |q 9170/3 |goto 32.10,74.46
|tip Inside the crypt.
step
talk Apothecary Enith##16208
|tip Inside the crypt.
Choose _<Administer the restorative draught.>_
Rescue Apothecary Enith |q 9164/1 |goto 32.14,73.96
step
Run up the stairs |goto 32.17,73.51 < 3 |walk
Run up the stairs |goto 32.14,72.97 < 3 |walk
Run up the stairs |goto 31.74,73.05 < 3 |walk
Leave the crypt |goto 31.70,73.68 < 3 |walk
Follow the road |goto 32.01,75.31 < 7 |only if walking
Follow the road |goto 35.29,75.41 < 7 |only if walking
Run up the stairs |goto 36.53,78.34 < 5 |only if walking
Enter the building |goto 37.00,78.97 < 5 |walk
kill Mirdoran the Fallen##16250 |q 9170/1 |goto 37.35,79.33
|tip Inside the building.
step
Leave the building |goto 37.30,80.27 < 3 |walk
Follow the path up |goto 37.00,83.71 < 7 |only if walking
Continue up the path |goto 37.67,84.31 < 7 |only if walking
Run up the stairs |goto 39.58,83.48 < 5 |only if walking
Enter the building |goto 39.80,83.43 < 5 |walk
Run down the stairs |goto 40.15,83.42 < 3 |walk
Run down the stairs |goto 40.37,83.70 < 3 |walk
Follow the path |goto 40.57,83.21 < 3 |walk
talk Apprentice Varnis##16206
|tip Inside the building.
Choose _<Administer the restorative draught.>_
Rescue Apprentice Varnis |q 9164/2 |goto 40.98,83.21
step
kill Borgoth the Bloodletter##16247 |q 9170/2 |goto 41.26,83.03
|tip Inside the building.
He can also be inside another building at [32.63,90.89]
step
label "Kill_Nerubis_Centurions"
Follow the path |goto 40.61,83.18 < 3 |walk
Run up the stairs |goto 40.38,83.69 < 3 |walk
Follow the path |goto 40.07,83.33 < 3 |walk
Leave the building |goto 39.77,83.43 < 3 |walk
kill 6 Nerubis Centurion##16319 |q 9220/2 |goto 36.67,85.53
step
Run up the stairs |goto 34.83,87.55 < 5 |only if walking
Enter the building |goto 35.20,88.21 < 5 |walk
Follow the path down |goto 35.54,88.91 < 3 |walk
Follow the path |goto 35.47,89.34 < 3 |walk
Follow the path |goto 35.72,89.71 < 3 |walk
Run up the ramp |goto 35.94,89.42 < 3 |walk
kill Masophet the Black##16249 |q 9170/4 |goto 35.8,89.1
|tip Inside the building.
He can also be inside another building at [29.27,88.89]
step
Follow the path up |goto 35.47,89.31 < 3 |walk
Follow the path |goto 35.55,88.76 < 3 |walk
Leave the building |goto 35.19,88.17 < 3 |walk
Follow the road |goto 34.48,87.23 < 7 |only if walking
Run up the stairs |goto 32.86,87.81 < 5 |only if walking
Enter the building |goto 32.83,88.18 < 5 |walk
Run down the stairs |goto 32.73,88.68 < 3 |walk
Run down the stairs |goto 32.51,88.95 < 3 |walk
Follow the path |goto 32.75,89.34 < 3 |walk
talk Ranger Vedoran##16209
|tip Inside the building.
Choose _<Administer the restorative draught.>_
Rescue Ranger Vedoran |q 9164/3 |goto 32.79,89.93
step
Follow the path |goto 32.75,89.43 < 3 |walk
Run up the stairs |goto 32.51,88.90 < 3 |walk
Follow the path |goto 32.80,88.53 < 3 |walk
Leave the building |goto 32.83,88.14 < 3 |walk
Follow the road |goto 34.54,85.75 < 10 |c |q 9220
step
label "Kill_Eyes_Of_DarKhan"
kill 5 Eye of Dar'Khan##16320 |q 9220/1 |goto 36.19,81.39
step
label "Kill_Wailers"
kill 6 Wailer##16321 |q 9220/3 |goto 36.19,81.39
step
Follow the road |goto 35.83,81.16 < 10 |only if walking
Follow the road |goto 34.37,81.35 < 7 |only if walking
Run up the stairs |goto 34.09,82.61 < 5 |only if walking
Run up the stairs |goto 33.84,82.95 < 5 |only if walking
Enter the building |goto 33.28,82.67 < 5 |walk
Follow the path down |goto 32.78,82.51 < 3 |walk
Follow the path |goto 32.57,83.13 < 3 |walk
Continue following the path |goto 32.26,82.96 < 3 |walk
Continue following the path |goto 32.11,82.48 < 3 |walk
Follow the path down |goto 32.24,82.16 < 3 |c |q 9167
step
Run down the stairs |goto 32.81,82.32 < 3 |walk
kill Dar'Khan Drathir##16329
|tip Downstairs inside the building.
|tip You may need help with this.
collect Dar'Khan's Head##22653 |q 9167/1 |goto 33.03,81.26
step
Leave the building |goto 48.33,31.98 < 3 |walk
Follow the path |goto 47.31,32.50 < 7 |only if walking
talk Deathstalker Rathiel##16200
turnin Wanted: Knucklerot and Luzran##9156 |goto 46.02,33.58
step
Follow the path up |goto 48.75,35.35 < 7 |only if walking
Continue up the path |goto 50.29,37.94 < 7 |only if walking
Follow the path |goto 51.18,38.09 < 7 |only if walking
Follow the path down |goto 51.71,38.94 < 7 |only if walking
Follow the path down |goto 54.81,41.67 < 7 |only if walking
Follow the path |goto 55.80,46.09 < 7 |only if walking
Continue following the path |goto 55.88,49.55 < 7 |only if walking
Run up the stairs |goto 54.77,50.00 < 5 |only if walking
Enter the building |goto 54.74,49.46 < 5 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin The Traitor's Destruction##9167 |goto 55.07,48.83
accept Hero of the Sin'dorei##9328 |goto 55.07,48.83 |only if BloodElf
accept Friend of the Sin'dorei##9811 |goto 55.07,48.83 |only if not BloodElf
step
Run up the ramp |goto 55.46,48.83 < 3 |walk
Run up the ramp |goto 55.30,48.24 < 3 |walk
talk Arcanist Janeda##16240
|tip Upstairs inside the building.
turnin Captives at Deatholme##9164 |goto 54.82,48.36
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin War on Deatholme##9220 |goto 54.87,48.55
turnin Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
step
Follow the path |goto 54.90,49.17 < 3 |walk
Leave the building |goto 54.73,49.51 < 3 |walk
Follow the path |goto 54.31,49.43 < 5 |only if walking
Follow the path down |goto 54.35,46.01 < 7 |only if walking
Follow the path up |goto 55.06,43.37 < 7 |only if walking
Follow the path up |goto 54.75,41.53 < 7 |only if walking
Follow the path |goto 51.63,38.93 < 7 |only if walking
Continue following the path |goto 50.82,37.98 < 7 |only if walking
Follow the path down |goto 49.95,37.85 < 7 |only if walking
Follow the path |goto 48.86,35.35 < 7 |only if walking
Continue following the path |goto 46.66,33.15 < 10 |only if walking
Follow the path |goto Eversong Woods/0 55.25,50.97 < 7 |c |q 9328
step
Run up the stairs |goto 56.40,50.50 < 5 |only if walking
Follow the path |goto 56.44,50.13 < 5 |only if walking
Follow the path |goto 56.84,49.45 < 5 |only if walking
Continue following the path |goto 57.14,49.26 < 5 |only if walking
Continue following the path |goto Silvermoon City/0 74.06,86.22 < 5 |only if walking
Follow the path |goto Silvermoon City/0 72.73,85.25 < 5 |only if walking
Follow the road |goto Silvermoon City/0 72.60,61.17 < 7 |only if walking
Follow the path |goto Silvermoon City/0 74.47,56.24 < 3 |only if walking
Follow the path |goto Silvermoon City/0 75.67,58.68 < 5 |only if walking
Run up the ramp |goto Silvermoon City/0 76.46,55.42 < 5 |only if walking
Follow the path |goto Silvermoon City/0 75.86,51.94 < 5 |only if walking
Follow the path |goto Silvermoon City/0 72.83,43.97 < 7 |only if walking
Continue following the path |goto Silvermoon City/0 71.40,38.17 < 5 |only if walking
Run up the stairs |goto Silvermoon City/0 68.72,34.60 < 5 |only if walking
Follow the path |goto Silvermoon City/0 69.04,32.81 < 5 |only if walking
Continue following the path |goto Silvermoon City/0 66.82,31.06 < 5 |only if walking
Run up the ramp |goto Silvermoon City/0 63.80,32.35 < 5 |only if walking
Enter the building |goto Silvermoon City/0 57.52,24.57 < 5 |walk
talk Lor'themar Theron##16802
|tip Inside the building.
turnin Hero of the Sin'dorei##9328 |goto Silvermoon City/0 53.82,20.24 |only if BloodElf
turnin Friend of the Sin'dorei##9811 |goto Silvermoon City/0 53.82,20.24 |only if not BloodElf
accept Envoy to the Horde##9621 |goto Silvermoon City/0 53.82,20.24 |only if BloodElf
accept Envoy to the Horde##9812 |goto Silvermoon City/0 53.82,20.24 |only if not BloodElf
step
Run up the ramp |goto 55.45,18.22 < 3 |walk
Run up the ramp |goto 54.23,17.04 < 3 |walk
Follow the path |goto 51.93,18.06 < 3 |walk
Run up the ramp |goto 51.12,17.75 < 3 |walk
Run up the ramp |goto 49.78,17.76 < 3 |walk
Run up the ramp |goto 48.63,15.23 < 3 |walk
Follow the path |goto 49.36,13.85 < 3 |walk
Teleport to the Ruins of Lordaeron |goto Tirisfal Glades/0 59.89,67.47 < 10 |c |q 9621 |only if havequest(9621) or completedq(9621)
Teleport to the Ruins of Lordaeron |goto Tirisfal Glades/0 59.89,67.47 < 10 |c |q 9812 |only if havequest(9812) or completedq(9812)
step
Follow the path |goto 60.52,67.47 < 5 |only if walking
Run down the stairs |goto 61.00,67.42 < 5 |only if walking
Follow the path |goto 61.83,68.81 < 5 |only if walking
Follow the path |goto 61.95,69.37 < 5 |only if walking
Continue following the path |goto 62.26,70.05 < 5 |walk
Continue following the path |goto Undercity/0 67.32,24.78 < 5 |walk
Follow the path |goto 66.06,26.82 < 5 |walk
Follow the path |goto 66.03,33.75 < 5 |walk
Continue following the path |goto 67.31,38.77 < 3 |walk
Continue following the path |goto 67.88,40.33 < 5 |walk
Continue following the path |goto 66.52,42.83 < 5 |walk
Follow the path |goto 66.00,45.70 < 3 |walk
Follow the path |goto 65.95,50.45 < 3 |walk
Ride the elevator down |goto 65.91,52.11 < 3 |c |q 9621 |only if havequest(9621) or completedq(9621)
Ride the elevator down |goto 65.91,52.11 < 3 |c |q 9812 |only if havequest(9812) or completedq(9812)
step
Follow the path |goto 65.93,54.83 < 3 |walk
Follow the path |goto 68.75,53.83 < 5 |walk
Follow the path |goto 67.62,49.87 < 5 |walk
Jump down here |goto 63.67,47.95 < 5 |walk
talk Michael Garrett##4551
|tip Upstairs inside Undercity.
fpath Undercity |goto 63.25,48.55
step
Run down the ramp |goto 65.80,49.25 < 3 |walk
Jump down here |goto 65.26,45.66 < 3 |walk
Follow the path |goto 62.09,49.62 < 3 |walk
Continue following the path |goto 60.63,49.91 < 5 |walk
Follow the path |goto 57.47,43.95 < 5 |walk
Follow the path |goto 47.83,46.31 < 5 |walk
Continue following the path |goto 47.74,50.78 < 5 |walk
Continue following the path |goto 49.09,58.06 < 5 |walk
Follow the path |goto 52.35,64.23 < 5 |walk
Continue following the path |goto 46.28,72.93 < 5 |walk
Continue following the path |goto 45.26,78.49 < 5 |walk
Continue following the path |goto 46.22,83.92 < 5 |walk
Continue following the path |goto 49.02,87.96 < 5 |walk
Run up the stairs |goto 54.19,90.13 < 5 |walk
Run up the stairs |goto 56.39,95.63 < 5 |walk
talk Lady Sylvanas Windrunner##10181
|tip Inside Undercity.
turnin Journey to Undercity##9177 |goto 58.05,91.79 |only if not BloodElf
turnin Journey to Undercity##9180 |goto 58.05,91.79 |only if BloodElf
turnin Envoy to the Horde##9621 |goto Undercity/0 58.05,91.79 |only if havequest(9621) or completedq(9621)
turnin Envoy to the Horde##9812 |goto Undercity/0 58.05,91.79 |only if havequest(9812) or completedq(9812)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Silverpine Forest (10-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Silverpine 11-20",
next="Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Hillsbrad Foothills (15-60)",
description="To complete this guide, you will be required to complete every quest chapter in Silverpine Forest.",
condition_suggested=function() return level >= 10 and level <= 60 and not completedq(27746) end,
condition_end=function() return completedq(27746) end,
startlevel=10,
endlevel=60,
},[[
step
talk Grand Executor Mortuus##44615
turnin Warchief's Command: Silverpine Forest!##26964 |goto Silverpine Forest/0 57.4,10.1 |only if havequest(26964) or completedq(26964)
accept The Warchief Cometh##26965 |goto Silverpine Forest/0 57.41,10.14
step
Follow the path |goto 57.69,9.84 < 10 |only if walking
talk Bat Handler Maggotbreath##44825
fpath Forsaken High Command |goto 57.90,8.70
step
Watch the dialogue
Stand by for Warchief Garrosh Hellscream's Arrival |q 26965/1 |goto 57.75,10.33
step
talk Grand Executor Mortuus##44615
turnin The Warchief Cometh##26965 |goto 57.41,10.14
accept The Gilneas Liberation Front##26989 |goto 57.41,10.14
step
Follow the path |goto 56.80,10.90 < 10 |only if walking
Follow the road up |goto 56.09,9.36 < 7 |only if walking
talk High Apothecary Shana T'veen##44784
accept Guts and Gore##26995 |goto 56.26,8.40
step
talk Apothecary Witherbloom##44778
accept Agony Abounds##26992 |goto 56.76,9.19
stickystart "Collect_Clean_Beast_Guts"
stickystart "Collect_Ferocious_Doomweed"
step
Jump down here |goto 56.90,9.64 < 5 |only if walking
kill 10 Worgen Renegade##44793 |q 26989/1 |goto 56.69,13.51
step
label "Collect_Clean_Beast_Guts"
Kill enemies around this area
|tip Only Ferocious Grizzled Bears and Worgs will drop this quest item.
collect 6 "Clean" Beast Guts##60742 |q 26995/1 |goto 58.00,15.50
step
label "Collect_Ferocious_Doomweed"
click Ferocious Doomweed##205099+
|tip They look like purple and blue spiky plants on the ground around this area.
collect 8 Ferocious Doomweed##60741 |q 26992/1 |goto 58.00,15.50
step
Follow the path |goto 56.92,13.26 < 10 |only if walking
Continue following the path |goto 56.74,10.76 < 10 |only if walking
Follow the road up |goto 56.09,9.37 < 7 |only if walking
talk Apothecary Witherbloom##44778
turnin Agony Abounds##26992 |goto 56.77,9.19
step
talk High Apothecary Shana T'veen##44784
turnin Guts and Gore##26995 |goto 56.27,8.41
accept Iterating Upon Success##26998 |goto 56.27,8.41
step
Jump down here |goto 56.90,9.64 < 5 |only if walking
talk Grand Executor Mortuus##44615
turnin The Gilneas Liberation Front##26989 |goto 57.41,10.12
step
talk Bat Handler Maggotbreath##44825
Tell him _"I need to take a bat to the Dawning Isles."_
Requisition a Bat from Bat Handler Maggotbreath |q 26998/1 |goto 57.91,8.70
step
Kill Vile Fin enemies around this area
|tip Use the "Blight Concoction" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #50# Vile Fin Murlocs |q 26998/2 |goto 76.85,19.66
step
Return to Forsaken High Command |goto 57.90,8.95 < 10 |c |q 26998
step
Follow the road up |goto 56.82,7.98 < 7 |only if walking
talk High Apothecary Shana T'veen##44784
turnin Iterating Upon Success##26998 |goto 56.27,8.41
step
Follow the path |goto 56.87,8.01 < 7 |only if walking
talk Deathstalker Commander Belmont##44789
accept Dangerous Intentions##27039 |goto 58.08,8.98
step
Follow the path |goto 56.66,12.79 < 10 |only if walking
click Abandoned Outhouse##205143
turnin Dangerous Intentions##27039 |goto 53.89,12.96
accept Waiting to Exsanguinate##27045 |goto 53.89,12.96
step
Enter the building |goto 53.40,13.26 < 5 |walk
clicknpc Armoire##44894
|tip Upstairs inside the building.
Watch the dialogue
|tip This quest objective will not complete if you cancel the cinematic.
Learn of Darius Crowley's Plans |q 27045/1 |goto 53.30,12.56
step
Leave the building |goto 53.40,13.26 < 3 |walk
Follow the path |goto 54.10,13.62 < 10 |only if walking
Continue following the path |goto 56.25,11.73 < 10 |only if walking
Continue following the path |goto 56.51,11.11 < 5 |only if walking
talk Deathstalker Commander Belmont##44789
turnin Waiting to Exsanguinate##27045 |goto 58.08,8.99
accept Belmont's Report##27056 |goto 58.08,8.99
step
talk Lady Sylvanas Windrunner##44365
turnin Belmont's Report##27056 |goto 57.37,10.19
accept The Warchief's Fleet##27065 |goto 57.37,10.19
step
Follow the path |goto 57.98,11.53 < 7 |only if walking
Continue following the path |goto 57.90,12.38 < 10 |only if walking
Follow the road |goto 55.87,14.58 < 10 |only if walking
Continue following the road |goto 51.85,22.62 < 10 |only if walking
Follow the path |goto 48.99,21.63 < 7 |only if walking
Continue following the path |goto 46.84,20.64 < 10 |only if walking
talk Franny Mertz##50463
fpath Forsaken Rear Guard |goto 45.93,21.87
step
Follow the path |goto 45.54,21.28 < 10 |only if walking
talk Admiral Hatchet##44916
turnin The Warchief's Fleet##27065 |goto 44.01,21.35
accept Steel Thunder##27069 |goto 44.01,21.35
step
talk Warlord Torok##44917
accept Give 'em Hell!##27073 |goto 44.00,21.28
step
talk Apothecary Wormcrud##44912
accept Playing Dirty##27082 |goto 44.80,20.91
step
Enter the building |goto 44.42,20.73 < 5 |walk
talk Commander Hickley##45496
|tip Inside the building.
home Forsaken Rear Guard |goto 44.35,20.33 |q 27073
step
Leave the building |goto 44.40,20.67 < 3 |walk
Follow the path |goto 43.81,21.42 < 10 |only if walking
Kill enemies around this area
collect 8 Diseased Organ##60793 |q 27082/1 |goto 41.75,18.39
stickystart "Slay_Bloodfang_Scavengers"
step
Follow the path up |goto 41.86,20.72 < 10 |only if walking
Follow the path |goto 41.75,23.19 < 10 |only if walking
click Sea Dog Crate##44915+
|tip They look like small brown and gray boxes with the Horde symbol on them sitting on the ground around this area.
Recover #5# Sea Dog Crates |q 27069/1 |goto 38.69,27.82
step
label "Slay_Bloodfang_Scavengers"
kill 10 Bloodfang Scavenger##44549 |q 27073/1 |goto 39.16,30.08
step
Follow the path |goto 40.78,24.78 < 10 |only if walking
Follow the road |goto 42.33,22.43 < 10 |only if walking
talk Warlord Torok##44917
turnin Give 'em Hell!##27073 |goto 44.00,21.29
step
talk Admiral Hatchet##44916
turnin Steel Thunder##27069 |goto 44.02,21.35
accept Lost in the Darkness##27093 |goto 44.02,21.35
step
talk Warlord Torok##44917
accept Skitterweb Menace##27095 |goto 44.00,21.28
step
talk Apothecary Wormcrud##44912
turnin Playing Dirty##27082 |goto 44.80,20.91
accept It's Only Poisonous if You Ingest It##27088 |goto 44.80,20.91
step
Follow the path |goto 43.78,21.59 < 10 |only if walking
Continue following the path |goto 40.57,24.83 < 10 |only if walking
Continue following the path |goto 40.53,27.59 < 10 |only if walking
use the Mutant Bush Chicken Cage##60808
|tip Use it on a Forest Ettin around this area.
|tip They look like large brutes that walk around this area.
|tip They will appear on your minimap as yellow dots.
kill Forest Ettin##44367
Slay a Forest Ettin |q 27088/1 |goto 41.95,29.92
stickystart "Rescue_Orc_Sea_Dogs"
step
Follow the path |goto 40.92,28.10 < 10 |only if walking
Continue following the path |goto 40.17,27.06 < 10 |only if walking
Continue following the path |goto 39.87,24.67 < 10 |only if walking
Continue following the path |goto 37.10,22.51 < 10 |only if walking
Continue following the path |goto 36.25,19.36 < 10 |only if walking
Kill Skitterweb enemies around this area
Slay #12# Skitterweb Spiders |q 27095/1 |goto 35.37,16.16
step
Click the Complete Quest Box:
turnin Skitterweb Menace##27095
accept Deeper into Darkness##27094
step
label "Rescue_Orc_Sea_Dogs"
kill Webbed Victim##44941+
|tip They look like people stuck in white spider webs on the ground around this area.
Rescue #6# Orc Sea Dogs |q 27093/1 |goto 35.37,16.16
step
Enter the mine |goto 35.65,13.56 < 5 |walk
Follow the path |goto 35.33,12.50 < 5
Continue following the path |goto 35.47,11.68 < 5
Continue following the path |goto 34.70,10.93 < 5
Continue following the path |goto 34.67,10.19 < 5
Continue following the path |goto 34.18,9.57 < 5
Continue following the path |goto 34.63,7.81 < 5
Continue following the path |goto 35.63,8.27 < 5
kill Skitterweb Matriarch##44906
|tip It looks like a huge spider hanging from the ceiling inside the mine.
Slay the Skitterweb Matriarch |q 27094/1 |goto 36.02,8.82
step
Leave the building |goto 44.40,20.65 < 3 |walk
talk Apothecary Wormcrud##44912
turnin It's Only Poisonous if You Ingest It##27088 |goto 44.80,20.91
step
talk Warlord Torok##44917
turnin Deeper into Darkness##27094 |goto 44.00,21.29
step
talk Admiral Hatchet##44916
turnin Lost in the Darkness##27093 |goto 44.02,21.35
accept Orcs are in Order##27096 |goto 44.02,21.35
step
Follow the path |goto 45.57,21.23 < 10 |only if walking
talk Lady Sylvanas Windrunner##44365
turnin Orcs are in Order##27096 |goto 57.36,10.20
accept Rise, Forsaken##27097 |goto 57.36,10.20
step
Follow the path |goto 58.04,11.82 < 10 |only if walking
Follow the road |goto 61.27,11.56 < 10 |only if walking
Follow the path down |goto 61.98,13.52 < 10 |only if walking
Cross the water |goto 65.13,19.68 < 10 |only if walking
Follow the path up |goto 64.85,22.82 < 5 |only if walking
Continue following the path |goto 64.89,25.35 < 10 |only if walking
kill Hillsbrad Refugee##44954+
Raise #15# Forsaken |q 27097/1 |goto 65.59,25.79
step
Click the Complete Quest Box:
turnin Rise, Forsaken##27097
accept No Escape##27099
step
Enter the building |goto 65.74,24.53 < 5 |walk
Follow the path |goto 65.88,24.39 < 3 |walk
Continue following the path |goto 66.28,24.35 < 3 |walk
Continue following the path |goto 66.24,23.93 < 3 |walk
Continue following the path |goto 65.59,23.83 < 3 |walk
Continue following the path |goto 65.67,23.35 < 3 |walk
Run up the stairs |goto 65.90,23.40 < 3 |walk
Continue up the stairs |goto 65.87,23.92 < 3 |walk
Follow the path |goto 66.16,23.89 < 3 |walk
Run up the ramp |goto 66.16,24.55 < 3 |walk
Watch the dialogue
|tip Upstairs inside the buildilng.
|tip Don't cancel the cinematic.
Find the Human Leaders |q 27099/1 |goto 65.74,24.46
step
Return to Forsaken High Command |goto 57.54,10.65 < 10 |c |q 27099 |notravel
step
talk Lady Sylvanas Windrunner##44365
turnin No Escape##27099 |goto 57.37,10.19
accept Lordaeron##27098 |goto 57.37,10.19
step
Watch the dialogue
Ride with Lady Sylvanas Windrunner to the Sepulcher |q 27098/1 |goto 44.94,41.74
step
talk Lady Sylvanas Windrunner##44365
turnin Lordaeron##27098 |goto 44.90,41.65
accept Honor the Dead##27180 |goto 44.90,41.65
step
talk Karos Razok##2226
fpath The Sepulcher |goto 45.40,42.49
step
talk Warlord Torok##44917
accept Hair of the Dog##27226 |goto 45.75,41.91
step
talk Admiral Hatchet##44916
accept Reinforcements from Fenris##27231 |goto 45.81,41.95
step
Enter the building |goto 46.15,42.48 < 5 |walk
talk Innkeeper Bates##6739
|tip Inside the building.
home The Sepulcher |goto 46.41,42.69 |q 27746 |future
stickystart "Slay_Hillsbrad_Worgen"
step
Leave the building |goto 46.15,42.48 < 3 |walk
Follow the path |goto 46.02,41.65 < 10 |only if walking
Follow the road |goto 46.61,41.27 < 10 |only if walking
Continue following the road |goto 47.91,39.24 < 10 |only if walking
Continue following the road |goto 51.02,36.77 < 10 |only if walking
Follow the path |goto 51.34,35.86 < 10 |only if walking
Continue following the path |goto 52.85,36.05 < 10 |only if walking
use the Barrel of Explosive Ale##60870
|tip Use it on Orc Sea Dogs around this area.
|tip They look like Orcs dressed as pirates laying on the ground around this area.
Rouse #8# Orc Sea Dogs |q 27226/1 |goto 54.40,34.23
step
label "Slay_Hillsbrad_Worgen"
kill 10 Hillsbrad Worgen##45254 |q 27231/1 |goto 54.40,34.23
step
Follow the path |goto 55.22,32.60 < 10 |only if walking
Follow the road down |goto 58.65,35.59 < 10 |only if walking
Follow the path |goto 59.43,34.65 < 7 |only if walking
click Horde Communication Panel##205350
turnin Reinforcements from Fenris##27231 |goto 59.18,34.20
accept The Waters Run Red...##27232 |goto 59.18,34.20
step
clicknpc Horde Cannon##45263
Enter the Turret |invehicle |goto 59.79,33.78 |q 27232
step
kill Hillsbrad Worgen##45270+
|tip They swim across the water from the east.
|tip Use the ability on your action bar.
Slay #50# Hillsbrad Worgen |q 27232/1 |goto 63.35,33.59
step
Follow the path |goto 58.62,35.60 < 10 |only if walking
Continue following the path |goto 57.16,34.18 < 10 |only if walking
Continue following the path |goto 55.22,32.54 < 10 |only if walking
Continue following the path |goto 52.89,36.10 < 10 |only if walking
Continue following the path |goto 51.19,36.20 < 10 |only if walking
Follow the road |goto 50.74,37.06 < 10 |only if walking
Continue following the road |goto 48.19,38.90 < 10 |only if walking
Follow the road up |goto 46.75,41.04 < 10 |only if walking
talk Warlord Torok##44917
turnin Hair of the Dog##27226 |goto 45.75,41.92
step
talk Admiral Hatchet##44916
turnin The Waters Run Red...##27232 |goto 45.81,41.95
stickystart "Collect_Forsaken_Insignias"
step
Follow the path |goto 45.85,43.58 < 10 |only if walking
kill Bloodfang Stalker##45195+
accept Excising the Taint##27181 |goto 47.30,48.65
|tip You will eventually automatically accept this quest.
step
kill 10 Bloodfang Stalker##45195 |q 27181/1 |goto 46.85,51.13
step
Click the Complete Quest Box:
turnin Excising the Taint##27181
accept Seek and Destroy##27193
step
label "Collect_Forsaken_Insignias"
clicknpc Veteran Forsaken Trooper##45197+
|tip They look like Undead corpses laying on the ground around this area.
collect 6 Forsaken Insignia##60862 |q 27180/1 |goto 47.55,50.49
step
Enter the building |goto 46.10,54.45 < 5 |walk
kill Caretaker Smithers##45219
|tip Standing on the shelves inside the building.
collect Smithers' Logbook##60867 |q 27193/1 |goto 45.87,54.38
step
Click the Complete Quest Box:
turnin Seek and Destroy##27193
accept Cornered and Crushed!##27194
step
Leave the building |goto 46.10,54.45 < 3 |walk
Follow the path |goto 46.58,54.12 < 10 |only if walking
Continue following the path |goto 47.76,53.84 < 10 |only if walking
Continue following the path |goto 48.85,52.76 < 10 |only if walking
Follow the path down |goto 49.98,53.96 < 10 |q 27194 |only if walking
Continue down the path |goto 51.29,51.99 < 10 |only if walking
Follow the road |goto 52.08,49.18 < 10 |only if walking
Continue following the road |goto 52.65,47.39 < 10 |only if walking
Continue following the road |goto 55.35,48.78 < 10 |only if walking
Follow the road up |goto 55.82,47.52 < 10 |only if walking
talk Master Forteski##45228
turnin Cornered and Crushed!##27194 |goto 55.89,46.35
accept Nowhere to Run##27195 |goto 55.89,46.35
step
Enter the mine |goto 56.55,46.03 < 5 |walk
Follow the path |goto 57.26,45.69 < 5 |walk
Continue following the path |goto 57.54,44.66 < 5 |walk
Watch the dialogue
|tip Follow Master Forteski as he walks.
Escort Master Forteski Through the Deep Elem Mine |q 27195/1 |goto 58.14,44.93
|tip Inside the mine.
step
Leave the building |goto 46.17,42.50 < 3 |walk
talk Lady Sylvanas Windrunner##44365
turnin Honor the Dead##27180 |goto 44.90,41.65
turnin Nowhere to Run##27195 |goto 44.90,41.65
accept To Forsaken Forward Command##27290 |goto 44.90,41.65
step
Fly to Forsaken Forward Command |goto Ruins of Gilneas/0 57.33,18.68 < 10 |c |q 27290 |notravel
step
talk Deathstalker Commander Belmont##45312
|tip He walks around this area.
turnin To Forsaken Forward Command##27290 |goto 57.47,18.89
accept In Time, All Will Be Revealed##27342 |goto 57.47,18.89
step
talk Forward Commander Onslaught##45315
accept Losing Ground##27333 |goto 57.55,18.24
accept The F.C.D.##27345 |goto 57.55,18.24
step
talk Bat Handler Doomair##45479
fpath Forsaken Forward Command |goto 57.28,17.74
stickystart "Slay_Worgen_Rebels"
step
Follow the path |goto 56.66,18.37 < 10 |only if walking
kill Korok the Colossus##45301
|tip It looks like a big brown giant that walks around this area.
|tip You may need help with this.
accept Korok the Colossus##27322 |goto 50.62,17.67
|tip You will eventually automatically accept this quest after looting.
step
click Forsaken Communication Device##205363
collect Forsaken Communication Device##60953 |q 27345/1 |goto 45.76,21.96
step
label "Slay_Worgen_Rebels"
kill 12 Worgen Rebel##45292 |q 27333/1 |goto 51.90,23.43
step
Follow the path |goto 56.50,18.45 < 10 |only if walking
talk Forward Commander Onslaught##45315
turnin Losing Ground##27333 |goto 57.55,18.24
turnin The F.C.D.##27345 |goto 57.55,18.24
turnin Korok the Colossus##27322 |goto 57.55,18.24
step
Jump down here |goto 57.43,20.01 < 10 |only if walking
Follow the path |goto 57.67,21.57 < 10 |only if walking
Follow the path down |goto 59.17,21.75 < 7 |only if walking
Follow the path |goto 59.34,23.79 < 7 |only if walking
Follow the path up |goto 59.62,26.16 < 10 |only if walking
click Wolfsbane##205367+
|tip They look like small green plants with pink berries at the base of trees around this area.
collect 6 Wolfsbane##60958 |q 27342/1 |goto 63.77,26.53
step
Follow the path |goto 59.81,27.00 < 10 |only if walking
Follow the path down |goto 59.18,21.77 < 10 |only if walking
Follow the path up |goto 56.84,21.06 < 10 |only if walking
Continue up the path |goto 56.44,18.58 < 10 |only if walking
talk Deathstalker Commander Belmont##45312
|tip He walks around this area.
turnin In Time, All Will Be Revealed##27342 |goto 57.47,18.89
step
talk Forward Commander Onslaught##45315
accept Break in Communications: Dreadwatch Outpost##27349 |goto 57.55,18.24
step
Follow the path |goto 56.12,18.58 < 10 |only if walking
Continue following the path |goto 53.98,23.98 < 10 |only if walking
Investigate Dreadwatch Outpost |q 27349/1 |goto 52.0,32.1
step
Click the Complete Quest Box:
turnin Break in Communications: Dreadwatch Outpost##27349
accept Break in Communications: Rutsak's Guard##27350
step
Follow the path |goto 52.62,33.88 < 10 |only if walking
Continue following the path |goto 55.05,35.48 < 10 |only if walking
Continue following the path |goto 58.48,35.45 < 10 |only if walking
Continue following the path |goto 65.12,35.17 < 10 |only if walking
Enter the building |goto 65.69,34.45 < 5 |walk
talk Captain Rutsak##45389
|tip Inside the building.
turnin Break in Communications: Rutsak's Guard##27350 |goto 65.64,34.11
accept Vengeance for Our Soldiers##27360 |goto 65.64,34.11
accept On Whose Orders?##27364 |goto 65.64,34.11
|tip You will accept this quest automatically.
stickystart "Slay_7th_Legion_Submariners"
step
Leave the building |goto 65.69,34.45 < 3 |walk
Follow the path |goto 65.19,35.29 < 10 |only if walking
Continue following the path |goto 62.69,38.47 < 10 |only if walking
Cross the water |goto 61.96,40.02 < 10 |only if walking
Follow the path |goto 60.87,41.33 < 10 |only if walking
Continue following the path |goto 59.12,45.32 < 10 |only if walking
kill Master Sergeant Pietro Zaren##45405
collect Orders from High Command##60977 |q 27364/1 |goto 58.87,47.45
step
Click the Complete Quest Box:
turnin On Whose Orders?##27364
accept What Tomorrow Brings##27401
step
Follow the path |goto 56.16,44.04 < 10 |only if walking
click 7th Legion Telescope##9146
Watch the dialogue
|tip Don't cancel the cinematic.
Use the 7th Legion Telescope to Scout the Harbor |q 27401/1 |goto 54.91,44.28
step
Click the Complete Quest Box:
turnin What Tomorrow Brings##27401
accept Fall Back!##27405
step
label "Slay_7th_Legion_Submariners"
Follow the path |goto 56.02,44.15 < 7 |only if walking
kill 10 7th Legion Submariner##45403 |q 27360/1 |goto 57.57,45.93
step
Follow the path |goto 57.97,42.63 < 10 |only if walking
Continue following the path |goto 60.22,41.49 < 10 |only if walking
Continue following the path |goto 60.63,40.48 < 10 |only if walking
Continue following the path |goto 61.91,40.18 < 10 |only if walking
Cross the water |goto 62.57,38.52 < 10 |only if walking
Follow the path |goto 65.26,35.15 < 10 |only if walking
Enter the building |goto 65.69,34.45 < 5 |walk
talk Captain Rutsak##45389
|tip Inside the building.
turnin Vengeance for Our Soldiers##27360 |goto 65.64,34.11
step
Leave the building |goto 65.69,34.45 < 3 |walk
Follow the path |goto 65.72,34.90 < 7 |only if walking
Continue following the path |goto 66.98,34.00 < 10 |only if walking
Cross the water |goto 70.35,32.07 < 10 |only if walking
Follow the path |goto 71.56,31.02 < 10 |only if walking
Continue following the path |goto 72.30,31.05 < 10 |only if walking
talk Deathstalker Commander Belmont##45312
turnin Fall Back!##27405 |goto 72.95,30.11
accept A Man Named Godfrey##27406 |goto 72.95,30.11
step
accept Resistance is Futile##27423 |goto 73.39,31.17
|tip You will accept this quest automatically.
step
Follow the path up |goto 73.70,32.78 < 10 |only if walking
Follow the road |goto 73.64,36.11 < 10 |only if walking
Continue following the road |goto 73.94,39.69 < 10 |only if walking
Continue following the road |goto 74.96,42.94 < 10 |only if walking
Kill enemies around this area
Slay #20# Worgen Combatants |q 27423/1 |goto 74.79,46.09
step
_Next to you:_
talk Deathstalker Commander Belmont##45474
turnin Resistance is Futile##27423
step
Follow the path |goto 75.65,53.48 < 10 |only if walking
Follow the path up |goto 77.19,54.14 < 10 |only if walking
Follow the path |goto 77.20,59.38 < 10 |only if walking
Continue following the path |goto 75.91,62.93 < 10 |only if walking
Follow the road |goto 77.97,64.51 < 10 |only if walking
Follow the path |goto 79.28,65.49 < 10 |only if walking
Follow the path |goto 75.65,53.48 < 10 |only if walking
Follow the path up |goto 77.19,54.14 < 10 |only if walking
Follow the path |goto 77.20,59.38 < 10 |only if walking
Continue following the path |goto 75.91,62.93 < 10 |only if walking
Follow the road |goto 77.97,64.51 < 10 |only if walking
Follow the path |goto 79.28,65.49 < 10 |only if walking
Jump down here |goto 79.67,68.26 < 7 |only if walking
Follow the road up |goto 78.96,72.49 < 10 |only if walking
Follow the road down |goto 77.34,74.72 < 10 |only if walking
Follow the path |goto 76.95,76.20 < 7 |only if walking
Follow the path down |goto 77.98,75.60 < 5 |only if walking
clicknpc Lord Godfrey##44369
Find Lord Vincent Godfrey's Corpse |q 27406/1 |goto 79.72,75.68
step
_Next to you:_
talk Deathstalker Commander Belmont##45474
turnin A Man Named Godfrey##27406
step
talk Deathstalker Commander Belmont##45312
accept The Great Escape##27438 |goto 79.75,75.75
step
Watch the dialogue
Fly with the Valkyrie |invehicle |goto 79.70,75.67 |q 27438
step
Watch the dialogue
Escape the Ruins of Gilneas |q 27438/1 |goto Silverpine Forest/0 51.82,66.60 |notravel
step
talk Lady Sylvanas Windrunner##45525
turnin The Great Escape##27438 |goto Silverpine Forest/0 51.78,66.07
accept Rise, Godfrey##27472 |goto Silverpine Forest/0 51.78,66.07
step
Watch the dialogue
|tip Follow Lady Sylvanas Windrunner as she walks.
Witness Lord Godfrey Be Reborn |q 27472/1 |goto 51.78,66.07
step
talk Lady Sylvanas Windrunner##45617
turnin Rise, Godfrey##27472 |goto 51.90,65.01
accept Breaking the Barrier##27474 |goto 51.90,65.01
step
talk Daschla##45626
accept Unyielding Servitors##27475 |goto 51.90,64.70
step
Follow the path |goto 51.55,64.41 < 7 |only if walking
talk Steven Stutzka##46552
fpath The Forsaken Front |goto 50.87,63.62
stickystart "Collect_Servitor_Cores"
step
Follow the path |goto 52.75,64.03 < 10 |only if walking
Continue following the path |goto 54.13,64.36 < 10 |only if walking
Follow the road |goto 57.35,64.33 < 10 |only if walking
Continue following the road |goto 61.72,64.19 < 10 |only if walking
Enter the building |goto 62.87,64.02 < 5 |walk
click Ambermill Codex##205534
|tip Inside the building.
collect Ambermill Codex##61306 |q 27474/1 |goto 63.48,64.25
step
label "Collect_Servitor_Cores"
Leave the building |goto 62.87,64.02 < 3 |walk
kill Elemental Servitor##45711+
collect 6 Servitor Core##61307 |q 27475/1 |goto 59.78,64.30
step
Follow the road |goto 54.69,64.41 < 10 |only if walking
Follow the path |goto 52.38,65.00 < 10 |only if walking
talk Daschla##45626
turnin Unyielding Servitors##27475 |goto 51.90,64.70
step
talk Lady Sylvanas Windrunner##45617
turnin Breaking the Barrier##27474 |goto 51.90,65.01
accept Dalar Dawnweaver##27476 |goto 51.90,65.01
step
talk Dalar Dawnweaver##1938
|tip Downstairs inside the building.
turnin Dalar Dawnweaver##27476 |goto 47.08,43.22
accept Relios the Relic Keeper##27478 |goto 47.08,43.22
accept Practical Vengeance##27483 |goto 47.08,43.22
step
clicknpc Portal to Dalaran Crater##45731 |goto 47.25,43.37
Teleport to Dalaran Crater |goto Hillsbrad Foothills/0 30.27,36.64 < 10 |c |noway |q 27483
step
kill Arcane Remnant##45728+
accept Ley Energies##27480 |goto Hillsbrad Foothills/0 29.80,37.05
|tip You will eventually automatically accept this quest after looting.
step
Follow the path |goto 30.83,37.75 < 5 |only if walking
Follow the path up |goto 31.21,38.33 < 5 |only if walking
Continue up the path |goto 31.35,39.26 < 5 |only if walking
Continue up the path |goto 31.78,39.28 < 5 |only if walking
kill Arcane Remnant##45728+
collect 8 Arcane Remnant##61311 |q 27480/1 |goto 31.79,37.39
stickystart "Slay_Dalaran_Humans"
step
Follow the path |goto 32.27,38.59 < 7 |only if walking
Follow the path up |goto 32.81,38.69 < 7 |only if walking
Continue up the path |goto 33.30,38.61 < 5 |only if walking
Follow the path |goto 33.61,38.17 < 7 |only if walking
Continue following the path |goto 33.05,39.61 < 10 |only if walking
Continue following the path |goto 32.61,40.81 < 10 |only if walking
kill Relios the Relic Keeper##45734
|tip He will appear on your minimap as a yellow dot.
collect Dalaran Archmage's Signet Ring##61312 |q 27478/1 |goto 33.81,42.98
step
label "Slay_Dalaran_Humans"
Kill Dalaran enemies around this area
Slay #12# Dalaran Humans |q 27483/1 |goto 31.05,43.47
step
Follow the path |goto 31.67,42.66 < 10 |only if walking
Continue following the path |goto 32.69,40.19 < 10 |only if walking
Continue following the path |goto 33.61,38.85 < 10 |only if walking
Continue following the path |goto 33.45,38.49 < 7 |only if walking
Follow the path down |goto 33.02,38.69 < 5 |only if walking
Continue down the path |goto 32.18,38.48 < 5 |only if walking
Follow the path |goto 31.81,38.66 < 7 |only if walking
Continue following the path |goto 31.65,39.39 < 7 |only if walking
Follow the path down |goto 31.35,39.14 < 5 |only if walking
Continue down the path |goto 31.21,38.40 < 5 |only if walking
Continue down the path |goto 30.72,37.43 < 7 |only if walking
clicknpc Portal to the Sepulcher##45732 |goto 30.28,36.62
Teleport to the Sepulcher |goto Silverpine Forest/0 47.23,43.35 < 10 |c |noway |q 27478
step
talk Dalar Dawnweaver##1938
|tip Downstairs inside the building.
turnin Relios the Relic Keeper##27478 |goto Silverpine Forest/0 47.08,43.22
accept Only One May Enter##27484 |goto Silverpine Forest/0 47.08,43.22
turnin Practical Vengeance##27483 |goto Silverpine Forest/0 47.08,43.22
turnin Ley Energies##27480 |goto Silverpine Forest/0 47.08,43.22
step
Leave the building |goto 46.16,42.49 < 3 |walk
Follow the path |goto 51.53,64.45 < 10 |only if walking
talk Lady Sylvanas Windrunner##45617
turnin Only One May Enter##27484 |goto 51.90,65.01
accept Transdimensional Warfare: Chapter I##27512 |goto 51.90,65.01
step
talk High Warlord Cromush##45631
|tip He walks around this area.
accept A Wolf in Bear's Clothing##27510 |goto 51.77,67.12
step
Follow the path |goto 52.63,67.28 < 10 |only if walking
Follow the path up |goto 53.92,67.89 < 10 |only if walking
Follow the road |goto 53.70,72.83 < 10 |only if walking
Continue following the road |goto 54.55,75.07 < 10 |only if walking
Continue following the road |goto 57.85,77.61 < 10 |only if walking
kill 10 Inconspicuous Bear##45750 |q 27510/1 |goto 61.51,76.76
step
Follow the path |goto 60.42,75.67 < 10 |only if walking
Follow the path up |goto 60.23,73.98 < 7 |only if walking
Continue up the path |goto 60.81,72.90 < 5 |only if walking
Enter the cave |goto 60.27,72.21 < 5 |walk
Follow the path |goto 59.78,71.78 < 5 |walk
Continue following the path |goto 59.77,70.93 < 5 |walk
Continue following the path |goto 59.32,70.71 < 5 |walk
Continue following the path |goto 58.75,71.23 < 5 |walk
Continue following the path |goto 58.40,72.01 < 5 |walk
Continue following the path |goto 58.05,71.88 < 5 |walk
Continue following the path |goto 57.50,71.37 < 5 |walk
Continue following the path |goto 57.34,69.86 < 5 |walk
clicknpc Ambermill Dimensional Portal##45752
|tip Inside the cave.
turnin Transdimensional Warfare: Chapter I##27512 |goto 58.08,69.91
accept Transdimensional Warfare: Chapter II##27513 |goto 58.08,69.91
step
clicknpc Ambermill Dimensional Portal##45752
|tip Inside the cave.
Choose _<Use the Ambermill Dimensional Portal.>_
Enter the Transdimensional Shift |havebuff 252267 |goto 58.08,69.91 |q 27513
step
Leave the building |goto 62.86,64.02 < 3 |walk
Continue following the path |goto Silverpine Forest/0 61.64,64.29 < 10 |only if walking
Kill Ambermill enemies around this area
Slay #20# Ambermill Mages |q 27513/1 |goto 61.22,62.62
step
Click the Complete Quest Box:
turnin Transdimensional Warfare: Chapter II##27513
accept Transdimensional Warfare: Chapter III##27518
step
Follow the road |goto 57.90,64.35 < 10 |only if walking
kill Archmage Ataeric##2120
|tip He will spawn minions to attack you.
|tip Kill the minions when they are next to Archmage Ataeric to remove his Arcane Shield.
Destroy the Transdimensional Shield |q 27518/1 |goto 56.64,64.36
step
Follow the road |goto 54.15,64.58 < 10 |only if walking
talk Lady Sylvanas Windrunner##45617
turnin Transdimensional Warfare: Chapter III##27518 |goto 51.90,65.01
accept Taking the Battlefront##27542 |goto 51.90,65.01
step
_Next to you:_
talk Baron Ashbury##45880
accept Of No Consequence##27547
step
_Next to you:_
talk Lord Walden##45879
accept Lessons in Fear##27548
step
_Next to you:_
talk Lord Godfrey##45878
accept Pyrewood's Fall##27550
step
talk High Warlord Cromush##45631
|tip He walks around this area.
turnin A Wolf in Bear's Clothing##27510 |goto 51.77,67.15
accept Warchief's Command: Hillsbrad Foothills!##28089 |goto 51.77,67.15 |only if not havequest(28096) and not completedq(28096)
stickystart "Slay_7th_Legion_Scouts"
stickystart "Rescue_Cowering_Troops"
step
Follow the path |goto 51.69,68.67 < 10 |only if walking
Continue following the path |goto 51.11,71.95 < 10 |only if walking
Follow the road |goto 49.02,71.70 < 10 |only if walking
use the Bundle of Torches##61374
Torch the Pyrewood Chapel |q 27550/2 |goto 46.61,72.81
step
Follow the path |goto 44.86,73.28 < 10 |only if walking
use the Bundle of Torches##61374
Torch the Pyrewood Inn |q 27550/1 |goto 45.19,72.03
step
use the Bundle of Torches##61374
Torch the Pyrewood Town Hall |q 27550/3 |goto 44.12,73.14
step
_Next to you:_
talk Lord Godfrey##45878
turnin Pyrewood's Fall##27550
step
label "Slay_7th_Legion_Scouts"
kill 7th Legion Scout##45883+
|tip They look like stealthed Alliance enemies around this area.
Slay #12# 7th Legion Scouts |q 27548/1 |goto 44.23,73.07
step
label "Rescue_Cowering_Troops"
talk Cowering Troop##45910+
|tip They look like frightened friendly Horde NPCs behind and inside buildings around this area.
Rescue #8# Cowering Troops |q 27547/1 |goto 44.58,74.05
step
_Next to you:_
talk Baron Ashbury##45880
turnin Of No Consequence##27547
step
_Next to you:_
talk Lord Walden##45879
turnin Lessons in Fear##27548
accept 7th Legion Battle Plans##27577
step
_Next to you:_
talk Lord Godfrey##45878
accept Sowing Discord##27580
stickystart "Collect_7th_Legion_Battle_Plans"
step
Follow the path |goto 43.80,73.57 < 7 |only if walking
Continue following the path |goto 43.24,74.30 < 7 |only if walking
kill General Marstone##45995 |q 27580/1 |goto 42.38,79.11
|tip He walks around this area.
step
_Next to you:_
talk Lord Godfrey##45878
turnin Sowing Discord##27580
step
label "Collect_7th_Legion_Battle_Plans"
kill Dwarven Infantry##45855+
collect 7th Legion Battle Plan##61510 |q 27577/1 |goto 42.58,79.48
step
_Next to you:_
talk Lord Walden##45879
turnin 7th Legion Battle Plans##27577
step
_Next to you:_
talk Lord Godfrey##45878
accept On Her Majesty's Secret Service##27594
step
Follow the path |goto 44.10,79.70 < 10 |only if walking
Continue following the path |goto 45.31,81.35 < 10 |only if walking
Continue following the path |goto 45.65,83.31 < 10 |only if walking
Continue following the path |goto 48.68,86.06 < 10 |only if walking
Watch the dialogue
kill Commander Lorna Crowley##45997
Capture Commander Lorna Crowley |q 27594/1 |goto 50.32,88.29
step
Follow the path |goto 49.85,85.46 < 10 |only if walking
Continue following the path |goto 50.27,79.15 < 10 |only if walking
Continue following the path |goto 50.90,72.10 < 10 |only if walking
talk Lady Sylvanas Windrunner##45617
turnin On Her Majesty's Secret Service##27594 |goto 51.90,65.01
accept Cities in Dust##27601 |goto 51.90,65.01
step
Watch the dialogue
|tip Follow Lady Sylvanas Windrunner as she walks.
Kill the enemies that attack
|tip They will retreat after being weakened.
Achieve Victory: Final and Absolute |q 27601/1 |goto 45.30,84.99
step
talk Lady Sylvanas Windrunner##46124
turnin Cities in Dust##27601 |goto 45.32,84.47
accept Empire of Dirt##27746 |goto 45.32,84.47
step
Follow the path |goto 46.55,83.18 < 10 |only if walking
Continue following the path |goto 50.18,79.79 < 10 |only if walking
Continue following the path |goto 52.13,77.25 < 10 |only if walking
Continue following the path |goto 54.00,76.87 < 10 |only if walking
Follow the path up |goto 56.33,77.23 < 10 |only if walking
Follow the road |goto 59.85,77.97 < 10 |only if walking
Continue following the road |goto 63.86,78.46 < 10 |only if walking
Continue following the road |goto 67.33,80.54 < 10 |only if walking
talk High Executor Darthalia##2215
turnin Empire of Dirt##27746 |goto Hillsbrad Foothills/0 29.23,63.35
turnin Warchief's Command: Hillsbrad Foothills!##28089 |goto Hillsbrad Foothills/0 29.23,63.35 |only if havequest(28089) or completedq(28089)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Blasted Lands (40-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Blasted Lands",
next="Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Hellfire Peninsula (58-80)",
startlevel=40,
endlevel=60,
},[[
step
talk Zidormi##88206
|tip In order to complete the Blasted Lands questline for Loremaster of Eastern Kingdoms you will need to speak with Zidormi to change the zone back to normal.
Tell her _"Show me the Blasted Lands before the invasion."_ |havebuff 609811 |goto Blasted Lands/0 48.1,7.3
|only if ZGV.InPhase("Old Blasted Lands")
step
talk Preda##43121
fpath Dreadmaul Hold |goto Blasted Lands 43.7,14.3
step
talk Okrilla##41124
turnin Blasted Lands: The Other Side of the World##28858 |goto Blasted Lands 40.5,11.6
accept Futile Pride##25674 |goto Blasted Lands 40.5,11.6
step
kill Dreadmaul Ambusher##41136 |q 25674/1 |goto 43.6,16.9
step
talk Okrilla##41124
turnin Futile Pride##25674 |goto 40.5,11.6
accept Heartstrike##25676 |goto 40.5,11.6
step
talk Master Aitokk##41125
accept Ogre Combat##25675 |goto 42.6,14.0
step
kill 6 Dreadmaul Mauler##5977 |q 25675/1 |goto 45.2,34.6
kill 5 Dreadmaul Warlock##5978 |q 25675/2 |goto 45.2,34.6
step
_Enter_ the mine |goto 50.4,10.3 < 10 |walk
_Head down_ the left path |goto Blasted Lands/0 52.8,6.9 < 10 |indoors Nethergarde Mines
_Continue along_ the tracks |goto 55.9,2.9 < 10 |indoors Nethergarde Mines
talk Rofilian Dane##41133
turnin Heartstrike##25676 |goto 59.6,3.5 |indoors Nethergarde Mines
accept It's All Mine##25677 |goto 59.6,3.5 |indoors Nethergarde Mines
accept Pick Your Fate##25678 |goto 59.6,3.5 |indoors Nethergarde Mines
stickystart "nethergardekills"
step
click Ore Heap##203183
Dissolve #6# Ore Heaps |q 25677/1 |goto 58.8,4.1 |indoors Nethergarde Mines
step
label "nethergardekills"
kill 8 Nethergarde Miner##5996 |q 25678/1 |goto 58.8,4.1 |indoors Nethergarde Mines
kill 3 Nethergarde Engineer##5997 |q 25678/2 |goto 58.8,4.1 |indoors Nethergarde Mines
kill 3 Nethergarde Foreman##5998 |q 25678/3 |goto 58.8,4.1 |indoors Nethergarde Mines
step
talk Rofilian Dane##41133
turnin It's All Mine##25677 |goto 59.6,3.5 |indoors Nethergarde Mines
turnin Pick Your Fate##25678 |goto 59.6,3.5 |indoors Nethergarde Mines
accept Into the Mountain##25679 |goto 59.6,3.5 |indoors Nethergarde Mines
step
_Follow_ the right path |goto Blasted Lands/0 60.0,4.7 < 10 |indoors Nethergarde Mines
talk Tak'arili##41134
turnin Into the Mountain##25679 |goto 62.2,1.4 |indoors Nethergarde Mines
accept That's Not Us##25680 |goto 62.2,1.4 |indoors Nethergarde Mines
step
_Go around_ the corner |goto Blasted Lands 64.4,0.7 < 5 |indoors Nethergarde Mines
_Proceed through_ the mine |goto Blasted Lands 66.7,4.7 < 5 |indoors Nethergarde Mines
kill Illycor##41163 |q 25680/1 |goto 65.6,8.5 |indoors Nethergarde Mines
step
_Proceed through_ the mine |goto Blasted Lands 66.7,4.7 < 5 |indoors Nethergarde Mines
_Go around_ the corner |goto Blasted Lands 64.4,0.7 < 10 |indoors Nethergarde Mines
talk Tak'arili##41134
turnin That's Not Us##25680 |goto 62.2,1.4 |indoors Nethergarde Mines
accept Some People Just Need Killing##25681 |goto 62.2,1.4 |indoors Nethergarde Mines
step
click the Inconspicuous Box##203192
Disguise Yourself as a Box |invehicle |q 25681 |goto 62.0,1.3 |indoors Nethergarde Mines
step
Use your abandon box ability to get out of the box
kill Chief Prospector Hondo##41173 |q 25681/1 |goto 52.2,2.6 |indoors Nethergarde Mines
step
click the Inconspicuous Box##203192
Disguise Yourself as a Box |invehicle |q 25681 |goto 51.9,2.7 |indoors Nethergarde Mines
step
Use your _Abandon Box_ ability to get out of the box |outvehicle |q 25681 |goto 62.2,1.4 |indoors Nethergarde Mines
step
talk Tak'arili##41134
turnin Some People Just Need Killing##25681 |goto 62.2,1.4 |indoors Nethergarde Mines
accept Mission Complete##25682 |goto 62.2,1.4 |indoors Nethergarde Mines
step
_Leave_ the mine |goto 50.4,10.3 < 10 |walk
talk Master Aitokk##41125
turnin Ogre Combat##25675 |goto 42.6,14.0
step
talk Okrilla##41124
turnin Mission Complete##25682 |goto 40.5,11.6
accept The Dreadmaul Furnace##25683 |goto 40.5,11.6
step
_Enter_ the cave |goto 41.4,33.2 < 10 |walk
|tip Follow the path in the cave to the end.
talk Bloodmage Lynnore##7506
turnin The Dreadmaul Furnace##25683 |goto 39.2,36.3 |indoors Dreadmaul Furnace
accept Attune the Bloodstone##25684 |goto 39.2,36.3 |indoors Dreadmaul Furnace
step
click Bloodstone Teleporter##203753
Use the Internal Bloodstone Teleporter |q 25684/1 |goto 39.3,35.6  |indoors Dreadmaul Furnace
step
click Bloodstone Teleporter##203753
Use the External Bloodstone Teleporter |q 25684/2 |goto 41.5,32.0
step
talk Bloodmage Lynnore##7506
turnin Attune the Bloodstone##25684 |goto 39.2,36.3 |indoors Dreadmaul Furnace
accept The First Step##25685 |goto 39.2,36.3 |indoors Dreadmaul Furnace
step
talk Bloodmage Drazial##7505
accept A Bloodmage's Gotta Eat Too##25690 |goto 39.3,36.2 |indoors Dreadmaul Furnace
stickystart "redstoneandsnickerfang"
step
click Bloodstone Teleporter##203753 |goto 39.3,35.6 < 8 |indoors Dreadmaul Furnace
kill Ashmane Boar##5992+
collect 5 Ashmane Steak##55828 |q 25690/1 |goto 48.2,34.2
step
label "redstoneandsnickerfang"
kill Redstone Basilisk##5990+
collect 9 Redstone Basilisk Blood##55827 |q 25685/2 |goto 48.2,34.2
kill Snickerfang Hyena##5985+
collect 9 Snickerfang Hyena Blood##55826 |q 25685/1 |goto 48.2,34.2
More Ashmane Boars and Redstone Basilisk are at the following location |goto 56.9,24.8
step
click Bloodstone Teleporter##203753 |goto 41.5,32.0 < 5
talk Bloodmage Drazial##7505
turnin A Bloodmage's Gotta Eat Too##25690 |goto 39.3,36.2 |indoors Dreadmaul Furnace
step
talk Bloodmage Lynnore##7506
turnin The First Step##25685 |goto 39.2,36.3
accept Blood Ritual##25686 |goto 39.2,36.3
step
talk Bloodmage Lynnore##7506
Tell her _"I would like to start the Blood Ritual."_
Start the Blood Ritual |q 25686/1 |goto 39.2,36.3
step
talk Bloodmage Lynnore##7506
turnin Blood Ritual##25686 |goto 39.2,36.3
accept Not Just Any Body##25687 |goto 39.2,36.3
step
click Bloodstone Teleporter##203753 |goto 39.3,35.6
_Enter_ the cave |goto 41.4,33.2 < 10 |walk
click Dreadmaul Cache##203206
collect Loramus' Torso##55836 |q 25687/2 |goto 40.0,37.2 |indoors Dreadmaul Furnace
step
_Leave_ the cave |goto 41.4,33.2 < 10 |walk
_Enter_ the cave |goto 45.1,30.4 < 10 |walk
click Dreadmaul Cache##203206
collect Loramus' Head##55829 |q 25687/1 |goto 46.7,26.9  |indoors Rise of the Defiler
step
_Leave_ the cave |goto 45.1,30.4 < 10 |walk
_Enter_ the cave |goto 46.1,39.0 < 10 |walk
click Dreadmaul Cache##203206
collect Loramus' Legs##55837 |q 25687/3 |goto 47.0,39.5 |indoors Dreadmaul Post
step
_Leave_ the cave |goto 46.1,39.0 < 10 |walk
click Bloodstone Teleporter##203753 |goto 41.5,32.0
talk Bloodmage Lynnore##7506
turnin Not Just Any Body##25687 |goto 39.2,36.3 |indoors Dreadmaul Furnace
accept The Altar of Storms##25688 |goto 39.2,36.3 |indoors Dreadmaul Furnace
step
click Bloodstone Teleporter##203753 |goto 39.3,35.6 < 8 |indoors Dreadmaul Furnace
Follow the path up |goto 40.2,35.7 < 10 |only if walking
click Blood Altar##203196
|tip Defend Loranus's Body while he performs the ritual.
Resurrect Loramus |q 25688/1 |goto 37.0,28.4
step
click Bloodstone Teleporter##203753 |goto 41.5,32.0 < 8
talk Loramus Thalipedes##7783
turnin The Altar of Storms##25688 |goto 39.4,35.8 |indoors Dreadmaul Furnace
accept Time is Short##25689 |goto 39.4,35.8 |indoors Dreadmaul Furnace
step
click Bloodstone Teleporter##203753 |goto 39.3,35.6 > 10 |indoors Dreadmaul Furnace
talk Watcher Wazzik##41159
turnin Time is Short##25689 |goto 54.3,50.1
accept The Charred Granite of the Dark Portal##25691 |goto 54.3,50.1
accept The Vile Blood of Demons##25692 |goto 54.3,50.1
step
talk Warlord Dar'toon##19254
accept Protecting Our Rear##25694 |goto 54.5,50.5
stickystart "denomicblood"
stickystart "granitechips"
step
kill Shahandana##41165 |q 25694/2 |goto 59.9,43.1
step
kill Gomegaz##41166 |q 25694/3 |goto 52.3,41.9
step
kill Jarroc Torn-Wing##41164 |q 25694/1 |goto 43.9,47.7
step
label "denomicblood"
kill Felguard Sentry##6011+, Felhound##6010+, Oath-Chained Infernal##41253+
collect 7 Vile Demonic Blood##55991 |q 25692/1 |goto 48.9,46.0
step
label "granitechips"
click Charred Granite Outcropping##203224
|tip They look like small blue-purple chunks of rock around this area
collect 24 Charred Granite Chips##55989 |q 25691/1 |goto 48.9,46.0
step
talk Watcher Wazzik##41159
turnin The Charred Granite of the Dark Portal##25691 |goto 54.3,50.1
turnin The Vile Blood of Demons##25692 |goto 54.3,50.1
accept Enhancing the Stone##25693 |goto 54.3,50.1
step
talk Warlord Dar'toon##19254
turnin Protecting Our Rear##25694 |goto 54.5,50.5
accept Watching Our Back##25695 |goto 54.5,50.5
step
click Alliance Plans##203226
|tip Click the plans as soon as the Alliance Portal Sentry has his back turned to you while he's pacing, or else he will attack you when you try to get the plans.
Examine the Alliance Plans |q 25695/1 |goto 55.6,50.2
step
talk Warlord Dar'toon##19254
turnin Watching Our Back##25695 |goto 54.5,50.5
accept The Sunveil Excursion##25696 |goto 54.5,50.5
step
click the Bloodstone Teleporter##203753 |goto 41.5,32.0 < 10
talk Loramus Thalipedes##7783
turnin Enhancing the Stone##25693 |goto 39.4,35.8
accept The Amulet of Allistarj##25697 |goto 39.4,35.8
accept The Amulet of Sevine##25698 |goto 39.4,35.8
accept The Amulet of Grol##25699 |goto 39.4,35.8
step
click the Bloodstone Teleporter##203753 |goto 39.3,35.6
_Enter_ the cave |goto 60.8,29.4 < 10 |walk
click the Allistarjian Vault##203229
collect Amulet of Allistarj##10755 |q 25697/1 |goto 61.6,26.8
step
_Leave_ the cave |goto 60.8,29.4 < 10 |walk
click the Head of Grol##203230
|tip It is underwater in the bow of the ship
kill Spirit of Grol##41267
collect Amulet of Grol##10753 |q 25699/1 |goto 71.0,35.5
step
_Follow_ the path up |goto 69.4,46.5 < 10 |only if walking
talk Salt-Flop##41265
accept Home...Gone...Naga...##25702 |goto 73.2,47.4
step
talk Salt-Flop##41265
Tell him _"I need the Amulet of Sevine."_
collect Amulet of Sevine##10754 |q 25698/1 |goto 73.2,47.4
step
talk Neptool##41354
turnin Home... Gone... Naga...##25702 |goto 71.0,60.0
accept Atrocities##25703 |goto 71.0,60.0
step
kill 10 Bloodwash Barbarian##41386 |q 25703/1 |goto 71.8,62.5
kill 10 Bloodwash Enchantress##41387 |q 25703/2 |goto 71.8,62.5
You can find more of these around [Blasted Lands 68.5,71.0]
step
talk Neptool##41354
turnin Atrocities##25703 |goto 71.0,60.0
accept False Idols##25705 |goto 71.0,60.0
accept Neptool's Revenge##25706 |goto 71.0,60.0
stickystart "bloodwashkills"
step
_Enter_ the cave |goto 61.4,62.9 < 10 |walk
click Azsh'ir Idol##203289
Destroy 8 Azsh'ir Idols |q 25705/1 |goto 61.4,59.9 |indoors Bloodwash Cavern
step
label "bloodwashkills"
kill 8 Bloodwash Zealot##41422 |q 25706/1 |goto 61.4,59.9 |indoors Bloodwash Cavern
kill 8 Bloodwash Acolyte##41423 |q 25706/2 |goto 61.4,59.9 |indoors Bloodwash Cavern
step
_Leave_ the cave |goto 61.4,62.9 < 10 |walk
clicknpc Abandoned Bloodwash Crate##41402
Select "_<Help the Rockpool tadpoles.>_"
Click the _Quest Accept_ Box:
accept The Future of the Rockpool##25707 |goto 63.0,64.3
stickystart "bloodwashcrate"
step
kill 4 Bloodwash Idolater##41405 |q 25706/4 |goto 60.2,71.0
step
kill 4 Bloodwash Gambler##41404 |q 25706/3 |goto 65.9,74.5
step
label "bloodwashcrate"
clicknpc Abandoned Bloodwash Crate##41402
|tip Remember to get it again after each time you have to fight.
Drag the Abandoned Bloodwash Crate to this spot
Return the Rockpool Tadpoles to the Forbidding Sea |q 25707/1 |goto 70.1,80.4
step
Click the _Quest Complete_ Box:
turnin The Future of the Rockpool##25707
step
talk Neptool##41354
turnin False Idols##25705 |goto 71.0,60.0
turnin Neptool's Revenge##25706 |goto 71.0,60.0
step
_Follow_ the path up |goto 53.0,76.0 < 10 |only if walking
talk Salena##43114
fpath Sunveil Excursion |goto 50.9,72.9
step
click the Bloodstone Teleporter##203753 |goto 41.6,31.9 < 10
talk Bloodmage Lynnore##7506
turnin The Amulet of Allistarj##25697 |goto 39.2,36.3
turnin The Amulet of Sevine##25698 |goto 39.2,36.3
turnin The Amulet of Grol##25699 |goto 39.2,36.3
accept Loramus Thalipedes Awaits##25700 |goto 39.2,36.3
step
talk Bloodmage Lynnore##7506
Tell her _"I would like to start the Amulet Ritual."_
Participate in the ritual |q 25700/1 |goto 39.2,36.3
step
talk Loramus Thalipedes##7783
turnin Loramus Thalipedes Awaits##25700 |goto 39.4,35.8
accept You Are Rakh'likh, Demon##25701 |goto 39.4,35.8
step
click the Bloodstone Teleporter##203753 |goto 39.3,35.6 < 10
talk Deathly Usher##8816
Tell him _"I wish to face the Defiler."_
kill Razelikh the Defiler##41280
Destroy Razelikh's Body |q 25701/1 |goto 46.5,21.9
step
use Stone Knife of Sealing##56012
|tip Use the Stone Knife of Sealing on Loramus Thalipedes when he tells you to.
Imprison Razelikh's Soul |q 25701/2 |goto 46.5,21.9
step
_Jump off_ here |goto 44.8,26.25 < 5 |only if walking
Stand on the pulsing blue symbol on the ground
Teleport back down to safety
talk Watcher Wazzik##41159
turnin You Are Rakh'likh, Demon##25701 |goto 54.3,50.1
step
talk Rohan Sunveil##42344
turnin The Sunveil Excursion##25696 |goto 49.8,71.4
accept The Demons and the Druid##25717 |goto 49.8,71.4
step
_Follow_ the path down |goto 48.0,72.0 < 10 |only if walking
kill 3 Felspore Bog Lord##45125 |q 25717/4 |goto 33.4,76.3
step
kill 5 Doomguard Destroyer##41470 |q 25717/1 |goto 35.0,75.3
kill 5 Corrupted Darkwood Treant##45119 |q 25717/3 |goto 35.0,75.3
kill 5 Dreadlord Defiler##41471 |q 25717/2 |goto 35.0,75.3
There are more demons around [40.0,74.6]
step
_Follow_ the path up |goto 44.7,72.5 < 10 |only if walking
talk Rohan Sunveil##42344
turnin The Demons and the Druid##25717 |goto 49.8,71.4
accept How Best to Proceed##25718 |goto 49.8,71.4
step
talk Elijah Dawnflight##42348
turnin How Best to Proceed##25718 |goto 47.1,69.1
accept Demoniac Vessel##25719 |goto 47.1,69.1
stickystart "taintedhide"
stickystart "screecherbrain"
step
kill Tainted Nightstalker##42337
collect 20 Nightstalker Leg##57178 |q 25719 |goto 35.9,57.8
step
label "taintedhide"
kill Tainted Black Bear##42336
collect 4 Tainted Hide##57177 |q 25719 |goto 35.9,57.8
step
label "screecherbrain"
kill Tainted Screecher##42338
collect 2 Screecher Brain##57179 |q 25719 |goto 35.9,57.8
step
use Nightstalker Leg##57178
collect 20 Crushed Nightstalker Leg##57181 |q 25719
step
use Screecher Brain##57179
collect 2 Screecher Brain Paste##57182 |q 25719
step
use Tainted Hide##57177
collect Tainted Hide Pouch##57180 |q 25719
step
use Crushed Nightstalker Leg##57181
collect Demoniac Commixture##57183 |q 25719
step
use Demoniac Commixture##57183
collect Demoniac Vessel##57184 |q 25719/1
step
_Follow_ the path up |goto 44.7,72.5 < 10 |only if walking
talk Rohan Sunveil##42344
turnin Demoniac Vessel##25719 |goto 49.8,71.4
accept The Downfall of Marl Wormthorn##25720 |goto 49.8,71.4
step
Follow the path down |goto 48.0,72.0 < 10 |only if walking
use Demoniac Vessel##57185
|tip Use the Demoniac Vessel on Marl Wormthorn.
kill Marl Wormthorn##42334 |q 25720/1 |goto 34.7,67.8
step
Follow the path up |goto 44.7,72.5 < 10 |only if walking
talk Rohan Sunveil##42344
turnin The Downfall of Marl Wormthorn##25720 |goto 49.8,71.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-10)\\Kalimdor\\Durotar",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Durotar 5-8",
next="Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Master Gadrin##3188
turnin Report to Sen'jin Village##25133 |goto Durotar/0 56.0,74.7 |only if havequest(25133)
turnin Sen'jin Village##25073 |goto 56.0,74.7 |only if havequest(25073)
accept Breaking the Chain##25167 |goto 56.0,74.7
step
talk Bom'bay##10578
accept Cleaning Up the Coastline##25170 |goto 55.7,75.3
step
kill Surf Crawler##3107+
collect 5 Crawler Mucus##4888 |q 25170/1 |goto 55.4,79.3
stickystart "northwatchlug"
step
click Northwatch Supply Crate##202405
Destroy #3# Northwatch Supply Crates |q 25167/1 |goto 52.2,81.2
|tip They are huge wooden crates with big red + signs on them, being carried by Northwatch Lugs.
step
label "northwatchlug"
kill 10 Northwatch Lug##39249 |q 25167/2 |goto 52.2,81.2
step
talk Bom'bay##10578
turnin Cleaning Up the Coastline##25170 |goto 55.7,75.3
accept Never Trust a Big Barb and a Smile##25165 |goto 55.7,75.3
step
talk Master Gadrin##3188
turnin Breaking the Chain##25167 |goto 56.0,74.7
accept Purge the Valley##25168 |goto 56.0,74.7
step
talk Lar Prowltusk##3140
accept The War of Northwatch Aggression##25169 |goto 55.4,75.1
step
Use the Poison Extraction Totem |use Poison Extraction Totem##52505
kill Clattering Scorpid##3125+
|tip Weaken them and let them cast Envenom, the Totem will catch the venom.
Collect #6# Samples of Scorpid Venom |q 25165/1 |goto 52.4,74.4
stickystart "troops"
step
Enter Northwatch Foothold |goto Durotar 50.8,79.1 < 15 |only if walking
click the Attack Plan: Valley of Trials##3189
Burn the Attack Plan: Valley of Trials |q 25169/1 |goto 49.7,81.6
step
click the Attack Plan: Sen'jin Village##3190
|tip It looks like a piece of paper laying on a wooden crate, in between 2 white tents.
Burn the Attack Plan: Sen'jin Village |q 25169/2 |goto 47.9,77.5
step
click the Attack Plan: Orgrimmar##3192
|tip It looks like a piece of paper laying on the ground, under a bed in a blue tent.
Burn the Attack Plan: Orgrimmar |q 25169/3 |goto 46.4,78.8
step
label "troops"
kill Northwatch Ranger##39261+, Northwatch Infantryman##39260+
Kill #12# Northwatch Troops |q 25168/1 |goto 49.4,79.3
step
Leave the Northwatch Foothold |goto 50.8,79.1 < 15 |only if walking
talk Bom'bay##10578
turnin Never Trust a Big Barb and a Smile##25165 |goto 55.7,75.3
step
talk Lar Prowltusk##3140
turnin The War of Northwatch Aggression##25169 |goto 55.4,75.1
step
talk Master Gadrin##3188
turnin Purge the Valley##25168 |goto 56.0,74.7
accept Riding On##25171 |goto 56.0,74.7
step
talk Raider Jhash##10676
Ask him _"Can I catch a ride to Razor Hill?"_ |goto 55.3,74.7 < 5
Ride to Razor Hill |goto 52.5,44.2 < 15 |noway |q 25171
step
talk Burok##41140
fpath Razor Hill |goto 53.1,43.6
step
talk Gar'Thok##3139
turnin Riding On##25171 |goto 51.9,43.5
accept From Bad to Worse##25173 |goto 51.9,43.5
step
talk Innkeeper Grosk##6928
home Razor Hill |goto 51.5,41.6 |q 25173
step
talk Gail Nozzywig##39423
accept Exploiting the Situation##25176 |goto 53.1,43.1
stickystart "nwtroops"
stickystart "treasure"
step
kill Lieutenant Palliter##39269 |q 25173/3 |goto Durotar/11 52.7,52.8
|tip He's in the top room of the fort.
step
label "treasure"
click Kul Tiras Treasure##202648
|tip They look like wooden chests on the ground around this area.
collect 6 Kul Tiras Treasure##52558 |q 25176/1 |goto Durotar/10 52.1,48.7
step
label "nwtroops"
kill 6 Northwatch Sharpshooter##39268 |q 25173/2 |goto Durotar/0 58.0,56.3
kill 6 Northwatch Marine##39267 |q 25173/1 |goto 58.0,56.3
step
talk Gar'Thok##3139
turnin From Bad to Worse##25173 |goto 51.9,43.5
accept Storming the Beaches##25177 |goto 51.9,43.5
step
talk Gail Nozzywig##39423
turnin Exploiting the Situation##25176 |goto 53.1,43.1
accept Shipwreck Searching##25178 |goto 53.1,43.1
stickystart "gnomishtools"
step
kill 11 Foaming Sea Elemental##39272 |q 25177/1 |goto 58.0,46.2
step
label "gnomishtools"
click Gnomish Toolboxes##3236
|tip They look like small metal chests on the ground around this area.
collect 4 Gnomish Tools##4863 |q 25178/1 |goto 58.0,46.2
step
talk Injured Razor Hill Grunt##39270
accept Loss Reduction##25179 |goto 58.0,46.2
step
talk Injured Razor Hill Grunt##39270
Rescue #4# Injured Razor Hill Grunts |q 25179/1 |goto 58.0,46.2
step
talk Gail Nozzywig##39423
turnin Shipwreck Searching##25178 |goto 53.1,43.1
accept Thonk##25227 |goto 53.1,43.1
step
talk Gar'Thok##3139
turnin Storming the Beaches##25177 |goto 51.9,43.5
turnin Loss Reduction##25179 |goto 51.9,43.5
step
talk Orgnil Soulscar##3142
accept The Burning Blade##25232 |goto Durotar/0 52.2,43.1
step
talk Grimtak##3881
accept Meats to Orgrimmar##6365 |goto 50.7,42.8
only Troll,Orc
step
talk Burok##41140
turnin Meats to Orgrimmar##6365 |goto 53.1,43.6
accept Ride to Orgrimmar##6384 |goto 53.1,43.6
only Troll,Orc
step
talk Innkeeper Gryshka##6929
turnin Ride to Orgrimmar##6384 |goto Orgrimmar 53.6,78.8
accept Doras the Wind Rider Master##6385 |goto Orgrimmar 53.6,78.8
only Troll,Orc
step
talk Doras##3310
turnin Doras the Wind Rider Master##6385 |goto 49.7,59.2
accept Return to Razor Hill##6386 |goto 49.7,59.2
only Troll,Orc
step
talk Grimtak##3881
turnin Return to Razor Hill##6386 |goto Durotar/0 50.7,42.8
only Troll,Orc
step
Follow the path up |goto 50.9,42.3 < 15 |only if walking
talk Thonk##39323
|tip He is at the top of the tower.
turnin Thonk##25227 |goto 49.6,40.2
accept Lost in the Floods##25187 |goto 49.6,40.2
step
Use Thonk's Spyglass |use Thonk's Spyglass##52514
|tip Use Thonk's Spyglass at the top of the tower.
|tip You will need to use Thonk's Spyglass 4 times.
Find Raggaran |q 25187/1 |goto 49.6,40.2
Find the flooded hut |q 25187/2 |goto 49.6,40.2
Find Misha |q 25187/3 |goto 49.6,40.2
Find Zen'Taji |q 25187/4 |goto 49.6,40.2
step
talk Thonk##39323
turnin Lost in the Floods##25187 |goto 49.6,40.2
accept Watershed Patrol##25188 |goto 49.6,40.2
step
talk Misha Tor'kren##3193
accept Lost But Not Forgotten##25193 |goto 43.4,30.6
step
kill Dreadmaw Toothgnasher##39452+
collect 250 Durotar Crocolisk Tooth##60615 |q 25193/1 |goto 42.9,34.1
step
talk Misha Tor'kren##3193
turnin Lost But Not Forgotten##25193 |goto 43.4,30.6
Help Misha Tor'kren |q 25188/2 |goto 43.4,30.6
step
talk Raggaran##39326
accept Raggaran's Rage##25190 |goto 42.7,49.9
step
kill 4 Razormane Quilboar##3111+ |q 25190/1 |goto 44.1,49.2
kill 4 Razormane Scout##3112+ |q 25190/2 |goto 44.1,49.2
step
talk Raggaran##39326
turnin Raggaran's Rage##25190 |goto 42.7,49.9
accept Raggaran's Fury##25192 |goto 42.7,49.9
step
kill 5 Razormane Dustrunner##3113+ |q 25192/1 |goto 38.1,55.3
kill 5 Razormane Battleguard##3114+ |q 25192/2 |goto 38.1,55.3
step
talk Raggaran##39326
turnin Raggaran's Fury##25192 |goto 42.7,49.9
Help Raggaran |q 25188/1 |goto 42.7,49.9
step
talk Zen'Taji##39324
accept Unbidden Visitors##25194 |goto 35.8,41.4
step
kill Wayward Plainstrider##39337+
|tip Don't actually kill them, just get them to low health or you won't get credit.
|tip You will find them spread out along the coastline.
Return #3# Wayward Plainstriders |q 25194/1 |goto 35.3,39.6
step
talk Zen'Taji##39324
turnin Unbidden Visitors##25194 |goto 35.8,41.4
accept That's the End of That Raptor##25195 |goto 35.8,41.4
step
kill Screamslash##39385 |q 25195/1 |goto 35.4,30.5
|tip He walks around this area and may appear on your minimap as a white skull with red eyes.
step
talk Zen'Taji##39324
turnin That's the End of That Raptor##25195 |goto 35.8,41.4
Help Zen'Taji |q 25188/3 |goto 35.8,41.4
step
talk Thonk##39323
|tip He is at the top of the tower.
turnin Watershed Patrol##25188 |goto 49.6,40.2
step
Follow the path |goto 54.4,38 < 15
|tip Don't follow the main canyon path heading north.
kill Burning Blade Thug##3195+, Burning Blade Neophyte##3196+, Burning Blade Cultist##3199+
collect 6 Burning Blade Spellscroll##52564 |q 25232/1 |goto Durotar/19 50.4,57.7
step
talk Orgnil Soulscar##3142
turnin The Burning Blade##25232 |goto Durotar/0 52.2,43.2
accept The Dranosh'ar Blockade##25196 |goto 52.2,43.2
step
talk Rezlak##3293
accept Winds in the Desert##834 |goto 46.4,22.9
accept Securing the Lines##835 |goto 46.4,22.9
stickystart "stolensupplysack"
step
kill Dustwind Harpy##3115+, Dustwind Pillager##3116+
Kill #12# Durotar Harpies |q 835/1 |goto 49.3,21.7
step
label "stolensupplysack"
click Stolen Supply Sack##3290
|tip They look like small tan sacks on the ground around this area.
collect 5 Sack of Supplies##111735 |q 834/1 |goto 49.3,21.7
You can find more here |goto 50.7,26.6
step
talk Rezlak##3293
turnin Winds in the Desert##834 |goto 46.4,22.9
turnin Securing the Lines##835 |goto 46.4,22.9
step
talk Gor the Enforcer##39379
turnin The Dranosh'ar Blockade##25196 |goto 45.0,14.8
accept Fizzled##25260 |goto Durotar 45.0,14.8
accept Thunder Down Under##25236 |goto 45.0,14.8
step
talk Shin Stonepillar##39380
accept The Wolf and The Kodo##25205 |goto 44.9,14.8
step
talk Shin Stonepillar##39380
Ask him _"Can you tell me your fable, Shin?"_ |havebuff 132245 |q 25205 |goto 44.9,14.8
step
As the wolf, run to this spot
|tip If you don't see 2 kodos fighting, you will need to look around the area for them.
Listen to the Shaman's Fable |q 25205/1 |goto 53.0,13.8
step
talk Shin Stonepillar##39380
turnin The Wolf and The Kodo##25205 |goto 44.9,14.8
step
talk Gor the Enforcer##39379
accept Ignoring the Warnings##25206 |goto 45.0,14.8
step
kill Teeming Waterguard##39596+, Furious Earthguard##39595+
Kill #12# Warring Elementals |q 25206/1 |goto 38.7,18.9
You can find more here |goto 37.3,24.6
stickystart "drownedthunderlizard"
step
clicknpc Fizzle Darkclaw##3203
|tip His body is floating underwater.
Select "_<Attempt to remove the orb.>_"
Then select "_<Attempt to remove Fizzle's hand, then.>_"
collect Fizzle's Orb##52580 |q 25260/1 |goto 42.1,26.7
step
label "drownedthunderlizard"
clicknpc Drowned Thunder Lizard##39464+
|tip They are underwater, on the ground.
Remove #8# Drowned Thunder Lizards |q 25236/1 |goto 39.9,24.4
step
talk Gor the Enforcer##39379
turnin Fizzled##25260 |goto 45.0,14.8
accept Margoz##25261 |goto 45.0,14.8
turnin Thunder Down Under##25236 |goto 45.0,14.8
turnin Ignoring the Warnings##25206 |goto 45.0,14.8
accept Beyond Durotar##25648 |goto 45.0,14.8
step
talk Margoz##3208
turnin Margoz##25261 |goto 56.4,20.0
accept Skull Rock##25262 |goto 56.4,20.0
step
talk Vek'nag##39604
accept Sent for Help##25256 |goto 56.3,20.2
step
talk Spiketooth##39590
turnin Sent for Help##25256 |goto 58.8,23.2
accept Ghislania##25257 |goto 58.8,23.2
accept Griswold Hanniston##25258 |goto 58.8,23.2
accept Gaur Icehorn##25259 |goto 58.8,23.2
step
talk Griswold Hanniston##39353
Tell him _"I'm here to challenge you in combat."_
Defeat Griswold Hanniston |q 25258/1 |goto Durotar 59.0,22.2
step
talk Ghislania##39351
Tell her _"I'm here to challenge you in combat."_
Defeat Ghislania |q 25257/1 |goto Durotar 59.7,22.6
step
talk Gaur Icehorn##39352
Tell him _"I'm here to challenge you in combat."_
Defeat Gaur Icehorn |q 25259/1 |goto Durotar 59.4,23.5
step
talk Spiketooth##39590
turnin Ghislania##25257 |goto Durotar 58.8,23.2
turnin Griswold Hanniston##25258 |goto Durotar 58.8,23.2
turnin Gaur Icehorn##25259 |goto Durotar 58.8,23.2
step
_Enter_ the cave |goto Durotar/0 54.9,9.5 < 5 |walk
kill Burning Blade Fanatic##3197+, Burning Blade Apprentice##3198+
collect 6 Searing Collar##4871 |q 25262/1 |goto Durotar/12 62.2,54.9
step
_Leave_ the cave |goto Durotar/12 85.3,57.3 < 5 |walk
talk Margoz##3208
turnin Skull Rock##25262 |goto Durotar/0 56.4,20.0
accept Neeru Fireblade##25263 |goto Durotar/0 56.4,20.0
step
_Follow_ the path down |goto Orgrimmar 45.9,66.9 < 10 |only if walking
talk Neeru Fireblade##3216
|tip Check inside of the hut.
turnin Neeru Fireblade##25263 |goto Orgrimmar/2 58.2,54.5
accept Ak'Zeloth##25264 |goto Orgrimmar/2 58.2,54.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-10)\\Kalimdor\\Mulgore",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Mulgore 4-10",
next="Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Ahmo Thunderhorn##36644
turnin Rite of the Winds##24215 |goto Mulgore 47.7,59.6 |only if havequest(24215)
accept Sharing the Land##14438 |goto Mulgore 47.7,59.6
step
talk Mull Thunderhorn##2948
accept Poison Water##20440 |goto 48.6,59.8
only Tauren
step
talk Harken Windtotem##2947
accept Swoop Hunting##761 |goto 48.8,58.8
step
talk Innkeeper Kauth##6747
home Bloodhoof Village |goto 46.8,60.4 |q 761
step
talk Tak##40809
fpath Bloodhoof Village |goto Mulgore 47.4,58.7
stickystart "swoopquill"
stickystart "prairiepaw"
step
kill Adult Plainstrider##2956+
collect 4 Plainstrider Talon##4759 |q 20440/2 |goto 55.3,63.1
only Tauren
step
label "swoopquill"
kill Swoop##2970+
collect 8 Trophy Swoop Quill##4769 |q 761/1 |goto 55.3,63.1
step
label "prairiepaw"
kill Prairie Wolf##2958+
collect 6 Prairie Wolf Paw##4758 |q 20440/1 |goto 55.3,63.1
You can find more at [Mulgore 55.7,69.5]
only Tauren
step
kill Palemane Skinner##2950+, Palemane Poacher##2951+, Palemane Tanner##2949+
Kill #15# Palemane Gnolls |q 14438/1 |goto 53.0,71.0
step
talk Ahmo Thunderhorn##36644
turnin Sharing the Land##14438 |goto 47.7,59.6
accept The Restless Earth##14491 |goto 47.7,59.6
accept Morin Cloudstalker##24459 |goto 47.7,59.6
step
talk Ruul Eagletalon##2985
accept Dangers of the Windfury##743 |goto 47.5,61.3
step
talk Mull Thunderhorn##2948
turnin Poison Water##20440 |goto 48.6,59.8
accept Winterhoof Cleansing##24440 |goto 48.6,59.8
only Tauren
step
talk Harken Windtotem##2947
turnin Swoop Hunting##761 |goto 48.8,58.8
step
talk Maur Raincaller##3055
accept Mazzranache##26188 |goto 47.2,56.7
step
talk Ahab Wheathoof##23618
accept Kyle's Gone Missing!##11129 |goto 48.3,53.1
step
kill Adult Plainstrider##2956+
collect 1 Tender Strider Meat##33009 |q 11129 |goto 55.3,63.1
step
clicknpc Kyle the Frenzied##23616
use Tender Strider Meat##33009
|tip Use Tender Strider Meat on Kyle the Frenzied when Kyle is running nearby.
|tip Kyle the Frenzied is a white wolf that runs around Bloodhoof Village, so you may need to search for him.
|tip You can mark them with shift+v to make them easier to spot (Use v to mark enemies again)
Feed Kyle |q 11129/1 |goto 48.6,61.4
step
use Winterhoof Cleansing Totem##5411
Cleanse the Well |q 24440/1 |goto 53.4,65.3
only Tauren
step
talk Morin Cloudstalker##2988
turnin Morin Cloudstalker##24459 |goto 57.1,60.4
accept The Ravaged Caravan##749 |goto 57.1,60.4
step
kill Windfury Wind Witch##2963+, Windfury Harpy##2962+
collect 8 Windfury Talon##4751 |q 743/1 |goto 62.7,69.0
step
talk Ruul Eagletalon##2985
turnin Dangers of the Windfury##743 |goto 47.5,61.3
step
talk Mull Thunderhorn##2948
turnin Winterhoof Cleansing##24440 |goto 48.6,59.8
accept Thunderhorn Totem##24441 |goto 48.6,59.8
only Tauren
step
talk Ahab Wheathoof##23618
turnin Kyle's Gone Missing!##11129 |goto 48.3,53.1
step
click Sealed Supply Crate##2908
|tip It's a crate sitting on the ground next to a bonfire.
turnin The Ravaged Caravan##749 |goto 53.5,48.3
accept The Ravaged Caravan##751 |goto 53.5,48.3
stickystart "flatlandcougarfemur"
stickystart "cougarclaws"
step
kill Prairie Stalker##2959+
collect 6 Stalker Claws##4801 |q 24441/1 |goto 55.4,49.9
step
label "flatlandcougarfemur"
kill Flatland Cougar##3035+
collect Flatland Cougar Femur##4805 |q 26188/1 |goto 55.4,49.9
step
label "cougarclaws"
kill Flatland Cougar##3035+
collect 6 Cougar Claws##4802 |q 24441/2 |goto 55.4,49.9
You can find more around [57.1,44.9]
step
talk Morin Cloudstalker##2988
turnin The Ravaged Caravan##751 |goto 57.1,60.4
accept The Venture Co.##26179 |goto 57.1,60.4
accept Supervisor Fizsprocket##26180 |goto 57.1,60.4
stickystart "venturework"
step
kill Supervisor Fizsprocket##3051
collect Fizsprocket's Clipboard##4819 |q 26180/1 |goto Mulgore/7 41.6,85.1
step
label "venturework"
kill 7 Venture Co. Worker##2978 |q 26179/1 |goto Mulgore 59.5,50.0
step
talk Morin Cloudstalker##2988
turnin The Venture Co.##26179 |goto 57.1,60.4
turnin Supervisor Fizsprocket##26180 |goto 57.1,60.4
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Totem##24441 |goto 48.6,59.8
accept Thunderhorn Cleansing##24456 |goto 48.6,59.8
only Tauren
step
talk Varg Windwhisper##3079
accept A Bundle of Hides##6361 |goto 46.1,58.2
only Tauren
step
talk Tak##40809
turnin A Bundle of Hides##6361 |goto 47.4,58.6
accept Ride to Thunder Bluff##6362 |goto 47.4,58.6
only Tauren
step
talk Ahanu##8359
turnin Ride to Thunder Bluff##6362 |goto Thunder Bluff 45.8,55.9
accept Tal the Wind Rider Master##6363 |goto Thunder Bluff 45.8,55.9
only Tauren
step
talk Tal##2995
fpath Thunder Bluff |goto Thunder Bluff 47.0,49.8
step
talk Tal##2995
turnin Tal the Wind Rider Master##6363 |goto 47.0,49.8
accept Return to Varg##6364 |goto 47.0,49.8
only Tauren
step
talk Varg Windwhisper##3079
turnin Return to Varg##6364 |goto Mulgore,46.1,58.2
only Tauren
step
talk Maur Raincaller##3055
turnin Mazzranache##26188 |goto 47.2,56.7
step
use Thunderhorn Cleansing Totem##5415
Clean the Well |q 24456/1 |goto 44.8,45.7
only Tauren
step
clicknpc Agitated Earth Spirit##36845+
use Drum of Soothed Earth##49647
|tip Use your Drum of Soothed Earth on Agitated Earth Spirits. It probably won't work every time.
Calm #6# Spirits |q 14491/1 |goto 33.5,48.9
step
talk Ahmo Thunderhorn##36644
turnin The Restless Earth##14491 |goto 47.7,59.6
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Cleansing##24456 |goto 48.6,59.8
accept Rite of Vision##24457 |goto 48.6,59.8
only Tauren
step
talk Zarlman Two-Moons##3054
turnin Rite of Vision##24457 |goto 47.9,57.1
accept Rite of Vision##20441 |goto 47.9,57.1
only Tauren
step
use Water of Vision##49651 |goto 47.9,57.1 < 5
Run to Camp Sungraze |goto Mulgore 49.4,17.5 < 10 |noway |q 20441
only Tauren
step
talk Una Wildmane##37024
turnin Rite of Vision##20441 |goto Mulgore 49.4,17.3 |only if havequest(20441)
accept Wildmane Totem##24523 |goto Mulgore 49.4,17.3
only Tauren
step
talk Lorekeeper Raintotem##3233
accept Rite of Wisdom##773 |goto 49.5,17.1
accept A Sacred Burial##833 |goto 49.5,17.1
step
talk Eyahn Eagletalon##2987
accept Preparation for Ceremony##744 |goto 49.6,17.6
step
kill Prairie Wolf Alpha##2960+
collect 4 Prairie Alpha Tooth##4803 |q 24523/1 |goto 50.1,19.8
stickystart "azurefeathers"
step
kill Windfury Matriarch##2965+
collect 6 Bronze Feather##4753 |q 744/2 |goto 54.9,19.8
step
label "azurefeathers"
kill Windfury Sorceress##2964+
collect 6 Azure Feather##4752 |q 744/1 |goto 54.9,19.8
step
talk Ancestral Spirit##2994
turnin Rite of Wisdom##773 |goto 60.8,22.7
step
kill 8 Bristleback Interloper##3232 |q 833/1 |goto 60.9,23.8
step
talk Una Wildmane##37024
turnin Wildmane Totem##24523 |goto 49.4,17.3
accept Wildmane Cleansing##24524 |goto 49.4,17.3
only Tauren
step
talk Lorekeeper Raintotem##3233
turnin A Sacred Burial##833 |goto 49.5,17.1
step
talk Eyahn Eagletalon##2987
turnin Preparation for Ceremony##744 |goto Mulgore 49.6,17.6
step
use Wildmane Cleansing Totem##5416
Cleanse the Wildmane Well |q 24524/1 |goto 43.3,16.1
only Tauren
step
talk Una Wildmane##37024
turnin Wildmane Cleansing##24524 |goto 49.4,17.3
accept Journey into Thunder Bluff##24550 |goto 49.4,17.3
only Tauren
step
talk Baine Bloodhoof##2993
turnin Journey into Thunder Bluff##24550 |goto Thunder Bluff 60.3,51.7
accept War Dance##24540 |goto Thunder Bluff 60.3,51.7
only Tauren
step
_Ride the elevator_ down |goto 54.3,26.9 < 10 |only if walking
_Go north_ into Mulgore |goto Thunder Bluff/0 61.3,16.9 < 10 |only if walking
kill Orno Grimtotem##36931 |q 24540/1 |goto Mulgore 37.0,12.0
|tip Don't worry that he's elite, Baine Bloodhoof will come and kill him for you.
only Tauren
step
_Return_ to Thunder Bluff |goto Mulgore/0 42.5,21.9 < 10 |only if walking
_Go up_ the elevator |goto Thunder Bluff/0 54.3,26.9 < 5 |only if walking
_Go up_ the ramps |goto Thunder Bluff/0 46.5,48.4 < 8 |only if walking
talk Baine Bloodhoof##2993
turnin War Dance##24540 |goto Thunder Bluff 60.3,51.7
accept Walk With The Earth Mother##26397 |goto Thunder Bluff 60.3,51.7
only Tauren
step
talk Tal##2995
Tell him _"Send me to Orgrimmar."_ |goto 47.0,49.8 < 5
Fly to Orgrimmar |goto Orgrimmar 49.3,59.4 < 10 |noway |q 26397
only Tauren
step
_Take the elevator_ down |goto Orgrimmar 50.9,62.6 < 10 |only if walking
_Enter_ the building |goto Orgrimmar/1 50.0,75.8 < 8 |walk
talk High Overlord Saurfang##14720
|tip He is in the big center building
turnin Walk With The Earth Mother##26397 |goto Orgrimmar 48.1,70.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Northern Barrens 10-13",
next="Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Ashenvale (15-60)",
startlevel=10,
endlevel=60,
},[[
step
talk Kargal Battlescar##3337
turnin Preserving the Barrens##26642 |goto Northern Barrens/0 67.7,39.4 |only if havequest(26642) or completedq(26642)
accept In Defense of Far Watch##871 |goto Northern Barrens/0 67.7,39.4
step
talk Halga Bloodeye##34258
accept Plainstrider Menace##844 |goto 67.5,38.7
step
kill Greater Plainstrider##3244+, Fleeting Plainstrider##3246+
collect 7 Plainstrider Beak##5087 |q 844/1 |goto 67.3,37.0
You can find more Greater Plainstriders at [64.6,41.3]
step
talk Halga Bloodeye##34258
turnin Plainstrider Menace##844 |goto 67.5,38.7
step
talk Ak'Zeloth##3521
turnin Ak'Zeloth##25264 |goto 67.8,40.6
only if havequest(25264)
step
talk Dorak##34284
|tip He walks around this area and may not be in this exact spot.
accept Through Fire and Flames##13878 |goto 67.1,45.5
stickystart "razormanehunt"
step
click Wolf Chains##8721+
Free #3# Wolves |q 13878/1 |goto 66.6,47.3
step
label "razormanehunt"
kill 8 Razormane Plunderer##3267 |q 871/1 |goto 66.8,49.8
kill 3 Razormane Hunter##3265 |q 871/2 |goto 66.8,49.8
step
talk Dorak##34284
|tip He walks around this area and may not be in this exact spot.
turnin Through Fire and Flames##13878 |goto 67.1,45.5
step
talk Kargal Battlescar##3337
turnin In Defense of Far Watch##871 |goto 67.7,39.4
accept The Far Watch Offensive##872 |goto 67.7,39.4
step
talk Halga Bloodeye##34258
accept Supplies for the Crossroads##5041 |goto 67.5,38.7
stickystart "razorkills"
stickystart "supplycrates"
step
_Enter_ the cave |goto Northern Barrens 66.0,52.5 < 10 |walk
|tip Follow the path in the cave until it dead ends on a small platform.
kill Kreenig Snarlsnout##3438
collect Kreenig Snarlsnout's Tusk##5063 |q 872/3 |goto 64.3,55.0
step
label "razorkills"
kill 5 Razormane Thornweaver##3268 |q 872/1 |goto 64.7,53.2
kill 5 Razormane Defender##3266 |q 872/2 |goto 64.7,53.2
step
label "supplycrates"
click Crossroads Supply Crate##175708
|tip They look like wooden crates on the ground inside the cave.
collect 5 Crossroads Supply Crate##12708 |q 5041/1 |goto 64.7,53.2
step
talk Kargal Battlescar##3337
turnin The Far Watch Offensive##872 |goto 67.7,39.4
step
talk Halga Bloodeye##34258
turnin Supplies for the Crossroads##5041 |goto 67.5,38.7
accept Crossroads Caravan Pickup##13949 |goto 67.5,38.7
step
talk Halga Bloodeye##34258
Tell her "_Yes, I'm ready._"
clicknpc Lead Caravan Kodo##34430
|tip Use your Shoot ability to kill the Razormanes that attack the caravan as you ride the kodo.
|tip To kill them very easily, spam the 1 button on your hotbar and the Tab key on your keyboard together.
Escort the Caravan |q 13949/1 |goto 67.5,38.7
step
talk Kranal Fiss##5907
turnin Crossroads Caravan Pickup##13949 |goto 56.4,40.3
step
talk Togrik##34513
accept Drag it Out of Them##13961 |goto 56.6,40.3
step
clicknpc Razormane Pillager##34503
use Grol'dom Net##46722
|tip Use your Grol'dom Net on a Razormane Pillager.
talk Razormane Pillager##34503
Select _<Pound this chump.>_
Drag a Razormane |havebuff 134172 |c |q 13961 |goto 56.1,43.4
step
Deliver the Razormane Prisoner |q 13961/1 |goto 56.6,40.3
step
talk Togrik##34513
turnin Drag it Out of Them##13961 |goto 56.6,40.3
accept By Hook Or By Crook##13963 |goto 56.6,40.3
step
talk Captured Razormane##34523
|tip Choose all three dialog options until the objective is complete.
Interrogate the Razormane Prisoner |q 13963/1 |goto 56.6,39.9
step
talk Togrik##34513
turnin By Hook Or By Crook##13963 |goto 56.6,40.3
accept The Tortusk Takedown##13968 |goto 56.6,40.3
step
talk Kranal Fiss##5907
|tip He walks around the camp.
accept Grol'dom's Missing Kodo##13969 |goto 56.8,40.2
step
talk Mankrik##3432
accept Consumed by Hatred##899 |goto 55.2,41.0
step
talk Una Wolfclaw##34560
accept The Grol'dom Militia##13973 |goto 54.0,41.0
step
kill 6 Razormane Pillager##34503 |q 13973/1 |goto 53.1,42.4
step
talk Una Wolfclaw##34560
turnin The Grol'dom Militia##13973 |goto 54.0,41.0
step
talk Grol'dom Kodo##34547
turnin Grol'dom's Missing Kodo##13969 |goto 58.0,49.3
accept Animal Services##13970 |goto 58.0,49.3
stickystart "tuskgrain"
stickystart "tuskgrains2"
step
kill Tortusk##34544 |q 13968/1 |goto 62.1,48.6
step
label "tuskgrain"
kill Razormane Geomancer##3269+, Razormane Frenzy##34545+
collect 30 Quilboar Tusk##5085 |q 899/1 |goto 62.3,48.6
step
label "tuskgrains2"
click Stolen Grain Sack##195118
collect 5 Stolen Grain##46742 |q 13970/1 |goto 62.3,48.6
You can find more around [59.0,49.3]
step
talk Grol'dom Kodo##34547
turnin Animal Services##13970 |goto 58.0,49.3
accept The Kodo's Return##13971 |goto 58.0,49.3
step
talk Kranal Fiss##5907
turnin The Kodo's Return##13971 |goto 56.4,40.3
step
talk Togrik##34513
turnin The Tortusk Takedown##13968 |goto 56.6,40.3
step
talk Mankrik##3432
turnin Consumed by Hatred##899 |goto 55.2,41.0
step
talk Rocco Whipshank##34578
accept Crossroads Caravan Delivery##13975 |goto 54.6,41.5
step
talk Rocco Whipshank##34578
Tell him "_Bring it on, Rocco._"
clicknpc Lead Caravan Kodo##34430
Use your abilities on your hotbar on the Burning Blade mobs that attack you
|tip It's easier to just manually left click the Burning Blade mobs and spam the 1 button on your hotbar to shoot them all. Don't bother with the melee attack at all.
Escort the Crossroads Caravan |q 13975/1 |goto 54.6,41.5
step
talk Thork##3429
turnin Crossroads Caravan Delivery##13975 |goto 48.7,59.6
step
talk Sergra Darkthorn##3338
accept The Zhevra##845 |goto Northern Barrens 50.0,59.8
accept Hunting the Huntress##903 |goto Northern Barrens 50.0,59.8
step
talk Innkeeper Boorand Plainswind##3934
home The Crossroads |goto 49.5,57.9 |q 13998 |future
step
talk Tonga Runetotem##3448
accept The Forgotten Pools##870 |goto 49.5,58.7
step
talk Devrak##3615
fpath The Crossroads |goto 48.7,58.7
step
talk Apothecary Helbrim##3390
accept Fungal Spores##848 |goto 48.6,58.3
stickystart "huntresskills"
step
kill Zhevra Runner##3242+
collect 4 Zhevra Hooves##5086 |q 845/1 |goto 44.2,56.6
step
label "huntresskills"
kill Savannah Huntress##3415+
collect 5 Huntress Claws##5096 |q 903/1 |goto 44.2,56.6
step
talk Sergra Darkthorn##3338
turnin The Zhevra##845 |goto 50.0,59.8
turnin Hunting the Huntress##903 |goto 50.0,59.8
accept Echeyakee##881 |goto 50.0,59.8
step
use Horn of Echeyakee##10327
kill Echeyakee##3475
Conquer Echeyakee |q 881/1 |goto 47.8,44.0
step
talk Telar Highstrider##34841
accept Kolkar Leaders##850 |goto 38.0,46.6
step
talk Ta'jari##34613
accept A Little Diversion##13992 |goto 37.5,45.9
stickystart "fungspore"
stickystart "killkolkar"
step
Explore the waters of the Forgotten Pools |q 870/1 |goto 37.3,44.9
step
kill Barak Kodobane##3394
collect Kodobane's Head##5022 |q 850/1 |goto 33.3,46.7
step
label "fungspore"
click Laden Mushroom##3640
|tip They look like big blue mushrooms around this area.
collect 5 Fungal Spores##5012 |q 848/1 |goto 37.0,44.2
step
label "killkolkar"
kill Kolkar Wrangler##3272+, Kolkar Stormer##3273+
Kill #8# Kolkar Centaurs |q 13992/1 |goto 36.4,45.8
step
talk Ta'jari##34613
turnin A Little Diversion##13992 |goto 37.5,45.9
step
talk Telar Highstrider##34841
turnin Kolkar Leaders##850 |goto 38.0,46.6
step
talk Tonga Runetotem##3448
turnin The Forgotten Pools##870 |goto 49.5,58.7
accept A Growing Problem##13988 |goto 49.5,58.7
step
talk Apothecary Helbrim##3390
turnin Fungal Spores##848 |goto 48.6,58.3
accept In Fungus We Trust##13998 |goto 48.6,58.3
step
talk Sergra Darkthorn##3338
turnin Echeyakee##881 |goto 50.0,59.9
accept Into the Raptor's Den##905 |goto 50.0,59.9
step
kill Sunscale Lashtail##3254+
collect 3 Sunscale Feather##5165 |q 13988 |goto Northern Barrens 49.2,75.3
step
Follow the path up |goto 47.9,74.3 < 10 |only if walking
use Sunscale Feather##5165
|tip Use your Sunscale Feather next to the Sunscale Nest.
|tip It looks like a yellow-glowing straw nest with purple eggs in it.
Visit the Yellow Raptor Nest |q 905/2 |goto 48.0,76.1
step
use Sunscale Feather##5165
|tip Use your Sunscale Feather next to the Sunscale Nest.
|tip It looks like a blue-glowing straw nest with purple eggs in it.
Visit the Blue Raptor Nest |q 905/3 |goto 48.6,74.8
step
use Sunscale Feather##5165
|tip Use your Sunscale Feather next to the Sunscale Nest.
|tip It looks like a red-glowing straw nest with purple eggs in it.
Visit the Red Raptor Nest |q 905/1 |goto 49.7,75.2
step
talk Shoe##34638
accept Flushing Out Verog##14072 |goto 55.2,78.4
step
use Fungal Cultures##46789
Plant the Fungal Culture |q 13998/1 |goto 55.0,78.7
step
talk Gorgal Angerscar##34634
accept King of Centaur Mountain##13995 |goto Northern Barrens 55.0,78.6
step
Follow Gorgal Angerscar and kill the Kolkar centaurs that attack
kill Kurak##34635 |q 13995/2 |goto 54.3,78.3
Cause Some Trouble |q 13995/1 |goto 54.3,78.3
step
talk Shoe##34638
turnin King of Centaur Mountain##13995 |goto 55.2,78.4
step
click Centaur Intelligence##195240
collect 4 Centaur Intelligence##46857 |q 14072/1 |goto 52.2,77.2
You can find more at the following locations:
Location 1 |goto 52.8,80.9
Location 2 |goto 51.3,83.9
Location 3 |goto 54.1,87.3
step
talk Shoe##34638
turnin Flushing Out Verog##14072 |goto 55.2,78.4
accept Verog the Dervish##851 |goto 55.2,78.4
step
kill Wyneth##34846
|tip Verog the Dervish will spawn after you kill Wyneth.
kill Verog the Dervish##3395
collect Verog's Head##5023 |q 851/1 |goto 50.9,78.9
step
talk Shoe##34638
turnin Verog the Dervish##851 |goto 55.2,78.4
step
Follow the path up |goto 58.8,81.1 < 10 |only if walking
use Tonga's Totem##46782
|tip Use Tonga's Totem to summon the companion again, if it's missing.
Take Tonga's Eyes to the Summit |q 13988/1 |goto 60.9,85.9 < 5
step
talk Jerrik Highmountain##34626
turnin A Growing Problem##13988 |goto 60.7,85.4
accept The Stagnant Oasis##877 |goto 60.7,85.4
accept Altered Beings##880 |goto 60.7,85.4
stickystart "alteredshell"
step
click Bubbling Fissure##3737
|tip It looks like a big cracked rock underwater with bubbles floating out of it.
Test the Dried Seeds |q 877/1 |goto 55.9,80.5
step
label "alteredshell"
kill Oasis Snapjaw##3461+
collect 6 Altered Snapjaw Shell##5098 |q 880/1 |goto 56.5,81.0
step
talk Sergra Darkthorn##3338
turnin Into the Raptor's Den##905 |goto 50.0,59.9
accept The Purloined Payroll##13991 |goto 50.0,59.9
step
talk Tonga Runetotem##3448
turnin The Stagnant Oasis##877 |goto 49.5,58.7
turnin Altered Beings##880 |goto 49.5,58.7
step
talk Apothecary Helbrim##3390
turnin In Fungus We Trust##13998 |goto 48.6,58.3
accept Who's Shroomin' Who?##13999 |goto 48.6,58.3
step
talk Gazrog##3464
turnin The Purloined Payroll##13991 |goto 66.9,72.8
accept Investigate the Wreckage##14066 |goto 66.9,72.8
step
talk Captain Thalo'thas Brightsun##3339
accept A Captain's Vengeance##891 |goto 67.7,74.0
step
talk Sashya##34651
turnin Who's Shroomin' Who?##13999 |goto 67.0,74.8
step
talk Innkeeper Wiley##6791
home Ratchet |goto 67.3,74.7 |q 26769
step
talk Mebok Mizzyrix##3446
accept It's Gotta be the Horn##865 |goto 67.9,71.5
step
click WANTED Poster##15
accept WANTED: Cap'n Garvey##895 |goto 68.3,71.2
step
talk Gazlowe##3391
accept Club Foote##14034 |goto 68.4,69.1
accept Find Baron Longshore##14045 |goto 68.4,69.1
step
talk Bragok##16227
fpath Ratchet |goto Northern Barrens/0 69.1,70.7
step
talk Wharfmaster Dizzywig##3453
accept Southsea Freebooters##887 |goto 69.6,73.0
accept Take it up with Tony##14052 |goto 69.6,73.0
step
talk Chief Engineer Foote##34754
Select _<Club him unconscious.>_
And then _<Rifle through his pockets.>_
collect Ship Schematics##46827 |q 14034/1 |goto 67.0,74.7
step
talk Gazlowe##3391
turnin Club Foote##14034 |goto 68.4,69.1
accept Love it or Limpet##14038 |goto 68.4,69.1
step
Search the Caravan Scene |q 14066/1 |goto 65.7,66.9
step
Click the _Quest Complete_ Box:
turnin Investigate the Wreckage##14066
accept To Track a Thief##869
step
talk Kala'ma##34828
accept Waptor Twapping##14068 |goto 62.1,63.3
step
Discover the Source of the Tracks |q 869/1 |goto 62.6,61.7
step
Click the _Quest Complete_ Box:
turnin To Track a Thief##869
accept The Stolen Silver##14067
stickystart "waptortwap"
stickystart "sunscalescythe"
step
click Stolen Silver Lockbox##195224
|tip It looks like a small gray metal chest sitting on the ground.
collect Stolen Silver##5061 |q 14067/3 |goto 63.7,58.8
step
kill King Reaperclaw##34829
|tip He's a big green raptor that walks around this area with 2 raptor guards. You will probably need to search for him.
collect King Reaperclaw's Horn##46850 |q 865/1 |goto 65.7,59.9
step
label "waptortwap"
use Waptor Twap##46853
|tip Use your Waptor Twap next to raptors around this area.
Run away and wait for the raptor to be trapped
click Woaded Waptor Twap##195239
|tip It looks like a small metal shaking trap on the ground.
collect 5 Wittle Waptor##46851 |q 14068/1 |goto 64.9,59.3
step
label "sunscalescythe"
kill 8 Sunscale Ravager##44164 |q 14067/1 |goto 62.1,58.8
kill 4 Sunscale Scytheclaw##3256 |q 14067/2 |goto 62.1,58.8
step
talk Kala'ma##34828
turnin Waptor Twapping##14068 |goto 62.1,63.3
step
talk Gazrog##3464
turnin The Stolen Silver##14067 |goto 66.9,72.8
step
talk Mebok Mizzyrix##3446
turnin It's Gotta be the Horn##865 |goto 67.9,71.5
step
kill Lieutenant Pyre##34752 |q 891/2 |goto 70.4,84.2
step
talk Baron Longshore##3467
turnin Find Baron Longshore##14045 |goto 69.9,85.2
accept The Baron's Demands##14046 |goto 69.9,85.2
step
talk Baron Longshore##3467
Select _<Break Longshore's manacles and free him.>_
Strike a Deal with Baron Longshore |q 14046/1 |goto 69.9,85.2
step
Click the _Quest Complete_ Box:
turnin The Baron's Demands##14046
accept A Most Unusual Map##14049
step
click Hanging Pirate Head##195205
collect Tattooed Pirate Head##46832 |q 14049/1 |goto 69.4,81.6
step
kill Lieutenant Buckland##34753 |q 891/1 |goto 70.8,85.1
|tip He walks around this area.
step
use Limpet Mine##46829
|tip Use your Limpet Mine next to the Thinnest Part of the Hull.
|tip It looks like a large wooden section of the ship underwater.
Mine the Bellipotent |q 14038/1 |goto 72.6,85.4
step
Click the _Quest Complete_ Box:
turnin Love it or Limpet##14038
accept Ammo Kerblammo##14042
step
kill Theramore Marine##3385+, Theramore Preserver##3386+, Theramore Deck Hand##34707+
collect 10 Theramore Medal##5078 |q 891/3 |goto 71.4,83.2
step
click Theramore Ammunition Stockpile##195203
Destroy #5# Ammo Dumps |q 14042/1 |goto 71.4,83.2
|tip They look like carts with barrels.
More of these can also be found at [Northern Barrens,71.0,91.2]
step
talk Tony Two-Tusk##34749
turnin Take it up with Tony##14052 |goto 77.3,91.4
accept Glomp is Sitting On It##14056 |goto 77.3,91.4
step
kill Glomp##34747
collect Glomp's Booty##46834 |q 14056/1 |goto 76.9,90.8
step
talk Tony Two-Tusk##34749
turnin Glomp is Sitting On It##14056 |goto 77.3,91.4
accept Guns. We Need Guns.##14057 |goto 77.3,91.4
stickystart "dwarfrifles"
step
kill Cap'n Garvey##34750
|tip He is in the back room of the building.
collect Cap'n Garvey's Head##5084 |q 895/1 |goto 77.9,89.2
step
label "dwarfrifles"
click Southsea Gun Rack##195211
collect 6 Heavy Dwarven Rifle##46836 |q 14057/1 |goto 77.9,89.2
step
talk Tony Two-Tusk##34749
turnin Guns. We Need Guns.##14057 |goto 77.3,91.4
accept Mutiny, Mon!##14063 |goto 77.3,91.4
stickystart "frayisland"
step
use Pirate Signal Horn##46838
|tip Use your Pirate Signal Horn on the ship deck.
Follow Tony Two-Tusk downstairs
kill Alicia Cuthbert##34782
Capture the Maiden's Dagger |q 14063/1 |goto 79.8,91.1
step
label "frayisland"
kill Southsea Privateer##3384+, Southsea Cutthroat##3383+
Kill #8# Fray Island Pirates |q 887/1 |goto 77.2,90.0
step
talk Captain Thalo'thas Brightsun##3339
turnin A Captain's Vengeance##891 |goto 67.7,74.0
step
talk Wharfmaster Dizzywig##3453
turnin Mutiny, Mon!##14063 |goto 69.6,73.0
turnin Southsea Freebooters##887 |goto 69.6,73.0
step
talk Gazlowe##3391
turnin A Most Unusual Map##14049 |goto 68.4,69.1
turnin Ammo Kerblammo##14042 |goto 68.4,69.1
turnin WANTED: Cap'n Garvey##895 |goto 68.4,69.1
accept Gazlowe's Fortune##14050 |goto 68.4,69.1
step
Follow the path up |goto 62.6,74.8 < 10 |only if walking
click the Curious Pirate Landmark##195206
collect Gazlowe's Treasure Chest##46833 |q 14050/1 |goto 66.3,77.6
step
talk Gazlowe##3391
turnin Gazlowe's Fortune##14050 |goto 68.4,69.1
accept Raging River Ride##26769 |goto 68.4,69.1
step
clicknpc Riverboat##44057
Board the Riverboat to Nozzlepot |q 26769/1 |goto 72.9,65.6
step
talk Nozzlepot##34698
turnin Raging River Ride##26769 |goto 62.5,16.7
step
talk Nozzlepot##34698
accept Sludge Investigation##29087 |goto Northern Barrens 62.5,16.7
accept Hyena Extermination##29088 |goto Northern Barrens 62.5,16.7
step
talk Innkeeper Kritzle##43945
home Nozzlepot's Outpost |goto 62.5,16.6 |q 29015
step
talk Gazrix##40558
fpath Nozzlepot's Outpost |goto 62.3,17.1
step
talk Sputtervalve##3442
accept Competition Schmompetition##29086 |goto 62.3,17.5
accept Samophlange##29021 |goto 62.3,17.5
step
clicknpc Muddy Tracks##52171
|tip You can mark them with shift+v to make them easier to spot (Use v to mark enemies again).
Examine #5# Muddy Tracks |q 29087/1 |goto 58.8,21.1
step
Click the _Quest Complete_ Box:
turnin Sludge Investigation##29087
accept Sludge Beast!##29089
step
click Sludge Pile##208343
|tip It looks like a dirt mound under the water.
kill Sludge Beast##52165 |q 29089/1 |goto 58.2,19.4
step
talk Wizzlecrank's Shredder##3439
accept Ignition##858 |goto 57.6,18.3
step
Go to the top of the oil rig
kill Supervisor Lugwizzle##3445
|tip He is in the small room at the top.
collect Ignition Key##5050 |q 858/1 |goto 57.2,20.6
step
talk Wizzlecrank's Shredder##3439
turnin Ignition##858 |goto 57.6,18.3
accept The Escape##863 |goto 57.6,18.3
step
Protect Wizzlecrank's Shredder as it tries to escape
Escort Wizzlecrank out of the Venture Co |q 863/1 |goto Northern Barrens 55.3,18.7
step
kill 6 Hecklefang Hyena##4127 |q 29088/1 |goto 54.8,23.0
step
click Control Console##268617 |tip Its a small machine under the canopy
turnin Samophlange##29021 |goto 50.3,25.7
accept Samophlange##29022 |goto 50.3,25.7
step
click Main Control Valve##4072
|tip It looks like a small red wheel on the side of this metal pipe.
Shut Off the Main Control Valve |q 29022/1 |goto 50.1,25.6
step
click Regulator Valve##61935
|tip It looks like a small red wheel on the side of this metal pipe.
Shut Off the Regulator Valve |q 29022/3 |goto 50.1,25.3
step
click Fuel Control Valve##61936
|tip It looks like a small red wheel on the side of this big brown barrel container.
Shut Off the Fuel Control Valve |q 29022/2 |goto 50.3,25.3
step
click Control Console##268617
turnin Samophlange##29022 |goto 50.3,25.7
accept Samophlange##29023 |goto 50.3,25.7
step
kill Tinkerer Sniggles##3471
collect Console Key##5089 |q 29023/1 |goto 51.1,23.5
step
click Control Console##268617
|tip Its a small machine under the canopy.
turnin Samophlange##29023 |goto 50.3,25.7
accept Samophlange##29024 |goto 50.3,25.7
step
kill Venture Co. Drudger##3284+, Venture Co. Mercenary##3282+, Venture Co. Drudger##3284+
collect 6 Sputtervalve's Blueprints##68820 |q 29086/1 |goto 50.3,25.7
step
talk Nozzlepot##34698
turnin Sludge Beast!##29089 |goto 62.5,16.7
turnin Hyena Extermination##29088 |goto 62.5,16.7
step
talk Sputtervalve##3442
turnin Competition Schmompetition##29086 |goto 62.3,17.5
turnin Samophlange##29024 |goto 62.3,17.5
accept Samophlange Repair##14003 |goto 62.3,17.5
turnin The Escape##863 |goto 62.3,17.5
step
talk Brak Blusterpipe##34674
turnin Samophlange Repair##14003 |goto 62.7,17.0
accept Wenikee Boltbucket##29026 |goto 62.7,17.0
step
talk Brak Blusterpipe##34674
Tell him _"I'm ready to teleport. I think."_ |goto 62.7,17.0 < 5 |walk
Teleport to Wenikee Boltbucket |goto 44.2,25.1 < 10 |noway |q 29026 |walk
step
talk Wenikee Boltbucket##9316
turnin Wenikee Boltbucket##29026 |goto 44.4,24.9
accept Nugget Slugs##29027 |goto 44.4,24.9
step
talk Brogor##52192
accept A Burning Threat##29090 |goto 44.3,25.1
stickystart "slayburning"
step
click Tool Buckets##161752
|tip They look like wooden buckets with tools in them around this area.
collect 10 Nugget Slug##11143 |q 29027/1 |goto 42.7,31.8
step
label "slayburning"
kill Burning Blade Acolyte##3380+, Burning Blade Bruiser##3379+
Slay #8# Members of the Burning Blade |q 29090/1 |goto 42.9,31.6
You can find more Members of the Burning Blade here [40.6,32.9]
step
talk Brogor##52192
turnin A Burning Threat##29090 |goto 44.3,25.1
step
talk Wenikee Boltbucket##9316
turnin Nugget Slugs##29027 |goto 44.4,24.9
accept Return to Samophlanger##14004 |goto 44.4,24.9
step
talk Wenikee Boltbucket##9316
Tell her to send you back to Nozzlepot's Outpost |goto 44.4,24.9 < 5 |walk
Return to Nozzlepot |goto 62.6,17.3 < 10 |noway |q 14004 |walk
step
talk Sputtervalve##3442
turnin Return to Samophlanger##14004 |goto 62.3,17.5
accept Read the Manual##14006 |goto 62.3,17.5
step
talk Brak Blusterpipe##34674
accept Miner's Fortune##29015 |goto 62.7,17.0
step
_Follow_ the path up |goto 67.6,18.5 < 10 |only if walking
_Enter_ the mine |goto 65.3,11.9 < 10 |walk
kill Boss Copperplug##9336
collect Samophlange Manual Cover##11147 |q 14006 |goto Northern Barrens 64.8,11.8
step
_Leave_ the mine |goto 65.3,11.9 < 10 |walk
kill Venture Co. Enforcer##3283+, Venture Co. Overseer##3286+
collect Cats Eye Emerald##5097 |q 29015/1 |goto 66.3,13.1
step
kill Venture Co. Overseer##3286+, Venture Co. Enforcer##3283+
collect 5 Samophlange Manual Page##11148 |n
use Samophlange Manual Cover##11147
collect Samophlange Manual##11149 |q 14006/1 |goto 66.3,13.1
step
_Follow_ the path down |goto 66.5,20.0 < 10 |only if walking
talk Sputtervalve##3442
turnin Read the Manual##14006 |goto 62.3,17.5
step
talk Brak Blusterpipe##34674
turnin Miner's Fortune##29015 |goto 62.7,17.0
step
talk Sputtervalve##3442
accept The Short Way Home##29094 |goto 62.3,17.5
step
clicknpc Silver Bullet X-831##52203 |goto 62.2,17.4 < 7 |walk
Take a Ride on the Rocket |goto 30.8,46.1 < 10 |noway |q 29094 |walk
step
talk Innkeeper Boorand Plainswind##3934
home The Crossroads |goto 49.5,57.9 |q 29094
step
talk Thork##3429
accept Deathgate's Reinforcements##14073 |goto 48.7,59.6
only if completedq(851)
step
talk Regthar Deathgate##3389
turnin Deathgate's Reinforcements##14073 |goto 37.8,55.3
accept Hezrul Bloodmark##852 |goto 37.8,55.3
accept Centaur Bracers##855 |goto 37.8,55.3
only if completedq(851)
stickystart "centaurbracer"
step
kill Hezrul Bloodmark##3396
|tip He walks around the entire Lushwater Oasis with 2 guards, so you will probably need to search for him.
collect Hezrul's Head##5025 |q 852/1 |goto 42.2,71.8
only if completedq(851)
step
label "centaurbracer"
kill Kolkar Stormseer##9523+, Kolkar Marauder##3275+
collect 10 Centaur Bracers##5030 |q 855/1 |goto 40.6,70.5
You can find more at [Northern Barrens,43.5,74.8]
only if completedq(851)
step
talk Regthar Deathgate##3389
turnin Hezrul Bloodmark##852 |goto 37.8,55.3
turnin Centaur Bracers##855 |goto 37.8,55.3
accept Counterattack!##4021 |goto 37.8,55.3
|tip This is a group quest, so you may need a partner to help. If you can't solo it and can't find a partner, just skip this quest.
only if completedq(851)
step
kill Kolkar Invader##9524+
|tip Eventually, Warlord Krom'zar will spawn.
kill Warlord Krom'zar##9456
click Krom'zar's Banner##164690
|tip It looks like a tall pole with a red flag on it.
collect Piece of Krom'zar's Banner##11227 |q 4021/1 |goto 35.9,54.8
|tip This is a group quest, so you may need a partner to help. If you can't solo it and can't find a partner, just skip this quest.
only if completedq(851)
step
talk Regthar Deathgate##3389
turnin Counterattack!##4021 |goto 37.8,55.3
only if completedq(851)
step
talk Darsok Swiftdagger##3449
turnin The Short Way Home##29094 |goto 30.6,45.9
accept Harpy Raiders##867 |goto 30.6,45.9
accept Harpy Lieutenants##875 |goto 30.6,45.9
step
kill Witchwing Harpy##3276+, Witchwing Windcaller##3280+
collect 6 Witchwing Talon##5064 |q 867/1 |goto 28.6,35.3
step
Click the _Quest Complete_ Box:
turnin Harpy Raiders##867
accept Harpy Lieutenants##875
step
kill 6 Witchwing Slayer##3278 |q 875/1 |goto 27.4,31.6
step
Click the _Quest Complete_ Box:
turnin Harpy Lieutenants##875
accept Serena Bloodfeather##876
step
kill Serena Bloodfeather##3452
collect Serena's Head##5067 |q 876/1 |goto 26.9,26.6
step
talk Darsok Swiftdagger##3449
turnin Serena Bloodfeather##876 |goto 30.6,45.9
accept Report to Thork##29095 |goto 30.6,45.9
step
talk Thork##3429
turnin Report to Thork##29095 |goto 48.7,59.6
accept Mor'shan Caravan Pick-Up##29109 |goto 48.7,59.6
step
talk Rocco Whipshank##52220
Tell him _"I'm ready. Let's go!"_ |q 29109/1 |goto 50.3,57.2
step
clicknpc Chief Caravan Kodo##52209 |goto Northern Barrens 50.2,57.2 < 5
Ride Caravan to Dreadmist Peak |q 29109/2 |goto Northern Barrens 48.1,38.8
step
talk Nagala Whipshank##52207
turnin Mor'shan Caravan Pick-Up##29109 |goto 47.5,39.6
accept Mor'shan Caravan Rescue##29110 |goto 47.5,39.6
step
Follow the path up the Mountain |goto 47.0,37.9 < 10 |only if walking
talk Balgor Whipshank##52309
turnin Mor'shan Caravan Rescue##29110 |goto 41.1,39.2
accept Demon Seed##29112 |goto 41.1,39.2
step
click The Demon Seed##3524
|tip It looks like a red crystal spinning above a rock that is on fire.
collect Demon Seed##68837 |q 29112/1 |goto 42.5,38.8
step
_Follow this path down_ the mountain |goto 44.2,37.0 < 10 |only if walking
talk Nagala Whipshank##52207
turnin Demon Seed##29112 |goto 47.5,39.6
accept Mor'shan Caravan Delivery##29111 |goto 47.5,39.6
step
talk Nagala Whipshank##52207
Tell her _"I'm ready to ride."_
Speak to Nagala Whipshank |q 29111/1 |goto 47.5,39.6
step
clicknpc Chief Caravan Kodo##52209
Ride the Kodo |invehicle |goto 47.8,39.5 |q 29111
step
Use the Abilities on your action bar to fight off the Burning Blade enemies
Defend the Mor'shan Caravan Ride |q 29111/2 |goto Northern Barrens 42.9,15.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Azshara (10-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azshara 10-12",
next="Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Ashenvale (15-60)",
startlevel=10,
endlevel=60,
},[[
step
click Warchief's Command Board##206109
accept Warchief's Command: Azshara!##28496 |goto Orgrimmar/1 49.7,76.5
step
talk Ag'tor Bloodfist##8576
turnin Beyond Durotar##25648 |goto Azshara 26.8,76.9 |only if havequest(25648)
accept Venison for the Troops##14118 |goto Azshara 26.8,76.9
accept The Eyes of Ashenvale##14117 |goto Azshara 26.8,76.9
step
talk Labor Captain Grabbit##35086
turnin Warchief's Command: Azshara!##28496 |goto 27.0,77.1 |only if havequest(28496)
turnin Report to the Labor Captain##25275 |goto 27.0,77.1 |only if havequest(25275)
accept Runaway Shredder!##14129 |goto 27.0,77.1
step
kill Runaway Shredder##35111
|tip They are spread out all around this area.
clicknpc Runaway Shredder##35111
Capture the Runaway Shredder |q 14129/1 |goto 27.4,74.6
step
Click the _Quest Complete_ Box:
turnin Runaway Shredder!##14129
accept The Captain's Logs##14134
step
Use the _Gather Lumber_ ability on your hotbar next to Azshara Lumber Piles
|tip They looks like piles of 3 logs all around this area.
collect 6 Azshara Lumber##47050 |q 14134/1 |goto 26.2,75.2
step
Click the _Quest Complete_ Box:
turnin The Captain's Logs##14134
accept Up a Tree##14135
step
Use the _Buzzsaw_ ability on your hotbar next to Azshara Saplings
|tip They look like smaller trees with a bunch of red leaves on them. When you cut the Azshara Saplings, Talrendis Snipers will spawn.
Use the abilities on your hotbar to kill the Talrendis Snipers
kill 9 Talrendis Sniper##35149 |q 14135/1 |goto 30.0,76.6
step
Click the _Quest Complete_ Box:
turnin Up a Tree##14135
accept Defend the Gates!##14146
step
kill 20 Talrendis Raider##35177 |q 14146/1 |goto 27.0,77.2
|tip You can use the yellow arrow on your quickbar to get out of the Shredder and kill them normally.
step
Click the _Quest Complete_ Box:
turnin Defend the Gates!##14146
accept Arborcide##14155
step
Use the abilities on your hotbar to kill the Talrendis Ancient
kill Talrendis Ancient##35198 |q 14155/1 |goto 21.5,75.9
|tip If you got out of your Shredder for the previous quest you'll have to weaken and capture a new one.
step
Click the _yellow arrow_ to stop controlling the Runaway Shredder |outvehicle |q 14155
stickystart "talrendisscout"
step
kill Weakened Mosshoof Stag##35096+
collect 15 Slab of Venison##47038 |q 14118/1 |goto 25.5,74.8
step
label "talrendisscout"
kill 8 Talrendis Scout##35095 |q 14117/1 |goto 25.5,74.8
|tip They are stealthed all around this area, so keep an eye out for them.
collect Scout's Orders##47039 |n
use Scout's Orders##47039
accept Return of the Highborne?##14127
step
talk Labor Captain Grabbit##35195
turnin Arborcide##14155 |goto 27.0,77.1
accept Report to Horzak##14162 |goto 27.0,77.1
step
talk Ag'tor Bloodfist##35194
turnin Venison for the Troops##14118 |goto 26.8,76.9
turnin The Eyes of Ashenvale##14117 |goto 26.8,76.9
turnin Return of the Highborne?##14127 |goto 26.8,76.9
accept Return of the Highborne?##14128 |goto 26.8,76.9
step
talk Malynea Skyreaver##35087
turnin Return of the Highborne?##14128 |goto Azshara 29.7,66.9 |only if havequest(14128)
step
talk Foreman Fisk##35085
accept A Quota to Meet##14197 |goto 29.3,66.5
step
talk Horzak Zignibble##35091
turnin Report to Horzak##14162 |goto 29.1,66.2 |only if havequest(14162)
accept Basilisk Bashin'##14161 |goto 29.1,66.2
accept Stone Cold##14165 |goto 29.1,66.2
stickystart "mountainfootiron"
step
_Head down_ into the mining area |goto 28.1,71.3 < 10 |only if walking
kill 10 Greystone Basilisk##35245 |q 14161/1 |goto 26.7,70.1
step
label "mountainfootiron"
click Iron Ingot##6455+, Iron Stockpile##6478+
|tip They look like silver bars laying on the ground and in the carts around this area.
collect 20 Mountainfoot Iron##48128 |q 14197/1 |goto 26.7,70.1
step
clicknpc Mountainfoot Miner##35257
|tip You only need one. They look like darker goblins standing in place around this area. Not all of them are clickable, so just search around until you find one you can click.
Carry the Mountainfoot Miner |havebuff 236310 |q 14165 |goto 26.7,70.1
step
Follow the path up and out |goto Azshara 25.8,68.6 < 10 |only if walking
Deliver the Stonified Miner |q 14165/1 |goto 29.1,66.2
step
talk Horzak Zignibble##35091
turnin Basilisk Bashin'##14161 |goto 29.1,66.2
turnin Stone Cold##14165 |goto 29.1,66.2
accept The Perfect Prism##14190 |goto 29.1,66.2
step
talk Foreman Fisk##35085
turnin A Quota to Meet##14197 |goto 29.2,66.3
step
kill Talrendis Saboteur##35312+
collect Crystal Pendant##47819 |q 14190/1 |goto 22.0,69.3
step
_Enter_ the building |goto Azshara/0 20.6,69.7 < 10 |only if walking
click Headquarters Radio##195431
turnin The Perfect Prism##14190 |goto 20.3,70.4
accept Prismbreak##14192 |goto 20.3,70.4
step
click Weapons Cabinet##195435
turnin Prismbreak##14192 |goto 20.0,70.0
accept Refleshification##14194 |goto 20.0,70.0
step
clicknpc Mountainfoot Miner##35257
use The Refleshifier##48104
|tip Use The Refleshifier on Mountainfoot Miners.
|tip They look like darker goblins standing in place around this area. You won't be able to select all of them.
Destone #8# Mountainfoot Miners |q 14194/1 |goto 22.1,68.8
step
Follow the path up |goto Azshara 25.8,68.6 < 10 |only if walking
talk Horzak Zignibble##35091
turnin Refleshification##14194 |goto 29.1,66.2
step
talk Private Worcester##36752
accept Another Warm Body##14468 |goto 29.5,66.8
step
talk Commander Molotov##36749
turnin Another Warm Body##14468 |goto 29.5,57.7
accept Hand-me-downs##14469 |goto 29.5,57.7
step
talk Glix Grindlock##36744
accept Military Breakthrough##14470 |goto 29.4,57.6
step
talk Xiz "The Eye" Salvoblast##36746
accept First Degree Mortar##14471 |goto 29.1,57.9
step
clicknpc Bligewater Mortar##36768 |goto 31.2,57.4 < 10
|tip They look like red and white cannons. Click and hold the right mouse button, then drag to aim. Use the Mortar Round ability on your hotbar to shoot the Spitelash Myrmidon nagas to the east, in the valley.
|tip It will take multiple mortar shots to kill the naga. Fire in the same spot as fast as you can, because the naga will automatically start regenerating health.
Blow #60# Spitelash Attackers to Bits |q 14471/1 |goto 31.2,57.4
step
Click the yellow arrow on your hotbar |outvehicle |q 14471
step
talk Xiz "The Eye" Salvoblast##36746
turnin First Degree Mortar##14471 |goto 29.1,57.9
stickystart "militarysupplies"
step
kill Warlord Krellian##8408 |q 14470/1 |goto 27.6,51.9
step
click SFG##201572
|tip It's a red dynamite rocket laying on the ground next to a dead goblin.
collect SFG##49700 |q 14470/2 |goto 27.6,51.9
step
label "militarysupplies"
clicknpc Dead Soldier##36756+
|tip They look like dead orcs on the ground amongst a ton of land mines. Don't step on the land mines.
collect 12 Military Supplies##49599 |q 14469/1 |goto 28.2,55.3
step
talk Glix Grindlock##36744
turnin Military Breakthrough##14470 |goto 29.4,57.6
accept In The Face!##14472 |goto 29.4,57.6
step
talk Commander Molotov##36749
turnin Hand-me-downs##14469 |goto 29.5,57.7
step
use SFG##49700
|tip Use your SFG on an Enslaved Son of Arkkoroc.
|tip They are walking back and forth around this area. Watch out for the lind mines.
kill Enslaved Son of Arkkoroc##36868 |q 14472/1 |goto 31.4,60.6
step
talk Glix Grindlock##36744
turnin In The Face!##14472 |goto 29.4,57.6
step
talk Commander Molotov##36749
accept Profitability Scouting##24452 |goto 29.5,57.7
step
use Stealth Field Generator##49701
|tip If you become unstealthed at any time, use your Stealth Field Generator.
|tip If you have a pet of any kind, dismiss it.
Identify the Heart of Arkkoroc |q 24452/1 |goto 31.4,50.5
step
talk Commander Molotov##36749
turnin Profitability Scouting##24452 |goto 29.5,57.7
accept Private Chat##24453 |goto 29.5,57.7
step
talk Private Worcester##36752
turnin Private Chat##24453 |goto 29.5,66.8
step
talk Custer Clubnik##35088
accept Survey the Lakeshore##14202 |goto 29.6,66.9
step
talk Malynea Skyreaver##35087
accept A Thousand Stories in the Sand##14201 |goto 29.7,66.9
stickystart "recoverartifacts"
step
Stand next to the Survey Equipment
|tip It looks like a small pole with a red handle on it.
Protect the goblin surveyor while the test is conducted
Survey the North Marker |q 14202/2 |goto 34.7,71.6
step
Stand next to the Survey Equipment
|tip It looks like a small pole with a red handle on it.
Protect the goblin surveyor while the test is conducted
Survey the East Marker |q 14202/3 |goto 37.4,74.6
step
Stand next to the Survey Equipment
|tip It looks like a small pole with a red handle on it.
Protect the goblin surveyor while the test is conducted
Survey the West Marker |q 14202/1 |goto 34.3,76.7
step
label "recoverartifacts"
click Ancient Debris Pile##195455
collect 5 Recovered Artifacts##48525 |q 14201/1 |goto 34.3,76.7
step
talk Malynea Skyreaver##35087
turnin A Thousand Stories in the Sand##14201 |goto 29.7,66.9
accept Memories of the Dead##14215 |goto 29.7,66.9
step
talk Custer Clubnik##35088
turnin Survey the Lakeshore##14202 |goto 29.6,66.9
accept Gunk in the Trunk##14209 |goto 29.6,66.9
step
clicknpc Clubnik's Dozer##35526
|tip It's a big gray metal vehicle.
kill Ectoplasmic Exhaust##35558
collect Ectosplatter Sample##48780 |q 14209/1 |goto 30.1,67.2
step
talk Custer Clubnik##35088
turnin Gunk in the Trunk##14209 |goto 29.6,66.9
accept Dozercism##14423 |goto 29.6,66.9
step
use Blessed Flaregun##49350
|tip Use your Blessed Flaregun next to Clubnik's Dozer.
kill Clubnik's Dozer##35526
Exorcise Clubnik's Dozer |q 14423/1 |goto 30.0,67.2
step
talk Custer Clubnik##35088
turnin Dozercism##14423 |goto 29.6,66.9
accept Need More Science##14424 |goto 29.6,66.9
step
talk Spirit of Kalytha##35567
Select "_<Merge with the spirit.>_"
Explore the Memories of Kalytha |havebuff 136223 |q 14215 |goto Azshara 36.4,72.4
step
talk Archmage Selwyn##35595
Tell her _"Yes Archmage. I will hide the stone."_
Learn Kalytha's Secret |q 14215/1 |goto Azshara 37.5,74.5
step
Click the _Quest Complete_ Box:
turnin Memories of the Dead##14215
accept Mystery of the Sarcen Stone##14216
step
click Ancient Stone Cask##195513
|tip It's underwater in a half-buried stone box.
collect Sarcen Stone##48921 |q 14216/1 |goto Azshara 35.6,75.3
step
talk Malynea Skyreaver##35087
turnin Mystery of the Sarcen Stone##14216 |goto Azshara 29.7,66.9
step
_Ride up_ the elevator |goto 29.4,66.5 < 5 |walk
talk Bilgewater Rocket-jockey##43217
Tell him _"Southern Rocketway Terminus, please."_ |goto Azshara 29.5,66.2 < 5 |walk
Ride the Rocket to the Southern Rocketway Terminus |goto Azshara 51.0,74.1 < 10 |noway |q 14424
step
talk Assistant Greely##39199
turnin Need More Science##14424 |goto Azshara 50.4,74.3
accept When Science Attacks##14308 |goto Azshara 50.4,74.3
step
talk Friz Groundspin##37005
fpath Southern Rocketway |goto Azshara 51.5,74.3
step
talk Bombardier Captain Smooks##35817
accept Mortar the Point##14258 |goto Azshara 52.2,74.2
step
talk Twistex Happytongs##36146
accept Bad Science! Bad!##14322 |goto Azshara 45.1,75.5
step
Follow the path up |goto Azshara 42.9,77.6 < 10 |only if walking
talk Subject Nine##36500
accept Nine's Plan##14408 |goto Azshara 42.2,76.1
step
kill 8 Static-Charged Hippogryph##36147 |q 14322/1 |goto 42.7,79.4
stickystart "researchgoblins"
stickystart "goblinmortarshells"
step
use Fireliminator X-21##49132
|tip Use your Fireliminator X-21 on Research Interns and next to the fires on structures.
Extinguish #8# Lab Fires |q 14308/1 |goto Azshara 44.3,75.3
step
label "researchgoblins"
clicknpc Research Intern##36061+
use Fireliminator X-21##49132
|tip They are goblins running around on fire.
Rescue #6# Research Interns |q 14308/2 |goto Azshara 44.3,75.3
step
label "goblinmortarshells"
click Goblin Mortar Shell##195623
collect 5 Goblin Mortar Shell##49062 |q 14258/1 |goto Azshara 44.3,75.3
step
click Secret Lab Squawkbox##195676
turnin When Science Attacks##14308 |goto Azshara 43.8,77.4
accept Segmentation Fault: Core Dumped##14310 |goto Azshara 43.8,77.4
step
click Reactor Control Console##195683 |goto Azshara 43.8,77.3 < 5 |walk
Follow the Hulking Labgoblin as he pushes the cart on the tracks |goto 44.0,76.9 < 5 |walk
use Fireliminator X-21##49132
|tip Use your Fireliminator X-21 on the Azsharite Core every few seconds to keep it cool.
Deliver the Azsharite Core |q 14310/1 |goto 49.5,74.5
step
talk Assistant Greely##39199
turnin Segmentation Fault: Core Dumped##14310 |goto Azshara 50.4,74.3
accept Mysterious Azsharite##14370 |goto Azshara 50.4,74.3
accept A Gigantic Snack##14371 |goto Azshara 50.4,74.3
step
talk Bombardier Captain Smooks##35817
turnin Mortar the Point##14258 |goto Azshara 52.2,74.2
step
talk Torg Twocrush##35657
accept To Gut a Fish##14262 |goto Azshara 50.7,75.3
accept Investigating the Sea Shrine##14267 |goto Azshara 50.7,75.3
step
clicknpc Door Buzzer##36472
|tip It's a pole standing upright with a yellow orb on top.
Select "_<Ring the Buzzer>_"
kill Mutant Goblin##36156
collect Secret Rocket Plans##49204 |q 14408/2 |goto Azshara 45.9,76.1
step
talk Twistex Happytongs##36146
turnin Bad Science! Bad!##14322 |goto Azshara 45.1,75.5
step
Follow the path up |goto 42.9,77.6 < 10 |only if walking
talk Subject Nine##36500
turnin Nine's Plan##14408 |goto Azshara 42.2,76.1
accept Raptor Raptor Rocket##14422 |goto Azshara 42.2,76.1
step
click Specimen Cage##196486
|tip They look like gray metal cages around this area.
Get _5 stacks_ of the _Babysitting Raptors Buff_ |goto Azshara 43.2,75.4 |walk
|tip If you use any form of stealth during this buff, the raptors will leave and you will start over.
confirm |q 14422
step
Follow the path up |goto 42.9,77.6 < 10 |only if walking
Deliver #5# Experimental Raptors |q 14422/1 |goto Azshara 42.2,75.8
step
talk Subject Nine##36500
turnin Raptor Raptor Rocket##14422 |goto Azshara 42.2,76.1
stickystart "mistwingcliff"
step
click Azsharite Formation##152620
|tip They look like frozen people and big blue crystals laying on the ground around this area along the cliffs.
collect 5 Azsharite Sample##49207 |q 14370/1 |goto Azshara 39.7,77.9
step
label "mistwingcliff"
kill Mistwing Cliffdweller##36304+
collect 8 Mutilated Mistwing Carcass##49208 |q 14371/1 |goto Azshara 39.7,77.9
You can find more of both of these around [Azshara 43.0,81.5]
step
talk Assistant Greely##39199
turnin Mysterious Azsharite##14370 |goto Azshara 50.4,74.3
turnin A Gigantic Snack##14371 |goto Azshara 50.4,74.3
accept Befriending Giants##14377 |goto Azshara 50.4,74.3
step
talk Gormungan##36297
Tell him _"I brought you something to eat."_
Discover the Secret of Azsharite |q 14377/1 |goto Azshara 47.7,75.5
step
talk Assistant Greely##39199
turnin Befriending Giants##14377 |goto Azshara 50.4,74.3
accept Azsharite Experiment Number One##14385 |goto Azshara 50.4,74.3
step
talk Hobart Grapplehammer##38120
accept The Terrible Tinkers of the Ruined Reaches##14383 |goto Azshara 50.5,74.7
step
_Cross_ the bridge |goto 55.6,76.5 < 10 |only if walking
click Naga Power Stone##195642
turnin Investigating the Sea Shrine##14267 |goto Azshara 59.0,71.8
accept The Keystone Shard##14270 |goto Azshara 59.0,71.8
step
click Keystone Shard##201579
collect Keystone Shard##49094 |q 14270/1 |goto Azshara 57.5,71.0
step
click Naga Power Stone##195642
turnin The Keystone Shard##14270 |goto Azshara,59.0,71.8
accept Report to Twocrush##14271 |goto Azshara,59.0,71.8
step
kill 6 Spitelash Stormfury##35831 |q 14262/1 |goto Azshara 56.8,76.0
kill 6 Spitelash Seacaller##35832 |q 14262/2 |goto Azshara 56.8,76.0
You can find more at this location |goto Azshara 55.1,76.9
step
talk Torg Twocrush##35657
turnin To Gut a Fish##14262 |goto Azshara 50.7,75.3
turnin Report to Twocrush##14271 |goto Azshara 50.7,75.3
accept Sisters of the Sea##14295 |goto Azshara 50.7,75.3
step
clicknpc Silisthra's Power Stone##35892
|tip Clicking this makes Silisthra no longer elite. Run past her and click it.
kill Lady Silisthra##35880 |q 14295/1 |goto Azshara 63.2,75.9
step
clicknpc Vesthra's Power Stone##35968
|tip Clicking this makes Vesthra no longer elite. Run past her and click it.
kill Lady Vesthra##35881 |q 14295/2 |goto Azshara 63.7,79.4
step
talk Torg Twocrush##35657
turnin Sisters of the Sea##14295 |goto Azshara 50.7,75.3
stickystart "killgnomes"
step
Follow the path down |goto 45.8,81.8 < 10 |only if walking
kill Bingham Gadgetspring##36407 |q 14383/1 |goto Azshara 39.8,84.7
|tip He is inside this weird tower building.
step
Ride the elevator up
click Giant-Sized Laxative##196462
|tip It's a large brown box sitting on a table.
collect Giant-Sized Laxative##49230 |q 14385/2 |goto Azshara,39.9,84.8
step
label "killgnomes"
kill 4 Netgun Gnome##36385 |q 14383/2 |goto Azshara 40.1,84.0
kill 6 Zapper Gnome##36384 |q 14383/3 |goto Azshara 40.1,84.0
step
Follow the path up |goto Azshara 41.1,83.8 < 10 |only if walking
talk Gormungan##36297
Tell him _"Here, eat this! It's a special chocolate rock."_
Try to Feed Gormungan |q 14385/1 |goto Azshara 47.7,75.5
step
talk Assistant Greely##39199
turnin Azsharite Experiment Number One##14385 |goto Azshara 50.4,74.3
accept Azsharite Experiment Number Two##14388 |goto Azshara 50.4,74.3
step
talk Assistant Greely##39199
Tell her "_I'm ready. Shrink me!"_
Become Mouse-sized! |havebuff 135791 |q 14388 |goto Azshara 50.4,74.3
step
clicknpc Rocketway Rat##36437
Ride a Rat |invehicle |q 14388 |goto Azshara 50.3,74.4
step
talk Gormungan##36297
Tell him _"SQUEAK!!"_
Scare Gormungan |q 14388/1 |goto Azshara 47.7,75.5
step
talk Assistant Greely##39199
turnin Azsharite Experiment Number Two##14388 |goto Azshara 50.4,74.3
step
talk Hobart Grapplehammer##38120
turnin The Terrible Tinkers of the Ruined Reaches##14383 |goto Azshara 50.5,74.7
accept A Hello to Arms##24458 |goto Azshara 50.5,74.7
step
click Wrenchmen Recruitment Poster##203755
|tip It is hanging on the wall inside this big building
accept Operation Fishgut##14478 |goto 57.0,50.1
step
talk Mixi##43771
home Bilgewater Harbor |goto Azshara 57.1,50.4 |q 14478
step
talk Teemo##36999
accept Azshara Blues##14407 |goto 59.3,50.8
step
talk Bleenik Fizzlefuse##37009
turnin A Hello to Arms##24458 |goto Azshara 60.6,51.0
step
talk Commander Molotov##36749
turnin Operation Fishgut##14478 |goto Azshara 60.6,50.6
accept Rapid Deployment##24455 |goto Azshara 60.6,50.6
step
talk Captain Desoto##36956
turnin Rapid Deployment##24455 |goto Azshara 58.1,52.3
accept There Are Many Like It##14479 |goto Azshara 58.1,52.3
step
talk Kalec##35867
|tip He is standing underneath a small bridge
turnin Azshara Blues##14407 |goto Azshara 55.5,52.1
accept Friends Come In All Colors##14130 |goto Azshara 55.5,52.1
step
talk Kroum##8610
fpath Bilgewater Harbor |goto Azshara 52.9,49.9
step
clicknpc Surface to Other Surface Transport##36917 |goto Azshara 57.9,52.2 < 5
Go to The Shattered Strand |goto Azshara 39.1,51.3 < 10 |noway |q 14479
step
talk Ruckus##36795
accept First Come, First Served##24437 |goto Azshara 39.1,51.8
step
talk Lieutenant Drex##36920
turnin There Are Many Like It##14479 |goto Azshara 41.5,53.7
accept Mop Up##24435 |goto Azshara,41.5,53.7
step
talk Sergeant Hort##36921
accept Halo Drops##24436 |goto Azshara,41.4,53.9
stickystart "flarewound"
stickystart "defendnaga"
step
use Flag of Territorial Claim##49685
|tip Use your Flag of Territorial Claim in the blue light.
Claim the Southern Pagoda |q 24437/1 |goto Azshara 43.9,59.9
step
use Flag of Territorial Claim##49685
|tip Use your Flag of Territorial Claim in the blue light.
Claim the Big ol' Tower |q 24437/2 |goto Azshara 43.6,43.4
step
use Flag of Territorial Claim##49685
|tip Use your Flag of Territorial Claim in the blue light.
Claim the Northern Vista |q 24437/3 |goto Azshara 45.5,38.5
step
label "flarewound"
clicknpc Wounded Soldier##36922+
use Sanctified Flaregun##49679
|tip Use your Sanctified Flaregun on Wounded Soldier.
|tip They look like dead goblins on the ground around this area.
Rescue #8# Wounded Soldiers |q 24436/1 |goto Azshara 41.2,52.0
step
label "defendnaga"
kill Spitelash Warrior##6190+, Spitelash Siren##6195+
Kill #12# Defending Naga |q 24435/1 |goto Azshara 41.2,52.0
step
talk Ruckus##36795
turnin First Come, First Served##24437 |goto Azshara 39.1,51.8
step
talk Lieutenant Drex##36920
turnin Mop Up##24435 |goto Azshara 41.5,53.7
step
talk Sergeant Hort##36921
turnin Halo Drops##24436 |goto Azshara 41.4,53.9
step
talk Lieutenant Drex##36920
accept Field Promotion##24448 |goto Azshara 41.5,53.7
step
Follow the path up |goto 37.0,45.3 < 10 |only if walking
talk Captain Tork##36745
turnin Field Promotion##24448 |goto Azshara 34.3,44.9
accept Still Beating Heart##14487 |goto Azshara 34.3,44.9
step
talk Sergeant Zelks##36895
accept Extermination##14480 |goto Azshara 34.5,44.7
accept Head of the Snake##14484 |goto Azshara 34.5,44.7
accept Ticker Required##14485 |goto Azshara 34.5,44.7
step
talk Tora Halotrix##36894
accept Handling the Goods##14486 |goto Azshara 34.5,44.7
stickystart "highbornetab"
stickystart "spitenaga"
step
use Gob Squad Flare##49629
|tip Use your Gob Squad Flare to get a team of goblins to help you.
|tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
Stand next to the Spitelash Runestone
|tip It looks like a tall stone statue with pink light at the base of it.
Let Ticker destroy the Spitelash Runestone
Destroy the First Spitelash Runestones |q 14485/1 |count 1 |goto Azshara 36.0,47.6
click Highborne Tablet##203211
step
use Gob Squad Flare##49629
|tip Use your Gob Squad Flare to get a team of goblins to help you.
|tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
Stand next to the Spitelash Runestone
|tip It looks like a tall stone statue with pink light at the base of it.
Let Ticker destroy the Spitelash Runestone
Destroy the Second Spitelash Runestones |q 14485/1 |count 2 |goto Azshara 34.3,48.2
step
use Gob Squad Flare##49629
|tip Use your Gob Squad Flare to get a team of goblins to help you.
|tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
Stand next to the Spitelash Runestone
|tip It looks like a tall stone statue with pink light at the base of it.
Let Ticker destroy the Spitelash Runestone
Destroy the Third Spitelash Runestones |q 14485/1 |count 3 |goto Azshara 34.1,51.6
step
use Gob Squad Flare##49629
|tip Use your Gob Squad Flare to get a team of goblins to help you.
|tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
click Heart of Arkkoroc##200298
|tip It's a floating red crystal.
collect Heart of Arkkoroc##49642 |q 14487/1 |goto Azshara 31.9,50.1
step
use Gob Squad Flare##49629
|tip Use your Gob Squad Flare to get a team of goblins to help you.
|tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
Fight Lord Kassarus
click the Impaling Spines he throws at you
collect Impaling Spine##49649 |n
use Impaling Spine##49649
|tip Use the Impaling Spines on Lord Kassarus to increase the damage your team does to him.
kill Lord Kassarus##36822 |q 14484/1 |goto Azshara 36.0,49.8
step
label "highbornetab"
click Highborne Tablet##203211
collect 12 Highborne Tablet##49639 |q 14486/1 |goto Azshara 33.3,49.9
step
label "spitenaga"
kill Spitelash Battlemaster##7885+, Spitelash Enchantress##7886+
Kill #30# Spitelash Naga |q 14480/1 |goto Azshara 34.2,49.9
step
talk Captain Tork##36745
turnin Still Beating Heart##14487 |goto Azshara 34.3,44.9
step
talk Sergeant Zelks##36895
turnin Extermination##14480 |goto Azshara 34.5,44.7
turnin Head of the Snake##14484 |goto Azshara 34.5,44.7
turnin Ticker Required##14485 |goto Azshara 34.5,44.7
step
talk Tora Halotrix##36894
turnin Handling the Goods##14486 |goto Azshara 34.5,44.7
step
talk Captain Tork##36745
accept Shore Leave##24449 |goto Azshara 34.3,44.9
step
clicknpc Military Gyrocopter##37145 |goto 34.5,44.6
Ride the Gyrocopter Back to Bilgewater Harbor |goto 60.1,50.3 < 10 |noway |q 24449
step
talk Uncle Bedlam##36959
turnin Shore Leave##24449 |goto Azshara 60.6,50.5
step
_Go up_ the elevator |goto Azshara/0 50.8,74.5 < 5 |only if walking
talk Bilgewater Rocket-jockey##43217
Tell him _"Northern Rocketway Terminus, please."_ |goto 50.7,74.2 |walk
Arrive at Northern Rocketway Terminus |goto 66.5,21.0 < 10 |noway |q 14130
step
_Go up_ the elevator |goto 66.2,21.3 < 5 |only if walking
talk Blitz Blastospazz##43328
fpath Bitter Reaches |goto Azshara 66.5,20.9
step
Follow the path down |goto 69.7,26.2 < 10 |only if walking
talk Ergll##35142
turnin Friends Come In All Colors##14130 |goto Azshara 70.4,36.2
accept A Little Pick-me-up##14131 |goto Azshara 70.4,36.2
accept That's Just Rude!##14132 |goto Azshara 70.4,36.2
accept Absorbent##14323 |goto Azshara 70.4,36.2
stickystart "ruinsarkkoran"
stickystart "makrinnikills"
step
Run around Vile Splashes
|tip They are small water elementals all around this area.
collect 20 Simmering Water Droplet##49172 |q 14323/1 |goto Azshara 77.6,36.5
step
Click the _Quest Complete_ Box:
turnin Absorbent##14323
accept Full of Hot Water##14324
step
use Engorged Azshari Sea Sponge##49176
|tip Use your Engorged Azshari Sea Sponge next to the Stone of the Scalding Water Lords.
|tip It's looks like a huge pointed stone.
kill Scalding Water Lord##36130
collect Globe of Boiling Water##49174 |q 14324/1 |goto Azshara 81.3,30.7
step
label "ruinsarkkoran"
click Kawphi Plant##195686
|tip Small green and brown plants.
collect 10 Kawphi Bean##49162 |q 14131/1 |goto Azshara 71.9,36.1
step
label "makrinnikills"
kill 10 Makrinni Scrabbler##6370 |q 14132/1 |goto Azshara 71.9,36.1
step
talk Ergll##35142
turnin A Little Pick-me-up##14131 |goto Azshara 70.4,36.2
turnin That's Just Rude!##14132 |goto Azshara 70.4,36.2
turnin Full of Hot Water##14324 |goto Azshara 70.4,36.2
accept Wash Out##14345 |goto Azshara 70.4,36.2
step
Be Taken to the Northern Rocketway Exchange |goto Azshara 42.7,25.2 < 10 |noway |q 14345
step
talk Sorata Firespinner##36210
turnin Wash Out##14345 |goto Azshara 42.7,25.1
accept Dressed to Impress##14340 |goto Azshara 42.7,25.1
step
talk Andorel Sunsworn##36596
accept Amberwind's Journal##14428 |goto Azshara 42.6,23.7
step
talk Haggrum Bloodfist##8586
accept The Blackmaw Scar##14431 |goto Azshara 42.4,23.6
step
kill 8 Talrendis Biologist##36611 |q 14431/1 |goto 38.4,26.6
collect Blackmaw Intelligence##49364 |q 14431/2 |goto 38.4,26.6
You can find more at [Azshara 37.3,33.8]
step
talk Haggrum Bloodfist##8586
turnin The Blackmaw Scar##14431 |goto 42.4,23.6
accept A Pale Brew##14432 |goto 42.4,23.6
accept Diplomacy by Another Means##14433 |goto 42.4,23.6
step
use Dingy Wizard Hat##49201
equipped Dingy Wizard Hat##49201
Convey the Appearance of Quite a Convincing Mage |havebuff 133131 |q 14340 |goto 47.7,18.6
step
Approach Archmage Xylem While Wearing Your Wizard Hat |q 14340/1 |goto Azshara 47.2,20.9
step
talk Image of Archmage Xylem##35187
turnin Dressed to Impress##14340 |goto Azshara 47.2,20.9
step
talk Quarla Whistlebreak##35754
accept Waste of Thyme##14263 |goto Azshara 47.0,21.0
step
talk Will Robotronic##37151
accept Shear Will##14249 |goto Azshara 47.2,21.1
step
talk Tharkul Ironskull##35755
accept Renewable Resource##14250 |goto Azshara 47.3,21.2
stickystart "pristinefeathers"
stickystart "livingirethyme"
step
Wait for _Balboa_ to appear down the path
|tip He will appear in the distance and start walking towards you down the path.
use Arcane Charge##49038
|tip Balboa will walk over the charge and spawn 5 Animate Besalt Chunks.
click Animate Besalt Chunks##195602
collect 5 Animate Besalt##49036 |q 14250/1 |goto Azshara 48.7,18.4
step
label "pristinefeathers"
kill Thunderhead Hippogryph##6375+, Thunderhead Stagwing##6377+
collect 80 Pristine Thunderhead Feather##49068 |q 14249/1 |goto Azshara 49.2,18.8
step
label "livingirethyme"
click Living Ire Thyme##195587
|tip These are small clusters of golden leaves on the ground.
collect 8 Living Ire Thyme##49082 |q 14263/1 |goto Azshara 49.2,18.8
You can find more of both of these at [Azshara 44.1,16.6]
step
kill Lorekeeper Amberwind##36594
collect Amberwind's Journal##49356 |q 14428/1 |goto Azshara 49.8,28.5
step
click Upper Scrying Stone##196832
turnin Amberwind's Journal##14428 |goto Azshara 49.5,28.8
accept Arcane De-Construction##14429 |goto Azshara 49.5,28.8
step
kill Apprentice Illuminator##36593+, Apprentice Investigator##36592+
collect 10 Attuned Runestone##49359 |q 14429/1 |goto Azshara 51.7,28.1
step
click Lower Scrying Stone##196833
turnin Arcane De-Construction##14429 |goto Azshara 53.0,29.0
accept Hacking the Construct##14430 |goto Azshara 53.0,29.0
step
talk Arcane Construct##36599
Tell it "_Um ... Al'teth ... la c'tolgar? Or something._"
Hack the Arcane Construct |q 14430/1 |goto Azshara 53.0,30.0
step
Follow the path up |goto 48.4,19.8 < 10 |only if walking
talk Quarla Whistlebreak##35754
turnin Waste of Thyme##14263 |goto Azshara 47.0,21.0
step
talk Will Robotronic##37151
turnin Shear Will##14249 |goto Azshara 47.2,21.1
step
talk Tharkul Ironskull##35755
turnin Renewable Resource##14250 |goto Azshara 47.3,21.2
step
talk Teresa Spireleaf##35756
accept Manual Labor##14230 |goto Azshara 47.1,21.1
step
talk Image of Archmage Xylem##35187
accept Trouble Under Foot##14226 |goto Azshara 47.2,20.9
step
click Stolen Manual##195583
collect Abjurer's Manual##49012 |q 14230/1 |goto 55.2,25.2
step
clicknpc Legashi Hellcaller##6202+
clicknpc Legashi Satyr##6200+
Use _Personal Arcane Assistant's Polymorph Insect_ on Legashi Satyrs |petaction 1
kill 12 Polymorphed Cockroach##35628 |q 14226/1 |goto 55.2,25.2
You can find more satyrs to polymorph at [Azshara 53.1,20.9]
step
Use _Personal Arcane Assistant's Return to Camp_ ability |cast Return to Camp##68945
Return to Camp |goto Azshara 47.1,20.3 < 10 |noway |q 14226
step
talk Image of Archmage Xylem##35187
turnin Trouble Under Foot##14226 |goto Azshara 47.2,20.9
step
talk Teresa Spireleaf##35756
turnin Manual Labor##14230 |goto Azshara 47.1,21.1
step
talk Image of Archmage Xylem##35187
accept The Pinnacle of Learning##14413 |goto Azshara 47.2,20.9
Fly Off to An Island |goto Azshara 55.7,14.7 < 10 |noway |q 14413
step
talk Image of Archmage Xylem##36334
turnin The Pinnacle of Learning##14413 |goto Azshara,55.7,14.8
accept Watch Your Step##14296 |goto Azshara,55.7,14.8
step
click the Energy Conduit 6 times
|tip It's a small stone pillar with light coming out of the top of it.
_Get_ the _Energized_ Buff 6 Times |goto Azshara 55.7,14.8
confirm |q 14296
step
map Azshara/0
path loop of; follow strict; dist 5
path	56.2,14.7	57.0,14.1	57.6,12.8
path	57.4,11.2	56.4,10.5	55.3,10.9
path	55.0,12.6	55.5,13.1	56.5,13.3
path	56.9,11.8	56.0,11.2
Run to each point, stepping onto the sparkling circles on the ground
|tip You will shoot up to another ledge on the island.
|tip Keep running to the sparkling circles on the ground and click the Energy Conduits on some of the ledges to keep your Energized buff at 6 charges.
Reach the top of the island
Complete the Arcane Trial |q 14296/1
step
talk Image of Archmage Xylem##36361
turnin Watch Your Step##14296 |goto Azshara 56.0,12.2
accept The Trial of Fire##14300 |goto Azshara 56.0,12.2
accept The Trial of Frost##24478 |goto Azshara 56.0,12.2
accept The Trial of Shadow##24479 |goto Azshara 56.0,12.2
step
Click the Frost Portal Stone |goto Azshara 56.0,11.9 < 5 |walk
|tip It's the floating crystal on the left.
Click the Icy Morality Swirling Portal |goto Azshara/0 56.2,12.1 < 5 |walk
Teleport to the Trial of Frost |goto Azshara 62.1,21.2 < 10 |noway |walk |q 24478
|tip It's the big portal next to the crystals.
step
Run around on top of the mountain and get next to the floating white orbs
|tip Don't step on the snowy ground and try not to let the blue mist hit you, if you can. It will help to dismiss your pet, if you have one. Take your time and stay on the outskirts, don't go in the middle at all.
Gather 20 of the White Orbs
|tip You'll see how many you've gathered as a debuff that stacks.
Complete the Trial of Frost |q 24478/1
step
talk Image of Archmage Xylem##36336
turnin The Trial of Frost##24478 |goto Azshara 62.2,21.1
step
Click the Waning Sanity swirling portal
Leave the Trial of Frost |goto 62.1,21.2
confirm |q 14300
step
Click the Fire Portal Stone |goto Azshara 56.1,11.9 < 5 |walk
|tip It's the floating crystal in the middle.
Click the Burning Determination Swirling Portal |goto Azshara/0 56.2,12.1 < 5 |walk
Teleport to the Trial of Fire |goto Azshara 32.9,23.4 < 10 |noway |q 14300 |walk
|tip It's the big portal next to the crystals
step
You have to stand on the red fire runes without getting hit by fire 10 times in a row.
You should see an npc, Darwin, dancing around the fire runes. You can follow him around too, he's pretty good at this Trial.
|tip You can see which runes will shoot fire up because they will have a little flame in their center a few seconds before the fire shoots up. You need to run to a fire rune that doesn't have the little flame in the center. Do this 10 times.
Complete the Trial of Fire |q 14300/1
step
talk Image of Archmage Xylem##36335
turnin The Trial of Fire##14300 |goto Azshara 33.0,23.6
step
Click the Waning Sanity swirling portal
Leave the Trial of Fire |goto 32.9,23.4
confirm |q 24479
step
Click the Shadow Portal Stone |goto Azshara 56.1,11.9 < 5 |walk
|tip It's the floating crystal on the right.
Click the Grim Intention swirling portal |goto Azshara/0 56.2,12.1 < 5 |walk
Teleport to the Trial of Shadow |goto Azshara 31.2,26.7 < 10 |noway |q 24479 |walk
|tip It's the big portal next to the crystals
step
Click the Touch to Begin crystal
|tip It's a big floating purple crystal.
You have to lure 20 Weeping Souls into the purple shadow runes on the ground without getting hit
|tip A shadow will shoot out of you and you can see it on the ground heading to one of the portals. Position yourself so that the Weeping Souls that come out of the portals have to walk over the shadow runes on the ground in order to get to you. You'll have to move fairly often because more than one will come at you at the same time.
Complete the Trial of Shadow |q 24479/1 |goto Azshara 30.8,27.3
step
talk Image of Archmage Xylem##36337
turnin The Trial of Shadow##24479 |goto Azshara 31.1,26.8
step
Click the Waning Sanity swirling portal
Leave the Trial of Shadow |goto 31.2,26.7
confirm |q 14299 |future
step
talk Image of Archmage Xylem##36361
accept Xylem's Asylum##14299 |goto Azshara 55.9,12.2
step
Click the Xylem's Retreat swirling portal |goto Azshara/0 56.2,12.1 < 5 |n |walk
Teleport to Xylem's Retreat |goto Azshara 22.5,43.6 < 10 |q 14299 |walk
step
Follow the path up |goto 22.6,41.7 < 10 |only if walking
talk Joanna##36372
turnin Xylem's Asylum##14299 |goto Azshara 25.6,38.0
accept Wasn't It Obvious?##14389 |goto Azshara 25.6,38.0
step
Click the Ambitious Reach portal |goto Azshara 25.7,38.0 < 5 |walk
|tip You will die, it's part of the quest.
Find Anara, and Hopefully, Azuregos |q 14389/1 |goto Azshara 27.8,40.6
step
talk Spirit of Azuregos##36436
turnin Wasn't It Obvious?##14389 |goto Azshara 27.9,40.1
accept Easy is Boring##14390 |goto Azshara 27.9,40.1
step
talk Spirit of Azuregos##36436
Tell him _"Kalec sent me..."_
Convince Azuregos to Meet with Kalecgos |q 14390/1 |goto Azshara 27.9,40.1
step
talk Spirit of Azuregos##36436
turnin Easy is Boring##14390 |goto Azshara 27.9,40.1
accept Turning the Tables##14391 |goto Azshara 27.9,40.1
step
talk Anara##37040
Ask her _"Return me to life."_
Return to Life |nobuff Interface\Icons\Ability_Vanish |goto Azshara 27.6,39.6 |q 14391
stickystart ambassadorrobes
stickystart "briarrootbrew"
step
click Important Documents##196835
|tip They are sitting on a cage
collect Blackmaw Meeting Agenda##49367 |q 14433/1 |goto Azshara 29.8,38.6
step
label "ambassadorrobes"
kill Talrendis Ambassador##36614+
collect 1 Ambassador's Robes##49366 |q 14433/2 |goto Azshara 30.2,38.6
step
label "briarrootbrew"
kill Blackmaw Warrior##36013+, Blackmaw Pathfinder##36015+
click Briaroot Brew##196834
|tip They look like bowls with yellow liquid in them all around this village.
collect 10 Briaroot Brew##49365 |q 14432/1 |goto Azshara 30.2,38.6
step
_Go up_ the elevator |goto 26.1,49.6 < 5 |only if walking
talk Bilgewater Rocket-jockey##43217
Tell him "_Northern Rocketway Exchange, please."_ |goto Azshara 25.9,49.6 < 5
Arrive at the Northern Rocketway Exchange |goto Azshara 42.8,24.7 < 20 |noway |q 14430
step
talk Andorel Sunsworn##36596
turnin Hacking the Construct##14430 |goto Azshara 42.6,23.7
step
talk Haggrum Bloodfist##8586
turnin A Pale Brew##14432 |goto Azshara 42.4,23.6
turnin Diplomacy by Another Means##14433 |goto Azshara 42.4,23.6
accept The Blackmaw Doublecross##14435 |goto Azshara 42.4,23.6
step
use Ambassador Disguise##49368
talk Andorel Sunsworn##36596
Tell him _" I am ready. Teleport me to Blackmaw Hold."_ |goto Azshara 42.6,23.7 < 10 |walk
Teleport to Blackmaw Hold |goto Azshara 31.2,29.9 < 10 |noway |q 14435 |walk
step
talk Ungarl##36618
Choose any of the funny conversation options
Sabotage the Negotiations |q 14435/1 |goto Azshara 31.0,30.0
step
kill 4 Blackmaw Warrior##36013 |q 14435/2 |goto Azshara 32.5,31.8
kill 4 Blackmaw Shaman##36012 |q 14435/3 |goto Azshara 32.5,31.8
|tip Make your way up the steps and over the wooden bridge, then up another staircase and down a long hallway.
step
talk Haggrum Bloodfist##8586
turnin The Blackmaw Doublecross##14435 |goto Azshara 42.4,23.6
step
talk Bilgewater Rocket-jockey##43217
Tell him _"Northern Rocketway Terminus, please."_ |goto Azshara 42.5,24.6 < 5
Arrive at the Northern Rocketway Terminus |goto Azshara 66.3,20.8 < 10 |noway |q 14391
step
talk Kalec##35867
turnin Turning the Tables##14391 |goto Azshara 66.6,20.4
accept Fade to Black##24467 |goto Azshara 66.6,20.4
step
talk Jellix Fuselighter##37061
accept Pro-liberation##14297 |goto Azshara 66.3,20.3
step
talk Feno Blastnoggin##37064
accept Ice Cold##14261 |goto Azshara 66.5,19.6
stickystart "malicionkill"
step
Follow the path up |goto Azshara 69.1,15.3 < 10 |only if walking
kill Twilight Lord Katrana##36638 |q 24467/1 |goto Azshara 71.6,16.7
|tip If you're a high level, don't kill her too fast. If you do Azuregos will not come.
step
label "malicionkill"
kill Malicion##36649 |q 24467/2 |goto Azshara 71.6,16.7
|tip Azuregos will come and kill Malicion for you, don't worry.
step
talk Kalecgos##36689
turnin Fade to Black##24467 |goto Azshara 71.8,16.7
stickystart "bilgewaterlaborers"
step
kill 8 Sable Drake##36640 |q 14261/1 |goto Azshara 67.0,18.4
|tip They fly around in the sky and sit on the hilltops around this area.
step
label "bilgewaterlaborers"
kill Twilight Desecrator##36637+, Twilight Dragon Hunter##36636+, Sable Drakonid##36639+
collect Ironwrought Key##49533 |n
click Twilight Cage##202787
Rescue #4# Bilgewater Laborers |q 14297/1 |goto Azshara 67.0,18.4
step
talk Feno Blastnoggin##37064
turnin Ice Cold##14261 |goto Azshara 66.5,19.6
step
talk Jellix Fuselighter##37061
turnin Pro-liberation##14297 |goto Azshara 66.3,20.3
step
talk Azuregos##36676
accept Farewell, Minnow##14392 |goto Azshara 67.0,20.5
step
_Go up_ the elevator |goto 66.2,21.4 < 5 |only if walking
talk Blitz Blastospazz##43328 |goto Azshara 66.5,21.0 < 5
Take a Flight to Bilgewater Harbor |goto 53.0,49.9 < 10 |noway |q 14392
step
talk Sorata Firespinner##36210
turnin Farewell, Minnow##14392 |goto Azshara 53.3,50.0
step
talk Gurlorn##37142
accept Airborne Again##24497 |goto Azshara 53.0,49.8
step
talk Chawg##36730
turnin Airborne Again##24497 |goto Azshara 14.0,64.8
accept Where's My Head?##14462 |goto Azshara 14.0,64.8
accept Let Them Feast on Fear##24433 |goto Azshara 14.0,64.8
step
talk Andorel Sunsworn##36919
accept Commando Drop##24434 |goto Azshara 13.9,64.5
step
talk Kroum##36728
accept Grounded!##14475 |goto Azshara 14.4,65.0
step
talk Slinky Sharpshiv##36729
turnin Where's My Head?##14462 |goto Azshara 12.5,67.5
step
If you have a pet, dismiss your pet now |only Hunter
If you have an active demon, dismiss it now |only Warlock
talk Slinky Sharpshiv##36729
accept Lightning Strike Assassination##14464 |goto Azshara 12.5,67.5
step
kill Captain Grunwald##36680
collect Grunwald's Head##49540 |q 14464/1 |goto Azshara 11.8,68.2
clicknpc Sharpshiv's Parachute##36761
|tip Slinky is wearing it on her back.
Parachute Down to the Ground |goto Azshara 14.1,65.2 < 10 |noway |q 14464
step
talk Chawg##36730
turnin Lightning Strike Assassination##14464 |goto Azshara 14.0,64.8
step
_Follow_ the path up |goto 13.7,70.7 < 10 |only if walking
talk Bombardier Captain Smooks##36785
turnin Grounded!##14475 |goto Azshara 14.5,75.6
accept Rigged to Blow##14476 |goto Azshara 14.5,75.6
step
click Detonator Charge 1##197344
|tip Outside on the ground, to the left of the main door.
Arm Detonator Charge 1 |q 14476/1 |goto Azshara 15.0,74.3
step
click Detonator Charge 2##197345
|tip Outside, sitting at the back of the building.
Arm Detonator Charge 2 |q 14476/2 |goto Azshara 15.5,73.7
step
click Detonator Charge 3##197346
|tip Outside, sitting on the right side of the building
Arm Detonator Charge 3 |q 14476/3 |goto Azshara 15.6,74.5
step
talk Bombardier Captain Smooks##36785
turnin Rigged to Blow##14476 |goto Azshara 14.5,75.6
accept Push the Button!##14477 |goto Azshara 14.5,75.6
step
click the Goblin Detonator
|tip It looks like a big red button on the side of a wooden box.
Detonate the Explosives |q 14477/1 |goto Azshara 14.4,75.7
step
kill 12 Talrendis Defender##36816 |q 24433/1 |goto Azshara 11.0,71.9
kill 6 Talrendis Sentinel##36914 |q 24433/2 |goto Azshara 11.0,71.9
kill 5 Talrendis Lorekeeper##36849 |q 24434/1 |goto Azshara 11.0,71.9
step
clicknpc Lorekeeper's Summoning Stone##36918
turnin Commando Drop##24434 |goto Azshara 10.5,69.9
step
clicknpc Lorekeeper's Summoning Stone##36918
Select "_<Use the stone to teleport back to Valormok.>_" |goto Azshara 10.5,69.9 < 5 |walk
Teleport Back to Valormok |goto Azshara 13.9,64.9 < 10 |noway |q 24433
step
talk Chawg##36730
turnin Let Them Feast on Fear##24433 |goto Azshara 14.0,64.8
step
talk Kroum##36728
turnin Push the Button!##14477 |goto Azshara 14.4,65.0
step
talk Jr. Bombardier Hackel##36903
accept Blacken the Skies##24430 |goto Azshara 14.5,65.7
step
Click the Grounded Wind Rider to ride it |invehicle |goto Azshara 14.4,65.8 |q 24430
step
Use your _Bomb Toss_ ability on your hotbar to bomb Talrendis Glaive Throwers
|tip Fly high so they won't shoot at you.
kill 6 Talrendis Glaive Thrower##36890 |q 24430/1 |goto Azshara 15.9,69.9
step
Use your _Bomb Toss_ ability on your hotbar to bomb the Command Center
|tip Fly high so they won't shoot at you.
|tip It's a big building with a purple roof.
Bomb the Command Center |q 24430/2 |goto Azshara 9.2,72.9
step
Click the _red arrow_ on your hotbar
Stop Riding the Wind Rider |outvehicle |goto Azshara 14.5,65.7
step
talk Jr. Bombardier Hackel##36903
turnin Blacken the Skies##24430 |goto Azshara 14.5,65.7
step
talk Chawg##36730
accept The Conquest of Azshara##24439 |goto Azshara 14.0,64.8
step
kill Commander Jarrodenus##36884
|tip He is upstairs in this building
collect The Head of Jarrodenus##49674 |q 24439/1 |goto Azshara 9.1,72.8
step
clicknpc Lorekeeper's Summoning Stone##36918
Select "_<Use the stone to teleport back to Valormok.>_" |goto Azshara 10.5,69.9 < 5 |walk
Teleport back to Valormok |goto Azshara,13.9,64.9 < 10 |noway |q 24439
step
talk Chawg##36730
turnin The Conquest of Azshara##24439 |goto Azshara 14.0,64.8
step
talk Kroum##8610
accept Probing into Ashenvale##24463 |goto Azshara 14.4,65.0
step
talk Kulg Gorespatter##34195
turnin Probing into Ashenvale##24463 |goto Ashenvale 94.4,46.8
accept To The Ramparts!##13866 |goto Ashenvale 94.4,46.8
|tip You won't be able to get this quest if your level is too high
step
talk Kulg Gorespatter##34195
Ask him "_Send me to the Mor'shan Ramparts."_ |goto Ashenvale 94.4,46.8 < 10 |q 13866
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Kalimdor (20-25)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Eastern Kingdoms (20-25)",{
author="support@zygorguides.com",
},[[
step
Thanks for trying the Zygor Guides Leveling Guides demo!
|tip
Visit ZygorGuides.com to signup for Zygor Elite to gain access to our entire guide library for World of Warcraft and The Elder Scrolls Online.
|tip
See you on the other side!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\The Burning Crusade (60-62)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
