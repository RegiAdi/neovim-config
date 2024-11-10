require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig

-- If you are using mason.nvim, you can get the ts_plugin_path like this
local mason_registry = require('mason-registry')
local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'

local lspconfig = require('lspconfig')

require('lspconfig').ts_ls.setup {
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
}

-- No need to set `hybridMode` to `true` as it's the default value
require('lspconfig').volar.setup {}

require('lspconfig').lua_ls.setup {}

require('lspconfig').ruff.setup {}
