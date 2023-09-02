function O2AudioConfigFlashIn()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(audioConfigText)
    linerAnimator(bgmBarTlayer)
    linerAnimator(bgmBarBlayer)
    linerAnimator(sfxBarTlayer)
    linerAnimator(sfxBarBlayer)
    linerAnimator(sfxBarBlayer)
    linerAnimator(subStateDaboTrig)
    linerAnimator(audioBarMark)
    linerAnimator(configMenu)
    if audioConfigText["LCT"] > audioConfigText["LA"]["length"] 
    and bgmBarTlayer["LCT"] > bgmBarTlayer["LA"]["length"] 
    and bgmBarBlayer["LCT"] > bgmBarBlayer["LA"]["length"]
    and sfxBarTlayer["LCT"] > sfxBarTlayer["LA"]["length"]
    and sfxBarBlayer["LCT"] > sfxBarBlayer["LA"]["length"]
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"]
    and configMenu["LCT"] > configMenu["LA"]["length"] then 
        currentUpdateBlock = function() 
            O2AudioConfigDisplay()
        end
    end
end 
function O2AudioConfigDisplay()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    if commandState[1]["Up"] == "Pressing" or commandState[1]["Down"] == "Pressing" then
        love.audio.play(UISFXSource)
        if SSV["currentBarMarkID"] == 0 then 
            SSV["currentBarMarkID"] = 1
            initLinerAnimationWith(audioBarMark,audioMarkVertLinerAnim1)
        else 
            SSV["currentBarMarkID"] = 0 
            initLinerAnimationWith(audioBarMark,audioMarkVertLinerAnim2)
        end 
        currentUpdateBlock = function() 
            O2AudioConfigChangeType()
        end
    elseif commandState[1]["Left"] == "Pressing" then 
        initLinerAnimationWith(audioBarMark,markHorizTwitchLinerAnim1)
        if SSV["currentBarMarkID"] == 0 and BGMVolume[0] > 0 then 
            BGMVolume[0] = BGMVolume[0] - 1
            updateBGMVolumeInStartScene()
            initLinerAnimationWith(bgmRetangle,horizMotionLinerAnim1)
            currentUpdateBlock = function() 
                O2AudioConfigChangeVolume()
            end
            love.audio.play(UISFXSource)
        elseif SSV["currentBarMarkID"] == 1 and UISFXVolume[0] > 0 then
            UISFXVolume[0] = UISFXVolume[0] - 1
            updateUISFXVolume()
            initLinerAnimationWith(sfxRetangle,horizMotionLinerAnim1)
            currentUpdateBlock = function() 
                O2AudioConfigChangeVolume()
            end
            love.audio.play(UISFXSource)
        else 
            currentUpdateBlock = function() 
                O2AudioConfigChangeVolumeBarOnly()
            end
            love.audio.play(UISFXSource)
        end
    elseif commandState[1]["Right"] == "Pressing" then 
        initLinerAnimationWith(audioBarMark,markHorizTwitchLinerAnim2)
        if SSV["currentBarMarkID"] == 0 and BGMVolume[0] < 10 then 
            BGMVolume[0] = BGMVolume[0] + 1
            updateBGMVolumeInStartScene()
            initLinerAnimationWith(bgmRetangle,horizMotionLinerAnim2)
            currentUpdateBlock = function() 
                O2AudioConfigChangeVolume()
            end
            love.audio.play(UISFXSource)
        elseif SSV["currentBarMarkID"] == 1 and UISFXVolume[0] < 10 then
            UISFXVolume[0] = UISFXVolume[0] + 1
            updateUISFXVolume()
            initLinerAnimationWith(sfxRetangle,horizMotionLinerAnim2)
            currentUpdateBlock = function() 
                O2AudioConfigChangeVolume()
            end
            love.audio.play(UISFXSource)
        else 
            currentUpdateBlock = function() 
                O2AudioConfigChangeVolumeBarOnly()
            end
            love.audio.play(UISFXSource)
        end
    elseif commandState[1]["C"] == "Pressing" or commandState[1]["D"] == "Pressing" then 
        writeVolumeSave()
        love.audio.play(UISFXSource)
        initLinerAnimationWith(audioConfigText,flashLinerAnim2)
        initLinerAnimationWith(bgmBarTlayer,flashLinerAnim2)
        initLinerAnimationWith(bgmBarBlayer,flashHalfLinerAnim2)
        initLinerAnimationWith(sfxBarTlayer,flashLinerAnim2)
        initLinerAnimationWith(sfxBarBlayer,flashHalfLinerAnim2)
        initLinerAnimationWith(audioBarMark,flashLinerAnim2)
        initLinerAnimationWith(subStateDaboTrig,flashHalfLinerAnim1)
        initLinerAnimationWith(configMenu,flashHalfLinerAnim1)
        currentUpdateBlock = function() 
            O2AudioConfigFlashOut()
        end
    end
end
function O2AudioConfigChangeType()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    linerAnimator(audioBarMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    if audioBarMark["LCT"] > audioBarMark["LA"]["length"] then
        currentUpdateBlock = function() 
            O2AudioConfigDisplay()
        end
    end
end
function O2AudioConfigChangeVolume()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    linerAnimator(audioBarMark)
    if SSV["currentBarMarkID"] == 0 then 
        linerAnimator(bgmRetangle)
    else 
        linerAnimator(sfxRetangle)
    end 
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    if SSV["currentBarMarkID"] == 0 then 
        if audioBarMark["LCT"] > audioBarMark["LA"]["length"] 
        and bgmRetangle["LCT"] > bgmRetangle["LA"]["length"] then
            currentUpdateBlock = function() 
                O2AudioConfigDisplay()
            end
        end
    else 
        if audioBarMark["LCT"] > audioBarMark["LA"]["length"] 
        and sfxRetangle["LCT"] > sfxRetangle["LA"]["length"] then
            currentUpdateBlock = function() 
                O2AudioConfigDisplay()
            end
        end
    end 
end
function O2AudioConfigChangeVolumeBarOnly()
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    linerAnimator(audioBarMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    if audioBarMark["LCT"] > audioBarMark["LA"]["length"] then
        currentUpdateBlock = function() 
            O2AudioConfigDisplay()
        end
    end
end
function O2AudioConfigFlashOut() 
    frameAnimator(bgLoop)
    frameAnimator(consoleInsMark)
    if bgLoop[5] >= 50 then 
        bgLoop[5] = 0
    end
    linerAnimator(breathDaboTrig)
    linerAnimator(audioConfigText)
    linerAnimator(bgmBarTlayer)
    linerAnimator(bgmBarBlayer)
    linerAnimator(sfxBarTlayer)
    linerAnimator(sfxBarBlayer)
    linerAnimator(sfxBarBlayer)
    linerAnimator(subStateDaboTrig)
    linerAnimator(audioBarMark)
    linerAnimator(configMenu)
    if audioConfigText["LCT"] > audioConfigText["LA"]["length"] 
    and bgmBarTlayer["LCT"] > bgmBarTlayer["LA"]["length"] 
    and bgmBarBlayer["LCT"] > bgmBarBlayer["LA"]["length"]
    and sfxBarTlayer["LCT"] > sfxBarTlayer["LA"]["length"]
    and sfxBarBlayer["LCT"] > sfxBarBlayer["LA"]["length"]
    and subStateDaboTrig["LCT"] > subStateDaboTrig["LA"]["length"]
    and configMenu["LCT"] > configMenu["LA"]["length"] then 
        currentUpdateBlock = function() 
            O1ConfigSubSceneDisplay()
        end
    end
end