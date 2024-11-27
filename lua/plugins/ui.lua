return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      defaults = {
        sections = {
          lualine_c = {
            LazyVim.lualine.root_dir(),
            {
              "diagnostics",
              symbols = {
                error = LazyVim.config.icons.diagnostics.Error,
                warn = LazyVim.config.icons.diagnostics.Warn,
                info = LazyVim.config.icons.diagnostics.Info,
                hint = LazyVim.config.icons.diagnostics.Hint,
              },
            },
            -- { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },  -- this line cause step misalignment
            { LazyVim.lualine.pretty_path() },
          },
        },
      },
    },
  },
}
