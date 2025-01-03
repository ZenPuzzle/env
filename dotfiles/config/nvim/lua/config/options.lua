-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim auto format
vim.g.autoformat = false
vim.g.snacks_animate = false

local opt = vim.opt
opt.wrap = true
opt.cursorline = false -- Enable highlighting of the current line
opt.clipboard = ""     -- Do not sync with system clipboard
