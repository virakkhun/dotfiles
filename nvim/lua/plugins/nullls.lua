return {
	{
		"nvimtools/none-ls.nvim",
		event = "VeryLazy",
		config = function()
			local null_ls = require("null-ls")
			local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
			local event = "BufWritePre" -- or "BufWritePost"

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettierd.with({
						extra_filetypes = { "svelte", "angular.html" },
					}),
					null_ls.builtins.formatting.gofumpt,
					null_ls.builtins.code_actions.gitsigns,
				},
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.keymap.set("n", "<leader>f", function()
							vim.lsp.buf.format({
								bufnr = vim.api.nvim_get_current_buf(),
								async = false,
								filter = function(cli)
									return cli.name == "null-ls"
								end,
							})
						end, {
							buffer = bufnr,
							desc = "[lsp] format",
						})

						-- format on save
						vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
						vim.api.nvim_create_autocmd(event, {
							buffer = bufnr,
							group = group,
							callback = function()
								vim.lsp.buf.format({
									bufnr = bufnr,
									async = false,
									filter = function(cli)
										return cli.name == "null-ls"
									end,
								})
							end,
							desc = "[lsp] format on save",
						})
					end
				end,
			})
		end,
	},
}