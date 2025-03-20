local dap_ui = require("dapui")
dap_ui.setup()












vim.keymap.set('n', '<leader>D', function()
  local cp = vim.api.nvim_win_get_cursor(0)
  dap_ui.toggle()
  vim.api.nvim_win_set_cursor(0,cp)
end)

vim.keymap.set('n', '<leader>dS', function()
  dap_ui.float_element("stacks")
end)

vim.keymap.set('n', '<leader>ds', function()
  dap_ui.float_element("scopes")
end)
