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
  -- My plugins here
  "nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
  "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
  "numToStr/Comment.nvim",
  "JoosepAlviste/nvim-ts-context-commentstring",
  "kyazdani42/nvim-web-devicons",
  "kyazdani42/nvim-tree.lua",
  { "akinsho/bufferline.nvim", version = "v3.*"},
  "moll/vim-bbye",
  "nvim-lualine/lualine.nvim",
  "akinsho/toggleterm.nvim",
  "ahmedkhalf/project.nvim",
  "lewis6991/impatient.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "goolord/alpha-nvim",
  "ThePrimeagen/harpoon",

  -- Colorschemes
  "folke/tokyonight.nvim",
  "lunarvim/darkplus.nvim",

  -- cmp plugins
  "hrsh7th/nvim-cmp", -- The completion plugin
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",

  -- snippets
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- LSP
  "neovim/nvim-lspconfig", -- enable LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
  "RRethy/vim-illuminate",

  { "j-hui/fidget.nvim", tag = "legacy" },
  "simrat39/symbols-outline.nvim",

  -- Telescope
  { "nvim-telescope/telescope.nvim", branch = "0.1.x" },

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",

  -- Git
  "lewis6991/gitsigns.nvim",

  -- DAP
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "ravenxrz/DAPInstall.nvim",

  -- Java
  "mfussenegger/nvim-jdtls",

  -- Markdown preview
  { "toppair/peek.nvim", build = "deno task --quiet build:fast" },

  "editorconfig/editorconfig-vim",

  { 'echasnovski/mini.nvim', version = '*' },
})
