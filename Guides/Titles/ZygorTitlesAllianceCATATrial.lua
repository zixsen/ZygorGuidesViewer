local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("TitlesA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Titles\\Wrath of the Lich King Titles\\General\\The Explorer\\Kalimdor",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Explorer achievement.",
},[[
leechsteps "Zygor's Achievement Guides\\Exploration\\Kalimdor\\Kalimdor Explorer"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Titles\\Wrath of the Lich King Titles\\Reputations\\The Diplomat\\Timbermaw Hold Faction",{
author="support@zygorguides.com",
keywords={"The, Diplomat"},
},[[
#include "Timbermaw_Rep"
]])
