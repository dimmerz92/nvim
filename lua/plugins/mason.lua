return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
		{ "j-hui/fidget.nvim", opts = { notification = { window = { winblend = 0 } } } },
        "neovim/nvim-lspconfig",
    },
}
