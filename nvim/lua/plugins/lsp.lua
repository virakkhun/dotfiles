local output = vim.fn.system({ "ls" })
local files = vim.split(output, "\n")

--- find item in an array
---@param tbl table
---@param item string
local function includes(tbl, item)
  local results = vim.tbl_filter(function(v)
    return v == item
  end, tbl)

  return type(results) == "table" and vim.tbl_count(results) > 0
end

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
          filetypes_exclude = {
            "aspnetcorerazor",
            "astro",
            "astro-markdown",
            "blade",
            "clojure",
            "django-html",
            "htmldjango",
            "edge",
            "eelixir",
            "elixir",
            "ejs",
            "erb",
            "eruby",
            "gohtml",
            "gohtmltmpl",
            "haml",
            "handlebars",
            "hbs",
            "htmlangular",
            "html-eex",
            "heex",
            "jade",
            "leaf",
            "liquid",
            "markdown",
            "mustache",
            "njk",
            "nunjucks",
            "php",
            "razor",
            "slim",
            "twig",
            "less",
            "postcss",
            "sass",
            "stylus",
            "sugarss",
            "javascript",
            "reason",
            "rescript",
            "typescript",
            "templ",
          },
        },
        sourcekit = {},
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
      setup = {
        tailwindcss = function()
          return not includes(files, "tailwind.config.js")
        end,
        denols = function()
          return not includes(files, "deno.json")
        end,
        angularls = function()
          return not includes(files, "angular.json")
        end,
      },
    },
  },
}
