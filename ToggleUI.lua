-- Function to Toggle GUI Visibility
local function toggleGui(gui)
    if gui.Enabled then
        gui.Enabled = false
    else
        gui.Enabled = true
    end
end

-- Detect Which UI Library is Present
local UI_Library = nil
if game:GetService("CoreGui"):FindFirstChild("Rayfield") then
    UI_Library = game:GetService("CoreGui").Rayfield
elseif game:GetService("CoreGui"):FindFirstChild("Fluent") then
    UI_Library = game:GetService("CoreGui").Fluent
elseif game:GetService("CoreGui"):FindFirstChild("Orion") then
    UI_Library = game:GetService("CoreGui").Orion
elseif game:GetService("CoreGui"):FindFirstChild("Kavo") then
    UI_Library = game:GetService("CoreGui").Kavo
else
    error("No supported UI library found!")
end

-- Create the Toggle Button (Specifics may vary by UI library)
local ToggleButton = UI_Library:CreateButton({
    Name = "ToggleGUI",
    Text = "Toggle GUI",
    Callback = function()
        toggleGui(UI_Library) -- Pass the detected UI library to the function
    end
})
