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
        eslint = {
          enabled = false,
        },
        -- ts_ls = {
        --   enabled = false,
        -- },
        -- tsserver = {
        --   enabled = false,
        --   init_options = {
        --     preferences = {
        --       importModuleSpecifierPreference = "relative",
        --       importModuleSpecifierEnding = "minimal",
        --     },
        --   },
        -- },
        -- angularls = {},
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
      },
    },
  },
}
