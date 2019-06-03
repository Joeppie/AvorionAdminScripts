package.path = package.path .. ";data/scripts/lib/?.lua"

function execute(sender, commandName, ...)
    local args = {...}

    local str = ""
    for i, v in pairs(args) do
        str = str .. v .. " "
    end

    Server():broadcastChatMessage("Server", ChatMessageType.Error, str)

    return 0, "", ""
end

function getDescription()
    return "Send error notification to all players on the server"
end

function getHelp()
    return "Send chat message to all players on the server as an error. Usage: /error This is a test"
end
