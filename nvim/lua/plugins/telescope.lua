return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {},
		init = function()
			-- mappings
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>,", builtin.find_files, {})
			vim.keymap.set("n", "<leader>;", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>B", builtin.buffers, {})
			vim.keymap.set("n", "<leader>ts", builtin.grep_string, {})
			vim.keymap.set("n", "<leader>co", builtin.colorscheme, {})
			vim.keymap.set("n", "<leader>tm", "<CMD>Telescope media_files<CR>", {})
		end,
		config = function()
			local tele = require("telescope")

			tele.setup({
				defaults = {
					layout_strategy = "horizontal",
					layout_config = {
						preview_width = 0.65,
						horizontal = {
							size = {
								width = "95%",
								height = "95%",
							},
						},
					},
					prompt_prefix = " ",
					selection_caret = "󰁕 ",
				},
				pickers = {},
				extensions = {
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					},
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							winblend = 10,
						}),
					},
					media_files = {
						filetypes = { "png", "webp", "jpg", "jpeg", "svg" },
						find_cmd = "rg",
					},
				},
				file_ignore_patterns = {
					"node_modules",
					".git",
				},
				filters = { dofile = true, custom = { "^.git$" } },
			})
			tele.load_extension("ui-select")
			tele.load_extension("fzf")
		end,
	},
	{ "nvim-telescope/telescope-media-files.nvim", event = "VeryLazy" },
	{
		"nvim-telescope/telescope-ui-select.nvim",
		event = "VeryLazy",
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", event = "VeryLazy", build = "make" },
}
