# Commands:

## warn.lua
sends a warning, example: /warn please stop spamming sector 0:0 with stations.
## error.lua 
same as above, but as an error.
## playerblocklist 
lists the block counts of every player. Warning; if the block limit is high on the server and many people are online, this command can become expensive.




## Oneliners that can be used in the /run tab.

### Modify standing with the current faction after running a /destroy command.

    /run Galaxy():changeFactionRelations(Player(), Galaxy():getNearestFaction(Sector():getCoordinates()), 200000)

### Send a warning message to all online players; you can also replace Warning with Information or Error.

    /run Server():broadcastChatMessage("Server", ChatMessageType.Warning, "Replace this with your warning")


