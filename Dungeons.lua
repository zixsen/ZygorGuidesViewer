local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L

local Dungeons = {}

ZGV.Dungeons = Dungeons

local DungeonProto = {}
function DungeonProto:GetName(difficulty)
	difficulty = difficulty or self.difficulty
	
	return L['dungeon_'..difficulty]:format(self.name)
end


local DungeonNamesToMapNames = {
	['Deadmines'] = "The Deadmines",
}
setmetatable(DungeonNamesToMapNames,{__index=function(t,map) return map end})  -- return the same name if no alias is found
Dungeons.DungeonNamesToMapNames  = DungeonNamesToMapNames

local function UpdateDungeonItemlevels(dungeon)
	-- get item requirements - if they're low enough, we just won't know it, but we won't care
	local _,code,a,b = GetLFDLockInfo(dungeon.id,1)
	if code==4 then
		dungeon.min_ilevel = a
	else
		dungeon.min_ilevel = 0
	end
end

Dungeons.ExpansionsLimits = {
	[0] = 60,
	[1] = 80,
	[2] = 80,
	[3] = 90,
	[4] = 90,
	[5] = 100,
	[6] = 110,
	[7] = 120,
}

-- Timewalks and legion mythics do not have any lfg entry, so we need to hardcode basic data for them
local hardcoded_dungeons = {
	-- timewalk tbc
	["e_249"] = {expansionLevel=1, minLevel=71, difficulty=24, name="Magisters' Terrace"},
	["e_250"] = {expansionLevel=1, minLevel=71, difficulty=24, name="Mana-Tombs"},
	["e_254"] = {expansionLevel=1, minLevel=71, difficulty=24, name="The Arcatraz"},
	["e_255"] = {expansionLevel=1, minLevel=71, difficulty=24, name="The Black Morass"},
	["e_259"] = {expansionLevel=1, minLevel=71, difficulty=24, name="The Shattered Halls"},
	["e_260"] = {expansionLevel=1, minLevel=71, difficulty=24, name="The Slave Pens"},
	-- timewalk wotlk
	["e_271"] = {expansionLevel=2, minLevel=81, difficulty=24, name="Ahn'kahet: The Old Kingdom"},
	["e_274"] = {expansionLevel=2, minLevel=81, difficulty=24, name="Gundrak"},
	["e_275"] = {expansionLevel=2, minLevel=81, difficulty=24, name="Halls of Lightning"},
	["e_278"] = {expansionLevel=2, minLevel=81, difficulty=24, name="Pit of Saron"},
	["e_281"] = {expansionLevel=2, minLevel=81, difficulty=24, name="The Nexus"},
	["e_286"] = {expansionLevel=2, minLevel=81, difficulty=24, name="Utgarde Pinnacle"},
	-- timewalk cata
	["e_184"] = {expansionLevel=3, minLevel=85, difficulty=24, name="End Time"},
	["e_71"]  = {expansionLevel=3, minLevel=85, difficulty=24, name="Grim Batol"},
	["e_69"]  = {expansionLevel=3, minLevel=85, difficulty=24, name="Lost City of the Tol'vir"},
	["e_67"]  = {expansionLevel=3, minLevel=85, difficulty=24, name="The Stonecore"},
	["e_68"]  = {expansionLevel=3, minLevel=85, difficulty=24, name="The Vortex Pinnacle"},
	["e_65"]  = {expansionLevel=3, minLevel=85, difficulty=24, name="Throne of the Tides"},
	-- mythic legion
	["e_777"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Assault on Violet Hold"},
	["e_740"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Black Rook Hold"},
	["e_800"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Court of Stars"},
	["e_762"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Darkheart Thicket"},
	["e_721"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Halls of Valor"},
	["e_727"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Maw of Souls"},
	["e_767"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Neltharion's Lair"},
	["e_726"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="The Arcway"},
	["e_707"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Vault of the Wardens"},
	["e_860"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Return to Karazhan"},
	["e_900"]  = {expansionLevel=6, minLevel=110, min_ilevel=795, difficulty=23, name="Cathedral of Eternal Night"},
}

local attunements = {
	["e_860"] = {attunement_achieve=11547}, -- Return to Karazhan M
	["e_900"] = {attunement_queston=46244}, -- Cathedral of Eternal Night M
	[1115] = {attunement_achieve=11547}, -- Return to Karazhan HC
	[1488] = {attunement_queston=46244}, -- Cathedral of Eternal Night HC
}


setmetatable(Dungeons,{
	__index=function(t,id)
		-- cache from game, to get all data in one place
		if not id then return end

		if type(id)=="string" and not hardcoded_dungeons[id] then return end   -- error("No function Dungeons."..id)   -- don't error, this breaks Spoo.

		local name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, min_ilevel, attunement_achieve, attunement_quest, attunement_queston
		if hardcoded_dungeons[id] then
			local d=hardcoded_dungeons[id]
			name,expansionLevel,minLevel,min_ilevel,difficulty = d.name,d.expansionLevel,d.minLevel,d.min_ilevel,d.difficulty
		else
			name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday = GetLFGDungeonInfo(id)
		end

		if name and typeID~=4 then
			local dungeon = {}

			dungeon.id = id
			dungeon.name = name
			dungeon.difficulty = difficulty
			dungeon.isHoliday = isHoliday
			dungeon.minLevel = minLevel
			dungeon.expansionLevel = expansionLevel
			dungeon.maxScaleLevel = Dungeons.ExpansionsLimits[expansionLevel]

			if attunements[id] then
				dungeon.attunement_achieve = attunements[id].attunement_achieve
				dungeon.attunement_quest = attunements[id].attunement_quest
				dungeon.attunement_queston = attunements[id].attunement_queston
			end

			local map = ZGV.LibRover.data.MapIDsByName[DungeonNamesToMapNames[name]]
			dungeon.map=map

			rawset(t,id or 0,dungeon)
			setmetatable(dungeon,{__index=DungeonProto})
			return dungeon
		end
	end,
})

function Dungeons:Get(id)
	local dungeon = self[id]
	UpdateDungeonItemlevels(dungeon)
	return dungeon
end


function Dungeons:Init()
	--if not LFDDungeonList then return end
	for id=1,2000 do
		local cache_wasted = self[id]
	end
end

Dungeons:Init()

-- Set up listening for lock info.
local FRAME = CreateFrame("FRAME","ZGVDungeonsUpdateFrame")
FRAME:RegisterEvent("LFG_LOCK_INFO_RECEIVED")
FRAME:SetScript("OnEvent",function(self,event)
	if event=="LFG_LOCK_INFO_RECEIVED" then
		for id=1,2000 do
			local dungeon = Dungeons[id]
			if dungeon then  UpdateDungeonItemlevels(dungeon)  end
		end
	end
end)


ZGV.UTILS.Dungeons = {
	GetDungeonsByName = function()
		local bynames = {}
		for k,v in pairs(Dungeons) do if type(v)=="table" and v.name then
			bynames[v.name]=v
		end end
		return bynames
	end
}
