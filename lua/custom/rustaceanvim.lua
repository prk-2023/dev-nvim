return {
	{
		"mrcjkb/rustaceanvim",
		version = "^6", -- Recommended
		lazy = false, -- This plugin is already lazy
		init = function()
			-- Modern rust-analyzer config (safe and warning-free)
			vim.g.rustaceanvim = {
				server = {
					settings = {
						["rust-analyzer"] = {
							completion = {
								autoimport = {
									enable = true,
								},
								callable = {
									snippets = "fill_arguments",
								},
							},
						},
					},
				},
			}
		end,
	},
}
