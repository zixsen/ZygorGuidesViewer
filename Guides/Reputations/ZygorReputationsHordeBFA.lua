local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth Reputations\\Talanji's Expedition",{
author="support@zygorguides.com",
keywords={"Talanji's","Expedition"},
description="This guide will walk you through becoming exalted with the \"Talanji's Expedition\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
},[[
step
_Earning reputation with Talanji's Expedition can be achieved by:_
|tip Completing quests in Nazmir.
Load the "Nazmir Leveling" guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir"
|tip Click the line above to load the guide.
|tip Completing Nazmir world quests.
Load the "Nazmir World Quests" guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Nazmir World Quests"
|tip Click the line above to load the guide.
Gain exalted reputation with Talanji's Expedition |condition rep("Talanji's Expedition")>=Exalted
step
_Congratulations!_
You earned exalted reputation with the "Talanji's Expedition" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth Reputations\\The Honorbound",{
author="support@zygorguides.com",
keywords={"The","Honorbound"},
description="This guide will walk you through becoming exalted with \"The Honorbound\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
},[[
step
_Earning reputation with The Honorbound can be achieved by:_
|tip Completing world quests in Kul Tiras.
Load the "Drustvar World Quests" guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Drustvar World Quests"
|tip Click the line above to load the guide.
Load the "Stormsong Valley World Quests" guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Stormsong Valley World Quests"
|tip Click the line above to load the guide.
Load the "Tiragarde Sound World Quests" guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Tiragarde Sound World Quests"
|tip Click the line above to load the guide.
Gain Exalted reputation with The Honorbound |condition rep("The Honorbound")>=Exalted
step
_Congratulations!_
You earned exalted reputation with "The Honorbound" faction.
]])
