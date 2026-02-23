return {
	{
		"seblyng/roslyn.nvim",
		---@module 'roslyn.config'
		---@type RoslynNvimConfig
		opts = {},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
			ensure_installed = {
				"roslyn", -- ← this pulls Microsoft.CodeAnalysis.LanguageServer
				-- "rzls",    -- only if you still need separate Razor (most don't in 2026)
			},
		},
	}
}
