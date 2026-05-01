-- Slipstream for Neovim
-- https://github.com/kylemcd/nvim-slipstream

local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "slipstream"

  local colors = require("slipstream.colors").palette
  local highlights = require("slipstream.highlights").get(colors)
  local terminal = require("slipstream.terminal")

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  terminal.set(colors)
end

return M
