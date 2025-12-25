return {
  cmd = { "pylsp" },
  filetypes = { "python" },
  root_markers = {
    "requirements.txt",
  },
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "W391" },
          maxLineLength = 100,
        },
      },
    },
  },
}
