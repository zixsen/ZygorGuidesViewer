local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Amber Primordial Direhorn",{
keywords={"amber","primordial","direhorn","ground","mount"},
mounts={138424},
model={47718},
description="This guide will help you acquire the Amber Primordial Direhorn Mount mount.",
},[[
step
label "start"
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto The Jade Forest 52.5,18.9 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Krasarang Wilds 38.8,67.4 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Dread Wastes 47.5,61.5 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Townlong Steppes 36.7,85.7 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Amber Primordial Direhorn##94230 |goto Kun-Lai Summit 75.0,67.6 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm |next "start"
step
label "end"
learnmount Amber Primordial Direhorn##138424 |use Reins of the Amber Primordial Direhorn##94230
step
Congratulations, you have attained the Amber Primordial Direhorn mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Black Primal Raptor",{
keywords={"black","primal","raptor","ground","mount"},
mounts={138642},
model={47828},
description="This guide will help you acquire the Black Primal Raptor Mount mount.",
},[[
step
To attain this mount, you must kill the beasts on the Isle of Giants.
To effectively kill them, you will need to be at least level 90 with _Heroic Level Dungeon Gear_.
It is also recommended that you bring a friend for the _Primal_ enemies if below the max level.
confirm
step
kill Primal Direhorn##70016+, Primal Direhorn Hatchling##70012+, Young Primal Devilsaur##69993+, Primal Devilsaur##70011+, Young Primal Devilsaur##69993+, Pterrorwing Skyscreamer##70020+
|tip Any dinasour on this island can drop the Primal Egg.
collect Primal Egg##94295 |goto Isle of Giants 46.7,71.6
step
Once you collect the _Primal Egg_, you will have to wait 3 days for it to hatch.
collect Reins of the Black Primal Raptor##94292
step
learnmount Black Primal Raptor##138642 |use Reins of the Black Primal Raptor##94292
step
Congratulations, you have attained the _Black Primal Raptor_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Cobalt Primordial Direhorn",{
keywords={"cobalt","primordial","direhorn","ground","mount"},
model={47716},
mounts={130965},
description="This guide will help you acquire the Cobalt Primordial Direhorn mount.",
},[[
step
kill Oondasta##69161
collect Reins of the Cobalt Primordial Direhorn##94228 |goto Isle of Giants/0 50.05,56.93
|tip This mount has a very low drop rate.
step
learnmount Cobalt Primordial Direhorn##130965 |use Reins of the Cobalt Primordial Direhorn##94228
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Green Primal Raptor",{
keywords={"green","primal","raptor","ground","mount"},
mounts={138643},
model={47827},
description="This guide will help you acquire the Green Primal Raptor Mount mount.",
},[[
step
To attain this mount, you must kill the beasts on the Isle of Giants.
It is also recommended that you bring a friend for the _Primal_ enemies if below the max level.
confirm
step
kill Primal Direhorn##70016+, Primal Direhorn Hatchling##70012+, Young Primal Devilsaur##69993+, Primal Devilsaur##70011+, Young Primal Devilsaur##69993+, Pterrorwing Skyscreamer##70020+
|tip Any dinasour on this island can drop the Primal Egg.
collect Primal Egg##94295 |goto Isle of Giants 46.7,71.6
step
Once you collect the _Primal Egg_, you will have to wait 3 days for it to hatch.
collect Reins of the Green Primal Raptor##94293
step
learnmount Green Primal Raptor##138643 |use Reins of the Green Primal Raptor##94293
step
Congratulations, you have attained the _Green Primal Raptor_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Jade Primordial Direhorn",{
keywords={"jade","primordial","direhorn","ground","mount"},
mounts={138426},
model={47717},
description="This guide will help you acquire the Jade Primordial Direhorn Mount mount.",
},[[
step
label "start"
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto The Jade Forest 52.5,18.9 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Krasarang Wilds 38.8,67.4 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Dread Wastes 47.5,61.5 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Townlong Steppes 36.7,85.7 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Jade Primordial Direhorn##94231 |goto Kun-Lai Summit 75.0,67.6 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm |next "start"
step
label "end"
learnmount Jade Primordial Direhorn##138426 |use Reins of the Jade Primordial Direhorn##94231
step
Congratulations, you have attained the Jade Primordial Direhorn mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Red Primal Raptor",{
keywords={"green","primal","raptor","ground","mount"},
mounts={138641},
model={47826},
description="This guide will help you acquire the Red Primal Raptor Mount mount.",
},[[
step
To attain this mount, you must kill the beasts on the Isle of Giants.
It is also recommended that you bring a friend for the _Primal_ enemies if below the max level.
confirm
step
kill Primal Direhorn##70016+, Primal Direhorn Hatchling##70012+, Young Primal Devilsaur##69993+, Primal Devilsaur##70011+, Young Primal Devilsaur##69993+, Pterrorwing Skyscreamer##70020+
|tip Any dinasour on this island can drop the Primal Egg.
collect Primal Egg##94295 |goto Isle of Giants 46.7,71.6
step
Once you collect the _Primal Egg_, you will have to wait 3 days for it to hatch.
collect Reins of the Red Primal Raptor##94291
step
learnmount Red Primal Raptor##138641 |use Reins of the Red Primal Raptor##94291
step
Congratulations, you have attained the _Red Primal Raptor_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Slate Primordial Direhorn",{
keywords={"slate","primordial","direhorn","ground","mount"},
mounts={138425},
model={47715},
description="This guide will help you acquire the Slate Primordial Direhorn Mount mount.",
},[[
step
label "start"
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto The Jade Forest 52.5,18.9 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Krasarang Wilds 38.8,67.4 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Dread Wastes 47.5,61.5 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Townlong Steppes 36.7,85.7 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm
step
kill Zandalari Warbringer##69769
|tip The color of the Warbringer's mount is the color of the mount that will drop.
collect Reins of the Slate Primordial Direhorn##94229 |goto Kun-Lai Summit 75.0,67.6 |next "end"
_Click_ here if the mount did not drop from this Warbringer |confirm |next "start"
step
label "end"
learnmount Slate Primordial Direhorn##138425 |use Reins of the Slate Primordial Direhorn##94229
step
Congratulations, you have attained the Slate Primordial Direhorn mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Son of Galleon",{
keywords={"son","of","galleon","ground","mount"},
model={45264},
mounts={138423},
description="This guide will help you acquire the Son of Galleon mount.",
},[[
step
kill Galleon##62346
collect Son of Galleon's Saddle##89783 |goto Valley of the Four Winds/0 70.74,63.79
|tip This mount has a very low drop rate.
step
learnmount Son of Galleon##130965 |use Son of Galleon's Saddle##89783
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Black Dragon Turtle",{
keywords={"black","dragon","turtle","ground","mount"},
model={43717},
mounts={127286},
description="This guide will help you acquire the Black Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Black Dragon Turtle##91008 |goto Orgrimmar 69.8,41.1
step
learnmount Black Dragon Turtle##127286 |use Reins of the Black Dragon Turtle##91008
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Blue Dragon Turtle",{
keywords={"blue","dragon","turtle","ground","mount"},
model={43718},
mounts={127287},
description="This guide will help you acquire the Blue Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Blue Dragon Turtle##91009 |goto Orgrimmar 69.8,41.1
step
learnmount Blue Dragon Turtle##127287 |use Reins of the Blue Dragon Turtle##91009
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Brown Dragon Turtle",{
keywords={"brown","dragon","turtle","ground","mount"},
model={43719},
mounts={127288},
description="This guide will help you acquire the Brown Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Brown Dragon Turtle##91005 |goto Orgrimmar 69.8,41.1
step
learnmount Brown Dragon Turtle##127288 |use Reins of the Brown Dragon Turtle##91005
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Black Dragon Turtle",{
keywords={"great","black","dragon","turtle","ground","mount"},
model={43723},
mounts={127295},
description="This guide will help you acquire the Great Black Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Great Black Dragon Turtle##91011 |goto Orgrimmar 69.8,41.1
step
learnmount Great Black Dragon Turtle##127295 |use Reins of the Great Black Dragon Turtle##91011
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Blue Dragon Turtle",{
keywords={"great","blue","dragon","turtle","ground","mount"},
model={43724},
mounts={127302},
description="This guide will help you acquire the Great Blue Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Brown Dragon Turtle##91013 |goto Orgrimmar 69.8,41.1
step
learnmount Great Blue Dragon Turtle##127302 |use Reins of the Great Blue Dragon Turtle##91013
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Brown Dragon Turtle",{
keywords={"great","brown","dragon","ninja","turtle","ground","mount"},
model={43725},
mounts={127308},
description="This guide will help you acquire the Great Brown Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Great Brown Dragon Turtle##91014 |goto Orgrimmar 69.8,41.1
step
learnmount Great Brown Dragon Turtle##127308 |use Reins of the Great Brown Dragon Turtle##91014
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Green Dragon Turtle",{
keywords={"great","green","dragon","turtle","mount","ground","mount"},
model={43722},
mounts={127293},
description="This guide will help you acquire the Great Green Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Great Green Dragon Turtle##91012 |goto Orgrimmar 69.8,41.1
step
learnmount Great Green Dragon Turtle##127293 |use Reins of the Great Green Dragon Turtle##91012
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Purple Dragon Turtle",{
keywords={"great","purple","dragon","turtle","ground","mount"},
model={43726},
mounts={127310},
description="This guide will help you acquire the Great Purple Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Great Purple Dragon Turtle##91015 |goto Orgrimmar 69.8,41.1
step
learnmount Great Purple Dragon Turtle##127310 |use Reins of the Great Purple Dragon Turtle##91015
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Great Red Dragon Turtle",{
keywords={"great","red","dragon","turtle","ground","mount"},
model={42352},
mounts={120822},
description="This guide will help you acquire the Great Red Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Great Red Dragon Turtle##91010 |goto Orgrimmar 69.8,41.1
step
learnmount Great Red Dragon Turtle##120822 |use Reins of the Great Red Dragon Turtle##91010
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Green Dragon Turtle",{
keywords={"green","dragon","turtle","ground","mount"},
model={42250},
mounts={120395},
description="This guide will help you acquire the Green Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Green Dragon Turtle##91004 |goto Orgrimmar 69.8,41.1
step
learnmount Green Dragon Turtle##120395 |use Reins of the Green Dragon Turtle##91004
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Purple Dragon Turtle",{
keywords={"purple","dragon","turtle","ground","mount"},
model={43910},
mounts={127289},
description="This guide will help you acquire the Purple Dragon Turtle mount.",
},[[
step
Routing to the next step |next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Purple Dragon Turtle##91006 |goto Orgrimmar 69.8,41.1
step
learnmount Purple Dragon Turtle##127289 |use Reins of the Purple Dragon Turtle##91006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Red Dragon Turtle",{
keywords={"red","dragon","turtle","ground","mount"},
model={43721},
mounts={127290},
description="This guide will help you acquire the Red Dragon Turtle mount.",
},[[
step
Routing to the next step|next "rep"
only if not Pandaren
step
Skipping to the next step |next "buy"
only if Pandaren
step
label "rep"
Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
Proceeding next step |next |only if default
step
label "huojin_buy"
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
step
label "huojin_tab"
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
talk Turtlemaster Odai##66022
buy Reins of the Red Dragon Turtle##91007 |goto Orgrimmar 69.8,41.1
step
learnmount Red Dragon Turtle##127290 |use Reins of the Red Dragon Turtle##91007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous\\Bone-White Primal Raptor",{
keywords={"bone","white","primal","raptor","ground","mount"},
mounts={138640},
model={47825},
description="This guide will help you acquire the Bone-White Primal Raptor mount.",
},[[
step
For this mount, you will likely need to have at least 2 people who have _Heroic Level Dungeon Gear_.
If you are soloing, avoid _Primal_ enemies, as they hit very hard.
This mount will take quite a while to obtain, so you may want to come back and do this in bursts.
confirm
step
kill Primal Direhorn##70016+, Primal Direhorn Hatchling##70012+, Young Primal Devilsaur##69993+, Primal Devilsaur##70011+, Young Primal Devilsaur##69993+, Pterrorwing Skyscreamer##70020+
collect 9999 Giant Dinosaur Bone##94288
step
Enter the cave here. |goto Isle of Giants/0 27.4,58.0 <5 |c
step
talk Ku'ma##70022
turnin A Mountain of Giant Dinosaur Bones##32617 |goto 32.7,53.9
step
collect Reins of the Bone-White Primal Raptor##94290
learnmount Bone-White Primal Raptor##138640 |use Reins of the Bone-White Primal Raptor##94290
step
Congratulations, you have attained the _Bone-White Primal Raptor_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous\\Brawler's Burly Mushan Beast",{
keywords={"brawler's","burly","mushan","beast","ground","mount"},
mounts={142641},
model={48858},
description="This guide will help you acquire the Brawler's Burly Mushan Beast mount.",
},[[
step
This mount was obtained through the old Brawler's Guild. You had to reach rank 10 in the old Brawler's Guild to purchase this mount.
This mount is no long available in-game
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous\\Crimson Deathcharger",{
keywords={"crimson","death","charger","ground","mount"},
mounts={73313},
model={25279},
description="This guide will help you acquire the Crimson Deathcharger mount.",
},[[
step
This mount is a reward given to players that complete the quest line to acquire the legendary Shadowmourne
|tip Shadowmourne's quest line takes several months to complete and is not all soloable.
|tip Only Paladins, Death Knights, and Warriors can complete this quest and obtain Shadowmourne.
|tip This mount can also be bought on the AH.
confirm
step
collect Reins of the Crimson Deathcharger##52200 |n
learnmount Reins of the Crimson Deathcharger##73313 |use Reins of the Crimson Deathcharger##52200
step
_Congratulations!_
You are now the proud owner of a _Crimson Deathcharger_.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Ashhide Mushan Beast",{
keywords={"ashhide","mushan","beast","ground","mount"},
mounts={148428},
model={51484},
description="This guide will help you acquire the Ashhide Mushan mount.",
},[[
step
Be warned that this mount may require that you do some PVP combat.
confirm
step
In order to earn this mount you will need to acquire the _Censer of Eternal Agony_, which costs 2500 _Timeless Coin_ to obtain.
There are several caches found throughout the entire isle.
Each enemy drops
earn 2500 Timeless Coin##777
step
talk Speaker Gulan##73307
buy Censer of Eternal Agony##102467 |goto Timeless Isle 74.9,44.9
step
Note that using this will sacrifice your health by 90%, however this buff is needed to earn Bloody Coins.
You will be hostile with _BOTH_ factions once you activate this item.
Use your Censer of Eternal Agony. |use Censer of Eternal Agony##102467
Kiling players will net you _Bloody Coins_.
earn 500 Bloody Coin##789
step
talk Speaker Gulan##73307
buy Reins of the Ashhide Mushan Beast##103638 |goto Timeless Isle 74.9,44.9
step
Use the _Reins of the Ashhide Mushan Beast_ in your bags |use Reins of the Ashhide Mushan Beast##103638
learnmount Ashhide Mushan Beast##148428
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Kor'kron Juggernaut",{
keywords={"kor'kron","juggernaut","garrosh","hellscream","siege","of","orgrimmar","ground","mount"},
model={51485},
mounts={148417},
description="This guide will help you acquire the Kor'kron Juggernaut mount.",
},[[
step
This mount drops from Garrosh Hellscream, in the raid _Siege of Orgrimmar_.
|tip He has a 100% chance to drop this mount on heroic difficulty,and only a 1.5% chance to drop it on normal difficulty.
confirm
step
kill Garrosh Hellscream##71865
collect Kor'kron Juggernaut##104253 |goto Siege of Orgrimmar/12 49.4,71.3
step
Use the _Kor'kron Juggernaut_ in your bags |use Kor'kron Juggernaut##104253
learnmount Kor'kron Juggernaut##148417
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Spawn of Horridon",{
keywords={"spawn","horridon","direhorn","ground","mount"},
mounts={136471},
model={47238},
description="This guide will help you acquire the Spawn of Horridon mount.",
},[[
step
This mount is a boss drop in the _Throne of Thunder_ raid.
kill Horridon##68476
collect Spawn of Horridon##93666 |goto Throne of Thunder/2 27.4,79.1
step
learnmount Spawn of Horridon##136471 |use Spawn of Horridon##93666
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Amber Scorpion",{
keywords={"amber","scorpion","the","klaxxi","exalted","ground","mount"},
model={43090},
mounts={123886},
description="This guide will help you acquire the Amber Scorpion mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Klaxxi_.
In order to become Exalted with the Klaxxi, refer to the Zygor Guides Reputation section.
Click here for the daily quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to check your progress. |confirm
Click here to be taken to The Klaxxi Quartermaster to purchase the mount. |next "buy" |only if rep("The Klaxxi")>=Exalted
step
You are _Neutral_ with _The Klaxxi_. |only if rep("The Klaxxi")<=Neutral
You are _Friendly_ with _The Klaxxi_. |only if rep("The Klaxxi")==Friendly
You are _Honored_ with _The Klaxxi_. |only if rep("The Klaxxi")==Honored
You are _Revered_ with _The Klaxxi_. |only if rep("The Klaxxi")==Revered
You are _Exalted_ with _The Klaxxi_. |only if rep("The Klaxxi")==Exalted
Exalted with The Klaxxi |achieve 6366
Click here to return to the |next "a" |confirm
step
label "buy"
talk Ambersmith Zikk##64599
buy Reins of the Amber Scorpion##85262 |goto Dread Wastes 55.0,35.6
learnmount Amber Scorpion##123886 |goto Dread Wastes 55.0,35.6 |use Reins of the Amber Scorpion##85262
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Azure Riding Crane",{
keywords={"azure","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43704},
mounts={127174},
description="This guide will help you acquire the Azure Riding Crane mount.",
},[[
step
This mount requires you to be _Exalted_ with _The Golden Lotus_.
Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
talk Jaluu the Generous##59908
buy Reins of the Azure Riding Crane##87781 |goto Vale of Eternal Blossoms 63.0,22.2
learnmount Azure Riding Crane##127174 |goto Vale of Eternal Blossoms 63.0,22.2 |use Reins of the Azure Riding Crane##87781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Azure Water Strider",{
keywords={"azure","water","strider","waterwalking","exalted","the","anglers","ground","mount"},
model={41711},
mounts={118089},
description="This guide will help you acquire the Azure Water Strider mount.",
},[[
step
This mount requires you to be _Exalted_ with _The Anglers_.
Click here to be taken to start _The Anglers_ dailies. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Anglers Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Anglers' Quartermaster to purchase the mount. |next "buy" |only if rep("The Anglers")>=Exalted
Click here to check your progress. |confirm
step
You are _Neutral_ with _The Anglers_. |only if rep("The Anglers")<=Neutral
You are _Friendly_ with _The Anglers_. |only if rep("The Anglers")==Friendly
You are _Honored_ with _The Anglers_. |only if rep("The Anglers")==Honored
You are _Revered_ with _The Anglers_. |only if rep("The Anglers")==Revered
You are _Exalted_ with _The Anglers_. |only if rep("The Anglers")==Exalted
_
confirm
step
This area is where you complete quests and dailies in order to gain reputation with _The Anglers_.
Exalted with the Anglers |achieve 6547 |goto Krasarang Wilds 68.4,43.5
step
label "buy"
talk Nat Pagle##63721
buy Reins of the Azure Water Strider##81354 |goto Krasarang Wilds 68.4,43.5
learnmount Azure Water Strider##118089 |goto Krasarang Wilds 68.4,43.5 |use Reins of the Azure Water Strider##81354
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Black Riding Goat",{
keywords={"black","riding","goat","exalted","the","tillers","ground","mount"},
model={44836},
mounts={130138},
description="This guide will help you acquire the Black Riding Goat mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Tillers_.
Routing to the proper section. |next "dailies" |only if not completedq(31945)
Click here for the Tillers Daily Quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies" |confirm  |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
Click here to check your progress. |next "b" |confirm
step
label "dailies"
#include "Tillers_Quests"
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
Exalted with the Tillers |achieve 6544
step
label "buy"
talk Gina Mudclaw##58706
buy Reins of the Black Riding Goat##89391 |goto Valley of the Four Winds 53.2,51.6
learnmount Black Riding Goat##130138 |goto Valley of the Four Winds 53.2,51.6 |use Reins of the Black Riding Goat##89391
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Blue Shado-Pan Riding Tiger",{
keywords={"blue","shado-pan","shado","pan","riding","tiger","exalted","the","ground","mount"},
model={43900},
mounts={129934},
description="This guide will help you acquire the Blue Shado-Pan Riding Tiger mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Shado-Pan_.
Use the daily guides to earn Reputation with the Shado-Pan.
Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |next "buy" |only if rep("Shado-Pan")>=Exalted
Click here to check your progress. |next "b" |confirm
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
Exalted with The Shado-Pan |achieve 6366
step
label "buy"
talk Rushi the Fox##64595
buy Reins of the Blue Shado-Pan Riding Tiger##89307 |goto Townlong Steppes 48.8,70.5
learnmount Blue Shado-Pan Riding Tiger##129934 |goto Townlong Steppes 48.8,70.5 |use Reins of the Blue Shado-Pan Riding Tiger##89307
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Brown Riding Goat",{
keywords={"brown","riding","goat","exalted","the","tillers","ground","mount"},
model={44807},
mounts={130086},
description="This guide will help you acquire the Brown Riding Goat mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Tillers_.
Routing to the proper section. |next "dailies" |only if not completedq(31945)
Click here for the Tillers Daily Quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies" |confirm  |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
Click here to check your progress. |next "b" |confirm
step
label "dailies"
#include "Tillers_Quests"
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
Exalted with the Tillers |achieve 6544
step
label "buy"
talk Gina Mudclaw##58706
buy Reins of the Brown Riding Goat##89362 |goto Valley of the Four Winds 53.2,51.6
learnmount Brown Riding Goat##130086 |goto Valley of the Four Winds 53.2,51.6 |use Reins of the Brown Riding Goat##89362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Crimson Prime Direhorn",{
keywords={"crimson","prime","direhorn","exalted","sunreaver","onslaught","ground","mount"},
model={48101},
mounts={140250},
description="This guide will help you acquire the Crimson Prime Direhorn mount.",
},[[
step
To obtain this mount you must first become exalted with the Sunreaver Onslaught
Click here to check out our Sunreaver Onslaught reputation guide |next "Zygor's Reputations Guides\\Mists of Pandaria Reputations\\Sunreaver Onslaught"
Gain Exalted reputation with the Sunreaver Onslaught |condition rep("Sunreaver Onslaught")>=Exalted
confirm
step
talk Vasarin Redmorn##67672
buy Reins of the Crimson Primal Direhorn##95565 |goto Isle of Thunder/2 33.4,32.4
|tip This costs 3,000 gold.
learnmount Crimson Primal Direhorn##140250 |use Reins of the Crimson Primal Direhorn##95565
step
_Congratulations!_
You are now the proud owner of a Crimson Primal Direhorn.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Primal Direhorn",{
keywords={"golden","prime","direhorn","exalted","sunreaver","onslaught","ground","mount"},
model={48100},
mounts={140249},
description="This guide will help you acquire the Golden Prime Direhorn mount.",
},[[
step
You must be an Alliance to obtain this mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Riding Crane",{
keywords={"golden","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43705},
mounts={127176},
description="This guide will help you acquire the Golden Riding Crane mount.",
},[[
step
This mount requires you to be _Exalted_ with _The Golden Lotus_.
Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
talk Jaluu the Generous##59908
buy Reins of the Golden Riding Crane##87782 |goto Vale of Eternal Blossoms 63.0,22.2
learnmount Golden Riding Crane##127176 |goto Vale of Eternal Blossoms 63.0,22.2 |use Reins of the Golden Riding Crane##87782
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Green Shado-Pan Riding Tiger",{
keywords={"green","shado","pan","riding","tiger","ground","mount","exalted","the","shado-pan"},
model={44759},
mounts={129932},
description="This guide will help you acquire the Green Shado-Pan Riding Tiger mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Shado-Pan_.
Use the daily guides to earn Reputation with the Shado-Pan.
Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |next "buy" |only if rep("Shado-Pan")>=Exalted
Click here to check your progress. |next "b" |confirm
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
Exalted with The Shado-Pan |achieve 6366
step
label "buy"
talk Rushi the Fox##64595
buy Reins of the Green Shado-Pan Riding Tiger##89305 |goto Townlong Steppes 48.8,70.5
learnmount Shado-Pan Riding Tiger##129932 |goto Townlong Steppes 48.8,70.5 |use Reins of the Green Shado-Pan Riding Tiger##89305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Red Shado-Pan Riding Tiger",{
keywords={"red","shado-pan","shado","pan","riding","tiger","exalted","the","ground","mount"},
model={44757},
mounts={129935},
description="This guide will help you acquire the Red Shado-Pan Riding Tiger mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Shado-Pan_.
Use the daily guides to earn Reputation with the Shado-Pan.
Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |next "buy" |only if rep("Shado-Pan")>=Exalted
Click here to check your progress. |next "b" |confirm
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
Exalted with The Shado-Pan |achieve 6366
step
label "buy"
talk Rushi the Fox##64595
buy Reins of the Red Shado-Pan Riding Tiger##89306 |goto Townlong Steppes 48.8,70.5
learnmount Red Shado-Pan Riding Tiger##129935 |goto Townlong Steppes 48.8,70.5 |use Reins of the Red Shado-Pan Riding Tiger##89306
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Regal Riding Crane",{
keywords={"regal","riding","crane","exalted","the","golden","lotus","ground","mount"},
model={43706},
mounts={127177},
description="This guide will help you acquire the Regal Riding Crane mount.",
},[[
step
This mount requires you to be _Exalted_ with _The Golden Lotus_.
Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
talk Jaluu the Generous##59908
buy Reins of the Regal Riding Crane##87783 |goto Vale of Eternal Blossoms 63.0,22.2
learnmount Regal Riding Crane##127177 |goto Vale of Eternal Blossoms 63.0,22.2 |use Reins of the Regal Riding Crane##87783
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\White Riding Goat",{
keywords={"exalted","the","tillers","white","riding","goat","ground","mount"},
model={44837},
mounts={130137},
description="This guide will help you acquire the White Riding Goat mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Tillers_.
Routing to the proper section. |next "dailies" |only if not completedq(31945)
Click here for the Tillers Daily Quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies" |confirm  |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
Click here to check your progress. |next "b" |confirm
step
label "dailies"
#include "Tillers_Quests"
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
Exalted with the Tillers |achieve 6544
step
label "buy"
talk Gina Mudclaw##58706
buy Reins of the White Riding Goat##89390 |goto Valley of the Four Winds 53.2,51.6
learnmount White Riding Goat##130137 |goto Valley of the Four Winds 53.2,51.6 |use Reins of the White Riding Goat##89390
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Kor'kron War Wolf",{
keywords={"kor'kron","kor","kron","war","wolf","siege","of","orgrimmar"},
model={51482},
mounts={148396},
description="This mount has been removed from the game.",
},[[
step
The Kor'kron War Wolf was a reward for completing the achievement "Ahead of the Game (10/25 Player)" in Siege of Orgrimmar before the release of Warlords of Draenor
This mount was retired from service in patch 6.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Unavailable Mounts\\Primal Flamesaber",{
keywords={"primal","flame","saber","heroes","of","storm"},
model={74298},
mounts={232405},
description="This mount has been removed from the game.",
},[[
step
This mount was a reward from a Promotional Event in Heroes of the Storm and is no longer obtainable
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Blonde Riding Yak",{
keywords={"blonde","riding","yak","ground","mount"},
model={43712},
mounts={127220},
description="This guide will help you acquire the Blonde Riding Yak mount.",
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Blonde Riding Yak##87789 |goto Kun-Lai Summit 65.4,61.8
learnmount Blonde Riding Yak##127220 |goto Kun-Lai Summit 65.4,61.8 |use Reins of the Blonde Riding Yak##87789
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Grand Expedition Yak",{
keywords={"grand","expedition","yak","ground","mount"},
model={42703},
mounts={122708},
description="This guide will help you acquire the Grand Expedition Yak mount.",
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Grand Expedition Yak##84101 |goto Kun-Lai Summit 65.4,61.8
learnmount Grand Expedition Yak##122708 |goto Kun-Lai Summit 65.4,61.8 |use Reins of the Grand Expedition Yak##84101
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Grey Riding Yak",{
keywords={"grey","riding","yak","ground","mount"},
model={43711},
mounts={127216},
description="This guide will help you acquire the Grey Riding Yak mount.",
},[[
step
talk Uncle Bigpocket##64518
buy Reins of the Grey Riding Yak##87788 |goto Kun-Lai Summit 65.4,61.8
learnmount Grey Riding Yak##127216 |goto Kun-Lai Summit 65.4,61.8 |use Reins of the Grey Riding Yak##87788
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Red Dragonhawk",{
keywords={"armored","red","dragon","hawk","flying","mount"},
model={48815},
mounts={142266},
description="This guide will help you acquire the Armored Red Dragonhawk mount.",
},[[
step
This mount requires you to complete the achievement _Mount Parade_, this is to collect 200 unique mounts on one character.
|achieve 8302
step
Once this achievement is completed check your in-game mailbox
collect 1 Armored Red Dragonhawk##98104
learnmount Armored Red Dragonhawk##142266 |use Armored Red Dragonhawk##98104
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Skyscreamer",{
keywords={"armored","skyscreamer","flying","mount"},
mounts={136400},
model={47256},
description="This guide will help you acquire the Armored Skyscreamer mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Thundering Raider"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Armored Skyscreamer##93662
step
learnmount Armored Skyscreamer##136400 |use Armored Skyscreamer##93662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Crimson Cloud Serpent",{
keywords={"crimson","cloud","serpent","flying","mount"},
model={41592},
mounts={127156},
description="This guide will help you acquire the Crimson Cloud Serpent mount.",
},[[
step
This mount is rewarded for completing the Achievement: _Glory of the Pandaria Hero_.
Complete all of the Pandaria Heroic Dungeon Achievements |only if not achieved(6927)
confirm
step
Check your in-game mail for your new mount!
collect 1 Reins of the Crimson Cloud Serpent##87769
learnmount Crimson Cloud Serpent##127156 |use Reins of the Crimson Cloud Serpent##87769
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Heavenly Crimson Cloud Serpent",{
keywords={"heavenly","crimson","cloud","serpent","flying","mount"},
model={43692},
mounts={127161},
description="This guide will help you acquire the Heavenly Crimson Cloud Serpent mount.",
},[[
step
This mount is rewarded for completing the Achievement: _Glory of the Pandaria Raider_.
Complete all of the Pandaria Raid Achievements |only if not achieved(6932)
confirm
step
Check your in-game mail for your new mount!
collect 1 Reins of the Heavenly Crimson Cloud Serpent##87773
learnmount Heavenly Crimson Cloud Serpent##127161 |use Reins of the Heavenly Crimson Cloud Serpent##87773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Grand Wyvern",{
keywords={"grand","wyvern","operation:","shieldwall","flying","mount"},
model={47165},
mounts={136164},
description="This guide will help you acquire the Grand Wyvern mount.",
},[[
step
For this mount you will need to complete the achivement Dominance Offensive Campaign
Click here to check out our Dominance Offensive guide |confirm |next "Zygor's Reputations Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive" |or
|achieve 7929 |or
step
collect Grand Wyvern##93386 |n
|tip Check your in-game mail.
learnmount Grand Wyvern##136164 |use Grand Wyvern##93386
step
_Congratulations!_
You colelcted the _Grand Wyvern_ mount
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Jade Pandaren Kite",{
keywords={"jade","pandaren","kite","flying","mount"},
model={42147},
mounts={133023},
description="This guide will help you acquire the Jade Pandaren Kite mount.",
},[[
step
This mount requires you to have the Achievement: We're Going to Need More Saddles
For this achievement you will need to collect 150 unique mounts on one character
|achieve 7860
step
Check your in-game mail for your new mount!
collect 1 Jade Pandaren Kite##91802 |n
learnmount Jade Pandaren Kite##133023 |use Jade Pandaren Kite##91802
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Pandaren Kite",{
keywords={"pandaren","kite","flying","mount"},
model={41903},
mounts={118737},
description="This guide will help you acquire the Pandaren Kite mount.",
},[[
step
This mount requires you to have the Achievement: Pandaren Ambassador
Earn Exalted with all of the Pandaren reputations. |only if not achieved(6827)
confirm
step
Check your in-game mail for your new mount!
collect 1 Pandaren Kite String##81559
learnmount Pandaren Flying Kite##118737 |use Pandaren Kite String##81559
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Spawn of Galakras",{
keywords={"spawn","of","galakras","siege","of","orgrimmar","flying","mount"},
mounts={148392},
model={51479},
description="This guide will help you acquire the Spawn of Galakras mount.",
},[[
step
This mount is rewarded to players that have completed the _Glory of the Orgrimmar Raider_ achievement.
achieve 8454
step
Check your mailbox for the mount.
collect Reins of Galakras##104208
step
Use the _Reins of Galakras_ in your bags |use Reins of Galakras##104208
learnmount Spawn of Galakras##148392
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Thundering Jade Cloud Serpent",{
keywords={"thundering","jade","cloud","serpent","flying","mount"},
model={43686},
mounts={124408},
description="This guide will help you acquire the Thundering Jade Cloud Serpent mount.",
},[[
step
This mount requires you to be _Exalted_ with your guild, and for your guild to have completed Tier 14 content
confirm
step
talk Goram##46572
buy 1 Reins of the Thundering Jade Cloud Serpent##85666 |goto Orgrimmar 48.2,75.6
learnmount Thundering Jade Cloud Serpent##124408 |goto Orgrimmar 48.2,75.6 |use Reins of the Thundering Jade Cloud Serpent##85666
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Armored Bloodwing",{
author="support@zygorguides.com",
keywords={"blizzard","store","armored","bloodwing","flying","mount"},
mounts={139595},
model={48020},
description="This guide will help you acquire the Armored Bloodwing mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Armored Bloodwing##95341
step
learnmount Armored Bloodwing##139595 |use Armored Bloodwing##95341
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Enchanted Fey Dragon",{
keywords={"blizzard","store","enchanted","fey","dragon","flying","mount"},
model={59583},
mounts={142878},
description="This guide will help you acquire the Enchanted Fey Dragon mount.",
},[[
step
This mount is purchased for 25 dollars via the Blizzard store.
After purchasing please check your in game mail for the mount.
collect Enchanted Fey Dragon##97989
step
learnmount Enchanted Fey Dragon##142878 |use Enchanted Fey Dragon##97989
step
Congratulations, you have attained the Enchanted Fey Dragon mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Warforged Nightmare",{
keywords={"blizzard","store","warforged","nightmare","flying","mount"},
model={55896},
mounts={163024},
description="This guide will help you acquire the Warforged Nightmare mount.",
},[[
step
This mount is purchased for 25 dollars via the Blizzard store.
After purchasing please check your in game mail for the mount.
collect Warforged Nightmare##112326
step
learnmount Warforged Nightmare##163024 |use Warforged Nightmare#112326
step
Congratulations, you have attained the Warforged Nightmare mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Cobalt Cloud Serpent",{
keywords={"heavenly","onyx","cloud","serpent","sha","of","anger","flying","mount"},
model={47981},
mounts={139442},
description="This guide will help you acquire the Thundering Cobalt Cloud Serpent.",
},[[
step
kill Nalak##69099
collect Reins of the Thundering Cobalt Cloud Serpent##95057 |goto Isle of Thunder/0 58.6,39.9
|tip This mount has a very low drop rate.
step
learnmount Thundering Cobalt Cloud Serpent##139442 |use Reins of the Thundering Cobalt Cloud Serpent##95057
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Heavenly Onyx Cloud Serpent",{
keywords={"heavenly","onyx","cloud","serpent","sha","of","anger","flying","mount"},
model={43689},
mounts={127158},
description="This guide will help you acquire the Heavenly Onyx Cloud Serpent mount.",
},[[
step
kill Sha of Anger##60491
collect Reins of the Heavenly Onyx Cloud Serpent##87771 |goto Kun-Lai Summit/0 53.77,64.62
|tip This mount has a very low drop rate.
step
learnmount Heavenly Onyx Cloud Serpent##127158 |use Reins of the Heavenly Onyx Cloud Serpent##87771
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Onyx Cloud Serpent",{
keywords={"thundering","onyx","cloud","serpent","huolon","flying","mount"},
model={51488},
mounts={148476},
description="This guide will help you acquire the Thundering Onyx Cloud Serpent mount.",
},[[
step
kill Huolon##73167
|tip He is a rare spawn.
Note that he flies around the entire island, but this is the easiest place to pull him.
collect Reins of the Thundering Onyx Cloud Serpent##104269 |goto Timeless Isle/0 72.9,48.7
step
Use the _Reins of the Thundering Onyx Cloud Serpent_ in your bags |use Reins of the Thundering Onyx Cloud Serpent##104269
learnmount Thundering Onyx Cloud Serpent##148476
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Thundering Ruby Cloud Serpent",{
keywords={"thundering","ruby","cloud","serpent","alani","skyshard","flying","mount"},
model={45797},
mounts={132036},
description="This guide will help you acquire the Thundering Ruby Cloud Serpent mount.",
},[[
step
This mount is a drop from _Alani, the Stormborn_.
In order to fight him, you will need to kill any level 90 in pandaria to get _skyshards_.
confirm
step
kill any _level 90_ in pandaria.
collect 10 Skyshard##86547 |n
Combine your 10 skyshards to create a _Sky Crystal_. |use Skyshard##86547
collect 1 Sky Crystal##86546
step
Use your _Sky Crystal_ on Alani to weaken him. |use Sky Crystal##86546
kill Alani##64403
|tip He flies all around the Vale, some searching may be necessary.
collect 1 Reins of the Thundering Ruby Cloud Serpent##90655 |goto Vale of Eternal Blossoms 50.6,43.6
step
kill this point, you must be _Exalted_ with _Order of the Cloud Serpent_ and _The August Celestials_.
Click here to be taken to the August Celestials reputations guide to gain reputation with them. |confirm |next "Zygor's Reputations Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent" |only if rep('Order of the Cloud Serpent')<Exalted and ZGV.guidesets['ReputationsHMOP']
Click here to be taken to the Order of the Cloud Serpent reputations guide to gain reputation with them. |confirm |next "Zygor's Reputations Guides\\Mists of Pandaria Reputations\\The August Celestials" |only if rep('The August Celestials')<Exalted and ZGV.guidesets['ReputationsHMOP']
confirm
only if rep('The August Celestials')<Exalted or rep('Order of the Cloud Serpent')<Exalted
step
learnmount Thundering Ruby Cloud Serpent##132036 |use Reins of the Thundering Ruby Cloud Serpent##90655
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Hearthsteed",{
keywords={"hearthstone","flying","mount"},
model={48931},
mounts={142073},
description="This guide will help you acquire the Hearthsteed mount.",
},[[
step
In order to obtain this mount you will need to install and play Blizzard's game Hearthstone.
Winning 3 games in play or arena mode will trigger a notification that you need to log into WoW to claim your mount.
It will be delieverd via in game mail.
collect Hearthsteed##98618
step
learnmount Hearthsteed##142073 |use Hearthsteed##98618
step
Congratulations, you have attained the Hearthsteed mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Imperial Quilen",{
keywords={"collector's","collectors","edition","flying","mount"},
model={43254},
mounts={124659},
description="This guide will help you acquire the Imperial Quilen mount.",
},[[
step
This mount requires you to purchase the World of Warcraft: Mists of Pandaria Collector's Edition
You may be able to find a copy of this mount on eBay or Amazon, but they are typically very expensive.
confirm
step
Check your in-game mail for your new mount!
learnmount Imperial Quilen##124659 |use Imperial Quilen##85870
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Onyx Cloud Serpent",{
keywords={"exalted","shado-pan","shado","pan","flying","mount"},
model={41990},
mounts={127154},
description="This guide will help you acquire the Onyx Cloud Serpent mount.",
},[[
step
This mount requires you to be _Exalted_ with _Shado-Pan_.
In order to become Exalted with the Shado-Pan, refer to the Zygor Guides Reputation section.
Click here to be sent to the Shado-Pan daily quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Exalted with the Shado-Pan |achieve 6366
step
label "quest"
talk Master Snowdrift##63009
accept Mogu Incursions##31266 |goto Townlong Steppes 49.5,70.5
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto 48.8,58.6
step
talk Master Snowdrift##63009
turnin Mogu Incursions##31266 |goto Townlong Steppes 49.5,70.5
accept Surprise Attack!##31277 |goto Townlong Steppes 49.5,70.5
step
talk Ban Bearheart##62304 |goto 42.6,63.9
Tell him you're ready to go.
confirm
step
At this point you will fight throught waves of mobs for a few minutes. When Hei Fang lands, you will need to assist the Shado-Pan in defeating him.
confirm
step
kill Hei Feng##62309
Put a stop to the Mogu Invasion of Niuzao Temple |q 31277/1 |goto 41.6,62.0
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto 49.0,70.6
step
learnmount Onyx Cloud Serpent##127154 |use Reins of the Onyx Cloud Serpent##87768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Depleted-Kyparium Rocket",{
keywords={"engineering","flying","mount","depleted","kyparium"},
model={43637},
mounts={126507},
description="This guide will help you acquire the Depleted-Kyparium Rocket mount.",
},[[
step
Skipping to the next step |next |only if skill("Engineering")<600
talk Lilliam Sparkspindle##5518 |only if skill("Engineering")>=600
learn Depleted-Kyparium Rocket##127138 |goto Stormwind City 63.2,31.4 |only if skill("Engineering")>=600 |next "a"
Click here if you do not wish to make this pet yourself |confirm |only if skill("Engineering")>=600
step
You can either _buy_ this _mount_ from the _Auction House_ or make it:
buy 1 Depleted-Kyparium Rocket##87250 |next "bought"
Click here to make this mount |confirm
step
label "a"
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 12 Living Steel##72104
collect 200 Kyparite##72093
collect 3 Orb of Mystery##83092
collect 12 High Explosive Gunpowder##77468
collect 20 Ghost Iron Bolts##77467
collect 12 Spirit of Harmony##76061
|tip This reagent is Bind on Pickup, so if you are making it yourself, you will need the ingredients. Otherwise, the person making this should already have them.
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 36 _Spirit of Harmony_
collect 72 Black Trillium Ore##72094
collect 72 White Trillium Ore##72103
or
You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
collect 144 Black Trillium Ore##72094
collect 144 White Trillium Ore##72103
collect 60 Ghost Iron Ore##72092
step
collect 200 Kyparite##72093
collect 10 Kyparite Fragment##97546 |n |tip Once you gather enough fragments, click them to create a Kyparite.
Use your Kyparite Fragments. |use Kyparite Fragment##97546
step
talk Big Keech##61650
|tip He patrols nearby.
buy 3 Orb of Mystery##83092 |goto Vale of Eternal Blossoms 62.2,42.0
This will be cheaper with guild perks if at all possible.
step
create 36 Trillium Bar##102167 |goto Vale of Eternal Blossoms/0 21.8,72.3
create 72 Trillium Bar##102167 |goto Vale of Eternal Blossoms/0 21.8,72.3
Click here if you choose the _Spirit of Harmony_ route. |confirm
step
create 30 Ghost Iron Bar##102165
step
create 20 Ghost Iron Bolt##127113
step
Have an _Engineer make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(127138)==false
create Depleted-Kyparium Rocket##127138,Engineering,1 total |only if knowspell(127138)==true
collect 1 Depleted-Kyparium Rocket##87250
step
label "bought"
learnmount Depleted-Kyparium Rocket##126507 |use Depleted-Kyparium Rocket##87250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Geosynchronous World Spinner",{
keywords={"engineering","flying","mount"},
model={43638},
mounts={126508},
description="This guide will help you acquire the Geosynchronous World Spinner mount.",
},[[
step
Skipping to the next step |next |only if skill("Engineering")<600
talk Roxxik##11017 |only if skill("Engineering")>=600
learn Geosynchronous World Spinner##127138 |goto Orgrimmar 56.8,56.5 |only if skill("Engineering")>=600
Click here if you do not wish to make this pet yourself |confirm |only if skill("Engineering")>=600
step
You can either _buy_ this _mount_ from the _Auction House_ or make it:
buy 1 Geosynchronous World Spinner##87251 |next "bought"
Click here to make this mount |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 12 Living Steel##72104
collect 12 Trillium Bar##72095
collect 3 Orb of Mystery##83092
collect 20 Ghost Iron Bolts##77467
collect 12 Spirit of Harmony##76061
|tip This reagent is Bind on Pickup, so if you are making it yourself, you will need the ingredients. Otherwise, the person making this should already have them.
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 36 _Spirit of Harmony_
collect 96 Black Trillium Ore##72094
collect 96 White Trillium Ore##72103
or
You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
collect 168 Black Trillium Ore##72094
collect 168 White Trillium Ore##72103
collect 60 Ghost Iron Ore##72092
step
talk Big Keech##61650 |tip He patrols nearby.
buy 3 Orb of Mystery##83092 |goto Vale of Eternal Blossoms 62.2,42.0
This will be cheaper with guild perks if at all possible.
step
create 36 Trillium Bar##102167 |goto Vale of Eternal Blossoms/0 21.8,72.3
create 72 Trillium Bar##102167 |goto Vale of Eternal Blossoms/0 21.8,72.3
Click here if you choose the _Spirit of Harmony_ route. |confirm
step
create 30 Ghost Iron Bar##102165
step
create 20 Ghost Iron Bolt##127113
step
Have an _Engineer make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(127139)==false
create Geosynchronous World Spinner##127139,Engineering,1 total |only if knowspell(127139)==true
collect 1 Geosynchronous World Spinner##87251
step
label "bought"
learnmount Geosynchronous World Spinner##126508 |use Geosynchronous World Spinner##87251
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Sky Golem",{
keywords={"engineering","flying","mount"},
model={46686},
mounts={134359},
description="This guide will help you acquire the Sky Golem mount.",
},[[
step
This pet requires you to have level 600 in _Engineering_.
confirm
step
kill any mob in the _Vale of Eternal Blossoms_
collect 1 Schematic: Chief Engineer Jard's Journal##100910
step
Use the _Schematic: Chief Engineer Jard's Journal_ in your bags. |use Schematic: Chief Engineer Jard's Journal##100910
accept Chief Engineer Jard's Journal##32630 |instant
step
label "a"
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 30 Living Steel##72104
collect 30 Jard's Peculiar Energy Source##94113
|next "create"
Click here to farm these materials yourself |confirm |next
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 90 _Spirit of Harmony_
collect 180 Black Trillium Ore##72094
collect 180 White Trillium Ore##72103
or
You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
collect 360 Black Trillium Ore##72094
collect 360 White Trillium Ore##72103
collect 600 Ghost Iron Ore##72092
confirm always
step
create 90 Trillium Bar##102167 |goto Vale of Eternal Blossoms/3 71.5,51.0
create 180 Trillium Bar##102167 |goto Vale of Eternal Blossoms/3 71.5,51.0
Click here if you choose the _Spirit of Harmony_ route. |confirm
step
For this next part, you will either need to have level _600 Alchemy_, or know someone who does.
confirm
step
create 30 Living Steel##130326,Alchemy,30 total |tip This is for those using the Riddle of Steel spell.
create 30 Living Steel##114780,Alchemy,30 total |tip This is for those using Transmute: Living Steel
create 300 Ghost Iron Bar##102165
step
create 30 Jard's Peculiar Energy Source##139176,Engineering,30 total
|tip This is a daily cooldown, so you will have to wait to do it once every day.
step
create 1 Sky Golem##139192,Engineering,1 total
Use the _Sky Golem_ in your bags! |use Sky Golem##95416
learnmount Sky Golem##134359
step
Congratulations, you have learned the _Sky Golem_ mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Jade Panther",{
keywords={"jewelcrafting","jade","panther","mount","flying"},
model={42502},
mounts={121837},
description="This guide will help you acquire the Jade Panther mount.",
},[[
step
Skipping to the next step |next |only if skill("Jewelcrafting")<600
talk San Redscale##58414 |only if skill("Jewelcrafting")>=600
buy 1 Design: Jade Panther##83845 |goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
learn Jade Panther##121844 |only if skill("Jewelcrafting")>=600
Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
You can either _buy_ this _mount_ from the _Auction House_ or make it:
buy 1 Jade Panther##83088 |next "bought"
Click here to make this mount |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 4 Living Steel##72104
collect 1 Orb of Mystery##83092
collect 20 Wild Jade##76139
collect 2 Serpent's Eye##76734
Click here to farm the materials yourself. |confirm
|next "make" |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
Prospect all of the Ore you get. |use Prospecting##31252
collect 20 Wild Jade##76139
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
collect 24 Black Trillium Ore##72094
collect 24 White Trillium Ore##72103
step
talk Big Keech##61650 |tip He patrols nearby.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms 62.2,42.0
step
Kill enemies anywhere inside of the Vale of Eternal Blossoms.
collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
collect 14 Spirit of Harmony##76061
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms 61.6,21.6
Note that you will need 2 Spirits of Harmony to buy this item.
step
label "make"
Have a _Jewelcrafter make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(121844)==false
create Jade Panther##121844,Jewelcrafting,1 total |only if knowspell(121844)==true
collect 1 Jade Panther##83088
step
label "bought"
learnmount Jade Panther##121837 |use Jade Panther##83088
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Jeweled Onyx Panther",{
keywords={"jewelcrafting","jeweled","onyx","panther","mount","flying"},
model={42185},
mounts={120043},
description="This guide will help you acquire the Jeweled Onyx Panther mount.",
},[[
step
Skipping to the next step |next |only if skill("Jewelcrafting")<600
talk San Redscale##58414 |only if skill("Jewelcrafting")>=600
buy 1 Design: Jeweled Onyx Panther##83877 |goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
learn Jeweled Onyx Panther##120045 |only if skill("Jewelcrafting")>=600
Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
You can either _buy_ this _mount_ from the _Auction House_ or make it:
buy 1 Jeweled Onyx Panther##82453 |next "bought"
Click here to make this mount |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 1 Jade Panther##83088
collect 1 Sapphire Panther##83090
collect 1 Ruby Panther##83087
collect 1 Sunstone Panther##83089
step
Have a _Jewelcrafter make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(120045)==false
create Jeweled Onyx Panther##120045,Jewelcrafting,1 total |only if knowspell(120045)==true
collect 1 Jeweled Onyx Panther##82453
step
label "bought"
learnmount Jeweled Onyx Panther##120043 |use Jeweled Onyx Panther##82453
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Ruby Panther",{
keywords={"jewelcrafting","ruby","panther","mount","flying"},
model={42499},
mounts={121838},
description="This guide will help you acquire the Ruby Panther mount.",
},[[
step
Skipping to the next step |next |only if skill("Jewelcrafting")<600
talk San Redscale##58414 |only if skill("Jewelcrafting")>=600
buy 1 Design: Ruby Panther##83931 |goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
learn Ruby Panther##121841 |only if skill("Jewelcrafting")>=600
Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
You can either _buy_ this _mount_ from the _Auction House_ or make it:
buy 1 Ruby Panther##83087 |next "bought"
Click here to make this mount |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 4 Living Steel##72104
collect 1 Orb of Mystery##83092
collect 20 Sun's Radiance##76142
collect 2 Serpent's Eye##76734
Click here to farm the materials yourself. |confirm
|next "make" |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
Prospect all of the Ore you get. |use Prospecting##31252
collect 20 Sun's Radiance##76142
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
collect 24 Black Trillium Ore##72094
collect 24 White Trillium Ore##72103
step
talk Big Keech##61650 |tip He patrols nearby.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms 62.2,42.0
step
Kill enemies anywhere inside of the Vale of Eternal Blossoms.
collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
collect 14 Spirit of Harmony##76061
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms 61.6,21.6
Note that you will need 2 Spirits of Harmony to buy this item.
step
label "make"
Have a _Jewelcrafter make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(121841)==false
create Ruby Panther##121841,Jewelcrafting,1 total |only if knowspell(121841)==true
collect 1 Ruby Panther##83087
step
label "bought"
learnmount Ruby Panther##121838 |use Ruby Panther##83087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Sapphire Panther",{
keywords={"jewelcrafting","sapphire","panther","mount","flying"},
model={42500},
mounts={121836},
description="This guide will help you acquire the Sapphire Panther mount.",
},[[
step
Skipping to the next step |next |only if skill("Jewelcrafting")<600
talk San Redscale##58414 |only if skill("Jewelcrafting")>=600
buy 1 Design: Sapphire Panther##83932 |goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
learn Sapphire Panther##121842 |only if skill("Jewelcrafting")>=600
Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
You can either _buy_ this _mount_ from the _Auction House_ or make it:
buy 1 Sapphire Panther##83090 |next "bought"
Click here to make this mount |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 4 Living Steel##72104
collect 1 Orb of Mystery##83092
collect 20 River's Heart##76138
collect 2 Serpent's Eye##76734
Click here to farm the materials yourself. |confirm
|next "make" |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
Prospect all of the Ore you get. |use Prospecting##31252
collect 20 River's Heart##76138
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
collect 24 Black Trillium Ore##72094
collect 24 White Trillium Ore##72103
step
talk Big Keech##61650 |tip He patrols nearby.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms 62.2,42.0
step
Kill enemies anywhere inside of the Vale of Eternal Blossoms.
collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
collect 14 Spirit of Harmony##76061
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms 61.6,21.6
Note that you will need 2 Spirits of Harmony to buy this item.
step
label "make"
Have a _Jewelcrafter make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(121842)==false
create Sapphire Panther##121842,Jewelcrafting,1 total |only if knowspell(121842)==true
collect 1 Sapphire Panther##83090
step
label "bought"
learnmount Sapphire Panther##121836 |use Sapphire Panther##83090
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Jewelcrafting\\Sunstone Panther",{
keywords={"jewelcrafting","sunstone","panther","mount","flying"},
model={42501},
mounts={121839},
description="This guide will help you acquire the Sunstone Panther mount.",
},[[
step
Skipping to the next step |next |only if skill("Jewelcrafting")<600
talk San Redscale##58414 |only if skill("Jewelcrafting")>=600
buy 1 Design: Sunstone Panther##83830 |goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
learn Sunstone Panther##121843 |only if skill("Jewelcrafting")>=600
Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
You can either _buy_ this _mount_ from the _Auction House_ or make it:
buy 1 Sunstone Panther##87251 |next "bought"
Click here to make this mount |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
collect 4 Living Steel##72104
collect 1 Orb of Mystery##83092
collect 20 Sun's Radiance##76142
collect 2 Serpent's Eye##76734
Click here to farm the materials yourself. |confirm
|next "make" |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
Prospect all of the Ore you get. |use Prospecting##31252
collect 20 Sun's Radiance##76142
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
Follow the provided path.
collect 24 Black Trillium Ore##72094
collect 24 White Trillium Ore##72103
step
talk Big Keech##61650 |tip He patrols nearby.
buy 1 Orb of Mystery##83092 |goto Vale of Eternal Blossoms 62.2,42.0
step
Kill enemies anywhere inside of the Vale of Eternal Blossoms.
collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
collect 14 Spirit of Harmony##76061
step
talk Danky##66685
buy 2 Serpent's Eye##76734 |goto Vale of Eternal Blossoms 61.6,21.6
Note that you will need 2 Spirits of Harmony to buy this item.
step
label "make"
Have a _Jewelcrafter make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(121843)==false
create Sunstone Panther##121843,Jewelcrafting,1 total |only if knowspell(121843)==true
collect 1 Sunstone Panther##83089
step
label "bought"
learnmount Sunstone Panther##121839 |use Sunstone Panther##83089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Astral Cloud Serpent",{
keywords={"mount","astral","cloud","serpent","flying"},
model={46087},
mounts={127170},
description="This guide will help you acquire the Astral Cloud Serpent mount.",
},[[
step
This mount is contained in _Caches of Pure Energy_ found inside the _Mogu'Shan Vaults_ raid.
click Cache of Pure Energy##214383
collect 1 Reins of the Astral Cloud Serpent##87777 |goto Mogu'shan Vaults/3 22.7,51.7
learnmount Astral Cloud Serpent##127170 |use Reins of the Astral Cloud Serpent##87777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Clutch of Ji-kun",{
keywords={"mount","Clutch","of","Ji-kun","flying"},
model={47983},
mounts={139448},
description="This guide will help you acquire the Clutch of Ji-kun mount.",
},[[
step
This mount drops from the boss Ji-kun in the _Throne of Thunder_ raid.
kill Ji-Kun##69712
collect 1 Clutch of Ji-kun##95059 |goto Throne of Thunder/4 53.8,49.8
step
learnmount Clutch of Ji-kun##139448 |use Clutch of Ji-kun##95059
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Azure Cloud Serpent",{
keywords={"azure","cloud","serpent","mount","order","of","the","cloud","serpent","exalted","flying"},
model={41989},
mounts={123992},
description="This guide will help you acquire the Azure Cloud Serpent mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
Routing to the proper section. |next |only if not completedq(30142)
Click here for the Golden Lotus Daily Quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |next "buy" |only if rep("Order of the Cloud Serpent")>=Exalted
Click here to check your progress. |next "b" |confirm
step
#include "CS_PreQuests"
|next "a"
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
Click here to route back to the start. |next "a" |confirm
Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
talk San Redscale##58414
buy Reins of the Azure Cloud Serpent##85430 |goto The Jade Forest 56.8,44.4
learnmount Azure Cloud Serpent##123992 |goto The Jade Forest 56.8,44.4 |use Reins of the Azure Cloud Serpent##85430
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Golden Cloud Serpent",{
keywords={"golden","cloud","serpent","mount","order","of","the","golden","lotus","exalted","flying"},
model={41991},
mounts={123993},
description="This guide will help you acquire the Golden Cloud Serpent mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
Routing to the proper section. |next |only if not completedq(30142)
Click here for the Golden Lotus Daily Quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |next "buy" |only if rep("Order of the Cloud Serpent")>=Exalted
Click here to check your progress. |next "b" |confirm
step
#include "CS_PreQuests"
|next "a"
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
Click here to route back to the start. |next "a" |confirm
Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
talk San Redscale##58414
buy Reins of the Golden Cloud Serpent##85429 |goto The Jade Forest 56.8,44.4
learnmount Golden Cloud Serpent##123993 |goto The Jade Forest 56.8,44.4 |use Reins of the Golden Cloud Serpent##85429
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Grand Armored Wyvern",{
keywords={"grand","armored","wyvern","dominance","offensive","exalted","flying","mount"},
model={46930},
mounts={135418},
description="This guide will help you acquire the Grand Armored Wyvern mount.",
},[[
step
label "start"
This mount requires you to be Exalted with Dominance Offensive
You currently are _Neutral_ with _Dominance Offensive_ |only if rep("Dominance Offensive")<=Neutral
You currently are _Friendly_ with _Dominance Offensive_ |only if rep("Dominance Offensive")==Friendly
You currently are _Honored_ with _Dominance Offensive_ |only if rep("Dominance Offensive")==Honored
You currently are _Revered_ with _Dominance Offensive_ |only if rep("Dominance Offensive")==Revered
You currently are _Exalted_ with _Dominance Offensive_ |only if rep("Dominance Offensive")==Exalted
_Click here_ to be taken to the pre-quests for the Dominance Offensive. |confirm |next "pre" |only if not ZGV.guidesets["DailiesHMOP"] and not ZGV.guidesets["ReputationsHMOP"] and not completedq(32108)
_Click here_ to be taken to the reputation guide to begin becoming Exalted with the Dominance Offensive. |confirm |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"] and not ZGV.guidesets["ReputationsHMOP"]
_Click here_ to be taken to the reputation guide to begin becoming Exalted with the Dominance Offensive. |confirm |next "Zygor's Reputations Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive" |confirm |only if ZGV.guidesets["ReputationsHMOP"]
_Click here_ to be taken to the Dominance Offensive Quartermaster to purchase the mount. |confirm |next "buy" |only if rep("Dominance Offensive")>=Exalted
step
label "pre"
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms 62.9,28.3
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds 8.7,64.4
step
talk Garrosh Hellscream##62092
accept The Might of the Warchief##32250 |goto Krasarang Wilds 8.7,64.4
step
kill Alliance Sentinel##67900+, Alliance Footman##67901+, Alliance Priest##67902+
Kill 25 Alliance troops |q The Might of the Warchief##32250/1 |goto Krasarang Wilds 10.0,64.1
step
talk Blood Guard Gro'tash##67927
Find Blood Guard Gro'tash |q The Might of the Warchief##32250/2 |goto Krasarang Wilds 10.7,53.2
step
talk Grizzle Gearslip##67926
Find Grizzle Gearslip |q The Might of the Warchief##32250/3 |goto Krasarang Wilds 15.7,57.8
step
Next to you
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250
accept Domination Point##32108
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds 8.5,63.8
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds 9.7,52.5 |next "start"
step
label "buy"
talk Tuskripper Grukna##69060
buy Grand Armored Wyvern##93169 |goto Krasarang Wilds 10.8,53.4
learnmount Grand Armored Wyvern##135418 |use Grand Armored Wyvern##93169
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Faction Mounts\\Heavenly Golden Cloud Serpent",{
keywords={"heavenly","golden","cloud","serpent","flying","mount"},
model={43693},
mounts={127164},
description="This guide will help you acquire the Heavenly Golden Cloud Serpent mount.",
},[[
step
To earn this mount, you must be exalted with Emperor Shaohao
Click here to check out our Emperor Shaohao guide |next "Zygor's Reputations Guides\\Mists of Pandaria Reputations\\Emperor Shaohao"
Become Exalted with the Emperor Shaohao |condition rep('Emperor Shaohao')==Exalted
step
talk Mistweaver Ku##73306
buy Reins of the Heavenly Golden Cloud Serpent##87774 |n |use Reins of the Heavenly Golden Cloud Serpent##87774
|tip This costs 100,000 Timeless Coins.
|tip These coins can be collected by killing enemies and looting chests on the Timeless Isle.
learnmount Heavenly Golden Cloud Serpent##127164 |goto Timeless Isle/0 42.8,54.8
step
_Congratulations!_
You are now the proud owner of a _Heavenly Golden Cloud Serpent_.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Jade Cloud Serpent",{
keywords={"jade","cloud","serpent","the","golden","lotus","exalted","mount","flying"},
model={40590},
mounts={113199},
description="This guide will help you acquire the Jade Cloud Serpent mount.",
},[[
step
label "a"
This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
Routing to the proper section. |next |only if not completedq(30142)
Click here for the Golden Lotus Daily Quests. |next "Zygor's Dailies Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |next "buy" |only if rep("Order of the Cloud Serpent")>=Exalted
Click here to check your progress. |next "b" |confirm
step
#include "CS_PreQuests"
|next "a"
step
label "b"
After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
Click here to route back to the start. |next "a" |confirm
Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
talk San Redscale##58414
buy Reins of the Jade Cloud Serpent##79802 |goto The Jade Forest 56.8,44.4
learnmount Jade Cloud Serpent##113199 |goto The Jade Forest 56.8,44.4 |use Reins of the Jade Cloud Serpent##79802
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Flying Cloud",{
keywords={"red","flying","cloud","exalted","the","lorewalkers","mount","flying"},
model={44808},
mounts={130092},
description="This guide will help you acquire the Red Flying Cloud mount.",
},[[
step
This mount requires you to be _Exalted_ with _The Lorewalkers_.
In order to become Exalted with the Lorewalkers, refer to the Zygor Guides Reputation section.
Click here to access the Lorewalkers guide. |next "Zygor's Reputations Guides\\Mists of Pandaria Reputations\\Lorewalkers" |confirm |only if ZGV.guidesets["ReputationsHMOP"]
Exalted with the Lorewalkers |achieve 6548
step
talk Tan Shin Tiao##64605
buy Disc of the Red Flying Cloud##89363 |goto Vale of Eternal Blossoms 82.2,29.4
learnmount Red Flying Cloud##130092 |goto Vale of Eternal Blossoms 82.2,29.4 |use Disc of the Red Flying Cloud##89363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Thundering August Cloud Serpent",{
keywords={"thundering","august","cloud","serpent","exalted","celestials","mount","flying"},
model={43686},
mounts={129918},
description="This guide will help you acquire the Thundering August Cloud Serpent mount.",
},[[
step
This mount requires you to be _Exalted_ with _The August Celestials_.
Click here to be taken to the reputation guide to become Exalted with The August Celestials. |confirm |next "dailies"
Click here to be taken to The August Celestials Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "August_Celestials"
step
label "buy"
talk Sage Lotusbloom##64001
buy Reins of the Thundering August Cloud Serpent##89304 |goto Vale of Eternal Blossoms 62.7,23.3
learnmount Thundering August Cloud Serpent##129918 |goto Vale of Eternal Blossoms 62.7,23.3 |use Reins of the Thundering August Cloud Serpent##89304
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Trading Card Mounts\\Ghastly Charger",{
keywords={"trading","card","game","ghastly","charger","mount","flying"},
mounts={136505},
model={48014},
description="This guide will help you acquire the Violet Pandaren Phoenix mount.",
},[[
step
This mount can only be obtained through the World of Warcraft Trading Card Game Expansion: "Betrayal of the Guardian"..
confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Ashen Pandaren Phoenix",{
keywords={"ashen","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132117},
model={45521},
description="This mount has been removed from the game.",
},[[
step
The Ashen Pandaren Phoenix was the reward for completing all Mists of Pandaria challenge mode dungeons with silver or better time.
This mount was retired from service in patch 6.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Big Blizzard Bear",{
keywords={"big","blizzard","bear","ground","mount"},
mounts={58983},
model={27567},
description="This mount has been removed from the game.",
},[[
step
The Big Blizzard Bear was a reward for going to the 2008 BlizzCon
It was also obtainable for a time via DirectTV subscription in the USA
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Crimson Pandaren Phoenix",{
keywords={"crimson","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={129552},
model={44633},
description="This mount has been removed from the game.",
},[[
step
The Crimson Pandaren Phoenix was the reward for completing all Mists of Pandaria challenge mode dungeons with silver or better time.
This mount was retired from service in patch 6.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Emerald Pandaren Phoenix",{
keywords={"emerald","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132118},
model={45520},
description="This mount has been removed from the game.",
},[[
step
The Emerald Pandaren Phoenix was the reward for completing all Mists of Pandaria challenge mode dungeons with silver or better time.
This mount was retired from service in patch 6.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Grievous Gladiator's Cloud Serpent",{
keywords={"grievous","gladiators","gladiator's","cloud","serpent","arena"},
mounts={148619},
model={51360},
description="This mount has been removed from the game.",
},[[
step
The Grievous Gladiator's Cloud Serpent was the reward for top ranking arena teams at the conclusion of Arena Season 14
This mount was retired from service at the conclusion of Arena Season 14
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Malevolent Gladiator's Cloud Serpent",{
keywords={"malevolent","gladiator's","cloud","serpent","arena"},
mounts={139407},
model={47976},
description="This mount has been removed from the game.",
},[[
step
The Malevolent Gladiator's Cloud Serpent was the reward for top ranking arena teams at the conclusion of Arena Season 12
This mount was retired from service at the conclusion of Arena Season 12
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Prideful Gladiator's Cloud Serpent",{
keywords={"prideful","gladiator's","cloud","serpent","arena"},
mounts={148620},
model={51359},
description="This mount has been removed from the game.",
},[[
step
The Prideful Gladiator's Cloud Serpent was the reward for top ranking arena teams at the conclusion of Arena Season 15
This mount was retired from service at the conclusion of Arena Season 15
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Tyrannical Gladiator's Cloud Serpent",{
keywords={"tyrannical","gladiator's","cloud","serpent","arena"},
mounts={148618},
model={51361},
description="This mount has been removed from the game.",
},[[
step
The Tyrannical Gladiator's Cloud Serpent was the reward for top ranking arena teams at the conclusion of Arena Season 13
This mount was retired from service at the conclusion of Arena Season 13
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Unavailable Mounts\\Violet Pandaren Phoenix",{
keywords={"violet","pandaren","phoenix","pheonix","challenge","mode","silver"},
mounts={132119},
model={45522},
description="This mount has been removed from the game.",
},[[
step
The Violet Pandaren Phoenix was the reward for completing all Mists of Pandaria challenge mode dungeons with silver or better time.
This mount was retired from service in patch 6.0
]])
