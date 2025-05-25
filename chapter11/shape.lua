local Object = require("classic")
local Shape = Object.extend(Object)

function Shape.new(self, x, y)
    self.x = x
    self.y = y
    self.speed = 100
end

function Shape.update(self, dt)
    self.x = self.x + self.speed * dt
end

return Shape

