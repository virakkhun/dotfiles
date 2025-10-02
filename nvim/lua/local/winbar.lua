local M = {}

M.get_winbar = function()
  local path_segments = vim.split(vim.env.PWD, "/")
  local dir = path_segments[#path_segments]
  local icon = MiniIcons.get("directory", "src")
  vim.cmd("highlight Winbar guibg=NONE guifg=#2ac3de")
  return "%=" .. dir .. " " .. icon
end

-- Autocmd group to update winbar on common events
local au_group = vim.api.nvim_create_augroup("MinimalWinbar", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  group = au_group,
  callback = function()
    vim.opt.winbar = M.get_winbar()
  end,
})

return M
