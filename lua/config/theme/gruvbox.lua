vim.o.background = "dark" -- or "light" for light mode

-- Default options:
require("gruvbox").setup({
    terminal_colors = false, -- add neovim terminal colors
    undercurl = false,
    underline = false,
    bold = false,
    italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
    },
    strikethrough = false,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {
        Function = { link = "GruvboxAqua" },
        Statement = { link = "GruvboxRed" },
        Operator = { link = "GruvboxAqua" },
        Keyword = { link = "GruvboxOrange" },
        Identifier = { link = "GruvboxBlue" },
        Special = { link = "GruvboxFg2" },

        htmlTag = { link = "GruvboxBlue" },
        htmlEndTag = { link = "GruvboxBlue" },
        htmlTagName = { link = "GruvboxAqua" },
        htmlArg = { link = "GruvboxYellow" },
        htmlSpecialTagName = { link = "GruvboxYellow" },

        javaScriptFunction = { link = "GruvboxAqua" },
        javaScriptMember = { link = "GruvboxBlue" },
        javaScriptIdentifier = { link = "GruvboxYellow" },

        typescriptIdentifier = { link = "GruvboxOrange" },
        typescriptEndColons = { link = "GruvboxGray" },
    },
    dim_inactive = false,
    transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")
