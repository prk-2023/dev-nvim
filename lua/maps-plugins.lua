-- Set default colorscheme
vim.cmd.colorscheme("gruvbox-high-contrast")

-- vim.keymap.set("n", "<F7>", "<cmd>ToggleTerm<cr>", { desc = "toggle terminal from" })
-- Trouble keymaps
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end, { desc = "toggle trouble quickfix window" })
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "Trouble work space diagnostics" })
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Trouble document diagnostics" })
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end, { desc = "Trouble quickfix" })
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end, { desc = "Trouble locallist" })
vim.keymap.set("n", "gR", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Trouble lsp references" })

-- local f = require("flirt")
-- vim.keymap.set("n", "<leader><left>", function()
-- 	f.move("left")
-- end, {})
-- vim.keymap.set("n", "<leader><right>", function()
-- 	f.move("right")
-- end, {})
-- vim.keymap.set("n", "<leader><up>", function()
-- 	f.move("up")
-- end, {}) -- etc
-- vim.keymap.set("n", "<leader><down>", function()
-- 	f.move("down")
--- bufferline :
vim.keymap.set("n", "[b", ":bn<cr>") -- focus to next buffer
vim.keymap.set("n", "[p", ":bp<cr>") -- focus previous buffer
vim.keymap.set("n", "[x", ":bd<cr>") -- close the active buffer- end, {}) -- etc
-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

-- Stop LSP  messages
vim.keymap.set("n", "<leader>F2", ":LspStop")

-- Treesitter code fold/unfold..
-- use the keymaps for fold/unflod/toggle fold at center using "zR", "zM", "za"
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- disable fold on open as default
