{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.lx = {
      isNormalUser = true;
      description = "lx";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd", "sudo" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "lx";
}
