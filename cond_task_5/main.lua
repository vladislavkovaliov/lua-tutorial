--[[
По введенным длинам трех отрезков определить,
можно ли из них составить треугольник при условии, 
что у треугольника сумма любых двух сторон должна быть не меньше третьей
]]

local function checkTriangle(a, b, c)
    return a + b > c and a + c > b and b + c > a;
end


local a = nil;
local b = nil;
local c = nil;

repeat
    io.write("Input a: ");

    local line = io.read();

    a = tonumber(line);
until a ~= nil;

repeat
    io.write("Input b: ");

    local line = io.read();

    b = tonumber(line);
until b ~= nil;

repeat
    io.write("Input c: ");

    local line = io.read();

    c = tonumber(line);
until c ~= nil;

if checkTriangle(a, b, c) then
    print("Triangle can be created");
else
    print("Triangle can't be created");
end