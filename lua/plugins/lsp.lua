return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.diagnostic.config({
			virtual_text = true,
			virtual_lines = false,
			update_in_insert = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
			},
		})

		-- HTML, HTMX, CSS, JS, TS
		vim.lsp.config("html", { filetypes = { "html", "templ" } })
		vim.lsp.config("htmx", { filetypes = { "html", "templ" } })
		vim.lsp.enable({ "html", "htmx", "tailwindcss" })

		-- Go, Templ
		vim.filetype.add({ extension = { templ = "templ" } })
		vim.lsp.enable({ "gopls", "templ" })
	end,
}
