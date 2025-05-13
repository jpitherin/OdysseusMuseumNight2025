-- Name: Odysseus Experience
-- Description: Mini bridge mission built for Vapriikki's Night of the Museums 2025
--- Designed for back to back 15min missions using a standalone EE setup
-- Type:Mission

require("utils.lua")


function init()
	player = PlayerSpaceship():setFaction("Human Navy"):setTemplate("Atlantis"):setCanSelfDestruct(false)
	player:setLongRangeRadarRange(15000):setJumpDrive(false):setPosition(0,0)
	
	addGMFunction("+Asteroids", function() onGMClick(function(x,y) addAsteroids(Asteroid, 30, 1000, 20000, x, y) end) end)
	addGMFunction("+Enemies x3", function() onGMClick(function(x,y) enemies3(x,y) end) end)
	addGMFunction("RESET", function() reset() end)
	
	reset()
	
end

function addAsteroids(object_type, amount, dist_min, dist_max, x0, y0)
	placeRandomAroundPoint(object_type, amount, dist_min, dist_max, x0, y0)
	onGMClick(nil)
end

function addEnemy1(x0,y0)
	CpuShip():setShipTemplate("Adder MK5"):setFaction("Exuari"):setPosition(x0, y0):orderAttack(player)
	onGMClick(nil)
	removeGMFunction("1: Enemy x1")
end

function addSOS(x0,y0)
	ally = CpuShip():setShipTemplate("Atlantis"):setFaction("Human Navy"):setPosition(x0, y0):orderIdle()
	player:commandAddWaypoint(x0,y0)
	onGMClick(nil)
	removeGMFunction("2: SOS")
end

function placeEnemiesAroundPoint(amount, dist_min, dist_max, x0, y0)
	for n = 1, amount do
		local r = random(0, 360)
		local distance = random(dist_min, dist_max)
		local x = x0 + math.cos(r / 180 * math.pi) * distance
		local y = y0 + math.sin(r / 180 * math.pi) * distance
		CpuShip():setShipTemplate("Adder MK5"):setFaction("Exuari"):setPosition(x, y):orderAttack(player)
	end
end

function enemies3(x0,y0)
	placeEnemiesAroundPoint(3, 1000, 5000, x0, y0)
	onGMClick(nil) 
end

function allyDies()
	ally:destroy()
	player:commandRemoveWaypoint(0)
	removeGMFunction("3: ally dies")
end

function jumpReady()
	player:setJumpDrive(true)
	removeGMFunction("4: jump ready")
end

function reset()
	player:setLongRangeRadarRange(15000):setJumpDrive(false):setPosition(0,0)
	
	addGMFunction("1: Enemy x1", function() onGMClick(function(x,y) addEnemy1(x,y) end) end)
	addGMFunction("2: SOS", function() onGMClick(function(x,y) addSOS(x,y) end) end)
	addGMFunction("3: ally dies", function() allyDies() end)
	addGMFunction("4: jump ready", function() jumpReady() end)
end

function update(delta)




end