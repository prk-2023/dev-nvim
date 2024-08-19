return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local c = require("rose-pine.palette")
		require("bufferline").setup({
			-- highlights = require("catppuccin.groups.integrations.bufferline").get({
			-- 	styles = {},
			-- 	custom = {
			-- 		pine = {
			-- 			buffer_selected = { fg = c.text, bg = c.base, bold = false, italic = false },
			-- 			tab_close = { fg = c.surface1, bg = c.mantle, bold = false, italic = false },
			-- 			close_button = { fg = c.surface1, bg = c.mantle, bold = false, italic = false },
			-- 			close_button_visible = { fg = c.surface1, bg = c.mantle, bold = false, italic = false },
			-- 			close_button_selected = { fg = c.surface1, bg = c.base, bold = false, italic = false },
			-- 		},
			-- 	},
			-- }),
			options = {
				buffer_close_icon = "󰅖",
				modified_icon = "● ",
				close_icon = " ",
				left_trunc_marker = " ",
				right_trunc_marker = " ",
				show_buffer_icons = true, -- | false, -- disable filetype icons for buffers
				show_buffer_close_icons = true, --| false,
				show_close_icon = true, -- | false,
				show_tab_indicators = true, -- | false,
				separator_style = "slant", --| "slope",
			},
		})
	end,
	-- options = {
	-- 	indicator = {
	-- 		icon = "▎", -- this should be omitted if indicator style is not 'icon'
	-- 		style = "icon" | "underline" | "none",
	-- 	},
	-- 	buffer_close_icon = "󰅖",
	-- 	modified_icon = "● ",
	-- 	close_icon = " ",
	-- 	left_trunc_marker = " ",
	-- 	right_trunc_marker = " ",
	-- },
}
