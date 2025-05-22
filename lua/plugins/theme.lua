function ApplyTheme()
	vim.cmd.colorscheme("catppuccin")
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			config = function()
				require("lualine").setup({
					options = { theme = "catppuccin" },
				})
			end
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			ApplyTheme()
			require("catppuccin").setup({
				flavour = "mocha",
				term_colors = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					treesitter = true,
					notify = true,
				},
			})
		end
	}
}
