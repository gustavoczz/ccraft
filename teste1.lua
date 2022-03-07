local function hasValue (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end
--------------

fuelOptions = {'minecraft:coal', 'minecraft:coal_block', 'minecraft:lava_bucket'}
local function findItemInInventory ()
    for i = 1, 16, 1 do
        turtle.select(i)
        itemDetails = turtle.getItemDetail()
        if (hasValue(fuelOptions, itemDetails.name)) do
            print("tem alguma coisa")
        end
    end
end


-- ----------------------

for x = 0, 3, 1 do
    turtle.turnLeft();
end
print("teste")