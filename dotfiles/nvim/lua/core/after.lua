-- Set Alpha
local fields = { 'Normal', 'NonText', 'NeotreeNormal', 'NeotreeNormalNC', 'NeoTreeTabInactive', 'NeoTreeTabActive',
  'LineNr', 'Folded', 'SpecialKey', 'VertSplit', 'SignColumn', 'EndOfBuffer', 'StartOfBuffer', 'NormalFloat', 'Float' }

for _, item in ipairs(fields) do
  vim.cmd("hi " .. item .. " ctermbg=none guibg=none")
end


-- set key timeout time
vim.o.timeout = true
vim.o.timeoutlen = 100
vim.o.updatetime = 100
vim.o.ttimeoutlen = 10

