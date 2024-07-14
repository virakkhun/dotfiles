return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = "VeryLazy",
		init = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			local vue_language_server_path =
				"/Users/virak/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"

			lspconfig.tsserver.setup({
				capabilities = capabilities,
				on_attach = function()
					vim.keymap.set("n", "<C-x>", function()
						vim.lsp.buf.code_action({
							apply = true,
							context = {
								only = { "source.removeUnused.ts" },
								diagnostics = {},
							},
						})
					end)
				end,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = vue_language_server_path,
							languages = { "vue" },
						},
					},
				},
			})

			lspconfig.html.setup({
				capabilities = capabilities,
				filetypes = { "html", "angular.html" },
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.svelte.setup({
				capabilities = capabilities,
			})

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
						},
						staticcheck = true,
						gofumpt = true,
					},
				},
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})

			lspconfig.bashls.setup({
				capabilities = capabilities,
			})

			lspconfig.volar.setup({
				capabilities = capabilities,
				init_options = {
					vue = {
						hybridMode = false,
					},
				},
			})

			lspconfig.marksman.setup({
				capabilities = capabilities,
			})

			local cmd = {
				"ngserver",
				"--stdio",
				"--tsProbeLocations",
				"/Users/virak/.local/share/nvim/mason/packages/angular-language-server/node_modules/typescript",
				"--ngProbeLocations",
				"/Users/virak/.local/share/nvim/mason/packages/angular-language-server/node_modules/@angular/language-server",
			}

			lspconfig.angularls.setup({
				cmd = cmd,
				on_new_config = function(new_config)
					new_config.cmd = cmd
				end,
				capabilities = capabilities,
				filetypes = { "typescript", "html", "angular.html" },
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
