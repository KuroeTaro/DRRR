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

    drawSecondGlowInCharSelect(glowAlphaPoint,fractalNoiseShader,radialBlurShader,continousGlow)
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

    drawSecondGlowInCharSelect(glowAlphaPoint,fractalNoiseShader,radialBlurShader,continousGlow)
    drawSolid(solidColor)
end