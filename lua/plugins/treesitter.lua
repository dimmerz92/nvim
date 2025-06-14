return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
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
			"markdown",
			"markdown_inline",
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
		additional_vim_regex_highlighting = false,
	},
	config = function(_, opts)
		require("nvim-treesitter.install").prefer_git = true
		require("nvim-treesitter.configs").setup(opts)
	end
}
