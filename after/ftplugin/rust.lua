-- set mapping for Rust files.
--vim.cmd([[Neotree show]])
if vim.api.nvim_win_get_width(0) > 117 then
	-- vim.cmd([[Neotree show]])
	-- vim.cmd([[TagbarToggle]])
	-- vim.cmd([[TagbarOpen]])
	-- print("Console width is larger than 117 columns!")
	-- print("---------hello----------")
end
vim.keymap.set({ "n", "i", "s" }, "<c-f>", function()
	if not require("noice.lsp").scroll(4) then
		return "<c-f>"
	end
end, { silent = true, expr = true })

vim.keymap.set({ "n", "i", "s" }, "<c-b>", function()
	if not require("noice.lsp").scroll(-4) then
		return "<c-b>"
	end
end, { silent = true, expr = true })
