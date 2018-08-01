local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ZGVG=ZGV.Gold
local TRENDS_OLD = 24 * 4 --h

local Appraiser

if not ZGV.Gold.Appraiser then
	Appraiser = {}
	ZGV.Gold.Appraiser = Appraiser
else
	Appraiser = ZGV.Gold.Appraiser 
end

local ui = ZGV.UI
local SkinData = ui.SkinData

local Scan = ZGV.Gold.Scan

local HEADER_HEIGHT = 30		-- exported to GoldHelp.lua
local FOOTER_HEIGHT = 25
local SCROLL_WIDTH=15		-- read only

local TAB_NAVIGATION_INVENTORY = {"stacksize", "stackcount", "bidgold", "bidsilver", "bidcopper", "buyoutgold", "buyoutsilver", "buyoutcopper"}
local TAB_NAVIGATION_SEARCH = {"searchname", "pricegold", "pricesilver", "pricecopper", "maxcount"}

local SELL_INVENTORY_COLUMS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM", width=190, titlej="LEFT", textj="LEFT", name="name" },
	{ title="PRICE", width=100, titlej="RIGHT", textj="RIGHT", name="price" },
	{ title="", width=15, titlej="CENTER", textj="CENTER", name="status", type="icon", onentertooltip=function(row) GameTooltip:AddLine( row.item.statusText ) end },
}

local SELL_INVENTORY_DATA = {
	ROW_COUNT = 14,
	LIST_WIDTH = 360,
	LIST_HEIGHT = 340,
	POSX = 8,
	POSY = -8,
	STRATA = "HIGH",
	HIDESCROLLBAR = true,
}

local SELL_AUCTIONS_COLUMNS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="STACK", width=180, titlej="LEFT", textj="LEFT", name="name" },
	{ title="UNIT", width=100, titlej="RIGHT", textj="RIGHT", name="uprice" },
	{ title="STACK", width=100, titlej="RIGHT", textj="RIGHT", name="sprice" },
}

local SELL_AUCTIONS_DATA = {
	ROW_COUNT = 6,
	LIST_WIDTH = 435,
	LIST_HEIGHT = 150,
	POSX = 385,
	POSY = -198,
	STRATA = "HIGH",
}

local BUY_INVENTORY_COLUMS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM", width=170, titlej="LEFT", textj="LEFT", name="name" },
	{ title="PRICE", width=120, titlej="RIGHT", textj="RIGHT", name="price" },
	{ title="", width=15, titlej="CENTER", textj="CENTER", name="status", type="icon", onentertooltip=function(row) if not row.item then return end GameTooltip:AddLine( row.item.statusText ) end },
}

local BUY_INVENTORY_DATA = {
	ROW_COUNT = 14,
	LIST_WIDTH = 360,
	LIST_HEIGHT = 340,
	POSX = 8,
	POSY = -8,
	STRATA = "HIGH",
	HIDESCROLLBAR = true,
}

local BUY_AUCTIONS_COLUMNS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="SIZE", width=180, titlej="LEFT", textj="LEFT", name="name" },
	{ title="UNIT", width=100, titlej="RIGHT", textj="RIGHT", name="uprice" },
	{ title="STACK", width=100, titlej="RIGHT", textj="RIGHT", name="sprice" },
}

local BUY_AUCTIONS_DATA = {
	ROW_COUNT = 8,
	LIST_WIDTH = 435,
	LIST_HEIGHT = 192,
	POSX = 385,
	POSY = -156,
	STRATA = "HIGH",
}

local BUY_SEARCH_COLUMNS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM NAME", width=375, titlej="LEFT", textj="LEFT", name="name" },
	{ title="", width=12, titlej="RIGHT", textj="RIGHT", name="action", type="button", 
		texture=ZGV.DIR.."\\Skins\\goldpricestatusicons", 
		textureoffset={11/16,12/16,0,1},
		texturecolor=SkinData("ButtonColor2"),
	},
}

local BUY_SEARCH_DATA = {
	ROW_COUNT = 8,
	LIST_WIDTH = 435,
	LIST_HEIGHT = 192,
	POSX = 0,
	POSY = -146,
	STRATA = "HIGH",
}

local DROPDOWN_STYLE=2

function Appraiser:CreateMainFrame()
	self.MainFrame = CHAIN(ui:Create("Frame",UIParent,"ZygorAppraiser"))
		:SetFrameStrata("HIGH")
		:SetFrameLevel(AuctionFrame:GetFrameLevel()+1)
		:SetToplevel(enable)
		:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
		.__END


	local MF = self.MainFrame 
	MF:ClearAllPoints()
	MF:SetPoint("TOPLEFT",AuctionFrame,"TOPLEFT",1,1)
	MF:SetPoint("BOTTOMRIGHT",AuctionFrame,"BOTTOMRIGHT",1,11)

	-- Header
	MF.HeaderFrame = CHAIN(ui:Create("Frame",MF,"ZygorAppraiserHeader"))
		:SetPoint("TOPLEFT",1,-1)
		:SetPoint("TOPRIGHT",-1,-1)
		:SetHeight(HEADER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+2)
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(0,0,0,0)
		:SetToplevel(enable)
		.__END

		MF.HeaderFrame.Logo = CHAIN(MF.HeaderFrame:CreateTexture())
			:SetPoint("TOP",MF.HeaderFrame,"TOP",0,-3) 
			:SetSize(100,25)
			:SetTexture(SkinData("TitleLogo"))
		.__END

		MF.HeaderFrame.Title = CHAIN(MF.HeaderFrame:CreateFontString())
			:SetPoint("TOPLEFT",8,-8)
			:SetFont(FONT,14) 
			:SetTextColor(unpack(SkinData("TabSelectedColor")))
			:SetText("Zygor Inventory")
		 .__END

		MF.HeaderFrame.close = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",-5,-5)
			:SetSize(17,17)
			:SetScript("OnClick", function() CloseAuctionHouse() end)
			.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.close,(SkinData("TitleButtons")),6,32)

		--[[
		MF.HeaderFrame.info = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetSize(17,17)
			:SetScript("OnClick", function() Appraiser:ToggleHelpPage() end)
			.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.info,(SkinData("TitleButtons")),18,32)
		--]]

		MF.HeaderFrame.goldguide = CHAIN(CreateFrame("Button", "ZA_Menu_GoldGuide" , MF.HeaderFrame))
			:SetSize(17,17)
			--:SetPoint("TOPRIGHT",MF.HeaderFrame.info,"TOPLEFT",-5,0)
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetScript("OnClick", function() ZGV.Goldguide:Initialise() end)
			:SetScript("OnEnter",function()
				GameTooltip:SetOwner(MF.HeaderFrame.goldguide, "ANCHOR_CURSOR")
				GameTooltip:AddLine("Open Gold Guide")
				GameTooltip:Show()
			end)
			:SetScript("OnLeave",function()
				GameTooltip:FadeOut()
			end)
			:Show()
		.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.goldguide,(SkinData("TitleButtons")),22,32)


	MF.ContentFrame = CHAIN(CreateFrame("Frame", "ZygorAppraiserContent", MF))
		:SetPoint("TOPLEFT",MF.HeaderFrame,"BOTTOMLEFT")
		:SetPoint("TOPRIGHT",MF.HeaderFrame,"BOTTOMRIGHT")
		:SetHeight(380)
		:Show()
	.__END

	-- Footer
	MF.FooterFrame = CHAIN(ui:Create("Frame",MF,"ZygorAppraiserFooter"))
		:SetPoint("TOPLEFT",MF.ContentFrame,"BOTTOMLEFT")
		:SetPoint("TOPRIGHT",MF.ContentFrame,"BOTTOMRIGHT")
		:SetHeight(FOOTER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+1)
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(0,0,0,0)
		:SetToplevel(enable)
		.__END
		MF.FooterUpdated = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("BOTTOMLEFT",5,5)
			:SetFont(FONTBOLD,12)
			:SetText("LAST UPDATED:")
		.__END

		MF.FooterUpdatedTime = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("LEFT",MF.FooterUpdated ,"RIGHT",5,0)
			:SetFont(FONT,12)
			:SetText("no time")
		.__END

		MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF.FooterFrame))
			:SetPoint("BOTTOMRIGHT",-5,5)
			:SetSize(15,15)
			:SetScript("OnClick",function() ZGV:OpenOptions() end)
		.__END
		ZGV.F.AssignButtonTexture(MF.FooterSettingsButton,(SkinData("TitleButtons")),5,32)

		MF.progressFrame = CHAIN(CreateFrame("Frame","progressFrame",MF.FooterFrame))
			:SetBackdrop(SkinData("ProgressBarBackdrop"))
			:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("ProgressBarBackdropBorderColor")))
			:SetSize(MF:GetWidth(),7)
			:SetHeight(SkinData("ProgressBarHeight"))
			:SetFrameStrata("HIGH")
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
			:SetPoint("TOP",MF.FooterFrame,"BOTTOM",0,-1)
			:Hide()
		.__END
		
		MF.progressFrame.tex = CHAIN(MF.progressFrame:CreateTexture())
			:SetHeight(SkinData("ProgressBarHeight")-2)
			:SetPoint("TOPLEFT",MF.progressFrame,"TOPLEFT",1,-1)
			:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
			:SetVertexColor(unpack(ZGV.CurrentSkinStyle:SkinData("ProgressBarColor") or {0,1,0,1}))
		.__END 
		
		MF.progressFrame.SetPercent = function(self, percent)
			self.targetpercent = percent
			if not self:IsShown() then self.percent=0 end
			self:SetShown(percent>0)
		end
		MF.progressFrame.percent = 0
		MF.progressFrame.targetpercent = 0
		local speed=0.2
		local throt=1/50
		local thr=0
		MF.progressFrame:SetScript("OnUpdate",function (self,elapsed)
			thr=thr+elapsed
			while thr>throt do
				thr=thr-throt
				local dif = self.targetpercent-self.percent
				self.percent = math.floor(self.percent + dif * speed)
				if self.percent>100 then self.percent=100 elseif self.percent<0 then self.percent=0 end
				self.tex:SetWidth((self.percent / 100)*(self:GetWidth()-2))
				if self.percent==0 then self:Hide() end
			end
		end)

	Appraiser.Inventory_Frame = self:MakeInventoryTable()
	Appraiser.Buy_Frame = self:MakeBuyTable()

	Appraiser:CreateSystemTab("Inventory","Sell")
	Appraiser:CreateSystemTab("Buy","Buy")

	MF.HelpPageContainer = CHAIN(CreateFrame("Frame", nil, self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetWidth(700)
		:SetHeight(1700)
	.__END
		
	MF.HelpPageContent = CHAIN(CreateFrame("SimpleHTML", "ZA_Help_Frame", MF.HelpPageContainer ))
		:SetBackdrop(SkinData("SecBackdrop"))
		:SetBackdropColor(unpack(SkinData("SecBackdropColor")))
		:SetPoint("TOPLEFT",10,-10)
		:SetPoint("BOTTOMRIGHT",-10,10)
		:SetWidth(700)
		:SetHeight(1700)
	.__END
	MF.HelpPageContent.p_font = CreateFont("p_font")	MF.HelpPageContent.p_font:SetFont(ZGV.Font,10)
	MF.HelpPageContent.h1_font = CreateFont("h1_font")	MF.HelpPageContent.h1_font:SetFont(ZGV.Font,12)
	MF.HelpPageContent.h2_font = CreateFont("h2_font")	MF.HelpPageContent.h2_font:SetFont(ZGV.Font,12)
	MF.HelpPageContent.h3_font = CreateFont("h3_font")	MF.HelpPageContent.h3_font:SetFont(ZGV.Font,12)

	MF.HelpPageContent:SetFontObject("p",MF.HelpPageContent.p_font)
	MF.HelpPageContent:SetFontObject("h1",MF.HelpPageContent.h1_font)
	MF.HelpPageContent:SetFontObject("h2",MF.HelpPageContent.h2_font)
	MF.HelpPageContent:SetFontObject("h3",MF.HelpPageContent.h3_font)

	MF.HelpPageContent:SetTextColor(1, 1, 1, 1)
	MF.HelpPageContent:SetTextColor("h1", 1, 0, 1, 1)

	MF.HelpPage = CHAIN(ui:Create("ScrollChild",self.MainFrame.ContentFrame ,"MF_HelpPage",MF.HelpPageContainer))
		:SetBackdrop(SkinData("SecBackdrop"))
		:SetBackdropColor(unpack(SkinData("SecBackdropColor")))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT",-15,0)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(self.MainFrame:GetFrameLevel()+1)
		:Hide()
	.__END

	MF.HelpPageContent:SetPoint("TOPLEFT",10,-10)

	MF:Hide()
end
	
function Appraiser:MakeInventoryTable()	
	local container = CHAIN(CreateFrame("Frame", "ZA_Sell_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	--------- Inventory list ---------
	container.InventoryList = ui:Create("ScrollTable",container,"ZA_Sell_Inventory",SELL_INVENTORY_COLUMS,SELL_INVENTORY_DATA)

	container.InventoryList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.InventoryOffset=Appraiser.InventoryOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.InventoryList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.InventoryOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)

	for _,row in pairs(container.InventoryList.rows) do
		row.status:SetTexture(ZGV.DIR.."\\Skins\\goldpricestatusicons")
		row:SetScript("OnClick",function(self,button)
			if button == "LeftButton" and row.item then
				Appraiser:ActivateSellItem(row.item)
			elseif button == "RightButton" then
				Appraiser:InventoryRowMenu(row)
			end
		end)
	end

	--------- Auctions list ---------
	container.InventoryAuctionList = ui:Create("ScrollTable",container,"ZA_Sell_Auctions",SELL_AUCTIONS_COLUMNS,SELL_AUCTIONS_DATA)

	container.InventoryAuctionList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.InventoryAuctionOffset=Appraiser.InventoryAuctionOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.InventoryAuctionList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.InventoryAuctionOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)
	for _,row in pairs(container.InventoryAuctionList.rows) do
		row:SetScript("OnClick",function()
			Appraiser:SetUndercutToAuction(row)
		end)
	end

	container.auctionslabel = CHAIN(container:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("BOTTOMLEFT",container.InventoryAuctionList,"TOPLEFT",0,0)
		:SetJustifyH("LEFT")
		:SetSize(435,20)
		:SetText("Auctions for: ...")
		.__END
	container.undercutlabel = CHAIN(container:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("BOTTOMLEFT",container.InventoryAuctionList,"TOPLEFT",0,0)
		:SetJustifyH("RIGHT")
		:SetSize(435,20)
		:SetText("Select auction to undercut")
		.__END


	container.InventoryAppraiseButton = CHAIN(ui:Create("Button",container))
		:SetSize(105,20)
		:SetPoint("TOPLEFT",container.InventoryList,"BOTTOMLEFT", 0, -6)
		:SetFont(FONT,12)
		:SetText("Appraise all")
		:SetScript("OnClick", function(self) if not self.soft_disabled then Appraiser:StartManualScan() end end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	container.InventoryAppraiseAbortButton = CHAIN(ui:Create("Button",container))
		:SetSize(105,20)
		:SetPoint("TOPLEFT",container.InventoryList,"BOTTOMLEFT", 0, -6)
		:SetFont(FONT,12)
		:SetText("Abort")
		:SetScript("OnClick", function() Appraiser:AbortManualScan() end)
		:Hide()
	.__END


	container.InventoryScanButton = CHAIN(ui:Create("Button",container))
		:SetSize(75,20)
		:SetPoint("TOPRIGHT",container.InventoryList,"BOTTOMRIGHT", 0, -6)
		:SetFont(FONT,12)
		:SetText("Scan")
		:SetScript("OnClick", function(self) if not self.soft_disabled then Appraiser:Scan(self.action) end end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END

	container.InventoryScanAbortButton = CHAIN(ui:Create("Button",container))
		:SetSize(75,20)
		:SetPoint("TOPRIGHT",container.InventoryList,"BOTTOMRIGHT", 0, -6)
		:SetFont(FONT,12)
		:SetText("Abort")
		:SetScript("OnClick", function() Appraiser:AbortManualScan() end)
		:Hide()
	.__END


	container.activeIcon = CHAIN(container:CreateTexture())
		:SetPoint("TOPLEFT",container,"TOPLEFT",385,-8)
		:SetSize(20,20)
	.__END
	container.activeIconOverlay = CHAIN(ui:Create("Button",container,"ZA_Details_Frame_Icon"))
		:SetPoint("TOPLEFT",container.activeIcon)
		:SetPoint("BOTTOMRIGHT",container.activeIcon)
		:SetFrameLevel(container:GetFrameLevel()+2)
		:SetBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
		:SetScript("OnEnter",function()
			if Appraiser.ActiveSellingItem then
				GameTooltip:SetOwner(container.activeIconOverlay,"ANCHOR_RIGHT")
				Appraiser:ShowItemTooltip(Appraiser.ActiveSellingItem)
				GameTooltip:Show()
			end
		end)
		:SetScript("OnLeave",function()
			GameTooltip:Hide()
			BattlePetTooltip:Hide()
		end)
	.__END	
	container.activeName = CHAIN(container:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOPLEFT",container.activeIcon,"TOPRIGHT",8,-2)
		:SetJustifyH("LEFT")
		:SetWidth(220)
		:SetWordWrap(false)
		:SetText("No item selected")
		.__END

	container.activeStatus = CHAIN(container:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",container.activeName,"TOPRIGHT",0,-2)
		:SetJustifyH("RIGHT")
		:SetWidth(190)
		:SetWordWrap(false)
		:SetText("No trend data for item.")
		.__END

	container.decor = CHAIN(ui:Create("Frame",container,nil))
		:SetPoint("TOPLEFT",container,"TOPLEFT",385,-30)
		:SetSize(438,1)
		:SetFrameLevel(container:GetFrameLevel()+3)
		:SetBackdropColor(0.3,0.3,0.3,1)
		:SetBackdropBorderColor(0,0,0,0)
	.__END

	container.details = CHAIN(CreateFrame("Frame", "ZA_Details_Frame", container ))
		:SetPoint("TOPLEFT",container,"TOPLEFT",385,-30)
		:SetPoint("BOTTOMRIGHT",container.InventoryAuctionList,"TOPRIGHT",0,-30)
	.__END

	container.stacksizelabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-10)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Stack Size")
		.__END
		container.stacksize = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(47,17)
			:SetPoint("LEFT",container.stacksizelabel ,"RIGHT",5,0)
			:SetText("1")
			:SetNumeric(true)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,1,1,1)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"stacksize") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  ZGV:ScheduleTimer(function() Appraiser:UpdateStackCountsFromFields() end,0) end)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", function(self) EditBox_ClearHighlight(self) Appraiser:UpdateStackFields() end)
			:SetScript("OnEnter",function(self) if not self:IsEnabled() then Appraiser:ShowDisabledTooltip(self) end end)
			:SetScript("OnLeave",function() GameTooltip:Hide() end)
			.__END
		container.stacksizebutton = CHAIN(ui:Create("Button",container.details))
			:SetSize(62,17)
			:SetPoint("LEFT",container.stacksize ,"RIGHT",8,0)
			:SetFont(FONT,12)
			:SetText("Max")
			:SetScript("OnClick", function() Appraiser:SetMaxStackSize() end)
			.__END

	container.stackcountlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-32)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Stack Count")
		.__END
		container.stackcount = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(47,17)
			:SetPoint("LEFT",container.stackcountlabel ,"RIGHT",5,0)
			:SetText("1")
			:SetNumeric(true)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,1,1,1)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"stackcount") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  ZGV:ScheduleTimer(function() Appraiser:UpdateStackCountsFromFields() end,0) end)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", function(self) EditBox_ClearHighlight(self) Appraiser:UpdateStackFields() end)
			:SetScript("OnEnter",function(self) if not self:IsEnabled() then Appraiser:ShowDisabledTooltip(self) end end)
			:SetScript("OnLeave",function() GameTooltip:Hide() end)
			.__END
		container.stackcountbutton = CHAIN(ui:Create("Button",container.details))
			:SetSize(62,17)
			:SetPoint("LEFT",container.stackcount ,"RIGHT",8,0)
			:SetFont(FONT,12)
			:SetText("Max")
			:SetScript("OnClick", function() Appraiser:SetMaxStackCount() end)
			.__END

	local initial_mode = ZGV.db.profile.aucmode or "unit"

	container.bidlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-54)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Bid / "..initial_mode)
		.__END
		container.bidgold = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(47,17)
			:SetPoint("LEFT",container.bidlabel ,"RIGHT",5,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(6)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.93,0,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"bidgold") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  Appraiser:SetManualSellPrice() end)
			.__END
		container.bidsilver = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(20,17)
			:SetPoint("LEFT",container.bidgold ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(0.97,0.97,1,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"bidsilver") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  Appraiser:SetManualSellPrice() end)
			.__END
		container.bidcopper = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(20,17)
			:SetPoint("LEFT",container.bidsilver ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.66,0.60,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"bidcopper") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  Appraiser:SetManualSellPrice() end)
			.__END

	container.buyoutlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-76)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Buyout / "..initial_mode)
		.__END
		container.buyoutgold = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(47,17)
			:SetPoint("LEFT",container.buyoutlabel ,"RIGHT",5,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(6)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.93,0,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"buyoutgold") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  Appraiser:SetManualSellPrice() end)
			.__END
		container.buyoutsilver = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(20,17)
			:SetPoint("LEFT",container.buyoutgold ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(0.97,0.97,1,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"buyoutsilver") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  Appraiser:SetManualSellPrice() end)
			.__END
		container.buyoutcopper = CHAIN(ui:Create("EditBox",container.details))
			:SetSize(20,17)
			:SetPoint("LEFT",container.buyoutsilver ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.66,0.60,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(container,TAB_NAVIGATION_INVENTORY,"buyoutcopper") end)
			:SetScript("OnTextChanged", function(self,user) if not user then return end  Appraiser:SetManualSellPrice() end)
			.__END

	container.UndercutDropdownLabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-98)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Undercut")
		.__END
		container.UndercutDropdown = CHAIN(ui:Create("DropDown",container.details,DROPDOWN_STYLE))
			:SetPoint("BOTTOMLEFT",container.UndercutDropdownLabel,"BOTTOMRIGHT",1,-1)
			:SetSize(120,17)
			:SetText("Undercut")
			:AddTooltip("ANCHOR_TOPLEFT","Select undercutting mode.")
		.__END
		local AH_UNDERCUT_OPTIONS = {
			{L['opt_gold_appraiser_undercut_none'],	0	},
			{L['opt_gold_appraiser_undercut_1p'],	1	},
			{L['opt_gold_appraiser_undercut_2p'],	2	},
			{L['opt_gold_appraiser_undercut_5p'],	5	},
			{L['opt_gold_appraiser_undercut_10p'],	10	},
			{L['opt_gold_appraiser_undercut_20p'],	20	},
			{L['opt_gold_appraiser_undercut_1c'],	10001	},
		}
		for optnum,opt in ipairs(AH_UNDERCUT_OPTIONS) do
			local item = container.UndercutDropdown:AddItem(opt[1],opt[2],function(item)
				ZGV.db.profile.appraiser_undercut = item.userdata.value
				ZGV.Gold.Appraiser:UpdateSellPriceFields()
				ZGV.Gold.Appraiser.needToUpdate = true
			end)
		end
		container.UndercutDropdown:SetCurrentSelectedByValue(ZGV.db.profile.appraiser_undercut or 0)

	container.durationdropdownlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-120)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Duration")
		.__END
		container.durationdropdown = CHAIN(ui:Create("DropDown",container.details,DROPDOWN_STYLE))
			:SetPoint("BOTTOMLEFT",container.durationdropdownlabel,"BOTTOMRIGHT",1,-1)
			:SetSize(120,17)
			:SetText("Duration")
			:AddTooltip("ANCHOR_TOPLEFT","Select auction duration.")
		.__END
		local AH_DURATION_OPTIONS = {
			{AUCTION_DURATION_ONE,	1	},
			{AUCTION_DURATION_TWO,	2	},
			{AUCTION_DURATION_THREE,3	},
		}
		for optnum,opt in ipairs(AH_DURATION_OPTIONS) do
			local item = container.durationdropdown:AddItem(opt[1],opt[2],function(item)
				ZGV.db.profile.appraiser_duration = item.userdata.value
			end)
		end
		container.durationdropdown:SetCurrentSelectedByValue(ZGV.db.profile.appraiser_duration or 2)


	container.demandlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-10)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Demand:")
		.__END
		container.demand = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.demandlabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END
	container.histhighlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-32)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Hist. High:")
		.__END
		container.histhigh = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.histhighlabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END
	container.histmedlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-54)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Hist. Med:")
		.__END
		container.histmed = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.histmedlabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END
	container.histlowlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-76)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Hist. Low:")
		.__END
		container.histlow = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.histlowlabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END
	container.estvallabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-98)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Curr. Price:")
		.__END
		container.estval = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.estvallabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END

	container.aucmodelgroup = ui:Create("RadioButtonGroup")
	container.aucmodelgroup:RegisterToggleCallback( function() Appraiser:SetSellAucMode() end )

	container.aucmodellabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-120)
		:SetJustifyH("LEFT")
		:SetWidth(70)
		:SetText("Price per")
		.__END

	container.aucmodeunit = CHAIN(container.aucmodelgroup:AddRadio("unit",container))
		:SetPoint("LEFT",container.aucmodellabel ,"RIGHT",0,1)
		:SetFont(FONT,12)
		:SetText("Unit")
	.__END

	container.aucmodestack = CHAIN(container.aucmodelgroup:AddRadio("stack",container))
		:SetPoint("LEFT",container.aucmodeunit.text ,"RIGHT",15,0)
		:SetFont(FONT,12)
		:SetText("Stack")
	.__END


	container.aucmodelgroup:SetValue(ZGV.db.profile.aucmode or "unit")

	container.estvalreset = CHAIN(ui:Create("Button",container.details))
		:SetSize(185,20)
		:SetPoint("TOPLEFT",container.InventoryAuctionList ,"BOTTOMLEFT",0,-6)
		:SetFont(FONT,12)
		:SetText("Reset to Est. Value")
		:SetScript("OnClick", function() Appraiser:ResetSellFields() end)
	.__END

	container.postbutton = CHAIN(ui:Create("Button",container,nil,2))
		:SetPoint("TOPRIGHT",container.InventoryAuctionList ,"BOTTOMRIGHT",0,-6)
		:SetSize(100,20)
		:SetText("Post")
		:SetFont(FONTBOLD,14)
		:SetScript("OnClick", function(self) if not self.soft_disabled then Appraiser:StartAuction() end end)    -- soft_disabled doesn't have a visual effect, but at least it works.
	.__END

	container.aucpostfee = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPRIGHT",container.InventoryAuctionList ,"BOTTOMRIGHT",-20,-39)
		:SetJustifyH("RIGHT")
		:SetWidth(200)
		:SetText("Depost: "..ZGV.GetMoneyString(0))
		.__END

	return container
end

function Appraiser:MakeBuyTable()	
	local container = CHAIN(CreateFrame("Frame", "ZA_Buy_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	--------- Inventory list ---------
	container.ShoppingList = ui:Create("ScrollTable",container,"ZA_Shopping_Inventory",BUY_INVENTORY_COLUMS,BUY_INVENTORY_DATA)

	container.ShoppingList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.ShoppingOffset=Appraiser.ShoppingOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.ShoppingList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.ShoppingOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)

	for _,row in pairs(container.ShoppingList.rows) do
		row.status:SetTexture(ZGV.DIR.."\\Skins\\goldpricestatusicons")
		row:SetScript("OnClick",function(self,button)
			if row.item then
				if button == "LeftButton" then
					Appraiser:ActivateBuyItem(row.item)
				elseif button == "RightButton" then
					Appraiser:ShoppingRowMenu(row)
				end
			end
		end)
	end

	local containerDetails = CHAIN(CreateFrame("Frame", nil, container ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END
	container.containerDetails=containerDetails

	--------- Auctions list ---------
	container.ShoppingAuctionList = ui:Create("ScrollTable",containerDetails,"ZA_Shopping_Auctions",BUY_AUCTIONS_COLUMNS,BUY_AUCTIONS_DATA)

	container.ShoppingAuctionList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.ShoppingAuctionOffset=Appraiser.ShoppingAuctionOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.ShoppingAuctionList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.ShoppingAuctionOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)
	for _,row in pairs(container.ShoppingAuctionList.rows) do
		row:SetScript("OnClick",function()
			if CanSendAuctionQuery() then
				Appraiser:SetBuyoutToAuction(row)
			end
		end)
	end

	container.auctionslabel = CHAIN(containerDetails:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("BOTTOMLEFT",container.ShoppingAuctionList,"TOPLEFT",0,0)
		:SetJustifyH("LEFT")
		:SetSize(435,20)
		:SetText("Auctions for: ...")
		.__END
	container.buyoutlabel = CHAIN(containerDetails:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("BOTTOMLEFT",container.ShoppingAuctionList,"TOPLEFT",0,0)
		:SetJustifyH("RIGHT")
		:SetSize(435,20)
		:SetText("Select auction to buy")
		.__END


	container.ShoppingAppraiseButton = CHAIN(ui:Create("Button",container))
		:SetSize(105,20)
		:SetPoint("TOPLEFT",container.ShoppingList,"BOTTOMLEFT", 0, -6)
		:SetFont(FONT,12)
		:SetText("Appraise all")
		:SetScript("OnClick", function(self) if not self.soft_disabled then Appraiser:UpdateBuyPrices() end end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	container.ShoppingAppraiseAbortButton = CHAIN(ui:Create("Button",container))
		:SetSize(105,20)
		:SetPoint("TOPLEFT",container.ShoppingList,"BOTTOMLEFT", 0, -6)
		:SetFont(FONT,12)
		:SetText("Abort")
		:SetScript("OnClick", function() Appraiser:AbortManualScan() end)
		:Hide()
	.__END

	container.ShoppingAddButton = CHAIN(ui:Create("Button",container))
		:SetSize(75,20)
		:SetPoint("TOPRIGHT",container.ShoppingList,"BOTTOMRIGHT", 0, -6)
		:SetFont(FONT,12)
		:SetText("Add item")
		:SetScript("OnClick", function(self) Appraiser:ShowSearchFrame(true) end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText("Add item to shopping list") 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END

	container.activeIcon = CHAIN(containerDetails:CreateTexture())
		:SetPoint("TOPLEFT",container,"TOPLEFT",385,-8)
		:SetSize(20,20)
	.__END
	container.activeIconOverlay = CHAIN(ui:Create("Button",containerDetails,nil))
		:SetPoint("TOPLEFT",container.activeIcon)
		:SetPoint("BOTTOMRIGHT",container.activeIcon)
		:SetFrameLevel(container:GetFrameLevel()+2)
		:SetBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
		:SetScript("OnEnter",function()
			if Appraiser.SelectedShoppingItem and Appraiser.SelectedShoppingItem.itemid then
				GameTooltip:SetOwner(container.activeIconOverlay,"ANCHOR_RIGHT")
				GameTooltip:SetItemByID(Appraiser.SelectedShoppingItem.itemid )
				GameTooltip:Show()
			end
		end)
		:SetScript("OnLeave",function()
			GameTooltip:Hide()
		end)
	.__END	
	container.activeName = CHAIN(containerDetails:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOPLEFT",container.activeIcon,"TOPRIGHT",8,-2)
		:SetJustifyH("LEFT")
		:SetWidth(220)
		:SetWordWrap(false)
		:SetText("No item selected")
		.__END

	container.activeStatus = CHAIN(containerDetails:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",container.activeName,"TOPRIGHT",0,-2)
		:SetJustifyH("RIGHT")
		:SetWidth(190)
		:SetWordWrap(false)
		:SetText("No trend data for item.")
		.__END

	container.decor = CHAIN(ui:Create("Frame",containerDetails,nil))
		:SetPoint("TOPLEFT",container.activeIconOverlay,"BOTTOMLEFT",0,-2)
		:SetSize(438,1)
		:SetFrameLevel(container:GetFrameLevel()+3)
		:SetBackdropColor(0.3,0.3,0.3,1)
		:SetBackdropBorderColor(0,0,0,0)
	.__END

	container.details = CHAIN(CreateFrame("Frame", nil, containerDetails ))
		:SetPoint("TOPLEFT",container,"TOPLEFT",385,-30)
		:SetPoint("BOTTOMRIGHT",container.ShoppingAuctionList,"TOPRIGHT",0,-30)
	.__END

	container.nextbuyoutlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-10)
		:SetJustifyH("LEFT")
		:SetWidth(85)
		:SetText("Next buyout: ")
		.__END
		container.nextbuyout = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.nextbuyoutlabel ,"RIGHT",5,0)
			:SetJustifyH("LEFT")
			:SetWidth(150)
			:SetText("n/a")
			.__END
	container.amountbuyout = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-32)
		:SetJustifyH("LEFT")
		:SetWidth(240)
		:SetText("")
		.__END

	container.extrainfolabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-54)
		:SetJustifyH("LEFT")
		:SetWidth(270)
		:SetText("Defined max price: ")
		.__END

	container.histhighlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-10)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Hist. High:")
		.__END
		container.histhigh = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.histhighlabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END
	container.histmedlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-32)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Hist. Med:")
		.__END
		container.histmed = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.histmedlabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END
	container.histlowlabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-54)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Hist. Low:")
		.__END
		container.histlow = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.histlowlabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END
	container.estvallabel = CHAIN(container.details:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",250,-76)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Est. Value:")
		.__END
		container.estval = CHAIN(container.details:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",container.estvallabel ,"RIGHT",5,0)
			:SetJustifyH("RIGHT")
			:SetWidth(100)
			:SetText("n/a")
			.__END

	container.estvalreset = CHAIN(ui:Create("Button",container.details))
		:SetSize(185,20)
		:SetPoint("TOPLEFT",container.ShoppingAuctionList ,"BOTTOMLEFT",0,-6)
		:SetFont(FONT,12)
		:SetText("Reset to suggested buyout")
		:SetScript("OnClick", function()  Appraiser:ResetBuyoutToAuction() end)
	.__END

	container.buybutton = CHAIN(ui:Create("Button",containerDetails,nil,2))
		:SetPoint("TOPRIGHT",container.ShoppingAuctionList ,"BOTTOMRIGHT",0,-6)
		:SetSize(100,20)
		:SetText("Buy")
		:SetFont(FONTBOLD,14)
		:SetScript("OnClick",function(me) Appraiser:ExecuteBuyout() end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END

	container.debugbutton = CHAIN(ui:Create("Button",container))
		:SetPoint("BOTTOMRIGHT",container.ShoppingList ,"TOPRIGHT",0,-6)
		:SetSize(100,20)
		:SetText("DEBUG")
		:SetFont(FONTBOLD,14)
		:SetScript("OnClick",function(me) if Spoo then Spoo(nil,nil,Appraiser.ShoppingItems) end end)
		:SetShown(ZGV.db.profile.debug_display)
	.__END



	local containerSearch = CHAIN(CreateFrame("Frame", nil, container ))
		:SetPoint("TOPLEFT",container,"TOPLEFT",385,-10)
		:SetPoint("BOTTOMRIGHT",container.ShoppingAuctionList,"TOPRIGHT",0,0)
		:SetHeight(100)
	.__END
	container.containerSearch=containerSearch

	containerSearch.activeName = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOPLEFT",containerSearch,"TOPLEFT",0,-1)
		:SetJustifyH("LEFT")
		:SetWidth(220)
		:SetWordWrap(false)
		:SetText("Search/Add item")
		.__END
	containerSearch.activeStatus = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",containerSearch.activeName,"TOPRIGHT",0,-2)
		:SetJustifyH("RIGHT")
		:SetWidth(190)
		:SetWordWrap(false)
		:SetText("No results.")
		.__END
	containerSearch.decor = CHAIN(ui:Create("Frame",containerSearch))
		:SetPoint("TOPLEFT",containerSearch.activeName	,"BOTTOMLEFT",0,-6)
		:SetSize(438,1)
		:SetFrameLevel(containerSearch:GetFrameLevel()+3)
		:SetBackdropColor(0.3,0.3,0.3,1)
		:SetBackdropBorderColor(0,0,0,0)
	.__END


	containerSearch.description = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-30)
		:SetJustifyH("LEFT")
		:SetWidth(400)
		:SetText("Select an item from the left panel or search for an item below:")
		.__END


	containerSearch.searchnamelabel = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-52)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Item name")
		.__END
		containerSearch.searchname = CHAIN(ui:Create("EditBox",containerSearch))
			:SetSize(314,17)
			:SetPoint("LEFT",containerSearch.searchnamelabel ,"RIGHT",5,0)
			:SetText("")
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,1,1,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(containerSearch,TAB_NAVIGATION_SEARCH,"searchname") end)
			:SetScript("OnEnterPressed",function(me) Appraiser:FindMatchingAuctions() end)
			.__END

	containerSearch.pricelabel = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("TOPLEFT",0,-74)
		:SetJustifyH("LEFT")
		:SetWidth(110)
		:SetText("Max price")
		.__END
		containerSearch.pricegold = CHAIN(ui:Create("EditBox",containerSearch))
			:SetSize(47,17)
			:SetPoint("LEFT",containerSearch.pricelabel ,"RIGHT",5,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(6)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.93,0,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(containerSearch,TAB_NAVIGATION_SEARCH,"pricegold") end)
			.__END
		containerSearch.pricesilver = CHAIN(ui:Create("EditBox",containerSearch))
			:SetSize(20,17)
			:SetPoint("LEFT",containerSearch.pricegold ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(0.97,0.97,1,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(containerSearch,TAB_NAVIGATION_SEARCH,"pricesilver") end)
			.__END
		containerSearch.pricecopper = CHAIN(ui:Create("EditBox",containerSearch))
			:SetSize(20,17)
			:SetPoint("LEFT",containerSearch.pricesilver ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.66,0.60,1)
			:SetScript("OnEditFocusGained", EditBox_HighlightText)
			:SetScript("OnEditFocusLost", EditBox_ClearHighlight)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(containerSearch,TAB_NAVIGATION_SEARCH,"pricecopper") end)
			.__END

	containerSearch.maxcountlabel = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("LEFT",containerSearch.pricecopper ,"RIGHT",70,0)
		:SetJustifyH("LEFT")
		:SetWidth(80)
		:SetText("Amount")
		.__END
		containerSearch.maxcount = CHAIN(ui:Create("EditBox",containerSearch))
			:SetSize(47,17)
			:SetPoint("LEFT",containerSearch.maxcountlabel ,"RIGHT",5,0)
			:SetText("")
			:SetNumeric(true)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,1,1,1)
			:SetScript("OnTabPressed", function() Appraiser:TabKeyNavigation(containerSearch,TAB_NAVIGATION_SEARCH,"maxcount") end)
			.__END


	containerSearch.SearchResultList = ui:Create("ScrollTable",containerSearch,"ZA_Shopping_Search",BUY_SEARCH_COLUMNS,BUY_SEARCH_DATA)

	containerSearch.SearchResultList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.SearchResultsOffset=Appraiser.SearchResultsOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	containerSearch.SearchResultList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.SearchResultsOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)
	for _,row in pairs(containerSearch.SearchResultList.rows) do
		row.action:SetScript("OnClick",function()
			Appraiser:SaveSearchItem(row.item)
		end)
		row:SetScript("OnClick",function()
			Appraiser:SaveSearchItem(row.item)
		end)
	end

	containerSearch.auctionslabel = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("BOTTOMLEFT",containerSearch.SearchResultList,"TOPLEFT",0,0)
		:SetJustifyH("LEFT")
		:SetSize(435,20)
		:SetText("Search results:")
		.__END
	containerSearch.undercutlabel = CHAIN(containerSearch:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("BOTTOMLEFT",containerSearch.SearchResultList,"TOPLEFT",0,0)
		:SetJustifyH("RIGHT")
		:SetSize(435,20)
		:SetText("Click to select:")
		.__END


	containerSearch.clearresults = CHAIN(ui:Create("Button",containerSearch))
		:SetSize(185,20)
		:SetPoint("TOPLEFT",containerSearch.SearchResultList ,"BOTTOMLEFT",0,-6)
		:SetFont(FONT,12)
		:SetText("Clear search results")
		:SetScript("OnClick", function() Appraiser:ClearSearchLabels() end)
	.__END

	containerSearch.searchbutton = CHAIN(ui:Create("Button",containerSearch,nil,2))
		:SetPoint("TOPRIGHT",containerSearch.SearchResultList ,"BOTTOMRIGHT",0,-6)
		:SetSize(100,20)
		:SetText("Search")
		:SetFont(FONTBOLD,14)
		:SetScript("OnClick",function(me) Appraiser:FindMatchingAuctions() end)
		--[[
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		--]]
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END

	container.playergold = CHAIN(container:CreateFontString())
		:SetFont(FONT,12)
		:SetJustifyH("RIGHT")
		:SetWidth(200)
		:SetText("Player gold: "..ZGV.GetMoneyString(GetMoney()))
		:SetPoint("BOTTOMRIGHT",container,"BOTTOMRIGHT",-30,-20)
		.__END

	container.containerDetails:Hide()
	container.containerSearch:Show()

	return container
end

function Appraiser:ShowItemTooltip(item)
	if not item then return end

	local link = item.link or item.itemlink
	local BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName

	if link then 
		_,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(link,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	end

	if BattlePetId then -- battle pet
		BattlePetToolTip_Show(tonumber(BattlePetId), tonumber(BattlePetLevel), tonumber(BattlePetRarity), tonumber(BattlePetHP), tonumber(BattlePetAtt), tonumber(BattlePetSpeed), BattlePetName) 
		return 
	else
		if item.bag then 
			GameTooltip:SetBagItem(item.bag,item.slot) 
		elseif link then
			GameTooltip:SetHyperlink(link)
		else
			GameTooltip:SetItemByID(item.itemid) 
		end
	end
end

function Appraiser:ActivateTab(tabname)
	for i=1, AuctionFrame.numTabs do
		if _G["AuctionFrameTab"..i].ZygorTarget and _G["AuctionFrameTab"..i].ZygorTarget==tabname then
			_G["AuctionFrameTab"..i]:Click()
			break
		end
	end
end

function Appraiser:SetCurrentTab(tabname)
	local windows = {Buy="Buy",Inventory="Sell"}
	for framename,framedispname in pairs(windows) do
		self[framename.."_Frame"]:Hide()
	end
	self[tabname.."_Frame"]:Show()

	self.MainFrame.HeaderFrame.Title:SetText(windows[tabname])

	self.ActiveTab = tabname

	if ZGV.db.profile.autoscan and not Appraiser.Autoscanned then -- run autoscan only when our tab is active
		Appraiser.Autoscanned=true
		Appraiser:Scan()
	end

	Appraiser:Update()
end

function Appraiser:ShowWindow()
	if not ZGV.db.profile.auction_enable then return end

	if not self.MainFrame then self:CreateMainFrame() end

	ZGV.db.profile.IsWidgetCollapsed = ZGV.db.profile.IsWidgetCollapsed or {}
	if not ZGV.db.profile.IsWidgetCollapsed["Appraiser"] then
		ZGV.db.profile.IsWidgetCollapsed["Appraiser"] = false
	end
	
	Appraiser.InventoryOffset=0
	Appraiser.InventoryAuctionOffset=0
	Appraiser.ShoppingOffset=0
	Appraiser.SearchResultsOffset=0
	Appraiser.ShoppingAuctionOffset=0
	if ZGV.db.profile.auction_autoshow_tab then
		self:ActivateTab("Inventory")
	end
end

function Appraiser:HideWindow()
	if self.MainFrame then
		self.MainFrame:Hide()
	end
end

local function OldColor(timestamp,red,yellow)
	local age=time()-timestamp
	if age>red then
		return "ffff0000"
	elseif age>yellow then
		return "ffffee00"
	else
		return "ffffffff"
	end
end

local locale_hourly_intervals = {
	enUS = 2,
	esMX = 2,
	ptBR = 2,
	enGB = 1,
	frFR = 1,
	deDE = 1,
	ruRU = 1,
	itIT = 1,
	esES = 1,
	koKR = 0.5,
	zhTW = 0.5,
	zhCN = 0.5
}

function Appraiser:UpdateTimeStamp()
	if not self.MainFrame then return end
	if not self.lastScanTime then self.lastScanTime = time() end

	local timestamptext,updateTitletext,lastScanStr


	if ZGVG.Scan.db.realm.LastScan then
		updateTitletext = "LAST UPDATED:"
		local hourly_interval = locale_hourly_intervals[GetLocale()] or 1
		if ZGV.do_hourly_intervals then
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,hourly_interval*3600*2,hourly_interval*3600), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		else
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,3600*2,60*10), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		end
		if time()-ZGV.db.realm.LastScan > 3600*2 then
			timestamptext = timestamptext .. "|r - " .. L["gold_app_old_scan_data"]
		end
	else
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_scan_data"]
	end

	if not ZGV.Gold.guides_loaded then
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_goldguide"]
	elseif not (ZGV.Gold.servertrends and ZGV.Gold.servertrends.date) then
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_servertrends"]
	elseif ZGV.Gold.servertrends.date then
		local timeSinceLast = time() -  ZGV.Gold.servertrends.date

		if timeSinceLast > TRENDS_OLD * 3600 then	-- Data is old
			updateTitletext = "|cffff0000ALERT:|r"
			timestamptext = L["gold_app_old_servertrends"]:format(ui.GetTimeStamp(tonumber(ZGV.Gold.servertrends.date)))
		end
	end

	local Scan = ZGV.Gold.Scan


	local page_text = ""
	--[[
	if Appraiser.oldstate ~= ZGV.Gold.Scan.state then
		Appraiser.oldstate = ZGV.Gold.Scan.state
		if Appraiser.oldstate == "SS_QUERYING" then
			Appraiser.pagenum = (Appraiser.pagenum or 0) + 1
		end
	end
	if Appraiser.pagenum then
		page_text = " - page "..Appraiser.pagenum
	end
	--]]
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) and Scan.scan_pages>1 then
		page_text = (" - page %d of %d"):format(Scan.scan_page,Scan.scan_pages)
	end
	--page_text = Scan.scan_page

	local data_text = "All auctions"
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		data_text = (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) or ""
	elseif self.manualScanning then
		data_text = self.manualScanningName or ""
		page_text = ""
	elseif self.UpdateScanRunningName then
		data_text = self.UpdateScanRunningName
		page_text = ""
	elseif self.BuyOutSearchName then
		data_text = self.BuyOutSearchName
		page_text = ""
	end


	local progress_dots = math.floor((debugprofilestop()-Scan.last_scan_start_time)%2000 / 500)+1  -- 1..4
	local progress = string.rep(".",progress_dots)
	local preprogress = ""

	if not (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		-- long scan, provide progress %
		if Scan.state =="SS_SCANNING" then
			progress = (" %d%%"):format((Scan.scan_progress or 0)*100)
		elseif Scan.state =="SS_ANALYZING" then
			progress = (" %d%%"):format((Scan.analysis_progress or 0)*100)
		end
	elseif self.manualScanning then
		preprogress = ("%d/%d: "):format(self.manualScanningDone,self.manualScanningTotal)
	elseif self.manualBuyScanning then
		preprogress = ("%d/%d: "):format(self.manualBuyScanningDone,self.manualBuyScanningTotal)
	end

	if Scan.state == "SS_QUERYING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
			timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or "") .. progress
		else
			timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or " (initiating)") .. progress
		end
	elseif Scan.state =="SS_RECEIVING" then
		-- stage deprecated.
		--updateTitletext = "|cffff0000SCANNING:|r"
		--timestamptext = data_text .. page_text .. " (stage 2/4: receiving)" .. progress
	elseif Scan.state =="SS_SCANNING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 2/3: scanning]" or "") .. progress
	elseif Scan.state =="SS_ANALYZING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 3/3: analyzing]" or "") .. progress
	elseif Appraiser.ScanIsRunning or Appraiser.ActiveShoppingAddItem or (Appraiser.ScanItems and next(Appraiser.ScanItems)) then
		-- show Analyzing to avoid idle flashes
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. " (awaiting next item)" .. progress
	elseif Scan.state =="SS_IDLE" then
	end

	if ZGV.db.profile.debug_display then  updateTitletext = updateTitletext .. " [" .. Scan.state .. ", " .. (Appraiser.manualScanning and "manual " or "") .. (Appraiser.manualBuyScanning and "manualbuy " or "") .. "]"  end

	self.MainFrame.FooterUpdated:SetText(updateTitletext)
	self.MainFrame.FooterUpdatedTime:SetText(timestamptext)
end

local last_pages=0
function Appraiser:UpdateProgressBar()
	local pf = self.MainFrame.progressFrame

	local scanprogress
	local Scan = ZGV.Gold.Scan
	if Scan.state=="SS_QUERYING" then
		scanprogress=0.1
	elseif Scan.state=="SS_NEEDTOQUERY" then
			scanprogress=0.1
	elseif Scan.state=="SS_RECEIVING" then
		scanprogress=0.1
	elseif Scan.state=="SS_SCANNING" then
		scanprogress=0.1+0.8*(Scan.scan_progress or 0) -- 10 to 90
		--[[
		local total_pages = math.ceil((Scan.total_count or 0)/50)
		if total_pages and total_pages>0 then
			local current_page = Scan.scan_page or 0
			pf:SetPercent(current_page/total_pages*100)
		else
			pf:SetPercent(0)
		end
		--]]
	elseif Scan.state =="SS_ANALYZING" then
		scanprogress=0.9+0.1*(Scan.analysis_progress or 0) -- 90 to 100
	else
		scanprogress=0
	end

	--print(("msd=%d mst=%d mbsd=%d mbst=%d  %s + scanprogress %.1f"):format(self.manualScanningDone or -1,self.manualScanningTotal or -1, self.manualBuyScanningDone or -1,self.manualBuyScanningTotal or -1,Scan.state,scanprogress))

	if Scan.scan_pages and Scan.scan_pages>0 then last_pages=Scan.scan_pages end -- make sure it doesn't reset to 0. Just reuse the last value...
	local page=max(1,Scan.scan_page)
	local pages=max(page,last_pages)

	--if self.ActiveTab == "Inventory" then
		if self.manualScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end  -- SS_IDLE happens AFTER a scan, not before
			if pages>1 and pages<1000 then scanprogress = (((page-2)/pages) + (1/pages))*scanprogress end
			pf:SetPercent(((self.manualScanningDone-1+scanprogress)/self.manualScanningTotal) * 100)
		elseif self.manualBuyScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end
			if pages>1 and pages<1000 then scanprogress = (((page-2)/pages) + (1/pages))*scanprogress end
			pf:SetPercent(((self.manualBuyScanningDone-1+scanprogress)/self.manualBuyScanningTotal) * 100)
		elseif pages>1 and pages<1000 and (Scan.state=="SS_QUERYING" or Scan.state=="SS_NEEDTOQUERY" or Scan.state=="SS_RECEIVING" or Scan.state=="SS_SCANNING" or Scan.state=="SS_ANALYZING") then
			scanprogress = (((page-2)/pages) + (1/pages))
			pf:SetPercent(scanprogress*100)
		else
			pf:SetPercent(scanprogress*100)
		end
	--else
--		pf:SetPercent(0)
--	end
end

function Appraiser:ShowDisabledTooltip(object)
	GameTooltip:SetOwner(object,"ANCHOR_RIGHT") 
	GameTooltip:SetText("Due to a bug in Blizzard's in Auction House functionality,\npets and equipment can only be posted one by one.") 
	GameTooltip:Show()
end



--------------------------- Blizzard UI tabs
function Appraiser:OnZygorTabClick(tab)
	AuctionFrameTopLeft:Hide()
	AuctionFrameTop:Hide()
	AuctionFrameTopRight:Hide()
	AuctionFrameBotLeft:Hide()
	AuctionFrameBot:Hide()
	AuctionFrameBotRight:Hide()
	AuctionFrameMoneyFrame:Hide()
	AuctionFrameCloseButton:Hide()
	AuctionPortraitTexture:Hide()

	self.MainFrame:Show()
	Appraiser:SetCurrentTab(tab.ZygorTarget)
end

function Appraiser:OnNonZygorClick()
	AuctionFrameTopLeft:Show()
	AuctionFrameTop:Show()
	AuctionFrameTopRight:Show()
	AuctionFrameBotLeft:Show()
	AuctionFrameBot:Show()
	AuctionFrameBotRight:Show()
	AuctionFrameMoneyFrame:Show()
	AuctionFrameCloseButton:Show()
	AuctionPortraitTexture:Show()
	if not IsShiftKeyDown() then
		self:DeactivateBuyItem()
		self:AbortManualScan()
		Scan:SetState("SS_IDLE")
	end
	self.MainFrame:Hide()
end

function Appraiser:CreateSystemTab(target,text,num)
	local function TabChangeHook(self)
		Appraiser:HideHelpPage()
		if self.ZygorTab then
			Appraiser:OnZygorTabClick(self)
		else
			Appraiser:OnNonZygorClick()
		end
	
	end

	if not Appraiser.TabChange_Hooked then
		Appraiser:Hook("AuctionFrameTab_OnClick", TabChangeHook, true)
		Appraiser.TabChange_Hooked = true
	end

	local auctionTab = CreateFrame("Frame", nil, AuctionFrame)
	auctionTab:Hide()
	auctionTab:SetAllPoints()
	auctionTab:EnableMouse(true)
	auctionTab:SetMovable(true)
	auctionTab:SetScript("OnMouseDown", function() if AuctionFrame:IsMovable() then AuctionFrame:StartMoving() end end)
	auctionTab:SetScript("OnMouseUp", function() if AuctionFrame:IsMovable() then AuctionFrame:StopMovingOrSizing() end end)
	auctionTab.module = "Zygor Seller"

	local n = AuctionFrame.numTabs + 1

	local tab = CreateFrame("Button", "AuctionFrameTab"..n, AuctionFrame, "AuctionTabTemplate")
	tab:Hide()
	tab:SetID(n)
	tab:SetText("|cfffe6000"..text)
	tab:SetNormalFontObject(GameFontHighlightSmall)
	tab:SetPoint("LEFT", _G["AuctionFrameTab"..n-1], "RIGHT", -8, 0)
	tab:Show()
	tab.ZygorTab = true
	tab.ZygorTarget = target
	PanelTemplates_SetNumTabs(AuctionFrame, n)
	PanelTemplates_EnableTab(AuctionFrame, n)
end


function Appraiser:TabKeyNavigation(parent,orderarray,field)
	-- Get current index
	local orderindex,nextindex,previndex
	for oi,orderfield in pairs(orderarray) do if orderfield==field then orderindex=oi break end end

	nextindex,previndex = orderindex+1, orderindex-1
	if orderindex == #orderarray then nextindex=1 end
	if orderindex == 1 then previndex=#orderarray end

	parent[orderarray[orderindex]]:HighlightText(0,0)

	if ( IsShiftKeyDown() ) then
		parent[orderarray[previndex]]:SetFocus()
		parent[orderarray[previndex]]:HighlightText()
	else
		parent[orderarray[nextindex]]:SetFocus()
		parent[orderarray[nextindex]]:HighlightText()
	end
end

function Appraiser:ShowHelpPage()	
	Appraiser.MainFrame.HelpPage:Show()
	if Appraiser.Buy_Frame:IsVisible() then
		Appraiser.MainFrame.HelpPageContent:SetText(Appraiser.BuyTabInfo)
	else
		Appraiser.MainFrame.HelpPageContent:SetText(Appraiser.SellTabInfo)
	end
end

function Appraiser:HideHelpPage()
	Appraiser.MainFrame.HelpPage:Hide()
end

function Appraiser:ToggleHelpPage()
	if not Appraiser.MainFrame.HelpPage:IsVisible() then
		Appraiser:ShowHelpPage()
	else
		Appraiser:HideHelpPage()
	end
end

function Appraiser:ApplyDebugDisplay()
	if self.Buy_Frame then self.Buy_Frame.debugbutton:SetShown(ZGV.db.profile.debug_display) end
end

function Appraiser:ScrollToSellingItem()
	for ri,row in ipairs(self.Inventory_Frame.InventoryList.rows) do
		if row.item==self.ActiveSellingItem then return end  -- it's visible, never mind
	end
	-- scroll to show index'th row
	local index = self:GetSellingItemIndex(self.ActiveSellingItem)
	local count=#self.InventoryItems
	local halfrows=floor(self.Inventory_Frame.InventoryList:CountRows()/2)
	self.InventoryOffset=min(max(index,halfrows),count-halfrows)-halfrows
	self.needToUpdate=true
end

function Appraiser:GetSellingItemIndex(curitem)
	for ri,item in ipairs(self.InventoryItems) do
		if item==curitem then return ri end
	end
end