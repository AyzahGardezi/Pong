Paddle = Class{}

function Paddle:init(x, y, width, height)
    self.x = x
    self.y = y 
    self.width = width
    self.height = height
    self.dy = 0
end

function Paddle:update(dt)
    -- Calculate new position based on velocity
    self.y = self.y + self.dy * dt * 1.1
    
    -- Ensure the paddle stays within the screen boundaries
    self.y = math.max(0, math.min(VIRTUAL_HEIGHT - self.height, self.y))
end

function Paddle:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end