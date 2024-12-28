local colors = require('77colors').colors

local llcolors = {}

  llcolors.normal = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = { bg = colors.yellow, fg = colors.black },
    c = { bg = colors.tp, fg = colors.white }
  }
  llcolors.insert = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.green, fg = colors.black },
    c = { bg = colors.tp, fg = colors.white }
  }
  llcolors.visual = {
    a = { bg = colors.cyan, fg = colors.black, gui = 'bold' },
    b = { bg = colors.cyan, fg = colors.black },
    c = { bg = colors.tp, fg = colors.white }
  }
  llcolors.replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.red, fg = colors.black },
    c = { bg = colors.tp, fg = colors.white }
  }
  llcolors.command = {
    a = { bg = colors.red, fg = colors.cyan, gui = 'bold' },
    b = { bg = colors.red, fg = colors.cyan },
    c = { bg = colors.tp, fg = colors.white }
  }
  llcolors.inactive = {
    a = { bg = colors.fg, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.fg, fg = colors.gray },
    c = { bg = colors.tp, fg = colors.white }
  }

return llcolors
