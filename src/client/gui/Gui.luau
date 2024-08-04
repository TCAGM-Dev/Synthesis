local Roact = require(game.ReplicatedStorage.Packages.Roact)

local PageRouter = require(script.Parent.PageRouter)

local Menu = require(script.Parent.Menu)
local Armory = require(script.Parent.Armory)

return Roact.createElement(PageRouter, {
    defaultPage = "Menu"
}, {
    Menu = Menu,
    Armory = Armory
})