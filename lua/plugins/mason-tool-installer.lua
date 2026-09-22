return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			-- lsp
			"lua-language-server"

			-- formatter

			-- linter
		},
	},

	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
	},
}
