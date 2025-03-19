local opt = vim.opt

opt.number = true

opt.syntax = "ON"
opt.termguicolors = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

opt.splitright = true
opt.splitbelow = true

opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
