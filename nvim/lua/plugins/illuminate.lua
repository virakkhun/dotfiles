return {
	"RRethy/vim-illuminate",
	event = "VeryLazy",
	config = function()
		require("illuminate").configure({
			filetypes_denylist = {
				"dirbuf",
				"dirvish",
				"fugitive",
				"telescope",
				"neo-tree",
				"alpha",
				"TelescopePrompt",
				"neo-tree-popup",
			},
		})
	end,
}
