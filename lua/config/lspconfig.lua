require("mason-lspconfig").setup()

local vue_language_server_path = vim.fn.expand '$MASON/packages' .. '/vue-language-server'

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.ts_ls.setup {
  init_options = {
    plugins = {
      {
        name = '@vue/typescript-plugin',
        location = vue_language_server_path,
        languages = { 'vue' },
      },
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
  capabilities = capabilities
}

-- No need to set `hybridMode` to `true` as it's the default value
lspconfig.volar.setup {
  capabilities = capabilities
}

lspconfig.lua_ls.setup {
  capabilities = capabilities
}

lspconfig.ruff.setup {
  capabilities = capabilities
}

lspconfig.rust_analyzer.setup {
    capabilities = capabilities
}

lspconfig.zls.setup{
    capabilities = capabilities
}
