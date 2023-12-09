return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
      shade_terminals = false,
      -- add --login so ~/.zprofile is loaded
      -- https://vi.stackexchange.com/questions/16019/neovim-terminal-not-reading-bash-profile/16021#16021
      shell = "zsh --login",
    })
  end,
  keys = {
    --   { [[<C-\>]] },
    --   { "<leader>0", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
    {
      "<leader>th",
      "<cmd>ToggleTerm size=40p direction=horizontal<cr>",
      desc = "Open a horizontal terminal",
    },
    {
      "<leader>tv",
      "<cmd>ToggleTerm size=100 direction=vertical<cr>",
      desc = "Open a vertical terminal",
    },
    -- {
    --   "<leader>td",
    --   "<cmd>ToggleTerm size=40 dir=~/Desktop direction=horizontal<cr>",
    --   desc = "Open a horizontal terminal at the Desktop directory",
    -- },
  },
}