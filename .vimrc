" specify a directory for plugins
" avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
Plug 'tomtom/tcomment_vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'

" you will load your plugin here
" make sure you use single quotes
" initialize plugin system
call plug#end()

" defines the leader key to be `,`
let mapleader = ','

" autotabularize things
vnoremap <silent> <Leader>cee :Tabularize /=<CR>
vnoremap <silent> <Leader>cec :Tabularize /:<CR>
vnoremap <silent> <Leader>ce  :Tabularize /

" Leader C is the prefix for code related mappîngs
noremap <silent> <Leader>cc :TComment<CR>

" Leader F is for file related mappîngs (open, browse...) 
nnoremap <silent> <Leader>f :CtrlP<CR>
nnoremap <silent> <Leader>fm :CtrlPMRU<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl B for buffer related mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>b :CtrlPBuffer<CR> " cycle between buffer
nnoremap <silent> <Leader>bb :bn<CR> "create (N)ew buffer
nnoremap <silent> <Leader>bd :bdelete<CR> "(D)elete the current buffer
nnoremap <silent> <Leader>bu :bunload<CR> "(U)nload the current buffer
nnoremap <silent> <Leader>bl :setnomodifiable<CR> " (L)ock the current buffer"

color dracula

" reloads .vimrc -- making all changes active
map <silent> <Leader>v :source ~/.vimrc<CR>:PlugInstall<CR>:bdelete<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Lightline
let g:lightline = { 'colorscheme': 'solarized', }               "vim-lightline
set laststatus=2                                                "vim-lightline
set noshowmode                                                  "vim-lightline

" =========== file explorer configs ==========
" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" open file in a new tab
let g:netrw_browse_split = 3

