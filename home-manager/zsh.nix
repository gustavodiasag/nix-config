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

    initExtraFirst = ''
      ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'
    '';

    zplug = {
      enable = true;
      plugins = [
        {
	  name = "zsh-users/zsh-autosuggestions";
	}
	{
	  name = "tylerreckart/hyperzsh";
	  tags = [ "as:theme" ];
	}
      ];
    };
  };
}
