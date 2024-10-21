{
  enable = true;
  brews = [
  ];
  casks = [
    "1password"
    "amethyst"
    "arc"
    "beekeeper-studio"
    "element"
    "figma"
    "firefox"
    "linear-linear"
    "signal"
    "slack"
    "visual-studio-code"
    "zed"
    "zoom"
  ];
  masApps = {
    Tailscale = 1475387142;
  };
  onActivation =
    {
      autoUpdate = true;
      cleanup = "zap";
      upgrade = true;
    };
}
