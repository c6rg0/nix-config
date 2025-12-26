# To use the shell, run `shell-nix` in the dir with the file
# This is just an example for future use, the file includes 
# multiple examples, you can only use one at a time unless
# you merge them somehow.


/* Example 1: Python */

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

/* Example 2: GCC */

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    gcc
    glfw
    libGL
    pkg-config
  ];

  shellHook = ''
    echo "C development environment loaded"
    echo "Compiler: $(gcc --version | head -n1)"
  '';
}


