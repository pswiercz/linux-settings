let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let python_highlight_all=1
syntax on

let mapleader=" "
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
"set Search guibg=LightBlue

set splitbelow
set splitright

set nonu
set relativenumber number

set encoding=utf-8


"split navigations
noremap <Space> <Nop>

nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd FileType python map <buffer> <C-B> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-B> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

map <F1> :w <CR> :source ~/.vimrc<CR>
map <F2> :NERDTreeToggle<CR>

"inoremap <C-(> ()<ESC>

inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap { {}<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
"inoremap < <><ESC>ha

"map <C-@> :echo 'date ' . strftime('%c')<CR>

"noremap   <silent> cc      :s,^\(\s*\)[^# \t]\@=,\1# ,e<CR>:nohls<CR>zvj
"noremap   <silent> cu      :s,^\(\s*\)# \s\@!,\1,e<CR>:nohls<CR>zvj

"noremap   <buffer> K      :s,^\(\s*\)[^# \t]\@=,\1#,e<CR>:nohls<CR>zvj
"noremap   <buffer> <C-K>  :s,^\(\s*\)#\s\@!,\1,e<CR>:nohls<CR>zvj

set colorcolumn =170
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
"Plug 'kiteco/vim-plugin'    
"Plug 'vim-scripts/Conque-GDB'

call plug#end()


let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox 

set guicursor=n-v-c:block
set guicursor+=i-ci-ve:block-blinkwait175-blinkon250-blinkoff150

"let g:kite_tab_complete=1
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line


let g:NERDTreeWinPos = "right"

"call togglebg#map("<F5>")
"imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>


if executable('rg')
    let g:rg_derive_root='true'
endif

"call hi Normal guibg=NONE ctermbg=NONE
"set hi Normal guibg=NONE ctermbg=NONE

let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_tranparent = 0
    endif
endfunction

nnoremap <C-t> :call Toggle_transparent()<CR>


"call Toggle_transparent()
"echom t:is_transparent





