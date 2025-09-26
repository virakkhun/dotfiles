return {
  cmd = { "vtsls", "--stdio" },
  init_options = {
    hostInfo = "neovim",
  },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_dir = function(bufnr, on_dir)
    if vim.fs.root(bufnr, { "deno.json" }) then
      return false
    end

    local root_markers = { "package-lock.json", "yarn.lock", "pnpm-lock.yaml", "bun.lockb", "bun.lock" }
    local project_root = vim.fs.root(bufnr, root_markers) or vim.fn.getcwd()

    on_dir(project_root)
  end,
}
