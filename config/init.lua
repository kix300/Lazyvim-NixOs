require("lazy").setup({
  defaults = { lazy = true },
  dev = {
    -- reuse files from pkgs.vimPlugins.*
    path = vim.g.plugin_path,
    patterns = { "." },
    -- fallback to download
    fallback = false,
  },
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "lazyvim.plugins.extras.coding.mini-surround" },
    -- The following configs are needed for fixing lazyvim on nix
    -- force enable telescope-fzf-native.nvim
    { "nvim-telescope/telescope-fzf-native.nvim", enabled = true },
    -- disable mason.nvim, use config.extraPackages
    { "williamboman/mason-lspconfig.nvim", enabled = false },
    { "williamboman/mason.nvim", enabled = false },
    { "jaybaby/mason-nvim-dap.nvim", enabled = false },
    -- uncomment to import/override with your plugins
    { import = "plugins" },
    {
      "nvim-treesitter/nvim-treesitter",
      init = function(plugin)
        vim.opt.rtp:prepend(vim.g.treesitter_path)
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
      end,
      opts_extend = {},
      opts = {
        auto_install = false,
        ensure_installed = {},
        parser_install_dir = vim.g.treesitter_path .. "/parsers",
      },
    },
  },
  performance = {
    rtp = {
      -- Setup correct config path
      paths = { vim.g.config_path },
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

