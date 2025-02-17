--[[
Дана следующая функция y = f(x):y = x - 2, при x > 0;y = 0, при x = 0;y = |x|, 
при x < 0.Написать программу, 
определяющую значение y по переданному значению x
]]

---@param x number
---@return number
local function calculate(x)
    local _x = assert(x, "x is required");

    if _x > 0 then
        return _x - 2;
    elseif _x == 0 then
        return 0;
    else
        return math.abs(x);
    end
end

local x = 0;

repeat
    io.write("Input x: ");

    local line = io.read();

    x = tonumber(line);
until x ~= nil;

print("y = " .. calculate(x));