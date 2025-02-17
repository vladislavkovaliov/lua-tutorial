--[[

Напишите программу, которая генерирует случайное трехзначное целое число 
и считает сумму и произведение его цифр

]]

local x = math.random(100, 999);
local y = math.random(100, 999);

print(string.format("%-10s %-15s %-5s", "x", "y", "result"));
print(string.format("%-10s %-15s %-5d", x, y, x * y));

