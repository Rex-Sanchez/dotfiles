local dap = require('dap')





vim.keymap.set("n", '<F5>', function()
  require('dapui').open()
  dap.continue()
end,{desc = 'DAP continue'})

vim.keymap.set("n", '<F9>', function()
  dap.toggle_breakpoint()
end, {desc = 'DAP Toggle breakpoint '})

vim.keymap.set("n", '<F6>', function()
  dap.terminate()
end, {desc = 'DAP terminate'} )

vim.keymap.set("n", '<F10>', function()
  dap.step_over()
end, {desc = 'DAP step over'})

vim.keymap.set("n", '<F11>', function()
  dap.step_into()
end, {desc = 'DAP step into'})

vim.keymap.set("n", '<F12>', function()
  dap.step_out()
end, {desc = 'DAP step out'})
