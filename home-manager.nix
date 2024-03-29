{ pkgs, lib, ... }: {
  home.username = "casey";
  home.homeDirectory = "/Users/casey";
  home.stateVersion = "22.05";

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
      pkgs.pass
      pkgs.tealdeer
      pkgs.tig
      pkgs.neovim
      pkgs.cargo
      pkgs.nodejs
      pkgs.python310Packages.pip
      pkgs.difftastic
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
    karabiner = {
      source = ~/.nixpkgs/karabiner/karabiner.json;
      target = ".config/karabiner/karabiner.json";
    };
  };

  programs.alacritty = import ./alacritty.nix;
  programs.kitty = import ./kitty.nix;
  programs.fish = import ./fish.nix { pkgs = pkgs; };
  programs.starship.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
  programs.home-manager.enable = true;
  programs.gpg.enable = true;
}
