ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

objects = {}

if Config.ObjectDropLoot then
	Citizen.CreateThread(function()
	    while true do
	        Wait(0)
	        for k,v in pairs(Config.ObjectsLoot) do
		        	local player = GetPlayerPed(-1)
		        	local distanceobject = 1.2
		            local obj = GetClosestObjectOfType(GetEntityCoords(player).x, GetEntityCoords(player).y, GetEntityCoords(player).z, distanceobject, v, false, true ,true)
		            local distance = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(obj), true)
		    


			    if distance <= distanceobject then

		            local ObjectCoords = GetEntityCoords(obj)

		            if not objects[obj] then
		            ESX.Game.Utils.DrawText3D(ObjectCoords + vector3(0.0, 0.0, 0.5), '~c~PRESS ~b~[E]~c~ TO SEARCH', 1, 4)
		        	end

		            if IsControlJustReleased(0, 38) then
		                if not objects[obj] then

		                    SetCurrentPedWeapon(GetPlayerPed(-1), 0xA2719263, true)
							exports['mythic_progbar']:Progress({
								name = "buscando",
								duration = 6000,
								label = 'BUSCANDO...',
								useWhileDead = true,
								canCancel = true,
								controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
								animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							}, function(cancelled)
								if not cancelled then
									randomChance = math.random(1, 100)
									randomWeapon = Config.WeaponLootObject[math.random(1, #Config.WeaponLootObject)]
									randomItem = Config.ItemLootObject[math.random(1, #Config.ItemLootObject)]

									if randomChance > 0 and randomChance < Config.ProbabilityWeaponLootObject then
										local randomAmmo = math.random(1, 30)
										GiveWeaponToPed(GetPlayerPed(-1), randomWeapon, randomAmmo, true, false)
										ESX.ShowNotification('You found ' .. randomWeapon)
									elseif randomChance >= Config.ProbabilityWeaponLootObject and randomChance < Config.ProbabilityMoneyLootObject then
										TriggerServerEvent('esx_zombiesystem:moneyloot')
									elseif randomChance >= Config.ProbabilityMoneyLootObject and randomChance < Config.ProbabilityItemLootObject then
										TriggerServerEvent('esx_zombiesystem:itemloot', randomItem)
									elseif randomChance >= Config.ProbabilityItemLootObject and randomChance < 100 then
										ESX.ShowNotification('You not found nothing')
									end
									objects[obj] = true
								else
									-- Do Something If Action Was Cancelled
								end
							end)
		               	end
		            end
		        end
		    end
		end
	end)
end
