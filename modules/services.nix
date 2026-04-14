{ pkgs, ... }:

{
  services.printing.enable = true;

  systemd.user.services.mechvibes-lite = {
    description = "Mechvibes Lite Daemon";
    after = [
      "graphical-session.target"
      "pipewire.service"
    ];
    wantedBy = [ "graphical-session.target" ];

    serviceConfig = {
      ExecStart = "${pkgs.mechvibes-lite}/bin/mvibes daemon";
      Restart = "on-failure";
      RestartSec = "5s";
    };
  };
}
