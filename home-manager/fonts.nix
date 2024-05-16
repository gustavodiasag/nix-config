{
  pkgs,
  ...
} : {
  home.packages = [
    (pkgs.nerdfonts.override { fonts = [ "CodeNewRoman" ]; })
  ];

  fonts.fontconfig.enable = true;
}
