require("/scenesLogic/charSelect/O1CharChangeFunction")
require("/scenesLogic/charSelect/timerLogic")

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

        initLinerAnimationWithOut(solidColor,solid_flash_in_liner_anim_1)
        initFrameAnimationWithOut(firstRing,firstRingFlashInFrameAnim)
        initFrameAnimationWithOut(movieCover,movieCoverFrameAnim)

        love.audio.play(psychedelicParadeReEditSource)
    end
end
function charSelectSceneFirstAnim()
    sceneCounter =  sceneCounter + 1
    frameAnimator(movieCover)
    if movieCover[5] >= 10 then 
        movieCover[5] = 0
    end
    local thisFunction = firstAnimSwtich[sceneCounter]
    if thisFunction then 
        thisFunction() 
        subUpdateBlocks[1] = thisFunction
    else
        subUpdateBlocks[1]()
    end
end
function charSelectInterectFunction()
    sceneCounter =  sceneCounter + 1
    frameAnimator(movieCover)
    if movieCover[5] >= 10 then 
        movieCover[5] = 0
    end
    local thisFunction = InterectCharSelectSwtich[sceneCounter]
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
    frameAnimator(movieCover)
    if movieCover[5] >= 10 then 
        movieCover[5] = 0
    end
    sceneCounter = sceneCounter + 1
    local thisFunction = charSelectSceneFlashOutSwtich[sceneCounter]
    if thisFunction then 
        thisFunction() 
        subUpdateBlocks[1] = thisFunction
    else
        subUpdateBlocks[1]()
    end
end