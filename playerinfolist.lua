package.path = package.path .. ";data/scripts/lib/?.lua"

function execute(sender, commandName, ...)

	Player():sendChatMessage("Server", 0, "Listing basic player information for all online players.");
    for i, player in pairs({Server():getOnlinePlayers()}) do
		local allianceInfo = " (not part of alliance alliance)";
		
		if player.alliance then
			allianceInfo = " alliance: " .. tostring(player.alliance.index) ..
			" (" .. player.alliance.name .. ")"
		end

		Player():sendChatMessage("info: " ..player.name,0,
		--For some reason I get an error trying to access the PlayerId, cant access it with a for, or a pairs() for loop either.
		-- "playerid: " 	.. player.id ..
		--The only sign of life this property/PlayerId currently gives is using print(Player().id)
		-- Also, this doesn't work: 		for k, v in pairs(getmetatable(Player().id)) do			print(k, type(v))		end
		" index: " 		.. player.index ..
		", # ships:" 		.. player.numShips ..
		", # stations:" 	.. player.numStations ..
		", money:" 		.. player.money ..
		allianceInfo);

	end
    return 0, "", ""
end

function getDescription()
    return "Outputs pertinent information about the players that are online currently."
end

function getHelp()
    return "Lists the online players with some additional information per player."
end
