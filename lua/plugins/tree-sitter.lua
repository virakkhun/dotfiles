return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			ensure_installed = { "lua", "vim", "elixir", "javascript", "html", "rust", "typescript", "svelte" },
			sync_install = false,
			highlight = {
				enable = true,
				disable = { "vimdoc" },
			},
			indent = { enable = true },
		})
	end,
}
