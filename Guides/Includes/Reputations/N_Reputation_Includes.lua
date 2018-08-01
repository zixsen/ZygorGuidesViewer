local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

----------------------------
----- Arakkoa Outcasts -----
----------------------------

ZygorGuidesViewer:RegisterInclude("AOutcasts_Rep",[[
	stickystart "info"
	step
	label "farm"
		Killing enemies and questing in Spires of Arak gives you Arakkoa Outcasts rep:
		Farm in Skettis |next "skettis" |confirm
		Farm in Lost Veil Anzu |next "veil" |confirm
	step
	label "skettis"
		kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
		Kill level 100 mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.9,11.7
		Click to return to the menu |next "farm" |confirm
	step
	label "veil"
		kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86155+, Highmaul Skullcrusher##89127+
		Kill level 100 mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.4,45.3
		Click to return to the menu |next "farm" |confirm
	step
	label "info"
		Your current reputation rank is:
		_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
		_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
		_Honored_ |only if rep('Arakkoa Outcasts')==Honored
		_Revered_ |only if rep('Arakkoa Outcasts')==Revered
		_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
]])

---------------------------------------------
----- Steamwheedle Preservation Society -----
---------------------------------------------

ZygorGuidesViewer:RegisterInclude("SteamPS_Rep",[[
	step
	label "menu"
		You Are _Neutral_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Neutral
		You Are _Friendly_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Friendly
		You Are _Honored_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Honored
		You Are _Revered_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Revered
		You Are _Exalted_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Exalted
		_Click a line below to_:
		Farm Gorian Artifact Fragments |next "farm" |confirm
		_
		Chest runs for Artifact Fragments and Highmaul Relics |next "loot" |confirm
		_
		Kill level 100 Rares in Nagrand |next "rare" |confirm
	step
	label "farm"
		kill Direfang Prowler##86931+, Warsong Wolf Trainer##87231+, Marsh Anaconda##87039+, Highmaul Guard##87221+, Young Razorclaw##88957+, Wetland Riverbeast##87020+, Grand Elekk##86741+, Thorncoat Talbuk##86727+
		collect Gorian Artifact Fragment##118099 |n |goto Nagrand D 36.0,34.1
		|tip Turn these in as stacks of 20 for Steamwheedle Preservation Society reputation.
		Click to turn in |confirm |next "rare_find"
	step
	label "loot"
		Follow the path, looking at these locations for Highmaul Reliquary chests
		map Nagrand D
		path follow loose; loop on; ants straight
		path	27.8,46.4	35.1,48.6	37.4,42.9
		path	49.1,37.6	52.7,33.6	55.2,34.2
		path	56.5,38.2	63.1,36.0	64.7,21.6
		path	59.0,20.0	57.8,18.6	51.8,26.1
		path	49.9,25.7	40.6,25.0	38.8,27.5
		click Highmaul Reliquary##237227
		collect Gorian Artifact Fragment##118099 |n
		collect Highmaul Relic##118100 |n
		|tip You turn these in for Steamwheedle Preservation Society reputation.
		Click to turn in |confirm
	step
	label "rare_find"
		talk Sallee Silverclamp##87393
		|tip Turn in your Highmaul Relics and Gorian Artifact Fragments.
		accept A Rare Find##37125 |goto Nagrand D 50.4,41.3 |instant |repeatable |or |only if itemcount(118100) >= 1
		accept Fragments of the Past##35147 |goto Nagrand D 50.4,41.3 |instant |repeatable |or |only if itemcount(118099) >= 20
		_Click_ to return to the menu |confirm |next "menu"
	step
	label "rare"
		Follow the path:
		map Nagrand D
		path	30.0,44.8	34.1,51.6	41.7,45.0
		path	60.3,38.6	64.4,30.4	62.2,17.5
		path	51.2,16.5	48.1,22.0	37.5,38.5
		kill Thek'talon##86750,Mu'gra##87666, Xelganak##86835, Dekorhan##86743, Direhoof##86729, Bergruu##86732, Aogexon##86774, Gagrog the Brutal##86771, Vileclaw##88951
		_Collect the items that each rare drops_ |only if itemcount(118660) ==0 or itemcount(118660) ==0 or itemcount(118659)==0 or itemcount(118661)==0 or itemcount(118656) ==0 or itemcount(118657)==0 or itemcount(118655)==0 or itemcount(118654)==0 or itemcount(118658)==0 or itemcount(120172)==0
		collect Thek'talon's Talon##118660 |n |only if itemcount(118660) >= 1
		collect Mu'gra's Head##118659 |n |only if itemcount(118659) >= 1
		collect Xelganak's Stinger##118661 |n |only if itemcount(118661) >= 1
		collect Dekorhan's Tusk##118656 |n |only if itemcount(118656) >= 1
		collect Direhoof's Hide##118657 |n |only if itemcount(118657) >= 1
		collect Bergruu's Horn##118655 |n |only if itemcount(118655) >= 1
		collect Aogexon's Fang##118654 |n |only if itemcount(118654) >= 1
		collect Gagrog's Skull##118658 |n |only if itemcount(118658) >= 1
		collect Vileclaw's Claw##120172 |n |only if itemcount(120172) >= 1
		|tip You don't have to collect them all.
		Click to turn in |confirm
	step
		talk Gazmolf Futzwangler##87706 |goto Nagrand D/0 50.3,41.1
		|tip Turn in your quest items.
		accept Aogexon's Fang##37210 |only if itemcount(118654) >= 1 |instant |or
		accept Bergruu's Horn##37211 |or |only if itemcount(118655) >= 1 |instant |or
		accept Dekorhan's Tusk##37221 |or |only if itemcount(118656) >= 1 |instant |or
		accept Direhoof's Hide##37222 |or |only if itemcount(118657) >= 1 |instant |or
		accept Gagrog's Skull##37223 |or |only if itemcount(37223) >= 1 |instant |or
		accept Mu'gra's Head##37224 |or |only if itemcount(118659) >= 1 |instant |or
		accept Thek'talon's Talon##37225 |or |only if itemcount(118660) >= 1 |instant |or
		accept Xelganak's Stinger##37226 |or |only if itemcount(118661) >= 1 |instant |or
		accept Vileclaw's Claw##37520 |or |only if itemcount(120172) >= 1 |instant |or
		_Click_ to return to the menu |confirm always |next "menu" |only if default
]])

---------------------------
----- Tabard Includes -----
---------------------------

ZygorGuidesViewer:RegisterInclude("WATabard",[[
		talk Cielstrasza##32533 |only if rep("The Wyrmrest Accord")<Exalted
		buy 1 Tabard of the Wyrmrest Accord##43156 |goto Dragonblight 59.8,53.0 |only if rep("The Wyrmrest Accord")<Exalted
]])

ZygorGuidesViewer:RegisterInclude("RamkahenTabard",[[
		talk Blacksmith Abasi##48617 |only if rep("Ramkahen")<Exalted
		buy 1 Tabard of Ramkahen##65904 |goto Uldum 54.1,33.3 |only if rep("Ramkahen")<Exalted
]])