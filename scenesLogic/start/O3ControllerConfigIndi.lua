function O3ControllerConfigIndiOff(BlockID)
    if commandState[BlockID]["D"] == "Pressing" or commandState[BlockID]["D"] == "Holding" then 
        initLinerAnimationWith(indiMark[BlockID],flashHalfLinerAnim1)
        subUpdateBlocks[BlockID] = function()
            O3ControllerConfigIndiFlashIn(BlockID)
        end
    end
end
function O3ControllerConfigIndiOn(BlockID)
    if commandState[BlockID]["D"] == "Releasing" or commandState[BlockID]["D"] == "Released" then 
        initLinerAnimationWith(indiMark[BlockID],flashHalfLinerAnim2)
        subUpdateBlocks[BlockID] = function()
            O3ControllerConfigIndiFlashOut(BlockID)
        end
    end
end
function O3ControllerConfigIndiFlashIn(BlockID)
    linerAnimator(indiMark[BlockID])
    if indiMark[BlockID]["LCT"] > indiMark[BlockID]["LA"]["length"] then 
        subUpdateBlocks[BlockID] = function()
            O3ControllerConfigIndiOn(BlockID)
        end
    end
end
function O3ControllerConfigIndiFlashOut(BlockID)
    linerAnimator(indiMark[BlockID])
    if indiMark[BlockID]["LCT"] > indiMark[BlockID]["LA"]["length"] then 
        subUpdateBlocks[BlockID] = function()
            O3ControllerConfigIndiOff(BlockID)
        end
    end
end