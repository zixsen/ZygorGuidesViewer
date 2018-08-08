if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

--------------------
----- Brewfest -----
--------------------

ZygorGuidesViewer:RegisterInclude("Brewfest_Dailies",[[
		You will only be able to do 1 of the first 2 dailies in this guide, per day
		|tip Quests "Bark for the Barleybrews!" or "Bark for the Thunderbrews!".
		confirm
	step
		talk Becan Barleybrew##23627
		accept Bark for the Barleybrews!##11293 |or |goto Dun Morogh 56.1,38.0
		talk Daran Thunderbrew##23628
		accept Bark for the Thunderbrews!##11294 |or |goto 56.5,36.9
	step
		Ride your ram into Ironforge |goto Ironforge |noway |c |q 11293
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |goto Ironforge/0 15.8,84.6 |n
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		only if havequest (11293)
	step
		Ride your ram into Ironforge |goto Ironforge |noway |c |q 11294
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |goto Ironforge/0 15.8,84.6 |n
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		only if havequest (11294)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark Outside the Bank |q 11293/1 |goto Ironforge 31.7,66.7
		only if havequest (11293)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark in the Military Ward |q 11293/2 |goto 61.2,80.0
		only if havequest (11293)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark in the Hall of Explorers |q 11293/3 |goto 65.3,24.4
		only if havequest (11293)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark in the Mystic Ward |q 11293/4 |goto 29.5,14.2
		only if havequest (11293)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark Outside the Bank |q 11294/1 |goto Ironforge,31.7,66.7
		only if havequest (11294)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark in the Military Ward |q 11294/2 |goto 61.2,80.0
		only if havequest (11294)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark in the Hall of Explorers |q 11294/3 |goto 65.3,24.4
		only if havequest (11294)
	step
		Use your Ram Racing Reins as you run |use Ram Racing Reins##33306
		|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Go to this spot
		Bark in the Mystic Ward |q 11294/4 |goto 29.5,14.2
		only if havequest (11294)
	step
		talk Becan Barleybrew##23627
		turnin Bark for the Barleybrews!##11293 |goto Dun Morogh 56.1,38.0
		only if havequest (11293)
	step
		talk Daran Thunderbrew##23628
		turnin Bark for the Thunderbrews!##11294 |goto Dun Morogh,56.5,36.9
		only if havequest (11294)
	step
		Click the Dark Iron Mole Machine Wreckage |goto 56.0,37.2
		|tip It looks like a big metal gear laying on ground in the middle of the festival. It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
		Click the Dark Iron Mole Machine Wreckage
		|tip You have to defend the three kegs at these locations in order for it to show up.
		Click the Complimentary Brewfest Sampler here |goto 55.3,37.3
		Click the Complimentary Brewfest Sampler here |goto 55.7,38.1
		Throw the Sampler's at the Dark Iron Dwarves and the Mole Machines |use Complimentary Brewfest Sampler##33096
		accept This One Time, When I Was Drunk...##12020 |goto 56.0,37.1
	step
		talk Boxey Boltspinner##27215
		turnin This One Time, When I Was Drunk...##12020 |goto Dun Morogh 54.7,38.1
		achieve 1186
	step
		talk Neill Ramstein##23558
		accept Brew For Brewfest##29394 |instant |goto 53.7,38.6
		On your Ram, run to Flynn Firebrew
		|tip Flynn Firebrew will throw you a keg when you get close.
		Deliver as many kegs as you can within 4 minutes
		|tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
	step
		map Dun Morogh
		path follow strict;loop;ants straight
		path	54.6,43.3	54.5,47.4	53.1,51.3
		path	53.7,51.8	54.5,47.7	54.6,43.4
		path	53.6,38.5
		Follow this path to pick up Kegs from Flynn Firebrew and run them back to Neill Ramstein
		Use your Ram Racing Reins |use Ram Racing Reins##33306
]])

---------------------------
----- Children's Week -----
---------------------------

ZygorGuidesViewer:RegisterInclude("Children's_Week_Stormwind",[[
	step
		talk Orphan Matron Nightingale##14450
		accept Children's Week##1468 |goto Stormwind City/0 56.31,54.00
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan.
		talk Human Orphan##14305
		turnin Children's Week##1468
		accept Cruisin' the Chasm##29093
		accept The Biggest Diamond Ever!##29106
		accept Malfurion Has Returned!##29107
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		clicknpc Rental Chopper##52189
		Give Your Orphan a Chopper Tour of the Raging Chasm |q 29093/1 |goto Westfall/0 57.76,53.04
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		talk Human Orphan##14305
		turnin Cruisin' the Chasm##29093
	step
		Follow the path |goto Ironforge/0 44.47,49.61 < 7 |walk
		Run down the ramp |goto 44.16,51.94 < 5 |walk
		Continue down the ramp |goto 47.98,48.19 < 5 |walk
		Follow the path |goto 40.29,46.37 < 5 |walk
		Run up the stairs |goto 39.53,50.96 < 5 |walk
		Continue up the stairs |goto 37.00,54.37 < 5 |walk
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		Take Your Orphan to Visit King Magni in Old Ironforge |q 29106/1 |goto 33.09,47.85
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		talk Human Orphan##14305
		turnin The Biggest Diamond Ever!##29106
	step
		Run up the ramp |goto Darnassus/0 44.02,84.95 < 5 |walk
		Follow the path |goto 46.29,81.19 < 7 |walk
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		|tip Inside the building.
		Take Your Orphan to Visit Malfurion Stormrage |q 29107/1 |goto 43.16,77.65
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		talk Human Orphan##14305
		turnin Malfurion Has Returned!##29107
		accept Let's Go Fly a Kite##29117
		accept You Scream, I Scream...##29119
	step
		talk Craggle Wobbletop##52358
		|tip He walks around this area.
		buy 1 Dragon Kite 2-Pack##68890 |q 29117 |goto Stormwind City/0 57.33,65.64
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		use Dragon Kite 2-Pack##68890
		Fly Dragon Kites with Your Orphan |q 29117/1
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		talk Human Orphan##14305
		turnin Let's Go Fly a Kite##29117
	step
		Follow the path |goto Stormwind City/0 57.61,73.39 < 10 |only if walking
		Cross the bridge |goto 55.40,75.37 < 7 |only if walking
		Follow the path |goto 55.56,76.59 < 5 |only if walking
		Continue following the path |goto 53.62,78.84 < 10 |only if walking
		Continue following the path |goto 54.74,83.64 < 10 |only if walking
		Continue following the path |goto 53.32,85.81 < 10 |only if walking
		Continue following the path |goto 51.53,86.41 < 10 |only if walking
		talk Hans Coldhearth##52421
		buy 1 Cone of Cold##69027 |q 29119 |goto 48.97,89.74
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		use Cone of Cold##69027
		Take Your Orphan Out for Ice Cream |q 29119/1
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		talk Human Orphan##14305
		turnin You Scream, I Scream...##29119
		accept A Warden of the Alliance##171
	step
		Follow the path |goto 52.04,86.33 < 10 |only if walking
		Continue following the path |goto 53.91,85.13 < 7 |only if walking
		Continue following the path |goto 54.93,82.58 < 7 |only if walking
		Continue following the path |goto 53.73,78.80 < 10 |only if walking
		Continue following the path |goto 55.62,76.08 < 7 |only if walking
		Cross the bridge |goto 57.49,73.27 < 10 |only if walking
		Continue following the path |goto 56.16,67.92 < 10 |only if walking
		talk Craggle Wobbletop##52358
		|tip He walks around this area.
		buy 1 Foam Sword Rack##69057 |q 171/1 |goto 57.33,65.64
	step
		Follow the path |goto 58.22,64.65 < 10 |only if walking
		Cross the bridge |goto 56.81,62.11 < 10 |only if walking
		Continue following the path |goto 57.98,60.62 < 10 |only if walking
		Continue following the path |goto 56.05,57.18 < 10 |only if walking
		talk Orphan Matron Nightingale##51988
		turnin A Warden of the Alliance##171 |goto 56.31,54.00
]])

ZygorGuidesViewer:RegisterInclude("Children's_Week_Shattrath",[[
	step
		talk Orphan Matron Mercy##22819
		accept Children's Week##10943 |goto Shattrath City/0 75.08,47.90
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan.
		talk Draenei Orphan##22818
		turnin Children's Week##10943
		accept Auchindoun and the Ring of Observance##10950
		accept A Trip to the Dark Portal##10952
		accept Jheel is at Aeris Landing!##10954
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		Take Dornaa to Aeris Landing |q 10954/1 |goto Nagrand/0 31.47,57.49
	step
		talk Jheel##22836
		turnin Jheel is at Aeris Landing!##10954 |goto 31.49,57.61
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		Take Dornaa to the Ring of Observance |q 10950/1 |goto Terokkar Forest/0 39.90,64.69
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		talk Draenei Orphan##22818
		turnin Auchindoun and the Ring of Observance##10950
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		Take Dornaa to the Dark Portal |q 10952/1 |goto Hellfire Peninsula/0 89.59,50.21
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		talk Draenei Orphan##22818
		turnin A Trip to the Dark Portal##10952
		accept The Seat of the Naaru##10956
		accept Time to Visit the Caverns##10962
	step
		Follow the path down |goto Tanaris/17 63.40,30.36 < 15 |only if walking
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		Take Dornaa to the Caverns of Time |q 10962/2 |goto Tanaris/18 53.14,56.80
	step
		talk Alurmi##21643
		buy 1 Toy Dragon##31951 |q 10962/1 |goto Tanaris/17 39.94,77.30
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		talk Draenei Orphan##22818
		turnin Time to Visit the Caverns##10962
	step
		Follow the path |goto The Exodar/0 63.31,41.65 < 10 |only if walking
		Run down the ramp |goto 59.68,33.99 < 10 |only if walking
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		Take Dornaa to the Seat of the Naaru |q 10956/1 |goto 57.59,41.21
	step
		talk O'ros##17538
		turnin The Seat of the Naaru##10956
		accept Call on the Farseer##10968 |goto 57.94,41.42
	step
		Run up the ramp |goto 54.69,36.29 < 10 |only if walking
		Follow the path |goto 42.78,32.19 < 10 |only if walking
		Continue following the path |goto 36.91,31.41 < 10 |only if walking
		Continue following the path |goto 31.63,36.27 < 10 |only if walking
		Continue following the path |goto 26.97,29.79 < 7 |only if walking
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		Take Dornaa to Farseer Nobundo |q 10968/1 |goto 31.09,28.11
	step
		talk Farseer Nobundo##17204
		|tip He walks around this area.
		turnin Call on the Farseer##10968 |goto 30.82,30.80
	step
		use Draenei Orphan Whistle##31881
		|tip Use it to summon your Draenei Orphan, if needed.
		talk Draenei Orphan##22818
		accept Back to the Orphanage##10966
	step
		talk Orphan Matron Mercy##22819
		turnin Back to the Orphanage##10966 |goto Shattrath City/0 75.08,47.90
]])

ZygorGuidesViewer:RegisterInclude("Children's_Week_Oracles_Quests",[[
	step
		talk Orphan Matron Aria##34365
		accept Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.36,63.26
		|tip If you choose to care for the Oracles you are not able to also care for the Wolvars.
	step
		talk Orphan Matron Aria##34365
		Choose _Ask about the orphans._
		Accept to Care for the Oracle Orphan |q 13926/1 |goto 49.36,63.26
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan.
		talk Oracle Orphan##33533
		turnin Little Orphan Roo Of The Oracles##13926
		accept The Biggest Tree Ever!##13929
		accept The Bronze Dragonshrine##13933
		accept Playmates!##13950
	step
		Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		Take Roo to Visit Grizzlemaw |q 13929/1 |goto 50.68,44.09
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		talk Oracle Orphan##33533
		turnin The Biggest Tree Ever!##13929
	step
		Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
		Follow the path up |goto 69.51,44.06 < 10 |only if walking
		Continue up the path |goto 69.77,42.63 < 10 |only if walking
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		Take Roo to Visit the Bronze Dragonshrine |q 13933/1 |goto 71.11,41.10
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		talk Oracle Orphan##33533
		turnin The Bronze Dragonshrine##13933
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		Take Roo to Visit Winterfin Retreat |q 13950/1 |goto Borean Tundra/0 43.55,13.65
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		talk Oracle Orphan##33533
		turnin Playmates!##13950
		accept The Dragon Queen##13954
		accept Meeting a Great One##13956
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		Take Roo to Visit The Etymidian |q 13956/1 |goto Un'Goro Crater/0 47.60,9.17
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		talk Oracle Orphan##33533
		turnin Meeting a Great One##13956
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		|tip She is at the top of Wyrmrest Temple.
		Take Roo to Visit Alexstrasza the Life-Binder |q 13954/1 |goto Dragonblight/0 59.84,54.59
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		talk Oracle Orphan##33533
		turnin The Dragon Queen##13954
		accept A Trip To The Wonderworks##13937
	step
		Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
		Enter the building |goto 43.27,45.30 < 5 |walk
		talk Jepetto Joybuzz##29478
		|tip Inside the building.
		buy 1 Small Paper Zeppelin##46693 |q 13937 |goto 44.82,45.63
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		use Small Paper Zeppelin##46693
		|tip Use it on your Oracle Orphan.
		Throw the Small Paper Zeppelin to Roo |q 13937/1
	step
		use Oracle Orphan Whistle##46397
		|tip Use it to summon your Oracle Orphan, if needed.
		talk Oracle Orphan##33533
		turnin A Trip To The Wonderworks##13937
		accept Back To The Orphanage##28879 |or
		accept Back To The Orphanage##13959 |or
	step
		Leave the building |goto 43.17,45.17 < 3 |walk
		talk Orphan Matron Aria##34365
		turnin Back To The Orphanage##28879 |goto 49.35,63.25 |only if havequest(28879) or completedq(28879)
		turnin Back To The Orphanage##13959 |goto 49.35,63.25 |only if havequest(13959) or completedq(13959)
]])

ZygorGuidesViewer:RegisterInclude("Children's_Week_Wolvar_Quests",[[
	step
		talk Orphan Matron Aria##34365
		accept Little Orphan Kekek Of The Wolvar##13927 |goto Dalaran/1 49.35,63.25
		|tip If you choose to Care for the Wolvars you are not able to also care for the Oracles.
	step
		talk Orphan Matron Aria##34365
		Choose _Ask about the orphans._
		Accept to Care for the Wolvar Orphan |q 13927/1 |goto 49.35,63.25
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan.
		talk Wolvar Orphan##33532
		turnin Little Orphan Kekek Of The Wolvar##13927
		accept Home Of The Bear-Men##13930
		accept The Bronze Dragonshrine##13934
		accept Playmates!##13951
	step
		Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		Take Kekek to Visit Grizzlemaw |q 13930/1 |goto 50.68,44.09
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		talk Wolvar Orphan##33532
		turnin Home Of The Bear-Men##13930
	step
		Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
		Follow the path up |goto 69.51,44.06 < 10 |only if walking
		Continue up the path |goto 69.77,42.63 < 10 |only if walking
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		Take Kekek to Visit the Bronze Dragonshrine |q 13934/1 |goto 71.11,41.10
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		talk Wolvar Orphan##33532
		turnin The Bronze Dragonshrine##13934
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		Take Kekek to Visit Snowfall Glade |q 13951/1 |goto Dragonblight/0 45.28,63.29
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		talk Wolvar Orphan##33532
		turnin Playmates!##13951
		accept The Dragon Queen##13955
		accept The Mighty Hemet Nesingwary##13957
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		|tip She is at the top of Wyrmrest Temple.
		Take Kekek to Visit Alexstrasza the Life-Binder |q 13955/1 |goto Dragonblight/0 59.84,54.59
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		talk Wolvar Orphan##33532
		turnin The Dragon Queen##13955
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		Take Kekek to Visit Hemet Nesingwary |q 13957/1 |goto Sholazar Basin/0 27.13,59.23
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		talk Wolvar Orphan##33532
		turnin The Mighty Hemet Nesingwary##13957
		accept A Visit To The Wonderworks##13938
	step
		Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
		Enter the building |goto 43.27,45.30 < 5 |walk
		talk Jepetto Joybuzz##29478
		|tip Inside the building.
		buy 1 Small Paper Zeppelin##46693 |q 13938 |goto 44.82,45.63
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		use Small Paper Zeppelin##46693
		|tip Use it on your Wolvar Orphan.
		Throw the Small Paper Zeppelin to Kekek |q 13938/1
	step
		use Wolvar Orphan Whistle##46396
		|tip Use it to summon your Wolvar Orphan, if needed.
		talk Wolvar Orphan##33532
		turnin A Visit To The Wonderworks##13938
		accept Back To The Orphanage##28880 |or
		accept Back To The Orphanage##13960 |or
	step
		Leave the building |goto 43.17,45.17 < 3 |walk
		talk Orphan Matron Aria##34365
		turnin Back To The Orphanage##28880 |goto 49.35,63.25 |only if havequest(28880) or completedq(28880)
		turnin Back To The Orphanage##13960 |goto 49.35,63.25 |only if havequest(13960) or completedq(13960)
]])

ZygorGuidesViewer:RegisterInclude("Children's_Week_Achievements",[[
	step
		talk Orphan Matron Nightingale##14450
		Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
		collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		Complete any 5 daily quests of your choice:
		|tip World Quests do not count for this achievement.
		|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
		Get the Daily Chores Achievement |achieve 1789
	step
		talk Emmithue Smails##14481
		buy 1 Tigule and Foror's Strawberry Ice Cream##7228 |achieve 1788 |goto Stormwind City/0 61.30,75.02
	step
		talk Auctioneer Fitch##8719
		|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
		collect 1 Tasty Cupcake##43490 |achieve 1788 |goto 61.16,70.78
		collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto 61.16,70.78
	step
		talk Aimee##29548
		buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.17,29.07
		buy 1 Lovely Cake##42438 |achieve 1788 |goto Dalaran/1 51.17,29.07
		buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto Dalaran/1 51.17,29.07
		buy 1 Dalaran Brownie##42431 |achieve 1788 |goto Dalaran/1 51.17,29.07
	step
		use Lovely Cake##42438
		|tip Use it to place a cake on the ground.
		Click Lovely Cake
		collect 1 Lovely Cake Slice##42434 |achieve 1788
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		Eat Tigule and Foror's Strawberry Ice Cream |achieve 1788/1 |use Tigule and Foror's Strawberry Ice Cream##7228
		Eat Tasty Cupcake |achieve 1788/2 |use Tasty Cupcake##43490
		Eat Red Velvet Cupcake |achieve 1788/3 |use Red Velvet Cupcake##42429
		Eat Delicious Chocolate Cake |achieve 1788/4 |use Delicious Chocolate Cake##33924
		Eat Lovely Cake Slice |achieve 1788/5 |use Lovely Cake Slice##42434
		Eat Dalaran Brownie |achieve 1788/6 |use Dalaran Brownie##42431
		Eat Dalaran Doughnut |achieve 1788/7 |use Dalaran Doughnut##42430
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		use Hearthstone##6948
		|tip Use it while your Orphan is standing next to you.
		Get the Home Alone Achievement |achieve 1791
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		kill King Ymiron##26861
		|tip Inside the Utgarde Pinnacle dungeon.
		Get the Hail To The King, Baby Achievement |achieve 1790 |goto Utgarde Pinnacle/2 42.60,53.50
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		Enter the Eye of the Storm battleground and capture the flag
		Capture the flag in Eye of the Storm |achieve 1786/1
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		Enter the Alterac Valley battleground and assault a tower
		Assault a Tower in Alterac Valley |achieve 1786/2
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		Enter the Arathi Basin battleground and assault a flag
		Assault a Flag in Arathi Basin |achieve 1786/3
	step
		use Human Orphan Whistle##18598
		|tip Use it to summon your Human Orphan, if needed.
		Enter the Warsong Gulch battleground and return a fallen flag
		Return a fallen Flag in Warsong Gulch |achieve 1786/4
	step
		_Congratulations!_
		You Earned the "For the Children" Achievement |achieve 1793
]])

--------------------------
----- Darkmoon Faire -----
--------------------------

ZygorGuidesViewer:RegisterInclude("Darkmoon_Faire_Dailies",[[
		It is recommended that you complete the quest portion of the Dark Moon Faire guides before starting the daily portion.
		confirm always
	step
	label "start"
		talk Zina Sharpworth##55266
		buy 1 Sack o' Tokens##78910 |n
		Open your Sack o' Tokens in your bags |use Sack o' Tokens##78910
		collect 20 Darkmoon Faire Game Tokens##71083 |goto Darkmoon Island/0 54.3,53.1
	step
		talk Mola##54601
		accept It's Hammer Time##29463 |goto Darkmoon Island/0 53.3,54.4
	step
		talk Mola##54601
		Tell her _"Ready to whack!"_ |havebuff 537060  |goto Darkmoon Island/0 53.3,54.4 --Inv_hammer_32
		only if havequest(29463)
	step
		Use the _Whack!_ on your bar and whack the Gnolls in the Barrels
		The Gnolls will pop up in the Barrels, but be careful not to hit the _Doll_ or you will get stunned
		Whack #30# Gnolls |q 29463/1
	step
		talk Mola##54601
		turnin It's Hammer Time##29463 |goto Darkmoon Island/0 53.3,54.4
	step
		talk Maxima Blastenheimer##15303
		accept The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.5,56.2
		|next "quest"
	step
	label "target"
		talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.1,89.6
		Tell him "_Teleport me to the cannon._" |goto 52.7,56.0,1 |noway |c
		only if havequest(29436)
	step
	label "quest"
		talk Maxima Blastenheimer##15303
		Tell her "_Launch me!_"
		Wait for the Cannon to Launch you |havebuff 135992 |goto Darkmoon Island/0 52.5,56.2 --Spell_Magic_FeatherFall
		only if havequest(29436)
	step
		You will be launched through the air
		Use the ability on your action bar to drop dpwn into the target. You will gain more points for getting closer to the middle
		Earn 5 Target Points |q 29436/1 |goto Darkmoon Island/0 56.4,93.3
		Click here to try again |confirm |next "target"
	step
		talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.1,89.6
		Tell him _"Teleport me to the cannon."_ |goto 52.7,56.0,1 |noway |c
		only if havequest(29436)
	step
		talk Maxima Blastenheimer##15303
		turnin The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.5,56.2
	step
		talk Rinling##14841
		accept He Shoots, He Scores!##29438 |goto 49.3,60.8
	step
		talk Rinling##14841
		Tell him: _"Let's shoot!"_ |havebuff Interface\Icons\INV_Weapon_Rifle_05 |goto 49.3,60.8
		only if havequest(29438)
	step
		Shoot at the 3 targets
		When you see a green marker appear over a target, make sure that you are aimed at it and _shoot_
		|tip To aim, simply move the camera to face your current target.
		Shoot #25# Targets |q 29438/1
	step
		talk Rinling##14841
		turnin He Shoots, He Scores!##29438 |goto 49.3,60.8
	step
		talk Finlay Coolshot##54605
		accept Tonk Commander##29434 |goto Darkmoon Island/0 50.7,65.1
	step
		talk Finlay Coolshot##54605
		Tell him _"Ready to Play."_ |invehicle |c |goto Darkmoon Island/0 50.7,65.1
		only if havequest(29434)
	step
		Use your _Cannon_ ability to shoot _Tonk Targets_
		kill Tonk Target##33081+
		Destroy 30 Tonk Targets |q 29434/1
	step
		talk Finlay Coolshot##54605
		turnin Tonk Commander##29434 |goto Darkmoon Island/0 50.7,65.1
	step
		talk Ziggie Sparks##85546
		accept Firebird's Challenge##36481 |goto 48.37,71.36
	step
		talk Ziggie Sparks##85546
		Tell her _"Ready to fly!"_ |havebuff INTERFACE\ICONS\inv_shoulder_leather_firelandsdruid_d_01 |goto 48.37,71.36
		only if havequest(36481)
	step
		Fly through the rings all around the Darkmoon Faire
		|tip Try and go as fast as you can, as the buff falls off in 9 seconds.
		Collect #15# Rings |q 36481/1
	step
		talk Ziggie Sparks##85546
		turnin Firebird's Challenge##36481 |goto 48.37,71.36
	step
		talk Jessica Rogers##54485
		accept Target: Turtle##29455 |goto 51.6,77.8
	step
		talk Jessica Rogers##54485
		Tell her _"Ready to play!"_ |havebuff Interface\Icons\INV_Jewelry_Ring_03 |goto 51.6,77.8
		only if havequest(29455)
	step
		Use your _Ring Toss_ ability to throw rings on the turtle.
		|tip When aiming, move the marker over the middle of the turtle.
		Land 3 Rings on Dubenko |q 29455/1
	step
		talk Jessica Rogers##54485
		turnin Target: Turtle##29455 |goto 51.6,77.8
	step
		talk Malle Earnhard##74056
		accept The Real Race##37910 |goto 49.04,88.21
	step
		Select a mount |goto Darkmoon Island/0 48.4,87.7
		Choose the _Racing Strider_ |havebuff Interface\Icons\ability_hunter_pet_tallstrider |or --Strider
		Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |or --Mech
	step
		Enter the Start Banner with a Darkmoon Game Token |q The Real Race##37910/1 |goto 47.71,88.27
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	42.4,86.7	36.7,83.2	31.8,76.9
		path	30.6,71.5	26.7,66.7
		Follow the provided path, using the provided abilities to run the track
		Reach the Blue Post |q The Real Race##37910/2
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	28.8,63.3	27.6,56.7	29.6,45.8
		Follow the provided path, using the provided abilities to run the track
		Reach the Green Post |q The Real Race##37910/3
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	33.4,48.5	36.5,51.2	41.3,51.1
		path	43.6,50.4
		Follow the provided path, using the provided abilities to run the track
		Reach the Red Post |q The Real Race##37910/4
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	44.9,54.7	44.3,60.3	41.7,68.1
		path	41.3,74.2	39.7,80.3	44.3,86.7
		path	47.8,88.3
		Follow the provided path, using the provided abilities to run the track
		Return to the Start Banner |q The Real Race##37910/5
	step
	label "race1"
		talk Malle Earnhard##74056
		turnin The Real Race##37910 |goto 49.04,88.21
		accept Let's Keep Racing!##33756 |goto 48.96,88.15
	step
		Select a mount |goto Darkmoon Island/0 48.4,87.7
		Choose the _Racing Strider_ |havebuff Interface\Icons\Ability_Hunter_Pet_TallStrider |or --Strider
		Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |or --Mech
		only if havequest(37910) or havequest(33756)
	step
		Enter the Start Banner with a Darkmoon Game Token |q Let's Keep Racing##33756/1 |goto 47.71,88.27
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	42.4,86.7	36.7,83.2	31.8,76.9
		path	30.6,71.5	26.7,66.7
		Follow the provided path, using the provided abilities to run the track
		Reach the Blue Post |q The Real Race##33756/2
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	28.8,63.3	27.6,56.7	29.6,45.8
		Follow the provided path, using the provided abilities to run the track
		Reach the Green Post |q The Real Race##33756/3
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	33.4,48.5	36.5,51.2	41.3,51.1
		path	43.6,50.4
		Follow the provided path, using the provided abilities to run the track
		Reach the Red Post |q The Real Race##33756/4
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	44.9,54.7	44.3,60.3	41.7,68.1
		path	41.3,74.2	39.7,80.3	44.3,86.7
		path	47.8,88.3
		Follow the provided path, using the provided abilities to run the track
		Return to the Start Banner |q The Real Race##33756/5
	step
		talk Malle Earnhard##74056
		turnin Let's Keep Racing!##33756 |goto 48.96,88.15
	step
		talk Patti Earnhard##90473
		accept The Real Big Race##37911 |goto 53.18,87.56
	step
		Select a mount |goto Darkmoon Island/0 48.4,87.7
		Choose the _Racing Strider_ |havebuff Interface\Icons\Ability_Hunter_Pet_TallStrider |or --Strider
		Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |or --Mech
		only if havequest(37911) or havequest(37868)
	step
		Enter the Start Banner with a Darkmoon Game Token |q The Real Big Race##37911/1 |goto Darkmoon Island/0 54.5,88.3
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	60.0,86.6	65.6,88.1	70.3,89.9
		path	74.1,87.0	78.4,80.2	78.5,75.0
		path	76.1,61.2	74.6,62.0	73.5,61.9
		path	71.8,60.6	71.7,67.2	70.3,71.6
		Follow the provided path, using the provided abilities to run the track
		Reach the Purple Post |q The Real Big Race##37911/2
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	69.7,67.1	70.3,57.2	68.0,50.8
		path	67.9,47.3	66.8,36.4	64.5,19.9
		Follow the provided path, using the provided abilities to run the track
		Reach the Green Post |q The Real Big Race##37911/3
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	60.7,24.1	58.1,22.1	57.4,27.6
		path	56.2,27.3	55.8,23.8	54.6,20.3
		path	53.0,18.3	50.9,18.2
		Follow the provided path, using the provided abilities to run the track
		Reach the Red Post |q The Real Big Race##37911/4
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	51.1,25.0	53.1,29.9	52.9,36.5
		path	55.5,37.1	56.7,43.2	57.7,49.6
		path	51.7,59.4	49.3,66.0	49.4,72.3
		path	49.9,81.4	51.7,87.9	54.7,88.2
		Follow the provided path, using the provided abilities to run the track
		Return to the Start Banner |q The Real Big Race##37911/5
	step
	label "race2"
		talk Patti Earnhard##90473
		turnin The Real Big Race##37911 |goto 53.18,87.56
		accept More Big Racing!##37868 |goto 53.11,87.71
	step
		Select a mount |goto Darkmoon Island/0 48.4,87.7
		Choose the _Racing Strider_ |havebuff Interface\Icons\Ability_Hunter_Pet_TallStrider |or --Strider
		Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |or --Mech
		only if havequest(37911) or havequest(37868)
	step
		Enter the Start Banner with a Darkmoon Game Token |q The Real Big Race##37868/1 |goto Darkmoon Island/0 54.5,88.3
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	60.0,86.6	65.6,88.1	70.3,89.9
		path	74.1,87.0	78.4,80.2	78.5,75.0
		path	76.1,61.2	74.6,62.0	73.5,61.9
		path	71.8,60.6	71.7,67.2	70.3,71.6
		Follow the provided path, using the provided abilities to run the track
		Reach the Purple Post |q The Real Big Race##37868/2
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	69.7,67.1	70.3,57.2	68.0,50.8
		path	67.9,47.3	66.8,36.4	64.5,19.9
		Follow the provided path, using the provided abilities to run the track
		Reach the Green Post |q The Real Big Race##37868/3
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	60.7,24.1	58.1,22.1	57.4,27.6
		path	56.2,27.3	55.8,23.8	54.6,20.3
		path	53.0,18.3	50.9,18.2
		Follow the provided path, using the provided abilities to run the track
		Reach the Red Post |q The Real Big Race##37868/4
	step
		map Darkmoon Island/0
		path loop off; dist 15
		path	51.1,25.0	53.1,29.9	52.9,36.5
		path	55.5,37.1	56.7,43.2	57.7,49.6
		path	51.7,59.4	49.3,66.0	49.4,72.3
		path	49.9,81.4	51.7,87.9	54.7,88.2
		Follow the provided path, using the provided abilities to run the track
		Return to the Start Banner |q The Real Big Race##37868/5
	step
		Click here if you would like to do "Let's Keep Racing!" |confirm |next "race1"
		Click here if you would like to do "More Big Racing!" |confirm |next "race2"
		Click here if you are finished with the daily guide |confirm |next "start"
]])

ZygorGuidesViewer:RegisterInclude("Darkmoon_Faire_Quests",[[
	step
		talk Darkmoon Faire Mystic Mage##54334
		|tip Clicking on any of the quests will direct you to one of the four main cities.
		accept The Darkmoon Faire##7905 |goto Stormwind City/0 62.3,73.0
		accept The Darkmoon Faire##7905 |goto Ironforge/0 27.6,73.2
		accept The Darkmoon Faire##7905 |goto Darnassus/0 38.6,49.4
		accept The Darkmoon Faire##7905 |goto The Exodar/0 51.3,42.0
	step
		talk Stanly McCormick##30730
		buy 5 Light Parchment##39354 |condition itemcount(39354) >= 5 |goto Stormwind City 49.6,74.9
		only if skill("Inscription")>74
	step
		talk Innkeeper Farley##295
		buy 5 Moonberry Juice##1645 |condition itemcount(1645) >= 5 |q 29506 |goto Elwynn Forest 43.8,65.8
		only if skill("Alchemy")>74
	step
		talk Tharynn Bouden##66
		buy 1 Coarse Thread##2320 |condition itemcount(2320) >= 1 |goto Elwynn Forest 42.0,67.0
		buy 1 Blue Dye##6260 |condition itemcount(6260) >= 1 |goto Elwynn Forest 42.0,67.0
		buy 1 Red Dye##2604 |condition itemcount(2604) >= 1 |goto Elwynn Forest 42.0,67.0
		only if skill("Tailoring")>74
	step
		talk Tharynn Bouden##66
		buy 5 Coarse Thread##2320 |condition itemcount(2320) >= 5 |goto Elwynn Forest 42.0,67.0
		buy 5 Blue Dye##6260 |condition itemcount(6260) >= 5 |goto Elwynn Forest 42.0,67.0
		buy 10 Shiny Bauble##6529 |condition itemcount(6529) >= 10 |goto Elwynn Forest 42.0,67.0
		only if skill("Leatherworking")>74
	step
		talk Tharynn Bouden##66
		buy 5 Simple Flour##30817 |condition itemcount(30817) >= 5 |q 29509 |goto Elwynn Forest 42.0,67.0
		only if skill("Cooking")>74
	step
		talk Zina Sharpworth##55266
		buy Sack o' Tokens##78909 |n |goto Darkmoon Island/0 54.44,53.13 < 5
		use Sack o' Tokens##78909 |only if itemcount(78909)>= 1
		use Sack o' Tokens##78910 |only if itemcount(78910)>= 1
		collect 20 Darkmoon Faire Game Tokens##71083
	step
		talk Gelvas Grimegate##14828
		turnin The Darkmoon Faire##7905 |goto Darkmoon Island/0 47.90,64.74
	step
		talk Selina Dourman##10445
		accept Banners, Banners Everywhere!##29520 |goto Darkmoon Island/0 55.4,54.8
		only if skill("Tailoring")>74
	step
		talk Professor Thaddeus Paleo##14847
		accept Fun for the Little Ones##29507 |goto Darkmoon Island/0 51.9,60.9
		only if skill("Archaeology")>74
	step
		talk Rinling##14841
		accept Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.3,60.7
		only if skill("Mining")>74
	step
		talk Rinling##14841
		accept Talkin' Tonks##29511 |goto Darkmoon Island/0 49.3,60.8
		only if skill("Engineering")>74
	step
		talk Rinling##14841
		accept Eyes on the Prizes##29517 |goto 49.3,60.9
		only if skill("Leatherworking")>74
	step
		talk Stamp Thunderhorn##14845
		accept Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.9,68.0
		only if skill("Cooking")>74
	step
		talk Kerri Hicks##14832
		accept Test Your Strength##29433 |goto 47.91,67.09
	step
		talk Malle Earnhard##74056
		accept Welcome to the Darkmoon Races##37819 |goto Darkmoon Island/0 49.1,88.1
	step
		Walk over either the Rocketeer or the Racing Strider at this location |goto Darkmoon Island/0 48.4,87.6
		Choose the _Racing Strider_ |havebuff 179750 |or --Strider
		Choose the _Rocketeer_ |havebuff 179252 |or --Mech
		only if havequest(37819)
	step
		Enter the Start Banner with a Darkmoon Game Token |q Welcome to the Darkmoon Races##37819/1 |goto 47.59,88.36
		only if havequest(37819)
	step
		map Darkmoon Island/0
		path loop off
		path	40.2,85.5	31.8,76.7	26.5,66.5
		Avoid the _Electrified Chains_ and the _Race MiniZeps_ while traversing the course
		Reach the Island |q Welcome to the Darkmoon Races##37819/2
		only if havequest(37819)
	step
		map Darkmoon Island/0
		path loop off
		path	30.6,73.9	35.8,82.0	40.8,86.3
		path	47.5,88.3
		Hit the Power Ups as you return to the start
		Complete the race |q Welcome to the Darkmoon Races##37819/3
		only if havequest(37819)
	step
		talk Malle Earnhard##74056
		turnin Welcome to the Darkmoon Races##37819 |goto Darkmoon Island/0 49.1,88.1
	step
		use Plump Frogs##72056
		collect 5 Breaded Frog##72057 |n
		use Breaded Frog##72057
		Fry #5# Crunchy Frogs |q 29509/1 |goto Darkmoon Island/0 52.7,68.1
		only if skill("Cooking")>74
	step
		talk Stamp Thunderhorn##14845
		turnin Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.9,68.0
		only if skill("Cooking")>74
	step
		talk Stamp Thunderhorn##14845
		accept Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.9,68.0
		only if skill("Fishing")>74
	step
		talk Sayge##14822
		accept Writing the Future##29515 |goto Darkmoon Island/0 53.2,75.8
		only if skill("Inscription")>74
	step
		talk Chronos##14833
		accept Tan My Hide##29519 |goto Darkmoon Island/0 55.0,70.8
		only if skill("Skinning")>74
	step
		talk Chronos##14833
		accept Herbs for Healing##29514 |goto Darkmoon Island/0 55.0,70.8
		only if skill("Herbalism")>74
	step
		talk Sylannia##14844
		accept A Fizzy Fusion##29506 |goto 50.5,69.6
		only if skill("Alchemy")>74
	step
		talk Chronos##14833
		accept Keeping the Faire Sparkling##29516 |goto 55.0,70.8
		only if skill("Jewelcrafting")>74
	step
		talk Sayge##14822
		accept Putting Trash to Good Use##29510 |goto Darkmoon Island/0 53.2,75.8
		only if skill("Enchanting")>74
	step
		talk Yebb Neblegear##14829
		accept Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.1,82.0
		only if skill("Blacksmithing")>74
	step
		Equip your Fishing Pole |equipped Fishing Pole##6256 |use Fishing Pole##6256 |q 29513
		Use your Fishing ability to catch _Sea Herrings_ |cast Fishing##7620
		Catch #5# Great Sea Herring |q 29513/1 |goto Darkmoon Island/0 51.7,91.6
		only if skill("Fishing")>74
	step
		All around the Island
		click Discarded Weapon##209283
		collect 6 Discarded Weapon##72018 |n
		Disenchant the Discarded Weapons |use Discarded Weapon##72018
		Collect #6# Soothsayer's Dust |q 29510/1
		only if skill("Enchanting")>74
	step
		All around the Island
		click Tonk Scrap##209275
		Collect #6# Pieces of Tonk Scrap |q 29518/1
		only if skill("Mining")>74
	step
		All around the Island
		click Bits of Glass##238
		collect 5 Bits of Glass##72052 |n
		use Bit of Glass##72052
		Make #5# Sparkling Gemstones |q 29516/1
		only if skill("Jewelcrafting")>74
	step
		All around the Island
		use Battered Wrench##72110
		Repair #5# Damaged Tonk's |q 29511/1
		only if skill("Engineering")>74
	step
		All around the Island
		click Darkblossom##209284
		Gather #6# Darkblossom |q 29514/1
		only if skill("Herbalism")>74
	step
		All around the Island
		click Staked Skins##209276
		Scrape #4# Staked Skins |q 29519/1
		only if skill("Skinning")>74
	step
		talk Sylannia##14844
		buy 5 Fizzy Faire Drink##19299 |condition itemcount(19299) >= 5 |q 29506 |goto 50.5,69.6
		only if skill("Alchemy")>74
	step
		click Portal to Elwynn Forest##04396 |goto Darkmoon Island/0 50.7,90.8
		Teleport to Elwynn Forest |goto Elwynn Forest |noway |c
		only if skill("Archaeology")>74
	step
		Open your world map, find dig sites in Kalimdor and go to them
		|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
		You can find _Fossil Fragments_ in these locations:
		Desolace
		Dustwallow Marsh
		Stonetalon Mountains
		Southern Barrens
		Tanaris
		Un'Goro Crater
		Use your Survey ability inside the dig site area and follow the Telesope until you find a fragment |cast Survey##80451
		earn 15 Fossil Fragments##393 |q 29507
		only if skill("Archaeology")>74
	step
		click Portal to Darkmoon Island |goto Elwynn Forest 41.8,69.6
		Telport to Darkmoon Island |goto Darkmoon Island/0 |noway |c
		only if skill("Archaeology")>74
	step
		Follow the Path to the Darkmoon Faire |goto Darkmoon Island/0 56.0,52.9 < 10 |noway |c
		only skill("Archaeology")>74
	step
		use Cocktail Shaker##72043
		Create #5# Servings of Moonberry Fizz |q 29506/1 |goto Darkmoon Island/0 50.4,69.5
		only if skill("Alchemy")>74
	step
		use Darkmoon Banner Kit##72048
		Plant a Darkmoon Banner |q 29520/1 |goto Darkmoon Island/0 50.0,66.2
		only if skill("Tailoring")>74
	step
		use Iron Stock##71964
		collect 4 Horseshoes##71967 |q 29508 |goto 55.3,71.7
		only if skill("Blacksmithing")>74
	step
		use Bundle of Exotic Herbs##71971
		collect Prophetic Ink##71972 |n
		use Prophetic Ink##71972
		|tip Each one requires 1 Light Parchment to create.
		collect 5 Fortune##71974 |q 29515/1
		only if skill("Inscription")>74
	step
		use Darkmoon Craftsman's Kit##71977
		collect 5 Darkmoon Prize##71976 |q 29517/1
		only if skill("Leatherworking")>74
	step
		In order to collect _Grisley Trophies_ you will need to kill enemies that give Honor OR Experience
		|tip This means they absolutely need to be green level minimal.
		You will also need the _Darkmoon Adventurer's Guide_ in your inventory |condition itemcount(71634) >= 1
		You don't have a _Darkmoon Adventurer's Guide_ in your inventory! |only if itemcount(71634) < 1
		collect 250 Grisly Trophy##71096 |q 29433/1
		If you have misplaced your book somehow, you can talk to _Selina Dourman_ located here |goto Darkmoon Island/0 55.5,54.9
		only if havequest(29433)
	step
		talk Professor Thaddeus Paleo##14847
		turnin Fun for the Little Ones##29507 |goto Darkmoon Island/0 51.9,60.9
		only if skill("Archaeology")>74
	step
		talk Stamp Thunderhorn##14845
		turnin Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.9,68.0
		only if skill("Fishing")>74
	step
		talk Sayge##14822
		turnin Writing the Future##29515 |goto Darkmoon Island/0 53.2,75.8
		only if skill("Inscription")>74
	step
		talk Chronos##14833
		turnin Tan My Hide##29519 |goto Darkmoon Island/0 55.0,70.8
		only if skill("Skinning")>74
	step
		talk Chronos##14833
		turnin Keeping the Faire Sparkling##29516 |goto 55.0,70.8
		only if skill("Jewelcrafting")>74
	step
		talk Rinling##14841
		turnin Eyes on the Prizes##29517 |goto 49.3,60.9
		only if skill("Leatherworking")>74
	step
		talk Rinling##14841
		turnin Talkin' Tonks##29511 |goto Darkmoon Island/0 49.3,60.8
		only if skill("Engineering")>74
	step
		talk Chronos##14833
		turnin Herbs for Healing##29514 |goto Darkmoon Island/0 55.0,70.8
		only if skill("Herbalism")>74
	step
		talk Sylannia##14844
		turnin A Fizzy Fusion##29506 |goto 50.5,69.6
		only if skill("Alchemy")>74
	step
		talk Rinling##14841
		turnin Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.3,60.7
		only if skill("Mining")>74
	step
		talk Sayge##14822
		turnin Putting Trash to Good Use##29510 |goto Darkmoon Island/0 53.2,75.8
		only if skill("Enchanting")>74
	step
		use Horseshoe##71967
		Put New Horshoes On Baby |q 29508/1 |goto Darkmoon Island/0 51.3,81.8
		only if skill("Blacksmithing")>74
	step
		talk Yebb Neblegear##14829
		turnin Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.1,82.0
		only if skill("Blacksmithing")>74
	step
		talk Kerri Hicks##14832
		accept Test Your Strength##29433 |goto Darkmoon Island/0 47.9,67.1
	step
		talk Selina Dourman##10445
		Tell her:
		<Darkmoon Adventurer's Guide?>
		collect Darkmoon Adventurer's Guide##71634 |q 29433 |goto Darkmoon Island/0 55.6,55.0
	step
		These next 3 items have to be _obtained from Battlegrounds_
		When you kill an opponent, _loot_ their body for a chance to get _each item_
		collect Adventurer's Journal##71953 |n
		accept The Captured Journal##29458 |use Adventurer's Journal##71953
		collect Banner of the Fallen##71951 |n
		accept A Captured Banner##29456 |use Banner of the Fallen##71951
		collect Captured Insignia##71952 |n
		accept The Enemy's Insignia##29457 |use Captured Insignia##71952
	step
		These next 5 items have to be _obtained from Dungeons_ listed below
		collect 1 Mysterious Grimoire##71637 |n
		|tip You can get this in Heroic Scholomance from Darkmaster Gandling.
		accept An Inriguing Grimoire##29445 |use Mysterious Grimoire##71637
		collect 1 Monstrous Egg##71636 |n
		|tip You can get this in Stormstout Brewery from Hoptallus.
		accept An Exotic Egg##29444 |use Monstrous Egg##71636
		collect 1 A Treatise on Strategy##71715 |n
		|tip You can get this in Stormstout Brewery from Hoptallus.
		accept The Master Strategist##29451 |use A Treatise on Strategy##71715
		collect 1 Ornate Weapon##71638 |n
		|tip You can get this in Heroic Scarlet Monastery from Brother Korloff.
		accept A Wondrous Weapon##29446 |use Ornate Weapon##71638
		collect 1 Imbued Crystal##71635 |n
		|tip You can get this in Heroic Scarlet Monastery from High Inquisitor Whitemane.
		accept A Curious Crystal##29443 |use Imbued Crystal##71635
	step
		The next item can only be obtained from any 10 man Cataclysm Raid Boss
		collect Soothsayer's Runes##71716 |n
		accept Tools of Divination##29464 |use Soothsayer's Runes##71716
	step
		Kill any Creature Player or NPC that gives _experience or honor_ to gain Grisly Trophies
		|tip You need to leave Darkmoon Island to find anything to kill.
		collect 250 Grisly Trophy##71096 |q 29433/1
	step
		talk Kerri Hicks##14832
		turnin Test Your Strength##29433 |goto Darkmoon Island/0 47.9,67.1
	step
		talk Professor Thaddeus Paleo##14847
		turnin The Captured Journal##29458 |goto Darkmoon Island/0 51.9,60.9
		turnin A Captured Banner##29456 |goto Darkmoon Island/0 51.9,60.9
		turnin The Enemy's Insignia##29457 |goto Darkmoon Island/0 51.9,60.9
		turnin The Master Strategist##29451 |goto Darkmoon Island/0 51.9,60.9
		turnin A Wondrous Weapon##29446 |goto Darkmoon Island/0 51.9,60.9
		turnin A Curious Crystal##29443 |goto Darkmoon Island/0 51.9,60.9
		turnin Tools of Divination##29464 |goto Darkmoon Island/0 51.9,60.9
	step
		talk Yebb Neblegear##14829
		turnin An Exotic Egg##29444 |goto Darkmoon Island/0 51.0,81.2
	step
		talk Sayge##14822
		turnin An Intriguing Grimoire##29445 |goto Darkmoon Island/0 53.6,76.0
	step
		talk Kerri Hicks##14832
		turnin Test Your Strength##29433 |goto Darkmoon Island/0 47.9,67.1
]])

--------------------------------
----- Feast of Winter Veil -----
--------------------------------

ZygorGuidesViewer:RegisterInclude("FoWV_Achievements",[[
		Kiss a Winter Reveler every hour |goto Ironforge 19.9,53.8 |script DoEmote("KISS")
		collect 10 Handful of Snowflakes##34191 |condition itemcount(34191) >= 10 |n
		collect 8 Mistletoe##21519 |condition itemcount(21519) >= 8 |n
		collect 1 Fresh Holly##21212 |condition itemcount(21212) >= 1 |n
		|tip You can only use this once per hour. The items you get are random.
		Once you've collected these items, click here to proceed |confirm
	step
		talk Wulmort Jinglepocket##13433
		buy 1 Recipe: Hot Apple Cider##34413 |condition itemcount(34413) >= 1 |n |goto Ironforge 33.7,67.3
		buy 1 Recipe: Egg Nog##17201 |condition itemcount(17201) >= 1 |n |goto Ironforge 33.7,67.3
		Click the Apple Cider recipe in your bags |use Recipe: Hot Apple Cider##34413
		learn Recipe: Hot Apple Cider##45022
		|tip Hot Apple Cider requires a cooking level of 325 to learn.
		Click the Egg Nog recipe in your bags |use Recipe: Egg Nog##17201
		learn Recipe: Egg Nog##21144
	step
		#include "auctioneer_ironforge"
		buy 1 Small Egg##6889 |condition itemcount(6889) >= 1
		|next "eggsdone"
		Click here to farm Small Eggs yourself |confirm |next "farm"
	step
	label "farm"
		kill Young Fleshripper##199+, Greater Fleshripper##154+
		collect 1 Small Egg##6889 |condition itemcount(6889) >= 1 |goto Westfall 50.8,24.4
	step
	label "eggsdone"
		talk Wulmort Jinglepocket##13433
		buy 2 Holiday Spirits##17196 |condition itemcount(17196) >= 2 |goto Ironforge/0 33.4,67.9
		buy 2 Holiday Spices##17194 |condition itemcount(17194) >= 2 |goto Ironforge/0 33.4,67.9
	step
		talk Macey Jinglepocket##13434
		buy 1 Sparkling Apple Cider##34412 |condition itemcount(34412) >= 1 |goto Ironforge/0 33.5,67.2
	step
		talk Innkeeper Firebrew##5111
		buy 1 Ice Cold Milk##1179 |condition itemcount(1179) >= 1 |goto Ironforge 18.1,51.4
	step
		#include "cooking_fire"
		create Egg Nog##21144,Cooking,1 total |achieve 1688/2 |goto 32.4,63.2
		create Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |goto 32.4,63.2
		|tip This requires a cooking skill of 325.
	step
		#include "auctioneer_ironforge"
		buy Red Winter Clothes##151790 |condition itemcount(151790) >= 1 |or
		Or
		buy Green Winter Clothes##151792 |condition itemcount(151792) >= 1 |or
		|next "boots"
		Click here if you wish to make these yourself |confirm |next "tailor" |only if skill("Tailoring")>=250
	step
	label "tailor"
		talk Wulmort Jinglepocket##13433
		buy Pattern: Red Winter Clothes##34319 |n
		learn Red Winter Clothes##44958 |goto Ironforge/0 33.4,68.0 |use Pattern: Red Winter Clothes##34319
	step
		talk Auctioneer Redmuse##8720
		buy 4 Bolt of Runecloth##14048 |goto Ironforge/0 24.2,74.5
		|tip You can also purchase 16 Runecloth and make these yourself.
		buy 1 Bolt of Woolen Cloth##2997 |goto Ironforge/0 24.2,74.5
		|tip You can also purchase 3 Wool Cloth and make this yourself.
		|next "createclothes"
		Click here to farm these yourself |confirm |next "farmcloth"
	step
	label "farmcloth"
		kill Dragonmaw Whelpstealer##42041
		collect 3 Wool Cloth##2592 |goto Wetlands 63.8,45.4
	step
		kill Blackrock Necromancer##48413+, Firegut Brute##7035+, Firegut Ogre Mage##7034+
		collect 16 Runecloth##14047 |goto Burning Steppes 69.6,42.8
	step
		create 4 Bolt of Runecloth##18401,Tailoring,4 total
		create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total
	step
	label "createclothes"
		talk Poranna Snowbraid##5154
		buy 2 Red Dye##2604 |n
		buy 1 Rune Thread##14341 |n
		create 1 Red Winter Clothes##44958,Tailoring,1 total |goto Ironforge 43.8,29.6
	step
	label "boots"
		talk Auctioneer Redmuse##8720
		buy Winter Boots##151791 |condition itemcount(151791) >= 1 |goto Ironforge/0 24.2,74.5
		|next "winthat"
		Click here if you wish to make these yourself |confirm |next "leatherboots" |only if skill("Leatherworking")>=285
	step
	label "leatherboots"
		talk Wulmort Jinglepocket##13433
		buy Pattern: Winter Boots##34262 |n
		learn Winter Boots##44953 |goto Ironforge/0 33.4,68.0 |use Pattern: Winter Boots##34262
	step
	label "backtobuy"
		talk Auctioneer Redmuse##8720 |goto Ironforge/0 24.2,74.5
		buy 1 Copper Bar##2840
		buy 1 Bolt of Woolen Cloth##2997
		buy 4 Rugged Leather##8170
		|next "runethread"
		Click here if you wish to farm the Rugged Leather yourself |confirm |next "gatherleather" |only if skill("Skinning")>=260
		Click here if you wish to farm the Bolt of Woolen Cloth yourself |confirm |next "gathercloth" |only if skill("Tailoring")>=75
		Click here if you wish to farm the Copper Bar yourself |confirm |next "gathermine" |only if skill("Mining")>=1
	step
	label "gatherleather"
		kill Black Wyrmkin##7041, Black Dragonspawn##7040
		Skin all of the dragonkin you kill in this area.
		collect 4 Rugged Leather##8170 |goto Burning Steppes 80.6,54.4
		|next "backtobuy"
	step
	label "gathercloth"
		kill Dragonmaw Whelpstealer##42041
		collect 3 Wool Cloth##2592 |goto Wetlands 63.8,45.4
	step
		create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total
		|next "backtobuy"
	step
	label "gathermine"
		Zoom your minimap all the way out, track ore, and search the area while mining yellow spots on your minimap
		collect 1 Copper Ore##2770 |goto Dun Morogh 49.2,35.1
	step
		create 1 Copper Bar##2657,Mining,1 total |goto Ironforge/0 51.8,43.8
		|next "backtobuy"
	step
	label "runethread"
		talk Poranna Snowbraid##5154
		buy 1 Rune Thread##14341 |goto Ironforge 43.8,29.6 |n
		create 1 Winter Boots##44953,Leatherworking,1 total
	step
	label "winthat"
		kill Grand Magus Telestra##26731
		|tip This drops only from the heroic version of this dungeon.
		collect Red Winter Hat##21524 |goto The Nexus 27.5,39.9 |next "mailbox"
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
		kill Lord Godfrey##46964
		|tip This drops only from the heroic version of this dungeon.
		collect Green Winter Hat##21525 |goto Shadowfang Keep/6 61.6,23.8 |next "mailbox"
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
		kill Jedoga Shadowseeker##29310
		|tip This drops only from the heroic version of this dungeon.
		collect Red Winter Hat##21524 |goto Ahn'kahet: The Old Kingdom 49.3,72.3 |next "mailbox"
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
		kill Mage-Lord Urom##27655
		|tip This drops only from the heroic version of this dungeon.
		collect Green Winter Hat##21525 |goto The Oculus/4 39.3,36.1 |next "mailbox"
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
		kill Corla, Herald of Twilight##39679
		|tip This drops only from the heroic version of this dungeon.
		collect Red Winter Hat##21524 |goto Blackrock Caverns 27.4,16.6 |next "mailbox"
		|tip If the hat didn't drop, you can leave the instance and reset it to try again.
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
		kill Admiral Ripsnarl##47626
		|tip This drops only from the heroic version of this dungeon.
		collect Red Winter Hat##21524 |goto The Deadmines/2 63.9,39.5 |next "mailbox"
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
		kill High Priestess Azil##42333
		|tip This drops only from the heroic version of this dungeon.
		collect Red Winter Hat##21524 |goto The Stonecore 57.64,38.24 |next "mailbox"
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
		kill Darhga Shadowburner##40319
		|tip This drops only from the heroic version of this dungeon.
		collect Green Winter Hat##21525 |goto Grim Batol 70.3,20.7 |next "mailbox"
		If the hat didn't drop, and you wish to try a different instance, click here |confirm |next
	step
	label "mailbox"
		Get the Smokywood Pastures Sampler from your mailbox
		|tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		use Smokywood Pastures Sampler##17685
		collect 1 Graccu's Mince Meat Fruitcake##21215 |future |achieve 277
	step
		Equip the Green Winter Clothes |equipped Green Winter Clothes##151792 |use Green Winter Clothes##151792 |future |achieve 277
		Or
		Equip the Red Winter Clothes |equipped Red Winter Clothes##151790 |use Red Winter Clothes##151790 |future |achieve 277
		_
		Equip the Winter Boots |equipped Winter Boots##151791 |use Winter Boots##151791 |future |achieve 277
		_
		Equip the Green Winter Hat |equipped Green Winter Hat##21525 |use Winter Hat##21525 |future |achieve 277
		Or
		Equip the Red Winter Hat |equipped Red Winter Hat##21524 |use Red Winter Hat##21524 |future |achieve 277
		During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake |use Graccu's Mince Meat Fruitcake##21215 |achieve 277
	step
		Use the Winter Wondervolt machine to turn into a Little Helper
		|tip Use them every 30 minutes while PvPing to keep the buff on. If you don't have the buff active while killing players, you won't get credit.
		Do any type of PvP of your choice
		|tip We recommend Alterac Valley. You must be killing players that give you honor.
		Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine |achieve 252 |goto Dun Morogh 60.3,33.9
	step
		Make sure you have the following in your bags:
		collect 10 Handful of Snowflakes##34191 |condition itemcount(34191) >= 10 |n
		collect 8 Mistletoe##21519 |condition itemcount(21519) >= 8 |n
		collect 1 Fresh Holly##21212 |condition itemcount(21212) >= 1 |n
		You can get more of these items by using /kiss on Winter Revelers once an hour at |goto Ironforge 19.9,53.8
		confirm
	step
		Use a Handful of Snowflakes on the following race/class combinations |use Handful of Snowflakes##34191
		|tip The best place to complete this is in major cities, but it can be done anywhere in the world.
		You can get more snowflakes by using /kiss on Winter Revelers at |goto Ironforge 19.9,53.8
		Orc Death Knight |achieve 1687/1
		Human Warrior |achieve 1687/2
		Tauren Shaman |achieve 1687/3
		Night Elf Druid |achieve 1687/4
		Undead Rogue |achieve 1687/5
		Troll Hunter |achieve 1687/6
		Gnome Mage |achieve 1687/7
		Dwarf Paladin |achieve 1687/8
		Blood Elf Warlock |achieve 1687/9
		Draenei Priest |achieve 1687/10
	step
		talk Wulmort Jinglepocket##13433
		buy Snowball##17202 |condition itemcount(17202) >= 1 |goto Ironforge 33.7,67.3
	step
		Use a snowball on Muradin Bronzebeard |use Snowball##17202
		Throw a snowball at Muradin Bronzebeard during the Feast of Winter Veil |goto Ironforge 39.2,56.0 |achieve 1255
	step
		Use your Mistletoe on Brother Kristoff |use Mistletoe##21519
		Use Mistletoe on Brother Kristoff in Stormwind City |goto Stormwind City 55.0,54.2 |achieve 1686/4
	step
		Use your Mistletoe on Brother Benjamin |use Mistletoe##21519
		|tip He patrols in front of this entryway, so you may need to search for him.
		Use Mistletoe on Brother Benjamin in the Stormwind City |goto Stormwind City 51.6,46.4 |achieve 1686/8
	step
		Use your Mistletoe on Brother Cassius |use Mistletoe##21519
		Use Mistletoe on Brother Cassius in the Stormwind City |goto Stormwind City 52.4,45.8 |achieve 1686/7
	step
		Use your Mistletoe on Brother Joshua |use Mistletoe##21519
		Use Mistletoe on Brother Joshua in the Stormwind City |goto Stormwind City 49.5,45.2 |achieve 1686/5
	step
		Use your Mistletoe on Brother Crowley |use Mistletoe##21519
		|tip He is at the lower level of the cathedral, down the ramp.
		Use Mistletoe on Brother Crowley in the Stormwind City |goto Stormwind City 52.6,43.2 |achieve 1686/6
	step
		Use your Mistletoe on Brother Wilhelm |use Mistletoe##21519
		Use Mistletoe on Brother Wilhelm in Goldshire |goto Elwynn Forest 41.1,66.0 |achieve 1686/2
	step
		Use your Mistletoe on Brother Nimetz |use Mistletoe##21519
		Use Mistletoe on Brother Nimetz in Northern Stranglethorn |goto Northern Stranglethorn 47.3,11.1 |achieve 1686/1
	step
		Use your Mistletoe on Brother Karman |use Mistletoe##21519
		Use Mistletoe on Brother Karman in Dustwallow Marsh |goto Dustwallow Marsh 67.4,47.4 |achieve 1686/3
	step
	label "bombroute"
		Routing to proper section |next "bombdaily" |only if completedq(11010)
		Routing to proper section |next "bombprequest" |only if not completedq(11010)
	step
	label "bombprequest"
		The following achievements require a level 70 or higher character
		confirm
	step
		talk Chu'a'lor##23233
		accept The Trouble Below##11057 |goto Blade's Edge Mountains 28.7,57.4
		accept The Crystals##11025 |goto Blade's Edge Mountains 28.7,57.4
	step
		kill Apexis Flayer##22175+
		collect 5 Apexis Shard##32569 |q 11025/1 |goto 29.2,53.7
	step
		talk Chu'a'lor##23233
		turnin The Crystals##11025 |goto 28.8,57.4
		accept An Apexis Relic##11058 |goto 28.8,57.4
	step
		talk Torkus##23316
		accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.4,57.6
	step
		kill Gan'arg Analyzer##23386+
		collect Apexis Shard##32569 |n
		Click an Apexis Relic
		|tip It looks like a small multi-colored crystal floating in the air.
		Insert an Apexis Shard to begin
		Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
		Click the clusters in the same color pattern as the crystal
		|tip You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
		Attain the Apexis Vibrations |q 11058/1 |goto 33.1,52.3
	step
		kill Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+, Bash'ir Raider##22241+
		collect 10 Apexis Shard##32569 |goto 51.1,15.6
	step
		click Fel Crystalforge##185920
		buy 1 Unstable Flask of the Beast##32598 |n
		collect Unstable Flask of the Beast##32598 |q 11030/1 |goto 32.8,40.5
	step
		talk Chu'a'lor##23233
		turnin An Apexis Relic##11058 |goto 28.8,57.4
		accept The Relic's Emanation##11080 |goto 28.8,57.4
	step
		talk Torkus##23316
		turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.4,57.7
	step
		kill Gan'arg Analyzer##23386+
		collect Apexis Shard##32569 |n
		Click an Apexis Relic
		|tip It flooks like a small multi-colored crystal floating in the air.
		Insert an Apexis Shard to begin
		Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
		Click the clusters in the same color pattern as the crystal
		You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over
		Attain the Apexis Vibrations |q 11080/1 |goto 27.7,68.1
	step
		talk Chu'a'lor##23233
		turnin The Relic's Emanation##11080 |goto 28.8,57.4
		accept The Skyguard Outpost##11062 |goto 28.8,57.4
	step
		talk Sky Commander Keller##23334
		turnin The Skyguard Outpost##11062 |goto 27.4,52.7
	step
		talk Sky Sergeant Vanderlip##23120
		accept Bombing Run##11010 |goto 27.6,52.9
	step
		While on your flying mount, use your Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
		Destroy #15# Fel Cannonball Stacks |q 11010/1 |goto 36.8,39.4
	step
		talk Sky Sergeant Vanderlip##23120
		turnin Bombing Run##11010 |goto 27.6,52.9
	step
	label "bombdaily"
		talk Sky Sergeant Vanderlip##23120
		accept Bomb Them Again!##11023 |goto 27.6,52.9
	step
		Use Preserved Holly while riding your flying mount |use Preserved Holly##21213 |havebuff Interface\Icons\INV_Misc_Plant_03
		confirm
	step
		While on riding the Reindeer Mount, use the Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
		Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto 36.8,39.4
	step
		talk Sky Sergeant Vanderlip##23120
		turnin Bomb Them Again!##11023 |goto 27.6,52.9
		|tip You have to be on your mount when turning in the quest.
		Complete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil |goto 27.6,52.9 |achieve 1282
	//DALARAN
	step
		Get the Winter Veil Disguise Kit from your mailbox
		|tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		Equip the Winter Veil Disguise Kit in your bag |use Winter Veil Disguise Kit##17712
		Dance with another player wearing their snowman costume |script DoEmote("DANCE")
		During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a snowman and then dance with another snowman in Dalaran |achieve 1690 |goto Dalaran 50.3,63.2
	step
		This step can only be completed by logging into the server on or after December 25th
		Click a present underneath the tree
		Open one of the presents underneath the Winter Veil tree once they are available |achieve 1689 |goto Stormwind City 61.2,73.5
	step
		Congratulations, you are now a Merry Maker!
	step
		talk Craggle Wobbletop##52358
		buy 1 Red Rider Air Rifle##46725 |condition itemcount(46725) >= 1 |goto Stormwind City 64.8,61.7
		buy 1 Red Rider Air Rifle Ammo##48601 |condition itemcount(48601) >= 1 |goto Stormwind City 64.8,61.7
		|tip He patrols around the inner section of Stormwind.
	step
		Use your Red Rider Air Rifle on High Overlord Saurfang |use Red Rider Air Rifle##46725 |achieve 4436/4 |goto Orgrimmar/1 48.4,71.3
		|tip This is a horde leader located in the horde city Orgrimmar, be careful when completing this achievement.
	step
		Use your Red Rider Air Rifle on Baine Bloodhoof |use Red Rider Air Rifle##46725 |achieve 4436/1 |goto Thunder Bluff 58.8,51.7
		|tip This is a horde leader located in the horde city Thunderbluff, be careful when completing this achievement.
	step
		Use your Red Rider Air Rifle on Lor'themar Theron |use Red Rider Air Rifle##46725 |achieve 4436/3 |goto Silvermoon City/0 54.5,21.1
		|tip This is a horde leader located in the horde city Silvermoon, be careful when completing this achievement.
	step
		Use your Red Rider Air Rifle on Lady Sylvanas Windrunner |use Red Rider Air Rifle##46725 |achieve 4436/2 |goto Undercity 56.4,91.1
		|tip This is a horde leader located in the horde city Undercity, be careful when completing this achievement.
	step
		Congratulations, you now have the achievement BB King!
	step
		talk Wulmort Jinglepocket##13433
		buy 1 Gaudy Winter Veil Sweater##70923 |condition itemcount(70923) >= 1 |goto Ironforge 33.7,67.3
	step
		Equip Gaudy Winter Veil Sweater |use Gaudy Winter Veil Sweater##70923 |goto Orgrimmar/1 48.4,71.3 |achieve 5853/1
		|tip You will need to have this on while in every Horde major city, and then use the active ability on it.
		|tip You will not need to go far into each of the Horde cities just to the entrances.
	step
		Equip Gaudy Winter Veil Sweater |use Gaudy Winter Veil Sweater##70923 |goto Thunder Bluff 58.8,51.7 |achieve 5853/3
		|tip You will need to have this on while in every Horde major city, and then use the active ability on it.
		|tip You will not need to go far into each of the Horde cities just to the entrances.
	step
		Equip Gaudy Winter Veil Sweater |use Gaudy Winter Veil Sweater##70923 |goto Undercity 56.4,91.1 |achieve 5853/4
		|tip You will need to have this on while in every Horde major city, and then use the active ability on it.
		|tip You will not need to go far into each of the Horde cities just to the entrances.
	step
		Equip Gaudy Winter Veil Sweater |use Gaudy Winter Veil Sweater##70923 |goto Silvermoon City/0 54.5,21.1 |achieve 5853/2
		|tip You will need to have this on while in every Horde major city, and then use the active ability on it.
		|tip You will not need to go far into each of the Horde cities just to the entrances.
	step
		Congratulations, you now have the achievement A-Caroling We Will Go!
	step
		talk Jepetto Joybuzz##29478
		buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |condition itemcount(54343) >= 1 |goto Dalaran/1 44.75,45.70
		|tip He patrols around this area.
	step
		To complete this achievement you will need to destroy 25 other racers while controling your own
		Use your Blue Crashin' Thrashin' Racer Controller |use Blue Crashin' Thrashin' Racer Controller##54343
		|tip You may have to find a group for this.
		Destroy #25# Crashin' Thrashin' Racer Controllers |achieve 1295
	step
		Congratulations, you now have the achievement Crashin' & Thrashin'!
	step
		The achievement "Iron Armada" requires that you collect 5 toys
		kill Drakum##98283
		collect Crashin' Thrashin' Roller Controller##108631 |achieve 10353/5 |goto Tanaan Jungle 83.3,43.5
		|tip This toy only has about a 10 percent chance to drop and can only be killed once a day per character for a chance at it.
		|tip This mob is an elite and may require a group to kill.
	step
		kill Gondar##98284
		collect Crashin' Thrashin' Cannon Controller##108633 |achieve 10353/4 |goto Tanaan Jungle 80.7,56.2
		|tip This toy only has about a 10 percent chance to drop and can only be killed once a day per character for a chance at it.
		|tip This mob is an elite and may require a group to kill.
	step
		kill Smashum Grabb##98285
		collect Crashin' Thrashin' Mortar Controller##108634 |achieve 10353/3 |goto Tanaan Jungle 87.5,56.0
		|tip This toy only has about a 10 percent chance to drop and can only be killed once a day per character for a chance at it.
		|tip This mob is an elite and may require a group to kill.
	step
		talk Izzy Hollyfizzle##96362
		buy 1 Crashin' Thrashin' Killdozer Controller##108635 |condition itemcount(108635) >= 1 |achieve 10353/2 |goto Lunarfall 44.5,51.5
		|tip This toy requires 5 Merry Supplies, these can be obtained by completing the holiday event dailies in your garrison.
	step
		This step can only be completed by logging into the servers on or after December 25th
		Open up the presents under the tree, one will contain the toy Crashin' Thrashin' Flamer Controller
		collect Crashin' Thrashin' Flamer Controller##108632 |achieve 10353/1
	step
		Congratulations, you now have the achievement Iron Armada!
	step
		Use your Crashin' Thrashin' Flyer Controller to shot down another Flyer |use Crashin' Thrashin' Flyer Controller##104318
		Shot down another Crashin' Thrashin' Flyer |achieve 8699
		|tip This toy was given as a gift on Christmas of 2013.
		If you did not receive this toy by logging on for Christmas of 2013 it can also come from Stolen Presents which is given for completing the daily "You're a Mean One..."
		|tip This toy has about a 3 percent chance to be inside of the Stolen Present.
	step
		Congratulations, you now have the achievement The Danger Zone!
]])

------------------------
----- Hallow's End -----
------------------------

ZygorGuidesViewer:RegisterInclude("Hallow's_End_Quests",[[
	step
		talk Human Commoner##18927
		accept Costumed Orphan Matron##11356 |goto Stormwind City 61.7,74.2
		accept A Season For Celebration##29074 |goto Stormwind City 61.7,74.2
	step
		talk Jesper##15310
		accept Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest 32.0,50.4
	step
		talk Celestine of the Harvest##51665
		turnin A Season For Celebration##29074 |goto Elwynn Forest 32.0,50.5
	step
		talk Gretchen Fenlow##51934
		accept A Friend in Need##29430 |goto 32.4,50.9
	step
		talk Costumed Orphan Matron##24519
		turnin Costumed Orphan Matron##11356 |goto Elwynn Forest 42.6,64.4
		accept Fire Brigade Practice##11360 |goto Elwynn Forest 42.6,64.4
	step
		Click the Water Barrel |goto 42.7,62.0
		|tip It looks like a huge bucket of water.
		use Water Bucket##32971
		|tip Use your Water Bucket on the burning scarecrows.
		Fight #5# Fires |q 11360/1 |goto 42.6,60.2
		|tip You will have to go back and get more Water Buckets from the Water Barrel.
		Collect more Water Buckets from the Water Barrel at [42.7,62.0]
	step
		talk Costumed Orphan Matron##24519
		|tip You will only be able to accept 1 of the 2 daily quests.
		turnin Fire Brigade Practice##11360 |goto 42.6,64.4
	step
		click Large Jack-o'-Lantern##7447
		|tip It's a burning pumpkin laying in the road.
		accept Smash the Pumpkin##12133 |goto 42.4,65.9
	step
		talk Costumed Orphan Matron##24519
		turnin Smash the Pumpkin##12133 |goto 42.6,64.4
	step
		talk Innkeeper Allison##6740
		accept Flexing for Nougat##8356 |goto Stormwind City 60.4,75.3
	step
		clicknpc Innkeeper Allison##6740
		Flex For Innkeeper Allison |script DoEmote("FLEX") |q 8356/1 |goto 60.4,75.3
	step
		talk Innkeeper Allison##6740
		turnin Flexing for Nougat##8356 |goto 60.4,75.3
	step
		talk Anson Hastings##53949
		turnin A Friend in Need##29430 |goto Stormwind City 60.1,75.1
		accept Missing Heirlooms##29392 |goto Stormwind City 60.1,75.1
	step
		talk Innkeeper Firebrew##5111
		accept Chicken Clucking for a Mint##8353 |goto Ironforge 18.1,51.5
	step
		clicknpc Innkeeper Firebrew##5111
		Cluck like a Chicken for Innkeeper Firebrew |script DoEmote("CHICKEN") |q 8353/1 |goto 18.1,51.5
	step
		talk Innkeeper Firebrew##5111
		turnin Chicken Clucking for a Mint##8353 |goto 18.1,51.5
	step
		talk Talvash del Kissel##6826
		accept Incoming Gumdrop##8355 |goto 36.4,3.6
	step
		clicknpc Talvash del Kissel##6826
		Make Train sounds for Talvash del Kissel |script DoEmote("TRAIN") |q 8355/1 |goto 36.4,3.6
	step
		talk Talvash del Kissel##6826
		turnin Incoming Gumdrop##8355 |goto 36.4,3.6
	step
		Search the Courier's Cabin |q 29392/1 |goto Stormwind City 24.0,44.8
	step
		talk Hired Courier##53950
		turnin Missing Heirlooms##29392 |goto Stormwind City 24.0,44.8
		accept Fencing the Goods##29398 |goto Stormwind City 24.0,44.8
	step
		talk Auctioneer Fitch##8719
		|tip Ask him about the suspicious crate.
		Follow the Thief's Trail |q 29398/1 |goto 61.2,70.8
	step
		talk Auctioneer Fitch##8719
		turnin Fencing the Goods##29398 |goto 61.2,70.8
		accept Shopping Around##29399 |goto 61.2,70.8
	step
		Investigate the Shady Lady |q 29399/1 |goto 64.2,46.3
		|tip There will be a bit of dialog before completing the objective.
	step
		talk Hudson Barnes##54021
		turnin Shopping Around##29399 |goto 64.2,46.3
		|tip You will have to wait until he finishes talking and the white question mark turns yellow to turn this in.
		accept Taking Precautions##29402 |goto 64.2,46.3
	step
		talk Keldric Boucher##1257
		buy 5 Crystal Vial##3371 |q 29402/2 |goto Stormwind City 62.9,75.0
	step
		click Blood Nettle##209059
		|tip These can be found all around this area.
		collect 5 Blood Nettle##71035 |q 29402/3 |goto 55.2,14.5
	step
		talk Jessara Cordell##1318
		buy 2 Strange Dust##10940 |q 29402/1 |goto Stormwind City 52.8,74.2
		|tip If she doesn't have any for sale, you will have to use the Auction House or disenchant low level gear.
	step
		talk Hudson Barnes##54021
		turnin Taking Precautions##29402 |goto 64.2,46.3
		accept The Collector's Agent##29403 |goto 64.2,46.3
	step
		Enter the Cathedral of Light |goto Stormwind City 52.7,50.5 < 5 |walk
		Go into the catacombs |goto 51.3,44.2 < 5 |only if walking
		kill Unleashed Void##54114+
		Disrupt the Meeting |q 29403/1 |goto 55.3,43.5
	step
		click Stolen Crate##267952
		turnin The Collector's Agent##29403 |goto 55.3,43.5
		accept What Now?##29411 |goto 55.3,43.5
	step
		talk Anson Hastings##53949
		turnin What Now?##29411 |goto Stormwind City 60.1,75.1
	step
		click Anson's Crate##209076
		accept The Creepy Crate##29413 |instant |goto 60.1,75.1
	step
		talk Innkeeper Saelienne##6735
		accept Dancing for Marzipan##8357 |goto Darnassus 62.5,32.8
	step
		clicknpc Innkeeper Saelienne##6735
		Dance for Innkeeper Saelienne |script DoEmote("DANCE") |q 8357/1 |goto 62.5,32.8
	step
		talk Innkeeper Saelienne##6735
		turnin Dancing for Marzipan##8357 |goto 62.5,32.8
	step
		talk Jesper##15310
		turnin Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest 32.0,50.4
]])

ZygorGuidesViewer:RegisterInclude("Hallow's_End_Dailies",[[
	step
		talk Celestine of the Harvest##51665
		accept A Time to Gain##29075 |goto Elwynn Forest 32.0,50.5
	step
		Click the Bonfire
		Use the Bonfire |q 29075/1 |goto Elwynn Forest 32.7,49.5
	step
		talk Celestine of the Harvest##51665
		turnin A Time to Gain##29075 |goto Elwynn Forest 32.0,50.5
	step
		talk Keira##52064
		accept A Time to Lose##29371 |goto 32.1,50.6
	step
		talk Gretchen Fenlow##51934
		accept Stink Bombs Away!##29054 |goto 32.4,50.9
		accept Clean Up in Stormwind##29144 |goto 32.4,50.9
	step
		All around Stormwind:
		use Arcane Cleanser##69191
		|tip Use the Arcane Cleanser on Stink Bombs.
		|tip They look like orange mists all around Stormwind.
		Remove #10# Stink Bombs |q 29144/1
	step
		talk Gretchen Fenlow##51934
		turnin Clean Up in Stormwind##29144 |goto Elwynn Forest 32.4,50.9
	step
		talk Gertrude Fenlow##52548
		Tell her _"I'm ready to fly"_ |invehicle |c |goto 32.2,50.8
	step
		Use the _Toss Stink Bomb_ ability on your action bar all around Undercity
		Drop #25# Stink Bombs |q 29054/1
		Click the _Return Home_ button on your action bar |outvehicle
	step
		talk Gretchen Fenlow##51934
		turnin Stink Bombs Away!##29054 |goto Elwynn Forest 32.3,50.9
	step
		talk Costumed Orphan Matron##24519
		|tip You will only be able to accept 1 of the 2 daily quests.
		accept Stop the Fires!##11131 |or |goto Elwynn Forest 42.6,64.4
		accept "Let the Fires Come!"##12135 |or |goto Elwynn Forest 42.6,64.4
	step
		Click the Water Barrel
		|tip It looks like a huge bucket of water.
		use Water Bucket##32971
		|tip Use your Water Bucket on the fires all around this area.
		Put Out the Fires |q 11131/1 |goto 42.4,65.6
		|tip You will need a group of people to complete this quest. It is best to do this quest at peak hours.
		Collect more Water Buckets from the Water Barrel at [42.5,64.5]
		|only if havequest(11131)
	step
		Click the Water Barrel
		|tip It looks like a huge bucket of water.
		use Water Bucket##32971
		|tip Use your Water Bucket on the fires all around this area.
		Put Out the Fires |q 12135/1 |goto 42.4,65.6
		|tip You will need a group of people to complete this quest. It is best to do this quest at peak hours.
		Collect more Water Buckets from the Water Barrel at [42.5,64.5]
		|only if havequest(12135)
	step
		click Large Jack-o'-Lantern##7447
		|tip It's a burning pumpkin laying in the road.
		accept Smash the Pumpkin##12133 |goto 42.4,65.9
	step
		talk Costumed Orphan Matron##24519
		turnin Stop the Fires!##11131 |goto 42.6,64.4 |only if havequest(11131)
		turnin "Let the Fires Come!"##12135 |goto 42.6,64.4 |only if havequest(12135)
		turnin Smash the Pumpkin##12133 |goto 42.6,64.4 |only if havequest(12133)
	step
		use Dousing Agent##68648
		|tip Use the Dousing Agent in your Bags on the Burning Wickerman.
		Douse the Horde's Wickerman |q 29371/1 |goto Undercity 68.2,15.6
		|tip Note that you will be flagged for PvP Combat while attempting to do this step.
	step
		talk Keira##52064
		turnin A Time to Lose##29371 |goto Elwynn Forest 32.1,50.6
	--New Legion Daily
	step
		For the next part of the dailies you will need to have the new Legion Dalaran unlocked
		confirm
	step
		talk Duroc Ironjaw##109854
		|tip He's inside of the inn.
		accept Beware of the Crooked Tree##43259 |goto Dalaran L/10 47.40,40.55
	step
		talk Hag of the Crooked Tree##109734
		turnin Beware of the Crooked Tree##43259 |goto Val'sharah/0 35.01,56.08
		accept Under the Crooked Tree##43162 |goto Val'sharah/0 35.01,56.08
	step
		click Crocked Tree Cauldron |goto Val'sharah/0 35.01,56.08
		kill Aria Sorrowheart##109825 |q 43162/1 |goto Val'sharah/0 34.80,55.46
		|tip This is an elite enemy you may need a group to kill it.
	step
		talk Hag of the Crooked Tree##109734
		turnin Under the Crooked Tree##43162 |goto Val'sharah/0 35.01,56.08
]])

ZygorGuidesViewer:RegisterInclude("Hallow's_End_Achievements",[[
// Eastern Kingdoms
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Stormwind, Trade District |q 12336 |future |goto Stormwind City 60.5,75.3
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Elwynn Forest, Goldshire |q 12286 |future |goto Elwynn Forest 43.7,65.9
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Redridge Mountains, Lakeshire |q 12342 |future |goto Redridge Mountains 26.5,41.5
	step
		click Candy Bucket##208144
		|tip It's on the top level of the tower.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Searing Gorge, Iron Summit |q 28965 |future |goto Searing Gorge/0 39.49,66.04
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Loch Modan, Thelsamar |q 12339 |future |goto Loch Modan 35.5,48.5
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Loch Modan, Farstrider Lodge |q 28963 |future |goto Loch Modan 83.0,63.5
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Ironforge, The Commons |q 12335 |future |goto Ironforge 18.3,51.0
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dun Morogh, Kharanos |q 12332 |future |goto Dun Morogh 54.5,50.8
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Wetlands, Menethil Harbor |q 12343 |future |goto Wetlands 10.8,61.0
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Wetlands, Swiftgear Station |q 28990 |future |goto Wetlands 26.1,26.0
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Wetlands, Greenwarden's Grove |q 28991 |future |goto Wetlands 58.2,39.2
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Arathi Highlands, Refuge Point |q 28954 |future |goto Arathi Highlands 40.06,49.08
	step
		Go upstairs in the inn
		click Candy Bucket##208144
		|tip It's inside the hangar.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Hinterlands, Aerie Peak |q 12351 |future |goto The Hinterlands 14.2,44.6
	step
		click Candy Bucket##208144
		|tip It's inside the bunker.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Hinterlands, Stormfeather Outpost |q 28970 |future |goto The Hinterlands 66.2,44.4
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Eastern Plaguelands, Light's Hope Chapel |q 12402 |future |goto Eastern Plaguelands/20 40.69,90.47
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		Complete the Candy Bucket quest |use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Western Plaguelands, Chillwind Camp |q 28988 |future |goto Western Plaguelands 43.4,84.4
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Badlands, Fuselight |q 28955 |future |goto Badlands/0 65.86,35.65
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Badlands, Dragon's Mouth |q 28956 |future |goto Badlands 20.9,56.2
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Swamp of Sorrows, Bogpaddle |q 28967 |future |goto Swamp of Sorrows 71.7,14.1
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Swamp of Sorrows, The Harborage |q 28968 |future |goto Swamp of Sorrows 28.9,32.5
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Westfall, Sentinel Hill |q 12340 |future |goto Westfall 52.9,53.7
		If you do not find the Candy Bucket here then it will be located at [56.8,47.3]
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Duskwood, Darkshire |q 12344 |future |goto Duskwood 73.8,44.3
	step
		talk Zidormi##88206
		Tell her: "_Show me the Blasted Lands before the invasion_"
		Gain the _Time Travelling_ buff |havebuff Time Travelling##609811 |goto Blasted Lands 48.16,7.28 < 5 |walk
	step
		click Candy Bucket##208144
		|tip It's inside the building.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Blasted Lands, Nethergarde Keep |q 28960 |future |goto Blasted Lands 60.7,14.1
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Blasted Lands, Surwich |q 28961 |future |goto Blasted Lands 44.4,87.6
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Northern Stranglethorn, Fort Livingston |q 28964 |future |goto Northern Stranglethorn/0 53.1,67.0
	step
		click Candy Bucket##208144
		|tip It's on the bottom floor of the tavern.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in The Cape of Stranglethorn, Booty Bay |q 12397 |future |goto The Cape of Stranglethorn 40.91,73.73
// Kalimdor
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Northern Barrens, Ratchet |q 12396 |future |goto Northern Barrens/0 67.33,74.66
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Southern Barrens, Honor's Stand |q 29006 |future |goto Southern Barrens/0 39.01,10.99
	step
		click Candy Bucket##208144
		|tip It's inside the base of the tower.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Southern Barrens, Northwatch Hold |q 29007 |future |goto Southern Barrens/0 65.60,46.54
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Southern Barrens, Fort Triumph |q 29008 |future |goto Southern Barrens/0 49.05,68.50
	step
		click Candy Bucket##208144
		|tip It's inside the inn on the second floor.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dustwallow Marsh, Mudsprocket |q 12398 |future |goto Dustwallow Marsh/0 41.86,74.09
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Tanaris, Gadgetzan |q 12399 |future |goto Tanaris/0 52.56,27.10
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Tanaris, Bootleggers Outpost |q 29014 |future |goto Tanaris/0 55.70,60.96
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Un'goro Crater, Marshal's Stand |q 29018 |future |goto Un'Goro Crater/0 55.27,62.11
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Silithus, Cenarion Hold |q 12401 |future |goto Silithus/0 55.47,36.79
	step
		click Candy Bucket##208144
		|tip It's inside the building.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Feralas, Feathermoon Stronghold |q 12350 |future |goto Feralas/0 46.33,45.19
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Feralas, Dreamer's Rest |q 28952 |future |goto Feralas/0 51.07,17.82
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Desolace, Karnum's Glade |q 28993 |future |goto Desolace/0 56.72,50.13
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Desolace, Nijel's Point |q 12348 |future |goto Desolace/0 66.33,6.59
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Stonetalon Mountains, Northwatch Expedition Base |q 29010 |future |goto Stonetalon Mountains/0 71.02,79.08
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Stonetalon Mountains, Windshear Hold |q 29011 |future |goto Stonetalon Mountains/0 59.05,56.33
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Stonetalon Mountains, Farwatcher's Glen |q 29013 |future |goto Stonetalon Mountains/0 31.53,60.66
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Stonetalon Mountains, Thal'darah Overlook |q 29012 |future |goto Stonetalon Mountains/0 39.48,32.81
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Ashenvale, Astranaar |q 12345 |future |goto Ashenvale/0 37.01,49.26
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Felwood, Whisperwind Grove |q 28994 |future |goto Felwood/0 44.58,28.98
	step
		click Candy Bucket##208144
		|tip It's inside the big tree.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Felwood, Talonbranch Glade |q 28995 |future |goto Felwood/0 61.86,26.71
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Winterspring, Everlook |q 12400 |future |goto Winterspring/0 59.83,51.21
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Darkshore, Lor'danel |q 28951 |future |goto Darkshore/0 50.79,18.89
	step
		Go up the ramp |goto The Exodar/0 56.38,31.15 < 15 |walk
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Exodar, Seat of the Naaru |q 12337 |future |goto The Exodar/0 59.23,18.48
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Azuremyst Isle, Azure Watch |q 12333 |future |goto Azuremyst Isle/0 48.49,49.05
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Bloodmyst Isle, Blood Watch |q 12341 |future |goto Bloodmyst Isle/0 55.69,59.96
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Darnassus, Craftsmen's Terrace |q 12334 |future |goto Darnassus/0 62.27,33.14
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Teldrassil, Dolanaar |q 12331 |future |goto Teldrassil/0 55.36,52.28
// Outland
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Hellfire Peninsula, Honor Hold |q 12352 |future |goto Hellfire Peninsula/0 54.3,63.7
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Hellfire Peninsula, Temple of Telhamat |q 12353 |future |goto 23.42,36.38
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Shattrath City, Scryer's Tier |q 12404 |future |goto Shattrath City/0 56.31,81.95
		only if rep ('The Scryers')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Shattrath City, Aldor Rise |q 12404 |future |goto Shattrath City/0 28.23,49.07
		only if rep ('The Aldor')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Terokkar Forest, Allerian Stronghold |q 12356 |future |goto Terokkar Forest/0 56.60,53.22
	step
		click Candy Bucket##208144
		|tip It's inside the inn back in the corner.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Shadowmoon Valley, Wildhammer Stronghold |q 12360 |future |goto Shadowmoon Valley/0 37.01,58.29
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Shadowmoon Valley, Sanctum of the Stars |q 12409 |future |goto 56.37,59.82
		only if rep ('The Scryers')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Shadowmoon Valley, Altar of Sha'tar |q 12409 |future |goto 61.00,28.17
		only if rep ('The Aldor')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Nagrand, Telaar |q 12357 |future |goto Nagrand/0 54.19,75.88
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Zangarmarsh, Cenarion Refuge |q 12403 |future |goto Zangarmarsh/0 78.45,62.88
	step
		click Candy Bucket##208144
		|tip It's inside the inn atop the giant mushroom.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Zangarmarsh, Telredor |q 12354 |future |goto 67.16,48.94
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Zangarmarsh, Orebor Harborage |q 12355 |future |goto 41.90,26.17
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Blade's Edge Mountains, Sylvanaar |q 12358 |future |goto Blade's Edge Mountains/0 35.83,63.74
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Blade's Edge Mountains, Toshley's Station |q 12359 |future |goto 61.05,68.08
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Blade's Edge Mountains, Evergrove |q 12406 |future |goto 62.90,38.33
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Netherstorm, Area 52 |q 12407 |future |goto Netherstorm/0 32.02,64.44
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Netherstorm, The Stormspire |q 12408 |future |goto 43.31,36.10
// Northrend
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Borean Tundra, Valiance Keep |q 13436 |future |goto Borean Tundra/0 58.52,67.87
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Borean Tundra, Unu'pe |q 13460 |future |goto Borean Tundra/0 78.45,49.16
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Borean Tundra, Fizzcrank Airstrip |q 13437 |future |goto Borean Tundra/0 57.12,18.81
	step
		click Candy Bucket##208144
		|tip It's under the tent.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Sholazar Basin, Nesingwary Base Camp |q 12950 |future |goto Sholazar Basin/0 26.61,59.20
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Stars' Rest |q 13438 |future |goto Dragonblight/0 28.95,56.22
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Moa'ki Harbor |q 13459 |future |goto Dragonblight/0 48.12,74.66
	step
		click Candy Bucket##208144
		|tip It's on the bottom floor.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Wyrmrest Temple |q 13456 |future |goto Dragonblight/0 60.15,53.45
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Wintergarde Keep |q 13439 |future |goto Dragonblight/0 77.50,51.28
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Grizzly Hills, Amberpine Lodge |q 12944 |future |goto Grizzly Hills/0 31.94,60.22
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Grizzly Hills, Westfall Brigade |q 12945 |future |goto Grizzly Hills/0 59.64,26.36
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, Fort Wildervar |q 13435 |future |goto Howling Fjord/0 60.47,15.90
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, Valgarde |q 13433 |future |goto Howling Fjord/0 58.32,62.82
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, Westguard Keep |q 13434 |future |goto Howling Fjord/0 30.83,41.43
	step
		click Candy Bucket##208144
		|tip It's inside the underground inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, Kamagua |q 13452 |future |goto Howling Fjord/0 25.44,59.82
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Zul'Drak, The Argent Stand |q 12941 |future |goto Zul'Drak/0 40.87,66.04
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Zul'Drak, Zim'Torga |q 12940 |future |goto Zul'Drak/0 59.33,57.20
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Storm Peaks, K3 |q 13461 |future |goto The Storm Peaks/0 41.07,85.85
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Storm Peaks, Frosthold |q 13448 |future |goto The Storm Peaks/0 28.72,74.29
	step
		click Candy Bucket##208144
		|tip It's inside the building.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Storm Peaks, Bouldercrag's Refuge |q 13462 |future |goto The Storm Peaks/0 30.92,37.16
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dalaran, The Legerdemain Lounge |q 13463 |future |goto Dalaran/1 48.14,41.31
	step
		click Candy Bucket##208144
		|tip It's under the stairs.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dalaran, Silver Enclave |q 13473 |future |goto Dalaran/1 42.35,63.07
	step
		click Candy Bucket##208144
		|tip It's in the side room on the left.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Dalaran, The Underbelly |q 13472 |future |goto Dalaran/2 38.20,59.61
// Cataclysm
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Mount Hyjal, Nordrassil |q 28999 |future |goto Mount Hyjal/0 63.05,24.14
	step
		click Candy Bucket##208144
		|tip It's under the ramp.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Mount Hyjal, Shrine of Aviana |q 29001 |future |goto Mount Hyjal/0 42.68,45.71
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Mount Hyjal, Grove of Aessina |q 29000 |future |goto Mount Hyjal/0 18.63,37.32
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Deepholm, Temple of Earth |q 29020 |future |goto Deepholm/0 47.35,51.71
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Darkbreak Cove |q 28985 |future |goto Abyssal Depths/0 54.67,72.11
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Tranquil Wash |q 28983 |future |goto Shimmering Expanse/0 49.72,57.39
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Silver Tide Hollow |q 28982 |future |goto Shimmering Expanse/0 49.18,41.87
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Deepmist Grotto |q 28981 |future |goto Kelp'thar Forest/0 63.50,60.16
	step
		click Candy Bucket##208144
		|tip It's on the bottom floor.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Twilight Highlands, Highbank |q 28980 |future |goto Twilight Highlands/0 79.48,78.54
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Twilight Highlands, Firebeard's Patrol |q 28977 |future |goto Twilight Highlands/0 60.35,58.24
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Twilight Highlands, Victor's Point |q 28979 |future |goto Twilight Highlands/0 43.50,57.27
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Twilight Highlands, Thundermar |q 28978 |future |goto Twilight Highlands/0 49.60,30.36
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Uldum, Ramkahen |q 29017 |future |goto Uldum/0 54.68,33.01
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
		Visit the Candy Bucket in Uldum, Oasis of Vir'sar |q 29016 |future |goto Uldum/0 26.59,7.23
// End of Candy Bucket Achievements
	step
		You must be at least level 23 to complete this step:
		Press _I_ and queue for The Headless Horseman
		kill Headless Horseman##23682
		Complete the Bring Me The Head of... Oh Wait achievement |achieve 255
	step
		use Tricky Treat##33226
		|tip You get these by completing Hallows End quests.
		|tip Keep using your Tricky Treats quickly until you puke.
		Complete the Out With It achievement |achieve 288
	step
		talk Dorothy##53728
		buy 1 Tooth Pick##37604 |n
		use Tooth Pick##37604
		Show Off Your Sparkling Smile |achieve 981 |goto Elwynn Forest 31.8,50.1
	step
		use Weighted Jack-o'-Lantern##34068
		|tip Use your Weighted Jack-o'-Lanterns on the following races:
		|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests. Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit. The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
		Gnome |achieve 291/4
		Goblin |achieve 291/5
		Blood Elf |achieve 291/1
		Draenei |achieve 291/2
		Dwarf |achieve 291/3
		Human |achieve 291/6
		Night Elf |achieve 291/7
		Orc |achieve 291/8
		Tauren |achieve 291/9
		Troll |achieve 291/10
		Undead |achieve 291/11
		Worgen |achieve 291/12
	step
		Have other players use Hallowed Wands on you while in a party to transform into the following:
		Transform into a Wisp |achieve 283/7
		Transform into a Ghost |achieve 283/2
		Transform into a Leper Gnome |achieve 283/3
		Transform into a Pirate |achieve 283/5
		Transform into a Ninja |achieve 283/4
		Transform into a Skeleton |achieve 283/6
		Transform into a Bat |achieve 283/1
	step
		talk Dorothy##53728
		buy 1 Sinister Squashling##33154 |n
		buy 1 Hallowed Helm##33292 |n
		Use the Sinister Squashling |use Sinister Squashling##33154
		Obtain a Sinister Squashling pet |achieve 292/1 |goto Elwynn Forest 31.8,50.1
		Obtain a Hallowed Helm |achieve 292/2 |goto Elwynn Forest 31.8,50.1
	step
		use G.N.E.R.D.S.##37583
		|tip You can buy these from the Hallows End vendor. Use them every 30 minutes while PvPing to keep the buff on. If you don't have the buff active while killing players, you won't get credit.
		Do any type of PvP of your choice
		|tip You must be killing players that give you honor.
		Earn #10# Honorable kills while under the influence of the G.N.E.R.D. buff |achieve 1261
	step
		Congratulations, you are now one of The Hallowed!
]])

------------------------------
----- Love is in the Air -----
------------------------------

ZygorGuidesViewer:RegisterInclude("LiitA_Main_Questline",[[
		talk Inspector Snip Snagglebolt##38066
		accept Something Stinks##24655 |goto Stormwind City 61.6,75.3
	step
		clicknpc Stormwind City Guard##68
		Find Stormwind Guards that have the Heavily Perfumed buff on them
		|tip They are all over Stormwind and will have a glowing pink aura around them
		Use Snagglebolt's Air Analyzer on Stormwind Guards |use Snagglebolt's Air Analyzer##50131
		Analyze #6# Perfumed Guards |q Something Stinks##24655/1 |goto Stormwind City 62.4,76.9
	step
		talk Inspector Snip Snagglebolt##38066
		turnin Something Stinks##24655 |goto Stormwind City 61.6,75.3
		accept Pilfering Perfume##24656 |goto Stormwind City 61.6,75.3
	step
		Start running through Stormwind |goto Stormwind City/0 63.8,73.1 < 20 |only if walking
		Head towards the gate |goto 69.2,79.5 < 20 |only if walking
		Exit Stormwind |goto 69.8,84.0 < 20 |only if walking
		Run out to Elwynn Forest |goto Elwynn Forest/0 32.6,49.3 < 20 |only if walking
		Turn Left towards the Goblins |goto 33.9,47.7 < 20 |only if walking
		While disguised as a package-runner, RUN to the Crown Chemical Company's stockpile outside the gates of Stormwind
		Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q Pilfering Perfume##24656 |goto Elwynn Forest 34.0,47.4,0.3
	step
		Run back to the gates |goto 32.1,49.4 < 20 |only if walking
		Enter Stormwind |goto Stormwind City/0 67.7,83.9 < 20 |only if walking
		Go through the tunnel |goto 67.6,79.8 < 20 |only if walking
		Use the alley as a shortcut |goto 63.8,75.1 < 20 |only if walking
		Quickly return the package they toss you to Inspector Snip Snagglebolt in Stormwind
		Deliver the package in time |condition ZGV.questsbyid[24656] and ZGV.questsbyid[24656].complete |q Pilfering Perfume##24656 |goto Stormwind City 61.6,75.3,0.3
		If you lose your disguise, ask the Inspector for another one and repeat the run
	step
		talk Inspector Snip Snagglebolt##38066
		turnin Pilfering Perfume##24656 |goto Stormwind City 61.6,75.3
		accept Fireworks At The Gilded Rose##24848 |goto Stormwind City 61.6,75.3
	step
		Enter the building |goto Stormwind City/0 60.7,75.0 < 10 |walk
		Run up the stairs |goto 59.4,76.0 < 10 |only if walking
		talk Marion Sutton##38325
		turnin Fireworks At The Gilded Rose##24848 |goto Stormwind City 60.6,76.4
		accept Hot On The Trail##24849 |goto Stormwind City 60.6,76.4
	step
		Run down the stairs |goto 59.4,76.0 < 10 |only if walking
		Exit the building |goto Stormwind City/0 60.7,75.0 < 10 |only if walking
		Search the Stormwind Counting House |q Hot On The Trail##24849/1 |goto Stormwind City 63.2,79.1
	step
		Search the Stormwind Auction House |q Hot On The Trail##24849/2 |goto Stormwind City 61.2,70.9
	step
		Search the Stormwind Barber Shop |q Hot On The Trail##24849/3 |goto Stormwind City 61.3,65.0
	step
		Enter the inn |goto Stormwind City/0 60.7,75.0 < 10 |walk
		Go upstairs |goto 59.4,76.0 < 10 |only if walking
		talk Marion Sutton##38325
		turnin Hot On The Trail##24849 |goto Stormwind City 60.6,76.4
		accept A Friendly Chat...##24657 |goto Stormwind City 60.6,76.4
	step
		Go downstairs |goto 59.4,76.0 < 10 |only if walking
		Exit the inn |goto Stormwind City/0 60.7,75.0 < 10 |walk
		talk Snivel Rustrocket##37715
		Tell him _"I have a rocket here with your mark on it. Snivel."_
		Talk to him until he gives you Snivel's Ledger
		collect Snivel's Ledger##49915 |q A Friendly Chat...##24657/1 |goto Stormwind City 27.43,34.8
	step
		talk Inspector Snip Snagglebolt##38066
		turnin A Friendly Chat...##24657 |goto Stormwind City 61.6,75.3
]])

ZygorGuidesViewer:RegisterInclude("LiitA_Dailies",[[
		talk Inspector Snip Snagglebolt##38066
		|tip You have to be at least level 20 to accept a quest from him
		accept Crushing the Crown##44558 |goto Stormwind City 61.6,75.3 |only if level >= 20
	step
		talk Public Relations Agent##37675
		accept A Perfect Puff of Perfume##24629 |or |goto Stormwind City 62.4,75.4
		accept A Cloudlet of Classy Cologne##24635 |or |goto Stormwind City 62.4,75.4
		accept Bonbon Blitz##24636 |or |goto Stormwind City 62.4,75.4
	step
		talk Kwee Q. Peddlefeet##16075
		accept A Gift for the King of Stormwind##24597 |goto Stormwind City 62.5,75.0
	step
		Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
		Give #10# Cologne Samples |q A Cloudlet of Classy Cologne##24635/1 |goto Stormwind City/0 62.0,73.5
		|tip You can do this around the whole city of Stormwind
		only if havequest(24635)
	step
		Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
		Give #10# Perfume Samples |q A Perfect Puff of Perfume##24629/1 |goto Stormwind City/0 62.0,73.5
		|tip You can do this around the whole city of Stormwind
		only if havequest(24629)
	step
		Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
		Give #10# Chocolate Samples |q Bonbon Blitz##24636/1 |goto Stormwind City/0 62.0,73.5
		|tip You can do this around the whole city of Stormwind
		only if havequest(24636)
	stickystart "Crown_Chemical"
	step
		Throw the Khorium bomb and destroy the Chemical Wagon |use Snagglebolt's Khorium bomb##50130
		Chemical Wagon Destroyed |q 44558/1 |goto Silverpine Forest/0 45.78,73.39
		only if havequest(44558)
	step
		click Love Potion Recipe
		accept Follow the Recipe##44560 |goto Silverpine Forest/0 45.24,73.87
	step
		Enter the building |goto Silverpine Forest/0 46.23,73.45 < 7 |walk
		Run up the stairs |goto 46.65,73.63 < 7 |walk
		click Recipe Fragment##6478
		Collect the 1st Fragment |q 44560/1 |goto 46.30,73.47
		|only if havequest(44560)
	step
		Enter the building |goto 44.98,71.71 < 7 |walk
		click Recipe Fragment##6478
		Collect the 2nd Fragment |q 44560/2 |goto 45.09,71.50
		|only if havequest(44560)
	step
		click Recipe Fragment##6478
		Collect the 3rd Fragment |q 44560/3 |goto 42.73,71.16
		|only if havequest(44560)
	step
	label "Crown_Chemical"
		kill Crown Supply Guard##114278+, Test Subject##116285+, Exploited Crown Intern##114279+,
		Slay 12 Crown Chemical Co. Employees |q 44558/2 |goto 45.78,73.39
		|only if havequest(44558)
	step
		talk Inspector Snip Snagglebolt##38066
		turnin Crushing the Crown##44558 |goto Stormwind City 61.5,75.3
		turnin Follow the Recipe##44560 |goto Stormwind City 61.5,75.3
	step
		Killing any creature that rewards experience will _Drop Charms_
		|tip Creatures with levels showing Green, Yellow, Orange or Red.
		collect 40 Lovely Charm##49655 |n
		Create #4# Lovely Charm Bracelets |use Lovely Charm##49655
		collect 4 Lovely Charm Bracelet##49916
	step
	label "charm"
		talk Public Relations Agent##37675
		turnin A Perfect Puff of Perfume##24629 |only if havequest(24629) |goto Stormwind City 62.4,75.4
		turnin A Cloudlet of Classy Cologne##24635 |only if havequest(24635) |goto Stormwind City 62.4,75.4
		turnin Bonbon Blitz##24636 |only if havequest(24636) |goto Stormwind City 62.4,75.4
	step
		Enter the Stormwind Keep |goto 80.5,38.0 < 10 |walk
		talk King Varian Wrynn##29611
		turnin A Gift for the King of Stormwind##24597 |goto 85.8,31.7
	step
		talk Kwee Q. Peddlefeet##16075
		accept A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 45.4,57.8
	step
		Run up the stone ramp |goto 43.8,85.2 < 10 |only if walking
		Continue to the left around the ledge |goto 46.1,82.6 < 10 |only if walking
		talk Tyrande Whisperwind##7999
		turnin A Gift for the High Priestess of Elune##24610 |goto 43.0,78.0
	step
		talk Kwee Q. Peddlefeet##16075
		accept A Gift for the Prophet##24611 |goto The Exodar/0 73.6,57.0
	step
		talk Prophet Velen##17468
		turnin A Gift for the Prophet##24611 |goto 32.8,54.5
	step
		talk Kwee Q. Peddlefeet##16075
		accept A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 33.5,65.6
	step
		Enter the tunnel |goto 38.5,71.4 < 10 |walk
		talk King Magni Bronzebeard##2784
		turnin A Gift for the Lord of Ironforge##24609 |goto 40.0,55.1
]])

ZygorGuidesViewer:RegisterInclude("LiitA_Achievements",[[
		You will need Love Tokens in order to purchase items from vendors in this guide section
		You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section
		Click here to be taken directly to the Love is in the Air Dailies section |confirm |next "dailies"
		Click here to continue to the vendors |next "vendors" |confirm
	step
	label "dailies"
		#include "LiitA_Dailies"
	step
	label "vendors"
		talk Lovely Merchant##37674 |goto Stormwind City 62.5,75.3
		buy 1 Bag of Heart Candies##21813 |n
		use Bag of Heart Candies##21813
		Open the Bag to get the 8 different types of Heart Candy |use Bag of Heart Candies##21813
		Congratulations! You have earned the achievement for this step |condition not default |only if default
		Be Mine |collect 1 Heart Candy##21816 |only if not achieved(1701,1)
		I'll follow you all around Azeroth |collect 1 Heart Candy##21818 |only if not achieved(1701,2)
		All yours |collect 1 Heart Candy##21819 |only if not achieved(1701,3)
		I'm all yours |collect 1 Heart Candy##21821 |only if not achieved(1701,4)
		Hot Lips |collect 1 Heart Candy##21823 |only if not achieved(1701,5)
		You're Mine |collect 1 Heart Candy##21822 |only if not achieved(1701,6)
		You're the best |collect 1 Heart Candy##21820 |only if not achieved(1701,7)
		I LOVE YOU |collect 1 Heart Candy##21817 |only if not achieved(1701,8)
	step
		Eat the 8 different type of Heart Candy
		Be Mine |achieve 1701/1 |use 1 Heart Candy##21816
		I'll follow you all around Azeroth |achieve 1701/2 |use 1 Heart Candy##21818
		All yours |achieve 1701/3 |use 1 Heart Candy##21819
		I'm all yours |achieve 1701/4 |use 1 Heart Candy##21821
		Hot Lips |achieve 1701/5 |use 1 Heart Candy##21823
		You're Mine |achieve 1701/6 |use 1 Heart Candy##21822
		You're the best |achieve 1701/7 |use 1 Heart Candy##21820
		I LOVE YOU |achieve 1701/8 |use 1 Heart Candy##21817
	step
		talk Lovely Merchant##37674
		buy 10 Silver Shafted Arrow##22200 |n
		Use your Silver Shafted Arrows on 10 players inside Ironforge |use Silver Shafted Arrow##22200
		Shoot 10 Players with the Silver Shafted Arrow |achieve 1188 |goto Stormwind City 62.5,75.3
	step
		talk Lovely Merchant##37674 |goto Stormwind City 62.5,75.3
		buy 1 Box of Chocolates##49909 |n
		Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
		Eat each type of chocolate
		Sweet Surprise |achieve 1702/3 |use Sweet Surprise##22239
		Very Berry Cream |achieve 1702/4 |use Very Berry Cream##22238
		Buttermilk Delight |achieve 1702/1 |use Buttermilk Delight##22236
		|tip Save the remaining Buttermilk Delights for a later achievement.
		Dark Desire |achieve 1702/2 |use Dark Desire##22237
	step
		talk Lovely Merchant##37674
		buy 10 Love Rocket##34258 |n
		Spam use your Love Rockets |use Love Rocket##34258
		Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696 |goto Stormwind City 62.5,75.3
	step
		talk Lovely Merchant##37674
		Congratulations! You have earned the achievement for this step |condition not default |only if default
		buy 15 Handful of Rose Petals##22218 |only if not achieved(1699) |goto Stormwind City 62.5,75.2
		buy 1 Romantic Picnic Basket##34480 |only if not achieved(1291) |goto Stormwind City 62.5,75.2
		buy 1 "VICTORY" Perfume##49856 |only if not achieved(1279) |goto Stormwind City 62.5,75.2
		buy 5 Love Fool##22261 |only if not achieved(1704) |goto Stormwind City 62.5,75.2
	step
		talk Elly Langston##1328
		Congratulations! You have earned the achievement for this step |condition not default |only if default
		buy 6 Flagon of Mead##2594 |only if not achieved(1279) |goto Stormwind City 75.4,53.5
	step
		I would suggest looking for horde while doing dailies
		Dalaran might still be a good spot to search
		Alternatively, you can search for horde in battlegrounds
		Use your Handful of Rose Petals on the follow race/class combinations |use Handful of Rose Petals##22218
		|tip Save any extra Handfuls of Rose Petals you have, you'll need one later.
		We will direct you to Stormwind, but you can look wherever you choose to find the classes you need
		Gnome Warlock |achieve 1699/1 |goto Stormwind City 62.6,73.0
		Orc Death Knight |achieve 1699/2 |goto Stormwind City 62.6,73.0
		Human Death Knight |achieve 1699/3 |goto Stormwind City 62.6,73.0
		Night Elf Priest |achieve 1699/4 |goto Stormwind City 62.6,73.0
		Orc Shaman |achieve 1699/5 |goto Stormwind City 62.6,73.0
		Tauren Druid |achieve 1699/6 |goto Stormwind City 62.6,73.0
		Undead Warrior |achieve 1699/7 |goto Stormwind City 62.6,73.0
		Troll Rogue |achieve 1699/8 |goto Stormwind City 62.6,73.0
		Blood Elf Mage |achieve 1699/9 |goto Stormwind City 62.6,73.0
		Draenei Paladin |achieve 1699/10 |goto Stormwind City 62.6,73.0
		Dwarf Hunter |achieve 1699/11 |goto Stormwind City 62.6,73.0
		only if not achieved(1699)
	step
		In Dalaran
		Find a player to have a picnic with you
		Use your Romantic Picnic Basket |use Romantic Picnic Basket##34480
		While having a picnic, use your Buttermilk Delight |use Buttermilk Delight##22236
		Enjoy a Buttermilk Delight with Someone in Dalaran at a Romantic Picnic |achieve 1291
	step
		Go to Wintergrasp in Northrend
		Use your Love Fool anywhere inside Wintergrasp |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/1
		only if not achieved(1704)
	step
		Find Sraaz
		|tip He's a gnome that walks around the circle around The Great Forge.
		Do the following exactly in order from top to bottom in the step
		Use all 6 of your Flagons of Mead to get Completely Smashed |use Flagon of Mead##2594
		Use your "VICTORY" Perfume |use "VICTORY" Perfume##49856
		Use your Handful of Rose Petals on Sraaz |use Handful of Rose Petals##22218 |achieve 1279/1 |goto Ironforge 42.4,35.7
		Kiss Sraaz |script DoEmote("KISS") |achieve 1279/2 |goto Ironforge 42.4,35.7
		only if not achieved(1279)
	step
		Go to the Gurubashi Arena in The Cape of Stranglethorn:
		|tip The Cape of Stranglethorn is the southern-most zone on the Eastern Kingdoms continent
		Use your Love Fool anywhere inside the Gurubashi Arena |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/2
		only if not achieved(1704)
	step
		Enter the Arathi Basin PvP Battleground
		Use your Love Fool inside the Blacksmith subzone inside Arathi Basin |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/3
		only if not achieved(1704)
	step
		Enter the Culling of Stratholme dungeon
		Use your Love Fool anywhere inside the Culling of Stratholme dungeon |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/4
		only if not achieved(1704)
	step
		Enter the Naxxramas raid
		Use your Love Fool anywhere inside the Naxxramas raid |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/5
		only if not achieved(1704)
	step
		Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need
		Kill the mobs until you collect 120 Lovely Charms
		|tip You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		collect 120 Lovely Charm##49655 |n
		Use your Lovely Charms to create 12 Lovely Charm Bracelets |use Lovely Charm##49655
		Create 12 Lovely Charm Bracelets |achieve 260
	step
		Kill these certain bosses in any of the following dungeons
		|tip You can enter either Normal or Heroic difficulty it doesn't matter
		Drahga Shadowburner in Grim Batol
		Corla, Herald of Twilight in Blackrock Caverns
		High Priestess Azil in The Stonecore
		Admiral Ripsnarl in Deadmines
		Lord Godfrey in Shadowfang Keep
		Get either of these 2 items as a random drop from these bosses
		collect 1 Bouquet of Red Roses##22206 |n
		collect 1 Bouquet of Ebon Roses##44731 |n
		Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703
	step
		Congratulations, you are a Fool For Love!
]])

--------------------------
----- Lunar Festival -----
--------------------------

ZygorGuidesViewer:RegisterInclude("Lunar_Festival_Main_Quests",[[
		talk Lunar Festival Emissary##15892
		accept The Lunar Festival##8870 |goto Ironforge 30.9,61.6
	step
		talk Lunar Festival Harbinger##15895
		turnin The Lunar Festival##8870 |goto Ironforge 28.8,16.2
		accept Lunar Fireworks##8867 |goto Ironforge 28.8,16.2
	step
		talk Lunar Festival Vendor##15898
		buy 8 Small Blue Rocket##21558 |condition itemcount(21558) >= 8 |goto Ironforge 29.9,14.2
		buy 2 Blue Rocket Cluster##21571 |condition itemcount(21571) >= 2 |goto Ironforge 29.9,14.2
		only if not completedq(8867)
	step
		Use Small Blue Rockets |use Small Blue Rocket##21558
		Use Blue Rocket Clusters |use Blue Rocket Cluster##21571
		Fire #8# Lunar Fireworks |q Lunar Fireworks##8867/1 |goto Ironforge 30.6,17.8
		|tip The firework launchers are large single-barrel tubes in the Mystic Ward pool.
		Fire #2# Lunar Fireworks Clusters |q Lunar Fireworks##8867/2 |goto Ironforge 30.6,17.8
		|tip The cluster launchers are large quad-barrel tubes in the Mystic Ward pool.
	step
		talk Lunar Festival Harbinger##15895
		turnin Lunar Fireworks##8867 |goto Ironforge 28.8,16.2
		accept Valadar Starsong##8883 |goto Ironforge 28.8,16.2
	step
		Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711 |goto Ironforge 30.6,17.8 < 5
		|tip The beam of light is in the center of the Mystic Ward pool
		Go to the Moonglade |goto Moonglade/0 36.6,58.6 |q 8883
	step
		talk Valadar Starsong##15864
		turnin Valadar Starsong##8883 |goto Moonglade 53.6,35.3
]])

ZygorGuidesViewer:RegisterInclude("Lunar_Festival_Elder_Paths",[[
	// EASTERN KINGDOMS
		talk Elder Hammershout##15562
		accept Hammershout the Elder##8646 |goto Elwynn Forest 34.5,50.3 |instant
	step
		talk Elder Stormbrow##15565
		accept Stormbrow the Elder##8649 |goto Elwynn Forest 39.8,63.7 |instant
	step
		talk Elder Skychaser##15577
		accept Skychaser the Elder##8675 |goto Westfall 56.6,47.1 |instant
		|tip She is at the top of the tower.
	step
		talk Elder Winterhoof##15576
		accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn 40.0,72.5 |instant
	step
		talk Elder Starglade##15596
		accept Starglade the Elder##8716 |goto Northern Stranglethorn 71.0,34.3 |instant
	step
		talk Zidormi##88206 |goto Blasted Lands/0 48.1,7.3
		Tell her _"Show me the Blasted Lands before the invasion."_ 
		Gain the Time Traveling buff |havebuff Time Travelling##609811 |goto Blasted Lands/0 48.1,7.3
		|only if havequest(34398) or completedq(34398)
	step
		talk Elder Bellowrage##15563
		accept Bellowrage the Elder##8647 |goto Blasted Lands 54.3,49.5 |instant
	step
		Enter The Temple of Atal'Hakkar |goto The Temple of Atal'Hakkar/1 50.0,15.8 < 10000
		talk Elder Starsong##15593
		accept Starsong the Elder##8713 |goto The Temple of Atal'Hakkar/1 62.9,34.4
	step
		talk Elder Rumblerock##15557
		accept Rumblerock the Elder##8636 |goto Burning Steppes 70.1,45.4 |instant
	step
		talk Elder Dawnstrider##15585
		accept Dawnstrider the Elder##8683 |goto Burning Steppes 52.4,23.9 |instant
	step
		Enter Lower Blackrock Spire |goto Blackrock Spire/4 37.9,43.3 < 10000
		map Blackrock Spire/3
		path follow loose; loop off; ants curved; dist 20
		path	40.6,48.0
		map Blackrock Spire/1
		path	49.0,40.6	60.0,43.0
		Follow the path through Blackrock Spire
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Stonefort##15560
		accept Stonefort the Elder##8644 |instant |goto Blackrock Spire/3 62.0,40.0
	step
		Enter Blackrock Depths |goto Blackrock Depths/1 34.7,77.8 < 10000
		map Blackrock Depths/1
		path follow loose; loop off; ants curved; dist 20
		path	38.6,76.0	51.5,69.4
		Follow the path through Blackrock Depths
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Morndeep##15549
		accept Morndeep the Elder##8619 |instant |goto 50.5,62.9
	step
		Follow the path |goto Searing Gorge/0 37.51,27.21 < 10 |only if walking
		Continue following the path |goto 34.91,25.31 < 10 |only if walking
		Continue following the path |goto 33.63,28.02 < 10 |only if walking
		Follow the path down |goto 31.95,33.36 < 10 |only if walking
		Follow the path |goto 22.77,36.76 < 10 |only if walking
		Continue following the path |goto 25.53,50.39 < 10 |only if walking
		Continue following the path |goto 32.10,65.00 < 10 |only if walking
		Continue following the path |goto 29.66,73.12 < 10 |only if walking
		Continue following the path |goto 27.47,81.04 < 10 |only if walking
		Follow the path up |goto 21.87,76.32 < 10 |only if walking
		talk Elder Ironband##15567
		accept Ironband the Elder##8651 |goto Searing Gorge 21.3,79.1 |instant
	step
		talk Elder Goldwell##15569
		accept Goldwell the Elder##8653 |goto Dun Morogh 53.9,49.9 |instant
	step
		talk Elder Bronzebeard##15871
		accept Bronzebeard the Elder##8866 |goto Ironforge 28.1,17.0 |instant
	step
		talk Elder Silvervein##15558
		accept Silvervein the Elder##8642 |goto Loch Modan 33.3,46.5 |instant
	step
		talk Elder Firebeard##55219
		accept Firebeard the Elder##29737 |goto Twilight Highlands 50.9,70.5 |instant
	step
		talk Elder Darkfeather##55218
		accept Darkfeather the Elder##29736 |goto Twilight Highlands 51.9,33.1 |instant
	step
		talk Elder Highpeak##15559
		accept Highpeak the Elder##8643 |goto The Hinterlands 50.0,48.0 |instant
	step
		talk Elder Windrun##15592
		accept Windrun the Elder##8688 |goto Eastern Plaguelands 35.6,68.8 |instant
	step
		talk Elder Snowcrown##15566
		accept Snowcrown the Elder##8650 |goto Eastern Plaguelands 75.7,54.6 |instant
	step
		Enter Stratholme |goto Stratholme/1 68.0,88.5 < 10000
		map Stratholme/1
		path follow loose; loop off; ants curved; dist 20
		path	66.4,74.2	59.8,54.6	60.0,41.6
		path	71.0,21.9
		Follow the path through Statholme
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Farwhisper##15607
		accept Farwhisper the Elder##8727 |instant |goto Stratholme/1 78.6,22.2
	step
		Leave Stratholme |goto Stratholme 68.8,88.6 < 10
		Enter the cave |goto Western Plaguelands/0 65.01,38.72 < 7 |walk
		talk Elder Meadowrun##15602 |indoors The Weeping Cave
		accept Meadowrun the Elder##8722 |goto Western Plaguelands 63.5,36.1 |indoors The Weeping Cave |instant
	step
		talk Elder Moonstrike##15594
		|tip She is on the top of this broken building.
		accept Moonstrike the Elder##8714 |goto Western Plaguelands 69.2,73.3 |instant
	step
		talk Elder Graveborn##15568
		accept Graveborn the Elder##8652 |goto Tirisfal Glades 61.9,53.9 |instant
	step
		talk Elder Darkcore##15564
		accept Darkcore the Elder##8648 |goto Undercity 66.6,38.2 |instant
		|tip If you die trying to leave Undercity just resurrect at the spirit healer you get sent to.
	step
		talk Elder Obsidian##15561
		accept Obsidian the Elder##8645 |goto Silverpine Forest 45.0,41.1 |instant
	step
		Enter the portal |goto Kelp'thar Forest/0 57.07,29.26 < 15
		talk Elder Moonlance##55228 
		accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.3,86.2 |instant
	// KALIMDOR
	step
		talk Elder Bladeswift##15598
		accept Bladeswift the Elder##8718 |goto Darnassus 39.22,31.89 |instant
	step
		talk Elder Bladeleaf##15595
		accept Bladeleaf the Elder##8715 |goto Teldrassil 56.85,53.10 |instant
	step
		talk Elder Starweave##15601
		accept Starweave the Elder##8721 |goto Darkshore 49.54,18.94 |instant
	step
		talk Elder Nightwind##15603
		accept Nightwind the Elder##8723 |goto Felwood 38.35,52.86 |instant
	step
		talk Elder Riversong##15605
		accept Riversong the Elder##8725 |goto Ashenvale 35.54,48.91 |instant
	step
		talk Elder Windsong##55224
		accept Windsong the Elder##29739 |goto Mount Hyjal 26.7,62.0 |instant
	step
		talk Elder Evershade##55227
		accept Evershade the Elder##29740 |goto Mount Hyjal 62.5,22.8 |instant
	step
		talk Elder Brightspear##15606
		accept Brightspear the Elder##8726 |goto Winterspring 53.23,56.75 |instant
	step
		talk Elder Stonespire##15574
		accept Stonespire the Elder##8672 |goto Winterspring 59.96,49.92 |instant
	step
		talk Elder Skygleam##15600
		accept Skygleam the Elder##8720 |goto Azshara 64.7,79.3 |instant
	step
		talk Elder Darkhorn##15579
		|tip If you die trying to leave Orgrimmar just resurrect at the spirit healer you get sent to.
		accept Darkhorn the Elder##8677 |goto Orgrimmar 52.3,60.0 |instant
	step
		talk Elder Runetotem##15572
		accept Runetotem the Elder##8670 |goto Durotar 53.2,43.6 |instant
	step
		talk Elder Windtotem##15582
		accept Windtotem the Elder##8680 |goto Northern Barrens 68.36,69.95 |instant
	step
		talk Elder Moonwarden##15597
		accept Moonwarden the Elder##8717 |goto Northern Barrens 48.5,59.3 |instant
	step
		talk Elder High Mountain##15588
		accept High Mountain the Elder##8686 |goto Southern Barrens 41.59,47.45 |instant
	step
		talk Elder Bloodhoof##15575
		accept Bloodhoof the Elder##8673 |goto Mulgore 48.5,53.2 |instant
	step
		talk Elder Ezra Wheathoof##15580
		|tip If you die trying to leave Thunder Bluff just resurrect at the spirit healer you get sent to.
		accept Wheathoof the Elder##8678 |goto Thunder Bluff 73.0,23.3 |instant
	step
		Enter Maraudon: Earth Song Falls |goto Maraudon/2 28.2,35.2 < 10000
		map Maraudon/2
		path follow smart; loop off; ants straight
		path	28.9,45.6	33.3,61.0	36.5,57.3
		path	44.5,60.2	44.6,54.6	40.8,64.2
		path	45.7,67.3	44.4,76.0	44.5,82.2
		path	51.5,93.8
		Follow the path to Elder Splitrock
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Splitrock##15556
		accept Splitrock the Elder##8635 |instant |goto 51.5,93.8
	step
		talk Elder Mistwalker##15587
		accept Mistwalker the Elder##8685 |goto Feralas 62.6,31.1 |instant
	step
		talk Elder Grimtotem##15581
		accept Grimtotem the Elder##8679 |goto Feralas 76.7,37.9 |instant
	step
		talk Elder Skyseer##15584
		accept Skyseer the Elder##8682 |goto Thousand Needles 46.3,51.0 |instant
	step
		talk Elder Morningdew##15604
		accept Morningdew the Elder##8724 |goto Thousand Needles 77.1,75.6 |instant
	step
		Enter Zul'Farrak |goto Zul'Farrak/0 56.6,91.0 < 10000
		map Zul'Farrak/0
		path follow smart; loop off; ants straight
		path	58.0,78.3	59.1,63.2	52.0,41.4
		path	41.3,52.2	33.5,43.9
		Follow the path to Elder Splitrock
		|tip Opening the world map will display an ant trail guiding you through the curren
		talk Elder Wildmane##15578
		accept Wildmane the Elder##8676 |goto Zul'Farrak 34.5,39.4 |instant
	step
		talk Elder Dreamseer##15586
		accept Dreamseer the Elder##8684 |goto Tanaris 51.4,28.8 |instant
	step
		talk Elder Ragetotem##15573
		accept Ragetotem the Elder##8671 |goto Tanaris 37.2,79.1 |instant
	step
		talk Elder Menkhaf##55211
		accept Menkhaf the Elder##29742 |goto Uldum 65.5,18.7 |instant
	step
		talk Elder Thunderhorn##15583
		accept Thunderhorn the Elder##8681 |goto Un'Goro Crater 50.4,76.2 |instant
	step
		talk Elder Sekhemi##55210
		accept Sekhemi the Elder##29741 |goto Uldum 31.6,63.0 |instant
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Gain the Time Travelling buff |havebuff Time Travelling##609811 |goto Silithus/0 78.93,21.97
		|only if completedq(49015)
	step
		talk Elder Bladesing##15599
		accept Bladesing the Elder##8719 |goto Silithus 53.0,35.5 |instant
	step
		talk Elder Primestone##15570
		accept Primestone the Elder##8654 |goto Silithus 30.8,13.3 |instant
	// Northrend
	step
		talk Elder Sardis##30348
		accept Sardis the Elder##13012 |instant |goto Borean Tundra 59.1,65.6
	step
		talk Elder Pamuya##30371
		accept Pamuya the Elder##13029 |instant |goto 42.9,49.6
	step
		talk Elder Arp##30364
		accept Arp the Elder##13033 |instant |goto 57.4,43.7
	step
		talk Elder Northal##30360
		accept Northal the Elder##13016 |instant |goto 33.8,34.4
	step
		Enter the Nexus |goto The Nexus/1 27.51,26.02 < 10000
		map The Nexus/1
		path follow smart; loop off; ants straight
		path	36.8,81.4	45.5,68.3	51.5,63.2
		path	53.9,54.2	64.1,53.1	64.0,61.8
		path	55.5,64.9
		Follow the path to Elder Igasho
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Igasho##30536
		accept Igasho the Elder##13021 |instant |goto The Nexus/1 55.5,64.9
	step
		talk Elder Sandrene##30362
		accept Sandrene the Elder##13018 |instant |goto Sholazar Basin 49.8,63.6
	step
		talk Elder Wanikaya##30365
		accept Wanikaya the Elder##13024 |instant |goto 63.8,49.0
	step
		talk Elder Bluewolf##30368
		|tip You can only get to this NPC when your faction controls Wintergrasp.
		accept Bluewolf the Elder##13026 |instant |goto Wintergrasp 49.0,13.9
		If your faction does not control Wintergrasp, click here to continue |confirm
	step
		Enter Azjol-Nerub |goto Azjol-Nerub/3 9.4,93.3 < 10000
		map  Azjol-Nerub/3
		path follow strict; loop off; ants straight
		path	25.8,35.5	54.2,45.3	89.0,44.9
		path	66.2,26.1	Azjol-Nerub/2 53.8,11.0
		path	Azjol-Nerub/2 46.3,68.4	Azjol-Nerub/1 21.8,43.6
		Follow the path to Elder Nurgen
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Nurgen##30533
		accept Nurgen the Elder##13022 |instant |goto Azjol-Nerub/1 21.8,43.6
	step
		talk Elder Morthie##30358
		accept Morthie the Elder##13014 |instant |goto Dragonblight 29.7,55.9
	step
		talk Elder Skywarden##30373
		accept Skywarden the Elder##13031 |instant |goto  35.1,48.3
	step
		talk Elder Thoim##30363
		accept Thoim the Elder##13019 |instant |goto 48.8,78.2
	step
		Enter Drak'Tharon Keep |goto Drak'Tharon Keep/1 29.4,81.0 < 1000
		map Drak'Tharon Keep/1
		path follow strict; loop off; ants straight
		path	33.1,78.5	40.7,87.1	47.5,79.3
		path	47.6,45.7	56.7,31.1	57.0,18.9
		path	67.2,18.1	63.2,32.3	68.2,40.2
		path	67.8,55.0	60.6,57.8	55.8,59.2
		path	55.5,77.4	63.6,77.1	68.9,79.1
		Follow the path to Elder Kilias
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Kilias##30534
		accept Kilias the Elder##13023 |instant |goto Drak'Tharon Keep 68.9,79.1
	step
		talk Elder Graymane##30370
		accept Graymane the Elder##13028 |instant |goto The Storm Peaks 41.16,84.72
	step
		talk Elder Fargal##30359
		accept Fargal the Elder##13015 |instant |goto 28.9,73.7
	step
		Enter the building |goto The Storm Peaks/0 30.6,37.0 < 15 |walk
		talk Elder Stonebeard##30375
		accept Stonebeard the Elder##13020 |instant |goto 31.3,37.6
	step
		Enter the Halls of Stone |goto Halls of Stone/1 34.4,36.2 < 1000
		map  Halls of Stone/1
		path follow strict; loop off; ants straight
		path	45.1,37.2	50.1,45.3	48.8,53.5
		path	34.3,51.6	29.4,62.1
		Follow the path to Elder Yurauk
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Yurauk##30535
		accept Yurauk the Elder##13066 |instant |goto Halls of Stone 29.4,62.1
	step
		talk Elder Muraco##30374
		accept Muraco the Elder##13032 |instant |goto The Storm Peaks/0 64.6,51.3
	step
		Enter Gundrak |goto Gundrak/1 59.0,30.9 < 1000
		map Gundrak/1
		path follow strict; loop off; ants straight
		path	59.1,49.2	58.2,68.5	50.9,73.6
		path	46.5,71.5	45.6,61.5
		Follow the path to Elder Ohanzee
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Ohanzee##30537
		accept Ohanzee the Elder##13065 |instant |goto Gundrak/1 45.7,61.6
	step
		talk Elder Tauros##30369
		accept Tauros the Elder##13027 |instant |goto Zul'Drak 58.9,56.0
	step
		talk Elder Beldak##30357
		accept Beldak the Elder##13013 |instant |goto Grizzly Hills 60.6,27.7
	step
		talk Elder Whurain##30372
		accept Whurain the Elder##13030 |instant |goto 64.2,47.0
	step
		talk Elder Lunaro##30367
		accept Lunaro the Elder##13025 |instant |goto 80.5,37.1
	step
		Enter Utgarde Keep |goto Utgarde Keep/1 69.3,73.0 < 1000
		map Utgarde Keep/1
		path follow strict; loop off; ants straight
		path	62.4,40.5	65.0,28.7	49.9,28.4
		path	43.8,27.7	23.6,38.5	26.4,52.5
		path	21.8,78.7	28.7,89.1	49.5,82.6
		path	47.5,70.0
		Follow the path to Elder Jarten
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Jarten##30531
		accept Jarten the Elder##13017 |instant |goto Utgarde Keep/1 47.5,70.0
	step
		Enter Utgarde Pinnacle |goto Utgarde Pinnacle/2 44.5,16.1 < 1000
		map Utgarde Pinnacle/2
		path follow strict; loop off; ants straight
		path	44.3,36.0	33.9,36.5	34.6,69.0
		path	39.5,69.1	39.5,76.7	Utgarde Pinnacle/1 35.8,76.4
		path	Utgarde Pinnacle/1 35.9,86.1	Utgarde Pinnacle/1 45.4,86.2
		path	Utgarde Pinnacle/2 52.9,74.8	Utgarde Pinnacle/2 51.7,83.7
		path	Utgarde Pinnacle/2 60.5,84.6	Utgarde Pinnacle/2 61.1,70.1
		path	Utgarde Pinnacle/2 68.6,69.9	Utgarde Pinnacle/2 68.4,37.1
		path	Utgarde Pinnacle/2 61.6,36.7	Utgarde Pinnacle/2 56.3,36.8
		path	Utgarde Pinnacle/1 56.3,21.3	Utgarde Pinnacle/1 48.7,23.1
		Follow the path to Chogan'gada
		|tip Opening the world map will display an ant trail guiding you through the current floor.
		talk Elder Chogan'gada##30538
		accept Chogan'gada the Elder##13067 |instant |goto Utgarde Pinnacle 48.7,23.1
	step
		talk Elder Stonebrand##55217
		accept Stonebrand the Elder##29735 |instant |goto Deepholm 49.7,54.9
	step
		talk Elder Deepforge##55216
		accept Deepforge the Elder##29734 |instant |goto 27.7,69.2
]])

ZygorGuidesViewer:RegisterInclude("Lunar_Festival_Achievements",[[
		talk Lunar Festival Harbinger##15895
		Tell them _"I'd like a new invitation to the Lunar Festival."_
		collect Lunar Festival Invitation##21711 |goto Ironforge 28.83,16.18
	step
		Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711 |goto Ironforge 30.6,17.8 < 5 
		|tip Use the Lunar Festival Invitation while standing in the beam of light.
		talk Valadar Starsong##15864
		turnin Valadar Starsong##8883 |goto Moonglade 53.6,35.3
	step
		talk Lunar Festival Vendor##15898
		buy 10 Festival Firecracker##21747 |condition itemcount(21747) >= 10 |goto 36.6,58.1
		buy 10 Red Rocket Cluster##21576 |condition itemcount(21576) >= 10 |goto 36.6,58.1
		buy 36 Green Rocket Cluster##21574 |condition itemcount(21574) >= 36 |goto 36.6,58.1
	step
		Use the Festival Firecrackers as fast as you can |use Festival Firecracker##21747
		|tip You can drag the Festival Firecrackers onto your action bar. 
		|tip You will need to click the ground where you want to throw them.
		Earn the Frienzied Firecracker Achievement |achieve 1552 |goto 36.0,57.7
	step
		Use the Red Rocket Clusters as fast as you can |use Red Rocket Cluster##21576
		|tip You can drag the Red Rocket Clusters onto your action bar. 
		|tip You will need to spam whatever button the Red Rocket Cluster is assigned to.
		Earn The Rockets Red Glare Achievement |achieve 1281 |goto 35.92,57.92
	step
		talk Valadar Starsong##15864
		accept Elune's Blessing##8868 |goto 53.6,35.3
	step
		Use your Green Rocket Clusters until Omen spawns |use Green Rocket Cluster##21574
		kill Omen##15467
		|tip Stand in the big white beam of light when he is dead. You will need a group of 4 or 5 to beat him.
		|tip If he has already been engaged in combat you can participate anyway just make sure to stand in the light after he is defeated.
		Receive Elune's Blessing |q 8868/1 |goto 63.7,62.4
	step
		talk Valadar Starsong##15864
		turnin Elune's Blessing##8868 |goto Moonglade 53.6,35.3
	step
		talk Valadar Starsong##15864
		|tip You only need to buy one of these.
		buy Festive Pink Dress##21538 |n
		buy Festive Purple Dress##21539 |n
		buy Festive Black Pant Suit##21541 |n
		buy Festive Blue Pant Suit##21544 |n
		buy Festive Teal Pant Suit##21543 |n
		buy Festive Green Dress##21157 |n
		Earn the Achievment Lunar Festival Finery |achieve 626 |goto 53.6,35.3
	step
		Congratulations! 
		You Know How To _Honor One's Elders_!
]])

-----------------------------------
----- Midsummer Fire Festival -----
-----------------------------------

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Eastern_Kingdoms",[[
		talk Elwynn Forest Flame Warden##25898
		accept Honor the Flame##11816 |goto Elwynn Forest 43.5,62.6 |instant
	step
		talk Stranglethorn Vale Flame Warden##25915
		accept Honor the Flame##11832 |goto The Cape of Stranglethorn 52.0,67.6 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11801 |goto 50.5,70.7 |instant
	step
		talk Northern Stranglethorn Flame Warden##51574
		accept Honor the Flame##28922 |goto Northern Stranglethorn 52.0,63.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28911 |goto 40.7,51.9 |instant
	step
		talk Zidormi##88206
		Tell her _"Show me the Blasted Lands before the invasion."_
		Go Back in Time |havebuff Interface\Icons\spell_mage_altertime |goto Blasted Lands/0 48.1,7.3 |future |q 11808
	step
		talk Blasted Lands Flame Warden##25890
		accept Honor the Flame##11808 |goto Blasted Lands 55.5,14.9 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28917 |goto Blasted Lands 46.4,14.4 |instant
	step
		talk Swamp of Sorrows Flame Warden##51602
		accept Honor the Flame##28929 |goto Swamp of Sorrows 70.3,15.7 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11781 |goto Swamp of Sorrows 76.7,14.0 |instant
	step
		talk Duskwood Flame Warden##25896
		accept Honor the Flame##11814 |goto Duskwood 73.7,54.6 |instant
	step
		talk Westfall Flame Warden##25910
		accept Honor the Flame##11583 |goto Westfall 44.8,62.1 |instant
	step
		talk Redridge Flame Warden##25904
		accept Honor the Flame##11822 |goto Redridge Mountains 24.9,53.4 |instant
	step
		talk Burning Steppes Flame Warden##25892
		accept Honor the Flame##11810 |goto Burning Steppes 68.3,60.6 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11768 |goto 51.5,29.2 |instant
	step
		talk Badlands Flame Warden##51585
		accept Honor the Flame##28925 |goto Badlands 19.0,56.2 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11766 |goto 24.1,37.2 |instant
	step
		talk Loch Modan Flame Warden##25902
		accept Honor the Flame##11820 |goto Loch Modan 32.6,41.0 |instant
	step
		talk Dun Morogh Flame Warden##25895
		accept Honor the Flame##11813 |goto Dun Morogh 53.8,45.2 |instant
	step
		talk Wetlands Flame Warden##25911
		accept Honor the Flame##11828 |goto Wetlands 13.5,47.1 |instant
	step
		talk Arathi Flame Warden##25887
		accept Honor the Flame##11804 |goto Arathi Highlands 44.3,46.0 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11764 |goto 69.2,43.0 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11776 |goto Hillsbrad Foothills 54.6,49.8 |instant
	step
		talk Western Plaguelands Flame Warden##25909
		accept Honor the Flame##11827 |goto Western Plaguelands 43.6,82.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28918 |goto Western Plaguelands 29.2,57.4 |instant
	step
		talk The Hinterlands Flame Warden##25908
		accept Honor the Flame##11826 |goto The Hinterlands 14.3,50.1 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11784 |goto 76.6,74.6 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11580 |goto Silverpine Forest 49.6,38.7 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11786 |goto Tirisfal Glades 57.0,51.8 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11774 |goto Ghostlands 47,26 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11772 |goto Eversong Woods 46,50 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Kalimdor",[[
		talk Teldrassil Flame Warden##25906
		accept Honor the Flame##11824 |goto Teldrassil 54.9,52.8 |instant
	step
		talk Azuremyst Isle Flame Warden##25888
		accept Honor the Flame##11806 |goto Azuremyst Isle 44.5,52.5 |instant
	step
		talk Bloodmyst Isle Flame Warden##25891
		accept Honor the Flame##11809 |goto Bloodmyst Isle 55.8,67.9 |instant
	step
		talk Darkshore Flame Warden##25893
		accept Honor the Flame##11811 |goto Darkshore 48.7,22.6 |instant
	step
		talk Winterspring Flame Warden##25917
		accept Honor the Flame##11834 |goto Winterspring 61.2,47.3 |instant
	step
		click Horde Bonfire##194039
		accept Descrate this Fire!##11803 |goto 58.1,47.3 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28919 |goto Azshara 60.4,53.3 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11765 |goto Ashenvale 51.6,66.6 |instant
	step
		talk Ashenvale Flame Warden##25883
		accept Honor the Flame##11805 |goto Ashenvale 86.9,41.9 |instant
	step
		talk Southern Barrens Flame Warden##51586
		accept Honor the Flame##28926 |goto Southern Barrens 48.3,72.2
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28914 |goto Southern Barrens 40.7,67.3 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11770 |goto Durotar 52.1,47.1 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11783 |goto Northern Barrens 49.9,54.4 |instant
	step
		talk Stonetalon Mountains Flame Warden##51588
		accept Honor the Flame##28928 |goto Stonetalon Mountains 49.3,51.3 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11780 |goto Stonetalon Mountains 53.0,62.3 |instant
	step
		talk Desolace Flame Warden##25894
		accept Honor the Flame##11812 |goto Desolace 66.1,17.1 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11769 |goto 26.1,77.2 |instant
	step
		talk Feralas Flame Warden##25899
		accept Honor the Flame##11817 |goto Feralas 46.8,43.7 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11773 |goto 72.5,47.7 |instant
	step
	label "Time_Travel_On"
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Gain the Time Travelling Buff |havebuff Time Travelling##609811 |goto Silithus/0 78.93,21.97
		|only if completedq(49015)
	step
		talk Silithus Flame Warden##25914
		accept Honor the Flame##11831 |goto Silithus 60.3,33.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11800 |goto 50.9,41.7 |instant
	step
		talk Un'Goro Crater Flame Warden##51606
		accept Honor the Flame##28932 |goto Un'Goro Crater 60.0,63.0 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28920 |goto Un'Goro Crater 56.3,65.8 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11802 |goto Tanaris 49.8,28.1 |instant
	step
		talk Tanaris Flame Warden##25916
		accept Honor the Flame##11833 |goto Tanaris 52.6,30.3 |instant
	step
		talk Dustwallow Marsh Flame Warden##25897
		accept Honor the Flame##11815 |goto Dustwallow Marsh 61.8,40.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11771 |goto 33.3,30.7 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11777 |goto Mulgore 52.0,59.4 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Outland",[[
		talk Hellfire Peninsula Flame Warden##25900
		accept Honor the Flame##11818 |goto Hellfire Peninsula 62.2,58.3 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11775 |goto Hellfire Peninsula 57.2,41.8 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11799 |goto Netherstorm 32.3,68.2 |instant
	step
		talk Netherstorm Flame Warden##25913
		accept Honor the Flame##11830 |goto Netherstorm 31.2,62.7 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11767 |goto Blade's Edge Mountains 50.0,59.0 |instant
	step
		talk Blade's Edge Flame Warden##25889
		accept Honor the Flame##11807 |goto Blade's Edge Mountains 41.6,65.9 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11787 |goto Zangarmarsh 35.6,51.8 |instant
	step
		talk Zangarmarsh Flame Warden##25912
		accept Honor the Flame##11829 |goto Zangarmarsh 68.8,52.0 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11778 |goto Nagrand 51.1,34.0 |instant
	step
		talk Nagrand Flame Warden##25903
		accept Honor the Flame##11821 |goto Nagrand 49.6,69.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11782 |goto Terokkar Forest 51.9,43.2 |instant
	step
		talk Terokkar Forest Flame Warden##25907
		accept Honor the Flame##11825 |goto Terokkar Forest 54.1,55.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##11779 |goto Shadowmoon Valley 33.5,30.3 |instant
	step
		talk Shadowmoon Valley Flame Warden##25905
		accept Honor the Flame##11823 |goto Shadowmoon Valley 39.6,54.6 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Northrend",[[
		talk Borean Tundra Flame Warden##32801
		accept Honor the Flame##13485 |goto Borean Tundra 55.1,20.0 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13441 |goto Borean Tundra 51.1,11.8 |instant
	step
		talk Sholazar Basin Flame Warden##32802
		accept Honor the Flame##13486 |goto Sholazar Basin 48.1,66.4 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13450 |goto Sholazar Basin 47.3,61.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13451 |goto Dragonblight 38.5,48.3 |instant
	step
		talk Dragonblight Flame Warden##32803
		accept Honor the Flame##13487 |goto Dragonblight 75.3,43.8 |instant
	step
		talk Crystalsong Forest Flame Warden##32807
		accept Honor the Flame##13491 |goto Crystalsong Forest 78.2,75.0 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13457 |goto Crystalsong Forest 80.4,52.7 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13455 |goto The Storm Peaks 40.4,85.6 |instant
	step
		talk Storm Peaks Flame Warden##32806
		accept Honor the Flame##13490 |goto The Storm Peaks 41.4,86.7 |instant
	step
		talk Zul'Drak Flame Warden##32808
		accept Honor the Flame##13492 |goto Zul'Drak 40.4,61.3 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13458 |goto Zul'Drak 43.3,71.3 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13454 |goto Grizzly Hills 19.1,61.5 |instant
	step
		talk Grizzly Hills Flame Warden##32805
		accept Honor the Flame##13489 |goto Grizzly Hills 33.9,60.5 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##13453 |goto Howling Fjord 48.4,13.4 |instant
	step
		talk Howling Fjord Flame Warden##32804
		accept Honor the Flame##13488 |goto Howling Fjord 57.8,16.1 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Cataclysm",[[
		talk Hyjal Flame Guardian##51682
		accept Honor the Flame##29030 |goto Mount Hyjal 62.8,22.7
	step
		click Earthen Ring Bonfire##208188
		turnin Honor the Flame##29030 |goto 62.9,22.9
	step
		talk Deepholm Flame Guardian##51698
		accept Honor the Flame##29036 |goto Deepholm 49.4,51.3
	step
		click Earthen Ring Bonfire##208188
		turnin Honor the Flame##29036 |goto 49.4,51.3
	step
		talk Twilight Highlands Flame Warden##51650
		accept Honor the Flame##28945 |goto Twilight Highlands 47.2,28.9 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28944 |goto 53.4,46.4 |instant
	step
		talk Vashj'ir Flame Guardian##51697
		accept Honor the Flame##29031 |goto Shimmering Expanse 49.4,42.0
	step
		click Earthen Ring Bonfire##208188
		turnin Honor the Flame##29031 |goto 49.3,42.0
	step
		talk Uldum Flame Warden##51653
		accept Honor the Flame##28950 |goto Uldum 53.6,31.9 |instant
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##28948 |goto 52.9,34.5 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Pandaria",[[
		talk Jade Forest Flame Guardian##69529
		accept Honor the Flame##32498 |goto The Jade Forest 47.2,47.2
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32498 |goto The Jade Forest 47.2,47.2
	step
		talk Krasarang Wilds Flame Guardian##69533
		accept Honor the Flame##32499 |goto Krasarang Wilds 74.0,9.5
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32498 |goto Krasarang Wilds 74.0,9.6
	step
		talk Valley of the Four Winds Flame Guardian##69550
		accept Honor the Flame##32502 |goto Valley of the Four Winds/0 51.8,51.3
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32502 |goto Valley of the Four Winds/0 51.8,51.3
	step
		talk Dread Wastes Flame Guardian##69522
		accept Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
	step
		talk Townlong Steppes Flame Guardian##69536
		accept Honor the Flame##32501 |goto Townlong Steppes/0 71.5,56.3
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32501 |goto Townlong Steppes/0 71.5,56.3
	step
		talk Kun-Lai Summit Flame Guardian##69535
		accept Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
	step
		talk Vale of Eternal Blossoms Flame Warden##69572
		accept Honor the Flame##32510 |instant |goto Vale of Eternal Blossoms/0 79.7,37.3
	step
		click Midsummer Bonfire##259864
		accept Desecrate this Fire!##32496 |instant |goto Vale of Eternal Blossoms/0 77.8,33.6
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Draenor",[[
		talk Shadowmoon Valley Flame Warden##114500
		accept Honor the Flame##44579 |instant |achieve 11283/5 |goto Shadowmoon Valley D/0 42.61,36.00
	step
		talk Spires of Arak Flame Guardian##114488
		accept Honor the Flame##44570 |goto Spires of Arak/0 48.01,44.70
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##44570 |achieve 11283/1 |goto Spires of Arak/0 48.01,44.70
	step
		talk Talador Flame Guardian##114489
		accept Honor the Flame##44571 |goto Talador/0 43.46,71.81
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##44571 |achieve 11283/2 |goto Talador/0 43.46,71.81
	step
		talk Nagrand Flame Guardian##114490
		accept Honor the Flame##44572 |goto Nagrand D/0 80.52,47.70
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##44572 |achieve 11283/3 |goto Nagrand D/0 80.52,47.70
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##44583 |instant |achieve 11276 |goto Frostfire Ridge/0 72.77,65.16
	step
		talk Gorgrond Flame Guardian##114491
		accept Honor the Flame##44573 |goto Gorgrond/0 43.92,93.78
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##44573 |achieve 11283/4 |goto Gorgrond/0 43.92,93.78
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Broken_Isles",[[
		talk Azsuna Flame Guardian##114492
		accept Honor the Flame##44574 |goto Azsuna/0 48.25,29.69
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##44574 |achieve 11280/1 |goto Azsuna/0 48.25,29.69
	step
		talk Suramar Flame Warden##114519
		accept Honor the Flame##44613 |instant |achieve 11280/5 |goto Suramar/0 23.05,58.37
	step
		click Horde Bonfire##194039
		accept Desecrate this Fire!##44627 |instant |achieve 11278 |goto Suramar/0 30.31,45.41
	step
		talk Val'Sharah Flame Guardian##114493
		accept Honor the Flame##44575 |goto Val'sharah/0 44.88,57.93
	step
		click Horde Bonfire##194039
		turnin Honor the Flame##44575 |achieve 11280/2 |goto Val'sharah/0 44.88,57.93
	step
		talk Highmountain Flame Guardian##114494
		accept Honor the Flame##44576 |goto Highmountain/0 55.50,84.44
	step
		click Horde Bonfire##194039
		turnin Honor the Flame##44576 |achieve 11280/3 |goto Highmountain/0 55.50,84.44
	step
		talk Stormheim Flame Guardian##114496
		accept Honor the Flame##44577 |goto Stormheim/0 32.49,42.15
	step
		click Horde Bonfire##194039
		turnin Honor the Flame##44577 |achieve 11280/4 |goto Stormheim/0 32.49,42.15
]])

-----------------------
----- Noblegarden -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Noblegarden_Achievements",[[
	step
		click Brightly Colored Egg##113768
		|tip There is at least one available at all times.
		|tip If Dolanaar is too crowded with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
		|use Brightly Colored Egg##45072
		collect 100 Noblegarden Chocolate##44791+ |n
		Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
		Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1 |goto Teldrassil/0 55.5,51.0
		Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2 |goto 55.5,51.0
		Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249 |goto 55.5,51.0
		buy Spring Rabbit's Foot##44794 |n
		learnpet Spring Rabbit##32791 |petspecies 200 |use Spring Rabbit's Foot##44794
		If you've eaten 100 chocolates and want to buy these items to continue, click here to continue |confirm
	step
		talk Noblegarden Vendor##32836
		Buy Noblegarden Egg |condition itemcount(44818)>=1 or achieved(2418) |goto 55.7,51.3
		|tip It costs 5 Noblegarden Chocolates.
		Buy Blossoming Branch |condition itemcount(44792)>=1 or achieved(2416) |goto 55.7,51.3
		|tip It costs 10 Noblegarden Chocolates.
		Buy Spring Flowers |condition itemcount(45073)>=1 or  achieved(2422) |goto 55.7,51.3
		|tip It costs 50 Noblegarden Chocolates.
		Buy Spring Robes |condition itemcount(44800)>=1 or achieved(2436) |goto 55.7,51.3
		|tip It costs 50 Noblegarden Chocolates.
		buy Spring Rabbit's Foot##44794 |n
		|tip It costs 100 Noblegarden Chocolates.
		learnpet Spring Rabbit##32791 |petspecies 200 |use Spring Rabbit's Foot##44794
	step
		|use Spring Rabbit's Foot##44794
		learnpet 61725
		Summon Your Spring Rabbit Companion
		|tip Press Shift+P to bring up your Pet Journal and click the Spring Rabbit.
		Find a Player with a Spring Rabbit 
		|tip They are small and white, with brown spots.
		Find your Spring Rabbit another one to love in Dolanaar |achieve 2419/2 |goto 55.5,51.0
	step
		Summon Your Spring Rabbit Companion
		|tip Press Shift+P to bring up your Pet Journal and click the Spring Rabbit.
		Find a Player with a Spring Rabbit
		|tip They are small and white, with brown spots.
		Find your Spring Rabbit another one to love in Azure Watch |achieve 2419/1 |goto Azuremyst Isle/0 49.1,52.0
	step
		|use Spring Robes##44800		
		Plant a flower in Desolace |achieve 2436/2 |goto Desolace/0 64.71,10.44
	step
		|use Spring Robes##44800		
		Plant a flower in Tanaris |achieve 2436/4 |goto Tanaris/0 51.38,29.43
	step
		|use Spring Robes##44800		
		Plant a flower in Thousand Needles |achieve 2436/5 |goto Thousand Needles/0 79.12,71.90
	step
		|use Spring Robes##44800		
		Plant a flower in Silithus |achieve 2436/3 |goto Silithus/0 54.49,32.85
	step
		home Marshal's Stand |goto Un'Goro Crater/0 55.37,62.26
		|tip This will make traveling to the Golakka Hot Springs faster.
	step
		click Brightly Colored Egg##113768
		Change into a Noblegarden Bunny |havebuff 237000 |goto Teldrassil/0 55.5,51.0
		Stand in This Spot Until You Lay an Egg
		Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416 |goto Un'Goro Crater 35.8,50.7
		|tip Avoid enemies, as being hit will cause you to lose your disguise.
	step
		|use Spring Robes##44800		
		Plant a flower in The Badlands |achieve 2436/1 |goto Badlands/0 23.0,60.0
	step
		Bring out your Spring Rabbit companion
		|tip Press Shift-P to bring up your Pet Journal and click the Spring Rabbit.
		Find a player with a Spring Rabbit
		|tip Spring Rabbits look like small brown and white rabbits.
		Find your Spring Rabbit another one to love in Kharanos |achieve 2419/4 |goto Dun Morogh 53.5,51.2
	step
		use Noblegarden Egg##44818
		Hide a Brightly Colored Egg in Stormwind City |achieve 2421 |goto Stormwind City/0 71.0,72.0
	step
		Summon Your Spring Rabbit Companion
		|tip Press Shift+P to bring up your Pet Journal and click the Spring Rabbit.
		Find a Player with a Spring Rabbit
		|tip They are small and white, with brown spots.
		Find your Spring Rabbit another one to love in Goldshire |achieve 2419/3 |goto Elwynn Forest/0 43.1,67.6
	step
		|use Black Tuxedo Pants##151804
		|use White Tuxedo Shirt##6833
		Use the kiss emote on a player wearing an Elegant Dress |script DoEmote("KISS")
		|tip The Elegant Dress looks like a long pink dress when worn.
		Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants |achieve 2576 |goto Teldrassil 55.5,51.0
	step
		|use Spring Flowers##45073
		|tip Use the item on level 18 female characters.
		Place bunny ears on a Blood Elf |achieve 2422/1
		Place bunny ears on a Tauren |achieve 2422/9
		Place bunny ears on a Draenei |achieve 2422/2
		Place bunny ears on a Human |achieve 2422/6
		Place bunny ears on a Troll |achieve 2422/10
		Place bunny ears on a Dwarf |achieve 2422/3
		Place bunny ears on a Night Elf |achieve 2422/7
		Place bunny ears on a Gnome |achieve 2422/4
		Place bunny ears on a Orc |achieve 2422/8
		Place bunny ears on a Goblin |achieve 2422/5
		Place bunny ears on an Undead |achieve 2422/11
		Place bunny ears on a Worgen |achieve 2422/12
		|tip Search around New Dalaran, Stormwind, and Orgrimmar.
	step
		_Congratulations!_
		You Earned "the Noble" Title.
]])

----------------------------
----- Pilgrim's Bounty -----
----------------------------

ZygorGuidesViewer:RegisterInclude("Pilgrim's_Bounty_Quests",[[
	step
		You will need to have 300 cooking in order to complete this guide
		Open your cooking window before you continue, to detect your ability |cast cooking##2550
		confirm
	step
		talk Human Commoner##18927
		accept Pilgrim's Bounty##14022 |goto Stormwind City 61.7,74.1
	step
		talk Gregory Tabor##34675
		turnin Pilgrim's Bounty##14022 |goto Elwynn Forest 34.1,51.5
	step
		talk Bountiful Table Hostess##34653
		accept Sharing a Bountiful Feast##14064 |goto Elwynn Forest 34.2,51.1
	step
		clicknpc The Turkey Chair##34812
		|tip They look like wooden chairs around a round white and green table with food on it.
		Use the first ability on your hotbar to Pass the food to other players who are sitting at the table
		|tip You must target the other players and use the Pass the Food ability. Do this repeatedly until you get an achievement.
		Start a Food Fight! |achieve 3579 |goto 34.3,51.1
		Use the other abilities on your hotbar to eat the food
		|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Gain the Spirit of Sharing |q 14064/1 |goto 34.3,51.1
	step
		talk Bountiful Table Hostess##34653
		turnin Sharing a Bountiful Feast##14064 |goto 34.2,51.1
	step
		talk Ellen Moore##34710
		skillmax Cooking,75
		learn Spice Bread##37836 |goto 33.7,50.6
	step
		talk Wilmina Holbeck##34682
		buy 1 Bountiful Cookbook##46809 |condition itemcount(46809) >= 1 |goto 34.1,51.5
	step
		Use your Bountiful Cookbook |use Bountiful Cookbook##46809
		collect Recipe: Spice Bread Stuffing##44860 |future |q 14023
		collect Recipe: Pumpkin Pie##44862 |future |q 14024
		collect Recipe: Cranberry Chutney##44858 |future |q 14028
		collect Recipe: Candied Sweet Potato##44859 |future |q 14030
		collect Recipe: Slow-Roasted Turkey##44859 |future |q 14035
	step
		Use your Recipe: Spice Bread Stuffing to learn the recipe |use Recipe: Spice Bread Stuffing##44860
		learn Spice Bread Stuffing##62050
	step
		talk Gregory Tabor##34675
		accept Spice Bread Stuffing##14023 |goto 34.1,51.5
	step
		talk Wilmina Holbeck##34682
		buy 5 Simple Flour##30817 |condition itemcount(30817) >= 5 |goto 34.1,51.5 < 5
		buy 5 Mild Spices##2678 |condition itemcount(2678) >= 5 |goto 34.1,51.5 < 5
		buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 34.1,51.5 < 5
	step
		Cook next to the Pilgrim's Bounty Cooking Fire Click Here |goto 33.8,50.8
		create 5 Spice Bread##37836,Cooking,5 total |q 14023
	step
		create 5 Spice Bread Stuffing##62050,Cooking,5 total |q 14023/1 |goto 33.8,50.8
		collect 5 Spice Bread Stuffing##44837 |q 14023/2 |goto 33.8,50.8
		skill Cooking,100
		|tip Keep creating the Spice Bread Stuffing until you reach level 100.
		If you need to train your Cooking skill to allow a higher max level, click here to talk to Ellen Moore |goto 33.7,50.6
	step
		Use your Recipe: Pumpkin Pie to learn the recipe |use Recipe: Pumpkin Pie##44862
		learn Pumpkin Pie##62044
	step
		talk Jasper Moore##34744
		turnin Spice Bread Stuffing##14023
		accept Pumpkin Pie##14024 |goto 33.9,50.8
	step
		talk Wilmina Holbeck##34682
		buy 5 Ripe Elwynn Pumpkin##46784 |condition itemcount(46784) >= 5 |goto 34.1,51.5
		buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 34.1,51.5
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create Pumpkin Pie##62044,Cooking,5 total |q 14024/1 |goto 33.8,50.8
		collect 5 Pumpkin Pie##44836 |q 14024/2 |goto 33.8,50.8
		create Pumpkin Pie##62044,Cooking,160 |goto 33.8,50.8
		|tip Keep creating the Pumpkin Pie Recipe until you reach level 160.
		If you need to train your Cooking skill to allow a higher max level, click here to talk to Ellen Moore |goto 33.7,50.6
	step
		Use your Recipe: Cranberry Chutney to learn the recipe |use Recipe: Cranberry Chutney##44858
		learn Cranberry Chuntney##62049
	step
		talk Edward Winslow##34644
		turnin Pumpkin Pie##14024
		accept Cranberry Chutney##14028 |goto Dun Morogh,59.8,34.3
	step
		talk Elizabeth Barker Winslow##34645
		buy 5 Tangy Southfury Cranberries##44854 |condition itemcount(44854) >= 5 |goto 59.77,34.34
		buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 59.77,34.34
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Cranberry Chutney##62049,Cooking,5 total |q 14028/1 |goto 59.61,34.94
		collect 5 Cranberry Chutney##44840 |q 14028/2 |goto 59.61,34.94
		create 5 Cranberry Chutney##62049,Cooking,220
		If you need to train your Cooking skill to allow a higher max level, click here to talk to Caitrin Ironkettle |goto 52.9,36.1
	step
		talk Jasper Moore##34744
		turnin Cranberry Chutney##14028 |goto Elwynn Forest 33.9,50.8
		accept They're Ravenous In Darnassus##14030 |goto Elwynn Forest 33.9,50.8
	step
		Use your Recipe: Candied Sweet Potato to learn the recipe |use Recipe: Candied Sweet Potato##44859
		learn Candied Sweet Potato##62051
	step
		talk Wilmina Holbeck##34682
		buy 5 Ripe Elwynn Pumpkin##46784 |condition itemcount(46784) >= 5 |goto 34.1,51.5
		buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 34.1,51.5
		buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 34.1,51.5
		buy 5 Mild Spices##2678 |condition itemcount(2678) >= 5 |goto 34.1,51.5
		buy 5 Simple Flour##30817 |condition itemcount(30817) >= 5 |goto 34.1,51.5
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create Pumpkin Pie##62044,Cooking,5 total |q 14030 |goto 33.8,50.8
		collect 5 Pumpkin Pie##44836 |q 14030/2 |goto 33.8,50.8
	step
		create 5 Spice Bread##37836,Cooking,5 total |n |goto 33.8,50.8
		create 5 Spice Bread Stuffing##62050,Cooking,5 total |q 14030 |goto 33.8,50.8
		collect 5 Spice Bread Stuffing##44837 |q 14030/1 |goto 33.8,50.8
	step
		talk Isaac Allerton##34676
		turnin They're Ravenous In Darnassus##14030 |goto Darnassus 61.5,49.0
		accept Candied Sweet Potatoes##14033 |goto Darnassus 61.5,49.0
	step
		talk Ikaneba Summerset##34681
		buy 5 Teldrassil Sweet Potato##44855 |condition itemcount(44855 ) >= 5 |goto 61.5,49.0
		buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 61.5,49.0
		buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 61.5,49.0
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Candied Sweet Potatoes##62051,Cooking,5 total |q 14033/1 |goto 62.10,48.99
		collect 5 Candied Sweet Potatoes##44839 |q 14033/2 |goto 62.10,48.99
		create 5 Candied Sweet Potatoes##62051,Cooking,280
		If you need to train your Cooking skill to allow a higher max level, click here to talk to Mary Allerton |goto 66.5,35.1
	step
		talk Gregory Tabor##34675
		turnin Candied Sweet Potatoes##14033 |goto Elwynn Forest,34.1,51.5
		accept Slow-roasted Turkey##14035 |goto Elwynn Forest,34.1,51.5
	step
		Use your Recipe: Slow-Roasted Turkey to learn the recipe |use Recipe: Slow-Roasted Turkey##44861
		learn Slow-Roasted Turkey##62045
	step
		kill Wild Turkey##32820+
		|tip You can find these all around Elwynn Forest, so you are not limited to staying in this area. Ride around Elwynn Forest and look for Wild Turkeys, you should be able to find them easily if you ride around.
		collect 5 Wild Turkey##44834 |q 14035 |goto 42.5,62.8
	step
		talk Wilmina Holbeck##34682
		buy 10 Honey##44853 |condition itemcount(44853) >= 10 |goto 34.1,51.5
		buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 34.1,51.5
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Slow-Roasted Turkey##62045,Cooking,5 total |q 14035/1 |goto 33.8,50.8
		collect 5 Slow-Roasted Turkey##44838 |q 14035/2 |goto 33.8,50.8
		Earn the Now We're Cookin' Achievement |achieve 3576
		create 5 Slow-Roasted Turkey##62045,Cooking,300
		If you need to train your Cooking skill to allow a higher max level, click here to talk to Ellen Moore |goto 33.7,50.6
	step
		talk Isaac Allerton##34676
		turnin Slow-roasted Turkey##14035 |goto Darnassus 61.5,49.1
]])

ZygorGuidesViewer:RegisterInclude("Pilgrim's_Bounty_Dailies",[[
	step
	label "start"
		These are the Dailies and Achievements for Pilgrim's Bounty. You can only do the Dailies once per day
		You will need to have 300 cooking in order to complete this guide
		Open your cooking window before you continue, to detect your ability |cast cooking##2550
		confirm always
	step
		talk Innkeeper Allison##6740
		home Trade District |q 14022 |future |goto Stormwind City,60.4,75.3
	step
		talk Human Commoner##18927
		accept Pilgrim's Bounty##14022 |goto Stormwind City 61.7,74.1
	step
		talk Gregory Tabor##34675
		turnin Pilgrim's Bounty##14022 |goto Elwynn Forest 34.1,51.5
	step
		clicknpc The Turkey Chair##34812
		|tip They look like wooden chairs around a round white and green table with food on it.
		Use the first ability on your hotbar to Pass the food to other players who are sitting at the table
		|tip You must target the other players and use the Pass the Food ability. Do this repeatedly until you get an achievement.
		Start a Food Fight! |achieve 3579 |goto Elwynn Forest 34.3,51.1
		Use the other abilities on your hotbar to eat the food
		|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		Earn the Pilgrims Paunch in Stormwind |achieve 3556/4 |goto Elwynn Forest 34.3,51.1
	step
		While still at the table, go to each of the chairs
		While in each of the chairs, press 1
		Pass the Candied Sweet Potatoes |achieve 3558/1 |goto Elwynn Forest 34.3,51.1
		Pass the Cranberry Chutney |achieve 3558/2 |goto Elwynn Forest 34.3,51.1
		Pass the Pumpkin Pie |achieve 3558/3 |goto Elwynn Forest 34.3,51.1
		Pass the Slow-Roasted Turkey |achieve 3558/4 |goto Elwynn Forest 34.3,51.1
		Pass the Spice Bread Stuffing |achieve 3558/5 |goto Elwynn Forest 34.3,51.1
		Earn the Sharing is Caring Achievement |achieve 3558 |goto Elwynn Forest 34.3,51.1
	step
		talk Jasper Moore##34744
		accept She Says Potato##14055 |goto Elwynn Forest 33.9,50.8
	step
		talk Ellen Moore##34710
		accept We're Out of Cranberry Chutney Again?##14053 |goto 33.7,50.6
	step
		talk Wilmina Holbeck##34682
		buy 20 Ripe Elwynn Pumpkin##46784 |condition itemcount(46784) >= 20 |q 14054/1 |goto Elwynn Forest,34.1,51.5
		buy 20 Honey##44853 |condition itemcount(44853) >= 20 |q 14054/2 |goto Elwynn Forest 34.1,51.5
	step
		kill Wild Turkey##32820+
		|tip You can find these all around Elwynn Forest, so you are not limited to staying in this area.
		collect 20 Wild Turkey##44834 |q 14048 |future |goto 42.5,62.8
	step
		talk Mary Allerton##34711
		accept Easy As Pie##14054 |goto Darnassus 61.9,46.2
	step
		create 20 Pumpkin Pie##62044,Cooking,20 total |q 14054/1 |goto 62.1,46.0
	step
		clicknpc The Turkey Chair##34812
		|tip They look like wooden chairs around a round white and green table with food on it.
		Use the other abilities on your hotbar to eat the food
		|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Earn the Pilgrims Paunch in Darnassus |achieve 3556/1 |goto Darnassus 62.8,48.2
	step
		talk Ikaneba Summerset##34681
		buy 20 Teldrassil Sweet Potato##44855 |condition itemcount(44855) >= 20 |goto 61.7,49.1
		buy 20 Honey##44853 |condition itemcount(44853) >= 20 |goto 61.7,49.1
		buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto 61.7,49.1
	step
		talk Mary Allerton##34711
		turnin Easy As Pie##14054 |goto Darnassus 61.9,46.2
		Choose one of the following until you have all three pieces:
		collect Pilgrim's Hat##46723
		collect Pilgrim's Attire##46800
		collect Turkey Shooter##44812
		|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
		Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
		confirm
	step
		create 20 Candied Sweet Potato##62051,Cooking,20 total |q 14055/1 |goto 61.9,46.2
	step
		Go up the ramp in Exodar |goto The Exodar 53.2,33.9 < 20 |only if walking
		Continue up the main ramp |goto The Exodar 64.8,35.5 < 20 |only if walking
		clicknpc The Turkey Chair##34812
		|tip They look like wooden chairs around a round white and green table with food on it.
		Use the other abilities on your hotbar to eat the food
		|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Earn the Pilgrims Paunch in The Exodar |achieve 3556/2 |goto The Exodar,75.7,52.3
	step
		talk Caitrin Ironkettle##34708
		accept Don't Forget The Stuffing!##14051 |goto Dun Morogh 60.1,34.3
		accept Can't Get Enough Turkey##14048 |goto Dun Morogh 60.1,34.3
	step
		clicknpc The Turkey Chair##34812
		|tip They look like wooden chairs around a round white and green table with food on it.
		Use the other abilities on your hotbar to eat the food
		|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Earn the Pilgrims Paunch in Ironforge |achieve 3556/3 |goto Dun Morogh 59.9,34.6
		Earn the Pilgrims Paunch Achievement! |achieve 3556 |goto Dun Morogh 59.9,34.6
	step
		talk Elizabeth Barker Winslow##34645
		buy 20 Tangy Wetland Cranberries##44854 |condition itemcount(44854) >= 20 |goto 59.8,34.3
		buy 20 Mild Spices##2678 |condition itemcount(2678) >= 20 |goto 59.8,34.3
		buy 20 Simple Flour##30817 |condition itemcount(30817) >= 20 |goto 59.8,34.3
		buy 60 Honey##44853 |condition itemcount(44853) >= 60 |goto 59.8,34.3
		buy 40 Autumnal Herbs##44835 |condition itemcount(44835) >= 40 |goto 59.8,34.3
		buy 20 Tangy Wetland Cranberries##44854 |condition itemcount(44854) >= 20 |goto 59.8,34.3
	step
		create 20 Spice Bread##37836,Cooking,20 total |q 14051 |goto 60.0,34.4
	step
		create 20 Spice Bread Stuffing##62050,Cooking,20 total |q 14051/1 |goto 60.0,34.4
	step
		talk Caitrin Ironkettle##34708
		turnin Don't Forget The Stuffing!##14051 |goto Dun Morogh 60.1,34.3
		Choose one of the following until you have all three pieces:
		collect Pilgrim's Hat##46723
		collect Pilgrim's Attire##46800
		collect Turkey Shooter##44812
		|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
		Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
		confirm
	step
		create 20 Slow-Roasted Turkey##62045,Cooking,20 total |q 14048/1 |goto 60.0,34.4
	step
		talk Caitrin Ironkettle##34708
		turnin Can't Get Enough Turkey##14048 |goto Dun Morogh 60.1,34.3
		Choose one of the following until you have all three pieces:
		collect Pilgrim's Hat##46723
		collect Pilgrim's Attire##46800
		collect Turkey Shooter##44812
		|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
		Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
		confirm
	step
		create 20 Cranberry Chutney##62049,Cooking,20 total |q 14053/1 |goto 60.0,34.4
	step
		talk Jasper Moore##34744
		turnin She Says Potato##14055 |goto Elwynn Forest 33.9,50.8
		Choose one of the following until you have all three pieces:
		collect Pilgrim's Hat##46723
		collect Pilgrim's Attire##46800
		collect Turkey Shooter##44812
		|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
		Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
		confirm
	step
		talk Ellen Moore##34710
		turnin We're Out of Cranberry Chutney Again?##14053 |goto 33.7,50.6
		Choose one of the following until you have all three pieces:
		collect Pilgrim's Hat##46723
		collect Pilgrim's Attire##46800
		collect Turkey Shooter##44812
		|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
		Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
		confirm
		Earn the Pilgrims Progress Achievement |achieve 3596
	step
		kill Wild Turkey##32820+
		Quickly kill 40 Wild Turkeys and keep killing them until you earn the achievement:
		|tip You can see how many turkeys you have killed with the Turkey Tracker buff.
		|tip You can find more Turkeys all around Elwynn Forest.
		The Turkinator! |achieve 3578 |goto 42.5,62.8
	step
		You should have three pieces of the Pilgrim's Attire now
		Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
	step
		While wearing your Pilgrim's Attire, sit at any table's chair
		Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		Pilgrim's Peril of Undercity |achieve 3580/4 |goto Undercity,68.6,6.7
	step
		While wearing your Pilgrim's Attire, sit at any table's chair
		Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		Pilgrim's Peril of Silvermoon City |achieve 3580/2 |goto Eversong Woods 55.2,53.2
	step
		While wearing your Pilgrim's Attire, sit at any table's chair
		Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		Pilgrim's Peril of Thunder Bluff |achieve 3580/3 |goto Thunder Bluff 28.6,62.8
	step
		While wearing your Pilgrim's Attire, sit at any table's chair
		Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		Pilgrim's Peril of Orgrimmar |achieve 3580/1 |goto Durotar 46.2,15.1
		Earn the Pilgrim's Peril Achievement! |achieve 3580 |goto Durotar 46.2,15.1
	step
		You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
		While in Durotar, shoot Horde Rogues with your Turkey Shooter |use Turkey Shooter##44812
		Shoot a Blood Elf Rogue |achieve 3559/1 |goto Durotar 46.2,15.1
		Shoot a Orc Rogue |achieve 3559/7 |goto Durotar 46.2,15.1
		Shoot a Troll Rogue |achieve 3559/8 |goto Durotar 46.2,15.1
		Shoot a Undead Rogue |achieve 3559/9 |goto Durotar 46.2,15.1
		Shoot a Goblin Rogue |achieve 3559/4 |goto Durotar 46.2,15.1
	step
		You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
		While in Elwynn Forest, shoot Alliance Rogues with your Turkey Shooter |use Turkey Shooter##44812
		Shoot a Dwarf Rogue |achieve 3559/2
		Shoot a Gnome Rogue |achieve 3559/3
		Shoot a Human Rogue |achieve 3559/5
		Shoot a Night Elf Rogue |achieve 3559/6
		Shoot a Worgen Rogue |achieve 3559/10
	step
		Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		Equip your Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		kill Talon King Ikiss##18473
		Earn the Achievment Terokkar Turkey Time |achieve 3582 |goto Sethekk Halls/2 32.5,39.5
	step
		You have reached the End of this guide, you can only do the Dailys Once per day
		Click here to start the Dailys over |confirm always
		|next "end" |only if achieved(3478)
		|next "start" |only if not achieved(3478)
	step
	label "end"
		Congratualtions, you have earned the Pilgrim Achievement!
]])