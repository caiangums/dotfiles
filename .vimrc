" < vim-plug >
call plug#begin('~/.vim/plugged')

" xcode colorscheme
Plug 'arzg/vim-colors-xcode'

" JS syntax highlight
Plug 'yuezk/vim-js'

" JSX syntax highlight
Plug 'maxmellon/vim-jsx-pretty'

" Search engine
Plug 'ctrlpvim/ctrlp.vim'

" EditorConfig Vim
Plug 'editorconfig/editorconfig-vim'

" Vim Prettier
Plug 'prettier/vim-prettier'

" Elixir support
Plug 'elixir-editors/vim-elixir'

call plug#end()
" </ vim-plug >

" < plugins >
" [arzg/vim=colors-xcode] enable colorscheme
colorscheme xcodedarkhc
" set green comments for theme
let g:xcodedarkhc_green_comments = 1

" [ctrlp] Hide files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" [ctrlp] Show dotfiles
let g:ctrlp_show_hidden = 1

" [editorconfig-vim] show verbose messages
let g:editorconfig_verbose = 1

" [vim-prettier] enable autoformat
let g:prettier#autoformat_require_pragma = 0
" </ plugins >

" < general >
" syntax enabled
syntax enable
" show numbers
set nu       
" set relative number
set nu relativenumber
" enable filetype detection
filetype plugin indent on

" set colorcolumn to 180
set colorcolumn=180

" avoid *.swp and backup files
set nowritebackup
set noswapfile
set nobackup
" </ general >

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

" < search highlight >
"highlight search matches
set hls

"higlight on search
set is
" </ search highlight >

" < remap >
" map ^s to save as :w in normal mode
nnoremap <silent> <C-s> <esc>:w<cr>
" and in input mode
inoremap <silent> <C-s> <esc>:w<cr>a
" do not forget to put this line on your .bashrc
" stty -ixon
" < \remap >

