local Roact = require(game.ReplicatedStorage.Packages.Roact)

local PageRouter = require(script.Parent.PageRouter)
local PageLinkButton = require(script.Parent.PageLinkButton)
local TextButton = require(script.Parent.TextButton)
local PaddedFrame = require(script.Parent.PaddedFrame)

local deployFunction: RemoteFunction = game.ReplicatedStorage:WaitForChild("Events"):WaitForChild("Deploy")

return Roact.createElement("ScreenGui", {
    IgnoreGuiInset = false
}, {
    Frame = Roact.createElement(PaddedFrame, {
        padding = 10,
        BackgroundTransparency = 1,

        Size = UDim2.fromScale(1, 1)
    }, {
        DeployButton = Roact.createElement(TextButton, {
            Text = "Deploy",

            Size = UDim2.fromOffset(175, 45),
            AnchorPoint = Vector2.new(.5, 1),
            Position = UDim2.fromScale(.5, 1),

            [Roact.Event.Activated] = function()
                
            end
        }),
        ArmoryButton = Roact.createElement(PageLinkButton, {
            Text = "Armory",

            Size = UDim2.fromOffset(175, 45),
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.fromScale(0, 1),
            
            target = "Armory"
        })
    })
})