vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lspAttach", { clear = true }),
  callback = function(event)
    local client = assert(vim.lsp.get_client_by_id(event.data.client_id))

    if client:supports_method("textDocument/implementation") then
      vim.keymap.set(
        "n",
        "<leader>gi",
        vim.lsp.buf.implementation,
        { noremap = true, silent = true, desc = "Go to implementation" }
      )
    end

    if client:supports_method("textDocument/completion") then
      client.capabilities = require("blink.cmp").get_lsp_capabilities(client.capabilities)
      vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
    end
  end,
})
