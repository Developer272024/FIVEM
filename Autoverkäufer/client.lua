local jobVehicles = {
    Autoverkäufer={}
}

RegisterCommand("spawnvehicle", function (source, args, rawCommand)
local jobName="Autoverkäufer"
local vehicleName=args[1] or "adder"
local PlayerPed = GetPlayerPed(-1)
local pos = GetEntityCoords(PlayerPed)

requestModel(vehicleName) do
    wait(500)
end

local vehicle =CreateVehicle(vehicleName, pos.x, pos.y, pos.z, GetEntitiyHeading(playerPed), true, false)
TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
end, false)

if playerData.Job and jobVehicles[PlayerData.job] then 
    jobName = PlayerData.job
end

local vehiclesForJob = jobVehicles[jobName]
local vehicleName = vehiclesForJob[math.random(1, #vehiclesForJob)]

RequestModel(vehicleName)

while not HasModelLoaded(vehicleName) do 
    wait(500)
end

local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, GetEntitiyHeading(playerPed), true,false)
TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
end, false



