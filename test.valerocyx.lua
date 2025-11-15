-- Test File untuk Valerocyx UI Library
-- Simpan sebagai test.valerocyx.lua

local ValerocyxUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/valerocyx/valerocyx-ui-library/master/library.lua"))()

local start_time = tick()

-- Test window creation
local window = ValerocyxUI:CreateWindow({
    Title = "Valerocyx Test | Premium",
    Width = 550,
    Height = 500
})

-- Test tabs
local mainTab = window:CreateTab("Main")
local settingsTab = window:CreateTab("Settings")

-- Test sections
local testSection = mainTab:CreateSection("Test Controls", "left")
local infoSection = mainTab:CreateSection("Information", "right")

-- Test toggle dengan tooltip
local testToggle = testSection:CreateToggle(
    "Test Toggle", 
    false, 
    "Ini adalah test toggle untuk demonstration",
    function(value)
        print("Toggle value:", value)
    end
)

-- Test button
testSection:CreateButton(
    "Test Button", 
    "Tombol test untuk demonstration",
    function()
        print("Button clicked!")
        testToggle.SetValue(not testToggle.GetValue())
    end
)

-- Test slider
testSection:CreateSlider(
    "Test Slider",
    1, 
    100, 
    50,
    "Slider untuk test range values",
    function(value)
        print("Slider value:", value)
    end
)

-- Info labels
infoSection:CreateLabel("Valerocyx UI Library v1.0")
infoSection:CreateLabel("Status: Testing", true)
infoSection:CreateLabel("Load Time: " .. string.format("%.2f", tick() - start_time) .. "s", true)

-- Settings tab
local configSection = settingsTab:CreateSection("Configuration", "left")
configSection:CreateButton("Save Settings", function()
    print("Settings saved!")
end)

configSection:CreateButton("Unload UI", function()
    window:Destroy()
    print("UI unloaded!")
end)

print("Valerocyx Test UI loaded successfully!")
return window