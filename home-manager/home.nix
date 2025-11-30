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
  ];

  nixpkgs.config.allowUnfree = true;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
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
    firefox
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

  programs.waybar.enable = true;
  services.dunst.enable = true;  # Notifications
#  systemd.user.services.myservice = { ... };

  gtk = {
    enable = true;
    
    theme = {
      name = "WhiteSur-Dark";
      package = pkgs.whitesur-gtk-theme;
    };
    
    iconTheme = {
      name = "WhiteSur";
      package = pkgs.whitesur-icon-theme;
    };
    
    cursorTheme = {
      name = "WhiteSur-cursors";
      package = pkgs.whitesur-cursors;
    };
    
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
    
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };
  
  home.pointerCursor = {
    name = "WhiteSur-cursors";
    package = pkgs.whitesur-cursors;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
}

