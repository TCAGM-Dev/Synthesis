local Roact = require(game.ReplicatedStorage.Packages.Roact)
local Util = require(game.ReplicatedStorage.Packages.Util)

local PageRouter = require(script.Parent.PageRouter)
local TextButton = require(script.Parent.TextButton)

local PageLinkButton = Roact.Component:extend("PageLinkButton")

function PageLinkButton:render()
    return Roact.createElement(PageRouter.Context.Consumer, {
        render = function(updatePage)
            local newProps = table.clone(self.props)
            newProps[Roact.Event.Activated] = function()
                updatePage(self.props.target)
            end
            newProps.target = nil
            return Roact.createElement(TextButton, newProps)
        end
    })
end

return PageLinkButton