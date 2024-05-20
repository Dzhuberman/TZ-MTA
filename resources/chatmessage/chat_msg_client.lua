local function check_color(color)
    if color then
        if color >= 0 and color <= 255 then
            return true
        end
    end

    return false
end

function print_message(command, color_r, color_g, color_b, text)
    local r = tonumber(color_r)
    local g = tonumber(color_g)
    local b = tonumber(color_b)

    if check_color(r) and check_color(g) and check_color(b) and string.len(text) then
        outputChatBox(text, r, g, b)
    else
        outputChatBox("Неправильно введена команда!")
        outputChatBox("Попробуйте:")
        outputChatBox("/chatmessage *0-255* *0-255* *0-255* *Ваш текст*")
    end
end

addCommandHandler("chatmessage", print_message)