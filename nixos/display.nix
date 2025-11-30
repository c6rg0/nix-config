{ config, pkgs, ... }:

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

  programs.sway.enable = true;

}
