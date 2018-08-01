local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCWOD") then return end
if ZGV:DoMutex("PetsCommonWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
