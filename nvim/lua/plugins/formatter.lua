return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua", lsp_format = "fallback" },
      rust = { "rust-analyzer", lsp_format = "fallback" },
      javascript = { "prettier", "prettierd", stop_after_first = true },
      typescript = { "prettier", "prettierd", stop_after_first = true },
      html = { "prettier", "prettierd", stop_after_first = true },
      htmlangular = { "prettier", "prettierd", stop_after_first = true },
      json = { "prettier", "prettierd", "deno_fmt", stop_after_first = true },
    },
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 500,
    },
    formatters = {
      prettier = {
        condition = function()
          return vim.fs.root(0, { "deno.json" }) == nil
        end,
      },
      prettierd = {
        condition = function()
          return vim.fs.root(0, { "deno.json" }) == nil
        end,
      },
      deno_fmt = {
        condition = function()
          return vim.fs.root(0, { "deno.json" }) ~= nil
        end,
      },
    },
  },
}
