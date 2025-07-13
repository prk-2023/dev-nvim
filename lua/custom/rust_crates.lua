return {
	"saecki/crates.nvim",
	event = { "BufRead Cargo.toml" },
	config = function()
		require("crates").setup()
	end,
}
-- return {
-- 	"saecki/crates.nvim",
-- 	tag = "stable",
-- 	event = { "BufRead Cargo.toml" },
--
-- 	config = function()
-- 		require("crates").setup()
-- 	end,
-- }
