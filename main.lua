---@diagnostic disable: undefined-global
-- virtual resolution
local push = require 'push'

local sprite
local x
local y

local virtualWidth = 800
local virtualHeight = 600
local speed = 10

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    sprite = love.graphics.newImage("graphics/alien-queen-example.png")
    x = virtualWidth / 2 - sprite:getWidth() / 2
    y = virtualHeight / 2 - sprite:getHeight() / 2
    push:setupScreen(virtualWidth, virtualHeight, 640, 480, {
        fullscreen = false,
    })
    love.window.setTitle("Rescue Newt")    
end

function love.update(dt)
-- Implement this
end

function love.keypressed(key)
    if key == 'left' then
        x = x - speed
    elseif key == 'right' then
        x = x + speed
    elseif key == 'up' then
        y = y - speed
    elseif key == 'down' then
        y = y + speed
    elseif key == 'escape' then
        love.event.quit()
    end

end

function love.draw()
    push:apply("start")
    love.graphics.draw(sprite, x, y)
    push:apply("end")
end
