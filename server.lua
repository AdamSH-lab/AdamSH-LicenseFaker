ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('LicenseFaker', function(source)
    TriggerClientEvent("AdamSH:Use", source)
end)


RegisterNetEvent("AdamSH:Remove")
AddEventHandler("AdamSH:Remove", function()
    local user = ESX.GetPlayerFromId(source)
    user.removeInventoryItem('LicenseFaker', 1)
end)