vim.o.background = "dark" -- or "light" for light mode

require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = false,
    underline = false,
    bold = true,
    italic = {
        strings = false,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = false,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
