--[[
     Sugarglass Awesome WM theme
	 - By Tocoe
--]]

local dpi   = require("beautiful.xresources").apply_dpi

local os = os

local theme                                     = {}
theme.default_dir                               = require("awful.util").get_themes_dir() .. "default"
theme.dir                                       = os.getenv("XDG_CONFIG_HOME") .. "/awesome/themes/sugarglass"
theme.wallpaper                                 = theme.dir .. "/wall.jpg"
theme.font                                      = "sans semi-bold"
theme.fg_normal                                 = "#c0caf5"
theme.fg_focus                                  = ""
theme.bg_normal                                 = "#1a1b26"
theme.bg_focus                                  = "#3b4261"
theme.fg_urgent                                 = ""
theme.bg_urgent                                 = ""

-- Borders
theme.border_width                              = dpi(0)
theme.border_normal                             = "#1a1b26"
theme.border_focus								= "#bb9af7"

-- Taglist Colors
theme.taglist_fg_focus                          = "#b4f9f8"
theme.taglist_fg_occupied						= "#737aa2"
theme.taglist_fg_empty							= "#292e42"
theme.taglist_bg_focus							= ""
theme.taglist_bg_occupied						= ""
theme.taglist_bg_empty   						= ""

theme.menu_height                               = dpi(16)
theme.menu_width                                = dpi(140)
theme.ocol                                      = "<span color='" .. theme.fg_normal .. "'>"
theme.tasklist_sticky                           = theme.ocol .. "[S]</span>"
theme.tasklist_ontop                            = theme.ocol .. "[T]</span>"
theme.tasklist_floating                         = theme.ocol .. "[F]</span>"
theme.tasklist_maximized_horizontal             = theme.ocol .. "[M] </span>"
theme.tasklist_maximized_vertical               = ""
theme.tasklist_disable_icon                     = true
theme.awesome_icon                              = theme.dir .."/icons/awesome.png"
theme.menu_submenu_icon                         = theme.dir .."/icons/submenu.png"
--theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
--theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
--theme.taglist_fg_occupied 					  =
theme.useless_gap                               = dpi(8)
theme.layout_txt_tile                           = "[t]"
theme.layout_txt_tileleft                       = "[l]"
theme.layout_txt_tilebottom                     = "[b]"
theme.layout_txt_tiletop                        = "[tt]"
theme.layout_txt_fairv                          = "[fv]"
theme.layout_txt_fairh                          = "[fh]"
theme.layout_txt_spiral                         = "[s]"
theme.layout_txt_dwindle                        = "[d]"
theme.layout_txt_max                            = "[m]"
theme.layout_txt_fullscreen                     = "[F]"
theme.layout_txt_magnifier                      = "[M]"
theme.layout_txt_floating                       = "[*]"
theme.titlebar_close_button_normal              = theme.default_dir.."/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.default_dir.."/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.default_dir.."/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.default_dir.."/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.default_dir.."/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.default_dir.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.default_dir.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.default_dir.."/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.default_dir.."/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.default_dir.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.default_dir.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.default_dir.."/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.default_dir.."/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.default_dir.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.default_dir.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.default_dir.."/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.default_dir.."/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.default_dir.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.default_dir.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.default_dir.."/titlebar/maximized_focus_active.png"

return theme
