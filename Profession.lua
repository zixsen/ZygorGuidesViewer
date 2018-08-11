if debug then
	ZygorGuidesViewer={startups={}}
	ZygorGuidesViewer_L=function() end
	GetLocale=function() return "enUS" end
	tinsert=table.insert
	ERR_LEARN_RECIPE_S = "Learn %s"
	hooksecurefunc=function() end
end

local ZGV = ZygorGuidesViewer
if not ZGV then return end


ZGV.Professions = {}
local ZGVP = ZGV.Professions
-- this is not widely used, yet, sadly - most functions remain global.

ZGVP.skillSpells = {}

ZGVP.tradeskills = {
	[171] = {name="Alchemy",crafting=true,subs={
		[592] = "Zandalari Alchemy",
		[433] = "Legion Alchemy",
		[332] = "Draenor Alchemy",
		[596] = "Pandaria Alchemy",
		[598] = "Cataclysm Alchemy",
		[600] = "Northrend Alchemy",
		[602] = "Outland Alchemy",
	}},
	[164] = {name="Blacksmithing",crafting=true,subs={
		[542] = "Zandalari Blacksmithing",
		[426] = "Legion Blacksmithing",
		[389] = "Draenor Blacksmithing",
		[553] = "Pandaren Blacksmithing",
		[569] = "Cataclysm Blacksmithing",
		[577] = "Northrend Blacksmithing",
		[584] = "Outland Blacksmithing",
	}},
	[333] = {name="Enchanting",crafting=true,subs={
		[647] = "Zandalari Enchanting",
		[443] = "Legion Enchanting",
		[348] = "Draenor Enchanting",
		[656] = "Pandaria Enchanting",
		[661] = "Cataclysm Enchanting",
		[663] = "Northrend Enchanting",
		[665] = "Outland Enchanting",
	}},
	[202] = {name="Engineering",crafting=true,subs={
		[709] = "Zandalari Engineering",
		[469] = "Legion Engineering",
		[347] = "Draenor Engineering",
		[713] = "Pandaria Engineering",
		[715] = "Cataclysm Engineering",
		[717] = "Northrend Engineering",
		[719] = "Outland Engineering",
	}},
	[773] = {name="Inscription",crafting=true,subs={
		[759] = "Zandalari Inscription",
		[450] = "Legion Inscription",
		[410] = "Draenor Inscription",
		[763] = "Pandaria Inscription",
		[765] = "Cataclysm Inscription",
		[767] = "Northrend Inscription",
		[769] = "Outland Inscription",
	}},
	[755] = {name="Jewelcrafting",crafting=true,subs={
		[805] = "Zandalari Jewelcrafting",
		[464] = "Legion Jewelcrafting",
		[373] = "Draenor Jewelcrafting",
		[809] = "Pandaria Jewelcrafting",
		[811] = "Cataclysm Jewelcrafting",
	}},
	[165] = {name="Leatherworking",crafting=true,subs={
		[871] = "Zandalari Leatherworking",
		[460] = "Legion Leatherworking",
		[380] = "Draenor Leatherworking",
		[876] = "Pandaria Leatherworking",
		[878] = "Cataclysm Leatherworking",
		[880] = "Northrend Leatherworking",
		[882] = "Outland Leatherworking",
	}},
	[197] = {name="Tailoring",crafting=true,subs={
		[942] = "Zandalari Tailoring",
		[430] = "Legion Tailoring",
		[369] = "Draenor Tailoring",
		[950] = "Pandaria Tailoring",
		[952] = "Cataclysm Tailoring",
		[954] = "Northrend Tailoring",
		[956] = "Outland Tailoring",
	}},
	[182] = {name="Herbalism",subs={
		[1029] = "Zandalari Herbalism",
		[456] = "Legion Herbalism",
	}},
	[186] = {name="Mining",crafting=true,subs={
		[1065] = "Zandalari Mining",
		[425] =  "Legion Mining",
		[1070] = "Pandaria Mining",
		[1072] = "Cataclysm Mining",
		[1074] = "Northrend Mining",
		[1076] = "Outland Mining",
	}},
	[393] = {name="Skinning",subs={
		[1046] = "Zandalari Skinning",
		[459] = "Legion Skinning",
	}},
	[794] = {name="Archaeology",subs={}},
	[185] = {name="Cooking",crafting=true,subs={
		[1118] = "Zandalari Cooking",
		[475] = "Legion Cooking",
		[342] = "Draenor Cooking",
		[90] = "Pandaria Cooking",
		[75] = "Cataclysm Cooking",
		[74] = "Northrend Cooking",
		[73] = "Outland Cooking",
	}},
	[356] = {name="Fishing",subs={
		[1102] = "Outland Fishing",
		[1104] = "Northrend Fishing",
		[1106] = "Cataclysm Fishing",
		[1108] = "Pandaria Fishing",
		[1110] = "Draenor Fishing",
		[1112] = "Legion Fishing",
		[1114] = "Zandalari Fishing",
	}},
	[762] = {name="Riding",subs={}}
}

ZGVP.skillLocale = {
	[164]={deDE="Schmiedekunst",esES="Herrería",frFR="Forge",ptBR="Ferraria",ruRU="Кузнечное дело"},
	[165]={deDE="Lederverarbeitung",esES="Peletería",frFR="Travail du cuir",ptBR="Couraria",ruRU="Кожевничество"},
	[171]={deDE="Alchemie",esES="Alquimia",frFR="Alchimie",ptBR="Alquimia",ruRU="Алхимия"},
	[182]={deDE="Kräuterkunde",esES="Herboristería",frFR="Herboristerie",ptBR="Herborismo",ruRU="Травничество"},
	[185]={deDE="Kochkunst",esES="Cocina",frFR="Cuisine",ptBR="Culinária",ruRU="Кулинария"},
	[186]={deDE="Bergbau",esES="Minería",frFR="Minage",ptBR="Mineração",ruRU="Горное дело"},
	[197]={deDE="Schneiderei",esES="Sastrería",frFR="Couture",ptBR="Alfaiataria",ruRU="Портняжное дело"},
	[202]={deDE="Ingenieurskunst",esES="Ingeniería",frFR="Ingénierie",ptBR="Engenharia",ruRU="Инженерное дело"},
	[333]={deDE="Verzauberkunst",esES="Encantamiento",frFR="Enchantement",ptBR="Encantamento",ruRU="Наложение чар"},
	[356]={deDE="Angeln",esES="Pesca",frFR="Pêche",ptBR="Pesca",ruRU="Рыбная ловля"},
	[393]={deDE="Kürschnerei",esES="Desuello",frFR="Dépeçage",ptBR="Esfolamento",ruRU="Снятие шкур"},
	[755]={deDE="Juwelenschleifen",esES="Joyería",frFR="Joaillerie",ptBR="Joalheria",ruRU="Ювелирное дело"},
	[762]={deDE="Reiten",esES="Equitación",frFR="Monte",ptBR="Montaria",ruRU="Верховая езда"},
	[773]={deDE="Inschriftenkunde",esES="Inscripción",frFR="Calligraphie",ptBR="Escrivania",ruRU="Начертание"},
	[794]={deDE="Archäologie",esES="Arqueología",frFR="Archéologie",ptBR="Arqueologia",ruRU="Археология"},
} -- GETS TRIMMED.
for id,data in pairs(ZGVP.skillLocale) do ZGVP.skillLocale[id]=data[GetLocale()] end

ZGV.Professions.LocaleSkills={}
setmetatable(ZGV.Professions.LocaleSkills,{__index=function(t,skill) return ZGV.Professions.skillLocale[ZGVP.tradeskillsIdByName[skill] or 0] or skill end})
ZGV.Professions.LocaleSkillsR={}
setmetatable(ZGV.Professions.LocaleSkillsR,{__index=function(t,q) return q end})


-- Map ids by english names
ZGVP.tradeskillsIdByName = {}
for id,data in pairs(ZGVP.tradeskills) do 
	ZGVP.tradeskillsIdByName[data.name] = id 
	for sid,sname in pairs(data.subs) do
		ZGVP.tradeskillsIdByName[sname] = sid 
	end
end

function ZGV:CacheSkills()
	if ZGVP.CS_Timer then ZGV:CancelTimer(ZGVP.CS_Timer) end
	ZGVP.CS_Timer = ZGV:ScheduleTimer(function() 
		ZGV:CacheSkills_Queued()
	end, 1)
end

cacheskill_profs = {}
cacheskill_lines = {}
cacheskill_core = {}
function ZGV:CacheSkills_Queued()
	local current_time = debugprofilestop()
	if (current_time - (ZGV.last_cached_skills or 0)) < 1000 then return end

	local faction = UnitFactionGroup("player")

	ZGV.last_cached_skills = current_time	

	-- reset goldguide crafting skill knowledge
	local Goldguide = ZGV.Goldguide
	if Goldguide then Goldguide.knows_crafting = false end

	-- update tradeskill knowledge
	table.wipe(cacheskill_lines)
	table.wipe(cacheskill_profs)
	table.wipe(cacheskill_core)
	cacheskill_profs.prof1, cacheskill_profs.prof2, cacheskill_profs.arch, cacheskill_profs.fish, cacheskill_profs.cook, cacheskill_profs.firstAid = GetProfessions()

	for i,prof in pairs(cacheskill_profs) do
		-- core skills
		local name, icon, rank, maxRank, numSpells, spelloffset, skillline, rankModifier, specializationIndex, specializationOffset, skillLineName = GetProfessionInfo(prof)

		if Goldguide and ZGVP.tradeskills[skillline] and ZGVP.tradeskills[skillline].crafting then Goldguide.knows_crafting = true end-- this is a crafting skill, mark for gold guide that user can craft something

		local name = ZGVP.tradeskills[skillline] and ZGVP.tradeskills[skillline].name
		ZGVP.SkillsKnown[name] = ZGVP.SkillsKnown[name] or {}
		local pro = ZGVP.SkillsKnown[name]

		pro.level = rank
		pro.max = maxRank
		pro.active = true
		pro.skillID = skillline
		pro.name = name

		cacheskill_lines[skillline] = true
		cacheskill_core[skillline]=true

		-- subskills
		for subid,subname in pairs(ZGVP.tradeskills[skillline].subs) do
			if faction=="Alliance" then
				subname = subname:gsub("Zandalari ","Kul Tiran ")
			end

			local cat = C_TradeSkillUI.GetCategoryInfo(subid)
			if cat then
				ZGVP.SkillsKnown[subname] = ZGVP.SkillsKnown[subname] or {}
				local pro = ZGVP.SkillsKnown[subname]

				pro.level = cat.skillLineCurrentLevel
				pro.max = cat.skillLineMaxLevel
				pro.active = (cat.skillLineCurrentLevel>0)
				pro.skillID = subid
				pro.name = subname
				pro.parentname = name
				pro.parentskillID = skillline
				cacheskill_lines[subid] = true
			end
		end
	end

	-- 1) If user no longer has some profession, remove its subskills from known 
	for lineid,linedata in pairs(ZGV.db.char.RecipesKnown) do
		if not cacheskill_core[lineid] then
			ZGV.db.char.RecipesKnown[lineid]=nil
		end
	end
	for name,linedata in pairs(ZGVP.SkillsKnown) do
		if not linedata.placeholder and not cacheskill_core[linedata.parentskillID or linedata.skillID] then
			ZGVP.SkillsKnown[name] = nil
		end
	end
	--self:CacheRecipes(profs)  -- or try to, anyway. --Do Cooking masteries too
end

function ZGV:CacheRecipes(profs)
	local skill = select(6,C_TradeSkillUI.GetTradeSkillLine())
	if not skill then return end

	if ZGVP.CR_Timer then return end -- we already have scheduled refresh, wait for it
	if ZGVP.LastRecipeCheckLine~=skill then ZGV:CacheRecipes_Queued(profs) return end -- we changed skill line, grab recipes now
	if ZGVP.LastRecipeCheckTime and (debugprofilestop()-ZGVP.LastRecipeCheckTime)>1000 then ZGV:CacheRecipes_Queued(profs) return end -- over 1 second since last refresh, grab now as we are not spamming
	ZGVP.CR_Timer = ZGV:ScheduleTimer(function() ZGV:CacheRecipes_Queued(profs) end, 1)
end

function ZGV:CacheRecipes_Queued(profs)
	if ZGVP.CR_Timer then ZGV:CancelTimer(ZGVP.CR_Timer) ZGVP.CR_Timer=nil end

	if not C_TradeSkillUI.IsTradeSkillReady() then return end -- prevents missing reagents in recipes
	if C_TradeSkillUI.IsTradeSkillGuild() or C_TradeSkillUI.IsTradeSkillLinked() then return end

	local skill = select(6,C_TradeSkillUI.GetTradeSkillLine())
	if not skill then return end

	self.db.char.RecipesKnown=self.db.char.RecipesKnown or {}
	self.db.char.RecipesKnown[skill]=self.db.char.RecipesKnown[skill] or {}

	local recipes = self.db.char.RecipesKnown[skill]

	local all_recipes = C_TradeSkillUI.GetAllRecipeIDs()

	table.wipe(recipes)

	for _,recipeid in pairs(all_recipes) do
		local api_recipe = C_TradeSkillUI.GetRecipeInfo(recipeid)
		recipe = {
			nummade = {C_TradeSkillUI.GetRecipeNumItemsProduced(recipeid)},
			spell = recipeid,
			learned = api_recipe.learned,
			skill = skill,
			numSkillUps = api_recipe.numSkillUps,
			difficulty = api_recipe.difficulty,
			numAvailable = api_recipe.numAvailable,
			source = C_TradeSkillUI.GetRecipeSourceText(recipeid)
			}
		local productlink = C_TradeSkillUI.GetRecipeItemLink(recipeid)
		recipe.producttype,recipe.productid = productlink:match("|H(%w+):(%d+)")
		recipe.productid = tonumber(recipe.productid)


		local numReagents = C_TradeSkillUI.GetRecipeNumReagents(recipeid)
		local reagents={}
		for reagentIndex = 1, numReagents do
			local _reagentName, _reagentTexture, reagentCount, _playerReagentCount = C_TradeSkillUI.GetRecipeReagentInfo(recipeid, reagentIndex)
			local reagentlink = C_TradeSkillUI.GetRecipeReagentItemLink(recipeid, reagentIndex)
			reagents[ZGV.ItemLink.GetItemID(reagentlink)]=reagentCount
		end
		recipe.reagents = reagents


		recipes[recipeid]=recipe
	end

	ZGVP.LastRecipeCheckLine = skill
	ZGVP.LastRecipeCheckTime = debugprofilestop()

	local Goldguide = ZGV.Goldguide
	if Goldguide and Goldguide.MainFrame and Goldguide.MainFrame:IsVisible() then 
		Goldguide:InitialiseCraftingChores()
		for _,chore in pairs(Goldguide.Chores.Crafting) do chore:CalculateDetails(true)  chore.needsRefresh=true end
	end
end

function ZGVP:GetSkill(name)
	if not name then return ZGV.db.char.SkillsKnown[""] end

	if ZGV.db.profile.fakeskills[name] then
		return ZGV.db.profile.fakeskills[name] -- faked value
	elseif ZGV.db.char.SkillsKnown[name] then
		return ZGV.db.char.SkillsKnown[name]
	else
		return ZGV.db.char.SkillsKnown[""] -- proper value or empty placeholer
	end
end




function ZGV:Profession_NEW_RECIPE_LEARNED(event,spell)
	for skill,skilltable in pairs(ZGV.db.char.RecipesKnown) do
		if skilltable[spell] then
			skilltable[spell].learned=true
		end
	end
end

local ERR_LEARN_RECIPE_S_fmt = ERR_LEARN_RECIPE_S:gsub("%.","%%."):gsub("%%s","(.+)")
--local TRADESKILL_LOG_FIRSTPERSON_fmt = TRADESKILL_LOG_FIRSTPERSON:gsub("%%s","(.-)")

function ZGV:Profession_CHAT_MSG_SYSTEM(event,text)
	local _,_,item = text:find(ERR_LEARN_RECIPE_S_fmt)
	if item then
		self.recentlyLearnedRecipes[item]=true
	end
end





function ZGV:PerformTradeSkillGoal(goal)
	if not goal then return end
	if not goal.spellid then return end

	if goal.skillnum then
		-- skillup-based
		self:PerformTradeSkill(goal.spellid,goal.skillnum)
	elseif goal.targetid then
		self:PerformTradeSkill(goal.spellid,goal.count-GetItemCount(goal.targetid))
	end
end

function ZGV:PerformTradeSkill(id,count)
	if not count then count=1 end
	if count<=0 then return end
	local rec = ZGVP:GetRecipe(id)
	if not rec then return end
	if not (TradeSkillFrame and TradeSkillFrame:IsVisible()) then 
		C_TradeSkillUI.OpenTradeSkill(rec.skill) 
		return
	end

	C_TradeSkillUI.OpenTradeSkill(rec.skill)
	if TradeSkillFrame then TradeSkillFrame:SelectRecipe(id) end
	C_TradeSkillUI.CraftRecipe(id, count)
end

function ZGVP:GetRecipe(spellid)
	local RK = ZGV.db.char.RecipesKnown
	if not RK or not next(RK) then return false,"no data" end
	for skillid,recipes in pairs(RK) do
		if recipes[spellid] then return recipes[spellid] end
	end
	return false,"not found"
end

function ZGVP:KnowsRecipe(spellid)
	local ret,error = ZGVP:GetRecipe(spellid)
	if ret then
		return ret.learned,true
	else
		return false,false
	end
end

local pattern = "Skill (%d+) increased from (%d+) to (%d+)"
local function UpdateSkillConsole(_,_,msg)
	local id,from,to = msg:match(pattern)
	for name,skill in pairs(ZGV.db.char.SkillsKnown) do
		if skill.skillID==id then
			skill.level = to
			return
		end
	end
end


tinsert(ZGV.startups,{"Professions setup",function(self)
	--self:AddEventHandler("PLAYER_ENTERING_WORLD","CacheSkills") don't cache at start, load saved instead
	self:AddEventHandler("SKILL_LINES_CHANGED","CacheSkills")
	--self:AddEventHandler("CHAT_MSG_SKILL","CacheSkills")
	self:AddEventHandler("CONSOLE_MESSAGE",UpdateSkillConsole) -- replaces CHAT_MSG_SKILL for our needs
	self:AddEventHandler("TRADE_SKILL_SHOW","CacheSkills")
	self:AddEventHandler("TRADE_SKILL_DATA_SOURCE_CHANGED","CacheSkills")

	--[[ bfa alpha change
	self:AddEventHandler("TRADE_SKILL_UPDATE","CacheSkills")
	--]]
	self:AddEventHandler("CHAT_MSG_SYSTEM","Profession_CHAT_MSG_SYSTEM")
	self:AddEventHandler("NEW_RECIPE_LEARNED","Profession_NEW_RECIPE_LEARNED")

	self:AddEventHandler("TRADE_SKILL_LIST_UPDATE","CacheRecipes")

	--self:AddEventHandler("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	if not ZGV.db.char.SkillsKnown then
		ZGV.db.char.SkillsKnown = {}
		ZGV:CacheSkills()
	end

	ZGV.db.char.SkillsKnown[""] = {active=false,level=0,max=0,placeholder=true}

	ZGVP.SkillsKnown = ZGV.db.char.SkillsKnown
end})
