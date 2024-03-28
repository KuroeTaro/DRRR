function loadObjectOfCharSelectScene()
    sceneCounter = 0
    subUpdateBlocks = {}
    subUpdateBlocks[1] = function() end

    SSV = {}
    SSV["timer"] = {6,0}
    SSV["frameTimer"] = -1

    SSV["leftCharImagePos"] = {}
    SSV["leftCharImagePos"][0] = {132,-2,0}
    SSV["leftCharImagePos"][1] = {230,6,0}
    SSV["leftCharImagePos"][2] = {248,-60,0}
    SSV["leftCharImagePos"][3] = {106,-52,0}
    SSV["leftCharImagePos"][4] = {-27,-35,0}
    SSV["leftCharImagePos"][5] = {305,-3,0}
    SSV["leftCharImagePos"][6] = {215,1,0}
    SSV["leftCharImagePos"][7] = {256,-32,0}

    SSV["leftCharTextPos"] = {}
    SSV["leftCharTextPos"][0] = {210,-121,0.332}
    SSV["leftCharTextPos"][1] = {205,-131,0.332}
    SSV["leftCharTextPos"][2] = {422,-114,0.332}
    SSV["leftCharTextPos"][3] = {375,-179,0.192}
    SSV["leftCharTextPos"][4] = {-272,-96,0.332}
    SSV["leftCharTextPos"][5] = {-280,-210,0.332}
    SSV["leftCharTextPos"][6] = {193,-152,0.332}
    SSV["leftCharTextPos"][7] = {264,-146,0.332}

    SSV["rightCharImagePos"] = {}
    SSV["rightCharImagePos"][0] = {797,-2,0}
    SSV["rightCharImagePos"][1] = {1000,-2,0}
    SSV["rightCharImagePos"][2] = {840,35,-0.244}
    SSV["rightCharImagePos"][3] = {674,-30,0}
    SSV["rightCharImagePos"][4] = {610,-12,0}
    SSV["rightCharImagePos"][5] = {870,-4,0}
    SSV["rightCharImagePos"][6] = {945,-3,0}
    SSV["rightCharImagePos"][7] = {903,-32,0}

    SSV["rightCharTextPos"] = {}
    SSV["rightCharTextPos"][0] = {802,216,-0.401}
    SSV["rightCharTextPos"][1] = {964,205,-0.332}
    SSV["rightCharTextPos"][2] = {1016,182,-0.384}
    SSV["rightCharTextPos"][3] = {1636,-56,0.332}
    SSV["rightCharTextPos"][4] = {1291,-36,0.436}
    SSV["rightCharTextPos"][5] = {1498,-154,0.332}
    SSV["rightCharTextPos"][6] = {1023,171,-0.332}
    SSV["rightCharTextPos"][7] = {995,170,-0.332}

    SSV["iconCoverPos"] = {}
    SSV["iconCoverPos"][0] = {0,570}
    SSV["iconCoverPos"][1] = {192,570}
    SSV["iconCoverPos"][2] = {405,512}
    SSV["iconCoverPos"][3] = {603,349}
    SSV["iconCoverPos"][4] = {765,168}
    SSV["iconCoverPos"][5] = {921,120}
    SSV["iconCoverPos"][6] = {1116,122}
    SSV["iconCoverPos"][7] = {1327,121}

    solidColor = {7/255,19/255,31/255,1,0}
    solidColor["FCT"] = 0
    solidColor["LCT"] = 0
    solidColor["linerDelta"] = {0,0,0,0,0}

    charSelectBG = {0,0,1,0,0}
    charSelectBG["FCT"] = 0
    charSelectBG["LCT"] = 0
    charSelectBG["linerDelta"] = {0,0,0,0,0}

    movieCover = {0,0,1,0,0}
    movieCover["FCT"] = 0
    movieCover["LCT"] = 0
    movieCover["linerDelta"] = {0,0,0,0,0}

    firstGlow = {0,0,1,0,0}
    firstGlow["FCT"] = 0
    firstGlow["LCT"] = 0
    firstGlow["linerDelta"] = {0,0,0,0,0}

    firstRing = {0,0,1,0,0}
    firstRing["FCT"] = 0
    firstRing["LCT"] = 0
    firstRing["linerDelta"] = {0,0,0,0,0}

    continousGlow = {0,0,1,0,0}
    continousGlow[4] = {0,0.5,1,0}
    continousGlow["FCT"] = 0
    continousGlow["LCT"] = 0
    continousGlow["linerDelta"] = 0
    continousGlow["layer"] = {0,1,2}

    secondRing = {0,0,1,0,0}
    secondRing["FCT"] = 0
    secondRing["LCT"] = 0
    secondRing["linerDelta"] = {0,0,0,0,0}

    timeNumber1 = {1321,815,1,0,6}
    timeNumber1["FCT"] = 0
    timeNumber1["LCT"] = 0
    timeNumber1["linerDelta"] = {0,0,0,0,0}

    timeNumber2 = {1334,815,1,0,0}
    timeNumber2["FCT"] = 0
    timeNumber2["LCT"] = 0
    timeNumber2["linerDelta"] = {0,0,0,0,0}

    ANRIIcon = {405,512,1,0,0}
    ANRIIcon["FCT"] = 0
    ANRIIcon["LCT"] = 0
    ANRIIcon["linerDelta"] = {0,0,0,0,0}
    ANRIIcon["res"] = {280,280}

    ANRIIconChar = {0,0,1,1,0}
    ANRIIconChar["FCT"] = 0
    ANRIIconChar["LCT"] = 0
    ANRIIconChar["linerDelta"] = {0,0,0,0,0}

    CKGIcon = {921,120,1,0,0}
    CKGIcon["FCT"] = 0
    CKGIcon["LCT"] = 0
    CKGIcon["linerDelta"] = {0,0,0,0,0}
    CKGIcon["res"] = {280,280}

    CKGIconChar = {0,0,1,1,0}
    CKGIconChar["FCT"] = 0
    CKGIconChar["LCT"] = 0
    CKGIconChar["linerDelta"] = {0,0,0,0,0}

    ERIKAWK3Icon = {0,570,1,0,0}
    ERIKAWK3Icon["FCT"] = 0
    ERIKAWK3Icon["LCT"] = 0
    ERIKAWK3Icon["linerDelta"] = {0,0,0,0,0}
    ERIKAWK3Icon["res"] = {335,210}

    ERIKAWK3IconChar = {0,0,1,1,0}
    ERIKAWK3IconChar["FCT"] = 0
    ERIKAWK3IconChar["LCT"] = 0
    ERIKAWK3IconChar["linerDelta"] = {0,0,0,0,0}

    IZYIcon = {603,349,1,0,0}
    IZYIcon["FCT"] = 0
    IZYIcon["LCT"] = 0
    IZYIcon["linerDelta"] = {0,0,0,0,0}
    IZYIcon["res"] = {260,375}

    IZYIconChar = {0,0,1,1,0}
    IZYIconChar["FCT"] = 0
    IZYIconChar["LCT"] = 0
    IZYIconChar["linerDelta"] = {0,0,0,0,0}

    KTCIcon = {192,570,1,0,0}
    KTCIcon["FCT"] = 0
    KTCIcon["LCT"] = 0
    KTCIcon["linerDelta"] = {0,0,0,0,0}
    KTCIcon["res"] = {335,215}

    KTCIconChar = {0,0,1,1,0}
    KTCIconChar["FCT"] = 0
    KTCIconChar["LCT"] = 0
    KTCIconChar["linerDelta"] = {0,0,0,0,0}

    SHINRAIcon = {1116,122,1,0,0}
    SHINRAIcon["FCT"] = 0
    SHINRAIcon["LCT"] = 0
    SHINRAIcon["linerDelta"] = {0,0,0,0,0}
    SHINRAIcon["res"] = {335,215}

    SHINRAIconChar = {0,0,1,1,0}
    SHINRAIconChar["FCT"] = 0
    SHINRAIconChar["LCT"] = 0
    SHINRAIconChar["linerDelta"] = {0,0,0,0,0}

    SRTIcon = {1327,121,1,0,0}
    SRTIcon["FCT"] = 0
    SRTIcon["LCT"] = 0
    SRTIcon["linerDelta"] = {0,0,0,0,0}
    SRTIcon["res"] = {335,210}

    SRTIconChar = {0,0,1,0,0}
    SRTIconChar["FCT"] = 0
    SRTIconChar["LCT"] = 0
    SRTIconChar["linerDelta"] = {0,0,0,0,0}

    SZOIcon = {765,168,1,0,0}
    SZOIcon["FCT"] = 0
    SZOIcon["LCT"] = 0
    SZOIcon["linerDelta"] = {0,0,0,0,0}
    SZOIcon["res"] = {250,400}

    SZOIconChar = {0,0,1,0,0}
    SZOIconChar["FCT"] = 0
    SZOIconChar["LCT"] = 0
    SZOIconChar["linerDelta"] = {0,0,0,0,0}

    charSelectLeft = {-33,110,1,0,3}
    charSelectLeft["FCT"] = 0
    charSelectLeft["LCT"] = 0
    charSelectLeft["linerDelta"] = {0,0,0,0,0}
    charSelectLeft["state"] = "flashIn"

    charSelectLeftChar = {106,-52,1,1,0}
    charSelectLeftChar["FCT"] = 0
    charSelectLeftChar["LCT"] = 0
    charSelectLeftChar["linerDelta"] = {0,0,0,0,3}
    charSelectLeftChar["r"] = 0
    
    charSelectLeftText = {375,-179,1,1,0}
    charSelectLeftText["FCT"] = 0
    charSelectLeftText["LCT"] = 0
    charSelectLeftText["linerDelta"] = {0,0,0,0,3}
    charSelectLeftText["r"] = 0.192

    charSelectRight = {-25,335,1,0,4}
    charSelectRight["FCT"] = 0
    charSelectRight["LCT"] = 0
    charSelectRight["linerDelta"] = {0,0,0,0,0}
    charSelectRight["state"] = "flashIn"

    charSelectRightChar = {610,-12,1,1,0}
    charSelectRightChar["FCT"] = 0
    charSelectRightChar["LCT"] = 0
    charSelectRightChar["linerDelta"] = {0,0,0,0,4}
    charSelectRightChar["r"] = 0

    charSelectRightText = {1291,-36,1,1,0}
    charSelectRightText["FCT"] = 0
    charSelectRightText["LCT"] = 0
    charSelectRightText["linerDelta"] = {0,0,0,0,4}
    charSelectRightText["r"] = 0.436

    iconCover1 = {603,349,1,0,3,0}
    iconCover1["FCT"] = 0
    iconCover1["LCT"] = 0
    iconCover1["linerDelta"] = {0,0,0,0,4}

    iconCover2 = {765,168,1,0,4,0}
    iconCover2["FCT"] = 0
    iconCover2["LCT"] = 0
    iconCover2["linerDelta"] = {0,0,0,0,0}

    glowAlphaPoint = {0,0, 0,262, 384,900, 1600,900, 1600,149, 587,0}
    glowAlphaPoint["FCT"] = 0
    glowAlphaPoint["LCT"] = 0
    glowAlphaPoint["linerDelta"] = {0,0, 0,0, 0,0, 0,0, 0,0, 0,0}

    controlSelectText1 = {90,470,1,0,0}
    controlSelectText1["FCT"] = 0
    controlSelectText1["LCT"] = 0
    controlSelectText1["linerDelta"] = {0,0,0,0,0}

    controlSelectText2 = {1236,700,1,0,0}
    controlSelectText2["FCT"] = 0
    controlSelectText2["LCT"] = 0
    controlSelectText2["linerDelta"] = {0,0,0,0,0}

    controlSelectBar1 = {55,470,1,0,0}
    controlSelectBar1["FCT"] = 0
    controlSelectBar1["LCT"] = 0
    controlSelectBar1["linerDelta"] = {0,0,0,0,0}

    controlSelectBar2 = {1545,700,1,0,0}
    controlSelectBar2["FCT"] = 0
    controlSelectBar2["LCT"] = 0
    controlSelectBar2["linerDelta"] = {0,0,0,0,0}
end
function loadAnimOfCharSelectScene()

    solidFlashInLinerAnim1 = {}
    solidFlashInLinerAnim1[0] = {0,0,0,-0.3,0}
    solidFlashInLinerAnim1[1] = {0,0,0,-0.2,0}
    solidFlashInLinerAnim1[2] = {0,0,0,-0.1,0}
    solidFlashInLinerAnim1[3] = {0,0,0,-0.1,0}
    solidFlashInLinerAnim1[4] = {0,0,0,-0.07,0}
    solidFlashInLinerAnim1[5] = {0,0,0,-0.05,0}
    solidFlashInLinerAnim1[6] = {0,0,0,-0.05,0}
    solidFlashInLinerAnim1[7] = {0,0,0,-0.03,0}
    solidFlashInLinerAnim1[8] = {0,0,0,-0.03,0}
    solidFlashInLinerAnim1[9] = {0,0,0,-0.03,0}
    solidFlashInLinerAnim1[10] = {0,0,0,-0.02,0}
    solidFlashInLinerAnim1[11] = {0,0,0,-0.01,0}
    solidFlashInLinerAnim1[12] = {0,0,0,-0,005,0}
    solidFlashInLinerAnim1[13] = {0,0,0,-0.003,0}
    solidFlashInLinerAnim1[14] = {0,0,0,-0.002,0}
    solidFlashInLinerAnim1["length"] = 14
    solidFlashInLinerAnim1["loopType"] = "const"

    solidFlashInLinerAnim2 = {}
    solidFlashInLinerAnim2[0] = {0,0,0,-0.01,0}
    solidFlashInLinerAnim2[1] = {0,0,0,-0.06,0}
    solidFlashInLinerAnim2[2] = {0,0,0,-0.12,0}
    solidFlashInLinerAnim2[3] = {0,0,0,-0.25,0}
    solidFlashInLinerAnim2[4] = {0,0,0,-0.56,0}
    solidFlashInLinerAnim2["length"] = 4
    solidFlashInLinerAnim2["loopType"] = "const"

    solidFlashInLinerAnim3 = {}
    solidFlashInLinerAnim3[0] = {0,0,0,-0.002,0}
    solidFlashInLinerAnim3[1] = {0,0,0,-0.003,0}
    solidFlashInLinerAnim3[2] = {0,0,0,-0.005,0}
    solidFlashInLinerAnim3[3] = {0,0,0,-0.01,0}
    solidFlashInLinerAnim3[4] = {0,0,0,-0.02,0}
    solidFlashInLinerAnim3[5] = {0,0,0,-0.03,0}
    solidFlashInLinerAnim3[6] = {0,0,0,-0.03,0}
    solidFlashInLinerAnim3[7] = {0,0,0,-0.03,0}
    solidFlashInLinerAnim3[8] = {0,0,0,-0.05,0}
    solidFlashInLinerAnim3[9] = {0,0,0,-0.05,0}
    solidFlashInLinerAnim3[10] = {0,0,0,-0.07,0}
    solidFlashInLinerAnim3[11] = {0,0,0,-0.1,0}
    solidFlashInLinerAnim3[12] = {0,0,0,-0.1,0}
    solidFlashInLinerAnim3[13] = {0,0,0,-0.2,0}
    solidFlashInLinerAnim3[14] = {0,0,0,-0.3,0}
    solidFlashInLinerAnim3["length"] = 14
    solidFlashInLinerAnim3["loopType"] = "const"

    solidFlashOutLinerAnim = {}
    solidFlashOutLinerAnim[0] = {0,0,0,0.002,0}
    solidFlashOutLinerAnim[1] = {0,0,0,0.003,0}
    solidFlashOutLinerAnim[2] = {0,0,0,0.005,0}
    solidFlashOutLinerAnim[3] = {0,0,0,0.01,0}
    solidFlashOutLinerAnim[4] = {0,0,0,0.02,0}
    solidFlashOutLinerAnim[5] = {0,0,0,0.03,0}
    solidFlashOutLinerAnim[6] = {0,0,0,0.03,0}
    solidFlashOutLinerAnim[7] = {0,0,0,0.03,0}
    solidFlashOutLinerAnim[8] = {0,0,0,0.05,0}
    solidFlashOutLinerAnim[9] = {0,0,0,0.05,0}
    solidFlashOutLinerAnim[10] = {0,0,0,0.07,0}
    solidFlashOutLinerAnim[11] = {0,0,0,0.1,0}
    solidFlashOutLinerAnim[12] = {0,0,0,0.1,0}
    solidFlashOutLinerAnim[13] = {0,0,0,0.2,0}
    solidFlashOutLinerAnim[14] = {0,0,0,0.3,0}
    solidFlashOutLinerAnim["length"] = 14
    solidFlashOutLinerAnim["loopType"] = "const"

    firstRingFlashInFrameAnim = {}
    firstRingFlashInFrameAnim[2] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[4] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[6] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[8] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[10] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[12] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[14] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[16] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[18] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[20] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[22] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[24] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[26] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[28] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[30] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[32] = {0,0,0,0,1}
    firstRingFlashInFrameAnim[34] = {0,0,0,0,1}
    firstRingFlashInFrameAnim["length"] = 34
    firstRingFlashInFrameAnim["loopType"] = "const"

    firstGlowFlashInLinerAnim = {}
    firstGlowFlashInLinerAnim[0] = {0,0,0,0.04,0}
    firstGlowFlashInLinerAnim[5] = {0,0,0,0.16,0}
    firstGlowFlashInLinerAnim["length"] = 9
    firstGlowFlashInLinerAnim["loopType"] = "const"

    glowAlphaPointAnim = {}
    glowAlphaPointAnim[0] = {0,0, 0,-7.5, 14,0, 0,0, 0,12.5, -28,0}
    glowAlphaPointAnim[2] = {0,0, 0,-4, 7,0, 0,0, 0,6, -14,0}
    glowAlphaPointAnim[5] = {0,0, 0,-2, 4,0, 0,0, 0,3.4, -7.4,0}
    glowAlphaPointAnim[10] = {0,0, 0,-1, 2.4,0, 0,0, 0,2.2, -4.8,0}
    glowAlphaPointAnim[15] = {0,0, 0,-0.8, 1.6,0, 0,0, 0,1.4, -3.2,0}
    glowAlphaPointAnim[20] = {0,0, 0,-0.6, 1,0, 0,0, 0,1, -2.2,0}
    glowAlphaPointAnim[25] = {0,0, 0,-0.4, 0.6,0, 0,0, 0,0.6, -1.2,0}
    glowAlphaPointAnim[30] = {0,0, 0,-0.1, 0.3,0, 0,0, 0,0.2, 0.5,0}
    glowAlphaPointAnim["length"] = 39
    glowAlphaPointAnim["loopType"] = "const"

    continousGlowFlashInAnim = {}
    continousGlowFlashInAnim[0] = -0.032/4*3
    continousGlowFlashInAnim[5] = -0.018/4*3
    continousGlowFlashInAnim[10] = -0.011/4*3
    continousGlowFlashInAnim[20] = -0.008/4*3
    continousGlowFlashInAnim[35] = -0.006/4*3
    continousGlowFlashInAnim[40] = -0.008/4*3
    continousGlowFlashInAnim[50] = -0.0035/4*3
    continousGlowFlashInAnim[70] = -0.001/4*3
    continousGlowFlashInAnim[100] = -0.0006/4*3
    continousGlowFlashInAnim[140] = -0.0006/4*3
    continousGlowFlashInAnim[150] = 0
    continousGlowFlashInAnim[200] = 0
    continousGlowFlashInAnim[250] = 0
    continousGlowFlashInAnim["length"] = 299
    continousGlowFlashInAnim["loopType"] = "const"

    iconFlashInAnim = {}
    iconFlashInAnim[0] = {0,0,0,0.135,0}
    iconFlashInAnim[2] = {0,0,0,0.1,0}
    iconFlashInAnim[4] = {0,0,0,0.06,0}
    iconFlashInAnim[7] = {0,0,0,0.04,0}
    iconFlashInAnim[10] = {0,0,0,0.024,0}
    iconFlashInAnim[15] = {0,0,0,0.022,0}
    iconFlashInAnim["length"] = 19
    iconFlashInAnim["loopType"] = "const"
    
    iconFlashInAnimHalf = {}
    iconFlashInAnimHalf[0] = {0,0,0,0.135/2,0}
    iconFlashInAnimHalf[2] = {0,0,0,0.1/2,0}
    iconFlashInAnimHalf[4] = {0,0,0,0.06/2,0}
    iconFlashInAnimHalf[7] = {0,0,0,0.04/2,0}
    iconFlashInAnimHalf[10] = {0,0,0,0.024/2,0}
    iconFlashInAnimHalf[15] = {0,0,0,0.022/2,0}
    iconFlashInAnimHalf["length"] = 19
    iconFlashInAnimHalf["loopType"] = "const"

    iconCharMoveAnim = {}
    iconCharMoveAnim[0] = {-3,0,0,0,0}
    iconCharMoveAnim[1] = {-2,0,0,0,0}
    iconCharMoveAnim[2] = {-1,0,0,0,0}
    iconCharMoveAnim[4] = {-0.5,0,0,0,0}
    iconCharMoveAnim[8] = {-0.25,0,0,0,0}
    iconCharMoveAnim["length"] = 12
    iconCharMoveAnim["loopType"] = "const"

    charSelectCharMoveInAnim = {}
    charSelectCharMoveInAnim[0] = {-26.9,0,0,0,0}
    charSelectCharMoveInAnim[1] = {-33.2+26.9,0,0,0,0}
    charSelectCharMoveInAnim[2] = {(-39.8+33.2)/2,0,0,0,0}
    charSelectCharMoveInAnim[4] = {(-46.2+39.8)/4,0,0,0,0}
    charSelectCharMoveInAnim[8] = {(-51.6+46.2)/7,0,0,0,0}
    charSelectCharMoveInAnim[15] = {(-54.5+51.6)/7,0,0,0,0}
    charSelectCharMoveInAnim[22] = {(-56.4+54.5)/8,0,0,0,0}
    charSelectCharMoveInAnim[30] = {(-58.3+56.4)/15,0,0,0,0}
    charSelectCharMoveInAnim[45] = {(-59.3+58.3)/15,0,0,0,0}
    charSelectCharMoveInAnim[60] = {(-59.7+59.3)/15,0,0,0,0}
    charSelectCharMoveInAnim[75] = {(-59.9+59.7)/15,0,0,0,0}
    charSelectCharMoveInAnim[90] = {(-60.0+59.9)/15,0,0,0,0}
    charSelectCharMoveInAnim[105] = {0,0,0,0,0}
    charSelectCharMoveInAnim["length"] = 109
    charSelectCharMoveInAnim["loopType"] = "const"

    charSelectCharMoveOutAnim = {}
    charSelectCharMoveOutAnim[0] = {-2,0,0,0,0}
    charSelectCharMoveOutAnim[1] = {-4,0,0,0,0}
    charSelectCharMoveOutAnim[2] = {-11,0,0,0,0}
    charSelectCharMoveOutAnim[3] = {-33,0,0,0,0}
    charSelectCharMoveOutAnim[4] = {-50,0,0,0,0}
    charSelectCharMoveOutAnim["length"] = 4
    charSelectCharMoveOutAnim["loopType"] = "const"

    charSelectTextMoveInAnim = {}
    charSelectTextMoveInAnim[0] = {-98.1,0,0,0,0}
    charSelectTextMoveInAnim[1] = {-122.5+98.1,0,0,0,0}
    charSelectTextMoveInAnim[2] = {(-147.6+122.5)/2,0,0,0,0}
    charSelectTextMoveInAnim[4] = {(-172.3+147.6)/4,0,0,0,0}
    charSelectTextMoveInAnim[8] = {(-193.0+172.3)/7,0,0,0,0}
    charSelectTextMoveInAnim[15] = {(-203.9+193.0)/7,0,0,0,0}
    charSelectTextMoveInAnim[22] = {(-211.5+203.9)/8,0,0,0,0}
    charSelectTextMoveInAnim[30] = {(-219.2+211.5)/15,0,0,0,0}
    charSelectTextMoveInAnim[45] = {(-222.9+219.2)/15,0,0,0,0}
    charSelectTextMoveInAnim[60] = {(-224.7+222.9)/15,0,0,0,0}
    charSelectTextMoveInAnim[75] = {(-225.6+224.7)/15,0,0,0,0}
    charSelectTextMoveInAnim[90] = {(-225.9+225.6)/15,0,0,0,0}
    charSelectTextMoveInAnim[105] = {0,0,0,0,0}
    charSelectTextMoveInAnim["length"] = 109
    charSelectTextMoveInAnim["loopType"] = "const"

    charSelectTextMoveOutAnim = {}
    charSelectTextMoveOutAnim[0] = {-5,0,0,0,0}
    charSelectTextMoveOutAnim[1] = {-10,0,0,0,0}
    charSelectTextMoveOutAnim[2] = {-20,0,0,0,0}
    charSelectTextMoveOutAnim[3] = {-50,0,0,0,0}
    charSelectTextMoveOutAnim[4] = {-110,0,0,0,0}
    charSelectTextMoveOutAnim["length"] = 4
    charSelectTextMoveOutAnim["loopType"] = "const"

    charSelectFlashInAnim = {}
    charSelectFlashInAnim[0] = {0,0,0,0.6,0}
    charSelectFlashInAnim[1] = {0,0,0,0.23,0}
    charSelectFlashInAnim[2] = {0,0,0,0.1,0}
    charSelectFlashInAnim[3] = {0,0,0,0.06,0}
    charSelectFlashInAnim[4] = {0,0,0,0.01,0}
    charSelectFlashInAnim["length"] = 4
    charSelectFlashInAnim["loopType"] = "const"

    charSelectFlashIn75Anim = {}
    charSelectFlashIn75Anim[0] = {0,0,0,0.6*0.75,0}
    charSelectFlashIn75Anim[1] = {0,0,0,0.23*0.75,0}
    charSelectFlashIn75Anim[2] = {0,0,0,0.1*0.75,0}
    charSelectFlashIn75Anim[3] = {0,0,0,0.06*0.75,0}
    charSelectFlashIn75Anim[4] = {0,0,0,0.01*0.75,0}
    charSelectFlashIn75Anim["length"] = 4
    charSelectFlashIn75Anim["loopType"] = "const"

    charSelectFlashOutAnim = {}
    charSelectFlashOutAnim[0] = {0,0,0,-0.6,0}
    charSelectFlashOutAnim[1] = {0,0,0,-0.23,0}
    charSelectFlashOutAnim[2] = {0,0,0,-0.1,0}
    charSelectFlashOutAnim[3] = {0,0,0,-0.06,0}
    charSelectFlashOutAnim[4] = {0,0,0,-0.01,0}
    charSelectFlashOutAnim["length"] = 4
    charSelectFlashOutAnim["loopType"] = "const"

    charSelectFlashOut75Anim = {}
    charSelectFlashOut75Anim[0] = {0,0,0,-0.6*0.75,0}
    charSelectFlashOut75Anim[1] = {0,0,0,-0.23*0.75,0}
    charSelectFlashOut75Anim[2] = {0,0,0,-0.1*0.75,0}
    charSelectFlashOut75Anim[3] = {0,0,0,-0.06*0.75,0}
    charSelectFlashOut75Anim[4] = {0,0,0,-0.01*0.75,0}
    charSelectFlashOut75Anim["length"] = 4
    charSelectFlashOut75Anim["loopType"] = "const"

    charSelectLockingAnim = {}
    charSelectLockingAnim[0] = {0,0,0,0.23,0}
    charSelectLockingAnim[2] = {0,0,0,0.07,0}
    charSelectLockingAnim[5] = {0,0,0,0.018,0}
    charSelectLockingAnim[10] = {0,0,0,-0.004,0}
    charSelectLockingAnim[20] = {0,0,0,-0.011,0}
    charSelectLockingAnim[30] = {0,0,0,-0.005,0}
    charSelectLockingAnim[40] = {0,0,0,-0.015,0}
    charSelectLockingAnim[60] = {0,0,0,-0.01,0}
    charSelectLockingAnim[70] = {0,0,0,-0.005,0}
    charSelectLockingAnim["length"] = 79
    charSelectLockingAnim["loopType"] = "const"

    charSelectLockingAnim1 = {}
    charSelectLockingAnim1[0] = {0,0,0,-0.01,0}
    charSelectLockingAnim1["length"] = 79
    charSelectLockingAnim1["loopType"] = "const"

    barMoveUpAnim = {}
    barMoveUpAnim[0] = {0,-25,0,0,0}
    barMoveUpAnim[1] = {0,-8,0,0,0}
    barMoveUpAnim[2] = {0,-4,0,0,0}
    barMoveUpAnim[3] = {0,-2,0,0,0}
    barMoveUpAnim[4] = {0,-1,0,0,0}
    barMoveUpAnim["length"] = 4
    barMoveUpAnim["loopType"] = "const"

    barMoveUpTwitchAnim = {}
    barMoveUpTwitchAnim[0] = {0,-5,0,0,0}
    barMoveUpTwitchAnim[1] = {0,2,0,0,0}
    barMoveUpTwitchAnim[2] = {0,6,0,0,0}
    barMoveUpTwitchAnim[3] = {0,-1,0,0,0}
    barMoveUpTwitchAnim[4] = {0,-2,0,0,0}
    barMoveUpTwitchAnim["length"] = 4
    barMoveUpTwitchAnim["loopType"] = "const"

    barMoveDownAnim = {}
    barMoveDownAnim[0] = {0,25,0,0,0}
    barMoveDownAnim[1] = {0,8,0,0,0}
    barMoveDownAnim[2] = {0,4,0,0,0}
    barMoveDownAnim[3] = {0,2,0,0,0}
    barMoveDownAnim[4] = {0,1,0,0,0}
    barMoveDownAnim["length"] = 4
    barMoveDownAnim["loopType"] = "const"

    barMoveDownTwitchAnim = {}
    barMoveDownTwitchAnim[0] = {0,5,0,0,0}
    barMoveDownTwitchAnim[1] = {0,-2,0,0,0}
    barMoveDownTwitchAnim[2] = {0,-6,0,0,0}
    barMoveDownTwitchAnim[3] = {0,1,0,0,0}
    barMoveDownTwitchAnim[4] = {0,2,0,0,0}
    barMoveDownTwitchAnim["length"] = 4
    barMoveDownTwitchAnim["loopType"] = "const"

    bgmFlashoutAnim = {}
    bgmFlashoutAnim[0] = -1/20
    bgmFlashoutAnim["length"] = 19
    bgmFlashoutAnim["loopType"] = "const"

end
function loadShaderOfCharSelectScene()
    fractalNoiseShader = love.graphics.newShader[[
        extern float time;
        
        float hash(float x)
        {
            return mod(sin(cos(x * 12.13) * 19.123) * 17.321, 1.0);
        }

        float noise(vec2 p)
        {
            vec2 pm = mod(p, 1.0);
            vec2 pd = p - pm;
            float v0 = hash(pd.x + pd.y * 41.0);
            float v1 = hash(pd.x + 1.0 + pd.y * 41.0);
            float v2 = hash(pd.x + pd.y * 41.0 + 41.0);
            float v3 = hash(pd.x + pd.y * 41.0 + 42.0);
            v0 = mix(v0, v1, smoothstep(0.0, 1.0, pm.x));
            v2 = mix(v2, v3, smoothstep(0.0, 1.0, pm.x));
            return mix(v0, v2, smoothstep(0.0, 1.0, pm.y));
        }

        vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords)
        {
            vec2 uv = screen_coords.xy / 900;

            uv *= 0.8;

            float v = 0.0;

            for (float i = 0.0; i < 12.0; i += 1.0)
            {
                float t = mod(1 + i, 12.0);
                float l = 1 - t;
                float e = exp2(t);
                v += noise(uv * e + vec2(time*1, 1)) * (1.0 - (t / 12.0)) * (t / 12.0);
            }

            v -= 1;
            v = v * 2;
            v = v + 0.2;

            if(v< 0){
                v = 0;
            }else if(v > 1){
                v = 1;
            }

            return vec4(v, v, v, 1.0);
        }
    ]]
    radialBlurShader = love.graphics.newShader[[
        extern vec2 startCood;
        const int nsamples = 500;
        vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords)
        {
            screen_coords.x = 1600;
            screen_coords.y = 900;
            vec2 center = startCood.xy / screen_coords.xy;
            float blurStart = 0.5;
            float blurWidth = 0.5;

            vec2 uv = texture_coords.xy;
            uv -= center;
            float precompute = blurWidth * (1.0 / float(nsamples - 1));

            vec4 finalColor = vec4(0.0);
            for (int i = 0; i < nsamples; i++)
            {
                float scale = blurStart + (float(i) * precompute);
                finalColor += Texel(texture, uv * scale + center);
            }

            finalColor /= float(nsamples);

            return finalColor;
        }
    ]]
end
function loadAudioSourceOfCharSelectScene()
    psychedelicParadeReEditSource = love.audio.newSource("asset/UI/CharSelectScene/psychedelicParadeReEdit.mp3","static")
    charSelectStartSFX1Source = love.audio.newSource("asset/UI/CharSelectScene/charSelectStartSFX1.mp3","static")
    charSelectStartSFX2Source = love.audio.newSource("asset/UI/CharSelectScene/charSelectStartSFX2.mp3","static")
    flashOutSFXSource = love.audio.newSource("asset/UI/CharSelectScene/flashOut.mp3","static")

    playerSwitchSource = {}
    playerSwitchSource[1] = love.audio.newSource("asset/UI/CharSelectScene/clickL.mp3","static")
    playerSwitchSource[2] = love.audio.newSource("asset/UI/CharSelectScene/clickR.mp3","static")
    playerSelectSource = {}
    playerSelectSource[1] = love.audio.newSource("asset/UI/CharSelectScene/toSubL.mp3","static")
    playerSelectSource[2] = love.audio.newSource("asset/UI/CharSelectScene/toSubR.mp3","static")
    playerUnselectSource = {}
    playerUnselectSource[1] = love.audio.newSource("asset/UI/CharSelectScene/toMainL.mp3","static")
    playerUnselectSource[2] = love.audio.newSource("asset/UI/CharSelectScene/toMainR.mp3","static")
    playerLockSource = {}
    playerLockSource[1] = love.audio.newSource("asset/UI/CharSelectScene/lockSFXL.mp3","static")
    playerLockSource[2] = love.audio.newSource("asset/UI/CharSelectScene/lockSFXR.mp3","static")

    psychedelicParadeReEditSource:setVolume(BGMVolume[0]/10)
    charSelectStartSFX1Source:setVolume(BGMVolume[0]/10)
    charSelectStartSFX2Source:setVolume(BGMVolume[0]/10)
    playerSwitchSource[1]:setVolume(UISFXVolume[0]/10)
    playerSelectSource[1]:setVolume(UISFXVolume[0]/10)
    playerUnselectSource[1]:setVolume(UISFXVolume[0]/10)
    playerLockSource[1]:setVolume(UISFXVolume[0]/10)
    playerSwitchSource[2]:setVolume(UISFXVolume[0]/10)
    playerSelectSource[2]:setVolume(UISFXVolume[0]/10)
    playerUnselectSource[2]:setVolume(UISFXVolume[0]/10)
    playerLockSource[2]:setVolume(UISFXVolume[0]/10)
    flashOutSFXSource:setVolume(UISFXVolume[0]/10)

end
function unloadObjectOfCharSelectScene()
    SSV = nil
    solidColor = nil
    charSelectBG = nil
    movieCover = nil
    firstGlow = nil
    firstRing = nil
    continousGlow = nil
    secondRing = nil
    timeNumber1 = nil
    timeNumber2 = nil
    ANRIIcon = nil
    ANRIIconChar = nil
    CKGIcon = nil
    CKGIconChar = nil
    ERIKAWK3Icon = nil
    ERIKAWK3IconChar = nil
    IZYIcon = nil
    IZYIconChar = nil
    KTCIcon = nil
    KTCIconChar = nil
    SHINRAIcon = nil
    SHINRAIconChar = nil
    SRTIcon = nil
    SRTIconChar = nil
    SZOIcon = nil
    SZOIconChar = nil
    charSelectLeft = nil
    charSelectLeftChar = nil
    charSelectLeftText = nil
    charSelectRight = nil
    charSelectRightChar = nil
    charSelectRightText = nil
    iconCover1 = nil
    iconCover2= nil
    glowAlphaPoint = nil
    charName1 = nil
    charName2 = nil
    controlSelectText1 = nil
    controlSelectText2 = nil
    controlSelectBar1 = nil
    controlSelectBar2 = nil
end
function unloadAnimOfCharSelectScene()
    solidFlashInLinerAnim1 = nil
    solidFlashInLinerAnim2 = nil
    solidFlashInLinerAnim3 = nil
    solidFlashOutLinerAnim = nil
    firstRingFlashInFrameAnim = nil
    firstGlowFlashInLinerAnim = nil
    glowAlphaPointAnim = nil
    continousGlowFlashInAnim = nil
    iconFlashInAnim = nil
    iconFlashInAnimHalf = nil
    iconCharMoveAnim = nil
    charSelectCharMoveInAnim = nil
    charSelectCharMoveOutAnim = nil
    charSelectTextMoveInAnim = nil
    charSelectTextMoveOutAnim = nil
    charSelectFlashInAnim = nil
    charSelectFlashIn75Anim = nil
    charSelectFlashOutAnim = nil
    charSelectFlashOut75Anim = nil
    charSelectLockingAnim = nil
    charSelectLockingAnim1 = nil
    barMoveUpAnim = nil
    barMoveUpTwitchAnim = nil
    barMoveDownAnim = nil
    barMoveDownTwitchAnim = nil
    bgmFlashoutAnim = nil
end
function unloadShaderOfCharSelectScene()
    fractalNoiseShader = nil
    radialBlurShader= nil
end
function unloadAudioSourceOfCharSelectScene()
    psychedelicParadeReEditSource = nil
    charSelectStartSFX1Source = nil 
    charSelectStartSFX2Source = nil
    playerSwitchSource = nil
    playerSelectSource = nil
    playerUnselectSource = nil
    playerLockSource = nil
    flashOutSFXSource = nil
end
   
-- order load and unload functions
function loadOrderOfCharSelectScene(loadOrder)
    local switch = 
    {
        [0] = function()
            loadObjectOfCharSelectScene()
            loadAnimOfCharSelectScene()
            loadShaderOfCharSelectScene()
            loadAudioSourceOfCharSelectScene()

            continousGlowImage ={}
            firstRingImage = {}
            movieCoverImage = {}
            charSelectCharImage = {}
            charSelectLeftTextImage = {}
            charSelectRightTextImage = {}

            ANRIIconAlphaImage = love.graphics.newImage(assetData[0])
            CKGIconAlphaImage = love.graphics.newImage(assetData[1])
            ERIKAWK3IconAlphaImage = love.graphics.newImage(assetData[2])
            IZYIconAlphaImage = love.graphics.newImage(assetData[3])
            KTCIconAlphaImage = love.graphics.newImage(assetData[4])
            SHINRAIconAlphaImage = love.graphics.newImage(assetData[5])
            SRTIconAlphaImage = love.graphics.newImage(assetData[6])
            SZOIconAlphaImage = love.graphics.newImage(assetData[7])

            iconAlphaPackImage = {
                KTCIconAlphaImage,
                ANRIIconAlphaImage,
                IZYIconAlphaImage,
                SZOIconAlphaImage,
                CKGIconAlphaImage,
                SHINRAIconAlphaImage,
                SRTIconAlphaImage
            }
            iconAlphaPackImage[0] = ERIKAWK3IconAlphaImage

            ANRIIconImage = love.graphics.newImage(assetData[8])
            CKGIconImage = love.graphics.newImage(assetData[9])
            ERIKAWK3IconImage = love.graphics.newImage(assetData[10])
            IZYIconImage = love.graphics.newImage(assetData[11])
            KTCIconImage = love.graphics.newImage(assetData[12])
            SHINRAIconImage = love.graphics.newImage(assetData[13])
            SRTIconImage = love.graphics.newImage(assetData[14])
            SZOIconImage = love.graphics.newImage(assetData[15])

            charSelectCharImage[2] = love.graphics.newImage(assetData[16])
            charSelectCharImage[5] = love.graphics.newImage(assetData[17])
            charSelectCharImage[0] = love.graphics.newImage(assetData[18])
            charSelectCharImage[3] = love.graphics.newImage(assetData[19])
            charSelectCharImage[1] = love.graphics.newImage(assetData[20])
            charSelectCharImage[6] = love.graphics.newImage(assetData[21])
            charSelectCharImage[7] = love.graphics.newImage(assetData[22])
            charSelectCharImage[4] = love.graphics.newImage(assetData[23])

            charSelectLeftTextImage[2] = love.graphics.newImage(assetData[24])
            charSelectLeftTextImage[5] = love.graphics.newImage(assetData[25])
            charSelectLeftTextImage[0] = love.graphics.newImage(assetData[26])
            charSelectLeftTextImage[3] = love.graphics.newImage(assetData[27])
            charSelectLeftTextImage[1] = love.graphics.newImage(assetData[28])
            charSelectLeftTextImage[6] = love.graphics.newImage(assetData[29])
            charSelectLeftTextImage[7] = love.graphics.newImage(assetData[30])
            charSelectLeftTextImage[4] = love.graphics.newImage(assetData[31])

            charSelectRightTextImage[2] = love.graphics.newImage(assetData[32])
            charSelectRightTextImage[5] = love.graphics.newImage(assetData[33])
            charSelectRightTextImage[0] = love.graphics.newImage(assetData[34])
            charSelectRightTextImage[3] = love.graphics.newImage(assetData[27])
            charSelectRightTextImage[1] = love.graphics.newImage(assetData[35])
            charSelectRightTextImage[6] = love.graphics.newImage(assetData[36])
            charSelectRightTextImage[7] = love.graphics.newImage(assetData[37])
            charSelectRightTextImage[4] = love.graphics.newImage(assetData[31])
        end,
        [1] = function()
            for i = 0,2 do
                continousGlowImage[i] = love.graphics.newImage(assetData[38+i])
            end
            for i = 0,17 do
                firstRingImage[i] = love.graphics.newImage(assetData[41+i])
            end
        end,
        [2] = function()
            movieCoverImage[0] = love.graphics.newImage(assetData[59])
            movieCoverImage[1] = love.graphics.newImage(assetData[60])
            movieCoverImage[2] = love.graphics.newImage(assetData[61])
            charSelectBGImage = love.graphics.newImage(assetData[62])
            charSelectLeftAlphaImage = love.graphics.newImage(assetData[63])
            charSelectRightAlphaImage = love.graphics.newImage(assetData[64])
            firstGlowImage = love.graphics.newImage(assetData[65])
            secondRingImage = love.graphics.newImage(assetData[66])

            controlMethod1Image = love.graphics.newImage(assetData[67])
            controlMethod2Image = love.graphics.newImage(assetData[68])

            barMarkImage = love.graphics.newImage(assetData[69])
        end
    }
    local thisFunction = switch[loadOrder]
    if thisFunction then thisFunction() end
end
function unloadOrderOfCharSelectScene()
    unloadObjectOfCharSelectScene()
    unloadAnimOfCharSelectScene()
    unloadShaderOfCharSelectScene()
    unloadAudioSourceOfCharSelectScene()
    
    continousGlowImage = nil
    firstRingImage = nil
    movieCoverImage = nil
    charSelectCharImage = nil
    charSelectLeftTextImage = nil
    charSelectRightTextImage = nil
    iconAlphaPackImage = nil

    ANRIIconAlphaImage = nil
    CKGIconAlphaImage = nil
    ERIKAWK3IconAlphaImage = nil
    IZYIconAlphaImage = nil
    KTCIconAlphaImage = nil
    SHINRAIconAlphaImage = nil
    SRTIconAlphaImage = nil
    SZOIconAlphaImage = nil

    ANRIIconImage = nil
    CKGIconImage = nil
    ERIKAWK3IconImage = nil
    IZYIconImage = nil
    KTCIconImage = nil
    SHINRAIconImage = nil
    SRTIconImage = nil
    SZOIconImage = nil

    charSelectBGImage = nil
    charSelectLeftAlphaImage = nil
    charSelectRightAlphaImage = nil
    firstGlowImage = nil
    secondRingImage = nil

    controlMethod1Image = nil
    controlMethod2Image = nil

    barMarkImage = nil
end