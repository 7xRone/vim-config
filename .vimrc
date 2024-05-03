set nocompatible
syntax on
filetype  plugin on
let mapleader = " "
set termguicolors
set number
set relativenumber
set fileformat=unix
set encoding=UTF-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set nowrap
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
set scrolloff=8
set cursorline
set showcmd
set showmode
set conceallevel=1
set clipboard=unnamedplus
set noerrorbells visualbell t_vb=
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :noh<CR><CR>:<backspace>
set textwidth=79
set mouse=a
so ~/.vim/autoclose.vim
colorscheme slate
hi Normal guibg=NONE ctermbg=NONE
set background=dark
hi Normal guibg=NONE ctermbg=NONE
let g:terminal_ansi_colors = [
    \ '#282828', '#cc241d', '#98971a', '#d79921',
    \ '#458588', '#b16286', '#689d6a', '#a89984',
    \ '#928374', '#fb4934', '#b8bb26', '#fabd2f',
    \ '#83a598', '#d3869b', '#8ec07c', '#ebdbb2',
\]

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

nnoremap <C-e> :Lexplore %:p:h<CR>:<backspace>
nnoremap <S-e> :Lexplore<CR>:<backspace>

let g:netrw_keepdir = 0
let g:netrw_winsize = 20
let g:netrw_banner = 0
let g:netrw_localcopydircmd = 'cp -r'
hi! link netrwMarkFile Search



function! NetrwMapping()
  nmap <buffer> H u
  nmap <buffer> h -^
  nmap <buffer> l <CR>

  nmap <buffer> . gh
  nmap <buffer> P <C-w>z

  nmap <buffer> L <CR>:Lexplore<CR>
  nmap <buffer> <Leader>dd :Lexplore<CR>
  nmap <buffer> <TAB> mf
  nmap <buffer> <S-TAB> mF
  nmap <buffer> <Leader><TAB> mu
  nmap <buffer> fl :echo join(netrw#Expose("netrwmarkfilelist"), "\n")<CR>
  nmap <buffer> fq :echo 'Target:' . netrw#Expose("netrwmftgt")<CR>
  nmap <buffer> fd mtfq

endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

