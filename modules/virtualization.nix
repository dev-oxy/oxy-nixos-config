{ pkgs, ... }:

{
  virtualisation.containers.enable = true;

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    defaultNetwork.settings.dns_enabled = true;
    extraPackages = [ pkgs.podman-compose ];
  };

  virtualisation.virtualbox = {
    host.enableKvm = true;
    host.enable = true;
    host.addNetworkInterface = false;
    guest.clipboard = true;
    guest.dragAndDrop = true;
  };

  virtualisation.libvirtd.enable = true;
}
