require "love.filesystem"
require "love.image"
local imageData = {}
for i = 0,49 do
    imageData[i] = love.image.newCompressedData("asset/UI/StartScene/BGloop/"..i..".dds")
end
imageData[50] = love.image.newImageData("asset/UI/StartScene/Shutter.png")
love.thread.getChannel( 'image' ):push( imageData )