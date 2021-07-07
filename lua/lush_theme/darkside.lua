--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial
--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--
-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`
local lush = require('lush')
local hsl = lush.hsl

local c = {
    white = hsl(219, 14, 71), -- #ABB2BF
    light_gray = hsl(219, 13, 34), -- #4A5261
    gray = hsl(220, 14, 25), -- #363C48
    dark_gray = hsl(222, 14, 18), -- #272B34
    black = hsl(220, 17, 14), -- #1e222a
    dark_black = hsl(220, 18, 13), -- #1b1f27
    red = hsl(354, 50, 66), -- #D27E84
    dark_red = hsl(5, 48, 51), -- #BE5046
    green = hsl(92, 28, 65), -- #A3BE8C
    yellow = hsl(40, 67, 72), -- #E7C788
    dark_yellow = hsl(29, 54, 61), -- #D19A66
    blue = hsl(207, 82, 66), -- #61AFEF
    purple = hsl(282, 68, 71), -- #C882E7
    cyan = hsl(223, 70, 79) -- #A3B8EF
}

local theme = lush(
                  function()
        return {
            -- The following are all the Neovim default highlight groups from the docs
            -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
            -- probably style all of these at a bare minimum.
            --
            -- Referenced/linked groups must come before being referenced/lined,
            -- so the order shown ((mostly) alphabetical) is likely
            -- not the order you will end up with.
            --
            -- You can uncomment these and leave them empty to disable any
            -- styling for that group (meaning they mostly get styled as Normal)
            -- or leave them commented to apply vims default colouring or linking.

            Comment { fg = c.light_gray, gui = 'italic' }, -- any comment
            ColorColumn { bg = c.gray }, -- used for the columns set with 'colorcolumn'
            Conceal { fg = c.yellow }, -- placeholder characters substituted for concealed text (see 'conceallevel')
            Cursor { fg = c.white }, -- character under the cursor
            lCursor {}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
            CursorIM { bg = c.dark_gray }, -- like Cursor, but used when in IME mode |CursorIM|
            CursorColumn { bg = c.dark_gray }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
            CursorLine { bg = c.dark_gray }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
            Directory { bg = c.dark_gray }, -- directory names (and other special names in listings)
            DiffAdd { fg = c.green }, -- diff mode: Added line |diff.txt|
            DiffChange { fg = c.dark_yellow }, -- diff mode: Changed line |diff.txt|
            DiffDelete { fg = c.red }, -- diff mode: Deleted line |diff.txt|
            DiffText { fg = c.red }, -- diff mode: Changed text within a changed line |diff.txt|
            EndOfBuffer { fg = c.dark_gray }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
            TermCursor { Cursor }, -- cursor in a focused terminal
            TermCursorNC { Cursor }, -- cursor in an unfocused terminal
            ErrorMsg { fg = c.red }, -- error messages on the command line
            VertSplit { bg = c.black, fg = c.dark_gray }, -- the column separating vertically split windows
            Folded { fg = c.white }, -- line used for closed folds
            FoldColumn {}, -- 'foldcolumn'
            SignColumn {}, -- column where |signs| are displayed
            IncSearch { bg = c.yellow, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
            Substitute { bg = c.yellow, fg = c.black }, -- |:substitute| replacement text highlighting
            LineNr { fg = c.light_gray }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
            CursorLineNr { fg = c.white }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
            MatchParen { gui = 'underline' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
            ModeMsg { fg = c.light_gray }, -- 'showmode' message (e.g., "-- INSERT -- ")
            MsgArea { fg = c.light_gray }, -- Area for messages and cmdline
            MsgSeparator { bg = c.dark_black }, -- Separator for scrolled messages, `msgsep` flag of 'display'
            MoreMsg { fg = c.green }, -- |more-prompt|
            NonText { fg = c.light_gray }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
            Normal { bg = c.black, fg = c.white }, -- normal text
            NormalFloat { bg = c.dark_gray }, -- Normal text in floating windows.
            NormalNC { Normal }, -- normal text in non-current windows
            Pmenu { bg = c.dark_gray }, -- Popup menu: normal item.
            PmenuSel { bg = c.blue, fg = c.black }, -- Popup menu: selected item.
            PmenuSbar { Pmenu }, -- Popup menu: scrollbar.
            PmenuThumb { bg = c.light_gray }, -- Popup menu: Thumb of the scrollbar.
            Question {}, -- |hit-enter| prompt and yes/no questions
            QuickFixLine {}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
            Search { bg = c.yellow, fg = c.black }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
            SpecialKey {}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
            SpellBad {}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
            SpellCap {}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
            SpellLocal {}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
            SpellRare {}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
            StatusLine {}, -- status line of current window
            StatusLineNC {}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
            TabLine {}, -- tab pages line, not active tab page label
            TabLineFill {}, -- tab pages line, where there are no labels
            TabLineSel {}, -- tab pages line, active tab page label
            Title { fg = c.green }, -- titles for output from ":set all", ":autocmd" etc.
            Visual { bg = c.gray }, -- Visual mode selection
            VisualNOS {}, -- Visual mode selection when vim is "Not Owning the Selection".
            WarningMsg { fg = c.yellow }, -- warning messages
            Whitespace {}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
            WildMenu { bg = c.yellow, fg = c.black }, -- current match in 'wildmenu' completion

            -- These groups are not listed as default vim groups,
            -- but they are defacto standard group names for syntax highlighting.
            -- commented out groups should chain up to their "preferred" group by
            -- default,
            -- Uncomment and edit if you want more specific syntax highlighting.

            Constant { fg = c.cyan }, -- (preferred) any constant
            String { fg = c.green }, --   a string constant: "this is a string"
            Character { fg = c.green }, --  a character constant: 'c', '\n'
            Number { fg = c.dark_yellow }, --   a number constant: 234, 0xff
            Boolean { fg = c.dark_red }, --  a boolean constant: TRUE, false
            Float { fg = c.dark_yellow }, --    a floating point constant: 2.3e10

            Identifier { fg = c.purple }, -- (preferred) any variable name
            Function { fg = c.blue }, -- function name (also: methods for classes)

            Statement { fg = c.purple }, -- (preferred) any statement
            Conditional { fg = c.purple }, --  if, then, else, endif, switch, etc.
            Repeat { fg = c.purple }, --   for, do, while, etc.
            Label { fg = c.red }, --    case, default, etc.
            Operator { fg = c.cyan }, -- "sizeof", "+", "*", etc.
            Keyword { fg = c.red }, --  any other keyword
            Exception { fg = c.purple }, --  try, catch, throw

            PreProc { fg = c.yellow }, -- (preferred) generic Preprocessor
            Include { fg = c.purple }, --  preprocessor #include
            Define { fg = c.purple }, --   preprocessor #define
            Macro { fg = c.purple }, --    same as Define
            PreCondit { fg = c.yellow }, --  preprocessor #if, #else, #endif, etc.

            Type { fg = c.yellow }, -- (preferred) int, long, char, etc.
            StorageClass { fg = c.yellow }, -- static, register, volatile, etc.
            Structure { fg = c.yellow }, --  struct, union, enum, etc.
            Typedef { fg = c.yellow }, --  A typedef

            Special { fg = c.blue }, -- (preferred) any special symbol
            SpecialChar { fg = c.yellow }, --  special character in a constant
            Tag {}, --    you can use CTRL-] on this
            Delimiter { fg = c.white }, --  character that needs attention
            SpecialComment { fg = c.gray }, -- special things inside a comment
            Debug {}, --    debugging statements

            Underlined { fg = c.blue, gui = 'underline' }, -- (preferred) text that stands out, HTML links
            Bold { gui = 'bold' },
            Italic { gui = 'italic' },

            -- ("Ignore", below, may be invisible...)
            -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|
            Error { fg = c.red }, -- (preferred) any erroneous construct
            Todo { fg = c.purple }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

            -- These groups are for the native LSP client. Some other LSP clients may
            -- use these groups, or use their own. Consult your LSP client's
            -- documentation.

            LspReferenceText { fg = c.gray }, -- used for highlighting "text" references
            LspReferenceRead { LspReferenceText }, -- used for highlighting "read" references
            LspReferenceWrite { LspReferenceText }, -- used for highlighting "write" references

            LspDiagnosticsDefaultError { fg = c.red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
            LspDiagnosticsDefaultWarning { fg = c.yellow }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
            LspDiagnosticsDefaultInformation { fg = c.blue }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
            LspDiagnosticsDefaultHint { fg = c.cyan }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

            -- LspDiagnosticsVirtualTextError       {}, -- Used for "Error" diagnostic virtual text
            -- LspDiagnosticsVirtualTextWarning     {}, -- Used for "Warning" diagnostic virtual text
            -- LspDiagnosticsVirtualTextInformation {}, -- Used for "Information" diagnostic virtual text
            -- LspDiagnosticsVirtualTextHint        {}, -- Used for "Hint" diagnostic virtual text

            LspDiagnosticsUnderlineError { LspDiagnosticsDefaultError, gui = 'underline' }, -- Used to underline "Error" diagnostics
            LspDiagnosticsUnderlineWarning { LspDiagnosticsDefaultWarning, gui = 'underline' }, -- Used to underline "Warning" diagnostics
            LspDiagnosticsUnderlineInformation { LspDiagnosticsDefaultInformation, gui = 'underline' }, -- Used to underline "Information" diagnostics
            LspDiagnosticsUnderlineHint { LspDiagnosticsDefaultHint, gui = 'underline' }, -- Used to underline "Hint" diagnostics

            -- LspDiagnosticsFloatingError          {}, -- Used to color "Error" diagnostic messages in diagnostics float
            -- LspDiagnosticsFloatingWarning        {}, -- Used to color "Warning" diagnostic messages in diagnostics float
            -- LspDiagnosticsFloatingInformation    {}, -- Used to color "Information" diagnostic messages in diagnostics float
            -- LspDiagnosticsFloatingHint           {}, -- Used to color "Hint" diagnostic messages in diagnostics float

            -- LspDiagnosticsSignError              {}, -- Used for "Error" signs in sign column
            -- LspDiagnosticsSignWarning            {}, -- Used for "Warning" signs in sign column
            -- LspDiagnosticsSignInformation        {}, -- Used for "Information" signs in sign column
            -- LspDiagnosticsSignHint               {}, -- Used for "Hint" signs in sign column

            -- These groups are for the neovim tree-sitter highlights.
            -- As of writing, tree-sitter support is a WIP, group names may change.
            -- By default, most of these groups link to an appropriate Vim group,
            -- TSError -> Error for example, so you do not have to define these unless
            -- you explicitly want to support Treesitter's improved syntax awareness.

            TSAnnotation { fg = c.red }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
            TSAttribute { fg = c.yellow }, -- (unstable) TODO: docs
            TSBoolean { fg = c.yellow }, -- For booleans.
            TSCharacter { fg = c.green }, -- For characters.
            TSComment { fg = c.light_gray, gui = 'italic' }, -- For comment blocks.
            TSConstructor { fg = c.yellow }, -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
            TSConditional { fg = c.purple }, -- For keywords related to conditionnals.
            TSConstant { fg = c.dark_yellow }, -- For constants
            TSConstBuiltin { fg = c.yellow }, -- For constant that are built in the language: `nil` in Lua.
            TSConstMacro { fg = c.yellow }, -- For constants that are defined by macros: `NULL` in C.
            TSError { fg = c.red }, -- For syntax/parser errors.
            TSException { fg = c.green }, -- For exception related keywords.
            TSField { fg = c.red }, -- For fields.
            TSFloat { fg = c.yellow }, -- For floats.
            TSFunction { fg = c.blue }, -- For function (calls and definitions).
            TSFuncBuiltin { fg = c.blue }, -- For builtin functions: `table.insert` in Lua.
            TSFuncMacro { fg = c.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
            TSInclude { fg = c.purple }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
            TSKeyword { fg = c.purple }, -- For keywords that don't fall in previous categories.
            TSKeywordFunction { fg = c.blue }, -- For keywords used to define a fuction.
            TSLabel { fg = c.purple }, -- For labels: `label:` in C and `:label:` in Lua.
            TSMethod { fg = c.blue }, -- For method calls and definitions.
            TSNamespace { fg = c.purple }, -- For identifiers referring to modules and namespaces.
            TSNone { fg = c.yellow }, -- TODO: docs
            TSNumber { fg = c.yellow }, -- For all numbers
            TSOperator { fg = c.white }, -- For any operator: `+`, but also `->` and `*` in C.
            TSParameter { fg = c.yellow, gui = 'italic' }, -- For parameters of a function.
            TSParameterReference { fg = c.yellow }, -- For references to parameters of a function.
            TSProperty { fg = c.red }, -- Same as `TSField`.
            TSPunctDelimiter { fg = c.white }, -- For delimiters ie: `.`
            TSPunctBracket { fg = c.red }, -- For brackets and parens.
            TSPunctSpecial { fg = c.white }, -- For special punctutation that does not fall in the catagories before.
            TSRepeat { fg = c.purple }, -- For keywords related to loops.
            TSString { fg = c.green }, -- For strings.
            TSStringRegex { fg = c.green }, -- For regexes.
            TSStringEscape { fg = c.cyan }, -- For escape characters within a string.
            TSSymbol { fg = c.red }, -- For identifiers referring to symbols or atoms.
            TSType { fg = c.yellow }, -- For types.
            TSTypeBuiltin { fg = c.red }, -- For builtin types.
            TSVariable { fg = c.white }, -- Any variable name that does not have another highlight.
            TSVariableBuiltin { fg = c.yellow }, -- Variable names that are defined by the languages, like `this` or `self`.

            TSTag { fg = c.red }, -- Tags like html tag names.
            TSTagDelimiter { fg = c.white }, -- Tag delimiter like `<` `>` `/`
            TSText { fg = c.white }, -- For strings considered text in a markup language.
            TSEmphasis { fg = c.yellow }, -- For text to be represented with emphasis.
            TSUnderline { fg = c.yellow }, -- For text to be represented with an underline.
            TSStrike { fg = c.white }, -- For strikethrough text.
            TSTitle { fg = c.yellow }, -- Text that is part of a title.
            TSLiteral { fg = c.yellow }, -- Literal text.
            TSURI { fg = c.blue }, -- Any URI like a link or email.

            -- Nvim tree | https://github.com/kyazdani42/nvim-tree.lua

            NvimTreeNormal { bg = c.dark_black, fg = c.white },
            NvimTreeEndOfBuffer { bg = c.dark_black, fg = c.dark_black },
            NvimTreeRootFolder { bg = c.dark_black, fg = c.dark_black },
            NvimTreeStatuslineNc { bg = c.dark_black, fg = c.dark_black },
            NvimTreeVertSplit { bg = c.dark_black, fg = c.dark_black },
            NvimTreeFolderName { fg = c.blue },
            NvimTreeOpenedFolderName { fg = c.blue },
            NvimTreeEmptyFolderName { fg = c.blue },
            NvimTreeFolderIcon { fg = c.blue },
            NvimTreeIndentMarker { fg = c.gray },
            NvimTreeSymlink { fg = c.cyan },
            NvimTreeExecFile { fg = c.green },
            NvimTreeMarkdownFile { fg = c.red },
            NvimTreeSpecialFile {},
            NvimTreeImageFile {},

            NvimTreeLicenseIcon { fg = c.yellow },
            NvimTreeYamlIcon { fg = c.yellow },
            NvimTreeTomlIcon { fg = c.yellow },
            NvimTreeGitignoreIcon { fg = c.red },
            NvimTreeJsonIcon { fg = c.green },

            NvimTreeLuaIcon { fg = c.blue },
            NvimTreePythonIcon { fg = c.yellow },
            NvimTreeShellIcon { fg = c.white },
            NvimTreeCIcon { fg = c.blue },
            NvimTreeReactIcon { fg = c.blue },
            NvimTreeHtmlIcon { fg = c.red },
            NvimTreeRustIcon { fg = c.white },
            NvimTreeTypescriptIcon { fg = c.blue },
            NvimTreeVimIcon { fg = c.green },
            NvimTreeJavascriptIcon { fg = c.yellow },

            NvimTreeGitDirty { fg = c.red },
            NvimTreeGitStaged { fg = c.yellow },
            NvimTreeGitMerge { fg = c.cyan },
            NvimTreeGitRenamed { fg = c.yellow },
            NvimTreeGitNew { fg = c.purple },

            -- Telescope | https://github.com/nvim-telescope/telescope.nvim

            TelescopeSelection { bg = c.gray },
            TelescopeSelectionCaret { fg = c.gray },
            TelescopeMultiSelection { fg = c.gray },
            TelescopeNormal { fg = c.white },
            TelescopeBorder { fg = c.gray },
            TelescopePromptBorder { TelescopeBorder },
            TelescopePreviewBorder { TelescopeBorder },
            TelescopeMatching { bg = c.yellow, fg = c.black },
            TelescopePromptPrefix { fg = c.gray },
            TelescopePrompt { TelescopeNormal },

            -- GitSigns | https://github.com/lewis6991/gitsigns.nvim

            GitSignsAdd { DiffAdd },
            GitSignsChange { DiffChange },
            GitSignsDelete { DiffDelete }
        }
    end
              )

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
