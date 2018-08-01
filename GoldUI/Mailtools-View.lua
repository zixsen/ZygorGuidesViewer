local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local HTMLColor=ZGV.HTMLColor

local DROPDOWN_STYLE=2

if not ZGV.Mailtools then ZGV.Mailtools = {} end
local Mailtools = ZGV.Mailtools

local ui = ZGV.UI
local SkinData = ui.SkinData

local MAILTOOLS_FRAME_SIZE={425,423}

local COLHEADER_FONTSIZE = 13
local COLFOOTER_FONTSIZE = 12

local COLLECTOR_COLUMNS = {
	{ title="", width=12, headerwidth=15, padding=3, titlepadding=4, titlej="LEFT", textj="LEFT", name="toggle", type="toggle", },
	{ title="", width=20, headerwidth=20, titlej="LEFT", textj="LEFT", name="icon", type="icon", },
	{ title="ITEMS", width=200, titlej="LEFT", textj="LEFT", name="name" },
	{ title="SOURCE", width=150, titlej="RIGHT", textj="RIGHT", name="price", },
}

local COLLECTOR_DATA = {
	ROW_COUNT = 12,
	LIST_WIDTH = 423,
	LIST_HEIGHT = 307,
	ROW_ICONSIZE = 20,
	POSX = 0,
	POSY = -30,
	STRATA = "HIGH",
}

local SENDER_COLUMNS = {
	{ title="", width=12, headerwidth=15, padding=3, titlepadding=4, titlej="LEFT", textj="LEFT", name="toggle", type="toggle", },
	{ title="", width=20, headerwidth=20, titlej="LEFT", textj="LEFT", name="icon", type="icon", },
	{ title="NAME", width=350, titlej="LEFT", textj="LEFT", name="name" },
}

local SENDER_DATA = {
	ROW_COUNT = 12,
	LIST_WIDTH = 423,
	LIST_HEIGHT = 307,
	ROW_ICONSIZE = 20,
	POSX = 0,
	POSY = -30,
	STRATA = "HIGH",
}

local TAB_NAVIGATION_SENDER = {"recipentSuggest", "subject", "sendgold", "sendsilver", "sendcopper"}

local SUBFRAME_HEADER = 30
local SUBFRAME_FOOTER = 20

function Mailtools:CreateMainFrame()
	self.MainFrame = CHAIN(ui:Create("Frame",UIParent,"ZygorMailtools"))
		:SetSize(unpack(MAILTOOLS_FRAME_SIZE))
		:SetPoint("TOPLEFT",MailFrame,"TOPLEFT")
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MailFrame:GetFrameLevel()+1)
		:SetToplevel(enable)
		.__END


	local MF = self.MainFrame 

	MF.Logo = CHAIN(MF:CreateTexture())
		:SetPoint("TOP",MF,"TOP",0,-3) 
		:SetSize(100,25)
		:SetTexture(SkinData("TitleLogo"))
	.__END
	MF.Title = CHAIN(MF:CreateFontString())
		:SetPoint("TOPLEFT",8,-8)
		:SetFont(FONT,14) 
		:SetTextColor(unpack(SkinData("TabSelectedColor")))
		:SetText("Collect")
	 .__END
	MF.close = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("TOPRIGHT",-5,-5)
		:SetSize(17,17)
		:SetScript("OnClick", function() CloseMail() end)
		.__END
	ZGV.F.AssignButtonTexture(MF.close,(SkinData("TitleButtons")),6,32)


	-- Footer
	MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("BOTTOMRIGHT",-5,5)
		:SetSize(15,15)
		:SetScript("OnClick",function() ZGV:OpenOptions() end)
	.__END
	ZGV.F.AssignButtonTexture(MF.FooterSettingsButton,(SkinData("TitleButtons")),5,32)

	MF.FooterStatus = CHAIN(MF:CreateFontString())
		:SetPoint("BOTTOMLEFT",5,5)
		:SetFont(FONTBOLD,12)
		:SetText("GOLD:")
	.__END

	MF.FooterStatusDetails = CHAIN(MF:CreateFontString())
		:SetPoint("LEFT",MF.FooterStatus ,"RIGHT",5,0)
		:SetFont(FONT,12)
		:SetText("no time")
	.__END

	MF.Collector_Frame = self:MakeCollectorTable()
	MF.Sender_Frame = self:MakeSenderTable()
	MF:Hide()
end

function Mailtools:MakeCollectorTable()	
	local frame = CHAIN(ui:Create("Frame",self.MainFrame ,"ZM_Collector_Frame"))
		:SetPoint("TOPLEFT",1,-SUBFRAME_HEADER)
		:SetPoint("BOTTOMRIGHT",-1,SUBFRAME_FOOTER+1)
		:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
		:SetBackdropBorderColor(0,0,0,0)
		.__END

	-- Header
	frame.header = CHAIN(CreateFrame("Frame", nil, frame))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT",frame,"TOPRIGHT",0,-25)
	.__END
		frame.header.mailcountlabel = CHAIN(frame.header:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("TOPLEFT",4,-3)
			:SetJustifyH("LEFT")
			:SetSize(200,20)
			:SetText("Mail: ...")
			.__END
		frame.header.pagecountlabel = CHAIN(frame.header:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("TOPRIGHT",-22,-3)
			:SetJustifyH("RIGHT")
			:SetSize(200,20)
			:SetText("Page: ...")
			.__END
		frame.header.decor = CHAIN(ui:Create("Frame",frame.header,nil))
			:SetPoint("TOPLEFT",frame.header,"BOTTOMLEFT")
			:SetPoint("TOPRIGHT",frame.header,"BOTTOMRIGHT",0,-1)
			:SetHeight(1)
			:SetFrameLevel(frame:GetFrameLevel()+3)
			:SetBackdropColor(0.3,0.3,0.3,1)
			:SetBackdropBorderColor(0,0,0,0)
		.__END
	
	-- Content
	frame.maillist = CHAIN(ui:Create("ScrollTable",frame,"ZM_Collector_Frame",COLLECTOR_COLUMNS,COLLECTOR_DATA))
		:SetBackdropBorderColor(0,0,0,0)
		:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
		.__END

	frame.maillist:SetScript("OnMouseWheel", function(self,delta)
		Mailtools.collectoroffset=Mailtools.collectoroffset-delta
		Mailtools.needToUpdate=true
		Mailtools.hideTooltip=true
	end)
	frame.maillist.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Mailtools.collectoroffset=math.round(offset)
		Mailtools.needToUpdate=true
	end)

	frame.maillist.col_toggle:RegisterToggleCallback(function()
		Mailtools:ToggleAllInbox(frame.maillist.col_toggle:IsChecked())
	end)

	for n=1,COLLECTOR_DATA.ROW_COUNT do
		local row = frame.maillist.rows[n]
		row:SetScript("OnClick",function() if not row.item then return end row.item.selected = not row.item.selected Mailtools.needToUpdate=true end)
		row.toggle:RegisterToggleCallback(function()
			row.item.selected = row.toggle:IsChecked()
			Mailtools.needToUpdate = true
		end)
	end

	--Footer
	frame.footer = CHAIN(CreateFrame("FRAME",nil,frame))
		:SetPoint("BOTTOMLEFT",frame,"BOTTOMLEFT")
		:SetPoint("BOTTOMRIGHT",frame,"BOTTOMRIGHT")
		:SetHeight(30)
	.__END
		frame.goldlabel = CHAIN(frame.footer:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",5,0)
			:SetJustifyH("LEFT")
			:SetSize(200,20)
			:SetText("Total gold: ...")
			.__END
		frame.CollectButton = CHAIN(ui:Create("Button",frame.footer,nil,2))
			:SetSize(85,20)
			:SetPoint("RIGHT",-5,0)
			:SetFont(FONTBOLD,14)
			:SetText("Collect")
			:SetScript("OnClick", function() if not self.soft_disabled then Mailtools:StartCollecting() end end)
			:SetScript("OnEnter",function(self) 
				CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
				:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
				:Show() 
				end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		.__END

		frame.CollectAllToggle = CHAIN(ui:Create("ToggleButton",frame.footer))
			:SetPoint("RIGHT",frame.CollectButton,"LEFT",-100,0) 
			:SetFont(FONT,COLHEADER_FONTSIZE)
			:SetText("Auto-collect")
			:SetToggle(ZGV.db.profile.collectall)
			:SetScript("OnEnter",function(self) 
				CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
				:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
				:Show() 
				end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		.__END
		frame.CollectAllToggle.tooltip = "Quickly collect all mails"
		
		frame.CollectAllToggle:RegisterToggleCallback(function()
			ZGV.db.profile.collectall = frame.CollectAllToggle:IsChecked()
		end)

	if not Mailtools.CollectorTab then
		Mailtools.CollectorTab = Mailtools:CreateSystemTab("Collector","Collect",1)
	else 
		Mailtools.CollectorTab:Show()
	end
	--frame:Hide()
	return frame
end

function Mailtools:MakeSenderTable()	
	local frame = CHAIN(ui:Create("Frame",self.MainFrame ,"ZM_Sender_Frame"))
		:SetPoint("TOPLEFT",1,-SUBFRAME_HEADER)
		:SetPoint("BOTTOMRIGHT",-1,SUBFRAME_FOOTER+1)
		:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
		:SetBackdropBorderColor(0,0,0,0)
		.__END

	-- Header
	frame.header = CHAIN(CreateFrame("Frame", nil, frame))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT",frame,"TOPRIGHT",0,-25)
	.__END
		frame.recipentLabel = CHAIN(frame.header:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("LEFT",5,0)
			:SetJustifyH("LEFT")
			:SetWidth(25)
			:SetText("To: ")
		.__END
		frame.recipentSuggest = CHAIN(ZGV.SuggestBox:New(frame.header,"senderlist"))
			:ClearAllPoints()
			:SetSize(100,17)
			:SetPoint("LEFT",frame.recipentLabel ,"RIGHT",5,-1)
			:SetText(ZGV.db.char.last_mail_target or "")
			.__END
		frame.recipentSuggest:SetPoint("LEFT",frame.recipentLabel,"RIGHT",5,0)

		frame.recipentSuggest.EditBox:SetScript("OnTabPressed", function() Mailtools:TabKeyNavigation(frame,TAB_NAVIGATION_SENDER,"recipentSuggest") end)

		frame.subject = CHAIN(ui:Create("EditBox",frame.header))
			:SetSize(150,17)
			:SetPoint("RIGHT",-10,0)
			:SetText("")
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,1,1,1)
			:SetScript("OnTabPressed", function() Mailtools:TabKeyNavigation(frame,TAB_NAVIGATION_SENDER,"subject") end)
			.__END
			frame.subjectlabel = CHAIN(frame.header:CreateFontString())
				:SetFont(FONT,12)
				:SetPoint("RIGHT",frame.subject ,"LEFT",-5,0)
				:SetJustifyH("LEFT")
				:SetWidth(50)
				:SetText("Subject")
				.__END
		frame.decor = CHAIN(ui:Create("Frame",frame.header,nil))
			:SetPoint("TOPLEFT",frame.header,"BOTTOMLEFT")
			:SetPoint("TOPRIGHT",frame.header,"BOTTOMRIGHT",0,-1)
			:SetHeight(1)
			:SetFrameLevel(frame:GetFrameLevel()+3)
			:SetBackdropColor(0.3,0.3,0.3,1)
			:SetBackdropBorderColor(0,0,0,0)
		.__END

	-- Content
	frame.itemlist = CHAIN(ui:Create("ScrollTable",frame,"ZM_Sender_Itemlist",SENDER_COLUMNS,SENDER_DATA))
		:SetBackdropBorderColor(0,0,0,0)
		:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
		.__END

	frame.itemlist:SetScript("OnMouseWheel", function(self,delta)
		Mailtools.senderoffset=Mailtools.senderoffset-delta
		Mailtools.needToUpdate=true
		Mailtools.hideTooltip=true
	end)
	frame.itemlist.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Mailtools.senderoffset=math.round(offset)
		Mailtools.needToUpdate=true
	end)

	frame.itemlist.col_toggle:RegisterToggleCallback(function()
		Mailtools:ToggleAllInventory(frame.itemlist.col_toggle:IsChecked())
	end)

	for n=1,SENDER_DATA.ROW_COUNT do
		local row = frame.itemlist.rows[n]
		row:SetScript("OnClick",function()  end)
		row:SetScript("OnClick",function(self,button)
			if not row.item then return end 
			if button == "RightButton" then
				Mailtools:SenderRowMenu(row)
			else
				row.item.selected = not row.item.selected 
				Mailtools.needToUpdate=true
			end
		end)
		row.toggle:RegisterToggleCallback(function()
			row.item.selected = row.toggle:IsChecked()
			Mailtools.needToUpdate = true
		end)
	end
	

	--Footer
	frame.footer = CHAIN(CreateFrame("FRAME",nil,frame))
		:SetPoint("BOTTOMLEFT",frame,"BOTTOMLEFT",0,0)
		:SetPoint("BOTTOMRIGHT",frame,"BOTTOMRIGHT")
		:SetHeight(30)
	.__END
	frame.sendgoldlabel = CHAIN(frame.footer:CreateFontString())
		:SetFont(FONT,12)
		:SetPoint("LEFT",5,0)
		:SetJustifyH("LEFT")
		:SetWidth(90)
		:SetText("Send money:")
		.__END
		frame.sendgold = CHAIN(ui:Create("EditBox",frame.footer))
			:SetSize(47,19)
			:SetPoint("LEFT",frame.sendgoldlabel ,"RIGHT",5,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(6)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.93,0,1)
			:SetScript("OnTabPressed", function() Mailtools:TabKeyNavigation(frame,TAB_NAVIGATION_SENDER,"sendgold") end)
			:SetScript("OnTextChanged", function() Mailtools:GetPostalFee() end)
			.__END
		frame.sendsilver = CHAIN(ui:Create("EditBox",frame.footer))
			:SetSize(20,19)
			:SetPoint("LEFT",frame.sendgold ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(0.97,0.97,1,1)
			:SetScript("OnTabPressed", function() Mailtools:TabKeyNavigation(frame,TAB_NAVIGATION_SENDER,"sendsilver") end)
			:SetScript("OnTextChanged", function() Mailtools:GetPostalFee() end)
			.__END
		frame.sendcopper = CHAIN(ui:Create("EditBox",frame.footer))
			:SetSize(20,19)
			:SetPoint("LEFT",frame.sendsilver ,"RIGHT",12,0)
			:SetText("0")
			:SetNumeric(true)
			:SetMaxLetters(2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.5,0.5,0.5,1)
			:SetTextColor(1,0.66,0.60,1)
			:SetScript("OnTabPressed", function() Mailtools:TabKeyNavigation(frame,TAB_NAVIGATION_SENDER,"sendcopper") end)
			:SetScript("OnTextChanged", function() Mailtools:GetPostalFee() end)
			.__END
		frame.costlabel = CHAIN(frame.footer:CreateFontString())
			:SetFont(FONT,12)
			:SetPoint("LEFT",frame.sendcopper ,"RIGHT",20,0)
			:SetJustifyH("RIGHT")
			:SetWidth(90)
			:SetText("Cost: 30s")
			.__END

		
		frame.SendButton = CHAIN(ui:Create("Button",frame.footer,nil,2))
			:SetSize(85,20)
			:SetPoint("RIGHT", -5,0 )
			:SetFont(FONTBOLD,14)
			:SetText("Send")
			:SetScript("OnClick", function() if not self.soft_disabled then Mailtools:SendSelected() end end)
			:SetScript("OnEnter",function(self) 
				CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
				:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
				:Show() 
				end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		.__END

	if not Mailtools.SenderTab then
		Mailtools.SenderTab = Mailtools:CreateSystemTab("Sender","Send",2)
	else 
		Mailtools.SenderTab:Show()
	end

	--frame:Hide()
	return frame
end

function Mailtools:SetCurrentTab(tabname)
	if not self.MainFrame then return end

	local windows = {"Collector","Sender"}
	for i,framename in pairs(windows) do
		self.MainFrame[framename.."_Frame"]:Hide()
	end
	self.MainFrame[tabname.."_Frame"]:Show()

	self.ActiveTab = tabname

	Mailtools.MainFrame.Sender_Frame.recipentSuggest.frame:Hide()

	local headers = {["Collector"]="Collect",["Sender"]="Send"}

	Mailtools.MainFrame.Title:SetText(headers[tabname])

	Mailtools:Update()
end

function Mailtools:ShowWindow()
	if not self.MainFrame then self:CreateMainFrame() end
	ZGV.Mailtools.collectoroffset=0
	ZGV.Mailtools.senderoffset=0
end

function Mailtools:HideWindow()
	if self.MainFrame then
		self.MainFrame:Hide()
	end
end

function Mailtools:CreateSystemTab(target,text,num)
	local function OnZygorTabClick(self)
		PanelTemplates_SetTab(MailFrame, self:GetID())
		ButtonFrameTemplate_HideButtonBar(MailFrame)
		InboxFrame:Hide()
		OpenMailFrame:Hide()
		SendMailFrame:Hide()
		SetSendMailShowing(false)
		
		MailFrameInset:Hide()
		MailFramePortrait:Hide()
		MailFramePortraitFrame:Hide()

		MailFrameBg:Hide()
		if MailFrameText then MailFrameText:Hide() end
		MailFrameTitleBg:Hide()
		MailFrameTitleText:Hide()
		MailFrameCloseButton:Hide()
		
		MailFrameLeftBorder:Hide()
		MailFrameTopBorder:Hide()
		MailFrameRightBorder:Hide()
		MailFrameBottomBorder:Hide()
		MailFrameTopTileStreaks:Hide()
		MailFrameTopRightCorner:Hide()
		MailFrameBotLeftCorner:Hide()
		MailFrameBotRightCorner:Hide()

		if Mailtools.mailportrait then Mailtools.mailportrait:Hide() end

		MailFrame:SetFrameLevel(1)

		if self.target then
			PanelTemplates_SetTab(MailFrame, self:GetID())
			Mailtools.MainFrame:Show()
			Mailtools:SetCurrentTab(self.target)
		end
	end
	
	local function OnNonZygorClick()
		MailFrameLeftBorder:Show()
		MailFrameTopBorder:Show()
		MailFrameRightBorder:Show()
		MailFrameBottomBorder:Show()
		MailFrameTopTileStreaks:Show()
		MailFrameTopRightCorner:Show()
		MailFrameBotLeftCorner:Show()
		MailFrameBotRightCorner:Show()
		
		MailFrameInset:Show()
		MailFramePortrait:Show()
		MailFramePortraitFrame:Show()
		MailFrameBg:Show()
		if MailFrameText then MailFrameText:Show() end
		MailFrameTitleBg:Show()
		MailFrameTitleText:Show()
		MailFrameCloseButton:Show()

		if Mailtools.mailportrait then Mailtools.mailportrait:Show() end
		
		if not Mailtools.MainFrame then return end
		Mailtools.MainFrame:Hide()
	end

	
	local n = MailFrame.numTabs + 1
	local tab = CreateFrame("Button", "MailFrameTab"..n, MailFrame, "FriendsFrameTabTemplate")

	-- locate the anonymous portait icon and store it
	for i,v in pairs({MailFrame:GetRegions()}) do
		if not v:GetName() and (v.GetTexture and v:GetTexture()=="Interface\\MailFrame\\Mail-Icon") then
			Mailtools.mailportrait = v
			break
		end
	end

	tab:Hide()
	tab:SetID(n)
	tab.target = target
	--tab:SetText("|T"..ZGV.DIR.."\\Skins\\zglogo_single:0|t |cfffe6000"..text) --
	tab:SetText("|cfffe6000"..text) --
	tab:SetNormalFontObject(GameFontHighlightSmall)
	tab:SetPoint("LEFT", _G["MailFrameTab"..n-1], "RIGHT", -8, 0)
	tab:Show()
	tab:SetScript("OnClick", OnZygorTabClick)
	PanelTemplates_SetNumTabs(MailFrame, n)
	PanelTemplates_EnableTab(MailFrame, n)

	--MailFrame:HookScript("MailFrameTab_OnClick", OnOtherTabClick)

	if not Mailtools.OnOtherTabClick_Hooked then
		Mailtools:Hook("MailFrameTab_OnClick", OnNonZygorClick, true)
		Mailtools.OnOtherTabClick_Hooked = true
	end

	return tab
end

function Mailtools:TabKeyNavigation(parent,orderarray,field)
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
