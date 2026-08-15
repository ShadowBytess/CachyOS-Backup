-- ╔══════════════════════════════════════════╗
-- ║                 LAYOUTS                  ║
-- ╚══════════════════════════════════════════╝

-- ════════════════════════════════════════════
-- DWINDLE
-- ════════════════════════════════════════════

hl.config({
    dwindle = {
        -- Keep the current split direction when creating new windows
        preserve_split = true,
    },
})

-- ════════════════════════════════════════════
-- MASTER
-- ════════════════════════════════════════════

hl.config({
    master = {
        -- New windows are placed as master
        new_status = "master",
    },
})

-- ════════════════════════════════════════════
-- SCROLLING
-- ════════════════════════════════════════════

hl.config({
    scrolling = {
        -- A single-column workspace becomes fullscreen
        fullscreen_on_one_column = true,
    },
})
