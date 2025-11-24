{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    direnv
    devenv
    nixfmt

    ansible
    autoconf
    cloc
    duckdb
    doxygen
    cmake
    httpie
    jq
    patch
    pre-commit
    pv  # progress view
    ripgrep
    rlwrap  # rlwrap sqlite3 foo.db for readline support.
    sshpass # used for ansible
    tree
    tealdeer  # tldr
    tokei # Handy tool to see lines of code by language

    # Database
    redis
    sqlite
  ];

  # Use nix-direnv integration
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
