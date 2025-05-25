vim.diagnostic.config({
  -- virtual_text = true
  underline = true
})

-- Lua
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
        virtual_text = true
      }
    }
  }
})

require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
require('mason-lspconfig').setup()
