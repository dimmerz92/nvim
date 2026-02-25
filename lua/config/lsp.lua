-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
vim.diagnostic.config({ virtual_lines = true })

vim.lsp.enable("basedpyright")

vim.lsp.enable("csharp_ls")

vim.lsp.enable("cssls")

vim.lsp.enable("gopls")

vim.lsp.enable("html")

vim.lsp.enable("htmx")

vim.lsp.enable("templ")

vim.lsp.enable("ts_ls")

vim.lsp.enable("lua_ls")
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" } }
		}
	}
})
