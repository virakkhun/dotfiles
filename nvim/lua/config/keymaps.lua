local opt = {
  noremap = true,
  silent = true,
}

vim.keymap.set("n", "<leader>s", ":silent! w<CR>", opt)
vim.keymap.set("n", "<leader>cs", ":nohls<CR>", opt)
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
vim.keymap.set("n", "<leader>]", ":bn<CR>", opt)
vim.keymap.set("n", "<leader>[", ":bp<CR>", opt)
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", opt)

-- word selection
vim.keymap.set("n", '<leader>"', "vaw", { noremap = true, silent = true, desc = "Surround a word" })

-- window
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- git
vim.keymap.set("n", "gl", function()
  vim.cmd("TrackLog")
end, { desc = "Inline git log" })

-- clipboard
vim.keymap.set({ "n", "i", "v" }, "<C-,>", function()
  vim.cmd("Clipboard")
end)
