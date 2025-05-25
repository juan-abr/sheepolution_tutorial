function love.load()
    x = 100
end

function love.draw()
    love.graphics.rectangle("line", x, 50, 200, 150)
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        x = x + 100 * dt
    elseif love.keyboard.isDown("left") then
        x = x - 100 * dt
    end
end

