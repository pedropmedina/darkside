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
local colors = require('darkside/colors')
local hsl = colors.hsl

local theme = lush(
                  function()
        return {
            -------------------------
            --      Built-Ins
            -------------------------

            Comment { fg = hsl.light_gray, gui = 'italic' },
            ColorColumn { bg = hsl.gray },
            Conceal { fg = hsl.yellow },
            Cursor { fg = hsl.white },
            lCursor {},
            CursorIM { bg = hsl.dark_gray },
            CursorColumn { bg = hsl.dark_gray },
            CursorLine { bg = hsl.dark_gray },
            Directory { bg = hsl.dark_gray },
            DiffAdd { fg = hsl.green },
            DiffChange { fg = hsl.dark_yellow },
            DiffDelete { fg = hsl.red },
            DiffText { fg = hsl.red },
            EndOfBuffer { fg = hsl.dark_gray },
            TermCursor { Cursor },
            TermCursorNC { Cursor },
            ErrorMsg { fg = hsl.red },
            VertSplit { bg = hsl.black, fg = hsl.dark_gray },
            Folded { fg = hsl.white },
            FoldColumn {},
            SignColumn {},
            IncSearch { bg = hsl.yellow, fg = hsl.black },
            Substitute { bg = hsl.yellow, fg = hsl.black },
            LineNr { fg = hsl.light_gray },
            CursorLineNr { fg = hsl.white },
            MatchParen { gui = 'underline' },
            ModeMsg { fg = hsl.light_gray },
            MsgArea { fg = hsl.light_gray },
            MsgSeparator { bg = hsl.dark_black },
            MoreMsg { fg = hsl.green },
            NonText { fg = hsl.light_gray },
            Normal { bg = hsl.black, fg = hsl.white },
            NormalFloat { bg = hsl.dark_gray },
            NormalNC { Normal },
            Pmenu { bg = hsl.dark_gray },
            PmenuSel { bg = hsl.blue, fg = hsl.black },
            PmenuSbar { Pmenu },
            PmenuThumb { bg = hsl.light_gray },
            Question {},
            QuickFixLine {},
            Search { bg = hsl.yellow, fg = hsl.black },
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
            Title { fg = hsl.green },
            Visual { bg = hsl.gray },
            VisualNOS {},
            WarningMsg { fg = hsl.yellow },
            Whitespace {},
            WildMenu { bg = hsl.yellow, fg = hsl.black },

            ----------------------------
            --      Conventions
            ----------------------------

            Constant { fg = hsl.cyan },
            String { fg = hsl.green },
            Character { fg = hsl.green },
            Number { fg = hsl.dark_yellow },
            Boolean { fg = hsl.dark_red },
            Float { fg = hsl.dark_yellow },

            Identifier { fg = hsl.purple },
            Function { fg = hsl.blue },

            Statement { fg = hsl.purple },
            Conditional { fg = hsl.purple },
            Repeat { fg = hsl.purple },
            Label { fg = hsl.red },
            Operator { fg = hsl.cyan },
            Keyword { fg = hsl.red },
            Exception { fg = hsl.purple },

            PreProc { fg = hsl.yellow },
            Include { fg = hsl.purple },
            Define { fg = hsl.purple },
            Macro { fg = hsl.purple },
            PreCondit { fg = hsl.yellow },

            Type { fg = hsl.yellow },
            StorageClass { fg = hsl.yellow },
            Structure { fg = hsl.yellow },
            Typedef { fg = hsl.yellow },

            Special { fg = hsl.blue },
            SpecialChar { fg = hsl.yellow },
            Tag {},
            Delimiter { fg = hsl.white },
            SpecialComment { fg = hsl.gray },
            Debug {},

            Underlined { fg = hsl.blue, gui = 'underline' },
            Bold { gui = 'bold' },
            Italic { gui = 'italic' },

            Ignore {},
            Error { fg = hsl.red },
            Todo { fg = hsl.purple },

            ------------------------------
            -- Native LSP client groups
            ------------------------------

            LspReferenceText { fg = hsl.gray },
            LspReferenceRead { LspReferenceText },
            LspReferenceWrite { LspReferenceText },

            LspDiagnosticsDefaultError { fg = hsl.red },
            LspDiagnosticsDefaultWarning { fg = hsl.yellow },
            LspDiagnosticsDefaultInformation { fg = hsl.blue },
            LspDiagnosticsDefaultHint { fg = hsl.cyan },

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

            TSAnnotation { fg = hsl.red },
            TSAttribute { fg = hsl.yellow },
            TSBoolean { fg = hsl.yellow },
            TSCharacter { fg = hsl.green },
            TSComment { fg = hsl.light_gray, gui = 'italic' },
            TSConstructor { fg = hsl.yellow },
            TSConditional { fg = hsl.purple },
            TSConstant { fg = hsl.dark_yellow },
            TSConstBuiltin { fg = hsl.yellow },
            TSConstMacro { fg = hsl.yellow },
            TSError { fg = hsl.red },
            TSException { fg = hsl.green },
            TSField { fg = hsl.red },
            TSFloat { fg = hsl.yellow },
            TSFunction { fg = hsl.blue },
            TSFuncBuiltin { fg = hsl.blue },
            TSFuncMacro { fg = hsl.blue },
            TSInclude { fg = hsl.purple },
            TSKeyword { fg = hsl.purple },
            TSKeywordFunction { fg = hsl.blue },
            TSLabel { fg = hsl.purple },
            TSMethod { fg = hsl.blue },
            TSNamespace { fg = hsl.purple },
            TSNone { fg = hsl.yellow },
            TSNumber { fg = hsl.yellow },
            TSOperator { fg = hsl.white },
            TSParameter { fg = hsl.yellow, gui = 'italic' },
            TSParameterReference { fg = hsl.yellow },
            TSProperty { fg = hsl.red },
            TSPunctDelimiter { fg = hsl.white },
            TSPunctBracket { fg = hsl.red },
            TSPunctSpecial { fg = hsl.white },
            TSRepeat { fg = hsl.purple },
            TSString { fg = hsl.green },
            TSStringRegex { fg = hsl.green },
            TSStringEscape { fg = hsl.cyan },
            TSSymbol { fg = hsl.red },
            TSType { fg = hsl.yellow },
            TSTypeBuiltin { fg = hsl.red },
            TSVariable { fg = hsl.white },
            TSVariableBuiltin { fg = hsl.yellow },

            TSTag { fg = hsl.red },
            TSTagDelimiter { fg = hsl.white },
            TSText { fg = hsl.white },
            TSEmphasis { fg = hsl.yellow },
            TSUnderline { fg = hsl.cyan },
            TSStrike { fg = hsl.cyan },
            TSTitle { fg = hsl.white },
            TSLiteral { fg = hsl.yellow },
            TSURI { fg = hsl.blue },

            -------------------------------------------------------------
            -- Nvim tree | https://github.com/kyazdani42/nvim-tree.lua
            -------------------------------------------------------------

            NvimTreeNormal { bg = hsl.dark_black, fg = hsl.white },
            NvimTreeEndOfBuffer { bg = hsl.dark_black, fg = hsl.dark_black },
            NvimTreeRootFolder { bg = hsl.dark_black, fg = hsl.dark_black },
            NvimTreeStatuslineNc { bg = hsl.dark_black, fg = hsl.dark_black },
            NvimTreeVertSplit { bg = hsl.dark_black, fg = hsl.dark_black },
            NvimTreeFolderName { fg = hsl.blue },
            NvimTreeOpenedFolderName { fg = hsl.blue },
            NvimTreeEmptyFolderName { fg = hsl.blue },
            NvimTreeFolderIcon { fg = hsl.blue },
            NvimTreeIndentMarker { fg = hsl.gray },
            NvimTreeSymlink { fg = hsl.cyan },
            NvimTreeExecFile { fg = hsl.green },
            NvimTreeMarkdownFile { fg = hsl.red },
            NvimTreeSpecialFile {},
            NvimTreeImageFile {},

            NvimTreeLicenseIcon { fg = hsl.yellow },
            NvimTreeYamlIcon { fg = hsl.yellow },
            NvimTreeTomlIcon { fg = hsl.yellow },
            NvimTreeGitignoreIcon { fg = hsl.red },
            NvimTreeJsonIcon { fg = hsl.green },

            NvimTreeLuaIcon { fg = hsl.blue },
            NvimTreePythonIcon { fg = hsl.yellow },
            NvimTreeShellIcon { fg = hsl.white },
            NvimTreeCIcon { fg = hsl.blue },
            NvimTreeReactIcon { fg = hsl.blue },
            NvimTreeHtmlIcon { fg = hsl.red },
            NvimTreeRustIcon { fg = hsl.white },
            NvimTreeTypescriptIcon { fg = hsl.blue },
            NvimTreeVimIcon { fg = hsl.green },
            NvimTreeJavascriptIcon { fg = hsl.yellow },

            NvimTreeGitDirty { fg = hsl.red },
            NvimTreeGitStaged { fg = hsl.yellow },
            NvimTreeGitMerge { fg = hsl.cyan },
            NvimTreeGitRenamed { fg = hsl.yellow },
            NvimTreeGitNew { fg = hsl.purple },

            ------------------------------------------------------------------
            -- Telescope | https://github.com/nvim-telescope/telescope.nvim
            ------------------------------------------------------------------

            TelescopeSelection { bg = hsl.gray },
            TelescopeSelectionCaret { fg = hsl.gray },
            TelescopeMultiSelection { fg = hsl.gray },
            TelescopeNormal { fg = hsl.white },
            TelescopeBorder { fg = hsl.gray },
            TelescopePromptBorder { TelescopeBorder },
            TelescopePreviewBorder { TelescopeBorder },
            TelescopeMatching { bg = hsl.yellow, fg = hsl.black },
            TelescopePromptPrefix { fg = hsl.gray },
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
            rainbowcol1 { fg = hsl.light_gray.li(20) },
            rainbowcol2 { fg = hsl.blue },
            rainbowcol3 { fg = hsl.red },
            rainbowcol4 { fg = hsl.dark_red },
            rainbowcol5 { fg = hsl.yellow },
            rainbowcol6 { fg = hsl.dark_yellow },
            rainbowcol7 { fg = hsl.green }
        }
    end
              )

return theme
