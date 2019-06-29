# license

These scripts are offered to the public in the hopes that they are useful. Please consider them as being licensed under GNU affero GPL; this means that you are free to use them, but if you modify them, you must distribute the *modified work* when you publish them;
Specifically, the GNU Affero license sees 'servers' and 'services' using the source code as  *publishing*, so if you modify the code and run it on your server, please share it back or distribute it, so that others may likewise benefit from it as you are benefiting from this code. If there are licensing or other concerns, please let the author know. I would be happy to accept merge requests/issues etc. as well on the source branch on Github @ https://github.com/Joeppie/AvorionAdminScripts/

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

### delete the selected entity, even if it is invulnerable (does not count as damage, but'warps' the selected entity into oblivion)
    /run Sector():deleteEntityJumped(Entity().selectedObject)

### imrpove the (nearest faction) standing for the owning faction of the selected object by the selected value.
    /run Galaxy():changeFactionRelations(Faction(Entity().selectedObject.factionIndex), Galaxy():getNearestFaction(Sector():getCoordinates()), 200000)

