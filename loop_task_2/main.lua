--[[

Определить, сколько в числе четных цифр,
а сколько нечетных. Число вводится с клавиатуры

]]

local countEven = 0;
local countOdd = 0;

---@param number number
---@return boolean
local function isEven(number)
    return number % 2 == 0;
end

local number = 0;

repeat
    io.write("Input number: ");

    local line = tonumber(io.read());

    if line ~= nil then
        number = line
    end
until number ~= nil;

while number > 0 do
    local digit = number % 10;

    if isEven(digit) then
        countEven = countEven + 1;
    else
        countOdd = countOdd + 1;
    end

    number = math.floor(number / 10);
end

print(string.format("Even: %d, Odd: %d", countEven, countOdd));
