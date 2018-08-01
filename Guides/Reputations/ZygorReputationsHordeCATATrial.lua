local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Classic Reputations\\Timbermaw Hold",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the Timbermaw Hold faction.",
condition_suggested=function() return level>=1 and level<=60 end,
achieveid={944},
},[[
step
talk Nafien##15395
accept Deadwood of the North##28338 |goto Felwood,64.0,10.3
accept Disarming Bears##28366 |goto Felwood,64.0,10.3
step
talk Ferli##48461
accept Stupid Drizle!##28362 |goto 64.1,10.3
step
talk Drizle##47556
turnin Stupid Drizle!##28362 |goto 60.6,9.5
accept The Chieftain's Key##28364 |goto 60.6,9.5
step
kill Chieftain Bloodmaw##9462
collect Drizle's Key##63695 |q 28364/1 |goto 62.1,9.9
step
talk Drizle##47556
turnin The Chieftain's Key##28364 |goto 60.6,9.5
step
kill Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
Kill 15 Deadwood Furbolg |q 28338/1 |goto 62.0,12.8
click Deadwood Weapon Pile##207126
collect 7 Deadwood Weapons##63689 |q 28366/1 |goto 62.0,12.8
collect 1 Deadwood Ritual Totem##20741 |n
accept Deadwood Ritual Totem##8470
You can find more around [Felwood,59.7,9.8].
step
talk Nafien##15395
turnin Deadwood of the North##28338 |goto 64.0,10.3
turnin Disarming Bears##28366 |goto 64.0,10.3
accept Speak to Salfa##28521 |goto 64.0,10.3
You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
step
talk Kernda##11558
turnin Deadwood Ritual Totem##8470 |goto 64.7,5.7
You should be friendly with Timbermaw after completing this quest.
only if rep('Timbermaw Hold')>=Neutral
step
talk Meilosh##11557
accept Runecloth##6031 |goto 64.9,5.2
only if rep ('Timbermaw Hold')>=Friendly
step
talk Salfa##11556
turnin Speak to Salfa##28521 |goto Winterspring,21.1,46.2
accept Delivery for Donova##28524 |goto Winterspring,21.1,46.2
accept Winterfall Activity##28522 |goto Winterspring,21.1,46.2
step
talk Donova Snowden##9298
turnin Delivery for Donova##28524 |goto 25.1,58.5
accept Threat of the Winterfall##28460 |goto 25.1,58.5
accept Falling to Corruption##28464 |goto 25.1,58.5
step
Click the Winterfall Cauldron.
turnin Falling to Corruption##28464 |goto 24.5,47.6
accept Mystery Goo##28467 |goto 24.5,47.6
step
kill Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
Kill 15 Winterfall Furbolg |q 28460/1 |goto 24.5,47.6
collect 10 Winterfall Spirit Beads##21383 |q 28522/1 |goto 24.5,47.6
You can find more mobs around [Winterspring,27.3,49.3].
step
talk Donova Snowden##9298
turnin Mystery Goo##28467 |goto 25.1,58.5
turnin Threat of the Winterfall##28460 |goto 25.1,58.5
accept Winterfall Runners##28469 |goto 25.1,58.5
accept Scalding Signs##28530 |goto 25.1,58.5
stickystart "scaldspring"
step
kill Winterfall Runner##10916
collect Winterfall Crate##12829 |q 28469/1 |goto 29.3,54.8
They walk along the road so some searching may be required.
step
label "scaldspring"
kill Scalding Springsurge##48767+,Boiling Springbubble##48768+
collect 7 Suspicious Green Sludge##64449 |q 28530/1 |goto 32.7,50.6
step
talk Donova Snowden##9298
turnin Winterfall Runners##28469 |goto 25.1,58.5
turnin Scalding Signs##28530 |goto 25.1,58.5
accept High Chief Winterfall##28470 |goto 25.1,58.5
You should be honored with Timbermaw Hold at this point.
step
kill High Chief Winterfall##10738 |q 28470/1 |goto 37.0,55.6
step
talk Donova Snowden##9298
turnin High Chief Winterfall##28470 |goto 25.1,58.5
step
talk Salfa##11556
turnin Winterfall Activity##28522 |goto 21.1,46.2
You should now be able to do the quest More Beads for Salfa.
step
talk Burndl##48722
accept Bearzerker##28614 |goto 65.3,46.2
step
talk Tanrir##48723
accept Turning the Earth##28615 |goto 65.4,46.2
stickystart "overtotem"
step
kill Grolnar the Berserk##49178 |q 28614/1 |goto 69.3,50.6
step
label "overtotem"
Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems. |use Tanrir's Overcharged Totem##64637
Overload 4 Winterfall Earth Totems |q 28615/1 |goto 67.0,47.7
step
talk Tanrir##48723
turnin Turning the Earth##28615 |goto Winterspring,65.4,46.2
step
talk Burndl##48722
turnin Bearzerker##28614 |goto 65.3,46.2
step
label "the_grind"
At this point, you can do two repeatable quests, as well as grind to earn rep.
More Beads for Salfa requires that you grind in Winterspring.  You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in.  Click here to farm at the Winterspring location. |confirm |next "winterfall"
or
Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in.  Click here to farm at the Felwood location. |confirm |next "deadwood" |tip
Collecting 65 Beads/Feathers will get you from Honored to Exalted.
step
label "winterfall"
kill Winterfall Shaman##7439+,Winterfall Ursa##7438+
collect Winterfall Spirit Beads##21383 |n |goto 67.5,49.8
|tip You need to collect at least 5.
5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
More can be found at [Winterspring,35.6,56.3]
Click here to turn in your beads |confirm
step
talk Salfa##11556
accept More Beads for Salfa##28523 |n |goto 21.1,46.2
Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
or
Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label "deadwood"
kill Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
collect Deadwood Headdress Feather##21377 |n |goto Felwood,61.9,12.3
|tip You need to collect at least 5.
5 Feather Headresses = 2,000 Reputation.  You're aiming for at least 60 to 65 Feather Headresses in total.
More can be found at [Felwood,59.6,8.9]
Click here to turn in your feathers |confirm |next "turnin"
step
label "turnin"
talk Nafien##15395
accept Feathers for Nafien##28395 |n |goto 64.0,10.3
Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
or
Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with Timbermaw Hold!
]])
