{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.displayManager.defaultSession = "plasma";

  services.xserver.videoDrivers = [ "modesetting" ]; # Change if needed

  hardware.alsa.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    audio.enable = true;
    pulse.enable = true;
  };

  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    kate
    kdeconnect
    dolphin
    konsole
  ];
}
