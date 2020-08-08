" < vim-plug >
call plug#begin('~/.vim/plugged')

" Dracula Colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

" EditorConfig Vim
Plug 'editorconfig/editorconfig-vim'

" Elixir support
Plug 'elixir-editors/vim-elixir'

call plug#end()
" </ vim-plug >

" enable colorscheme
colorscheme dracula

" syntax enabled
syntax enable
" show numbers
set nu       
" enable filetype detection
filetype plugin indent on

" < identation >
" Number of spaces in a tab.
set tabstop=4

" Number of spaces in each indent increment.
set shiftwidth=4

" Number of spaces counted in editing operations.
set softtabstop=4

" Insert spaces instead of tabs. (on building makefiles, comment this line)
set expandtab

" Use backspace to remove indentation, end or start of lines.
set backspace=indent,eol,start
" </ identation >

" < remap >
" map ^s to save as :w in normal mode
nnoremap <silent> <C-s> <esc>:w<cr>
" and in input mode
inoremap <silent> <C-s> <esc>:w<cr>a
" do not forget to put this line on your .bashrc
" stty -ixon
" < \remap >

