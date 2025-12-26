#!/usr/bin/env bash

sudo mv -v nixos/* /etc/nixos/

mkdir ~/.config/

mkdir ~/.config/home-manager/
mv -v home-manager/* ~/.config/home-manager/

mkdir ~/.config/modules/
mv -v modules/* ~/.config/modules/



