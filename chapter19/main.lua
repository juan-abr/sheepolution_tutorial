function love.load()
    song = love.audio.newSource("song.ogg", "stream")
    song:setLooping(true)
    love.audio.play(song)
    --or song:play()
    
    sfx = love.audio.newSource("sfx.ogg", "static")
end

function love.keypressed(key)
    if key == "space" then
        sfx:play()
    end
end

