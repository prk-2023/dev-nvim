-- Plugin crates.vim : helps to check the status of the dependencie crates in Cargo.toml file
-- return {
-- 	{
-- 		"saecki/crates.nvim",
-- 		ft = { "toml" }, -- run on toml files only
-- 		config = function()
-- 			require("crates").setup({
-- 				completion = {
-- 					cmp = {
-- 						enable = true,
-- 					},
-- 				},
-- 			})
-- 			require("cmp").setup.buffer({
-- 				sources = { { name = "crates" } },
-- 			})
-- 		end,
-- 	},
-- }

-- return {
--	"saecki/crates.nvim",
--	-- tag = "stable",
--	config = function()
-- 		require("crates").setup()
-- 	end,
-- }
-- return {
--     'saecki/crates.nvim',
--     tag = "stable",
--     event = { "BufRead Cargo.toml" },
--     config = function()
--         require('crates').setup()
--     end,
-- }
--
--
return {
	"saecki/crates.nvim",
	ft = { "toml" }, -- run on toml files only
	config = function()
		require("crates").setup({
			-- No 'completion.cmp.enable' needed here anymore
		})
	end,
	-- nvim-cmp is now a dependency of crates.nvim in its own definition,
	-- but it's good practice to list bidirectional dependencies if one
	-- heavily relies on the other.
	dependencies = { "hrsh7th/nvim-cmp" },
}
