ESX.RegisterUsableItem(PD.Pussit.yksi, function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('PussiHuuleen_Client', source)
    xPlayer.removeInventoryItem(PD.Pussit.yksi, 1)
end)

ESX.RegisterUsableItem(PD.Pussit.kaksi, function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('PussiHuuleen_Client', source)
    xPlayer.removeInventoryItem(PD.Pussit.kaksi, 1)
end)

ESX.RegisterUsableItem(PD.Pussit.kolme, function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('PussiHuuleen_Client', source)
    xPlayer.removeInventoryItem(PD.Pussit.kolme, 1)
end)

ESX.RegisterUsableItem(PD.Kiekot.yksi, function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem(PD.Kiekot.yksi, 1)
    xPlayer.addInventoryItem(PD.Pussit.yksi, 20)
end)

ESX.RegisterUsableItem(PD.Kiekot.kaksi, function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem(PD.Kiekot.kaksi, 1)
    xPlayer.addInventoryItem(PD.Pussit.kaksi, 20)
end)

ESX.RegisterUsableItem(PD.Kiekot.kolme, function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem(PD.Kiekot.kolme, 1)
    xPlayer.addInventoryItem(PD.Pussit.kolme, 20)
end)