-- common
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local function map(mode, lhs, rhs)
			vim.keymap.set(mode, lhs, rhs, { buffer = event.buf })
		end

		map("n", "gd", vim.lsp.buf.definition)
		map("n", "gD", vim.lsp.buf.declaration)

		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if not client then
			return
		end

		-- Highlight the current word under the cursor
		if client:supports_method("textDocument/documentHighlight") then
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.clear_references,
			})
		end
	end,
})

vim.lsp.config("*", {
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = true,
			},
		},
	},
})

-- luau
vim.lsp.config("luau-lsp", {
	settings = {
		["luau-lsp"] = {
			completion = {
				autocompleteEnd = true,
				imports = {
					separateGroupsWithLine = true,
					stringRequires = {
						enabled = true,
					},
					useConst = false,
				},
				showDeprecatedItems = false,
				addParentheses = false,
				fillCallArguments = false,
			},
			hover = {
				multilineFunctionDefinitions = true,
				showTableKinds = true,
			},
			inlayHints = {
				parameterNames = "all",
			},
		},
	},
})

vim.lsp.enable {
	"lua_ls",
}
