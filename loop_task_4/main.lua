--[[

Вывести число обратное введенному по порядку составляющих его цифр.
Например, введено 3425, надо вывести 5243

]]


local value = 0;

repeat
    io.write("Input number: ");

    local line = io.read();

    if line ~= nil then
        value = line;
    end
until value ~= nil;

repeat
    local rest = value % 10;

    io.write(rest);

    value = math.floor(value / 10);
until value == 0;
