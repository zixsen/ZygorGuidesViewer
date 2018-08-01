local ZGV=ZygorGuidesViewer
if not ZGV then return end

local RaceClassMatch = ZGV.RaceClassMatch

function ZGV:QDB_Init()
	-- move quests from faction array to common
	if UnitFactionGroup("player")=="Alliance" then 
		for i,v in pairs(ZGV.Quest_Cache_Ally) do
			ZGV.Quest_Cache[i] = v
		end
	end
	
	if UnitFactionGroup("player")=="Horde" then 
		for i,v in pairs(ZGV.Quest_Cache_Horde) do
			ZGV.Quest_Cache[i] = v
		end
		
	end

	-- clear faction arrays, as they are no longer needed
	ZGV.Quest_Cache_Ally = nil
	ZGV.Quest_Cache_Horde = nil

	-- merge quests from includes
	for gname,guide in pairs(ZGV.Quest_Cache) do
		if guide.includes then
			ZGV:QDB_GetIncludeQuests(gname)
		end
	end

	for gname,guidequests in pairs(ZGV.Quest_Cache) do
		for index,questdata in pairs(guidequests) do
			local wipe = false
			-- only conditions cannot change during single gameplay session, so depending on RCM result either unset the condition (if RCM is valid), or remove whole quest pack (if invalid)
			if questdata.step_only then 
				if RaceClassMatch(_,questdata.step_only) then
					questdata.step_only = nil
				else
					guidequests[index] = nil
				end
			end
			if questdata.goal_only then 
				if RaceClassMatch(_,questdata.goal_only) then
					questdata.goal_only = nil
				else
					guidequests[index] = nil
				end
			end

			if questdata.step_onlyif then setfenv(questdata.step_onlyif,ZGV.Parser.ConditionEnv) end
			if questdata.goal_onlyif then setfenv(questdata.goal_onlyif,ZGV.Parser.ConditionEnv) end
		end
	end					
end

function ZGV:QDB_GetIncludeQuests(name)
	if not ZGV.Quest_Cache[name] then return end

	local include = ZGV.Quest_Cache[name]
	if include.includes then
		for _,subname in pairs(include.includes) do
			local include_quests = ZGV:QDB_GetIncludeQuests(subname)
			if include_quests then for _,questdata in pairs(include_quests) do
				table.insert(include,questdata)
			end end
		end
		include.includes = nil
	end
	return include
end

tinsert(ZGV.startups,{"Quest DB",function(self)
	ZGV:QDB_Init()
end})