{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix 
    ./nvidia.nix 
    ./display.nix
    ./zsh.nix
    ./time_and_keys.nix
    ./networking.nix
    ./audio.nix
    ./tablet.nix
    ];

  system.stateVersion = "25.05"; # Read the docs before touching!
 
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "dell";
  users.users.gabriel = {
    isNormalUser = true;
    description = "Gabriel";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [];
  };
  
  security.polkit.enable = true;
  
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Rulses:
    # Only install things here that require root;
    # Are hardware related;
    # Or are needed if you can't access the user.

    #Hardware
    lm_sensors
    fwupd
    bluez
    brightnessctl

    # Root
    home-manager
    wlroots_0_19
    openssh
    
    # Troubleshooting
    firefox
    vim
    toybox

  ];

  # environment.variables = { 
  #   WLR_DRM_DEVICES = "/dev/dri/card0";
  # };

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.aurulent-sans-mono
    nerd-fonts.symbols-only
  ];

  programs.steam = {
    enable = true;
  };

}
