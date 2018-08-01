ZGV.TalentAdvisor = {}

local TA = ZGV.TalentAdvisor
local CHAIN = ZGV.ChainCall

function TA.Initialise()
	if TA.Initialised then return end

	hooksecurefunc("PlayerTalentFrame_ShowTalentTab",TA.SetTalents)
	hooksecurefunc("PlayerTalentFrame_ShowsPetSpecTab",TA.SetPetSpec)
	hooksecurefunc("PlayerTalentFrame_ShowsSpecTab",TA.SetSpec)

	-- make spec icon
	TA.SpecIcon  = CHAIN(CreateFrame("Button", "ZygorTASpec" , PlayerTalentFrameSpecializationSpecButton1))
		:SetSize(30,30)
		:SetPoint("TOPRIGHT")
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zygor-round")
		:SetFrameStrata("HIGH")
		:SetFrameLevel(76)
		:SetScript("OnEnter", function() TA.ShowTooltip(TA.SpecIcon) end)
		:Hide()
	.__END
	TA.SpecIcon:GetNormalTexture():SetTexCoord(0,0,0,1/2 , 1,0,1,1/2)

	-- make talent icons
	TA.TalentIcons = {}
	for i=1,MAX_TALENT_TIERS do
		local blizz_talent=_G["PlayerTalentFrameTalentsTalentRow"..i.."Talent1"]
		local icon = CHAIN(CreateFrame("Button", "ZygorTATalent"..i, blizz_talent))
			:SetSize(20,20)
			:SetPoint("TOPRIGHT")
			:SetNormalTexture(ZGV.DIR.."\\Skins\\zygor-round")
			:SetFrameStrata("HIGH")
			:SetFrameLevel(76)
			:SetScript("OnEnter", function() TA.ShowTooltip(TA.TalentIcons[i]) end)
			:Hide()
		.__END
		icon:GetNormalTexture():SetTexCoord(0,0,0,1/2 , 1,0,1,1/2)
		TA.TalentIcons[i]=icon
	end

	-- make pet spec icon
	TA.PetSpecIcon  = CHAIN(CreateFrame("Button", "ZygorTAPetSpec" , PlayerTalentFramePetSpecializationSpecButton1))
		:SetSize(30,30)
		:SetPoint("TOPRIGHT")
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zygor-round")
		:SetFrameStrata("HIGH")
		:SetFrameLevel(76)
		:SetScript("OnEnter", function() TA.ShowTooltip(TA.PetSpecIcon) end)
		:Hide()
	.__END
	TA.PetSpecIcon:GetNormalTexture():SetTexCoord(0,0,0,1/2 , 1,0,1,1/2)

	-- record player class

	_,TA.PlayerClass = UnitClass("player")

	TA.Initialised = true
end

function TA.ShowTooltip(object)
	GameTooltip:SetOwner(object,"ANCHOR_TOP")
	GameTooltip:SetText("Zygor recommendation")
	GameTooltip:Show()
end

function TA.SetSpec()
	if not ZGV.db.profile.talenton then return end

	if not TA.Builds[TA.PlayerClass] then 
		ZGV:Print("Class "..TA.PlayerClass.." missing in Talent Advisor") 
		TA.SpecIcon:Hide()
		return 
	end

	local suggested_spec
	for _,specdata in pairs(TA.Builds[TA.PlayerClass]) do
		if specdata[2]==true then
			suggested_spec = specdata[1]
		end
	end
	if suggested_spec then
		TA.SpecIcon:SetParent(_G["PlayerTalentFrameSpecializationSpecButton"..suggested_spec])
		TA.SpecIcon:ClearAllPoints()
		TA.SpecIcon:SetPoint("TOPRIGHT")
		TA.SpecIcon:Show()
	end	
end

function TA.SetTalents() 
	if not ZGV.db.profile.talenton then return end

	local spec = GetSpecialization()
	if not spec then return end

	local suggested_spec
	if TA.Builds[TA.PlayerClass] then
		for specname,specdata in pairs(TA.Builds[TA.PlayerClass]) do
			if specdata[1]==spec then
				suggested_spec = specdata
			end
		end
	end

	if not suggested_spec then 
		for _,icon in pairs(TA.TalentIcons) do icon:Hide() end
		return 
	end

	local talents = suggested_spec[3]

	for row,talent in pairs(talents) do
		local blizz_talent = _G["PlayerTalentFrameTalentsTalentRow"..row.."Talent"..talent]
		local icon = TA.TalentIcons[row]
		icon:SetParent(blizz_talent)
		icon:ClearAllPoints()
		icon:SetPoint("TOPRIGHT")
		icon:Show()
	end
end

function TA.SetPetSpec() 
	if not ZGV.db.profile.talenton then return end

	if not TA.Builds[TA.PlayerClass] then 
		ZGV:Print("Class "..TA.PlayerClass.." missing in Talent Advisor") 
		TA.PetSpecIcon:Hide()
		return 
	end

	local spec = GetSpecialization()

	local suggested_spec
	if TA.Builds[TA.PlayerClass] then
		for _,specdata in pairs(TA.Builds[TA.PlayerClass]) do
			if specdata[1]==spec then
				suggested_spec = specdata
			end
		end
	end

	if not suggested_spec then 
		TA.PetSpecIcon:Hide() 
		return 
	end

	local suggested_pet_spec = TA.PetSpecs[suggested_spec[4]]

	if suggested_pet_spec then
		TA.PetSpecIcon:SetParent(_G["PlayerTalentFramePetSpecializationSpecButton"..suggested_pet_spec])
		TA.PetSpecIcon:ClearAllPoints()
		TA.PetSpecIcon:SetPoint("TOPRIGHT")
		TA.PetSpecIcon:Show()
	end	

end

function TA:Toggle(enable)
	if not TA.Initialised then return end

	if enable then
		for _,icon in pairs(TA.TalentIcons) do icon:Show() end
		for _,icon in pairs(TA.PVPTalentIcons) do icon:Show() end
		TA.SpecIcon:Show()
		TA.PetSpecIcon:Show()
	else
		for _,icon in pairs(TA.TalentIcons) do icon:Hide() end
		for _,icon in pairs(TA.PVPTalentIcons) do icon:Hide() end
		TA.SpecIcon:Hide()
		TA.PetSpecIcon:Hide()
	end
end

tinsert(ZGV.startups,{"Talent Advisor",function(self)
	hooksecurefunc("TalentFrame_LoadUI",TA.Initialise)
end})