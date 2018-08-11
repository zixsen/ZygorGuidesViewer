local ZGV = ZygorGuidesViewer
if not ZGV then return end

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"banner", image=ZGV.DIR.."\\Skins\\banner"},
	{"title", text=[[Welcome To Zygor Guide Viewer 7]]},

	{"section", text=[[LEVELING]]},
	{"item", text=[[Added |cfffe6100Intro & Quest Zone Choice|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"},
	{"item", text=[[Added |cfffe6100Tiragarde Sound|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Kul Tiras\\Tiragarde Sound",faction="A"},
	{"item", text=[[Added |cfffe6100Drustvar|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Kul Tiras\\Drustvar",faction="A"},
	{"item", text=[[Added |cfffe6100Stormsong Valley|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Kul Tiras\\Stormsong Valley",faction="A"},
	{"item", text=[[Added |cfffe6100Zuldazar|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Zandalar\\Zuldazar",faction="H"},
	{"item", text=[[Added |cfffe6100Nazmir|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir",faction="H"},
	{"item", text=[[Added |cfffe6100Vol'dun|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Zandalar\\Vol'dun",faction="H"},
	{"item", text=[[Added |cfffe6100War Campaign|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\War Campaign"},
	{"item", text=[[Added |cfffe6100Void Elf Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Void Elf Race Unlock",faction="A"},
	{"item", text=[[Added |cfffe6100Lightforged Draenei Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Lightforged Draenei Race Unlock",faction="A"},
	{"item", text=[[Added |cfffe6100Dark Iron Dwarf Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Dark Iron Dwarf Race Unlock",faction="A"},
	{"item", text=[[Added |cfffe6100Nightborne Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Nightborne Race Unlock",faction="H"},
	{"item", text=[[Added |cfffe6100Highmountain Tauren Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Highmountain Tauren Race Unlock",faction="H"},
	{"item", text=[[Added |cfffe6100Mag'har Orc Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Mag'har Orc Race Unlock",faction="H"},

	{"section", text=[[DUNGEONS]]},
	{"item", text=[[Added |cfffe6100Battle for Azeroth Dungeons|r.]], folder="DUNGEONS\\Battle for Azeroth Dungeons"},
	{"item", text=[[Added |cfffe6100Battle for Azeroth Raids|r.]], folder="DUNGEONS\\Battle for Azeroth Raids"},
	{"item", text=[[Added |cfffe6100Battle for Azeroth Scenarios|r.]], folder="DUNGEONS\\Battle for Azeroth Scenarios"},

	{"section", text=[[DAILIES]]},
	{"item", text=[[Added |cfffe6100Battle for Azeroth World Quests|r.]], folder="DAILIES\\Battle for Azeroth"},

	{"section", text=[[PROFESSIONS]]},
	{"item", text=[[Added |cfffe6100Kul Tiran Alchemy 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Kul Tiran Alchemy 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Blacksmithing 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Kul Tiran Blacksmithing 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Cooking 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Kul Tiran Cooking 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Enchanting 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Kul Tiran Enchanting 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Engineering 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Kul Tiran Engineering 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Fishing 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Kul Tiran Fishing 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Herbalism 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Kul Tiran Herbalism 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Inscription 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Kul Tiran Inscription 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Jewelcrafting 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Kul Tiran Jewelcrafting 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Leatherworking 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Kul Tiran Leatherworking 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Skinning 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Skinning\\Leveling Guides\\Kul Tiran Skinning 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Kul Tiran Tailoring 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Kul Tiran Tailoring 1-150 Leveling Guide",faction="A"},
	{"item", text=[[Added |cfffe6100Zandalari Alchemy 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Zandalari Alchemy 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Blacksmithing 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Zandalari Blacksmithing 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Cooking 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Zandalari Cooking 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Enchanting 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Zandalari Enchanting 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Engineering 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Zandalari Engineering 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Fishing 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Zandalari Fishing 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Herbalism 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Zandalari Herbalism 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Inscription 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Zandalari Inscription 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Jewelcrafting 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Zandalari Jewelcrafting 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Leatherworking 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Zandalari Leatherworking 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Skinning 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Skinning\\Leveling Guides\\Zandalari Skinning 1-150 Leveling Guide",faction="H"},
	{"item", text=[[Added |cfffe6100Zandalari Tailoring 1-150 Leveling Guide|r.]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Zandalari Tailoring 1-150 Leveling Guide",faction="H"},


}


-- faction="Alliance" {"separator"},