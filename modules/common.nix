{ config, pkgs, ... }:

{
  # Example shared config (can be empty for now)
  fonts.fonts = with pkgs; [ dejavu_fonts ];
}
