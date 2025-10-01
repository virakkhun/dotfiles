return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = true,
      },
      inactive_sections = {
        lualine_c = {
          function()
            local paths = vim.split(vim.env.PWD, "/")
            local lastPath = paths[#paths]
            return lastPath
          end,
        },
      },
    },
  },
}
