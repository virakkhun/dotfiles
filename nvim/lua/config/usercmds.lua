local function to_str_format(tbl)
  local each = {}
  local function tostr(t)
    local result = {}
    for _, value in pairs(t) do
      table.insert(result, value)
    end
    return table.concat(result)
  end

  for _, value in pairs(tbl) do
    if type(value) == "table" then
      table.insert(each, tostr(value))
    else
      table.insert(each, value)
    end
  end

  return table.concat(each)
end

vim.api.nvim_create_user_command("LspInfo", function()
  local clients = vim.lsp.get_clients()

  if clients == nil or #clients == 0 then
    print("!no client available")
    return
  end

  local client_fmt = {}

  for _, client in pairs(clients) do
    local fmt = {
      { "id: ", client.id },
      "\n",
      { "name: ", client.name },
      "\n",
      {
        "is_active: ",
        type(client.attached_buffers[1]) == nil and "Inactive ✖︎" or "Active ✔︎",
      },
      "\n",
      {
        "root_dir: ",
        client.root_dir,
      },
    }
    table.insert(client_fmt, to_str_format(fmt))
  end

  print(table.concat(client_fmt, "\n========\n"))
end, {
  nargs = "*",
  complete = function()
    return { "key", "default" }
  end,
})

-- Make terminal buffers unlisted and auto-wipe
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.buflisted = false
    vim.opt_local.bufhidden = "wipe"
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.statuscolumn = ""
    vim.opt_local.winfixheight = true
  end,
})

vim.api.nvim_create_user_command("CopyCurrentPath", function()
  local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  if path then
    vim.fn.setreg("+", path)
  end
end, {
  nargs = "*",
  complete = function()
    return { "key", "default" }
  end,
})
