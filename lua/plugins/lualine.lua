return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_c = {
				"filename",
				"lsp_progress",
			},
		},
	},

	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"arkav/lualine-lsp-progress",
	},
}
