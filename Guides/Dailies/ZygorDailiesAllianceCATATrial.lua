local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blackriver Logging Camp Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
talk Drakuru##26423
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Crystal Vial##3371 |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Scout Captain Carter##27783
accept Blackriver Skirmish##12444 |goto Grizzly Hills,30.0,59.8
step
Kill Horde Players or Conquest Hold Raiders in the Blackriver Logging Camp
Kill 10 Horde in Blackriver |q 12444/1 |goto 28.3,63.4
step
talk Scout Captain Carter##27783
turnin Blackriver Skirmish##12444 |goto 30.0,59.8
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Sergeant Hartsman##27468
accept Kick 'Em While They're Down##12289 |goto Grizzly Hills,39.3,43.9
step
talk Synipus##27371
accept Shredder Repair##12244 |goto 39.5,43.6
step
talk Pipthwack##27416
accept Pieces Parts##12268 |goto 39.6,43.4
step
talk Rheanna##27484
accept Life or Death##12296 |goto 40.5,42.7
step
Use Renewing Bandages on Wounded Wesfall Infantry |use Renewing Bandage##37576
Heal 10 Westfall Infantry |q 12296/1 |goto 34.9,39.8
Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
collect 4 Grooved Cogs##37412 |q 12268/1 |goto 34.9,39.8
collect 3 Notched Sprockets##37413 |q 12268/2 |goto 34.9,39.8
collect 2 High Tension Springs##37416 |q 12268/3 |goto 34.9,39.8
step
Kill Horde Players or Wounded Skirmishers in the area
Eliminate 15 Horde units |q 12289/1 |goto 33.4,35.7
step
Find the Broken-down Shredder that spawns. Blizzards quest helper will mark it on your map for you.
Click the Broken-down Shredder to get inside it
Use your abilities on your hot bar to return the shredder to Synipus |goto Grizzly Hills,39.5,43.6
Deliver 3 Shredders |q 12244/1 |goto 34.9,39.8
step
talk Sergeant Hartsman##27468
turnin Kick 'Em While They're Down##12289 |goto 39.3,43.9
step
talk Synipus##27371
turnin Shredder Repair##12244 |goto 39.5,43.6
step
talk Pipthwack##27416
turnin Pieces Parts##12268 |goto 39.6,43.4
step
talk Rheanna##27484
turnin Life or Death##12296 |goto 40.5,42.7
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Granite Springs Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085|q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Mack Fearsen##26604
accept Seared Scourge##12038 |goto Grizzly Hills,16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 30 Scourge Trolls |q 12038/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12038 |goto Grizzly Hills,16.7,48.3
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Venture Bay Dailies",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
get 3 Haze Leaf |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
get Waterweed Frond |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Commander Howser##27759
accept Riding the Red Rocket##12437 |goto Grizzly Hills,14.8,86.6
If he's not there, then you have to take control of Venture Bay for the Alliance
To take control of Venture Bay for the Alliance, go to 15.1,88.0 |tip Hide behind the lighthouse in between the 2 big brown rocks. Flag yourself for PvP and a bar will appear under your minimap. Sit here until the bar marker is all the way to the left, this will make Commander Howser spawn.
step
talk Sergeant Downey##27602
accept Smoke 'Em Out##12323 |goto 22.1,81.2
step
talk Lieutenant Stuart##27562
accept Keep Them at Bay!##12316 |goto 22.1,81.2
step
talk Baron Freeman##27520
accept Down With Captain Zorna##12314 |goto 22.2,81.2
step
Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers |use Smoke Bomb##37621
Building one can be found at [18.0,79.6]
Building two can be found at [16.4,76.6]
Building three can be found at [14.6,76.7]
Smoke out 20 Venture Company Stragglers |q 12323/1 |goto 18.0,79.6
step
Kill Horde Players or Conquest Hold Berserker in Venture Bay
Kill 10 Horde in Venture Bay |q 12316/1 |goto 19.9,76.4
step
kill Captain Zorna##27511|q 12314/1 |goto 13.3,80.2
step
Click the Element 115 in the back room of the ship
|tip It looks like a red canister with a handle on the top
collect Element 115##37664 |q 12437 |goto 16.4,80.3
step
On the next step you will guide a rocket into this Horde Lumberboat
Your target will be the wooden X on the back
Go to 13.6,88.9 |goto Grizzly Hills 13.6,88.9,0.5
You will want to use your keys, not your mouse, to guide the rocket
Avoid icebergs or the rocket will explode and you will have to start over
Click a red rocket to take control of one |invehicle |c |q 12437 |goto 9.6,79.2
step
Hit the wooden X on the back of the Horde Lumberboat
Destroy the Horde Lumberboat |q 12437/1 |goto 9.6,79.1
step
talk Commander Howser##27759
turnin Riding the Red Rocket##12437 |goto 14.8,86.6
step
talk Lieutenant Stuart##27562
turnin Keep Them at Bay!##12316 |goto 22.1,81.2
step
talk Baron Freeman##27520
turnin Down With Captain Zorna##12314 |goto 22.1,81.2
step
talk Sergeant Downey##27602
turnin Smoke 'Em Out##12323 |goto 22.1,81.2
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.",
},[[
#include "Pilgrim's_Bounty_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Daily Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.",
},[[
#include "Pilgrim's_Bounty_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Events\\Warlords of Draenor\\The Iron Horde Invasion",{
description="Take part in the opening event of the Warlords of Draenor!",
},[[
step
accept Iron Horde Invasion##36498 |goto Stormwind City 49.0,87.3
step
talk Vindicator Maraad##82270
turnin Iron Horde Invasion##36498 |goto Blasted Lands 66.6,28.2
accept Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
accept Under Siege##35462 |goto Blasted Lands 66.6,28.2
step
accept Peeking into the Portal##36379 |goto 66.9,27.9
step
talk Araazi##85731
fpath Shattershore |goto Blasted Lands 67.7,28.0
stickystart "1"
step
click Telescope##237144
Use the telescope |q Peeking into the Portal##36379/1 |goto Blasted Lands 61.7,36.7
step
label "1"
clicknpc Iron Demolisher##82273
Destroy 3 Iron Demolishers |q Under Siege##35462/1
kill Ironmarch Grunt##76556+
Kill 8 Ironmarch Grunts |q Attack of the Iron Horde##35460/1 |goto Blasted Lands 64.7,35.2
step
talk Vindicator Maraad##82270
turnin Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
turnin Under Siege##35462 |goto Blasted Lands 66.6,28.2
accept Subversive Scouts##35463 |goto Blasted Lands 66.6,28.2
step
talk Bodrick Grey##85213
turnin Peeking into the Portal##36379 |goto 66.9,27.9
accept Ending Execution##35464 |goto 66.9,27.9
stickystart "2"
step
kill Ironmarch Executioner##82774+
Stop 3 Executions |q Ending Execution##35464/1 |goto 59,29
step
label "2"
kill 5 Ironmarch Scout##76886 |q Stop the Executions##35463/1 |goto 68,30
|tip They are surrounding the entire encampment
step
talk Bodrick Grey##85213
turnin Ending Execution##35464 |goto Blasted Lands 66.9,27.9
step
talk Vindicator Maraad##82270
turnin Subversive Scouts##35463 |goto Blasted Lands 66.6,28.3
accept Investigating the Invasion##36307 |goto Blasted Lands 66.6,28
step
talk Vindicator Maraad##84929
turnin Investigating the Invasion##36307 |goto Blasted Lands 51.9,28.6
accept Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
accept For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
step
talk Commander Vines##82447
accept Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
kill Rukah the Machinist##73458 |tip She walks around the front of Nethergarde Keep
collect Rukah's Battleplan##113400
Get Rukah's Battleplan |q Lunatic Lieutenants##35486/2 |goto Blasted Lands 57.4,16.8
step
click Keri's Mug##232576
collect Keri's Mug##113397 |q Mementos of the Fallen##35494/3 |goto Blasted Lands 59.4,17.9
step
click Krolan's Shield##232575
collect Krolan's Shield##113396 |q Mementos of the Fallen##35494/2 |goto Blasted Lands 60.6,20.0
step
click Strumner's Sword##232573
collect Strumner's Sword##113395 |q Mementos of the Fallen##35494/1 |goto Blasted Lands 61.8,14.9
step
kill Mokrik Blackfingers##73459
Get Mokrik's Battleplan |q Lunatic Lieutenants##35486/1 |goto Blasted Lands 62.9,13.1
step
click Alliance Flag##232532
Plant the Alliance Flag outside of the Main Keep |q For Nethergarde!##35492/3 |goto Blasted Lands 59.9,15.8
step
kill Gar Steelcrush##73446 |tip He's at the upstairs inside this Keep.
Gar's Battleplan  |q Lunatic Lieutenants##35486/3 |goto Blasted Lands 60.2,13.8
step
click Alliance Flag##232532
Plant the Alliance Flag at the Center of Nethergarde |q For Nethergarde!##35492/2 |goto Blasted Lands 61.6,18.5
step
click Alliance Flag##232532
Plant the Alliance Flag at the entrance to Nethergarde |q For Nethergarde!##35492/1 |goto Blasted Lands 63.0,22.5
step
talk Commander Vines##82447
turnin Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
talk Vindicator Maraad##82270
turnin Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
turnin For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
accept Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
accept Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
step
talk Enohar Thunderbrew##76111
accept Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
kill Toothsmash the Annihilator##82451 |q Toothsmash the Annihilator##35495/1 |goto Blasted Lands 44.2,35.9
step
click Cooking Pot##232625
Poison the Cooking Pots |q Enohar's Revenge##35496/1 |goto Blasted Lands 44.3,35.6
You can find the _2nd Cooking Pot_ here: |goto Blasted Lands 43.5,37.0
You can find the _3rd Cooking Pot_ here: |goto Blasted Lands 43.9,31.0
step
kill 8 Dreadmaul Crusher##78345+ |q Death to the Dreadmaul##35488/1 |goto Blasted Lands 44.4,32.9
step
talk Enohar Thunderbrew##76111
turnin Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
talk Vindicator Maraad##82270
turnin Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
turnin Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
accept Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
step
kill Gar'mak Bladetwist##82918 |q Gar'mak Bladetwist##35500/1 |goto 40.1,11.3
|tip He's upstairs at the top of the Keep.
step
talk Vindicator Maraad##82270
turnin Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
accept Report to the King##36941 |goto Blasted Lands 51.9,28.6
step
talk King Varian Wrynn##29611
turnin Report to the King##36941 |goto Stormwind City 85.8,31.7
]])
