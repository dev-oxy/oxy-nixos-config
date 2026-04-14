{ lib, ... }:

{
  networking.hostName = "btw";
  networking.wireless.enable = lib.mkForce false;
  networking.extraHosts = ''
    3.122.172.136 alice.licelus.com
  '';

  networking.networkmanager.enable = true;
  networking.networkmanager.wifi = {
    powersave = false;
    backend = "iwd";
    macAddress = "stable";
  };
  networking.resolvconf.enable = true;
}
