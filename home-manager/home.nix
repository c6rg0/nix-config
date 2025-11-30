{ config, pkgs, ... }:

{

  home.enableNixpkgsReleaseCheck = false; 
  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "gabriel";
  home.homeDirectory = "/home/gabriel";
  xdg.enable = true;

  imports = [
    ~/.config/modules/sway/sway.nix
    ~/.config/modules/waybar/waybar.nix
    ~/.config/modules/kitty/kitty.nix
    ~/.config/modules/nvim/nvim.nix
    ~/.config/modules/fastfetch/fastfetch.nix
    ~/.config/modules/rofi.nix
    ~/.config/modules/gtk.nix
  ];

  nixpkgs.config.allowUnfree = true;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    swaylock
    kitty
    git
    yazi
    zip
    unzip
    ntfs3g
    file

    zsh
    zsh-powerlevel10k
    zsh-you-should-use
    
    gcc
    python3
    nodejs_24
    typescript
    sqlitebrowser
    wl-clipboard

    whitesur-cursors
    whitesur-gtk-theme
    whitesur-icon-theme

    rofi
    qimgv
    ventoy
    libreoffice
    pastel
    spotify
    gimp
    csvtool
    osu-lazer-bin

    fastfetch
    btop
    usbutils
    hyprpicker
    hyprshot
  ];

  nixpkgs.config.permittedInsecurePackages = ["ventoy-1.1.05"];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };

  services.dunst.enable = true;  # Notifications
# systemd.user.services.myservice = { ... };

}

