return {
  "ibhagwan/fzf-lua",
  event = "VimEnter",
  keys = {
    { "<leader>fw", "<cmd>FzfLua grep_cword<cr>", desc = "Find word" },
    { "<leader>/", "<cmd>FzfLua live_grep<cr>", desc = "Live greping" },
    { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "List all keymaps" },
    { "<leader><leader>", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>,", "<cmd>FzfLua buffers<cr>", desc = "List current buffers opened" },
  },
  opts = {
    winopts = { border = { " " }, preview = { border = { " " } } },
    fzf = {
      ["alt-a"] = "select-all+accept",
    },
  },
}
