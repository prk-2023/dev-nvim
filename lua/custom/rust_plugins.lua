-- Format on Save for rust files only
return {
	{
		"rust-lang/rust.vim",
		ft = "rust", -- configure to run only on rust files
		init = function()
			-- enable rust autoformating while saving
			vim.g.rustfmt_autosave = 1
		end,
	},
	-- {
	-- 	"mrcjkb/rustaceanvim",
	-- 	version = "^5", -- Recommended
	-- 	ft = { "rust" },
	-- 	lazy = false, -- This plugin ins already lazy
	-- },
}
