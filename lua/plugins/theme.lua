return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavor = "mocha",
			term_colors = true,
			dim_inactive = { enabled = true, shade = "dark", percentage = 0.05 },
			integrations = {
				blink_cmp = { style = "bordered" },
				fidget = true,
				gitgutter = true,
				mason = true,
				telescope = { enabled = true },
				treesitter = true,
			},
		})

		vim.cmd.colorscheme "catppuccin"
	end,
}
