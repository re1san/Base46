local M = {}

M.base_30 = {
  white = "#dfdddd",
  darker_black = "#0c0c0c",
  black = "#0d0d0d", --  nvim bg
  black2 = "#141414",
  lighter_black = "#121212",
  one_bg = "#161616",
  one_bg2 = "#1f1f1f",
  one_bg3 = "#282828",
  grey = "#343434",
  grey_fg = "#404040",
  grey_fg2 = "#494949",
  light_grey = "#515151",
  red = "#d45f65",
  baby_pink = "#eb8b8b",
  pink = "#c4516f",
  line = "#1b1d1e", -- for lines like vertsplit
  green = "#6da783",
  vibrant_green = "#57a274",
  nord_blue = "#6f97bf",
  blue = "#6e96be",
  yellow = "#ecd28b",
  sun = "#f6dc95",
  purple = "#bf7fce",
  dark_purple = "#b27ace",
  teal = "#6cb2c3",
  orange = "#E89982",
  cyan = "#67afc1",
  statusline_bg = "#101010",
  lightbg = "#1d1d1d",
  pmenu_bg = "#76b58f",
  folder_bg = "#6f97bf",
}

M.base_16 = {
  base00 = "#0d0d0d",
  base01 = "#121212",
  base02 = "#161616",
  base03 = "#1f1f1f",
  base04 = "#282828",
  base05 = "#dfdddd",
  base06 = "#e5e5e5",
  base07 = "#f2f2f2",
  base08 = "#d45f65",
  base09 = "#ecd28b",
  base0A = "#e79881",
  base0B = "#6da783",
  base0C = "#6395bd",
  base0D = "#6f9ad1",
  base0E = "#b27ace",
  base0F = "#c4516f",
}

M.type = "dark"

M = require("base46").override_theme(M, "yoru")

return M
