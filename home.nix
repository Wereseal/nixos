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


  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    goofcord
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
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/sholto/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
