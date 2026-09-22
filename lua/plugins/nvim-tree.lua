return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup {
			view = {
				width = 45,
			},
			filters = {
				git_ignored = false,
				dotfiles = false,
			},
		}

		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
		vim.keymap.set("n", "<leader>F", ":NvimTreeFindFile<CR>", { silent = true })
	end,

	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
