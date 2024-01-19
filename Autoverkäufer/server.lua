local spawnLocation = vector3(0.0, 0.0, 0.0) --Die Kordinaten, an den das Fahrzeug gespawnt werden soll.
local spawnHeading=0.0
local vehicleName="rx7v" -- Der Name des zu Fahrzeuges des zu spawnenden Fahrzeuges

RegisterServerEvent("spawnvehicle")
AddEventHandler("spawnvehicle", function ()
    TriggerClientEvent("chatMessage", -1, "Server", {255, 0, 0}, "Ein neues Fahrzeug wurde gespawnt!")
    SpawnVehicle()
end)

funcion SpawnVehicle()
RequstModel(vehicleName)

while not HasModelLoaded(vehicleName) do 
    Wait(500)

local vehicle= CreateVehicle(vehicleName, spawnLocation.x,spawnLocation.y, spawnLocation.z, spawnHeading, true, false)
TriggerClientEvent("chatMessage", "Server", {255, 0, 0}, "Fahrzeug gespawnt:"  rx7v)
end