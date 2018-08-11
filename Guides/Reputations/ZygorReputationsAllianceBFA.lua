local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Battle for Azeroth Reputations\\7th Legion",{
author="support@zygorguides.com",
keywords={"7th","Legion"},
description="This guide will walk you through becoming exalted with the \"7th Legion\" faction.",
condition_suggested=function() return level>=110 and level<=120 end,
},[[
step
_Earning reputation with the 7th Legion can be achieved by:_
|tip Completing world quests in Zandalar.
Load the "Nazmir World Quests" guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Nazmir World Quests"
|tip Click the line above to load the guide.
Load the "Vol'dun World Quests" guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Vol'Dun World Quests"
|tip Click the line above to load the guide.
Load the "Zuldazar World Quests" guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Zuldazar World Quests"
|tip Click the line above to load the guide.
Gain Exalted reputation with the 7th Legion |condition rep("7th Legion")>=Exalted
step
_Congratulations!_
You earned exalted reputation with the "7th Legion" faction.
]])
