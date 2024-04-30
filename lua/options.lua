-- vim options:
-- for more on vimoptions 
-- => :help vim.opt
-- in order to access the vimscript via Lua use the 'vim' global table scope.

-- set ',' as the leader key:
vim.g.leader = ","
vim.g.localleader = ","

-- Nerd font: ( set false if fonts are not installed ) 
vim.g.have_nerd_font = true

-- enable line number and relative numbers
vim.opt.number = true
-- vim.opt.relativenumber = true

-- enable mouse  ( toggle mouse in maps-regenable and disable mouse <C-a> )
vim.opt.mouse = 'a'

-- sync clipboard between os and neoVim
vim.opt.clipboard = "unnamedplus"

-- save undo history to a file
vim.opt.undofile = true

-- don't show modes as its already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- ignore case UNLESS \C or one or more capital letters are present in search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep signcolumn on by default
vim.opt.signcolumn = true

-- decrease update time
vim.opt.updatetime = 250

-- decrease mapped sequence wait time
-- display which-key popup sooner
vim.opt.timeoutlen = 300

-- new split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview substitutions live as we type
vim.opt.inccommand = "split"

-- show cursor line 
vim.opt.cursorline =  true

-- set min num of screen line to keep above and below the cursor while scrolling
vim.opt.scrolloff = 10

-- set highligt on search , but clear highlight on <Esc> in normal mode
vim.opt.hesearch =  true
-- vim.opt. =  true
-- vim.opt. =  true
-- vim.opt. =  true
-- vim.opt. =  true

