local on_attach = function()
  vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, {desc = 'Rename'})
  vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'Code actions'})
  vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format { async = true } end, {desc = 'Format code'})
  --
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {desc = 'Goto definition'})
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {desc = 'Goto implementation'})
  vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {desc = 'List all references'})
  vim.keymap.set('n', '<leader>gD', vim.lsp.buf.type_definition, {desc = 'Goto type definition'})
  --
  vim.keymap.set('n', '<space>H', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end, {})

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = 'Lsp hover info'})
end



vim.lsp.inlay_hint.enable(true)

vim.diagnostic.Opts = {
    update_in_insert = true
}



vim.api.nvim_create_autocmd("LspAttach", {
  on_attach(),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    -- client.server_capabilities.semanticTokensProvider = nil
  end
})
