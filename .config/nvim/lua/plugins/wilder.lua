-- Wilder
local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('pipeline', {
	wilder.branch(
			wilder.python_file_finder_pipeline({
				file_command = function(ctx, arg)
			    	if string.find(arg, '.') ~= nil then
			    		return {'fd', '-tf', '-H'}
			        else
			        	return {'fd', '-tf'}
			        end
			    end,
			    dir_command = function(ctx, arg)
			    	if string.find(arg, '.') ~= nil then
			    		return {'fd', '-td', '-H'}
			        else
			        	return {'fd', '-td'}
			        end
				end,
				filters = {'cpsm_filter'},
			}),

			wilder.substitute_pipeline({
				pipeline = wilder.python_search_pipeline({
					skip_cmdtype_check = 1,
					pattern = wilder.python_fuzzy_pattern({
						start_at_boundary = 0,
					})
				})
			}),

			wilder.cmdline_pipeline({
				fuzzy = 2,
				fuzzy_filter = wilder.lua_fzy_filter(),
			}),
    		{
    		wilder.check(function(ctx, x) return x == '' end),
    		wilder.history(),
    		},
			wilder.python_search_pipeline({
				pattern = wilder.python_fuzzy_pattern({
			        start_at_boundary = 0,
				}),
			})
		),
})


wilder.setup {
	next_key = "<C-j>",
	previous_key = "<C-k>",
	accept_key = "<C-l>",
	reject_key = "<C-h>",
	modes = { ":", "/", "?" },
}

local highlighters = {
	wilder.pcre2_highlighter(),
	wilder.lua_fzy_highlighter(),
}

wilder.set_option("renderer", wilder.popupmenu_renderer(
wilder.popupmenu_border_theme {
	border = "rounded",
	highlights = { border = "Normal", accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#ff007c'}}),},
	highlighter = highlighters,
	left = { " ", wilder.popupmenu_devicons()},
	right = { " ", wilder.popupmenu_scrollbar()},
}))
