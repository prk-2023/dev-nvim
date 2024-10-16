-- Plugin crates.vim : helps to check the status of the dependencie crates in Cargo.toml file
return {
	{
		"saecki/crates.nvim",
		ft = { "toml" }, -- run on toml files only
		config = function()
			require("crates").setup({
				completion = {
					cmp = {
						enable = true,
					},
				},
			})
			require("cmp").setup.buffer({
				sources = { { name = "crates" } },
			})
		end,
	},
}
