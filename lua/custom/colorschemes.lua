return {
	{ "Almo7aya/neogruvbox.nvim" },
	{ "iibe/gruvbox-high-contrast" },
	{ "daschw/leaf.nvim" },
	{ "jacoborus/tender.vim" },
	{ "sho-87/kanagawa-paper.nvim", lazy = false, priority = 1000, opts = {} },
	{
		"oxfist/night-owl.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			bold = true,
			italics = true,
			undeline = true,
			transparent_background = false,
		},
	},
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("bamboo").setup({
				-- optional configuration here
			})
			require("bamboo").load()
		end,
		-- Main options --
		-- NOTE: to use the light theme, set `vim.o.background = 'light'`
		style = "vulgaris", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
		toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
		toggle_style_list = { "vulgaris", "multiplex", "light" }, -- List of styles to toggle between
		transparent = false, -- Show/hide background
		dim_inactive = false, -- Dim inactive windows/buffers
		term_colors = true, -- Change terminal color as per the selected theme style
		ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
		cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

		-- Change code style ---
		-- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
		-- You can also configure styles with a string, e.g. keywords = 'italic,bold'
		code_style = {
			comments = { italic = true },
			conditionals = { italic = true },
			keywords = {},
			functions = {},
			namespaces = { italic = true },
			parameters = { italic = true },
			strings = {},
			variables = {},
		},

		-- Lualine options --
		lualine = {
			transparent = false, -- lualine center bar transparency
		},

		-- Custom Highlights --
		colors = {}, -- Override default colors
		highlights = {}, -- Override highlight groups

		-- Plugins Config --
		diagnostics = {
			darker = false, -- darker colors for diagnostic
			undercurl = true, -- use undercurl instead of underline for diagnostics
			background = true, -- use background color for virtual text
		},
	},
	{
		"oxfist/night-owl.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			require("night-owl").setup()
			vim.cmd.colorscheme("night-owl")
		end,
		options = {
			-- ... other configs
			theme = "night-owl",
			-- ... other configs
			bold = true,
			italics = true,
			underline = true,
			transparent_background = false,
		},
	},

	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").load()
		end,
		on_palette = function(palette)
			return palette
		end,
		-- Enable bold keywords.
		bold_keywords = false,
		-- Enable italic comments.
		italic_comments = true,
		-- Enable general editor background transparency.
		transparent_bg = false,
		-- Enable brighter float border.
		bright_border = false,
		-- Reduce the overall amount of blue in the theme (diverges from base Nord).
		reduced_blue = true,
		-- Swap the dark background with the normal one.
		swap_backgrounds = false,
		-- Override the styling of any highlight group.
		override = {},
		-- Cursorline options.  Also includes visual/selection.
		cursorline = {
			-- Bold font in cursorline.
			bold = false,
			-- Bold cursorline number.
			bold_number = true,
			-- Available styles: 'dark', 'light'.
			theme = "dark",
			-- Blending the cursorline bg with the buffer bg.
			blend = 0.85,
		},
		noice = {
			-- Available styles: `classic`, `flat`.
			style = "classic",
		},
		telescope = {
			-- Available styles: `classic`, `flat`.
			style = "flat",
		},
		leap = {
			-- Dims the backdrop when using leap.
			dim_backdrop = false,
		},
		ts_context = {
			-- Enables dark background for treesitter-context window
			dark_background = true,
		},
	},
}
