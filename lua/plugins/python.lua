return {
  { import = "lazyvim.plugins.extras.lang.python" },
  "neovim/nvim-lspconfig",
  --- @class PluginLspOpts
  opts = {
    --- @type lspconfig.options
    servers = {
      pyright = {
        -- Using Ruff's import organizer
        disableOrganizeImports = true,
      },
      ruff_lsp = {},
      rust_analyzer = {},
    },
  },
  dependencies = {
    "OmniSharp/Omnisharp-vim",
  },
}
