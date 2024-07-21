function loadSceneDraw()
    drawOneImageUI(daboTrig,daboTrigimage)
    drawOneImageUI(loadText,loadTextImage)
    drawOneImageUI(insMark,insMarkImage)
end

function dicAndLogoSceneDraw()
    drawOneImageUI(dicObject,dicImage)
    drawOneImageUI(KTHObject,KTHImage)
    drawOneImageUI(L2DObject,L2DImage)
end

function startSceneDraw()
    -- main start scene
    drawArrayImageUI(bgLoop,BGLoopImage)
    drawArrayImageUI(optionText,optionTextImage)
    drawArrayImageUI(consoleText1,consoleText1Image)
    drawArrayImageUI(consoleText2,consoleText2Image)
    drawOneImageUI(breathDaboTrig,breathDaboTrigImage)
    drawOneImageUI(consoleDaboTrig,SSDaboTrigImage)
    drawOneImageUI(drrr,drrrImage)
    drawOneImageUI(consoleInsMark,SSInsMarkImage)

    -- start scene O1 state
    drawOneImageUI(shutter,shutterImage)
    drawOneImageUI(subStateDaboTrig,SSDaboTrigImage)
    drawOneImageUI(configMenu,configMenuImage)
    drawOneImageUI(recordTotalTime,gameDurationTextImage)
    drawArrayImageUI(timeNumber1,numberImage)
    drawArrayImageUI(timeNumber2,numberImage)
    drawArrayImageUI(timeNumber3,numberImage)
    drawArrayImageUI(timeNumber4,numberImage)
    drawArrayImageUI(timeNumber5,numberImage)
    drawArrayImageUI(timeNumber6,numberImage)
    
    -- start scene O2 state
    drawOneImageUI(audioConfigText,audioConfigTextImage)
    drawOneImageUI(bgmBarBlayer,barImage)
    drawOneImageUI(sfxBarBlayer,barImage)
    drawWithAlphaRetangle(bgmRetangle,bgmBarTlayer,barImage)
    drawWithAlphaRetangle(sfxRetangle,sfxBarTlayer,barImage)
    drawOneImageUI(audioBarMark,barMarkImage)
    drawOneImageUI(controllerIndiText,controllerIndiImage)
    drawOneImageUI(indiMark[1],barMarkImage)
    drawOneImageUI(indiMark[2],barMarkImage)
    drawOneImageUI(selectResText,selectResImage)
    drawOneImageUI(resBarMark,barMarkImage)
    drawArrayImageUI(resText,textImage)
end
function charSelectSceneDraw1()

    love.graphics.setBlendMode("add")
    drawArrayImageUI(movieCover,movieCoverImage)
    drawArrayImageUI(firstRing,firstRingImage)
    drawOneImageUI(firstGlow,firstGlowImage)
    love.graphics.setBlendMode("alpha")

    drawSolid(solidColor)
end
function charSelectSceneDraw2()
    drawIconInCharSelect(ANRIIcon,ANRIIconChar,ANRIIconImage,ANRIIconAlphaImage)
    drawIconInCharSelect(CKGIcon,CKGIconChar,CKGIconImage,CKGIconAlphaImage)
    drawIconInCharSelect(ERIKAWK3Icon,ERIKAWK3IconChar,ERIKAWK3IconImage,ERIKAWK3IconAlphaImage)
    drawIconInCharSelect(IZYIcon,IZYIconChar,IZYIconImage,IZYIconAlphaImage)
    drawIconInCharSelect(KTCIcon,KTCIconChar,KTCIconImage,KTCIconAlphaImage)
    drawIconInCharSelect(SHINRAIcon,SHINRAIconChar,SHINRAIconImage,SHINRAIconAlphaImage)
    drawIconInCharSelect(SRTIcon,SRTIconChar,SRTIconImage,SRTIconAlphaImage)
    drawIconInCharSelect(SZOIcon,SZOIconChar,SZOIconImage,SZOIconAlphaImage)

    drawIconCover(iconCover1,iconAlphaPackImage)
    drawIconCover(iconCover2,iconAlphaPackImage)

    drawOneImageUI(charSelectBG,charSelectBGImage)

    drawCharSelectInCharSelect(charSelectLeft,charSelectLeftChar,charSelectLeftText,charSelectCharImage,charSelectLeftTextImage,charSelectLeftAlphaImage)
    drawCharSelectInCharSelect(charSelectRight,charSelectRightChar,charSelectRightText,charSelectCharImage,charSelectRightTextImage,charSelectRightAlphaImage)

    drawArrayImageUI(timeNumber1,numberImage)
    drawArrayImageUI(timeNumber2,numberImage)

    drawOneImageUI(controlSelectText1,controlMethod1Image)
    drawOneImageUI(controlSelectText2,controlMethod2Image)
    
    drawOneImageUI(controlSelectBar1,barMarkImage)
    drawOneImageUI(controlSelectBar2,barMarkImage)

    love.graphics.setBlendMode("add")
    drawArrayImageUI(movieCover,movieCoverImage)
    drawOneImageUI(secondRing,secondRingImage)
    love.graphics.setBlendMode("alpha")

    drawSecondGlowInCharSelect(glowAlphaPoint,chatSelectFractalNoiseShader,radialBlurShader,continousGlow)
    drawSolid(solidColor)
end
function charSelectSceneDraw3()
    drawIconInCharSelect(ANRIIcon,ANRIIconChar,ANRIIconImage,ANRIIconAlphaImage)
    drawIconInCharSelect(CKGIcon,CKGIconChar,CKGIconImage,CKGIconAlphaImage)
    drawIconInCharSelect(ERIKAWK3Icon,ERIKAWK3IconChar,ERIKAWK3IconImage,ERIKAWK3IconAlphaImage)
    drawIconInCharSelect(IZYIcon,IZYIconChar,IZYIconImage,IZYIconAlphaImage)
    drawIconInCharSelect(KTCIcon,KTCIconChar,KTCIconImage,KTCIconAlphaImage)
    drawIconInCharSelect(SHINRAIcon,SHINRAIconChar,SHINRAIconImage,SHINRAIconAlphaImage)
    drawIconInCharSelect(SRTIcon,SRTIconChar,SRTIconImage,SRTIconAlphaImage)
    drawIconInCharSelect(SZOIcon,SZOIconChar,SZOIconImage,SZOIconAlphaImage)

    drawIconCover(iconCover1,iconAlphaPackImage)
    drawIconCover(iconCover2,iconAlphaPackImage)

    drawOneImageUI(charSelectBG,charSelectBGImage)

    drawCharSelectInCharSelectAfterFlashIn(charSelectLeft,charSelectLeftChar,charSelectLeftText,charSelectCharImage,charSelectLeftTextImage,charSelectLeftAlphaImage)
    drawCharSelectInCharSelectAfterFlashIn(charSelectRight,charSelectRightChar,charSelectRightText,charSelectCharImage,charSelectRightTextImage,charSelectRightAlphaImage)

    drawArrayImageUI(timeNumber1,numberImage)
    drawArrayImageUI(timeNumber2,numberImage)

    drawOneImageUI(controlSelectText1,controlMethod1Image)
    drawOneImageUI(controlSelectText2,controlMethod2Image)
    
    drawOneImageUI(controlSelectBar1,barMarkImage)
    drawOneImageUI(controlSelectBar2,barMarkImage)

    love.graphics.setBlendMode("add")
    drawArrayImageUI(movieCover,movieCoverImage)
    drawOneImageUI(secondRing,secondRingImage)
    love.graphics.setBlendMode("alpha")

    drawSecondGlowInCharSelect(glowAlphaPoint,chatSelectFractalNoiseShader,radialBlurShader,continousGlow)
    drawSolid(solidColor)
end
function match_scene_UI_Draw()
    solid_color[4] = 1
    bg_color[4] = 1
    OD_light_P1[4] = 1
    OD_light_P2[4] = 1
    round_timer1[4] = 1
    round_timer2[4] = 1
    ability_light_P1[4] = 1
    ability_light_P2[4] = 1
    SP_status_P1[4] = 1
    SP_status_P2[4] = 1
    health_light_P1[4] = 1
    health_light_P2[4] = 1
    health_fade_light_P1[4] = 1
    health_fade_light_P2[4] = 1
    heat_light_P1[4] = 1
    heat_light_P2[4] = 1
    heat_indicator_P1[4] = 1
    heat_indicator_P2[4] = 1
    OD_indicator_P1[4] = 1
    OD_indicator_P2[4] = 1
    OD_timer_P1[4] = 1
    OD_timer_P2[4] = 1
    risk_light_P1[4] = 1
    risk_light_P2[4] = 1
    match_point_light_P1[4] = 1
    match_point_light_P2[4] = 1
    round_counter_P1[4] = 1
    round_counter_P2[4] = 1
    UI_upper[4] = 1

    -- Gauge

    OD_gauge_P1[4] = 1
    OD_gauge_P2[4] = 1
    ability_gauge_P1[4] = 1
    ability_gauge_P2[4] = 1
    SP_status_P1[4] = 1
    SP_status_P2[4] = 1
    health_gauge_P1[4] = 1
    health_gauge_P2[4] = 1
    heat_gauge_P1[4] = 1
    heat_gauge_P2[4] = 1
    OD_indicator_gauge_P1[4] = 1
    OD_indicator_gauge_P2[4] = 1
    risk_gauge_P1[4] = 1
    risk_gauge_P2[4] = 1
    match_point_gauge_P1[4] = 1
    match_point_gauge_P2[4] = 1

    -- camera = {0,0,-700}
    -- camera["PLT"] = {0,0,0}
    -- camera["PLD"] = {0,0,0}

    -- stage_glow = {800,-770,0}
    -- stage_glow["PLT"] = {0,0,0}
    -- stage_glow["PLD"] = {0,0,0}

    -- --readCharBaseData(selectedChar)
    -- p1_char = {-300,103,0,1.30,1.25,0}
    -- p1_char["state"] = "stand_Idle"
    -- p1_char["PLT"] = {0,0,0,0,0,0}
    -- p1_char["PLD"] = {0,0,0,0,0,0}
    -- p1_char["longShadow"] = {{},{}}
    -- p1_char["fadeShadow"] = {}

    -- p2_char = {300,103,0,1.30,1.25,0}
    -- p2_char["state"] = "stand_Idle"
    -- p2_char["PLT"] = {0,0,0,0,0,0}
    -- p2_char["PLD"] = {0,0,0,0,0,0}
    -- p2_char["longShadow"] = {{},{}}
    -- p2_char["fadeShadow"] = {}

    -- ground = {0,470,200,1600,300,3.0,1.0,0}
    -- ground["PLT"] = {0,0,0,0,0,0,0,0}
    -- ground["PLD"] = {0,0,0,0,0,0,0,0}

    -- markline_0 = {1950,410,300,8,425,0.8,1.0,0}
    -- markline_0["PLT"] = {0,0,0,0,0,0,0,0}
    -- markline_0["PLD"] = {0,0,0,0,0,0,0,0}

    -- markline_1 = {-1950,410,300,8,425,0.8,1.0,0}
    -- markline_1["PLT"] = {0,0,0,0,0,0,0,0}
    -- markline_1["PLD"] = {0,0,0,0,0,0,0,0}

    -- markline_2 = {1025,410,300,8,425,0.8,1.0,0}
    -- markline_2["PLT"] = {0,0,0,0,0,0,0,0}
    -- markline_2["PLD"] = {0,0,0,0,0,0,0,0}

    -- markline_3 = {-1025,410,300,8,425,0.8,1.0,0}
    -- markline_3["PLT"] = {0,0,0,0,0,0,0,0}
    -- markline_3["PLD"] = {0,0,0,0,0,0,0,0}

    -- stair = {0,300,300,1600,250,3.0,1.0,0}
    -- stair["PLT"] = {0,0,0,0,0,0,0,0}
    -- stair["PLD"] = {0,0,0,0,0,0,0,0}

    -- markline_4 = {0,150,400,8,950,1.0,1.0,0}
    -- markline_4["PLT"] = {0,0,0,0,0,0,0,0}
    -- markline_4["PLD"] = {0,0,0,0,0,0,0,0}

    -- markline_5 = {1950,150,400,8,950,1.0,1.0,0}
    -- markline_5["PLT"] = {0,0,0,0,0,0,0,0}
    -- markline_5["PLD"] = {0,0,0,0,0,0,0,0}

    -- markline_6 = {-1950,150,400,8,950,1.0,1.0,0}
    -- markline_6["PLT"] = {0,0,0,0,0,0,0,0}
    -- markline_6["PLD"] = {0,0,0,0,0,0,0,0}

    drawSolid(bg_color)

    camera_obj_draw(camera,stair,stair_image)
    camera_obj_draw(camera,ground,ground_image)

    drawOneImageUI(UI_upper,UI_upper_image)
    drawOneImageUI(OD_gauge_P1,OD_gauge_image)
    drawXInvertOneImageUI(OD_gauge_P2,OD_gauge_image)
    drawOneImageUI(ability_gauge_P1,ability_gauge_image)
    drawXInvertOneImageUI(ability_gauge_P2,ability_gauge_image)
    drawOneImageUI(health_gauge_P1,health_gauge_image)
    drawXInvertOneImageUI(health_gauge_P2,health_gauge_image)
    drawOneImageUI(heat_gauge_P1,heat_gauge_image)
    drawXInvertOneImageUI(heat_gauge_P2,heat_gauge_image)
    drawOneImageUI(OD_indicator_gauge_P1,overdrive_indicator_gauge_image)
    drawOneImageUI(OD_indicator_gauge_P2,overdrive_indicator_gauge_image)
    drawOneImageUI(risk_gauge_P1,risk_gauge_image)
    drawXInvertOneImageUI(risk_gauge_P2,risk_gauge_image)
    drawOneImageUI(match_point_gauge_P1,match_point_gauge_image)
    drawXInvertOneImageUI(match_point_gauge_P2,match_point_gauge_image)

    drawOneImageUI(OD_light_P1,ODLight_1_image)
    drawXInvertOneImageUI(OD_light_P2,ODLight_2_image)
    drawOneImageUI(round_timer1,time_number_0_image)
    drawOneImageUI(round_timer2,time_number_1_image)
    drawOneImageUI(ability_light_P1,ability_light_image)
    drawXInvertOneImageUI(ability_light_P2,ability_light_image)
    drawOneImageUI(SP_status_P1,positive_bouns_P1_image)
    drawOneImageUI(SP_status_P2,positive_bouns_P2_image)
    drawOneImageUI(health_light_P1,health_light_image)
    drawXInvertOneImageUI(health_light_P2,health_light_image)
    drawOneImageUI(health_fade_light_P1,health_light_image)
    drawXInvertOneImageUI(health_fade_light_P2,health_light_image)
    drawOneImageUI(heat_light_P1,heat_light_image)
    drawXInvertOneImageUI(heat_light_P2,heat_light_image)
    drawOneImageUI(heat_indicator_P1,heat_indicator_image)
    drawXInvertOneImageUI(heat_indicator_P2,heat_indicator_image)
    drawOneImageUI(OD_indicator_P1,overdrive_indicator_image)
    drawOneImageUI(OD_indicator_P2,overdrive_indicator_image)
    drawOneImageUI(OD_timer_P1,time_number_0_image)
    drawXInvertOneImageUI(OD_timer_P2,time_number_0_image)
    drawOneImageUI(risk_light_P1,risk_light_image)
    drawXInvertOneImageUI(risk_light_P2,risk_light_image)
    drawOneImageUI(match_point_light_P1,match_point_light_image)
    drawXInvertOneImageUI(match_point_light_P2,match_point_light_image)
    drawOneImageUI(round_counter_P1,round_counter_image)
    drawXInvertOneImageUI(round_counter_P2,round_counter_image)
end