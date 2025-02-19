--[[

В одномерном массиве найти минимальный и максимальный элементы.
Вычислить их разность.
Например, дан массив [3, 5, 9, 4, 2, 6].
Максимальным числом является 9,
минимальным является 2.
Разность составляет 9 - 2 = 7

]]

local array = { 3, 5, 9, 4, 2, 6 };

local max = array[1];
local min = array[1];

for _, value in ipairs(array) do
    max = math.max(max, value);
    min = math.min(min, value);
end

print(max .. " - " .. min .. " = " .. max - min);
