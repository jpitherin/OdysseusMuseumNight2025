--[[
Base of the ship templates, from here different classes of ships are included to be used within the game.
Each sub-file defines it's own set of ship classes.

These are:
* Stations: For different kinds of space stations, from tiny to huge.
* Starfighters: Smallest ships in the game.
* Frigates: Medium sized ships. Operate on a small crew.
* Corvette: Large, slower, less maneuverable ships.
* Dreadnaught: Huge things. Everything in here is really really big, and generally really really deadly.
* Exuari: Ships with a similar style, designed (but not limited) for the Exuari faction.

Player ships are in general large frigates to small corvette class
--]]
--require("shiptemplates/stations.lua")
--require("shiptemplates/starFighters.lua")
--require("shiptemplates/frigates.lua")
--require("shiptemplates/corvette.lua")
--require("shiptemplates/dreadnaught.lua")
--require("shiptemplates/exuari.lua")
--require("shiptemplates/ktlitan.lua")
--require("shiptemplates/transport.lua")
--require("shiptemplates/satellites.lua")

--For now, we add our old ship templates as well. These should be removed at some point.
--require("shiptemplates/OLD.lua")


template = ShipTemplate():setName("Atlantis X23"):setLocaleName(_("ship", "Atlantis X23")):setClass(_("class", "Corvette"), _("subclass", "Destroyer")):setModel("battleship_destroyer_1_upgraded")
--template:setDescription(_([[The Atlantis X23 is the smallest model of destroyer, and its combination of frigate-like size and corvette-like power makes it an excellent escort ship when defending larger ships against multiple smaller enemies. Because the Atlantis X23 is fitted with a jump drive, it can also serve as an intersystem patrol craft.]]))
template:setRadarTrace("dread.png")
template:setHull(100)
template:setShields(200, 200, 200, 200)
template:setSpeed(30, 3.5, 5)
template:setJumpDrive(true)
--                  Arc, Dir, Range, CycleTime, Dmg
template:setBeam(0,100, -20, 1500.0, 6.0, 8)
template:setBeam(1,100,  20, 1500.0, 6.0, 8)
template:setBeam(2,100, 180, 1500.0, 6.0, 8)
template:setTubes(4, 10.0)
--template:setWeaponStorage("HVLI", 20)
template:setWeaponStorage("Homing", 4)
template:setTubeDirection(0, -90)
template:setTubeDirection(1, -90)
template:setTubeDirection(2,  90)
template:setTubeDirection(3,  90)

variation = template:copy("Atlantis"):setLocaleName(_("playerShip", "Atlantis")):setType("playership")
--variation:setDescription(_([[A refitted Atlantis X23 for more general tasks. The large shield system has been replaced with an advanced combat maneuvering systems and improved impulse engines. Its missile loadout is also more diverse. Mistaking the modified Atlantis for an Atlantis X23 would be a deadly mistake.]]))
variation:setShields(200, 200)
variation:setHull(250)
variation:setSpeed(90, 10, 20)
variation:setCombatManeuver(400, 250)
variation:setBeam(2, 0, 0, 0, 0, 0)
variation:setWeaponStorage("Homing", 12)
--variation:setWeaponStorage("Nuke", 4)
--variation:setWeaponStorage("Mine", 8)
--variation:setWeaponStorage("EMP", 6)
variation:setTubes(5, 8.0) -- Amount of torpedo tubes, and loading time of the tubes.
--variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
--variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")

variation:addRoomSystem(1, 0, 2, 1, "Maneuver");
variation:addRoomSystem(1, 1, 2, 1, "BeamWeapons");
variation:addRoom(2, 2, 2, 1);

variation:addRoomSystem(0, 3, 1, 2, "RearShield");
variation:addRoomSystem(1, 3, 2, 2, "Reactor");
variation:addRoomSystem(3, 3, 2, 2, "Warp");
variation:addRoomSystem(5, 3, 1, 2, "JumpDrive");
variation:addRoom(6, 3, 2, 1);
variation:addRoom(6, 4, 2, 1);
variation:addRoomSystem(8, 3, 1, 2, "FrontShield");

variation:addRoom(2, 5, 2, 1);
variation:addRoomSystem(1, 6, 2, 1, "MissileSystem");
variation:addRoomSystem(1, 7, 2, 1, "Impulse");

variation:addDoor(1, 1, true);
variation:addDoor(2, 2, true);
variation:addDoor(3, 3, true);
variation:addDoor(1, 3, false);
variation:addDoor(3, 4, false);
variation:addDoor(3, 5, true);
variation:addDoor(2, 6, true);
variation:addDoor(1, 7, true);
variation:addDoor(5, 3, false);
variation:addDoor(6, 3, false);
variation:addDoor(6, 4, false);
variation:addDoor(8, 3, false);
variation:addDoor(8, 4, false);


template = ShipTemplate():setName("Adder MK5"):setLocaleName(_("ship", "Adder MK5")):setClass(_("class", "Starfighter"), _("subclass", "Gunship")):setModel("AdlerLongRangeScoutYellow")
template:setRadarTrace("fighter.png")
--template:setDescription(_([[The Adder line's fifth iteration proved to be a great success among pirates and law officers alike. It is cheap, fast, and easy to maintain, and it packs a decent punch.]]))
template:setHull(50)
template:setShields(30)
template:setSpeed(80, 28, 25)
template:setBeam(0, 35, 0, 800, 5.0, 2.0)
template:setBeam(1, 70, 30, 600, 5.0, 2.0)
template:setBeam(2, 70,-30, 600, 5.0, 2.0)
template:setTubes(1, 15.0)
template:setTubeSize(0, "small")
template:setWeaponStorage("HVLI", 4)