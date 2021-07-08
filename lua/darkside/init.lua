local theme = require('darkside/theme')
local colors = require('darkside/colors')

print('colors from darkside: ', colors.hex)

return { theme = theme, colors = colors.hex }
