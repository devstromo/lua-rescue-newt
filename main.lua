function love.load()
    message = "Hello, Rescue Newt!"
end

function love.draw()
    love.graphics.print(message, 400, 300)
end