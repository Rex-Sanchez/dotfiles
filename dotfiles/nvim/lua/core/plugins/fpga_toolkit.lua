local f = require('fpga_toolkit')


vim.keymap.set('n', '<leader>vi', f.init_project,{})
vim.keymap.set('n', '<leader>vt', f.gen_tb,{})
vim.keymap.set('n', '<leader>vs', f.vsim,{})
vim.keymap.set('n', '<leader>vw', f.gtkwave,{})
vim.keymap.set('n', '<leader>vf', function()
  vim.cmd("!verilog-format -f %")
end,{})

vim.keymap.set('n', '<leader>vx', function()
  local current_buf_num = vim.api.nvim_get_current_buf()
  local name = vim.api.nvim_buf_get_name(current_buf_num)
  vim.cmd('!verilator --lint-only -Wall ' .. name)
end)
