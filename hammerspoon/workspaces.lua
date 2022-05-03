function moveCurrentApplicationToWorkspace(toWorkspace)
    return function()
        local appPid = hs.application.frontmostApplication():pid()
        logger:d("Moving app with pid " .. appPid .. " to workspace " .. toWorkspace)
        newCurrentWorkspace = without(appWorkspaceMap[currentWorkspace], appPid)
        appWorkspaceMap[currentWorkspace] = without(appWorkspaceMap[currentWorkspace], appPid)
        appWorkspaceMap[toWorkspace][#appWorkspaceMap[toWorkspace] + 1] = appPid
        showWorkspace(toWorkspace)()
    end
end

function showWorkspace(workspace)
    return function()
        hideCurrentWorkspace()
        local appPids = appWorkspaceMap[workspace]
        for i, pid in ipairs(appPids) do
            local app = hs.application.applicationForPID(pid)
            app:unhide()
        end
        currentWorkspace = workspace
    end
end

function hideCurrentWorkspace()
    local appPids = appWorkspaceMap[currentWorkspace]
    for i, pid in ipairs(appPids) do
        local app = hs.application.applicationForPID(pid)
        app:hide()
    end
end

function mapPids(apps)
    return hs.fnutils.map(apps, function(app)
        return app:pid()
    end)
end

function without(array, value)
    local newArray = {}
    for i, v in ipairs(array) do
        if v ~= value then
            newArray[#newArray + 1] = v
        end
    end
    return newArray
end

local logger = hs.logger.new("WorkspaceManager", "debug")

local workspaceManagedApps = {"Alacritty", "Code", "Firefox", "Terminal", "Chromium"}

local runningManagedApps = hs.fnutils.filter(hs.application.runningApplications(), function(app)
    return hs.fnutils.contains(workspaceManagedApps, app:name())
end)

local visibleRunningManagedApps = hs.fnutils.filter(runningManagedApps, function(app)
    return not app:isHidden()
end)

local hiddenRunningManagedApps = hs.fnutils.filter(runningManagedApps, function(app)
    return app:isHidden()
end)

local appWorkspaceMap = {
    [1] = mapPids(visibleRunningManagedApps),
    [2] = {},
    [3] = {},
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [0] = mapPids(hiddenRunningManagedApps)
}
logger:d("appWorkspaceMap: %s", hs.inspect(appWorkspaceMap))

local currentWorkspace = 1

local mod = ({'ctrl', 'cmd'})

for i = 1, 9 do
    hs.hotkey.bind(mod, tostring(i), showWorkspace(i))
end
for i = 0, 9 do
    hs.hotkey.bind(hs.fnutils.concat(mod, {"shift"}), tostring(i), moveCurrentApplicationToWorkspace(i))
end

