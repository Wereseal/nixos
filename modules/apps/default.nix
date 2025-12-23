{config, pkgs, ...}:{
  
  imports = [
    ./terminal
  ];
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        id = 0;
	name = "default";
	isDefault = true;
        settings = {
          "extensions.pocket.enabled" = false;
          "browser.newtabpage.activity-stream.trendingSearch.defaultSearchEngine" = "DuckDuckGo";
        };
      };
    };
  };  
  services.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };

  home.packages = with pkgs; [
    httrack
    thonny
    pavucontrol
    lilex
    ttyper
    gimp3
    mullvad-vpn
    qbittorrent
    texlive.combined.scheme-full
    texmaker
    vdhcoapp
    mediawriter
    android-tools
    wine
    ghidra
    xxd
    steghide
    nmap
    wireguard-tools
    protonvpn-gui
    video-downloader
    jdk21_headless
    prismlauncher
    kitty
    zoom-us
    burpsuite
    remmina
    krita
    wireshark
    amberol
    discord
    obsidian
    libreoffice-qt
    proton-pass
    thunderbird
    vscodium
    zapzap

  ];

}
