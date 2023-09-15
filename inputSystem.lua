function inputLoad()
    currentCommand = {}
    commandState = {}
    
    currentCommand[1] = {}
    commandState[1] = {}
    currentCommand[2] = {}
    commandState[2] = {}

    joystickList = {}

    controllerState = {0,0,0,0}

    joystickList = love.joystick.getJoysticks()

    --加载手柄按键 键盘按键 手柄z轴 对于指令的表
    commandList = {"Up","Down","Left","Right","A","B","C","D","Set","Switch","back","start",
    "Block","Dash"}
    buttomList = {"dpup","dpdown","dpleft","dpright","x","y","b","a","leftshoulder","rightshoulder",
    "back","start"}
    axisList = {"triggerleft","triggerright"}
    keyList = {"w","s","a","d","j","i","l","k","lshift","space","escape","return","q","e"}

    newControllerIn = false
    
    for i=1,14 do
        commandState[1][commandList[i]] = "Released"
        commandState[2][commandList[i]] = "Released"
    end

    --初始化现指令数组
    for i = 1,14 do
        currentCommand[1][commandList[i]] = 0
        currentCommand[2][commandList[i]] = 0
    end
end

function inputUpdate()
    --加载手柄
    updateController()

    --获得所有指令的现在布尔值和上一帧布尔值
    --并且赋值到currentCommand和perCommand
    if joystickList[1] == nil then 
        getCurrentCommand(currentCommand[1],joystickList[1])
        for i = 1,14 do
            currentCommand[2][commandList[i]] = 0
        end
    else 
        getCurrentCommand(currentCommand[1],joystickList[1])
        getCurrentCommand(currentCommand[2],joystickList[2])
    end

    --输入状态机
    inputStateMachine(commandState[1],currentCommand[1])
    inputStateMachine(commandState[2],currentCommand[2])
end

--将手柄按键的值转化为指令表内的数值
function joystickButtomCommand(js,ButtomName)
    if js ~= nil then
        result = js:isGamepadDown(ButtomName)
    else result = false end 
    return result 
end 

--将手柄扳机的值转化为指令表内的数值
function joystickAxisCommand(js,AxisName)
    if js ~= nil then 
        result = js:getGamepadAxis(AxisName)
    else result = 0.0 end
    return result
end 

--加载手柄
function updateController()
    joystickList = love.joystick.getJoysticks()
    
    controllerState[2] = controllerState[0]
    controllerState[3] = controllerState[1]

    if joystickList[1] == nil then 
        controllerState[0] = 0
    else 
        controllerState[0] = 1
    end 

    if joystickList[2] == nil then 
        controllerState[1] = 0
    else 
        controllerState[1] = 1
    end 
end

--获得所有指令的现在布尔值和上一帧布尔值（键盘）
function getCurrentCommand(currentCommand,joystick)
    --(键盘)
    if joystick == nil then
        for i = 1,14 do
            if love.keyboard.isDown(keyList[i]) then
                currentCommand[commandList[i]] = 1
            else currentCommand[commandList[i]] = 0
            end
        end
    else
        for i = 1,12 do
            if joystickButtomCommand(joystick,buttomList[i]) then
                currentCommand[commandList[i]] = 1
            else currentCommand[commandList[i]] = 0
            end
        end

        for i = 1,2 do
            if joystickAxisCommand(joystick,axisList[i]) > 0.2 then
                currentCommand[commandList[i+12]] = 1
            else currentCommand[commandList[i+12]] = 0
            end
        end
    end
end

--输入状态机
function inputStateMachine(commandState,currentCommand)
    for i=1,14 do
        local switch = 
        {
            ["Released"] = function()
                if currentCommand[commandList[i]] == 1 then 
                    commandState[commandList[i]] = "Pressing"
                end
            end,
            ["Releasing"] = function()
                if currentCommand[commandList[i]] == 1 then 
                    commandState[commandList[i]] = "Pressing"
                else
                    commandState[commandList[i]] = "Released"
                end
            end,
            ["Pressing"] = function()
                if currentCommand[commandList[i]] == 1 then 
                    commandState[commandList[i]] = "Holding"
                else
                    commandState[commandList[i]] = "Releasing"
                end
            end,
            ["Holding"] = function()
                if currentCommand[commandList[i]] == 0 then 
                    commandState[commandList[i]] = "Releasing"
                end
            end
        }
        local thisFunction = switch[commandState[commandList[i]]]
        if thisFunction then thisFunction() end
    end
end
