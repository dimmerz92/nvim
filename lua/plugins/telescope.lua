return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})

		local builtin = require("telescope.builtin")
		local map = vim.keymap.set

		map("n", "<leader>gd", builtin.lsp_definitions, { desc = "[G]o to [D]efinition" })
		map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
		map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
		map("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
		map("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "[G]o to [D]eclaration" })
		map("n", "<leader>gr", builtin.lsp_references, { desc = "[G]o to [R]eference" })
		map("n", "<leader>gI", builtin.lsp_implementations, { desc = "[G]o to [I]mplementation" })
		map("n", "<leader>D", builtin.lsp_type_definitions, { desc = "Type [D]efinition" })
		map("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "[D]ocument [S]ymbol" })
		map("n", "<leader>ws", builtin.lsp_dynamic_workspace_symbols, { desc = "[W]orkspace [S]ymbols" })
		map("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		map("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		map("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
		map("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		map("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch [W]ord" })
		map("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
		map("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnistics" })
		map("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		map("n", "<leader>s.", builtin.oldfiles, { desc = "[S]earch Recent Files" })
		map("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
		map("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
				winblend = 10,
				previewer = false,
			})
		end, { desc = "[/] Fuzzily search in current buffer" })
		map("n", "<leader>sn", function()
			builtin.find_files { cwd = vim.fn.stdpath "config" }
		end, { desc = "[S]earch [N]eovim files" })
	end,
}
