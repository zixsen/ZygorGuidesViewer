local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Arakkoa Outcasts faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9469},
},[[
#include "AOutcasts_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Frostwolf Orcs faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9471},
},[[
stickystart "info"
step
label "menu"
Killing enemies and questing in Frostfire Ridge give you Frostwolf Orc rep:
Stonefury Cliffs |next "stone" |confirm
Magnarok |next "magnarok" |confirm
Iron Siegeworks |next "iron" |confirm
step
label "stone"
kill Bloodmaul Brute##77991+, Bloodmaul Magma Shaper##77992+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578
Kill Bloodmaul mobs and their pets found around _Stonefury Cliffs_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 44.6,18.8
Return to the main menu |next "menu" |confirm
step
label "magnarok"
Many mobs in this area are _Elite_
kill Icecrag Mountainbreaker##87346+, Vicious Acidmaw##76905+, Burning Slagmaw##72348+
Kill level 100 mobs found in _Magnarok_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 69.7,30.5
Return to the main menu |next "menu" |confirm
step
label "iron"
kill Grom'kar Shocktrooper##77944+, Grom'kar Footsoldier##85997+, Grom'kar Pulverizer##78210+, Grom'kar Warforger##77945+, Grom'kar Enforcer##77940
Kill Grom'kar mobs around _Iron Siegeworks_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 86.1,54.9
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Frostwolf Orcs')==Neutral
_Friendly_ |only if rep('Frostwolf Orcs')==Friendly
_Honored_ |only if rep('Frostwolf Orcs')==Honored
_Revered_ |only if rep('Frostwolf Orcs')==Revered
_Exalted_ |only if rep('Frostwolf Orcs')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Laughing Skull Orcs faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9475},
},[[
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
stickystart "info"
step
label "menu"
Killing enemies in Gorgrond gives you Laughing Skull Orcs rep:
Select an area below to kill mobs in for reputation
The Pit |next "pit" |confirm
Everbloom Wilds |next "wilds" |confirm
step
label "pit"
kill Iron Cauterizer##85127+, Iron Enforcer##85124+, Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Warden##86499+
Kill level 100 mobs around _The Pit_ for Laughing Skill Orcs reputation |goto Gorgrond 48.9,28.9
Return to the main menu |next "menu" |confirm
step
label "wilds"
kill Venomous Ravager##86263+, Everbloom Wasp##86264+, Lumbering Ancient##86262+, Brine Lasher##86267
Kill level 100 mobs around _Everbloom Wilds_ for Laughing Skull Orcs reputation |goto Gorgrond 64.2,35.0
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Laughing Skull Orcs')==Neutral
_Friendly_ |only if rep('Laughing Skull Orcs')==Friendly
_Honored_ |only if rep('Laughing Skull Orcs')==Honored
_Revered_ |only if rep('Laughing Skull Orcs')==Revered
_Exalted_ |only if rep('Laughing Skull Orcs')==Exalted
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Laughing Skull Orcs reputation!
|tip Use the Garrison Buildings guide to accomplish this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Order of the Awakened",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Order of the Awakened faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={10350},
},[[
step
#include "OotA_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\The Saberstalkers",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with The Saberstalkers faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={10350},
},[[
step
#include "SStalkers_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Steamwheedle Preservation Society faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9472},
},[[
#include "SteamPS_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Vol'jin's Headhunters",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Vol'jin's Headhunters faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={10350},
},[[
step
#include "VHeadhunters_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Vol'jin's Spear",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Vol'jin's Spear faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9473, 9215},
},[[
step
Your current reputation rank is:
_Neutral_ |only if rep("Vol'jin's Spear")==Neutral
_Friendly_ |only if rep("Vol'jin's Spear")==Friendly
_Honored_ |only if rep("Vol'jin's Spear")==Honored
_Revered_ |only if rep("Vol'jin's Spear")==Revered
_Exalted_ |only if rep("Vol'jin's Spear")==Exalted
confirm
only if completedq(36196)
step
Click _Quest Accept_ Box:
accept Welcome to Ashran##36196 |goto Ashran/0 41.75,22.68
|tip Click Enter Dungeon when asked to join the Ashran battle. You may have to wait for queue.
step
talk General Ushet Wolfbarger##84473
turnin Welcome to Ashran##36196 |goto Ashran/0 45.10,28.04
|tip Click Enter Dungeon when asked to join the Ashran battle. You may have to wait for queue.
accept Reporting For Duty##36197 |goto 45.10,28.04
step
talk Angry Zurge##83869
Tell him _"Reporting in!"_
Speak to Zurge |q 36197/2 |goto Ashran/0 45.70,28.96
accept The Road of Glory##36227 |goto Ashran/0 45.70,28.96
step
talk Cymre Brightblade##94864
Tell her _"Cymre! Is that you?"_
Speak to Cymre Brightblade |q 36197/1 |goto 45.89,29.12
accept Uncovering the Artifact Fragments##36198 |goto 45.89,29.12
step
talk Mare Wildrunner##84660
Tell her _"You're to show me Ashran?"_
Speak to Mare Wildrunner# |q 36197/3 |goto 47.06,26.81
accept Survey Ashran##36226 |goto 47.06,26.81
step
talk General Ushet Wolfbarger##84473
turnin Reporting For Duty##36197 |goto 45.10,28.04
stickystart "roundonekills"
stickystart "artifacts"
step
Cross the bridge and enter Ashran |goto Ashran/0 47.94,30.29 < 10 |walk
Explore the Brute's Rise |q Survey Ashran##36226/3 |goto Ashran/0 54.7,34.6
step
Explore the Road of Glory |q Survey Ashran##36226/2 |goto Ashran/0 49.58,44.17
step
Explore the Molten Quarry |q Survey Ashran##36226/1 |goto Ashran/0 54,69
step
Explore the Ashmaul Burial Grounds |q Survey Ashran##36226/4 |goto Ashran/0 40.2,63.3
step
Explore the Amphitheater of Annihilation |q Survey Ashran##36226/5 |goto Ashran/0 39.4,40.5
step
label "roundonekills"
Kill #5# Alliance Players on the Road of Glory |q The Road of Glory##36227/1 |goto Ashran/0 49.0,64.0
step
label "artifacts"
Kill creatures of Ashran and loot artifact fragments
Artifact Fragments looted |q Uncovering the Artifact Fragments##36198/1
step
talk Mare Wildrunner##84660
turnin Survey Ashran##36226 |goto 47.06,26.81
step
talk Angry Zurge##83869
turnin The Road of Glory##36227 |goto Ashran/0 45.70,28.96
accept Into The Wilderness##36228 |goto Ashran/0 45.70,28.96
step
talk Fura##83995
turnin Uncovering the Artifact Fragments##36198 |goto Ashran/0 45.26,27.14
step
Kill an Alliance player in Ashran and recover a piece of their armor
|tip Right click their corpse to "Remove insignia".
Tattered Armor Scraps |q Into The Wilderness##36228/1
step
talk Angry Zurge##83869
turnin Into The Wilderness##36228 |goto Ashran/0 45.70,28.96
]])
