local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ScenarioABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Scenarios\\The Battle for Lordaeron",{
author="support@zygorguides.com",
description="To complete this guide, you will be required to complete the intro scenario for the Battle for Azeroth expansion.",
condition_suggested=function() return level >= 110 and level <= 120 and not completedq(51795) end,
keywords={"scenario, azeroth, intro, bfa, alliance"},
startlevel=110.0,
endlevel=120.0,
},[[
step
accept The Battle for Lordaeron##51795 |goto Stormwind City/0 22.39,32.48
step
talk Captain Angelica##108920
Tell her _"I am ready to sail to Lordaeron."_
Begin the Battle for Lordaeron |scenariostart |q 51795 |goto 22.39,32.48
step
scenariogoal Follow Hammond Clay to Brill##1/37049 |q 51795
step
scenariogoal Charge the battlefield with Genn##1/37050 |q 51795
step
scenariostage Clearing the Way##2 |q 51795
step
kill Azerite War Machine##132079
scenariogoal Defeat the Azerite War Machine##3/38064 |q 51795
step
scenariogoal Confront Sylvanas Windrunner##4/37046 |q 51795
step
scenariogoal Defend King Anduin and evacuate the wounded##5/0 |q 51795
step
scenariostage Blighted Grounds##5 |q 51795
step
scenariogoal Fall back with King Anduin Wrynn##6/37071 |q 51795
step
scenariogoal Infiltrate the keep with King Anduin##7/37079 |q 51795
step
scenariogoal Assist Jaina##7/37297 |q 51795
step
scenariogoal Defeat Durja##8/37300 |q 51795
step
scenariogoal Follow King Anduin##9/37355 |q 51795
step
scenariostage Abomination Wonderland##10 |q 51795
step
scenariogoal Find Sylvanas Windrunner##11/37362 |q 51795
step
scenariogoal Use the Gyrocopter to Pursue Sylvanas##12/37363 |q 51795
step
scenariogoal Confront High Overlord Saurfang##13/38165 |q 51795
step
scenariogoal Confront Sylvanas Windrunner##14/38214 |q 51795
step
talk Lady Jaina Proudmoore##120590
turnin The Battle for Lordaeron##51795 |goto 27.64,21.29
]])
