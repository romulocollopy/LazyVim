return {
  { import = "lazyvim.plugins.extras.lang.rust" },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      tools = {
        inlay_hints = {
          show_parameter_hints = true,
          parameter_hints_prefix = "<- ",
          other_hints_prefix = "=> ",
        },
      },
      server = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              command = "clippy",
            },
            diagnostics = {
              disabled = { "unresolved-proc-macro" }, -- Disable specific diagnostics
              enable = true, -- Enable/disable diagnostics globally
              experimental = { enable = true }, -- Enable experimental diagnostics
            },
            procMacro = {
              enable = true,
              ignored = {
                -- ["async-trait"] = { "async_trait" },
                ["napi-derive"] = { "napi" },
                ["async-recursion"] = { "async_recursion" },
              },
            },
          },
        },
      },
    },
  },
}
