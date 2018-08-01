local ZGV = ZygorGuidesViewer
if not (ZGV or ZGV.ItemScore) then return end

local L = ZGV.L
local G = _G

local ItemScore = ZGV.ItemScore
local ProcScore = {}
ItemScore.ProcScore = ProcScore

ProcScore.DefinedPatterns = 37
ProcScore.DefinedPatternsDetails = 9
ProcScore.DefinedFallback = 2

ProcScore.Defaults={
	UseDuration = 60,
	AttackSpeed = 1.6,
	ICD = 45, 
	ProcChance = 0.2,
	}
local UD = ProcScore.Defaults

function ProcScore:GetPlayerStats()
	ProcScore.PlayerStats = {
		CRIT = GetCombatRating(CR_CRIT_MELEE),
		CRIT_BONUS = GetCombatRatingBonus(CR_CRIT_MELEE),
		HASTE = GetCombatRating(CR_HASTE_MELEE),
		VERSATILITY = GetCombatRating(29),
		MASTERY = GetMasteryEffect(),
		STRENGTH = UnitStat("player", 1),
		AGILITY = UnitStat("player", 2),
		STAMINA = UnitStat("player", 3),
		INTELLECT = UnitStat("player", 4),
		-- LEGION TEMP FIX, spirit is gone
		--SPIRIT = UnitStat("player", 5),
		}
end

ProcScore.Keywords = L["effect_keywords"]
ProcScore.KeywordsDynamic = L["effect_keywords_dynamic"]
ProcScore.KeywordsMerged={}

for i,v in pairs(ProcScore.Keywords) do ProcScore.KeywordsMerged[i]=v end
for i,v in pairs(ProcScore.KeywordsDynamic) do ProcScore.KeywordsMerged[i]=v end

ProcScore.Patterns = {}
ProcScore.PatternsDetails = {}
ProcScore.Fallback = {}
ProcScore.FallbackDetails = {}

function ProcScore:Sanitize(data)
	data = data:lower()
	data = data:gsub("  "," ")
	data = data:gsub(",","")
	local sanitize_rules = L["effect_sanitize_rules"]
	for i,v in pairs(sanitize_rules) do
		data = data:gsub(i,v)
	end
	return data
end

function ProcScore:PreparePatterns()
	table.wipe(ProcScore.Patterns)
	table.wipe(ProcScore.PatternsDetails)
	table.wipe(ProcScore.Fallback)
	table.wipe(ProcScore.FallbackDetails)
	local function replace_placeholders(pattern)
		pattern = pattern:gsub("%(", "%%(")
		pattern = pattern:gsub("%)", "%%)")
		pattern = pattern:gsub("%$word", "([%%w]+)")
		pattern = pattern:gsub("%$ignore", ".+")
		pattern = pattern:gsub("%$number", "([%%d%%.%%%%]+)")
		pattern = ProcScore:Sanitize(pattern)
		return pattern
	end

	for i=1,ProcScore.DefinedPatterns do 
		local pattern = replace_placeholders(L["effect"..i])
		local keywords = L["effect"..i.."_returns"]
		ProcScore.Patterns[i]={pattern=pattern,keywords=keywords}
		if L["effect"..i.."_defaults"]~="effect"..i.."_defaults" then
			ProcScore.Patterns[i].defaults = L["effect"..i.."_defaults"]
		end
	end
	for i=1,ProcScore.DefinedPatternsDetails do 
		local pattern = replace_placeholders(L["effect_details"..i])
		local keywords = L["effect_details"..i.."_returns"]
		ProcScore.PatternsDetails[i]={pattern=pattern,keywords=keywords}
	end

	for i=1,ProcScore.DefinedFallback do 
		local pattern = replace_placeholders(L["fallback"..i])
		local keywords = L["fallback"..i.."_returns"]
		ProcScore.Fallback[i]={pattern=pattern,keywords=keywords}
		if L["fallback"..i.."_defaults"]~="fallback"..i.."_defaults" then
			ProcScore.Fallback[i].defaults = L["fallback"..i.."_defaults"]
		end
	end
end

function ProcScore:ParseEffect(data)
	data = ProcScore:Sanitize(data)
	local effectmode = (data:find("equip:") and "equip") or (data:find("use:") and "use")
	if not effectmode then return false,"no effect" end

	local variables = {}
	local matchFound = false
	for _,patterndata in ipairs(ProcScore.Patterns) do 
		local pattern = patterndata.pattern
		local keywords = patterndata.keywords
		local defaults = patterndata.defaults or {}
		local results = {data:match(pattern)}
		if results[1] then
			for j=1,#keywords do
				variables[keywords[j]]=results[j]
			end
			for stat,value in pairs(defaults) do
				variables[stat]=value
			end
			matchFound = true
			break
		end
	end

	if not matchFound then -- last try, use fallbacks
		for keyword,zygorword in pairs(ProcScore.KeywordsMerged) do
			if data:find(keyword) then 
				for i=1,2 do 
					local pattern = ProcScore.Fallback[i].pattern
					local keywords = ProcScore.Fallback[i].keywords
					local defaults = ProcScore.Fallback[i].defaults or {}
					pattern = pattern:gsub("statname",keyword)
					local results = {data:match(pattern)}
					if results[1] then
						variables.stat=keyword
						for j=1,#keywords do
							if (tonumber(results[j]) or tonumber((results[j]:gsub("%%","")))) then
								variables[keywords[j]]=results[j]
							end
						end
						for stat,value in pairs(defaults) do
							variables[stat]=value
						end
						matchFound = true
						break
					end
				end
				break
			end
		end
	end
	
	if matchFound then
		for _,patternsdetailsdata in ipairs(ProcScore.PatternsDetails) do 
			local pattern = patternsdetailsdata.pattern
			local keywords = patternsdetailsdata.keywords
			if pattern and keywords then
				local results = {data:match(pattern)}
				if results[1] then
					for j=1,#keywords do
						variables[keywords[j]]=results[j]
					end
				end
			end
		end

		local function get_highest_stat(...)
			local foundval,foundname = 0,""
			for _,name in pairs({...}) do 
				if ProcScore.PlayerStats[name] > foundval then
					foundval = ProcScore.PlayerStats[name]
					foundname = name
				end
			end
			return foundname,foundval
		end

		if not variables.amount or not variables.stat then
			return false,variables
		end

		variables.orgstat = variables.stat
		if ProcScore.KeywordsMerged[variables.stat] then
			variables.stat = ProcScore.KeywordsMerged[variables.stat] -- no conversion needed, just fix name
			if variables.amount and variables.amount:match("%%") then -- if percentage, then grab proper stat and calculate value
				if ProcScore.PlayerStats[variables.stat] then
					variables.amount = tonumber((variables.amount:gsub("%%","")))/100 * ProcScore.PlayerStats[variables.stat]
				end
			end
		-- variables.stat is after sanitization, so should be language independant
		elseif variables.stat == "absorbs" or variables.stat == "heal" or variables.stat == "health" then
			variables.stat = "STAMINA"
			if tonumber(variables.amount) then 
				variables.amount = variables.amount *0.1
			else
				variables.amount = tonumber((variables.amount:gsub("%%","")))/100 * UnitHealth("player") *0.1
			end
		elseif variables.stat == "dodge" or variables.stat == "parry" then
			variables.stat = "STAMINA"
			variables.amount = variables.amount *0.45
		elseif variables.stat == "mana" then
			variables.stat = "SPIRIT"
			variables.amount = variables.amount *0.88
		elseif variables.stat == "varstat1" then
			variables.stat = get_highest_stat("STRENGTH","AGILITY","INTELLECT")
		elseif variables.stat == "varstat2" then
			variables.stat = get_highest_stat("STRENGTH","AGILITY","INTELLECT","SPIRIT")
		elseif variables.stat == "varstat3" then
			variables.stat = get_highest_stat("CRIT","HASTE","MASTERY")
		elseif variables.stat == "varstat4" then
			variables.amount = 0
			variables.stat = get_highest_stat("CRIT","HASTE","MASTERY")
			if variables.stat~="CRIT" then variables.amount=variables.amount+ProcScore.PlayerStats.CRIT end
			if variables.stat~="HASTE" then variables.amount=variables.amount+ProcScore.PlayerStats.HASTE end
			if variables.stat~="MASTERY" then variables.amount=variables.amount+ProcScore.PlayerStats.MASTERY end
		elseif variables.stat == "varstat5" then
			variables.stat = get_highest_stat("STRENGTH","AGILITY")
		end

		if variables.stat == "CRIT" and not tonumber(variables.amount) then
			-- grants x% crital chance
			local bonusPerPoint = ProcScore.PlayerStats.CRIT/ProcScore.PlayerStats.CRIT_BONUS
			local gives = (tonumber((variables.amount:gsub("%%",""))) - ProcScore.PlayerStats.CRIT_BONUS)
			variables.amount = (tonumber((variables.amount:gsub("%%",""))) - ProcScore.PlayerStats.CRIT_BONUS) * bonusPerPoint
		end

		if variables.amountmin then
			variables.amount = (variables.amountmin+variables.amountmax)/2
		end
		variables = ProcScore:ProcessEffect(effectmode,variables)

		if type(variables.amount)~="number" then
			-- fallback rules failed to grab anything that made sense, don't score this effect
			return false,variables
		else
			return true,variables
		end
	end

	return false,variables
end

function ProcScore:ProcessEffect(mode,var)
	var.icd = ((var.icdm or 0) * 60) + (var.icds or 0)
	if var.icd == 0 then var.icd = nil end
	if var.chance then 
		var.chance = var.chance:gsub("%%","")
		var.chance = tonumber(var.chance)/100
	end

	if mode == "use" then
		var.mode = "use1"
		if not var.icd then var.icd = UD.ICD end
		if not var.duration then var.duration = UD.UseDuration end
		var.uptime = var.duration / var.icd
	end
	if mode == "equip" then
		if var.chance and var.icd and var.duration then
			var.mode = "equip1"
			var.procperiod = var.icd + (UD.AttackSpeed / var.chance)
			var.uptime = var.duration / var.procperiod
		elseif var.ppm and var.stacks and var.duration then -- var.stacksing buff
			var.mode = "equip2"
			var.uptime = var.ppm * (var.duration / 60)
			var.amount = var.amount * (var.stacks / 2)
		elseif var.ppm and var.duration then -- proc per minute var.chance
			var.mode = "equip3"
			var.uptime = var.ppm * (var.duration / 60)
		elseif var.chance and var.icd then -- proc var.chance trinkets
			var.mode = "equip4"
			var.procperiod = var.icd + (UD.AttackSpeed / var.chance)
			var.uptime = var.icd / var.procperiod 
		elseif var.stat=="DAMAGE_PER_SECOND" and var.ppm then
			var.mode = "equip5"
			var.duration = 1
			var.uptime = var.ppm * (1/60)
		else -- fill missing data with defaults
			var.mode = "equip6"
			var.procperiod = (var.icd or UD.ICD) + (UD.AttackSpeed / (var.chance or UD.ProcChance))
			var.uptime = (var.duration or var.icd or UD.ICD) / var.procperiod 
		end
	end

	var.uptime = (math.floor(var. uptime*100)/100)

	var.orgamount = var.amount
	if var.uptime and tonumber(var.amount) then
		var.amount = math.floor(var.amount * var.uptime)
	end

	return var
end