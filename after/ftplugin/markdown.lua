-- set perticular mapping for markdown files.
--vim.opt.number = true
if vim.api.nvim_win_get_width(0) > 117 then
	-- vim.cmd([[TagbarToggle]])
	-- vim.cmd([[TagbarOpen]])
	-- print("Console width is larger than 117 columns!")
	-- print("---------hello----------")
end

-- keybind:
vim.api.nvim_set_keymap(
	"n",
	"<leader>mt",
	":lua require('misc-funs').generate_markdown_table()<CR>",
	{ noremap = true, silent = true }
)
-- Enable Treesitter highlighting for markdown buffers
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.md",
  callback = function()
    -- vim.cmd("TSBufEnable highlight")
  end,
})

-- Example: override markdown code block highlight group colors locally
-- vim.api.nvim_set_hl(0, "MarkdownBold", { fg = "#FFFF00", bold = true })
-- vim.api.nvim_set_hl(0, "MarkdownBoldItalic", { fg = "#FFA500", bold = true })
-- vim.api.nvim_set_hl(0, "MarkdownItalic", { fg = "#00FF00", bold = false })
-- vim.api.nvim_set_hl(0, "MarkdownH1", { fg = "#008B8B", bold = true })
-- vim.api.nvim_set_hl(0, "MarkdownH2", { fg = "#00FFFF", bold = true })
-- vim.api.nvim_set_hl(0, "MarkdownH3", { fg = "#00FFFF", bold = true })
-- vim.api.nvim_set_hl(0, "MarkdownH4", { fg = "#00FFFF", bold = true })
-- #FF69B4  Pink 
--

-- Enable soft line wrapping
-- vim.opt_local.wrap = true
--
-- -- Wrap at word boundaries, not in the middle of words
-- vim.opt_local.linebreak = true
--
-- -- Indent wrapped lines to align with the start of the text
-- vim.opt_local.breakindent = true
--
-- -- Visual indicator for wrapped lines (optional)
-- vim.opt_local.showbreak = "↪\\ "
--
-- -- Don't auto-insert line breaks at textwidth while typing
-- vim.opt_local.formatoptions:remove("t")
--
-- -- Avoid inserting comment leader when hitting Enter in lists
-- vim.opt_local.formatoptions:remove("c")
-- vim.opt_local.formatoptions:remove("r")
-- vim.opt_local.formatoptions:remove("o")
--
-- -- Optional: highlight column 108 for readability guidance
-- vim.opt_local.colorcolumn = "108"


-- Disable relative numbers in Markdown file editing
vim.opt.relativenumber = false
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.showbreak = "↪\\ "
vim.opt_local.breakindent = true

-- To prevent tagbar and Aerial update aggressively 
vim.opt.updatetime = 300 -- Default is 4000 (4s), many people set it to 100-250. Try 300-500.

