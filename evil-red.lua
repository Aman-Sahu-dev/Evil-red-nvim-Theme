-- evil-red.lua
-- A Neovim colorscheme ported from the "evil-red-theme" VS Code theme,
-- with syntax colors taken from its Red.tmTheme (now supplied).
-- Install: drop this file at ~/.config/nvim/colors/evil-red.lua
-- Then run: :colorscheme evil-red

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "evil-red"

-- ============================================================
-- Palette (pulled directly from the source theme's color values)
-- ============================================================
local c = {
  bg = "#1D0101",
  bg_dark = "#170000",
  bg_alt = "#290101",
  bg_statusline = "#480202",
  bg_highlight = "#330000",
  bg_visual = "#520000",
  bg_select = "#B50505",
  bg_search = "#800000",
  bg_float = "#400000",

  fg = "#FFCCCC",
  fg_dim = "#F0E0E0",
  fg_dark = "#8F8F8F",
  comment = "#7E5757",
  border = "#131415",

  red = "#FF0000",
  red_bright = "#FF4A4A",
  red_mid = "#B50505",
  red_dark = "#5C0000",
  red_darker = "#410000",

  orange = "#FF8800",
  yellow = "#F6E86E",
  green = "#007006",
  green_info = "#A3FFA5",
  yellow_warn = "#FFFAA0",
  red_soft = "#FF9F9F",
  list_green = "#88FF88",

  white = "#FFFFFF",
  black = "#000000",

  -- ---- from Red.tmTheme (tokenColors) ----
  editor_bg = "#250000",
  editor_fg = "#F8F8F8",
  caret = "#FF0000",
  invisibles = "#C10000",
  line_hl = "#1A0000",
  tm_selection = "#4D0000",

  tm_comment = "#AD9191",
  tm_constant = "#FFB452",
  tm_keyword = "#72E3FF",
  tm_entity = "#FF9CFA",
  tm_storage = "#FF6262",
  tm_string = "#E8FFE5",
  tm_support = "#FF4747",
  tm_variable = "#BFE791",
  tm_invalid_bg = "#FF0000",
  tm_inherited = "#AA5507",
  tm_string_embed = "#9DF39F",
  tm_string_const = "#FFE862",
  tm_regexp = "#FFB454",
  tm_string_var = "#EDEF7D",
  tm_support_fn = "#FFB454",
  tm_support_const = "#EB939A",
  tm_doctype = "#73817D",
  tm_tag = "#FF8250",
  tm_tag_attr = "#9AFF57",
  tm_tag_text = "#FFEEEE",
  tm_css_tag = "#AA5507",
  tm_css_id = "#FEC758",
  tm_css_class = "#41A83E",
  tm_css_prop = "#96DD3B",
  tm_css_value = "#FFE862",
  tm_css_atrule = "#FD6209",
  tm_css_arg = "#EC9799",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================
-- Editor UI
-- ============================================================
hl("Normal", { fg = c.editor_fg, bg = c.editor_bg })
hl("NormalFloat", { fg = c.editor_fg, bg = c.bg_float })
hl("NormalNC", { fg = c.editor_fg, bg = c.editor_bg })
hl("FloatBorder", { fg = c.red_mid, bg = c.bg_float })
hl("Cursor", { fg = c.editor_bg, bg = c.caret })
hl("CursorLine", { bg = c.line_hl })
hl("CursorLineNr", { fg = c.red, bold = true })
hl("LineNr", { fg = c.red_bright })
hl("SignColumn", { fg = c.red, bg = c.editor_bg })
hl("ColorColumn", { bg = c.line_hl })
hl("Visual", { bg = c.tm_selection })
hl("VisualNOS", { bg = c.tm_selection })
hl("Search", { fg = c.white, bg = c.red_mid })
hl("IncSearch", { fg = c.bg_dark, bg = c.red })
hl("CurSearch", { fg = c.bg_dark, bg = c.red })
hl("Substitute", { fg = c.white, bg = c.green })

hl("Pmenu", { fg = c.fg, bg = c.bg_highlight })
hl("PmenuSel", { fg = c.white, bg = c.bg_select })
hl("PmenuSbar", { bg = c.bg_alt })
hl("PmenuThumb", { bg = c.red_mid })

hl("StatusLine", { fg = c.fg, bg = c.bg_statusline })
hl("StatusLineNC", { fg = c.comment, bg = c.bg_alt })
hl("WinSeparator", { fg = c.border, bg = c.bg_dark })
hl("VertSplit", { fg = c.border, bg = c.bg_dark })

hl("TabLine", { fg = c.fg_dim, bg = c.bg_alt })
hl("TabLineFill", { bg = c.bg_alt })
hl("TabLineSel", { fg = c.white, bg = c.bg_select, bold = true })

hl("Directory", { fg = c.red, bold = true })
hl("Title", { fg = c.red, bold = true })
hl("Folded", { fg = c.comment, bg = c.bg_alt })
hl("FoldColumn", { fg = c.red_mid, bg = c.bg_dark })
hl("MatchParen", { fg = c.white, bg = c.red_mid, bold = true })

hl("NonText", { fg = c.invisibles })
hl("Whitespace", { fg = c.invisibles })
hl("SpecialKey", { fg = c.invisibles })
hl("EndOfBuffer", { fg = c.editor_bg })

hl("Question", { fg = c.yellow })
hl("MoreMsg", { fg = c.green_info })
hl("ModeMsg", { fg = c.fg_dim })
hl("WarningMsg", { fg = c.yellow_warn })
hl("ErrorMsg", { fg = c.red, bold = true })

hl("WildMenu", { fg = c.white, bg = c.red })

-- Diff
hl("DiffAdd", { fg = c.green_info, bg = "#0A2A0A" })
hl("DiffChange", { fg = c.yellow, bg = "#332A00" })
hl("DiffDelete", { fg = c.red_soft, bg = c.red_darker })
hl("DiffText", { fg = c.white, bg = c.red_mid })

-- Diagnostics
hl("DiagnosticError", { fg = c.red })
hl("DiagnosticWarn", { fg = c.yellow_warn })
hl("DiagnosticInfo", { fg = c.green_info })
hl("DiagnosticHint", { fg = c.fg_dim })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow_warn })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.green_info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.fg_dim })

-- ============================================================
-- Syntax highlighting — taken directly from Red.tmTheme scopes
-- ============================================================
hl("Comment", { fg = c.tm_comment, italic = true })

hl("Constant", { fg = c.tm_constant })
hl("String", { fg = c.tm_string, bold = true })
hl("Character", { fg = c.tm_string, bold = true })
hl("Number", { fg = c.tm_constant })
hl("Boolean", { fg = c.tm_constant })
hl("Float", { fg = c.tm_constant })

hl("Identifier", { fg = c.tm_variable, italic = true })
hl("Function", { fg = c.tm_support_fn })

hl("Statement", { fg = c.tm_keyword })
hl("Conditional", { fg = c.tm_keyword })
hl("Repeat", { fg = c.tm_keyword })
hl("Label", { fg = c.tm_keyword })
hl("Operator", { fg = c.tm_keyword })
hl("Keyword", { fg = c.tm_keyword })
hl("Exception", { fg = c.tm_keyword })

hl("PreProc", { fg = c.tm_css_atrule })
hl("Include", { fg = c.tm_css_atrule })
hl("Define", { fg = c.tm_css_atrule })
hl("Macro", { fg = c.tm_css_atrule })
hl("PreCondit", { fg = c.tm_css_atrule })

hl("Type", { fg = c.tm_storage, bold = true })
hl("StorageClass", { fg = c.tm_storage, bold = true })
hl("Structure", { fg = c.tm_storage, bold = true })
hl("Typedef", { fg = c.tm_storage, bold = true })

hl("Special", { fg = c.tm_entity })
hl("SpecialChar", { fg = c.tm_regexp })
hl("Tag", { fg = c.tm_tag, bold = true })
hl("Delimiter", { fg = c.tm_tag_text })
hl("SpecialComment", { fg = c.tm_comment, bold = true })
hl("Debug", { fg = c.tm_support_const })

hl("Underlined", { fg = c.tm_inherited, underline = true })
hl("Ignore", { fg = c.tm_comment })
hl("Error", { fg = c.white, bg = c.tm_invalid_bg })
hl("Todo", { fg = c.editor_bg, bg = c.tm_string_const, bold = true })

-- string sub-scopes
hl("@string.regexp", { fg = c.tm_regexp })
hl("@string.special", { fg = c.tm_string_var })

-- markup / html / css scopes
hl("htmlTag", { fg = c.tm_tag, bold = true })
hl("htmlTagName", { fg = c.tm_tag, bold = true })
hl("htmlEndTag", { fg = c.tm_tag, bold = true })
hl("htmlArg", { fg = c.tm_tag_attr, bold = true })
hl("cssTagName", { fg = c.tm_css_tag })
hl("cssIdentifier", { fg = c.tm_css_id })
hl("cssClassName", { fg = c.tm_css_class })
hl("cssProp", { fg = c.tm_css_prop })
hl("cssPropList", { fg = c.tm_css_prop })
hl("cssAttrComma", { fg = c.tm_css_value })
hl("cssColor", { fg = c.tm_css_value })
hl("cssValueLength", { fg = c.tm_css_value, italic = true })
hl("cssAtRule", { fg = c.tm_css_atrule })
hl("cssFunctionName", { fg = c.tm_css_arg })
hl("xmlProcessingDelim", { fg = c.tm_doctype })
hl("xmlDoctype", { fg = c.tm_doctype })

-- ============================================================
-- Treesitter (@-groups) — mapped from the tmTheme scopes
-- ============================================================
hl("@variable", { fg = c.tm_variable, italic = true })
hl("@variable.builtin", { fg = c.tm_support_const, italic = true })
hl("@constant", { fg = c.tm_constant })
hl("@constant.builtin", { fg = c.tm_constant, bold = true })
hl("@string", { fg = c.tm_string, bold = true })
hl("@string.escape", { fg = c.tm_string_const })
hl("@number", { fg = c.tm_constant })
hl("@boolean", { fg = c.tm_constant })
hl("@function", { fg = c.tm_support_fn })
hl("@function.builtin", { fg = c.tm_support })
hl("@method", { fg = c.tm_support_fn })
hl("@constructor", { fg = c.tm_entity })
hl("@parameter", { fg = c.tm_variable, italic = true })
hl("@keyword", { fg = c.tm_keyword })
hl("@keyword.function", { fg = c.tm_keyword })
hl("@keyword.return", { fg = c.tm_keyword })
hl("@conditional", { fg = c.tm_keyword })
hl("@repeat", { fg = c.tm_keyword })
hl("@type", { fg = c.tm_storage, bold = true })
hl("@type.builtin", { fg = c.tm_storage })
hl("@property", { fg = c.tm_css_prop })
hl("@field", { fg = c.tm_css_prop })
hl("@punctuation.bracket", { fg = c.tm_tag_text })
hl("@punctuation.delimiter", { fg = c.tm_tag_text })
hl("@comment", { fg = c.tm_comment, italic = true })
hl("@tag", { fg = c.tm_tag, bold = true })
hl("@tag.attribute", { fg = c.tm_tag_attr, bold = true })
hl("@tag.delimiter", { fg = c.tm_tag_text })
hl("@class", { fg = c.tm_inherited, underline = true })

-- ============================================================
-- Plugin support
-- ============================================================
-- Telescope
hl("TelescopeBorder", { fg = c.red_mid, bg = c.bg_float })
hl("TelescopeNormal", { fg = c.fg, bg = c.bg_float })
hl("TelescopeSelection", { fg = c.white, bg = c.bg_select })
hl("TelescopePromptBorder", { fg = c.red, bg = c.bg_float })

-- nvim-cmp
hl("CmpItemAbbrMatch", { fg = c.red, bold = true })
hl("CmpItemKindFunction", { fg = c.red })
hl("CmpItemKindVariable", { fg = c.fg_dim })
hl("CmpItemKindKeyword", { fg = c.red_bright })

-- GitSigns
hl("GitSignsAdd", { fg = c.green_info })
hl("GitSignsChange", { fg = c.yellow })
hl("GitSignsDelete", { fg = c.red_soft })

-- Which-key / nvim-notify float border reuse
hl("NotifyERRORBorder", { fg = c.red })
hl("NotifyWARNBorder", { fg = c.yellow_warn })
hl("NotifyINFOBorder", { fg = c.green_info })
