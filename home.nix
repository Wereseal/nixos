{ config, pkgs, ... }:

{
  home.username = "sholto";
  home.homeDirectory = "/home/sholto";
  home.stateVersion = "25.05"; 

  
  imports = [ ./modules ];


  home.file = {
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager.
  programs.bash.enable = true;
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
