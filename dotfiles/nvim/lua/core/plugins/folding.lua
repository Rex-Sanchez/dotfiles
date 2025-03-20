
-- Options {{{
--vim.opt.foldtext="hello"
--vim.opt.foldenable=true
--vim.opt.nofoldenable=true
--vim.opt.foldminlines=""
--vim.opt.foldignore=""
--vim.opt.foldmarker=""
--vim.opt.foldnestmax=""
--vim.opt.foldexpr=""
--vim.opt.foldopen=""
--vim.opt.foldclose=""
vim.opt.foldmethod="marker"
vim.opt.foldlevelstart=99
vim.opt.fillchars:append("-")
vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

-- }}}

-- On Buffer Enter {{{
function CloseAllFolds()
  vim.cmd("silent! loadview")
  vim.cmd("silent! mkview")
  vim.cmd("silent! normal! zM")
end

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    CloseAllFolds()
  end
})
-- }}}

-- Keymaps {{{

vim.keymap.set('n', '<leader>zk', function()
  vim.opt.foldmethod = "marker"
  print("foldmethod=" .. vim.opt.foldmethod:get())
end)

vim.keymap.set('n', '<leader>zm', function()
  vim.opt.foldmethod = "manual"
  print("foldmethod=" .. vim.opt.foldmethod:get())
end)
-- }}}



