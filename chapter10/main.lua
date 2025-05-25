function love.load()
    x = 30
    y = 50

    tick = require("tick")

    drawRectangle = false

    tick.delay(function () drawRectangle = true end, 2)
end

function love.draw()
    if drawRectangle then 
        love.graphics.rectangle("fill", x, y, 300, 200)
    end
end

function love.keypressed(key)
    if key == "space" then
        x = math.random(100, 500)
        y = math.random(100, 500)
    end
end

function love.update(dt)
    tick.update(dt)
end


