return {
	"saghen/blink.cmp",
	build = function()
		require("blink.cmp").build():pwait()
	end,
	opts = {
		keymap = {
			preset = "default",
			["<return>"] = { "accept", "fallback" },
			["<tab>"] = { "select_next", "fallback" },
			["\\"] = { "select_prev", "fallback" },
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "lazydev" },
			providers = {
				lazydev = {
					module = "lazydev.integrations.blink",
					fallbacks = { "lsp" },
				},
			},
		},
		cmdline = {
			enabled = false,
		},
	},

	dependencies = {
		"saghen/blink.lib",
		"rafamadriz/friendly-snippets",
		{
			"folke/lazydev.nvim",
			ft = "lua",
			-- opts = {
			-- 	library = {
			-- 		{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			-- 	},
			-- },
			config = true,
		},
	},
}
