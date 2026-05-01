-- Slipstream highlight groups

local M = {}

function M.get(c)
  return {
    -- ─── Editor UI ────────────────────────────────────────────────────────────
    Normal          = { fg = c.fg,         bg = c.black },
    NormalNC        = { fg = c.fg,         bg = c.black },
    NormalFloat     = { fg = c.fg,         bg = c.bg2 },
    FloatBorder     = { fg = c.border2,    bg = c.bg2 },
    FloatTitle      = { fg = c.teal,       bg = c.bg2 },

    Cursor          = { fg = c.black,      bg = c.teal },
    CursorIM        = { fg = c.black,      bg = c.teal },
    CursorLine      = { bg = c.bg2 },
    CursorLineNr    = { fg = c.fg_faint },
    CursorColumn    = { bg = c.bg2 },

    LineNr          = { fg = c.fg_disabled },
    SignColumn      = { bg = c.black },
    ColorColumn     = { bg = c.bg2 },
    VertSplit       = { fg = c.border },
    WinSeparator    = { fg = c.border },

    StatusLine      = { fg = c.fg_muted,   bg = c.black },
    StatusLineNC    = { fg = c.fg_disabled, bg = c.black },
    TabLine         = { fg = c.fg_muted,   bg = c.black },
    TabLineFill     = { bg = c.black },
    TabLineSel      = { fg = c.fg,         bg = c.bg2 },

    WildMenu        = { fg = c.black,      bg = c.teal },
    Pmenu           = { fg = c.fg,         bg = c.bg2 },
    PmenuSel        = { fg = c.black,      bg = c.teal },
    PmenuSbar       = { bg = c.bg3 },
    PmenuThumb      = { bg = c.border2 },

    Search          = { fg = c.black,      bg = c.gold },
    IncSearch       = { fg = c.black,      bg = c.gold_bright },
    CurSearch       = { fg = c.black,      bg = c.gold_bright },
    Substitute      = { fg = c.black,      bg = c.rose },

    Visual          = { bg = c.bg4 },
    VisualNOS       = { bg = c.bg4 },

    MatchParen      = { fg = c.teal,       bold = true },

    NonText         = { fg = c.invisible },
    Whitespace      = { fg = c.invisible },
    SpecialKey      = { fg = c.fg_subtle },
    EndOfBuffer     = { fg = c.bg3 },

    Folded          = { fg = c.fg_muted,   bg = c.bg2 },
    FoldColumn      = { fg = c.fg_disabled, bg = c.black },

    Directory       = { fg = c.teal },
    Title           = { fg = c.white,      bold = true },

    DiffAdd         = { bg = "#060f0d" },
    DiffChange      = { bg = "#0f0d06" },
    DiffDelete      = { bg = "#0f0607" },
    DiffText        = { bg = "#141006" },

    SpellBad        = { undercurl = true,  sp = c.rose },
    SpellCap        = { undercurl = true,  sp = c.blue },
    SpellLocal      = { undercurl = true,  sp = c.teal },
    SpellRare       = { undercurl = true,  sp = c.gold },

    MsgArea         = { fg = c.fg_muted },
    MsgSeparator    = { fg = c.border },
    MoreMsg         = { fg = c.teal },
    Question        = { fg = c.teal },
    ErrorMsg        = { fg = c.rose },
    WarningMsg      = { fg = c.gold },

    QuickFixLine    = { bg = c.bg3 },

    -- ─── Syntax ───────────────────────────────────────────────────────────────
    Comment         = { fg = c.fg_subtle,  italic = true },
    SpecialComment  = { fg = c.fg_muted,   italic = true },

    Constant        = { fg = c.gold },
    String          = { fg = c.gold },
    Character       = { fg = c.gold },
    Number          = { fg = c.gold },
    Float           = { fg = c.gold },
    Boolean         = { fg = c.gold },

    Identifier      = { fg = c.fg },
    Function        = { fg = c.teal },

    Statement       = { fg = c.sky },
    Conditional     = { fg = c.sky },
    Repeat          = { fg = c.sky },
    Label           = { fg = c.blue },
    Operator        = { fg = c.fg_muted },
    Keyword         = { fg = c.sky },
    Exception       = { fg = c.sky },

    PreProc         = { fg = c.sky },
    Include         = { fg = c.sky },
    Define          = { fg = c.sky },
    Macro           = { fg = c.sky },
    PreCondit       = { fg = c.sky },

    Type            = { fg = c.sky },
    StorageClass    = { fg = c.sky },
    Structure       = { fg = c.sky },
    Typedef         = { fg = c.sky },

    Special         = { fg = c.teal },
    SpecialChar     = { fg = c.teal },
    Tag             = { fg = c.teal },
    Delimiter       = { fg = c.fg_muted },
    Debug           = { fg = c.rose },

    Underlined      = { underline = true },
    Bold            = { bold = true },
    Italic          = { italic = true },

    Error           = { fg = c.rose },
    Todo            = { fg = c.black,      bg = c.gold,  bold = true },

    -- ─── Treesitter ───────────────────────────────────────────────────────────
    ["@comment"]                     = { link = "Comment" },
    ["@comment.documentation"]       = { fg = c.fg_muted, italic = true },
    ["@error"]                       = { fg = c.rose },
    ["@none"]                        = {},
    ["@preproc"]                     = { fg = c.sky },
    ["@define"]                      = { fg = c.sky },
    ["@operator"]                    = { fg = c.fg_muted },

    ["@punctuation.delimiter"]       = { fg = c.fg_subtle },
    ["@punctuation.bracket"]         = { fg = c.teal },
    TSBracket                         = { fg = c.teal },
    ["@punctuation.special"]         = { fg = c.teal },

    ["@string"]                      = { fg = c.gold },
    ["@string.regex"]                = { fg = c.sky_bright },
    ["@string.escape"]               = { fg = c.teal },
    ["@string.special"]              = { fg = c.teal },
    ["@string.special.symbol"]       = { fg = c.blue },

    ["@character"]                   = { fg = c.gold },
    ["@number"]                      = { fg = c.gold },
    ["@float"]                       = { fg = c.gold },
    ["@boolean"]                     = { fg = c.gold },

    ["@function"]                    = { fg = c.teal },
    ["@function.builtin"]            = { fg = c.teal },
    ["@function.call"]               = { fg = c.teal },
    ["@function.macro"]              = { fg = c.sky },
    ["@function.method"]             = { fg = c.teal },
    ["@function.method.call"]        = { fg = c.teal },

    ["@constructor"]                 = { fg = c.sky },
    ["@parameter"]                   = { fg = c.fg },

    ["@keyword"]                     = { fg = c.sky },
    ["@keyword.function"]            = { fg = c.sky },
    ["@keyword.operator"]            = { fg = c.sky },
    ["@keyword.return"]              = { fg = c.sky },
    ["@keyword.import"]              = { fg = c.sky },
    ["@keyword.conditional"]         = { fg = c.sky },
    ["@keyword.repeat"]              = { fg = c.sky },
    ["@keyword.exception"]           = { fg = c.sky },

    ["@conditional"]                 = { fg = c.sky },
    ["@repeat"]                      = { fg = c.sky },
    ["@label"]                       = { fg = c.blue },
    ["@include"]                     = { fg = c.sky },
    ["@exception"]                   = { fg = c.sky },

    ["@type"]                        = { fg = c.sky },
    ["@type.builtin"]                = { fg = c.sky },
    ["@type.definition"]             = { fg = c.sky },
    ["@type.qualifier"]              = { fg = c.sky },

    ["@storageclass"]                = { fg = c.sky },
    ["@attribute"]                   = { fg = c.teal },
    ["@field"]                       = { fg = c.fg2 },
    ["@property"]                    = { fg = c.fg2 },

    ["@variable"]                    = { fg = c.fg },
    ["@variable.builtin"]            = { fg = c.teal },
    ["@variable.parameter"]          = { fg = c.fg },
    ["@variable.member"]             = { fg = c.fg2 },

    ["@constant"]                    = { fg = c.gold },
    ["@constant.builtin"]            = { fg = c.gold },
    ["@constant.macro"]              = { fg = c.gold },

    ["@namespace"]                   = { fg = c.fg2 },
    ["@symbol"]                      = { fg = c.blue },
    ["@tag"]                         = { fg = c.teal },
    ["@tag.attribute"]               = { fg = c.teal },
    ["@tag.delimiter"]               = { fg = c.fg_muted },

    ["@text"]                        = { fg = c.fg },
    ["@text.strong"]                 = { fg = c.white, bold = true },
    ["@text.emphasis"]               = { fg = c.fg,   italic = true },
    ["@text.underline"]              = { underline = true },
    ["@text.strike"]                 = { strikethrough = true },
    ["@text.title"]                  = { fg = c.white, bold = true },
    ["@text.literal"]                = { fg = c.gold },
    ["@text.uri"]                    = { fg = c.fg_muted, italic = true },
    ["@text.math"]                   = { fg = c.gold },
    ["@text.reference"]              = { fg = c.teal },
    ["@text.todo"]                   = { link = "Todo" },
    ["@text.note"]                   = { fg = c.blue },
    ["@text.warning"]                = { fg = c.gold },
    ["@text.danger"]                 = { fg = c.rose },
    ["@text.diff.add"]               = { fg = c.teal },
    ["@text.diff.delete"]            = { fg = c.rose },

    -- ─── LSP ──────────────────────────────────────────────────────────────────
    DiagnosticError            = { fg = c.rose },
    DiagnosticWarn             = { fg = c.gold },
    DiagnosticInfo             = { fg = c.blue },
    DiagnosticHint             = { fg = c.fg_subtle },
    DiagnosticOk               = { fg = c.teal },

    DiagnosticUnderlineError   = { undercurl = true, sp = c.rose },
    DiagnosticUnderlineWarn    = { undercurl = true, sp = c.gold },
    DiagnosticUnderlineInfo    = { undercurl = true, sp = c.blue },
    DiagnosticUnderlineHint    = { undercurl = true, sp = c.fg_subtle },

    DiagnosticVirtualTextError = { fg = c.rose,      bg = "#0f0607" },
    DiagnosticVirtualTextWarn  = { fg = c.gold,      bg = "#0f0d06" },
    DiagnosticVirtualTextInfo  = { fg = c.blue,      bg = "#060a0f" },
    DiagnosticVirtualTextHint  = { fg = c.fg_subtle, bg = "#060606" },

    LspReferenceText           = { bg = "#060f0d" },
    LspReferenceRead           = { bg = "#060f0d" },
    LspReferenceWrite          = { bg = "#0a1a16" },
    LspSignatureActiveParameter = { fg = c.gold, bold = true },
    LspInlayHint               = { fg = c.fg_subtle, bg = c.bg2, italic = true },

    -- ─── Git signs ────────────────────────────────────────────────────────────
    GitSignsAdd              = { fg = c.teal },
    GitSignsChange           = { fg = c.gold },
    GitSignsDelete           = { fg = c.rose },
    GitSignsAddNr            = { fg = c.teal },
    GitSignsChangeNr         = { fg = c.gold },
    GitSignsDeleteNr         = { fg = c.rose },
    GitSignsAddLn            = { bg = "#060f0d" },
    GitSignsChangeLn         = { bg = "#0f0d06" },

    -- ─── Telescope ────────────────────────────────────────────────────────────
    TelescopeNormal          = { fg = c.fg,       bg = c.bg1 },
    TelescopeBorder          = { fg = c.border2,  bg = c.bg1 },
    TelescopeTitle           = { fg = c.teal },
    TelescopePromptNormal    = { fg = c.fg,       bg = c.bg2 },
    TelescopePromptBorder    = { fg = c.border2,  bg = c.bg2 },
    TelescopePromptPrefix    = { fg = c.teal },
    TelescopeSelection       = { fg = c.fg,       bg = c.bg4 },
    TelescopeSelectionCaret  = { fg = c.teal },
    TelescopeMatching        = { fg = c.gold,     bold = true },
    TelescopePreviewNormal   = { bg = c.black },
    TelescopePreviewBorder   = { fg = c.border,   bg = c.black },

    -- ─── nvim-cmp ─────────────────────────────────────────────────────────────
    CmpItemAbbr              = { fg = c.fg },
    CmpItemAbbrDeprecated    = { fg = c.fg_disabled, strikethrough = true },
    CmpItemAbbrMatch         = { fg = c.gold,      bold = true },
    CmpItemAbbrMatchFuzzy    = { fg = c.gold },
    CmpItemMenu              = { fg = c.fg_muted },
    CmpItemKindDefault       = { fg = c.fg_muted },
    CmpItemKindFunction      = { fg = c.teal },
    CmpItemKindMethod        = { fg = c.teal },
    CmpItemKindConstructor   = { fg = c.sky },
    CmpItemKindField         = { fg = c.fg2 },
    CmpItemKindVariable      = { fg = c.fg },
    CmpItemKindClass         = { fg = c.sky },
    CmpItemKindInterface     = { fg = c.sky },
    CmpItemKindModule        = { fg = c.fg2 },
    CmpItemKindProperty      = { fg = c.fg2 },
    CmpItemKindKeyword       = { fg = c.sky },
    CmpItemKindSnippet       = { fg = c.teal },
    CmpItemKindValue         = { fg = c.gold },
    CmpItemKindEnum          = { fg = c.sky },
    CmpItemKindColor         = { fg = c.teal },
    CmpItemKindConstant      = { fg = c.gold },
    CmpItemKindText          = { fg = c.fg },
    CmpItemKindTypeParameter = { fg = c.sky },

    -- ─── which-key ────────────────────────────────────────────────────────────
    WhichKey          = { fg = c.teal },
    WhichKeyGroup     = { fg = c.sky },
    WhichKeyDesc      = { fg = c.fg },
    WhichKeySeparator = { fg = c.fg_subtle },
    WhichKeyFloat     = { bg = c.bg2 },
    WhichKeyBorder    = { fg = c.border2, bg = c.bg2 },

    -- ─── indent-blankline ─────────────────────────────────────────────────────
    IblIndent         = { fg = c.bg3 },
    IblScope          = { fg = c.border2 },
    IndentBlanklineChar           = { fg = c.bg3 },
    IndentBlanklineContextChar    = { fg = c.border2 },

    -- ─── nvim-tree ────────────────────────────────────────────────────────────
    NvimTreeNormal         = { fg = c.fg,       bg = c.black },
    NvimTreeNormalNC       = { fg = c.fg,       bg = c.black },
    NvimTreeFolderName     = { fg = c.fg },
    NvimTreeOpenedFolderName = { fg = c.teal },
    NvimTreeEmptyFolderName = { fg = c.fg_muted },
    NvimTreeFolderIcon     = { fg = c.teal },
    NvimTreeFileIcon       = { fg = c.fg_muted },
    NvimTreeRootFolder     = { fg = c.teal,     bold = true },
    NvimTreeSymlink        = { fg = c.teal },
    NvimTreeExecFile       = { fg = c.teal },
    NvimTreeGitDirty       = { fg = c.gold },
    NvimTreeGitNew         = { fg = c.teal },
    NvimTreeGitDeleted     = { fg = c.rose },
    NvimTreeSpecialFile    = { fg = c.sky },
    NvimTreeIndentMarker   = { fg = c.bg3 },
    NvimTreeWinSeparator   = { fg = c.border, bg = c.black },

    -- ─── neo-tree ─────────────────────────────────────────────────────────────
    NeoTreeNormal          = { fg = c.fg,       bg = c.black },
    NeoTreeNormalNC        = { fg = c.fg,       bg = c.black },
    NeoTreeDirectoryName   = { fg = c.fg },
    NeoTreeDirectoryIcon   = { fg = c.teal },
    NeoTreeRootName        = { fg = c.teal,     bold = true },
    NeoTreeFileName        = { fg = c.fg },
    NeoTreeFileIcon        = { fg = c.fg_muted },
    NeoTreeGitAdded        = { fg = c.teal },
    NeoTreeGitModified     = { fg = c.gold },
    NeoTreeGitDeleted      = { fg = c.rose },
    NeoTreeGitUntracked    = { fg = c.fg_muted },
    NeoTreeWinSeparator    = { fg = c.border, bg = c.black },
    NeoTreeTabActive       = { fg = c.fg, bg = c.bg2 },
    NeoTreeTabInactive     = { fg = c.fg_muted, bg = c.black },

    -- ─── bufferline ───────────────────────────────────────────────────────────
    BufferLineBackground       = { fg = c.fg_muted, bg = c.black },
    BufferLineBufferSelected   = { fg = c.fg,       bg = c.bg2, bold = true },
    BufferLineBufferVisible    = { fg = c.fg_muted, bg = c.black },
    BufferLineCloseButton      = { fg = c.fg_muted, bg = c.black },
    BufferLineCloseButtonSelected = { fg = c.rose,  bg = c.bg2 },
    BufferLineSeparator        = { fg = c.border,   bg = c.black },
    BufferLineIndicatorSelected = { fg = c.teal,    bg = c.bg2 },
    BufferLineModified         = { fg = c.gold,     bg = c.black },
    BufferLineModifiedSelected = { fg = c.gold,     bg = c.bg2 },

    -- ─── lualine (uses StatusLine as fallback) ────────────────────────────────

    -- ─── Noice / cmdline ──────────────────────────────────────────────────────
    NoiceCmdline            = { fg = c.fg,      bg = c.bg2 },
    NoiceCmdlinePopup       = { fg = c.fg,      bg = c.bg2 },
    NoiceCmdlinePopupBorder = { fg = c.border2, bg = c.bg2 },
    NoiceCmdlineIcon        = { fg = c.teal },
    NoiceConfirm            = { fg = c.fg,      bg = c.bg2 },
    NoiceConfirmBorder      = { fg = c.teal,    bg = c.bg2 },

    -- ─── mini.statusline / mini.tabline fallback ──────────────────────────────
    MiniStatuslineModeNormal  = { fg = c.black, bg = c.teal,  bold = true },
    MiniStatuslineModeInsert  = { fg = c.black, bg = c.gold,  bold = true },
    MiniStatuslineModeVisual  = { fg = c.black, bg = c.sky,   bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.rose,  bold = true },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.blue,  bold = true },
    MiniStatuslineModeOther   = { fg = c.black, bg = c.fg_muted, bold = true },
    MiniStatuslineFilename    = { fg = c.fg,    bg = c.bg2 },
    MiniStatuslineFileinfo    = { fg = c.fg_muted, bg = c.bg2 },
    MiniStatuslineInactive    = { fg = c.fg_disabled, bg = c.black },
    MiniTablineCurrent        = { fg = c.fg,    bg = c.bg2,   bold = true },
    MiniTablineVisible        = { fg = c.fg_muted, bg = c.black },
    MiniTablineHidden         = { fg = c.fg_disabled, bg = c.black },
    MiniTablineModifiedCurrent  = { fg = c.gold, bg = c.bg2,  bold = true },
    MiniTablineModifiedVisible  = { fg = c.gold, bg = c.black },
    MiniTablineModifiedHidden   = { fg = c.gold_dim, bg = c.black },
    MiniTablineFill           = { bg = c.black },
    MiniTablineTabpagesection = { fg = c.black, bg = c.teal },

    -- ─── Mason ────────────────────────────────────────────────────────────────
    MasonHeader              = { fg = c.black,     bg = c.teal,  bold = true },
    MasonHeaderSecondary     = { fg = c.black,     bg = c.sky,   bold = true },
    MasonHighlight           = { fg = c.teal },
    MasonHighlightBlock      = { fg = c.black,     bg = c.teal },
    MasonHighlightBlockBold  = { fg = c.black,     bg = c.teal,  bold = true },
    MasonHighlightSecondary      = { fg = c.sky },
    MasonHighlightBlockSecondary = { fg = c.black, bg = c.sky },
    MasonHighlightBlockBoldSecondary = { fg = c.black, bg = c.sky, bold = true },
    MasonMuted               = { fg = c.fg_muted },
    MasonMutedBlock          = { fg = c.fg_disabled, bg = c.bg3 },
    MasonMutedBlockBold      = { fg = c.fg_muted,  bg = c.bg3,   bold = true },
    MasonError               = { fg = c.rose },
    MasonWarning             = { fg = c.gold },
    MasonHeading             = { fg = c.white,     bold = true },

    -- ─── LuaSnip ──────────────────────────────────────────────────────────────
    LuasnipInsertNodeActive  = { fg = c.black,     bg = c.teal },
    LuasnipChoiceNodeActive  = { fg = c.black,     bg = c.gold },

    -- ─── zen-mode ─────────────────────────────────────────────────────────────
    ZenModeBg                = { bg = c.black },
  }
end

return M
