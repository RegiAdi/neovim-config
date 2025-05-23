return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
                -- a
                "astro",
                -- b
                -- c
				"c",
                -- d
                "dockerfile",
                -- e
                -- f
                -- g
                "go",
                "gomod",
                -- h
				"html",
                -- i
                -- j
                "java",
				"javascript",
                "json",
                -- k
                -- l
				"lua",
                -- m
                -- n
                "nginx",
                -- o
                -- p
                "php",
                "python",
                -- q
                -- r
                "rust",
                -- s
                -- t
                "typescript",
                "tsx",
                -- u
                -- v
                "vim",
                "vimdoc",
                "vue",
                -- w
                -- x
                "xml",
                -- y
                -- z
                "zig",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
