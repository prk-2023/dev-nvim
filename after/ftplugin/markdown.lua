-- set perticular mapping for markdown files.
--vim.opt.number = true
if vim.api.nvim_win_get_width(0) > 117 then
	vim.cmd([[TagbarToggle]])
	vim.cmd([[TagbarOpen]])
	-- print("Console width is larger than 117 columns!")
	-- print("---------hello----------")
end
