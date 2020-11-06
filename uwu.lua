function Initialize()

    file = SELF:GetOption('File')
    contents = {}
    line_count = 0
    current = ""
    ReadFile()
	
end

function ReadFile()

	f = io.open(file)
	if not f then
		print('LuaTextFile: unable to open file at ' .. file)
		return
	end
	
	contents = {}
	for line in f:lines() do
        table.insert(contents, line)
        line_count = line_count + 1
	end
	
	io.close(f)
	
end

function Update()

    if math.random(0, 10) < 1 then
        r = math.random(1, line_count)
        current = contents[r]
    end 

    return current

end