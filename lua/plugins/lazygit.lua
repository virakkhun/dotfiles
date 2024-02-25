return {
	"kdheepak/lazygit.nvim",
	init = function()
		require("telescope").load_extension("lazygit")
	end,
}
