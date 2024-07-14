return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		opts = {
			transparent_background = true,
		},
		config = function()
			vim.cmd.colorscheme("catppuccin")
			vim.cmd("hi StatusLineNc guifg=#1e1e2e guibg=#1e1e2e")
			vim.cmd("hi StatusLine guifg=#1e1e2e guibg=#1e1e2e")
			vim.cmd("hi NeoTreeNormal guibg=#1e1e2e")
			vim.cmd("hi NeoTreeNormalNc guibg=#1e1e2e")
			vim.cmd("hi NeoTreeStatusLineNc guibg=#1e1e2e")
			vim.cmd("hi NeoTreeStatusLine guibg=#1e1e2e")
			vim.cmd("hi NormalFloat guibg=#1e1e2e")
			vim.cmd("hi WinSeperator guifg=#179299")
		end,
	},
}
