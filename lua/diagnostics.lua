-- Global Diagnostic Config
vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = false,
	underline = true, --false,
	signs = true, --false,
	-- float = true,
	float = {
		source = "always",
		border = "rounded",
	},
	update_in_insert = false,
	severity_sort = false,
})
-- Auto-show diagnostics on hover (CursorHold)
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, {
			focus = false,
			scope = "cursor",
			border = "rounded",
		})
	end,
})
vim.keymap.set("n", "<leader>dd", function()
	vim.diagnostic.open_float(nil, { focus = false })
end, { desc = "Show diagnostic float" })

-- Below is the output for command :lua print(vim.inspect(vim.diagnostic.config()))
-- in nvim version  <= 0.10
-- {
--     float = true,
--     severity_sort = false,
--     signs = true,
--     underline = true,
--     update_in_insert = false,
--     virtual_text = true,
-- }
-- or use the below Generate config
-- vim.diagnostic.config({
-- 	float = true,
-- 	severity_sort = false,
-- 	signs = true,
-- 	underline = true,
-- 	update_in_insert = false,
-- 	virtual_text = true,
-- })
