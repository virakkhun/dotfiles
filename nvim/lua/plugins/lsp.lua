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
        ts_ls = {
          enabled = true,
          init_options = {
            preferences = {
              importModuleSpecifierPreference = "relative",
              importModuleSpecifierEnding = "minimal",
            },
          },
        },
        angularls = {},
        vtsls = {
          enabled = false,
        },
      },
      setup = {
        setup = {
          angularls = function()
            LazyVim.lsp.on_attach(function(client)
              --HACK: disable angular renaming capability due to duplicate rename popping up
              client.server_capabilities.renameProvider = false
            end, "angularls")
          end,
        },
      },
    },
  },
}
