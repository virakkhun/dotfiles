return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>sj", false },
      { "<leader>sk", false },
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fc",
        function()
          require("telescope.builtin").colorscheme()
        end,
        desc = "Find colorscheme",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
