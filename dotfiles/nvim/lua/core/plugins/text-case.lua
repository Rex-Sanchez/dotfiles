function SnakeToCamel()
  local line = vim.fn.getline('.')
  line = line:gsub('_(%w)', function(c) return c:upper() end)
  line = line:gsub('^(%l)', function(c) return c:lower() end)
  vim.fn.setline('.', line)
end

vim.api.nvim_create_user_command('ToCamel', SnakeToCamel, {})
vim.keymap.set('n', '<leader>cc', SnakeToCamel ,{})
