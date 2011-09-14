module(..., package.seeall)

--====================================================================--
-- SCENE: 
--====================================================================--

--[[

 - Version: 1.3
 - Made by Ricardo Rauber Pereira @ 2010
 - Blog: http://rauberlabs.blogspot.com/
 - Mail: ricardorauber@gmail.com

******************
 - INFORMATION
******************

  - XXXXXXX scene.

--]]

new = function ( params )
	
	------------------
	-- Imports
	------------------
	
	--local ui = require ( "ui" )
	
	------------------
	-- Groups
	------------------
	
	local localGroup = display.newGroup()
	
	--////////////////
	-- Properties
	--////////////////
	
	local _W, _H = display.contentWidth, display.contentHeight
	
	------------------
	-- Display Objects
	------------------
	
	local background = display.newImage( "bg1.png", 0, 0, true )

	
	------------------
	-- Link
	------------------
		
	local onTouchEvent = function ( event )
		if event.phase == "ended" then
			director:changeScene( "s2", "moveFromRight" )
		end
		return true
	end
	
	--====================================================================--
	-- INITIALIZE
	--====================================================================--
	
	local initVars = function ()
		
		------------------
		-- Inserts
		------------------
		localGroup:insert( background )
		
		------------------
		-- Positions
		------------------
		background.x = _W/2
		background.y = _H/2
		
		------------------
		-- Colors
		------------------
		
		------------------
		-- Listeners
		------------------
		background:addEventListener( "touch", onTouchEvent )
		
		
	end
	
	------------------
	-- Initiate variables
	------------------
	
	initVars()
	
	------------------
	-- MUST return a display.newGroup()
	------------------
	
	return localGroup
	
end
