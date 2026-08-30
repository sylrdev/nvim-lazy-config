return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			-- lsp
			"lua-language-server",
			"luau-lsp",
			"json-lsp",
			"taplo",
			"basedpyright",

			-- formatter
			"stylua",
			"prettierd",
			"ruff",

			-- linter
			"selene",
		},
	},

	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
	},
}
