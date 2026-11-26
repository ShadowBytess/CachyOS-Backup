hl.on("hyprland.start", function()
    -- Wallpaper
    hl.exec_cmd("mpvpaper -o 'loop --volume=100' DP-1 /home/_lumi/media/wallpapers/furry-lofi-study-break-moewalls-com.mp4")

    -- Status bar
    hl.exec_cmd("waybar")

    -- Hyprpm reload
    hl.exec_cmd("hyprpm reload -n")

    -- Strip Spotify/YouTube trackers from copied links
	hl.exec_cmd("wl-paste --type text --watch /home/_lumi/.local/bin/clipclean")
end)
