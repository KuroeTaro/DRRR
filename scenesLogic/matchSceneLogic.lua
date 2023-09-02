function matchSelectSceneLoadFlashInAnim()
    loadAssetFunction("loadThread/charSelectSceneThread.lua",loadOrderOfCharSelectScene,2)
    frameAnimator(daboTrig)
    if daboTrig["FCT"] > daboTrig["FA"]["length"] then
        love.audio.stop()
        love.audio.play(loadingSource)
        currentUpdateBlock = function()
            charSelectSceneLoadAnim()
        end 
        initFrameAnimationWithOut(insMark,insMarkAnim1)
        loadText[4] = 1
        insMark[4] = 1
    end
end