if true then
  return {}
end

return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "lua_ls",
        "tsserver",
        "html",
        "tailwindcss",
        "cssls",
        "gopls",
        "yamlls",
        "bashls",
        "nginx_language_server",
        "angularls",
        "svelte",
      },
    },
  },
}
