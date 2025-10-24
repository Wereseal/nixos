{ config, pkgs, inputs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./users.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";

  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "uk";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  services.fprintd.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true


  nixpkgs.config.allowUnfree = true;

  programs.firefox = {
    enable = true;
    preferences = {
      "extensions.pocket.enabled" = false;
      "browser.newtabpage.activity-stream.trendingSearch.defaultSearchEngine" = "DuckDuckGo";
    };
  };
  programs.neovim.enable = true;
  programs.steam.enable = true;

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };

  # ABCDEFGHIJKLMNOPQRSTUVWXYZ
  environment.systemPackages = with pkgs; [
    amberol
    cargo
    discord
    fzf
    home-manager
    kitty
    obsidian
    mullvad
    python313
    python313Packages.dbus-python
    libreoffice-qt
    proton-pass
    thunderbird
    vscodium
    vim 
    wget
    zapzap
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

  services.syncthing = {
    enable = true;
    user = "sholto";
    dataDir = "/home/sholto/Documents";
    configDir = "/home/sholto/.config/syncthing";
    overrideDevices = true;
    overrideFolders = true;
    settings = {
      devices = {
        "Phone" = { id = "WNIEJ5L-VBPLF7T-OZLTHHP-PQGLACC-2QWIUZR-ML3B3Y5-U4PJBRS-CKTEVAY"; };
        "Desktop" = { id = "KJKBE4F-VAWAC37-L4PGDRN-AT3OSYZ-TPFP7MR-ECVLVBY-CBVOZFB-OAY7WAO"; };
      };
      folders = {
        "6uaac-uuxec" = {
	  label = "education";
	  path = "/home/sholto/Documents/education";
	  devices = [ "Phone" "Desktop" ];
	};
	"3dq7x-t42ao" = {
	  label = "notes";
	  path = "/home/sholto/Documents/notes";
	  devices = [ "Phone" "Desktop" ];
	};
	"f0i7u-knyxb" = {
	  label = "Music";
	  path = "/home/sholto/Music";
	  devices = [ "Phone" "Desktop" ];
	};
	"xywpc-jsrie" = {
	  label = "Camera";
	  path = "/home/sholto/Pictures/Camera";
	  devices = [ "Phone" "Desktop" ];
	};
	"rag5f-piedz" = {
	  label = "Games";
	  path = "/home/sholto/Documents/Games";
	  devices = [ "Desktop" ];
	};
	"xwxnf-suwz9" = {
	  label = "Hobbies";
	  path = "/home/sholto/Documents/Hobbies";
	  devices = [ "Desktop" ];
	};
	"gfvce-h6hbe" = {
	  label = "Photo Creations";
	  path = "/home/sholto/Pictures/Creations";
	  devices = [ "Desktop" ];
	};
	"znwgg-6czgd" = {
	  label = "Saved Photos";
	  path = "/home/sholto/Pictures/Saved";
	  devices = [ "Desktop" ];
	};
	"g7ha5-qcd5c" = {
	  label = "Screenshots";
	  path = "/home/sholto/Pictures/Screenshots";
	  devices = [ "Desktop" ];
	};
	"agadd-kgukm" = {
	  label = "Work";
	  path = "/home/sholto/Documents/Work";
	  devices = [ "Desktop" ];
	};
      };
    };
  };
}
