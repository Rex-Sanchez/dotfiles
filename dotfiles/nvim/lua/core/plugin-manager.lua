local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)





require("lazy").setup({
  -- theme
  --"morhetz/gruvbox",
  "ellisonleao/gruvbox.nvim",
  --

  -- Lazygit
  "kdheepak/lazygit.nvim",
  --

  -- plenary
  "nvim-lua/plenary.nvim",
  --

  -- which-key
  "folke/which-key.nvim",
  --

  -- nvim-web-devicons
  "nvim-tree/nvim-web-devicons",
  --

  -- TreeSitter
  'nvim-treesitter/nvim-treesitter',
  --

  -- Telescope
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  --

  -- Vim-lsp / Mason
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  --

  -- Completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'saadparwaiz1/cmp_luasnip',
  --

  -- Snippets
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',
  --

  -- PlatformIO
  'normen/vim-pio',
  --

  -- rustaceanvim
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  --
  -- trouble
  {
    'folke/trouble.nvim',
    commit = '3f85d8e'
  },
  --

  -- slint
  'slint-ui/vim-slint',
  --

  --fpga_toolkit
    {
      name = 'fpga_toolkit',
      dir = '/home/n3m0/Mounts/DATA3/Projecten/software/lua_projects/vim_plugins/fpga_toolkit.nvim'
    },

  -- fzf
  'vijaymarupudi/nvim-fzf',
  --

  -- lsp file rename
  "antosha417/nvim-lsp-file-operations",
  --

  -- oil file manager / editor
  {
    'stevearc/oil.nvim',
    dependencies = { "echasnovski/mini.icons" },
  },
  --

 -- Jumplist
 'Rex-Sanchez/jumplist.nvim',
 --

 -- Fixing auto scroll
 {'BranimirE/fix-auto-scroll.nvim', config = true, event = 'VeryLazy' },
 --

 -- Indent Blankline
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}},
 --
 -- Text-Case
  'johmsalas/text-case.nvim',
 --

 -- Fterm 
  'numToStr/FTerm.nvim',
 --

 -- fidget
  'j-hui/fidget.nvim',


-- DAP-UI
{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
--

-- nushell
{
    'LhKipp/nvim-nu',
    --build = ':TSInstall nu',
    --opts = {}
},

-- Tmux
  'christoomey/vim-tmux-navigator',
--

-- telescope cmdline
  'jonarrien/telescope-cmdline.nvim'
--




}, {})
