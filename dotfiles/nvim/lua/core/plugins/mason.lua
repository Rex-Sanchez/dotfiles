require("mason").setup()

local mason_lsp = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()

mason_lsp.setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "tailwindcss",
    "jsonls",
    "ts_ls",
    "volar",
  },
  handlers = {
    function(server_name)
      lspconfig[server_name].setup {}
    end,

    rust_analyzer = function() end,

    volar = function()
      lspconfig.volar.setup {
        capabilities = capabilities,
        filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
        init_options = {
          vue = {
            hybridMode = true,

          },
        },
      }
    end,

    ts_ls = function()
      lspconfig.ts_ls.setup {
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
              languages = { "javascript", "typescript", "vue" },
            },
          },
        },
        filetypes = {
          "javascript",
          "typescript",
          "vue",
        },

      }
    end,

    tailwindcss = function()
      lspconfig.tailwindcss.setup {
        --filetypes = { "vue", "html", "css" }
        root_dir = lspconfig.util.root_pattern("tailwind.config.js", "package.json"),
      }
    end,
    lua_ls = function()
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        } }
    end,

    cmake = function()
      lspconfig.cmake.setup {
      }
    end,

    clangd = function()
      lspconfig.clangd.setup {
        --cmd = {"/home/n3m0/Mounts/DATA3/Projecten/software/c_projects/libs/esp-clang/bin/clangd"}
      }
    end,

    svls = function()
      lspconfig.svls.setup {
        name = 'svls',
        cmd = { "svls", "-d" },
        whitelist = { 'systemverilog', 'verilog' },
        filetypes = { 'verilog', 'systemverilog' },
        --root_dir = require"lspconfig.util".root_pattern(".svls.toml", ".git")
        root_dir = require "lspconfig.util".root_pattern("modules/")


      }
    end





  }
})



--mason_lsp.setup_handlers {
--  function(server_name)
--    lspconfig[server_name].setup {}
--  end,
--
--  ["rust_analyzer"] = function() end,
--  ["volar"] = function()
--    lspconfig.volar.setup() {
--      filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
--      init_options = {
--        vue = {
--          hybridMode = false,
--        },
--      },
--    }
--  end,
--
--  ["lua_ls"] = function()
--    lspconfig.lua_ls.setup {
--     -- capabilities = capabilities,
--      settings = {
--        Lua = {
--          diagnostics = {
--            globals = { 'vim' }
--          }
--        }
--      } }
--  end,
--
--  --  ["cmake"] = function()
--  --    lspconfig.cmake.setup {
--  --      capabilities = capabilities,
--  --    }
--  --  end,
--  --
--  --  ["clangd"] = function()
--  --    lspconfig.clangd.setup {
--  --      capabilities = capabilities,
--  --      --cmd = {"/home/n3m0/Mounts/DATA3/Projecten/software/c_projects/libs/esp-clang/bin/clangd"}
--  --    }
--  --  end,
--  --  ["svls"] = function()
--  --    lspconfig.svls.setup {
--  --      name = 'svls',
--  --      cmd = { "svls", "-d" },
--  --      whitelist = { 'systemverilog', 'verilog' },
--  --      filetypes = { 'verilog', 'systemverilog' },
--  --      --root_dir = require"lspconfig.util".root_pattern(".svls.toml", ".git")
--  --      root_dir = require "lspconfig.util".root_pattern("modules/")
--  --
--  --
--  --    }
--  --  end
--}
