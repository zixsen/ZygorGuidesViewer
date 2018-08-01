local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Achievement = {
	Icons = {},
	AvailGuides = {},
}

ZGV.Achievement = Achievement

tinsert(ZGV.startups,{"Achievement: frame hook",function(self)
	hooksecurefunc("ToggleAchievementFrame",function() Achievement:IconSetup() end)
end})

local CHAIN = ZGV.ChainCall
local L = ZGV.L

--Zygor button for the Achievement Journal

function Achievement.Icon_OnClick(self,but)
	local achievebut=self:GetParent()
	local achieveID = achievebut.id
	if achieveID and Achievement.AvailGuides[achieveID] then
		ZGV:SetGuide(Achievement.AvailGuides[achieveID])
		return
	end
	ZGV:Error("How odd. Achievement Zygor Button clicked, but we don't seem to have a guide for %s",achievebut.label:GetText())
end

function Achievement.ScheduleUpdate()
	ZGV:ScheduleTimer(function() Achievement.UpdateIcons() end, 0.0001)
end

function Achievement.UpdateIcons()
	local i, button
	for i,button in pairs(Achievement.Icons) do

		local achieve=button:GetParent()
		local achieveID = achieve.id

		if achieveID and Achievement.AvailGuides[achieveID] and achieve:IsShown() then
			ZGV:Debug("&achieveguides Showing icon for achievement %d",achieveID,achieve.label:GetText())
			button:Show()
		else
			if ZGV.db.profile.debug then
				if not achieve:IsShown() then
					ZGV:Debug("&achieveguides Not showing icon for achievement button %d... hidden",i)
				elseif not achieveID then
					ZGV:Debug("&achieveguides Not showing icon for achievement %s... unknown??",achieve.label:GetText())
				elseif not Achievement.AvailGuides[achieveID] then
					ZGV:Debug("&achieveguides Not showing icon for achievement %d %s: no guide",achieveID,achieve.label:GetText())
				elseif achieve.completed then
					ZGV:Debug("&achieveguides Not showing icon for achievement %d %s: completed",achieveID,achieve.label:GetText())
				end
			end
			button:Hide()
		end
	end
end

function Achievement:IconSetup()
	if self.loaded then return end

	for g,guide in ipairs(ZGV.registeredguides) do
		if guide.headerdata.achieveid then
			if type(guide.headerdata.achieveid) == "table" then
				local id
				for _,id in pairs(guide.headerdata.achieveid) do
					self.AvailGuides[id]=guide 
				end
			elseif type(guide.headerdata.achieveid) == "number" then
				self.AvailGuides[guide.headerdata.achieveid]=guide 
			end
		end
	end

	for i=1,100 do 
		local prefix="AchievementFrameAchievementsContainerButton"..i
		local button=_G[prefix]
		if not button then break end

		local iconFrame = CreateFrame("Button", "", button)
		iconFrame:SetSize(25,25)
		iconFrame:SetPoint("TOPRIGHT",button,"TOPRIGHT",-5,-5)
		iconFrame:SetScript("OnEnter",function(self)
			GameTooltip:ClearAllPoints()
			GameTooltip:ClearLines()
			GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
			GameTooltip:AddLine(L['achieveframe_button']:format(self:GetParent().label:GetText()))
			GameTooltip:Show()
		end)
		iconFrame:SetFrameLevel(button.shield:GetFrameLevel()+1)
		iconFrame:SetScript("OnLeave",function() GameTooltip:Hide() end)
		iconFrame:SetScript("OnClick", function(...) ZGV.Achievement.Icon_OnClick(...) end)

		iconFrame.tex=iconFrame:CreateTexture("","OVERLAY")
		iconFrame.tex:SetAllPoints(true)
		iconFrame.tex:SetTexture(ZGV.DIR.."\\Skins\\zygor-round")
		iconFrame.tex:SetTexCoord(0,0,0,1/2 , 1,0,1,1/2)

		button.zygorButton=iconFrame

		Achievement.Icons[i]=iconFrame
	end

	local achievescroll=_G['AchievementFrameAchievementsContainer']
	hooksecurefunc("HybridScrollFrame_Update",function(scrollframe) if scrollframe==achievescroll then Achievement.ScheduleUpdate() end end)  -- CRAZY and inefficient. But it's either this, or   -- 2015-01-01, sinus: "or"..?

	achievescroll:HookScript("OnVerticalScroll",Achievement.ScheduleUpdate)
	achievescroll:HookScript("OnMouseWheel",Achievement.ScheduleUpdate)
	achievescroll.scrollDown:HookScript("OnClick",Achievement.ScheduleUpdate)
	achievescroll.scrollUp:HookScript("OnClick",Achievement.ScheduleUpdate)

	Achievement.loaded=true
end