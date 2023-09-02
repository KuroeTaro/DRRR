function O2ResConfigFlashIn()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(selectResText)
    linerAnimator(resText)
    linerAnimator(resBarMark)
    linerAnimator(subStateDaboTrig)
    linerAnimator(configMenu)
    if selectResText["LCT"] > selectResText["LA"]["length"] 
    and resText["LCT"] > resText["LA"]["length"] 
    and resBarMark["LCT"] > resBarMark["LA"]["length"]
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"]
    and configMenu["LCT"] > configMenu["LA"]["length"] then 
        currentUpdateBlock = function() 
            O2ResConfigDisplay()
        end
    end
end 
function O2ResConfigDisplay()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    if commandState[1]["Left"] == "Pressing" then 
        love.audio.play(UISFXSource)
        if resPartten ~= 0 then 
            resPartten = resPartten - 1 
        end
        initLinerAnimationWith(resBarMark,markHorizTwitchLinerAnim1)
        initLinerAnimationWith(resText,resLinerTwitchLinerAnim1)
        currentUpdateBlock = function() 
            O2ResConfigTwitch()
        end
    elseif commandState[1]["Right"] == "Pressing" then
        love.audio.play(UISFXSource)
        if resPartten ~= 4 then 
            resPartten = resPartten + 1 
        end 
        initLinerAnimationWith(resBarMark,markHorizTwitchLinerAnim2)
        initLinerAnimationWith(resText,resLinerTwitchLinerAnim2)
        currentUpdateBlock = function() 
            O2ResConfigTwitch()
        end
    elseif commandState[1]["C"] == "Pressing" then 
        love.audio.play(UISFXSource)
        initLinerAnimationWith(selectResText,flashLinerAnim2)
        initLinerAnimationWith(resText,flashLinerAnim2)
        initLinerAnimationWith(resBarMark,flashLinerAnim2)
        initLinerAnimationWith(subStateDaboTrig,flashHalfLinerAnim1)
        initLinerAnimationWith(configMenu,flashHalfLinerAnim1)
        currentUpdateBlock = function() 
            O2ResConfigFlashOut()
        end
    elseif commandState[1]["D"] == "Pressing" then 
        love.audio.play(UISFXSource)
        local resParttenCache = resPartten
        aquireCurrentRes()
        if resPartten ~= resParttenCache then
            resPartten = resParttenCache
            setCurrentRes()
        else
            initLinerAnimationWith(resBarMark,resLinerTwitchLinerAnim3)
            initLinerAnimationWith(resText,resLinerTwitchLinerAnim3)
            currentUpdateBlock = function() 
                O2ResConfigTwitch()
            end
        end
    end
end
function O2ResConfigTwitch()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(resBarMark)
    linerAnimator(resText)
    if resBarMark["LCT"] > resBarMark["LA"]["length"] 
    and resText["LCT"] > resText["LA"]["length"] then 
        resText[5] = resPartten
        currentUpdateBlock = function() 
            O2ResConfigDisplay()
        end
    end
end
function O2ResConfigFlashOut()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(selectResText)
    linerAnimator(resText)
    linerAnimator(resBarMark)
    linerAnimator(subStateDaboTrig)
    linerAnimator(configMenu)
    if selectResText["LCT"] > selectResText["LA"]["length"] 
    and resText["LCT"] > resText["LA"]["length"] 
    and resBarMark["LCT"] > resBarMark["LA"]["length"]
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"]
    and configMenu["LCT"] > configMenu["LA"]["length"] then 
        aquireCurrentRes()
        currentUpdateBlock = function() 
            O1ConfigSubSceneDisplay()
        end
    end
end