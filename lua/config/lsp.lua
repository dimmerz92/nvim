vim.lsp.enable("cssls")
vim.lsp.enable("gopls")
vim.lsp.enable("html")
vim.lsp.enable("htmx")
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("templ")
vim.lsp.enable("ts_ls")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
			vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
			vim.keymap.set("i", "<C-Space>", function()
				vim.lsp.completion.get()
			end)
			vim.keymap.set("i", "<Tab>", function()
				if vim.fn.pumvisible() == 1 then
					return "<C-y>"
				else
					return "<Tab>"
				end
			end, { expr = true, noremap = true })
		end
	end
})

vim.diagnostic.config({
	virtual_lines = true,
})
