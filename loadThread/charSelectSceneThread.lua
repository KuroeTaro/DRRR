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

imageData[16] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/ANRI.dds")
imageData[17] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/CKG.dds")
imageData[18] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/ERIKAWK3.dds")
imageData[19] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/IZY.dds")
imageData[20] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/KTC.dds")
imageData[21] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SHINRA.dds")
imageData[22] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SRT.dds")
imageData[23] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SZO.dds")

imageData[24] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/ANRITextLeft.dds")
imageData[25] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/CKGTextLeft.dds")
imageData[26] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/ERIKAWK3TextLeft.dds")
imageData[27] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/IZYText.dds")
imageData[28] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/KTCTextLeft.dds")
imageData[29] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SHINRATextLeft.dds")
imageData[30] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SRTTextLeft.dds")
imageData[31] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SZOText.dds")

imageData[32] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/ANRITextRight.dds")
imageData[33] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/CKGTextRight.dds")
imageData[34] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/ERIKAWK3TextRight.dds")
imageData[35] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/KTCTextRight.dds")
imageData[36] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SHINRATextRight.dds")
imageData[37] = love.image.newCompressedData("asset/UI/CharSelectScene/CharSelect/SRTTextRight.dds")

for i = 0,17 do
    imageData[38+i] = love.image.newCompressedData("asset/UI/CharSelectScene/FirstRing/"..i..".dds")
end

imageData[56] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/0.dds")
imageData[57] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/1.dds")
imageData[58] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/2.dds")
imageData[59] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/3.dds")
imageData[60] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/4.dds")
imageData[61] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/5.dds")
imageData[62] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/6.dds")
imageData[63] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/7.dds")
imageData[64] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/8.dds")
imageData[65] = love.image.newCompressedData("asset/UI/CharSelectScene/movieCover/9.dds")

imageData[66] = love.image.newImageData("asset/UI/CharSelectScene/charSelectBG.png")
imageData[67] = love.image.newImageData("asset/UI/CharSelectScene/charSelectLeftAlpha.png")
imageData[68] = love.image.newImageData("asset/UI/CharSelectScene/charSelectRightAlpha.png")
imageData[69] = love.image.newImageData("asset/UI/CharSelectScene/FirstGlow.png")
imageData[70] = love.image.newImageData("asset/UI/CharSelectScene/SecondRing.png")

imageData[71] = love.image.newImageData("asset/UI/CharSelectScene/ControlMethod1.png")
imageData[72] = love.image.newImageData("asset/UI/CharSelectScene/ControlMethod2.png")
imageData[73] = love.image.newImageData("asset/UI/CharSelectScene/BarMark.png")

love.thread.getChannel( 'image' ):push( imageData )