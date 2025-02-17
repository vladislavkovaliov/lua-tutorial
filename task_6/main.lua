--[[

Вводится четырехзначное целое число. 
Программно вычислить и вывести на экран сумму произведений его первых двух цифр 
и последних двух цифр.

]]
local _number = nil;

repeat
  io.write("Input 4-digital number: ");
  
  local line = io.read();
  
  _number = tonumber(line);
  
until _number ~= nil and line:len() == 4;
local x = math.floor(_number / 100);
local y = _number - (x * 100);
local mX = math.floor(x / 10) * (x - math.floor(x / 10) * 10);
local mY = math.floor(y / 10) * (y - math.floor(y / 10) * 10);

print(string.format("%-10s %-10s %-10s %-10s %10s", "x", "y", "mX", "mY", "result"));
print(string.format("%-10s %-10s %-10d %-10d %10d", x, y, mX, mY, mX + mY));



