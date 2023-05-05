local normal                 = require("astronvim.utils").get_hlgroup "Normal"
local red                    = require("astronvim.utils").get_hlgroup "Error"
local visual                 = require("astronvim.utils").get_hlgroup "Visual"

-- check if it's "monokai-pro" theme
local monokai_avail, monokai = pcall(require, "monokai-pro")
local is_monokai_pro         = monokai_avail and vim.g.colors_name == "monokai-pro"

return {
  CmpBackground = {
    bg = is_monokai_pro and monokai.get_base_color().dimmed5 or normal.bg,
    fg = normal.fg,
  },
  CmpFloatBorder = {
    bg = is_monokai_pro and monokai.get_base_color().dimmed5 or normal.bg,
    fg = is_monokai_pro and monokai.get_base_color().dimmed3 or normal.fg
  },
  CmpCursorLine = {
    bg = is_monokai_pro and monokai.get_base_color().dimmed4 or visual.bg,
    fg = red.fg,
    bold = true
  },
  -- set the lspsaga highlight for monokai
  SagaNormal = {
    bg = is_monokai_pro and monokai.get_base_color().dimmed5 or normal.bg,
    fg = normal.fg,
  },
}
