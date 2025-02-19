--[[

Напишите программу, которая удаляет из числа определенную цифру.
Если таких цифр в числе несколько, удаляет все из них

]]

local value = 12534567895;
local shouldRemove = 5;
local copy = value;

local result = 0.0;
local count = -1

while copy > 0 do
    local rest = copy % 10;

    if rest ~= shouldRemove then
        result = rest + result / 10;
        count = count + 1;
    end

    copy = math.floor(copy / 10);
end

print(result * (10 ^ count));
