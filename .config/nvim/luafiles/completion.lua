-- lsp setup
local capabilities = vim.lsp.protocol.make_client_capabilities()
local util = require 'lspconfig/util'
local lsp = require 'lspconfig'
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- lang servers
lsp.clangd.setup {
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp" },
  }

lsp.pyls.setup {
  capabilities = capabilities,
}

-- nvim-treesitter setup
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "bash", "cpp", "css", "html", "python", "regex", "lua"}, 
  highlight = {
    enable = true 
  },
}
