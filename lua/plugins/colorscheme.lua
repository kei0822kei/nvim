return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = {
    style = "storm",
    on_highlights = function(hl)
      hl.comment = { bg = "#4a691c", fg = "#000000" }
      hl.perlComment = { bg = "#4a691c", fg = "#000000" }
      hl.Comment = { bg = "#4a691c", fg = "#000000" }
    end,
  },
  -- "LazyVim/LazyVim",
  -- opts = {
  --   colorscheme = "tokyonight",
  -- },
}
