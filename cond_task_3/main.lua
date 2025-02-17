--[[
Вводятся три числа. Программно определить максимальное из них.
]]

local x = nil;
local y = nil;
local z = nil;

repeat
    io.write("Input x: ");

    local line = io.read();

    x = tonumber(line);
until x ~= nil ;

repeat
    io.write("Input y: ");

    local line = io.read();

    y = tonumber(line);
until x ~= nil and y ~= nil;

repeat
    io.write("Input z: ");

    local line = io.read();

    z = tonumber(line);
until x ~= nil and y ~= nil and z ~= nil;

local max = math.max(x, y, z);

print("Max number is " .. max);