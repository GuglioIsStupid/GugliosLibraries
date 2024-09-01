function love.load()
    input = (require("Input")).Init {
        inputs = {
            test = {"a", "key:b", "c", "mouse:1", "joy:a"}
        },
        joystick = love.joystick.getJoysticks()[1]
    }
end

function love.update(dt)
    input:Update()
end

function love.draw()
    love.graphics.print("Press a, b, or c", 10, 10)
    love.graphics.print(tostring(input:isPressed("test")) .. " " .. tostring(input:isDown("test")) .. " " .. tostring(input:isReleased("test")), 10, 30)
end