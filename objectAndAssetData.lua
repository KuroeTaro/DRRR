-- x值 y值 缩放 不透明度 帧id
function loadObjectOfLoadScene()
    loadText = {1350,800,1,0,0}
    loadText["FCT"] = 0
    loadText["LCT"] = 0
    loadText["linerDelta"] = {0,0,0,0,0}
    insMark = {1460,798,1,0,0}
    insMark["FCT"] = 0
    insMark["LCT"] = 0
    insMark["linerDelta"] = {0,0,0,0,0}
    daboTrig = {1280,800,1,0,0}
    daboTrig["FCT"] = 0
    daboTrig["LCT"] = 0
    daboTrig["linerDelta"] = {0,0,0,0,0}
end
function loadAnimOfLoadScene()
    loadTextAnim1 = {}
    loadTextAnim1[2] = {-30,0,0,0,0}
    loadTextAnim1[4] = {40,0,0,0,0}
    loadTextAnim1[5] = {0,0,0,-1,0}
    loadTextAnim1["length"] = 5
    loadTextAnim1["loopType"] = "const"

    insMarkAnim1 = {}
    insMarkAnim1[10] = {0,0,0,-1,0}
    insMarkAnim1[20] = {0,0,0,1,0}
    insMarkAnim1["length"] = 20
    insMarkAnim1["loopType"] = "loop"

    daboTrigAnim1 = {}
    daboTrigAnim1[2] = {-30,0,0,0,0}
    daboTrigAnim1[4] = {50,0,0,0,0}
    daboTrigAnim1["length"] = 4
    daboTrigAnim1["loopType"] = "const"

    daboTrigAnim2 = {}
    daboTrigAnim2[2] = {-20,0,0,0,0}
    daboTrigAnim2[4] = {25,0,0,0,0}
    daboTrigAnim2[5] = {0,0,0,-1,0}
    daboTrigAnim2["length"] = 5
    daboTrigAnim2["loopType"] = "const"

    loadTextImage = love.graphics.newImage("asset/UI/LoadScene/LoadingText.png")
    insMarkImage = love.graphics.newImage("asset/UI/LoadScene/InsMark.png")
    daboTrigimage = love.graphics.newImage("asset/UI/LoadScene/DaboTrig.png")
    numberImage = {}

    for i = 0,9 do
        numberImage[i] = love.graphics.newImage("asset/UI/AssetGlobal/number/"..i..".png")
    end

    startLoadSource = love.audio.newSource("asset/UI/LoadScene/startLoad.mp3","static")
    loadingSource = love.audio.newSource("asset/UI/LoadScene/loading.mp3","static")
    endLoadingSource = love.audio.newSource("asset/UI/LoadScene/endLoad.mp3","static")

    UISFXSource = love.audio.newSource("asset/UI/AssetGlobal/click.mp3","static")
    toSubSource = love.audio.newSource("asset/UI/AssetGlobal/toSub.mp3","static")
    toMainSource = love.audio.newSource("asset/UI/AssetGlobal/toMain.mp3","static")

    startLoadSource:setVolume(UISFXVolume[0]/10)
    loadingSource:setVolume(UISFXVolume[0]/10)
    endLoadingSource:setVolume(UISFXVolume[0]/10)

    UISFXSource:setVolume(UISFXVolume[0]/10)
    toSubSource:setVolume(UISFXVolume[0]/10)
    toMainSource:setVolume(UISFXVolume[0]/10)
end
function unloadObjectOfLoadScene()
    loadText = nil
    insMark = nil
    daboTrig = nil
end
function unloadAnimOfLoadScene()
    loadTextAnim1 = nil
    loadTextImage = nil

    insMarkAnim1 = nil
    insMarkImage = nil

    daboTrigAnim1 = nil
    daboTrigAnim2 = nil
    daboTrigimage = nil

    startLoadSource = nil
    loadingSource = nil
    endLoadingSource = nil
end