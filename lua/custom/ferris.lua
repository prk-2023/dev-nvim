return {
	"vxpm/ferris.nvim",
	config = function()
		require("ferris").setup({
			-- your options here
		})

		vim.keymap.set("n", "gm", require("ferris.methods.view_memory_layout"))
	end,
}
