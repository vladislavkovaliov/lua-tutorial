
function printWelcomeMsg(argument)
  return "Input " .. argument .. ": ";
end

function readLineString(io, argument)
  local line = nil;
  
  repeat
    io.write(printWelcomeMsg(argument));
    
    line = io.read();
    line = tostring(line);
  until line ~= nil;
  
  return line;
end

function readLineNumber(io, argument)
  local line = nil;
  
  repeat
    io.write(printWelcomeMsg(argument));
    
    line = io.read();
    line = tonumber(line);
  until line ~= nil;
  
  return line;
end

local name = readLineString(io, "name");
local surName = readLineString(io, "surName");
local age = readLineNumber(io, "age");

print("---");

print(string.format("%-10s %-15s %-5s", "NAME", "SURNAME", "AGE"));
print(string.format("%-10s %-15s %-5d", name, surName, age));

print("---");
print("DONE");