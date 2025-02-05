return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function ()
      require("nvim-tree").setup({
        hijack_cursor = true,
        view = {
          side = "right",
        },
        renderer = {
          highlight_modified = "all",
          highlight_git = "all",
        },
        filters = {
          dotfiles = false,
        },
      })
    end
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "configs.formatter"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server",
        "stylua",
  			"html-lsp",
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "gopls",
        "eslint-lsp",
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "go",
        "typescript",
  		},
  	},
  },
  {
    "projekt0n/github-nvim-theme",
    name = 'github-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
          })

      vim.cmd("colorscheme github_dark_dimmed")
    end
  }
}
