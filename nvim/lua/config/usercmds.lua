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
  local client = vim.lsp.get_client_by_id(1)

  if client == nil then
    print("no client available")
    return
  end

  local fmt = {
    { "id: ", client.id },
    "\n",
    { "name: ", client.name },
    "\n",
    {
      "is_active: ",
      client.initialized and "Active ✔︎",
    },
    "\n",
    {
      "root_dir: ",
      client.root_dir,
    },
  }

  print(to_str_format(fmt))
end, {
  nargs = "*",
  complete = function()
    return { "key", "default" }
  end,
})
