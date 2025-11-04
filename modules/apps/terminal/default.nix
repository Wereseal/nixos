{pkgs, ...}:{

  imports = [
    ./rust.nix
    ./github.nix
    ./python.nix
  ];

  home.packages = with pkgs; [
    neovim
    fzf





  ];


}
