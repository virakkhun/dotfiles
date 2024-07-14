return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		event = { "VeryLazy" },
		init = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				ensure_installed = {
					"lua",
					"vim",
					"javascript",
					"html",
					"rust",
					"typescript",
					"svelte",
					"go",
					"yaml",
					"tsx",
					"angular",
					"css",
					"diff",
					"jsdoc",
					"c",
					"cpp",
					"vimdoc",
					"regex",
					"bash",
					"markdown_inline",
					"markdown",
					"vue",
					"svelte",
				},
				sync_install = false,
				highlight = {
					enable = true,
					disable = function(_, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
				},
				indent = { enable = true },
				autotag = {
					enable = true,
					enable_rename = true,
					enable_close = true,
					enable_close_on_slash = true,
				},
				textobjects = {
					move = {
						enable = true,
						set_jumps = true, -- whether to set jumps in the jumplist
						goto_next_start = {
							["]m"] = "@function.outer",
							["]]"] = { query = "@class.outer", desc = "Next class start" },
							["]o"] = "@loop.*",
							["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
							["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
						},
						goto_next_end = {
							["]M"] = "@function.outer",
							["]["] = "@class.outer",
						},
						goto_previous_start = {
							["[m"] = "@function.outer",
							["[["] = "@class.outer",
						},
						goto_previous_end = {
							["[M"] = "@function.outer",
							["[]"] = "@class.outer",
						},
						goto_next = {
							["]d"] = "@conditional.outer",
						},
						goto_previous = {
							["[d"] = "@conditional.outer",
						},
					},
					lsp_interop = {
						enable = true,
						border = true,
						floating_preview_opts = {},
						peek_definition_code = {
							["<leader>df"] = "@function.outer",
							["<leader>dF"] = "@class.outer",
						},
					},
				},
			})
		end,
		config = function()
			vim.filetype.add({
				pattern = {
					[".*%.component%.html"] = "angular.html",
					[".*.page%.html"] = "angular.html",
				},
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "angular.html",
				callback = function()
					vim.treesitter.language.register("angular", "angular.html")
				end,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "VeryLazy",
		init = function()
			require("treesitter-context").setup({
				on_attach = function()
					return vim.bo.filetype ~= "svelte" or vim.bo.filetype ~= "html"
				end,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		evnet = "VeryLazy",
		after = "nvim-treesitter",
	},
	{
		"windwp/nvim-ts-autotag",
		event = "VeryLazy",
		opts = {},
		init = function()
			require("nvim-ts-autotag").setup({})
		end,
	},
}
