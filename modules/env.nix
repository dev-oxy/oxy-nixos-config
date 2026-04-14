{ ... }:

{
  environment.sessionVariables = rec {
    ANDROID_HOME = "$HOME/Android/Sdk";
    NIXOS_OZONE_WL = "1";
    PODMAN_COMPOSE_WARNING_LOGS = "false";
    PATH = [
      "$HOME/Android/flutter/bin"
      "$HOME/.local/bin"
      "${ANDROID_HOME}/platform-tools"
      "${ANDROID_HOME}/build-tools/36.1.0"
      "${ANDROID_HOME}/cmdline-tools/latest/bin"
    ];
  };

  environment.variables = {
    EDITOR = "hx";
    VISUAL = "hx";
    LADSPA_PATH = "/run/current-system/sw/lib/ladspa";
  };
}
