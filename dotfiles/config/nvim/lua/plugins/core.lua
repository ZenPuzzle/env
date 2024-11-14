return {
  -- add shades_of_purple
  -- { "Rigellute/shades-of-purple.vim" },
  -- { "unrealjo/neovim-purple" },
  -- { "catppuccin/nvim", name = "catppuccin" },
  { "EdenEast/nightfox.nvim" },
  -- { "folke/tokyonight.nvim", lazy = false },
  -- disable trouble
  { "folke/trouble.nvim", enabled = true },
  -- disable todo-comments
  { "folke/todo-comments.nvim", enabled = false },
  -- disable bufferline
  { "akinsho/bufferline.nvim", enabled = true },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        on_open = function(term)
          if vim.fn.getenv("CONDA_SHLVL") ~= "1" then
            vim.fn.chansend(term.jobid, "conda deactivate\n")
          end
        end,
      })
    end,
  },
  -- use TAB for completions
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            cmp.select_next_item()
          elseif vim.snippet.active({ direction = 1 }) then
            vim.schedule(function()
              vim.snippet.jump(1)
            end)
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif vim.snippet.active({ direction = -1 }) then
            vim.schedule(function()
              vim.snippet.jump(-1)
            end)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },
}
