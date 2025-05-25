-- Chapter 8: Objects
-- Featuring tables filled with tables
local listOfRectangles = {}

function love.load()
end

function createRect()
    local rect = {}

    rect.x = 100
    rect.y = 100

    --These two are the same
    --rect["width"] = 100
    rect.width = 70
    rect.height = 90

    rect.speed = 100

    table.insert(listOfRectangles, rect)
end

function love.keypressed(key)
    if key == "space" then
        createRect()
    end
end

function love.update(dt)
    for i,v in ipairs(listOfRectangles) do
        v.x = v.x + v.speed * dt
    end
end

function love.draw(dt)
    for i,v in ipairs(listOfRectangles) do
        love.graphics.rectangle("line", v.x, v.y, v.width, v.height)
    end
end
