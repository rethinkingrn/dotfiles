--[[

     Holo Awesome WM theme 3.0
     github.com/lcpz

--]]
local naughty = require("naughty")
local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi
local beautiful = require("beautiful")
local string, os = string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.default_dir                               = require("awful.util").get_themes_dir() .. "default"
theme.icon_dir                                  = os.getenv("HOME") .. "/.config/awesome/themes/holo/icons"
--theme.wallpaper                                 = os.getenv("HOME") .. "/Data/Wallpapers/321.png"
theme.font                                      = "JetBrains Nerd Font Mono 12"
theme.taglist_font                              = "JetBrains Nerd Font Mono 16"
theme.fg_normal                                 = "#81a1c1"
theme.fg_focus                                  = "#0099CC"
theme.bg_focus                                  = "#191f24"
theme.bg_normal                                 = "#1f252a"
theme.widget_bg                                 = "#191f24"
theme.fg_urgent                                 = "#81a1c1"
theme.bg_urgent                                 = "#4c566a"
theme.bg_urgent                                 = "#1f252a"
theme.border_width                              = dpi(3)
theme.border_normal                             = "#191f24"
theme.border_focus                              = "#191f24"
theme.taglist_fg_focus                          = "#81a1c1"
theme.tasklist_bg_normal                        = "#1f252a"
theme.tasklist_fg_focus                         = "#81a1c1"
theme.menu_height                               = dpi(20)
theme.menu_width                                = dpi(160)
theme.menu_icon_size                            = dpi(32)
theme.awesome_icon                              = theme.icon_dir .. "/awesome_icon_white.png"
theme.awesome_icon_launcher                     = theme.icon_dir .. "/awesome.png"
theme.taglist_squares_sel                       = theme.icon_dir .. "/bar-sel.png"
theme.taglist_squares_unsel                     = theme.icon_dir .. "/bar-unsel.png"
theme.spr_small                                 = theme.icon_dir .. "/spr_small.png"
theme.spr_very_small                            = theme.icon_dir .. "/spr_very_small.png"
theme.spr_right                                 = theme.icon_dir .. "/spr_right.png"
theme.spr_bottom_right                          = theme.icon_dir .. "/spr_bottom_right.png"
theme.spr_left                                  = theme.icon_dir .. "/spr_left.png"
theme.bar                                       = theme.icon_dir .. "/bar.png"
theme.bottom_bar                                = theme.icon_dir .. "/bottom_bar.png"
theme.mpdl                                      = theme.icon_dir .. "/mpd.png"
theme.mpd_on                                    = theme.icon_dir .. "/mpd_on.png"
theme.prev                                      = theme.icon_dir .. "/prev.png"
theme.nex                                       = theme.icon_dir .. "/next.png"
theme.stop                                      = theme.icon_dir .. "/stop.png"
theme.pause                                     = theme.icon_dir .. "/pause.png"
theme.play                                      = theme.icon_dir .. "/play.png"
theme.clock                                     = theme.icon_dir .. "/clock.png"
theme.calendar                                  = theme.icon_dir .. "/cal.png"
theme.cpu                                       = theme.icon_dir .. "/cpu.png"
theme.net_up                                    = theme.icon_dir .. "/net_up.png"
theme.net_down                                  = theme.icon_dir .. "/net_down.png"
theme.taglist_spacing = 7
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = false
theme.tasklist_disable_task_name                = true
theme.useless_gap                               = dpi(15)
theme.lain_icons         = os.getenv("HOME") ..
                           "/.config/awesome/lain/icons/layout/default/"
theme.layout_termfair    = theme.lain_icons .. "termfair.png"
theme.layout_centerfair  = theme.lain_icons .. "centerfair.png"  -- termfair.center
theme.layout_cascade     = theme.lain_icons .. "cascade.png"
theme.layout_cascadetile = theme.lain_icons .. "cascadetile.png" -- cascade.tile
--theme.layout_centerwork  = theme.lain_icons .. "centerwork.png"
theme.layout_centerworkh = theme.lain_icons .. "/centerworkh.png" -- centerwork.horizontal

--Titlebar
theme.titlebar_close_button_focus               = theme.icon_dir .. "/titlebar/close.png"
theme.titlebar_close_button_normal              = theme.icon_dir .. "/titlebar/inactive.png"
theme.titlebar_floating_button_focus_active     = theme.icon_dir .. "/titlebar/minimize.png"
theme.titlebar_floating_button_normal_active    = theme.icon_dir .. "/titlebar/inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.icon_dir .. "/titlebar/minimize.png"
theme.titlebar_floating_button_normal_inactive  = theme.icon_dir .. "/titlebar/inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.icon_dir .. "/titlebar/maximize.png"
theme.titlebar_maximized_button_normal_active   = theme.icon_dir .. "/titlebar/inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.icon_dir .. "/titlebar/maximize.png"
theme.titlebar_maximized_button_normal_inactive = theme.icon_dir .. "/titlebar/inactive.png"
theme.titlebar_bg_normal                        = "#1f252a"
theme.titlebar_bg_focus                         = "#1f252a"
theme.titlebar_fg_normal                        = "#474747"
theme.titlebar_fg_focus                         = "#81a1c1"

--notifications
theme.notification_shape = gears.shape.rounded_rect
theme.notification_font = "JetBrains Nerd Font Mono 11"
theme.notification_bg = "#1f252a"
theme.notification_fg = "#81a1c1"
theme.notification_margin = 10
naughty.config.defaults.margin = theme.notification_margin
naughty.config.defaults.padding = 35
naughty.config.defaults.position = "top_right"
theme.notification_border_width = 5
theme.notification_border_color = "transparent"
theme.notification_width = 700
theme.notification_height = 120
theme.notification_max_width = 4000

--hotkeys
theme.hotkeys_font = "JetBrains Nerd Font Mono 14"
theme.hotkeys_description_font = "JetBrains Nerd Font Mono 12"
theme.hotkeys_modifiers_fg = "#81a1c1"
theme.hotkeys_border_width = 5
theme.hotkeys_group_margin = 50
theme.hotkeys_border_color = "#1f252a"

--tabbed
theme.tabbar_radius = 1                     -- border radius of the tabbar
theme.tabbar_style = "modern"              -- style of the tabbar ("default", "boxes" or "modern")
theme.tabbar_bg_normal = "#191f24"          -- background color of the focused client on the tabbar
theme.tabbar_fg_normal = "#81a1c1"          -- foreground color of the focused client on the tabbar 1f252a
theme.tabbar_bg_focus  = "#1f252a"          -- background color of unfocused clients on the tabbar
theme.tabbar_fg_focus  = "#81a1c1"          -- foreground color of unfocused clients on the tabbar



local markup = lain.util.markup
local blue   = "#80CCE6"
local space3 = markup.font("Roboto 3", " ")

-- Clock
local mytextclock = wibox.widget.textclock(markup("#81a1c1", space3 .. " %H:%M " .. markup.font("JetBrains Nerd Font Mono 10", " ")))
mytextclock.font = theme.font
local clock_icon = wibox.widget.textbox('<span color="#81a1c1" font="JetBrains Nerd Font Mono 20">  </span>')
local clockbg = wibox.container.background(mytextclock, theme.widget_bg, gears.shape.rounded_rect)
local clockwidget = wibox.container.margin(clockbg, dpi(0), dpi(3), dpi(5), dpi(5))



-- Calendar
local mytextcalendar = wibox.widget.textclock(markup.fontfg(theme.font, "#81a1c1", space3 .. "%d %b" .. markup.font("JetBrains Nerd Font Mono Mono 5", " ")))
--local calendar_icon = wibox.widget.imagebox(theme.calendar)
local calbg = wibox.container.background(mytextcalendar, theme.bg_normal, gears.shape.rounded_rect)
local calendarwidget = wibox.container.margin(calbg, dpi(0), dpi(0), dpi(5), dpi(5))
local calendar_icon = wibox.widget.textbox('<span color="#81a1c1" font="JetBrains Nerd Font Mono 10"> DATE </span>')
theme.cal = lain.widget.cal({
    attach_to = { mytextclock, mytextcalendar },
    notification_preset = {
        fg = "#81a1c1",
        bg = theme.bg_normal,
        position = "top_right",
        font = "Monospace 10"
    }
}) 
-- Battery
local baticon = wibox.widget.textbox('<span color="#81a1c1" font="JetBrains Nerd Font Mono Mono 10">BAT </span>')
local bat = lain.widget.bat({
	settings = function()
		widget:set_markup(markup.font(theme.font, '<span color="#81a1c1">' .. bat_now.perc .. "%</span>"))
	end
})
local batteryarc_widget = require("awesome-wm-widgets.batteryarc-widget.batteryarc")

local batbg = wibox.container.background(bat.widget, theme.bg_normal, gears.shape.rounded_rect)
local batwidget = wibox.container.margin(batbg, dpi(0), dpi(0), dpi(5), dpi(5))


-- / fs
--[[ commented because it needs Gio/Glib >= 2.54
theme.fs = lain.widget.fs({
    notification_preset = { bg = theme.bg_normal, font = "Monospace 9" },
})
--]]

-- ALSA volume bar
theme.volume = lain.widget.alsabar({
    notification_preset = { font = "Monospace 9"},
    --togglechannel = "IEC958,3",
    width = dpi(80), height = dpi(10), border_width = dpi(0),
    colors = {
        background = "#383838",
        unmute     = "#80CCE6",
        mute       = "#FF9F9F"
    },
})
theme.volume.bar.paddings = dpi(0)
theme.volume.bar.margins = dpi(5)
local volumewidget = wibox.container.background(theme.volume.bar, theme.bg_focus, gears.shape.rounded_rect)
volumewidget = wibox.container.margin(volumewidget, dpi(0), dpi(0), dpi(5), dpi(5))

-- CPU
local cpu_icon = wibox.widget.textbox('<span color="#81a1c1" font="JetBrains Nerd Font Mono 20">  </span>')
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(space3 .. markup.font(theme.font, " " .. cpu_now.usage
                          .. "% ") .. markup.font("JetBrains Nerd Font Mono 8", " "))
    end
})
local cpubg = wibox.container.background(cpu.widget, theme.widget_bg, gears.shape.rounded_rect)
local cpuwidget = wibox.container.margin(cpubg, dpi(0), dpi(0), dpi(5), dpi(5))

-- Net
--local netdown_icon = wibox.widget.imagebox(theme.net_down)
--local netup_icon = wibox.widget.imagebox(theme.net_up)
local netup_icon = wibox.widget.textbox('<span color="#81a1c1" font="JetBrains Nerd Font Mono 10"> UP </span>')
local netdown_icon = wibox.widget.textbox('<span color="#81a1c1" font="JetBrains Nerd Font Mono 10"> DOWN </span>')
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font("Roboto 1", " ") .. markup.font(theme.font, net_now.received .. " - "
                          .. net_now.sent) .. markup.font("Roboto 2", " "))
    end
})
local netbg = wibox.container.background(net.widget, theme.widget_bg, gears.shape.rounded_rect)
local networkwidget = wibox.container.margin(netbg, dpi(0), dpi(0), dpi(5), dpi(5))


-- memory / ram
local memicon = wibox.widget.textbox('<span color="#81a1c1" font="JetBrains Nerd Font Mono 16">  </span>')
local mem = lain.widget.mem({
	settings = function()
		widget:set_markup(markup.font(theme.font, '<span color="#81a1c1"> ' .. " " .. mem_now.used .. "MB </span> "))
	end
})
local membg = wibox.container.background(mem.widget, theme.widget_bg, gears.shape.rounded_rect)
local memwidget = wibox.container.margin(membg, dpi(0), dpi(0), dpi(5), dpi(5))
local ram_widget = require("awesome-wm-widgets.ram-widget.ram-widget")
-- Launcher
local mylauncher = awful.widget.button({ image = theme.awesome_icon_launcher })
mylauncher:connect_signal("button::press", function() awful.util.spawn("/home/matthew/.config/rofi/launchers/misc/launcher1.sh") end)

-- Separators
local bar = wibox.widget.textbox('<span font="JetBrains Nerd Font Mono Mono 16">  </span>')

--local volume_widget = require('awesome-wm-widgets.volume-widget.volume')
local cpu_widget = require("awesome-wm-widgets.cpu-widget.cpu-widget")

local net_speed_widget = require("awesome-wm-widgets.net-speed-widget.net-speed")


local barcolor  = gears.color({
    type  = "linear",
    from  = { dpi(32), 0 },
    to    = { dpi(32), dpi(32) },
    stops = { {0, theme.bg_focus}, {0.25, "#505050"}, {1, theme.bg_focus} }
})


local fs_widget = require("awesome-wm-widgets.fs-widget.fs-widget")


function theme.at_screen_connect(s)

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[2])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
                           s.mytaglist = awful.widget.taglist {
                            screen = s,
                            filter = awful.widget.taglist.filter.all,
                            style = {
                                shape = gears.shape.rounded_rect
                            },
                            layout = {
                                spacing = 0,
                                spacing_widget = {
                                    color = '#dddddd',
                                    shape = gears.shape.rounded_bar,
                                },
                                layout = wibox.layout.fixed.horizontal
                            },
                            widget_template = {
                                {
                                    {
                                        {
                                            bg = '#dddddd',
                                            shape = '',
                                            widget = wibox.container.background,
                                        },
                                        {
                                            {
                                                id = 'icon_role',
                                                widget = wibox.widget.imagebox,
                                            },
                                            margins = 0,
                                            widget = wibox.container.margin,
                                        },
                                        {
                                            id = 'text_role',
                                            widget = wibox.widget.textbox,
                                        },
                                        layout = wibox.layout.fixed.horizontal,
                                    },
                                    left = 10,
                                    right = 10,
                                    widget = wibox.container.margin
                                },
                                id = 'background_role',
                                widget = wibox.container.background,
                                -- Add support for hover colors and an index label
                                create_callback = function(self, c3, index, objects) --luacheck: no unused args
                                    self:connect_signal('mouse::enter', function()
                                        if self.bg ~= '#515865' then
                                            self.backup = self.bg
                                            self.has_backup = true
                                        end
                                        self.bg = '#515865'
                                    end)
                                    self:connect_signal('mouse::leave', function()
                                        if self.has_backup then self.bg = self.backup end
                                    end)
                                end,
                            },
                            buttons = awful.util.taglist_buttons
                        }

-- Create a tasklist widget

s.tasklist =
        awful.widget.tasklist {
            screen = s,
            filter = awful.widget.tasklist.filter.currenttags,
            buttons = tasklist_buttons,
            layout = {
                spacing = 0,
                spacing_widget = {
                    widget = wibox.container.background
                },
            style = {
                align = "center",
                },
                layout = wibox.layout.fixed.horizontal
 
        },
        widget_template = {
            {
                {
                    nil,
                    awful.widget.clienticon,
                    nil,
                    layout = wibox.layout.fixed.horizontal,
                },
                top = 5,
                bottom = 5,
                left = 10,
                right = 10,
                widget = wibox.container.margin
            },
            id = "background_role",
            widget = wibox.container.background
        }
    }

    -- Create the wibox
    --s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(35), shape = gears.shape.square_bar,})

    s.mywibox = awful.wibar {
		-- get screen size and widget size to calculate centre position
		--y = dpi(50),
        width = 1200,
		height = 30,
		screen = s,
        stretch = false,
        border_width = 0,
		visible = true,
		bg = "#1f252a",
		--x = screen[1].geometry.width / 1 - dpi(1920),
		shape = gears.shape.rounded_rect,
	}
    s.mywibox.y = 10

    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        expand = "none",
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --bar,
            --mylauncher,
            bar,
            s.mytaglist,
            s.mypromptbox,
            --s.mylayoutbox,
            bar,
        },
        {
            layout = wibox.layout.fixed.horizontal,
            {
                s.tasklist,
                shape = gears.shape.rounded_rect,
                widget = wibox.container.background
            }    
        },
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            bar,
            cpu_icon,
            cpuwidget,
            bar,
            cpu_widget(),
            --bar,
            --memicon,
            --memwidget,
            bar,
            --clock_icon,
            clockwidget,
            bar,
            s.mylayoutbox,
            bar,
            batwidget,
            bar,
            wibox.widget.systray(),
            --require('notif-center'),
            bar,
        },
    }
end

return theme
