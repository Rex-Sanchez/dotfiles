--vim.api.nvim_create_user_command('SourceConfig', function()
-- local fzf = require('fzf')
-- local configPath = vim.fn.stdpath('config')
-- coroutine.wrap(function()
--  fzf.default_options = { fzf_cwd = configPath }
--  local results = fzf.fzf()
--  if results then
--   vim.cmd("source " .. configPath .. "/" .. results[1])
--   print("Sourcing " .. results[1])
--  end
-- end)()
--end, {})









