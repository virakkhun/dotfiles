local output = vim.fn.system({ "ls" })
local files = vim.split(output, "\n")

local tailwind_filetypes_exclude = {
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
}

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
          settings = {
            tailwindCSS = {
              experimental = {
                configFile = "/Users/virak/Documents/projects/iqair-website/app/styles/tailwind.css",
              },
            },
            filetypes_exclude = tailwind_filetypes_exclude,
          },
        },
        sourcekit = {},
        lua_ls = {},
        html = {},
        cssls = {
          lint = {
            unknownAtRules = "ignore",
          },
          settings = {
            css = {
              lint = {
                unknownAtRules = "ignore",
              },
            },
          },
        },
        bashls = {},
        nginx_language_server = {},
        eslint = {
          enabled = true,
        },
        denols = {},
        vtsls = {
          settings = {
            javascript = {
              preferences = {
                importModuleSpecifier = "non-relative", -- Or "relative", "auto", "project-relative"
              },
            },
            typescript = {
              preferences = {
                importModuleSpecifier = "non-relative", -- Or "relative", "auto", "project-relative"
              },
            },
          },
        },
      },
      setup = {
        tailwindcss = function()
          return not includes(files, "tailwind.config.js") and includes(files, "deno.json")
        end,
        denols = function()
          return not includes(files, "deno.json")
        end,
        angularls = function()
          return not includes(files, "angular.json")
        end,
        sourcekit = function()
          return not includes(files, "Package.swift")
        end,
      },
    },
  },
}
