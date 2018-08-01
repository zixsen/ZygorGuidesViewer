local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"


-- Cooking Farming
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Clam Meat, Small Lustrous Pearl",{
	condition_valid='raceclass("Alliance")',
	meta={goldtype="route",levelreq={17,18},itemtype="misc"},
	items={{5503,196},{5498,4},{2592,216,'crap'},{2589,292,'crap'}},
	maps={"Redridge Mountains"},
},[[
	step
		kill Murloc Nightcrawler##544+ |goto Redridge Mountains 71.8,56.1 
		|tip When you kill all 6, 2 more will spawn instantly
		use Small Barnacled Clam##5523
		goldcollect 196 Clam Meat##5503
		goldcollect 4 Small Lustrous Pearl##5498
		|meta crap_items_follow=1
		goldcollect 216 Wool Cloth##2592
		goldcollect 292 Linen Cloth##2589
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Elekk Meat",{
	meta={goldtype="route",levelreq=92,itemtype="food"},
	items={{109134,232},{111557,656,'crap'}},
	maps={"Shadowmoon Valley D"},
},[[
	step
		map Shadowmoon Valley D
		path follow smart; loop on; ants curved
		path	42.0,26.2	43.0,31.6	47.8,30.6
		path	55.6,37.6	58.6,40.6	63.0,41.6
		path	64.8,34.8	59.2,34.0	48.6,28.2
		path	47.4,26.0	44.2,28.4
		kill Pearltusk Calf##78371+, Pearltusk Bull##78387+, Pearltusk Grazer##78385+, Rockhide Calf##87699+, Rockhide Grazer##87700+, Rockhide Bull##87698+
		goldcollect 232 Raw Elekk Meat##109134
		|meta crap_items_follow=1
		goldcollect 656 Sumptuous Fur##111557
		goldtracker
		_Click here_ to sell items |confirm
	step
		#include "auctioneer"
]])
