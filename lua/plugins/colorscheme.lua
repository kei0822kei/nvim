return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = {
    style = "storm",
    -- on_highlights = function(hl)
    --   hl.comment = { bg = "#4a691c", fg = "#000000" }
    --   hl.perlComment = { bg = "#4a691c", fg = "#000000" }
    --   hl.Comment = { bg = "#4a691c", fg = "#000000" }
    -- end,
  },
  { "itchyny/landscape.vim" },
  { "shaunsingh/nord.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "navarasu/onedark.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
