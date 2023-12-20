local plugins = {
  -- presence
  -- {
  --   "andweeb/presence.nvim",
  --   lazy = false,
  --   config = function()
  --     require "custom.configs.presence_setup"
  --   end,
  -- },
  --
  -- transparent background
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup {
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
        },
      }
    end,
  },

  -- syntax highlighting using treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- common
        "bash",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- c/cpp
        "cpp",
        "c",
        "cmake",

        -- rust
        "rust",
        "toml",

        -- py
        "python",
      },
    },
  },

  -- auto tag renaame
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- vim surround.
  {
    "tpope/vim-surround",
    lazy = false,
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  -- lsp
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "marksman",

        -- snake language
        "pyright",

        --web
        "html-lsp",
        "css-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
        "eslint-lsp",
        "prettier",

        "stylua",

        -- low level crap
        "clangd",
        "clang-format",
        "cpplint",
      },
    },
  },
}

return plugins
