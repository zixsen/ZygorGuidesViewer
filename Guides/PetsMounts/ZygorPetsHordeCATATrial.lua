local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHCATA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Small Frog",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Small Frog.",
model={6297},
pet=419,
},[[
step
Challenge one to a pet battle and capture it
|tip The Small Frog is level 3.
learnpet Small Frog##61071 |goto Northern Barrens 36.2,44.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bombay Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Bombay Cat.",
model={5556},
pet=40,
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Bombay)##8485
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Bombay Cat##7385  |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cornish Rex Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Cornish Rex Cat.",
model={5586},
pet=41,
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Cornish Rex)##8486
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Orange Tabby Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Orange Tabby Cat.",
model={5554},
pet=43,
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Orange Tabby)##8487
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silver Tabby Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Silver Tabby Cat.",
model={5555},
pet=45,
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Silver Tabby)##8488
tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Hare",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Hare.",
model={1560},
pet=448,
},[[
step
Challenge one to a pet battle and capture it
|tip The Hares around this area are level 1.
learnpet Hare##61751 |goto Durotar 47.3,30.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Rabbit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Snowshoe Rabbit.",
model={328},
pet=72,
},[[
step
#include "auctioneer"
buy 1 Rabbit Crate (Snowshoe)##8497
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Snowshoe Rabbit##7560 |use Rabbit Crate (Snowshoe)##8497
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Undercity Rat.",
model={1141},
pet=454,
},[[
step
Challenge one to a pet battle and capture it
|tip The Undercity Rats are level 2.
learnpet Undercity Rat##61889 |goto Undercity 70.9,35.4
]])
