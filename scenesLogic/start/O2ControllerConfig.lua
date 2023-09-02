function O2ControllerConfigFlashIn()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(controllerIndiText)
    linerAnimator(indiMark[1])
    linerAnimator(indiMark[2])
    linerAnimator(subStateDaboTrig)
    linerAnimator(configMenu)
    if controllerIndiText["LCT"] > controllerIndiText["LA"]["length"] 
    and indiMark[1]["LCT"] > indiMark[1]["LA"]["length"] 
    and indiMark[2]["LCT"] > indiMark[2]["LA"]["length"]
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"]
    and configMenu["LCT"] > configMenu["LA"]["length"] then
        indiStateSubBlock[1] = function()
            O3ControllerConfigIndiOff(1)
        end
        indiStateSubBlock[2] = function()
            O3ControllerConfigIndiOff(2)
        end
        currentUpdateBlock = function() 
            O2ControllerConfigDisplay()
        end
    end
end
function O2ControllerConfigDisplay()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    indiStateSubBlock[1]()
    indiStateSubBlock[2]()
    if commandState[1]["C"] == "Pressing" or commandState[2]["C"] == "Pressing" then 
        love.audio.play(UISFXSource)
        indiMark[1][4] = 0.5
        indiMark[2][4] = 0.5
        initLinerAnimationWith(controllerIndiText,flashLinerAnim2)
        initLinerAnimationWith(indiMark[1],flashHalfLinerAnim2)
        initLinerAnimationWith(indiMark[2],flashHalfLinerAnim2)
        initLinerAnimationWith(subStateDaboTrig,flashHalfLinerAnim1)
        initLinerAnimationWith(configMenu,flashHalfLinerAnim1)
        currentUpdateBlock = function() 
            O2ContrllerConfigFlashOut()
        end
    end
end
function O2ContrllerConfigFlashOut()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(controllerIndiText)
    linerAnimator(indiMark[1])
    linerAnimator(indiMark[2])
    linerAnimator(subStateDaboTrig)
    linerAnimator(configMenu)
    if controllerIndiText["LCT"] > controllerIndiText["LA"]["length"] 
    and indiMark[1]["LCT"] > indiMark[1]["LA"]["length"] 
    and indiMark[2]["LCT"] > indiMark[2]["LA"]["length"]
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"]
    and configMenu["LCT"] > configMenu["LA"]["length"] then
        currentUpdateBlock = function() 
            O1ConfigSubSceneDisplay()
        end
    end
end 