{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  
  services.xserver.videoDrivers = [ "nvidia" ];
  
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
  
  hardware.graphics.enable = true;
}
