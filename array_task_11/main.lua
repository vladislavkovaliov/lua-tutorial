--[[

Напишите программу, которая находит в массиве числа,
отклоняющиеся от среднего значения более, чем на 50%

]]

local array = { 5, 6, 9, 1, 3, 12, 11, 0, 8, 4, };
local avg = 0;

for _, value in ipairs(array) do
    avg = avg + (value / #array);
end

for _, value in ipairs(array) do
    if math.abs(value - avg) / avg > 0.5 then
        io.write(value .. " ");
    end
end
