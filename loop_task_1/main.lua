--[[

Вводятся два целых числа. Программа выводит кубы чисел, лежащих в промежутке от одного до другого

]]

---@param str string
---@return number
local function readLine(str)
    local value = nil;

    repeat
        io.write("Input " .. str .. ": ");

        local line = io.read();

        value = tonumber(line);
    until value ~= nil;

    return value or 0;
end

local x = readLine("x");
local y = readLine("y");

if x > y then
    x, y = y, x;
end

print(string.format("%-10s %-10s", "value", "value ^ 3"));

for i = x, y do
    print(string.format("%-10s %-10s", i, i ^ 3));
end