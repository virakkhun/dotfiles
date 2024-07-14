return {
	{
		"b0o/incline.nvim",
		event = "VeryLazy",
		opts = {
			window = {
				padding = 0,
				margin = { horizontal = 0 },
			},
			render = function(props)
				local helpers = require("incline.helpers")
				local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
				if filename == "" then
					return ""
				end
				local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
				local modified = vim.bo[props.buf].modified
				local buffer = {
					ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
					" ",
					{ filename, gui = modified and "regular,italic" or "bold" },
					" ",
					guibg = "#1e1e2e",
				}
				return buffer
			end,
		},
	},
}
