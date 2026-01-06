-- < commands >
local vim = vim

-- lint actual file with eslint (requires yarn + eslint configured)
vim.api.nvim_create_user_command(
  'EslintFix',
  function()
    -- escaped current buffer's file name
    local current_file = vim.fn.expand('%:p')
    if current_file and current_file ~= '' then
      -- run
      vim.cmd('!yarn eslint "' .. current_file .. '" --fix')
    else
      -- notify
      vim.notify("Current buffer is not associated with a file.", vim.log.levels.WARN)
    end
  end,
  {
    desc = 'Run yarn eslint --fix on the current file',
    bang = true, -- Allows using ! (e.g., :EslintFix!)
  }
)

-- some projects have custom lint commands
vim.api.nvim_create_user_command(
  'LintFix',
  function()
    -- escaped current buffer's file name
    local current_file = vim.fn.expand('%:p')
    if current_file and current_file ~= '' then
      -- run
      vim.cmd('!yarn lint "' .. current_file .. '" --fix')
    else
      -- notify
      vim.notify("Current buffer is not associated with a file.", vim.log.levels.WARN)
    end
  end,
  {
    desc = 'Run yarn lint --fix on the current file',
    bang = true, -- Allows using ! (e.g., :LintFix!)
  }
)

-- lint actual file with eslint at a next project (requires next + eslint configured)
vim.api.nvim_create_user_command(
  'NextEslintFix',
  function()
    -- escaped current buffer's file name
    local current_file = vim.fn.expand('%:p')
    if current_file and current_file ~= '' then
      -- run
      vim.cmd('!npm run lint --file "' .. current_file .. '" --fix')
    else
      -- notify
      vim.notify("Current buffer is not associated with a file.", vim.log.levels.WARN)
    end
  end,
  {
    desc = 'Run npm run lint --fix on the current file',
    bang = true, -- Allows using ! (e.g., :NextEslintFix!)
  }
)

-- execute jest command for actual file (requires yarn + jest configured)
vim.api.nvim_create_user_command(
  'YarnJest',
  function()
    -- escaped current buffer's file name
    local current_file = vim.fn.expand('%:p')
    if current_file and current_file ~= '' then
      -- run
      vim.cmd('!yarn jest "' .. current_file .. '"')
    else
      -- notify
      vim.notify("Current buffer is not associated with a file.", vim.log.levels.WARN)
    end
  end,
  {
    desc = 'Run yarn jest on the current file',
    bang = true, -- Allows using ! (e.g., :NextEslintFix!)
  }
)

-- [shortcuts]
vim.keymap.set('n', '<leader>ce', '<cmd>EslintFix<cr>')
vim.keymap.set('n', '<leader>cp', '<cmd>Prettier<cr>')
vim.keymap.set('n', '<leader>cj', '<cmd>YarnJest<cr>')
-- </ commands >
