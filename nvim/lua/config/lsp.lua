local lsp_files = vim.fs.dir(vim.fs.joinpath("~/.config/nvim", "lsp"))
local lsp_enabled_tbl = {}

for file in lsp_files do
  local lsp_name = vim.split(file, ".", { plain = true })
  table.insert(lsp_enabled_tbl, lsp_name[1])
end

vim.lsp.enable(lsp_enabled_tbl)

vim.diagnostic.config({
  virtual_text = true,
  virtual_lines = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚",
      [vim.diagnostic.severity.WARN] = "󰀪",
      [vim.diagnostic.severity.INFO] = "󰋽",
      [vim.diagnostic.severity.HINT] = "󰌶",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})
