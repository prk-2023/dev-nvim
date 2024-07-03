-- set perticular mapping for C files.
vim.opt_local.shiftwidth = 3
--vim.cmd([[Neotree show]])
if vim.api.nvim_win_get_width(0) > 117 then
	vim.cmd([[TagbarToggle]])
	vim.cmd([[TagbarOpen]])
	-- 	vim.cmd([[Neotree show]])
end
