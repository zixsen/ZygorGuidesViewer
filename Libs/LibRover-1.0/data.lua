local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.version={
	nodes_version = 169,  -- Increase this when working on the nodes. Bake the connections using the Debug menu when you're done.
}

-- These are kept strictly unique. Make up bogus names if you need to.
-- If multiple numbers are given, then only the first one is used here; others are used by Pointer to define phasedMaps.

data.MapIDsByName = {

--World Zones
["Argus"] = {[0]=905},
["Azeroth"] = {[0]=947},
["Broken Isles"] = {[0]=619},
["Cosmic"] = {[0]=946},
["Draenor"] = {[0]=572},
["Eastern Kingdoms"] = {[0]=13},
["Kalimdor"] = {[0]=12},
["Kul Tiras"] = {[0]=876},
["Northrend"] = {[0]=113},
["Outland"] = {[0]=101},
["Pandaria"] = {[0]=424},
["The Maelstrom"] = {[0]=948},
["Zandalar"] = {[0]=875},



---------------------------------------
-------    BATTLE FOR AZEROTH   -------
---------------------------------------

--Kul Tiras
["Boralus"] = {[0]=1161},
["Drustvar"] = {[0]=896},
["Stormsong Valley"] = {[0]=942, [1]=1179, [2]=1180, [3]=1183, [4]=1182},
["Kul Tiras"] = {[0]=1014},
["Tiragarde Sound"] = {[0]=895, [1]=1171, [2]=1172},

--Zandalar
["Nazmir"] = {[0]=863},
["Vol'dun"] = {[0]=864},
["Zandalar"] = {[0]=1011},
["Zuldazar"] = {[0]=862, [1]=1173, [2]=1174, [3]=1176, [4]=1177},
["Dazar'alor"] = {[0]=1165, [1]=1163, [2]=1164, [3]=1166, [4]=1167},

--BFA Dungeon
["Atal'Dazar"] = {[0]=934,[1]=935},
["Freehold"] = {[0]=936},
["Shrine of the Storm"] = {[0]=1039,[1]=1040},
["Tol Dagor"] = {[0]=974,[1]=975,[2]=976,[3]=977,[4]=978,[5]=979,[6]=980, [7]=1169},
["King's Rest"] = {[0]=1004},
["Temple of Sethraliss"] = {[0]=1038,[1]=1043},
["Waycrest Manor"] = {[0]=1015,[1]=1016,[2]=1017,[3]=1018},
["The MOTHERLODE!!"] = {[0]=1010},
["Uldir"] = {[0]=1148, [1]=1149, [2]=1150, [3]=1151, [4]=1152, [5]=1153, [6]=1154, [7]=1155},
["Siege of Boralus"] = {[0]=1162},

--Island Expeditions
["Un'gol Ruins"] = {[0]=981},




-------------------------------------
-------    EASTERN KINGDOMS   -------
-------------------------------------

["Abyssal Depths"] = {[0]=204},
["Alterac Valley"] = {[0]=91},
["Arathi Highlands"] = {[0]=14},
["Blasted Lands"] = {[0]=17},
["Burning Steppes"] = {[0]=36,[14]=33,[15]=34,[16]=35}, -- bfa alpha 14,15,16 were marked as searing gorge
["The Cape of Stranglethorn"] = {[0]=210},
["Coldridge Valley"] = {[0]=427,[9]=428},
["Deadwind Pass"] = {[0]=42,[21]=41,[22]=43,[23]=44,[24]=45,[27]=46},
["Deeprun Tram"] = {[1]=499,[2]=500},
["Dun Morogh"] = {[0]=27,[6]=28,[7]=29,[10]=30,[11]=31},
["Duskwood"] = {[0]=47},
["Eastern Plaguelands"] = {[0]=23,[20]=24},
["Elwynn Forest"] = {[0]=37,[1]=38,[2]=39,[19]=40},
["Hillsbrad Foothills"] = {[0]=25},
["The Hinterlands"] = {[0]=26},
["Ironforge"] = {[0]=87},
["Kelp'thar Forest"] = {[0]=201},
["Loch Modan"] = {[0]=48},
["New Tinkertown"] = {[0]=469,[8]=470},
["Northern Stranglethorn"] = {[0]=50},
["Northshire"] = {[0]=425,[3]=426},
["Redridge Mountains"] = {[0]=49},
["Searing Gorge"] = {[0]=32,},
["Shimmering Expanse"] = {[0]=205},
["Stormwind City"] = {[0]=84},
["Stranglethorn Vale"] = {[0]=224},
["Swamp of Sorrows"] = {[0]=51},
["Twilight Highlands"] = {[0]=241},
["Vashj'ir"] = {[0]=203},
["Western Plaguelands"] = {[0]=22},
["Westfall"] = {[0]=52,[4]=53,[5]=54,[17]=55},
["Wetlands"] = {[0]=56},

--Kalimdor
["Ahn'Qiraj: The Fallen Kingdom"] = {[0]=327},
["Ammen Vale"] = {[0]=468},
["Ashenvale"] = {[0]=63},
["Azshara"] = {[0]=76},
["Azuremyst Isle"] = {[0]=97,[2]=98,[3]=99},
["Badlands"] = {[0]=15,[18]=16},
["Bloodmyst Isle"] = {[0]=106},
["Camp Narache"] = {[0]=462},
["Darkshore"] = {[0]=62},
["Darnassus"] = {[0]=89},
["Deathknell"] = {[0]=465,[12]=466},
["Desolace"] = {[0]=66,[21]=67,[22]=68},
["Durotar"] = {[0]=1,[8]=2,[10]=3,[11]=4,[12]=5,[19]=6},
["Dustwallow Marsh"] = {[0]=70},
["Echo Isles"] = {[0]=463,[9]=464},
["Eversong Woods"] = {[0]=94},
["The Exodar"] = {[0]=103},
["Felwood"] = {[0]=77},
["Feralas"] = {[0]=69},
["Ghostlands"] = {[0]=95,[1]=96},
["Gilneas"] = {[0]=179,[1]=180,[2]=181,[3]=182},
["Gilneas 2"] = {[0]=179,[1]=180,[2]=181,[3]=182}, -- bfa alpha missing, needs fixing
["Gilneas 3"] = {[0]=179,[1]=180,[2]=181,[3]=182}, -- bfa alpha missing, needs fixing
["Gilneas City"] = {[0]=202},
["The Lost Isles"] = {[0]=174,[1]=175,[2]=176,[3]=177,[4]=178},
["Moonglade"] = {[0]=80},
["Mulgore"] = {[0]=7,[6]=8,[7]=9},
["Northern Barrens"] = {[0]=10,[20]=11},
["Orgrimmar"] = {[0]=85, [1]=85,[2]=86},
["Shadowglen"] = {[0]=460},
["Silithus"] = {[0]=81,[13]=82},
["Silvermoon City"] = {[0]=110},
["Silverpine Forest"] = {[0]=21},
["Southern Barrens"] = {[0]=199},
["Stonetalon Mountains"] = {[0]=65},
["Sunstrider Isle"] = {[0]=467},
["Tanaris"] = {[0]=71,[15]=72,[16]=73,[17]=74,[18]=75},
["Teldrassil"] = {[0]=57,[2]=58,[3]=59,[4]=60,[5]=61},
["Thousand Needles"] = {[0]=64},
["Thunder Bluff"] = {[0]=88},
["Tirisfal Glades"] = {[0]=18,[13]=19,[25]=20},
["Uldum"] = {[0]=249},
["Un'Goro Crater"] = {[0]=78,[14]=79},
["Undercity"] = {[0]=90},
["Valley of Trials"] = {[0]=461},
["Winterspring"] = {[0]=83},

--Outlands
["Blade's Edge Mountains"] = {[0]=105},
["Hellfire Peninsula"] = {[0]=100},
["Nagrand"] = {[0]=107},
["Netherstorm"] = {[0]=109},
["Shadowmoon Valley"] = {[0]=104},
["Shattrath City"] = {[0]=111},
["Terokkar Forest"] = {[0]=108},
["Zangarmarsh"] = {[0]=102},

--Northrend
["Borean Tundra"] = {[0]=114},
["Crystalsong Forest"] = {[0]=127},
["Dalaran"] = {[1]=125,[2]=126},
["Dragonblight"] = {[0]=115},
["Grizzly Hills"] = {[0]=116},
["Howling Fjord"] = {[0]=117},
["Hrothgar's Landing"] = {[0]=170},
["Icecrown"] = {[0]=118},
["Sholazar Basin"] = {[0]=119},
["The Storm Peaks"] = {[0]=120},
["Zul'Drak"] = {[0]=121},
 
 --Pandaria
["Dread Wastes"] = {[0]=422},
["Isle of Giants"] = {[0]=507},
["The Jade Forest"] = {[0]=371,[6]=372,[7]=373,[15]=374,[16]=375},
["Krasarang Wilds"] = {[0]=418,[1]=419,[2]=420,[3]=421},
["Kun-Lai Summit"] = {[0]=379,[8]=380,[9]=381,[10]=382,[11]=383,[12]=384,[17]=385,[20]=386,[21]=387},
['Shrine of Seven Stars'] = {[1]=393,[2]=394}, 
["Shrine of Two Moons"] = {[1]=391,[2]=392},
["Timeless Isle"] = {[0]=554,[22]=555},
["Townlong Steppes"] = {[0]=388,[13]=389},
["Vale of Eternal Blossoms"] = {[0]=390,[1]=391,[2]=392,[3]=393,[4]=394,[18]=395,[19]=396},
["Valley of the Four Winds"] = {[0]=376,[14]=377},
["The Veiled Stair"] = {[0]=433,[5]=434},

 --Draenor
["Ashran"] = {[0]=588,[29]=589},
["Frostfire Ridge"] = {[0]=525,[1]=526,[2]=527,[3]=528,[4]=529,[6]=530,[7]=531,[8]=532,[9]=533},
["Frostwall"] = {[0]=590,[26]=585,[27]=586,[28]=587}, 
["Gorgrond"] = {[0]=543,[16]=544,[17]=545,[18]=546,[19]=547,[20]=548,[21]=549},
["Lunarfall"] = {[0]=582,[23]=579,[24]=580,[25]=581},
["Nagrand D"] = {[0]=550,[10]=551,[11]=552,[12]=553},
["Shadowmoon Valley D"] = {[0]=539,[15]=540,[22]=541},
["Shattrath City 2"] = {[0]=594},
["Spires of Arak"] = {[0]=542},
["Stormshield"] = {[0]=622},
["Talador"] = {[0]=535,[13]=536,[14]=537,[30]=538},
["Tanaan Jungle"] = {[0]=534},
["Warspear"] = {[0]=624},

 --Broken Isles/Argus
["Antoran Wastes"] = {[0]=885,[5]=886,[6]=887},
["Azsuna"] = {[0]=630,[17]=631,[18]=632,[19]=633},
["Broken Shore"] = {[0]=646,[1]=647,[2]=648},
["Broken Shore 2"] = {[0]=676},
["Dalaran L"] = {[4]=626,[10]=627,[11]=628,[12]=629,default=10},
["Eye of Azshara Map"] = {[0]=790},
["Highmountain"] = {[0]=650,[5]=651,[8]=653,[16]=654,[20]=655,[21]=656,[29]=657,[30]=658,[31]=659,[40]=660},
["Krokuun"] = {[0]=830,[1]=831,[2]=832,[7]=833},
["Mac'Aree"] = {[0]=882,[3]=883,[4]=884},
["Stormheim"] = {[0]=634,[1]=635,[9]=636,[25]=637,[26]=638,[27]=639,[28]=640},
["Suramar"] = {[0]=680,[22]=681,[23]=682,[24]=683,[32]=684,[33]=685,[34]=686,[35]=687,[36]=688,[37]=689,[38]=690,[39]=691,[41]=692,[42]=693},
["Thunder Totem"] = {[0]=750, [6]=652},
["Val'sharah"] = {[0]=641,[13]=642,[14]=643,[15]=644},

--Dungeons
["Ahn'kahet: The Old Kingdom"] = {[1]=132},
["Ahn'Qiraj"] = {[1]=319,[2]=320,[3]=321},
["The Arcatraz"] = {[1]=269,[2]=270,[3]=271},
["The Arcway"] = {[1]=749},
["Auchenai Crypts"] = {[1]=256,[2]=257},
["Auchindoun"] = {[1]=593},
["Azjol-Nerub"] = {[1]=157,[2]=158,[3]=159},
["The Black Morass"] = {[0]=273},
["Black Rook Hold"] = {[1]=751,[2]=752,[3]=753,[4]=754,[5]=755,[6]=756},
["Blackfathom Deeps"] = {[1]=221,[2]=222,[3]=223},
["Blackrock Caverns"] = {[1]=283,[2]=284},
["Blackrock Depths"] = {[1]=242,[2]=243},
["Blackrock Spire"] = {[1]=250,[2]=251,[3]=252,[4]=253,[5]=254,[6]=255},
["The Blood Furnace"] = {[1]=261},
["Bloodmaul Slag Mines"] = {[1]=573},
["The Botanica"] = {[1]=266},
["Cathedral of Eternal Night"] = {[1]=845,[2]=846,[3]=847,[4]=848,[5]=849},
["Court of Stars"] = {[1]=761,[2]=762,[3]=763},
["The Culling of Stratholme"] = {[1]=130,[2]=131},
["Darkheart Thicket"] = {[0]=733},
["The Deadmines"] = {[1]=291,[2]=292},
["Dire Maul"] = {[0]=234,[1]=235,[2]=236,[3]=237,[4]=238,[5]=239,[6]=240},
["Drak'Tharon Keep"] = {[1]=160,[2]=161},
["End Time"] = {[1]=401,[2]=402,[3]=403,[4]=404,[5]=405,[6]=406},
["The Everbloom"] = {[1]=620,[2]=621},
["Eye of Azshara"] = {[1]=713},
["The Forge of Souls"] = {[1]=183},
["Gate of the Setting Sun"] = {[1]=437,[2]=438},
["Gnomeregan"] = {[1]=226,[2]=227,[3]=228,[4]=229},
["Grim Batol"] = {[1]=293},
["Grimrail Depot"] = {[1]=606,[2]=607,[3]=608,[4]=609},
["Gundrak"] = {[0]=153,[1]=154},
["Halls of Lightning"] = {[1]=138,[2]=139},
["Halls of Origination"] = {[1]=297,[2]=298,[3]=299},
["Halls of Reflection"] = {[1]=185},
["Halls of Stone"] = {[1]=140},
["Hellfire Ramparts"] = {[1]=347},
["Helmouth Cliffs"] = {[1]=706,[2]=707,[3]=708},
["Hour of Twilight"] = {[1]=399,[2]=400},
["Iron Docks"] = {[1]=595},
["Lost City of the Tol'vir"] = {[0]=277},
["Magisters' Terrace"] = {[1]=348,[2]=349},
["Mana-Tombs"] = {[1]=272},
["Maraudon"] = {[1]=280,[2]=281},
["The Mechanar"] = {[1]=267,[2]=268},
["Mogu'shan Palace"] = {[1]=453,[2]=454,[3]=455},
["Neltharion's Lair"] = {[0]=731},
["The Nexus"] = {[1]=129},
["The Oculus"] = {[0]=142,[1]=143,[2]=144,[3]=145,[4]=146},
["Old Hillsbrad Foothills"] = {[0]=274},
["Pit of Saron"] = {[0]=184},
["Ragefire Chasm"] = {[1]=213},
["Razorfen Downs"] = {[1]=300},
["Razorfen Kraul"] = {[1]=301},
["Scarlet Halls"] = {[1]=431,[2]=432},
["Scarlet Monastery"] = {[1]=302,[2]=303,[3]=304,[4]=305},
["Scholomance"] = {[1]=476,[2]=477,[3]=478,[4]=479},
["The Seat of the Triumvirate"] = {[0]=903},
["Sethekk Halls"] = {[1]=258,[2]=259},
["Shado-Pan Monastery"] = {[1]=443,[2]=444,[3]=445,[4]=446},
["Shadow Labyrinth"] = {[1]=260},
["Shadowfang Keep"] = {[1]=310,[2]=311,[3]=312,[4]=313,[5]=314,[6]=315,[7]=316},
["Shadowmoon Burial Grounds"] = {[1]=574,[2]=575,[3]=576},
["The Shattered Halls"] = {[1]=246},
["Siege of Niuzao Temple"] = {[1]=457,[2]=458,[3]=459},
["Skyreach"] = {[1]=601,[2]=602},
["The Slave Pens"] = {[1]=265},
["The Steamvault"] = {[1]=263,[2]=264},
["The Stockade"] = {[1]=225},
["The Stonecore"] = {[1]=324},
["Stormstout Brewery"] = {[1]=439,[2]=440,[3]=441,[4]=442},
["Stratholme"] = {[1]=317,[2]=318},
["The Temple of Atal'Hakkar"] = {[1]=220},
["Temple of the Jade Serpent"] = {[1]=429,[2]=430},
["Throne of the Tides"] = {[1]=322,[2]=323},
["Trial of the Champion"] = {[1]=171},
["Uldaman"] = {[1]=230,[2]=231},
["The Underbog"] = {[1]=262},
["Upper Blackrock Spire 2"] = {[1]=616,[2]=617,[3]=618},
["Utgarde Keep"] = {[1]=133,[2]=134,[3]=135},
["Utgarde Pinnacle"] = {[1]=136,[2]=137},
["Vault of the Wardens"] = {[1]=677,[2]=678,[3]=679},
["Violet Hold"] = {[1]=732},
["The Violet Hold"] = {[1]=168},
["The Vortex Pinnacle"] = {[1]=325},
["Wailing Caverns"] = {[1]=279},
["Well of Eternity"] = {[0]=398},
["Zul'Aman"] = {[0]=333},
["Zul'Farrak"] = {[0]=219},
["Zul'Gurub"] = {[0]=337},

["Halls of Valor"] = {[1]=703,[2]=704,[3]=705},
["Vault of the Wardens 2"] = {[1]=710,[2]=711,[3]=712},
["Karazhan L"] = {[1]=809,[2]=810,[3]=811,[4]=812,[5]=813,[6]=814,[7]=815,[8]=816,[9]=817,[10]=818,[11]=819,[12]=820,[13]=821,[14]=822},

--Raids
["Antorus"] = {[0]=909,[1]=910,[2]=911,[3]=912,[4]=913,[5]=914,[6]=915,[7]=916,[8]=917,[9]=918,[10]=919,[11]=920},
["Baradin Hold"] = {[1]=282},
["The Bastion of Twilight"] = {[1]=294,[2]=295,[3]=296},
["Black Temple"] = {[1]=339,[2]=340,[3]=341,[4]=342,[5]=343,[6]=344,[7]=345,[8]=346},
["Blackrock Foundry"] = {[1]=596,[2]=597,[3]=598,[4]=599,[5]=600},
["Blackwing Descent"] = {[1]=285,[2]=286},
["Blackwing Lair"] = {[1]=287,[2]=288,[3]=289,[4]=290},
["Dragon Soul"] = {[1]=409,[2]=410,[3]=411,[4]=412,[5]=413,[6]=414,[7]=415},
["The Emerald Nightmare"] = {[1]=777,[2]=778,[3]=779,[4]=780,[5]=781,[6]=782,[7]=783,[8]=784,[9]=785,[10]=786,[11]=787,[12]=788,[13]=789},
["The Eye of Eternity"] = {[1]=141},
["Firelands"] = {[0]=367,[1]=368,[3]=369},
["Gruul's Lair"] = {[1]=330},
["Heart of Fear"] = {[1]=474,[2]=475},
["Hellfire Citadel"] = {[1]=661,[2]=662,[3]=663,[4]=664,[5]=665,[6]=666,[7]=667,[8]=668,[9]=669,[10]=670},
["Highmaul"] = {[1]=610,[2]=611,[3]=612,[4]=613,[5]=614,[6]=615},
["Hyjal Summit"] = {[0]=329},
["Icecrown Citadel"] = {[1]=186,[2]=187,[3]=188,[4]=189,[5]=190,[6]=191,[7]=192,[8]=193},
["Karazhan"] = {[1]=350,[2]=351,[3]=352,[4]=353,[5]=354,[6]=355,[7]=356,[8]=357,[9]=358,[10]=359,[11]=360,[12]=361,[13]=362,[14]=363,[15]=364,[16]=365,[17]=366},
["Magtheridon's Lair"] = {[1]=331},
["Mogu'shan Vaults"] = {[1]=471,[2]=472,[3]=473},
["Molten Core"] = {[1]=232},
["Mount Hyjal"] = {[0]=198},
["Naxxramas"] = {[1]=162,[2]=163,[3]=164,[4]=165,[5]=166,[6]=167},
["The Nighthold"] = {[1]=764,[2]=765,[3]=766,[4]=767,[5]=768,[6]=769,[7]=770,[8]=771,[9]=772},
["The Obsidian Sanctum"] = {[0]=155},
["Onyxia's Lair"] = {[1]=248},
["The Ruby Sanctum"] = {[0]=200},
["Ruins of Ahn'Qiraj"] = {[0]=247},
["Serpentshrine Cavern"] = {[1]=332},
["Siege of Orgrimmar"] = {[0]=556,[1]=557,[2]=558,[3]=559,[4]=560,[5]=561,[6]=562,[7]=563,[8]=564,[9]=565,[10]=566,[11]=567,[12]=568,[13]=569,[14]=570},
["Sunwell Plateau"] = {[1]=335,[2]=336},
["Tempest Keep"] = {[1]=334},
["Terrace of Endless Spring"] = {[0]=456},
["Throne of the Four Winds"] = {[1]=328},
["Throne of Thunder"] = {[1]=508,[2]=509,[3]=510,[4]=511,[5]=512,[6]=513,[7]=514,[8]=515},
["Tomb of Sargeras"] = {[1]=850,[2]=851,[3]=852,[4]=853,[5]=854,[6]=855,[7]=856},
["Trial of the Crusader"] = {[1]=172,[2]=173},
["Trial of Valor"] = {[1]=806,[2]=807,[3]=808},
["Ulduar"] = {[0]=147,[1]=148,[2]=149,[3]=150,[4]=151,[5]=152},
["Vault of Archavon"] = {[1]=156},

--Scenarios
["Abyssal Maw"] = {[1]=742,[2]=743},
["Arcatraz L"] = {[1]=889,[2]=890},
["Assault on Broken Shore"] = {[0]=858},
["Assault on Zan'vess"] = {[0]=451},
["Azshara L"] = {[0]=697},
["Azsuna Invasion"] = {[1]=867},
["Azuremyst Scenario"] = {[0]=891,[1]=892,[2]=893,[3]=894},
["Battle on the High Seas"] = {[0]=524},
["The Beyond"] = {[1]=736},
["A Brewing Storm"] = {[0]=447},
["Black Rook Hold B"] = {[0]=793},
["Blood in the Snow"] = {[0]=523},
["Brewmoon Festival"] = {[0]=452},
["Celestial Tournament"] = {[0]=571},
["Chromie Dragonblight"] = {[1]=897,[2]=898,[3]=899,[4]=900,[5]=901,[6]=902},
["The Cove of Nashal"] = {[0]=671},
["Crypt of Forgotten Kings"] = {[1]=481,[2]=482},
["Dagger in the Dark"] = {[0]=488,[1]=489},
["Dark Heart of Pandaria"] = {[0]=520,[1]=521},
["Deadmines Scenario"] = {[1]=835,[2]=836},
["Domination Point"] = {[0]=498},
["Draenei Scenario"] = {[0]=933},
["The Exodar L"] = {[0]=775},
["Felwing Ledge"] = {[0]=861},
["Fields of the Eternal Hunt"] = {[0]=877},
["Gloaming Reef"] = {[0]=758},
["Greenstone Village"] = {[0]=448},
["Hall of Communion"] = {[1]=888},
["Icecrown Citadel L"] = {[1]=698,[2]=699,[3]=700,[4]=701},
["Invasion Point Alluradel"] = {[0]=928},
["Invasion Point Aurinor"] = {[0]=921},
["Invasion Point Bonich"] = {[0]=922},
["Invasion Point Cen'gar"] = {[0]=923},
["Invasion Point Folnuna"] = {[0]=929},
["Invasion Point Meto"] = {[0]=930},
["Invasion Point Naigtal"] = {[0]=924},
["Invasion Point Occularus"] = {[0]=932},
["Invasion Point Sangua"] = {[0]=925},
["Invasion Point Sotanathor"] = {[0]=931},
["Invasion Point Val"] = {[0]=926},
["Invasion Point Vilemus"] = {[0]=927},
["Lightless Cavern"] = {[1]=839},
["Lion's Landing"] = {[0]=486},
["A Little Patience"] = {[0]=487},
["The Lost Glacier"] = {[0]=871},
["The Maelstrom L A"] = {[0]=725},
["Niskara"] = {[0]=748},
["Niskara B"] = {[0]=714},
["The Oculus L"] = {[0]=799,[1]=800,[2]=801,[3]=802,[4]=803},
["Proving Grounds"] = {[1]=480},
["The Secrets of Ragefire"] = {[1]=522},
["Shadowgore Citadel"] = {[1]=740,[2]=741},
["Shrine of the Eclipse"] = {[1]=973},
["Skywall"] = {[1]=716},
["Telogrus Rift"] = {[0]=971},
["Temple of the Jade Serpent L"] = {[1]=791,[2]=792},
["Terrace of Endless Spring L"] = {[0]=728},
["Theramore's Fall"] = {[0]=483},
["Theramore's Fall H"] = {[0]=416},
["Tol Barad L"] = {[0]=773,[1]=774},
["Ulduar L"] = {[1]=744,[2]=745,[3]=746},
["Unga Ingoo"] = {[0]=450},
["Ursoc's Lair"] = {[0]=757},
["Vindicaar Scenario"] = {[1]=940,[2]=941},
["Void Elf Scenario"] = {[0]=972},

--Battlegrounds
["Arathi Basin"] = {[0]=93},
["Eye of the Storm"] = {[0]=112},
["Isle of Conquest"] = {[0]=169},
["Silvershard Mines"] = {[1]=423},
["Strand of the Ancients"] = {[0]=128},
["Twin Peaks"] = {[0]=206},
["Warsong Gulch"] = {[0]=92},

--Instanced Zones/Misc
["Assault on the Dark Portal"] = {[0]=577,[1]=578},
["Azuremyst Isle L"] = {[0]=776},
["Black Temple L"] = {[1]=759},
["Brawl'gar Arena"] = {[1]=503},
["Darkmoon Island"] = {[0]=407,[1]=408},
["Deepholm"] = {[0]=207,[1]=208,[2]=209},
["The Fel Hammer"] = {[0]=878,[1]=879,[2]=880},
["Firelands L"] = {[0]=738},
["Helheim"] = {[0]=649},
["Highmountain Invasion"] = {[1]=869,[2]=870},
["Kezan"] = {[0]=194,[5]=195,[6]=196,[7]=197},
["Isle of Quel'Danas"] = {[0]=122},
["Isle of Thunder"] = {[0]=504,[1]=505,[2]=506},
-- ["The Maelstrom 2"] = {[0]=276}, -- bfa alpha missing, needs fixing
["Malorne's Nightmare"] = {[0]=760},
["Mardum, the Shattered Abyss C"] = {[0]=672,[1]=673,[2]=674,[3]=675},
["Molten Front"] = {[0]=338},
["Pit of Saron DK"] = {[0]=823},
["Plaguelands: The Scarlet Enclave"] = {[0]=124},
["The Ruby Sanctum DK"] = {[0]=860},
["Ruins of Gilneas"] = {[0]=217},
["Ruins of Gilneas City"] = {[0]=218},
["Stormheim Invasion"] = {[1]=865,[2]=866},
["Tol Barad"] = {[0]=244},
["Tol Barad Peninsula"] = {[0]=245},
["Val'sharah Invasion"] = {[1]=868},
["The Violet Hold L"] = {[1]=723},
["The Vortex Pinnacle L"] = {[1]=737},
["The Wandering Isle"] = {[0]=378},
["The Wandering Isle L"] = {[0]=709},
["Wintergrasp"] = {[0]=123},

["Isle of Thunder Scenario"] = {[0]=516,[1]=517,[2]=517},

--Legion Order Halls
["Dreadscar Rift"] = {[0]=717},
["The Dreamgrove"] = {[0]=747},
["Emerald Dreamway"] = {[0]=715},
["Hall of the Guardian"] = {[1]=734,[2]=735},
["The Maelstrom L"] = {[0]=726},
["Mardum, the Shattered Abyss"] = {[1]=719,[2]=720,[3]=721},
["Netherlight Temple"] = {[1]=702},
["Skyhold"] = {[1]=695},
["Trueshot Lodge"] = {[0]=739},














["Atul'Aman"] = {[0]=1009},
["Chamber Of Heart"] = {[0]=1021},
["Greymane Manor"] = {[0]=1030,[1]=1031},
["Islands"] = {[0]=824},
["Molten Cay"] = {[0]=1035},
["Ruins of Lordaeron"] = {[0]=908},
["Seething Shore"] = {[0]=907},
["Silithus Brawl"] = {[0]=904},
["Skittering Hollow"] = {[0]=1032},
["The Dread Chain"] = {[0]=1036},
["The Rotting Mire"] = {[0]=1033},
["The Underrot"] = {[0]=1041,[1]=1042},
["Tropical Isle 8.0"] = {[0]=939},
["Uncharted Island"] = {[0]=1022},
["Verdant Wilds"] = {[0]=1034},
["Waycrest Dimension"] = {[0]=1029},
["Whispering Reef"] = {[0]=1037},
["Thros, The Blighted Lands"] = {[0]=1045},
["Tirisfal Glades BFA"] = {[0]=997},
["Undercity BFA"] = {[0]=998},
["Blackrock Scenario"] = {[0]=1159, [1]=1160},
["Arathi Highlands BFA"] = {[0]=1158},
["The Great Sea"] = {[0]=1157},
["Stormwind City BFA"] = {[0]=1012},
["Stockcades Scenario"] = {[0]=1013},

["The Nexus Scenario"] = {[0] = 370},
['924'] = {[1] = 501,[2] = 502}, -- Dalaran L1
['1051'] = {[0] = 718},
['1102'] = {[0] = 798}, -- The Arcway 2
['1105'] = {[1] = 804,[2] = 805},
['1127'] = {[1] = 825},
['1130'] = {[1] = 827},
['1148'] = {[1] = 857},
['1166'] = {[1] = 881},


--Unused Maps
-- ["Deepwind Gorge"] = {[0]=519}, -- parent Valley of the Four Winds 
-- ["Helmouth Shallows"] = {[0]=694}, -- parent Stormheim
-- ["Battle for Blackrock Mountain"] = {[0]=838}, -- parent Burning Steppes
-- ["Cave of the Bloodtotem"] = {[0]=826}, -- parent Highmountain
-- ["Shado-Pan Showdown"] = {[0]=843}, -- parent Kun-Lai Summit
-- ["Crumbling Depths"] = {[0]=729}, -- parent Deepholm
-- ["Temple of Kotmogu"] = {[0]=417,[1]=449}, -- parent Vale of Eternal Blossoms
-- ["Gilneas Island"] = {[0]=938},


--['Blasted Lands 2']=992, ['Twilight Highlands 2']=770, ['Uldum 2']=748, ['Deepwind Gorge']=935, ['Frostwall 2']=980, ['Frostwall 3']=981, ['Frostwall 4']=982, ['Frostwall 4']=990,
--['Lunarfall 2']=973, ['Lunarfall 3']=974, ['Lunarfall 4']=975, ['Lunarfall 5']=991, ['Twisting Nether'] = 1020, ['The Naglfar'] = 1043, ['Suramar 2']=1055, ['Shield\'s Rest'] = 1036, ['Helmouth Shallows'] = 1034,
--['Dalaran L1']=924, ['Deepholm L'] = 1060, ['Kun-Lai Summit L'] = 1058, ['Tirisfal Glades L'] = 1062, ['The Arcway 2']=1102, ['The Nexus 2']=803, ['OLD Scholomance']=763, ['Scarlet Monastery B']=874,
--['Vault of the Wardens 2']=1045, ['Mount Hyjal 2']=683, ['Defense of Karabor']=983, ['Thunder King\'s Citadel']=934, ['The Battle for Gilneas']=736, ['The Battle for Gilneas (Old City Map)']=677,
--['Temple of Kotmogu']=881, ['Acherus: The Ebon Hold'] = 1101, ['Karazhan L'] = 1115, ['Halls of Valor'] = 1041,

}
data.MapNamesByID = {}
data.FloorByID = {}
data.MapGroupIDs = {}
for mapname,mapdata in pairs(data.MapIDsByName) do 
	for floornum,floormap in pairs(mapdata) do
		if floornum~="default" then
			data.MapNamesByID[floormap] = {mapname,floornum}
			data.FloorByID[floormap] = floornum
			data.MapGroupIDs[floormap] = mapname
		end
	end
end



-- /run D={}  for i=1,1000 do pcall(EJ_SelectInstance,i) local _, _, _, _, _, _, dungeonMapId, _ = EJ_GetInstanceInfo()  D[dungeonMapId or 0]=true end  ZGV:ShowDump(ZGV:Serialize(D),"")
-- This is used by |goto implementation to detect which maps cannot be positioned anymore.
data.DungeonMaps = {
  [0] = true,
  [129] = true,
  [131] = true,
  [132] = true,
  [133] = true,
  [136] = true,
  [138] = true,
  [140] = true,
  [141] = true,
  [143] = true,
  [147] = true,
  [154] = true,
  [155] = true,
  [156] = true,
  [159] = true,
  [160] = true,
  [163] = true,
  [168] = true,
  [171] = true,
  [172] = true,
  [183] = true,
  [184] = true,
  [185] = true,
  [186] = true,
  [200] = true,
  [213] = true,
  [219] = true,
  [220] = true,
  [221] = true,
  [225] = true,
  [226] = true,
  [230] = true,
  [232] = true,
  [240] = true,
  [242] = true,
  [246] = true,
  [247] = true,
  [248] = true,
  [252] = true,
  [257] = true,
  [258] = true,
  [260] = true,
  [261] = true,
  [262] = true,
  [263] = true,
  [265] = true,
  [266] = true,
  [267] = true,
  [269] = true,
  [272] = true,
  [273] = true,
  [274] = true,
  [277] = true,
  [279] = true,
  [280] = true,
  [282] = true,
  [283] = true,
  [285] = true,
  [287] = true,
  [291] = true,
  [293] = true,
  [294] = true,
  [297] = true,
  [300] = true,
  [301] = true,
  [310] = true,
  [317] = true,
  [320] = true,
  [323] = true,
  [324] = true,
  [325] = true,
  [328] = true,
  [329] = true,
  [330] = true,
  [331] = true,
  [332] = true,
  [333] = true,
  [334] = true,
  [335] = true,
  [337] = true,
  [340] = true,
  [347] = true,
  [349] = true,
  [350] = true,
  [367] = true,
  [379] = true,
  [398] = true,
  [399] = true,
  [404] = true,
  [409] = true,
  [429] = true,
  [431] = true,
  [435] = true,
  [437] = true,
  [440] = true,
  [443] = true,
  [453] = true,
  [456] = true,
  [458] = true,
  [471] = true,
  [474] = true,
  [476] = true,
  [508] = true,
  [543] = true,
  [557] = true,
  [573] = true,
  [574] = true,
  [593] = true,
  [595] = true,
  [597] = true,
  [601] = true,
  [606] = true,
  [612] = true,
  [617] = true,
  [620] = true,
  [661] = true,
  [704] = true,
  [706] = true,
  [710] = true,
  [713] = true,
  [731] = true,
  [732] = true,
  [733] = true,
  [749] = true,
  [751] = true,
  [761] = true,
  [764] = true,
  [777] = true,
  [807] = true,
  [812] = true,
  [830] = true,
  [846] = true,
  [850] = true,
  [903] = true,
  [909] = true,
  [934] = true,
}
data.DungeonMaps[379]=nil -- kun lai summit
data.DungeonMaps[543]=nil -- gorgrond


--[[
	YE OLDE HELP TEXT

	Okay, to clarify, there's multiple ways to write a map link now. It's a mess, but it works.

	The first, simplest way, is two nodes linked, written in plain text (let's hope they're accessible by some means):
		"First Zone/2 11.22,33.44 -x- Second Zone/3 55.66,77.88",

	The "-x-" means it's a crossing, two-way. You can use "-to-" to make a one-way link.


	NODE NAMES:

	Adding @something after the node coordinates gives the node a name, for later reuse.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88 @stormgate",
		"Elwynn 77.77,66.66 -x- @stormgate",

	You can also use @+ to indicate the last node created or mentioned, whether it was named or not.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88",
		"@+ -x- Elwynn 77.77,66.66",

	This allows for easy chaining of nodes.


	ONE NODE?

	You can create just one node:
		"Solitary 11.1,22.2"

	This only makes sense if you @+ link to it later, or give it an explicit @name and refer to that.


	ADDITIONAL NODE DATA:

	Writing <field:value> after a node's coordinates assigns additional data.
		"Stormwind 11.1,22.2 <title:Watch out, dog poo> <radius:5>"

	Data fields include (among others):
		'title' to caption a node,
		'radius' to set the node's player-detection radius,
		'region' to assign a node to a special region,
		'nofly' set to 1 means the node cannot be flown to,
		'dark' set to 1 means the node can only be seen by the player from a small distance, but suffers no penalty when chained between other nodes


	ADDITIONAL LINK DATA:

	Writing {field:value} after both nodes assigns data to their link:
		"Stormwind 11.1,22.2 -x- Elwynn Forest 55.5,66.6 {cost:999}"   -- this is a very time-costly connection


	ADVANCED FORMAT:

	If that's not enough, you can use a "raw" format to write node links:
		{ "@+" , "Orgrimmar/1 11.1,22.2" , template="portalauto", faction="H", cost=123 }

	Within that, you can go even deeper and write the node(s) in raw mode, too:
		{ "@+" , {"Orgrimmar/1 11.1,22.2",title="Something in Orgri",region="whatever"} , oneway=1 }

	Very advanced, messy, "fake zone"-based mapping (Maraudon the Zone of Nightmares) makes extensive use of that.

--]]


data.basenodes = {}

data.basenodes.setup = {
	--"REGION fuselightbtspre Badlands 79.1,31.6 <150",
}



-- These zone pairs see directly into each other, as they share "green" borders.
data.greenborders = {
	{"Elwynn Forest","Duskwood"},
	{"Westfall","Duskwood"},
	{"Eversong Woods","Ghostlands"},

	{"Kelp'thar Forest","Shimmering Expanse"},
	{"Shimmering Expanse","Abyssal Depths"},
	{"Abyssal Depths","Kelp'thar Forest"},

	{"Tiragarde Sound","Boralus"},
	{"Zuldazar","Dazar'alor"},
}

data.walls = {
	["Tirisfal Glades"] = {
		{ 48.8,50.9, 50.8,50.7, 51.0,56.1, 48.2,56.4, "loop" }, -- Calston Lake (example)
	},
	["Eastern Plaguelands"] = {
		{ 90.3,0.1, 84.7,38.2, 80.8,54.1, 84.3,71.8 }, -- wall off Scarlet Enclave
	},
	["Dazar'alor"] = {
		{ 39.87,82.56, 40.69,98.45, }, -- canals in Dazar
		{ 39.47,80.34, 39.80,62.64, },
		{ 49.06,66.57, 43.60,69.16, 38.67,75.25, }, 
		{ 50.74,66.62, 61.30,62.37, },
		
		{ 39.03,34.09, 42.29,29.21, }, -- N canal
		{ 43.66,27.05, 52.52,23.92, },
		{ 53.62,23.21, 56.12,11.49, },

		{ 46.53,61.06, 53.53,61.10 },
	},
	["Zuldazar"] = {
		{ 56.12,28.53, 57.21,60.00 }, -- no running across Dazar
		{ 67,65, 64,55, 73,55, 73,43 },  -- SE mountains
	},
	["Tiragarde Sound"] = {
		{ 44.48,32.59, 48.97,40.33, 58.22,39.02, 65.39,30.27 },
		{ 75.07,47.51, 72.00,44.00, 53.78,41.16, 59.54,57.85 },
		{ 63,38, 76,30 }, -- no running across Boralus

		{ 44.86,26.59, 43.33,24.74, 39.28,24.93 }, -- no dragonball
	},
	["Boralus"] = {
		{ 40.79,51.29, 56.63,54.36 },
		{ 58.35,53.56, 79.60,41.68 },
	},
	["Drustvar"] = {
		{ 61.50,35.50, 76.00,32.00 }, 
	},
}



-- These define zone-wide flags, if that's needed.
data.zoneflags = {
	["Razorfen Kraul"]={dark=1},
}


--[[
	These lines define how each point's text displays, depending on their "situation".
	The keys of this dictionary adhere to a quirky, but logical pattern of "a_b__c_d", which means:
		a = "this type of connection"
		_ = "to"
		b = "this type of point"
		_ = "and"
		_ = "then"
		c = "that type of connection"
		_ = "to"
		d = "that type of point".
	So, a "start" point that you "walk" to (all paths start like that), after which you'll "fly" to a "border" point, is in a situation of "walk_start__fly_border" ("walk to start, and then fly to border").
	You can supply just "a_b", or just "b".
	A point attribute <template:nameoftemplate> overrides the point's basic type for the purpose of this list. Thus, a point can stay a "portal", but have the flavour of "portalclick" if it has a <template:portalclick> attribute and have a special display of "Click portal", matching a "portalclick" type.
	A connection attribute {template:nameoftemplate} overrides the mode of transport for the purpose of this list. Thus, if a connection has {template:portalauto} one can match for "portalauto_*" to show descriptions for that connection, or match for "*_*__portalauto_*" to match for NEXT connection's type and perhaps show an appropriate text on the previous node before a portal.
	A connection attribute that is not found in this list, is looked up in the list above, for easy two-way descriptions.
	Asterisks denote wildcards.
	One can also use the text part of the dictionary to refer to other entries in the list.
	Entries are checked in the file's order. First match gets the cake.

	So, for example: 
		"taxi" - matches points of type "taxi", to display them as "Talk to {npc}\nFly to {next_name}, {next_map}".
		"portalauto" - matches points of template "portalauto", to display them as "Enter portal to {next_map}".
		"*_*__pinkportal" - matches any point AFTER which there's a pinkportal connection.
--]]

data.point_context_templates = {
	{'walk_start',"You are here"},

	{'whistle',"Use Flight Master's Whistle"},
	{'taxi_taxi__taxi_taxi',"passfp"},
	{'taxi_ferry__taxi_ferry',"passfp"},
	{'forced_taxi__taxi_taxi',"Arrive at {name}, {map}\nFly again to {next_name}"},
	{'forced_ferry__taxi_ferry',"Arrive at {name}, {map}\nTake the Ferry again to {next_name}"},
	{'*_ferry__taxi_ferry',"Talk to {npc}\nTake the Ferry to {next_name}"},
	--{'taxi_taxi__taxi_taxi',"arrive"},

	{'*_taxi__taxi_taxi',"taxi"},
	{'taxi_taxi',"arrivefp"},
	{'taxi_ferry',"arrivefp"},
	{'taxi_argusportal',"arrivefp"},
	{'taxi_argushub',"arrivefp"},

	{'taxi',"Talk to {npc}\nFly to {next_name}"},
	{'taxidumb',"Arrive at your destination"},

	{'*_ship__ship_ship',"Ride the Boat to {next_port}"}, {'ship_ship',"arrive"},
	{'*_zeppelin__zeppelin_zeppelin',"Ride the Zeppelin to {next_port}"}, {'zeppelin_zeppelin',"arrive"},

	{'*_*__pandarope_*',"Click the Rope on the Ground\nto Swing to {next_map}"},

	{'*_portal__portal_*',"portalclick"}, {'portal*_*',"arrive"},
	{'*_portal__portalauto_*',"portalauto"},-- {'portalauto_X',"arrive"},
	{'*_portal__portalDungeonEnter_*',"portalauto"},-- {'portaldungeon_X',"arrive"},
	{'*_portal__portalDungeonExit_*',"Use the Portal to Leave {map}"},-- {'portaldungeon_X',"arrive"},
	{'portalauto',"Enter the Portal to {next_map}"},
	{'portaldungeon',"Enter the Portal to {next_map}"},
	{'portalclick',"Click the Portal to {next_map}"},
	{'*_teleportnamed',"Teleport to {next_name}"},
	--{'portal',"Click the Portal to {next_map}\nTeleport to {next_map}"},
	{'pinkportal',"Go Through the Pink Portal to {next_map}"},
	{'*_*__pinkportal_*',"Go Through the Pink Portal to {next_map}"},
	{'*_*__darkportal_*',"Enter the Green Portal\nTeleport to {next_map}"},
	{'darkportal',"Enter the Green Portal\nTeleport to {next_map}"},
	{'*_*__cityportal_*',"Enter the Circular Portal\nTeleport to {next_map}"},
	{'cityportal',"Enter the Circular Portal\nTeleport to {next_map}"},
	{'blackcat',"Talk to the Nightsaber Rider\nto Travel to {next_name}"},
	{'moltentele',"Talk to Lothos Riftwaker\n Teleport to {next_map}"},
	{'orbofcommand',"Click the Orb of Command\n Teleport to {next_map}"},
	{'dragonrider',"Talk to the Dragon\n Arrive at {next_map}"},
	{'*_*__transporter_*',"Enter the Transporter"},
	{'transporter_*',"Leave the Transporter"},
	{'argusportal',"Use the Lightforged Beacon\nto Teleport to {next_name}"},
	{'argushub',"Use the Navigaton Console\nto Teleport to {next_name}"},

	{'walk_border',"walk_map"}, {'border_border',"walk_map"},

	{'arrive',"Arrive at {map}"},
	{'arrivefp',"Arrive at {name}"},
	{'passfp',"Pass {name}, {map}"},

	{'*_tram__tram_tram',"tram"}, {'tram_tram',"arrive"},
	{'tram',"Ride the Tram to {next_map}"},

	{'deathgate',"Cast Death Gate to Acherus"},
	{'teleport',"Cast Teleport to {map}"},

	{'courtesymage',"Find a Mage to Teleport you to {map}\nNo Direct Path Available"},
	{'courtesywarlock',"No Path to {map} Available"},
	{'courtesy',"Use a Courtesy!"},

	{'teleport_ask',"Use a Mage Portal to {map}"},
	{'useitem',"Use {item}"},

	{'hearth',"Hearth to {name}"},
	{'ghearth',"Hearth to Your Garrison"},
	{'astralrecall',"Cast Astral Recall to Teleport to {name}"},

	{'*_door',"Click to Open the Door"},
	{'walk',"Go to {node}"},
	{'swim',"Swim to {node}"},
	{'walk_map',"Go to {bordermap}"},
	{'fly',"Go to {node}"},
	{'travel','walk'},
}


data.connection_templates = {
	['building'] = {
		['title_atob'] = "Enter the building",
		['title_btoa'] = "Leave the building",
	},
	['cave'] = {
		['title_atob'] = "Enter the cave",
		['title_btoa'] = "Leave the cave",
	},
	['mine'] = {
		['title_atob'] = "Enter the mine",
		['title_btoa'] = "Leave the mine",
	},
	['tunnel'] = {
		['title_atob'] = "Enter tunnel",
		['title_btoa'] = "Exit tunnel",
	},
	['longtunnel'] = {
		['title_atob'] = "Enter tunnel",
		['title_btoa'] = "Go through tunnel",
	},
	['barrow'] = {
		['title_atob'] = "Enter barrow",
		['title_btoa'] = "Exit barrow",
	},
	['tomb'] = {
		['title_atob'] = "Enter tomb",
		['title_btoa'] = "Exit tomb",
	},
	['pathup'] = {
		['title_atob'] = "Go up the path",
		['title_btoa'] = "Go down the path",
	},
}





data.ZoneMeta = {
	["Stormsong Valley/1"] = {hostile=true},
	["Stormsong Valley/2"] = {hostile=true},
	["Stormsong Valley/3"] = {hostile=true},
	["(all micros)"] = {hostile=true},
	["Caverns of Time"] = {hostile=false},
	["Deeprun Tram/1"] = {hostile=false},
	["Deeprun Tram/2"] = {hostile=false},
	["Dazar'alor/1"] = {hostile=false},
	["Dazar'alor/2"] = {hostile=false},
}

--[[
data.ZoneMeta[614].level=80 -- 3 sub zones in Vashj'ir that returned 0 as their level... Thank you blizzard.  They're just subzones of Vashj'ir #613.
data.ZoneMeta[615].level=80
data.ZoneMeta[610].level=80
data.ZoneMeta[499].level=65 -- Isle of Quel'Danas. Had 0 for whatever reason but FP is learned automatically at 65
--Panda Land Levels hardcoded until GetCurrentMapLevelRange() works for them.
data.ZoneMeta[873].level=87
data.ZoneMeta[929].level=90
--]]
