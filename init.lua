-- init.lua: This file.

-- options: General customization ( vim options & setting )
require("options")

-- plugings: install, update, setup, configure, keymaps
-- lazy:
require("plugins")

-- mapping: keymaps and shortcuts : regular & plugins keymaps in different files
require("maps-std")
require("maps-plugins")

local nvim_version = vim.version()
if nvim_version.major > 0 or (nvim_version.major == 0 and nvim_version.minor >= 11) then
	require("diagnostics")
end
