local LocalPlayer = game.Players.LocalPlayer
local LocalPlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local Roact = require(game.ReplicatedStorage.Packages.Roact)

local Gui = require(script.gui.Gui)

Roact.mount(Gui, LocalPlayerGui)