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
    unzip
  ];

  programs.zoxide.enable = true;
  programs.bash.enable = true;

  home.shellAliases = {
    z="zoxide";
  };
}
