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
    mullvad-vpn
    libreoffice-qt
    proton-pass
    thunderbird
    vscodium
    zapzap

  ];

}
