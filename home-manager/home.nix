{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
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
    git

    spotify
  ];

  programs.home-manager.enable = true;
}
