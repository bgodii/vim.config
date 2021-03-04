call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'codota/tabnine-vim'
call plug#end()


set hidden
set number
set relativenumber
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
noremap <leader>ev :vsplit ~/.config/nvm/init.vim<cr>
noremap <leader>sv :source ~/.config/nvm/init.vim<cr>
nnoremap <C-b> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
