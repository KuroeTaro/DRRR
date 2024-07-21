function matchSelectSceneLoadFlashInAnim()
    loadAssetFunctionArray()
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
    loadAssetFunctionArray()
    frameAnimator(insMark)
    localCounter(100)
    if counter > 100 
    and loadOnceArray[1] == true 
    and loadOnceArray[2] == true then 
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
            match_scene_UI_Draw()
        end

        threadOnce = false
        loadOnce = false 
        loadOrder = 0

        assetData = nil

        -- UI 待机和移动 收击 拳脚 必杀 超必杀
        threadArray = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}
        threadOnceArray = {false,false,false,false,false,false,false,false,false,false,false,false}
        loadOnceArray = {false,false,false,false,false,false,false,false,false,false,false,false}
        loadOrderArray = {0,0,0,0,0,0,0,0,0,0,0,0}
        loadFunctionArray = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}
        OrderSizeArray = {0,0,0,0,0,0,0,0,0,0,0,0}
        assetDataArray = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}
        threadAmount = 1

    end
end