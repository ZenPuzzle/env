return {
  -- add shades_of_purple
  { "Rigellute/shades-of-purple.vim" },
  { "unrealjo/neovim-purple" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim", lazy = false },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
      wrap = true,
    },
  },
}
