local function getProjectType()
	local rojoProject = vim.fs.root(0, function(name)
		return name:match(".+%.project%.json$")
	end)

	if rojoProject ~= nil then
		return "roblox"
	else
		return "standard"
	end
end

return {
	"lopi-py/luau-lsp.nvim",
	opts = {
		platform = {
			type = getProjectType(),
		},
		fflags = {
			enable_new_solver = true,
		},
		plugin = {
			enabled = false,
		},
	},
}
