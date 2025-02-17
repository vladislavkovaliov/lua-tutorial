--[[

Вводятся две буквы. Вывести на экран их порядковые номера в алфавите, а также количество символов между ними.

]]

function letterPosition(letter)
    local alphabet = "abcdefghijklmnopqrstuvwxyz";
    local pos = string.find(alphabet, letter:lower());
    
    return pos;
end

local input = nil;

repeat
  io.write("Input two letter(example: ab): ");
  
  local data = io.read();
  
  input = data;
until #data == 2 and data:match("^[a-zA-Z]+$");

print(input:sub(1, 1) .. " position is " .. letterPosition(input:sub(1, 1):lower()));
print(input:sub(2, 2) .. " position is " .. letterPosition(input:sub(2, 2):lower()));

local max = math.max(
  letterPosition(input:sub(1, 1)),
  letterPosition(input:sub(2, 2))
);
local min = math.min(
  letterPosition(input:sub(1, 1)),
  letterPosition(input:sub(2, 2))
);

print("range is " .. (max - min));