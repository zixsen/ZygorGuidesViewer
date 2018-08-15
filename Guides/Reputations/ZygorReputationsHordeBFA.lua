local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth\\Champions of Azeroth",{
author="support@zygorguides.com",
keywords={"Champions","of","Azeroth"},
description="This guide will walk you through becoming exalted with the \"Champions of Azeroth\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
achieveid={12955},
},[[
step
Unlock World Quests |condition completedq(51916)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Champions of Azeroth |condition rep('Champions of Azeroth')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
_Congratulations!_
You reached Exalted reputation with the "Champions of Azeroth" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth\\Talanji's Expedition",{
author="support@zygorguides.com",
keywords={"Talanji's", "Expedition"},
description="This guide will walk you through becoming exalted with the \"Talanji's Expedition\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
achieveid={12948},
},[[
step
Unlock World Quests |condition completedq(51916)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Talanji's Expedition |condition rep('Talanji\'s Expedition')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Talanji's Expedition" world quests.
|tip Complete Missions at your mission table that reward reputation with the Talanji's Expedition.
step
_Congratulations!_
You reached Exalted reputation with the "Talanji's Expedition" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth\\The Honorbound",{
author="support@zygorguides.com",
keywords={"Honorbound"},
description="This guide will walk you through becoming exalted with the \"The Honorbound\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
achieveid={12957},
},[[
step
Unlock World Quests |condition completedq(51916)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with The Honorbound |condition rep('The Honorbound')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
|tip Complete Missions at your mission table that reward reputation with The Honorbound.
step
_Congratulations!_
You reached Exalted reputation with "The Honorbound" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth\\Tortollan Seekers",{
author="support@zygorguides.com",
keywords={"Tortollan","Seekers"},
description="This guide will walk you through becoming exalted with the \"Tortollan Seekers\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
achieveid={12956},
},[[
step
Unlock World Quests |condition completedq(51916)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Tortollan Seekers |condition rep('Tortollan Seekers')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Tortollan Seekers" world quests.
|tip Complete Missions at your mission table that reward reputation with the Tortollan Seekers.
step
_Congratulations!_
You reached Exalted reputation with the "Tortollan Seekers" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth\\Voldunai",{
author="support@zygorguides.com",
keywords={"Voldunai"},
description="This guide will walk you through becoming exalted with the \"Voldunai\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
achieveid={12949},
},[[
step
Unlock World Quests |condition completedq(51916)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Voldunai |condition rep('Voldunai')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Voldunai" world quests.
|tip Complete Missions at your mission table that reward reputation with the Voldunai.
step
_Congratulations!_
You reached Exalted reputation with the "Voldunai" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth\\Zandalari Empire",{
author="support@zygorguides.com",
keywords={"Zandalari","Empire"},
description="This guide will walk you through becoming exalted with the \"Zandalari Empire\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
achieveid={12950},
},[[
step
Unlock World Quests |condition completedq(51916)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Zandalari Empire |condition rep('Zandalari Empire')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Zandalari Empire" world quests.
|tip Complete Missions at your mission table that reward reputation with the Zandalari Empire.
step
_Congratulations!_
You reached Exalted reputation with the "Zandalari Empire" faction.
]])
