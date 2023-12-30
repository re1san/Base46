## Base46 Theme plugin

> [!NOTE]  
> This is a modified version of NvChads config according to my needs.

## Highlight command

- `:hi` command will list all highlight groups
- `:hi` with args will highlight a **highlight group**
-  Example : `hi Comment guifg=#ffffff gui=italic, bold`

### Neovim Lua api for setting highlights

- Check `:h nvim_set_hl` for detailed doc

```lua
vim.api.nvim_set_hl(0, "Comment", {
  fg = "#ffffff",
  italic = true,
  bold = true,
})
```
## Understanding theme variables

There are 2 main tables used for `base46`

- `base_30` is used for general UI 
- `base_16` is used for syntax highlighting 
- Use a color lightening/darkening tool, such as this
  https://imagecolorpicker.com/color-code

## Default Theme table

```lua
-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}
-- UI
M.base_30 = {
  white = "",
  black = "", -- usually your theme bg
  darker_black = "", -- 6% darker than black
  black2 = "", -- 6% lighter than black
  one_bg = "", -- 10% lighter than black
  one_bg2 = "", -- 6% lighter than one_bg2
  one_bg3 = "", -- 6% lighter than one_bg3
  grey = "", -- 40% lighter than black (the % here depends so choose the perfect grey!)
  grey_fg = "", -- 10% lighter than grey
  grey_fg2 = "", -- 5% lighter than grey
  light_grey = "",
  red = "",
  baby_pink = "",
  pink = "",
  line = "", -- 15% lighter than black
  green = "",
  vibrant_green = "",
  nord_blue = "",
  blue = "",
  seablue = "",
  yellow = "", -- 8% lighter than yellow
  sun = "",
  purple = "",
  dark_purple = "",
  teal = "",
  orange = "",
  cyan = "",
  statusline_bg = "",
  lightbg = "",
  pmenu_bg = "",
  folder_bg = ""
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "",
  base01 = "",
  base02 = "",
  base03 = "",
  base04 = "",
  base05 = "",
  base06 = "",
  base07 = "",
  base08 = "",
  base09 = "",
  base0A = "",
  base0B = "",
  base0C = "",
  base0D = "",
  base0E = "",
  base0F = ""
}

-- OPTIONAL
-- overriding highlights for this specific theme only 
M.polish_hl = {
  Comment = {
    bg = "#ffffff" -- or M.base_30.cyan 
    italic =  true
  }
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "abc")

return M
```


> [!TIP]
> Capture what highlight are used under the cursor by running the `:Inspect` or
  `:InspectTree` commands

