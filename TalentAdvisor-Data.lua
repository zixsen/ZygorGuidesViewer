local TA = ZGV.TalentAdvisor

--["display name"] = {spec index, recommended, {pve talent in row}, {optional pet spec}},

TA.Builds = {
	DEATHKNIGHT = {
		["Leveling Blood"] = {1,true, {2,1,1,2,3,1,3}},
		["Leveling Frost"] = {2,false, {2,2,3,2,3,2,1}},
		["Leveling Unholy"] = {3,false, {2,2,2,1,1,3,3}},
	},
	DEMONHUNTER = {
		["Leveling Havoc"] = {1,true, {2,2,1,3,3,3,1}},
		["Leveling Vengeance"] = {2, false, {1,1,1,1,3,1,1}},
	},
	DRUID = {
		["Leveling Balance"] = {1,false, {3,2,3,3,2,3,3}},
		["Leveling Feral"] = {2,true, {2,2,1,1,1,1,3}},
		["Leveling Guardian"] = {3,false, {2,1,3,3,3,2,3}},
		["Leveling Restoration"] = {4,false, {2,2,3,3,3,1,3}},
	},
	HUNTER = {
		["Leveling Beast Mastery"] = {1,true, {3,1,1,3,1,3,3},"Ferocity"},
		["Leveling Marksmanship"] = {2,false, {1,3,1,3,1,3,3},"Tenacity"},
		["Leveling Survival"] = {3,false, {1,1,1,2,2,3,2},"Tenacity"},
	},
	MAGE = {
		["Leveling Arcane"] = {1,false, {2,2,3,3,1,3,1}},
		["Leveling Fire"] = {2,false, {2,1,3,2,1,2,1}},
		["Leveling Frost"] = {3,true, {3,1,3,1,2,2,2}},
	},
	MONK = {
		["Leveling Brewmaster"] = {1,false, {2,3,1,3,1,3,1}},
		["Leveling Mistweaver"] = {2,false, {1,2,1,3,1,3,1}},
		["Leveling Windwalker"] = {3,true, {1,2,1,3,1,3,3}},
	},
	PALADIN = {
		["Leveling Holy"] = {1,false, {1,3,3,1,2,2,2}},
		["Leveling Protection"] = {2,false, {2,2,3,2,1,3,1}},
		["Leveling Retribution"] = {3,true, {2,1,3,2,2,1,2}},
	},
	PRIEST = {
		["Leveling Discipline"] = {1,false, {2,1,2,2,2,3,1}},
		["Leveling Holy"] = {2,false, {1,1,3,3,1,1,2}},
		["Leveling Shadow"] = {3,true, {1,2,1,1,1,1,1}},
	},
	ROGUE = {
		["Leveling Assassination"] = {1,false, {2,1,1,3,1,1,1}},
		["Leveling Outlaw"] = {2,true, {3,2,1,3,3,2,2}},
		["Leveling Subtlety"] = {3,false, {2,2,3,3,1,1,1}},
	},
	SHAMAN = {
		["Leveling Elemental"] = {1,false, {1,1,1,2,1,3,1}},
		["Leveling Enhancement"] = {2,true, {1,2,1,2,1,2,2}},
		["Leveling Restoration"] = {3,false, {3,3,1,2,3,2,3}},
	},
	WARLOCK = {
		["Leveling Affliction"] = {1,false, {2,2,1,1,1,1,3}},
		["Leveling Demonology"] = {2,true, {1,2,1,1,1,3,2}},
		["Leveling Destruction"] = {3,false, {1,1,1,3,2,3,3}},
	},
	WARRIOR = {
		["Leveling Arms"] = {1,true, {1,3,1,2,1,3,2}},
		["Leveling Fury"] = {2,false, {2,3,1,3,2,3,2}},
		["Leveling Protection"] = {3,false, {1,2,1,3,3,1,2}},
	},
}

TA.PetSpecs = {
	Ferocity=1,
	Tenacity=2,
	Cunning=3,
}