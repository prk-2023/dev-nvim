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
-- Enable soft line wrapping
vim.opt_local.wrap = true

-- Wrap at word boundaries, not in the middle of words
vim.opt_local.linebreak = true

-- Indent wrapped lines to align with the start of the text
vim.opt_local.breakindent = true

-- Visual indicator for wrapped lines (optional)
vim.opt_local.showbreak = "↪\\ "

-- Don't auto-insert line breaks at textwidth while typing
vim.opt_local.formatoptions:remove("t")

-- Avoid inserting comment leader when hitting Enter in lists
vim.opt_local.formatoptions:remove("c")
vim.opt_local.formatoptions:remove("r")
vim.opt_local.formatoptions:remove("o")

-- Optional: highlight column 108 for readability guidance
vim.opt_local.colorcolumn = "108"
