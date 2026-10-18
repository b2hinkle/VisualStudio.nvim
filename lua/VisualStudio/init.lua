local M = {}

M.setup = function()
	require("tokyonight").setup({
		style = "night",

		-- Change the underlying color palette.
		on_colors = function(colors)
			colors.bg = "#101318"
			colors.bg_dark = "#0b0d11"
			colors.fg = "#e0e6ed"
			colors.blue = "#80aaff"
			colors.cyan = "#72dce8"
			colors.green = "#a6da95"
			colors.magenta = "#c6a0f6"
			colors.orange = "#f5a97f"
			colors.red = "#ed8796"
			colors.yellow = "#eed49f"
		end,

		-- Override specific highlight groups.
		on_highlights = function(hl, colors)
			hl.Normal = {
				fg = colors.fg,
				bg = colors.bg,
			}

			hl.Comment = {
				fg = "#697586",
				italic = true,
			}

			hl.CursorLine = {
				bg = "#1b2330",
			}

			hl.Visual = {
				bg = "#354760",
			}
		end,
	})
end

function M.load()
	M.setup()
	vim.cmd.colorscheme("tokyonight-night")
	vim.g.colors_name = "mytheme"
end

return M
