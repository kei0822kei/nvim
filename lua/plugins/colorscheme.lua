return {
  "folke/tokyonight.nvim",
  lazy = false,
  style = "storm",
  opts = {
    on_highlights = function(hl)
      hl.comment = { bg = "#4a691c", fg = "#000000" }
      hl.perlComment = { bg = "#4a691c", fg = "#000000" }
      hl.Comment = { bg = "#4a691c", fg = "#000000" }
    end,
  },
}
