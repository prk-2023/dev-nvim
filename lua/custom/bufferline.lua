return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
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
}
