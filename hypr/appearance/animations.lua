-- ╔══════════════════════════════════════════╗
-- ║               ANIMATIONS                 ║
-- ╚══════════════════════════════════════════╝

hl.config({
    animations = {
        enabled = true,
    },
})

-- ════════════════════════════════════════════
-- CURVES
-- ════════════════════════════════════════════

hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        {0.23, 1},
        {0.32, 1},
    },
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = {
        {0.65, 0.05},
        {0.36, 1},
    },
})

hl.curve("linear", {
    type = "bezier",
    points = {
        {0, 0},
        {1, 1},
    },
})

hl.curve("almostLinear", {
    type = "bezier",
    points = {
        {0.5, 0.5},
        {0.75, 1},
    },
})

hl.curve("quick", {
    type = "bezier",
    points = {
        {0.15, 0},
        {0.1, 1},
    },
})

-- ════════════════════════════════════════════
-- SPRING
-- ════════════════════════════════════════════

hl.curve("easy", {
    type = "spring",
    mass = 1,
    stiffness = 72,
    dampening = 16,
})

-- ════════════════════════════════════════════
-- ANIMATIONS
-- ════════════════════════════════════════════

-- Global
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})

-- Borders
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5,
    bezier = "easeOutQuint",
})

-- Windows
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.5,
    spring = "easy",
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4,
    spring = "easy",
    style = "popin 85%",
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 2,
    bezier = "quick",
    style = "popin 85%",
})

-- Fading
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.8,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.6,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3,
    bezier = "quick",
})

-- Layers / menus
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.8,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
    style = "fade",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.7,
    bezier = "quick",
    style = "fade",
})

hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.8,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.5,
    bezier = "almostLinear",
})

-- Workspaces
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 2,
    bezier = "easeOutQuint",
    style = "fade",
})

hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.5,
    bezier = "easeOutQuint",
    style = "fade",
})

hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 2,
    bezier = "quick",
    style = "fade",
})

-- Zoom
hl.animation({
    leaf = "zoomFactor",
    enabled = true,
    speed = 7,
    bezier = "quick",
})
