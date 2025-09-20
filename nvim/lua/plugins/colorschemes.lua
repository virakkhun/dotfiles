return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
		config = function()
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		name = "kanagawa",
	},
	{
		"sainnhe/gruvbox-material",
		lazy = true,
		name = "gruvbox-material",
	},
}
