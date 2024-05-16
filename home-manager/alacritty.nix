{
  pkgs,
  config,
  ...
}: {
  programs.alacritty = {
    enable = true;
  };

  programs.alacritty.settings = {
    font = {
      size = 12;
      
      family = "CodeNewRoman";
    };

    window = {
      opacity = 0.9;
      blur = false;

      padding = {
        x = 1;
        y = 1;
      };
    };

    colors = with config.colorScheme.colors; {
      bright = {
        black = "0x${base00}";
        blue = "0x${base0D}";
        cyan = "0x${base0C}";
        green = "0x${base0B}";
        magenta = "0x${base0E}";
        red = "0x${base08}";
        white = "0x${base06}";
        yellow = "0x${base09}";
      };

      cursor = {
        cursor = "0x${base06}";
        text = "0x${base06}";
      };

      normal = {
        black = "0x${base00}";
        blue = "0x${base0D}";
        cyan = "0x${base0C}";
        green = "0x${base0B}";
        magenta = "0x${base0E}";
        red = "0x${base08}";
        white = "0x${base06}";
        yellow = "0x${base0A}";
      };

      primary = {
        background = "0x${base00}";
        foreground = "0x${base06}";
      };
    };
  };
}
