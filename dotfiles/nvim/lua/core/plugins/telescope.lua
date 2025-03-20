local builtin = require('telescope.builtin')
local t = require('telescope')

t.setup {
  defaults = {
    file_ignore_patterns = {"node_modules"},
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'Find file'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = 'Live grep in workspace'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'Search Open buffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'Search in help'})
vim.keymap.set('n', '<leader>fS',builtin.lsp_workspace_symbols, {desc = 'Find symbol in workspace'})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {desc = 'Find symbol in document'})
vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find, {desc = 'Fuzzy find in file'})
vim.keymap.set('n', '<leader>fx', builtin.diagnostics, {desc = 'Find in diagnostics'})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {desc = 'Find all references'})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {desc = 'Find implementation'})


