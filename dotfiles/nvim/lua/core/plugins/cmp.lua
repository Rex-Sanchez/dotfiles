local cmp = require("cmp")


cmp.setup({
 sorting = {
   priority_weight = 5,
   comparators = {
        cmp.offset,
        cmp.exact,
        cmp.scopes,
        cmp.score,
        cmp.recently_used,
 --     cmp.locality,
        cmp.kind,
 --     cmp.sort_text,
 --     cmp.length,
        cmp.order,
  },
 },
  completion = {
    keyword_length = 1
  },
  performance = {
    debounce = 100
  },
  matching = {
    disallow_fuzzy_matching = true,
    disallow_fullfuzzy_matching = true,
    disallow_partial_fuzzy_matching = true,
    disallow_partial_matching = false,
    disallow_prefix_unmatching = true,
  },
--  snippet = {
--    expand = function(args)
--      require('luasnip').lsp_expand(args.body)
--    end,
--  },
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
    ['<CR>'] = cmp.mapping.confirm({ select = true }),   -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'path', group_index = 1 },
    { name = 'nvim_lsp', group_index = 2 },
    { name = 'luasnip', group_index = 10 },
    { name = 'buffer', group_index = 3 },
  })
})



-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' },   -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
