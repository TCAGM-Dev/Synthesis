local Roact = require(game.ReplicatedStorage.Packages.Roact)

local PageRouter = Roact.Component:extend("PageRouter")

local Context = Roact.createContext(nil)

function PageRouter:init(props)
    function self.updatePage(page: string)
        self:setState({
            activePage = page
        })
    end

    self.updatePage(self.props.defaultPage)
end

function PageRouter:render()
    return Roact.createElement(Context.Provider, {
        value = function(page: string)
            self:setState({
                activePage = page
            })
        end
    }, {
        self.props[Roact.Children][self.state.activePage]
    })
end

PageRouter.Context = Context

return PageRouter