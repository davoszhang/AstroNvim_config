-- get highlights from highlight groups
-- https://astronvim.com/Recipes/telescope_theme
-- https://github.com/catppuccin/nvim

local get_hlgroup = require("astronvim.utils").get_hlgroup
local normal = get_hlgroup "Normal"
local fg, bg = normal.fg, normal.bg
local bg_alt = get_hlgroup("Visual").bg
local green = get_hlgroup("String").fg
local red = get_hlgroup("Error").fg

-- base	#EFF1F5	#303446	#24273A	#1E1E2E	Default bg
local bg = "#24273A"

return {
    -- set telescope
    TelescopeBorder = {fg = bg_alt, bg = bg},
    TelescopeNormal = {bg = bg},
    TelescopePreviewTitle = {fg = bg, bg = green},
    TelescopePromptTitle = {fg = bg, bg = red},
    TelescopeResultsNormal = {bg = bg},
    TelescopeResultsTitle = {fg = bg, bg = bg}
}
