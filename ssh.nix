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
  };

  services.ssh-agent.enable = true;
}
