local function setupCustomHighlightGroup()
  vim.api.nvim_command("hi clear FlashMatch")
  vim.api.nvim_command("hi clear FlashCurrent")
  vim.api.nvim_command("hi clear FlashLabel")

  vim.api.nvim_command("hi FlashMatch guibg=#4A47A3 guifg=#B8B5FF") -- Emerald background
  vim.api.nvim_command("hi FlashCurrent guibg=#456268 guifg=#D0E8F2")
  vim.api.nvim_command("hi FlashLabel guibg=#A25772 guifg=#EEF5FF")
end

return {
  {
    "kevinhwang91/nvim-hlslens",
    lazy = true,
    opts = {},
    config = function()
      local kopts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap(
        "n",
        "n",
        [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
        kopts
      )
      vim.api.nvim_set_keymap(
        "n",
        "N",
        [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
        kopts
      )
      vim.api.nvim_set_keymap("n", "*", [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
      vim.api.nvim_set_keymap("n", "#", [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
      vim.api.nvim_set_keymap("n", "g*", [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
      vim.api.nvim_set_keymap("n", "g#", [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

      vim.api.nvim_set_keymap("n", "<Leader>l", "<Cmd>noh<CR>", kopts)
    end,
  },
  {
    "folke/flash.nvim",
    keys = {
      {
        "m",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      { "s", false },
      { "S", false },
      { "r", false },
      { "R", false },
    },
    opts = {
      rainbow = {
        enabled = true,
        shade = 5,
      },
      highlight = {
        backdrop = true,
        groups = {
          match = "FlashMatch",
          current = "FlashCurrent",
          backdrop = "FlashBackdrop",
          label = "FlashLabel",
        },
      },
    },
    config = function()
      setupCustomHighlightGroup()
    end,
  },
}
