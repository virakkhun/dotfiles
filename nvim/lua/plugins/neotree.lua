return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		popup_border_style = "rounded",
		default_component_configs = {
			indent = {
				with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
			git_status = {
				symbols = {
					modified = "",
					added = "",
					deleted = "",
				},
			},
		},
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
					".angular",
					".husky",
					".vscode",
					"node_modules",
				},
				never_show = {},
				follow_current_file = {
					enable = true,
				},
			},
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			},
		},
		buffers = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			},
		},
	},
	init = function()
		vim.keymap.set("n", "<leader>E", ":Neotree focus<CR>")
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
	end,
}
