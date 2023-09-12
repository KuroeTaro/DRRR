function charSelectSceneLoadFlashInAnim()
    loadAssetFunction("loadThread/charSelectSceneThread.lua",loadOrderOfCharSelectScene,2)
    frameAnimator(daboTrig)
    if daboTrig["FCT"] > daboTrig["FA"]["length"] then
        love.audio.play(loadingSource)
        currentUpdateBlock = function()
            charSelectSceneLoadAnim()
        end 
        initFrameAnimationWithOut(insMark,insMarkAnim1)
        loadText[4] = 1
        insMark[4] = 1
    end
end
function charSelectSceneLoadAnim()
    loadAssetFunction("loadThread/charSelectSceneThread.lua",loadOrderOfCharSelectScene,2)
    frameAnimator(insMark)
    localCounter(100)
    if counter > 100 and loadOnce == true then 
        love.audio.stop()
        love.audio.play(endLoadingSource)
        counter = nil
        currentUpdateBlock = function()
            charSelectSceneLoadFlashOutAnim()
        end
        insMark[4] = 0
        initFrameAnimationWith(loadText,loadTextAnim1)
        initFrameAnimationWith(daboTrig,daboTrigAnim2)
    end
end
function charSelectSceneLoadFlashOutAnim()
    frameAnimator(loadText)
    frameAnimator(daboTrig)
    if loadText["FCT"] > loadText["FA"]["length"] 
    and daboTrig["FCT"] > daboTrig["FA"]["length"] then 
        love.audio.stop()
        loadOnce = false
        currentUpdateBlock = function() 
            charSelectSceneFirstAnim()
        end
        currentDrawBlock = function() 
            charSelectSceneDraw1()
        end

        threadOnce = false
        loadOnce = false 
        loadOrder = 0

        assetData = nil

        firstRing[4] = 1
        solidColor[4] = 1
        movieCover[4] = 1

        sceneCounter = -43

        initLinerAnimationWithOut(solidColor,solidFlashInLinerAnim1)
        initFrameAnimationWithOut(firstRing,firstRingFlashInFrameAnim)

        love.audio.play(psychedelicParadeReEditSource)
    end
end
function charSelectSceneFirstAnim()
    sceneCounter =  sceneCounter + 1
    local switch = 
    {
        [0] = function()
            love.audio.play(charSelectStartSFX1Source)
        end,
        [1] = function()
            linerAnimator(solidColor)
            frameAnimator(firstRing)
        end,
        [16] = function()
            frameAnimator(firstRing)
        end,
        [20] = function()
            frameAnimator(firstRing)
            love.audio.play(charSelectStartSFX2Source)
        end,
        [21] = function()
            frameAnimator(firstRing)
        end,
        [25] = function()
            frameAnimator(firstRing)
            initLinerAnimationWithOut(firstGlow,firstGlowFlashInLinerAnim)
        end,
        [26] = function()
            linerAnimator(firstGlow)
            frameAnimator(firstRing)
        end,
        [35] = function()
            solidColor = {1,1,1,1,0}
            solidColor["FCT"] = 0
            solidColor["LCT"] = 0
            solidColor["linerDelta"] = {0,0,0,0,0}
            firstRing[4] = 0
            firstGlow[4] = 0
            charSelectBG[4] = 1
            secondRing[4] = 0.8
            timeNumber1[4] = 1
            timeNumber2[4] = 1
            continousGlow[4] = {0,0.5,1,1}
            currentDrawBlock = function() 
                charSelectSceneDraw2()
            end
        end,
        [36] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            initLinerAnimationWithOut(solidColor,solidFlashInLinerAnim2)
            initLinerAnimationWithOut(glowAlphaPoint,glowAlphaPointAnim)
            initLinerAnimationWithOut(continousGlow,continousGlowFlashInAnim)
            initLinerAnimationWithOut(iconCover1,charSelectFlashInAnim)
            initLinerAnimationWithOut(iconCover2,charSelectFlashInAnim)

            initLinerAnimationWithOut(charSelectRight,charSelectFlashInAnim)
            initLinerAnimationWithOut(charSelectLeft,charSelectFlashInAnim)
            initLinerAnimationWithOut(charSelectRightChar,charSelectCharMoveInAnim)
            initLinerAnimationWithOut(charSelectLeftChar,charSelectCharMoveInAnim)
            initLinerAnimationWithOut(charSelectRightText,charSelectTextMoveInAnim)
            initLinerAnimationWithOut(charSelectLeftText,charSelectTextMoveInAnim)
        end,
        [37] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            initLinerAnimationWithOut(ANRIIcon,iconFlashInAnimHalf)
            initLinerAnimationWithOut(CKGIcon,iconFlashInAnimHalf)
            initLinerAnimationWithOut(ERIKAWK3Icon,iconFlashInAnimHalf)
            initLinerAnimationWithOut(IZYIcon,iconFlashInAnimHalf)

            initLinerAnimationWithOut(iconCover1,iconFlashInAnim)
        end,
        [38] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            initLinerAnimationWithOut(KTCIcon,iconFlashInAnimHalf)
            initLinerAnimationWithOut(SHINRAIcon,iconFlashInAnimHalf)
            initLinerAnimationWithOut(SRTIcon,iconFlashInAnimHalf)
            initLinerAnimationWithOut(SZOIcon,iconFlashInAnimHalf)

            initLinerAnimationWithOut(iconCover2,iconFlashInAnim)
        end,
        [39] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            initLinerAnimationWithOut(ANRIIconChar,iconCharMoveAnim)
            initLinerAnimationWithOut(CKGIconChar,iconCharMoveAnim)
            initLinerAnimationWithOut(ERIKAWK3IconChar,iconCharMoveAnim)
            initLinerAnimationWithOut(IZYIconChar,iconCharMoveAnim)
        end,
        [40] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            initLinerAnimationWithOut(KTCIconChar,iconCharMoveAnim)
            initLinerAnimationWithOut(SHINRAIconChar,iconCharMoveAnim)
            initLinerAnimationWithOut(SRTIconChar,iconCharMoveAnim)
            initLinerAnimationWithOut(SZOIconChar,iconCharMoveAnim)
        end,
        [41] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            linerAnimator(solidColor)
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)
        end,
        [46] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)
            linerAnimator(SRTIcon)
            linerAnimator(SRTIconChar)
        end,
        [51] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)
            linerAnimator(SRTIcon)
            linerAnimator(SRTIconChar)
            linerAnimator(SHINRAIcon)
            linerAnimator(SHINRAIconChar)
        end,
        [56] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)
            linerAnimator(SRTIcon)
            linerAnimator(SRTIconChar)
            linerAnimator(SHINRAIcon)
            linerAnimator(SHINRAIconChar)
            linerAnimator(CKGIcon)
            linerAnimator(CKGIconChar)
        end,
        [61] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)
            linerAnimator(SRTIcon)
            linerAnimator(SHINRAIcon)
            linerAnimator(SHINRAIconChar)
            linerAnimator(CKGIcon)
            linerAnimator(CKGIconChar)
            linerAnimator(SZOIcon)
            linerAnimator(SZOIconChar)

            linerAnimator(iconCover2)
        end,
        [66] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            linerAnimator(charSelectRight)
            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(SHINRAIcon)
            linerAnimator(CKGIcon)
            linerAnimator(CKGIconChar)
            linerAnimator(SZOIcon)
            linerAnimator(SZOIconChar)
            linerAnimator(IZYIcon)
            linerAnimator(IZYIconChar)

            linerAnimator(iconCover2)
            linerAnimator(iconCover1)
        end,
        [71] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeft)
            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)

            linerAnimator(CKGIcon)
            linerAnimator(SZOIcon)
            linerAnimator(SZOIconChar)
            linerAnimator(IZYIcon)
            linerAnimator(IZYIconChar)
            linerAnimator(ANRIIcon)
            linerAnimator(ANRIIconChar)

            linerAnimator(iconCover2)
            linerAnimator(iconCover1)
        end,
        [76] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)
            
            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)

            linerAnimator(SZOIcon)
            linerAnimator(IZYIcon)
            linerAnimator(IZYIconChar)
            linerAnimator(ANRIIcon)
            linerAnimator(ANRIIconChar)
            linerAnimator(KTCIcon)
            linerAnimator(KTCIconChar)

            linerAnimator(iconCover2)
            linerAnimator(iconCover1)
        end,
        [81] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)

            linerAnimator(IZYIcon)
            linerAnimator(ANRIIcon)
            linerAnimator(ANRIIconChar)
            linerAnimator(KTCIcon)
            linerAnimator(KTCIconChar)
            linerAnimator(ERIKAWK3Icon)
            linerAnimator(ERIKAWK3IconChar)

            linerAnimator(iconCover1)
        end,
        [86] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)

            linerAnimator(ANRIIcon)
            linerAnimator(KTCIcon)
            linerAnimator(KTCIconChar)
            linerAnimator(ERIKAWK3Icon)
            linerAnimator(ERIKAWK3IconChar)
        end,
        [91] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)

            linerAnimator(KTCIcon)
            linerAnimator(ERIKAWK3Icon)
            linerAnimator(ERIKAWK3IconChar)
        end,
        [96] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)

            linerAnimator(ERIKAWK3Icon)
        end,
        [101] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)
        end,
        [106] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            glowTransAnimator(continousGlow)

            O1CharChangeFunction(1)
            O1CharChangeFunction(2)

            linerAnimator(charSelectRightChar)
            linerAnimator(charSelectRightText)

            linerAnimator(charSelectLeftChar)
            linerAnimator(charSelectLeftText)
            currentUpdateBlock = function()
                charSelectInterectFunction()
            end
            currentDrawBlock = function() 
                charSelectSceneDraw3()
            end
        end
    }
    local thisFunction = switch[sceneCounter]
    if thisFunction then 
        thisFunction() 
        subUpdateBlocks[1] = thisFunction
    else
        subUpdateBlocks[1]()
    end
end
function charSelectInterectFunction()
    sceneCounter =  sceneCounter + 1
    
    local switch = 
    {
        [121] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            maskPointAnimator(glowAlphaPoint)
            timerInCharSelect(SSV,timeNumber1,timeNumber2)
            glowTransAnimator(continousGlow)
            
            O1CharChangeFunction(1)
            O1CharChangeFunction(2)
        end,
        [131] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            timerInCharSelect(SSV,timeNumber1,timeNumber2)
            glowTransAnimator(continousGlow)

            O1CharChangeFunction(1)
            O1CharChangeFunction(2)
        end,
        [340] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            timerInCharSelect(SSV,timeNumber1,timeNumber2)
            glowTransAnimator(continousGlow)
            initLinerAnimationWithOut(continousGlow,continousGlowLoopAnim)

            O1CharChangeFunction(1)
            O1CharChangeFunction(2)
        end,        
        [341] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            secondRing[4] = 0.8+math.random(-1, 1)*0.03
            timerInCharSelect(SSV,timeNumber1,timeNumber2)
            glowTransAnimator(continousGlow)

            O1CharChangeFunction(1)
            O1CharChangeFunction(2)
        end
    }
    local thisFunction = switch[sceneCounter]
    if thisFunction then 
        thisFunction() 
        subUpdateBlocks[1] = thisFunction
    else
        subUpdateBlocks[1]()
    end
    if charSelectLeft["state"] == "locked" and charSelectRight["state"] == "locked" then 
        solidColor = {7/255,19/255,31/255,0,0}
        solidColor["FCT"] = 0
        solidColor["LCT"] = 0
        solidColor["linerDelta"] = {0,0,0,0,0}
        sceneCounter = -1
        initLinerAnimationWithOut(solidColor,solidFlashOutLinerAnim)
        initLinerAnimationWithOut(secondRing,solidFlashInLinerAnim3)
        initLinerAnimationWithOut(BGMVolume,bgmFlashoutAnim)
        BGMVolume["Scal"] = BGMVolume[0]
        audioAnimator(BGMVolume)
        updateBGMVolumeInCharSelect()
        currentUpdateBlock = function()
            charSelectSceneFlashOut()
        end
    end
end

function charSelectSceneFlashOut()
    sceneCounter = sceneCounter + 1
    local switch = 
    {
        [0] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            linerAnimator(secondRing)
            love.audio.play(flashOutSFXSource)
            audioAnimator(BGMVolume)
            updateBGMVolumeInCharSelect()
        end,
        [5] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            linerAnimator(solidColor)
            linerAnimator(secondRing)
            audioAnimator(BGMVolume)
            updateBGMVolumeInCharSelect()
        end,
        [10] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            linerAnimator(solidColor)
            linerAnimator(secondRing)
            audioAnimator(BGMVolume)
            updateBGMVolumeInCharSelect()
        end,        
        [15] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
            linerAnimator(solidColor)
            audioAnimator(BGMVolume)
            updateBGMVolumeInCharSelect()
        end,
        [20] = function()
            iconCover1[6] = iconCover1[4]*0.1+math.random(-1, 1)*0.01
            iconCover2[6] = iconCover2[4]*0.1+math.random(-1, 1)*0.01
        end,
        [90] = function()
            loadOnce = false
            loadObjectOfLoadScene()
            daboTrig[4] = 1
            initFrameAnimationWith(daboTrig,daboTrigAnim1)
            love.audio.play(startLoadSource)
            currentUpdateBlock = function()
                matchSelectSceneLoadFlashInAnim()
            end
            currentDrawBlock = function()
                loadSceneDraw()
            end
            unloadOrderOfCharSelectScene()
    
            threadOnce = false
            loadOnce = false 
            loadOrder = 0
    
            assetData = nil
        end
    }
    local thisFunction = switch[sceneCounter]
    if thisFunction then 
        thisFunction() 
        subUpdateBlocks[1] = thisFunction
    else
        subUpdateBlocks[1]()
    end
end



function O1CharChangeFunction(playerID)
    local coverArray = {charSelectLeft,charSelectRight}
    local charArray = {charSelectLeftChar,charSelectRightChar}
    local textArray = {charSelectLeftText,charSelectRightText}
    local charPosArray = {SSV["leftCharImagePos"],SSV["rightCharImagePos"]}
    local textPosArray = {SSV["leftCharTextPos"],SSV["rightCharTextPos"]}
    local controlSelectTextArray = {controlSelectText1,controlSelectText2}
    local controlSelectBarArray = {controlSelectBar1,controlSelectBar2}
    local iconCoverArray = {iconCover1,iconCover2}
    local branchToOutLogic = function()
        initLinerAnimationWithOut(coverArray[playerID],charSelectFlashOutAnim)
        initLinerAnimationWithOut(charArray[playerID],charSelectCharMoveOutAnim)
        initLinerAnimationWithOut(textArray[playerID],charSelectTextMoveOutAnim)
        initLinerAnimationWithOut(iconCoverArray[playerID],charSelectFlashOutAnim)
        charArray[playerID][1], 
        charArray[playerID][2], 
        charArray[playerID]["r"]
         = charPosArray[playerID][selectedChar[playerID]][1]-60,
         charPosArray[playerID][selectedChar[playerID]][2],
         charPosArray[playerID][selectedChar[playerID]][3]
        textArray[playerID][1], 
        textArray[playerID][2], 
        textArray[playerID]["r"]
         = textPosArray[playerID][selectedChar[playerID]][1]-226,
         textPosArray[playerID][selectedChar[playerID]][2],
         textPosArray[playerID][selectedChar[playerID]][3]
        coverArray[playerID][4] = 1
        coverArray[playerID]["state"] = "flashOut"
        iconCoverArray[playerID][1], 
        iconCoverArray[playerID][2]
         = SSV["iconCoverPos"][selectedChar[playerID]][1],
         SSV["iconCoverPos"][selectedChar[playerID]][2]
        iconCoverArray[playerID][4] = 1
    end
    local branchToInLogic = function()
        initLinerAnimationWithOut(coverArray[playerID],charSelectFlashInAnim)
        initLinerAnimationWithOut(charArray[playerID],charSelectCharMoveInAnim)
        initLinerAnimationWithOut(textArray[playerID],charSelectTextMoveInAnim)
        initLinerAnimationWithOut(iconCoverArray[playerID],charSelectFlashInAnim)
        charArray[playerID][1], 
        charArray[playerID][2], 
        charArray[playerID]["r"]
         = charPosArray[playerID][selectedChar[playerID]][1],
         charPosArray[playerID][selectedChar[playerID]][2],
         charPosArray[playerID][selectedChar[playerID]][3]
        textArray[playerID][1], 
        textArray[playerID][2], 
        textArray[playerID]["r"]
         = textPosArray[playerID][selectedChar[playerID]][1],
         textPosArray[playerID][selectedChar[playerID]][2],
         textPosArray[playerID][selectedChar[playerID]][3]
        coverArray[playerID][4] = 0
        coverArray[playerID]["state"] = "flashIn"
        iconCoverArray[playerID][1], 
        iconCoverArray[playerID][2]
         = SSV["iconCoverPos"][selectedChar[playerID]][1],
         SSV["iconCoverPos"][selectedChar[playerID]][2]
        iconCoverArray[playerID][4] = 0
    end
    local branchToSelectedLogic = function()
        initLinerAnimationWithOut(coverArray[playerID],charSelectFlashOut75Anim)
        initFrameAnimationWithOut(controlSelectTextArray[playerID],charSelectFlashInAnim)
        initFrameAnimationWithOut(controlSelectBarArray[playerID],charSelectFlashInAnim)
        controlSelectTextArray[playerID][4] = 0
        controlSelectBarArray[playerID][4] = 0
        coverArray[playerID][4] = 1
        coverArray[playerID]["state"] = "selecting"
    end
    local branchToUnselectedLogic = function()
        initLinerAnimationWithOut(coverArray[playerID],charSelectFlashIn75Anim)
        initFrameAnimationWithOut(controlSelectTextArray[playerID],charSelectFlashOutAnim)
        initFrameAnimationWithOut(controlSelectBarArray[playerID],charSelectFlashOutAnim)
        controlSelectTextArray[playerID][4] = 1
        controlSelectBarArray[playerID][4] = 1
        coverArray[playerID][4] = 0.25
        coverArray[playerID]["state"] = "unselecting"
    end
    local branchToLockedLogic = function()
        initLinerAnimationWithOut(coverArray[playerID],charSelectLockingAnim)
        initFrameAnimationWithOut(controlSelectTextArray[playerID],charSelectFlashOutAnim)
        initFrameAnimationWithOut(controlSelectBarArray[playerID],charSelectFlashOutAnim)
        initLinerAnimationWithOut(iconCoverArray[playerID],charSelectLockingAnim1)
        controlSelectTextArray[playerID][4] = 1
        controlSelectBarArray[playerID][4] = 1
        coverArray[playerID][4] = 0.25
        coverArray[playerID]["state"] = "locking"
    end
    local switch = 
    {
        ["flashIn"] = function()
            linerAnimator(coverArray[playerID])
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
            linerAnimator(iconCoverArray[playerID])
            if commandState[playerID]["Left"] == "Pressing" then 
                branchToOutLogic()
                love.audio.play(playerSwitchSource[playerID])
                if selectedChar[playerID] ~= 0 then
                    selectedChar[playerID] = selectedChar[playerID] - 1
                else
                    selectedChar[playerID] = 7 
                end
            elseif commandState[playerID]["Right"] == "Pressing" then 
                branchToOutLogic()
                love.audio.play(playerSwitchSource[playerID])
                if selectedChar[playerID] ~= 7 then
                    selectedChar[playerID] = selectedChar[playerID] + 1
                else
                    selectedChar[playerID] = 0 
                end
            elseif commandState[playerID]["D"] == "Pressing" then
                branchToSelectedLogic()
                love.audio.play(playerSelectSource[playerID])
            elseif charArray[playerID]["LCT"] > charArray[playerID]["LA"]["length"] 
            and textArray[playerID]["LCT"] > textArray[playerID]["LA"]["length"] then
                coverArray[playerID]["state"] = "static"
            end
        end,
        ["static"] = function()
            if commandState[playerID]["Left"] == "Pressing" then 
                branchToOutLogic()
                love.audio.play(playerSwitchSource[playerID])
                if selectedChar[playerID] ~= 0 then
                    selectedChar[playerID] = selectedChar[playerID] - 1
                else
                    selectedChar[playerID] = 7 
                end
            elseif commandState[playerID]["Right"] == "Pressing" then 
                branchToOutLogic()
                love.audio.play(playerSwitchSource[playerID])
                if selectedChar[playerID] ~= 7 then
                    selectedChar[playerID] = selectedChar[playerID] + 1
                else
                    selectedChar[playerID] = 0 
                end
            elseif commandState[playerID]["D"] == "Pressing" then 
                branchToSelectedLogic()
                love.audio.play(playerSelectSource[playerID])
                coverArray[playerID]["state"] = "selecting"
            end
        end,
        ["selecting"] = function()
            linerAnimator(coverArray[playerID])
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
            frameAnimator(controlSelectTextArray[playerID])
            frameAnimator(controlSelectBarArray[playerID])
            if coverArray[playerID]["LCT"] > coverArray[playerID]["LA"]["length"] 
            and controlSelectTextArray[playerID]["FCT"] > controlSelectTextArray[playerID]["FA"]["length"]
            and controlSelectBarArray[playerID]["FCT"] > controlSelectBarArray[playerID]["FA"]["length"] then
                coverArray[playerID]["state"] = "selected"
            end
        end,
        ["selected"] = function()
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
            if commandState[playerID]["C"] == "Pressing" then 
                branchToUnselectedLogic()
                love.audio.play(playerUnselectSource[playerID])
                coverArray[playerID]["state"] = "unselecting"
            elseif commandState[playerID]["D"] == "Pressing" then 
                branchToLockedLogic()
                love.audio.play(playerLockSource[playerID])
                coverArray[playerID]["state"] = "locking"
            elseif commandState[playerID]["Up"] == "Pressing" then 
                love.audio.play(playerSwitchSource[playerID])
                if selectedControlMode[playerID] == 0 then
                    initFrameAnimationWithOut(controlSelectBarArray[playerID],barMoveUpTwitchAnim)
                else
                    initFrameAnimationWithOut(controlSelectBarArray[playerID],barMoveUpAnim)
                    selectedControlMode[playerID] = 0
                end
                coverArray[playerID]["state"] = "selectedAnimating"
            elseif commandState[playerID]["Down"] == "Pressing" then 
                love.audio.play(playerSwitchSource[playerID])
                if selectedControlMode[playerID] == 0 then
                    initFrameAnimationWithOut(controlSelectBarArray[playerID],barMoveDownAnim)
                    selectedControlMode[playerID] = 1
                else
                    initFrameAnimationWithOut(controlSelectBarArray[playerID],barMoveDownTwitchAnim)
                end
                coverArray[playerID]["state"] = "selectedAnimating"
            end
        end,
        ["selectedAnimating"] = function()
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
            frameAnimator(controlSelectBarArray[playerID])
            if controlSelectBarArray[playerID]["FCT"] > controlSelectBarArray[playerID]["FA"]["length"] then
                coverArray[playerID]["state"] = "selected"
            end
        end,
        ["unselecting"] = function()
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
            linerAnimator(coverArray[playerID])
            frameAnimator(controlSelectTextArray[playerID])
            frameAnimator(controlSelectBarArray[playerID])
            if coverArray[playerID]["LCT"] > coverArray[playerID]["LA"]["length"] 
            and controlSelectTextArray[playerID]["FCT"] > controlSelectTextArray[playerID]["FA"]["length"]
            and controlSelectBarArray[playerID]["FCT"] > controlSelectBarArray[playerID]["FA"]["length"] then
                coverArray[playerID]["state"] = "static"
            end
        end,
        ["flashOut"] = function()
            linerAnimator(coverArray[playerID])
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
            linerAnimator(iconCoverArray[playerID])
            if commandState[playerID]["Left"] == "Pressing" then 
                coverArray[playerID][5] = selectedChar[playerID]
                iconCoverArray[playerID][5] = selectedChar[playerID]
                branchToOutLogic()
                love.audio.play(playerSwitchSource[playerID])
            elseif commandState[playerID]["right"] == "Pressing" then 
                coverArray[playerID][5] = selectedChar[playerID]
                iconCoverArray[playerID][5] = selectedChar[playerID]
                branchToOutLogic()
                love.audio.play(playerSwitchSource[playerID])
            elseif charArray[playerID]["LCT"] > charArray[playerID]["LA"]["length"] 
            and textArray[playerID]["LCT"] > textArray[playerID]["LA"]["length"] then
                coverArray[playerID][5] = selectedChar[playerID]
                iconCoverArray[playerID][5] = selectedChar[playerID]
                branchToInLogic()
            end
        end,
        ["locking"] = function()
            linerAnimator(coverArray[playerID])
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
            linerAnimator(iconCoverArray[playerID])
            frameAnimator(controlSelectTextArray[playerID])
            frameAnimator(controlSelectBarArray[playerID])
            if coverArray[playerID]["LCT"] > coverArray[playerID]["LA"]["length"]
            and iconCoverArray[playerID]["LCT"] > iconCoverArray[playerID]["LA"]["length"]
            and controlSelectTextArray[playerID]["FCT"] > controlSelectTextArray[playerID]["FA"]["length"]
            and controlSelectBarArray[playerID]["FCT"] > controlSelectBarArray[playerID]["FA"]["length"] then
                coverArray[playerID]["state"] = "locked"
            end
        end,
        ["locked"] = function()
            linerAnimator(charArray[playerID])
            linerAnimator(textArray[playerID])
        end
    }
    local thisFunction = switch[coverArray[playerID]["state"]]
    if thisFunction then thisFunction() end
end