--[[

С клавиатуры вводятся два числа, каждое из которых присваивается своей переменной. 
После этого программа должна сама выполнять обмен значений переменных, 
то есть первой присваивать значение второй, а второй - значение первой; 
в конце выводить значения измененных переменных на экран

]]


function printWelcomeMsg(argument)
  return "Enter number " .. argument .. ": ";
end

function readLine(io, argument)
  local line = nil;
  
  repeat
    io.write(printWelcomeMsg(argument));
    
    line = io.read();
    
    line = tonumber(line);
  until line ~= nil;
  
  return line;
end


local x = readLine(io, "x");
local y = readLine(io, "y");

print("---");

local temp = x;

x = y;
y = temp;

temp = nil;

print("y = " .. y);
print("x = " .. x);

print("DONE");