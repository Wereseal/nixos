{ config, pkgs, ... }:

{
  home.username = "sholto";
  home.homeDirectory = "/home/sholto";
  home.stateVersion = "25.05"; 

  programs.git = {
    enable = true;
    userName  = "Wereseal";
    userEmail = "sholto.coulter@proton.me";
  };
  
  imports = [ ./modules ];

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    burpsuite
    remmina
    krita
    microfetch
    wireshark
    mullvad-vpn
  ];

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
