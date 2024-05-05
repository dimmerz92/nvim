return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"c",
			"css",
			"go",
			"html",
			"javascript",
			"jsdoc",
			"lua",
			"python",
			"query",
			"sql",
			"templ",
			"toml",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
		},
		sync_install = false,
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.install").prefer_git = true
		require("nvim-treesitter.configs").setup(opts)
	end,
}
