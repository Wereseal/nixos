{pkgs, ...}:{

  imports = [
    ./rust.nix
    ./python.nix
  ];

  home.packages = with pkgs; [
    neovim
    fzf





  ];


}
