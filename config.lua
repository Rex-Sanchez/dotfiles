-- Home manager config

local scr = env.SCRIPT_DIR
local config = env.CONFIG_DIR

return {
  {
    name = "alacritty config",
    src = scr .. "/dotfiles/alacritty",
    dest = config .. "/alacritty",
    enable = true,
    force = true
  },
  {
    name = "i3 config",
    src = scr .. "/dotfiles/i3",
    dest = config .. "/i3",
    enable = true,
    force = true
  },
  {
    name = "i3status config",
    src = scr .. "/dotfiles/i3status",
    dest = config .. "/i3status",
    enable = true,
    force = true
  },
  {
    name = "i3status-rs config",
    src = scr .. "/dotfiles/i3status-rs",
    dest = config .. "/i3status-rs",
    enable = true,
    force = true
  },
  {
    name = "Neovim config",
    src = scr .. "/dotfiles/nvim",
    dest = config .. "/nvim",
    enable = true,
    force = true
  },
  {
    name = "polybar config",
    src = scr .. "/dotfiles/polybar",
    dest = config .. "/polybar",
    enable = true,
    force = true
  },
  {
    name = "rofi config",
    src = scr .. "/dotfiles/rofi",
    dest = config .. "/rofi",
    enable = true,
    force = true
  },
  {
    name = "sxhkd config",
    src = scr .. "/dotfiles/sxhkd",
    dest = config .. "/sxhkd",
    enable = true,
    force = true
  },
  {
    name = "tmux config",
    src = scr .. "/dotfiles/tmux",
    dest = config .. "/tmux",
    enable = true,
    force = true
  },
  {
    name = "picom config",
    src = scr .. "/dotfiles/picom.conf",
    dest = config .. "/picom.conf",
    enable = true,
    force = true
  },
}
