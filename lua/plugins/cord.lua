local function getTooltip()
	return string.format("Nvim %i.%i.%i", vim.version().major, vim.version().minor, vim.version().patch)
end

return {
	"vyfor/cord.nvim",
	opts = {
		editor = {
			tooltip = getTooltip(),
		},
		display = {
			theme = "catppuccin",
			flavor = "accent",
		},
		idle = {
			enabled = false,
		},
	},
}
