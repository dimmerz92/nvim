return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"cssls",
			"gopls",
			"html",
			"htmx",
			"lua_ls",
			"pyright",
			"templ",
			"ts_ls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "j-hui/fidget.nvim",    opts = { notification = { window = { winblend = 0 } } } },
		"neovim/nvim-lspconfig",
	},
}
