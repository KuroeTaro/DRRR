function O1RecordSubSceneFlashIn()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    applyRecord()
    linerAnimator(breathDaboTrig)
    linerAnimator(shutter)
    linerAnimator(recordTotalTime)
    linerAnimator(timeNumber1)
    linerAnimator(timeNumber2)
    linerAnimator(timeNumber3)
    linerAnimator(timeNumber4)
    linerAnimator(timeNumber5)
    linerAnimator(timeNumber6)
    linerAnimator(subStateDaboTrig)
    if shutter["LCT"] > shutter["LA"]["length"] 
    and recordTotalTime["LCT"] > recordTotalTime["LA"]["length"] 
    and timeNumber1["LCT"] > timeNumber1["LA"]["length"] 
    and timeNumber2["LCT"] > timeNumber2["LA"]["length"] 
    and timeNumber3["LCT"] > timeNumber3["LA"]["length"] 
    and timeNumber4["LCT"] > timeNumber4["LA"]["length"] 
    and timeNumber5["LCT"] > timeNumber5["LA"]["length"] 
    and timeNumber6["LCT"] > timeNumber6["LA"]["length"] 
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"] then
        BGMH2L()
        currentUpdateBlock = function() 
            O1RecordSubSceneDisplay()
        end
    end
end
function O1RecordSubSceneDisplay()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    applyRecord()
    linerAnimator(breathDaboTrig)
    if commandState[1]["Up"] == "Pressing" or commandState[1]["Down"] == "Pressing" then 
        love.audio.play(UISFXSource)
        if SSV["currentSubSceneDaboTrigID"] == 0 then 
            SSV["currentSubSceneDaboTrigID"] = 1
        else 
            SSV["currentSubSceneDaboTrigID"] = 0 
        end
        initLinerAnimationWith(subStateDaboTrig,flashLinerAnim3)
        currentUpdateBlock = function() 
            O1RecordSubSceneDaboTrigTwitch()
        end
    elseif (commandState[1]["D"] == "Pressing" and SSV["currentSubSceneDaboTrigID"] == 1) 
    or commandState[1]["C"] == "Pressing" then 
        love.audio.play(toMainSource)
        initLinerAnimationWith(shutter,flashLinerAnim2)
        initLinerAnimationWith(recordTotalTime,flashLinerAnim2)
        initLinerAnimationWith(timeNumber1,flashLinerAnim2)
        initLinerAnimationWith(timeNumber2,flashLinerAnim2)
        initLinerAnimationWith(timeNumber3,flashLinerAnim2)
        initLinerAnimationWith(timeNumber4,flashLinerAnim2)
        initLinerAnimationWith(timeNumber5,flashLinerAnim2)
        initLinerAnimationWith(timeNumber6,flashLinerAnim2)
        initLinerAnimationWith(subStateDaboTrig,flashLinerAnim2)
        currentUpdateBlock = function() 
            O1RecordSubSceneFlashOut()
        end
    end
end
function O1RecordSubSceneDaboTrigTwitch()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(subStateDaboTrig)
    if subStateDaboTrig["LCT"] == 4 then 
        subStateDaboTrig[2] = SSV["daboTrigPositionInRecord"][SSV["currentSubSceneDaboTrigID"] + 1]
    elseif subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"] then 
        currentUpdateBlock = function() 
            O1RecordSubSceneDisplay()
        end
    end
end
function O1RecordSubSceneFlashOut()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    applyRecord()
    linerAnimator(breathDaboTrig)
    linerAnimator(shutter)
    linerAnimator(recordTotalTime)
    linerAnimator(timeNumber1)
    linerAnimator(timeNumber2)
    linerAnimator(timeNumber3)
    linerAnimator(timeNumber4)
    linerAnimator(timeNumber5)
    linerAnimator(timeNumber6)
    linerAnimator(subStateDaboTrig)
    if shutter["LCT"] > shutter["LA"]["length"] 
    and recordTotalTime["LCT"] > recordTotalTime["LA"]["length"] 
    and timeNumber1["LCT"] > timeNumber1["LA"]["length"] 
    and timeNumber2["LCT"] > timeNumber2["LA"]["length"] 
    and timeNumber3["LCT"] > timeNumber3["LA"]["length"] 
    and timeNumber4["LCT"] > timeNumber4["LA"]["length"] 
    and timeNumber5["LCT"] > timeNumber5["LA"]["length"] 
    and timeNumber6["LCT"] > timeNumber6["LA"]["length"] 
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"] then
        BGML2H()
        SSV["currentSubSceneDaboTrigID"] = 0
        subStateDaboTrig[2] = 360
        currentUpdateBlock = function() 
            startSceneDisplay()
        end
    end
end