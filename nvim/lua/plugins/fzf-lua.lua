return {
  "ibhagwan/fzf-lua",
  event = "VimEnter",
  keys = {
    { "<leader>fw", "<cmd>FzfLua grep_cword<cr>", desc = "Find word" },
    { "<leader>.", "<cmd>FzfLua live_grep<cr>", desc = "Live greping" },
    { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "List all keymaps" },
    { "<leader><leader>", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>,", "<cmd>FzfLua buffers<cr>", desc = "List current buffers opened" },
    { "<leader>ca", "<cmd>FzfLua lsp_code_actions previewer=codeaction_native<cr>", desc = "Code actions" },
  },
  opts = {
    winopts = { border = { " " }, preview = { border = { " " } } },
  },
  config = function()
    vim.cmd([[FzfLua register_ui_select]])
  end,
}
