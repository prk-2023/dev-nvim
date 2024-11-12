-- Function to generate Markdown table
local MT = {}
function MT.generate_markdown_table()
	local table_str = "| Left  | Centered | Right  |\n"
	table_str = table_str .. "| :--- | :---: | ---: |\n"
	table_str = table_str .. "| C1  | C2 | C3 |\n"

	-- Insert table at current cursor position
	vim.api.nvim_put({ table_str }, "l", false, true)
end
return MT
