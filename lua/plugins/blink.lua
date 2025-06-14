return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = {
			["<Up>"] = { "select_prev", "fallback" },
			["<Down"] = { "select_next", "fallback" },
			["<Esc>"] = { "cancel", "fallback" },
			["<Tab>"] = { "accept", "fallback" },
			["<C-S-d>"] = { "show_documentation", "fallback" },
			["<C-PageUp>"] = { "scroll_documentation_up", "fallback" },
			["<C-PageDown>"] = { "scroll_documentation_down", "fallback" },
		},
		appearance = { nerd_font_variant = "mono" },
		completion = { documentation = { auto_show = true } },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		fuzzy = { implementation = "prefer_rust_with_warning" },
		opts_extend = { "sources.default" },
	},
}
