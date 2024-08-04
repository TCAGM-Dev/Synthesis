local CharacterGenerator = {}

function CharacterGenerator.generate(player: Player)
    return game.StarterPlayer.StarterCharacter:Clone()
end

return CharacterGenerator