require("plugins")

-- colorscheme
vim.g.gruvbox_baby_use_original_palette = true
vim.g.gruvbox_baby_telescope_theme = true
vim.g.gruvbox_baby_variable_style = "NONE"
vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_string_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"
vim.g.gruvbox_baby_comment_style = "NONE"
vim.g.gruvbox_baby_background_color = "dark"
vim.cmd[[colorscheme gruvbox-baby]]

-- lualine
require('lualine').setup({
	options = {
		theme = 'gruvbox-baby'
	}
})

-- lsp-zero
local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
	'lua_ls',
	'rust_analyzer',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})

-- nvim-treesitter
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  -- ensure_installed = { "go", "php", "javascript", "typescript", "lua", "vim", "vimdoc", "query" },
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true
  },
}

-- mason
require("mason").setup({
	ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- leap
require('leap').add_default_mappings()

-- harpoon
require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - (vim.api.nvim_win_get_width(0) * 50 / 100),
    }
})

-- comment
require('Comment').setup()

-- set encoding
vim.opt.encoding = "utf-8"

-- a tab size is 4 spaces
vim.opt.tabstop = 4

-- tab size when inserting/pasting
vim.opt.softtabstop = 4

-- use multiple of shiftwidth when indenting with '<' and '>'
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- autoindent
vim.opt.smartindent = true

-- line numbers on
vim.opt.nu = true
vim.opt.relativenumber = true

-- line highlight
vim.opt.cursorline = true

-- don't use backup files
vim.opt.backup = false
vim.opt.swapfile = false

-- disable word wrap
vim.opt.wrap = false

vim.opt.autoread = true
vim.opt.colorcolumn = "80"

----------------------------------------------------------
-- KEYBINDINGS
----------------------------------------------------------
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

-- change leader
vim.g.mapleader = ","

-- map escape to hh
imap("hh", "<Esc>")

-- map netrw
nmap("<leader>fe", ":Ex<CR>")

-- map telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- harpoon
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>h", harpoon_mark.add_file)
vim.keymap.set("n", "<leader>hp", harpoon_ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() harpoon_ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon_ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon_ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon_ui.nav_file(4) end)

----------------------------------------------------------
-- WORKAROUNDS
----------------------------------------------------------

-- nvim-treesitter workaround
-- vim.opt.foldmethod     = 'manual'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'manual'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})
---ENDWORKAROUND
