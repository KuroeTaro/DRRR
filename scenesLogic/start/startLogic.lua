function startSceneLoadFlashInAnim()
    loadAssetFunction("loadThread/startSceneThread.lua",loadOrderOfStartScene,51)
    frameAnimator(daboTrig)
    if daboTrig["FCT"] > daboTrig["FA"]["length"] then
        love.audio.play(loadingSource)
        currentUpdateBlock = function()
            startSceneLoadAnim()
        end 
        initFrameAnimationWithOut(insMark,insMarkAnim1)
        loadText[4] = 1
        insMark[4] = 1
    end
end
function startSceneLoadAnim()
    loadAssetFunction("loadThread/startSceneThread.lua",loadOrderOfStartScene,51)
    frameAnimator(insMark)
    localCounter(100)
    if counter > 100 and loadOnce == true then 
        love.audio.stop()
        love.audio.play(endLoadingSource)
        counter = nil
        currentUpdateBlock = function()
            startSceneLoadFlashOutAnim()
        end
        insMark[4] = 0
        initFrameAnimationWith(loadText,loadTextAnim1)
        initFrameAnimationWith(daboTrig,daboTrigAnim2)
    end
end
function startSceneLoadFlashOutAnim()
    frameAnimator(loadText)
    frameAnimator(daboTrig)
    if loadText["FCT"] > loadText["FA"]["length"] 
    and daboTrig["FCT"] > daboTrig["FA"]["length"] then 
        -- print(daboTrig[1])
        love.audio.stop()
        loadOnce = false
        currentUpdateBlock = function() 
            firstStartSceneFlashInBGAndDrrr()
        end
        currentDrawBlock = function() 
            startSceneDraw()
        end

        loadObjectOfLoadScene()

        threadOnce = false
        loadOnce = false 
        loadOrder = 0

        assetData = nil

        initFrameAnimationWith(bgLoop,BGLoopFrameAnim)
        initLinerAnimationWith(bgLoop,flashDrrrLinerAnim)
        initLinerAnimationWith(drrr,flashDrrrLinerAnim)

        love.audio.play(bgmHighSource)
        love.audio.play(bgmLowSource)

        if bgLoop[5] >= 50 then 
            bgLoop[5] = 0
        end
    end
end

function firstStartSceneFlashInBGAndDrrr()
    frameAnimator(bgLoop)
    linerAnimator(bgLoop)
    linerAnimator(drrr)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    if bgLoop["LCT"] > bgLoop["LA"]["length"] then
        bgLoop[4] = 1
        drrr[4] = 1
        
        initLinerAnimationWith(optionText,flashLinerAnim1)
        initLinerAnimationWith(consoleDaboTrig,flashLinerAnim1)
        initLinerAnimationWith(consoleText1,flashLinerAnim1)
        initLinerAnimationWith(consoleText2,flashLinerAnim1)

        currentUpdateBlock = function() 
            firstStartSceneFlashInRest()
        end
    end
end
function firstStartSceneFlashInRest()
    frameAnimator(bgLoop)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(optionText)
    linerAnimator(consoleDaboTrig)
    linerAnimator(consoleText1)
    linerAnimator(consoleText2)
    if optionText["LCT"] > optionText["LA"]["length"] 
    and consoleDaboTrig["LCT"] > consoleDaboTrig["LA"]["length"] 
    and consoleText1["LCT"] > consoleText1["LA"]["length"] 
    and consoleText2["LCT"] > consoleText2["LA"]["length"] then
        initLinerAnimationWithOut(breathDaboTrig,breathLinerAnim1)
        initFrameAnimationWithOut(consoleInsMark,insMarkFirstFlashFrameAnim)
        consoleInsMark[4] = 1
        breathDaboTrig[4] = 0.1
        currentUpdateBlock = function() 
            startSceneDisplay()
        end
    end
end

function startSceneDisplay()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    if commandState[1]["Left"] == "Pressing" then 
        love.audio.play(UISFXSource)
        if SSV["currentOptionID"] == 0 then 
            SSV["currentOptionID"] = 4 
        else 
            SSV["currentOptionID"] = SSV["currentOptionID"] - 1
        end
        SSV["currentConsoleText1ID"] = SSV["currentOptionID"]
        SSV["currentConsoleText2ID"] = SSV["currentOptionID"]
        currentUpdateBlock = function() 
            startSceneOptionTwitch()
        end
        initFrameAnimationWith(consoleDaboTrig,daboTrigTwitchFrameAnim)
        initFrameAnimationWith(optionText,optionTwitchFrameAnim)
        consoleInsMark[4] = 0 
        consoleInsMark["LCT"] = 0
        breathDaboTrig[4] = 0
        breathDaboTrig["LCT"] = 0
    elseif commandState[1]["Right"] == "Pressing" then 
        love.audio.play(UISFXSource)
        if SSV["currentOptionID"] == 4 then 
            SSV["currentOptionID"] = 0 
        else 
            SSV["currentOptionID"] = SSV["currentOptionID"] + 1
        end
        SSV["currentConsoleText1ID"] = SSV["currentOptionID"]
        SSV["currentConsoleText2ID"] = SSV["currentOptionID"]
        currentUpdateBlock = function() 
            startSceneOptionTwitch()
        end
        initFrameAnimationWith(consoleDaboTrig,daboTrigTwitchFrameAnim)
        initFrameAnimationWith(optionText,optionTwitchFrameAnim)
        consoleInsMark[4] = 0 
        consoleInsMark["LCT"] = 0
        breathDaboTrig[4] = 0
        breathDaboTrig["LCT"] = 0
    elseif (controllerState[0] ~= controllerState[2] or controllerState[1] ~= controllerState[3]) then 
        if controllerState[0] == 0 and controllerState[1] == 0 then 
            SSV["currentConsoleText2ID"] = 5
        elseif controllerState[0] == 1 and controllerState[1] == 0 then 
            SSV["currentConsoleText2ID"] = 6
        elseif controllerState[0] == 1 and controllerState[1] == 1 then 
            SSV["currentConsoleText2ID"] = 7
        end
        SSV["currentConsoleText1ID"] = 5
        currentUpdateBlock = function() 
            startSceneConsoleDaboTrigTwitch()
        end
        initFrameAnimationWith(consoleDaboTrig,daboTrigTwitchFrameAnim)
        consoleInsMark[4] = 0 
        consoleInsMark["LCT"] = 0
    elseif commandState[1]["D"] == "Pressing" then 
        if SSV["currentOptionID"] == 0 then
            love.audio.play(sceneOutSource) 
            playerNumber = 1

            initLinerAnimationWith(bgLoop,flashLinerAnim2)
            initLinerAnimationWith(consoleDaboTrig,flashLinerAnim2)
            initLinerAnimationWith(consoleText1,flashLinerAnim2)
            initLinerAnimationWith(consoleText2,flashLinerAnim2)
            initLinerAnimationWith(drrr,flashLinerAnim2)
            initLinerAnimationWith(optionText,flashLinerAnim2)
            initLinerAnimationWithOut(BGMVolume,bgmFlashoutAnim)
            BGMVolume["Scal"] = BGMVolume[0]
            audioAnimator(BGMVolume)
            BGML2H()

            consoleInsMark[4] = 0 
            consoleInsMark["LCT"] = 0
            breathDaboTrig[4] = 0
            breathDaboTrig["LCT"] = 0

            currentUpdateBlock = function() 
                startSceneFlashOut()
            end
        elseif SSV["currentOptionID"] == 1 then 
            love.audio.play(sceneOutSource)
            playerNumber = 2

            initLinerAnimationWith(bgLoop,flashLinerAnim2)
            initLinerAnimationWith(consoleDaboTrig,flashLinerAnim2)
            initLinerAnimationWith(consoleText1,flashLinerAnim2)
            initLinerAnimationWith(consoleText2,flashLinerAnim2)
            initLinerAnimationWith(drrr,flashLinerAnim2)
            initLinerAnimationWith(optionText,flashLinerAnim2)
            initLinerAnimationWithOut(BGMVolume,bgmFlashoutAnim)
            BGMVolume["Scal"] = BGMVolume[0]
            audioAnimator(BGMVolume)
            BGML2H()

            consoleInsMark[4] = 0 
            consoleInsMark["LCT"] = 0
            breathDaboTrig[4] = 0
            breathDaboTrig["LCT"] = 0

            currentUpdateBlock = function() 
                startSceneFlashOut()
            end
        elseif SSV["currentOptionID"] == 2 then 
            love.audio.play(toSubSource)
            initLinerAnimationWith(shutter,flashLinerAnim1)
            initLinerAnimationWith(configMenu,flashLinerAnim1)
            initLinerAnimationWith(subStateDaboTrig,flashLinerAnim1)
            subStateDaboTrig[1] = 470

            currentUpdateBlock = function() 
                O1ConfigSubSceneFlashIn()
            end
        elseif SSV["currentOptionID"] == 3 then 
            love.audio.play(toSubSource)
            applyRecord()
            initLinerAnimationWith(shutter,flashLinerAnim1)
            initLinerAnimationWith(recordTotalTime,flashLinerAnim1)
            initLinerAnimationWith(timeNumber1,flashLinerAnim1)
            initLinerAnimationWith(timeNumber2,flashLinerAnim1)
            initLinerAnimationWith(timeNumber3,flashLinerAnim1)
            initLinerAnimationWith(timeNumber4,flashLinerAnim1)
            initLinerAnimationWith(timeNumber5,flashLinerAnim1)
            initLinerAnimationWith(timeNumber6,flashLinerAnim1)
            initLinerAnimationWith(subStateDaboTrig,flashLinerAnim1)
            subStateDaboTrig[1] = 500

            currentUpdateBlock = function() 
                O1RecordSubSceneFlashIn()
            end

        elseif SSV["currentOptionID"] == 4 then 
            love.audio.play(sceneOutSource)

            initLinerAnimationWith(bgLoop,flashLinerAnim2)
            initLinerAnimationWith(consoleDaboTrig,flashLinerAnim2)
            initLinerAnimationWith(consoleText1,flashLinerAnim2)
            initLinerAnimationWith(consoleText2,flashLinerAnim2)
            initLinerAnimationWith(drrr,flashLinerAnim2)
            initLinerAnimationWith(optionText,flashLinerAnim2)
            initLinerAnimationWithOut(BGMVolume,bgmFlashoutAnim)
            BGMVolume["Scal"] = BGMVolume[0]
            audioAnimator(BGMVolume)
            BGML2H()

            consoleInsMark[4] = 0 
            consoleInsMark["LCT"] = 0
            breathDaboTrig[4] = 0
            breathDaboTrig["LCT"] = 0

            currentUpdateBlock = function() 
                startSceneFlashOut()
            end
        end
    end
end
function startSceneOptionTwitch()
    frameAnimator(bgLoop)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    frameAnimator(consoleDaboTrig)
    frameAnimator(optionText)
    if consoleDaboTrig["FCT"] > consoleDaboTrig["FA"]["length"] 
    and optionText["FCT"] > optionText["FA"]["length"] then 
        optionText[1] = SSV["optionTextPositions"][SSV["currentOptionID"] + 1]
        optionText[5] = SSV["currentOptionID"]
        consoleInsMark[1] = SSV["consoleInsMarkPositions"][SSV["currentConsoleText2ID"] + 1]
        consoleInsMark[4] = 1
        consoleInsMark["FCT"] = 0
        consoleText1[5] = SSV["currentConsoleText1ID"]
        consoleText2[5] = SSV["currentConsoleText2ID"]
        breathDaboTrig[4] = 0.1
        breathDaboTrig["LCT"] = 0
        linerAnimator(breathDaboTrig)
        currentUpdateBlock = function() 
            startSceneDisplay()
        end
    end
end
function startSceneConsoleDaboTrigTwitch()
    frameAnimator(bgLoop)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    frameAnimator(consoleDaboTrig)
    if consoleDaboTrig["FCT"] > consoleDaboTrig["FA"]["length"] then 
        consoleInsMark[1] = SSV["consoleInsMarkPositions"][SSV["currentConsoleText2ID"] + 1]
        consoleInsMark[4] = 1
        consoleInsMark["FCT"] = 0
        consoleText1[5] = SSV["currentConsoleText1ID"]
        consoleText2[5] = SSV["currentConsoleText2ID"]
        initFrameAnimationWithOut(consoleDaboTrig,nil)
        currentUpdateBlock = function() 
            startSceneDisplay()
        end
    end
end
function startSceneFlashOut()
    frameAnimator(bgLoop)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(bgLoop)
    linerAnimator(consoleDaboTrig)
    linerAnimator(consoleText1)
    linerAnimator(consoleText2)
    linerAnimator(drrr)
    linerAnimator(optionText)
    audioAnimator(BGMVolume)
    BGML2H()
    if bgLoop["LCT"] > bgLoop["LA"]["length"] 
    and consoleDaboTrig["LCT"] > consoleDaboTrig["LA"]["length"] 
    and consoleText1["LCT"] > consoleText1["LA"]["length"] 
    and consoleText2["LCT"] > consoleText2["LA"]["length"] 
    and drrr["LCT"] > drrr["LA"]["length"] 
    and optionText["LCT"] > optionText["LA"]["length"] 
    and sceneOutSource:isPlaying() == false 
    and toSubSource:isPlaying() == false then 
        love.audio.stop()
        BGMVolume[0] = BGMVolume["Scal"]
        BGMVolume["Scal"] = 0
        if SSV["currentOptionID"] == 4 then 
            currentUpdateBlock = function() 
                love.event.quit()
            end
            currentDrawBlock = function()

            end
        elseif SSV["currentOptionID"] == 0 then 
            daboTrig[4] = 1
            initFrameAnimationWith(daboTrig,daboTrigAnim1)
            love.audio.play(startLoadSource)
            currentUpdateBlock = function() 
                charSelectSceneLoadFlashInAnim()
                gameMode = 0
            end
            currentDrawBlock = function()
                loadSceneDraw()
            end
        elseif SSV["currentOptionID"] == 1 then 
            daboTrig[4] = 1
            initFrameAnimationWith(daboTrig,daboTrigAnim1)
            love.audio.play(startLoadSource)
            currentUpdateBlock = function() 
                charSelectSceneLoadFlashInAnim()
                gameMode = 1
            end
            currentDrawBlock = function()
                loadSceneDraw()
            end
        end
        unloadOrderOfStartScene()
    end
end