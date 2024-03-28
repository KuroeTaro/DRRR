require "love.filesystem"
require "love.image"
local imageData = {}
imageData[0] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/ANRI.png")
imageData[1] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/CKG.png")
imageData[2] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/ERIKAWK3.png")
imageData[3] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/IZY.png")
imageData[4] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/KTC.png")
imageData[5] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/SHINRA.png")
imageData[6] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/SRT.png")
imageData[7] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconAlpha/SZO.png")

imageData[8] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/ANRI.png")
imageData[9] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/CKG.png")
imageData[10] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/ERIKAWK3.png")
imageData[11] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/IZY.png")
imageData[12] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/KTC.png")
imageData[13] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/SHINRA.png")
imageData[14] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/SRT.png")
imageData[15] = love.image.newImageData("asset/UI/CharSelectScene/CharIcon/IconImage/SZO.png")

imageData[16] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/ANRI.png")
imageData[17] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/CKG.png")
imageData[18] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/ERIKAWK3.png")
imageData[19] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/IZY.png")
imageData[20] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/KTC.png")
imageData[21] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SHINRA.png")
imageData[22] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SRT.png")
imageData[23] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SZO.png")

imageData[24] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/ANRITextLeft.png")
imageData[25] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/CKGTextLeft.png")
imageData[26] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/ERIKAWK3TextLeft.png")
imageData[27] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/IZYText.png")
imageData[28] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/KTCTextLeft.png")
imageData[29] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SHINRATextLeft.png")
imageData[30] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SRTTextLeft.png")
imageData[31] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SZOText.png")

imageData[32] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/ANRITextRight.png")
imageData[33] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/CKGTextRight.png")
imageData[34] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/ERIKAWK3TextRight.png")
imageData[35] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/KTCTextRight.png")
imageData[36] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SHINRATextRight.png")
imageData[37] = love.image.newImageData("asset/UI/CharSelectScene/CharSelect/SRTTextRight.png")

for i = 0,17 do
    imageData[38+i] = love.image.newImageData("asset/UI/CharSelectScene/FirstRing/"..i..".png")
end

imageData[56] = love.image.newImageData("asset/UI/CharSelectScene/movieCover/0.png")
imageData[57] = love.image.newImageData("asset/UI/CharSelectScene/movieCover/0.png")
imageData[58] = love.image.newImageData("asset/UI/CharSelectScene/movieCover/0.png")

imageData[59] = love.image.newImageData("asset/UI/CharSelectScene/charSelectBG.png")
imageData[60] = love.image.newImageData("asset/UI/CharSelectScene/charSelectLeftAlpha.png")
imageData[61] = love.image.newImageData("asset/UI/CharSelectScene/charSelectRightAlpha.png")
imageData[62] = love.image.newImageData("asset/UI/CharSelectScene/FirstGlow.png")
imageData[63] = love.image.newImageData("asset/UI/CharSelectScene/SecondRing.png")

imageData[64] = love.image.newImageData("asset/UI/CharSelectScene/ControlMethod1.png")
imageData[65] = love.image.newImageData("asset/UI/CharSelectScene/ControlMethod2.png")
imageData[66] = love.image.newImageData("asset/UI/StartScene/Config/BarMark.png")

love.thread.getChannel( 'image' ):push( imageData )