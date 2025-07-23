local Typst = {}

-- Insert a basic Typst table
function Typst.generate_typst_table()
	local table_str = {
		"#table(",
		"  columns: 3,",
		"  table.header[ title1 ][ title2 ][ title3 ],",
		"  [],[],[],",
		")",
	}
	vim.api.nvim_put(table_str, "l", false, true)
end
-- Insert a horizontal rule in Typst
function Typst.insert_typst_hrule()
	local hrule_str = { '#line(length: 100%, stroke: ( dash: "dashed", paint: blue, thickness: 1pt))' }
	vim.api.nvim_put(hrule_str, "l", false, true)
end

return Typst
