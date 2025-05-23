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

-- turn on diagnostic virtual text
vim.diagnostic.config({ virtual_text = true })
