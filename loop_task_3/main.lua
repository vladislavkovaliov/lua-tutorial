--[[

Вводится натуральное число.
Найти сумму и произведение цифр, из которых состоит это число.
Например, сумма цифр числа 253 равна 10-ти, так как 2 + 5 + 3 = 10.
Произведение цифр числа 253 равно 30-ти, так как 2 * 5 * 3 = 30

]]

local value = 0;

repeat
    io.write("Input number: ");

    local line = io.read();

    if line ~= nil then
        value = line;
    end
until value ~= nil

local sum = 0;
local mul = 1;

repeat
    local rest = value % 10;

    value = math.floor(value / 10);

    sum = sum + rest;
    mul = mul * rest;
until value == 0;

print("sum = " .. sum);
print("mul = " .. mul);
