return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
  },
  init = function()
    vim.g.barbar_auto_setup = false

    vim.keymap.set("n", "<leader>[", ":BufferPrevious<CR>", {})
    vim.keymap.set("n", "<leader>]", ":BufferNext<CR>", {})
    vim.keymap.set("n", "<leader>w", ":BufferClose<CR>", {})
  end,
  opts = {
    modified = { button = "⚡" },
    animation = false,
    preset = "powerline",
  },
}
