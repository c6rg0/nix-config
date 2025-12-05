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
    ~/.config/modules/waybar.nix
    ~/.config/modules/kitty/kitty.nix
    ~/.config/modules/nvim/nvim.nix
    ~/.config/modules/fastfetch/fastfetch.nix
    ~/.config/modules/rofi.nix
    ~/.config/modules/gtk.nix
  ];

  nixpkgs.config.allowUnfree = true;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    swaylock
    kitty
    git
    yazi

    zsh
    zsh-powerlevel10k
    zsh-you-should-use
    
    # gcc
    python3
    nodejs_24
    typescript
    sqlitebrowser
    wl-clipboard
    ventoy
    ntfs3g
    
    whitesur-cursors
    whitesur-gtk-theme
    whitesur-icon-theme

    rofi
    qimgv
    nautilus
    libreoffice
    pastel
    teams-for-linux
    spotify
    gimp
    csvtool
    osu-lazer-bin
    protonup-qt
    wine

    fastfetch
    onefetch
    btop
    hyprpicker
    hyprshot
    wev
    lshw
  ];

  nixpkgs.config.permittedInsecurePackages = ["ventoy-1.1.05"];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };

  services.dunst.enable = true;  # Notifications
  

}

