Lunar = script.Parent.Parent

local main = require(Lunar.main)
	local config = require(Lunar.main.config)

local data = require(Lunar.data)
local page = require(Lunar.page)

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(Player)
	
	local playerPage = main.loadPage(Player)	
	
	print(playerPage)
end)

Players.PlayerRemoving:Connect(function(Player)
	
	local playerPage = main.savePage(Player)

end)

game:BindToClose(function()
	for playerIndex, player in Players:GetPlayers() do
		main.savePage(player)
	end
end)
