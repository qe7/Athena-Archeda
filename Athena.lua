--[[
Lua script made by shae.
Literally just for me to dick around with and have fun with.
]]--

-- Variables
local watermarkFont = render.create_font("Tahoma", 14, 500, 0)
local height = engine.get_screen_height()
local width = engine.get_screen_width()
--

-- UI
ui.checkbox("lua", "lua_output", "Enable watermark.", "enable_watermark_check_box")
--

-- Functions
local function drawWatermark()
    if (ui.get_value("enable_watermark_check_box")) then
        if (engine.is_in_game()) then
            render.text(width - 120, 8, watermarkFont, "Athena.lua [debug]", false, 255, 255, 255, 255)
        end
    end
end
--

-- Hooks
hooks.add_to_hook("paint_traverse", drawWatermark)
--