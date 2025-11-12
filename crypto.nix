{ config, pkgs, ... }:

let 
  linuxPackages = with pkgs; [
    pinentry-curses
  ];
in
{
  home.packages = with pkgs; [
    gnupg
    pass
  ] ++ lib.optionals stdenv.hostPlatform.isLinux linuxPackages;

  services.gpg-agent = {
    enable = true;
    enableSshSupport = false;
  };
}

