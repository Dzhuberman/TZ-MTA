function joinHandler()
    local join_str = "Добро пожаловать " .. getPlayerName(source) .. "!"
	outputChatBox(join_str, getRootElement())
end

addEventHandler("onPlayerJoin", getRootElement(), joinHandler)