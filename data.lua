local data = {}

page = require(script.Parent.page)

function data.find(pageIndex : number, Key : number)
	local foundPage
	
	if not pageIndex then
		for pageNum, pageContent : {} in page.pages do
			if pageContent.Key == Key then
				foundPage = page.pages[pageNum]
			end
		end
	else
		foundPage = page.pages[pageIndex]
	end
	
	
	return foundPage
end

function data.change(
	Key : number, 
	
	ValueName : string,
	Value : any)
	
	for pageNum, pageContent in page.pages do
		if pageContent.Key == Key then
			
			for dataNum : number, dataContent : {} in pageContent.Data do
				if dataContent.Name == ValueName then
	
					dataContent.Value = Value
				end
			end		
		end	
	end
end

return data
