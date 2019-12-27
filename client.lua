Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


RegisterNetEvent("AdamSH:Use")
AddEventHandler("AdamSH:Use", function()
        local ped = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(ped)
        local math = math.random(10000000, 90000000)
        if IsPedInAnyVehicle(ped, false) then
            TriggerEvent("chatMessage", '^1...משנה לוחית רישוי אנא המתן')
            Wait(7000)
            SetVehicleNumberPlateText(vehicle, math)
            TriggerEvent("chatMessage", math.."^2 לוחית הרישוי של רכב זה השתנתה ל")
            TriggerServerEvent("AdamSH:Remove")
        end
end)


