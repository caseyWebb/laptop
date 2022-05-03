{ pkgs, lib, ... }: {
  home.username = "casey";
  home.homeDirectory = "/Users/casey";

  home.packages =
    [
      pkgs.ripgrep
      pkgs.aria
      pkgs.p7zip
      pkgs.tree
      pkgs.tmux
      pkgs.starship
      pkgs.direnv
      pkgs.git-lfs
      pkgs.cachix
      pkgs.gnupg
    ];

  home.sessionPath = [
    "/opt/homebrew/bin"
  ];

  home.file = {
    hammerspoon = {
      recursive = true;
      source = ~/.nixpkgs/hammerspoon;
      target = ".hammerspoon";
      onChange = "open -g hammerspoon://reload_configuration";
    };
  };

  programs.alacritty = import ./alacritty.nix;
  programs.fish = import ./fish.nix { pkgs = pkgs; };
  programs.starship.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
  programs.home-manager.enable = true;
  programs.gpg.enable = true;
}
