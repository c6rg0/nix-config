let
  pkgs = import <nixpkgs> {};
in
  pkgs.callPackage ./cairo-dock.nix {}

# To use this, make sure you're in "overalys/" and run "$ nix-build default.nix".
