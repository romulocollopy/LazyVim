return {
  {
    "neovim/nvim-lspconfig",
    --- @class PluginLspOpts
    opts = {
      --- @type lspconfig.options
      servers = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
        },
      },
      dependencies = {
        "OmniSharp/Omnisharp-vim",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "go",
      })
    end,
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- required dependencies
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
  },
  -- {
  --   "nvimtools/none-ls.nvim",
  --   config = function()
  --     local null_ls = require("null-ls")
  --     null_ls.setup({
  --       sources = {
  --         null_ls.builtins.formatting.gofmt,
  --         null_ls.builtins.formatting.goimports,
  --       },
  --     })
  --   end,
  -- },
}
