--[[

Определить, принадлежит ли точка с координатами (x; y) 
кругу радиуса R с центром в начале координат. 
Пользователь вводит координаты точки и радиус круга

]]

---@param x number
---@param y number
---@param radius number
---@return boolean
local function calculate(x, y, radius)
    return x^2 + y^2 <= radius^2;
end

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
local radius = readLine("radius");

if calculate(x, y, radius) then
    print("Point belongs to circle");
else
    print("Point doesn't belong to circle");
end
