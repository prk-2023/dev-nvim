-- print("Hello World from NeoVim")
-- print("-----------------------")

-- set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Nerd font: ( set false if fonts are not installed )
vim.g.have_nerd_font = true

vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true
-- vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.mouse = "a"
-- use auto spell correction with "z="
vim.opt.spell = true
-- Synchronized the system clipboard with NeoVim's clipboard.
vim.opt.clipboard = "unnamedplus" -- install the "xsel" or "xclip" on the pc
---vim.api.nvim_set_option("clipboard", "unnamedplus") //old way
--
-- this keep the cursor in the middle of the screen while
-- scrolling up and down
vim.opt.scrolloff = 10

-- visual mode ( enable the virtualedit )
-- allow virtual edit for the visual block mode (virtual editing
-- the cursor can be positioned where there is no actual character)
vim.opt.virtualedit = "block"

-- Open a splitwindow below with preview when using search and replace (:%s/tochange/changed)
vim.opt.inccommand = "split"

-- ignore case UNLESS \C or one or more capital letters are present in search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- decrease update time
vim.opt.updatetime = 250

-- decrease mapped sequence wait time
-- display which-key popup sooner
vim.opt.timeoutlen = 300
-- NeoVim uses the terminal color scheme ( extend the terminal to more better support 24bit ..)

--termgui colors
vim.opt.termguicolors = true

-- save undo history to a file
vim.opt.undofile = true

-- don't show modes as its already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- show cursor line
vim.opt.cursorline = true

-- set highligt on search , but clear highlight on <Esc> in normal mode
vim.opt.hlsearch = true

-- textwidth marker set to 108 columns
vim.opt.colorcolumn = "108"
vim.opt.textwidth = 108
vim.opt.wrap = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
----------------------------------------------------------------------------------------------
-- 'g' is used as a prefix for various LSP keybindings (like 'gd', 'gi', etc.),
-- so we avoid remapping 'gX'. Instead, we use 'ggX' as a custom keybinding
-- to open the URL under the cursor in the default browser.
-- Function to open URL under cursor
local function open_url_under_cursor()
	local url = vim.fn.expand("<cfile>")
	if url:match("^https?://") then
		vim.fn.jobstart({ "xdg-open", url }, { detach = true }) -- Linux
	-- For macOS, use: 'open'
	-- For Windows (WSL), use: 'cmd.exe', '/c', 'start', url
	else
		print("No valid URL under cursor")
	end
end

-- Map 'ggX' in normal mode
vim.keymap.set("n", "ggX", open_url_under_cursor, { desc = "Open URL under cursor" })
