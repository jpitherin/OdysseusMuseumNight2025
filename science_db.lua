--[[
	Everything in the science database files is just readable data for the science officer.
	This data does not affect the game in any other way and just contributes to the lore.
	For details on ScienceDatabase scripting functions, see the scripting reference.
--]]

-- Updated for Vapriikki Night of the Museums Odysseus Experience 2025.05.17

-- "Natural" describes space terrain objects
space_objects = ScienceDatabase():setName(_('Natural'))
space_objects:setLongDescription(_([[This database covers naturally occurring phenomena that spaceborne crews might encounter.

While ship captains are encouraged to avoid unnecessary interactions with these phenomena, knowing their properties can offer an advantage in conflicts near them.]]))

item = space_objects:addEntry(_('Asteroid'))
item:setLongDescription(_([[An asteroid is a minor planet, usually smaller than a few kilometers. Larger variants are sometimes referred to as planetoids.]]))

-- "Technologies" describes non-ship, non-weapon ship features
technologies = ScienceDatabase():setName(_('Technologies'))
technologies:setLongDescription(_([[This database covers ship systems and technologically created phenomena that spacefaring crews might encounter in densely populated regions of space.

This reference is intended only as a primer. Refer to your ship's technical manuals and training materials for details on maintaining and operating your craft.]]))

item = technologies:addEntry(_('Beam/shield frequencies'))
item:addKeyValue(_('Unit'), _('Terahertz'))
item:setLongDescription(_([[Ships with shield and beam systems can often configure their terahertz-frequency radiation. By manipulating these frequencies, savvy ship crews can maximize their beam weapon efficiency while reducing their enemies'.

A beam frequency that's resonant with a target's shield frequency can do considerably more damage, and beam frequencies can be quickly modulated. Shield frequencies require time to recalibrate.

If your Science officer fully scans a target, your ship's computer presents them with a detailed analysis of beam and shield frequencies and suggests optimal values for each.]]))

-- "Weapons" describes ship weapon types
weapons = ScienceDatabase():setName(_('Weapons'))
weapons:setLongDescription(_([[This database covers only the basic versions of missile weapons used throughout the galaxy.

It has been reported that some battleships started using larger variations of those missiles. Small fighters and even frigates should not have too much trouble dodging them, but space captains of bigger ships should be wary of their doubled damage potential.

Smaller variations of these missiles have become common in the galaxy, too. Fighter pilots praise their speed and maneuverability, because it gives them an edge against small and fast-moving targets. They only deal half the damage of their basic counterparts, but what good is a missile if it does not hit its target.]]))

item = weapons:addEntry(_('Homing missile'))
item:addKeyValue(_('Range'), '5.4u')
item:addKeyValue(_('Damage'), '35')
item:setLongDescription(_([[This target-seeking missile is the workhorse of many space combat arsenals. It's compact enough to be fitted on frigates, and packs enough punch to be used on larger ships, though usually in more than a single missile tube.]]))

item = weapons:addEntry(_('Mine'))
item:addKeyValue(_('Drop distance'), '1u')
item:addKeyValue(_('Trigger distance'), '0.6u')
item:addKeyValue(_('Blast radius'), '1u')
item:addKeyValue(_('Damage at center'), '160')
item:addKeyValue(_('Damage at edge'), '30')
item:setLongDescription(_([[Mines are often placed in defensive perimeters around stations. There are also old minefields scattered around the galaxy from older wars.

Some fearless captains use mines as offensive weapons, but their delayed detonation and blast radius make this use risky at best.]]))