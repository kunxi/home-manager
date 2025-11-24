{ config, pkgs, services, ... }:

{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
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

  services.ssh-agent.enable = true;
}
