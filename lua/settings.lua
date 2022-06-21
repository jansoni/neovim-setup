local set = vim.opt
local cmd = vim.cmd

-- Indenting text
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.autoindent = true

-- Numberlines
set.number = true
set.relativenumber = true

-- Search options
set.showmatch = true
set.hlsearch = true
set.incsearch = true
set.ignorecase = true

-- Etc
set.termguicolors = true
set.cursorline = true
set.ttyfast = true
set.completeopt = "menuone,noselect"
set.sidescroll = 10


-- Old vimrc commands
cmd [[ 
    colorscheme monokai
   
    let g:airline_theme='dark'

    set nocompatible
    set cc=80

    set wildmode=longest,list
    set path+=**
    set encoding=utf-8

    let g:netrw_banner = 0
    let g:netrw_liststyle = 3
    let g:netrw_browse_split = 4
    let g:netrw_altv = 1
    let g:netrw_winsize = 16

    autocmd VimEnter * :Vexplore | wincmd p
    
    inoremap " ""<left>
    inoremap ' ''<left>
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>
    inoremap {<CR> {<CR>}<ESC>O
    inoremap {;<CR> {<CR>};<ESC>O

    ]]






