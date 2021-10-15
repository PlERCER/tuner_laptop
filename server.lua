local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

RegisterCommand('tunar',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local player = vRP.getUSerSource(user_id)
    if vRP.hasPermission(user_id,"yts.permissao") then
        if vRP.getInventoryItemAmount(user_id,"energetico") >= 1 then
         TriggerClientEvent("tuning:useLaptop",source)
        end
    end 
end)


RegisterServerEvent("tuning:removeItem")
AddEventHandler("tuning:removeItem", function()
    local _source = source
    local user_id = vRP.getUserId(source)
	if vRP.tryGetInventoryItem(user_id,'energetico',1) then 
        TriggerClientEvent('Tuner', s)
    else 
        vRPclient.notify(user_id, "Você não possui um Laptop")
    end
end)
