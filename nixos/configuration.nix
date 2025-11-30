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
    # Hardware related
    lm_sensors
    fwupd
    bluez
    brightnessctl
    wlroots_0_19
    wev
    openssh
    wget
    vim
    teams-for-linux
    home-manager
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.aurulent-sans-mono
    nerd-fonts.symbols-only
  ];

  programs.steam = {
    enable = true;
  };
}
