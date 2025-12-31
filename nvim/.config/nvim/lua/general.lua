-- < general >
local vim = vim

-- fixing color inside a tmux session
vim.opt.termguicolors = true

-- syntax enabled
vim.opt.syntax = "on"
-- show numbers
vim.opt.nu = true
-- set relative number
vim.opt.relativenumber = true
-- enable filetype detection (left for completion)
vim.cmd("filetype plugin indent on")

-- set colorcolumn to 180
--vim.opt.colorcolumn = 180

-- avoid *.swp and backup files
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.backup = false

-- [search highlight]
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- [identation]
-- Number of spaces in a tab.
vim.opt.tabstop = 4
-- Number of spaces in each indent increment.
vim.opt.shiftwidth = 4
-- Number of spaces counted in editing operations.
vim.opt.softtabstop = 4
-- Insert spaces instead of tabs. (on building makefiles, comment this line)
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Use backspace to remove indentation, end or start of lines.
vim.opt.backspace = "indent,eol,start"

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "typescript.tsx" },
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.shiftwidth = 2
  end,
})

-- [remap]
-- map ^s to save as :w in normal mode
vim.keymap.set('n', '<C-s>', '<cmd>w<cr>', { silent = true })
-- and in input mode
vim.keymap.set('i', '<C-s>', '<cmd>w<cr>a', { silent = true })
-- do not forget to put this line on your .bashrc
-- stty -ixon

-- </ general >
