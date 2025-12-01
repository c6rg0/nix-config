{ config, pkgs, lib, ... }:

{
  services.greetd = {
    enable = true;
    settings.default_session.command = 
      "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd 'sway --unsupported-gpu'";
  };
  
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  hardware.graphics.extraPackages = with pkgs; [
    # trying to fix `WLR_RENDERER=vulkan sway`
    vulkan-validation-layers 
  ];
 
  programs.sway.enable = true;
}
