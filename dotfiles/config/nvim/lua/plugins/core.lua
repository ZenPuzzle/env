return {
  -- add shades_of_purple
  -- { "Rigellute/shades-of-purple.vim" },
  -- { "unrealjo/neovim-purple" },
  -- { "catppuccin/nvim", name = "catppuccin" },
  { "EdenEast/nightfox.nvim" },
  -- { "folke/tokyonight.nvim", lazy = false },
  -- disable trouble
  { "folke/trouble.nvim",       enabled = true },
  -- disable todo-comments
  { "folke/todo-comments.nvim", enabled = false },
  -- disable bufferline
  { "akinsho/bufferline.nvim",  enabled = true },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      -- bigfile = { enabled = true },
      -- notifier = { enabled = true },
      quickfile = { enabled = true },
      -- statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = 'rafamadriz/friendly-snippets',

    -- use a release tag to download pre-built binaries
    version = '*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- See the full "keymap" documentation for information on defining your own keymap.
      keymap = {
        -- set to 'none' to disable the 'default' preset
        preset = 'default',
        ['<CR>'] = { 'select_and_accept', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<Tab>'] = { 'select_next', 'fallback' },
      },

      appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- Will be removed in a future release
        use_nvim_cmp_as_default = true,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
    opts_extend = { "sources.default" }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },
}
