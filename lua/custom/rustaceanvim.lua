local function get_rust_analyzer_target_dir()
    local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    local tmp_dir = "/tmp/rust-analyzer" .. project_name
    -- Ensure the directory exists
    vim.fn.mkdir(tmp_dir, "p")
    return tmp_dir
end

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
                            cargo = {
                                -- this points RA to a unique RAM backed folder 
                                targetDir = get_rust_analyzer_target_dir(),
                            },
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

--------------------------------
-- 1. rust-analyzer takes very long to download all the crates and sync with nvim settings.
-- the below settings is an attempt to fasten this process.
-- ALong with this also do :
-- 2. run cargo check before opening a rust file
-- 3. or add below to Cargo.toml
--    [workspace]
--    proc-macro = false 
--------------------------------
-- return {
-- 	{
-- 		"mrcjkb/rustaceanvim",
-- 		version = "^6", -- Recommended
-- 		lazy = false, -- This plugin is already lazy
-- 		ft = { "rust" },
-- 		init = function()
-- 			vim.g.rustaceanvim = {
-- 				server = {
-- 					settings = {
-- 						["rust-analyzer"] = {
-- 							cargo = {
-- 								features = {}, -- no features.
-- 								allFeatures = false, -- Do not enable all features
-- 								noDefaultFeatures = true, -- Disable default features
-- 							},
-- 							procMacro = {
-- 								enable = false, -- Disable macro expansion
-- 							},
-- 						},
-- 					},
-- 				},
-- 			}
-- 		end,
-- 	},
-- }
