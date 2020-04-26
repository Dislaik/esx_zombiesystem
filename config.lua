Config = {}

Config.SpawnZombie = 10
Config.MinSpawnDistance = 80
Config.MaxSpawnDistance = 100
Config.DespawnDistance = 120

Config.ZombieDropLoot = true
Config.ProbabilityWeaponLoot = 3 -- 3%
Config.ProbabilityMoneyLoot = 33 -- 3-33 = 30%
Config.ProbabilityItemLoot = 53 -- 53-43-3 = 7%
--Weapons and Money are 40% and 60% is 'you not found nothing' alert, see the code to understand.
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
	'bandage',
	'medikit'
}



Config.ObjectDropLoot = true --false if you experience low performance of server
Config.ObjectsLoot = {
    'prop_box_ammo03a'
}

Config.ProbabilityWeaponLootObject = 2 -- 2%
Config.ProbabilityMoneyLootObject = 22 -- 22-2 20%
Config.ProbabilityItemLootObject = 42 -- 52-22-2 18%
--Weapons and Money are 40% and 60% is 'you not found nothing' alert, see the code to understand.
Config.WeaponLootObject ={
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_PISTOL",
	"WEAPON_MACHETE",
	"WEAPON_CROWBAR",
	"WEAPON_BAT",
	"WEAPON_HATCHET"
}
Config.ItemLootObject = {
	'bread',
	'water'
}



Config.NoPeds = true
Config.Blackout = true
Config.MuteAmbience = true
Config.NotHealthRecharge = true
Config.SafeZone = true
Config.SafeZoneRadioBlip = true
Config.SafeZoneCoords = {
	{x = 226.56, y = -1993.84, z = 19.55, radio = 30.0}
}

Config.Debug = false
