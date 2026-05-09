-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
require("config.lsp")

vim.diagnostic.config({
  -- Use the default configuration
  -- virtual_lines = true

  -- Alternatively, customize specific options
  virtual_lines = {
    -- Only show virtual line diagnostics for the current cursor line
    current_line = true,
  },
})

vim.g.lazyvim_picker = "telescope"

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Auto reload files when changed externally
vim.opt.autoread = true

-- LazyVim auto format
vim.g.autoformat = true

vim.g.python3_host_prog = vim.fn.expand("~/.virtualenvs/nvim/bin/python3")
