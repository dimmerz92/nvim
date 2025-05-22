return {
	"stevearc/conform.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = { ensure_installed = { "djlint" } },
	},
	opts = {
		auto_install = true,
		format_on_save = { timeout_ms = 3000, lsp_fallback = true },
		formatters_by_ft = {
			go = { "gofmt" },
			html = { "djlint" },
			lua = { "stylua" },
			templ = { "templ" },
		},
	},
}
