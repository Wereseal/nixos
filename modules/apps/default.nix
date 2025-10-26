{pkgs, ...}:{
  
  imports = [
    ./terminal
  ];

  home.packages = with pkgs; [
    kitty
    amberol
    discord
    obsidian
    mullvad
    libreoffice-qt
    proton-pass
    thunderbird
    vscodium
    zapzap

  ];

}
