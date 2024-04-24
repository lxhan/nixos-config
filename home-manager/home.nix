{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "lx";
    homeDirectory = "/home/lx";
    stateVersion = "23.11";
  };
}
