local Roact = require(game.ReplicatedStorage.Packages.Roact)
local Util = require(game.ReplicatedStorage.Packages.Util)

local TextButton = Roact.Component:extend("TextButton")

function TextButton:render()
    local childs = table.clone(self.props[Roact.Children] or {})
    table.insert(childs, Roact.createElement("UICorner", {
        CornerRadius = UDim.new(0, 10)
    }))
    
    local Props = table.clone(self.props)
    Props.BackgroundColor3 = Color3.fromRGB(18, 107, 209)
    Props.TextColor3 = Color3.new(1, 1, 1)
    Props.Font = Enum.Font.GothamMedium
    Props.TextSize = 30

    return Roact.createElement("TextButton", Props, childs)
end

return TextButton