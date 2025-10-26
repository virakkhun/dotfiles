return {
  "stevearc/oil.nvim",
  opts = {
    keymaps = {
      ["l"] = "actions.select",
      ["<CR>"] = "actions.select",
    },
  },
  lazy = false,
  keys = {
    { "<leader>e", "<CMD>Oil<CR>", desc = "Open parent directory" },
  },
}
