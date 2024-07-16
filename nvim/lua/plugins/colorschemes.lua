return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "storm",
		},
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
}
