-- Slipstream terminal colors
-- Mapped directly from the Zed theme's terminal.ansi.* values

local M = {}

function M.set(c)
  vim.g.terminal_color_0  = c.border       -- black
  vim.g.terminal_color_1  = c.rose         -- red
  vim.g.terminal_color_2  = c.teal         -- green
  vim.g.terminal_color_3  = c.gold         -- yellow
  vim.g.terminal_color_4  = c.blue         -- blue
  vim.g.terminal_color_5  = c.sky          -- magenta
  vim.g.terminal_color_6  = c.teal         -- cyan
  vim.g.terminal_color_7  = c.off_white    -- white

  vim.g.terminal_color_8  = c.fg_subtle    -- bright black
  vim.g.terminal_color_9  = c.rose_bright  -- bright red
  vim.g.terminal_color_10 = c.teal_bright  -- bright green
  vim.g.terminal_color_11 = c.gold_bright  -- bright yellow
  vim.g.terminal_color_12 = c.blue_bright  -- bright blue
  vim.g.terminal_color_13 = c.sky_bright   -- bright magenta
  vim.g.terminal_color_14 = c.teal_bright  -- bright cyan
  vim.g.terminal_color_15 = c.white        -- bright white
end

return M
