local Roact = require(game.ReplicatedStorage.Packages.Roact)

local PaddedFrame = require(script.Parent.PaddedFrame)

return Roact.createElement("ScreenGui", {
    IgnoreGuiInset = true
}, {
    Frame = Roact.createElement(PaddedFrame, {
        padding = 10
    })
})