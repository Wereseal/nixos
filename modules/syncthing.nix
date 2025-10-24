{...}:{
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
