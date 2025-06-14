return {
	"stevearc/conform.nvim",
	opts = {
		auto_install = true,
		format_on_save = { timeout_ms = 350, lsp_fallback = true },
		formatters_by_ft = {
			go = { "gofmt" },
			templ = { "templ" },
		},
	}
}
