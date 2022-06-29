{
  enable = true;
  autoUpdate = true;
  cleanup = "zap";
  brews = [
    "mydumper"
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
    "karabiner-elements"
    "linear-linear"
    "mos"
    "slack"
    "zoom"
    "visual-studio-code"
  ];
  masApps = {
    Tailscale = 1475387142;
    Amphetamine = 937984704;
    Meeter = 1510445899;
    LimeChat = 414030210;
  };
  extraConfig =
    ''
      cask "alacritty", args: { "no-quarantine": true }
    '';
}
