-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- remap hjkl cursor keys to jikl in both normal and visual mode for more intuitive cursor movement
-- This file is to put/replace in ~/.config/lvim
lvim.keys.normal_mode["k"] = "j"
lvim.keys.normal_mode["j"] = "h"
lvim.keys.normal_mode["i"] = "k"
lvim.keys.normal_mode["h"] = "i"


lvim.keys.visual_mode["k"] = "j"
lvim.keys.visual_mode["j"] = "h"
lvim.keys.visual_mode["i"] = "k"
lvim.keys.visual_mode["h"] = "i"
