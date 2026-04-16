return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
            transparent = true,
        },
	},
	{ "cpea2506/one_monokai.nvim" },
	{ "Almo7aya/neogruvbox.nvim" },
	{ "iibe/gruvbox-high-contrast" },
	{ "daschw/leaf.nvim" },
	{ "jacoborus/tender.vim" },
	{ "bhrown/brown.vim" },
	{ "sho-87/kanagawa-paper.nvim", lazy = false, priority = 1000, opts = {} },
	-- {
	-- 	"oxfist/night-owl.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		bold = true,
	-- 		italics = true,
	-- 		undeline = true,
	-- 		transparent_background = false,
	-- 	},
	-- },
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
			transparent_background = true, -- false,
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
	{
		"navarasu/onedark.nvim",
		style = cool, --dark, darker, cool, deep, warm, warmer, light
		code_style = {
			comments = "italic",
			keywords = "none",
			functions = "none",
			strings = "none",
			variables = "none",
		},
		-- colors = {
		-- 	bright_orange = "#ff8800", -- define a new color
		-- 	green = "#00ffaa", -- redefine an existing color
		-- },
		-- highlights = {
		-- 	["@keyword"] = { fg = "$green" },
		-- 	["@string"] = { fg = "$bright_orange", bg = "#00ff00", fmt = "bold" },
		-- 	["@function"] = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
		-- 	["@function.builtin"] = { fg = "#0059ff" },
		-- },
	},
	{ { "phha/zenburn.nvim" } },
	{
		"vague2k/vague.nvim",
		config = function()
			-- NOTE: you do not need to call setup if you don't want to.
			require("vague").setup({
				-- optional configuration here
				plugins = {
					cmp = {
						match = "bold",
						match_fuzzy = "bold",
					},
					dashboard = {
						footer = "italic",
					},
					lsp = {
						diagnostic_error = "bold",
						diagnostic_hint = "none",
						diagnostic_info = "italic",
						diagnostic_ok = "none",
						diagnostic_warn = "bold",
					},
					neotest = {
						focused = "bold",
						adapter_name = "bold",
					},
					telescope = {
						match = "bold",
					},
				},
			})
		end,
	},

	{ -- github-nvim-theme
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("github-theme").setup({
				options = {
					comments = "italics",
					keywords = "bold",
					types = "italics,bold",
				},
			})

			vim.cmd("colorscheme github_dark")
		end,
	},
    {  -- Monokai-pro
        "loctvl842/monokai-pro.nvim",
        config = function() 
            require('monokai-pro').setup({
                transparent_background = true, -- false,
                terminal_color = true,
                devicons = true, -- this highlights `nvim-web-devicons`
                style = {
                    comment = { italic = true },
                    keyword = { bold = true }, -- any other keyword 
                    type = { italic = true }, -- (preferred) int, long, char, etc 
                    storageclass = { italic = true }, -- static, register, volatile, etc 
                    structure = { bold = true }, -- struct, union, enum, etc 
                    parameter = { italic = true }, -- parameter pass in function 
                    annotation = { italic = true }, 
                    tag_attribute = { italic = true }, -- attribute of tag in reactjs 
                },
                filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum 
                background_clear = { 
                    -- "float_win", 
                    "toggleterm", 
                    "telescope",    -- "which-key",
                    "renamer",
                    "notify", 
                    -- "nvim-tree", 
                    "neo-tree", 
                    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared 
                },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
                plugins = { 
                    bufferline = {
                        underline_selected = false,
                        underline_visible = false,
                    },
                    indent_blankline = {
                        context_highlight = "default", -- default | pro 
                        context_start_underline = false, 
                    }, 
                },
                ---@param c Colorscheme 
                override = function(c) end, 
                ---@param cs Colorscheme 
                ---@param p ColorschemeOptions 
                ---@param Config MonokaiProOptions 
                ---@param hp Helper 
                --override = function(cs: Colorscheme, p: ColorschemeOptions, Config: MonokaiProOptions, hp: Helper) end,
            })
        end
    },
    {
    "bignimbus/pop-punk.vim",
    name = "pop-punk", -- Use "name" to refer to it in `colorscheme`
    lazy = false,      -- Load it on startup
    priority = 1000,   -- Ensure it loads first
  },
  {
      "nyoom-engineering/oxocarbon.nvim",
      -- Add in any other configuration; 
      --   event = foo, 
      --   config = bar
      --   end,
  },
  {
    "nasccped/rustheme.nvim",
    lazy = false,    -- Colorschemes should usually not be lazy-loaded
    priority = 1000, -- Ensure it loads before other plugins
    -- config = function()
    --   -- 1. Set options (Note: this theme uses globals, not a setup table)
    --   vim.g.rustheme_italic_comments = true
    --   
    --   -- 2. Load the colorscheme
    --   vim.cmd("colorscheme rustheme")
    --
    --   -- 3. Apply your overrides AFTER loading the theme
    --   -- This is the most reliable way to "force" the mdBook colors
    --   vim.api.nvim_set_hl(0, "Normal", { bg = "#f6f4ee", fg = "#333333" })
    --   vim.api.nvim_set_hl(0, "Keyword", { fg = "#d75f00", bold = true })
    --   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#e8e6df" })
    -- end
  },
}
