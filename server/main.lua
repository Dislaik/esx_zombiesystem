ESX  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

players = {}

RegisterServerEvent("esx_zombiesystem:newplayer")
AddEventHandler("esx_zombiesystem:newplayer", function(id)
	players[source] = id
	TriggerClientEvent("esx_zombiesystem:playerupdate", -1, players)
end)

AddEventHandler("playerDropped", function(reason)
	players[source] = nil
	TriggerClientEvent("esx_zombiesystem:clear", source)
	TriggerClientEvent("esx_zombiesystem:playerupdate", -1, players)
end)

AddEventHandler("onResourceStop", function()
	TriggerClientEvent("esx_zombiesystem:clear", -1)
end)

RegisterServerEvent('esx_zombiesystem:moneyloot')
AddEventHandler('esx_zombiesystem:moneyloot', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local random = math.random(1, 20)
	xPlayer.addMoney(random)
	TriggerClientEvent("pNotify:SendNotification", xPlayer.source, {text = "You found $" .. random .. " dolars", type = "success", timeout = 2500, layout = "centerRight", queue = "right"})
end)

RegisterServerEvent('esx_zombiesystem:itemloot')
AddEventHandler('esx_zombiesystem:itemloot', function(item)
    local xPlayer = ESX.GetPlayerFromId(source)
	local random = math.random(1, 5)
    xPlayer.addInventoryItem(item, random)
    TriggerClientEvent("pNotify:SendNotification", xPlayer.source, {text = "You found " .. random .. " " .. item, type = "success", timeout = 2500, layout = "centerRight", queue = "right"})
end)

entitys = {}

RegisterServerEvent("RegisterNewZombie")
AddEventHandler("RegisterNewZombie", function(entity)
	TriggerClientEvent("ZombieSync", -1, entity)
	table.insert(entitys, entity)
end)
