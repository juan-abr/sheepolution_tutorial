function love.load()
    circle = {}

    circle.x = 100
    circle.y = 100
    circle.radius = 25
    circle.speed = 200

    arrow = {}

    arrow.x = 200
    arrow.y = 200
    arrow.speed = 300
    arrow.angle = 0
    arrow.image = love.graphics.newImage("arrow_right.png")
    arrow.origin_x = arrow.image:getWidth() / 2
    arrow.origin_y = arrow.image:getHeight() / 2
end

function love.update(dt)
    mouse_x, mouse_y = love.mouse.getPosition()

    -- FOR CIRCLES ONLY
    --angle = math.atan2(mouse_y - circle.y, mouse_x - circle.x)
    --cos = math.cos(angle)
    --sin = math.sin(angle)

    --local distance = getDistance(circle.x, circle.y, mouse_x, mouse_y)

    --if distance < 400 then
    --    circle.x = circle.x + circle.speed * cos * dt
    --    circle.y = circle.y + circle.speed * sin * dt
    --end

    -- FOR ARROWS ONLY
    arrow.angle = math.atan2(mouse_y - arrow.y, mouse_x - arrow.x)
    arrow.cos = math.cos(arrow.angle)
    arrow.sin = math.sin(arrow.angle)

    arrow.x = arrow.x + arrow.speed * arrow.cos * dt
    arrow.y = arrow.y + arrow.speed * arrow.sin * dt
end

function love.draw()
    -- FOR CIRCLES ONLY
    --love.graphics.circle("line", circle.x, circle.y, circle.radius)
    --love.graphics.print("angle: " .. angle, 10, 10)

    -- Angles
    --love.graphics.line(circle.x, circle.y, mouse_x, circle.y)
    --love.graphics.line(circle.x, circle.y, circle.x, mouse_y)
    --love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)

    -- Distance
    --love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)
    --love.graphics.line(circle.x, circle.y, mouse_x, circle.y)
    --love.graphics.line(mouse_x, mouse_y, mouse_x, circle.y)

    --local distance = getDistance(circle.x, circle.y, mouse_x, mouse_y)
    --love.graphics.circle("line", circle.x, circle.y, distance)

    -- FOR ANGLES ONLY
    love.graphics.draw(arrow.image, arrow.x, arrow.y, arrow.angle, 1, 1,
        arrow.origin_x, arrow.origin_y)
    love.graphics.circle("fill", mouse_x, mouse_y, 5)
end

function getDistance(x1, y1, x2, y2)
    local horizontal_distance = x1 - x2
    local vertical_distance = y1 - y2

    local a = horizontal_distance ^2
    local b = vertical_distance ^2

    local c = a + b
    local distance = math.sqrt(c)
    return distance
end

