local luasnip = require "luasnip"
--
--
--luasnip.filetype_extend("javascript", { "javascriptreact" })
--luasnip.filetype_extend("typescript", { "typescriptreact" })
--
--luasnip.filetype_extend("javascriptreact", { "html" })
--luasnip.filetype_extend("typescriptreact", { "html" })


--luasnip.filetype_extend("javascript", { "html" })
--luasnip.filetype_extend("typescript", { "html" })



-- Custom snippits
require("luasnip.loaders.from_vscode").lazy_load()
require("core.plugins.snippits.systemd")

--luasnip.filetype_extend("vue", { "html","css","javascript","typescript" })
luasnip.filetype_extend("lua", { "lua" })

-- Keymaps
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)



