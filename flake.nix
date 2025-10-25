{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  {

# change "nixos" if I change hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem{
      specialArgs = { inherit inputs; };
      modules = [

        ./system.nix
	
	home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.sholto = import ./home.nix;
	}
      ];
    };

  };
}
