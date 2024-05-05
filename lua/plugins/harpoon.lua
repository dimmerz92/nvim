return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		local conf = require("telescope.config").values
		local toggle_telescope = function(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end
			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find({})
		end
		local map = function(keys, func)
			vim.keymap.set("n", keys, func)
		end

		harpoon:setup({})

		map("<leader>a", function()
			harpoon:list():add()
		end)
		map("<leader>rm", function()
			harpoon:list():remove()
		end)
		map("<leader>hc", function()
			harpoon:list():clear()
		end)
		map("<C-h>", function()
			toggle_telescope(harpoon:list())
		end)

		map("<C-u>", function()
			harpoon:list():select(1)
		end)
		map("<C-i>", function()
			harpoon:list():select(2)
		end)
		map("<C-o>", function()
			harpoon:list():select(3)
		end)
		map("<C-p>", function()
			harpoon:list():select(4)
		end)

		map("<C-S-p>", function()
			harpoon:list():prev()
		end)
		map("<C-S-n>", function()
			harpoon:list():next()
		end)
	end,
}
