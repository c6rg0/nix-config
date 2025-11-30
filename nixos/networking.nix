{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;
  services.printing.enable = false;
  
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.enable = true;

  # Instrusion prevention software
  services.fail2ban.enable = true;
  
  services.openssh = {
  enable = true;
  ports = [ 22 ];
  settings = {
    PasswordAuthentication = true;
    AllowUsers = null; 
    UseDns = true;
    X11Forwarding = false;
    PermitRootLogin = "no"; 
    };
  };
}
