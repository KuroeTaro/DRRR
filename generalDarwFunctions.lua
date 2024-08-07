-- General functions 
function resolutionCorrection(length)
    local ratio = love.graphics.getWidth()/1600
    local result = length * ratio
    return result
end
function drawOneImageUI(obejct,image)
    local x = resolutionCorrection(obejct[1])
    local y = resolutionCorrection(obejct[2])
    local s = resolutionCorrection(obejct[3])
    love.graphics.setColor(1, 1, 1, obejct[4])
    love.graphics.draw(image,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
end 
function drawArrayImageUI(object,imageArray)
    local x = resolutionCorrection(object[1])
    local y = resolutionCorrection(object[2])
    local s = resolutionCorrection(object[3])
    love.graphics.setColor(1, 1, 1, object[4])
    love.graphics.draw(imageArray[object[5]],x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
end
function drawWithAlphaRetangle(retangle,object,image)
    local x = resolutionCorrection(retangle[1])
    local y = resolutionCorrection(retangle[2])
    local w = resolutionCorrection(retangle[6])
    local h = resolutionCorrection(retangle[7])
    local function myStencilFunction()
        love.graphics.rectangle("fill", x, y, w, h)
    end
    love.graphics.stencil(myStencilFunction, "replace", 1)
    local x = resolutionCorrection(object[1])
    local y = resolutionCorrection(object[2])
    local s = resolutionCorrection(object[3])
    love.graphics.setStencilTest("greater", 0)
    love.graphics.setColor(1, 1, 1, object[4])
    love.graphics.draw(image,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setStencilTest()
end
function inputDebugDraw()
    for i, v in ipairs(commandList) do
        love.graphics.print(v, 0, i*15-15)
        love.graphics.print(commandState[1][v], 100, i*15-15)
        love.graphics.print(commandState[2][v], 160, i*15-15)
    end 
end
function drawIconInCharSelect(object,imageObj,image,alpha)
    local x = resolutionCorrection(object[1])
    local y = resolutionCorrection(object[2])
    local s = resolutionCorrection(object[3])

    local res = love.graphics.newCanvas(object["res"][1],object["res"][2])

    love.graphics.setCanvas(res) 
    love.graphics.draw(image,imageObj[1],imageObj[2],0,imageObj[3],imageObj[3])
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(alpha)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()
    
    love.graphics.setColor(1, 1, 1, object[4])
    love.graphics.draw(res,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
end
function drawCharSelectInCharSelect(object,imageObj,textObj,image,text,alpha)
    local x = resolutionCorrection(object[1])
    local y = resolutionCorrection(object[2])
    local s = resolutionCorrection(object[3])

    local res = love.graphics.newCanvas(1650,455)
    love.graphics.setCanvas(res)
    love.graphics.setColor(24/255, 30/255, 39/255, 1)
    love.graphics.draw(alpha,0,0,0,1,1)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(text[object[5]],textObj[1],textObj[2],textObj["r"],textObj[3],textObj[3])
    love.graphics.draw(image[object[5]],imageObj[1],imageObj[2],imageObj["r"],imageObj[3],imageObj[3])
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(alpha,0,0,0,1,1)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()
    
    love.graphics.setColor(1, 1, 1, object[4])
    love.graphics.draw(res,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
end
function drawCharSelectInCharSelectAfterFlashIn(object,imageObj,textObj,image,text,alpha)
    local x = resolutionCorrection(object[1])
    local y = resolutionCorrection(object[2])
    local s = resolutionCorrection(object[3])

    local res = love.graphics.newCanvas(1650,455)
    love.graphics.setColor(24/255, 30/255, 39/255, 1)
    love.graphics.draw(alpha,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setCanvas(res)
    love.graphics.draw(text[object[5]],textObj[1],textObj[2],textObj["r"],textObj[3],textObj[3])
    love.graphics.draw(image[object[5]],imageObj[1],imageObj[2],imageObj["r"],imageObj[3],imageObj[3])
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(alpha,0,0,0,1,1)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()
    
    love.graphics.setColor(1, 1, 1, object[4])
    love.graphics.draw(res,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
end
function drawSecondGlowInCharSelect(glowAlphaPoint,chatSelectFractalNoiseShader,radialBlurShader,object)
    local x = resolutionCorrection(object[1])
    local y = resolutionCorrection(object[2])
    local s = resolutionCorrection(object[3])
    local canvas = love.graphics.newCanvas(1600,900)
    local canvasRadialBlur = love.graphics.newCanvas(1600,900)
    local canvasAlphaCom = love.graphics.newCanvas(1600,900)
    local alpha = love.graphics.newCanvas(1600,900)

    love.graphics.setCanvas(alpha)
    love.graphics.polygon("fill", glowAlphaPoint)
    love.graphics.setCanvas()

    love.graphics.setCanvas(canvas)
    love.graphics.setShader(chatSelectFractalNoiseShader)
    chatSelectFractalNoiseShader:send("time", love.timer.getTime())
    love.graphics.rectangle("fill", 0, 0, 1600, 900)
    love.graphics.setShader()
    love.graphics.setCanvas()

    love.graphics.setCanvas(canvasRadialBlur)
    love.graphics.setShader(radialBlurShader)
    radialBlurShader:send("start_Cood", { -230,-120 })
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(canvas, 0, 0)
    love.graphics.setShader()
    love.graphics.setCanvas(canvasRadialBlur)

    love.graphics.setCanvas(canvasAlphaCom)
    love.graphics.draw(canvasRadialBlur)
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(alpha)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()

    love.graphics.setBlendMode("add")
    love.graphics.setColor(1, 1, 1, object[4])
    love.graphics.draw(canvasAlphaCom,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setBlendMode("alpha")
end
function drawSolid(object)
    local alpha = love.graphics.newCanvas(1600,900)
    local x = resolutionCorrection(0)
    local y = resolutionCorrection(0)
    local s = resolutionCorrection(1)
    
    love.graphics.setCanvas(alpha)
    love.graphics.polygon("fill", 0,0,1600,0,1600,900,0,900)
    love.graphics.setCanvas()

    love.graphics.setColor(object[1],object[2],object[3], object[4])
    love.graphics.draw(alpha,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
end
function drawIconCover(object,imageArray)
    local x = resolutionCorrection(object[1])
    local y = resolutionCorrection(object[2])
    local s = resolutionCorrection(object[3])
    love.graphics.setBlendMode("add")
    love.graphics.setColor(1, 1, 1, object[6])
    love.graphics.draw(imageArray[object[5]],x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setBlendMode("alpha")
end
function drawXInvertOneImageUI(obejct,image)
    local x = resolutionCorrection(obejct[1])
    local y = resolutionCorrection(obejct[2])
    local s = resolutionCorrection(obejct[3])
    love.graphics.setColor(1, 1, 1, obejct[4])
    love.graphics.draw(image,x,y,0,-s,s)
    love.graphics.setColor(1, 1, 1, 1)
end 
function camera_obj_draw(camera,object,image)
    -- object x y z 图片素材宽度 图片素材高度 sx sy
    -- x y z 锚点都在中心
    -- camera x y z
    local scale = 800/(object[3]-camera[3])
    local coodRes = {scale*(object[1]-camera[1])+800-scale/2*(object[4]*object[6]),scale*(object[2]-camera[2])+450-scale/2*(object[5]*object[7])}
    local x = resolutionCorrection(coodRes[1])
    local y = resolutionCorrection(coodRes[2])
    local sx = resolutionCorrection(scale*object[6])
    local sy = resolutionCorrection(scale*object[7])
    love.graphics.draw(image,x,y,0,sx,sy)
end
function camera_obj_array_draw(camera,object,image)
    -- object x y z 图片素材宽度 图片素材高度 sx sy frame
    -- x y z 锚点都在中心
    -- camera x y z
    local scale = 800/(object[3]-camera[3])
    local coodRes = {scale*(object[1]-camera[1])+800-scale/2*(object[4]),scale*(object[2]-camera[2])+450-scale/2*(object[5])}
    local x = resolutionCorrection(coodRes[1])
    local y = resolutionCorrection(coodRes[2])
    local sx = resolutionCorrection(scale*object[6])
    local sy = resolutionCorrection(scale*object[7])
    love.graphics.draw(image[object[9]],x,y,0,sx,sy)
end