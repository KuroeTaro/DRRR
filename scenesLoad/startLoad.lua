function loadObjectOfStartScene()

    sceneCounter = 0
    subUpdateBlocks = {}

    SSV = {}

    -- state data
    SSV["optionTextPositions"] = {700,657,728,723,684}
    SSV["consoleInsMarkPositions"] = {1065,795,815,505,565,930,1115,1110}
    SSV["daboTrigPositionInRecord"] = {360,435}
    SSV["daboTrigPositionInConfig"] = {360,385,410,465}

    -- state condiction indicator
    SSV["currentOptionID"] = 0
    SSV["currentSubSceneDaboTrigID"] = 0
    SSV["currentBarMarkID"] = 0

    SSV["currentConsoleText1ID"] = 0
    SSV["currentConsoleText2ID"] = 0

    SSV["subSceneControlIndi1State"] = 0
    SSV["subSceneControlIndi2State"] = 0

    -- config main menu
    bgLoop = {0,0,1,0,0}
    bgLoop["FCT"] = 0
    bgLoop["LCT"] = 0
    bgLoop["linerDelta"] = {0,0,0,0,0}

    consoleDaboTrig = {75,50,1,0,0}
    consoleDaboTrig["FCT"] = 0
    consoleDaboTrig["LCT"] = 0
    consoleDaboTrig["linerDelta"] = {0,0,0,0,0}

    consoleText1 = {130,50,1,0,0}
    consoleText1["FCT"] = 0
    consoleText1["LCT"] = 0
    consoleText1["linerDelta"] = {0,0,0,0,0}
    consoleText2 = {130,75,1,0,0}
    consoleText2["FCT"] = 0
    consoleText2["LCT"] = 0
    consoleText2["linerDelta"] = {0,0,0,0,0}

    consoleInsMark = {1065,74,1,0,0}
    consoleInsMark["FCT"] = 0 
    consoleInsMark["LCT"] = 0
    consoleInsMark["linerDelta"] = {0,0,0,0,0}

    drrr = {325,250,1,0,0}
    drrr["FCT"] = 0
    drrr["LCT"] = 0
    drrr["linerDelta"] = {0,0,0,0,0}

    breathDaboTrig = {510,695,1,0,0}
    breathDaboTrig["FCT"] = 0
    breathDaboTrig["LCT"] = 0
    breathDaboTrig["linerDelta"] = {0,0,0,0,0}

    optionText = {700,700,1,0,0}
    optionText["FCT"] = 0
    optionText["LCT"] = 0
    optionText["linerDelta"] = {0,0,0,0,0}

    -- sub menu general
    shutter = {0,0,1,0,0}
    shutter["FCT"] = 0
    shutter["LCT"] = 0
    shutter["linerDelta"] = {0,0,0,0,0}

    subStateDaboTrig = {500,360,1,0,0}
    subStateDaboTrig["FCT"] = 0
    subStateDaboTrig["LCT"] = 0
    subStateDaboTrig["linerDelta"] = {0,0,0,0,0}

    -- sub menu record
    recordTotalTime = {560,360,1,0,0}
    recordTotalTime["FCT"] = 0
    recordTotalTime["LCT"] = 0
    recordTotalTime["linerDelta"] = {0,0,0,0,0}

    timeNumber1 = {644,385,1,0,0}
    timeNumber1["FCT"] = 0
    timeNumber1["LCT"] = 0
    timeNumber1["linerDelta"] = {0,0,0,0,0}
    timeNumber2 = {631,385,1,0,0}
    timeNumber2["FCT"] = 0
    timeNumber2["LCT"] = 0
    timeNumber2["linerDelta"] = {0,0,0,0,0}
    timeNumber3 = {608,385,1,0,0}
    timeNumber3["FCT"] = 0
    timeNumber3["LCT"] = 0
    timeNumber3["linerDelta"] = {0,0,0,0,0}
    timeNumber4 = {595,385,1,0,0}
    timeNumber4["FCT"] = 0
    timeNumber4["LCT"] = 0
    timeNumber4["linerDelta"] = {0,0,0,0,0}
    timeNumber5 = {573,385,1,0,0}
    timeNumber5["FCT"] = 0
    timeNumber5["LCT"] = 0
    timeNumber5["linerDelta"] = {0,0,0,0,0}
    timeNumber6 = {560,385,1,0,0}
    timeNumber6["FCT"] = 0
    timeNumber6["LCT"] = 0
    timeNumber6["linerDelta"] = {0,0,0,0,0}
    
    -- sub menu config
    configMenu = {530,360,1,0,0}
    configMenu["FCT"] = 0
    configMenu["LCT"] = 0
    configMenu["linerDelta"] = {0,0,0,0,0}

    audioConfigText = {870,365,1,0,0}
    audioConfigText["FCT"] = 0
    audioConfigText["LCT"] = 0
    audioConfigText["linerDelta"] = {0,0,0,0,0}

    bgmRetangle = {810,365,1,0,0,230,15}
    bgmRetangle["linerDelta"] = {0,0,0,0,0}
    sfxRetangle = {810,391,1,0,0,230,15}
    sfxRetangle["linerDelta"] = {0,0,0,0,0}

    bgmBarTlayer = {925,365,1,0,0}
    bgmBarTlayer["FCT"] = 0
    bgmBarTlayer["LCT"] = 0
    bgmBarTlayer["linerDelta"] = {0,0,0,0,0}

    bgmBarBlayer = {925,365,1,0,0}
    bgmBarBlayer["FCT"] = 0
    bgmBarBlayer["LCT"] = 0
    bgmBarBlayer["linerDelta"] = {0,0,0,0,0}

    sfxBarTlayer = {925,391,1,0,0}
    sfxBarTlayer["FCT"] = 0
    sfxBarTlayer["LCT"] = 0
    sfxBarTlayer["linerDelta"] = {0,0,0,0,0}
    
    sfxBarBlayer = {925,391,1,0,0}
    sfxBarBlayer["FCT"] = 0
    sfxBarBlayer["LCT"] = 0
    sfxBarBlayer["linerDelta"] = {0,0,0,0,0}

    audioBarMark = {1170,365,1,0,0}
    audioBarMark["FCT"] = 0
    audioBarMark["LCT"] = 0
    audioBarMark["linerDelta"] = {0,0,0,0,0}

    controllerIndiText = {905,390,1,0,0}
    controllerIndiText["FCT"] = 0
    controllerIndiText["LCT"] = 0
    controllerIndiText["linerDelta"] = {0,0,0,0,0}

    indiMark = {}

    indiMark[1] = {1255,440,1,0,0}
    indiMark[1]["FCT"] = 0
    indiMark[1]["LCT"] = 0
    indiMark[1]["linerDelta"] = {0,0,0,0,0}

    indiMark[2] = {1255,465,1,0,0}
    indiMark[2]["FCT"] = 0
    indiMark[2]["LCT"] = 0
    indiMark[2]["linerDelta"] = {0,0,0,0,0}

    selectResText = {905,420,1,0,0}
    selectResText["FCT"] = 0
    selectResText["LCT"] = 0
    selectResText["linerDelta"] = {0,0,0,0,0}

    resText = {945,470,1,0,0}
    resText["FCT"] = 0
    resText["LCT"] = 0
    resText["linerDelta"] = {0,0,0,0,0}

    resBarMark = {1090,470,1,0,0}
    resBarMark["FCT"] = 0
    resBarMark["LCT"] = 0
    resBarMark["linerDelta"] = {0,0,0,0,0}
end
function loadAnimOfStartScene()
    flashLinerAnim1 = {}
    flashLinerAnim1[0] = {0,0,0,0.25,0}
    flashLinerAnim1["length"] = 3
    flashLinerAnim1["loopType"] = "const"

    flashLinerAnim2 = {}
    flashLinerAnim2[0] = {0,0,0,-0.25,0}
    flashLinerAnim2["length"] = 3
    flashLinerAnim2["loopType"] = "const"

    flashLinerAnim3 = {}
    flashLinerAnim3[0] = {0,0,0,-0.25,0}
    flashLinerAnim3[4] = {0,0,0,0.25,0}
    flashLinerAnim3["length"] = 7
    flashLinerAnim3["loopType"] = "const"

    flashHalfLinerAnim1 = {}
    flashHalfLinerAnim1[0] = {0,0,0,0.125,0}
    flashHalfLinerAnim1["length"] = 3
    flashHalfLinerAnim1["loopType"] = "const"

    flashHalfLinerAnim2 = {}
    flashHalfLinerAnim2[0] = {0,0,0,-0.125,0}
    flashHalfLinerAnim2["length"] = 3
    flashHalfLinerAnim2["loopType"] = "const"

    insMarkFirstFlashFrameAnim = {}
    insMarkFirstFlashFrameAnim[29] = {0,0,0,-1,0}
    insMarkFirstFlashFrameAnim[59] = {0,0,0,1,0}
    insMarkFirstFlashFrameAnim["length"] = 59
    insMarkFirstFlashFrameAnim["loopType"] = "loop"

    breathLinerAnim1 = {}
    breathLinerAnim1[0] = {0,0,0,0.0025,0}
    breathLinerAnim1[15] = {0,0,0,0.005,0}
    breathLinerAnim1[30] = {0,0,0,0.0075,0}
    breathLinerAnim1[45] = {0,0,0,0.01,0}
    breathLinerAnim1[60] = {0,0,0,0.01,0}
    breathLinerAnim1[75] = {0,0,0,0.0075,0}
    breathLinerAnim1[90] = {0,0,0,0.005,0}
    breathLinerAnim1[105] = {0,0,0,0.0025,0}
    breathLinerAnim1[120] = {0,0,0,-0.0025,0}
    breathLinerAnim1[135] = {0,0,0,-0.005,0}
    breathLinerAnim1[150] = {0,0,0,-0.0075,0}
    breathLinerAnim1[165] = {0,0,0,-0.01,0}
    breathLinerAnim1[180] = {0,0,0,-0.01,0}
    breathLinerAnim1[195] = {0,0,0,-0.0075,0}
    breathLinerAnim1[210] = {0,0,0,-0.005,0}
    breathLinerAnim1[225] = {0,0,0,-0.0025,0}
    breathLinerAnim1["length"] = 239
    breathLinerAnim1["loopType"] = "loop"

    daboTrigTwitchFrameAnim = {}
    daboTrigTwitchFrameAnim[0] = {-5,0,0,0,0}
    daboTrigTwitchFrameAnim[2] = {7,0,0,0,0}
    daboTrigTwitchFrameAnim[4] = {-2,0,0,0,0}
    daboTrigTwitchFrameAnim["length"] = 4
    daboTrigTwitchFrameAnim["loopType"] = "const"

    resLinerTwitchLinerAnim1 = {}
    resLinerTwitchLinerAnim1[0] = {-5/2,0,0,0,0}
    resLinerTwitchLinerAnim1[2] = {7/2,0,0,0,0}
    resLinerTwitchLinerAnim1[4] = {-2/2,0,0,0,0}
    resLinerTwitchLinerAnim1["length"] = 5
    resLinerTwitchLinerAnim1["loopType"] = "const"

    resLinerTwitchLinerAnim2 = {}
    resLinerTwitchLinerAnim2[0] = {5/2,0,0,0,0}
    resLinerTwitchLinerAnim2[2] = {-7/2,0,0,0,0}
    resLinerTwitchLinerAnim2[4] = {2/2,0,0,0,0}
    resLinerTwitchLinerAnim2["length"] = 5
    resLinerTwitchLinerAnim2["loopType"] = "const"
    
    resLinerTwitchLinerAnim3 = {}
    resLinerTwitchLinerAnim3[0] = {0,0,0,-0.1,0}
    resLinerTwitchLinerAnim3[5] = {0,0,0,0.1,0}
    resLinerTwitchLinerAnim3["length"] = 9
    resLinerTwitchLinerAnim3["loopType"] = "const"

    horizMotionLinerAnim1 = {}
    horizMotionLinerAnim1[0] = {-15/2,0,0,0,0}
    horizMotionLinerAnim1[2] = {-5/2,0,0,0,0}
    horizMotionLinerAnim1[4] = {-2/2,0,0,0,0}
    horizMotionLinerAnim1[6] = {-1/2,0,0,0,0}
    horizMotionLinerAnim1["length"] = 7
    horizMotionLinerAnim1["loopType"] = "const"

    horizMotionLinerAnim2 = {}
    horizMotionLinerAnim2[0] = {15/2,0,0,0,0}
    horizMotionLinerAnim2[2] = {5/2,0,0,0,0}
    horizMotionLinerAnim2[4] = {2/2,0,0,0,0}
    horizMotionLinerAnim2[6] = {1/2,0,0,0,0}
    horizMotionLinerAnim2["length"] = 7
    horizMotionLinerAnim2["loopType"] = "const"

    markHorizTwitchLinerAnim1 = {}
    markHorizTwitchLinerAnim1[0] = {-5/2,0,0,0,0}
    markHorizTwitchLinerAnim1[2] = {3/2,0,0,0,0}
    markHorizTwitchLinerAnim1[4] = {1/2,0,0,0,0}
    markHorizTwitchLinerAnim1["length"] = 5
    markHorizTwitchLinerAnim1["loopType"] = "const"

    markHorizTwitchLinerAnim2 = {}
    markHorizTwitchLinerAnim2[0] = {5/2,0,0,0,0}
    markHorizTwitchLinerAnim2[2] = {-3/2,0,0,0,0}
    markHorizTwitchLinerAnim2[4] = {-1/2,0,0,0,0}
    markHorizTwitchLinerAnim2["length"] = 5
    markHorizTwitchLinerAnim2["loopType"] = "const"

    audioMarkVertLinerAnim1 = {}
    audioMarkVertLinerAnim1[0] = {0,16/2,0,0,0}
    audioMarkVertLinerAnim1[2] = {0,6/2,0,0,0}
    audioMarkVertLinerAnim1[4] = {0,3/2,0,0,0}
    audioMarkVertLinerAnim1[6] = {0,1/2,0,0,0}
    audioMarkVertLinerAnim1["length"] = 7
    audioMarkVertLinerAnim1["loopType"] = "const"

    audioMarkVertLinerAnim2 = {}
    audioMarkVertLinerAnim2[0] = {0,-16/2,0,0,0}
    audioMarkVertLinerAnim2[2] = {0,-6/2,0,0,0}
    audioMarkVertLinerAnim2[4] = {0,-3/2,0,0,0}
    audioMarkVertLinerAnim2[6] = {0,-1/2,0,0,0}
    audioMarkVertLinerAnim2["length"] = 7
    audioMarkVertLinerAnim2["loopType"] = "const"

    optionTwitchFrameAnim = {}
    optionTwitchFrameAnim[0] = {-20,0,0,0,0}
    optionTwitchFrameAnim[2] = {40,0,0,0,0}
    optionTwitchFrameAnim[4] = {-20,0,0,0,0}
    optionTwitchFrameAnim["length"] = 4
    optionTwitchFrameAnim["loopType"] = "const"

    flashDrrrLinerAnim = {}
    flashDrrrLinerAnim[0] = {0,0,0,0.003,0}
    flashDrrrLinerAnim[15] = {0,0,0,0.0075,0}
    flashDrrrLinerAnim[30] = {0,0,0,0.01,0}
    flashDrrrLinerAnim[45] = {0,0,0,0.012,0}
    flashDrrrLinerAnim[60] = {0,0,0,0.012,0}
    flashDrrrLinerAnim[75] = {0,0,0,0.01,0}
    flashDrrrLinerAnim[90] = {0,0,0,0.0075,0}
    flashDrrrLinerAnim[105] = {0,0,0,0.003,0}
    flashDrrrLinerAnim["length"] = 119
    flashDrrrLinerAnim["loopType"] = "const"

    bgmFlashoutAnim = {}
    bgmFlashoutAnim[0] = -1/20
    bgmFlashoutAnim["length"] = 19
    bgmFlashoutAnim["loopType"] = "const"

    BGLoopFrameAnim = {}
    BGLoopFrameAnim[0] = {0,0,0,0,1}
    BGLoopFrameAnim["length"] = 5
    BGLoopFrameAnim["loopType"] = "loop"
end
function loadAudioSourceOfStartScene()
    sceneOutSource = love.audio.newSource("asset/UI/StartScene/sceneOut.mp3","static")
    bgmHighSource = love.audio.newSource("asset/UI/StartScene/FTRHigh.mp3","stream")
    bgmLowSource = love.audio.newSource("asset/UI/StartScene/FTRLow.mp3","stream")
    sceneOutSource:setVolume(UISFXVolume[0]/10)
    bgmHighSource:setVolume(BGMVolume[0]/10)
    bgmLowSource:setVolume(0)
end
function loadSubBlockOfStartScene()
    indiStateSubBlock = {}
    indiStateSubBlock[1] = function() end
    indiStateSubBlock[2] = function() end
end
function unloadObjectOfStartScene()
    SSV = nil
    bgLoop = nil
    consoleDaboTrig = nil
    consoleText1 = nil
    consoleText2 = nil
    consoleInsMark = nil
    drrr = nil
    breathDaboTrig = nil
    optionText = nil
    shutter = nil
    subStateDaboTrig = nil
    recordTotalTime = nil
    timeNumber1 = nil
    timeNumber2 = nil
    timeNumber3 = nil
    timeNumber4 = nil
    timeNumber5 = nil
    timeNumber6 = nil
    configMenu = nil
    audioConfigText = nil
    bgmRetangle = nil
    sfxRetangle = nil
    bgmBarTlayer = nil
    bgmBarBlayer = nil
    sfxBarTlayer = nil
    sfxBarBlayer = nil
    audioBarMark = nil
    controllerIndiText = nil
    indiMark = nil
    selectResText = nil
    resText = nil
    resBarMark = nil
end
function unloadAnimOfStartScene()
    flashLinerAnim1 = nil
    flashLinerAnim2 = nil
    flashLinerAnim3 = nil
    flashHalfLinerAnim1 = nil
    flashHalfLinerAnim2 = nil
    insMarkFirstFlashFrameAnim = nil
    breathLinerAnim1 = nil
    daboTrigTwitchFrameAnim = nil
    resLinerTwitchLinerAnim1 = nil
    resLinerTwitchLinerAnim2 = nil
    resLinerTwitchLinerAnim3 = nil
    horizMotionLinerAnim1 = nil
    horizMotionLinerAnim2 = nil
    markHorizTwitchLinerAnim1 = nil
    markHorizTwitchLinerAnim2 = nil
    audioMarkVertLinerAnim1 = nil
    audioMarkVertLinerAnim2 = nil
    optionTwitchFrameAnim = nil
    flashDrrrLinerAnim = nil
    BGLoopFrameAnim = nil
    bgmFlashoutAnim = nil
end
function unloadAudioSourceOfStartScene()
    sceneOutSource = nil
    bgmHighSource = nil
    bgmLowSource = nil
end
function unloadSubBlockOfStartScene()
    indiStateSubBlock = nil
end
   
-- order load and unload functions
function loadOrderOfStartScene(loadOrder)
    local switch = 
    {
        [0] = function()
            loadObjectOfStartScene()
            loadAnimOfStartScene()
            loadAudioSourceOfStartScene()
            loadSubBlockOfStartScene()
            BGLoopImage = {}
            textImage = {}
            consoleText1Image = {}
            consoleText2Image = {}
            optionTextImage = {}
            BGLoopImage[0] = love.graphics.newImage(assetData[0])
        end,
        [1] = function()
            BGLoopImage[loadOrder] = love.graphics.newImage(assetData[loadOrder])
        end,
        [50] = function()
            shutterImage = love.graphics.newImage(assetData[50])
        end,
        [51] = function()
            textImage[0] = love.graphics.newImage("asset/UI/StartScene/Config/1280 x 720.png")
            textImage[1] = love.graphics.newImage("asset/UI/StartScene/Config/1600 x 900.png")
            textImage[2] = love.graphics.newImage("asset/UI/StartScene/Config/1920 x 1080.png")
            textImage[3] = love.graphics.newImage("asset/UI/StartScene/Config/2560 x 1440.png")
            textImage[4] = love.graphics.newImage("asset/UI/StartScene/Config/3840 x 2160.png")
            
            audioConfigTextImage = love.graphics.newImage("asset/UI/StartScene/Config/AudioConfigText.png")
            barImage = love.graphics.newImage("asset/UI/StartScene/Config/Bar.png")
            barMarkImage = love.graphics.newImage("asset/UI/StartScene/Config/BarMark.png")
            configMenuImage = love.graphics.newImage("asset/UI/StartScene/Config/ConfigMenu.png")
            controllerIndiImage = love.graphics.newImage("asset/UI/StartScene/Config/ControllerIndi.png")
            selectResImage = love.graphics.newImage("asset/UI/StartScene/Config/SelectRes.png")
            
            consoleText1Image[0] = love.graphics.newImage("asset/UI/StartScene/Console/Up/SinglePerson.png")
            consoleText1Image[1] = love.graphics.newImage("asset/UI/StartScene/Console/Up/LocalTwoPlayer.png")
            consoleText1Image[2] = love.graphics.newImage("asset/UI/StartScene/Console/Up/AdjustmentInterface.png")
            consoleText1Image[3] = love.graphics.newImage("asset/UI/StartScene/Console/Up/GameDuretion.png")
            consoleText1Image[4] = love.graphics.newImage("asset/UI/StartScene/Console/Up/CloseThisGame.png")
            consoleText1Image[5] = love.graphics.newImage("asset/UI/StartScene/Console/Up/UpdateController.png")

            consoleText2Image[0] = love.graphics.newImage("asset/UI/StartScene/Console/Down/TrainingMode.png")
            consoleText2Image[1] = love.graphics.newImage("asset/UI/StartScene/Console/Down/SecondController.png")
            consoleText2Image[2] = love.graphics.newImage("asset/UI/StartScene/Console/Down/SomeConfiguration.png")
            consoleText2Image[3] = love.graphics.newImage("asset/UI/StartScene/Console/Down/TimeManagement.png")
            consoleText2Image[4] = love.graphics.newImage("asset/UI/StartScene/Console/Down/returnToOS.png")
            consoleText2Image[5] = love.graphics.newImage("asset/UI/StartScene/Console/Down/2PModeAvailable.png")
            consoleText2Image[6] = love.graphics.newImage("asset/UI/StartScene/Console/Down/OnlyOneController.png")
            consoleText2Image[7] = love.graphics.newImage("asset/UI/StartScene/Console/Down/TwoOrMoreController.png")
        
            SSDaboTrigImage = love.graphics.newImage("asset/UI/StartScene/Console/DaboTrig.png")
            SSInsMarkImage = love.graphics.newImage("asset/UI/StartScene/Console/InsMark.png")
        
            optionTextImage[0] = love.graphics.newImage("asset/UI/StartScene/Option/Training.png")
            optionTextImage[1] = love.graphics.newImage("asset/UI/StartScene/Option/2PMATCHING.png")
            optionTextImage[2] = love.graphics.newImage("asset/UI/StartScene/Option/Config.png")
            optionTextImage[3] = love.graphics.newImage("asset/UI/StartScene/Option/Record.png")
            optionTextImage[4] = love.graphics.newImage("asset/UI/StartScene/Option/ExitToOS.png")

            breathDaboTrigImage = love.graphics.newImage("asset/UI/StartScene/Option/BreathDaboTrig.png")
            gameDurationTextImage = love.graphics.newImage("asset/UI/StartScene/Record/GameDuration.png")
        
            -- title
            drrrImage = love.graphics.newImage("asset/UI/StartScene/MainLogo.png")
        end
    }
    if loadOrder > 0 and loadOrder < 50 then 
        local thisFunction = switch[1]
        if thisFunction then thisFunction() end
    else 
        local thisFunction = switch[loadOrder]
        if thisFunction then thisFunction() end
    end
end
function unloadOrderOfStartScene()
    unloadObjectOfStartScene()
    unloadAnimOfStartScene()
    unloadAudioSourceOfStartScene()
    unloadSubBlockOfStartScene()
    
    BGLoopImage = nil
    shutterImage = nil
    textImage = nil
    audioConfigTextImage = nil 
    barImage = nil
    barMarkImage = nil
    configMenuImage = nil 
    controllerIndiImage = nil 
    selectResImage = nil 
    consoleText1Image = nil 
    consoleText2Image = nil
    SSDaboTrigImage = nil
    SSInsMarkImage = nil
    optionTextImage = nil
    breathDaboTrigImage = nil
    gameDurationTextImage = nil 
    drrrImage = nil
end