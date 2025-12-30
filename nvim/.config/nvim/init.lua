-- < vim-plug >
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- colorscheme
Plug('folke/tokyonight.nvim', { ['branch'] = 'main' })

-- JS syntax highlight
Plug('yuezk/vim-js')

-- JSX syntax highlight
Plug('maxmellon/vim-jsx-pretty')

-- TS/TSX syntax highlight
Plug('leafgarland/typescript-vim')
Plug('peitalin/vim-jsx-typescript')

-- MDX syntax highlight
Plug('jxnblk/vim-mdx-js')

-- (better) Search engine
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.x' })

-- EditorConfig Vim
Plug('editorconfig/editorconfig-vim')

-- Vim Prettier
Plug('prettier/vim-prettier')

-- Vim Gitgutter
Plug('airblade/vim-gitgutter')

-- GitHub Copilot
-- Plug('github/copilot.vim')

-- nvim-snippy + community maintained snippets 
Plug('dcampos/nvim-snippy')
Plug('honza/vim-snippets')

vim.call('plug#end')
-- </ vim-plug >

vim.cmd([[source ~/.dotfiles/.vimrc]])
