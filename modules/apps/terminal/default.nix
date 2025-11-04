{pkgs, ...}:{

  imports = [
    ./rust.nix
    ./github.nix
    ./python.nix
    ./c.nix
  ];

  home.packages = with pkgs; [
    neovim
    fzf





  ];


}
