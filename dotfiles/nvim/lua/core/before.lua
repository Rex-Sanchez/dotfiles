vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.wrapscan = false
vim.opt.startofline = false
vim.opt.signcolumn = 'yes'
vim.opt.scrolloff = 8
vim.opt.mouse = "a"
--vim.cmd("set scrollbind")



-- trim statusline
--vim.opt.statusline = "%f"
vim.opt.laststatus = 0

-- set Tab Width
vim.cmd.set("tabstop=2")
vim.cmd.set("shiftwidth=2")
vim.cmd.set("expandtab")

-- Set relative line numbers
vim.cmd.set("relativenumber")
vim.cmd.set("number")
vim.opt.signcolumn = "number"

-- Set leader key
vim.g.mapleader = ' '

-- Pane Navigation
vim.keymap.set("n",'<c-k>', ':wincmd k<CR>')
vim.keymap.set("n",'<c-j>', ':wincmd j<CR>')
vim.keymap.set("n",'<c-l>', ':wincmd l<CR>')
vim.keymap.set("n",'<c-h>', ':wincmd h<CR>')

-- Pane Movement
vim.keymap.set("n",'<C-w>k', ':wincmd K<CR>')
vim.keymap.set("n",'<C-w>j', ':wincmd J<CR>')
vim.keymap.set("n",'<C-w>l', ':wincmd L<CR>')
vim.keymap.set("n",'<C-w>h', ':wincmd H<CR>')

-- Pane Resize
vim.keymap.set("n",'<c-left>', ':vertical resize +2<CR>')
vim.keymap.set("n",'<c-right>', ':vertical resize -2<CR>')
vim.keymap.set("n",'<c-down>', ':resize -2<CR>')
vim.keymap.set("n",'<c-up>', ':resize +2<CR>')

-- Buffer navigation
--vim.keymap.set("n",'<s-l>', ':bn<CR>')
--vim.keymap.set("n",'<s-h>', ':bp<CR>')
vim.keymap.set('n','<leader>bd',':bd<CR>:bnext<CR>')



-- Splits
--vim.keymap.set("n",'<c-\\>', ':vsplit<CR>')
--vim.keymap.set("n",'<c-_>', ':split<CR>')




