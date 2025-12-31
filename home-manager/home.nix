{ config, pkgs, ... }:

let
  pkgsUnstable = import <nixpkgs-unstable> {};

in

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
  nixpkgs.config.permittedInsecurePackages = [
                "ventoy-1.1.07"
              ];

  # Packages that should be installed to the user profile.
    home.packages = with pkgsUnstable;[
      git
      yazi
      tmux
      hyprpaper

      zsh-powerlevel10k
      zsh-you-should-use

      nixpkgs-review
      gh
      gcc
      python3
      nodejs_24
      typescript
      sqlitebrowser
      
      wl-clipboard-rs
      killall
      ventoy
      ntfs3g
      file
    
      qimgv
      nautilus
      libreoffice
      pastel
      teams-for-linux
      spotify
      gimp
      neomutt
      
      osu-lazer-bin
      protonup-qt
      wine

      onefetch
      btop
      hyprpicker
      hyprshot
      wev
      lshw
      _7zz
      ghidra
    ];
  
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };

  services.dunst.enable = true;  # Notifications

}

