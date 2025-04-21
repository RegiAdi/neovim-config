require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig

-- If you are using mason.nvim, you can get the ts_plugin_path like this
local mason_registry = require('mason-registry')
local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'

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
