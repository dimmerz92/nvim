return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"clangd",
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
		{ "j-hui/fidget.nvim",    opts = { notification = { window = { winblend = 0 } } } },
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
