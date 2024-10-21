{ pkgs, lib, ... }: {
  home.username = "casey";
  home.homeDirectory = "/Users/casey";
  home.stateVersion = "23.05";

  home.packages =
    [
      pkgs.ripgrep
      pkgs.p7zip
      pkgs.tree
      pkgs.starship
      pkgs.direnv
      pkgs.git-lfs
      pkgs.cachix
      pkgs.gnupg
      pkgs.pass
      pkgs.pass-git-helper
      pkgs.tealdeer
      pkgs.neovim
      pkgs.nodejs
      pkgs.difftastic
      pkgs.pre-commit
      pkgs.xsv
    ];

  home.sessionPath = [
    "/opt/homebrew/bin"
  ];

  programs.fish = import ./fish.nix { pkgs = pkgs; };
  programs.starship.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
  programs.home-manager.enable = true;
  programs.gpg.enable = true;
}
