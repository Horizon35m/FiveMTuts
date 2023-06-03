function giveWeapon(gun, ammo)
    GiveWeaponToPed(PlayerPedId(), GetHashKey(gun), ammo, false, true)
end

RegisterCommand('gun', function(source, args, rawCommand)
    print(args[1])
    print(args[2])
    giveWeapon(args[1], args[2])
end)

RegisterCommand('removeGun', function()
    RemoveAllPedWeapons(PlayerPedId())
end)