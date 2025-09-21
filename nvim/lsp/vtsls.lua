---@type vim.lsp.Config
return {
	cmd = { "vtsls", "--stdio" },
	init_options = {
		hostInfo = "neovim",
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	root_dir = function(bufnr, on_dir)
		if vim.fs.root(bufnr, { "deno.json" }) then
			return false
		end

		local root_markers = { "package-lock.json", "yarn.lock", "pnpm-lock.yaml", "bun.lockb", "bun.lock" }
		-- Give the root markers equal priority by wrapping them in a table
		root_markers = vim.fn.has("nvim-0.11.4") == 1 and { root_markers, { ".git" } }
			or vim.list_extend(root_markers, { ".git" })
		-- We fallback to the current working directory if no project root is found
		local project_root = vim.fs.root(bufnr, root_markers) or vim.fn.getcwd()

		on_dir(project_root)
	end,
	-- settings = {
	-- 	javascript = {
	-- 		preferences = {
	-- 			importModuleSpecifier = "non-relative", -- Or "relative", "auto", "project-relative"
	-- 		},
	-- 		suggestionActions = {
	-- 			enabled = false,
	-- 		},
	-- 	},
	-- 	typescript = {
	-- 		preferences = {
	-- 			importModuleSpecifier = "non-relative", -- Or "relative", "auto", "project-relative"
	-- 		},
	-- 		suggestionActions = {
	-- 			enabled = false,
	-- 		},
	-- 		-- disable jsdoc @returns
	-- 		suggest = {
	-- 			jsdoc = {
	-- 				generateReturns = false,
	-- 			},
	-- 		},
	-- 	},
	-- },
}
