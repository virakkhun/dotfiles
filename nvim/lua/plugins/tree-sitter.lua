return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "angular",
        "nginx",
        "css",
        "scss",
        "cpp",
        "c",
        "swift",
        "jsdoc",
      },
      highlight = {
        enable = true,
        disable = { "dockerfile" },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        ensure_installed = opts.ensure_installed,
        highlight = opts.highlight,
      })
    end,
  },
}
