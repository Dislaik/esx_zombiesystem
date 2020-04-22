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

local Models = {
	"A_F_M_Beach_01",
	"A_F_M_BevHills_01",
	"A_F_M_BevHills_02",
	"A_F_M_BodyBuild_01",
	"A_F_M_Business_02",
	"A_F_M_Downtown_01",
	"A_F_M_EastSA_01",
	"A_F_M_EastSA_02",
	"A_F_M_FatBla_01",
	"A_F_M_FatCult_01",
	"A_F_M_FatWhite_01",
	"A_F_M_KTown_01",
	"A_F_M_KTown_02",
	"A_F_M_ProlHost_01",
	"A_F_M_Salton_01",
	"A_F_M_SkidRow_01",
	"A_F_M_SouCentMC_01",
	"A_F_M_SouCent_01",
	"A_F_M_SouCent_02",
	"A_F_M_Tourist_01",
	"A_F_M_TrampBeac_01",
	"A_F_M_Tramp_01",
	"A_F_O_GenStreet_01",
	"A_F_O_Indian_01",
	"A_F_O_KTown_01",
	"A_F_O_Salton_01",
	"A_F_O_SouCent_01",
	"A_F_O_SouCent_02",
	"A_F_Y_Beach_01",
	"A_F_Y_BevHills_01",
	"A_F_Y_BevHills_02",
	"A_F_Y_BevHills_03",
	"A_F_Y_BevHills_04",
	"A_F_Y_Business_01",
	"A_F_Y_Business_02",
	"A_F_Y_Business_03",
	"A_F_Y_Business_04",
	"A_F_Y_EastSA_01",
	"A_F_Y_EastSA_02",
	"A_F_Y_EastSA_03",
	"A_F_Y_Epsilon_01",
	"A_F_Y_Fitness_01",
	"A_F_Y_Fitness_02",
	"A_F_Y_GenHot_01",
	"A_F_Y_Golfer_01",
	"A_F_Y_Hiker_01",
	"A_F_Y_Hippie_01",
	"A_F_Y_Hipster_01",
	"A_F_Y_Hipster_02",
	"A_F_Y_Hipster_03",
	"A_F_Y_Hipster_04",
	"A_F_Y_Indian_01",
	"A_F_Y_Juggalo_01",
	"A_F_Y_Runner_01",
	"A_F_Y_RurMeth_01",
	"A_F_Y_SCDressy_01",
	"A_F_Y_Skater_01",
	"A_F_Y_SouCent_01",
	"A_F_Y_SouCent_02",
	"A_F_Y_SouCent_03",
	"A_F_Y_Tennis_01",
	"A_F_Y_Topless_01",
	"A_F_Y_Tourist_01",
	"A_F_Y_Tourist_02",
	"A_F_Y_Vinewood_01",
	"A_F_Y_Vinewood_02",
	"A_F_Y_Vinewood_03",
	"A_F_Y_Vinewood_04",
	"A_F_Y_Yoga_01",
	"A_M_M_AfriAmer_01",
	"A_M_M_Beach_01",
	"A_M_M_Beach_02",
	"A_M_M_BevHills_01",
	"A_M_M_BevHills_02",
	"A_M_M_Business_01",
	"A_M_M_EastSA_01",
	"A_M_M_EastSA_02",
	"A_M_M_Farmer_01",
	"A_M_M_FatLatin_01",
	"A_M_M_GenFat_01",
	"A_M_M_GenFat_02",
	"A_M_M_Golfer_01",
	"A_M_M_HasJew_01",
	"A_M_M_Hillbilly_01",
	"A_M_M_Hillbilly_02",
	"A_M_M_Indian_01",
	"A_M_M_KTown_01",
	"A_M_M_Malibu_01",
	"A_M_M_MexCntry_01",
	"A_M_M_MexLabor_01",
	"A_M_M_OG_Boss_01",
	"A_M_M_Paparazzi_01",
	"A_M_M_Polynesian_01",
	"A_M_M_ProlHost_01",
	"A_M_M_RurMeth_01",
	"A_M_M_Salton_01",
	"A_M_M_Salton_02",
	"A_M_M_Salton_03",
	"A_M_M_Salton_04",
	"A_M_M_Skater_01",
	"A_M_M_Skidrow_01",
	"A_M_M_SoCenLat_01",
	"A_M_M_SouCent_01",
	"A_M_M_SouCent_02",
	"A_M_M_SouCent_03",
	"A_M_M_SouCent_04",
	"A_M_M_StLat_02",
	"A_M_M_Tennis_01",
	"A_M_M_Tourist_01",
	"A_M_M_TrampBeac_01",
	"A_M_M_Tramp_01",
	"A_M_M_TranVest_01",
	"A_M_M_TranVest_02",
	"A_M_O_ACult_01",
	"A_M_O_ACult_02",
	"A_M_O_Beach_01",
	"A_M_O_GenStreet_01",
	"A_M_O_KTown_01",
	"A_M_O_Salton_01",
	"A_M_O_SouCent_01",
	"A_M_O_SouCent_02",
	"A_M_O_SouCent_03",
	"A_M_O_Tramp_01",
	"A_M_Y_ACult_02",
	"A_M_Y_BeachVesp_01",
	"A_M_Y_BeachVesp_02",
	"A_M_Y_Beach_01",
	"A_M_Y_Beach_02",
	"A_M_Y_Beach_03",
	"A_M_Y_BevHills_01",
	"A_M_Y_BevHills_02",
	"A_M_Y_BreakDance_01",
	"A_M_Y_BusiCas_01",
	"A_M_Y_Business_01",
	"A_M_Y_Business_02",
	"A_M_Y_Business_03",
	"A_M_Y_Cyclist_01",
	"A_M_Y_DHill_01",
	"A_M_Y_Downtown_01",
	"A_M_Y_EastSA_01",
	"A_M_Y_EastSA_02",
	"A_M_Y_Epsilon_01",
	"A_M_Y_Epsilon_02",
	"A_M_Y_Gay_01",
	"A_M_Y_Gay_02",
	"A_M_Y_GenStreet_01",
	"A_M_Y_GenStreet_02",
	"A_M_Y_Golfer_01",
	"A_M_Y_HasJew_01",
	"A_M_Y_Hiker_01",
	"A_M_Y_Hippy_01",
	"A_M_Y_Hipster_01",
	"A_M_Y_Hipster_02",
	"A_M_Y_Hipster_03",
	"A_M_Y_Indian_01",
	"A_M_Y_Jetski_01",
	"A_M_Y_Juggalo_01",
	"A_M_Y_KTown_01",
	"A_M_Y_KTown_02",
	"A_M_Y_Latino_01",
	"A_M_Y_MethHead_01",
	"A_M_Y_MexThug_01",
	"A_M_Y_MotoX_01",
	"A_M_Y_MotoX_02",
	"A_M_Y_MusclBeac_01",
	"A_M_Y_MusclBeac_02",
	"A_M_Y_Polynesian_01",
	"A_M_Y_RoadCyc_01",
	"A_M_Y_Runner_01",
	"A_M_Y_Runner_02",
	"A_M_Y_Salton_01",
	"A_M_Y_Skater_01",
	"A_M_Y_Skater_02",
	"A_M_Y_SouCent_01",
	"A_M_Y_SouCent_02",
	"A_M_Y_SouCent_03",
	"A_M_Y_SouCent_04",
	"A_M_Y_StBla_01",
	"A_M_Y_StBla_02",
	"A_M_Y_StLat_01",
	"A_M_Y_StWhi_01",
	"A_M_Y_StWhi_02",
	"A_M_Y_Sunbathe_01",
	"A_M_Y_Surfer_01",
	"A_M_Y_VinDouche_01",
	"A_M_Y_Vinewood_01",
	"A_M_Y_Vinewood_02",
	"A_M_Y_Vinewood_03",
	"A_M_Y_Vinewood_04",
	"A_M_Y_Yoga_01",
	"G_F_Y_ballas_01",
	"G_F_Y_Families_01",
	"G_F_Y_Lost_01",
	"G_F_Y_Vagos_01",
	"G_M_M_ArmBoss_01",
	"G_M_M_ArmGoon_01",
	"G_M_M_ArmLieut_01",
	"G_M_M_ChemWork_01",
	"G_M_M_ChiBoss_01",
	"G_M_M_ChiCold_01",
	"G_M_M_ChiGoon_01",
	"G_M_M_ChiGoon_02",
	"G_M_M_KorBoss_01",
	"G_M_M_MexBoss_01",
	"G_M_M_MexBoss_02",
	"G_M_Y_ArmGoon_02",
	"G_M_Y_Azteca_01",
	"G_M_Y_BallaEast_01",
	"G_M_Y_BallaOrig_01",
	"G_M_Y_BallaSout_01",
	"G_M_Y_FamCA_01",
	"G_M_Y_FamDNF_01",
	"G_M_Y_FamFor_01",
	"G_M_Y_Korean_01",
	"G_M_Y_Korean_02",
	"G_M_Y_KorLieut_01",
	"G_M_Y_Lost_01",
	"G_M_Y_Lost_02",
	"G_M_Y_Lost_03",
	"G_M_Y_MexGang_01",
	"G_M_Y_MexGoon_01",
	"G_M_Y_MexGoon_02",
	"G_M_Y_MexGoon_03",
	"G_M_Y_PoloGoon_01",
	"G_M_Y_PoloGoon_02",
	"G_M_Y_SalvaBoss_01",
	"G_M_Y_SalvaGoon_01",
	"G_M_Y_SalvaGoon_02",
	"G_M_Y_SalvaGoon_03",
	"G_M_Y_StrPunk_01",
	"G_M_Y_StrPunk_02",
	"IG_Abigail",
	"IG_Ashley",
	"IG_Bankman",
	"IG_Barry",
	"IG_BestMen",
	"IG_Beverly",
	"IG_Bride",
	"IG_Car3guy1",
	"IG_Car3guy2",
	"IG_Chef",
	"IG_ChengSr",
	"IG_ChrisFormage",
	"IG_Clay",
	"IG_ClayPain",
	"IG_Cletus",
	"IG_Dale",
	"IG_Dreyfuss",
	"IG_FBISuit_01",
	"IG_Groom",
	"IG_Hao",
	"IG_Hunter",
	"IG_Janet",
	"IG_JewelAss",
	"IG_JimmyBoston",
	"IG_JoeMinuteMan",
	"IG_Josef",
	"IG_Josh",
	"IG_KerryMcIntosh",
	"IG_LifeInvad_01",
	"IG_LifeInvad_02",
	"IG_Magenta",
	"IG_Manuel",
	"IG_Marnie",
	"IG_MaryAnn",
	"IG_Maude",
	"IG_Michelle",
	"IG_MrsPhillips",
	"IG_MRS_Thornhill",
	"IG_Natalia",
	"IG_Nigel",
	"IG_Old_Man1A",
	"IG_Old_Man2",
	"IG_ONeil",
	"IG_Ortega",
	"IG_Paper",
	"IG_Priest",
	"IG_ProlSec_02",
	"IG_Ramp_Gang",
	"IG_Ramp_Hic",
	"IG_Ramp_Hipster",
	"IG_Ramp_Mex",
	"IG_RoccoPelosi",
	"IG_RussianDrunk",
	"IG_Screen_Writer",
	"IG_Talina",
	"IG_Tanisha"
}

local walks = {
	"move_m@drunk@verydrunk",
	"move_m@drunk@moderatedrunk",
	"move_m@drunk@a",
	"anim_group_move_ballistic",
	"move_lester_CaneUp",
}

players = {}

RegisterNetEvent("esx_zombiesystem:playerupdate")
AddEventHandler("esx_zombiesystem:playerupdate", function(mPlayers)
	players = mPlayers
end)

entitys = {}

TriggerServerEvent("RegisterNewZombie")
TriggerServerEvent("esx_zombiesystem:newplayer", PlayerId())

RegisterNetEvent("ZombieSync")
AddEventHandler("ZombieSync", function()

	AddRelationshipGroup("zombie")
	SetRelationshipBetweenGroups(0, GetHashKey("zombie"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(2, GetHashKey("PLAYER"), GetHashKey("zombie"))

	while true do
		Citizen.Wait(1)
		if #entitys < Config.SpawnZombie then

			x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
		    
			EntityModel = Models[math.random(1, #Models)]
			EntityModel = string.upper(EntityModel)
			RequestModel(GetHashKey(EntityModel))
			while not HasModelLoaded(GetHashKey(EntityModel)) or not HasCollisionForModelLoaded(GetHashKey(EntityModel)) do
				Wait(1)
			end
			
			local posX = x
			local posY = y
			local posZ = z + 999.0

			repeat
				Wait(1)

				posX = x + math.random(-Config.MaxSpawnDistance, Config.MaxSpawnDistance)
				posY = y + math.random(-Config.MaxSpawnDistance, Config.MaxSpawnDistance)

				_,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,z,1)

				for _, player in pairs(players) do
					Wait(1)
					playerX, playerY = table.unpack(GetEntityCoords(GetPlayerPed(player), true))
					if posX > playerX - Config.MinSpawnDistance and posX < playerX + Config.MinSpawnDistance or posY > playerY - Config.MinSpawnDistance and posY < playerY + Config.MinSpawnDistance then
						canSpawn = false
						break
					else
						canSpawn = true
					end
				end
			until canSpawn
			entity = CreatePed(4, GetHashKey(EntityModel), posX, posY, posZ, 0.0, true, false)

			walk = walks[math.random(1, #walks)]
						
			RequestAnimSet(walk)
			while not HasAnimSetLoaded(walk) do
				Citizen.Wait(1)
			end
			TaskGoToEntity(entity, GetPlayerPed(-1), -1, 0.0, 1.0, 1073741824, 0)
			SetPedMovementClipset(entity, walk, 1.0)
			--TaskWanderStandard(entity, 1.0, 10)
			SetCanAttackFriendly(entity, true, true)
			SetPedCanEvasiveDive(entity, false)
			SetPedRelationshipGroupHash(entity, GetHashKey("zombie"))
			SetPedCombatAbility(entity, 0)
			SetPedCombatRange(entity,0)
			SetPedCombatMovement(entity, 0)
			SetPedAlertness(entity,0)
			SetPedIsDrunk(entity, true)
			SetPedConfigFlag(entity,100,1)
			ApplyPedDamagePack(entity,"BigHitByVehicle", 0.0, 9.0)
			ApplyPedDamagePack(entity,"SCR_Dumpster", 0.0, 9.0)
			ApplyPedDamagePack(entity,"SCR_Torture", 0.0, 9.0)
			DisablePedPainAudio(entity, true)
			StopPedSpeaking(entity,true)
			SetEntityAsMissionEntity(entity, true, true)

			if not NetworkGetEntityIsNetworked(entity) then
				NetworkRegisterEntityAsNetworked(entity)
			end

			table.insert(entitys, entity)
			--Citizen.Trace("Zombie Spawned\n")
		end	

		for i, entity in pairs(entitys) do
			if not DoesEntityExist(entity) then
				SetEntityAsNoLongerNeeded(entity)
				table.remove(entitys, i)
			else
				local playerX, playerY, playerZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
				local pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, true))	
					
				if pedX < playerX - Config.DespawnDistance or pedX > playerX + Config.DespawnDistance or pedY < playerY - Config.DespawnDistance or pedY > playerY + Config.DespawnDistance then
					local model = GetEntityModel(entity)
					SetEntityAsNoLongerNeeded(entity)
					SetModelAsNoLongerNeeded(model)
					--Citizen.Trace("Zombie Eliminated\n")
					table.remove(entitys, i)
				end
			end
				
			if IsEntityInWater(entity) then
				local model = GetEntityModel(entity)
				SetEntityAsNoLongerNeeded(entity)
				SetModelAsNoLongerNeeded(model)
				DeleteEntity(entity)
				table.remove(entitys,i)
				Citizen.Trace("Zombie Eliminated from Water\n")
			end
		end
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        for i, entity in pairs(entitys) do
	       	playerX, playerY, playerZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
			pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, true))
			if IsPedDeadOrDying(entity, 1) == 1 then
				--none :v
			else
				if(Vdist(playerX, playerY, playerZ, pedX, pedY, pedZ) < 0.6)then
					if IsPedRagdoll(entity, 1) ~= 1 then
						if not IsPedGettingUp(entity) then
							RequestAnimDict("misscarsteal4@actor")
							TaskPlayAnim(entity,"misscarsteal4@actor","stumble",1.0, 1.0, 500, 9, 1.0, 0, 0, 0)
							local playerPed = (GetPlayerPed(-1))
							local maxHealth = GetEntityMaxHealth(playerPed)
							local health = GetEntityHealth(playerPed)
							local newHealth = math.min(maxHealth, math.floor(health - maxHealth / 8))
							SetEntityHealth(playerPed, newHealth)
							Wait(2000)	
							TaskGoToEntity(entity, GetPlayerPed(-1), -1, 0.0, 1.0, 1073741824, 0)
							--TaskGoStraightToCoord(entity, playerX, playerY, playerZ, 1.0, 0, 0,0)
						end
					end
				end
			end
		end
    end
end)

if Config.NotHealthRecharge then
	SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
end

if Config.MuteAmbience then
	StartAudioScene('CHARACTER_CHANGE_IN_SKY_SCENE')
end

SetBlackout(Config.Blackout)

if Config.ZombieDropLoot then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1)
			for i, entity in pairs(entitys) do
				playerX, playerY, playerZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
				pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, true))
				if DoesEntityExist(entity) == false then
					table.remove(entitys, i)
				end
				if IsPedDeadOrDying(entity, 1) == 1 then
					if GetPedSourceOfDeath(entity) == PlayerPedId() then
						playerX, playerY, playerZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
						pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, true))	
						if not IsPedInAnyVehicle(PlayerPedId(), false) then
							if(Vdist(playerX, playerY, playerZ, pedX, pedY, pedZ) < 1.5) then
								ESX.Game.Utils.DrawText3D({x = pedX, y = pedY, z = pedZ + 0.2}, '~c~PRESS ~b~[E]~c~ TO SEARCH', 0.8, 4)
								if IsControlJustReleased(1, 51) then
									if DoesEntityExist(GetPlayerPed(-1)) then
										RequestAnimDict("random@domestic")
										while not HasAnimDictLoaded("random@domestic") do
											Citizen.Wait(1)
										end
										TaskPlayAnim(PlayerPedId(), "random@domestic", "pickup_low", 8.0, -8, 2000, 2, 0, 0, 0, 0)
											
										randomChance = math.random(1, 100)
										randomLoot = Config.WeaponLoot[math.random(1, #Config.WeaponLoot)]
										randomItem = Config.ItemLoot[math.random(1, #Config.ItemLoot)]

										Citizen.Wait(2000)
										if randomChance > 0 and randomChance < Config.ProbabilityWeaponLoot then
											local randomAmmo = math.random(1, 30)
											GiveWeaponToPed(PlayerPedId(), randomLoot, randomAmmo, true, false)
											exports.pNotify:SendNotification({text = 'You found ' .. randomLoot, type = "success", timeout = 2500, layout = "centerRight", queue = "right"})
										elseif randomChance >= Config.ProbabilityWeaponLoot and randomChance < Config.ProbabilityMoneyLoot then
											TriggerServerEvent('esx_zombiesystem:moneyloot')
										elseif randomChance >= Config.ProbabilityMoneyLoot and randomChance < Config.ProbabilityItemLoot then
											TriggerServerEvent('esx_zombiesystem:itemloot', randomItem)
										elseif randomChance >= Config.ProbabilityItemLoot and randomChance < 100 then
											exports.pNotify:SendNotification({text = 'You not found nothing', type = "error", timeout = 2500, layout = "centerRight", queue = "right"})
										end
										ClearPedSecondaryTask(GetPlayerPed(-1))
										local model = GetEntityModel(entity)
										SetEntityAsNoLongerNeeded(entity)
										SetModelAsNoLongerNeeded(model)
										table.remove(entitys, i)
									end
								end
							end
						end
					end
				end
			end
		end
	end)
end

if Config.SafeZoneRadioBlip then
	for k, v in pairs(Config.SafeZoneCoords) do
		blip = AddBlipForRadius(v.x, v.y, v.z, v.radio)
		SetBlipHighDetail(blip, true)
		SetBlipColour(blip, 2)
		SetBlipAlpha (blip, 128)
	end
end

if Config.SafeZone then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1)
			for k, v in pairs(Config.SafeZoneCoords) do
				for i, entity in pairs(entitys) do
					pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, true))
					if(Vdist(pedX, pedY, pedZ, v.x, v.y, v.z) < v.radio)then
						--Citizen.Trace("Zombie Eliminated from refuge\n")
						SetEntityHealth(entity, 0)
						SetEntityAsNoLongerNeeded(entity)
						DeleteEntity(entity)
						table.remove(entitys, i)
					end
				end
			end
		end
	end)
end

RegisterNetEvent('esx_zombiesystem:clear')
AddEventHandler('esx_zombiesystem:clear', function()
	for i, entity in pairs(entitys) do
		local model = GetEntityModel(entity)
		SetEntityAsNoLongerNeeded(entity)
		SetModelAsNoLongerNeeded(model)
		table.remove(entitys, i)
		--Citizen.Trace("Zombie Eliminated\n")
	end
end)

if Config.Debug then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1)
			for i, entity in pairs(entitys) do
				local playerX, playerY, playerZ = table.unpack(GetEntityCoords(PlayerPedId(), true))
				local pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, false))	
				DrawLine(playerX, playerY, playerZ, pedX, pedY, pedZ, 250,0,0,250)
			end
		end
	end)
end

if Config.NoPeds then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1)
	    	SetVehicleDensityMultiplierThisFrame(0.0)
			SetPedDensityMultiplierThisFrame(0.0)
			SetRandomVehicleDensityMultiplierThisFrame(0.0)
			SetParkedVehicleDensityMultiplierThisFrame(0.0)
			SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
			local playerPed = GetPlayerPed(-1)
			local pos = GetEntityCoords(playerPed) 
			RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
			SetGarbageTrucks(0)
			SetRandomBoats(0)
		end
	end)
end
