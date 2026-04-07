return {
    "oskarrrrrrr/symbols.nvim",
    config = function()
        local r = require("symbols.recipes")
        require("symbols").setup(
            r.DefaultFilters,
            r.AsciiSymbols,
            {
                sidebar = {
                    -- custom settings here
                    -- e.g. hide_cursor = false
                    open_direction = "right",
                    auto_resize = {
                        enable = true,
                        min_width = 20,
                        max_width = 40,
                    },
                }
            }
        )
        vim.keymap.set("n", ",s", "<cmd>Symbols<CR>")
        vim.keymap.set("n", ",S", "<cmd>SymbolsClose<CR>")
        vim.keymap.set("n", "<F7>", "<cmd>SymbolsToggle<CR>")
    end
}
