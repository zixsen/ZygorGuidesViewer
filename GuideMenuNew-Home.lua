local ZGV = ZygorGuidesViewer
if not ZGV then return end

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"title", text=[[Featured Content:]]},
	{"banner", image=ZGV.DIR.."\\Skins\\banner"},

	{"section", text=[[EVENTS]]},
	{"item", text=[[Added |cfffe6100The Burning of Teldrassil|r.]], guide="EVENTS\\World Events\\Battle for Azeroth (110-120)\\The Burning of Teldrassil"},
	{"section", text=[[DAILIES]]},
	{"item", text=[[Added |cfffe6100Darkshore World Quests|r.]], guide="DAILIES\\Battle for Azeroth\\Darkshore World Quests"},


	{"section", text=[[LEVELING]]},
	{"item", text=[[Added |cfffe6100Argus Campaign|r.]], guide="LEVELING\\Legion (100-110)\\Argus Campaign"},
	{"item", text=[[Added |cfffe6100The Deceiver's Downfall|r.]], guide="LEVELING\\Legion (100-110)\\The Deceiver\'s Downfall"},
	{"item", text=[[Added |cfffe6100Legion Invasions|r.]], guide="LEVELING\\Legion (100-110)\\Legion Invasions"},
	{"item", text=[[Updated |cfffe6100Legionfall Campaign|r.]], guide="LEVELING\\Legion (100-110)\\Broken Shore Campaign"},
	{"item", text=[[Added |cfffe6100Balance of Power Questline|r.]], guide="LEVELING\\Legion (100-110)\\Balance of Power Questline"},
	{"item", text=[[Updated |cfffe6100Artifact Knowledge 1-40|r.]], guide="LEVELING\\Legion (100-110)\\Artifact Knowledge 1-40"},
	{"item", text=[[Added |cfffe6100Void Elf Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth\\Void Elf Race Unlock",faction="A"},
	{"item", text=[[Added |cfffe6100Lightforged Draenei Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth\\Lightforged Draenei Race Unlock",faction="A"},
	{"item", text=[[Removed |cfffe6100Nightborne Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth\\Nightborne Race Unlock",faction="H"},
	{"item", text=[[Updated |cfffe6100Highmountain Tauren Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth\\Highmountain Tauren Race Unlock",faction="H"},

	{"section", text=[[DUNGEONS]]},
	{"item", text=[[Added |cfffe6100Argus Invasions|r.]], guide="DUNGEONS\\Legion Scenarios\\Argus Invasions"},
	{"item", text=[[Added |cfffe6100Legion Dungeons|r.]], folder="DUNGEONS\\Legion Dungeons"},
	{"item", text=[[Added |cfffe6100Legion Raids|r.]], folder="DUNGEONS\\Legion Raids"},
	{"item", text=[[Added |cfffe6100Legion Scenarios|r.]], folder="DUNGEONS\\Legion Scenarios"},
	{"item", text=[[Updated |cfffe6100Antorus, the Burning Throne|r.]], guide="DUNGEONS\\Legion Raids\\Antorus, the Burning Throne"},
	{"item", text=[[Updated |cfffe6100Antorus, the Burning Throne - Forbidden Descent|r.]], guide="DUNGEONS\\Legion Raids\\Antorus, the Burning Throne - Forbidden Descent"},
	{"item", text=[[Updated |cfffe6100Antorus, the Burning Throne - Hope's End|r.]], guide="DUNGEONS\\Legion Raids\\Antorus, the Burning Throne - Hope\'s End"},
	{"item", text=[[Updated |cfffe6100Antorus, the Burning Throne - Light's Breach|r.]], guide="DUNGEONS\\Legion Raids\\Antorus, the Burning Throne - Light\'s Breach"},
	{"item", text=[[Updated |cfffe6100Antorus, the Burning Throne - Seat of the Pantheon|r.]], guide="DUNGEONS\\Legion Raids\\Antorus, the Burning Throne - Seat of the Pantheon"},
	{"item", text=[[Updated |cfffe6100Antorus, The Burning Throne - Forbidden Descent|r.]], guide="DUNGEONS\\Legion Raids\\Antorus, the Burning Throne - Forbidden Descent (LFR)"},

	{"section", text=[[DAILIES]]},
	{"item", text=[[Added |cfffe6100Patch 7.3 World Quests|r.]], guide="DAILIES\\Legion\\World Quests"},
	{"item", text=[[Added |cfffe6100The Originals|r.]], guide="DAILIES\\Legion\\The Originals"},

	{"section", text=[[PETSMOUNTS]]},
	{"item", text=[[Added |cfffe6100Highmountain Thunderhoof|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Achievement Mounts\\Highmountain Thunderhoof",faction="H"},
	{"item", text=[[Added |cfffe6100Lightforged Felcrusher|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Achievement Mounts\\Lightforged Felcrusher",faction="A"},
	{"item", text=[[Added |cfffe6100Nightborne Manasaber|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Achievement Mounts\\Nightborne Manasaber",faction="H"},
	{"item", text=[[Added |cfffe6100Starcursed Voidstrider|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Achievement Mounts\\Starcursed Voidstrider",faction="A"},

	{"section", text=[[ACHIEVEMENTS]]},
	{"item", text=[[Added |cfffe6100Legion - PATCH 7.3 Quest Launch|r.]], guide="ACHIEVEMENTS\\General\\Legion\\Legion - PATCH 7.3 Quest Launch"},
	{"item", text=[[Added |cfffe6100New Legion Appearance Achievements|r.]], folder="ACHIEVEMENTS\\Collections\\Appearances\\Legion"},
	{"item", text=[[Added |cfffe6100Legion Class Hall Artifact Achievements|r.]], folder="ACHIEVEMENTS\\Class Hall\\Artifacts\\Legion"},
	{"item", text=[[Added |cfffe6100Legion Dungeon & Raid Achievements|r.]], folder="ACHIEVEMENTS\\Dungeons & Raids"},
	{"item", text=[[Added |cfffe6100New Legion Exploration Achievements|r.]], folder="ACHIEVEMENTS\\Exploration\\Legion"},
	{"item", text=[[Added |cfffe6100New Legion Feats of Strength Achievements|r.]], folder="ACHIEVEMENTS\\Feats of Strength\\Player vs. Player\\Legion"},
	{"item", text=[[Added |cfffe6100New Legion Pet Battle Achievements|r.]], folder="ACHIEVEMENTS\\Pet Battles\\Battle\\Legion"},
	{"item", text=[[Added |cfffe6100New Legion PVP Achievements|r.]], folder="ACHIEVEMENTS\\Player vs. Player\\Honor\\Legion"},
	{"item", text=[[Added |cfffe6100New Legion Fishing Achievements|r.]], folder="ACHIEVEMENTS\\Professions\\Fishing\\Legion"},
	{"item", text=[[Added |cfffe6100New Legion Quest Achievements|r.]], folder="ACHIEVEMENTS\\Quests\\Legion"},
	{"item", text=[[Added |cfffe6100New Legion Reputation Achievements|r.]], folder="ACHIEVEMENTS\\Reputation\\Legion"},
	{"item", text=[[Added |cfffe6100Allied Races: Highmountain Tauren|r.]], guide="ACHIEVEMENTS\\Feats of Strength\\Allied Races: Highmountain Tauren",faction="H"},
	{"item", text=[[Added |cfffe6100Allied Races: Lightforged Draenei|r.]], guide="ACHIEVEMENTS\\Feats of Strength\\Allied Races: Lightforged Draenei",faction="A"},
	{"item", text=[[Added |cfffe6100Allied Races: Nightborne|r.]], guide="ACHIEVEMENTS\\Feats of Strength\\Allied Races: Nightborne",faction="H"},
	{"item", text=[[Added |cfffe6100Allied Races: Void Elf|r.]], guide="ACHIEVEMENTS\\Feats of Strength\\Allied Races: Void Elf",faction="A"},

}


-- faction="Alliance" {"separator"},