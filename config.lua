Config = {}

Config.SpawnZombie = 10
Config.MinSpawnDistance = 80
Config.MaxSpawnDistance = 100
Config.DespawnDistance = 120

Config.ZombieDropLoot = true
Config.ProbabilityWeaponLoot = 3 -- 3%
Config.ProbabilityMoneyLoot = 40 -- 40-3 = 37%
Config.ProbabilityItemLoot = 63 -- 63-40-3 = 20%
--Weapons, Money and Items are 60% and 40% is 'you not found nothing' alert, see the code to understand.
Config.WeaponLoot = {
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_PISTOL",
	"WEAPON_MACHETE",
	"WEAPON_CROWBAR",
	"WEAPON_BAT",
	"WEAPON_HATCHET"
}
Config.ItemLoot = {
	'water',
	'bread'
}

Config.NoPeds = true
Config.Blackout = true
Config.MuteAmbience = true
Config.NotHealthRecharge = true
Config.SafeZone = true
Config.SafeZoneRadioBlip = true
Config.SafeZoneCoords = {
	{x = -1118.1, y = 4926.28, z = 218.33, radio = 80.0},
	{x = -1903.33, y = 4614.26, z = 57.01, radio = 20.0}
}

Config.Debug = false
