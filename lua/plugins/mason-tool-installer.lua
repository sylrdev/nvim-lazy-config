return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			-- lsp
			"lua-language-server",
			"luau-lsp",

			-- formatter
			"stylua",

			-- linter
			"selene",
		},
	},

	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
	},
}
