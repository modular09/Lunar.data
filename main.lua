local config = require(script.config)

local DataStoreService = game:GetService("DataStoreService")
local DataStore = DataStoreService:GetDataStore(config.Store().Name .. config.Store()["Session Id / Key"])

local main = {}
	
Players = game:GetService("Players")
	
Lunar = script.Parent

-- Modules:
page = require(Lunar.page)
config = require(script.config)

closePageInit = false

function main.loadPage(Player : Player)
	local playerPage
	
	local success, err = pcall(function()
		return
	end)
	if success then	playerPage = DataStore:GetAsync(Player.UserId)
	elseif config.Store()["Output Junk?"] then
		print("Page has been loaded!")
	end
	
	if playerPage then
		page:Create(playerPage.Name, playerPage.Key, playerPage.Data) else page:Create(Player.Name, Player.UserId, config.Data())
	end
	
	return playerPage
end

function main.savePage(Player : Player)
	local playerPage
	

	for pageNum, pageContent in page.pages do
		print(pageContent)
		
		if pageContent.Key == Player.UserId then
			playerPage = page.pages[pageNum]
		end	
	end
	
	local success, err = pcall(function()
		return
	end)
	
	print(playerPage)
	
	if success then	playerPage = DataStore:SetAsync(Player.UserId, playerPage)
	elseif config.Store()["Output Junk?"] then
		print("Page has been saved!")
	end
		
	return playerPage
end

return main
