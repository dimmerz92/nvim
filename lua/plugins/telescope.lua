return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
	return vim.fn.executable "make" == 1
      end,
    },
    {
      "nvim-telescope/telescope-ui-select.nvim"
    },
  },
  config = function()
    require("telescope").setup({})

      local builtin = require("telescope.builtin")
      local km = vim.keymap

      km.set("n", "<leader>sh", builtin.help_tags, {
	desc="[S]earch [H]elp"
      })

      km.set("n", "<leader>sk", builtin.keymaps, {
	desc="[S]earch [K]eymaps"
      })

      km.set("n", "<leader>sf", builtin.find_files, {
	desc="[S]earch [F]iles"
      })

      km.set("n", "<leader>ss", builtin.builtin, {
	desc="[S]earch [S]elect Telescope"
      })

      km.set("n", "<leader>sw", builtin.grep_string, {
	desc="[S]earch [W]ord"
      })

      km.set("n", "<leader>sg", builtin.live_grep, {
	desc="[S]earch by [G]rep"
      })

      km.set("n", "<leader>sd", builtin.diagnostics, {
	desc="[S]earch [D]iagnistics"
      })

      km.set("n", "<leader>sr", builtin.resume, {
	desc="[S]earch [R]esume"
      })

      km.set("n", "<leader>s.", builtin.oldfiles, {
	desc="[S]earch Recent Files"
      })

      km.set("n", "<leader><leader>", builtin.buffers, {
	desc="[ ] Find existing buffers"
      })

      km.set("n", "<leader>/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
	  winblend = 10,
	  previewer = false,
	})
      end, {
	desc="[/] Fuzzily search in current buffer"
      })

      km.set("n", "<leader>sn", function()
	builtin.find_files { cwd=vim.fn.stdpath "config" }
      end, {
	desc="[S]earch [N]eovim files"
      })
    end
  }
