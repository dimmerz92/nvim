return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local hp = require("harpoon")
    local km = vim.keymap
    
    hp:setup()

    km.set("n", "<leader>a", function() hp:list():add() end)
    km.set("n", "<C-/>", function()
      hp.ui:toggle_quick_menu(hp:list())
    end)
    km.set("n", "<C-1>", function() hp:list():select(1) end)
    km.set("n", "<C-2>", function() hp:list():select(2) end)
    km.set("n", "<C-3>", function() hp:list():select(3) end)
    km.set("n", "<C-4>", function() hp:list():select(4) end)
    km.set("n", "<leader><C-1>", function() hp:list():replace_at(1) end)
    km.set("n", "<leader><C-2>", function() hp:list():replace_at(2) end)
    km.set("n", "<leader><C-3>", function() hp:list():replace_at(3) end)
    km.set("n", "<leader><C-4>", function() hp:list():replace_at(4) end)
  end
}
