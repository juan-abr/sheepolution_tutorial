function love.load()
    x = 100
end

function love.draw()
    love.graphics.rectangle("line", x, 50, 200, 150)
end

function love.update(dt)
    x = x + 5 * dt
end

