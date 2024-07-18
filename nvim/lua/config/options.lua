vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.lazyvim_statuscolumn = {
	folds_open = false, -- show fold sign when fold is open
	folds_githl = false, -- highlight fold sign with git sign color
}
-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

local opt = vim.opt

opt.laststatus = 3
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.tabstop = 2
opt.termguicolors = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}
opt.foldlevel = 99
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
opt.formatoptions = "jcroqlnt" -- tcqj
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.statuscolumn = [[%!v:lua.require'lazyvim.util'.ui.statuscolumn()]]
opt.hlsearch = false
opt.backup = false
opt.swapfile = false
opt.conceallevel = 0
opt.pumblend = 17
opt.wildmode = "longest:full"
opt.wildoptions = "pum"

if vim.fn.has("nvim-0.10") == 1 then
	opt.smoothscroll = true
	opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
	opt.foldmethod = "expr"
	opt.foldtext = ""
else
	opt.foldmethod = "indent"
	opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end
