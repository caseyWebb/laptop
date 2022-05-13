local mod = ({'ctrl', 'cmd'})

local globalApps = {
    M = "Mail",
    C = "Calendar",
    L = "Linear",
    S = "Slack",
    D = "Discord"
}

function launchOrFocus(app)
    return function()
        hs.application.launchOrFocus(app)
    end
end

function toggleApp(appName)
    return function()
        local app = hs.application.get(appName)
        if app then
            if app:isFrontmost() then
                app:hide()
            else
                hideOthers(appName)
                local windows = app:allWindows()
                for i, window in ipairs(windows) do
                    window:unminimize()
                    window:focus()
                end
            end
        else
            hideOthers(appName)
            hs.application.launchOrFocus(appName)
        end
    end
end

function hideOthers(activeAppName)
    for k, appName in pairs(globalApps) do
        if appName ~= activeAppName then
            local app = hs.application.get(appName)
            if app then
                app:hide()
            end
        end
    end
end

for k, v in pairs(globalApps) do
    hs.hotkey.bind(mod, k, toggleApp(v))
end
