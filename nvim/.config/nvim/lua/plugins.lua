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

-- < plugins >
-- [tokyonight] colorscheme
vim.cmd.colorscheme('tokyonight-night')

-- [telescope] Map the leader key to a comma
vim.g.mapleader = ','
-- [telescope] Find files using Telescope command-line sugar
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- [editorconfig-vim] show verbose messages
vim.g.editorconfig_verbose = 1

-- [vim-prettier] enable autoformat
vim.g["prettier#autoformat_require_pragma"] = 0

-- [vim-gitgutter] enable gitgutter
vim.g.gitgutter_enable_lint = 1
vim.opt.updatetime = 400

-- [nvim-snippy] configs to use <Tab>
local map = vim.keymap.set

map({ 'i', 's' }, '<Tab>', function()
    return require('snippy').can_expand_or_advance() and '<Plug>(snippy-expand-or-advance)' or '<Tab>'
end, { expr = true })
map({ 'i', 's' }, '<S-Tab>', function()
    return require('snippy').can_jump(-1) and '<Plug>(snippy-previous)' or '<S-Tab>'
end, { expr = true })
map('x', '<Tab>', '<Plug>(snippy-cut-text)')

-- set filetypes as typescript.tsx
-- augroup that manage specific autocmds
local tsx_group = vim.api.nvim_create_augroup("TSXFileTypeGroup", { clear = true })

-- create the autocmd
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.tsx", "*.jsx" },
  callback = function()
    vim.bo.filetype = "typescript.tsx"
  end,
  group = tsx_group,
})

-- </ plugins >
