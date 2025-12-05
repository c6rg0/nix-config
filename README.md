# My NixOS config:
*NOTE: I have random things in my home.nix like "osu-lazer-bin", delete them*
*as you please, I'll try make it obvious whether a package is important or not.*

> Colour scheme = Gruvbox light

> Dotfile management = Home-manager\
> Display manager = tuigreet (terminal based)\
> Shell = zsh (with p10k theme and other QOL settings)
> Window manager = Sway (wayland)\
> Bar = Waybar\
> Terminal = Kitty\
> Text editor = Neovim\
> App launcher = Rofi\
> Info-fetcher = Fastfetch 


## Showcase
![desktop](Showcase_images/desktop.png)

![rofi](Showcase_images/rofi.png)

![fastfetch](Showcase_images/fastfetch.png)

![neovim](Showcase_images/neovim.png)


## File structure
* `nixos/` files go in `/etc/nixos/`,
* `home-manager/` and `modules/` originaly sit in `~/.config`,

To make systemd-boot go straight to nixos, edit `/boot/loader/loader.conf`,
and edit the TIMEOUT to 0. 


## Credits:
Waybar config = [mxkrsv/dotfiles-old](https://github.com/mxkrsv/dotfiles-old/tree/master/.config/waybar)
*(I ported the config to nix, and changed the colour scheme and order)*

Colour scheme = [hmorhetz/gruvbox](https://github.com/morhetz/gruvbox)


