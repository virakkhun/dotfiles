let s:cpo_save=&cpo
set cpo&vim
inoremap <C-W> u
inoremap <C-U> u
nnoremap  h
nnoremap <NL> j
nnoremap  k
nnoremap  l
nmap  d
tnoremap  
nnoremap <silent>  " vaw
nnoremap <silent>  [ <Cmd>bp
nnoremap <silent>  ] <Cmd>bn
nnoremap <silent>  w :bp | :bd #
nnoremap <silent>  L :LazyGit
nnoremap <silent>  vs s
nnoremap <silent>  v :vs
nnoremap <silent>  M :Mason
nnoremap <silent>  cs :nohls
nnoremap <silent>  s :w
nnoremap  e <Cmd>Oil
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
vnoremap , 
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
nnoremap <silent> Q :q!
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap <silent> W 
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap <C-K> k
nnoremap <C-J> j
nnoremap <C-H> h
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nmap <C-W><C-D> d
nnoremap <C-L> l
inoremap  u
inoremap  u
inoremap <silent> jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set clipboard=unnamedplus
set completeopt=menu,menuone,noselect
set confirm
set expandtab
set fillchars=diff:╱,eob:\ ,fold:\ ,foldclose:,foldopen:,foldsep:\ 
set formatoptions=jcroqlnt
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set helplang=en
set ignorecase
set jumpoptions=view
set laststatus=3
set noloadplugins
set mouse=a
set packpath=/opt/homebrew/Cellar/neovim/0.11.4/share/nvim/runtime
set pumblend=10
set pumheight=10
set noruler
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/oil.nvim,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/blink.cmp,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/conform.nvim,~/.local/share/nvim/lazy/mini.icons,~/.local/share/nvim/lazy/tokyonight.nvim,/opt/homebrew/Cellar/neovim/0.11.4/share/nvim/runtime,/opt/homebrew/Cellar/neovim/0.11.4/share/nvim/runtime/pack/dist/opt/matchit,/opt/homebrew/Cellar/neovim/0.11.4/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/mason-lspconfig.nvim/after
set scrolloff=4
set sessionoptions=buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds
set shiftround
set shiftwidth=2
set shortmess=ITCcFWolOt
set noshowmode
set sidescrolloff=8
set smartcase
set smartindent
set splitbelow
set splitkeep=screen
set splitright
set statusline=%#lualine_transparent#
set tabstop=2
set termguicolors
set undofile
set undolevels=10000
set updatetime=200
set virtualedit=block
set wildmode=longest:full,full
set window=32
set winminwidth=5
" vim: set ft=vim :
