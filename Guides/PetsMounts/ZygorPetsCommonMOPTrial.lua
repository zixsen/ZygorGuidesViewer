local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCMOP") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
