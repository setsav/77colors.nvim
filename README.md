# 77colors.nvim
A Neovim colorscheme to match Cyberpunk 2077's hacking minigame.

## Installation

Using lazy:

```lua
{
    "setsav/77colors.nvim",
    opts = {
        transparent = true -- True or false
    }
},
```

## Set color scheme

```
:colorscheme 77colors
```

or:

```lua
vim.cmd("colorscheme 77colors")
```

## Lualine

To enable 77colors for lualine, make sure it is defined in your lualine config. e.g.:

```lua
{
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = '77colors',
        },
      },
    })
  end,
},
```
