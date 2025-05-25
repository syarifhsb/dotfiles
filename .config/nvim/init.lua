-- Initialize vim file
vim.cmd('source $XDG_CONFIG_HOME/nvim/config/plugs.vim')
vim.cmd('source $XDG_CONFIG_HOME/nvim/config/initialization.vim')
vim.cmd('source $XDG_CONFIG_HOME/nvim/config/keybind.vim')
require('config.plugins')
require('config.keymaps')

-- Setup LSP

-- LSP configs
require('config.lsp')
