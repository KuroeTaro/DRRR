function branchToOutLogic(playerID)
    initLinerAnimationWithOut(coverArray[playerID],charSelectFlashOutAnim)
    initLinerAnimationWithOut(charArray[playerID],charSelectCharMoveOutAnim)
    initLinerAnimationWithOut(textArray[playerID],charSelectTextMoveOutAnim)
    initLinerAnimationWithOut(iconCoverArray[playerID],charSelectFlashOutAnim)
    charArray[playerID][1], 
    charArray[playerID][2], 
    charArray[playerID]["r"]
     = charPosArray[playerID][selectedChar[playerID]][1]-60,
     charPosArray[playerID][selectedChar[playerID]][2],
     charPosArray[playerID][selectedChar[playerID]][3]
    textArray[playerID][1], 
    textArray[playerID][2], 
    textArray[playerID]["r"]
     = textPosArray[playerID][selectedChar[playerID]][1]-226,
     textPosArray[playerID][selectedChar[playerID]][2],
     textPosArray[playerID][selectedChar[playerID]][3]
    coverArray[playerID][4] = 1
    coverArray[playerID]["state"] = "flashOut"
    iconCoverArray[playerID][1], 
    iconCoverArray[playerID][2]
     = SSV["iconCoverPos"][selectedChar[playerID]][1],
     SSV["iconCoverPos"][selectedChar[playerID]][2]
    iconCoverArray[playerID][4] = 1
end
function branchToInLogic(playerID)
    initLinerAnimationWithOut(coverArray[playerID],charSelectFlashInAnim)
    initLinerAnimationWithOut(charArray[playerID],charSelectCharMoveInAnim)
    initLinerAnimationWithOut(textArray[playerID],charSelectTextMoveInAnim)
    initLinerAnimationWithOut(iconCoverArray[playerID],charSelectFlashInAnim)
    charArray[playerID][1], 
    charArray[playerID][2], 
    charArray[playerID]["r"]
     = charPosArray[playerID][selectedChar[playerID]][1],
     charPosArray[playerID][selectedChar[playerID]][2],
     charPosArray[playerID][selectedChar[playerID]][3]
    textArray[playerID][1], 
    textArray[playerID][2], 
    textArray[playerID]["r"]
     = textPosArray[playerID][selectedChar[playerID]][1],
     textPosArray[playerID][selectedChar[playerID]][2],
     textPosArray[playerID][selectedChar[playerID]][3]
    coverArray[playerID][4] = 0
    coverArray[playerID]["state"] = "flashIn"
    iconCoverArray[playerID][1], 
    iconCoverArray[playerID][2]
     = SSV["iconCoverPos"][selectedChar[playerID]][1],
     SSV["iconCoverPos"][selectedChar[playerID]][2]
    iconCoverArray[playerID][4] = 0
end
function branchToSelectedLogic(playerID)
    initLinerAnimationWithOut(coverArray[playerID],charSelectFlashOut75Anim)
    initFrameAnimationWithOut(controlSelectTextArray[playerID],charSelectFlashInAnim)
    initFrameAnimationWithOut(controlSelectBarArray[playerID],charSelectFlashInAnim)
    controlSelectTextArray[playerID][4] = 0
    controlSelectBarArray[playerID][4] = 0
    coverArray[playerID][4] = 1
    coverArray[playerID]["state"] = "selecting"
end
function branchToUnselectedLogic(playerID)
    initLinerAnimationWithOut(coverArray[playerID],charSelectFlashIn75Anim)
    initFrameAnimationWithOut(controlSelectTextArray[playerID],charSelectFlashOutAnim)
    initFrameAnimationWithOut(controlSelectBarArray[playerID],charSelectFlashOutAnim)
    controlSelectTextArray[playerID][4] = 1
    controlSelectBarArray[playerID][4] = 1
    coverArray[playerID][4] = 0.25
    coverArray[playerID]["state"] = "unselecting"
end
function branchToLockedLogic(playerID)
    initLinerAnimationWithOut(coverArray[playerID],charSelectLockingAnim)
    initFrameAnimationWithOut(controlSelectTextArray[playerID],charSelectFlashOutAnim)
    initFrameAnimationWithOut(controlSelectBarArray[playerID],charSelectFlashOutAnim)
    initLinerAnimationWithOut(iconCoverArray[playerID],charSelectLockingAnim1)
    controlSelectTextArray[playerID][4] = 1
    controlSelectBarArray[playerID][4] = 1
    coverArray[playerID][4] = 0.25
    coverArray[playerID]["state"] = "locking"
end

function O1CharChangeFunction(playerID)
    local thisFunction = O1CharChangeSwtich[coverArray[playerID]["state"]]
    if thisFunction then thisFunction(playerID) end
end