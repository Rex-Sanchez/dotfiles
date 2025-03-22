-- Home manager config

local scr = env.SCRIPT_DIR
local config = env.CONFIG_DIR

local device = os.getenv("DEVICE") or "desktop"

local fontConfigName = "JiraCode" -- 3270 Nerd Font
local themeMode = "grubox-dark-HIDPI" -- light, sweet, sweet-dark
local fontSize = 13



local isEq = function(a,b)
  if (a == b) then
    return true
  end
  return false
end


utils.linker({
  {
    name = "alacritty config",
    src = scr .. "/dotfiles/alacritty",
    dest = config .. "/alacritty",
    enable = true,
    force = true
  },
  {
    name = "i3 desktop config",
    src = scr .. "/dotfiles/i3_desktop",
    dest = config .. "/i3",
    enable = isEq(device, "desktop"),
    force = true
  },
  {
    name = "i3 laptop config",
    src = scr .. "/dotfiles/i3_laptop",
    dest = config .. "/i3",
    enable = isEq(device, "laptop"),
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
})


-- Setting Fonts

if fontConfigName == "JiraCode" then
  utils.setFont("Fira Code Nerd Font", fontSize)
  utils.setFontMonospace("Fira Code Nerd Font Mono", fontSize)

elseif fontConfigName == "3270 Nerd Font" then
  utils.setFont("3270 Nerd Font", fontSize)
  utils.setFontMonospcae("3270 Nerd Font Mono", fontSize)
end



-- Setting theme stuff

if themeMode == "grubox-dark-HIDPI" then
  utils.setGtkTheme("Gruvbox-Material-Dark-HIDPI")
  utils.setIcons("Gruvbox-Material-Dark")

elseif themeMode == "light" then
  utils.setGtkTheme("Gruvbox-Material-Light")
  utils.setIcons("Gruvbox-Material-Light")

elseif themeMode == "sweet-dark" then
  utils.setGtkTheme("Sweet-Dark")
  utils.setIcons("Sweet-purple")
end
