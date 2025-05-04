{ config, pkgs, ... }:

{
  imports = [];

  networking.hostName = "ezra";
  time.timeZone = "Europe/Berlin"; # Change as needed

  users.users.ezra = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # For sudo
    shell = pkgs.zsh;
  };

  environment.systemPackages = with pkgs; [
    git
    wget
  ];

  system.stateVersion = "23.11"; # Match your NixOS version
}