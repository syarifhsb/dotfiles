-- Initialize vim file
vim.cmd('source $XDG_CONFIG_HOME/nvim/configs/plugs.vim')
vim.cmd('source $XDG_CONFIG_HOME/nvim/configs/initialization.vim')
vim.cmd('source $XDG_CONFIG_HOME/nvim/configs/keybind.vim')


require('plugin-configs')
-- Setup LSP
vim.lsp.enable('luals')
-- vim.lsp.enable('ccls')
