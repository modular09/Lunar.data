local page = {
	pages = {
		["Hidden"] = {}
	}
}

function page:Create(
	Name : string, 
	Key : string, 
	Data : {})
	
	table.insert(page.pages, {
		["Name"] = Name;
		["Key"] = Key;
		
		["Data"] = Data
	})
	
	return {
		["Name"] = Name;
		["Key"] = Key;

		["Data"] = Data
	}
end

function page:Remove(
	Key : number
)

	for pageNum, pageContent in page.pages do
		if pageContent.Key == Key then
			table.remove(page.pages, pageNum)
		end
	end

end

return page
