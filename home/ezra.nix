{ config, pkgs, ... }:

{
  home.username = "ezra";
  home.homeDirectory = "/home/ezra";

  home.packages = with pkgs; [
    neovim
    htop
    bat
    zoxide
  ];

  programs.git.enable = true;
  programs.zsh.enable = true;

  home.stateVersion = "23.11";
}