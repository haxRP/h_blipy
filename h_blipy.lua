local blips = {
    -- Przykładowo: {title="", colour=, id=, x=, y=, z=}, 1. Nazwa, 2. Kolor, 3. Wygląd blipa, 4. Coordy XYZ ( Link do blipów: https://wiki.gtanet.work/index.php?title=Blips )

       {title="TEST", colour=1, id=89, x = 1, y = 2, z = 1},
  }
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.00)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
