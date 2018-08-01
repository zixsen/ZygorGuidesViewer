if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-------------------------
----- Timeless Isle -----
-------------------------

ZygorGuidesViewer:RegisterInclude("timeless_isle_prequests",[[
		Click the _Quest Accept_ Box:
		accept A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 61.7,20.4
		|tip If you have already been to Timeless Isle, this quest will not be available.
		Click here if this quest is unavailable |confirm
	step
		talk Chromie##73691
		|tip On the upper balcony of the palace.
		turnin A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 80.65,33.17 |only if havequest(33230)
		accept Journey to the Timeless Isle##33232 |goto 80.65,33.17
	step
		use Curious Bronze Timepiece##104110
		You will be teleported to the Timeless Isle |goto Timeless Isle/0 21.3,39.5 |noway |c
	step
		talk Chi-Ro the Skytamer##71939 |only Horde
		fpath Huojin Landing |goto 21.9,39.8 |only Horde
	step
		talk Watcher Alundra##73353
		turnin Journey to the Timeless Isle##33232 |goto 22.0,41.0
		accept Time Keeper Kairoz##33156 |goto 22.0,41.0
	step
		talk Kairoz##72870
		turnin Time Keeper Kairoz##33160 |goto 34.5,53.8
		accept A Timeless Tour##33161 |goto 34.5,53.8
		accept Time In Your Hands##33228 |goto 34.5,53.8
	step
		Explore The Misty Strand |q 33161/4 |goto 24.6,31.8
	step
		Explore Cavern of Lost Spirits |q 33161/1 |goto 42.9,41.9
	step
		Explore Red Stone Run |q 33161/6 |goto 50.9,46.6
	step
		Explore Firewalkers' Path |q 33161/3 |goto 50.4,78.5
	step
		Explore Old Pi'jiu |q 33161/5 |goto 37.5,75.5
	step
		Explore Croaking Hollow |q 33161/2 |goto 60.5,72.6
	step
		talk Kairoz##72870
		turnin A Timeless Tour##33161 |goto 34.5,53.8
		accept The Essence of Time##33336 |goto 34.5,53.8
	step
		kill Brilliant Windfeather##72762+, Windfeather Chick##71143+
		collect Epoch Stone##105715 |q 33336/1 |goto 32.2,51.9
	step
		talk Kairoz##72870
		turnin The Essence of Time##33336 |goto 34.5,53.5
	step
		talk Mistweaver Ai##73305
		Meet Mistweaver Ai |q 33228/2 |goto 42.8,55.7
	step
		talk Mistweaver Ku##73306
		Meet Mistweaver Ku |q 33228/3 |goto 42.8,54.7
	step
		kill Ironfur Herdling##72842+, Ironfur Grazer##72843+, Ironfur Great Bull##72844+
		kill Windfeather Chick##71143+, Windfeather Nestkeeper##72761+, Brilliant Windfeather##72762+
		earn 1000 Timeless Coin##777 |q 33228/1 |goto 43.9,55.4
	step
		talk Kairoz##72870
		turnin Time In Your Hands##33228 |goto 34.6,53.7
		accept Hints From The Past##33332 |goto 34.6,53.7
		accept The Last Emperor##33335 |goto 34.6,53.7
	step
		talk Mistweaver Ai##73305
		buy Time-Worn Journal##103977 |goto 42.8,55.6
	step
		talk Emperor Shaohao##73303
		Speak with Emperor Shaohao |q 33335/1 |goto 42.9,55.2
	step
		talk Emperor Shaohao##73303
		turnin The Last Emperor##33335 |goto 42.9,55.2
		accept Timeless Nutriment##33340 |goto 42.9,55.2
	step
		click Ripe Crispfruit##221689
		Consume a Timeless Nutriment |q 33340/1 |goto 42.8,53.3
	step
		talk Emperor Shaohao##73303
		turnin Timeless Nutriment##33340 |goto 42.9,55.2
		accept Wayshrines Of The Celestials##33341 |goto 42.9,55.2
	step
		Follow the path to activate one of the Shrines.
		map Timeless Isle
		path	30.1,45.7	26.8,52.2	30.5,62.6
		path	27.9,72.0	37.4,74.4	49.7,70.4
		path	66.1,72.3	63.9,50.7	35.0,29.6
		click Celestial Shrine
		|tip They are on a 10-15 minute cooldown, so just keep running around until you find an active one.
		Receive a Blessing of the Celestials |q 33341/1
	step
		talk Emperor Shaohao##73303
		turnin Wayshrines Of The Celestials##33341 |goto 42.9,55.2
	step
		talk Kairoz##72870
		turnin Hints From The Past##33332 |goto 34.5,53.8
		accept Timeless Treasures##33333 |goto 34.5,53.8
	step
		click Moss-Covered Chest##223089
		Find the Hidden Treasure |q 33333/1 |goto 46.8,46.8
	step
		talk Kairoz##72870
		turnin Timeless Treasures##33333 |goto 34.6,53.8
]])