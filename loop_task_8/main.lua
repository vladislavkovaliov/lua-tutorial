--[[

Выведите на экран ряд Фибоначчи до n-ного элемента включительно.
Номер последнего элемента (n) вводится с клавиатуры.
Числа Фибоначчи – это ряд чисел,
в котором каждое следующее число равно
сумме двух предыдущих: 0, 1, 1, 2, 3, 5, 8, 13, ...

]]

local value = 0;

repeat
    io.write("Input number: ");

    local line = io.read();

    if line ~= nil then
        value = line;
    end
until value ~= nil;

local prev = 0;
local cur = 1;

for i = 1, value do
    io.write(prev .. ", ");

    local temp = prev + cur;

    prev = cur;
    cur = temp;
end
