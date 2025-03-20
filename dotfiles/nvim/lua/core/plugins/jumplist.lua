


local j = require("jumplist").setup({
  auto_rename = false,
});

vim.keymap.set("n", "<leader>ji", function() j:add_to_jump_list() end)
vim.keymap.set("n", "<leader>jj", function() j:picker() end)

