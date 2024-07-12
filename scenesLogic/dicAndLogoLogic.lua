function dicAndLogoPreTimer()
    localCounter(20)
    if counter > 20 then 
        counter = nil
        currentUpdateBlock = function()
            dicFlashIn()
        end
        currentDrawBlock = function()
            dicAndLogoSceneDraw()
        end
        initLinerAnimationWith(dicObject,flashLinerAnim1)
    end
end
function dicFlashIn()
    linerAnimator(dicObject)
    if dicObject["LCT"] > dicObject["LA"]["length"] then 
        currentUpdateBlock = function() 
            dicKeepTimer()
        end
    end
end 
function dicKeepTimer()
    localCounter(120)
    if counter > 120 then 
        counter = nil
        currentUpdateBlock = function()
            dicFlashOut()
        end
        initLinerAnimationWith(dicObject,flashLinerAnim2)
    end
end
function dicFlashOut()
    linerAnimator(dicObject)
    if dicObject["LCT"] > dicObject["LA"]["length"] then 
        currentUpdateBlock = function() 
            logoFlashIn()
        end
        initLinerAnimationWith(KTHObject,flashLinerAnim1)
    end
end
function logoFlashIn()
    linerAnimator(KTHObject)
    if KTHObject["LCT"] > KTHObject["LA"]["length"] then 
        currentUpdateBlock = function() 
            logoKeepTimer()
        end
    elseif commandState[1]["D"] == "Pressing" then 
        KTHObject[4] = 0 
        L2DObject[4] = 1
        currentUpdateBlock = function() 
            L2DKeepTimer()
        end
    end
end
function logoKeepTimer()
    localCounter(120)
    if counter > 120 then 
        counter = nil
        initLinerAnimationWith(KTHObject,flashLinerAnim2)
        currentUpdateBlock = function()
            logoFlashOut()
        end
    elseif commandState[1]["D"] == "Pressing" then 
        KTHObject[4] = 0 
        L2DObject[4] = 1
        currentUpdateBlock = function() 
            L2DKeepTimer()
        end
    end
end
function logoFlashOut()
    linerAnimator(KTHObject)
    if KTHObject["LCT"] > KTHObject["LA"]["length"] then 
        initLinerAnimationWith(L2DObject,flashLinerAnim1)
        currentUpdateBlock = function() 
            L2DFlashIn()
        end
    elseif commandState[1]["D"] == "Pressing" then 
        KTHObject[4] = 0 
        L2DObject[4] = 1
        currentUpdateBlock = function() 
            L2DKeepTimer()
        end
    end
end
function L2DFlashIn()
    linerAnimator(L2DObject)
    if L2DObject["LCT"] > L2DObject["LA"]["length"] then 
        currentUpdateBlock = function() 
            L2DKeepTimer()
        end
    elseif commandState[1]["D"] == "Pressing" then 
        L2DObject[4] = 1
        currentUpdateBlock = function() 
            L2DFlashOut()
        end
    end
end
function L2DKeepTimer()
    localCounter(120)
    if counter > 120 then 
        counter = nil
        initLinerAnimationWith(L2DObject,flashLinerAnim2)
        currentUpdateBlock = function()
            L2DFlashOut()
        end
    elseif commandState[1]["D"] == "Pressing" then 
        L2DObject[4] = 1
        initLinerAnimationWith(L2DObject,flashLinerAnim2)
        currentUpdateBlock = function() 
            L2DFlashOut()
        end
    end
end
function L2DFlashOut()
    linerAnimator(L2DObject)
    if L2DObject["LCT"] > L2DObject["LA"]["length"] then 
        daboTrig[4] = 1
        initFrameAnimationWith(daboTrig,daboTrigAnim1)
        love.audio.play(startLoadSource)
        unloadObjectOfDicAndLogoScene()
        unloadAnimOfDicAndLogoScene()
        currentUpdateBlock = function() 
            startSceneLoadFlashInAnim()
        end
        currentDrawBlock = function()
            loadSceneDraw()
        end
    end
end