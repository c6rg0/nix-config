#!/run/current-system/sw/bin/bash

# List:
# configuration.nix
# display.nix
# nvidia.nix
# audio.nix
# time_and_keys.nix
# networking.nix
# zsh.nix
# flatpaks.nix

rm -fv /home/gabriel/.config/nixos/configuration.nix
rm -fv /home/gabriel/.config/nixos/display.nix
rm -fv /home/gabriel/.config/nixos/nvidia.nix
rm -fv /home/gabriel/.config/nixos/audio.nix
rm -fv /home/gabriel/.config/nixos/time_and_keys.nix
rm -fv /home/gabriel/.config/nixos/networking.nix
rm -fv /home/gabriel/.config/nixos/zsh.nix
rm -fv /home/gabriel/.config/nixos/flatpaks.nix

sudo cp -v /etc/nixos/configuration.nix /home/gabriel/.config/nixos/
sudo cp -v /etc/nixos/display.nix /home/gabriel/.config/nixos/
sudo cp -v /etc/nixos/nvidia.nix /home/gabriel/.config/nixos/
sudo cp -v /etc/nixos/audio.nix /home/gabriel/.config/nixos/
sudo cp -v /etc/nixos/time_and_keys.nix /home/gabriel/.config/nixos/
sudo cp -v /etc/nixos/networking.nix /home/gabriel/.config/nixos/
sudo cp -v /etc/nixos/zsh.nix /home/gabriel/.config/nixos/
sudo cp -v /etc/nixos/flatpaks.nix /home/gabriel/.config/nixos/
