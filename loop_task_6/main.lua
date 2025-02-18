--[[

Напишите программу вычисления факториала натурального числа.
Число вводят с клавиатуры.
Факториалом числа называют произведение всех натуральных чисел до него включительно.
Например, факториал числа 5 равен произведению 1 * 2 * 3 * 4 * 5 = 120

]]

local value = 0;

repeat
    io.write("Input number: ");

    local line = io.read();

    if line ~= nil then
        value = line;
    end
until value ~= nil;

---@param num number
---@return number
local function factorial(num)
    if num == 1 then
        return 1;
    end

    return num * factorial(num - 1);
end

print("Factorial of " .. value .. " is " .. factorial(value));
