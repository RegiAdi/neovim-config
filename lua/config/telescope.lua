require('telescope').setup({
    defaults = {
        layout_strategy = "horizontal",
            layout_config = {
            horizontal = {
                prompt_position = "bottom",
                width = { padding = 0 },
                height = { padding = 0 },
                preview_width = 0.5,
            },
        },
    },
})
