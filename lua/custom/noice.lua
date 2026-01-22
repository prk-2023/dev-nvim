return -- lazy.nvim
{
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
		cmdline = {
			format = {
				cmdline = { icon = ":" }, -- replaces [ > ] with [ : ]
				search_down = { icon = "/" }, -- optional: for `/` search
				search_up = { icon = "?" }, -- optional: for `?` search
			},
		},
        views = {
            cmdline_popup = {
                position = {
                    row = "100%",
                    col = "100%", -- Can be number or string like "50%"
                },
                anchor = SW",
                offset = {
                    row = -1, -- move up
                    col = -2, -- move left
                },
                size = {
                    width = 60,
                    height = "auto",
                },
            },
        },
    },
	    lsp = {
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
        },
    },
    popupmenu = {
        enabled = false, --true, -- enables the Noice popupmenu UI
        ---@type 'nui'|'cmp'
        backend = "nui", -- backend to use to show regular cmdline completions
        ---@type NoicePopupmenuItemKind|false
        -- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
        kind_icons = {}, -- set to `false` to disable icons
      },

	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
}
