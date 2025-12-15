vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lspAttach", { clear = true }),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

    if client:supports_method("textDocument/implementation") then
      vim.keymap.set(
        "n",
        "<leader>gi",
        vim.lsp.buf.implementation,
        { noremap = true, silent = true, desc = "Go to implementation" }
      )
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.component.html",
  callback = function()
    vim.bo.filetype = "htmlangular"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "oil" },
  callback = function()
    vim.opt_local.statuscolumn = "%s"
  end,
})
