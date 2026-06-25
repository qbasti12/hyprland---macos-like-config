-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
    -- Daemons & UI
    hl.exec_cmd("waybar")
    hl.exec_cmd(
        "awww-daemon && awww img /home/qbasti/Pictures/minimalistic-wallpaper-collection/images/gavrl-snowy-forest.jpg --transition-type none")
    hl.exec_cmd("swaync")

    -- GTK Theme & Darkmode auf Catppuccin Mocha setzen
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-mocha-blue-standard+default'")

    -- Cursor für GTK-Apps (z.B. Thunar)
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'macos-tahoe-cursor'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")

    -- Cursor für Hyprland selbst
    hl.exec_cmd("hyprctl setcursor macos-tahoe-cursor 24")
end)
