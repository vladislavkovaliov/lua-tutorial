--[[
Вводится целое число. Программа должна определять, является ли число четным или нечетным.
]]

--@param number number
--@return boolean
local function isEven(number)
    return number % 2 == 0;
end

local input = nil;

repeat
    io.write("Input number: ");

    local line = io.read();

    input = tonumber(line);
until input ~= nil;

if isEven(input) then
    print("Number is even");
else
    print("Number is odd");
end
