-- [[ Basic Keymaps ]]
-- See :help vim.keymap.set()

-- helper function my toggle funtion:
local function vim_opt_toggle(opt, on, off, name)
	local message = name
	if vim.opt[opt]:get() == off then
		vim.opt[opt] = on
		message = message .. " Enabled"
	else
		vim.opt[opt] = off
		message = message .. " Disabled"
	end
	vim.notify(message)
end

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- toggle mouse enable/disable
vim.keymap.set("n", "<leader>aa", ":set mouse=a<cr>", { desc = "enable mouse" })
vim.keymap.set("n", "<leader>ad", ":set mouse-=a<cr>", { desc = "disable mouse" })

vim.keymap.set("n", "<C-q>", ":q!<cr>", { desc = "Force Quit" })
vim.keymap.set("n", "<C-s>", ":w!<cr>", { desc = "Force write" })

-- resize splits: NOTE:   key binding  M- = alt-key
vim.keymap.set("n", "<M-,>", "<c-w>3<", { desc = "vertically shrink current split 3%" })
vim.keymap.set("n", "<M-.>", "<c-w>3>", { desc = "vertically expand current split by 3%" })
vim.keymap.set("n", "<M-t>", "<C-W>+", { desc = "horizontal split: taller " })
vim.keymap.set("n", "<M-s>", "<C-W>-", { desc = "horizontal split: shorter" })
