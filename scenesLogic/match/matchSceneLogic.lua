function matchSelectSceneLoadFlashInAnim()
    loadAssetFunction("loadThread/charSelectSceneThread.lua",loadOrderOfCharSelectScene,2)
    frameAnimator(daboTrig)
    if daboTrig["FCT"] > daboTrig["FA"]["length"] then
        love.audio.play(loadingSource)
        currentUpdateBlock = function()
            matchSelectSceneLoadAnim()
        end 
        initFrameAnimationWithOut(insMark,insMarkAnim1)
        loadText[4] = 1
        insMark[4] = 1
    end
end
function matchSelectSceneLoadAnim()
    loadAssetFunction("loadThread/charSelectSceneThread.lua",loadOrderOfCharSelectScene,2)
    frameAnimator(insMark)
    localCounter(100)
    if counter > 100 and loadOnce == true then 
        love.audio.stop()
        love.audio.play(endLoadingSource)
        counter = nil
        currentUpdateBlock = function()
            matchSelectSceneLoadFlashOutAnim()
        end
        insMark[4] = 0
        initFrameAnimationWith(loadText,loadTextAnim1)
        initFrameAnimationWith(daboTrig,daboTrigAnim2)
    end
end
function matchSelectSceneLoadFlashOutAnim()
    frameAnimator(loadText)
    frameAnimator(daboTrig)
    if loadText["FCT"] > loadText["FA"]["length"] 
    and daboTrig["FCT"] > daboTrig["FA"]["length"] then 
        love.audio.stop()
        loadOnce = false
        currentUpdateBlock = function() 

        end
        currentDrawBlock = function() 

        end

        threadOnce = false
        loadOnce = false 
        unloadOnce = false
        loadOrder = 0

        assetData = nil
    end
end