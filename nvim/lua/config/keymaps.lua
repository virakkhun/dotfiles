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
vim.keymap.set("n", "W", "<C-w>", opt)
vim.keymap.set("n", "<leader>L", ":LazyGit<CR>", opt)
vim.keymap.set("n", "<leader>w", ":bp | :bd #<CR>", opt)

-- word selection
vim.keymap.set("n", '<leader>"', "vaw", { noremap = true, silent = true, desc = "Surround a word" })

-- terminal
vim.keymap.set("n", "<C-t>", "<C-w>s | <C-w>r | :set nonumber | :set norelativenumber | :terminal<CR>", opt)
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>", table.insert(opt, { desc = "Exit terminal" }))

-- window
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

vim.keymap.set({ "n", "t" }, "<C-=>", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set({ "n", "t" }, "<C-->", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set({ "n", "t" }, "+", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set({ "n", "t" }, "_", [[<cmd>horizontal resize -2<cr>]])
