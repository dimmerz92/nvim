return {
	"ray-x/lsp_signature.nvim",
	event = "InsertEnter",
	opts = {
		bind = true,
		hint_prefix = {
			above = "↙ ",
			current = "← ",
			below = "↖ ",
		},
	},
}
