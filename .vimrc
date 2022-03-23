" < vim-plug >
call plug#begin('~/.vim/plugged')

" xcode colorscheme
Plug 'arzg/vim-colors-xcode'

" JS syntax highlight
Plug 'yuezk/vim-js'

" JSX syntax highlight
Plug 'maxmellon/vim-jsx-pretty'

" TS/TSX syntax highlight
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Search engine
Plug 'ctrlpvim/ctrlp.vim'

" EditorConfig Vim
Plug 'editorconfig/editorconfig-vim'

" Vim Prettier
Plug 'prettier/vim-prettier'

" Vim Gitgutter
Plug 'airblade/vim-gitgutter'

" GitHub Copilot
Plug 'github/copilot.vim'

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

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
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

autocmd FileType javascript,typescript,typescript.tsx setlocal ts=2 sts=2 sw=2
" </ identation >

" < search highlight >
" highlight search matches
set hls

" higlight on search
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

" < commands >
" lint actual file with eslint (requires yarn + eslint configured)
:command Eslint ! yarn eslint % --fix

" < \commands >
