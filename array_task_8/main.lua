--[[

Дан одномерный массив.
Найти среднее арифметическое его элементов.
Вывести на экран только те элементы массива,
которые больше найденного среднего арифметического

]]

local array = { 1, -5, 0, 3, -4 };
local avg = 0;

for _, value in ipairs(array) do
    avg = avg + (value / #array);
end

for _, value in ipairs(array) do
    if value > avg then
        print(value);
    end
end
