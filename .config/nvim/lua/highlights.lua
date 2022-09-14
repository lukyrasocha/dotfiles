-- highlights.lua
--  styling options for highlights
-- by: mika senghaas

vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.api.nvim_command('highlight Normal guibg=none')
vim.api.nvim_command('hi EndOfBuffer guibg=none ctermbg=none')

