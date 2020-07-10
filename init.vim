" Defines the source file for pluggins
source $HOME/.config/nvim/vim-plug/plugins.vim

if (has("termguicolors"))
 set termguicolors
endif

let g:ycm_clangd_binary_path = "/usr/bin/clangd"

" imported from $HOME/.vimrc
syntax on
filetype plugin indent on
" Dark Plus 1
"colorscheme codedark
" Dark Plus 2
colorscheme dark_plus
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
" Opens NERDTree
map <C-o> :NERDTreeToggle<CR>
" Creates new tab
map <C-n> :tabnew<CR>
" Iterates over tabs
map <C-p> :tabn<CR>
" Iterates over tabs
map <C-l> :tabp<CR>
" Splits window horizontally
map <C-h> :sp<CR>
" Splits window vertically
map <C-v> :vsp<CR>
" Undo
map <C-z> :undo<CR>
" Redo
map <C-y> :redo<CR>
" Ctrl + s to Save changes
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>
