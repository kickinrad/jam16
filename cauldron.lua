-- cauldron.lua

cauldron = {}

testPatient = {"fr","fr","rt","ey","nt"}

local sortTreatment = function (a, b) return a < b end

function addToCauldron(x)
  table.insert(cauldron, x)
end

function treatPatient()
  print("W'ere gonna treat ya lmao")
  table.sort(testPatient, sortTreatment)
  table.sort(cauldron, sortTreatment)

--[[  print("testpatient:...")
  for i=1, table.getn(testPatient) do
    print(i, ':', testPatient[i])
  end

  print("cauldron:...")
  for i=1, table.getn(cauldron) do
    print(i, ':', cauldron[i])
  end--]]

  --compare with testPatient

  status = false
  for i=1,table.getn(testPatient) do
    if testPatient[i] == cauldron[i] then
      status = true
    else
      status = false
      break
    end
  end

  if status then
    print("Treated lmao")
  else
    print("sorry i messed up lolz")
  end

  cauldron = {} -- empty cauldron
end

function testDrawCauldron()
  love.graphics.print(cauldron, 5, 545)
  love.graphics.print(testPatient, 550, 300)
end