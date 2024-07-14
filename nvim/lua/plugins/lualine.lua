return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	init = function()
		vim.g.lualine_laststatus = vim.o.laststatus
		if vim.fn.argc(-1) > 0 then
			vim.o.statusline = " "
		else
			vim.o.laststatus = 0
		end
	end,
	opts = function()
		local lualine = require("lualine")

		local mocha = require("catppuccin.palettes").get_palette("mocha")

		local bubbles_theme = {
			normal = {
				a = { fg = mocha.base, bg = mocha.blue },
				b = { fg = mocha.blue, bg = "#45475a" },
				c = { fg = mocha.blue },
			},
			insert = { a = { fg = mocha.base, bg = mocha.green } },
			visual = { a = { fg = mocha.base, bg = mocha.mauve } },
			replace = { a = { fg = mocha.base, bg = mocha.red } },
		}

		vim.o.laststatus = vim.g.lualine_laststatus

		lualine.setup({
			options = {
				theme = bubbles_theme,
				globalstatus = vim.o.laststatus == 3,
				component_separators = "",
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {
						"neo-tree",
						"alpha",
					},
				},
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "filename" },
				lualine_c = {
					{
						"branch",
						gui = "bold",
					},
				},
				lualine_x = {
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
						source = function()
							local gitsigns = vim.b.gitsigns_status_dict
							if gitsigns then
								return {
									added = gitsigns.added,
									modified = gitsigns.changed,
									removed = gitsigns.removed,
								}
							end
						end,
					},
				},
				lualine_y = { "filetype", "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {},
			tabline = {},
			winbar = {},
			extensions = { "neo-tree", "lazy" },
		})
	end,
}
