hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  end)

  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  end)

function openTerminal()
    -- Alacritty
    k = hs.application.find("Alacritty")
    if k == nil then
        hs.application.launchOrFocus("Alacritty")
    else
        k:selectMenuItem("New OS window")
    end
end

function openBrowser()
    -- Chrome
    k = hs.application.find("Chrome")
    if k == nil then
        hs.application.launchOrFocus("Chrome")
    end
    k:selectMenuItem("New Window")
end
-- Cmd + Return opens Alacritty
hs.hotkey.bind({"cmd"}, "return", openTerminal)
-- Cmd+Shift + Return Opens a new Chrome window
hs.hotkey.bind({"cmd","shift"}, "return", openBrowser)
-- Ctrl+Cmd + Escape -- Sleeps the Computer
hs.hotkey.bind({"ctrl", "cmd"}, "escape", function() hs.caffeinate.systemSleep() end)
-- Provides a keyboard based window switcher (instead of app switcher)
hs.hotkey.bind({"cmd", "alt"}, "tab", function() hs.hints.windowHints() end)
-- Launch or Focus Activity Monitor
hs.hotkey.bind({"cmd", "alt"}, "S", function() hs.application.launchOrFocus("Spotify") end)
hs.hotkey.bind({"cmd", "alt"}, "F", function() hs.application.launchOrFocus("Finder") end)
