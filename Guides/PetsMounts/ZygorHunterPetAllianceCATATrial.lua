local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("HunterPetA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Silithids\\Silithid Colossi\\Pink Silithid Colossi",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Pink Silithid Colossi pet.",
model={37549},
condition_suggested=function() return level>=48 and level<=52 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |condition BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Ainamiss the Hive Queen around the area.
|tip It is level 48.
Use your Tame Beast ability on _Ainamiss the Hive Queen_. |cast Tame Beast##1515 |goto Tanaris,34.2,46.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Beetles\\Scarabs\\Red-Spotted Green Scarab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red-Spotted Green Scarab pet.",
model={34912},
condition_suggested=function() return level>=83 and level<=87 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Emerald Scarab around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Emerald Scarab_. |cast Tame Beast##1515 |goto Uldum,65.6,32.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Worgs\\Brown and Gray Worg",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown and Gray Worg pet.",
model={18063},
condition_suggested=function() return level>=63 and level<=68 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ironjaw around the area.
|tip It is level 63 - 64.
Use your Tame Beast ability on _Ironjaw_. |cast Tame Beast##1515 |goto Terokkar Forest,66.6,35.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two-Headed Vultures\\White Two-Headed Vulture",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White Two-Headed Vulture pet.",
model={20348},
condition_suggested=function() return level>=65 and level<=69 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
Search for Trachela around this area.
|tip They are level 65.
Use your Tame Beast ability on _Trachela_. |cast Tame Beast##1515 |goto Terokkar Forest,43.2,51.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Sporebats\\Brown Sporebat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Sporebat pet.",
model={18029},
condition_suggested=function() return level>=61 and level<=66 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Sporebats around this area.
|tip They are level 61 - 62.
You can find more around [40.2,53.6].
Use your Tame Beast ability on a _Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,64.6,55.2
]])
