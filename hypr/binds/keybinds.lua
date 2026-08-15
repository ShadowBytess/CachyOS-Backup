-- ╔══════════════════════════════════════════╗
-- ║               KEYBINDS                   ║
-- ╚══════════════════════════════════════════╝

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
    mainMod .. " + R",
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
