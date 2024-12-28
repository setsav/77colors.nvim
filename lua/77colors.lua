local M = {}
-- pink and orange
local colors = {
  fg = '#F7DC6E',
  bg = '#7B835B',
  black = '#100F17',
  gray = '#353535',
  lgray = '#4e4e4e',
  red = '#FD654D',
  green = '#2ecc71',
  yellow = '#E0F456',
  dyellow = '#505000',
  blue = '#2C7DD7',
  magenta = '#FF05B6',
  cyan = '#5DDFEE',
  white = '#FFFFFF',
  pink = '#E74C3C',
  orange = '#FF7700',
  red2 = '#ff0000',
  green2 = '#10D943',
  yellow2 = '#FFFF00',
  blue2 = '#00BFFF',
  magenta2 = '#E74C3C',
  cyan2 = '#00FFFF',
  tp = nil,
}

M.colors = colors

local set_color = {
  ColorColumn = { colors.white, colors.black },
  Conceal = { colors.bg },
  CurSearch = { colors.yellow },
  Cursor = { colors.black, colors.white },
  lCursor = { colors.black, colors.white },
  CursorIM = { colors.black, colors.white },
  CursorColumn = { colors.white, colors.bg },
  CursorLine = { colors.white, colors.bg },
  Directory = { colors.blue },
  DiffAdd = { colors.white, colors.black },
  DiffChange = { colors.white, colors.black },
  DiffDelete = { colors.white, colors.black },
  DiffText = { colors.white, colors.bg },
  EndOfBuffer = { colors.bg },
  TermCursor = { colors.black, colors.white },
  ErrorMsg = { colors.red },
  WinSeparator = { colors.yellow },
  Folded = { colors.blue },
  FoldColumn = { colors.blue },
  SignColumn = { colors.blue },
  IncSearch = { colors.orange, colors.cyan },
  Substitute = { colors.yellow, colors.red },
  LineNr = { colors.yellow },
  LineNrAbove = { colors.cyan },
  LineNrBelow = { colors.cyan },
  CursorLineNr = { colors.yellow },
  CursorLineFold = { colors.blue },
  CursorLineSign = { colors.blue },
  MatchParen = { colors.orange },
  ModeMsg = { colors.orange },
  MsgArea = { colors.cyan },
  MsgSeparator = { colors.white },
  MoreMsg = { colors.blue },
  NonText = { colors.bg },
  Normal = { colors.white, colors.black },
  NormalFloat = { colors.white },
  FloatBorder = { colors.blue },
  FloatTitle = { colors.cyan },
  FloatFooter = { colors.cyan },
  NormalNC = { colors.white },
  Pmenu = { colors.black, colors.yellow },
  PmenuSel = { colors.black, colors.red2 },
  PmenuKind = { colors.black, colors.yellow },
  PmenuKindSel = { colors.black, colors.red2 },
  PmenuExtra = { colors.black, colors.yellow },
  PmenuExtraSel = { colors.black, colors.red2 },
  PmenuSbar = { colors.black, colors.yellow },
  PmenuThumb = { colors.gray, colors.yellow },
  PmenuMatch = { colors.white },
  PmenuMatchSel = { colors.white },
  ComplMatchIns = { colors.white },
  Question = { colors.blue },
  QuickFixLine = { colors.cyan, colors.magenta },
  Search = { colors.white, colors.magenta },
  SnippetTabstop = { colors.white, colors.magenta },
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
  TabLineFill = { colors.white, colors.bg },
  TabLineSel = { colors.black, colors.blue },
  Title = { colors.blue },
  Visual = { colors.black, colors.cyan },
  VisualNOS = { colors.black, colors.cyan },
  WarningMsg = { colors.orange },
  Whitespace = { colors.gray },
  WildMenu = { colors.white, colors.red },
  WinBar = { colors.blue },
  WinBarNC = { colors.blue },
  NotifyBackground = { colors.yellow, colors.black }
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
