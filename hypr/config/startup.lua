-- ╔══════════════════════════════════════════╗
-- ║                 STARTUP                  ║
-- ╚══════════════════════════════════════════╝

hl.on("hyprland.start", function()
-- Wallpaper
hl.exec_cmd("hyprpaper")

-- Status bar
hl.exec_cmd("waybar")
end)
