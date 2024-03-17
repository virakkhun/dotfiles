return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = false,
				show_hidden_count = false,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					".git",
					".DS_Store",
					"thumbs.db",
				},
				never_show = {},
				follow_current_file = {
					enable = true,
				},
			},
		},
	},
	init = function()
		vim.keymap.set("n", "<leader>b", ":Neotree toggle<CR>")
		vim.keymap.set("n", "<leader>t", ":Neotree focus<CR>")
	end,
}
