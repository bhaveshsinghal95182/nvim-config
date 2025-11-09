return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
    opts = {
      ensure_installed = {
        "html",
        "cssls",
        "ts_ls",
        "eslint",
        "tailwindcss",
        "lua_ls",
        "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",

    dependencies = {
      "windwp/nvim-ts-autotag",
      opts = {},
    },
    opts = {
      ensure_installed = {
        "html",
        "css",
        "bash",
        "typescript",
        "javascript",
        "rust",
        "tsx",
        "jsx",
      },
    },
  },

  { "antosha417/nvim-lsp-file-operations", config = {} },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
