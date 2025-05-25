-- Lua turns this into Rectangle = Object.extend(Object)
local Shape = require("shape")
local Rectangle = Shape.extend(Shape)

-- Lua turns this into: function Rectangle.new(self)
function Rectangle:new(x, y, width, height)
    --self.test = math.random(1, 1000)
    Rectangle.super.new(self, x, y)
    self.width = width
    self.height = height
end

-- Lua turns this into function Rectangle.update(self, dt)
--function Rectangle:update(dt)
--    self.x = self.x + self.speed * dt
--end

-- Lua turns this into: function Rectangle.draw(self)
function Rectangle:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end

return Rectangle

