--[[

Найти максимальный элемент массива. Вывести на экран его значение и индекс

]]

local array = { 1, -5, 0, 3, -4 };
local max = 0;
local maxIndex = 0;

for key, value in pairs(array) do
    if max <= value then
        max = value;
        maxIndex = key;
    end
end

print("max = " .. max);
print("index = " .. maxIndex);
