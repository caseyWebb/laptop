{
  enable = true;
  autoUpdate = true;
  cleanup = "zap";
  brews = [
    "mydumper"
    "qmk/qmk/qmk"
  ];
  casks = [
    "1password"
    "amethyst"
    "beekeeper-studio"
    "brave-browser"
    "discord"
    "firefox"
    "hammerspoon"
    "pocket-casts"
    "kitty"
    "linear-linear"
    "slack"
    "signal"
    "zoom"
    "visual-studio-code"
    "figma"
  ];
  masApps = {
    Tailscale = 1475387142;
    Amphetamine = 937984704;
    Meeter = 1510445899;
    # LimeChat = 414030210;
  };
  extraConfig =
    ''
      cask "alacritty", args: { "no-quarantine": true }
    '';
}
