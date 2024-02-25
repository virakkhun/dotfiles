return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		init = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>,", builtin.find_files, {})
			vim.keymap.set("n", "<leader>;", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		init = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				file_ignore_patterns = {
					"node_modules",
					".git",
				},
				filters = { dofile = true, custom = { "^.git$" } },
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
