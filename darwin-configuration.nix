{ config, lib, pkgs, ... }:

{
  imports = [ <home-manager/nix-darwin> ];

  environment.variables = {
    EDITOR = "vim";
  };

  environment.shells = [ pkgs.fish ];

  environment.systemPackages =
    [
      pkgs.vim
      pkgs.fish
      pkgs.zsh
      pkgs.git
      pkgs.nixpkgs-fmt
    ];

  environment.etc = {
    hosts = {
      enable = true;
      text =
        ''
          127.0.0.1       localhost
          255.255.255.255 broadcasthost
          ::1             localhost
          127.0.0.1       dev.noredink.com
        '';
    };
  };

  users.users.casey = {
    name = "casey";
    home = "/Users/casey";
    shell = pkgs.fish;
  };

  home-manager.users.casey = import ./home-manager.nix;

  home-manager.useGlobalPkgs = true;

  homebrew = import ./homebrew.nix;

  fonts.fontDir.enable = true;
  fonts.fonts = [
    pkgs.fira-code
    pkgs.nerdfonts
  ];

  # Auto upgrade nix package and the daemon service
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  # Use nix-darwin environment w/ installed shells
  programs.zsh.enable = true;
  programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  nix.extraOptions =
    ''
      keep-outputs = true
      extra-platforms = x86_64-darwin
      trusted-users = root casey 
      extra-experimental-features = nix-command
    '';
}
