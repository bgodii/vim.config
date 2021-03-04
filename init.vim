set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'codota/tabnine-vim'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
"sudo apt-get install silversearcher-ag
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"pip3 install --user neovim jedi psutil setproctitle
Plug 'roxma/nvim-completion-manager'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'ajh17/spacegray.vim'
call plug#end()

set hidden
set number
set relativenumber
set inccommand=split
colorscheme spacegray
set background=dark

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap // :call NERDComment(0,"toggle")<CR>
vnoremap // :call NERDComment(0,"toggle")<CR>
nnoremap <leader>/ :call NERDComment(0, "toggle)
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<cr>

"NerdTree configurations
autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"Rainbow Configuration
let g:rainbow_active = 1

"Multi Cursors configuration
let g:multi_cursor_start_word_key='<C-d>'
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_quit_key            = '<Esc>'
