{ config, pkgs, lib, ... }:

{
  programs.neovim = {
    enable = true;
    
    extraLuaConfig = ''
      ${builtins.readFile ./init.lua}

    '';
  };

}

