local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Arakkoa Outcasts faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9469},
},[[
#include "AOutcasts_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Council of Exarchs",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Council of Exarchs faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9470},
},[[
stickystart "info"
step
label "menu"
Questing in most Draenor zones gives you Council of Exarchs reputation
Killing enemies in Shadowmoon Valley also gives Council of Exarchs rep:
Socrethar's Rise |next "rise" |confirm
Darktide Roost |next "darktide" |confirm
step
label "rise"
kill Sargerei Initiate##81541+, Sargerei Acolyte##85168+, Sargerei Darkblade##84945+, Shadowglen Thornshooter##81502+, Shadowglen Spitter##81637+, Sargerei Demonlord##81543+
Kill level 100 mobs around _Socrethar's Rise_ for Council of Exarchs reputation |goto Shadowmoon Valley D 47.1,76.5
Return to the main menu |next "menu" |confirm
step
label "darktide"
kill Darktide Engineer##78339+, Darktide Pilferer##78148+, Darktide Guardian##78168+, Darktide Rylakinator-3000##78328+, Darkwing Adolescent##85357+
Kill level 100 mobs around _Darktide Roost_ for Council of Exarchs reputation |goto Shadowmoon Valley D 57.6,87.9
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Council of Exarchs')==Neutral
_Friendly_ |only if rep('Council of Exarchs')==Friendly
_Honored_ |only if rep('Council of Exarchs')==Honored
_Revered_ |only if rep('Council of Exarchs')==Revered
_Exalted_ |only if rep('Council of Exarchs')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Hand of the Prophet",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Hand of the Prophet faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={10350},
},[[
step
#include "A_Hand_of_Prophet_Dailies"
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
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Sha'tari Defense",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Sha'tari Defense faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9476},
},[[
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
stickystart "info"
step
label "menu"
Killing enemies in Talador gives you Sha'tari Defense reputation:
Shattrath City |next "shattrath" |confirm
Bladefury Hold |next "bladefury" |confirm
step
label "shattrath"
kill Imp Charmer##83017+, Sargerei Felbringer##84334+, Gorebound Insurgent##87337+, Shadowbourne Felcaster##84871+, Fel Seer##84873+
Kill level 100 mobs around _Shattrath City_ for Sha'tari Defense reputation |goto Talador 45.1,35.4
Return to the main menu |next "menu" |confirm
step
label "bladefury"
kill Grom'kar Bulwark##85454+, Grom'kar Punisher##85458+, Grom'kar Deadeye##85450+, Grom'kar Blademaster##85456+
Kill level 100 mobs around _Bladefury Hold_ for Sha'tari Defense reputation |goto Talador 68.8,3.5
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep("Sha'tari Defense")==Neutral
_Friendly_ |only if rep("Sha'tari Defense")==Friendly
_Honored_ |only if rep("Sha'tari Defense")==Honored
_Revered_ |only if rep("Sha'tari Defense")==Revered
_Exalted_ |only if rep("Sha'tari Defense")==Exalted
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Sha'tari Defense reputation!
|tip Use the Garrison Buildings guide to accomplish this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Steamwheedle Preservation Society faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9472},
},[[
#include "SteamPS_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Warlords of Draenor\\Wrynn's Vanguard",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Wrynn's Vanguard faction.",
condition_suggested=function() return level>=90 and level<=100 end,
achieveid={9474, 9214},
},[[
step
Your current reputation rank is:
_Neutral_ |only if rep('Wrynns Vanguard')==Neutral
_Friendly_ |only if rep('Wrynns Vanguard')==Friendly
_Honored_ |only if rep('Wrynns Vanguard')==Honored
_Revered_ |only if rep('Wrynns Vanguard')==Revered
_Exalted_ |only if rep('Wrynns Vanguard')==Exalted
confirm
only if completedq(36119)
step
Click _Quest Accept_ Box:
accept Welcome to Ashran##36119 |goto Ashran/0 41.47,78.87
|tip Click Accept when asked to join the Ashran battle. You may have to wait for queue.
step
talk Commander Anne Dunworthy##84173
turnin Welcome to Ashran##36119 |goto 44.59,74.01
|tip Click Accept when asked to join the Ashran battle. You may have to wait for queue.
accept Reporting For Duty##36130 |goto 44.59,74.01
step
talk Farseer Kylanda##82901
Tell her, _"You're to show me Ashran?"_
Speak to Farseer Kylanda |q Reporting For Duty##36130/3 |goto Ashran/0 44.8,75.0
accept Survey Ashran##36127 |goto Ashran/0 44.8,75.0
step
talk Chris Clarkie##82909
Tell him, _"Reporting in!"_
Speak to Chris Clarkie |q Reporting For Duty##36130/1 |goto 43.3,76.6
accept The Road of Glory##36125 |goto 43.3,76.6
step
talk Harrison Jones##84223
Tell him, _"Mr. Jones! Is that you?"_
Speak to Harrison Jones |q Reporting For Duty##36130/2 |goto 42.8,76.8
accept Uncovering the Artifact Fragments##36133 |goto 42.8,76.8
step
talk Commander Anne Dunworthy##84173
turnin Reporting For Duty##36130 |goto 44.59,74.01
stickystart "hordekills"
stickystart "artifacts"
step
Cross the bridge and _enter Ashran_ |goto Ashran/0 46.5,71.3 < 10
Explore the Molten Quarry |q Survey Ashran##36127/1 |goto Ashran/0 54,69
step
Explore the Ashmaul Burial Grounds |q Survey Ashran##36127/5 |goto Ashran/0 40.2,63.3
step
Explore the Amphitheater of Annihilation |q Survey Ashran##36127/4 |goto Ashran/0 39.4,40.5
step
Explore the Brute's Rise |q Survey Ashran##36127/2 |goto Ashran/0 54.7,34.6
step
Explore the Road of Glory |q Survey Ashran##36127/3 |goto Ashran/0 51.3,38.9
|tip You must walk the entire length of the Road for this to count.
step
label "hordekills"
Kill Horde players in Ashran
Horde Players slain |q The Road of Glory##36125/1
step
label "artifacts"
Kill creatures of Ashran and loot artifact fragments
Artifact Fragments looted |q Uncovering the Artifact Fragments##36133/1
step
talk Farseer Kylanda##82901
turnin Survey Ashran##36127 |goto Ashran/0 44.8,75.0
step
talk Ecilam##82966
turnin Uncovering the Artifact Fragments##36133 |goto 44.8,74.4
step
talk Chris Clarkie##82909
turnin The Road of Glory##36125 |goto 43.3,76.6
accept Into The Wilderness##36123 |goto 43.3,76.6
step
Kill a Horde player in Ashran and recover a piece of their armor
|tip Right click their corpse to "Remove insignia".
Tattered Armor Scraps |q Into The Wilderness##36123/1
step
talk Chris Clarkie##82909
turnin Into The Wilderness##36123 |goto 43.3,76.6
]])
