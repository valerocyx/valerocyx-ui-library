-- Valerocyx UI Library v1.0
-- Custom Built Library - Minimalist & Professional

local ValerocyxUI = {}
ValerocyxUI.__index = ValerocyxUI

-- Theme System
ValerocyxUI.Themes = {
    Dark = {
        Primary = Color3.fromRGB(28, 28, 28),
        Secondary = Color3.fromRGB(35, 35, 35),
        Accent = Color3.fromRGB(74, 144, 226),
        Text = Color3.fromRGB(255, 255, 255),
        SubText = Color3.fromRGB(180, 180, 180),
        Background = Color3.fromRGB(20, 20, 20)
    }
}

-- Layout Densities (untuk future compact mode)
ValerocyxUI.Layouts = {
    Normal = {
        SectionSpacing = 15,
        ControlSpacing = 8,
        Padding = 10,
        FontSize = 12,
        TitleSize = 14
    },
    Compact = {
        SectionSpacing = 10,
        ControlSpacing = 5,
        Padding = 6,
        FontSize = 11,
        TitleSize = 13
    }
}

function ValerocyxUI:CreateWindow(config)
    config = config or {}
    local self = setmetatable({}, ValerocyxUI)
    
    -- Configuration dengan default values
    self.Config = {
        Title = config.Title or "Valerocyx",
        Width = config.Width or 500,
        Height = config.Height or 500,
        Keybind = config.Keybind or Enum.KeyCode.Insert,
        Theme = config.Theme or "Dark",
        Layout = config.Layout or "Normal"
    }
    
    self.ActiveTab = nil
    self.Tabs = {}
    self.Controls = {} -- Store semua controls untuk management
    
    self:CreateUI()
    self:BindEvents()
    
    return self
end

-- ... (rest of your existing library code remains the same)

-- Tambahkan method GetValue untuk toggle di section CreateToggle
-- Di dalam function section:CreateToggle, tambahkan:
function toggle:GetValue()
    return value
end

-- Jadi akan seperti ini:
function section:CreateToggle(name, defaultValue, tooltip, callback)
    local toggle = {
        Type = "Toggle",
        Value = defaultValue or false,
        GetValue = function() return value end,  -- Tambahkan ini
        SetValue = function(newValue)            -- Ini sudah ada
            value = newValue
            toggleButton.BackgroundColor3 = value and self:GetTheme("Accent") or self:GetTheme("Secondary")
        end
    }
    -- ... rest of toggle code