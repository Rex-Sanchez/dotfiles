vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {
    code_actions = {
      ui_select_fallback = true
    }
  },
  -- LSP configuration
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set('n', '<leader>cme', function() vim.cmd.RustLsp('expandMacro') end,
        { silent = true, buffer = bufnr, desc = 'Expand Macro' })

      vim.keymap.set('n', '<leader>cmr', function() vim.cmd.RustLsp('rebuildProcMacros') end,
        { silent = true, buffer = bufnr, desc = 'Rebuild proc macro' })

      vim.keymap.set('n', '<C-k>', function() vim.cmd.RustLsp({ 'hover', 'actions' }) end,
        { silent = true, buffer = bufnr, desc = 'Hover Action Info' })

      vim.keymap.set('n', '<C-e>', function() vim.cmd.RustLsp({ 'explainError', 'current' }) end,
        { silent = true, buffer = bufnr, desc = 'Explain error' })

      vim.keymap.set('n', '<C-x>', function() vim.cmd.RustLsp({ 'renderDiagnostic', 'current' }) end,
        { silent = true, buffer = bufnr, desc = 'Diagnostic current' })

      vim.keymap.set('n', '<C-z>', function() vim.cmd.RustLsp({ 'renderDiagnostic', 'cycle' }) end,
        { silent = true, buffer = bufnr, desc = 'Diagnostic cycle' })
    end,
    default_settings = {
      ['rust-analyzer'] = {
        diagnostics = {
          procMacro = { enable = true },
          refreshSupport = false,

        },
        checkOnSave = {
          --        command = 'clippy'
        }
      },
    },
  },
  -- DAP configuration
  -- dap = {},
}
