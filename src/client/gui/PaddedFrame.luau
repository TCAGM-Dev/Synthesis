local Roact = require(game.ReplicatedStorage.Packages.Roact)

local PaddedFrame = Roact.Component:extend("PaddedFrame")

function PaddedFrame:render()
    local Props = table.clone(self.props)
    Props[Roact.Children] = nil
    Props.padding = nil

    return Roact.createElement("Frame", Props, {
        Padding = Roact.createElement("Frame", {
            BackgroundTransparency = 1,

            AnchorPoint = Vector2.new(.5, .5),
            Position = UDim2.fromScale(.5, .5),

            Size = UDim2.new(1, -self.props.padding*2, 1, -self.props.padding*2)
        }, self.props[Roact.Children])
    })
end

return PaddedFrame