return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			"lua-language-server",
			"luau-lsp",
			"json-lsp",
			"taplo",

			"stylua",
			"prettierd",

			"selene",
		},
	},

	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
	},
}
