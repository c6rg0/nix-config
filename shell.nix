# To use the shell, run `shell-nix` in the dir with the file
# This is just an example for future use: If I ever wanted to use gcc 

let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/cf8cc1201be8bc71b7cbbbdaf349b22f4f99c7ae.tar.gz") {};
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      numpy
      matplotlib
    ]))
  ];
}

