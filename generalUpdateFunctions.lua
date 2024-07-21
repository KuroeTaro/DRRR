function localCounter(limit)
    if counter == nil then 
        counter = 0 
    elseif counter <= limit then
        counter = counter + 1
    end
end
function loadAssetFunction(threadAddress,loadFunction,OrderSize)
    if threadAddress ~= nil and loadFunction ~= nil and loadOnce == false then 
        -- run thread
        if threadOnce == false then 
            local thread = love.thread.newThread(threadAddress)
            thread:start()
            threadOnce = true
        end
        -- pop image data
        if assetData == nil then 
            assetData = love.thread.getChannel('image'):pop()
        end
        -- load asset data to variables
        if assetData ~= nil then
            loadFunction(loadOrder)
            loadOrder = loadOrder + 1
            if loadOrder > OrderSize then 
                loadOrder = 0
                loadOnce = true
            end
        end
    end
end


function loadAssetFunctionArray()
    local i = 1
    while (i<=threadAmount)
    do
        if threadOnceArray[i] == false then 
            local thread = love.thread.newThread(threadArray[i])
            thread:start()
            threadOnceArray[i] = true
            print("thread runed")
        end
        i = i + 1
    end
    -- pop image data
    i = 1
    while (i<=threadAmount)
    do
        if assetDataArray[i] == nil then 
            assetDataArray[i] = love.thread.getChannel("image_"..i..""):pop()
            print("image poped")
        end
        i = i + 1
    end
    -- load asset data to variables
    i = 1
    while (i<=threadAmount)
    do
        if assetDataArray[i] ~= nil then
            loadFunctionArray[i](loadOrderArray[i])
            loadOrderArray[i] = loadOrderArray[i] + 1
            if loadOrderArray[i] > OrderSizeArray[i] then 
                loadOrderArray[i] = 0
                loadOnceArray[i] = true
            end
        end
        i = i + 1
    end
end

function aquireCurrentRes()
    local width, height, flags = love.window.getMode()
    if width < 1600 then resPartten = 0 
    elseif width < 1920 then resPartten = 1
    elseif width < 2560 then resPartten = 2
    elseif width < 3840 then resPartten = 3
    else resPartten = 4 end
end

function setCurrentRes()
    if resPartten == 0 then 
        love.window.setMode(1280,720,{})
        love.filesystem.write('configSave.lua','12800720')
    elseif resPartten == 1 then 
        love.window.setMode(1600,900,{})
        love.filesystem.write('configSave.lua','16000900')
    elseif resPartten == 2 then 
        love.window.setMode(1920,1080,{})
        love.filesystem.write('configSave.lua','19201080')
    elseif resPartten == 3 then 
        love.window.setMode(2560,1440,{})
        love.filesystem.write('configSave.lua','25601440')
    elseif resPartten == 4 then 
        love.window.setMode(3840,2160,{})
        love.filesystem.write('configSave.lua','38402160')
    end
end

function updateBGMVolumeInStartScene()
    bgmLowSource:setVolume(BGMVolume[0]/10)
    bgmHighSource:setVolume(0)
end
function updateUISFXVolume()
    UISFXSource:setVolume(UISFXVolume[0]/10)
    toSubSource:setVolume(UISFXVolume[0]/10)
    toMainSource:setVolume(UISFXVolume[0]/10)
    sceneOutSource:setVolume(UISFXVolume[0]/10)
end
function BGMH2L()
    bgmHighSource:setVolume(0)
    bgmLowSource:setVolume(BGMVolume[0]/10)
end
function BGML2H()
    bgmHighSource:setVolume(BGMVolume[0]/10)
    bgmLowSource:setVolume(0)
end
function updateBGMVolumeInCharSelect()
    psychedelicParadeReEditSource:setVolume(BGMVolume[0]/10)
    charSelectStartSFX1Source:setVolume(BGMVolume[0]/10)
    charSelectStartSFX2Source:setVolume(BGMVolume[0]/10)
end