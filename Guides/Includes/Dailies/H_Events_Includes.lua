if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

--------------------
----- Brewfest -----
--------------------

ZygorGuidesViewer:RegisterInclude("Brewfest_Dailies",[[
		talk Cort Gorestein##24498
		accept Bark for Drohn's Distillery!##11407 |goto Durotar 40.6,18.2
		Click if this quest isn't available |confirm
	step
		talk Ja'ron##24499
		accept Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar 40.2,17.1
		Click if this quest isn't available |confirm
	step
		Ride your ram into Orgrimmar |goto Orgrimmar 51.1,90.8 |c |q 11407
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		only if havequest(11407)
	step
		Ride your ram into Orgrimmar |goto Orgrimmar 51.1,90.8 |c |q 11294
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		only if havequest(11294)
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark Outside the Auction House |q 11407/1 |goto Orgrimmar 52.1,75.0
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark in the Valley of Honor |q 11407/2 |goto 67.0,48.2
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark in the Valley of Wisdom |q 11407/3 |goto 44.3,49.1
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark in the Valley of Spirits |q 11407/4 |goto 38.0,75.6
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark Outside the Auction House |q 11408/1 |goto Orgrimmar 52.9,66.5
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark in the Valley of Honor |q 11408/2 |goto 71.5,34.8
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark in the Valley of Wisdom |q 11408/3 |goto 43.8,36.5
	step
		Use your _Giddyup!_ temporary ability as you run
		|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
		Bark in the Valley of Spirits |q 11408/4 |goto 37.0,74.3
	step
		talk Cort Gorestein##24498
		turnin Bark for Drohn's Distillery!##11407 |goto Durotar 40.6,18.2
	step
		talk Ja'ron##24499
		turnin Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar 43.6,17.6
	step
		Click Dark Iron Mole Machine Wreckage
		|tip You have to defend the three kegs at these locations in order for it to show up.
		Click the Complimentary Brewfest Sampler here [40.2,17.4]
		Click the Complimentary Brewfest Sampler here [40.4,16.8]
		use Complimentary Brewfest Sampler##33096
		|tip Thow the Sampler's at the Dark Iron Dwarves and the Mole Machines.
		accept This One Time, When I Was Drunk...##12192 |goto 40.8,17.5
	step
		talk Bizzle Quicklift##27216
		turnin This One Time, When I Was Drunk...##12192 |goto 41.5,17.7
		Earn the Down With the Dark Iron achievement |achieve 1683/6 |goto 41.5,17.7
	step
		talk Ram Master Ray##24497
		accept Brew For Brewfest##29393 |instant |goto 42.7,17.6 < 10
		On your Ram, run to Bok Dropcertain |goto 50.6,13.5 < 10
		|tip Bok Dropcertain will throw you a keg when you get close.
		Deliver Ram Master Ray as many kegs as you can within 4 minutes |goto 42.7,17.6
		|tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
]])

---------------------------
----- Children's Week -----
---------------------------

ZygorGuidesViewer:RegisterInclude("Children's_Week_Ogrimmar",[[
	step
		talk Orphan Matron Battlewail##51989
		accept Children's Week##172 |goto Orgrimmar/1 57.95,57.62
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan.
		talk Orcish Orphan##14444
		turnin Children's Week##172
		accept Ridin' the Rocketway##29146
		accept The Fallen Chieftain##29176
		accept The Banshee Queen##29167
	step
		Ride the elevator up |goto Azshara/0 50.78,74.53 < 5 |only if walking
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		clicknpc Redhound Two-Seater##52583
		Take Your Orphan to Ride the Rocketway |q 29146/1 |goto 50.72,73.94
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		talk Orcish Orphan##14444
		turnin Ridin' the Rocketway##29146
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Watch the dialogue
		Take Your Orphan to Visit Red Rocks |q 29176/1 |goto Mulgore/0 60.62,23.01
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		talk Orcish Orphan##14444
		turnin The Fallen Chieftain##29176
	step
		Follow the path |goto Undercity/0 52.43,63.97 < 10 |walk
		Continue following the path |goto 46.31,73.06 < 10 |only if walking
		Continue following the path |goto 45.22,80.01 < 10 |only if walking
		Continue following the path |goto 48.70,87.66 < 10 |only if walking
		Continue following the path |goto 53.19,89.77 < 10 |only if walking
		Continue following the path |goto 58.32,85.60 < 10 |only if walking
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Watch the dialogue
		Take Your Orphan to a Meeting with Lady Sylvanas Windrunner |q 29167/1 |goto 58.04,91.77
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		talk Orcish Orphan##14444
		turnin The Banshee Queen##29167
		accept Let's Go Fly a Kite##29190
		accept You Scream, I Scream...##29191
	step
		talk Blax Bottlerocket##52809
		|tip He walks around this area.
		buy 1 Dragon Kite 2-Pack##69231 |q 29190 |goto Orgrimmar/1 58.50,55.46
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		use Dragon Kite 2-Pack##69231
		Fly Dragon Kites with Your Orphan |q 29190/1
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		talk Orcish Orphan##14444
		turnin Let's Go Fly a Kite##29190
	step
		Follow the path |goto 57.36,64.04 < 10 |only if walking
		Continue following the path |goto 54.93,64.86 < 10 |only if walking
		Continue following the path |goto 51.13,65.37 < 10 |only if walking
		Continue following the path |goto 43.96,69.89 < 10 |only if walking
		Run up the ramp |goto 43.90,72.98 < 10 |only if walking
		Continue up the ramp |goto 43.90,75.87 < 10 |only if walking
		Continue following the path |goto 40.64,77.41 < 10 |only if walking
		Continue following the path |goto 37.68,85.42 < 10 |only if walking
		talk Snixx Quickfreeze##52818
		buy 1 Cone of Cold##69233 |q 29191 |goto 36.29,86.98
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		use Cone of Cold##69233
		Take Your Orphan Out for Ice Cream |q 29191/1
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		talk Orcish Orphan##14444
		turnin You Scream, I Scream...##29191
		accept A Warden of the Horde##5502
	step
		Follow the path |goto 39.11,84.35 < 10 |only if walking
		Continue following the path |goto 40.67,77.42 < 10 |only if walking
		Jump down here |goto 43.36,73.21 < 7 |only if walking
		Run down the ramp |goto 43.95,70.31 < 10 |only if walking
		Follow the path |goto 46.83,66.93 < 10 |only if walking
		Continue following the path |goto 53.60,64.24 < 10 |only if walking
		Continue following the path |goto 56.52,65.14 < 10 |only if walking
		Continue following the path |goto 59.00,61.17 < 10 |only if walking
		talk Blax Bottlerocket##52809
		|tip He walks around this area.
		buy 1 Foam Sword Rack##69057 |q 5502/1 |goto 58.55,55.86
	step
		talk Orphan Matron Battlewail##51989
		turnin A Warden of the Horde##5502 |goto 57.95,57.62
]])

ZygorGuidesViewer:RegisterInclude("Children's_Week_Shattrath",[[
	step
		talk Orphan Matron Mercy##22819
		accept Children's Week##10942 |goto Shattrath City/0 75.08,47.89
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan.
		talk Blood Elf Orphan##22817
		turnin Children's Week##10942
		accept Hch'uu and the Mushroom People##10945
		accept A Trip to the Dark Portal##10951
		accept Visit the Throne of the Elements##10953
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		Take Salandria to the Throne of the Elements |q 10953/1 |goto Nagrand/0 60.65,22.42
	step
		talk Elementalist Sharvak##18072
		turnin Visit the Throne of the Elements##10953 |goto 60.66,22.10
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		Take Salandria to Sporeggar |q 10945/1 |goto Zangarmarsh/0 19.42,51.39
	step
		talk Hch'uu##22823
		turnin Hch'uu and the Mushroom People##10945 |goto 19.28,51.34
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		Take Salandria to the Dark Portal |q 10951/1 |goto Hellfire Peninsula/0 89.59,50.21
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		talk Blood Elf Orphan##22817
		turnin A Trip to the Dark Portal##10951
		accept Now, When I Grow Up...##11975
		accept Time to Visit the Caverns##10963
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		Take Salandria to the Caverns of Time |q 10963/2 |goto Tanaris/18 52.50,57.05
	step
		talk Alurmi##21643
		buy 1 Toy Dragon##31951 |q 10963/1 |goto Tanaris/17 39.95,77.32
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		talk Blood Elf Orphan##22817
		turnin Time to Visit the Caverns##10963
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		Watch the dialogue
		Take Salandria to see the Elite Tauren Chieftain |q 11975/1 |goto Silvermoon City/0 76.61,81.05
	step
		use Blood Elf Orphan Whistle##31880
		|tip Use it to summon your Blood Elf Orphan, if needed.
		talk Blood Elf Orphan##22817
		turnin Now, When I Grow Up...##11975
		accept Back to the Orphanage##10967
	step
		talk Orphan Matron Mercy##22819
		turnin Back to the Orphanage##10967 |goto Shattrath City/0 75.08,47.89
]])

ZygorGuidesViewer:RegisterInclude("Children's_Week_Oracles_Quests",[[
	step
		talk Orphan Matron Aria##34365
		accept Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.35,63.25
		|tip If you choose to care for the Oracles you are not able to also care for the Wolvars.
	step
		talk Orphan Matron Aria##34365
		Choose _Ask about the orphans._
		Accept to Care for the Oracles Orphan |q 13926/1 |goto 49.35,63.25
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
		|tip If you choose to care for the Wolvars you are not able to also care for the Oracles.
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
		talk Orphan Matron Battlewail##14451
		Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
		collect Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.61
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Complete any 5 daily quests of your choice:
		|tip World Quests do not count for this achievement.
		|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
		Get the Daily Chores Achievement |achieve 1789
	step
		talk Alowicious Czervik##14480
		buy 1 Tigule and Foror's Strawberry Ice Cream##7228 |achieve 1788 |goto Orgrimmar/1 53.31,79.26
	step
		talk Auctioneer Drezmit##44866
		|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
		collect 1 Tasty Cupcake##43490 |achieve 1788 |goto 54.08,73.36
		collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto 54.08,73.36
	step
		talk Aimee##29548
		buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.19,29.05
		buy 1 Lovely Cake##42438 |achieve 1788 |goto Dalaran/1 51.19,29.05
		buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto Dalaran/1 51.19,29.05
		buy 1 Dalaran Brownie##42431 |achieve 1788 |goto Dalaran/1 51.19,29.05
	step
		use Lovely Cake##42438
		|tip Use it to place a cake on the ground.
		Click Lovely Cake
		collect 1 Lovely Cake Slice##42434 |achieve 1788
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Eat Tigule and Foror's Strawberry Ice Cream |achieve 1788/1 |use Tigule and Foror's Strawberry Ice Cream##7228
		Eat Tasty Cupcake |achieve 1788/2 |use Tasty Cupcake##43490
		Eat Red Velvet Cupcake |achieve 1788/3 |use Red Velvet Cupcake##42429
		Eat Delicious Chocolate Cake |achieve 1788/4 |use Delicious Chocolate Cake##33924
		Eat Lovely Cake Slice |achieve 1788/5 |use Lovely Cake Slice##42434
		Eat Dalaran Brownie |achieve 1788/6 |use Dalaran Brownie##42431
		Eat Dalaran Doughnut |achieve 1788/7 |use Dalaran Doughnut##42430
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		use Hearthstone##6948
		|tip Use it while your Orphan is standing next to you.
		Get the Home Alone Achievement |achieve 1791
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		kill King Ymiron##26861
		|tip Inside the Utgarde Pinnacle dungeon.
		Get the Hail To The King, Baby Achievement |achieve 1790 |goto Utgarde Pinnacle/2 42.60,53.50
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Enter the Eye of the Storm battleground and capture the flag
		Capture the flag in Eye of the Storm |achieve 1786/1
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Enter the Alterac Valley battleground and assault a tower
		Assault a Tower in Alterac Valley |achieve 1786/2
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Enter the Arathi Basin battleground and assault a flag
		Assault a Flag in Arathi Basin |achieve 1786/3
	step
		use Orcish Orphan Whistle##18597
		|tip Use it to summon your Orcish Orphan, if needed.
		Enter the Warsong Gulch battleground and return a fallen flag
		Return a Fallen flag in Warsong Gulch |achieve 1786/4
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
		buy Sack o' Tokens##78909 |n |goto Darkmoon Island/0 54.3,53.1
		Open your Sack o' Tokens in your bags |use Sack o' Tokens##78909
		collect 20 Darkmoon Faire Game Tokens##71083
	step
		talk Mola##54601
		accept It's Hammer Time##29463 |goto Darkmoon Island/0 53.3,54.4
	step
		talk Mola##54601
		Tell her "Ready to whack!" |havebuff 537060 |goto Darkmoon Island/0 53.3,54.4 --inv_hammer_32
		only if havequest(29463)
	step
		Use the _Whack!_ on your bar and whack the Gnolls in the Barrels
		The Gnolls  will pop up in the Barrels, but be careful not to hit the _Doll_ or you will get stunned.
		Whack 30 Gnolls |q 29463/1
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
		Tell him "Teleport me to the cannon." |goto 52.7,56.0,1 |noway |c
		only if havequest(29436)
	step
	label "quest"
		talk Maxima Blastenheimer##15303
		Tell her "Launch me!"
		Wait for the Cannon to Launch you |havebuff 135992 |goto Darkmoon Island/0 52.5,56.2 --Spell_Magic_FeatherFall
		only if havequest(29436)
	step
		You will be launched throught the air.
		Use the _arrow_ to drop in the water in the target. You will gain more points for getting closer to the middle
		Earn 5 Target Points |q 29436/1 |goto Darkmoon Island/0 56.4,93.3
		Click here to try again |confirm |next "target"
	step
		talk Teleportologist Fozlebub##57850 |goto Darkmoon Island/0 57.1,89.6
		Tell him "Teleport me to the cannon." |goto 52.7,56.0,1 |noway |c
		only if havequest(29436)
	step
		talk Maxima Blastenheimer##15303
		turnin The Humanoid Cannonball##29436 |goto Darkmoon Island/0 52.5,56.2
	step
		talk Rinling##14841
		accept He Shoots, He Scores!##29438 |goto 49.3,60.8
	step
		talk Rinling##14841
		Tell him "Let's shoot!" |havebuff 135614 |goto 49.3,60.8 --INV_Weapon_Rifle_05
		only if havequest(29438)
	step
		Shoot at the 3 targets
		When you see a green marker appear over a target, make sure that you are aimed at it and _shoot_
		|tip To aim, simply move the camera to face your current target
		Shoot 25 Targets |q 29438/1
	step
		talk Rinling##14841
		turnin He Shoots, He Scores!##29438 |goto 49.3,60.8
	step
		talk Finlay Coolshot##54605
		accept Tonk Commander##29434 |goto Darkmoon Island/0 50.7,65.1
	step
		talk Finlay Coolshot##54605 |goto Darkmoon Island/0 50.7,65.1
		Tell him "Ready to Play." |invehicle |c
		only if havequest(29434)
	step
		Use your _Cannon_ ability to shoot _Tonk Targets_.
		from Tonk Target##33081+
		Destroy 30 Tonk Targets |q 29434/1
	step
		talk Finlay Coolshot##54605
		turnin Tonk Commander##29434 |goto Darkmoon Island/0 50.7,65.1
	step
		talk Ziggie Sparks##85546
		accept Firebird's Challenge##36481 |goto 48.37,71.36
	step
		talk Ziggie Sparks##85546
		Tell her "Ready to fly!" |havebuff 514340 |goto 48.37,71.36 --inv_shoulder_leather_firelandsdruid_d_01
		only if havequest(36481)
	step
		Fly through the rings all around the Darkmoon Faire
		|tip Try and go as fast as you can, as the buff falls off in 9 seconds
		Collect #15# Rings |q 36481/1
	step
		talk Ziggie Sparks##85546
		turnin Firebird's Challenge##36481 |goto 48.37,71.36
	step
		talk Jessica Rogers##54485
		accept Target: Turtle##29455 |goto 51.6,77.8
	step
		talk Jessica Rogers##54485
		Tell her "Ready to play!" |havebuff 133345 |goto 51.6,77.8 --INV_Jewelry_Ring_03
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
		Select a mount|goto Darkmoon Island/0 48.4,87.7
		Choose the _Racing Strider_ |havebuff 132198 |or --Ability_Hunter_Pet_TallStrider
		Choose the _Rocketeer_ |havebuff 298587 |or --ability_mount_blackbattlestrider
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
		Choose the _Racing Strider_ |havebuff 132198 |or --Ability_Hunter_Pet_TallStrider
		Choose the _Rocketeer_ |havebuff 298587 |or --ability_mount_blackbattlestrider
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
		Select a mount|goto Darkmoon Island/0 48.4,87.7
		Choose the _Racing Strider_ |havebuff 132198 |or --Ability_Hunter_Pet_TallStrider
		Choose the _Rocketeer_ |havebuff 298587 |or --ability_mount_blackbattlestrider
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
		Select a mount|goto Darkmoon Island/0 48.4,87.7
		Choose the _Racing Strider_ |havebuff 132198 |or --Ability_Hunter_Pet_TallStrider
		Choose the _Rocketeer_ |havebuff 298587 |or --ability_mount_blackbattlestrider
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
		talk Patti Earnhard##90473
		turnin More Big Racing!##37868 |goto 53.11,87.71
	step
		Click here if you would like to do "Let's Keep Racing!" |confirm |next "race1"
		Click here if you would like to do "More Big Racing!" |confirm |next "race2"
		Click here if you are finished with the daily guide |confirm |next "start"
]])

--------------------------------
----- Feast of Winter Veil -----
--------------------------------

ZygorGuidesViewer:RegisterInclude("FoWV_Quests",[[
	step
		talk Kaymard Copperpinch##13418
		accept Great-father Winter is Here!##6961 |goto Orgrimmar 52.4,77.1
		accept You're a Mean One...##6983 |goto Orgrimmar 52.4,77.1 |only if level >= 80
	step
		talk Great-father Winter##13445
		turnin Great-father Winter is Here!##6961 |goto 49.6,78.0
		accept Treats for Great-father Winter##6962 |goto 49.6,78.0
	step
		talk Furmund##9550
		accept The Reason for the Season##6964 |goto 51.0,71.0
	step
		talk Arugi##46709
		Learn the Apprentice Cooking skill |skillmax Cooking,75 |goto 56.1,61.7
		only if skill("Cooking")<=1
	step
		talk Sagorne Creststrider##13417
		turnin The Reason for the Season##6964 |goto 39.5,47.3
		accept The Feast of Winter Veil##7061 |goto 39.5,47.3
	step
		talk Penney Copperpinch##13420
		buy 1 Recipe: Gingerbread Cookie##17200 |condition itemcount(17200) >= 1 |n
		buy 5 Holiday Spices##17194 |condition itemcount(17194) >= 5 |q 6962
		use Recipe: Gingerbread Cookie##17200
		learn Gingerbread Cookie##21143 |goto 52.6,77.4
	step
		Buy 5 Small Eggs from the Auction House:
		collect 5 Small Egg##6889 |goto Orgrimmar/1 54.0,73.3 |q 6962
		If you would rather farm these from mobs, click here |confirm |next
		|next "cook" |only if default
	step
		kill Feral Dragonhawk Hatchling##15649, Crazed Dragonhawk##15650+
		collect 5 Small Egg##6889 |goto Eversong Woods 43.4,56.6 |q 6962
	step
	label "cook"
		create Gingerbread Cookie##21143,Cooking,5 total |q 6962/1 |goto Orgrimmar 53.8,84.7
	step
		talk Innkeeper Gryshka##6929
		buy 1 Ice Cold Milk##1179 |condition itemcount(1179) >= 1 |future |q 6962 |goto 53.6,78.8
	step
		talk Innkeeper Gryshka##6929
		home Orgrimmar |goto 53.6,78.8 |q 6962
	step
		talk Great-father Winter##13445
		turnin Treats for Great-father Winter##6962 |goto 49.6,78.0
	step
		talk Strange Snowman##13636
		accept You're a Mean One...##6983 |goto Hillsbrad Foothills 42.3,41.1
		only if level >= 80 and not havequest(6983)
	step
		kill The Abominable Greench##13602
		|tip This will require a group to kill, but you do not have to be in a party.
		Free Metzen the Reindeer |q 6983/2 |goto Hillsbrad Foothills 43.6,39.0
		click Stolen Treats##209506
		collect Stolen Treats##17662 |q 6983/1 |goto Hillsbrad Foothills 43.6,39.0
		|tip You can pick this up if someone has killed The Abominable Grinch recently.
		only if level >= 80 and havequest(6983)
	step
		talk Baine Bloodhoof##36648
		turnin The Feast of Winter Veil##7061 |goto Thunder Bluff 60.3,51.7
	step
		talk Kaymard Copperpinch##13418
		turnin You're a Mean One...##6983 |goto Orgrimmar 52.4,76.9 |only if level >= 80 and havequest(6983)
		accept A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar 52.4,76.9
	step
		talk Great-father Winter##13445
		turnin A Smokywood Pastures' Thank You!##6984 |goto 49.6,78.0
]])

ZygorGuidesViewer:RegisterInclude("FoWV_Achievements",[[
	step
		Kiss a Winter Reveler every hour |script DoEmote("KISS")
		|tip You can only use this once per hour. The items you get are random.
		collect 10 Handful of Snowflakes##34191 |goto Orgrimmar 54.5,77.8
		collect 3 Mistletoe##21519 |goto Orgrimmar 54.5,77.8
		collect 1 Fresh Holly##21212 |goto Orgrimmar 54.5,77.8
		confirm always
	step
		Use a Handful of Snowflakes on the following race/class combinations:
		use Handful of Snowflakes##34191
		|tip The best place to complete this is in major cities, but it can be done anywhere in the world.
		|tip You can get more snowflakes by using /kiss on Winter Revelers in the previous step.
		Blood Elf Warlock |achieve 1687/9
		Draenei Priest |achieve 1687/10
		Orc Death Knight |achieve 1687/1
		Undead Rogue |achieve 1687/5
		Night Elf Druid |achieve 1687/4
		Human Warrior |achieve 1687/2
		Troll Hunter |achieve 1687/6
		Gnome Mage |achieve 1687/7
		Tauren Shaman |achieve 1687/3
		Dwarf Paladin |achieve 1687/8
	step
		talk Kaymard Copperpinch##13418
		buy 1 Sparkling Apple Cider##34412 |condition itemcount(34412) >= 1 |goto Orgrimmar 52.5,77.0
		only if not achieved(1688)
	step
		talk Penney Copperpinch##13420
		buy Recipe: Winter Veil Egg Nog##17201 |condition itemcount(17201) >= 1 |n
		buy Recipe: Hot Apple Cider##34413 |condition itemcount(34413) >= 1 |n
		buy 10 Holiday Spices##17194 |condition itemcount(17194) >= 10
		buy 2 Holiday Spirits##17196 |condition itemcount(17196) >= 2
		learn Recipe: Hot Apple Cider##45022 |use Recipe: Hot Apple Cider##34413 |goto Orgrimmar 52.7,77.3
		learn Recipe: Egg Nog##21144 |use Recipe: Egg Nog##17201 |goto Orgrimmar 52.7,77.3
		|tip This requires a cooking skill of 325.
		only if not achieved(1688)
	step
		#include "cooking_fire"
		create Egg Nog##21144,Cooking,1 total |achieve 1688/2
		create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3
		|tip Requires a cooking skill of 325.
		only if not achieved(1688)
	//Body - Tailoring
	step
		talk Auctioneer Drezmit##44866
		buy 1 Red Winter Clothes##151790 |condition itemcount(151790) >= 1 |or |goto Orgrimmar 54.1,73.4
		buy 1 Green Winter Clothes##151792 |condition itemcount(151792) >= 1 |or |goto Orgrimmar 54.1,73.4
		|next "boots"
		Click here if you wish to make these yourself |confirm |next "tailor" |only if skill("Tailoring")>=250
	step
	label "tailor"
		talk Penney Copperpinch##13420
		buy Pattern: Green Winter Clothes##34261 |n
		learn Green Winter Clothes##44950 |use Pattern: Green Winter Clothes##34261 |goto Ironforge/0 33.4,68.0
	step
		talk Auctioneer Drezmit##44866
		buy 4 Bolt of Runecloth##14048 |condition itemcount(14048) >= 4 |goto Orgrimmar 54.1,73.4
		|tip You can also purchase 16 Runecloth and make these yourself.
		buy 1 Bolt of Woolen Cloth##2997 |condition itemcount(2997) >= 1 |goto Orgrimmar 54.1,73.4
		|tip You can also purchase 3 Wool Cloth and make this yourself.
		|next "createclothes"
		Click here to farm these yourself |confirm |next "farmcloth"
	step
	label "farmcloth"
		map Ashenvale
		path loop off
		path	34.3,34.6	35.8,32.9	37.3,35.0
		path	38.8,36.8
		kill Thistlefur Avenger##3925+, Thistlefur Shaman##3924+, Thistlefur Pathfinder##3926+
		collect 3 Wool Cloth##2592
	step
		kill Winterfall Shaman##7439+, Winterfall Ursa##7438+, Grolnar the Berserk##49178
		collect 16 Runecloth##14047 |goto Winterspring 66.5,47.3
	step
		create 4 Bolt of Runecloth##18401,Tailoring,4 total
		create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total
	step
	label "createclothes"
		talk Borya##3364
		buy 2 Green Dye##2605 |condition itemcount(2605) >= 2 |goto Orgrimmar 60.7,58.7
		buy 1 Rune Thread##14341 |condition itemcount(14341) >= 1 |goto Orgrimmar 60.7,58.7
	step
		create 1 Green Winter Clothes##44950,Tailoring,1 total
	//Boots - LW
	step
	label "boots"
		talk Auctioneer Drezmit##44866
		buy 1 Winter Boots##34086 |condition itemcount(34086) >= 1 |goto Orgrimmar 54.1,73.4
		|next "winthat"
		Click here if you wish to make these yourself |confirm |next "leatherboots" |only if skill("Leatherworking")>=285
	step
	label "leatherboots"
		talk Penney Copperpinch##13420
		buy Pattern: Winter Boots##34262 |n
		learn Winter Boots##44953 |use Pattern: Winter Boots##34262 |goto Orgrimmar 52.6,77.3
	step
	label "backtobuy"
		talk Auctioneer Drezmit##44866
		buy 1 Copper Bar##2840 |condition itemcount(2840) >= 1 |goto Orgrimmar 54.1,73.4
		buy 1 Bolt of Woolen Cloth##2997 |condition itemcount(2997) >= 1 |goto Orgrimmar 54.1,73.4
		buy 4 Rugged Leather##8170 |condition itemcount(8170) >= 4 |goto Orgrimmar 54.1,73.4
		|next "runethread"
		Click here if you wish to farm the Rugged Leather yourself |confirm |next "gatherleather" |only if skill("Skinning")>=260
		Click here if you wish to farm the Bolt of Woolen Cloth yourself |confirm |next "gathercloth" |only if skill("Tailoring")>=75
		Click here if you wish to farm the Copper Bar yourself |confirm |next "gathermine" |only if skill("Mining")>=1
	step
	label "gatherleather"
		kill Ice Thistle Yeti##7458+, Ice Thistle Matriarch##7459+
		collect Rugged Leather##8170 |goto Winterspring 67.1,54.5
	step
	label "gathercloth"
		map Ashenvale
		path loop off
		path	34.3,34.6	35.8,32.9	37.3,35.0
		path	38.8,36.8
		kill Thistlefur Avenger##3925+, Thistlefur Shaman##3924+, Thistlefur Pathfinder##3926+
		collect 3 Wool Cloth##2592
		create Bolt of Woolen Cloth##2964,Tailoring,1 total
	step
	label "gathermine"
		map Durotar
		path	38.9,16.0	37.5,21.1	35.9,34.4
		path	36.8,52.3	44.2,49.5	50.6,46.3
		path	50.7,63.3	54.9,67.0	56.2,49.8
		path	55.0,36.9	53.0,29.7	57.9,30.0
		path	54.8,19.0	50.0,17.2	44.2,23.6
		collect 1 Copper Ore##2770
	step
		create Copper Bar##2657,Mining,1 total |goto Orgrimmar 44.9,77.7
	step
		create Winter Boots##44953,Leatherworking,1 total
	step
	label "winthat"
		The Winter Hat will drop from any of these dungeons
		Deadmines (Heroic) - Admiral Ripsnarl |goto The Deadmines/2 60.4,38.7
		The Nexus (Heroic) - Grand Magus Telestra |goto The Nexus 27.5,39.9
		The Stonecore (Normal + Heroic) - High Priestess Azil |goto The Stonecore 57.4,38.7
		Blackrock Caverns (Normal + Heroic) - Corla, Herald of Twilight |goto Blackrock Caverns 27,16.3
		Shadowfang Keep (Heroic) - Lord Godfrey |goto Shadowfang Keep/6 62.5,21.2
		Grim Batol (Normal + Heroic) - Drahga Shadowburner |goto Grim Batol 69.4,19.3
		collect 1 Green Winter Hat##21525 |or
		Or
		collect 1 Red Winter Hat##21524 |or
	step
		Get the Smokywood Pastures Sampler from your mailbox
		|tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		|tip You may have to buy a new one from the Auction House.
		use Smokywood Pastures Sampler##17685
		collect 1 Graccu's Mince Meat Fruitcake##21215 |goto Orgrimmar 52.7,75.8
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
		Wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake
		use Graccu's Mince Meat Fruitcake##21215
		Earn the 'Tis the Season achievement |achieve 277
	step
		Use the PX-238 Winter Wondervolt machine to turn into a Little Helper. If you don't have the buff active while killing players, you won't get credit.
		Do any type of PvP of your choice
		|tip You must be killing players that give you honor.
		Earn #50# Honorable kills as a Little Helper |achieve 252 |goto Orgrimmar 50.2,62.1
	step
		Make sure you have the following in your bags:
		collect 3 Mistletoe##21519
		collect 1 Preserved Holly##21213
	step
		talk Penney Copperpinch##13420
		buy 1 Snowball##17202 |condition itemcount(17202) >= 1 |goto 52.7,77.3
	step
		use Snowball##17202
		|tip Use a snowball on Baine Bloodhoof.
		Throw a Snowball at Baine Bloodhoof |achieve 259 |goto Thunder Bluff 60.3,51.7
	step
		Use your Mistletoe on Brother Malach |use Mistletoe##21519
		Use Mistletoe on Brother Malach in the Undercity |achieve 1685/1 |goto Undercity 50.8,21.7
	step
	label "bombroute"
		Routing to proper section |next "bombdaily" |only if completedq(11010)
		Routing to proper section |next "bombprequest" |only if not completedq(11010)
	//UNLOCK DAILIES
	step
	label "bombprequest"
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
		Select "_Insert an Apexis Shard to begin._"
		|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
		Click the clusters in the same color pattern as the crystal
		|tip You must do this eight times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
		Attain the Apexis Emanations |q 11058/1 |goto 33.1,52.3
	step
		kill Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+, Bash'ir Raider##22241+
		collect 10 Apexis Shard##32569 |goto 51.1,15.6
	step
		Click the Fel Crystalforge
		|tip It looks like a big metal machine with green smoke coming out of it.
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
		|tip It looks like a small multi-colored crystal floating in the air.
		Select "_Insert an Apexis Shard to begin._"
		|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
		Click the clusters in the same color pattern as the crystal
		|tip You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
		Attain the Apexis Vibrations |q 11080/1 |goto 27.7,68.1
	step
		talk Chu'a'lor##23233
		turnin The Relic's Emanation##11080 |goto 28.8,57.4
		accept The Skyguard Outpost##11062 |goto 28.8,57.4
	step
		talk Sky Commander Keller##23334
		turnin The Skyguard Outpost##11062 |goto 27.4,52.7
	//END UNLOCKING DAILIES
	step
	label "bombdaily"
		talk Sky Sergeant Vanderlip##23120
		accept Bombing Run##11010 |goto 27.6,52.9
	step
		use Skyguard Bombs##32456
		|tip While on your flying mount, use the Skyguard Bombs on Fel Cannonball Stacks. They are marked with a red arrow.
		Destroy #15# Fel Cannonball Stacks |q 11010/1 |goto 36.8,39.4
	step
		talk Sky Sergeant Vanderlip##23120
		turnin Bombing Run##11010 |goto 27.6,52.9
		accept Bomb Them Again!##11023 |goto 27.6,52.9
	step
		use Preserved Holly##21213
		Use Preserved Holly while Riding Your Flying Mount |havebuff Interface\Icons\INV_Misc_Plant_03
	step
		use Skyguard Bombs##32456
		|tip While on riding the Reindeer Mount, use the Skyguard Bombs on Fel Cannonball Stacks.
		Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto 36.8,39.4
	step
		talk Sky Sergeant Vanderlip##23120
		turnin Bomb Them Again!##11023 |goto 27.6,52.9
		|tip You have to be on your mount when turning in the quest.
		Complete the Bomb Them Again! quest during the Feast of Winter Veil |achieve 1282
	//DALARAN
	step
		use Mistletoe##21519
		|tip Use your Mistletoe on Durkot Wolfbrother.
		Use Mistletoe on Durkot Wolfbrother in Warsong Hold |achieve 1685/2 |goto Borean Tundra 40.2,55.0
	step
		Orgrim's Hammer flies in a triangular pattern using these points: |goto Icecrown 60.6,34.9
		Point 1: |goto 60.6,34.9 |walk
		Point 2: |goto 68.0,52.5 |walk
		Point 3: |goto 68.9,27.0 |walk
		Find Orgrim's Hammer flying around in the sky
		|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		use Mistletoe##21519
		|tip Use your Mistletoe on Brother Keltan.
		|tip He is a blood elf with gray hair and walks all around the Orgrim's Hammer airship.
		Use Mistletoe on Brother Keltan in Icecrown |achieve 1685/3
	step
		Get the Winter Veil Disguise Kit from your mailbox
		|tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		Equip the Winter Veil Disguise Kit |use Winter Veil Disguise Kit##17712 |goto Dalaran 50.3,63.2
		Dance with another player wearing their snowman costume |script DoEmote("DANCE")
		Use your Winter Veil Disguise kit to become a snowman and dance with another snowman in Dalaran |achieve 1690
	step
		This step can only be completed by logging in on December 25th:
		Click a present underneath the tree
		Open one of the presents underneath the Winter Veil tree once they are available |achieve 1689
		Earn the Achievement and Title Merrymaker! |achieve 1691 |goto Orgrimmar 49.6,78.1
	step
		Click the presents under the tree on December 25th and receive
		collect Gaudy Winter Veil Sweater##70923
		Go to Darnassus, use your Sweater to sing carols |achieve 5854/1
		Go to Stormwind, use your Sweater to sing carols |achieve 5854/4
		Go to The Exodar, use your Sweater to sing carols |achieve 5854/2
		Go to Ironforge, use your Sweater to sing carols |achieve 5854/3
	step
		Click the presents under the tree on December 25th and receive
		Crashin' Thrashin' Racer
		Gain 25 Crashes with your Racer |achieve 1295 |goto Orgrimmar/1 49.5,78.0
	step
		Congratulations, you have earned the Merrymaker achievement!
		only if achieved(1374)
]])

------------------------
----- Hallow's End -----
------------------------

ZygorGuidesViewer:RegisterInclude("Hallow's_End_Quests",[[
	step
		talk Forsaken Commoner##19178
		accept A Season for Celebration##29400 |goto Undercity/0 63.3,47.6
		accept Masked Orphan Matron##11357 |goto Undercity/0 63.3,47.6
		|tip You may not be able to accept this quest.
	step
		talk Spoops##15309
		|tip He's up above the Undercity in the Ruins.
		accept Hallow's End Treats for Spoops!##8312 |goto Undercity/0 67.4,6.6
	step
		talk Darkcaller Yanka##15197
		turnin A Season for Celebration##29400 |goto Undercity/0 67.4,13.1
	step
		talk Candace Fenlow##53763
		accept A Friend in Need##29431 |goto 68.8,7.9
	step
		talk Innkeeper Norman##6741
		|tip Back underneath in the Undercity.
		accept Chicken Clucking for a Mint##8354 |goto Undercity/0 67.7,37.9
	step
		clicknpc Innkeeper Norman##6741
		Cluck like a Chicken for Innkeeper Norman |script DoEmote("CHICKEN") |q 8354/1 |goto 67.7,37.9
	step
		talk Innkeeper Norman##6741
		turnin Chicken Clucking for a Mint##8354 |goto 67.7,37.9
	step
		talk Kali Remik##11814
		accept Incoming Gumdrop##8358 |goto Orgrimmar/0 32.9,65.1
	step
		clicknpc Kali Remik##11814
		Make Train sounds for Kali Remik |script DoEmote("TRAIN") |q 8358/1 |goto 32.9,65.1
	step
		talk Kali Remik##11814
		turnin Incoming Gumdrop##8358 |goto 32.9,65.1
	step
		talk Innkeeper Gryshka##6929
		accept Flexing for Nougat##8359 |goto 53.6,78.8
	step
		clicknpc Innkeeper Gryshka##6929
		Flex for Innkeeper Gryshka |script DoEmote("FLEX") |q 8359/1 |goto 53.6,78.8
	step
		talk Innkeeper Gryshka##6929
		turnin Flexing for Nougat##8359 |goto 53.6,78.8
	step
		talk Edgar Goodwin##54141
		turnin A Friend in Need##29431 |goto Orgrimmar/0 54.4,77.6
		accept Missing Heirlooms##29415 |goto Orgrimmar/0 54.4,77.6
	step
		Find the Courier |q 29415/1 |goto Durotar/0 57.41,9.02
		|tip He's inside of the ship.
	step
		talk Hired Courier##54142
		turnin Missing Heirlooms##29415 |goto Durotar/0 57.4,9.0
		accept Fencing the Goods##29416 |goto Durotar/0 57.4,9.0
	step
		talk Auctioneer Drezmit##44866
		|tip Ask him about the suspicious crate.
		Follow the Thief's Trail |q 29416/1 |goto Orgrimmar/0 54.1,73.4
	step
		talk Auctioneer Drezmit##44866
		turnin Fencing the Goods##29416 |goto 54.1,73.4
		accept Shopping Around##29425 |goto 54.1,73.4
	step
		Wait and listen to the dialogue
		Investigate Droffers and Son |q 29425/1 |goto 58.0,48.0
	step
		talk Delian Sunshade##54146
		turnin Shopping Around##29425 |goto 58.0,48.4
		accept Taking Precautions##29426 |goto 58.0,48.4
	step
		click Blood Nettle##209059
		|tip These can be found all around this area.
		collect 5 Blood Nettle##71035 |q 29426/3 |goto 46.0,49.3
	step
		talk Kor'geld##3348
		buy 5 Crystal Vial##3371 |q 29426/2 |goto 55.2,45.9
	step
		talk Kithas##3346
		buy 2 Strange Dust##10940 |q 29426/1 |goto Orgrimmar/1 53.34,48.95
		|tip If she doesn't have any for sale, you will have to use the Auction House or disenchant low level gear.
	step
		talk Delian Sunshade##54146
		turnin Taking Precautions##29426 |goto 58.0,48.4
		accept The Collector's Agent##29427 |goto 58.0,48.4
	step
		talk Innkeeper Pala##6746
		accept Dancing for Marzipan##8360 |goto Thunder Bluff/0 45.8,64.7
	step
		clicknpc Innkeeper Pala##6746
		Dance for Innkeeper Pala |script DoEmote("DANCE") |q 8360/1 |goto 45.8,64.7
	step
		talk Innkeeper Pala##6746
		turnin Dancing for Marzipan##8360 |goto 45.8,64.7
	step
		talk Masked Orphan Matron##23973
		turnin Masked Orphan Matron##11357 |goto Durotar/0 52.6,41.2
		accept Fire Training##11361 |goto Durotar/0 52.6,41.2 |or
	step
		Click the Water Barrel
		|tip It looks like a huge bucket of water.
		collect Water Bucket##32971 |goto Durotar/0 49.16,44.48 |n
		Click the Ability Bar icon that appears at the middle of your screen
		|tip Use your Water Bucket on the burning scarecrows.
		Fight #5# Fires |q 11361/1 |goto 49.3,43.5
		Collect more Water Buckets from the Water Barrel at |goto 49.2,44.5
	step
		talk Masked Orphan Matron##23973
		turnin Fire Training##11361 |goto 52.6,41.2
	step
		Click the Large Jack-o'-Lantern
		|tip It's a burning pumpkin laying in the road.
		accept Smash the Pumpkin##12155 |goto 52.6,42.4
	step
		talk Masked Orphan Matron##23973
		turnin Smash the Pumpkin##12155 |goto 52.6,41.2
	step
		talk Spoops##15309
		|tip He's up above the Undercity in the Ruins.
		turnin Hallow's End Treats for Spoops!##8312 |goto Undercity 67.4,6.6
	step
		kill Unleashed Void##54114+
		|tip This is in the Ruins, above Undercity.
		Disrupt the Meeting |q 29427/1 |goto Tirisfal Glades 65.8,74.8
	step
		click Stolen Crate##267952
		turnin The Collector's Agent##29427 |goto 65.8,74.8
		accept What Now?##29428 |goto 65.8,74.8
	step
		talk Edgar Goodwin##54141
		turnin What Now?##29428 |goto Orgrimmar/0 54.4,77.6
	step
		click Edgar's Crate##209095
		accept The Creepy Crate##29429 |instant |goto 54.5,77.5
]])

ZygorGuidesViewer:RegisterInclude("Hallow's_End_Dailies",[[
	step
		talk Masked Orphan Matron##23973
		accept Stop the Fires!##11219 |goto Tirisfal Glades/0 60.91,53.58 |or
		accept "Let the Fires Come!"##12139 |goto Tirisfal Glades/0 60.91,53.58 |or
	step
		Click the Water Barrel
		|tip It looks like a huge bucket of water.
		collect Water Bucket##32971 |goto 61.02,53.64 |n
		Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		Put Out the Fires |q 11219/1 |goto 60.73,52.42
		Collect more Water Buckets from the Water Barrel here |goto 52.5,41.3
		|only if havequest(11219)
	step
		Click the Water Barrel
		|tip It looks like a huge bucket of water.
		collect Water Bucket##32971 |goto 61.02,53.64 |n
		Wait until the fires appear on the buildings in Razor Hill
		Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		Put Out the Fires |q 12139/1 |goto 60.73,52.42
		Collect more Water Buckets from the Water Barrel here |goto 60.73,52.42
		|only if havequest(12139)
	step
		Click the Large Jack-o'-Lantern
		|tip It's a burning pumpkin laying in the road.
		accept Smash the Pumpkin##12155 |goto 60.81,52.57
	step
		talk Masked Orphan Matron##23973
		You will only be able to accept 1 of the 2 daily quests
		turnin Stop the Fires!##11219 |goto 60.92,53.57
		turnin "Let the Fires Come!"##12139 |goto 60.92,53.57
		turnin Smash the Pumpkin##12155 |goto 60.92,53.57
	step
		talk Darkcaller Yanka##15197
		accept A Time to Build Up##29376 |goto Undercity 67.4,13.0
		accept A Time to Break Down##29377 |goto Undercity 67.4,13.0
	step
		click Bonfire##208198
		Use the Bonfire |q 29376/1 |goto 67.7,14.5
	step
		click Wickerman Ashes##180437
		Use the Wickerman Ashes |q 29376/2 |goto 67.7,14.5
	step
		talk Darkcaller Yanka##15197
		turnin A Time to Build Up##29376 |goto 67.3,13.1
	step
		talk Candace Fenlow##53763
		accept Clean Up in Undercity##29375 |goto 68.8,7.8
		accept Stink Bombs Away!##29374 |goto 68.8,7.8
	step
		All around Undercity:
		use Arcane Cleanser##70727
		|tip Use the Arcane Cleanser on Stink Bombs.
		|tip They look like orange mists all around Stormwind.
		Remove #10# Stink Bombs |q 29375/1
	step
		talk Candace Fenlow##53763
		|tip She is up above the Undercity in the Ruins.
		turnin Clean Up in Undercity##29375 |goto 68.8,7.9
	step
		talk Crina Fenlow##53764
		Tell her _"I'm ready to attack Stormwind!"_ |invehicle |goto 67.5,9.2
	step
		Use the _Toss Stink Bomb_ ability on your action bar all around Stormwind
		Drop #25# Stink Bombs |q 29374/1
		Click the _Return Home_ button on your action bar |outvehicle
	step
		talk Candace Fenlow##53763
		turnin Stink Bombs Away!##29374 |goto 68.8,7.8
	step
		Use the Dousing Agent in your Bags on the Wickerman when you fly in front of Stormwind |use Dousing Agent##68647
		Douse the Alliance's Wickerman |q 29377/1 |goto Elwynn Forest 33.6,48.2
	step
		talk Darkcaller Yanka##15197
		turnin A Time to Break Down##29377 |goto Undercity 67.4,13.0
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
// Kalimdor
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Durotar, Razor Hill |q 12361 |future |goto Durotar/0 51.54,41.58
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Orgrimmar, Valley of Strength |q 12366 |future |goto Orgrimmar/1 53.92,78.93
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Azshara, Bilgewater Harbor |q 28992 |future |goto Azshara/0 57.10,50.16
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Winterspring, Everlook |q 12400 |future |goto Winterspring/0 59.83,51.21
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Felwood, Whisperwind Grove |q 28994 |future |goto Felwood/0 44.58,28.98
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Ashenvale, Splintertree Post |q 12377 |future |goto Ashenvale/0 73.96,60.60
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Ashenvale, Silverwind Refuge |q 28953 |future |goto Ashenvale/0 50.25,67.27
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Ashenvale, Hellscream's Watch |q 28958 |future |goto Ashenvale/0 38.65,42.34
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Ashenvale, Zoram'gar Outpost |q 28989 |future |goto Ashenvale/0 13.00,34.10
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Stonetalon Mountains, Sun Rock Retreat |q 12378 |future |goto Stonetalon Mountains/0 50.39,63.79
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Stonetalon Mountains, Krom'gar Fortress |q 29009 |future |goto Stonetalon Mountains/0 66.50,64.19
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Barrens, Nozzlepot's Outpost |q 29003 |future |goto Northern Barrens/0 62.51,16.60
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Barrens, Grol'dom Farm |q 29002 |future |goto Northern Barrens/0 56.21,40.03
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Barrens, The Crossroads |q 12374 |future |goto Northern Barrens/0 49.51,57.91
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Barrens, Ratchet |q 12396 |future |goto Northern Barrens/0 67.33,74.66
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Thunder Bluff, Lower Rise |q 12367 |future |goto Thunder Bluff/0 45.62,64.91
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Mulgore, Bloodhoof Village |q 12362 |future |goto Mulgore/0 46.78,60.41
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Southern Barrens, Desolation Hold |q 29005 |future |goto Southern Barrens/0 40.70,69.31
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Southern Barrens, Hunter's Hill |q 29004 |future |goto Southern Barrens/0 39.29,20.10
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Desolace, Karnum's Glade |q 28993 |future |goto Desolace/0 56.72,50.12
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Desolace, Shadowprey Village |q 12381 |future |goto Desolace/0 24.08,68.29
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Feralas, Camp Ataya |q 28996 |future |goto Feralas/0 41.45,15.68
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Feralas, Stonemaul Hold |q 28998 |future |goto Feralas/0 51.97,47.64
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Desolace, Camp Mojache |q 12386 |future |goto Feralas/0 74.83,45.14
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Silithus, Cenarion Hold |q 12401 |future |goto Silithus/0 55.47,36.79
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Un'Goro Crater, Marshal's Stand |q 29018 |future |goto Un'Goro Crater/0 55.26,62.11
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Tanaris, Bootlegger Outpost |q 29014 |future |goto Tanaris/0 55.70,60.96
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Tanaris, Gadgetzan |q 12399 |future |goto Tanaris/0 52.56,27.10
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dustwallow Marsh, Mudsprocket |q 12398 |future |goto Dustwallow Marsh/0 41.86,74.09
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dustwallow Marsh, Brackenwall Village |q 12383 |future |goto Dustwallow Marsh/0 36.78,32.43
// Eastern Kingdoms
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in The Cape of Stranglethorn, Booty Bay |q 12397 |future |goto The Cape of Stranglethorn/0 40.91,73.73
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in The Cape of Stranglethorn, Hardwrench Hideaway |q 28969 |future |goto The Cape of Stranglethorn/0 35.04,27.22
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Stranglethorn Vale, Grom'gol Base Camp |q 12382 |future |goto Northern Stranglethorn/0 37.38,51.78
	step
		talk Zidormi##88206
		Tell her: "_Show me the Blasted Lands before the invasion_"
		Gain the _Time Travelling_ buff |havebuff Time Travelling##609811 |goto Blasted Lands/0 48.16,7.28 < 5 |walk
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Blasted Lands, Dreadmaul Hold |q 28959 |future |goto Blasted Lands/0 40.47,11.29
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Swamp of Sorrows, Stonard |q 12384 |future |goto Swamp of Sorrows/0 46.87,56.92
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Swamp of Sorrows, Bogpaddle |q 28967 |future |goto Swamp of Sorrows/0 71.65,14.09
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Badlands, Fuselight |q 28955 |future |goto Badlands/0 65.86,35.65
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Badlands, New Kargath |q 28957 |future |goto Badlands/0 18.36,42.73
	step
		click Candy Bucket##208144
		|tip It's on the top level of the tower.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Searing Gorge, Iron Summit |q 28965 |future |goto Searing Gorge/0 39.49,66.04
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Arathi Highlands, Hammerfall |q 12380 |future |goto Arathi Highlands/0 69.02,33.27
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in The Hinterlands, Revantusk Village |q 12387 |future |goto The Hinterlands/0 78.19,81.47
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Hinterlands, Hiri'watha Research Station |q 28971 |future |goto The Hinterlands/0 31.81,57.87
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Western Plaguelands, Andorhal |q 28987 |future |goto Western Plaguelands/0 48.28,63.65
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Eastern Plaguelands, Light's Hope Chapel |q 12402 |future |goto Eastern Plaguelands/20 40.69,90.47
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Ghostlands, Tranquillien |q 12373 |future |goto Ghostlands/0 48.67,31.91
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Eversong Woods, Fairbreeze Village |q 12365 |future |goto Eversong Woods/0 43.70,71.03
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Eversong Woods, Falconwing Square |q 12364 |future |goto 48.19,47.88
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Silvermoon, The Bazaar |q 12370 |future |goto Silvermoon City/0 67.58,72.91
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Silvermoon, The Royal Exchange |q 12369 |future |goto 79.43,57.66
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Undercity, The Trade Quarter |q 12368 |future |goto Undercity/0 67.75,37.41
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Tirisfal Glades, Brill |q 12363 |future |goto Tirisfal Glades/0 60.99,51.41
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Tirisfal Glades, The Bulwark |q 28972 |future |goto Tirisfal Glades/0 83.04,72.06
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Silverpine Forest, The Forsaken Rear Guard |q 28966 |future |goto Silverpine Forest/0 44.30,20.29
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Silverpine Forest, The Sepulcher |q 12371 |future |goto Silverpine Forest/0 46.45,42.90
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Hillsbrad Foothills, Tarren Mill |q 12376 |future |goto Hillsbrad Foothills/0 57.85,47.27
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Hillsbrad Foothills, Eastpoint Tower |q 28962 |future |goto Hillsbrad Foothills/0 60.26,63.74
// Outland
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Hellfire Peninsula, Thrallmar |q 12388 |goto Hellfire Peninsula/0 56.81,37.45
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Hellfire Peninsula, Falcon Watch |q 12389 |goto 26.89,59.47
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Shattrath City, Scryer's Tier |q 12404 |future |goto Shattrath City/0 56.31,81.95
		only if rep ('The Scryers')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Shattrath City, Aldor Rise |q 12404 |future |goto Shattrath City/0 28.23,49.07
		only if rep ('The Aldor')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Terokkar Forest, Stonebreaker Hold |q 12391 |goto Terokkar Forest/0 48.74,45.17
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Shadowmoon Valley, Shadowmoon Village |q 12395 |goto Shadowmoon Valley/0 30.27,27.70
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Shadowmoon Valley, Sanctum of the Stars |q 12409 |future |goto 56.37,59.82
		only if rep ('The Scryers')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Shadowmoon Valley, Altar of Sha'tar |q 12409 |future |goto 61.00,28.17
		only if rep ('The Aldor')>=Neutral
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Nagrand, Garadar |q 12392 |goto Nagrand/0 56.68,34.48
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Zangarmarsh, Zabra'jin |q 12390 |goto Zangarmarsh/0 30.62,50.87
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Zangarmarsh, Cenarion Refuge |q 12403 |future |goto Zangarmarsh/0 78.45,62.88
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Blade's Edge Mountains, Mok'Nathal Village |q 12394 |goto Blade's Edge Mountains/0 76.22,60.39
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Blade's Edge Mountains, Thunderlord Stronghold |q 12393 |goto 53.43,55.55
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Blade's Edge Mountains, Evergrove |q 12406 |future |goto 62.90,38.33
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Netherstorm, Area 52 |q 12407 |future |goto Netherstorm/0 32.02,64.44
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Netherstorm, The Stormspire |q 12408 |future |goto 43.31,36.10
// Northrend
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Borean Tundrea, Warsong Hold |q 13468 |future |goto Borean Tundra/0 41.71,54.40
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Borean Tundrea, Unu'pe |q 13460 |future |goto Borean Tundra/0 78.45,49.16
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Borean Tundrea, Taunka'le Village |q 13467 |future |goto Borean Tundra/0 76.67,37.47
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Borean Tundrea, Bor'gorok Outpost |q 13501 |future |goto Borean Tundra/0 49.74,9.98
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Sholazar Basin, Nesingwary Base Camp |q 12950 |future |goto Sholazar Basin/0 26.61,59.20
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Agmar's Hammer |q 13469 |future |goto Dragonblight/0 37.83,46.47
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Moa'ki Harbor |q 13459 |future |goto Dragonblight/0 48.12,74.66
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Venomspite |q 13470 |future |goto Dragonblight/0 76.82,63.28
	step
		click Candy Bucket##208144
		|tip It's on the bottom floor.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dragonblight, Wyrmrest Temple |q 13456 |future |goto Dragonblight/0 60.15,53.45
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dalaran, The Legerdemain Lounge |q 13463 |future |goto Dalaran/1 48.14,41.31
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dalaran, Sunreaver's Sanctuary |q 13474 |future |goto Dalaran/1 66.84,29.61
	step
		Enter The Underbelly here |goto Dalaran 34.7,45.5 < 15
		click Candy Bucket##208144
		|tip It's in the side room on the left.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Dalaran, The Underbelly |q 13472 |future |goto Dalaran/2 38.20,59.61
	step
		Leave The Underbelly |goto Dalaran/1 34.7,45.5 < 15
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Storm Peaks, K3 |q 13461 |future |goto The Storm Peaks/0 41.07,85.85
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Storm Peaks, Grom'arsh Crash Site |q 13548 |future |goto The Storm Peaks/0 37.09,49.51
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Storm Peaks, Bouldercrag's Refuge |q 13462 |future |goto The Storm Peaks/0 30.92,37.16
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Storm Peaks, Camp Tunka'lo |q 13471 |future |goto The Storm Peaks/0 67.65,50.68
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Zul'Drak, Zim'Torga |q 12940 |future |goto Zul'Drak/0 59.33,57.20
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Zul'Drak, The Argent Stand |q 12941 |future |goto Zul'Drak/0 40.87,66.04
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Grizzly Hills, Conquest Hold |q 12946 |future |goto Grizzly Hills/0 20.89,64.77
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Grizzly Hills, Camp Oneqwah |q 12947 |future |goto Grizzly Hills/0 65.36,47.00
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, Camp Winterhoof |q 13464 |future |goto Howling Fjord/0 49.44,10.75
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, Vengeance Landing |q 13466 |future |goto Howling Fjord/0 79.26,30.62
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, New Agamand |q 13465 |future |goto Howling Fjord/0 52.10,66.15
	step
		click Candy Bucket##208144
		|tip It's inside the underground inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Howling Fjord, Kamagua |q 13452 |future |goto Howling Fjord/0 25.44,59.82
// Cataclysm
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Tenebrous Cavern |q 28986 |goto Abyssal Depths/0 51.35,60.55
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Legion's Rest |q 28984 |goto Shimmering Expanse/0 51.48,62.39
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Silver Tide Hollow |q 28982 |future |goto Shimmering Expanse/0 49.18,41.87
	step
		click Candy Bucket##208144
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Vashj'ir, Deepmist Grotto |q 28981 |future |goto Kelp'thar Forest/0 63.50,60.16
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Deepholm, Temple of Earth |q 29020 |future |goto Deepholm/0 47.35,51.71
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Mount Hyjal, Nordrassil |q 28999 |future |goto Mount Hyjal/0 63.05,24.14
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Mount Hyjal, Shrine of Aviana |q 29001 |future |goto Mount Hyjal/0 42.68,45.71
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Mount Hyjal, Grove of Aessina |q 29000 |future |goto Mount Hyjal/0 18.63,37.32
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Twilight Highlands, Crushblow |q 28974 |future |goto Twilight Highlands 45.11,76.81
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Twilight Highlands, Bloodgulch |q 28973 |future |future |goto Twilight Highlands 53.40,42.85
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Twilight Highlands, The Krazzworks |q 28976 |future |goto Twilight Highlands 75.40,16.54
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Uldum, Ramkahen |q 29017 |future |goto Uldum/0 54.68,33.01
	step
		click Candy Bucket##208144
		|tip It's inside the inn.
		|use Handful of Treats##37586
		|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents.
		Visit the Candy Bucket in Uldum, Oasis of Vir'sar |q 29016 |future |goto Uldum/0 26.59,7.23
// End of Candy Bucket Achievements
	step
		You must be at least level 23 to complete this step:
		Use the Dungeon Finder to queue for The Headless Horseman
		collect Headless Horseman##23682 |n
		Complete the Bring Me The Head of... Oh Wait achievement |achieve 255
	step
		Use your Tricky Treats 5 times in a row quickly
		|use Tricky Treat##33226
		|tip You can get these by killing The Headless Horseman in the previous guide step, or from Hallow's End Candy Buckets.
		You will start puking :-)
		Complete the Out With It achievement |achieve 288
	step
		talk Chub##53757
		buy Tooth Pick##37604 |n
		Use your Tooth Pick |use Tooth Pick##37604
		Show off your sparkling smile by using a Tooth Pick |achieve 981 |goto Undercity 67.7,6.5
	step
		Use your Weighted Jack-o'-Lanterns on the following races: |use Weighted Jack-o'-Lantern##34068
		|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests. Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
		|tip The best place to complete this is in Dalaran, but it can be done anywhere in the world.
		Blood Elf |achieve 291/1
		Draenei |achieve 291/2
		Dwarf |achieve 291/3
		Gnome |achieve 291/4
		Goblin |achieve 291/5
		Human |achieve 291/6
		Night Elf |achieve 291/7
		Orc |achieve 291/8
		Tauren |achieve 291/9
		Troll |achieve 291/10
		Undead |achieve 291/11
		Worgen |achieve 291/12
	step
		Have other players use Hallowed Wands on you while in a party to transform into the following:
		Transform into a Bat |achieve 283/1
		Transform into a Ghost |achieve 283/2
		Transform into a Leper Gnome |achieve 283/3
		Transform into a Ninja |achieve 283/4
		Transform into a Pirate |achieve 283/5
		Transform into a Skeleton |achieve 283/6
		Transform into a Wisp |achieve 283/7
	step
		talk Chub##53757
		buy 1 Sinister Squashling##33154 |n
		buy 1 Hallowed Helm##33292 |n
		Use the Sinister Squashling |use Sinister Squashling##33154
		Obtain a Sinister Squashling pet |achieve 292/1 |goto Undercity 67.7,6.5
		Obtain a Hallowed Helm |achieve 292/2 |goto Undercity 67.7,6.5
	step
		Use your G.N.E.R.D.S. |use G.N.E.R.D.S.##37583
		|tip Use them every 30 minutes while PvPing to keep the buff on. If you don't have the buff active while killing players, you won't get credit.
		Do any type of PvP of your choice |tip You must be killing players that give you honor.
		Earn 10 honorable kills while under the influence of the G.N.E.R.D. buff |achieve 1261
	step
		Congratulations, you are now one of The Hallowed!
]])
------------------------------
----- Love is in the Air -----
------------------------------

ZygorGuidesViewer:RegisterInclude("LiitA_Main_Questline",[[
	step
		talk Detective Snap Snagglebolt##37172
		accept Something Stinks##24536 |goto Orgrimmar 50.8,75.2
	step
		Use Snagglebolt's Air Analyzer on pink glowing Orgrimmar Grunts around this area |use Snagglebolt's Air Analyzer##50131
		|tip Guards eligible will also have a "Heavily Perfumed" debuff.
		talk Orgrimmar Grunt##3296
		Analyze #6# Perfumed Guards |q 24536/1 |goto 51.9,76.3
	step
		talk Detective Snap Snagglebolt##37172
		turnin Something Stinks##24536 |goto 50.8,75.2
		accept Pilfering Perfume##24541 |goto 50.8,75.2
	step
		Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24541 |goto Durotar 47.7,11.8
		|tip Run out of Orgrimmar and go to your Immidiate left.
		|tip Walk by the boxes in the corner and get the package.
	step
		Return to Orgrimmar |goto Orgrimmar/1 49.6,94.7 < 20
		Return the Crown Chemical Co. Package |condition ZGV.questsbyid[24541] and ZGV.questsbyid[24541].complete |q 24541 |goto Orgrimmar 50.8,75.2
		|tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
		If you lose your disguise, ask the Detective for another one and repeat the run.
	step
		Return the Crown Chemical Co. Package
		|tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
		talk Detective Snap Snagglebolt##37172
		turnin Pilfering Perfume##24541 |goto Orgrimmar 50.8,75.2
		accept Snivel's Sweetheart##24850 |goto Orgrimmar 50.8,75.2
	step
		talk Roka##38328
		|tip She's in "Gotri's Traveling Gear" on the lower level of The Drag.
		turnin Snivel's Sweetheart##24850 |goto 57.6,60.8
		accept Hot On The Trail##24851 |goto 57.6,60.8
	step
		Search the Orgrimmar Auction House |q 24851/2 |goto 53.8,73.5
	step
		Search the Orgrimmar Bank |q 24851/1 |goto 48.7,83.6
	step
		Search the Orgrimmar Barber Shop |q 24851/3 |goto 40.1,60.5
	step
		talk Roka##38328
		|tip She's in "Gotri's Traveling Gear" on the lower level of The Drag.
		turnin Hot On The Trail##24851 |goto 57.6,60.8
		accept A Friendly Chat...##24576 |goto 57.6,60.8
	step
		talk Snivel Rustrocket##37715
		Tell him: _"I have a rocket here with your mark on it, Snivel."_
		collect Snivel's Ledger##49915 |q 24576/1 |goto 51.6,56.7
	step
		talk Detective Snap Snagglebolt##37172
		turnin A Friendly Chat...##24576 |goto Orgrimmar 50.8,75.2
]])

ZygorGuidesViewer:RegisterInclude("LiitA_Dailies",[[
	step
		talk Detective Snap Snagglebolt##37172
		|tip You have to be at least level 20 to accept a quest from him
		--accept Crushing the Crown##24638 |goto Orgrimmar,50.8,75.3 |only if level >= 5 and level < 14 |or
		--accept Crushing the Crown##24645 |goto Orgrimmar,50.8,75.3 |only if level >= 14 and level < 23 |or
		--accept Crushing the Crown##24647 |goto Orgrimmar,50.8,75.3 |only if level >= 23 and level < 32 |or
		--accept Crushing the Crown##24648 |goto Orgrimmar,50.8,75.3 |only if level >= 32 and level < 41 |or
		--accept Crushing the Crown##24649 |goto Orgrimmar,50.8,75.3 |only if level >= 41 and level < 51 |or
		--accept Crushing the Crown##24650 |goto Orgrimmar,50.8,75.3 |only if level >= 51 and level < 61 |or
		--accept Crushing the Crown##24651 |goto Orgrimmar,50.8,75.3 |only if level >= 61 and level < 71 |or
		--accept Crushing the Crown##24652 |goto Orgrimmar,50.8,75.3 |only if level >= 71 and level <81 |or
		--accept Crushing the Crown##28935 |goto Orgrimmar,50.8,75.3 |only if level >= 81 |or
		accept Crushing the Crown##44546 |goto Orgrimmar 50.8,75.3 |only if level >= 20
	step
		talk Public Relations Agent##37675
		|tip Only one of these daily quests will be available at any given time:
		accept A Cloudlet of Classy Cologne##24635 |goto 53.1,77.2 |or
		accept A Perfect Puff of Perfume##24629 |goto 53.1,77.2 |or
		accept Bonbon Blitz##24636 |goto 53.1,77.2 |or
	step
		talk Kwee Q. Peddlefeet##38042
		accept A Gift for the Warchief##24612 |goto 53.0,76.8
	step
		Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
		Give #10# Cologne Samples |q 24635/1 |goto Orgrimmar/1 51.7,77.8
		only if havequest(24635)
	step
		Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
		Give #10# Perfume Samples |q 24629/1 |goto Orgrimmar/1 51.7,77.8
		only if havequest(24629)
	step
		Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
		Give #10# Chocolate Samples |q 24636/1 |goto Orgrimmar/1 51.7,77.8
		only if havequest(24636)
	step
		talk Public Relations Agent##37675
		|tip Only one of these daily quests will be available at any given time:
		turnin A Cloudlet of Classy Cologne##24635 |goto 53.1,77.2
		turnin A Perfect Puff of Perfume##24629 |goto 53.1,77.2
		turnin Bonbon Blitz##24636 |goto 53.1,77.2
	stickystart "Crown_Chemical"
	step
		Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		Destroy a Chemical Wagon |q 44546/1 |goto Silverpine Forest/0 45.70,73.49
		|only if havequest(44546)
	step
		click Love Potion Recipe
		accept Follow the Recipe##44559 |goto Silverpine Forest/0 45.26,73.88 
	step
		Enter the building |goto Silverpine Forest/0 46.23,73.45 < 7 |walk
		Run up the stairs |goto 46.65,73.63 < 7 |walk
		click 1st Fragment
		Collected 1st Fragment |q 44559/1 |goto Silverpine Forest/0 46.26,73.50
		|tip It's upstairs inside of the building.
		|only if havequest(44559)
	step
		Enter the building |goto 44.98,71.71 < 7 |walk
		click Recipe Fragment##6478
		Collected 2nd Fragment |q 44559/2 |goto 45.15,71.51
		|only if havequest(44559)
	step
		click Recipe Fragment##6478
		Collected 3rd Fragment |q 44559/3 |goto Silverpine Forest/0 42.70,71.15
		|only if havequest(44559)
	step
	label "Crown_Chemical"
		kill Crown Supply Guard##114278+, Test Subject##116285+, Exploited Crown Intern##114279+,
		Slay 12 Crown Chemical Co. Employees |q 44546/2 |goto Silverpine Forest/0 45.78,73.39
		|only if havequest(44546)
	step
		talk Detective Snap Snagglebolt##37172
		turnin Crushing the Crown##44546 |goto Orgrimmar 50.8,75.3
		turnin Follow the Recipe##44559 |goto 50.8,75.3
	step
		Killing any creature that rewards experience will _Drop Charms_
		|tip Creatures with levels showing Green, Yellow, Orange or Red.
		collect 40 Lovely Charm##49655 |n
		Create #4# Lovely Charm Bracelets |use Lovely Charm##49655
		collect 4 Lovely Charm Bracelet##49916
	step
	label "charm"
		Enter the building |goto Orgrimmar/1 49.9,75.6 < 10 |walk
		talk High Overlord Saurfang##14720
		turnin A Gift for the Warchief##24612 |goto Orgrimmar 48.1,70.5
	step
		talk Kwee Q. Peddlefeet##38042
		accept A Gift for the High Chieftain##24614 |goto Thunder Bluff 44.0,52.6
	step
		Follow the path |goto 52.1,64.4 < 15
		Follow the path |goto 57.0,44.2 < 15
		Go up the stairs |goto 66.1,39.9 < 15
		Ride the elevator up |goto 60.3,44.0 < 15
		Follow the path |goto Undercity/0 64.8,41.5 < 15
		talk Baine Bloodhoof##36648
		turnin A Gift for the High Chieftain##24614 |goto Thunder Bluff 60.3,51.7
	step
		talk Kwee Q. Peddlefeet##38042
		|tip He is in the Ruins of Lordaeron.
		accept A Gift for the Banshee Queen##24613 |goto Undercity 66.5,38.6
	step
		Follow the path |goto Undercity/0 65.9,32.8 < 15
		Follow the path |goto 65.2,42.1 < 15
		Ride the elevator down |goto 61.7,44.0 < 15
		Jump down to the bridge |goto 63.9,47.0 < 15
		Follow the path |goto Undercity/0 65.9,60.9 < 20
		Follow the path |goto 51.9,64.5 < 15
		Follow the path |goto Undercity/0 46.3,84.1 < 15
		talk Lady Sylvanas Windrunner##10181
		turnin A Gift for the Banshee Queen##24613 |goto Undercity 58.1,91.8
	step
		talk Kwee Q. Peddlefeet##38042
		accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City 64.4,66.5
	step
		talk Lor'themar Theron##16802
		turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City 53.8,20.2
]])

ZygorGuidesViewer:RegisterInclude("LiitA_Achievements",[[
		You will need Love Tokens in order to purchase items from vendors in this guide section.
		|tip You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section.
		confirm always
	step
		talk Lovely Merchant##37674
		buy Bag of Heart Candies##21813 |n
		use Bag of Heart Candies##21813
		Get the 8 different types of Heart Candy:
		Be Mine! |collect 1 Heart Candy##21816 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701,1)
		I'll follow you all around Azeroth. |collect 1 Heart Candy##21818 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701,2)
		All yours. |collect 1 Heart Candy##21819 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701,3)
		I'm all yours! |collect 1 Heart Candy##21821 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701,4)
		Hot Lips. |collect 1 Heart Candy##21823 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701,5)
		You're Mine! |collect 1 Heart Candy##21822 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701,6)
		You're the best! |collect 1 Heart Candy##21820 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701,7)
		I LOVE YOU |collect 1 Heart Candy##21817 |goto Orgrimmar 53.1,77.0 |only if not achieved(1701.8)
	step
		Eat the 8 different type of Heart Candy:
		Be Mine! |achieve 1701/1 |use 1 Heart Candy##21816
		I'll follow you all around Azeroth. |achieve 1701/2 |use 1 Heart Candy##21818
		All yours. |achieve 1701/3 |use 1 Heart Candy##21819
		I'm all yours! |achieve 1701/4 |use 1 Heart Candy##21821
		Hot Lips. |achieve 1701/5 |use 1 Heart Candy##21823
		You're Mine! |achieve 1701/6 |use 1 Heart Candy##21822
		You're the best! |achieve 1701/7 |use 1 Heart Candy##21820
		I LOVE YOU |achieve 1701/8 |use 1 Heart Candy##21817
	step
		talk Lovely Merchant##37674
		buy 10 Silver Shafted Arrow##22200 |n
		Use your Silver Shafted Arrows on 10 players inside Orgrimmar |use Silver Shafted Arrow##22200 |goto 53.1,77.0
		Shoot 10 Players with the Silver Shafted Arrow |achieve 1188
	step
		talk Lovely Merchant##37674
		buy 1 Box of Chocolates##49909 |n
		Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
		Eat each type of chocolate:
		Congratulations! You have completed the achievement for this step |condition not default |only if default
		Sweet Surprise |achieve 1702/3 |use Sweet Surprise##22239 |goto 53.1,77.0
		Very Berry Cream |achieve 1702/4 |use Very Berry Cream##22238 |goto 53.1,77.0
		Buttermilk Delight |achieve 1702/1 |use Buttermilk Delight##22236 |goto 53.1,77.0
		|tip Save the remaining Buttermilk Delights for a later achievement.
		Dark Desire |achieve 1702/2 |use Dark Desire##22237 |goto 53.1,77.0
	step
		talk Lovely Merchant##37674
		buy 10 Love Rocket##34258 |n
		Spam use your Love Rockets |use Love Rocket##34258 |goto 53.1,77.0
		Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696
	step
		talk Lovely Merchant##37674 |goto 53.1,77.0
		Congratulations! You have completed the achievements for this step |condition not default |only if default
		buy 15 Handful of Rose Petals##22218 |only if not achieved(1699) |condition itemcount(22218)>=15
		buy 1 Romantic Picnic Basket##34480 |only if not achieved(1291) |condition itemcount(34480)>=1
		buy 1 "VICTORY" Perfume##49856 |only if not achieved(1280) |condition itemcount(49856)>=1
		buy 5 Love Fool##22261 |only if not achieved(1704) |condition itemcount(22261)>=5
	step
		talk Barkeep Morag##5611 |goto 54.8,78.0
		Congratulations! You have completed the achievements for this step |condition not default |only if default
		buy 6 Cup of Frog Venom Brew##44573 |only if not achieved(1280) |condition itemcount(44573)>=6
	step
		Use your Handful of Rose Petals on the follow race/class combinations: |use Handful of Rose Petals##22218
		|tip Save any extra Handfuls of Rose Petals you have, you'll need one later.
		We will direct you to Orgrimmar, but you can look wherever you choose to find the classes you need.
		Gnome Warlock |achieve 1699/1 |goto Orgrimmar/1 52.0,76.0
		Orc Death Knight |achieve 1699/2 |goto Orgrimmar/1 52.0,76.0
		Human Death Knight |achieve 1699/3 |goto Orgrimmar/1 52.0,76.0
		Night Elf Priest |achieve 1699/4 |goto Orgrimmar/1 52.0,76.0
		Orc Shaman |achieve 1699/5 |goto Orgrimmar/1 52.0,76.0
		Tauren Druid |achieve 1699/6 |goto Orgrimmar/1 52.0,76.0
		Undead Warrior |achieve 1699/7 |goto Orgrimmar/1 52.0,76.0
		Troll Rogue |achieve 1699/8 |goto Orgrimmar/1 52.0,76.0
		Blood Elf Mage |achieve 1699/9 |goto Orgrimmar/1 52.0,76.0
		Draenei Paladin |achieve 1699/10 |goto Orgrimmar/1 52.0,76.0
		Dwarf Hunter |achieve 1699/11 |goto Orgrimmar/1 52.0,76.0
		For the Alliance races, you can either go to Dalaran or Vale of Eternal Blossoms. While doing your dailies keep an eye out for the races you need.
		only if not achieved(1699)
	step
		In Dalaran:
		Find a player to have a picnic with you
		Use your Romantic Picnic Basket |use Romantic Picnic Basket##34480
		While having a picnic, use your Buttermilk Delight |use Buttermilk Delight##22236
		Enjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic |achieve 1291
	step
		Go to Wintergrasp in Northrend:
		Use your Love Fool anywhere inside Wintergrasp |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/1
		only if not achieved(1704)
	step
		Do the following exactly in order from top to bottom in the step:
		Use all 6 of your Cups of Frog Venom Brew to get Completely Smashed |use Cup of Frog Venom Brew##44573
		Use your "VICTORY" Perfume |use "VICTORY" Perfume##49856
		Use your Handful of Rose Petals on Jeremiah Payson |use Handful of Rose Petals##22218 |achieve 1280/2 |goto Undercity,67.6,44.1
		Kiss Jeremiah Payson |script DoEmote("KISS") |achieve 1280/1 |goto Undercity,67.6,44.1
		only if not achieved(1280)
	step
		Go to the Gurubashi Arena in The Cape of Stranglethorn:
		|tip The Cape of Stranglethorn is the southern-most zone on the Eastern Kingdoms continent.
		Use your Love Fool anywhere inside the Gurubashi Arena |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/2
		only if not achieved(1704)
	step
		Enter the Arathi Basin PvP Battleground:
		Use your Love Fool inside the Blacksmith subzone inside Arathi Basin |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/3
		only if not achieved(1704)
	step
		Enter the Culling of Stratholme dungeon:
		Use your Love Fool anywhere inside the Culling of Stratholme dungeon |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/4
		only if not achieved(1704)
	step
		Enter the Naxxramas raid:
		Use your Love Fool anywhere inside the Naxxramas raid |use Love Fool##22261
		Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/5
		only if not achieved(1704)
	step
		Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.
		Kill the mobs until you collect 120 Lovely Charms.
		|tip You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		collect 120 Lovely Charm##49655 |n
		Use your Lovely Charms to create 12 Lovely Charm Bracelets |use Lovely Charm##49655
		Create 12 Lovely Charm Bracelets |achieve 260
	step
		Kill these certain bosses in any of the following dungeons:
		|tip You can enter either Normal or Heroic difficulty, it doesn't matter.
		Drahga Shadowburner in Grim Batol:
		Corla, Herald of Twilight in Blackrock Caverns:
		High Priestess Azil in The Stonecore:
		Admiral Ripsnarl in Deadmines: And
		Lord Godfrey in Shadowfang Keep
		Get either of these 2 items as a random drop from these bosses:
		collect 1 Bouquet of Red Roses##22206 |n
		collect 1 Bouquet of Ebon Roses##44731 |n
		Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703
	step
		Congratulations!
		You have earned the "Fool For Love!" Achievement.
]])

--------------------------
----- Lunar Festival -----
--------------------------

ZygorGuidesViewer:RegisterInclude("Lunar_Festival_Main_Quests",[[
	step
		talk Lunar Festival Herald##15891
		accept The Lunar Festival##8873 |goto Orgrimmar 49.9,81.2
	step
		talk Lunar Festival Harbinger##15895
		turnin The Lunar Festival##8873 |goto 49.08,55.79
		accept Lunar Fireworks##8867 |goto 49.08,55.79
	step
		talk Lunar Festival Vendor##47897
		buy 8 Small Blue Rocket##21558 |condition itemcount(21558) >= 8 |goto 48.66,56.99
		buy 2 Blue Rocket Cluster##21571 |condition itemcount(21571) >= 2 |goto 48.66,56.99
		only if not completedq(8867)
	step
		use Small Blue Rocket##21558
		use Blue Rocket Cluster##21571
		Fire #8# Lunar Fireworks |q 8867/1 |goto 48.76,57.00
		|tip The firework launchers are large single-barrel tubes in the Mystic Ward pool.
		Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto 48.76,57.00
		|tip The cluster launchers are large quad-barrel tubes in the Mystic Ward pool.
	step
		talk Lunar Festival Harbinger##15895
		turnin Lunar Fireworks##8867 |goto 49.11,55.85
		accept Valadar Starsong##8883 |goto 49.11,55.85
	step
		use Lunar Festival Invitation##21711 |goto Orgrimmar/1 49.11,54.72 < 5
		|tip Use the Lunar Festival Invitation while standing in the beam of light.
		Teleport to Moonglade |goto Moonglade/0 36.6,58.6 |q 8883
	step
		talk Valadar Starsong##15864
		turnin Valadar Starsong##8883 |goto Moonglade 53.6,35.3
]])

ZygorGuidesViewer:RegisterInclude("Lunar_Festival_Elder_Paths",[[
	// Eastern Kingdom
	step
		talk Elder Darkcore##15564
		accept Darkcore the Elder##8648 |instant |goto Undercity 66.6,38.2
	step
		talk Elder Obsidian##15561
		accept Obsidian the Elder##8645 |instant |goto Silverpine Forest 45.0,41.1
	step
		talk Elder Graveborn##15568
		accept Graveborn the Elder##8652 |instant |goto Tirisfal Glades 61.9,53.9
	step
		Enter the cave |goto Western Plaguelands/0 65.01,38.72 < 7 |walk
		talk Elder Meadowrun##15602 |indoors The Weeping Cave
		accept Meadowrun the Elder##8722 |instant |goto Western Plaguelands 63.5,36.1 |indoors The Weeping Cave
	step
		talk Elder Moonstrike##15594
		|tip She is on the top of this broken building.
		accept Moonstrike the Elder##8714 |instant |goto Western Plaguelands 69.2,73.4
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
		talk Elder Snowcrown##15566
		accept Snowcrown the Elder##8650 |instant |goto Eastern Plaguelands 75.7,54.6
	step
		talk Elder Windrun##15592
		accept Windrun the Elder##8688 |instant |goto Eastern Plaguelands 35.6,68.8
	step
		talk Elder Highpeak##15559
		accept Highpeak the Elder##8643 |instant |goto The Hinterlands 50.0,48.0
	step
		talk Elder Darkfeather##55218
		accept Darkfeather the Elder##29736 |instant |goto Twilight Highlands 51.9,33.1
	step
		talk Elder Firebeard##55219
		accept Firebeard the Elder##29737 |instant |goto Twilight Highlands 50.9,70.5
	step
		talk Elder Silvervein##15558
		accept Silvervein the Elder##8642 |instant |goto Loch Modan 33.3,46.5
	step
		talk Elder Bronzebeard##15871
		accept Bronzebeard the Elder##8866 |instant |goto Ironforge 28.1,17.0
		|tip If you die trying to leave Ironforge, just resurrect at the spirit healer you get sent to.
	step
		talk Elder Goldwell##15569
		accept Goldwell the Elder##8653 |instant |goto Dun Morogh 53.9,49.9
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
		accept Ironband the Elder##8651 |instant |goto Searing Gorge 21.3,79.1
	step
		talk Elder Dawnstrider##15585
		accept Dawnstrider the Elder##8683 |instant |goto Burning Steppes/0 52.4,24.0
	step
		talk Elder Rumblerock##15557
		accept Rumblerock the Elder##8636 |instant |goto 70.1,45.4
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
		talk Elder Hammershout##15562
		accept Hammershout the Elder##8646 |instant |goto Elwynn Forest 34.6,50.4
		|tip If you die trying to leave Stormwind City, just resurrect at the spirit healer you get sent to.
	step
		talk Elder Stormbrow##15565
		accept Stormbrow the Elder##8649 |instant |goto Elwynn Forest 39.8,63.7
	step
		talk Elder Skychaser##15577
		accept Skychaser the Elder##8675 |instant |goto Westfall 56.6,47.1
	step
		Enter The Temple of Atal'Hakkar |goto The Temple of Atal'Hakkar/1 50.0,15.8 < 10000
		talk Elder Starsong##15593
		accept Starsong the Elder##8713 |goto The Temple of Atal'Hakkar/1 62.9,34.4
	step
		Leave The Temple of Atal'Hakkar |goto Swamp of Sorrows 76.00,45.27 < 10 |walk
		talk Zidormi##88206
		Tell her _"Show me the Blasted Lands before the invasion."_ 
		Gain the Time Traveling buff |havebuff Time Travelling##609811 |goto Blasted Lands/0 48.1,7.3
		|only if havequest(34398) or completedq(34398)
	step
		talk Elder Bellowrage##15563
		accept Bellowrage the Elder##8647 |instant |goto Blasted Lands 54.3,49.5 
	step
		talk Elder Starglade##15596
		accept Starglade the Elder##8716 |instant |goto Northern Stranglethorn 71.0,34.3
	step
		talk Elder Winterhoof##15576
		accept Winterhoof the Elder##8674 |instant |goto The Cape of Stranglethorn 40.0,72.5
	step
		talk Elder Moonlance##55228
		accept Moonlance the Elder##29738 |instant |goto Shimmering Expanse 57.3,86.2
	// Kalimdor
	step
		talk Elder Darkhorn##15579
		accept Darkhorn the Elder##8677 |instant |goto Orgrimmar 52.3,60.0
	step
		talk Elder Skygleam##15600
		accept Skygleam the Elder##8720 |instant |goto Azshara 64.7,79.3
	step
		talk Elder Stonespire##15574
		accept Stonespire the Elder##8672 |instant |goto Winterspring 60.0,49.9
	step
		talk Elder Brightspear##15606
		accept Brightspear the Elder##8726 |instant |goto 53.2,56.6
	step
		talk Elder Evershade##55227
		accept Evershade the Elder##29740 |instant |goto Mount Hyjal 62.5,22.8
	step
		talk Elder Windsong##55224
		accept Windsong the Elder##29739 |instant |goto 26.7,62.0
	step
		talk Elder Nightwind##15603
		accept Nightwind the Elder##8723 |instant |goto Felwood 38.4,52.9
	step
		talk Elder Starweave##15601
		accept Starweave the Elder##8721 |instant |goto Darkshore 49.5,18.9
	step
		talk Elder Bladeleaf##15595
		accept Bladeleaf the Elder##8715 |instant |goto Teldrassil 56.9,53.1
	step
		talk Elder Bladeswift##15598
		accept Bladeswift the Elder##8718 |instant |goto Darnassus 39.19,31.87
	step
		talk Elder Riversong##15605
		accept Riversong the Elder##8725 |instant |goto Ashenvale 35.4,48.9
	step
		talk Elder Moonwarden##15597
		accept Moonwarden the Elder##8717 |instant |goto Northern Barrens 48.5,59.3
	step
		talk Elder Windtotem##15582
		accept Windtotem the Elder##8680 |instant |goto Northern Barrens 68.4,70.0
	step
		talk Elder Runetotem##15572
		accept Runetotem the Elder##8670 |instant |goto Durotar 53.2,43.6
	step
		talk Elder High Mountain##15588
		accept High Mountain the Elder##8686 |instant |goto Southern Barrens/0 41.59,47.46
	step
		talk Elder Bloodhoof##15575
		accept Bloodhoof the Elder##8673 |instant |goto Mulgore 48.5,53.2
	step
		talk Elder Ezra Wheathoof##15580
		accept Wheathoof the Elder##8678 |instant |goto Thunder Bluff 73.0,23.3
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
		accept Mistwalker the Elder##8685 |instant |goto Feralas 62.6,31.1
	step
		talk Elder Grimtotem##15581
		accept Grimtotem the Elder##8679 |instant |goto Feralas 76.7,37.9
	step
		talk Elder Skyseer##15584
		accept Skyseer the Elder##8682 |instant |goto Thousand Needles 46.3,51.0
	step
		talk Elder Morningdew##15604
		accept Morningdew the Elder##8724 |instant |goto Thousand Needles 77.1,75.6
	step
		talk Elder Dreamseer##15586
		accept Dreamseer the Elder##8684 |instant |goto Tanaris 51.4,28.8
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
		talk Elder Ragetotem##15573
		accept Ragetotem the Elder##8671 |instant |goto Tanaris 37.2,79.1
	step
		talk Elder Menkhaf##55211
		accept Menkhaf the Elder##29742 |instant |goto Uldum 65.5,18.7
	step
		talk Elder Thunderhorn##15583
		accept Thunderhorn the Elder##8681 |instant |goto Un'Goro Crater 50.4,76.2
	step
		talk Elder Sekhemi##55210
		accept Sekhemi the Elder##29741 |instant |goto Uldum 31.6,63.0
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Gain the Time Travelling buff |havebuff Time Travelling##609811 |goto Silithus/0 78.93,21.97
		|only if completedq(49015)
	step
		talk Elder Bladesing##15599
		accept Bladesing the Elder##8719 |instant |goto Silithus 53.0,35.5
	step
		talk Elder Primestone##15570
		accept Primestone the Elder##8654 |instant |goto 30.8,13.3
	// Northrend
	step
		talk Elder Pamuya##30371
		accept Pamuya the Elder##13029 |instant |goto Borean Tundra 42.9,49.6
	step
		talk Elder Sardis##30348
		accept Sardis the Elder##13012 |instant |goto 59.1,65.6
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
		Enter Drak'Tharon Keep |goto |goto Drak'Tharon Keep/1 29.4,81.0 < 1000
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
		accept Yurauk the Elder##13066 |goto Halls of Stone 29.4,62.1
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
	step
		talk Lunar Festival Harbinger##15895
		Tell them _"I'd like a new invitation to the Lunar Festival."_
		collect Lunar Festival Invitation##21711 |goto Orgrimmar 52.4,58.5
	step
		Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711 |goto Orgrimmar 52.4,57.4 < 5
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
	step
		talk Stranglethorn Vale Flame Keeper##25920
		accept Honor the Flame##11837 |goto The Cape of Stranglethorn 50.4,70.4 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11761 |goto 51.8,67.4 |instant
	step
		talk Northern Stranglethorn Vale Flame Keeper##51582
		accept Honor the Flame##28924 |goto Northern Stranglethorn 40.6,50.9 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28910 |goto 51.7,63.3 |instant
	step
		talk Zidormi##88206
		Tell her _"Show me the Blasted Lands before the invasion."_
		Go Back in Time |havebuff Interface\Icons\spell_mage_altertime |goto Blasted Lands/0 48.1,7.3 |future |q 11737
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11737 |goto Blasted Lands 55.2,15.3 |instant
	step
		talk Blasted Lands Flame Keeper##51603
		accept Honor the Flame##28930 |goto Blasted Lands 46.2,13.8 |instant
	step
		talk Swamp of Sorrows Flame Keeper##25941
		accept Honor the Flame##11857 |goto Swamp of Sorrows 76.3,13.8 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28916 |goto 70.3,14.4 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11743 |goto Duskwood 73.4,55.0 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11581 |goto Westfall 45.1,62.3 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11745 |goto Elwynn Forest 43.1,63.0 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11751 |goto Redridge Mountains 24.5,53.8 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11739 |goto Burning Steppes 68.7,60.1 |instant
	step
		talk Burning Steppes Flame Keeper##25927
		accept Honor the Flame##11844 |goto 51.1,29.2 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28912 |goto Badlands 18.7,56.0 |instant
	step
		talk Badlands Flame Keeper##25925
		accept Honor the Flame##11842 |goto 23.1,37.4 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11749 |goto Loch Modan 32.4,40.2 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11742 |goto Dun Morogh 53.6,44.8 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11757 |goto Wetlands 13.2,47.1 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11732 |goto Arathi Highlands 44.6,46.1 |instant
	step
		talk Arathi Flame Keeper##25923
		accept Honor the Flame##11840 |goto 69.3,42.6 |instant
	step
		talk Hillsbrad Flame Keeper##25935
		accept Honor the Flame##11853 |goto Hillsbrad Foothills 54.7,50.1 |instant
	step
		talk Silverpine Forest Flame Keeper##25939
		accept Honor the Flame##11584 |goto Silverpine Forest 49.6,38.2 |instant
	step
		talk Eversong Woods Flame Keeper##25931
		accept Honor the Flame##11848 |goto Eversong Woods 46.4,50.6 |instant
	step
		talk Ghostlands Flame Keeper##25933
		accept Honor the Flame##11850 |goto Ghostlands 46.9,26.3 |instant
	step
		talk The Hinterlands Flame Keeper##25944
		accept Honor the Flame##11860 |goto The Hinterlands 76.7,75.0 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11755 |goto 14.5,49.9 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11756 |goto Western Plaguelands 43.6,82.5 |instant
	step
		talk Western Plaguelands Flame Keeper##51604
		accept Honor the Flame##28931 |goto Western Plaguelands 29.2,57.4 |instant
	step
		talk Tirisfal Glades Flame Keeper##25946
		accept Honor the Flame##11862 |goto Tirisfal Glades 57.2,51.7 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Kalimdor",[[
	step
		talk Mulgore Flame Keeper##25936
		accept Honor the Flame##11852  |goto Mulgore 51.8,59.3 |instant
	step
		talk Southern Barrens Flame Keeper##51587
		accept Honor the Flame##28927 |goto Southern Barrens,40.9,67.8 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28913 |goto 48.3,72.4 |instant
	step
		talk Dustwallow Marsh Flame Keeper##25930
		accept Honor the Flame##11847 |goto Dustwallow Marsh 33.4,30.9 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11744 |goto 62.1,40.3 |instant
	step
		talk Tanaris Flame Keeper##25921
		accept Honor the Flame##11838 |goto Tanaris 49.8,27.9 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11762 |goto 52.7,30.1 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28921 |goto Un'Goro Crater 60.0,62.9 |instant
	step
		talk Un'Goro Flame Keeper##51607
		accept Honor the Flame##28933 |goto Un'Goro Crater 56.3,66.3 |instant
	step
	label "Time_Travel_On"
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Gain the Time Travelling Buff |havebuff Time Travelling##609811 |goto Silithus/0 78.93,21.97
		|only if completedq(49015)
	step
		talk Silithus Flame Keeper##25919
		accept Honor the Flame##11836 |goto Silithus,50.9,41.3 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11760 |goto 60.6,33.2 |instant
	step
		talk Feralas Flame Keeper##25932
		accept Honor the Flame##11849 |goto Feralas 72.4,47.8 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11746 |goto 46.6,43.8 |instant
	step
		talk Desolace Flame Keeper##25928
		accept Honor the Flame##11845 |goto Desolace,26.2,76.9 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11741 |goto 65.8,16.9 |instant
	step
		Follow the path up |goto Stonetalon Mountains 42.5,68.6 < 20 |only if walking
		talk Stonetalon Flame Keeper##25940
		accept Honor the Flame##11856 |goto 52.9,62.5 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28915 |goto Stonetalon Mountains 49.5,51.2 |instant
	step
		talk The Northern Barrens Flame Keeper##25943
		accept Honor the Flame##11859 |goto Northern Barrens 50.0,54.6 |instant
	step
		talk Durotar Flame Keeper##25929
		accept Honor the Flame##11846 |goto Durotar 52.2,47.3 |instant
	step
		talk Azshara Flame Keeper##51575
		accept Honor the Flame##28923 |goto Azshara/0 60.8,53.5 |instant
	step
		talk Winterspring Flame Keeper##25922
		accept Honor the Flame##11839 |goto Winterspring 58.1,47.5 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11763 |goto 61.3,47.1 |instant
	step
		talk Ashenvale Flame Keeper##25884
		accept Honor the Flame##11841 |goto Ashenvale 51.4,66.2 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11734 |goto 86.8,41.4 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11740 |goto Darkshore 48.9,22.6 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11753 |goto Teldrassil 54.7,52.9 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11735 |goto Azuremyst Isle 44.7,52.7 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11738 |goto Bloodmyst Isle 55.9,68.6 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Outland",[[
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11747 |goto Hellfire Peninsula 61.9,58.5 |instant
	step
		talk Hellfire Peninsula Flame Keeper##25934
		accept Honor the Flame##11851 |goto Hellfire Peninsula 57.1,42.0 |instant
	step
		talk Netherstorm Flame Keeper##25918
		accept Honor the Flame##11835 |goto Netherstorm 32.1,68.3 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11759 |goto Netherstorm 31.1,62.9 |instant
	step
		talk Blade's Edge Flame Keeper##25926
		accept Honor the Flame##11843 |goto Blade's Edge Mountains 49.9,58.7 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11736 |goto Blade's Edge Mountains 41.8,66.0 |instant
	step
		talk Zangarmarsh Flame Keeper##25947
		accept Honor the Flame##11863 |goto Zangarmarsh 35.4,51.6 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11758 |goto Zangarmarsh 68.6,52.1 |instant
	step
		talk Nagrand Flame Keeper##25937
		accept Honor the Flame##11854 |goto Nagrand 50.9,34.1 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11750 |goto Nagrand 49.7,69.7 |instant
	step
		talk Terokkar Forest Flame Keeper##25942
		accept Honor the Flame##11858 |goto Terokkar Forest 52.0,42.9 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11754 |goto Terokkar Forest 54.2,55.5 |instant
	step
		talk Shadowmoon Valley Flame Keeper##25938
		accept Honor the Flame##11855 |goto Shadowmoon Valley 33.4,30.5 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##11752 |goto Shadowmoon Valley 39.5,54.4 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Northrend",[[
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13440 |goto Borean Tundra 55.2,20.2 |instant
	step
		talk Borean Tundra Flame Keeper##32809
		accept Honor the Flame##13493 |goto Borean Tundra 51.1,11.5 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13442 |goto Sholazar Basin 47.9,66.2 |instant
	step
		talk Sholazar Basin Flame Keeper##32810
		accept Honor the Flame##13494 |goto Sholazar Basin 47.1,61.5 |instant
	step
		talk Dragonblight Flame Keeper##32811
		accept Honor the Flame##13495 |goto Dragonblight 38.3,48.5 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13443 |goto Dragonblight 75.1,43.8 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13447 |goto Crystalsong Forest 77.6,75.2 |instant
	step
		talk Crystalsong Forest Flame Keeper##32815
		accept Honor the Flame##13499 |goto Crystalsong Forest 80.0,53.2 |instant
	step
		talk Storm Peaks Flame Keeper##32814
		accept Honor the Flame##13498 |goto The Storm Peaks 40.3,85.3 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13446 |goto The Storm Peaks 41.4,87.0 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13449 |goto Zul'Drak 40.5,61.0 |instant
	step
		talk Zul'Drak Flame Keeper##32816
		accept Honor the Flame##13500 |goto Zul'Drak 43.4,71.70 |instant
	step
		talk Grizzly Hills Flame Keeper##32813
		accept Honor the Flame##13497 |goto Grizzly Hills 19.3,61.2 |instant
	step
 		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13445 |goto Grizzly Hills 34.2,60.6 |instant
	step
		talk Howling Fjord Flame Keeper##32812
		accept Honor the Flame##13496 |goto Howling Fjord 48.6,13.1 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##13444 |goto Howling Fjord 57.8,15.8 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Cataclysm",[[
	step
		talk Vashj'ir Flame Guardian##51697
		accept Honor the Flame##29031 |goto Shimmering Expanse/0 49.4,42.0
	step
		click Earthen Ring Bonfire##208188
		turnin Honor the Flame##29031 |goto Shimmering Expanse 49.4,41.9
	step
		talk Twilight Highlands Flame Keeper##51651
		accept Honor the Flame##28946 |goto Twilight Highlands 53.1,46.2 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28943 |goto 47.3,28.3 |instant
	step
		talk Deepholm Flame Guardian##51698
		accept Honor the Flame##29036 |goto Deepholm 49.4,51.3
	step
		click Earthen Ring Bonfire##208188
		turnin Honor the Flame##29036 |goto Deepholm 49.4,51.4
	step
		talk Hyjal Flame Guardian##51682
		accept Honor the Flame##29030 |goto Mount Hyjal 62.8,22.7
	step
		click Earthen Ring Bonfire##208188
		turnin Honor the Flame##29030 |goto 62.8,22.9
	step
		talk Uldum Flame Keeper##51652
		accept Honor the Flame##28949 |goto Uldum 53.15,34.54 |instant
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##28947 |goto 53.5,32.0 |instant
]])

ZygorGuidesViewer:RegisterInclude("MFF_Extinguishing_Pandaria",[[
	step
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
		turnin Honor the Flame##32499 |goto Krasarang Wilds 74.0,9.6
	step
		talk Valley of the Four Winds Flame Guardian##69550
		accept Honor the Flame##32502 |goto Valley of the Four Winds 51.8,51.4
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32502 |goto Valley of the Four Winds 51.8,51.4
	step
		talk Dread Wastes Flame Guardian##69522
		accept Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
	step
		talk Townlong Steppes Flame Guardian##69536
		accept Honor the Flame##32501 |goto Townlong Steppes 71.5,56.3
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32501 |goto Townlong Steppes 71.5,56.3
	step
		talk Kun-Lai Summit Flame Guardian##69535
		accept Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
	step
		click Midsummer Bonfire##259864
		turnin Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
	step
		talk Vale of Eternal Blossoms Flame Keeper##69551
		accept Honor the Flame##32509 |instant |goto Vale of Eternal Blossoms 77.8,33.9
	step
		click Alliance Bonfire##194036
		accept Desecrate this Fire!##32503 |instant |goto Vale of Eternal Blossoms 79.7,37.1
]])

ZygorGuidesViewer:RegisterInclude("MFF_Main_Quests",[[
	step
		talk Innkeeper Gryshka##6929
		home Orgrimmar |goto Orgrimmar 53.6,78.8
	step
		talk Flame Eater##25994
		accept Playing with Fire##11915 |goto Mulgore 51.7,59.5
	step
		talk Tauren Commoner##19176
		accept The Spinner of Summer Tales##11971 |goto Thunder Bluff 40.8,56.1
	step
		talk Festival Talespinner##16818
		turnin The Spinner of Summer Tales##11971 |goto 21.62,27.75
		accept Incense for the Festival Scorchlings##11966 |goto 21.62,27.75
	step
		talk Master Flame Eater##26113
		turnin Playing with Fire##11915 |goto 21.0,26.4
		accept Torch Tossing##11922 |goto 21.0,26.4
	step
		|use the Practice Torches##34862
		|tip You must throw the torches at the correct braziers.
		|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
		Hit 8 Braziers |q 11922/1 |goto 21.8,27.3
	step
		talk Master Flame Eater##26113
		turnin Torch Tossing##11922 |goto 21.0,26.4
		accept Torch Catching##11923 |goto 21.0,26.4
	step
		|use the Unlit Torches##34833
		|tip As soon as you light the torch, it will fly in the air.
		|tip There will be a small round shadow on the ground indicating where the torch is flying. 
		|tip Follow that shadow and catch the torch. When you catch the torch, it will be thrown in the air again.
		|tip Follow the shadow again and catch the torch. Do this until you've caught the torch 4 times in a row without it hitting the ground.
		Catch 4 Rorches in a Row |q 11923/1 |goto 21.8,27.3
	step
		talk Master Flame Eater##26113
		turnin Torch Catching##11923 |goto 21.0,26.4
	step
		talk Earthen Ring Elder##26221
		accept Unusual Activity##11886 |goto 21.2,24.0
	step
		talk Festival Scorchling##26520
		turnin Incense for the Festival Scorchlings##11966 |goto Dustwallow Marsh 33.5,30.9
	step
		kill Twilight Flameguard##25866+, Twilight Firesworn##25863+
		collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale 15.3,20.1
	step
		|use the Totemic Beacon##35828
		|tip Use it next to the blue bonfire.
		talk Earthen Ring Guide##25324
		turnin Unusual Activity##11886 |goto 15.7,20.3
		accept An Innocent Disguise##11891 |goto 15.7,20.3
	step
		|use the Orb of the Crawler##35237
		Gain the Crab Disguise Buff |havebuff 132186 |q 11891 |goto 9.6,13.2
	step
		Listen to the Plan of the Twilight Cultists |q 11891/1 |goto 9.2,12.6
	step
		|use the Totemic Beacon##35828
		talk Earthen Ring Guide##25324
		turnin An Innocent Disguise##11891 |goto Ashenvale/0 9.29,12.42
		accept Inform the Elder##12012 |goto 9.29,12.42
	step
		talk Earthen Ring Elder##26221
		turnin Inform the Elder##12012 |goto Orgrimmar 47.26,37.89
]])

-----------------------
----- Noblegarden -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Noblegarden_Achievements",[[
	step
		click Brightly Colored Eggs##113768+
		|tip They look like small colored eggs found on the ground around Bloodhoof Village. 
		|tip There is at least one available at all times.
		|tip If Bloodhoof Village is too crowded with other players looking for eggs, you can also find them at Razor Hill, Falconwing Square, and Brill.
		use Brightly Colored Egg##45072
		collect Noblegarden Chocolate##44791+ |n
		Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
		Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1 |goto Mulgore/0 47.2,59.3
		Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2 |goto Mulgore/0 47.2,59.3
		Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249 |goto Mulgore/0 47.2,59.3
		collect Spring Rabbit's Foot##44794 |n
		learnpet Spring Rabbit##32791 |petspecies 200 |use Spring Rabbit's Foot##44794
	step
		collect Noblegarden Chocolate##44791+ |n
		|tip Collect these by opening Brightly Colored Eggs.
		talk Noblegarden Merchant##32837
		Buy 1 Noblegarden Egg |condition itemcount(44818)>=1 or achieved(2418)
		|tip It costs 5 Noblegarden Chocolates.
		Buy 1 Blossoming Branch |condition itemcount(44792)>=1 or achieved(2416)
		|tip It costs 10 Noblegarden Chocolates.
		Buy 1 Spring Flowers |condition itemcount(45073)>=1 or achieved(2422)
		|tip It costs 50 Noblegarden Chocolates.
		Buy 1 Spring Robes |condition itemcount(44800)>=1 or achieved(2436)
		|tip It costs 50 Noblegarden Chocolates.
		buy 1 Spring Rabbit's Foot##44794 |n
		learnpet Spring Rabbit##61725 |petspecies 200 |use Spring Rabbit's Foot##44794 |goto 47.1,59.9
		|tip It costs 100 Noblegarden Chocolates.
	step
		use Spring Rabbit's Foot##44794
		learnpet Spring Rabbit##61725 |petspecies 200
		Summon your Spring Rabbit companion
		|tip Press Shift-P to bring up your Pet Journal and right-click the Spring Rabbit.
		Find a player with a Spring Rabbit
		Find Your Spring Rabbit Another One to Love in Bloodhoof Village |achieve 2497/1 |goto 47.2,59.3
	step
		use Spring Robes##44800
		Plant a Flower in Desolace |achieve 2436/2 |goto Desolace 57.0,53.5
	step
		use Spring Robes##44800
		Plant a Flower in Silithus |achieve 2436/3 |goto Silithus 53.0,34.7
	step
		Transform Into a Bunny |havebuff 134010 |or --Rabbit Costume [Spell ID 61716]
		|tip You will need a friend to do this, or at least another player. There should be plenty of players trying to do this achievement at the same time, so it should be easy to find help. Have your friend, or other player, use their Blossoming Branch on you to turn you into a rabbit.
		|tip Stand still until you lay an egg.
		use Blossoming Branch##44792
		Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416 |goto Un'Goro Crater/0 35.59,54.60 |or
	step
		use Spring Robes##44800
		Plant a Flower in Tanaris |achieve 2436/4 |goto Tanaris 52.1,27.5
	step
		use Spring Robes##44800
		Plant a Flower in Thousand Needles |achieve 2436/5 |goto Thousand Needles/0 79.05,71.85
	step
		Summon your Spring Rabbit companion
		|tip Press Shift-P to bring up your Pet Journal and right-click the Spring Rabbit.
		Find a player with a Spring Rabbit
		Find Your Spring Rabbit Another One to Love in Razor Hill |achieve 2497/4 |goto Durotar/0 52.5,42.7
	step
		Summon your Spring Rabbit companion
		|tip Press Shift-P to bring up your Pet Journal and right-click the Spring Rabbit.
		Find a player with a Spring Rabbit
		Find Your Spring Rabbit Another One to Love in Brill |achieve 2497/2 |goto Tirisfal Glades/0 61.0,52.7
	step
		Place Your Noblegarden Egg anywhere in Silvermoon City |use Noblegarden Egg##44818
		Hide a Brightly Colored Egg in Silvermoon City |achieve 2420 |goto Silvermoon City/0 60.3,28.0
	step
		Summon your Spring Rabbit companion
		|tip Press Shift-P to bring up your Pet Journal and right-click the Spring Rabbit.
		Find a player with a Spring Rabbit
		Find Your Spring Rabbit Another One to Love in Falconwing Square |achieve 2497/3 |goto Eversong Woods/0 47.5,46.5
	step
		use Spring Robes##44800
		Plant a Flower in The Badlands |achieve 2436/1 |goto Badlands/0 64.25,35.49
	step
		use Black Tuxedo Pants##151804
		use White Tuxedo Shirt##6833
		Find another player who is wearing the Elegant Dress and Kiss them |script DoEmote("KISS")
		|tip The best places to try and find them would be Dalaran, Stormwind, and Orgrimmar.
		|tip The Elegant Dress looks like a long pink dress when worn.
		Kiss Someone Wearing an Elegant Dress While Wearing a White Tuxedo Shirt and Black Tuxedo Pants |achieve 2576
	step
		Find a female character of every race that are at least level 18 and do the following:
		|tip The best places to try and find them would be Dalaran, Stormwind, and Orgrimmar.
		use Spring Flowers##45073
		|tip Use it on the following players.
		Place Bunny Ears on a Blood Elf |achieve 2422/1
		Place Bunny Ears on a Draenei |achieve 2422/2
		Place Bunny Ears on a Dwarf |achieve 2422/3
		Place Bunny Ears on a Gnome |achieve 2422/4
		Place Bunny Ears on a Goblin |achieve 2422/5
		Place Bunny Ears on a Human |achieve 2422/6
		Place Bunny Ears on a Night Elf |achieve 2422/7
		Place Bunny Ears on a Orc |achieve 2422/8
		Place Bunny Ears on a Tauren |achieve 2422/9
		Place Bunny Ears on a Troll |achieve 2422/10
		Place Bunny Ears on an Undead |achieve 2422/11
		Place Bunny Ears on a Worgen |achieve 2422/12
	step
		Congratulations, you are now a Noble Gardener!
]])

----------------------------
----- Pilgrim's Bounty -----
----------------------------

ZygorGuidesViewer:RegisterInclude("Pilgrim's_Bounty_Quests",[[
	step
		It's suggested that you have at least _300 skill level in Cooking_ before you begin the quests for this
		|tip Refer to Zygor's Cooking Guide for assistance in leveling up to 300 in Cooking.
		confirm |only if skill('Cooking') < 300
	step
		talk Bountiful Feast Hostess##34654
		accept Sharing a Bountiful Feast##14065 |goto Undercity 65.6,8.1
	step
		clicknpc The Turkey Chair##34812
		Use the first ability on your hotbar to Pass the food to other players who are sitting at the table
		|tip You must target the other players and use the Pass the Food ability. Do this repeatedly until you get an achievement.
		Start a Food Fight! |achieve 3579 |goto 64.7,7.9
	step
		Use the other abilities on your hotbar to eat the food
		|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Gain the Spirit of Sharing |q 14065/1 |goto 64.7,7.9
	step
		talk Bountiful Feast Hostess##34654
		turnin Sharing a Bountiful Feast##14065 |goto 65.6,8.1
	step
		talk Roberta Carter##34712
		skillmax Cooking,75
		learn Spice Bread##37836 |goto 63.2,8.9
	step
		talk Rose Standish##34683
		buy 1 Bountiful Cookbook##46810 |condition itemcount(46810) >= 1 |goto 63.9,11.1
	step
		use Bountiful Cookbook##46810
		collect Recipe: Spice Bread Stuffing##46803
		collect Recipe: Pumpkin Pie##46804
		collect Recipe: Cranberry Chutney##46805
		collect Recipe: Candied Sweet Potato##46806
		collect Recipe: Slow-Roasted Turkey##46807
	step
		use Recipe: Spice Bread Stuffing##46803
		learn Spice Bread Stuffing##66038
	step
		talk Miles Standish##34677
		accept Spice Bread Stuffing##14037 |goto 63.9,11.5
	step
		talk Rose Standish##34683
		buy 10 Simple Flour##30817 |condition itemcount(30817) >= 10 |goto 63.9,11.1
		buy 10 Mild Spices##2678 |condition itemcount(2678) >= 10 |goto 63.9,11.1
		buy 10 Autumnal Herbs##44835 |condition itemcount(44835) >= 10 |goto 63.9,11.1
		only if not completedq(14037)
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 10 Spice Bread##37836,Cooking,10 total |goto Undercity 63.2,8.3
		only if not completedq(14037)
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Spice Bread Stuffing##66038,Cooking,10 total |q 14037/1 |goto Undercity 63.2,8.3
		collect 5 Spice Bread Stuffing##44837 |q 14037/2 |goto Undercity 63.2,8.3
		only if not completedq(14037)
	step
		use Recipe: Pumpkin Pie##46804
		|tip You will need to be at least 100 in Cooking to learn this.
		learn Pumpkin Pie##66036
	step
		talk William Mullins##34768
		turnin Spice Bread Stuffing##14037 |goto 65.3,14.3
		accept Pumpkin Pie##14040 |goto 65.3,14.3
	step
		talk Rose Standish##34683
		buy 5 Ripe Tirisfal Pumpkin##46796 |condition itemcount(46796) >= 5 |goto 63.9,11.1
		buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 63.9,11.1
		only if not completedq(14040)
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Pumpkin Pie##66036,Cooking,5 total |q 14040/1 |goto Undercity 63.2,8.3
		collect 5 Pumpkin Pie##44836 |q 14040/2 |goto Undercity 63.2,8.3
		only if not completedq(14040)
	step
		use Recipe: Cranberry Chutney##46805
		|tip You will need to be at least 160 in Cooking to learn this.
		learn Cranberry Chutney##66035
	step
		talk Francis Eaton##34679
		turnin Pumpkin Pie##14040 |goto Durotar 46.6,13.8
		accept Cranberry Chutney##14041 |goto Durotar 46.6,13.8
	step
		talk Dalni Tallgrass##34685
		buy 10 Tangy Southfury Cranberries##46793 |condition itemcount(46793) >= 10 |goto 46.6,13.8
		buy 10 Honey##44853 |condition itemcount(44853) >= 10 |goto 46.6,13.8
		only if not completedq(14041)
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 10 Cranberry Chutney##66035,Cooking,10 total |q 14041/1 |goto Durotar 46.4,13.8
		collect 10 Cranberry Chutney##44840 |q 14041/2 |goto Durotar 46.4,13.8
		only if not completedq(14041)
	step
		talk Dokin Farplain##34678
		turnin Cranberry Chutney##14041 |goto Thunder Bluff 30.9,63.7
		accept Candied Sweet Potatoes##14043 |goto Thunder Bluff 30.9,63.7
	step
		use Recipe: Candied Sweet Potatoes##46806
		|tip You will need to be at least 160 in Cooking to learn this.
		learn Candied Sweet Potatoes##66034
	step
		talk Laha Farplain##34684
		buy 5 Mulgore Sweet Potato##46797 |condition itemcount(46797) >= 5 |goto 31.1,63.4
		buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 31.1,63.4
		buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 31.1,63.4
		only if not completedq(14043)
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Candied Sweet Potatoes##66034,Cooking,5 total |q 14043/1 |goto Thunder Bluff 30.5,70.1
		collect 5 Candied Sweet Potatoes##44839 |q 14043/2 |goto Thunder Bluff 30.5,70.1
		only if not completedq(14043)
	step
		use Recipe: Slow-Roasted Turkey##46807
		|tip You will need to be at least 160 in Cooking to learn this.
		learn Slow-Roasted Turkey##66037
	step
		talk Francis Eaton##34679
		turnin Candied Sweet Potatoes##14043 |goto Durotar 46.6,13.8
		accept Undersupplied in the Undercity##14044 |goto Durotar 46.6,13.8
	step
		talk Rose Standish##34683
		buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto Undercity 64.2,10.9
		buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 64.2,10.9
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Cranberry Chutney##66035,Cooking,5 total |goto Undercity 63.1,8.3
		create 5 Spice Bread Stuffing##66038,Cooking,5 total |goto Undercity 63.1,8.3
	step
		talk Miles Standish##34677
		turnin Undersupplied in the Undercity##14044 |goto Undercity 63.9,11.5
		accept Slow-roasted Turkey##14047 |goto Undercity 63.9,11.5
	step
		kill Wild Turkey##32820+
		|tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area. Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
		collect 20 Wild Turkey##44834 |q 14047 |goto Tirisfal Glades 62.2,56.4
	step
		talk Rose Standish##34683
		buy 10 Honey##44853 |condition itemcount(44853) >= 10 |goto Undercity 63.9,11.1
		buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 63.9,11.1
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 5 Slow-Roasted Turkey##66037,Cooking,5 total |q 14047/1 |goto 63.1,8.3
		collect 5 Slow-Roasted Turkey##44838 |q 14047/2 |goto 63.1,8.3
	step
		talk Francis Eaton##34679
		turnin Slow-roasted Turkey##14047 |goto Durotar 46.6,13.8
]])

ZygorGuidesViewer:RegisterInclude("Pilgrim's_Bounty_Achievements",[[
	step
	label "start"
		clicknpc The Turkey Chair##34812
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Gain the Spirit of Sharing |achieve 3557/2 |goto Eversong Woods 55.7,53.2
		Earn the Pilgrim's Paunch Achievement |achieve 3557/2 |goto Eversong Woods 55.7,53.2
	step
		While still at the table, go to each of the chairs
		While in each of the chairs, press 1
		Pass the Candied Sweet Potatoes |achieve 3558/1
		Pass the Cranberry Chutney |achieve 3558/2
		Pass the Pumpkin Pie |achieve 3558/3
		Pass the Slow-Roasted Turkey |achieve 3558/4
		Pass the Spice Bread Stuffing |achieve 3558/5
		Earn the Sharing is Caring Achievement |achieve 3558
	step
		talk William Mullins##34768
		accept She Says Potato##14058 |goto Undercity 65.2,14.2
	step
		talk Roberta Carter##34712
		accept We're Out of Cranberry Chutney Again?##14059 |goto Undercity 63.2,9.0
	step
		talk Rose Standish##34683
		buy 20 Ripe Tirisfal Pumpkin##46796 |condition itemcount(46796) >= 20 |goto 63.9,11.1
		buy 20 Simple Flour##30817 |condition itemcount(30817) >= 20 |goto 63.9,11.1
		buy 20 Mild Spices##2678 |condition itemcount(2678) >= 20 |goto 63.9,11.1
		buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto 63.9,11.1
	step
		kill Wild Turkey##32820+
		|tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area. Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
		collect 20 Wild Turkey##44834 |goto Tirisfal Glades 62.2,56.4
	step
		talk Ondani Greatmill##34713
		accept Can't Get Enough Turkey##14061 |goto Durotar 46.4,13.9
		accept Don't Forget The Stuffing!##14062 |goto Durotar 46.4,13.9
	step
		talk Dalni Tallgrass##34685
		buy 20 Tangy Southfury Cranberries##46793 |condition itemcount(46793) >= 20 |goto Durotar 46.6,13.8
	step
		talk Laha Farplain##34684
		buy 20 Mulgore Sweet Potato##46797 |condition itemcount(46797) >= 20 |goto Thunder Bluff 31.0,63.3
		buy 20 Honey##44853 |condition itemcount(44853) >= 20 |goto Thunder Bluff 31.0,63.3
	step
		talk Mahara Goldwheat##34714
		accept Easy As Pie##14060 |goto Thunder Bluff 30.9,69.7
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 20 Pumpkin Pie##66036,Cooking,20 total |q 14060/1 |goto Thunder Bluff 30.5,70.2
	step
		talk Mahara Goldwheat##34714
		turnin Easy As Pie##14060 |achieve 3597/3 |goto Thunder Bluff 30.9,69.7
		collect Pilgrim's Hat##46723
		|tip You need the hat for a later achievement.
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 20 Spice Bread##37836,Cooking,20 total |n
		create 20 Spice Bread Stuffing##66038,Cooking,20 total |q 14062/1 |goto Durotar 46.4,13.9
	step
		talk Dalni Tallgrass##34685
		buy 40 Honey##44853 |condition itemcount(44853) >= 40 |goto Durotar 46.6,13.8
		buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto Durotar 46.6,13.8
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 20 Slow-Roasted Turkey##66037+,Cooking,20 total |q 14061/1 |goto 46.4,13.9
	step
		talk Ondani Greatmill##34713
		turnin Can't Get Enough Turkey##14061 |achieve 3597/1 |goto Durotar 46.4,13.9
		collect Pilgrim's Attire##46800 |or |goto Durotar 46.4,13.9
		|tip You only need this, the Dress or the Robes, not all 3.
		collect Pilgrim's Dress##44785 |or |goto Durotar 46.4,13.9
		|tip You only need this, the Attire or the Robes, not all 3.
		collect Pilgrim's Robe##46824 |or |goto Durotar 46.4,13.9
		|tip You only need this, the Attire or the Dress, not all 3.
	step
		talk Ondani Greatmill##34713
		turnin Don't Forget The Stuffing!##14062 |achieve 3597/2 |goto Durotar 46.4,13.9
		collect Pilgrim's Bounty##116404 |goto Durotar 46.4,13.9
	step
		use Pilgrim's Bounty##116404
		collect 1 Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		talk Rose Standish##34683
		buy 40 Honey##44853 |condition itemcount(44853) >= 40 |goto Undercity 63.9,11.1
		buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto Undercity 63.9,11.1
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 20 Candied Sweet Potato##66034,Cooking,20 total |q 14058/1 |goto Undercity 63.2,8.4
	step
		Cook next to the Pilgrim's Bounty Cooking Fire
		create 20 Cranberry Chutney##66035,Cooking,20 total |q 14059/1 |goto Undercity 63.2,8.4
	step
		talk Roberta Carter##34712
		turnin We're Out of Cranberry Chutney Again?##14059 |achieve 3597/5 |goto Undercity 63.2,8.9
		collect Pilgrim's Bounty##116404 |goto Undercity 63.2,8.9
	step
		use Pilgrim's Bounty##116404
		collect 2 Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		talk William Mullins##34768
		turnin She Says Potato##14058 |achieve 3597/4 |goto 65.2,14.2
		collect Pilgrim's Bounty##116404 |goto 65.2,14.2
	step
		use Pilgrim's Bounty##116404
		collect 3 Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		Earn the Pilgrim's Progress Achievement |achieve 3597
	step
		Kill 40 turkeys without letting your Turkey Tracker Buff expire
		|tip You will need to fly around Tirisfal Glades. You will be given 30 seconds for each kill to find a new turkey.
		kill Wild Turkey##32820+ |n
		Earn the Turkinator Achievement |achieve 3578 |goto Tirisfal Glades 62.5,57.8
	step
		Enter Sethekk Halls |goto Sethekk Halls/1 73.4,36.5 < 15
		Fight to the end of the Instance
		Before Engaging Talon King Ikiss, equip
		Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
		Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
		Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		Kill Talon King Ikiss while wearing these items |goto Sethekk Halls/2 33.3,30.0
		Earn the Terokkar Turkey Time Achievement |achieve 3582
	step
		clicknpc The Turkey Chair##34812
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Acquire the Spirit of Sharing |achieve 3557/1 |goto Durotar 46.4,14.6
	step
		clicknpc The Turkey Chair##34812
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Acquire the Spirit of Sharing |achieve 3557/3 |goto Thunder Bluff 29.1,62.5
	step
		clicknpc The Turkey Chair##34812
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Acquire the Spirit of Sharing |achieve 3557/2 |goto Eversong Woods/0 55.5,53.1
	step
		clicknpc The Turkey Chair##34812
		Eat each type of food 5 times in a row
		|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		Acquire the Spirit of Sharing |achieve 3557/4 |goto Undercity/0 67.6,14.5
	step
		Earn the Pilgrim's Paunch Achievement |achieve 3557
	step
		You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
		use Turkey Shooter##44812
		|tip While in Dun Morogh, shoot Alliance Rogues with your Turkey Shooter.
		Shoot a Dwarf Rogue |achieve 3559/2 |goto Dun Morogh 54.0,48.0
		Shoot a Gnome Rogue |achieve 3559/3 |goto Dun Morogh 54.0,48.0
		Shoot a Human Rogue |achieve 3559/5 |goto Dun Morogh 54.0,48.0
		Shoot a Night Elf Rogue |achieve 3559/6 |goto Dun Morogh 54.0,48.0
		Shoot a Worgen Rogue |achieve 3559/10 |goto Dun Morogh 54.0,48.0
	step
		You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
		use Turkey Shooter##44812
		|tip While in Durotar, shoot Horde Rogues with your Turkey Shooter.
		Shoot a Blood Elf Rogue |achieve 3559/1 |goto Durotar 46.2,15.1
		Shoot a Orc Rogue |achieve 3559/7 |goto Durotar 46.2,15.1
		Shoot a Troll Rogue |achieve 3559/8 |goto Durotar 46.2,15.1
		Shoot a Undead Rogue |achieve 3559/9 |goto Durotar 46.2,15.1
		Shoot a Goblin Rogue |achieve 3559/4 |goto Durotar 46.2,15.1
	step
		Ride the boat to the Exodar |goto Teldrassil 52.0,89.0 < 20 |walk
		clicknpc The Turkey Chair##34812
		Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
		Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
		Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		Take a Seat at the Exodar's Bountiful Table |achieve 3581/2 |goto The Exodar 75.7,52.3
	step
		clicknpc The Turkey Chair##34812
		Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
		Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
		Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		Take a Seat at Darnassus' Bountiful Table |achieve 3581/1 |goto Darnassus 62.8,48.2
	step
		clicknpc The Turkey Chair##34812
		Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
		Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
		Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		Take a Seat at Ironforge's Bountiful Table |achieve 3581/3 |goto Dun Morogh 59.9,34.6
	step
		clicknpc The Turkey Chair##34812
		Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
		Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
		Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		Take a Seat at Stormwind's Bountiful Table |achieve 3581/4 |goto Elwynn Forest 34.3,51.1
	step
		Achieve Pilgrim's Peril |achieve 3581
]])

ZygorGuidesViewer:RegisterInclude("Pilgrim's_Bounty_Dailies",[[
	step
	label "daily"
		talk William Mullins##34768
		accept She Says Potato##14058 |goto Undercity 65.2,14.2
	step
		talk Roberta Carter##34712
		accept We're Out of Cranberry Chutney Again?##14059 |goto Undercity 63.2,9.0
	step
		talk Rose Standish##34683
		buy 20 Ripe Tirisfal Pumpkin##46796 |goto 63.9,11.1
		buy 20 Simple Flour##30817 |goto 63.9,11.1
		buy 20 Mild Spices##2678 |goto 63.9,11.1
		buy 20 Autumnal Herbs##44835 |goto 63.9,11.1
	step
		kill Wild Turkey##32820+
		|tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area. Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
		collect 20 Wild Turkey##44834 |goto Tirisfal Glades 62.2,56.4
	step
		talk Ondani Greatmill##34713
		accept Can't Get Enough Turkey##14061 |goto Durotar 46.4,13.9
		accept Don't Forget The Stuffing!##14062 |goto Durotar 46.4,13.9
	step
		talk Dalni Tallgrass##34685
		buy 20 Tangy Southfury Cranberries##46793 |goto Durotar 46.6,13.8
	step
		talk Laha Farplain##34684
		buy 20 Mulgore Sweet Potato##46797 |goto Thunder Bluff 31.0,63.3
		buy 20 Honey##44853 |goto Thunder Bluff 31.0,63.3
	step
		talk Mahara Goldwheat##34714
		accept Easy As Pie##14060 |goto Thunder Bluff 30.9,69.7
	step
		create 20 Pumpkin Pie##66036,Cooking,20 total |q 14060/1
	step
		talk Mahara Goldwheat##34714
		turnin Easy As Pie##14060 |goto Thunder Bluff 30.9,69.7
	step
		collect Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		create 20 Spice Bread##37836,Cooking,20 total |n |goto Durotar 46.4,13.9
		create 20 Spice Bread Stuffing##66038,Cooking,20 total |q 14062/1 |goto Durotar 46.4,13.9
	step
		talk Dalni Tallgrass##34685
		buy 40 Honey##44853 |goto Durotar 46.6,13.8
		buy 20 Autumnal Herbs##44835 |goto Durotar 46.6,13.8
	step
		create 20 Slow-Roasted Turkey##66037,Cooking,20 total |q 14061/1 |goto 46.4,13.9
	step
		talk Ondani Greatmill##34713
		turnin Can't Get Enough Turkey##14061 |achieve 3597/1 |goto Durotar 46.4,13.9
	step
		collect Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		talk Ondani Greatmill##34713
		turnin Don't Forget The Stuffing!##14062 |achieve 3597/2 |goto Durotar 46.4,13.9
	step
		collect Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		talk Rose Standish##34683
		buy 40 Honey##44853 |goto Undercity 63.9,11.1
		buy 20 Autumnal Herbs##44835 |goto Undercity 63.9,11.1
	step
		create 20 Candied Sweet Potato##66034,Cooking,20 total |q 14058/1 |goto Undercity 63.2,8.4
	step
		create 20 Cranberry Chutney##66035,Cooking,20 total |q 14059/1
	step
		talk Roberta Carter##34712
		turnin We're Out of Cranberry Chutney Again?##14059 |achieve 3597/5 |goto Undercity 63.2,8.9
	step
		use Pilgrim's Bounty##116404
		collect Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		talk William Mullins##34768
		turnin She Says Potato##14058 |achieve 3597/4  |goto 65.2,14.2
	step
		collect Turkey Shooter##44812
		|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
	step
		For the achievement _Turkey Lurkey_, you have to hit 8 difference races of rogues with the Turkey shooter
		use Turkey Shooter##44812
		Shoot a Dwarf Rogue |achieve 3559/2 |goto Elwynn Forest 34.7,50.6
		Shoot a Gnome Rogue |achieve 3559/3 |goto Elwynn Forest 34.7,50.6
		Shoot a Human Rogue |achieve 3559/4 |goto Elwynn Forest 34.7,50.6
		Shoot a Night Elf Rogue |achieve 3559/5 |goto Elwynn Forest 34.7,50.6
		|tip You can look for the get a maximum of 5 Turkey Shooters per day, so it will take 2 days to do this if you don't have any already.
	step
		For the achievement _Turkey Lurkey_, you have to hit 8 difference races of rogues with the Turkey shooter.
		Shoot a Blood Elf Rogue |achieve 3559/1 |goto Durotar 46.5,14.6
		Shoot a Orc Rogue |achieve 3559/6 |goto Durotar 46.5,14.6
		Shoot a Troll Rogue |achieve 3559/7 |goto Durotar 46.5,14.6
		Shoot an Undead Rogue |achieve 3559/8 |goto Durotar 46.5,14.6
		|tip You can look for the get a maximum of 5 Turkey Shooters per day, so it will take 2 days to do this if you don't have any already.
	step
		Click here to return to the start of the Daily quests |next "daily" |confirm |only if not achieved(3478)
		|next "finish" |only if achieved(3478)
	step
	label "finish"
		Congratulations, you have completed the Pilgrim achievement!
]])