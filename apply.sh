#!/usr/bin/env bash

sudo cp -v nixos/* /etc/nixos/

mkdir ~/.config/

sudo nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs-unstable
sudo nix-channel --update nixpkgs-unstable

mkdir ~/.config/home-manager/
cp -v home-manager/home.nix ~/.config/home-manager/home.nix

mkdir ~/.config/modules/
cp -vrf modules/* ~/.config/modules/

export NIXPKGS_ALLOW_UNFREE=1
home-manager switch

