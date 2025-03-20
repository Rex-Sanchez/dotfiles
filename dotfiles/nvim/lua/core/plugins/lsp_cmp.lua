local cmp = require("cmp")

require('luasnip.loaders.from_vscode').lazy_load()

local lspconfig_defaults = require('lspconfig').util.default_config

lspconfig_defaults.capabilities = require('cmp_nvim_lsp').default_capabilities()


local bindings = function(buf)
  vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename', buffer = buf })
  vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'Code actions', buffer = buf })
  vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format { async = true } end,
    { desc = 'Format code', buffer = buf })
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'Goto definition', buffer = buf })
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { desc = 'Goto implementation', buffer = buf })
  vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references,
    { desc = 'List all references', buffer = buf })
  vim.keymap.set('n', '<leader>gD', vim.lsp.buf.type_definition, { desc = 'Goto type definition', buffer = buf })
  vim.keymap.set('n', '<space>H', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end,
    { buffer = buf })
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Lsp hover info', buffer = buf })
end



vim.lsp.inlay_hint.enable(true)


vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    bindings(event.buf)
  end
})


vim.g.rustaceanvim = {
  server = {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  }
}


vim.g.lsp_settings = {}


vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '✘',
      [vim.diagnostic.severity.WARN] = '▲',
      [vim.diagnostic.severity.HINT] = '⚑',
      [vim.diagnostic.severity.INFO] = '»',
    },
  },
})


cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  preselect = "item",
  sorting = {
    priority_weight = 10000,
    comparators = {
      cmp.config.compare.offset,
      cmp.config.compare.exact,
      cmp.config.compare.scopes,
      cmp.config.compare.score,
      cmp.config.compare.recently_used,
      cmp.config.compare.locality,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },
  completion = {
    completeopt = 'menu,menuone,noselect',
    keyword_length = 2
  },
  performance = {
    debounce = 10
  },
  matching = {
    --     disallow_fuzzy_matching = false,
    --     disallow_fullfuzzy_matching = false,
    --     disallow_partial_fuzzy_matching = false,
    --     disallow_partial_matching = false,
    --     disallow_prefix_unmatching = false,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<A-j>'] = cmp.mapping.select_prev_item(),
    ['<A-k>'] = cmp.mapping.select_next_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources(
    {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    },
    {
      { name = 'path' },
      { name = 'buffer' },
      { name = "tailwindcss" },
    }
  ),
  formatting = {
    fields = { 'abbr', 'menu', 'kind' },

    format = function(entry, item)
      local menu_icon = {
        --        nvim_lsp = 'λ',
        --        luasnip = '⋗',
        --        buffer = 'Ω',
        --        path = '🖫',
        nvim_lsp = 'LSP',
        luasnip = 'LuaSnip',
        buffer = 'Buffer',
        path = 'Dir',
        tailwindcss = 'Tailwind',

      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
})







cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' },
    { name = 'buffer' },
  })
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'buffer' }
  })
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' }
  })
})
