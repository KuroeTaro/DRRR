function timerInCharSelect(ssvValue,timerObject1,timerObject2)
    ssvValue["frameTimer"] = ssvValue["frameTimer"] + 1
    -- print(ssvValue["frameTimer"])
    if ssvValue["frameTimer"] >= 60 then
        ssvValue["frameTimer"] = 0
        if ssvValue["timer"][2] == 0 then
            if ssvValue["timer"][1] > 0 then
                ssvValue["timer"][1] = ssvValue["timer"][1] - 1
                ssvValue["timer"][2] = 9
            end
        else
            ssvValue["timer"][2] = ssvValue["timer"][2] - 1
        end
        timerObject1[5] = ssvValue["timer"][1]
        timerObject2[5] = ssvValue["timer"][2]
    end
end

