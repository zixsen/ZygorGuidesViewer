local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"


-- Cooking Farming
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Clam Meat, Small Lustrous Pearl",{
	condition_valid='raceclass("Horde")',
	meta={goldtype="route",levelreq={3,4},itemtype="misc"},
	items={{5503,324},{5498,8}},
	maps={"Echo Isles"},
},[[
	step
		map Echo Isles
		path follow smart; loop on; ants curved
		path	64.9,25.9	67.2,18.3	65.2,10.4
		path	59.4,9.3	54.9,13.1	56.7,23.7
		kill Spitescale Wavethrasher##38300+, Spitescale Siren##38301+ 
		|tip Follow the path as well as enter the cave when you come across it
		use Small Barnacled Clam##5523
		goldcollect 324 Clam Meat##5503
		goldcollect 8 Small Lustrous Pearl##5498
		|meta crap_items_follow=1
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Elekk Meat",{
	meta={goldtype="route",levelreq=92,itemtype="food"},
	items={{109134,232},{111557,656,'crap'}},
	maps={"Nagrand D"},
},[[
	step
	label "elekk_1"
		map Nagrand D
		path follow loose; loop on; ants curved; dist 20
		path	63.2,44.3	61.2,45.0	61.0,47.1
		path	59.8,47.3	60.3,48.9	62.1,46.7	
		path	62.8,49.0	63.7,49.6
		kill Meadowstomper##78460+, Tenderhoof Meadowstomper##78459+, Territorial Meadowstomper##78462+
		goldcollect 232 Raw Elekk Meat##109134
		|meta crap_items_follow=1
		goldcollect 656 Sumptuous Fur##111557
		goldtracker
		_Click here_ if you need another location to farm 
		|tip Sometimes multiple people can be farming the same location. |confirm |next "elekk_2"
		_Click here_ to sell items |confirm |next "sell"
	step
	label "elekk_2"
		map Nagrand D
		path follow smart; loop on; ants curved; dist 30
		path	50.4,61.3	48.6,60.8	47.3,60.8
		path	46.0,60.7	45.4,63.0	45.2,65.3
		path	45.9,68.7	48.5,70.3	50.4,68.4
		path	51.0,66.8	51.2,65.2
		kill Meadowstomper##78460+, Tenderhoof Meadowstomper##78459+, Territorial Meadowstomper##78462+
		goldcollect 232 Raw Elekk Meat##109134
		|meta crap_items_follow=1
		goldcollect 656 Sumptuous Fur##111557
		goldtracker
		_Click here_ if you would like to farm the previous location 
		|tip Sometimes multiple people can be farming the same location. |confirm |next "elekk_1"
		_Click here_ to sell items |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
]])
