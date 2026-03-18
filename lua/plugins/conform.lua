return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			timeout_ms = 2500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			css = { "prettier" },
			go = { "gofmt" },
			html = { "prettier" },
			javascript = { "prettier" },
			lua = { "stylua" },
			templ = { "templ" },
			typescript = { "prettier" },
		},
	},
}
