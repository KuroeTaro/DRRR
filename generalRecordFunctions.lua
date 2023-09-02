function recordTimerLoad()
    frameTimer = 0
end
function recordTimerCounter()
    frameTimer = frameTimer + 1 
    if frameTimer >= 60 then 
        frameTimer = 0
        gameDuration[6] = gameDuration[6] + 1 -- 秒
    end 
    if gameDuration[6] >= 10 then 
        gameDuration[6] = 0
        gameDuration[5] = gameDuration[5] + 1 -- 10秒
    end
    if gameDuration[5] >= 6 then 
        gameDuration[5] = 0
        gameDuration[4] = gameDuration[4] + 1 -- 分
    end
    if gameDuration[4] >= 10 then 
        gameDuration[4] = 0
        gameDuration[3] = gameDuration[3] + 1 -- 10分
    end
    if gameDuration[3] >= 6 then 
        gameDuration[3] = 0
        gameDuration[2] = gameDuration[2] + 1 -- 时
    end
    if gameDuration[2] >= 10 then 
        gameDuration[2] = 0
        gameDuration[1] = gameDuration[1] + 1 -- 10时
    end
    if gameDuration[1] >= 10 then 
        gameDuration[1] = 0
        gameDuration[2] = 0
        gameDuration[3] = 0
        gameDuration[4] = 0
        gameDuration[5] = 0
        gameDuration[6] = 0
    end
end
function applyRecord()
    timeNumber6[5] = gameDuration[1]
    timeNumber5[5] = gameDuration[2]
    timeNumber4[5] = gameDuration[3]
    timeNumber3[5] = gameDuration[4]
    timeNumber2[5] = gameDuration[5]
    timeNumber1[5] = gameDuration[6]
end