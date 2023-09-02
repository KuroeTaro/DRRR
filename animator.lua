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
        for i = 1,4 do
            object["linerDelta"][i] = object["LA"][object["LCT"]][i]
        end
    end

    if object["LCT"] <= object["LA"]["length"] then
        for i = 1,4 do
            object[4][i] =  object[4][i] + object["linerDelta"][i]
        end
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