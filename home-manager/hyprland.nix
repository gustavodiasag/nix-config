{
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    enableNvidiaPatches = true;
    xwayland.enable = true;
  };

  wayland.windowManager.hyprland.settings = let
    s = "ALT";
  in {
    "exec-once" = "waybar";

    input = {
      kb_layout = "br";
      kb_variant = ",qwerty";
    };

    bind = let
      alacritty = "${pkgs.alacritty}/bin/alacritty";
      wofi = "${pkgs.wofi}/bin/wofi";
    in [
      "${s}, F, fullscreen, 1"
      "${s}, Q, killactive"
      "${s}, B, exec, firefox"
      "${s}, Return, exec, ${alacritty}"
      "${s}, D, exec, discord"
      "${s}, R, exec, ${wofi} --show drun"

      # Move focus
      "${s}, h, movefocus, l"
      "${s}, l, movefocus, r"
      "${s}, k, movefocus, u"
      "${s}, j, movefocus, d"
    ];

    bindm = [
      # Move/resize windows with mainMod + LMB/RMB and dragging
      "${s}, mouse:272, movewindow"
      "${s}, mouse:273, resizewindow"
    ];

    misc = {
      force_default_wallpaper = "0";
    };

    general = {
      "gaps_in" = "5";
      "gaps_out" = "5";

      "border_size" = "1";
      "no_border_on_floating" = "false";
    };

    decoration = {
      "drop_shadow" = "yes";
    };

    "monitor" = ",preferred,auto, 1";
  };

  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    MOZ_ENABLE_WAYLAND = 1;
    QT_QPA_PLATFORM = "wayland";
  };

  home.packages = with pkgs; [
    # Bar
    waybar
    # Notifications
    dunst
    libnotify
    # App launcher
    wofi
  ];
}
