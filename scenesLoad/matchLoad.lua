function loadObjectOfMatchScene()
    sceneCounter = 0
    subUpdateBlocks = {}
    subUpdateBlocks[1] = function() end -- player1
    subUpdateBlocks[2] = function() end -- player2
    subUpdateBlocks[3] = function() end -- timer

    SSV = {}
    SSV["timer"] = {6,0}
    SSV["frameTimer"] = -1
    -- giovana walking speed 10.0 takes 300f walk from c2c 
    -- character width 210
    -- gio in this game speed 10.5
    SSV["sceneWidth"] = 3150.000 

    SSV["playerHealth"] = {10000,10000} -- 400*25
    SSV["playerGuts"] = {1.0,1.0}
    -- SSV["playerGutsMutiplierFrom"] = {
    --  0 = {0.97,0.92,0.89,0.84,0.75,0.66,0.56}
    --  1 = {0.96,0.91,0.87,0.82,0.73,0.63,0.53}
    --  2 = {0.95,0.90,0.85,0.80,0.70,0.60,0.50}
    --  3 = {0.94,0.89,0.83,0.78,0.67,0.57,0.47}
    --  4 = {0.93,0.88,0.81,0.76,0.64,0.53,0.44}
    --  5 = {0.92,0.97,0.79,0.74,0.60,0.50,0.41}
    --      70%  60% 50% 40% 30% 20% 10%
    -- }
    SSV["playerHeat"] = {0,0} -- max at 10000
    SSV["playerHeatGainMultiplier"] = {0,0} -- max at 480f
    SSV["playerODGuage"] = {15000,15000}
    SSV["playerODTime"] = {0,0} -- max at 480f
    SSV["playerODGainMultiplier"] = {0,0} -- max at 480f
    SSV["playerAbility"] = {15000,15000}
    SSV["playerAbilityGainMultiplier"] = {1.0,1.0}
    SSV["playerStatus"] = {"normal","normal"} -- Positive bounus -- negative penalty -- danger
    SSV["playerStatusTimer"] = {0.0,0.0}
    SSV["playerRisk"] = {0,0} -- max at 12500
    SSV["playerRiskGainMultiplier"] = {1.0,1.0}

    SSV["playerDamagedMultiplier"] = {1.0,1.0}
    SSV["playerGutsMultiplier"] = {1.0,1.0}
    SSV["playerRiskMultiplier"] = {1.0,1.0}

    SSV["roundCounter"] = {0,0} -- max at 2 for now


    -- UI object x y s transparent frame
    solidColor = {7/255,19/255,31/255,1,0}
    solidColor["PLT"] = {0,0,0,0,0}
    solidColor["PLD"] = {0,0,0,0,0}

    bgColor = {115/255,115/255,115/255,1,0}
    bgColor["PLT"] = {0,0,0,0,0}
    bgColor["PLD"] = {0,0,0,0,0}

    ODLightP1 = {131,75,1,0,0}
    ODLightP1["PLT"] = {0,0,0,0,0}
    ODLightP1["PLD"] = {0,0,0,0,0}

    ODLightP2 = {1469,75,1,0,0}
    ODLightP2["PLT"] = {0,0,0,0,0}
    ODLightP2["PLD"] = {0,0,0,0,0}

    roundTimer1 = {780,85,1,0,0}
    roundTimer1["PLT"] = {0,0,0,0,0}
    roundTimer1["PLD"] = {0,0,0,0,0}

    roundTimer2 = {803,85,1,0,0}
    roundTimer2["PLT"] = {0,0,0,0,0}
    roundTimer2["PLD"] = {0,0,0,0,0}

    abilityLightP1 = {375,102,1,0,0}
    abilityLightP1["PLT"] = {0,0,0,0,0}
    abilityLightP1["PLD"] = {0,0,0,0,0}

    abilityLightP2 = {1225,102,1,0,0}
    abilityLightP2["PLT"] = {0,0,0,0,0}
    abilityLightP2["PLD"] = {0,0,0,0,0}

    SPStatusP1 = {1469,75,1,0,0}
    SPStatusP1["PLT"] = {0,0,0,0,0}
    SPStatusP1["PLD"] = {0,0,0,0,0}

    SPStatusP2 = {1469,75,1,0,0}
    SPStatusP2["PLT"] = {0,0,0,0,0}
    SPStatusP2["PLD"] = {0,0,0,0,0}

    healthLightP1 = {175,65,1,0,0}
    healthLightP1["PLT"] = {0,0,0,0,0}
    healthLightP1["PLD"] = {0,0,0,0,0}

    healthLightP2 = {1425,65,1,0,0}
    healthLightP2["PLT"] = {0,0,0,0,0}
    healthLightP2["PLD"] = {0,0,0,0,0}

    healthFadeLightP1 = {175,65,1,0,0}
    healthFadeLightP1["PLT"] = {0,0,0,0,0}
    healthFadeLightP1["PLD"] = {0,0,0,0,0}

    healthFadeLightP2 = {1425,65,1,0,0}
    healthFadeLightP2["PLT"] = {0,0,0,0,0}
    healthFadeLightP2["PLD"] = {0,0,0,0,0}

    heatLightP1 = {295,124,1,0,0}
    heatLightP1["PLT"] = {0,0,0,0,0}
    heatLightP1["PLD"] = {0,0,0,0,0}

    heatLightP2 = {1305,124,1,0,0}
    heatLightP2["PLT"] = {0,0,0,0,0}
    heatLightP2["PLD"] = {0,0,0,0,0}
    
    heatIndicatorP1 = {675,124,1,0,0}
    heatIndicatorP1["PLT"] = {0,0,0,0,0}
    heatIndicatorP1["PLD"] = {0,0,0,0,0}

    heatIndicatorP2 = {925,124,1,0,0}
    heatIndicatorP2["PLT"] = {0,0,0,0,0}
    heatIndicatorP2["PLD"] = {0,0,0,0,0}

    ODIndicatorP1 = {1305,102,1,0,0}
    ODIndicatorP1["PLT"] = {0,0,0,0,0}
    ODIndicatorP1["PLD"] = {0,0,0,0,0}

    ODIndicatorP2 = {205,102,1,0,0}
    ODIndicatorP2["PLT"] = {0,0,0,0,0}
    ODIndicatorP2["PLD"] = {0,0,0,0,0}

    ODTimerP1 = {192,149,1,0,0}
    ODTimerP1["PLT"] = {0,0,0,0,0}
    ODTimerP1["PLD"] = {0,0,0,0,0}

    ODTimerP2 = {1290,149,1,0,0}
    ODTimerP2["PLT"] = {0,0,0,0,0}
    ODTimerP2["PLD"] = {0,0,0,0,0}

    riskLightP1 = {195,127,1,0,0}
    riskLightP1["PLT"] = {0,0,0,0,0}
    riskLightP1["PLD"] = {0,0,0,0,0}

    riskLightP2 = {1405,127,1,0,0}
    riskLightP2["PLT"] = {0,0,0,0,0}
    riskLightP2["PLD"] = {0,0,0,0,0}

    matchPointLightP1 = {717,85,1,0,0}
    matchPointLightP1["PLT"] = {0,0,0,0,0}
    matchPointLightP1["PLD"] = {0,0,0,0,0}

    matchPointLightP2 = {883,85,1,0,0}
    matchPointLightP2["PLT"] = {0,0,0,0,0}
    matchPointLightP2["PLD"] = {0,0,0,0,0}

    roundCounterP1 = {883,85,1,0,0}
    roundCounterP1["PLT"] = {0,0,0,0,0}
    roundCounterP1["PLD"] = {0,0,0,0,0}

    roundCounterP2 = {883,85,1,0,0}
    roundCounterP2["PLT"] = {0,0,0,0,0}
    roundCounterP2["PLD"] = {0,0,0,0,0}

    UIUpper = {0,0,1,0,0}
    UIUpper["PLT"] = {0,0,0,0,0}
    UIUpper["PLD"] = {0,0,0,0,0}

    -- Gauge

    ODGaugeP1 = {131,75,1,0,0}
    ODGaugeP1["PLT"] = {0,0,0,0,0}
    ODGaugeP1["PLD"] = {0,0,0,0,0}

    ODGaugeP2 = {1469,75,1,0,0}
    ODGaugeP2["PLT"] = {0,0,0,0,0}
    ODGaugeP2["PLD"] = {0,0,0,0,0}

    abilityGaugeP1 = {375,102,1,0,0}
    abilityGaugeP1["PLT"] = {0,0,0,0,0}
    abilityGaugeP1["PLD"] = {0,0,0,0,0}

    abilityGaugeP2 = {1225,102,1,0,0}
    abilityGaugeP2["PLT"] = {0,0,0,0,0}
    abilityGaugeP2["PLD"] = {0,0,0,0,0}

    SPStatusP1 = {1469,75,1,0,0}
    SPStatusP1["PLT"] = {0,0,0,0,0}
    SPStatusP1["PLD"] = {0,0,0,0,0}

    SPStatusP2 = {1469,75,1,0,0}
    SPStatusP2["PLT"] = {0,0,0,0,0}
    SPStatusP2["PLD"] = {0,0,0,0,0}

    healthGaugeP1 = {175,65,1,0,0}
    healthGaugeP1["PLT"] = {0,0,0,0,0}
    healthGaugeP1["PLD"] = {0,0,0,0,0}

    healthGaugeP2 = {1425,65,1,0,0}
    healthGaugeP2["PLT"] = {0,0,0,0,0}
    healthGaugeP2["PLD"] = {0,0,0,0,0}

    heatGaugeP1 = {295,124,1,0,0}
    heatGaugeP1["PLT"] = {0,0,0,0,0}
    heatGaugeP1["PLD"] = {0,0,0,0,0}

    heatGaugeP2 = {1305,124,1,0,0}
    heatGaugeP2["PLT"] = {0,0,0,0,0}
    heatGaugeP2["PLD"] = {0,0,0,0,0}

    riskGaugeP1 = {195,127,1,0,0}
    riskGaugeP1["PLT"] = {0,0,0,0,0}
    riskGaugeP1["PLD"] = {0,0,0,0,0}

    riskGaugeP2 = {1405,127,1,0,0}
    riskGaugeP2["PLT"] = {0,0,0,0,0}
    riskGaugeP2["PLD"] = {0,0,0,0,0}

    matchPointGaugeP1 = {717,85,1,0,0}
    matchPointGaugeP1["PLT"] = {0,0,0,0,0}
    matchPointGaugeP1["PLD"] = {0,0,0,0,0}

    matchPointGaugeP2 = {883,85,1,0,0}
    matchPointGaugeP2["PLT"] = {0,0,0,0,0}
    matchPointGaugeP2["PLD"] = {0,0,0,0,0}

    -- 3D object x y z 图片素材宽度 图片素材高度 sx sy frame
    -- 3D object Character 的 图片素材宽度 图片素材高度
    -- 从frame数据提取更新
    -- Character bool值用于判定是否浮空
    -- 浮空状态后如果box和地面接触则判定为落地 继承hitstun
    -- 落地后会将object的Y值强制设定为固定值 每个角色根据落地恢复动画的不同而有所差异

    camera = {0,0,-700}
    camera["PLT"] = {0,0,0}
    camera["PLD"] = {0,0,0}

    stageGlow = {800,-770,0}
    stageGlow["PLT"] = {0,0,0}
    stageGlow["PLD"] = {0,0,0}

    --readCharBaseData(selectedChar)
    p1Char = {-300,103,0,1.30,1.25,0}
    p1Char["state"] = "stand_Idle"
    p1Char["PLT"] = {0,0,0,0,0,0}
    p1Char["PLD"] = {0,0,0,0,0,0}
    p1Char["longShadow"] = {{},{}}
    p1Char["fadeShadow"] = {}

    p2Char = {300,103,0,1.30,1.25,0}
    p2Char["state"] = "stand_Idle"
    p2Char["PLT"] = {0,0,0,0,0,0}
    p2Char["PLD"] = {0,0,0,0,0,0}
    p2Char["longShadow"] = {{},{}}
    p2Char["fadeShadow"] = {}

    ground = {0,470,200,1600,300,3.0,1.0,0}
    ground["PLT"] = {0,0,0,0,0,0,0,0}
    ground["PLD"] = {0,0,0,0,0,0,0,0}

    markLine_0 = {1950,410,300,8,425,0.8,1.0,0}
    markLine_0["PLT"] = {0,0,0,0,0,0,0,0}
    markLine_0["PLD"] = {0,0,0,0,0,0,0,0}

    markLine_1 = {-1950,410,300,8,425,0.8,1.0,0}
    markLine_1["PLT"] = {0,0,0,0,0,0,0,0}
    markLine_1["PLD"] = {0,0,0,0,0,0,0,0}

    markLine_2 = {1025,410,300,8,425,0.8,1.0,0}
    markLine_2["PLT"] = {0,0,0,0,0,0,0,0}
    markLine_2["PLD"] = {0,0,0,0,0,0,0,0}

    markLine_3 = {-1025,410,300,8,425,0.8,1.0,0}
    markLine_3["PLT"] = {0,0,0,0,0,0,0,0}
    markLine_3["PLD"] = {0,0,0,0,0,0,0,0}

    stair = {0,300,300,1600,250,3.0,1.0,0}
    stair["PLT"] = {0,0,0,0,0,0,0,0}
    stair["PLD"] = {0,0,0,0,0,0,0,0}

    markLine_4 = {0,150,400,8,950,1.0,1.0,0}
    markLine_4["PLT"] = {0,0,0,0,0,0,0,0}
    markLine_4["PLD"] = {0,0,0,0,0,0,0,0}

    markLine_5 = {1950,150,400,8,950,1.0,1.0,0}
    markLine_5["PLT"] = {0,0,0,0,0,0,0,0}
    markLine_5["PLD"] = {0,0,0,0,0,0,0,0}

    markLine_6 = {-1950,150,400,8,950,1.0,1.0,0}
    markLine_6["PLT"] = {0,0,0,0,0,0,0,0}
    markLine_6["PLD"] = {0,0,0,0,0,0,0,0}

end
function loadAnimOfMatchScene()

end
function loadShaderOfMatchScene()

end
function loadAudioSourceOfMatchScene()

end
function unloadObjectOfMatchScene()

end
function unloadAnimOfMatchScene()

end

function unloadAudioSourceOfMatchScene()

end
   
-- order load and unload functions
function loadOrderOfMatchScene(loadOrder)
    local switch = 
    {
        [0] = function()
            loadObjectOfMatchScene()
            loadAnimOfMatchScene()
            loadShaderOfMatchScene()
            loadAudioSourceOfMatchScene()
        end,
        [1] = function()

        end,
        [2] = function()

        end
    }
    local thisFunction = switch[loadOrder]
    if thisFunction then thisFunction() end
end
function unloadOrderOfMatchScene()
    unloadObjectOfMatchScene()
    unloadAnimOfMatchScene()
    unloadShaderOfMatchScene()
    unloadAudioSourceOfMatchScene()
    
end