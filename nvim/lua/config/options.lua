vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.statuscolumn = "%s%=%{v:relnum?v:relnum:v:lnum} %C "
-- vim.opt.statuscolumn = "%s %l %r"
vim.opt.cursorline = true -- Highlight current line
vim.opt.scrolloff = 10 -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor
vim.opt.wrap = false -- Don't wrap lines
vim.opt.cmdheight = 0 -- Command line height
vim.opt.spelllang = { "en" } -- Set language for spellchecking
vim.opt.winborder = "rounded"

-- Tabbing / Indentation
vim.opt.tabstop = 2 -- Tab width
vim.opt.shiftwidth = 2 -- Indent width
vim.opt.softtabstop = 2 -- Soft tab stop
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart auto-indenting
vim.opt.autoindent = true -- Copy indent from current line
vim.opt.grepprg = "rg --vimgrep" -- Use ripgrep if available
vim.opt.grepformat = "%f:%l:%c:%m" -- filename, line number, column, content

-- Search Settings
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.smartcase = true -- Case-sensitive if uppercase in search
vim.opt.hlsearch = true -- Don't highlight search results
vim.opt.incsearch = true -- Show matches as you type

-- Visual Settings
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.matchtime = 2 -- How long to show matching bracket
vim.opt.completeopt = "menuone,noinsert,noselect" -- Completion options
vim.opt.showmode = false -- Don't show mode in command line
vim.opt.pumheight = 10 -- Popup menu height
vim.opt.pumblend = 10 -- Popup menu transparency
vim.opt.winblend = 0 -- Floating window transparency
vim.opt.conceallevel = 0 -- Don't hide markup
vim.opt.concealcursor = "" -- Show markup even on cursor line
vim.opt.synmaxcol = 300 -- Syntax highlighting column limit

-- File Handling
vim.opt.backup = false -- Don't create backup files
vim.opt.writebackup = false -- Don't backup before overwriting
vim.opt.swapfile = false -- Don't create swap files
vim.opt.undofile = true -- Persistent undo
vim.opt.updatetime = 300 -- Time in ms to trigger CursorHold
vim.opt.timeoutlen = 500 -- Time in ms to wait for mapped sequence
vim.opt.ttimeoutlen = 0 -- No wait for key code sequences
vim.opt.autoread = true -- Auto-reload file if changed outside
vim.opt.autowrite = false -- Don't auto-save on some events
vim.opt.diffopt:append("vertical") -- Vertical diff splits
vim.opt.diffopt:append("algorithm:patience") -- Better diff algorithm
vim.opt.diffopt:append("linematch:60") -- Better diff highlighting (smart line matching)

-- Behavior Settings
vim.opt.errorbells = false -- Disable error sounds
vim.opt.backspace = "indent,eol,start" -- Make backspace behave naturally
vim.opt.autochdir = false -- Don't change directory automatically
vim.opt.iskeyword:append("-") -- Treat dash as part of a word
vim.opt.path:append("**") -- Search into subfolders with `gf`
vim.opt.selection = "inclusive" -- Use inclusive selection
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
vim.opt.modifiable = true -- Allow editing buffers
vim.opt.encoding = "UTF-8" -- Use UTF-8 encoding
vim.opt.wildmenu = true -- Enable command-line completion menu
vim.opt.wildmode = "longest:full,full" -- Completion mode for command-line
vim.opt.wildignorecase = true -- Case-insensitive tab completion in commands

-- Folding Settings
vim.opt.foldmethod = "indent" -- Use expression for folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
vim.opt.foldlevel = 99 -- Keep all folds open by default
vim.opt.foldtext = ""
vim.opt.laststatus = 3

-- Split Behavior
vim.opt.splitbelow = true -- Horizontal splits open below
vim.opt.splitright = true -- Vertical splits open to the right
