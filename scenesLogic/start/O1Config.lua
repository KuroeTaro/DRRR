function O1ConfigSubSceneFlashIn()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(shutter)
    linerAnimator(configMenu)
    linerAnimator(subStateDaboTrig)
    if shutter["LCT"] > shutter["LA"]["length"] 
    and configMenu["LCT"] > configMenu["LA"]["length"] 
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"] then
        BGMH2L()
        currentUpdateBlock = function() 
            O1ConfigSubSceneDisplay()
        end
    end
end
function O1ConfigSubSceneDisplay()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    if commandState[1]["Up"] == "Pressing" then 
        love.audio.play(UISFXSource)
        if SSV["currentSubSceneDaboTrigID"] == 0 then 
            SSV["currentSubSceneDaboTrigID"] = 3
        else 
            SSV["currentSubSceneDaboTrigID"] = SSV["currentSubSceneDaboTrigID"] - 1 
        end
        initLinerAnimationWith(subStateDaboTrig,flashLinerAnim3)
        currentUpdateBlock = function() 
            O1ConfigSubSceneDaboTrigTwitch()
        end
    elseif commandState[1]["Down"] == "Pressing" then 
        love.audio.play(UISFXSource)
        if SSV["currentSubSceneDaboTrigID"] == 3 then 
            SSV["currentSubSceneDaboTrigID"] = 0
        else 
            SSV["currentSubSceneDaboTrigID"] = SSV["currentSubSceneDaboTrigID"] + 1 
        end
        initLinerAnimationWith(subStateDaboTrig,flashLinerAnim3)
        currentUpdateBlock = function() 
            O1ConfigSubSceneDaboTrigTwitch()
        end
    elseif commandState[1]["D"] == "Pressing" then 
        if SSV["currentSubSceneDaboTrigID"] == 0 then 
            love.audio.play(UISFXSource)
            bgmRetangle[1] = BGMVolume[0] * 23 + 695
            sfxRetangle[1] = UISFXVolume[0] * 23 + 695
            initLinerAnimationWith(audioConfigText,flashLinerAnim1)
            initLinerAnimationWith(bgmBarTlayer,flashLinerAnim1)
            initLinerAnimationWith(bgmBarBlayer,flashHalfLinerAnim1)
            initLinerAnimationWith(sfxBarTlayer,flashLinerAnim1)
            initLinerAnimationWith(sfxBarBlayer,flashHalfLinerAnim1)
            initLinerAnimationWith(audioBarMark,flashLinerAnim1)
            initLinerAnimationWith(subStateDaboTrig,flashHalfLinerAnim2)
            initLinerAnimationWith(configMenu,flashHalfLinerAnim2)
            currentUpdateBlock = function() 
                O2AudioConfigFlashIn()
            end
        elseif SSV["currentSubSceneDaboTrigID"] == 1 then 
            love.audio.play(UISFXSource)
            initLinerAnimationWith(controllerIndiText,flashLinerAnim1)
            initLinerAnimationWith(indiMark[1],flashHalfLinerAnim1)
            initLinerAnimationWith(indiMark[2],flashHalfLinerAnim1)
            initLinerAnimationWith(subStateDaboTrig,flashHalfLinerAnim2)
            initLinerAnimationWith(configMenu,flashHalfLinerAnim2)
            currentUpdateBlock = function() 
                O2ControllerConfigFlashIn()
            end
        elseif SSV["currentSubSceneDaboTrigID"] == 2 then 
            love.audio.play(UISFXSource)
            initLinerAnimationWith(selectResText,flashLinerAnim1)
            initLinerAnimationWith(resText,flashLinerAnim1)
            initLinerAnimationWith(resBarMark,flashLinerAnim1)
            initLinerAnimationWith(subStateDaboTrig,flashHalfLinerAnim2)
            initLinerAnimationWith(configMenu,flashHalfLinerAnim2)
            resText[5] = resPartten
            currentUpdateBlock = function() 
                O2ResConfigFlashIn()
            end
        elseif SSV["currentSubSceneDaboTrigID"] == 3 then 
            love.audio.play(toMainSource)
            initLinerAnimationWith(shutter,flashLinerAnim2)
            initLinerAnimationWith(configMenu,flashLinerAnim2)
            initLinerAnimationWith(subStateDaboTrig,flashLinerAnim2)
            currentUpdateBlock = function() 
                O1ConfigSubSceneFlashOut()
            end
        end
    elseif commandState[1]["C"] == "Pressing" then 
        love.audio.play(toMainSource)
        initLinerAnimationWith(shutter,flashLinerAnim2)
        initLinerAnimationWith(configMenu,flashLinerAnim2)
        initLinerAnimationWith(subStateDaboTrig,flashLinerAnim2)
        currentUpdateBlock = function() 
            O1ConfigSubSceneFlashOut()
        end
    end
end 
function O1ConfigSubSceneDaboTrigTwitch()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(subStateDaboTrig)
    if subStateDaboTrig["LCT"] == 4 then 
        subStateDaboTrig[2] = SSV["daboTrigPositionInConfig"][SSV["currentSubSceneDaboTrigID"] + 1]
    elseif subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"] then 
        currentUpdateBlock = function() 
            O1ConfigSubSceneDisplay()
        end
    end
end
function O1ConfigSubSceneFlashOut()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)

    linerAnimator(shutter)
    linerAnimator(configMenu)
    linerAnimator(subStateDaboTrig)

    if shutter["LCT"] > shutter["LA"]["length"] 
    and configMenu["LCT"] > configMenu["LA"]["length"] 
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"] then
        BGML2H()
        SSV["currentSubSceneDaboTrigID"] = 0
        subStateDaboTrig[2] = 360
        currentUpdateBlock = function() 
            startSceneDisplay()
        end
    end
end