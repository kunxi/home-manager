{ config, pkgs, services, ... }:

{
  programs.ssh = {
    enable = true;
    matchBlocks = {
        "*" = {};
    };
    extraConfig = ''
      AddKeysToAgent  yes
    '';
    includes = [
      "~/.ssh/config.d/*"
    ];
  };

  services.ssh-agent.enable = pkgs.stdenv.hostPlatform.isLinux;
}
