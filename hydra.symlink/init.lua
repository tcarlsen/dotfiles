-- refers to grid.lua in this directory, taken from the Hydra wiki: https://github.com/sdegutis/hydra/wiki/Useful-Hydra-libraries
require "grid"

hydra.alert "Hydra, at your service."

pathwatcher.new(os.getenv("HOME") .. "/.hydra/", hydra.reload):start()
autolaunch.set(true)

menu.show(function()
    return {
      {title = "About Hydra", fn = hydra.showabout},
      {title = "Log", fn = logger.show},
      {title = "Repl", fn = repl.open},
      {title = "-"},
      {title = "Quit", fn = os.exit},
    }
end)

local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

hotkey.bind(mash, ';', function() ext.grid.snap(window.focusedwindow()) end)
hotkey.bind(mash, "'", function() fnutils.map(window.visiblewindows(), ext.grid.snap) end)

hotkey.bind(mash, '+', function() ext.grid.adjustwidth( 1) end)
hotkey.bind(mash, '-', function() ext.grid.adjustwidth(-1) end)

hotkey.bind(mashshift, 'LEFT', function() window.focusedwindow():focuswindow_west() end)
hotkey.bind(mashshift, 'RIGHT', function() window.focusedwindow():focuswindow_east() end)
hotkey.bind(mashshift, 'UP', function() window.focusedwindow():focuswindow_north() end)
hotkey.bind(mashshift, 'DOWN', function() window.focusedwindow():focuswindow_south() end)

hotkey.bind(mash, 'M', ext.grid.maximize_window)

hotkey.bind(mash, 'N', ext.grid.pushwindow_nextscreen)
hotkey.bind(mash, 'P', ext.grid.pushwindow_prevscreen)

hotkey.bind(mash, 'DOWN', ext.grid.pushwindow_down)
hotkey.bind(mash, 'UP', ext.grid.pushwindow_up)
hotkey.bind(mash, 'LEFT', ext.grid.pushwindow_left)
hotkey.bind(mash, 'RIGHT', ext.grid.pushwindow_right)

hotkey.bind(mash, 'U', ext.grid.resizewindow_taller)
hotkey.bind(mash, 'O', ext.grid.resizewindow_wider)
hotkey.bind(mash, 'I', ext.grid.resizewindow_thinner)

updates.check()
