function loadObjectOfDicAndLogoScene()
    dicObject = {75,385,1,0,0}
    dicObject["FCT"] = 0
    dicObject["LCT"] = 0
    dicObject["linerDelta"] = {0,0,0,0,0}
    KTHObject = {620,255,1,0,0}
    KTHObject["FCT"] = 0
    KTHObject["LCT"] = 0
    KTHObject["linerDelta"] = {0,0,0,0,0}
    L2DObject = {620,255,1,0,0}
    L2DObject["FCT"] = 0
    L2DObject["LCT"] = 0
    L2DObject["linerDelta"] = {0,0,0,0,0}
end
function loadAnimOfDicAndLogoScene()
    flashLinerAnim1 = {}
    flashLinerAnim1[0] = {0,0,0,0.25,0}
    flashLinerAnim1["length"] = 3
    flashLinerAnim1["loopType"] = "const"

    flashLinerAnim2 = {}
    flashLinerAnim2[0] = {0,0,0,-0.25,0}
    flashLinerAnim2["length"] = 3
    flashLinerAnim2["loopType"] = "const"

    dicImage = love.graphics.newImage("asset/UI/DicAndLogoScene/DisclaimerText.png")
    KTHImage = love.graphics.newImage("asset/UI/DicAndLogoScene/KTH.png")
    L2DImage = love.graphics.newImage("asset/UI/DicAndLogoScene/L2D.png")
end
function unloadObjectOfDicAndLogoScene()
    dicObject = nil
    KTHObject = nil
    L2DObject = nil
end
function unloadAnimOfDicAndLogoScene()
    flashAnim1 = nil
    flashAnim2 = nil
    dicImage = nil
    KTHImage = nil
    L2DImage = nil
end