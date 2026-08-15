-- ╔══════════════════════════════════════════╗
-- ║                  INPUT                   ║
-- ╚══════════════════════════════════════════╝

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,
        sensitivity  = 0.0,

        -- Disable mouse acceleration
        force_no_accel = true,

            touchpad = {
                natural_scroll = false,
            },
    },
})

-- ════════════════════════════════════════════
-- GESTURES
-- ════════════════════════════════════════════

-- Three-finger horizontal swipe switches workspaces
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- ════════════════════════════════════════════
-- PER-DEVICE SETTINGS
-- ════════════════════════════════════════════

-- Wireless mouse
hl.device({
    name = "mosart-semi.-2.4g-input-device",
    sensitivity = -0.40,
})
