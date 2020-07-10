" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Dracula theme
    Plug 'dracula/vim'
    " ALE (C/C++ Linter)
    Plug 'dense-analysis/ale'
    " YouCompleteMe
    Plug 'ycm-core/YouCompleteMe'
    " Dark+ theme
    Plug 'tomasiser/vim-code-dark'
    Plug 'dunstontc/vim-vscode-theme'
    " coc.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
