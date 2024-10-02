RegisterNetEvent('nex-tasks:client:showTask', function(title, task, type)
    SendNUIMessage({
        message = "showTask",
        title = title,
        task = task,
        type = type
    })
end)

RegisterNetEvent('nex-tasks:client:hideTask', function()
    SendNUIMessage({
        message = "hideTask"
    })
end)

-- Usage example:

-- Displays normal task
RegisterCommand('nex:showNormalTask', function()
    TriggerEvent('nex-tasks:client:showTask', 'GIG: FREEDOM OF THE PRESS', 'Collect your reward.')
end, false)

-- Displays warning task
RegisterCommand('nex:showWarningTask', function()
    TriggerEvent('nex-tasks:client:showTask', 'GIG: FREEDOM OF THE PRESS', 'Collect your reward.', 'warning')
end, false)

-- Hide currently shown task
RegisterCommand('nex:hideTask', function()
    TriggerEvent('nex-tasks:client:hideTask')
end, false)