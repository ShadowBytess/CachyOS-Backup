-- ╔══════════════════════════════════════════╗
-- ║               DECORATION                 ║
-- ╚══════════════════════════════════════════╝

hl.config({
  decoration = {
    -- Rounded, but not excessively rounded
    rounding       = 10,
    rounding_power = 2,

    -- Keep application contents fully opaque
    active_opacity   = 1.0,
    inactive_opacity = 1.0,

    -- Subtle dark shadow
    shadow = {
      enabled      = true,
      range        = 6,
      render_power = 3,
      color        = 0xee0D0D0D,
    },

    -- Subtle blur
    blur = {
      enabled   = true,
      size      = 4,
      passes    = 2,
      vibrancy  = 0.12,
    },
  },
})
