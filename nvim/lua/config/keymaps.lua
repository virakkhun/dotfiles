local opt = {
  noremap = true,
  silent = true,
}

vim.keymap.set("n", "<leader>s", ":w<CR>", opt)
vim.keymap.set("n", "<leader>cs", ":nohls<Return>", opt)
vim.keymap.set("n", "<leader>M", ":Mason<CR>", opt)
vim.keymap.set("n", "Q", ":q!<CR>", opt)
vim.keymap.set({ "i" }, "jk", "<Esc>", { silent = true })
vim.keymap.set("v", ",", "<Esc>")
vim.keymap.set("n", "<leader>v", ":vs<CR>", opt)
vim.keymap.set("n", "<leader>vs", "<C-W>s", opt)

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opt)
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, opt)
vim.keymap.set("n", "<leader>ca", ":FzfLua lsp_code_actions previewer=codeaction_native<CR>", opt)

-- buffer
vim.keymap.set("n", "<leader>]", "<CMD>bn<CR>", opt)
vim.keymap.set("n", "<leader>[", "<CMD>bp<CR>", opt)
vim.keymap.set("n", "<leader>bd", "<CMD>bdelete<CR>", opt)

-- word selection
vim.keymap.set("n", '<leader>"', "vaw", { noremap = true, silent = true, desc = "Surround a word" })

-- terminal
vim.keymap.set("n", "<leader>t", function()
  vim.cmd("belowright 12split")
  vim.cmd("set winfixheight")
  vim.cmd("set nonumber")
  vim.cmd("set norelativenumber")
  vim.cmd("set statuscolumn=")
  vim.cmd("term")
  vim.cmd("startinsert")
end, opt)
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>", table.insert(opt, { desc = "Exit terminal" }))

-- window
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- git
vim.keymap.set("n", "gl", function()
  vim.cmd("TrackLog")
end, { desc = "Inline git log" })
