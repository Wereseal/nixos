{inputs, ...}:
{
  users.users.sholto = {
    isNormalUser = true;
    description = "the seal was a lie!";
    extraGroups = ["networkmanager" "wheel"];
  };
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "sholto" = import ./home.nix;
      };
    };

}
