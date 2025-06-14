return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})
		local builtin = require("telescope.builtin")
		local km = vim.keymap

		km.set("n", "<leader>gd", builtin.lsp_definitions, { desc = "[G]o to [D]efinition" })
		km.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
		km.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
		km.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
		km.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "[G]o to [D]eclaration" })
		km.set("n", "<leader>gr", builtin.lsp_references, { desc = "[G]o to [R]eference" })
		km.set("n", "<leader>gI", builtin.lsp_implementations, { desc = "[G]o to [I]mplementation" })
		km.set("n", "<leader>D", builtin.lsp_type_definitions, { desc = "Type [D]efinition" })
		km.set("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "[D]ocument [S]ymbol" })
		km.set("n", "<leader>ws", builtin.lsp_dynamic_workspace_symbols, { desc = "[W]orkspace [S]ymbols" })
		km.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		km.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		km.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
		km.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		km.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch [W]ord" })
		km.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
		km.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnistics" })
		km.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		km.set("n", "<leader>s.", builtin.oldfiles, { desc = "[S]earch Recent Files" })
		km.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
		km.set("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
				winblend = 10,
				previewer = false,
			})
		end, { desc = "[/] Fuzzily search in current buffer" })
		km.set("n", "<leader>sn", function()
			builtin.find_files { cwd = vim.fn.stdpath "config" }
		end, { desc = "[S]earch [N]eovim files" })
	end
}
