return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers.pyright.autostart = false
    opts.servers.ruff.autostart = false
  end,
}
