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
		handlers = {
			function(server)
				require("lspconfig")[server].setup({})
			end,
			["html"] = function()
				require("lspconfig").html.setup({ filetypes = { "html", "templ" } })
			end,
			["htmx"] = function()
				require("lspconfig").htmx.setup({ filetypes = { "html", "templ" } })
			end,
		},
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = { border = "rounded" },
			},
		},
		{ "j-hui/fidget.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
