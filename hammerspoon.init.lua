
hs.window.animationDuration = 0

function windowCenter()
    local win = win or hs.window.focusedWindow()
    if nil == win then
        return
    end
    local scr = win:screen()
    local tx = scr:frame().x
    local ty = scr:frame().y
    local tw = scr:frame().w
    local th = scr:frame().h

    local fra = {}
    fra.w = (tw / 2) - ((tw / 2) % 1)
    fra.h = (th / 2) - ((th / 2) % 1)
    fra.x = tx + (tw / 4)
    fra.y = ty + (th / 4)
    win:setFrame(fra)
end

function windowMax()
    local win = win or hs.window.focusedWindow()
    if nil == win then
        return
    end
    win:maximize()
end

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", windowMax)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", windowCenter)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
    local win = hs.window.focusedWindow()
    if nil == win then
        return
    end
    win:moveToScreen(win:screen():previous())
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
    local win = hs.window.focusedWindow()
    if nil == win then
        return
    end
    win:moveToScreen(win:screen():next())
end)

hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "N", function()
    hs.application.launchOrFocusByBundleID("com.evernote.Evernote")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "C", function()
    hs.application.launchOrFocusByBundleID("com.google.Chrome")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "D", function()
    hs.application.launchOrFocusByBundleID("com.kapeli.dashdoc")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "F", function()
    hs.application.launchOrFocusByBundleID("com.apple.finder")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "M", function()
    hs.application.launchOrFocusByBundleID("com.tencent.Foxmail")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "W", function()
        hs.application.launchOrFocusByBundleID("com.netease.163music")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "I", function()
    hs.application.launchOrFocusByBundleID("com.googlecode.iterm2")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "S", function()
    hs.application.launchOrFocusByBundleID("com.sublimetext.3")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "A", function()
    hs.application.launchOrFocusByBundleID("com.tencent.qq")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "V", function()
    hs.application.launchOrFocusByBundleID("org.vim.MacVim")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "H", function()
    hs.application.launchOrFocusByBundleID("org.hammerspoon.Hammerspoon")
end)
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "X", function()
    hs.application.launchOrFocusByBundleID("com.tencent.xinWeChat")
end)
