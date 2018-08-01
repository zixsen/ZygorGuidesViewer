local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCBFA") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tottle",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"aquatic, pet, battle, of, azeroth, preorder, collector, edition"},
pet=2143,
model={80362},
description="This battle pet is acquired by purchasing the collector's edition of the Battle for Azeroth expansion.",
},[[
step
Purchase the Collector's Edition of the Battle for Azeroth Expansion |achieve 12229
|tip This battle pet is awarded for this purchase.
step
collect Tottle##153541 |n |only if haspet(2143)
|tip Check your in-game mail.
step
Use Tottle |use Tottle##153541
learnpet Tottle##129049
step
_Congratulations!_
You Collected the "Tottle" Battle Pet.
]])
