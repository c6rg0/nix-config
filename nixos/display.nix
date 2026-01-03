{ config, pkgs, lib, ... }:

{
  services.greetd = {
    enable = true;
    settings.default_session = {
<<<<<<< HEAD
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd 'sway --unsupported-gpu'";
=======
      command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd 'sway --unsupported-gpu'";
>>>>>>> bfb17b1 (Stash)
      user = "gabriel";
    };
  };
 
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  programs.sway.enable = true;
  security.polkit.enable = true;


  environment.systemPackages = with pkgs; [
    wev
    brightnessctl
    playerctl
    wlroots_0_19
    firefox
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.aurulent-sans-mono
    nerd-fonts.symbols-only
  ];

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

}
