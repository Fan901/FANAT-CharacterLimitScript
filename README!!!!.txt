INSTATL:

1) Copy this:

QBCore.Functions.CreateCallback("qb-multicharacter:server:GetNumberOfCharacters", function(source, cb)
    local src = source
    local license = QBCore.Functions.GetIdentifier(src, 'license')
    local numOfChars = 0
    maxchar = MySQL.scalar.await('SELECT `maxchars` FROM `players` WHERE (license, cid) = (?,?)', {license, 1})
    chars = tostring(maxchar)
    
    if chars == '2' then
        numOfChars = 2
    else 
        numOfChars = Config.DefaultNumberOfCharacters
    end

    cb(mochras)
end)

2) Paste and replace this function in QB-Multicharacter at line 164

3) Create a column with name "maxchars"(Type: INT, default value "1") in your player database

USE:

For change player max character use command /setPlayerMaxChars [Player ID] [Amount of characters]

