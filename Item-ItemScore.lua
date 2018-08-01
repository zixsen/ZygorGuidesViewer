local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local G = _G
local CHAIN = ZGV.ChainCall

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local ItemScore = ZGV.ItemScore

local Logs = {}
ItemScore.Logs = Logs

local Gratuity = LibStub("LibGratuity-3.0")

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local function flip_array(arr)
	local flipped = {}
	for i,name in ipairs(arr) do flipped[name]=i end
	return flipped
end

-- Blizzard will NOT play nice... Items only return localized data, how fun. Delocalize everything into numbers, then...
-- Classes last updated for MoP
local itemclasses = {
	[GetItemClassInfo(LE_ITEM_CLASS_WEAPON)]=1,
	[GetItemClassInfo(LE_ITEM_CLASS_ARMOR)]=2,
	[GetItemClassInfo(LE_ITEM_CLASS_CONTAINER)]=3,
	-- LEGION TEMP FIX, GICI returns nil
	--[GetItemClassInfo(LE_ITEM_CLASS_CONSUMABLE)]=4,
	[GetItemClassInfo(LE_ITEM_CLASS_GLYPH)]=5,
	[GetItemClassInfo(LE_ITEM_CLASS_TRADEGOODS)]=6,
	[GetItemClassInfo(LE_ITEM_CLASS_RECIPE)]=7,
	[GetItemClassInfo(LE_ITEM_CLASS_GEM)]=8,
	[GetItemClassInfo(LE_ITEM_CLASS_MISCELLANEOUS)]=9,
	[GetItemClassInfo(LE_ITEM_CLASS_QUESTITEM)]=10,
	[GetItemClassInfo(LE_ITEM_CLASS_BATTLEPET)]=11,
	}

local itemweapsubclasses = {
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_AXE1H)] = 1,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_AXE2H)] = 2,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_BOWS)] = 3,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_GUNS)] = 4,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_MACE1H)] = 5,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_MACE2H)] = 6,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_POLEARM)] = 7,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_SWORD1H)] = 8,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_SWORD2H)] = 9,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_STAFF)] = 10,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_UNARMED)] = 11,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_GENERIC)] = 12,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_DAGGER)] = 13,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_THROWN)] = 14,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_CROSSBOW)] = 15,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_WAND)] = 16,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_FISHINGPOLE)] = 17,
	[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON,LE_ITEM_WEAPON_WARGLAIVE)] = 18
	}

local itemarmsubclasses = {
	[GetItemSubClassInfo(LE_ITEM_CLASS_ARMOR,LE_ITEM_ARMOR_GENERIC)] = 1,
	[GetItemSubClassInfo(LE_ITEM_CLASS_ARMOR,LE_ITEM_ARMOR_CLOTH)] = 2,
	[GetItemSubClassInfo(LE_ITEM_CLASS_ARMOR,LE_ITEM_ARMOR_LEATHER)] = 3,
	[GetItemSubClassInfo(LE_ITEM_CLASS_ARMOR,LE_ITEM_ARMOR_MAIL)] = 4,
	[GetItemSubClassInfo(LE_ITEM_CLASS_ARMOR,LE_ITEM_ARMOR_PLATE)] = 5,
	[GetItemSubClassInfo(LE_ITEM_CLASS_ARMOR,LE_ITEM_ARMOR_COSMETIC)] = 6,
	[GetItemSubClassInfo(LE_ITEM_CLASS_ARMOR,LE_ITEM_ARMOR_SHIELD)] = 7
	}

local class_ids = {"WEAPON","ARMOR"}
local weap_ids = {"AXE","TH_AXE","BOW","GUN","MACE","TH_MACE","TH_POLE","SWORD","TH_SWORD","TH_STAFF","FIST","MISCWEAP","DAGGER","THROWN","CROSSBOW","WAND","FISHPOLE","WARGLAIVE"}
local arm_ids = {"MISCARM","CLOTH","LEATHER","MAIL","PLATE","COSMETIC","SHIELD",} --Relics are out.

ItemScore.ItemClassData={itemclasses,itemweapsubclasses,itemarmsubclasses,class_ids,weap_ids,arm_ids}

-- Offhands are MISCARM.
-- Twohanders are "TH" and not "2H".
-- Last stat update. 06/30/2013
-- TODO add speed weights if desired. WEAPONSPEED = {ohweight = #, mhweight = #} Add DAMAGE?

-- Build simpler defaults table for use in options
ZGV.ItemScore.Defaults = {}
for class,specs in pairs(ItemScore.rules) do
    ZGV.ItemScore.Defaults[class] = {}
    for spec,data in pairs(specs) do
        ZGV.ItemScore.Defaults[class][spec] = {}

        for name,v in pairs(data.stats) do
		table.insert(ZGV.ItemScore.Defaults[class][spec],{name=name,weight=v})
	end
	sort(ZGV.ItemScore.Defaults[class][spec],function(a,b) return a.name<b.name end)
    end
end 

-- Fix rules for any common rules
for class,classrules in pairs(ItemScore.rules) do
	for spec,rule in pairs(classrules) do
		local stats = rule["stats"]
		local types = rule["itemtypes"]

		stats.DAMAGE_PER_SECOND = stats.DPS stats.DPS = nil -- Switch DPS to the full string.

		-- You can always wear lower tier items. Just not higher.
		if types["PLATE"] then types["MAIL"] = types["MAIL"] or -1 end
		if types["MAIL"] then types["LEATHER"] = types["LEATHER"] or -1 end
		if types["LEATHER"] then types["CLOTH"] = types["CLOTH"] or -1 end
	end
end

ItemScore.SC_NORULES = "no rules"
ItemScore.SC_BADSLOT = "bad slot"
ItemScore.SC_NOTYET = "not ready"
ItemScore.SC_BADITEM = "bad item"
ItemScore.SC_NOTFORU = "not for you"
ItemScore.SC_LEVELREQ = "level req"
ItemScore.SC_BADSTAT = "bad stat"
ItemScore.SC_LOWLEVEL = "low level"
ItemScore.SC_BADPARAM = "bad param"
ItemScore.SC_OK = "scored ok"

function ItemScore:SetFilters(playerclass,playerspec,playerlevel)
	self.playerclass = playerclass or (select(2,UnitClass("player")))
	self.playerclassName = (select(1,UnitClass("player")))
	self.playerspec = playerspec or GetSpecialization() or 1 -- Returns nil if < level 10
	self.playerspecName = (select(2,GetSpecializationInfo(self.playerspec)))

	self.playerlevel = playerlevel or UnitLevel("player")


	self.orgRuleSet = ItemScore.rules[self.playerclass][self.playerspec]

	self.curRuleSet = {}
	self.curRuleSet.itemtypes = {}
	self.curRuleSet.stats = {}

	-- Copy itemtypes as they are
	for i,v in pairs(ItemScore.rules[self.playerclass][self.playerspec].itemtypes) do self.curRuleSet.itemtypes[i]=v end

	-- Copy stats as they are
	for i,v in pairs(ItemScore.rules[self.playerclass][self.playerspec].stats) do self.curRuleSet.stats[i]=v end

	-- Update stats with users profile
	local playermask = "gear_"..self.playerclass.."_"..tostring(self.playerspec).."_"
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		if ZGV.db.profile[playermask..(stat.blizz)] then
			self.curRuleSet.stats[(stat.blizz)]= tonumber(ZGV.db.profile[playermask..(stat.blizz)] or 0)
		end
	end

	self:SetDualWield()
	self:GetBestGemPerIlvl()
	ItemScore.ProcScore:PreparePatterns()
	ItemScore.ProcScore:GetPlayerStats()
end

function ItemScore:SetDualWield()
	self.playerdualwield=nil
	self.playerdual2h=nil

	if not self.playerspec or self.playerspec==0 then return end

	if self.playerclass=="DEATHKNIGHT" and self.playerspec==2 -- Frost DKs
	or self.playerclass=="ROGUE" -- any DHs
	or self.playerclass=="DEMONHUNTER" -- any DHs

	or self.playerclass=="WARRIOR" and self.playerspec==2 and self.playerlevel>=10-- Fury Warriors
	or self.playerclass=="MONK" and self.playerspec==3 and self.playerlevel>=10 -- Windwalker Monks
	or self.playerclass=="SHAMAN" and self.playerspec==2 and self.playerlevel>=10 -- Enhancement Shaman
	or self.playerclass=="DRUID" and (self.playerspec==2 or self.playerspec==3)  and self.playerlevel>=10 -- Feral/Guardian Druid
	then
		self.playerdualwield=true
	end

	-- Dual Wielding 2hs for warriors.
	if IsSpellKnown(46917) then self.playerdual2h=true end
end

function ItemScore:IsGoodEquipSlot(equipslot)
	if not equipslot then return end
	return not not self.possEquipSlots[equipslot]
end

function ItemScore:IsValidClass(itemlink)
	Gratuity:SetHyperlink(itemlink)
	for num=1,Gratuity:NumLines() do
		local line=Gratuity:GetLine(num)
		if not line then return -1, ItemScore.SC_NOTYET, "item not ready yet" end
		if line:match( gsub(ITEM_CLASSES_ALLOWED,"%%s","(.*)")) then
			if not line:match(self.playerclassName) then
				return false,ItemScore.SC_NOTFORU,"wrong class"
			end
		end

		if line:match( gsub(ITEM_REQ_SPECIALIZATION,"%%s","(.*)")) then
			if not line:match(self.playerclassName) then
				return false,ItemScore.SC_NOTFORU,"wrong spec"
			end
		end
	end
	return true,ItemScore.SC_OK
end

-- EVIL ASSUMPTION: Let's use a different slot, INVTYPE_2HWEAPON, for two-handers. And INVTYPE_SHIELD for shields.

--[[
  Basic scoring function that also makes sure the user is able to equip the item.
	Parameters:
		itemlink - Blizzard hyperlink for the item. Needed for percise stat values. [Item] and [Item of the Bear] have the same id but different stats.
		invslot - Slot this item is going to be tested for.
		allowbad - used for the GearFinder to find the next upgrade. Skips returning due to level restrictions
		verbose - Extra debug messages.
		hack - Only used in ZGV.Testing to make the specialization popup show up.
	Return
		value - Score of the item.
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
--]]

function ItemScore:GetItemScore(itemlink, invslot, allowbad, verbose)
	-- Player information not available
	if not self.curRuleSet then return -1, ItemScore.SC_NOTYET, "rules not set yet." end

	if not ZGV.db.profile.autogear then return -1,ItemScore.SC_NOTYET,"autogear disabled" end

	if not itemlink then self:Debug("No itemlink given! %s",debugstack(1)) end

	-- Player is over 10 and does not have a specialization. No scores until they choose a spec.
	if self.playerlevel >= 10 and not GetSpecialization() then

		if ZGV.DEV and hack then error("no spec? hack!!") end
	
		if not self.SpecPopup then
			self.SpecPopup = ZGV.PopupHandler:NewPopup("ZygorSpecPopup","default")
			self.SpecPopup:SetText(L['itemscore_ae_nospec'])
			self.SpecPopup.OnAccept = function(self)
				 -- Show specialization window when accept is clicked.
				if not PlayerTalentFrame:IsVisible() then
					TalentMicroButton:Click()
				end
			end

			self.SpecPopup.returnMinimizeSettings = function(self)
				local notificationText = L['notifcenter_spec_text']
				local tooltipText = L['notifcenter_gen_popup_tooltip']

				local function OnOpen() -- TODO doesn't this return 1 at > 15?
					if GetSpecialization() and not ZGV.Testing.DontHidePopups then
						ZGV.NotificationCenter.RemoveButton(self:GetName())
					end
				end

				return notificationText,L['notifcenter_gear_title'],tooltipText,nil,nil,nil,nil,OnOpen
			end
		end

		-- Show if no .time set yet. Otherwise show every hour.
		if not self.SpecPopup.time or (GetTime() - self.SpecPopup.time) > 3600 then
			self.SpecPopup:Show()
			self.SpecPopup.time = GetTime()
		end

		--[[
		TODO: [Andrew]
		I feel like it should do 3 things,
		Accept - opens their talent panel, awaits a spec, 
		Decline - doesn't ask again about this (maybe for the play session),
		Hit X - sends to Notification Center, doesn't ask again as long as it's in the NC
		--]]

		self:Debug("Not giving a score because a spec is not picked.")
		return -1, ItemScore.SC_NOTYET, "spec not picked"
	end

	-- INVTYPE_WEAPON is not a slot option. Should use INVTYPE_WEAPONMAINHAND or INVTYPE_WEAPONOFFHAND or one of the specific types.
	if invslot == "INVTYPE_WEAPON" then return -1,ItemScore.SC_BADPARAM,"invslot should not be "..invslot end

	local rule = self.curRuleSet
	local subScore, code, reason

	local value=0 -- returns with the ItemScore if nothing is returned before.
	local item = self:GetItemStatsWithTooltip(itemlink)
	if not item then return -1, ItemScore.SC_NOTYET, "item not found (yet)"end

	local itemid = ZGV.ItemLink.GetItemID(itemlink)

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	local function _with_debug(code,reason)
		if verbose then do_verbose("Item dropped because... |cffff0000[%s] |cffff8800%s|r",code,reason) end
		return -1,code,reason
	end

	local itemslot = item.info.equipslot

	if verbose then do_verbose("ItemScore calculating: |cff88ffff%s|r (%s)  type: %s  slot: %s  in slot: %s",item.info.prettylink,item.info.itemlink,item.info.subclass,item.info.equipslot,tostring(invslot)) end

	if verbose then do_verbose("Tooltip: %s",item.tooltip and table.concat(item.tooltip,"; ") or "unknown?") end
	
	-- We have a set slot we are testing this item for. If it doesn't go in that slot then return -1
	if invslot then
		if ( invslot == "INVTYPE_WEAPONMAINHAND" and ( itemslot == "INVTYPE_WEAPON"		-- If we only want MH then WEAPON is okay too.
							       or itemslot == "INVTYPE_RANGEDRIGHT"	-- Casters use wands
							       or itemslot == "INVTYPE_RANGED"		-- Hunters used bows.
							     )
		    )
		or ( invslot == "INVTYPE_WEAPONOFFHAND" and itemslot == "INVTYPE_WEAPON" )		-- Only want OH so WEAPON is okay too.
		or ( invslot == "INVTYPE_CHEST" and itemslot == "INVTYPE_ROBE" ) then
			-- it's OK!
		elseif invslot ~= itemslot then
			return _with_debug(ItemScore.SC_BADSLOT,"|cffff8888 item for "..itemslot.." doesn't match slot "..invslot)
		end
	end

	-- Score for being able to equip the item
	subScore, code, reason = self:CanEquipItem(item,allowbad,verbose)
	if subScore == "REJECT" then return _with_debug(code, reason) end
	local multiplier = subScore or 1	-- Save this to use after the whole score is calculated
	if verbose then do_verbose("  MULTIPLER %.1f",multiplier) end

	-- Score Item level -- with wod new item model (same id for all versions), itemlevel can be undervalued on upgraded items, breaking the score
	--[[
	if self.playerlevel<GetMaxPlayerLevel() then
		-- Item level is always weighted. Pre Max level it isn't very important so assign it minimum value so that items CAN NOT get scored 0
		value = value + item.info.ilevel * .01
		if verbose then  self:Debug("&_SUB0   + ILEVEL %.1f, sub weighted",item.info.ilevel * .01)  end
	else
		-- Item level is a pretty good indicator. Weight it heavily.
		value = value + item.info.ilevel * 20
		if verbose then  self:Debug("&_SUB0   + ILEVEL %.1f, over weighted",item.info.ilevel * 20)  end
	end
	--]]

	-- Check if class can use it
	local vc_valid,vc_code,vc_comment = ItemScore:IsValidClass(itemlink)
	if not vc_valid then return 0,vc_code,vc_comment end


	-- Score on stats
	subScore, code, reason = self:ScoreItemStats(item, invslot, itemlink, verbose)
	if subScore < 0 then return _with_debug(code, reason) end
	value = value + subScore

	value = value * multiplier

	-- Add bonus weights for heirlooms
	local hscore, hcode, hdesc = ItemScore:UsableHeirloomItem(itemlink,self.verbose)
	value = value + (hscore or 0)

	-- Add score of item effect, if it exists
	if ZGV.db.profile.geareffects then
		local rule = self.curRuleSet
		if item.effect then
			item.debug.old_weight = value
			for statname,statvalue in pairs(item.effect) do
				local rulevalue = rule.stats[statname]
				if statrule then
					if verbose then do_verbose("Effect: %s %s, = %s",statname,statvalue,(statvalue*rulevalue)) end
					value = value + statvalue*(rulevalue or 1)
				end
			end
		end
	end

	if item.info.quality==6 and item.info.ilevel>749 and ItemScore.playerlevel<=110 then
		value = value * 1000
	end


	if verbose then  do_verbose("  = |cffccff88%d",value) end
	return value,ItemScore.SC_OK,"no comment"
end

--[[
	Scores an item based on only the stats. Not worried about if the item is usable or not.

	Parameters:
		item - item table or itemid
		invslot - Slot this item is going to be tested for.
		itemlink - Blizzard hyperlink for the item. Needed for precise stat values. [Item] and [Item of the Bear] have the same id but different stats.
		verbose - Give it a table to get extra debug messages.
	Return
		value - Score of the item.
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
--]]

function ItemScore:ScoreItemStats(item, invslot, itemlink, verbose)
	-- Player information not available
	if not self.curRuleSet then return -1, ItemScore.SC_NOTYET, "rules not set yet." end

	local rule = self.curRuleSet

	-- If not a table already then it is itemid/itemlink
	if type(item) ~= "table" then
		item = self:GetItemStatsWithTooltip(item)
		if not item then return -1, ItemScore.SC_NOTYET, "item not ready yet" end
	end

	local value = 0

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	-- if not max level
	if self.playerlevel<GetMaxPlayerLevel() then
		-- If below level 20 then we will assign a value to Armor because a lot of items have no stats at that low level.
		if self.playerlevel <= 20 and item.stats.RESISTANCE0_NAME then
			value = value + (item.stats.RESISTANCE0_NAME)
			if verbose then  do_verbose("  + ARMOR weighted at %.1f",(item.stats.RESISTANCE0_NAME))  end
		end
	--else
		-- prevent level 1 item from being suggested over a lvl 90 item with 1 badstat
		--if item.info.ilevel < GetMaxPlayerLevel()*3 then return -1, ItemScore.SC_LOWLEVEL, "itemlevel is below maxlevel*3." end
	end

	for statname,statvalue in pairs(item.stats) do
		if statname:find("^ITEM_MOD_") or statname:find("^RESISTANCE%d") then
			statname = statname:gsub("^ITEM_MOD_",""):gsub("^CR_","") :gsub("_SHORT$","") :gsub("_NAME$","") :gsub("_RATING$","")
			if statname=="RESISTANCE0" then statname="ARMOR" end

			local rulevalue = rule.stats[statname]
			value = value + statvalue*(rulevalue or 0)
			if verbose then do_verbose("  + |cff00ff00%.1f %s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r",statvalue,statname, rulevalue or 0, statvalue*(rulevalue or 0))  end
		--[[
		elseif statname:find("^EMPTY_SOCKET") then
			local socketname = statname:gsub("^EMPTY_SOCKET_","")
			--local statweight = (rule.sockets and rule.sockets[socketname]) or SOCKET_WEIGHT

			local statweight = ItemScore:GetSocketWeight(socketname,item.info.ilevel)

			-- Gems below max level are not very important. They probably won't get value so weight them lightly.
			if self.playerlevel < GetMaxPlayerLevel() then
				statweight = statweight*0.3
			end
		

			value = value + statvalue*statweight

			if verbose then do_verbose("  + |cff00ff00%.1f %s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r",statvalue,statname, statweight or 1, statvalue*(statweight or 1))  end
		--]]
		end
	end

	if value==0 and item.stats.ITEM_MOD_DAMAGE_PER_SECOND_SHORT then -- statless weapons are scored among themselves using fraction of their dps
		value=item.stats.ITEM_MOD_DAMAGE_PER_SECOND_SHORT/100
	end

	return value
end

--[[
	Parameters:
		item - item table or itemid
		allowbad - used for the GearFinder to find the next upgrade. Skips returning due to level restrictions
		verbose - Extra debug messages.
	Return
		value - -1 for false, 1 for true
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
--]]

function ItemScore:CanEquipItem(item,allowbad,verbose)
	local rule = self.curRuleSet
	-- Player information not available
	if not rule then return "REJECT", ItemScore.SC_NOTYET, "rules not set yet." end

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(verbose,s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	-- If not a table already then it is itemid/itemlink
	if type(item) ~= "table" then
		item = self:GetItemStatsWithTooltip(item)
		if not item then return "REJECT", ItemScore.SC_NOTYET, "item not ready yet" end
	end

	local itemslot = item.info.equipslot
	if not itemslot then return "REJECT", ItemScore.SC_BADPARAM, "no equipslot?!" end --Shouldn't happen

	if allowbad then return 1 end  -- at your own risk.

	-- Check level requirements
	if item.info.reqlevel > self.playerlevel then return "REJECT", ItemScore.SC_LEVELREQ, "|cffff4400 level req "..item.info.reqlevel,"level",item.info.reqlevel end
	
	if itemslot == "INVTYPE_FINGER"
	 or itemslot == "INVTYPE_TRINKET"
	 or itemslot == "INVTYPE_NECK"
	 or itemslot == "INVTYPE_CLOAK" then
		-- Rings, trinkets, necklaces and cloaks are good for everyone.
		return 1
	else
		-- Determine item class
		local class = class_ids[itemclasses[item.info.class] or 0] or item.info.class
		local subclass = item.info.subclass

		-- Delocalize item class into a string that we set so we know what kind of item this is.
		if class == "WEAPON" then
			local cl = weap_ids[itemweapsubclasses[item.info.subclass] or 0]
			if not cl then return "REJECT", ItemScore.SC_BADITEM,("Unknown weapon subclass %s"):format(item.info.subclass) end
			subclass = cl
		elseif class == "ARMOR" then
			local cl = arm_ids[itemarmsubclasses[item.info.subclass] or 0]
			if not cl then return "REJECT", ItemScore.SC_BADITEM,("Unknown armor subclass %s"):format(item.info.subclass) end
			subclass = cl
		else
			return "REJECT",ItemScore.SC_BADITEM,("Unknown item class %s"):format(class)
		end

		-- Okay, type ascertained. Is it proper for the player at all?
		local uselevel = rule.itemtypes[subclass]

		-- Heirloom support. If it is a heirloom and can be used then never rule it out for being used.
		-- If they can equip it at any level then they will be able to use it.
		if item.info.quality == 7 and uselevel then uselevel = 1 end

		if not uselevel then
			-- Can never use this type
			return "REJECT", ItemScore.SC_NOTFORU, ("|cffcc0000 type "..subclass.." bad for ".. self.playerclass.. self.playerspec)
		elseif ( uselevel > 0 and self.playerlevel < uselevel ) then
			-- Player too low level
			return "REJECT", ItemScore.SC_LEVELREQ,("|cffff88aa not usable at level ".. self.playerlevel),"level",uselevel
		elseif ( uselevel < 0 and self.playerlevel >= -uselevel ) then	-- Player too high level
			return 0.5  -- just give it a bad score
		elseif uselevel==40 and self.playerlevel<50 and self.playerlevel>39 then
			-- allows hunter/pally/warr/sham to transition armor type from level 40 to 50
			-- But favors the correct type of item by giving it an extra 10% score
			if verbose then do_verbose("  + |cff00ff00100 GOOD TYPE|r: MAIL->PLATE |cffffffff100|r")  end
			return 1.1
		else
			return 1
		end
	end
end

function ItemScore:GetHeirloomMaxLevelBonus(itemlink)
	-- returns:
	-- (int) max stats scale level, (bool) if it gives bonus exp
	-- false,false if not hloom
	local itemName, itemLink, itemRarity, _, _, _, _, _, itemEquipLoc = ZGV:GetItemInfo(itemlink)

	if itemRarity~=7 then return false,false end -- whatever we got, it is not a hloom

	local hasBonusExp = true
	
	if ItemScore.HeirloomNoExpBonusSlot[itemEquipLoc] then hasBonusExp = false end -- it is a hloom that does not give exp bonus

	local itemid = itemlink:match("item:(%d+)")

	if ItemScore.FixedLevelHeirloom[tonumber(itemid)] then 
		return ItemScore.FixedLevelHeirloom[tonumber(itemid)],false
	end

	local max_bonus = 60 -- default for all looms

	for bonus,_ in pairs(ZGV.ItemLink.GetItemBonuses(itemlink)) do
		max_bonus = math.max(max_bonus,ItemScore.HeirloomBonuses[tonumber(bonus)])
	end
	
	return max_bonus,hasBonusExp
end

--[[
	Tests whether or not the item is a heirloom and in our system.
	If in our system then sees if level is appropriate to get the bonus.

	Parameters:
		item - item table or itemid
		verbose - Extra debug messages.
	Return
		value - Score of the item.
--]]

function ItemScore:UsableHeirloomItem(item, verbose)
	if not self.curRuleSet then return -1, ItemScore.SC_NOTYET, "rules not set yet." end

	-- If not a table already then it is itemid
	if type(item) ~= "table" then
		item = self:GetItemStatsWithTooltip(item)
		if not item then return -1, ItemScore.SC_NOTYET, "item not ready yet" end
	end

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(verbose,s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	if item.info.quality==7 then
		local value,comment = 0,"Not protected"
		local maxhlevel,hasbonus = ItemScore:GetHeirloomMaxLevelBonus(item.info.itemlink)
		if maxhlevel then
			if self.playerlevel < maxhlevel then
			-- it is within valid level range
				if (hasbonus and ZGV.db.profile.autogear_protectheirlooms) -- protect exp looms
				   or (not hasbonus and ZGV.db.profile.autogear_protectheirlooms_all) -- protect non-exp looms   
				then
					value = 15000
					comment="Protected"
				end
			end
			if verbose then  do_verbose("  + HEIRLOOM! +%.1f|r",value)  end
			return value,ItemScore.SC_OK,comment
		else
			if verbose then  do_verbose(" Heirloom:%d not in our system.",itemid )  end
		end
	end

	-- Okay so item isn't a heirloom, no big deal
	return 0,ItemScore.SC_BADITEM,"Not heirloom"
end

--[[
	Pretty clear... Is it a fishing pole?

	Parameters:
		itemid - itemid
	Return
		yes/no
--]]

function ItemScore:IsFishingPole(itemid)
	if not itemid then return end
	
	local item = self:GetItemStatsWithTooltip(itemid)  
	if not item then return false end
	local cl = weap_ids[itemweapsubclasses[item.info.subclass] or 0]
	
	return cl == "FISHPOLE"
end

function ItemScore:ClearCachedHeirlooms()
	-- Wipe existing heirloom score after level up, so we can get updated score
	for itemlink,itemdata in pairs(ItemScore.__ItemCache) do
		if itemdata.info and itemdata.info.quality==7 then
			ItemScore.__ItemCache[itemlink]=nil
		end
	end
end

-- Helper Functions

do
	local ZGVI_DAMAGE_TEMPLATE = DAMAGE_TEMPLATE :gsub("%%d","(%%d+)") :gsub(" %- "," %%- ")
	local ZGVI_DAMAGE_TEMPLATE_WITH_SCHOOL = DAMAGE_TEMPLATE_WITH_SCHOOL :gsub("%%d","(%%d+)") :gsub(" %- "," %%- ")
	local ZGVI_WEAPON_SPEED_TEMPLATE = WEAPON_SPEED.." ([0-9%.]+)"

	local ItemCache = {}
	ItemScore.__ItemCache = ItemCache

	--[[
	  Returns an item object with all the information you might need.
	  Also caches this item for future use.
	  Note: If a itemlink is provided then before returning the cached item, it gathers the stats from the itemlink.

		Parameters:
			item - item itemid
			itemlink - Blizzard hyperlink for the item. Needed for precise stat values. [Item] and [Item of the Bear] have the same id but different stats.

		Return
			item - Item Object with ZGV:GetItemInfo(), stats, and tooltip
	--]]

	function ItemScore:GetItemStatsWithTooltip(itemlink)
		if not itemlink then return nil,"no param" end

		-- Early cache optimization!
			if ItemCache[itemlink] then  return ItemCache[itemlink]  end

		-- Make sure we have both itemid and itemlink, whatever was given in parameters.
			--need:
			local itemid  -- 12345

			local numlink=tonumber(itemlink)
			if numlink then -- it's a plain itemid
				itemid=numlink
				itemlink="item:"..numlink
			else  -- check for link contents. Optimized, just one :match!
				itemlink,itemid = tostring(itemlink):match("(item:(%d+)[%-%d:]+)")
				itemid=tonumber(itemid)
			end

			if not itemid or not itemlink then return nil,"param not an itemlink" end  -- itemlink must've been malformed.

		-- heirloom items will return the wrong stats if you are above the max level for them.
		-- Changing the itemlink is needed to get the right stats.
		if ItemScore:GetHeirloomMaxLevelBonus(itemlink) then
			itemlink=ZGV.ItemLink.SetLevel(itemlink,ItemScore:GetHeirloomMaxLevelBonus(itemlink))
		end

		-- TODO: Make sure that heirlooms are REMOVED FROM CACHE (and thus recalculated) when we level up.
		
		if ItemCache[itemlink] then  return ItemCache[itemlink]  end
		
		--itemlink = ZGV.ItemLink.SetLevel(itemlink)

		-- itemid and itemlink are set.

		--if ItemCache[itemlink] then  return ItemCache[itemlink]  end
		


		-- Okay, it's definitely not cached, let's do the hard work.

		local name,link,quality,ilevel, reqlevel, class, subclass, maxstack, equipslot, texture, vendorprice = ZGV:GetItemInfo(itemlink)
		if not name then return nil,"no iteminfo (yet?)" end

		-- Loads stats into item.stats
		local stats = GetItemStats(itemlink)
		if not stats then return nil,"no stats (yet?)" end

		Gratuity:SetHyperlink(itemlink)
		local n = Gratuity:NumLines()
		if n <= 1 then return nil,"tooltip too short" end

		-- WE HAVE THE ITEM DATA AND THE TOOLTIP! Let's store it.
		local item = {
			info={itemid=itemid,name=name,itemlink=itemlink,prettylink=link,quality=quality,ilevel=ilevel,reqlevel=reqlevel,class=class,subclass=subclass,equipslot=equipslot,vendorprice=vendorprice},
			stats = stats,
			--tooltip={}, -- filled below
		}

		local function addLine(num,leftright)
			--local line=Gratuity:GetLine(num,bool)
			local line=(leftright and Gratuity.vars.Rlines or Gratuity.vars.Llines)[num]
			if line then line=line:GetText() end
			if not line then return end

			local d1,d2 = line:match(ZGVI_DAMAGE_TEMPLATE)
			if d1 and d2 then item.stats.DAMAGE1,item.stats.DAMAGE2,item.stats.DAMAGE = tonumber(d1),tonumber(d2),(tonumber(d1)+tonumber(d2))/2 end

			local s1 = line:match(ZGVI_WEAPON_SPEED_TEMPLATE)
			if s1 then item.stats.WEAPONSPEED = tonumber(s1) end

			--tinsert(item.tooltip,line)
			return line
		end

		--[[
		local function procLine(num)
			local line=Gratuity:GetLine(num,false)
			if line then
				return ItemScore.ProcScore:ParseEffect(line)
			else
				return false,"no line"
			end
		end
		--]]

		for i=1,n do
			local leftline = addLine(i,false)		-- left line
			addLine(i,true)			-- right line
			if ZGV.db.profile.geareffects and leftline then
				local procresult,procdata = ItemScore.ProcScore:ParseEffect(leftline)
				if procresult then
					item.effect = item.effect or {} 
					item.effect[procdata.stat]=procdata.amount
					item.debug = procdata
				end
			end
		end

		ItemCache[itemlink]=item
		return item
	end

end

--[[
	Converts INVTYPE_... into one of the usable inventory slots.
--]]

function ItemScore:GetItemSlot(itemslot)
	if not itemslot or itemslot=="" then return end --empty or nothing then return
	itemslot = itemslot:gsub("^INVTYPE_","")
	itemslot = itemslot:sub(1,1) .. itemslot:sub(2):lower()

	local itemslot2

	if itemslot=="Hand" then itemslot="Hands"
	elseif itemslot == "Cloak" then itemslot = "Back"
	elseif itemslot == "Robe" then itemslot = "Chest"
	elseif itemslot == "Shield" or itemslot == "Weaponoffhand" or itemslot == "Holdable" then itemslot = "SecondaryHand"
	elseif itemslot == "Weaponmainhand" or itemslot == "Rangedright" or itemslot == "Ranged" then itemslot="MainHand"
	elseif itemslot == "Weapon" then
		itemslot = "MainHand"
		if self.playerdualwield then itemslot2 = "SecondaryHand" end
	elseif itemslot == "2hweapon" then
		itemslot = "MainHand"
		if self.playerdual2h then itemslot2 = "SecondaryHand" end
	elseif itemslot == "Trinket" then itemslot = "Trinket0" itemslot2 = "Trinket1"
	elseif itemslot == "Finger" then itemslot = "Finger0" itemslot2 = "Finger1"
	end

	if itemslot then itemslot=itemslot.."Slot" end
	if itemslot2 then itemslot2=itemslot2.."Slot" end

	return itemslot,itemslot2
end

--[[
	Returns the id for the items in the itemslot.
--]]

-- ZGV.ItemScore:GetItemInSlot("INVTYPE_WRIST")

function ItemScore:GetItemInSlot(itemslot)
	local itemslot1,itemslot2 = ItemScore:GetItemSlot(itemslot)

	local slot1,slot2
	if itemslot1 then slot1 = GetInventorySlotInfo(itemslot1) end
	if itemslot2 then slot2 = GetInventorySlotInfo(itemslot2) end

	local itemlink1,itemlink2
	if slot1 then itemlink1 = GetInventoryItemLink("player",slot1) end
	if slot2 then itemlink2 = GetInventoryItemLink("player",slot2) end

	-- These links are PRETTY. Sadly, we don't want that.

	-- Return: item:11111:0:0, item:22222:0:0, [Item1], [Item2]

	return itemlink1 and itemlink1:match("item[:%d]+"),itemlink2 and itemlink2:match("item[:%d]+"), itemlink1,itemlink2
end

--[[
	Get rid of the strange invtypes and convert them to a common one.

	Parameters:
		equipslot - item.equipslot
	Return
		equipslot - Common INVTYPE for that item.
		equipslot2 - 2nd INVTYPE in Weapons case.
--]]

function ItemScore:GetCommonInvType(equipslot)
	if not (equipslot and self:IsGoodEquipSlot(equipslot)) then return end

	local equipslot2

	if equipslot == "INVTYPE_ROBE" then equipslot = "INVTYPE_CHEST"
	elseif equipslot == "INVTYPE_RANGEDRIGHT" or equipslot == "INVTYPE_RANGED" then equipslot = "INVTYPE_WEAPONMAINHAND"
	elseif equipslot == "INVTYPE_WEAPON" then equipslot = "INVTYPE_WEAPONMAINHAND" equipslot2 = "INVTYPE_WEAPONOFFHAND"
	end

	return equipslot,equipslot2
end

function ItemScore:Debug(str,...)
	ZGV:Debug("&itemscore &_SUB "..str, ... )
end

function ItemScore:ScoreCursor(quiet)
	local ret=""
	local itemlink
	if GetCursorInfo()=="item" then itemlink=select(3,GetCursorInfo()) end
	if not itemlink and GameTooltip and GameTooltip:GetItem() then itemlink = select(2,GameTooltip:GetItem()) end
	if not itemlink then ret="No item in or under cursor." if not quiet then print(ret) end  return ret  end
	ret="Scoring "..tostring(itemlink).."\n"
	local verbose={}
	local score,code,comment = ZGV.ItemScore:GetItemScore(itemlink,nil,false,verbose)
	ret=ret.."SCORE: "..tostring(score).."\n"
	ret=ret.."WHY: "..tostring(code).."\n"
	ret=ret.."COMMENT: "..tostring(comment).."\n"
	ret=ret.."DETAILS:\n"
	ret=ret..table.concat(verbose,"\n").."\n"
	if code==ItemScore.SC_LEVELREQ or code==ItemScore.SC_NOTFORU or code==ItemScore.SC_BADITEM then
		table.wipe(verbose)
		ret=ret.."Trying to force it...\n"
		local score,code,comment = ZGV.ItemScore:GetItemScore(itemlink,nil,true,verbose)
		ret=ret.."SCORE: "..tostring(score).."\n"
		ret=ret.."WHY: "..tostring(code).."\n"
		ret=ret.."COMMENT: "..tostring(comment).."\n"
		ret=ret.."DETAILS:\n"
		ret=ret..table.concat(verbose,"\n").."\n"
	end
	if not quiet then print(ret) end
	return ret
end

function ItemScore:CheckOutleveledHeirlooms()
	if ZGV.ItemScore.HloomPopup and ZGV.ItemScore.HloomPopup.killed then return end
	local pMaxLevel = GetMaxPlayerLevel()

	if ItemScore.playerlevel==pMaxLevel then return end -- Already on max level, don't bother with upgrading hlooms

	local upgradables = {}

	for num,slot in ipairs(ItemScore.AutoEquip.slots) do
		local slotId = GetInventorySlotInfo(slot)
		local itemLink = GetInventoryItemLink("player", slotId)
		if itemLink then
			local iMaxLevel = ItemScore:GetHeirloomMaxLevelBonus(itemLink)
			if iMaxLevel and iMaxLevel>0 then
				if (ItemScore.playerlevel>iMaxLevel) and (iMaxLevel<pMaxLevel) then
					table.insert(upgradables,itemLink)
				end
			end
		end
	end

	if #upgradables>0 then
		ZGV.NotificationCenter.AddButton(
			"GearOutdatedHloom",
			"Outdated Heirlooms",
			"Some of your heirlooms can be upgraded.",
			ZGV.DIR.."\\Skins\\guideicons-big",
			{0,1/4,3/4,1},
			function() ItemScore:ShowHloomPopup(upgradables) end,
			function() --[[print("NC OnEnter")--]] end,
			1,
			nil,		-- nil atm
			nil,		-- nil atm
			false,			-- nil atm
			OnOpen,			-- nil atm
			"hloom")

	end
end

function ItemScore:ShowHloomPopup(data)
	if not ItemScore.HloomPopup then
		ItemScore.HloomPopup = ZGV.PopupHandler:NewPopup("ZygorItemPopup","default","stealth")

		ItemScore.HloomPopup.text:SetFont(FONTBOLD,ZGV.db.profile.fontsecsize+2)
		ItemScore.HloomPopup.text2:SetFont(FONT,ZGV.db.profile.fontsize)

		--[[ Until we have proper guide --]]
		ItemScore.HloomPopup.declinebutton:SetText("Close")
		ItemScore.HloomPopup.acceptbutton:Hide()
		ItemScore.HloomPopup.declinebutton:ClearAllPoints()
		ItemScore.HloomPopup.declinebutton:SetPoint("BOTTOM",ItemScore.HloomPopup,"BOTTOM",0,5)
		--[[ Until we have proper guide --]]

		ItemScore.HloomPopup.OnAccept = function(self) end

		ItemScore.HloomPopup.OnEscape = function(self)
			ZGV.ItemScore:CheckOutleveledHeirlooms()
		end
	end

	local popupText = ""
	for i,v in pairs(data) do
		popupText = popupText..v.."\n"
	end

	ItemScore.HloomPopup:SetText("The following heirlooms can be\n upgraded to higher levels:",popupText)
	ZGV.PopupHandler:QueuePush(ItemScore.HloomPopup)
end

function ItemScore:ScoreGem(gemdata)
	local ruleSetStats = ItemScore.curRuleSet.stats
	local score = 0

	for stat,statvalue in pairs(gemdata) do
		score = score + ((ruleSetStats[stat] or 0)*statvalue)
	end

	return score
end   

local returntable
function ItemScore:GetBestGemPerIlvl()
	
	if not returntable then returntable = {} end
	wipe(returntable)

	for ilvl,sockets in pairs(ItemScore.GemData) do
		returntable[ilvl] = {}
		for color,gems in pairs(sockets) do
			for socketcolor,_ in pairs(ItemScore.GemMatchesSocket[color]) do
				returntable[ilvl][socketcolor] = returntable[ilvl][socketcolor] or {id=0,score=0}
			end
			for gemid,stats in pairs(gems) do
				local tempscore = ItemScore:ScoreGem(stats)
				for socketcolor,_ in pairs(ItemScore.GemMatchesSocket[color]) do
					if tempscore > returntable[ilvl][socketcolor].score then
						returntable[ilvl][socketcolor].score=tempscore
						returntable[ilvl][socketcolor].id=gemid
					end
				end
			end
		end
	end

	ItemScore.curRuleSet.sockets = returntable
end 

function ItemScore:ListSuggestedGems()
    local s = ""
    for ilvl,sockets in pairs(ItemScore.curRuleSet.sockets) do
        s = s.."Item level: "..ilvl..":\n"
        for color,data in pairs(sockets) do
            local name = ZGV:GetItemInfo(data.id)
            s = s..color.." - "..(name or "").." "..data.id .."\n"
        end
    s = s.."\n"
    end
    ZGV:ShowDump(s)
end


function ItemScore:GetSocketWeight(type,ilvl)
	local score,id = 0,0
	for level,sockets in pairs(ItemScore.curRuleSet.sockets) do
		if level>ilvl then return score end
		if (sockets[type] and sockets[type].score or 0)>score then
			score = sockets[type].score
			id = sockets[type].id
		end
	end
	return score,id
end

local function ItemScore_SetTooltipData(tooltip, tooltipobj)
	tooltipobj=tooltipobj or GameTooltip
	if not ItemScore.TooltipPatched then
		local itemName,itemLink = tooltipobj:GetItem()
		if not itemLink then
			ItemScore.TooltipPatched  = true
			return
		end

		local cleanlink = ZGV.ItemLink.ProcessItemLink(itemLink,false)

		local verbose = {}
		local score,code,comment = ZGV.ItemScore:GetItemScore(itemLink,nil,false,verbose)
		local subscore,cancode,cancomment = ZGV.ItemScore:CanEquipItem(itemLink,false,true)

		if ZGV.db.profile.debug_display then
			tooltip:AddLine("|cfffe6100Zygor debug:|r ")
			tooltip:AddLine("score "..score)
			tooltip:AddLine("code "..code)
			tooltip:AddLine("reason "..comment)
			tooltip:AddDoubleLine("  ITEMID:",ZGV.ItemLink.GetItemID(cleanlink))
			for _,line in pairs(verbose) do
				tooltip:AddLine(line)
			end
		end


		local item = ItemScore:GetItemStatsWithTooltip(itemLink)
		if not item then 
			ItemScore.TooltipPatched  = true
			return
		end
		local itemslot = item.info.equipslot
		local equippedscore,equippedscore2 = 0,0
		local equippeditem,equippeditem2 

		local ecode,ereason

		if ItemScore.possEquipSlots[itemslot] then
			equippeditem,equippeditem2,equippeditemfull,equippeditem2full = ItemScore:GetItemInSlot(itemslot)
			if equippeditem then 
				equippeditem = ZGV.ItemLink.ProcessItemLink(equippeditemfull,false)
				equippedscore,ecode,ereason = ItemScore:GetItemScore(equippeditem,nil,false,verbose) 
			end
			if equippeditem2 then 
				equippeditem2 = ZGV.ItemLink.ProcessItemLink(equippeditem2full,false)
				equippedscore2,ecode,ereason = ItemScore:GetItemScore(equippeditem2,nil,false,verbose) 
			end
		end

		local diffscore,diffscore2 = math.round((score-equippedscore)*100)*0.01, math.round((score-equippedscore2)*100)*0.01
		if diffscore > 0 then color = "|cff00ff00+" else color = "|cffff0000" end

		tooltip:AddLine("|r")
		if score>0 and (equippedscore>0 or equippedscore2>0) then
			-- Item being previewed
			if ZGV.db.profile.debug then
				tooltip:AddLine("|cfffe6100Zygor ItemScore:|r "..score)
			else
				tooltip:AddLine("|cfffe6100Zygor ItemScore:|r ")
			end

			local twoslots = (itemslot=="INVTYPE_TRINKET") or (itemslot=="INVTYPE_FINGER")

			local comment
			local slotinfo1 = twoslots and "Slot 1: " or ""
			local slotinfo2 = twoslots and "Slot 2: " or ""

			-- item in slot 1
			if equippedscore>0 then
				if cleanlink~=equippeditem then
					local comment = "|r "..slotinfo1.."Upgrade |cff00ff00"
					if diffscore <= 0 then 
						comment = "|r "..slotinfo1.."Downgrade |cffff0000"
					end
					if ZGV.db.profile.debug then comment = comment..(score-equippedscore).." " end
					local change=math.floor(((score*100/equippedscore)-100)*100)/100
					tooltip:AddLine(comment..change.."% ")
				else
					tooltip:AddLine("|r "..slotinfo1.."Equipped")
				end
			else
				tooltip:AddLine("|r "..slotinfo1.."Upgrade |cff00ff00100% ")
			end

			-- item in slot 2 only if it is ring or trinket
			if twoslots and equippedscore2>0 then
				if cleanlink~=equippeditem2 and equippedscore2>0 then
					local comment = "|r "..slotinfo2.."Upgrade |cff00ff00"
					if diffscore2 <= 0 then 
						comment = "|r "..slotinfo2.."Downgrade |cffff0000"
					end
					if ZGV.db.profile.debug then comment = comment..(score-equippedscore2).." " end
					local change=math.floor(((score*100/equippedscore2)-100)*100)/100
					tooltip:AddLine(comment..change.."% ")
				else
					tooltip:AddLine("|r "..slotinfo2.."Equipped")
				end
			elseif twoslots then
				tooltip:AddLine("|r "..slotinfo2.."Upgrade |cff00ff00100% ")
			end
		elseif score>0 then
			tooltip:AddLine("|cfffe6100Zygor ItemScore:|r "..score)
			tooltip:AddLine("|r  Upgrade |cff00ff00100% ")
		end

		if ZGV.db.profile.debug_display then
			if item.effect then
				for i,v in pairs(item.effect) do
					local rulevalue = ZGV.ItemScore.curRuleSet.stats[i]
					tooltip:AddLine("|rEffect parsed: ")
					tooltip:AddLine("|r  "..i.." "..v.." ("..(v*(rulevalue or 0))..")")
				end
			end
		end				

		ItemScore.TooltipPatched  = true
	end
	if tooltipobj==ItemRefTooltip then ItemRefTooltip:Show() end -- update to new height, have to do it by hand since IRT is called just once
end

local function ItemScore_ClearTooltipData(tooltip, ...)
	ItemScore.TooltipPatched = false
end

GameTooltip:HookScript("OnTooltipSetItem", ItemScore_SetTooltipData)
GameTooltip:HookScript("OnTooltipCleared", ItemScore_ClearTooltipData)
ItemRefTooltip:HookScript("OnTooltipCleared", ItemScore_ClearTooltipData)
hooksecurefunc (GameTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,GameTooltip) end)
hooksecurefunc (ItemRefTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,ItemRefTooltip) end)


function ItemScore:ImportPawn(datastring)
	if not datastring then return end
	local unknowns = false

	if not datastring:find("Pawn: v1:") then 
		ZGV:Print("Import: Incorrect pawn string") 
		return
	end

	datastring = datastring:gsub(" [)]",""):gsub("(.*): ","")

	local stattable = {}
	for statstring in string.gmatch(datastring, "([^,]+)") do
		local statname,statval = statstring:match("(%w+)=([-0-9%.]+)")
		if statname and statval then
			stattable[statname] = statval
		end
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] and not ItemScore.KeywordsPawnToRules[statname] then
			unknowns = true
			stattable[statname]=nil
		end
	end

	if unknowns then
		ZGV:Print("Import: Some of Pawn stat names are not supported by Zygor, and have been skipped.") 
	end


	local name,tag,id = GetClassInfo(ZGV.db.profile.gear_selected_class)
	local groupname = 'gear_'..tag..'_'..ZGV.db.profile.gear_selected_spec

	for index,stat in pairs(ZGV.ItemScore.Keywords) do -- wipe
		ZGV.db.profile[groupname.."_"..stat.blizz] = nil
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] then
			ZGV.db.profile[groupname.."_"..ItemScore.KeywordsPawnToRules[statname]] = statval
		end
	end
end

function ItemScore:ExportPawn(datastring)
	local class, spec = ZGV.db.profile.gear_selected_class, ZGV.db.profile.gear_selected_spec
	local name,tag,id = GetClassInfo(class)
	local specname = ZGV.SpecByNumber[tag][spec] -- values taken from parser.lua classtalents
	local ruleset = ItemScore.rules[tag][spec]

	local returnstring = '( Pawn: v1: "Zygor: '
	returnstring = returnstring..name..' '..specname..'": '

	local data = {}


	for namez,namep in pairs(ItemScore.Gear_ZygorToPawn) do
		if not ruleset.itemtypes[namez] then
			table.insert(data,namep.."=-1000000")
		elseif ruleset.itemtypes[namez]<0 then
			table.insert(data,namep.."="..ruleset.itemtypes[namez])
		end
	end

	local playermask = "gear_"..tag.."_"..spec.."_"
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		table.insert(data,stat.pawn.."="..(ZGV.db.profile[playermask..(stat.blizz)] or 0))
	end
	
	returnstring = returnstring.." "..table.concat(data, ", ") 
	returnstring = returnstring..")"

	ZGV.ItemScore.lastPawnString = returnstring
end

function ItemScore:InitGearFinderOptions()
	if UnitClass("player") then
		ZGV.db.profile.gear_selected_class = select(3,UnitClass("player"))
		ZGV.db.profile.gear_selected_spec = GetSpecialization() or 1
	else
		ZGV:ScheduleTimer(function() ItemScore:InitGearFinderOptions() end, 1)
	end
end

function ItemScore:UsesCustomWeights(class,spec)
	local statset = ZGV.ItemScore.rules[class][spec].stats
	local prefix = 'gear_'..class..'_'..spec..'_'
	local profile = ZGV.db.profile

	for index=1,#ZGV.ItemScore.Keywords do
		local statname = ZGV.ItemScore.Keywords[index].blizz

		if not profile[prefix..statname] and statset[statname] then
		
		elseif tonumber(profile[prefix..statname]) and not statset[statname] then
			return true
		elseif tonumber(profile[prefix..statname]) and tonumber(statset[statname])~=tonumber(profile[prefix..statname]) then
			return true
		end
	end
	return false
end
