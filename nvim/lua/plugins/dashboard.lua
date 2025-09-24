return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                               __                ]],
      [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
      [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
      [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
      [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    }

    local _, src_hl = MiniIcons.get("directory", "src")
    local sbin = MiniIcons.get("directory", "sbin")

    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. "File files", ":FzfLua files<CR>"),
      dashboard.button("r", sbin .. " " .. "File old files", ":FzfLua oldfiles<CR>"),
      dashboard.button("l", "󰒲 " .. "Lazy", ":Lazy<CR>"),
      dashboard.button("q", " " .. "Quit", ":qa<CR>"),
    }
    for _, btn in ipairs(dashboard.section.buttons.val) do
      -- highlight first 3 columns (adjust if your icon + padding differs)
      btn.opts.hl = { { src_hl, 0, 3 } }
      btn.opts.cursor = 2
    end

    alpha.setup(dashboard.config)

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ Neovim loaded "
          .. stats.loaded
          .. "/"
          .. stats.count
          .. " plugins in "
          .. ms
          .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    vim.api.nvim_create_autocmd({ "FileType", "BufEnter", "User" }, {
      once = true,
      pattern = "AlphaReady",
      callback = function()
        -- disabled line number for alpha
        vim.cmd("setlocal nonumber")
        vim.cmd("setlocal norelativenumber")
        vim.cmd("setlocal statuscolumn=")
      end,
    })
  end,
}
