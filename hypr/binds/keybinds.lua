local mainMod = "SUPER"

-- Applications

hl.bind(
    mainMod .. " + Q",
    hl.dsp.exec_cmd(terminal)
)

hl.bind(
    mainMod .. " + E",
    hl.dsp.exec_cmd(fileManager)
)

hl.bind(
    mainMod .. " + S",
    hl.dsp.exec_cmd(menu)
)

hl.bind(
    mainMod .. " + B",
    hl.dsp.exec_cmd(browser)
)


-- Workspaces
for i = 1, 10 do
    local key = i == 10 and "0" or tostring(i)

    -- Switch workspace
    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({
            workspace = i,
        })
    )

    -- Move window to workspace
    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({
            workspace = i,
        })
    )
    end

    -- Close window

    hl.bind(
        mainMod .. " + C",
        hl.dsp.window.close()
    )

    -- Move windows with mouse

    hl.bind(
        mainMod .. " + mouse:272",
        hl.dsp.window.drag(),
            {
                mouse = true,
            }
    )

    -- Resize windows with mouse

    hl.bind(
        mainMod .. " + mouse:273",
        hl.dsp.window.resize(),
            {
                mouse = true,
            }
    )

hl.bind(
    "Print",
    hl.dsp.exec_cmd("hyprshot -m region --clipboard-only")
)

hl.bind(
    mainMod .. " + Print",
    hl.dsp.exec_cmd("hyprshot -m window --clipboard-only")
)

hl.bind(
    "ALT + PRINT",
    hl.dsp.exec_cmd("hyprshot -m region -o /home/_lumi/Pictures/Screenshots")
)

hl.bind(
    mainMod .. " + X",
    hl.dsp.exec_cmd("sh /home/_lumi/.local/bin/nautilus-codium")
)

-- Media controls (Menu + arrows, via keyd)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous")
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause")
)

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next")
)

hl.config({
    input = {
        kb_options = "compose:menu",
    }
})


-- Blox Fruits AFK autoclicker

hl.bind(
    mainMod .. " + F8",
    hl.dsp.exec_cmd("~/.local/bin/blox-afk toggle")
)

hl.bind(
    mainMod .. " + SHIFT + F8",
    hl.dsp.exec_cmd("~/.local/bin/blox-afk stop")
)
