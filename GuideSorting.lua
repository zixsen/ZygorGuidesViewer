local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-- Main menu
ZygorGuidesViewer:RegisterGuideSorting({
	"BETA",
	"Leveling",
	"Loremaster",
	"Dungeons",
	"Gear",
	"Dailies",
	"Events",
	"Reputations",
	"Gold",
	"Professions",
	"Pets & Mounts",
	"Titles",
	"Achievements",
	"Macros",
})

-- Dungeons
ZygorGuidesViewer:RegisterGuideSorting({
	"Classic Dungeons",
	"Classic Raids",
	"Outland Dungeons",
	"Outland Raids",
	"Northrend Dungeons",
	"Northrend Raids",
	"Cataclysm Dungeons",
	"Cataclysm Raids",
	"Pandaria Dungeons",
	"Pandaria Raids",
	"Pandaria Scenarios",
	"Draenor Dungeons",
	"Draenor Raids",
	"Legion Dungeons",
	"Legion Raids",
	"Legion Scenarios",
	})

-- Leveling
ZygorGuidesViewer:RegisterGuideSorting({
	"Starter Guides",
	"Classic (1-10)",
	"Classic (10-60)",
	"The Burning Crusade (60-80)",
	"Wrath of the Lich King (60-80)",
	"Cataclysm (80-90)",
	"Pandaria (80-90)",
	"Draenor (90-100)",
	"Legion (100-110)",
	"Peak of Serenity",
	"The Loremaster",
	"Battle for Azeroth",
	})

-- Leveling alliance starters
if UnitFactionGroup("player")=="Alliance" then 
	ZygorGuidesViewer:RegisterGuideSorting({
		"Human (1-5)",
		"Dwarf (1-5)",
		"Night Elf (1-11)",
		"Gnome (1-5)",
		"Draenei (1-5)",
		"Worgen (1-13)",
		"Pandaren (1-12)",
		"Death Knight (55-58)",
		"Demon Hunter (98-100)"})
end

-- Leveling horde starters
if UnitFactionGroup("player")=="Horde" then 
	ZygorGuidesViewer:RegisterGuideSorting({
		"Orc (1-5)",
		"Undead (1-10)",
		"Tauren (1-4)",
		"Troll (1-5)",
		"Blood Elf (1-5)",
		"Goblin (1-10)",
		"Pandaren (1-12)",
		"Death Knight (55-58)",
		"Demon Hunter (98-100)"})
end
