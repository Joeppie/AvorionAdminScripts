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


### Add the debug script to your ship 
`Warning other players can also interact with this, until your ship is destroyed or the script removed! see the entry directly below to remove.` 

I recommend only running this command on your drone, so that it's automatically destroyed when you re-enter your ship. Remember; a drone can be set to be invulnerable using the entitydbg.lua, so you should be safe.

    /run Entity():addScript("lib/entitydbg.lua")

### remove the debug script from your ship 

    /run Entity():removeScript("lib/entitydbg.lua")

### Move the selected entity (targeted in game by the craft you control) to a specific sector (100,200 in the example)
    /run Galaxy():transferEntity(Entity().selectedObject, 100, 200 , 1)
