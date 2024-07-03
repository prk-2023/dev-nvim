-- set mapping for Rust files.
vim.cmd([[TagbarToggle]])
vim.cmd([[TagbarOpen]])
--vim.cmd([[Neotree show]])
if vim.api.nvim_win_get_width(0) > 117 then
	vim.cmd([[Neotree show]])
	-- print("Console width is larger than 117 columns!")
	-- print("---------hello----------")
end
