return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
	},
	opts = {
		modified = { button = "⚡" },
		animation = true,
		preset = "powerline",
	},
	init = function()
		vim.g.barbar_auto_setup = false

		vim.keymap.set("n", "<leader>[", ":BufferPrevious<CR>", {})
		vim.keymap.set("n", "<leader>]", ":BufferNext<CR>", {})
		vim.keymap.set("n", "<leader>w", ":BufferClose<CR>", {})
		vim.keymap.set("n", "<leader>W", ":BufferCloseAllButCurrent<CR>", {})
	end,
}
