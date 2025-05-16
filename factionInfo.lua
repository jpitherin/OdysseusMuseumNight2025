-- A FactionInfo object contains presentation details and faction relationships for member SpaceObjects.
-- This file is loaded upon launching a scenario.
-- For details, see the FactionInfo class and getFactionInfo() global function in the scripting reference.

-- Updated for Vapriikki Night of the Museums Odysseus Experience 2025.05.17

human = FactionInfo():setName("EOC"):setLocaleName(_("EOC"))
human:setGMColor(255, 255, 255)

machine = FactionInfo():setName("Machines"):setLocaleName(_("Machines"))
machine:setGMColor(255, 0, 0)
machine:setEnemy(human)