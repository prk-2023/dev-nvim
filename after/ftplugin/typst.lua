vim.api.nvim_set_keymap(
	"n",
	"<leader>tt",
	":lua require('typst-funcs').generate_typst_table()<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>tl",
	":lua require('typst-funcs').insert_typst_hrule()<CR>",
	{ noremap = true, silent = true }
)
