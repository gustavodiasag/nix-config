{
  pkgs,
  ...
} : {
  programs.git = {
    enable = true;

    userName = "Gustavo Dias de Aguiar";
    userEmail = "gustavodias.aguiar1@gmail.com";

    extraConfig = {
      pull.rebase = "true";
      init.defaultBranch = "main";
    };

    aliases = {
      c = "commit";
      r = "rebase"
    }
  };
}
