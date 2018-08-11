local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DungeonHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Atal'Dazar",{
mapid=934,
achieveid={12824},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","priestess","alun'za","Vol'kaal","rezan","yazma","zuldazar","Atal'Dazar"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nPriestess Alun'za\nVol'kaal\nRezan\nYazma",
},[[
step
Press _I_ and Queue for Atal'Dazar or Enter the Dungeon with your Group |goto Atal'Dazar/0 0.00,0.00 < 1000
step
kill Priestess Alun'za##129614
_EVERYONE:_ |grouprole EVERYONE
|tip Stand near pools of "Tanted Blood". |grouprole EVERYONE
|tip When Priestess Alun'za casts "Transfusion", step into the "Tainted Blood". |grouprole EVERYONE
|tip "Spirits of Gold" ignore combat unless there are no pools of Tainted Blood. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Molten Gold" which will be cast on random players. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Gilded Claws". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid cauldrons during the encounter or you will be afflicted with "Corrupted Gold", which lowers your damage. |grouprole DAMAGE
Defeat Priestess Alun'za |scenariogoal Priestess Alun'za defeated##1/37074
step
kill Vol'kaal##129399
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Toxic Leap". |grouprole EVERYONE
|tip Avoid standing in "Toxic Pool". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Prepare an AoE heal for "Noxious Stench" casts. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Noxious Stench" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Noxious Stench" when possible. |grouprole DAMAGE
Defeat Vol'kaal |scenariogoal Vol'kaal defeated##1/37075
step
kill Rezan##139590
_EVERYONE:_ |grouprole EVERYONE
|tip Run away if Rezan uses "Pursue" on you. |grouprole EVERYONE
|tip Be sure to also avoid the "Pile of Bones" on the ground, as they will cause you to move slower. |grouprole EVERYONE
|tip Move out of line of sight when Rezan uses "Terrifying Visage". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The tank will take massive damage during "Serrated Teeth". |grouprole HEALER
|tip You will need to use big heals to help keep them up. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Serrated Teeth". |grouprole TANK
|tip Pick up Reanimated Raptors that spawn from piles of bones during the fight. |grouprole TANK
Defeat Rezan |scenariogoal Rezan defeated##1/37076
step
kill Yazma##129412
_HEALER:_ |grouprole HEALER
|tip Move away from Yazma while afflicted with "Soulrend". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Skewer". |grouprole TANK
|tip Move away from "Echoes of Shadra" |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Soulspawns" before they reach Yazma. |grouprole DAMAGE
|tip Move away from Yazma while afflicted with "Soulrend". |grouprole DAMAGE
|tip |grouprole DAMAGE
Defeat Yazma |scenariogoal Yazma defeated##1/37077
step
_Congratulations!_
You Completed the "Atal'Dazar" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Freehold",{
mapid=936,
achieveid={12831},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle", "for", "azeroth", "skycap'n", "kragg", "captain", "eudora", "jolly", "raoul", "trothak", "harlan", "sweete", "tiragarde", "sound"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nSkycap'n Kragg\nCouncil o' Captains\nRing of Booty\nHarlan Sweete",
},[[
step
Press _I_ and Queue for Freehold or Enter the Dungeon with your Group |goto Freehold/0 0.00,0.00 < 1000
step
kill Skycap'n Kragg##129732
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out to decrease damage from "Azerite Powder Shot". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready to use AoE heals if the group doesn't properly spread out. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Revitalizing Brew" when possible.|grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Revitalizing Brew" when possible. |grouprole DAMAGE
Defeat Skycap'n Kragg |scenariogoal Skycap'n Kragg defeated##1/37366
step
kill Captain Eudora##129431
kill Captain Jolly##129432
kill Captain Raoul##126847
_HEALER:_ |grouprole HEALER
|tip Try to keep the group topped off, as "Powder Shot" will deal massive damage to a random player. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Destroy "Blackout Barrels" to free allies from being disoriented.|grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Destroy "Blackout Barrels" to free allies from being disoriented.|grouprole DAMAGE
Defeat the Council o' Captains |scenariogoal Council o' Captains defeated##1/37367
step
kill Trothak <The Shark Puncher>##126969
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand between Trothak and loose sharks or you will take damage from "Rearm". |grouprole EVERYONE
|tip Spread out to avoid damage from "Flailing Shark". |grouprole EVERYONE
|tip They will move towards it's nearest target. |grouprole EVERYONE
Defeat the Ring of Booty |scenariogoal Ring of Booty defeated##1/37368
step
kill Harlan Sweete##129440
_HEALER:_ |grouprole HEALER
|tip You will need heavy heals for allies afflicted by "Cannon Barrage". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Kill "Irontide Grenadiers" as they spawn. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Irontide Grenadiers" as they spawn. |grouprole DAMAGE
|tip Stand behind Harlan Sweete as to not take damage from "Swiftwind Saber". |grouprole DAMAGE
|tip When buffed with "Loaded Dice: All Hands!" it will not matter where you stand. |grouprole DAMAGE
Defeat Harlan Sweete |scenariogoal Harlan Sweete defeated##1/37369
step
_Congratulations!_
You Completed the "Freehold" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\King's Rest",{
mapid=1004,
achieveid={12848},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","zuldazar","king's","rest","the","golden","serpent","mchimba","embalmer","council","of","tribes","dazar","first"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nThe Golden Serpent\nMchimba the Embalmer\nThe Council of Tribes\nKing Dazar",
},[[
step
Press _I_ and Queue for King's Rest or Enter the Dungeon with your Group |goto King's Rest/0 0.00,0.00 < 1000
step
kill The Golden Serpent##135322
_EVERYONE:_ |grouprole EVERYONE
|tip Use abilities that stun, root and knockback to prevent "Animated Gold" from reaching The Golden Serpent. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players afflicted with "Split Gold" will take heavy damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move The Golden Serpent away from "Molten Gold" to give allies a chance to kill Animated Gold before they reach the boss. |grouprole TANK
|tip Use damage mitigation abilities for "Tail Thrash". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Move away from The Golden Serpent as well as players afflicted with "Spit Gold". |grouprole DAMAGE
|tip Players with the "Spit Gold" debuff will create "Molten Gold" on the ground. |grouprole DAMAGE
Defeat The Golden Serpent |scenariogoal The Golden Serpent defeated##1/40351
step
kill Mchimba the Embalmer##134993
_EVERYONE:_ |grouprole EVERYONE
|tip If you become afflicted with "Entomb", use the "Struggle" ability to alert players to which crypt you are in. |grouprole EVERYONE
|tip Look for players afflicted with "Entomb" and free them as soon as possible. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players afflicted with "Dessication" will need to be healed above 90% of their health. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid "Burn Corruption" which appears on the ground. |grouprole TANK
|tip Interrupt "Drain Fluids" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Drain Fluids" when possible. |grouprole DAMAGE
Defeat Mchimba the Embalmer |scenariogoal Mchimba the Embalmer defeated##1/40352
step
kill Aka'ali the Conqueror##135470
kill Kula the Butcher##135475
kill Zanazal the Wise##135472
_HEALER:_ |grouprole HEALER
|tip Be ready to heal the tank after each "Debilitating Backhand" until the "Shattered Defenses" debuff wears off. |grouprole HEALER
|tip "Severing Axe" will deal heavy damage over time for 20 seconds. |grouprole HEALER
|tip Stop casting near the end of each "Thundering Crash" from Zanazal the Wise. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When "Debilitating Backhand" is used, you will be afflicted by "Shattered Defenses". |grouprole TANK
|tip Kite the boss around while under the affects of it. |grouprole TANK
|tip Move in front of players targeted by "Barrel Through". |grouprole TANK
|tip Move away from Kula the Butcher when "Whirling Axes" is used, until it fans away from the boss. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Zanazal the Wise's "Poison Nova". |grouprole DAMAGE
|tip Focus damage on Zanazal the Wise's totems during "Cal of the Elements" casts. |grouprole DAMAGE
|tip Move in front of players targeted by "Barrel Through". |grouprole DAMAGE
Defeat the Council of Tribes |scenariogoal The Council of Tribes defeated##1/40353
step
kill King Dazar##136160
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out as best you can to mitigate damage from "Quaking Leap". |grouprole EVERYONE
|tip Big heals will be needed for "Blade Combo". |grouprole EVERYONE
|tip |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be sure the use big heals on the tank when "Blade Combo" is used. |grouprole HEALER
|tip If you are targeted by "Quaking Leap", move away from the group. |grouprole HEALER
|tip |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Save damage mitigation for the last two hits of "Blade Combo" as they will deal heavy damage. |grouprole TANK
|tip Pick up Reban as soon as he joins the battle. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If you are targeted by "Quaking Leap", move away from the group. |grouprole DAMAGE
Defeat Dazar, the First King |scenariogoal Dazar, The First King defeated##1/40354
step
_Congratulations!_
You Completed the "King's Rest" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The MOTHERLODE!!",{
mapid=1010,
achieveid={12844},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","zuldazar","the","motherlode!!","coin","operated","crowd","pummeler","azerokk","rixxa","fluxflame","mogul","razdunk"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nCoin-Operated Crowd Pummeler\nAzerokk\nRixxa Fluxflame\nMogul Razdunk",
},[[
step
Press _I_ and Queue for The MOTHERLODE!! or Enter the Dungeon with your Group |goto King's Rest/0 0.00,0.00 < 1000
step
kill Coin-Operated Crowd Pummeler##139904
_HEALER:_ |grouprole HEALER
|tip Keep the boss stationary so that allies can "Punt" Azerite Footbombs accurately. |grouprole HEALER
|tip Avoid "Shocking Claw" when possible. |grouprole HEALER
|tip |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep the boss stationary so that allies can "Punt" Azerite Footbombs accurately. |grouprole TANK
|tip Avoid "Shocking Claw" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kick Azerite Footbombs back at the boss in order to avoid "Timed Detonation" damage. |grouprole DAMAGE
Defeat the Coin-Operated Crowd Pummeler |scenariogoal Coin-Operated Crowd Pummeler defeated##1/38193
step
kill Azerokk##129227
_HEALER:_ |grouprole HEALER
|tip Snare Earthragers with "Raging Gaze", running away from them.|grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep Azerokk away from ranged allies as best as possible to protect them from "Resonant Quake". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Earthragers as soon as they appear to receive "Azerite Infusion" to minimize damage they do while infused. |grouprole DAMAGE
|tip Snare Earthragers with "Raging Gaze", running away from them. |grouprole DAMAGE
Defeat Azerokk |scenariogoal Azerokk defeated##1/38194
step
kill Rixxa Fluxflame##139273
_EVERYONE:_ |grouprole EVERYONE
|tip Watch out for "Azerite Catalyst" placement. |grouprole EVERYONE
|tip Avoid being pushed into "Azerite Catalyst" by "Propellant Blast" |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Move Rixxa Fluxflame away from "Azerite Catalyst". |grouprole TANK
Defeat Rixxa Fluxflame |scenariogoal Rixxa Fluxflame defeated##1/38195
step
kill Mogul Razdunk##131227
_EVERYONE:_ |grouprole EVERYONE
|tip When Mogul Razdunk targets you with "Big Red Rocket", move to one of the poles in the ground so that he strikes it. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Move away from allies if you are being targeted by "Homing Missile". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up "Venture Co. Skyscorchers" when they spawn. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Move away from allies if you are being targeted by "Homing Missile". |grouprole DAMAGE
Defeat Mogul Razdunk |scenariogoal Mogul Razdunk defeated##1/38196
step
_Congratulations!_
You Completed "The MOTHERLODE!!" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Shrine of the Storm",{
mapid=1039,
achieveid={12835},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","stormsong","valley","aqu'sirr","tidesage","council","lord","vol'zith","whisperer"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nAqu'sirr\nTidesage Council\nLord Stormsong\nVol'zith the Whisperer",
},[[
step
Press _I_ and Queue for Shrine of the Storm or Enter the Dungeon with your Group |goto Shrine of the Storm/0 45.50,7.97 < 1000
step
kill Aqu'sirr##134056
_EVERYONE:_ |grouprole EVERYONE
|tip Be aware that "Surging Rush" and "Undertow" will knock you back. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Choking Brine" from allies as soon as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Destroy Grasping Tentacles to free allies from "Grasp from the Depths". |grouprole TANK
|tip Kill each element that spawn after "Erupting Waters". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Destroy Grasping Tentacles to free allies from "Grasp from the Depths". |grouprole DAMAGE
|tip Kill each element that spawn after "Erupting Waters". |grouprole DAMAGE
Defeat Aqu'sirr |scenariogoal Aqu'sirr defeated##1/39776
step
kill Brother Ironhull##134063
kill Galecaller Faye##134058
_EVERYONE:_ |grouprole EVERYONE
|tip Use "Reinforcing Wards" when they appear to mitigate heavy damage during the encounter. |grouprole EVERYONE
|tip Use "Swiftness Wards" that appear to gain immunity to movement impairing effects, as well as 25% haste and 25% increased movement speed. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready for big heals on the tank for Brother Ironhulls "Hindering Cleave". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities when Brother Ironhull uses "Hindering Cleave". |grouprole TANK
|tip Interrupt "Slicing Blast" when possible. |grouprole TANK
|tip Avoid attacks from Brother Ironhull when he is under the effects of "Blessing of Ironsides". |tip While under the affects of "Blessing of the Tempest", interrupt abilities will gain the "Blowback" effect. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Slicing Blast" when possible. |grouprole DAMAGE
|tip While under the affects of "Blessing of the Tempest", interrupt abilities will gain the "Blowback" effect. |grouprole DAMAGE
Defeat the Tidesage Council |scenariogoal Tidesage Council defeated##1/39777
step
kill Lord Stormsong##139737
_HEALER:_ |grouprole HEALER
|tip Dispel "Mind Rend" as soon as possible. |grouprole HEALER
|tip Avoid damage from "Waken the Void" unless afflicted by "Ancient Mindbender". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid damage from "Waken the Void". |grouprole TANK
|tip Interrupt "Void Bolt" whenever possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Attack allies who are afflicted by "Ancient Mindbender". |grouprole DAMAGE
|tip Avoid damage from "Waken the Void" unless afflicted by "Ancient Mindbender". |grouprole DAMAGE
|tip Interrupt "Void Bolt" whenever possible. |grouprole DAMAGE
Defeat Lord Stormsong |scenariogoal Lord Stormsong defeated##1/39778
step
kill Vol'zith the Whisperer##134069
_EVERYONE:_ |grouprole EVERYONE
|tip "Yawning Gate" will if you are near Vol'zith the Whisperer when it is being cast. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Avoid being hit by Sunken Denizens afflicted with "Leviathan's Wake". |grouprole HEALER
|tip Defeat on afflicted with "Grasp of the Sunken City" to return to the surface. |grouprole HEALER
|tip Dispel "Whispers of Power" from yourself. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Immediately kill Forgotten Denizens afflicted by "Grasp of the Sunken City" to return to the surface. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Immediately kill Forgotten Denizens afflicted by "Grasp of the Sunken City" to return to the surface. |grouprole DAMAGE
|tip Kill Manifestations of the Deep created by "Call the Abyss". |grouprole DAMAGE
Defeat Vol'zith the Whisperer |scenariogoal Vol'zith the Whisperer defeated##1/39779
step
_Congratulations!_
You Completed the "Shrine of the Storm" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Siege of Boralus",{
mapid=1162,
achieveid={12847},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","tiragarde","sound","chopper","redhook","dread","captain","lockwood","hadal","darkfathom","viq'goth"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nChopper Redhook\nDread Captain Lockwood\nHadal Darkfathom\nViq'Goth",
},[[
step
Press _I_ and Queue for the Siege of Boralus or Enter the Dungeon with your Group |goto Tiragarde Sound/0 75.57,24.81 < 1000
step
kill Sergeant Bainbridge
_EVERYONE:_ |grouprole EVERYONE
|tip If you are targeted by "Iron Gaze", run away. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip AoE heals will be needed for Kul Tiran Marksmen. |grouprole HEALER
|tip Be ready for big AoE heals if "Heavy Ordnance" detonates. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid being at melee range of Sergeant Bainbridge while he's under the affects of "Heavy Hitter". |grouprole TANK
|tip Face Kul Tiran Vanguards away from the group to avoid damage from "Heavy Slash".  |grouprole TANK
|tip Run over "Heavy Ordnance" to prevent them from damaging the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Kul Tiran forces as they spawn. |grouprole DAMAGE
Defeat Sergeant Bainbridge |scenariogoal Chopper Redhook defeated##1/38179
step
kill Dread Captain Lockwood##129208
_HEALER:_ |grouprole HEALER
|tip Anyone not in melee range has a chance to be hit with "Gut Shot", so continuous healing will be needed for those affected. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Ashvane Deckhand's away from the party. |grouprole TANK
|tip Move away from the "Clear the Deck" cone when it is cast. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip When Dread Captain Lockwood reaches full energy, she will "Withdraw" to her ship. |grouprole DAMAGE
|tip To bring her back to the battlefield, pick up "Unstable Ordnance" and use it to attack the ship. |grouprole DAMAGE
Defeat Dread Captain Lockwood |scenariogoal Dread Captain Lockwood defeated##1/38181
step
kill Hadal Darkfathom##130836
_EVERYONE:_ |grouprole EVERYONE
|tip Use the statue to avoid "Tidal Surge". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Use AoE heals to mitigate damage from "Break Water". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face "Crashing Tide" away from the party. |grouprole TANK
Defeat Hadal Darkfathom |scenariogoal Hadal Darkfathom defeated##1/38180
step
kill Kraken##120553
_HEALER:_ |grouprole HEALER
|tip "Putrid Waters" will deal damage over time to random party members. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Melee "Demolishing Terrors" to prevent damage from "Hull Cracker". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Gripping Terrors" so it releases the engineer immidiately. |grouprole DAMAGE
Defeat Viq'Goth |scenariogoal Viq'Goth defeated##1/38182
step
_Congratulations!_
You Completed the "Siege of Boralus" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Temple of Sethraliss",{
mapid=1038,
achieveid={12504},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","Adderis","and","Aspix","Merektha","Galvazzt","Avatar","Vol'dun"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nAdderis and Aspix\nMerektha\nGalvazzt\nAvatar of Sethraliss",
},[[
step
Press _I_ and Queue for the Temple of Sethraliss or Enter the Dungeon with your Group |goto Temple of Sethraliss/0 0.00,0.00 < 1000
step
kill Adderis##133379
kill Aspix##133944
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from allies when afflicted by "Conduction". |grouprole EVERYONE
|tip When Adderis reaches 100 energy, spread out for "Arc Dash". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip When Aspix gains 100 energy, be ready for heavy AoE heals during "Static Shock". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid attacking during "Lightning Shield". |grouprole TANK
|tip Step aside when Adderis uses "Cyclone Strike". |grouprole TANK
|tip |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stop attacking enemies afflicted with "Lightning Shield". |grouprole DAMAGE
|tip Step aside when Adderis uses "Cyclone Strike". |grouprole DAMAGE
Defeat Adderis and Aspix |scenariogoal Adderis and Aspix defeated##1/39860
step
kill Merektha##139834
_EVERYONE:_ |grouprole EVERYONE
|tip Face away from Merektha during "Blinding Sand" to avoid becoming blinded. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip If you are able to dispel poison, keep "Cytotoxin" off of group mates. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pull Sand-Crusted Strikers out of the "Dust Clouds" they produce to allow people to attack them. |grouprole TANK
|tip Kill Sand-Crusted Strikers when they are up. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Sand-Crusted Strikers when they are up. |grouprole DAMAGE
|tip Kill "Venomous Ophidians" immidiately to prevent "Cytotoxin". |grouprole DAMAGE
|tip |grouprole DAMAGE
Defeat Merektha |scenariogoal Merektha defeated##1/39861
step
kill Galvazzt##133389
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of "Galvanized" as the longer you stay in it, the more damage you will take from it. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip When Galvazzt gains 100 energy, "Consume Charge" will be cast and cause mass damage to your group. |grouprole HEALER
|tip Each time he uses "Capacitance", the group will take more damage from all over his attacks. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stand between Galvazzt and any existing Energy Cores to prevent him from gaining the "Galvanized" buff. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Stand between Galvazzt and any existing Energy Cores to prevent him from gaining the "Galvanized" buff. |grouprole DAMAGE
Defeat Galvazzt |scenariogoal Galvazzt defeated##1/39862
step
kill Avatar of Sethraliss##133392
_EVERYONE:_ |grouprole EVERYONE
|tip Energy Fragments generated from defeating Heart Guardians are most effective when the Avatar of Sethraliss doens't have the "Taint" debuff. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Your goal in this fight is to heal the "Avatar of Sethrallis" to full health. |grouprole HEALER
|tip Avoid "Plague Toads" as much as possible, they will inflict "Plague" which will reduce your healing done by 50%. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gather enemies together with Hoodoo Hexxers to AoE them down faster. |grouprole TANK
|tip If "Heart Guardians" are up for a while, use damage mitigation abilities to reduce damage. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Plague Toads" over anything else. |grouprole DAMAGE
|tip Kill "Heart Guardians" as soon as possible. |grouprole DAMAGE
|tip Kill "Hoodoo Hexers" when they appear. |grouprole DAMAGE
Defeat the Avatar of Sethraliss |scenariogoal Avatar of Sethraliss defeated##1/39863
step
_Congratulations!_
You Completed the "Temple of Sethraliss" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Tol Dagor",{
mapid=974,
achieveid={12840},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","tiragarde","sound","The","Sand","Queen","Howlis","Jes","Valyri","Captain","Knight","Overseer","Korgus"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nThe Sand Queen\nJes Howlis\nKnight Captain Valyri\nOverseer Korgus",
},[[
step
Press _I_ and Queue for Tol Dagor or Enter the Dungeon with your Group |goto Tol Dagor/0 0.00,0.00 < 1000
step
kill The Sand Queen##134927
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Sand Traps" which will appear all over the battlefield during the encounter. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Each "Upheaval" will deal heavy damage to anyone nearby, so be ready for big AoE heals. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Save your damage mitigation abilities for 30% health, as The Sand Queen will use "Enrage" and deal significantly more damage. |grouprole TANK
Defeat The Sand Queen |scenariogoal The Sand Queen defeated##1/38521
step
kill Jes Howlis##127484
_EVERYONE:_ |grouprole EVERYONE
|tip Get behind pillars during "Flashing Daggers" to prevent large amounts of damage. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Watch for prisoners who have stacks of "Motivated" as they will deal massive damage to their target. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Howling Fear" when possible. |grouprole TANK
|tip At he end of each "Smoke Powder", pick up every released prisoner. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Howling Fear" when possible. |grouprole DAMAGE
Defeat Jes Howlis |scenariogoal Jes Howlis defeated##1/38522
step
kill Knight Captain Valyri##130646
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid carrying munitions while afflicted by "Fuselighter". |grouprole EVERYONE
|tip Move munitions piles away from "Ignition" and "Cinderflame" to avoid triggering damage from "Burning Arsenal". |grouprole EVERYONE
Defeat Knight Captain Valyri |scenariogoal Knight Captain Valyri defeated##1/38523
step
kill Overseer Korgus##127503
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid taking damage from applications of "Azerite Rounds: Incendiary" as it will stack. |grouprole EVERYONE
|tip Avoid being struck by "Massive Blast" when the prison cannons shoot it. |grouprole EVERYONE
|tip Being struck by "Deadeye" will damage the first person in its path. |grouprole EVERYONE
|tip You will gain a debuff that causes "Deadeye" to do more damage to you the next time you are hit by it |grouprole EVERYONE
|tip Try to stand still when afflicted by "Heartstopper Venom". |grouprole EVERYONE
Defeat Overseer Korgus |scenariogoal Overseer Korgus defeated##1/38524
step
_Congratulations!_
You Completed the "Tol Dagor" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The Underrot",{
mapid=1041,
achieveid={12500},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","nazmir","Elder","Leaxa","Cragmaw","Infested","Sporecaller","Zancha","Abomination","Unbound"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nElder Leaxa\nCragmaw the Infested\nSporecaller Zancha\nUnbound Abomination",
},[[
step
Press _I_ and Queue for The Underrot or Enter the Dungeon with your Group |goto The Underrot/0 0.00,0.00 < 1000
step
kill Elder Leaxa##131318
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Creeping Rot" as it moves throughout the battlefield. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Focus healing on players afflicted by "Taint of G'huun". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Blood Bolt" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Blood Bolt" when possible. |grouprole DAMAGE
Defeat Elder Leaxa |scenariogoal Elder Leaxa defeated##1/39711
step
kill Cragmaw the Infested##131817
_HEALER:_ |grouprole HEALER
|tip Step on "Blood Tick Larvae" to destroy them before they grow into additional Blood Ticks. |grouprole HEALER
|tip AoE heals will be needed when "Tantrum" is being channeled. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Cragmaw away from any allies to avoid hitting them with "Indigestion". |grouprole TANK
|tip Pick up "Blood Ticks" as they appear throughout the encounter. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Step on "Blood Tick Larvae" to destroy them before they grow into additional Blood Ticks. |grouprole DAMAGE
|tip Focus damage on "Blood Ticks" as they appear. |grouprole DAMAGE
Defeat Cragmaw the Infested |scenariogoal Cragmaw the Infested defeated##1/39712
step
kill Sporecaller Zancha##131383
_HEALER:_ |grouprole HEALER
|tip "Rotting Spores" will inflict significant damage over time. |grouprole HEALER
|tip "Upheaval" will deal heavy damage to its target, so big AoE heals may be needed. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Position Sporecaller Zancha so that "Shockwave" hits Decaying Spores. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip If afflicted by "Upheaval", move to Decaying Spores to have it damage them. |grouprole DAMAGE
|tip Kill spore pods that appear using defensive abilities. |grouprole DAMAGE
Defeat Sporecaller Zancha |scenariogoal Sporecaller Zancha defeated##1/39713
step
kill Unbound Abomination##133007
_HEALER:_ |grouprole HEALER
|tip Dispel "Putrid Blood" as soon as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When the Unbound Abomination reaches 100 Blood Energy, several Blood Visages will spawn that you need to pick up. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus on "Blood Visages" as soon as they appear. |grouprole DAMAGE
Defeat the Unbound Abomination |scenariogoal Unbound Abomination defeated##1/39714
step
_Congratulations!_
You Completed "The Underrot" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Waycrest Manor",{
mapid=1015,
achieveid={12483},
condition_suggested=function() return level>=110 and level<=120 end,
keywords={"battle","for","azeroth","heartsbane","triad","soulbound","goliath","raal","the","gluttonous","lady","lord","gorak","tul","drustvar"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nHeartsbane Triad\nSoulbound Goliath\nRaal the Gluttonous\nLord and Lady Waycrest\nGorak Tul",
},[[
step
Press _I_ and Queue for Waycrest Manor or Enter the Dungeon with your Group |goto Waycrest Manor/0 0.00,0.00 < 1000
step
kill Sister Briar##135360
kill Sister Malady##135358
kill Sister Solena##135359
_EVERYONE:_ |grouprole EVERYONE
|tip Attack players afflicted by "Soul Manipulation" in order to break it. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Sister Briar will leave the "Jagged Nettles" debuff on a target when active. |grouprole HEALER
|tip Sisters will randomly attack party members while not carrying "Focusing Iris". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Look for the sister with the "Focusing Iris" buff, as it is the only one who needs to be tanked. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on the sister with the "Focusing Iris" buff. |grouprole DAMAGE
|tip Move away from the party when afflicted by "Unstable Runic Mark". |grouprole DAMAGE
Defeat the Heartsbane Triad |scenariogoal Heartsbane Triad defeated##1/38598
step
kill Soulbound Goliath##131667
_HEALER:_ |grouprole HEALER
|tip As the encounter goes on, the Soulbound Goliath will gain "Soul Harvest" causing it to deal significant damage the longer the fight goes. |grouprole HEALER
|tip Players afflicted by "Soul Thorns" will take heavy damage. |grouprole HEALER
|tip "Crush" will do massive damage to a single group member. |grouprole HEALER
|tip "Burning Brush" will deal AoE damage to the group.|grouprole HEALER
_TANK:_ |grouprole TANK
|tip Be prepared to use damage mitigation for "Crush". |grouprole TANK
|tip Watch for "Wildfire" patches on the ground, caused by lightning strikes. |grouprole TANK
|tip Moving the Souldbound Goliath into "Wildfire" will reduce the damage increase from "Soul Harvest". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Soul Thorns" as soon as it impales a party member. |grouprole DAMAGE
|tip |grouprole DAMAGE
|tip |grouprole DAMAGE
Defeat the Soulbound Goliath |scenariogoal Soulbound Goliath defeated##1/38599
step
kill Raal the Gluttonous##131863
_EVERYONE:_ |grouprole EVERYONE
|tip Run away from "Rotten  Explusion". |grouprole EVERYONE
|tip It will appear on the ground after it is cast. |grouprole EVERYONE
|tip Avoid being hit with "Tenderize". |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Kill "Wasting Servants" summoned during the encounter. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Wasting Servants" summoned during the encounter. |grouprole DAMAGE
Defeat Raal the Gluttonous |scenariogoal Raal the Gluttonous defeated##1/38600
step
kill Lady Waycrest##135357
kill Lord Waycrest##131527
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from "Discordant Cadenza" when it is being cast. |grouprole EVERYONE
|tip Move away from "Virulent Pathogen" when possible. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Remove "Virulent Pathogen" as soon as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip As the enounter continues, Lody Waycrest will gain "Putrid Vitality" which will increase his damage output. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on "Lord Waycrest" until Lady Waycrest enters the encounter. |grouprole DAMAGE
Defeat Lord and Lady Waycrest |scenariogoal Lord and Lady Waycrest defeated##1/38601
step
kill Gorak Tul##131864
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out for "Darkened Lightning". |grouprole EVERYONE
|tip Use "Alchemical Fire" to destroy the corpses of Deathtouched Slavers. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Death Lens" will deal 70% of the targets max health, so keep the group above 80% health. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up "Deathtouched Slavers" as soon as they are summoned by Gorak Tul. |grouprole TANK
Defeat Gorak Tul |scenariogoal Gorak Tul defeated##1/38602
step
_Congratulations!_
You Completed the "Waycrest Manor" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Halls of Containment",{
mapid=1148,
achieveid={12521},
condition_suggested=function() return level>=120 and level<=120 end,
keywords={"battle","for","azeroth","nazmir","zandalar","taloc","remnant","of","corruption","zek'voz"},
author="support@zygorguides.com",
description="To complete Uldir - Halls of Containment, you will need to kill the following bosses:\n\nTaloc\nRemnant of Corruption\nZek'voz",
},[[
step
Press _I_ and Queue for Uldir - Halls of Containment or Enter the Raid with your Group |goto Uldir/0 0.00,0.00 < 1000
step
kill Taloc##122276
Defeat Taloc |confirm
step
kill Remnant of Corruption##136315
Defeat the Remnant of Corruption |confirm
step
kill Zek'voz##134445
Defeat Zek'voz |confirm
step
_Congratulations!_
You Completed the "Uldir - Halls of Containment" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Crimson Descent",{
mapid=1148,
achieveid={12522},
condition_suggested=function() return level>=120 and level<=120 end,
keywords={"battle","for","azeroth","nazmir","zandalar","vectis","fetid","devourer","zul"},
author="support@zygorguides.com",
description="To complete Uldir - Crimson Descent, you will need to kill the following bosses:\n\nVectis\nFetid Devourer\nZul",
},[[
step
Press _I_ and Queue for Uldir - Crimson Descent or Enter the Raid with your Group |goto Uldir/0 0.00,0.00 < 1000
step
kill Vectis##134442
Defeat Vectis |confirm
step
kill Fetid Devourer##133298
Defeat the Fetid Devourer |confirm
step
kill Zul##138967
Defeat Zul |confirm
step
_Congratulations!_
You Completed the "Uldir - Crimson Descent" Raid.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Heart of Corruption",{
mapid=1148,
achieveid={12523},
condition_suggested=function() return level>=120 and level<=120 end,
keywords={"battle","for","azeroth","nazmir","zandalar","vectis","fetid","devourer","zul"},
author="support@zygorguides.com",
description="To complete Uldir - Heart of Corruption, you will need to kill the following bosses:\n\nMythrax the Unraveler\nG'huun",
},[[
step
Press _I_ and Queue for Uldir - Heart of Corruption or Enter the Raid with your Group |goto Uldir/0 0.00,0.00 < 1000
step
kill Mythrax the Unraveler##134546
Defeat Mythrax the Unraveler |confirm
step
kill G'huun##132998
Defeat G'huun |confirm
step
_Congratulations!_
You Completed the "Uldir - Heart of Corruption" Raid.
]])
