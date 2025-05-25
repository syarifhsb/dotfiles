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
