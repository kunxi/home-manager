{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    noto-fonts
    liberation_ttf
    fira-code
    fontconfig
    gnuplot
  ];

  home.file = {
    "xyplot.plt" = {
      source = ./xyplot.plt;
      target = "bin/xyplot.plt";
      executable = true;
    };
  };

  fonts.fontconfig.enable = true;

  home.sessionVariables = {
    # Points to the actual font configuration file in the Nix store
    FONTCONFIG_FILE = "${pkgs.fontconfig.out}/etc/fonts/fonts.conf";
    # Points to the directory containing font configuration
    FONTCONFIG_PATH = "${pkgs.fontconfig.out}/etc/fonts/";
  };
}
