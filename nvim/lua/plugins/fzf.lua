local fzf = require("fzf-lua")

fzf.setup({
	winopts = { border = { " " }, preview = { border = { " " } } },
	fzf = {
		["alt-a"] = "select-all+accept",
	},
})
fzf.register_ui_select()
