" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" show line numbers
set number
" disable vi compatibility (emulation of old bugs)
set nocompatible
" disable swap files
set noswapfile
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" make indent work for pasting
set pastetoggle=<F2>
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
colorscheme koehler

" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" enable search highlighting
set hlsearch
set incsearch
" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Show trailing whitespace
set list listchars=trail:.,extends:>
" Windows has this
set guifont=Consolas:h10

" status line
set laststatus=2                  " Show the status line always

" Use lightline for configuring the status line
" lightline puts the mode in the status line
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


" netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 30


" let mapleader = ","


" Map toggle last buffer
nnoremap <C-e> :b#<CR>

" Toggle uppercase/lowercase for current word
inoremap <c-h> <esc>viw~ea
nnoremap <c-h> viw~e

" Wrap selected text in single quotes
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>w

" --------------------------------------------------------
" Fuzzy Finder
" --------------------------------------------------------
"
" We're not using Plug, and we installed via git:
"
" git clone https://github.com/junegunn/fzf.git .fzf
" git clone https://github.com/junegunn/fzf.vim.git .fzf.vim
"
" .fzf/install --all
"
" Also we're using Silver Searcher instead of find to do the
" searching, see .bashrc
"
set rtp+=~/.fzf
so ~/.fzf/plugin/fzf.vim

set rtp+=~/.fzf.vim
so ~/.fzf.vim/plugin/fzf.vim

nnoremap <leader>b :Buffers<cr>
nnoremap <leader>f :Files<cr>


echo '------'
echo '>^.^<'
echo '------'
echo 'Beta'
