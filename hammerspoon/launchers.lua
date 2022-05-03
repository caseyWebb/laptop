function launchOrFocus(app)
    return function()
        hs.application.launchOrFocus(app)
    end
end

function toggleApp(app)
    return function()
        local app = hs.application.get(app)
        if app then
            if app:isFrontmost() then
                app:hide()
            else
                app:activate()
            end
        else
            hs.application.launchOrFocus(app)
        end
    end
end

local globalApps = {
    M = "Mail",
    C = "Calendar",
    L = "Linear",
    S = "Slack",
    D = "Discord"
}

-- @TODO find a way to make these launch new windows instead of focusing existing ones
-- tiledApps = {
--     F = "Firefox",
--     P = "1Password 7",
--     [";"] = "Visual Studio Code",
--     ["return"] = "Alacritty"
-- }

local mod = ({'ctrl', 'cmd'})

for k, v in pairs(globalApps) do
    hs.hotkey.bind(mod, k, toggleApp(v))
end

-- for k, v in pairs(tiledApps) do
--     hs.hotkey.bind(mod, k, launchOrFocus(v))
-- end
