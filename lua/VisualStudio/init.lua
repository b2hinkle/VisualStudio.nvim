local M = {}

M.setup = function()
	require("tokyonight").setup({
		style = "night",
		transparent = false,
		terminal_colors = true,

		on_colors = function(colors)
			-- Editor background and foreground
			colors.bg = "#1E1E1E"
			colors.bg_dark = "#181818"
			colors.bg_float = "#252526"
			colors.bg_popup = "#252526"
			colors.bg_sidebar = "#252526"
			colors.bg_statusline = "#007ACC"

			colors.fg = "#D4D4D4"
			colors.fg_dark = "#A0A0A0"
			colors.fg_gutter = "#858585"

			-- Visual Studio syntax palette
			colors.blue = "#569CD6" -- Keywords
			colors.cyan = "#4EC9B0" -- Types
			colors.green = "#6A9955" -- Comments
			colors.magenta = "#C586C0" -- Control-flow / special keywords
			colors.orange = "#CE9178" -- Strings
			colors.red = "#F44747" -- Errors
			colors.yellow = "#DCDCAA" -- Functions

			-- Selection and cursor
			colors.bg_highlight = "#2A2D2E"
			colors.bg_visual = "#264F78"
			colors.blue0 = "#007ACC"
		end,

		on_highlights = function(hl, colors)
			-- Basic editor
			hl.Normal = {
				fg = "#D4D4D4",
				bg = "#1E1E1E",
			}

			hl.NormalFloat = {
				fg = "#D4D4D4",
				bg = "#252526",
			}

			hl.CursorLine = {
				bg = "#2A2D2E",
			}

			hl.LineNr = {
				fg = "#858585",
			}

			hl.CursorLineNr = {
				fg = "#C6C6C6",
			}

			hl.Visual = {
				bg = "#264F78",
			}

			hl.Search = {
				fg = "#1E1E1E",
				bg = "#D7BA7D",
			}

			hl.Comment = {
				fg = "#6A9955",
				italic = false,
			}

			-- Syntax highlighting
			hl.Keyword = {
				fg = "#569CD6",
			}

			hl.Statement = {
				fg = "#569CD6",
			}

			hl.Conditional = {
				fg = "#C586C0",
			}

			hl.Repeat = {
				fg = "#C586C0",
			}

			hl.String = {
				fg = "#CE9178",
			}

			hl.Character = {
				fg = "#CE9178",
			}

			hl.Number = {
				fg = "#B5CEA8",
			}

			hl.Float = {
				fg = "#B5CEA8",
			}

			hl.Boolean = {
				fg = "#569CD6",
			}

			hl.Function = {
				fg = "#DCDCAA",
			}

			hl.Identifier = {
				fg = "#9CDCFE",
			}

			hl.Type = {
				fg = "#4EC9B0",
			}

			hl.Structure = {
				fg = "#4EC9B0",
			}

			hl.Constant = {
				fg = "#4FC1FF",
			}

			hl.PreProc = {
				fg = "#C586C0",
			}

			hl.Operator = {
				fg = "#D4D4D4",
			}

			-- Diagnostics
			hl.DiagnosticError = {
				fg = "#F44747",
			}

			hl.DiagnosticWarn = {
				fg = "#CCA700",
			}

			hl.DiagnosticInfo = {
				fg = "#75BEFF",
			}

			hl.DiagnosticHint = {
				fg = "#4EC9B0",
			}
		end,
	})
end

function M.load()
	M.setup()
	vim.cmd.colorscheme("tokyonight-night")
	vim.g.colors_name = "VisualStudio"
end

return M
