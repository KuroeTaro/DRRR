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
    solid_color = {7/255,19/255,31/255,1,0}
    solid_color["PLT"] = {0,0,0,0,0}
    solid_color["PLD"] = {0,0,0,0,0}

    bg_color = {115/255,115/255,115/255,1,0}
    bg_color["PLT"] = {0,0,0,0,0}
    bg_color["PLD"] = {0,0,0,0,0}

    OD_light_P1 = {131,75,1,0,0}
    OD_light_P1["PLT"] = {0,0,0,0,0}
    OD_light_P1["PLD"] = {0,0,0,0,0}

    OD_light_P2 = {1469,75,1,0,0}
    OD_light_P2["PLT"] = {0,0,0,0,0}
    OD_light_P2["PLD"] = {0,0,0,0,0}

    round_timer1 = {780,85,1,0,0}
    round_timer1["PLT"] = {0,0,0,0,0}
    round_timer1["PLD"] = {0,0,0,0,0}

    round_timer2 = {803,85,1,0,0}
    round_timer2["PLT"] = {0,0,0,0,0}
    round_timer2["PLD"] = {0,0,0,0,0}

    ability_light_P1 = {375,102,1,0,0}
    ability_light_P1["PLT"] = {0,0,0,0,0}
    ability_light_P1["PLD"] = {0,0,0,0,0}

    ability_light_P2 = {1225,102,1,0,0}
    ability_light_P2["PLT"] = {0,0,0,0,0}
    ability_light_P2["PLD"] = {0,0,0,0,0}

    SP_status_P1 = {9,135,1,0,0}
    SP_status_P1["PLT"] = {0,0,0,0,0}
    SP_status_P1["PLD"] = {0,0,0,0,0}

    SP_status_P2 = {1431,137,1,0,0}
    SP_status_P2["PLT"] = {0,0,0,0,0}
    SP_status_P2["PLD"] = {0,0,0,0,0}

    health_light_P1 = {175,65,1,0,0}
    health_light_P1["PLT"] = {0,0,0,0,0}
    health_light_P1["PLD"] = {0,0,0,0,0}

    health_light_P2 = {1425,65,1,0,0}
    health_light_P2["PLT"] = {0,0,0,0,0}
    health_light_P2["PLD"] = {0,0,0,0,0}

    health_fade_light_P1 = {175,65,1,0,0}
    health_fade_light_P1["PLT"] = {0,0,0,0,0}
    health_fade_light_P1["PLD"] = {0,0,0,0,0}

    health_fade_light_P2 = {1425,65,1,0,0}
    health_fade_light_P2["PLT"] = {0,0,0,0,0}
    health_fade_light_P2["PLD"] = {0,0,0,0,0}

    heat_light_P1 = {295,124,1,0,0}
    heat_light_P1["PLT"] = {0,0,0,0,0}
    heat_light_P1["PLD"] = {0,0,0,0,0}

    heat_light_P2 = {1305,124,1,0,0}
    heat_light_P2["PLT"] = {0,0,0,0,0}
    heat_light_P2["PLD"] = {0,0,0,0,0}
    
    heat_indicator_P1 = {675,140,1,0,0}
    heat_indicator_P1["PLT"] = {0,0,0,0,0}
    heat_indicator_P1["PLD"] = {0,0,0,0,0}

    heat_indicator_P2 = {925,140,1,0,0}
    heat_indicator_P2["PLT"] = {0,0,0,0,0}
    heat_indicator_P2["PLD"] = {0,0,0,0,0}

    OD_indicator_P1 = {205,102,1,0,0}
    OD_indicator_P1["PLT"] = {0,0,0,0,0}
    OD_indicator_P1["PLD"] = {0,0,0,0,0}

    OD_indicator_P2 = {1250,102,1,0,0}
    OD_indicator_P2["PLT"] = {0,0,0,0,0}
    OD_indicator_P2["PLD"] = {0,0,0,0,0}

    OD_timer_P1 = {192,149,1,0,0}
    OD_timer_P1["PLT"] = {0,0,0,0,0}
    OD_timer_P1["PLD"] = {0,0,0,0,0}

    OD_timer_P2 = {1290,149,1,0,0}
    OD_timer_P2["PLT"] = {0,0,0,0,0}
    OD_timer_P2["PLD"] = {0,0,0,0,0}

    risk_light_P1 = {195,127,1,0,0}
    risk_light_P1["PLT"] = {0,0,0,0,0}
    risk_light_P1["PLD"] = {0,0,0,0,0}

    risk_light_P2 = {1405,127,1,0,0}
    risk_light_P2["PLT"] = {0,0,0,0,0}
    risk_light_P2["PLD"] = {0,0,0,0,0}

    match_point_light_P1 = {717,85,1,0,0}
    match_point_light_P1["PLT"] = {0,0,0,0,0}
    match_point_light_P1["PLD"] = {0,0,0,0,0}

    match_point_light_P2 = {883,85,1,0,0}
    match_point_light_P2["PLT"] = {0,0,0,0,0}
    match_point_light_P2["PLD"] = {0,0,0,0,0}

    round_counter_P1 = {751,116,1,0,0}
    round_counter_P1["PLT"] = {0,0,0,0,0}
    round_counter_P1["PLD"] = {0,0,0,0,0}

    round_counter_P2 = {849,116,1,0,0}
    round_counter_P2["PLT"] = {0,0,0,0,0}
    round_counter_P2["PLD"] = {0,0,0,0,0}

    UI_upper = {0,0,1,0,0}
    UI_upper["PLT"] = {0,0,0,0,0}
    UI_upper["PLD"] = {0,0,0,0,0}

    -- Gauge

    OD_gauge_P1 = {131,75,1,0,0}
    OD_gauge_P1["PLT"] = {0,0,0,0,0}
    OD_gauge_P1["PLD"] = {0,0,0,0,0}

    OD_gauge_P2 = {1469,75,1,0,0}
    OD_gauge_P2["PLT"] = {0,0,0,0,0}
    OD_gauge_P2["PLD"] = {0,0,0,0,0}

    ability_gauge_P1 = {375,102,1,0,0}
    ability_gauge_P1["PLT"] = {0,0,0,0,0}
    ability_gauge_P1["PLD"] = {0,0,0,0,0}

    ability_gauge_P2 = {1225,102,1,0,0}
    ability_gauge_P2["PLT"] = {0,0,0,0,0}
    ability_gauge_P2["PLD"] = {0,0,0,0,0}

    health_gauge_P1 = {175,65,1,0,0}
    health_gauge_P1["PLT"] = {0,0,0,0,0}
    health_gauge_P1["PLD"] = {0,0,0,0,0}

    health_gauge_P2 = {1425,65,1,0,0}
    health_gauge_P2["PLT"] = {0,0,0,0,0}
    health_gauge_P2["PLD"] = {0,0,0,0,0}

    heat_gauge_P1 = {295,124,1,0,0}
    heat_gauge_P1["PLT"] = {0,0,0,0,0}
    heat_gauge_P1["PLD"] = {0,0,0,0,0}

    heat_gauge_P2 = {1305,124,1,0,0}
    heat_gauge_P2["PLT"] = {0,0,0,0,0}
    heat_gauge_P2["PLD"] = {0,0,0,0,0}

    OD_indicator_gauge_P1 = {205,102,1,0,0}
    OD_indicator_gauge_P1["PLT"] = {0,0,0,0,0}
    OD_indicator_gauge_P1["PLD"] = {0,0,0,0,0}

    OD_indicator_gauge_P2 = {1250,102,1,0,0}
    OD_indicator_gauge_P2["PLT"] = {0,0,0,0,0}
    OD_indicator_gauge_P2["PLD"] = {0,0,0,0,0}

    risk_gauge_P1 = {195,127,1,0,0}
    risk_gauge_P1["PLT"] = {0,0,0,0,0}
    risk_gauge_P1["PLD"] = {0,0,0,0,0}

    risk_gauge_P2 = {1405,127,1,0,0}
    risk_gauge_P2["PLT"] = {0,0,0,0,0}
    risk_gauge_P2["PLD"] = {0,0,0,0,0}

    match_point_gauge_P1 = {717,85,1,0,0}
    match_point_gauge_P1["PLT"] = {0,0,0,0,0}
    match_point_gauge_P1["PLD"] = {0,0,0,0,0}

    match_point_gauge_P2 = {883,85,1,0,0}
    match_point_gauge_P2["PLT"] = {0,0,0,0,0}
    match_point_gauge_P2["PLD"] = {0,0,0,0,0}

    -- 3D object x y z 图片素材宽度 图片素材高度 sx sy frame
    -- 3D object Character 的 图片素材宽度 图片素材高度
    -- 从frame数据提取更新
    -- Character bool值用于判定是否浮空
    -- 浮空状态后如果box和地面接触则判定为落地 继承hitstun
    -- 落地后会将object的Y值强制设定为固定值 每个角色根据落地恢复动画的不同而有所差异

    camera = {0, 0,-700}
    camera["PLT"] = {0,0,0}
    camera["PLD"] = {0,0,0}

    stage_glow = {800,-770,0}
    stage_glow["PLT"] = {0,0,0}
    stage_glow["PLD"] = {0,0,0}

    --readCharBaseData(selectedChar)
    p1_char = {-300,103,0,1.30,1.25,0}
    p1_char["state"] = "stand_Idle"
    p1_char["PLT"] = {0,0,0,0,0,0}
    p1_char["PLD"] = {0,0,0,0,0,0}
    p1_char["longShadow"] = {{},{}}
    p1_char["fadeShadow"] = {}

    p2_char = {300,103,0,1.30,1.25,0}
    p2_char["state"] = "stand_Idle"
    p2_char["PLT"] = {0,0,0,0,0,0}
    p2_char["PLD"] = {0,0,0,0,0,0}
    p2_char["longShadow"] = {{},{}}
    p2_char["fadeShadow"] = {}

    ground = {0,470,200,1600,300,3.0,1.0,0}
    ground["PLT"] = {0,0,0,0,0,0,0,0}
    ground["PLD"] = {0,0,0,0,0,0,0,0}

    markline_0 = {1950,410,300,8,425,0.8,1.0,0}
    markline_0["PLT"] = {0,0,0,0,0,0,0,0}
    markline_0["PLD"] = {0,0,0,0,0,0,0,0}

    markline_1 = {-1950,410,300,8,425,0.8,1.0,0}
    markline_1["PLT"] = {0,0,0,0,0,0,0,0}
    markline_1["PLD"] = {0,0,0,0,0,0,0,0}

    markline_2 = {1025,410,300,8,425,0.8,1.0,0}
    markline_2["PLT"] = {0,0,0,0,0,0,0,0}
    markline_2["PLD"] = {0,0,0,0,0,0,0,0}

    markline_3 = {-1025,410,300,8,425,0.8,1.0,0}
    markline_3["PLT"] = {0,0,0,0,0,0,0,0}
    markline_3["PLD"] = {0,0,0,0,0,0,0,0}

    stair = {0,300,300,1600,250,3.0,1.0,0}
    stair["PLT"] = {0,0,0,0,0,0,0,0}
    stair["PLD"] = {0,0,0,0,0,0,0,0}

    markline_4 = {0,150,400,8,950,1.0,1.0,0}
    markline_4["PLT"] = {0,0,0,0,0,0,0,0}
    markline_4["PLD"] = {0,0,0,0,0,0,0,0}

    markline_5 = {1950,150,400,8,950,1.0,1.0,0}
    markline_5["PLT"] = {0,0,0,0,0,0,0,0}
    markline_5["PLD"] = {0,0,0,0,0,0,0,0}

    markline_6 = {-1950,150,400,8,950,1.0,1.0,0}
    markline_6["PLT"] = {0,0,0,0,0,0,0,0}
    markline_6["PLD"] = {0,0,0,0,0,0,0,0}

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
function loadOrderOfMatchSceneUI(loadOrder)
    local switch = 
    {
        [0] = function()
            loadObjectOfMatchScene()
            loadAnimOfMatchScene()
            loadShaderOfMatchScene()
            loadAudioSourceOfMatchScene()
        end,
        [1] = function()
            ODLight_0_image = love.graphics.newImage(assetDataArray[1][0])
            ODLight_1_image = love.graphics.newImage(assetDataArray[1][1])
            ODLight_2_image = love.graphics.newImage(assetDataArray[1][2])
            ODLight_3_image = love.graphics.newImage(assetDataArray[1][3])
            ODLight_4_image = love.graphics.newImage(assetDataArray[1][4])
            ODLight_5_image = love.graphics.newImage(assetDataArray[1][5])

            time_number_0_image = love.graphics.newImage(assetDataArray[1][6])
            time_number_1_image = love.graphics.newImage(assetDataArray[1][7])
            time_number_2_image = love.graphics.newImage(assetDataArray[1][8])
            time_number_3_image = love.graphics.newImage(assetDataArray[1][9])
            time_number_4_image = love.graphics.newImage(assetDataArray[1][10])
            time_number_5_image = love.graphics.newImage(assetDataArray[1][11])
            time_number_6_image = love.graphics.newImage(assetDataArray[1][12])
            time_number_7_image = love.graphics.newImage(assetDataArray[1][13])
            time_number_8_image = love.graphics.newImage(assetDataArray[1][14])
            time_number_9_image = love.graphics.newImage(assetDataArray[1][15])
            time_number_colon_image = love.graphics.newImage(assetDataArray[1][16])

            ability_light_image = love.graphics.newImage(assetDataArray[1][17])
            danger_P1_image = love.graphics.newImage(assetDataArray[1][18])
            danger_P2_image = love.graphics.newImage(assetDataArray[1][19])
            health_light_image = love.graphics.newImage(assetDataArray[1][20])
            heat_indicator_image = love.graphics.newImage(assetDataArray[1][21])
            heat_light_image = love.graphics.newImage(assetDataArray[1][22])
            negative_penalty_P1_image = love.graphics.newImage(assetDataArray[1][23])
            negative_penalty_P2_image = love.graphics.newImage(assetDataArray[1][24])
            overdrive_indicator_image = love.graphics.newImage(assetDataArray[1][25])
            round_counter_image = love.graphics.newImage(assetDataArray[1][26])
            positive_bonus_text_image = love.graphics.newImage(assetDataArray[1][27])
            positive_bouns_P1_image = love.graphics.newImage(assetDataArray[1][28])
            positive_bouns_P2_image = love.graphics.newImage(assetDataArray[1][29])
            risk_light_image = love.graphics.newImage(assetDataArray[1][30])
            match_point_light_image = love.graphics.newImage(assetDataArray[1][31])
            UI_upper_image = love.graphics.newImage(assetDataArray[1][32])
        end,
        [2] = function()
            ability_gauge_image = love.graphics.newImage(assetDataArray[1][33])
            health_gauge_image = love.graphics.newImage(assetDataArray[1][34])
            heat_gauge_image = love.graphics.newImage(assetDataArray[1][35])
            OD_gauge_image = love.graphics.newImage(assetDataArray[1][36])
            overdrive_indicator_gauge_image = love.graphics.newImage(assetDataArray[1][37])
            risk_gauge_image = love.graphics.newImage(assetDataArray[1][38])
            match_point_gauge_image = love.graphics.newImage(assetDataArray[1][39])
        end
    }
    local thisFunction = switch[loadOrder]
    if thisFunction then thisFunction() end
end
function loadOrderOfMatchSceneStage(loadOrder)
    local switch = 
    {
        [0] = function()
            ground_image = love.graphics.newImage(assetDataArray[2][0])
            markLine425_image = love.graphics.newImage(assetDataArray[2][1])
            markLine950_image = love.graphics.newImage(assetDataArray[2][2])
            stair_image = love.graphics.newImage(assetDataArray[2][3])
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