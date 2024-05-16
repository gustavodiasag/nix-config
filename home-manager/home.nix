{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./alacritty.nix
    ./colors.nix
    ./fonts.nix
    ./hyprland.nix
    ./git.nix
    ./zsh.nix
  ];

  home = {
    username = "gustavo";
    homeDirectory = "/home/gustavo";

    stateVersion = "23.05";
  };
  
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home.packages = with pkgs; [
    # Languages
    cargo
    gcc

    # Applications
    alacritty
    spotify
    discord
  ];

  programs.home-manager.enable = true;
}
