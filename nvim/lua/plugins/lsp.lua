return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      document_highlight = {
        enabled = false,
      },
      servers = {
        tailwindcss = {
          filetypes_include = { "html", "tsx", "css" },
        },
        lua_ls = {},
        html = {},
        cssls = {},
        bashls = {},
        nginx_language_server = {},
        eslint = {
          enabled = false,
        },
        vtsls = {
          settings = {
            typescript = {
              preferences = {
                importModuleSpecifier = "relative",
                importModuleSpecifierEnding = "minimal",
              },
            },
          },
        },
        denols = {},
      },
    },
  },
}
