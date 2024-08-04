local Util = require(game.ReplicatedStorage.Packages.Util)
local CharacterGenerator = require(script.CharacterGenerator)

local CharacterFolder = Util.createInstance("Folder", {
    Name = "Characters",
    Parent = game.Workspace
})

function spawnPlayer(player: Player)
    local char = CharacterGenerator.generate(player)
    char.Parent = CharacterFolder
    player.Character = char
end

Util.createInstance("Folder", {
    Name = "Events",
    Parent = game.ReplicatedStorage
}, {
    Util.createInstance("RemoteFunction", {
        Name = "Deploy",
        OnServerInvoke = function(player: Player)
            if player.Character ~= nil then
                return false
            end
            spawnPlayer(player)
            return true
        end
    })
})