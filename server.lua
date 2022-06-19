print([[ ^5[^2KAC ALLOWLIST^5]

                                                                                                          
    ^288      a8P  88        88   ad88888ba   88        88 ^5  ad88888ba   88                                     
    ^288    ,88'   88        88  d8"     "8b  88        88 ^5 d8"     "8b  88                                     
    ^288  ,88"     88        88  Y8,          88        88 ^5 Y8,          88                                     
    ^288,d88'      88        88  `Y8aaaaa,    88aaaaaaaa88 ^5 `Y8aaaaa,    88,dPPYba,    ,adPPYba,   8b,dPPYba,   
    ^28888"88,     88        88    `"""""8b,  88""""""""88 ^5   `"""""8b,  88P'    "8a  a8"     "8a  88P'    "8a  
    ^288P   Y8b    88        88          `8b  88        88 ^5         `8b  88       88  8b       d8  88       d8  
    ^288     "88,  Y8a.    .a8P  Y8a     a8P  88        88 ^5 Y8a     a8P  88       88  "8a,   ,a8"  88b,   ,a8"  
    ^288       Y8b  `"Y8888Y"'    "Y88888P"   88        88 ^5  "Y88888P"   88       88   `"YbbdP"'   88`YbbdP"'   
                                                                                                 88           
                                                                                                 88        
                                                                            AllowListEnabled!  -- .gg/3kKxdY3nAW
                                                Need AntiCheat? .gg/3kKxdY3nAW


]])



AddEventHandler('playerConnecting', function (playerName,setKickReason, deferrals)
    local steamID  = "n/a"

    for k,v in ipairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            steamID = v
        end
    end

    local stt = tostring(steamID)
    deferrals.defer()
    Wait(0)
    deferrals.update("[🍃KushAllowlist🍃]: "..Ksh.LoadingMessage)
    Wait(0)

    if not Ksh.WhitelistedSteams[stt] then
        deferrals.done("[🍃KushAllowlist🍃]: "..Ksh.KickMessage)
        print(' ')   
        print("^7[^2Kush^5Allowlist^7] | ^1".. stt .." is trying to join the server, but they arent on whitelist!")    
        print(' ')
    else
        deferrals.done()
        print(' ')   
        print("^7[^2Kush^5Allowlist^7] | ^2".. stt .." is allowed to joining the server!")    
        print(' ')
    end
end)