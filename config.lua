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



Config.ObjectDropLoot = true
Config.ObjectsLoot = {
    'prop_box_ammo03a',
    'prop_bin_03a',
    'prop_bin_02a',
    'prop_bin_01a',
    'prop_bin_04a',
    'prop_bin_05a',
    'prop_bin_06a',
    'prop_bin_07a',
    'prop_bin_07b',
    'prop_bin_07c',
    'prop_bin_07d',
    'prop_bin_08open',
    'prop_cs_bin_02',
    'prop_box_wood01a',
    'prop_box_wood03a',
    'prop_box_wood07a',
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
