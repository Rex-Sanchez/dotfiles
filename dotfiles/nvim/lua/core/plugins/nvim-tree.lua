vim.keymap.set('n','<C-n>', ":NvimTreeOpen<CR>")
vim.keymap.set('n','<C-m>', ":NvimTreeClose<CR>")

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)
  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,opts('Up'))
  vim.keymap.set('n', '?', api.tree.toggle_help,opts('Help'))
end


require("nvim-tree").setup({
  sort_by = "case_sensitive",
  on_attach = my_on_attach,
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<CR>', '<Nop>',{noremap=true,silent= true})
