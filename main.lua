require("inputSystem")
require("animator")

require("generalDarwFunctions")
require("generalRecordFunctions")
require("generalUpdateFunctions")
require("generalReadAndWriteFunctions")

require("drawFunctions")

require("/scenesLogic/firstUpdateFunctions")
require("/scenesLogic/dicAndLogoLogic")
require("/scenesLogic/start/startLogic")
require("/scenesLogic/charSelect/charSelectLogic")
require("/scenesLogic/match/matchSceneLogic")

require("/scenesLoad/firstObjectAndAssetData")
require("/scenesLoad/dicAndLogoLoad")
require("/scenesLoad/startLoad")
require("/scenesLoad/charSelectLoad")
require("/scenesLoad/matchLoad")


function love.run()
	if love.load then love.load(love.arg.parseGameArguments(arg), arg) end

	-- We don't want the first frame's dt to include time taken by love.load.
	if love.timer then love.timer.step() end

	local dt = 0
    local FRST = 1/60 --frame rate stabilization timer

	-- Main loop time.
	return function()
		-- Process events.
		if love.event then
			love.event.pump()
			for name, a,b,c,d,e,f in love.event.poll() do
				if name == "quit" then
					if not love.quit or not love.quit() then
						return a or 0
					end
				end
				love.handlers[name](a,b,c,d,e,f)
			end
		end

		-- Update dt, as we'll be passing it to update
		if love.timer then FRST = FRST + love.timer.step() end

        -- Call update and draw
        if FRST >= 1/60 then
            if love.update then love.update() end -- will pass 0 if love.timer is disabled

            if love.draw then love.draw() end
            love.graphics.present()

            FRST = math.fmod(FRST, 1/60)
        end
        if love.timer then love.timer.sleep(1/60-FRST) end
        -- if love.timer then love.timer.sleep(0.001) end
	end
end

function love.load()
    threadOnce = false
    loadOnce = false 
    loadOrder = 0
    assetData = nil
    
    threadArray = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}
    threadOnceArray = {false,false,false,false,false,false,false,false,false,false,false}
    loadOnceArray = {false,false,false,false,false,false,false,false,false,false,false}
    loadOrderArray = {0,0,0,0,0,0,0,0,0,0,0}
    loadFunctionArray = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}
    OrderSizeArray = {0,0,0,0,0,0,0,0,0,0,0}
    assetDataArray = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}
    threadAmount = 1

    gft = 0

    playerNumber = 1
    gameDuration = {0,0,0,0,0,0}

    selectedChar = {3,4}
    selectedControlMode = {0,0}
    gameMode = 0

    sceneCounter = 0

    subUpdateBlocks = {}

    volumeReadSave()
    aquireCurrentRes()
    inputLoad()
    recordTimerLoad()
    currentUpdateBlock = function()
        firstSceneLoadPreTimer()
    end
    currentDrawBlock = function()
        
    end
    
    --love.graphics.setDefaultFilter('linear','nearest')

end
function love.update()
    collectgarbage()
    inputUpdate()
    recordTimerCounter()
    currentUpdateBlock()
    fps = love.timer.getFPS( )
    gft = gft + 1
end
function love.draw()
    love.graphics.clear(7/255,19/255,31/255,1)
    currentDrawBlock()
    inputDebugDraw()
    love.graphics.print( gft, 1550, 0)
    love.graphics.print( fps, 1550, 20)
end
