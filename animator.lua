-- general function
function frameAnimator(object)
    if  object["FA"][object["FCT"]] ~= nil then 
        if object["FCT"] <= object["FA"]["length"] then
            for i = 1,5 do
                object[i] =  object[i] + object["FA"][object["FCT"]][i]
            end
        end
    end    
    
    if object["FCT"] <= object["FA"]["length"] then
        object["FCT"] = object["FCT"] + 1
    end

    if object["FA"]["loopType"] == "loop" and object["FCT"] > object["FA"]["length"]  then
        object["FCT"] = 0
    end
end
function linerAnimator(object)
    if  object["LA"][object["LCT"]] ~= nil then 
        for i = 1,5 do
            object["linerDelta"][i] = object["LA"][object["LCT"]][i]
        end
    end

    if object["LCT"] <= object["LA"]["length"] then
        for i = 1,5 do
            object[i] =  object[i] + object["linerDelta"][i]
        end
        object["LCT"] = object["LCT"] + 1
    end

    if object["LA"]["loopType"] == "loop" and object["LCT"] > object["LA"]["length"]  then
        object["LCT"] = 0
    end
end

function pointLinerAnimator(object,animation,outerEffect)
    -- defultObject = {0,0,0,0,0}
    -- defultObject["PLT"] = {0,0,0,0,0}
    -- defultObject["PLD"] = {0,0,0,0,0}
    
    -- defultAnimation = {}
    ---- defultAnimation[x][1]表示当前点位置，defultAnimation[x][2]表示下一个点所在时间。
    -- defultAnimation[0] = {0,9}
    -- defultAnimation[9] = {23,12}
    -- defultAnimation[12] = {2,0}
    -- defultAnimation["prpty"] = 1
    -- defultAnimation["length"] = 12
    -- defultAnimation["loopType"] = "loop"

    if object["PLT"][animation["prpty"]] >= animation["length"] and animation["loopType"] == "loop" then
        object["PLT"][animation["prpty"]] = 0
    end

    local thisPLT = object["PLT"][animation["prpty"]]

    if animation[thisPLT] ~= nil then 
        local nextTime = animation[thisPLT][2]
        local nextValue = animation[nextTime][1]
        local currentTime = thisPLT
        local currentValue = animation[thisPLT][1]

        object["PLD"][animation["prpty"]] = (nextValue - currentValue)/(nextTime - currentTime)
    end

    -- local finalDelta = object["PLD"][animation["prpty"]] + outerEffect[animation["prpty"]]
    local finalDelta = object["PLD"][animation["prpty"]]

    if object["PLT"][animation["prpty"]] < animation["length"] then
        object[animation["prpty"]] =  object[animation["prpty"]] + finalDelta
		object["PLT"][animation["prpty"]] = object["PLT"][animation["prpty"]] + 1
    end
end 

function initFrameAnimationWith(object,animation)
    object["FA"] = animation 
    object["FCT"] = 0 
    frameAnimator(object)
end
function initLinerAnimationWith(object,animation)
    object["LA"] = animation 
    object["LCT"] = 0 
    linerAnimator(object)
end
function initFrameAnimationWithOut(object,animation)
    object["FA"] = animation 
    object["FCT"] = 0 
end
function initLinerAnimationWithOut(object,animation)
    object["LA"] = animation 
    object["LCT"] = 0 
end
function maskPointAnimator(object)
    if  object["LA"][object["LCT"]] ~= nil then 
        for i = 1,12 do
            object["linerDelta"][i] = object["LA"][object["LCT"]][i]
        end
    end

    if object["LCT"] <= object["LA"]["length"] then
        for i = 1,12 do
            object[i] =  object[i] + object["linerDelta"][i]
        end
        object["LCT"] = object["LCT"] + 1
    end
end
function glowTransAnimator(object)
    if  object["LA"][object["LCT"]] ~= nil then 
        object["linerDelta"] = object["LA"][object["LCT"]]
    end

    if object["LCT"] <= object["LA"]["length"] then
        object[4] =  object[4] + object["linerDelta"]
        object["LCT"] = object["LCT"] + 1
    end

    if object["LA"]["loopType"] == "loop" and object["LCT"] > object["LA"]["length"]  then
        object["LCT"] = 0
    end
end
function audioAnimator(object)
    if  object["LA"][object["LCT"]] ~= nil then 
        object["linerDelta"] = object["LA"][object["LCT"]]
    end

    if object[0] <= 0 then
        object[0] = 0
    end

    if object["LCT"] <= object["LA"]["length"] then
        object[0] =  object[0] + object["linerDelta"]*object["Scal"]
        object["LCT"] = object["LCT"] + 1
    end
end
