{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nodejs_24
    yarn
  ];

  home.file = {
    "npmrc" = {
      source = ./npmrc;
      target = ".npmrc";
    };
  };
}
