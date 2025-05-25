-- Initialize vim file
vim.cmd('source $XDG_CONFIG_HOME/nvim/config/plugs.vim')
vim.cmd('source $XDG_CONFIG_HOME/nvim/config/initialization.vim')
vim.cmd('source $XDG_CONFIG_HOME/nvim/config/keybind.vim')
require('config.plugins')

-- Setup LSP
vim.lsp.enable('lua_ls')
vim.lsp.enable('ccls')

-- LSP configs
require('config.lsp')
