return {
  cmd = {
    "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp",
  },
  cmd_env = {
    SOURCEKIT_TOOLCHAIN_PATH = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain",
  },
  filetypes = { "swift" },
  root_markers = { "Package.swift", ".git" },
  root_dir = function(bufnr, on_dir)
    local root = vim.fs.root(bufnr, { "Package.swift", ".git" }) or vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr))
    on_dir(root)
  end,
}
