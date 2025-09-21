return {
  "stevearc/conform.nvim",
  enabled = false,
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rust-analyzer", lsp_format = "fallback" },
      javascript = { "prettierd", stop_after_first = true },
      typescript = { "prettierd", stop_after_first = true },
    },
    format_on_save = {
      lsp_format = "fallback",
    },
    formatters = {
      prettierd = {
        args = { "--single-quote" }
      }
    }
  },
}
