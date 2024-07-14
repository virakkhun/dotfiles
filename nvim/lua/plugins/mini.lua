return {
	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>up",
				function()
					local util = require("lazy.core.util")
					vim.g.minipairs_disable = not vim.g.minipairs_disable
					if vim.g.minipairs_disable then
						util.warn("Disabled auto pairs", { title = "Option" })
					else
						util.info("Enabled auto pairs", { title = "Option" })
					end
				end,
				desc = "Toggle auto pairs",
			},
		},
	},
	{
		"echasnovski/mini.surround",
		version = "*",
		event = "VeryLazy",
		opts = {},
		config = function()
			require("mini.surround").setup({})
		end,
	},
}
