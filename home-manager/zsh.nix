{
  pkgs,
  ...
} : {
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    autocd = true;

    shellAliases = {
      # General commands
      g = "git";

      # Nix-related
      nixswitch = "sudo nixos-rebuild switch";

      # Typos
      "cd.." = "cd ..";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "gozilla";
    };
  };
}
