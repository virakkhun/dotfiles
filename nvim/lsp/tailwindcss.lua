return {
  cmd = { "tailwindcss-language-server", "--stdio" },
  -- filetypes copied and adjusted from tailwindcss-intellisense
  filetypes = {
    -- html
    "gohtml",
    "gohtmltmpl",
    "html",
    "htmlangular",
    "markdown",
    -- css
    "css",
    "sass",
    "scss",
    -- js
    "javascriptreact",
    "typescriptreact",
    -- mixed
    "vue",
    "svelte",
    "templ",
  },
  settings = {
    tailwindCSS = {
      validate = true,
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidScreen = "error",
        invalidVariant = "error",
        invalidConfigPath = "error",
        invalidTailwindDirective = "error",
        recommendedVariantOrder = "warning",
      },
      classAttributes = {
        "class",
        "className",
        "class:list",
        "classList",
        "ngClass",
      },
      includeLanguages = {
        htmlangular = "html",
        templ = "html",
      },
    },
  },
  workspace_required = true,
  root_dir = function(bufnr, on_dir)
    local root_markers = {
      -- Generic
      "tailwind.config.js",
      "tailwind.config.cjs",
      "tailwind.config.mjs",
      "tailwind.config.ts",
      "postcss.config.js",
      "postcss.config.cjs",
      "postcss.config.mjs",
      "postcss.config.ts",
      -- Fallback for tailwind v4, where tailwind.config.* is not required anymore
      ".git",
    }
    local project_root = vim.fs.root(bufnr, root_markers) or vim.fn.getcwd()

    on_dir(project_root)
  end,
}
