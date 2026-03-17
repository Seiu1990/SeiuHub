-- WARNING: NONE OF THE SCRIPTS USED HERE ARE MINE
-- YOU CAN FIND THE ORIGINAL ONES IN THE LOADSTRINGS
-- Load Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))() 

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "Seiu's GUI",
    LoadingTitle = "Loading Seiu's GUI...",
    LoadingSubtitle = "Made with Rayfield",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "SeiuConfig"
    },
    Discord = {
       Enabled = false
    },
    KeySystem = false
})

-- Create Main Tab
local MainTab = Window:CreateTab("Main", 4483362458)

-- Create Section
local ButtonSection = MainTab:CreateSection("Buttons Section")

-- List of PlaceIds and corresponding functions
local placeFunctions = {
    [537413528] = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/Loader.lua'))() end,
    [13864661000] = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Seiu1990/SeiuHub/refs/heads/main/Break%20In%202.lua"))() end,
    [34567890] = function() print("Running code for PlaceId 34567890") end,
    [45678901] = function() print("Running code for PlaceId 45678901") end,
    [56789012] = function() print("Running code for PlaceId 56789012") end,
    [67890123] = function() print("Running code for PlaceId 67890123") end,
    [78901234] = function() print("Running code for PlaceId 78901234") end,
    [89012345] = function() print("Running code for PlaceId 89012345") end,
    [90123456] = function() print("Running code for PlaceId 90123456") end,
    [101234567] = function() print("Running code for PlaceId 101234567") end,
    [111234567] = function() print("Running code for PlaceId 111234567") end,
    [121234567] = function() print("Running code for PlaceId 121234567") end,
    [131234567] = function() print("Running code for PlaceId 131234567") end,
    [141234567] = function() print("Running code for PlaceId 141234567") end,
    [151234567] = function() print("Running code for PlaceId 151234567") end,
    [161234567] = function() print("Running code for PlaceId 161234567") end,
}

-- Create 14 Buttons
for i = 1, 14 do
    if i == 1 then
        -- Button 1 detects PlaceId and runs specific code
        MainTab:CreateButton({
            Name = "Detect PlaceID",
            Callback = function()
                local func = placeFunctions[game.PlaceId]
                if func then
                    func()
                else
                    print("No specific code for this PlaceId:", game.PlaceId)
                end
            end
        })
    else
        MainTab:CreateButton({
            Name = "Button "..i,
            Callback = function()
                print("Button "..i.." clicked!")
            end
        })
    end
end
