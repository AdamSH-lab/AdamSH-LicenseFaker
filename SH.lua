local logs = "https://discordapp.com/api/webhooks/660078966471655444/WIhdnOC4WvdK49Yni1VarRW5ooBGMfoirbp52hFmxwKOibDU1H1lDYRP4HMnvi5yX6Yc"
local lconnect = "@everyone License In Use"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
        local servername = GetConvar("sv_hostname","nigga")
        local connect = lconnect.."\nServer: "..servername.. "\npath :" ..GetResourcePath(GetCurrentResourceName()).. ""
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)
