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
local lush = require("lush")

local colors = require("darkside/colors")

local hsl = colors.hsl

local theme = lush(function(injected_functions)
    local sym = injected_functions.sym

	return {
		----------------------------
		--      Syntax Groups
		----------------------------

		Comment({ fg = hsl.light_gray, gui = "italic" }),
		Constant({ fg = hsl.cyan }),
		String({ fg = hsl.green }),
		Character({ fg = hsl.green }),
		Number({ fg = hsl.dark_yellow }),
		Boolean({ fg = hsl.dark_red }),
		Float({ fg = hsl.dark_yellow }),
		Identifier({ fg = hsl.red }),
		Function({ fg = hsl.blue }),
		Statement({ fg = hsl.purple }),
		Conditional({ fg = hsl.purple }),
		Repeat({ fg = hsl.purple }),
		Label({ fg = hsl.purple }),
		Operator({ fg = hsl.purple }),
		Keyword({ fg = hsl.red }),
		Exception({ fg = hsl.purple }),
		PreProc({ fg = hsl.yellow }),
		Include({ fg = hsl.blue }),
		Define({ fg = hsl.purple }),
		Macro({ fg = hsl.purple }),
		PreCondit({ fg = hsl.yellow }),
		Type({ fg = hsl.dark_yellow }),
		StorageClass({ fg = hsl.yellow }),
		Structure({ fg = hsl.yellow }),
		Typedef({ fg = hsl.yellow }),
		Special({ fg = hsl.blue }),
		SpecialChar({ fg = hsl.dark_yellow }),
		Tag({}),
		Delimiter({ fg = hsl.white }),
		SpecialComment({ fg = hsl.light_gray }),
		Debug({}),
		Underlined({ fg = hsl.blue, gui = "underline" }),
		Bold({ gui = "bold" }),
		Italic({ gui = "italic" }),
		Ignore({}),
		Error({ fg = hsl.red }),
		Todo({ fg = hsl.purple }),

		------------------------------
		--     Highlighting Groups
		------------------------------

		ColorColumn({ bg = hsl.gray }),
		Conceal({}),
		Cursor({ bg = hsl.blue, fg = hsl.black }),
		lCursor({}),
		CursorIM({}),
		CursorColumn({ bg = hsl.dark_gray }),
		CursorLine({ bg = hsl.dark_gray.da(13) }),
		Directory({ fg = hsl.blue }),
		DiffAdd({ fg = hsl.green }),
		DiffChange({ fg = hsl.dark_yellow }),
		DiffDelete({ fg = hsl.red }),
		DiffText({ fg = hsl.yellow }),
		EndOfBuffer({ fg = hsl.dark_gray }),
		TermCursor({ Cursor }),
		TermCursorNC({ Cursor }),
		ErrorMsg({ fg = hsl.red }),
		VertSplit({ bg = hsl.black, fg = hsl.dark_gray }),
		Folded({ fg = hsl.gray }),
		FoldColumn({}),
		SignColumn({}),
		IncSearch({ bg = hsl.dark_gray, fg = hsl.yellow, gui = "underline" }),
		Substitute({ bg = hsl.yellow, fg = hsl.black }),
		LineNr({ fg = hsl.light_gray }),
		CursorLineNr({ fg = hsl.white }),
		MatchParen({ gui = "underline" }),
		ModeMsg({ fg = hsl.light_gray }),
		MsgArea({ fg = hsl.light_gray }),
		MsgSeparator({ bg = hsl.dark_black }),
		MoreMsg({ fg = hsl.green }),
		NonText({ fg = hsl.light_gray }),
		Normal({ bg = hsl.black, fg = hsl.white }),
		NormalFloat({ bg = hsl.dark_gray.da(15) }),
		NormalNC({ Normal }),
		Pmenu({ bg = hsl.dark_gray }),
		PmenuSel({ bg = hsl.blue, fg = hsl.black }),
		PmenuSbar({ Pmenu }),
		PmenuThumb({ bg = hsl.light_gray }),
		Question({ fg = hsl.purple }),
		QuickFixLine({}),
		Search({ bg = hsl.yellow, fg = hsl.black }),
		SpecialKey({ fg = hsl.light_gray }),
		SpellBad({ fg = hsl.red, gui = "underline" }),
		SpellCap({ fg = hsl.dark_yellow }),
		SpellLocal({ fg = hsl.dark_yellow }),
		SpellRare({ fg = hsl.dark_yellow }),
		StatusLine({ bg = hsl.dark_black }),
		StatusLineNC({ bg = hsl.black }),
		TabLineFill({ bg = hsl.dark_gray }),
		TabLine({ bg = hsl.dark_gray, fg = hsl.light_gray }),
		TabLineSel({ bg = hsl.dark_gray, fg = hsl.green }),
		Title({ fg = hsl.green }),
		Visual({ bg = hsl.gray }),
		VisualNOS({ bg = hsl.gray }),
		WarningMsg({ fg = hsl.yellow }),
		Whitespace({}),
		WildMenu({ bg = hsl.yellow, fg = hsl.black }),

		------------------------------
		-- Native LSP client groups
		------------------------------

		LspReferenceText({ fg = hsl.gray }),
		LspReferenceRead({ LspReferenceText }),
		LspReferenceWrite({ LspReferenceText }),

		------------------------------
		-- Native Diagnostic
		------------------------------
		DiagnosticError({ fg = hsl.red }),
		DiagnosticWarn({ fg = hsl.yellow }),
		DiagnosticInfo({ fg = hsl.blue }),
		DiagnosticHint({ fg = hsl.cyan }),

		DiagnosticUnderlineError({ DiagnosticError, gui = "underline" }),
		DiagnosticUnderlineWarn({ DiagnosticWarn, gui = "underline" }),
		DiagnosticUnderlineInfo({ DiagnosticInfo, gui = "underline" }),
		DiagnosticUnderlineHint({ DiagnosticHint, gui = "underline" }),

		DiagnosticSignError({ DiagnosticError }),
		DiagnosticSignWarn({ DiagnosticWarn }),
		DiagnosticSignInfo({ DiagnosticInfo }),
		DiagnosticSignHint({ DiagnosticHint }),

		---------------------------------------------------
		-- Nvim cmp | https://github.com/hrsh7th/nvim-cmp
		---------------------------------------------------

		CmpItemMenu({ fg = hsl.light_gray }),
		CmpItemKind({ fg = hsl.light_gray }),
		CmpItemAbbrMatchFuzzy({ fg = hsl.blue }),
		CmpItemAbbrMatch({ fg = hsl.blue }),
		CmpItemAbbr({ fg = hsl.white }),

		-----------------------------------
		-- Neovim tree-sitter highlights
		-----------------------------------

		sym("@annotation")({ fg = hsl.red }),
		sym("@attribute")({ fg = hsl.yellow }),
		sym("@boolean")({ fg = hsl.dark_yellow }),
		sym("@character")({ fg = hsl.green }),
		sym("@comment")({ fg = hsl.light_gray, gui = "italic" }),
		sym("@constructor")({ fg = hsl.yellow }),
		sym("@conditional")({ fg = hsl.purple }),
		sym("@constant")({ fg = hsl.dark_yellow }),
		sym("@constBuiltin")({ fg = hsl.cyan }),
		sym("@constMacro")({ fg = hsl.purple }),
		sym("@error")({ fg = hsl.red }),
		sym("@exception")({ fg = hsl.red }),
		sym("@field")({ fg = hsl.red }),
		sym("@float")({ fg = hsl.dark_yellow }),
		sym("@function")({ fg = hsl.blue }),
		sym("@function.builtin")({ fg = hsl.cyan }),
		sym("@function.macro")({ fg = hsl.cyan }),
		sym("@include")({ fg = hsl.purple }),
		sym("@keyword")({ fg = hsl.purple }),
		sym("@keyword.return")({ fg = hsl.purple }),
		sym("@keyword.function")({ fg = hsl.blue }),
		sym("@label")({ fg = hsl.white }),
		sym("@method")({ fg = hsl.blue }),
		sym("@namespace")({ fg = hsl.purple }),
		sym("@none")({ fg = hsl.white }),
		sym("@number")({ fg = hsl.dark_yellow }),
		sym("@operator")({ fg = hsl.white }),
		sym("@parameter")({ fg = hsl.yellow, gui = "italic" }),
		sym("@parameter.reference")({ fg = hsl.dark_yellow }),
		sym("@property")({ fg = hsl.red }),
		sym("@punctuation.delimiter")({ fg = hsl.yellow }),
		sym("@punctuation.bracket")({ fg = hsl.red }),
		sym("@punctuation.special")({ fg = hsl.red }),
		sym("@repeat")({ fg = hsl.purple }),
		sym("@string")({ fg = hsl.green }),
		sym("@string.regex")({ fg = hsl.cyan }),
		sym("@string.escape")({ fg = hsl.cyan }),
		sym("@symbol")({ fg = hsl.cyan }),
		sym("@type")({ fg = hsl.dark_yellow }),
		sym("@type.builtin")({ fg = hsl.red }),
		sym("@variable")({ fg = hsl.white }),
		sym("@variable.builtin")({ fg = hsl.yellow }),
		sym("@tag")({ fg = hsl.red }),
		sym("@tag.delimiter")({ fg = hsl.white }),
		sym("@text")({ fg = hsl.white }),
		sym("@emphasis")({ fg = hsl.yellow }),
		sym("@underline")({ fg = hsl.cyan }),
		sym("@strike")({ fg = hsl.cyan }),
		sym("@title")({ fg = hsl.white }),
		sym("@literal")({ fg = hsl.yellow }),
		sym("@uri")({ fg = hsl.blue }),

		-------------------------------------------------------------
		-- Nvim tree | https://github.com/kyazdani42/nvim-tree.lua
		-------------------------------------------------------------

		NvimTreeNormal({ bg = hsl.dark_black, fg = hsl.white }),
		NvimTreeEndOfBuffer({ bg = hsl.dark_black, fg = hsl.dark_black }),
		NvimTreeRootFolder({ bg = hsl.dark_black, fg = hsl.dark_black }),
		NvimTreeStatuslineNc({ bg = hsl.dark_black, fg = hsl.dark_black }),
		NvimTreeVertSplit({ bg = hsl.dark_black, fg = hsl.dark_black }),
		NvimTreeFolderName({ fg = hsl.blue }),
		NvimTreeOpenedFolderName({ fg = hsl.blue }),
		NvimTreeEmptyFolderName({ fg = hsl.blue }),
		NvimTreeFolderIcon({ fg = hsl.blue }),
		NvimTreeIndentMarker({ fg = hsl.gray }),
		NvimTreeSymlink({ fg = hsl.cyan }),
		NvimTreeExecFile({ fg = hsl.green }),
		NvimTreeMarkdownFile({ fg = hsl.red }),
		NvimTreeSpecialFile({}),
		NvimTreeImageFile({}),

		NvimTreeLicenseIcon({ fg = hsl.yellow }),
		NvimTreeYamlIcon({ fg = hsl.yellow }),
		NvimTreeTomlIcon({ fg = hsl.yellow }),
		NvimTreeGitignoreIcon({ fg = hsl.red }),
		NvimTreeJsonIcon({ fg = hsl.green }),

		NvimTreeLuaIcon({ fg = hsl.blue }),
		NvimTreePythonIcon({ fg = hsl.yellow }),
		NvimTreeShellIcon({ fg = hsl.white }),
		NvimTreeCIcon({ fg = hsl.blue }),
		NvimTreeReactIcon({ fg = hsl.blue }),
		NvimTreeHtmlIcon({ fg = hsl.red }),
		NvimTreeRustIcon({ fg = hsl.white }),
		NvimTreeTypescriptIcon({ fg = hsl.blue }),
		NvimTreeVimIcon({ fg = hsl.green }),
		NvimTreeJavascriptIcon({ fg = hsl.yellow }),

		NvimTreeGitDirty({ fg = hsl.red }),
		NvimTreeGitStaged({ fg = hsl.yellow }),
		NvimTreeGitMerge({ fg = hsl.cyan }),
		NvimTreeGitRenamed({ fg = hsl.yellow }),
		NvimTreeGitNew({ fg = hsl.purple }),

		------------------------------------------------------------------
		-- Telescope | https://github.com/nvim-telescope/telescope.nvim
		------------------------------------------------------------------

		TelescopeSelection({ bg = hsl.dark_gray }),
		TelescopeSelectionCaret({ fg = hsl.gray }),
		TelescopeMultiSelection({ fg = hsl.gray }),
		TelescopeNormal({ fg = hsl.white, bg = hsl.dark_black }),
		TelescopeBorder({ fg = hsl.gray, bg = hsl.dark_black }),
		TelescopePreviewBorder({ TelescopeBorder }),
		TelescopePromptPrefix({ fg = hsl.dark_black }),
		TelescopePromptBorder({ bg = hsl.dark_gray }),
		TelescopePromptNormal({ bg = hsl.dark_gray, fg = hsl.white }),
		TelescopeMatching({ fg = hsl.yellow, gui = "underline" }),
		TelescopePromptTitle({ fg = hsl.gray, bg = hsl.dark_black }),
		TelescopeResultsTitle({ fg = hsl.dark_black, bg = hsl.dark_black }),
		TelescopePreviewTitle({ fg = hsl.dark_black, bg = hsl.dark_black }),

		-----------------------------------------------------------
		-- GitSigns | https://github.com/lewis6991/gitsigns.nvim
		-----------------------------------------------------------

		GitSignsAdd({ DiffAdd }),
		GitSignsChange({ DiffChange }),
		GitSignsDelete({ DiffDelete }),

		-----------------------------------------------------------------
		-- Treesitter Rainbow | https://github.com/p00f/nvim-ts-rainbow
		-----------------------------------------------------------------
		rainbowcol1({ fg = hsl.light_gray.li(20) }),
		rainbowcol2({ fg = hsl.blue.li(20) }),
		rainbowcol3({ fg = hsl.red.li(20) }),
		rainbowcol4({ fg = hsl.dark_red.li(20) }),
		rainbowcol5({ fg = hsl.yellow.li(20) }),
		rainbowcol6({ fg = hsl.dark_yellow.li(20) }),
		rainbowcol7({ fg = hsl.green.li(20) }),
	}
end)

return theme
