{
  enable = true;
  autoUpdate = true;
  cleanup = "zap";
  casks = [
    "1password"
    "amethyst"
    "beekeeper-studio"
    "chromium"
    "discord"
    "firefox"
    "hammerspoon"
    "linear-linear"
    "slack"
    "zoom"
    "visual-studio-code"
  ];
  masApps = {
    Tailscale = 1475387142;
  };
  extraConfig =
    ''
      cask "alacritty", args: { "no-quarantine": true }
    '';
}
