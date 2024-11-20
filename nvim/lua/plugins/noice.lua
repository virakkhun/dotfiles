return {
  "folke/noice.nvim",
  event = "VeryLazy",
  -- version = "4.4.7",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    routes = {
      {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      },
      {
        filter = {
          event = "notify",
          find = "No code actions available",
        },
        opts = {
          skip = true,
        },
      },
      {
        filter = {
          event = "msg_show",
          find = "written",
        },
        opts = {
          skip = true,
        },
      },
    },
    presets = {
      bottom_search = false,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
  },
}
