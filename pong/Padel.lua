Padel = Class {}
function Padel:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dy = 0
end

function Padel:update(dt)
    -- 1. Apply the movement velocity first
    self.y = self.y + self.dy * dt

    self.y = math.max(0, math.min(VIRTUAL_HEIGHT - self.height, self.y))
end

function Padel:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end