local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Battle for Azeroth Scenarios\\The Battle for Lordaeron",{
author="support@zygorguides.com",
description="To complete this guide, you will be required to complete the intro scenario for the Battle for Azeroth expansion.",
condition_suggested=function() return level >= 110 and level <= 120 and not completedq(51796) end,
keywords={"scenario, azeroth, intro, bfa, alliance"},
startlevel=110.0,
endlevel=120.0,
},[[
step
accept The Battle for Lordaeron##51796 |goto Orgrimmar##85 48.04,71.25
step
talk Isabella##139093
Tell her _"I am ready to go to the Undercity."_
Begin the Battle for Lordaeron |scenariostart |q 51796 |goto 48.04,71.25
step
Watch the dialogue
scenariogoal Report to High Overlord Saurfang##1/38253 |q 51796
step
scenariogoal Secure the Mage District##2/38359 |q 51796
step
scenariogoal Follow Saurfang to the Heart of the City##3/38468 |q 51796
step
scenariogoal Evacuate Citizens##4/38466 |q 51796
step
scenariogoal Use the Portal##5/38502 |q 51796
step
Watch the dialogue
scenariogoal Follow Saurfang to battle##5/39077 |q 51796
step
Break their Front Line |scenariogoal Alliance Enemies Defeated##6/39078 |q 51796
step
Defeat #3# Waves of Attackers |scenariogoal Defeat Waves of Attackers##7/39562 |q 51796
step
scenariogoal Drive Alliance forces back##8/39080 |q 51796
step
Watch the dialogue
Follow Nathanos to the Keep |scenariogoal Follow Nathanos to the keep##9/39081 |q 51796
step
scenariogoal Incercept the Alliance##10/39105 |q 51796
step
scenariogoal Defeat Anduin and his Allies##11/40504 |q 51796
step
scenariogoal Follow Nathanos to safety##12/39106 |q 51796
step
scenariogoal Follow Syvlanas Windrunner##13/39107 |q 51796
]])
