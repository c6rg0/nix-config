# My NixOS config:

> Colour scheme = Gruvbox

> Dotfile management = Home-manager\
> Display manager = Ly (terminal based)\
> Window manager = Sway (wayland)\
> Bar = Waybar\
> Terminal = Kitty\
> Text editor = Neovim\
> App launcher = Rofi\
> Info = Fastfetch 

## Showcase
*I'll add some images here eventually...*

## File structure

* /etc/nixos/configuration.nix

* ~/.config/home-manager/...
    * home.nix
* ~/.config/modules/...
    * sway/
        * sway.nix
        * wallpaper.png
    * waybar
        * waybar.nix
    * kitty/
        * kitty.nix
        * current-theme.conf
    * nvim/
        * nvim.nix
        * init.lua <- Because I want to use my config file outside of nixos,
    * fastfetch/
        * fastfetch.nix
        * sway.png
    * rofi.nix



