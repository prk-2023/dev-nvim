return -- lazy.nvim
{
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
        views = { 
            cmdline_popup = {
                position = {
                    row = 1,
                    col = "50%", -- Can be number or string like "50%"
      },
      size = {
        width = 60,
        height = "auto",
      },
    },
  },
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
