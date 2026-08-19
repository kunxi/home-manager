{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    minizinc
    cbc
    # or-tools
  ];

  home.file = {
    "minizinc" = {
      source = ./solvers;
      target = ".minizinc/solvers";
      recursive = true;
    };
  };
}
