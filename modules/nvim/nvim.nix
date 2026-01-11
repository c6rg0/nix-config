{ config, pkgs, lib, ... }:

{
  programs.neovim = {
    enable = true;
    
    extraLuaConfig = ''
      ${builtins.readFile ./init.lua}

    '';
  };

home.packages = with pkgs; [
  lua-language-server
  pyright
  nodePackages.typescript-language-server
];


}

