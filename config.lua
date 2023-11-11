local config = {}

function config.Store()
	return {
		["Name"] = "test",
		
		["Save Tick"] = 0, 
		["Output Junk?"] = true,
		
		["Session Id / Key"] = "test"
	}
end

function config.Data()
	return {
		--[[ Exampele: 
		{
			["Name"] = '',
			["Value"] = ,
		};

		]]
		
		{
			["Name"] = 'Coin',
			["Value"] = 0,
		};
		{
			["Name"] = 'Levels',
			["Value"] = 0,
		};
	}
end

return config
