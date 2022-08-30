-- nvimtree.rc.lua
-- configs for Nvimtree
-- by: Lukas Rasocha

local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then return end
require("nvim-tree").setup()

nvimtree.setup()

