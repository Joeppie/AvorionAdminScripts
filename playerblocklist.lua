package.path = package.path .. ";data/scripts/lib/?.lua"

function execute(sender, commandName, ...)

	Player():sendChatMessage("Server", 0, "List of blocks per player");
    for i, player in pairs({Server():getOnlinePlayers()}) do
	
	craftname = "unknown";
	numblocks = "unknown";
	plan = nil;
	
	if (player and player.craft) then craftname = player.craft.name; end
	if (player.craft) then plan = player:getShipPlan(craftname) end
	if (plan) then numblocks = plan.numBlocks  end
	
	Player():sendChatMessage(player.name .. "'s ship, " .. craftname, 0," " .. numblocks .. " blocks.");
end

    return 0, "", ""
end

function getDescription()
    return "Lists the name and block counts of the ship currently flown by each player."
end

function getHelp()
    return "Enumerates the block counts for each player's current ship"
end
