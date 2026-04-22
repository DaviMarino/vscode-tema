local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28
config.scrollback_lines = 5000

-- Escolha sua cor (Ex: 'Nightfox', 'Tokyo Night', 'Dracula', 'GitHub Dark')
config.color_scheme = 'GitHub Dark'
-- config.font = wezterm.font 'Roboto'
-- config.font = wezterm.font 'JetBrains Mono'
-- config.font = wezterm.font 'Cascadia Code NF'
-- config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 14.0

-- Tira a barra de título feia do Windows e deixa moderno
-- config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95

-- Faz o cursor piscar para facilitar a localização em telas cheias de código
config.default_cursor_style = 'BlinkingBar'

-- Isso garante que o WezTerm busque o executável do PowerShell 7 (pwsh.exe)
config.default_prog = { 'pwsh.exe' }

------------------------------------------
config.colors = {
  -- The default text color
--   foreground = 'silver',
  -- The default background color
--   background = 'black',
  -- Overrides the cell background color when the current cell is occupied by the
  -- cursor and the cursor style is set to Block
  cursor_bg = '#5cc8dd',
  -- Overrides the text color when the current cell is occupied by the cursor
--   cursor_fg = '#cf1111',
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = '#5cc8dd',
  -- the foreground color of selected text
  selection_fg = '#10047e',
  -- the background color of selected text
  selection_bg = '#cdfcff',
}

return config
