{ config, pkgs, services, ... }:

{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    matchBlocks = {
        "*" = {
          addKeysToAgent = "yes";
        };
    };
    includes = [
      "~/.ssh/config.d/*"
    ];
  };

  services.ssh-agent.enable = pkgs.stdenv.hostPlatform.isLinux;
}
