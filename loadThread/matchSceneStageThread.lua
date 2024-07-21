require "love.filesystem"
require "love.image"
local imageData = {}
imageData[0] = love.image.newImageData("asset/stage/alpha/ground.png")
imageData[1] = love.image.newImageData("asset/stage/alpha/markLine425.png")
imageData[2] = love.image.newImageData("asset/stage/alpha/markLine950.png")
imageData[3] = love.image.newImageData("asset/stage/alpha/stair.png")
love.thread.getChannel( 'image_2' ):push( imageData )