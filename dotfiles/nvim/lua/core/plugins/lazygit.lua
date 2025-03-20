require("lazygit").cmd = {
  "LazyGit",
  "LazyGitConfig",
  "LazyGitCurrentFile",
  "LazyGitFilter",
  "LazyGitFilterCurrentFile",
}

vim.keymap.set("n","<leader>lg", "<cmd>LazyGit<cr>",{noremap = false, desc = "LazyGit"})
