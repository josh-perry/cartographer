local cartographer = require 'cartographer'

local testMap = cartographer.load 'test.lua'

local cx, cy, cw, ch = 0, 0, 50, 50
testMap:setCullSize(cw, ch)

function love.update(dt)
	if love.keyboard.isDown 'left' then cx = cx - 50 * dt end
	if love.keyboard.isDown 'right' then cx = cx + 50 * dt end
	if love.keyboard.isDown 'up' then cy = cy - 50 * dt end
	if love.keyboard.isDown 'down' then cy = cy + 50 * dt end
end

function love.draw()
	testMap:draw(cx, cy)
	love.graphics.setColor(255, 0, 0)
	love.graphics.rectangle('line', cx, cy, cw, ch)
end