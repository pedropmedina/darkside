local lush = require("lush")
local hsl = lush.hsl

local colors = {}

colors.hsl = {
	white = hsl(219, 14, 71),
	light_gray = hsl(219, 13, 34),
	gray = hsl(220, 14, 25),
	dark_gray = hsl(222, 14, 18),
	black = hsl(220, 17, 14),
	dark_black = hsl(220, 18, 13),
	red = hsl(354, 50, 66),
	dark_red = hsl(5, 48, 51),
	green = hsl(92, 28, 65),
	yellow = hsl(40, 67, 72),
	dark_yellow = hsl(29, 54, 61),
	blue = hsl(207, 82, 66),
	purple = hsl(287, 34, 61),
	cyan = hsl(223, 70, 79),
}

colors.hex = {
	white = "#ABB2BF",
	light_gray = "#4A5261",
	gray = "#363C48",
	dark_gray = "#272B34",
	black = "#1e222a",
	dark_black = "#1b1f27",
	red = "#D27E84",
	dark_red = "#BE5046",
	green = "#A3BE8C",
	yellow = "#E7C788",
	dark_yellow = "#D19A66",
	blue = "#61AFEF",
	purple = "#AE7ABD",
	cyan = "#A3B8EF",
}

return colors
