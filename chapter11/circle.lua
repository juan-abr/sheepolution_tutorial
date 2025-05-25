local Shape = require("shape")
local Circle = Shape.extend(Shape)

function Circle.new(self, x, y, radius)
    Circle.super.new(self, x, y)
    self.radius = radius
end

function Circle:draw()
    love.graphics.circle("line", self.x, self.y, self.radius)
end

return Circle
