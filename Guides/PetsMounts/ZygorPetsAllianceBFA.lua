local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsABFA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "BFA"
