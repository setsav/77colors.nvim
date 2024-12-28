local M = {}
-- pink and orange
local colors = {
  fg = '#F7DC6E',
  bg = '#4c581b',
  black = '#1a1d23',
  gray = '#353535',
  lgray = '#4e4e4e',
  red = '#ff0000',
  green = '#2ecc71',
  yellow = '#FFFF00',
  dyellow = '#505000',
  blue = '#00BFFF',
  magenta = '#FF69B4',
  cyan = '#00FFFF',
  white = '#FFFFFF',
  pink = '#E74C3C',
  orange = '#FF7700',
  tp = nil
}

M.colors = colors

local set_color = {
  ColorColumn = { colors.white, colors.bg },
  Conceal = { colors.black },
  CurSearch = { colors.yellow },
  Cursor = { colors.black, colors.white },
  lCursor = { colors.black, colors.white },
  CursorIM = { colors.black, colors.white },
  CursorColumn = { colors.white, colors.black },
  CursorLine = { colors.white, colors.black },
  Directory = { colors.blue },
  DiffAdd = { colors.white, colors.bg },
  DiffChange = { colors.white, colors.bg },
  DiffDelete = { colors.white, colors.bg },
  DiffText = { colors.white, colors.black },
  EndOfBuffer = { colors.black },
  TermCursor = { colors.black, colors.white },
  ErrorMsg = { colors.red },
  WinSeparator = { colors.yellow },
  Folded = { colors.blue },
  FoldColumn = { colors.blue },
  SignColumn = { colors.blue },
  IncSearch = { colors.dyellow, colors.cyan },
  Substitute = { colors.black, colors.red },
  LineNr = { colors.yellow },
  LineNrAbove = { colors.cyan },
  LineNrBelow = { colors.cyan },
  CursorLineNr = { colors.orange },
  CursorLineFold = { colors.blue },
  CursorLineSign = { colors.blue },
  MatchParen = { colors.orange },
  ModeMsg = { colors.orange },
  MsgArea = { colors.cyan },
  MsgSeparator = { colors.white },
  MoreMsg = { colors.blue },
  NonText = { colors.black },
  Normal = { colors.white, colors.bg },
  NormalFloat = { colors.white, colors.black },
  FloatBorder = { colors.blue },
  FloatTitle = { colors.cyan },
  FloatFooter = { colors.cyan },
  NormalNC = { colors.white },
  Pmenu = { colors.white, colors.black },
  PmenuSel = { colors.black, colors.yellow },
  PmenuKind = { colors.white, colors.black },
  PmenuKindSel = { colors.black, colors.yellow },
  PmenuExtra = { colors.white, colors.black },
  PmenuExtraSel = { colors.black, colors.yellow },
  PmenuSbar = { colors.white, colors.black },
  PmenuThumb = { colors.black, colors.yellow },
  PmenuMatch = { colors.white },
  PmenuMatchSel = { colors.white },
  ComplMatchIns = { colors.white },
  Question = { colors.blue },
  QuickFixLine = { colors.white, colors.black },
  Search = { colors.white, colors.lgray },
  SnippetTabstop = { colors.white, colors.gray },
  SpecialKey = { colors.gray },
  SpellBad = { colors.red },
  SpellCap = { colors.red },
  SpellLocal = { colors.red },
  SpellRare = { colors.red },
  StatusLine = { colors.cyan },
  StatusLineNC = { colors.blue },
  StatusLineTerm = { colors.cyan },
  StatusLineTermNC = { colors.blue },
  TabLine = { colors.white, colors.lgray },
  TabLineFill = { colors.white, colors.black },
  TabLineSel = { colors.black, colors.blue },
  Title = { colors.blue },
  Visual = { colors.black, colors.cyan },
  VisualNOS = { colors.black, colors.cyan },
  WarningMsg = { colors.orange },
  Whitespace = { colors.gray },
  WildMenu = { colors.white, colors.gray },
  WinBar = { colors.blue },
  WinBarNC = { colors.blue },
  NotifyBackground = { colors.yellow, colors.bg }
}

M.opts = {}

M.setup = function(opts)
  if opts.transparent == true then
    M.transparent = true
  end
end

M.apply_colorscheme = function()
  for hl, ctbl in pairs(set_color) do
    local pfg = ctbl[1] or colors.fg
    local pbg = ctbl[2] or ''
    vim.api.nvim_set_hl(0, hl, { bg = pbg, fg = pfg })
  end
  if M.transparent then
    vim.cmd('hi normal guibg=NONE')
  end
end

return M
