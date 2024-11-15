require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
                -- add extension names you want to explicitly exclude
                '.git',
                '.DS_Store',
                'thumbs.db',
            },
            never_show = {},
        },
    },
})
