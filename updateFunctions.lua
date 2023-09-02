function firstSceneLoadPreTimer()
    localCounter(20)
    if counter > 20 then 
        loadObjectOfLoadScene()
        loadAnimOfLoadScene()
        counter = nil
        loadOnce = false
        currentUpdateBlock = function()
            firstSceneLoadFlashInAnim()
        end
        currentDrawBlock = function()
            loadSceneDraw()
        end
        daboTrig[4] = 1
        initFrameAnimationWith(daboTrig,daboTrigAnim1)
        love.audio.play(startLoadSource)
    end
end
function firstSceneLoadFlashInAnim()
    frameAnimator(daboTrig)
    if daboTrig["FCT"] > daboTrig["FA"]["length"] then
        love.audio.stop()
        love.audio.play(loadingSource)
        loadObjectOfDicAndLogoScene()
        loadAnimOfDicAndLogoScene()
        currentUpdateBlock = function()
            firstSceneLoadAnim()
        end 
        loadText[4] = 1
        insMark[4] = 1
        initFrameAnimationWithOut(insMark,insMarkAnim1)
    end
end 
function firstSceneLoadAnim()
    frameAnimator(insMark)
    localCounter(50)
    if counter > 50 then 
        love.audio.stop()
        love.audio.play(endLoadingSource)
        counter = nil
        currentUpdateBlock = function()
            firstSceneLoadFlashOutAnim()
        end
        insMark[4] = 0
        initFrameAnimationWith(loadText,loadTextAnim1)
        initFrameAnimationWith(daboTrig,daboTrigAnim2)
    end
end
function firstSceneLoadFlashOutAnim()
    frameAnimator(loadText)
    frameAnimator(daboTrig)
    if loadText["FCT"] > loadText["FA"]["length"] 
    and daboTrig["FCT"] > daboTrig["FA"]["length"] then 
        love.audio.stop()
        loadOnce = false
        currentUpdateBlock = function() 
            dicAndLogoPreTimer()
        end
        currentDrawBlock = function() end
        loadObjectOfLoadScene()
    end
end