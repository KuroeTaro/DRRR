function volumeReadSave()
    initBGMUIArray()
    local chunk = love.filesystem.load( 'save.lua' ) 
    if chunk then 
        chunk()
        if BGMVolume[0] == nil then 
            initBGMUIValue()
        end
    else 
        initBGMUIArray()
        initBGMUIValue()
    end
end

function initBGMUIArray()
    BGMVolume = {}
    BGMVolume["LA"] = nil
    BGMVolume["LCT"] = 0
    BGMVolume["linerDelta"] = 0
    BGMVolume["Scal"] = 1
    UISFXVolume = {}
    UISFXVolume["LA"] = nil
    UISFXVolume["LCT"] = 0
    UISFXVolume["linerDelta"] = 0
    UISFXVolume["Scal"] = 1
end

function initBGMUIValue()
    BGMVolume[0] = 5
    UISFXVolume[0] = 5
end

function writeVolumeSave()
    local chunk = 
    [[ BGMVolume[0] = ]]..BGMVolume[0].."\n"..
    [[ UISFXVolume[0] = ]]..UISFXVolume[0]..[[ ]]

    love.filesystem.write('save.lua',chunk)
end

function writeConfigSave()
    local chunk = nil
    if resPartten == 0 then chunk = "12800720" 
    elseif resPartten == 1 then chunk = "16000900" 
    elseif resPartten == 2 then chunk = "19201080" 
    elseif resPartten == 3 then chunk = "25601440" 
    else chunk = "38402160" end

    love.filesystem.write('configSave.lua',chunk)
end
