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
            -------------------------
            --      Built-Ins
            -------------------------

            Comment { fg = c.light_gray, gui = 'italic' },
            ColorColumn { bg = c.gray },
            Conceal { fg = c.yellow },
            Cursor { fg = c.white },
            lCursor {},
            CursorIM { bg = c.dark_gray },
            CursorColumn { bg = c.dark_gray },
            CursorLine { bg = c.dark_gray },
            Directory { bg = c.dark_gray },
            DiffAdd { fg = c.green },
            DiffChange { fg = c.dark_yellow },
            DiffDelete { fg = c.red },
            DiffText { fg = c.red },
            EndOfBuffer { fg = c.dark_gray },
            TermCursor { Cursor },
            TermCursorNC { Cursor },
            ErrorMsg { fg = c.red },
            VertSplit { bg = c.black, fg = c.dark_gray },
            Folded { fg = c.white },
            FoldColumn {},
            SignColumn {},
            IncSearch { bg = c.yellow, fg = c.black },
            Substitute { bg = c.yellow, fg = c.black },
            LineNr { fg = c.light_gray },
            CursorLineNr { fg = c.white },
            MatchParen { gui = 'underline' },
            ModeMsg { fg = c.light_gray },
            MsgArea { fg = c.light_gray },
            MsgSeparator { bg = c.dark_black },
            MoreMsg { fg = c.green },
            NonText { fg = c.light_gray },
            Normal { bg = c.black, fg = c.white },
            NormalFloat { bg = c.dark_gray },
            NormalNC { Normal },
            Pmenu { bg = c.dark_gray },
            PmenuSel { bg = c.blue, fg = c.black },
            PmenuSbar { Pmenu },
            PmenuThumb { bg = c.light_gray },
            Question {},
            QuickFixLine {},
            Search { bg = c.yellow, fg = c.black },
            SpecialKey {},
            SpellBad {},
            SpellCap {},
            SpellLocal {},
            SpellRare {},
            StatusLine {},
            StatusLineNC {},
            TabLine {},
            TabLineFill {},
            TabLineSel {},
            Title { fg = c.green },
            Visual { bg = c.gray },
            VisualNOS {},
            WarningMsg { fg = c.yellow },
            Whitespace {},
            WildMenu { bg = c.yellow, fg = c.black },

            ----------------------------
            --      Conventions
            ----------------------------

            Constant { fg = c.cyan },
            String { fg = c.green },
            Character { fg = c.green },
            Number { fg = c.dark_yellow },
            Boolean { fg = c.dark_red },
            Float { fg = c.dark_yellow },

            Identifier { fg = c.purple },
            Function { fg = c.blue },

            Statement { fg = c.purple },
            Conditional { fg = c.purple },
            Repeat { fg = c.purple },
            Label { fg = c.red },
            Operator { fg = c.cyan },
            Keyword { fg = c.red },
            Exception { fg = c.purple },

            PreProc { fg = c.yellow },
            Include { fg = c.purple },
            Define { fg = c.purple },
            Macro { fg = c.purple },
            PreCondit { fg = c.yellow },

            Type { fg = c.yellow },
            StorageClass { fg = c.yellow },
            Structure { fg = c.yellow },
            Typedef { fg = c.yellow },

            Special { fg = c.blue },
            SpecialChar { fg = c.yellow },
            Tag {},
            Delimiter { fg = c.white },
            SpecialComment { fg = c.gray },
            Debug {},

            Underlined { fg = c.blue, gui = 'underline' },
            Bold { gui = 'bold' },
            Italic { gui = 'italic' },

            Ignore {},
            Error { fg = c.red },
            Todo { fg = c.purple },

            ------------------------------
            -- Native LSP client groups
            ------------------------------

            LspReferenceText { fg = c.gray },
            LspReferenceRead { LspReferenceText },
            LspReferenceWrite { LspReferenceText },

            LspDiagnosticsDefaultError { fg = c.red },
            LspDiagnosticsDefaultWarning { fg = c.yellow },
            LspDiagnosticsDefaultInformation { fg = c.blue },
            LspDiagnosticsDefaultHint { fg = c.cyan },

            -- LspDiagnosticsVirtualTextError       {},
            -- LspDiagnosticsVirtualTextWarning     {},
            -- LspDiagnosticsVirtualTextInformation {},
            -- LspDiagnosticsVirtualTextHint        {},

            LspDiagnosticsUnderlineError { LspDiagnosticsDefaultError, gui = 'underline' },
            LspDiagnosticsUnderlineWarning { LspDiagnosticsDefaultWarning, gui = 'underline' },
            LspDiagnosticsUnderlineInformation { LspDiagnosticsDefaultInformation, gui = 'underline' },
            LspDiagnosticsUnderlineHint { LspDiagnosticsDefaultHint, gui = 'underline' },

            -- LspDiagnosticsFloatingError          {},
            -- LspDiagnosticsFloatingWarning        {},
            -- LspDiagnosticsFloatingInformation    {},
            -- LspDiagnosticsFloatingHint           {},

            -- LspDiagnosticsSignError              {},
            -- LspDiagnosticsSignWarning            {},
            -- LspDiagnosticsSignInformation        {},
            -- LspDiagnosticsSignHint               {},

            -----------------------------------
            -- Neovim tree-sitter highlights
            -----------------------------------

            TSAnnotation { fg = c.red },
            TSAttribute { fg = c.yellow },
            TSBoolean { fg = c.yellow },
            TSCharacter { fg = c.green },
            TSComment { fg = c.light_gray, gui = 'italic' },
            TSConstructor { fg = c.yellow },
            TSConditional { fg = c.purple },
            TSConstant { fg = c.dark_yellow },
            TSConstBuiltin { fg = c.yellow },
            TSConstMacro { fg = c.yellow },
            TSError { fg = c.red },
            TSException { fg = c.green },
            TSField { fg = c.red },
            TSFloat { fg = c.yellow },
            TSFunction { fg = c.blue },
            TSFuncBuiltin { fg = c.blue },
            TSFuncMacro { fg = c.blue },
            TSInclude { fg = c.purple },
            TSKeyword { fg = c.purple },
            TSKeywordFunction { fg = c.blue },
            TSLabel { fg = c.purple },
            TSMethod { fg = c.blue },
            TSNamespace { fg = c.purple },
            TSNone { fg = c.yellow },
            TSNumber { fg = c.yellow },
            TSOperator { fg = c.white },
            TSParameter { fg = c.yellow, gui = 'italic' },
            TSParameterReference { fg = c.yellow },
            TSProperty { fg = c.red },
            TSPunctDelimiter { fg = c.white },
            TSPunctBracket { fg = c.red },
            TSPunctSpecial { fg = c.white },
            TSRepeat { fg = c.purple },
            TSString { fg = c.green },
            TSStringRegex { fg = c.green },
            TSStringEscape { fg = c.cyan },
            TSSymbol { fg = c.red },
            TSType { fg = c.yellow },
            TSTypeBuiltin { fg = c.red },
            TSVariable { fg = c.white },
            TSVariableBuiltin { fg = c.yellow },

            TSTag { fg = c.red },
            TSTagDelimiter { fg = c.white },
            TSText { fg = c.white },
            TSEmphasis { fg = c.yellow },
            TSUnderline { fg = c.yellow },
            TSStrike { fg = c.white },
            TSTitle { fg = c.yellow },
            TSLiteral { fg = c.yellow },
            TSURI { fg = c.blue },

            -------------------------------------------------------------
            -- Nvim tree | https://github.com/kyazdani42/nvim-tree.lua
            -------------------------------------------------------------

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

            ------------------------------------------------------------------
            -- Telescope | https://github.com/nvim-telescope/telescope.nvim
            ------------------------------------------------------------------

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

            -----------------------------------------------------------
            -- GitSigns | https://github.com/lewis6991/gitsigns.nvim
            -----------------------------------------------------------

            GitSignsAdd { DiffAdd },
            GitSignsChange { DiffChange },
            GitSignsDelete { DiffDelete },

            -----------------------------------------------------------------
            -- Treesitter Rainbow | https://github.com/p00f/nvim-ts-rainbow
            -----------------------------------------------------------------
            rainbowcol1 { fg = 'blue' },
            rainbowcol2 { fg = 'blue' },
            rainbowcol3 { fg = 'blue' },
            rainbowcol4 { fg = 'blue' },
            rainbowcol5 { fg = 'blue' },
            rainbowcol6 { fg = 'blue' },
            rainbowcol7 { fg = 'blue' }
        }
    end
              )

return theme
