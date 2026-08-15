-- ╔══════════════════════════════════════════╗
-- ║              GENERAL LOOK                ║
-- ╚══════════════════════════════════════════╝

hl.config({
  general = {
    gaps_in  = 5,
    gaps_out = 20,

    border_size = 2,

    col = {
      active_border = {
        colors = {
          RED .. "ee",
          ORANGE .. "ee",
        },
        angle = 45,
      },

      inactive_border = GRAY .. "aa",
    },

    resize_on_border = false,

    allow_tearing = false,

    layout = "dwindle",
  },
})
