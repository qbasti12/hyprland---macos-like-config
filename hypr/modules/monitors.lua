------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "DP-6",
    mode     = "3840x2160@144",
    position = "0x0",
    scale    = "1.5",
})

hl.monitor({
    output   = "HDMI-A-4",
    mode     = "1920x1080@60",
    position = "2560x180",
    scale    = "1",
})

hl.workspace_rule({ workspace = "1", monitor = "DP-6", persistent = true, default = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-6", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-6", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "DP-6", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "DP-6", persistent = true })

hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-4", persistent = true, default = true })
hl.workspace_rule({ workspace = "7", monitor = "HDMI-A-4", persistent = true })
hl.workspace_rule({ workspace = "8", monitor = "HDMI-A-4", persistent = true })
hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-4", persistent = true })
hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-4", persistent = true })
