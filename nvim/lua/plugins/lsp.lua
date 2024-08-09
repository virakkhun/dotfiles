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
        lua_ls = {},
        html = {},
        cssls = {},
        bashls = {},
        nginx_language_server = {},
        tsserver = {},
        vtsls = {
          enabled = false,
        },
      },
    },
  },
}
